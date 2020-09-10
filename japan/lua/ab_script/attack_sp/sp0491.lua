--ピッコロ_魔光閃空

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
SP_01 = 152292; --気溜め
SP_02 = 152293; --開放
SP_03 = 152294; --光の拡散
SP_04 = 152295; --飲み込む煙 奥
SP_05 = 152296; --飲み込む煙 手前
SP_06 = 152297; --火柱中　奥
SP_07 = 152298; --火柱中　手前

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

multi_frm = 2;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(164F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_0 + 0, SP_01, 162, 0, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 162, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 162, kidame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 162, kidame, 0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 162, kidame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 154, 0x100, -1, 0, 0, 0 );  --カットイン集中線

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 154, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.71, 1.76 );
setEffScaleKey( spep_0 + 154, shuchusen1, 1.71, 1.76 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 80, shuchusen1, 0 );
setEffRotateKey( spep_0 + 82, shuchusen1, 180 );
setEffRotateKey( spep_0 + 84, shuchusen1, 0 );
setEffRotateKey( spep_0 + 86, shuchusen1, 180 );
setEffRotateKey( spep_0 + 88, shuchusen1, 0 );
setEffRotateKey( spep_0 + 90, shuchusen1, 180 );
setEffRotateKey( spep_0 + 92, shuchusen1, 0 );
setEffRotateKey( spep_0 + 94, shuchusen1, 180 );
setEffRotateKey( spep_0 + 96, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 0 );
setEffRotateKey( spep_0 + 102, shuchusen1, 180 );
setEffRotateKey( spep_0 + 104, shuchusen1, 0 );
setEffRotateKey( spep_0 + 106, shuchusen1, 180 );
setEffRotateKey( spep_0 + 108, shuchusen1, 0 );
setEffRotateKey( spep_0 + 110, shuchusen1, 180 );
setEffRotateKey( spep_0 + 112, shuchusen1, 0 );
setEffRotateKey( spep_0 + 114, shuchusen1, 180 );
setEffRotateKey( spep_0 + 116, shuchusen1, 0 );
setEffRotateKey( spep_0 + 118, shuchusen1, 180 );
setEffRotateKey( spep_0 + 120, shuchusen1, 0 );
setEffRotateKey( spep_0 + 122, shuchusen1, 180 );
setEffRotateKey( spep_0 + 124, shuchusen1, 0 );
setEffRotateKey( spep_0 + 126, shuchusen1, 180 );
setEffRotateKey( spep_0 + 128, shuchusen1, 0 );
setEffRotateKey( spep_0 + 130, shuchusen1, 180 );
setEffRotateKey( spep_0 + 132, shuchusen1, 0 );
setEffRotateKey( spep_0 + 134, shuchusen1, 180 );
setEffRotateKey( spep_0 + 136, shuchusen1, 0 );
setEffRotateKey( spep_0 + 138, shuchusen1, 180 );
setEffRotateKey( spep_0 + 140, shuchusen1, 0 );
setEffRotateKey( spep_0 + 142, shuchusen1, 180 );
setEffRotateKey( spep_0 + 144, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 180 );
setEffRotateKey( spep_0 + 148, shuchusen1, 0 );
setEffRotateKey( spep_0 + 150, shuchusen1, 180 );
setEffRotateKey( spep_0 + 152, shuchusen1, 0 );
setEffRotateKey( spep_0 + 154, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 79, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 80, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 154, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 64, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 64, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 76,  190006, 64, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffMoveKey( spep_0 + 76, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 78, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 80, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 82, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 86, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 88, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 90, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 92, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 96, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 98, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 100, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 102, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 104, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 106, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 108, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 110, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 112, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 114, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 116, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 118, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 120, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 122, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 124, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 126, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 128, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 130, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 132, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 134, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 136, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 138, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 140, ctgogo, -9.9, 521.8 , 0 );

setEffScaleKey( spep_0 + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 140, ctgogo, 0.7, 0.7 );

setEffRotateKey( spep_0 + 76, ctgogo, 0 );
setEffRotateKey( spep_0 + 140, ctgogo, 0 );

setEffAlphaKey( spep_0 + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 140, ctgogo, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 1, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 156, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 1034 ); --気溜め
playSe( spep_0 + 20, 1034 );
playSe( spep_0 + 40, 1034 );

playSe( spep_0 + 76, SE_04 ); --ゴゴゴ

-- ** 次の準備 ** --
spep_1 = spep_0 + 164;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 2, shuchusen2, 180 );
setEffRotateKey( spep_1 + 4, shuchusen2, 0 );
setEffRotateKey( spep_1 + 6, shuchusen2, 180 );
setEffRotateKey( spep_1 + 8, shuchusen2, 0 );
setEffRotateKey( spep_1 + 10, shuchusen2, 180 );
setEffRotateKey( spep_1 + 12, shuchusen2, 0 );
setEffRotateKey( spep_1 + 14, shuchusen2, 180 );
setEffRotateKey( spep_1 + 16, shuchusen2, 0 );
setEffRotateKey( spep_1 + 10, shuchusen2, 180 );
setEffRotateKey( spep_1 + 12, shuchusen2, 0 );
setEffRotateKey( spep_1 + 14, shuchusen2, 180 );
setEffRotateKey( spep_1 + 16, shuchusen2, 0 );
setEffRotateKey( spep_1 + 18, shuchusen2, 180 );
setEffRotateKey( spep_1 + 20, shuchusen2, 0 );
setEffRotateKey( spep_1 + 22, shuchusen2, 180 );
setEffRotateKey( spep_1 + 24, shuchusen2, 0 );
setEffRotateKey( spep_1 + 26, shuchusen2, 180 );
setEffRotateKey( spep_1 + 28, shuchusen2, 0 );
setEffRotateKey( spep_1 + 30, shuchusen2, 180 );
setEffRotateKey( spep_1 + 32, shuchusen2, 0 );
setEffRotateKey( spep_1 + 34, shuchusen2, 180 );
setEffRotateKey( spep_1 + 36, shuchusen2, 0 );
setEffRotateKey( spep_1 + 38, shuchusen2, 180 );
setEffRotateKey( spep_1 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 + 42, shuchusen2, 180 );
setEffRotateKey( spep_1 + 44, shuchusen2, 0 );
setEffRotateKey( spep_1 + 46, shuchusen2, 180 );
setEffRotateKey( spep_1 + 48, shuchusen2, 0 );
setEffRotateKey( spep_1 + 50, shuchusen2, 180 );
setEffRotateKey( spep_1 + 52, shuchusen2, 0 );
setEffRotateKey( spep_1 + 54, shuchusen2, 180 );
setEffRotateKey( spep_1 + 56, shuchusen2, 0 );
setEffRotateKey( spep_1 + 58, shuchusen2, 180 );
setEffRotateKey( spep_1 + 60, shuchusen2, 0 );
setEffRotateKey( spep_1 + 62, shuchusen2, 180 );
setEffRotateKey( spep_1 + 64, shuchusen2, 0 );
setEffRotateKey( spep_1 + 66, shuchusen2, 0 );
setEffRotateKey( spep_1 + 68, shuchusen2, 180 );
setEffRotateKey( spep_1 + 70, shuchusen2, 0 );
setEffRotateKey( spep_1 + 72, shuchusen2, 180 );
setEffRotateKey( spep_1 + 74, shuchusen2, 0 );
setEffRotateKey( spep_1 + 76, shuchusen2, 180 );
setEffRotateKey( spep_1 + 78, shuchusen2, 0 );
setEffRotateKey( spep_1 + 80, shuchusen2, 180 );
setEffRotateKey( spep_1 + 82, shuchusen2, 0 );
setEffRotateKey( spep_1 + 84, shuchusen2, 180 );
setEffRotateKey( spep_1 + 86, shuchusen2, 0 );
setEffRotateKey( spep_1 + 88, shuchusen2, 180 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;
entryFade( spep_2 - 6, 3, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 開放(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
kaihou = entryEffectLife( spep_2 + 0, SP_02, 44, 0x100, -1, 0, 0, 0 );  --開放(ef_003)
setEffMoveKey( spep_2 + 0, kaihou, 0, 0 , 0 );
setEffMoveKey( spep_2 + 44, kaihou, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kaihou, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44, kaihou, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kaihou, 0 );
setEffRotateKey( spep_2 + 44, kaihou, 0 );
setEffAlphaKey( spep_2 + 0, kaihou, 255 );
setEffAlphaKey( spep_2 + 44, kaihou, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, 1018 );  --溜め

-- ** ホワイトフェード ** --
entryFade( spep_2 + 34, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 44;

------------------------------------------------------
-- 光の拡散(104F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakusan = entryEffectLife( spep_3 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --光の拡散(ef_004)
setEffMoveKey( spep_3 + 0, kakusan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, kakusan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kakusan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, kakusan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakusan, 0 );
setEffRotateKey( spep_3 + 100, kakusan, 0 );
setEffAlphaKey( spep_3 + 0, kakusan, 255 );
setEffAlphaKey( spep_3 + 100, kakusan, 255 );

-- ** 音 ** --
playSe( spep_3 + 24, 1017 );  --光の玉爆発

-- ** 背景 ** --
entryFadeBg( spep_3 + 24, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFadeBg( spep_3 + 28, 0, 10, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 48, 50, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 104;

------------------------------------------------------
-- 飲み込む煙(288F)
------------------------------------------------------

-- ** エフェクト等 ** --
kemuri1 = entryEffectLife( spep_4 + 0, SP_04, 288, 0x80, -1, 0, 0, 0 );  --飲み込む煙　奥(ef_005)
setEffMoveKey( spep_4 + 0, kemuri1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 288, kemuri1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kemuri1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 288, kemuri1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kemuri1, 0 );
setEffRotateKey( spep_4 + 288, kemuri1, 0 );
setEffAlphaKey( spep_4 + 0, kemuri1, 255 );
setEffAlphaKey( spep_4 + 288, kemuri1, 255 );

kemuri2 = entryEffectLife( spep_4 + 0, SP_05, 152, 0x100, -1, 0, 0, 0 );  --飲み込む煙　手前(ef_006)
setEffMoveKey( spep_4 + 0, kemuri2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 152, kemuri2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kemuri2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 152, kemuri2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kemuri2, 0 );
setEffRotateKey( spep_4 + 152, kemuri2, 0 );
setEffAlphaKey( spep_4 + 0, kemuri2, 255 );
setEffAlphaKey( spep_4 + 150, kemuri2, 255 );
setEffAlphaKey( spep_4 + 151, kemuri2, 0 );
setEffAlphaKey( spep_4 + 152, kemuri2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 150, 1, 0 );
changeAnime( spep_4 + 0, 1, 102 );

setMoveKey( spep_4 + 0, 1, 240.3, -324.3 , 0 );
setMoveKey( spep_4 + 2, 1, 242.8, -328.5 , 0 );
setMoveKey( spep_4 + 4, 1, 241.5, -326.5 , 0 );
setMoveKey( spep_4 + 6, 1, 240.4, -327.3 , 0 );
setMoveKey( spep_4 + 8, 1, 242.8, -325.5 , 0 );
setMoveKey( spep_4 + 10, 1, 245.4, -320.6 , 0 );
setMoveKey( spep_4 + 12, 1, 248.1, -324.2 , 0 );
setMoveKey( spep_4 + 14, 1, 248.7, -331.4 , 0 );
setMoveKey( spep_4 + 16, 1, 247.4, -322.6 , 0 );
setMoveKey( spep_4 + 18, 1, 246.2, -322.3 , 0 );
setMoveKey( spep_4 + 20, 1, 244.8, -323.6 , 0 );
setMoveKey( spep_4 + 22, 1, 239.6, -318.6 , 0 );
setMoveKey( spep_4 + 24, 1, 237.1, -321 , 0 );
setMoveKey( spep_4 + 26, 1, 238.3, -321 , 0 );
setMoveKey( spep_4 + 28, 1, 235.7, -314.7 , 0 );
setMoveKey( spep_4 + 30, 1, 238.4, -320.3 , 0 );
setMoveKey( spep_4 + 32, 1, 235.1, -319.7 , 0 );
setMoveKey( spep_4 + 34, 1, 239.7, -322.5 , 0 );
setMoveKey( spep_4 + 36, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 38, 1, 242.9, -319.7 , 0 );
setMoveKey( spep_4 + 40, 1, 239.7, -310.8 , 0 );
setMoveKey( spep_4 + 42, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 44, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 46, 1, 239.7, -316.7 , 0 );
setMoveKey( spep_4 + 48, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 50, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 52, 1, 243.6, -314.7 , 0 );
setMoveKey( spep_4 + 54, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 56, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 58, 1, 241.6, -314.7 , 0 );
setMoveKey( spep_4 + 60, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 62, 1, 239, -327.5 , 0 );
setMoveKey( spep_4 + 64, 1, 239.7, -316.7 , 0 );
setMoveKey( spep_4 + 66, 1, 246.3, -318.4 , 0 );
setMoveKey( spep_4 + 68, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 70, 1, 235.8, -312.8 , 0 );
setMoveKey( spep_4 + 72, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 74, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 76, 1, 241.6, -322.5 , 0 );
setMoveKey( spep_4 + 78, 1, 234.6, -318.4 , 0 );
setMoveKey( spep_4 + 80, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 82, 1, 245.5, -312.8 , 0 );
setMoveKey( spep_4 + 84, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 86, 1, 242.9, -317.8 , 0 );
setMoveKey( spep_4 + 88, 1, 239.7, -316.7 , 0 );
setMoveKey( spep_4 + 90, 1, 240.4, -318.4 , 0 );
setMoveKey( spep_4 + 92, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 94, 1, 235.7, -320.6 , 0 );
setMoveKey( spep_4 + 96, 1, 238.4, -320.4 , 0 );
setMoveKey( spep_4 + 98, 1, 240.9, -321.7 , 0 );
setMoveKey( spep_4 + 100, 1, 241.6, -312.8 , 0 );
setMoveKey( spep_4 + 102, 1, 238.4, -320.4 , 0 );
setMoveKey( spep_4 + 104, 1, 237, -319.7 , 0 );
setMoveKey( spep_4 + 106, 1, 239.6, -316.7 , 0 );
setMoveKey( spep_4 + 108, 1, 240.4, -324.3 , 0 );
setMoveKey( spep_4 + 110, 1, 237, -321.7 , 0 );
setMoveKey( spep_4 + 112, 1, 239.6, -312.8 , 0 );
setMoveKey( spep_4 + 114, 1, 242.3, -324.3 , 0 );
setMoveKey( spep_4 + 116, 1, 244.8, -325.6 , 0 );
setMoveKey( spep_4 + 118, 1, 235.7, -314.7 , 0 );
setMoveKey( spep_4 + 120, 1, 238.4, -320.4 , 0 );
setMoveKey( spep_4 + 122, 1, 242.9, -317.8 , 0 );
setMoveKey( spep_4 + 124, 1, 239.6, -316.7 , 0 );
setMoveKey( spep_4 + 126, 1, 240.4, -324.3 , 0 );
setMoveKey( spep_4 + 128, 1, 235.1, -321.7 , 0 );
setMoveKey( spep_4 + 130, 1, 239.6, -320.6 , 0 );
setMoveKey( spep_4 + 132, 1, 240.4, -318.4 , 0 );
setMoveKey( spep_4 + 134, 1, 240.9, -319.7 , 0 );
setMoveKey( spep_4 + 136, 1, 241.6, -320.6 , 0 );
setMoveKey( spep_4 + 138, 1, 238.4, -320.4 , 0 );
setMoveKey( spep_4 + 140, 1, 237, -319.7 , 0 );
setMoveKey( spep_4 + 142, 1, 239.6, -316.7 , 0 );
setMoveKey( spep_4 + 144, 1, 240.4, -324.3 , 0 );
setMoveKey( spep_4 + 146, 1, 242.9, -317.8 , 0 );
setMoveKey( spep_4 + 148, 1, 235.7, -308.9 , 0 );
setMoveKey( spep_4 + 150, 1, 246.2, -324.3 , 0 );
setMoveKey( spep_4 + 152, 1, 244.8, -317.8 , 0 );

setScaleKey( spep_4 + 0, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 152, 1, 1.24, 1.24 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 152, 1, 0 );

-- ** 音 ** --
SEgo = playSeLife( spep_4 + 0, 1044 );  --煙迫る
stopSe( spep_4 + 150, SEgo, 0 );

playSe( spep_4 + 150, 1024 );  --爆発

-- ** 背景 ** --
entryFadeBg( spep_4 + 40, 14, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFadeBg( spep_4 + 150, 0, 4, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 154, 0, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 288;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 126; --エンドフェイズのフレーム数を置き換える
stopSe( spep_4 + 126, SEgo, 0 );

playSe( SP_dodge - 12, 1042 );

speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 火柱中(32F)
------------------------------------------------------

-- ** エフェクト等 ** --
hibasira1 = entryEffectLife( spep_5 + 0, SP_06, 32, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)
setEffMoveKey( spep_5 + 0, hibasira1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 32, hibasira1, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hibasira1, 1.0, 1.0 );
setEffScaleKey( spep_5 + 32, hibasira1, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hibasira1, 0 );
setEffRotateKey( spep_5 + 32, hibasira1, 0 );
setEffAlphaKey( spep_5 + 0, hibasira1, 255 );
setEffAlphaKey( spep_5 + 32, hibasira1, 255 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 32;

------------------------------------------------------
-- 火柱中敵吹っ飛び(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
--hibasira2 = entryEffectLife( spep_6 + 0, SP_06, 58, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)
hibasira2 = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)
setEffMoveKey( spep_6 + 0, hibasira2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 30, hibasira2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hibasira2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 30, hibasira2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hibasira2, 0 );
setEffRotateKey( spep_6 + 30, hibasira2, 0 );
setEffAlphaKey( spep_6 + 0, hibasira2, 255 );
setEffAlphaKey( spep_6 + 30, hibasira2, 255 );

hibasira2x = entryEffect( spep_6 + 30, SP_06, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)2ループ目
setEffMoveKey( spep_6 + 30, hibasira2x, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, hibasira2x, 0, 0 , 0 );
setEffScaleKey( spep_6 + 30, hibasira2x, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, hibasira2x, 1.0, 1.0 );
setEffRotateKey( spep_6 + 30, hibasira2x, 0 );
setEffRotateKey( spep_6 + 58, hibasira2x, 0 );
setEffAlphaKey( spep_6 + 30, hibasira2x, 255 );
setEffAlphaKey( spep_6 + 58, hibasira2x, 255 );

hibasira3 = entryEffectLife( spep_6 + 0, SP_07, 10, 0x100, -1, 0, 0, 0 );  --火柱中　手前(ef_008)
setEffMoveKey( spep_6 + 0, hibasira3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 10, hibasira3, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hibasira3, 1.0, 1.0 );
setEffScaleKey( spep_6 + 10, hibasira3, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hibasira3, 0 );
setEffRotateKey( spep_6 + 10, hibasira3, 0 );
setEffAlphaKey( spep_6 + 0, hibasira3, 128 );
setEffAlphaKey( spep_6 + 10, hibasira3, 128 );

hibasira4 = entryEffectLife( spep_6 + 10, SP_07, 3, 0x100, -1, 0, 0, 0 );  --火柱中　手前(ef_008)2ループ目
setEffMoveKey( spep_6 + 10, hibasira4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 13, hibasira4, 0, 0 , 0 );
setEffScaleKey( spep_6 + 10, hibasira4, 1.0, 1.0 );
setEffScaleKey( spep_6 + 13, hibasira4, 1.0, 1.0 );
setEffRotateKey( spep_6 + 10, hibasira4, 0 );
setEffRotateKey( spep_6 + 13, hibasira4, 0 );
setEffAlphaKey( spep_6 + 10, hibasira4, 128 );
setEffAlphaKey( spep_6 + 13, hibasira4, 128 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 3,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 3, hibiware, 68, -60, 0 ); 
setEffMoveKey( spep_6 + 4, hibiware, 68, -60, 0 ); 
setEffMoveKey( spep_6 + 58, hibiware, 68, -60, 0 ); 

setEffScaleKey( spep_6 + 3, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 4, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 3, hibiware, 0 );
setEffRotateKey( spep_6 + 4, hibiware, 0 );
setEffRotateKey( spep_6 + 58, hibiware, 0 );

setEffAlphaKey( spep_6 + 3, hibiware, 255 );
setEffAlphaKey( spep_6 + 4, hibiware, 255 );
setEffAlphaKey( spep_6 + 58, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_6 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen3, 180 );
setEffRotateKey( spep_6 + 16, shuchusen3, 0 );
setEffRotateKey( spep_6 + 18, shuchusen3, 180 );
setEffRotateKey( spep_6 + 20, shuchusen3, 0 );
setEffRotateKey( spep_6 + 22, shuchusen3, 180 );
setEffRotateKey( spep_6 + 24, shuchusen3, 0 );
setEffRotateKey( spep_6 + 26, shuchusen3, 180 );
setEffRotateKey( spep_6 + 28, shuchusen3, 0 );
setEffRotateKey( spep_6 + 30, shuchusen3, 180 );
setEffRotateKey( spep_6 + 32, shuchusen3, 0 );
setEffRotateKey( spep_6 + 34, shuchusen3, 180 );
setEffRotateKey( spep_6 + 36, shuchusen3, 0 );
setEffRotateKey( spep_6 + 38, shuchusen3, 180 );
setEffRotateKey( spep_6 + 40, shuchusen3, 0 );
setEffRotateKey( spep_6 + 42, shuchusen3, 180 );
setEffRotateKey( spep_6 + 44, shuchusen3, 0 );
setEffRotateKey( spep_6 + 46, shuchusen3, 180 );

setEffAlphaKey( spep_6 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_6 + 0,  1657, 58, 0x80, -1, 0, -256, 0 );  --細い集中線黒
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 58, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 58, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 0 );
setEffAlphaKey( spep_6 + 13, shuchusen4, 0 );
setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 58, shuchusen4, 255 );

shuchusen4x = entryEffectLife( spep_6 + 30,  1657, 58, 0x80, -1, 0, -256, 0 );  --細い集中線黒 ループ用
setEffMoveKey( spep_6 + 30, shuchusen4x, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, shuchusen4x, 0, 0 , 0 );

setEffScaleKey( spep_6 + 30, shuchusen4x, 1, 1 );
setEffScaleKey( spep_6 + 58, shuchusen4x, 1, 1 );

setEffRotateKey( spep_6 + 30, shuchusen4x, 0 );
setEffRotateKey( spep_6 + 58, shuchusen4x, 0 );

setEffAlphaKey( spep_6 + 30, shuchusen4x, 255 );
setEffAlphaKey( spep_6 + 58, shuchusen4x, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 44, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 16, ctga, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 18, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 20, ctga, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 22, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 24, ctga, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 26, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 30, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 58, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3, 3 );
setEffScaleKey( spep_6 + 58, ctga, 3, 3 );

setEffRotateKey( spep_6 + 14, ctga, -14.9 );
setEffRotateKey( spep_6 + 16, ctga, -10.9 );
setEffRotateKey( spep_6 + 18, ctga, -14.9 );
setEffRotateKey( spep_6 + 20, ctga, -10.9 );
setEffRotateKey( spep_6 + 22, ctga, -14.9 );
setEffRotateKey( spep_6 + 24, ctga, -10.9 );
setEffRotateKey( spep_6 + 26, ctga, -14.9 );
setEffRotateKey( spep_6 + 28, ctga, -10.9 );
setEffRotateKey( spep_6 + 30, ctga, -14.9 );
setEffRotateKey( spep_6 + 58, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 58, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
--setDisp( spep_6 + 58, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 3, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 4, 1, 17.7, -30.4 , 0 );
setMoveKey( spep_6 + 5, 1, 17.7, -30.4 , 0 );
setMoveKey( spep_6 + 6, 1, 25, -61.6 , 0 );
setMoveKey( spep_6 + 7, 1, 25, -61.6 , 0 );
setMoveKey( spep_6 + 8, 1, 27, -80.4 , 0 );
setMoveKey( spep_6 + 9, 1, 27, -80.4 , 0 );
setMoveKey( spep_6 + 10, 1, 8, -64.8 , 0 );
setMoveKey( spep_6 + 11, 1, 8, -64.8 , 0 );
setMoveKey( spep_6 + 12, 1, -58, -158.1 , 0 );
setMoveKey( spep_6 + 13, 1, -58, -158.1 , 0 );
setMoveKey( spep_6 + 14, 1, -58, -158.1 , 0 );
setMoveKey( spep_6 + 58, 1, -58, -158.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.24, 0.24 );
setScaleKey( spep_6 + 3, 1, 0.24, 0.24 );
setScaleKey( spep_6 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 5, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 7, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 9, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 10, 1, 0.99, 0.99 );
setScaleKey( spep_6 + 11, 1, 0.99, 0.99 );
setScaleKey( spep_6 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 15, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 19, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 23, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 58, 1, 1.3, 1.3 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 1, 1, 0 );
setRotateKey( spep_6 + 2, 1, 40 );
setRotateKey( spep_6 + 3, 1, 40 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 0 );
setRotateKey( spep_6 + 7, 1, 0 );
setRotateKey( spep_6 + 8, 1, 200 );
setRotateKey( spep_6 + 9, 1, 200 );
setRotateKey( spep_6 + 10, 1, 61 );
setRotateKey( spep_6 + 11, 1, 61 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 13, 1, -40 );
setRotateKey( spep_6 + 14, 1, -40 );
setRotateKey( spep_6 + 58, 1, -40 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 14 );
entryFade( spep_6 + 48, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 58 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(164F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_0 + 0, SP_01, 162, 0, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 162, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 162, kidame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 162, kidame, 0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 162, kidame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 154, 0x100, -1, 0, 0, 0 );  --カットイン集中線

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 154, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.71, 1.76 );
setEffScaleKey( spep_0 + 154, shuchusen1, 1.71, 1.76 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 80, shuchusen1, 0 );
setEffRotateKey( spep_0 + 82, shuchusen1, 180 );
setEffRotateKey( spep_0 + 84, shuchusen1, 0 );
setEffRotateKey( spep_0 + 86, shuchusen1, 180 );
setEffRotateKey( spep_0 + 88, shuchusen1, 0 );
setEffRotateKey( spep_0 + 90, shuchusen1, 180 );
setEffRotateKey( spep_0 + 92, shuchusen1, 0 );
setEffRotateKey( spep_0 + 94, shuchusen1, 180 );
setEffRotateKey( spep_0 + 96, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 0 );
setEffRotateKey( spep_0 + 102, shuchusen1, 180 );
setEffRotateKey( spep_0 + 104, shuchusen1, 0 );
setEffRotateKey( spep_0 + 106, shuchusen1, 180 );
setEffRotateKey( spep_0 + 108, shuchusen1, 0 );
setEffRotateKey( spep_0 + 110, shuchusen1, 180 );
setEffRotateKey( spep_0 + 112, shuchusen1, 0 );
setEffRotateKey( spep_0 + 114, shuchusen1, 180 );
setEffRotateKey( spep_0 + 116, shuchusen1, 0 );
setEffRotateKey( spep_0 + 118, shuchusen1, 180 );
setEffRotateKey( spep_0 + 120, shuchusen1, 0 );
setEffRotateKey( spep_0 + 122, shuchusen1, 180 );
setEffRotateKey( spep_0 + 124, shuchusen1, 0 );
setEffRotateKey( spep_0 + 126, shuchusen1, 180 );
setEffRotateKey( spep_0 + 128, shuchusen1, 0 );
setEffRotateKey( spep_0 + 130, shuchusen1, 180 );
setEffRotateKey( spep_0 + 132, shuchusen1, 0 );
setEffRotateKey( spep_0 + 134, shuchusen1, 180 );
setEffRotateKey( spep_0 + 136, shuchusen1, 0 );
setEffRotateKey( spep_0 + 138, shuchusen1, 180 );
setEffRotateKey( spep_0 + 140, shuchusen1, 0 );
setEffRotateKey( spep_0 + 142, shuchusen1, 180 );
setEffRotateKey( spep_0 + 144, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 180 );
setEffRotateKey( spep_0 + 148, shuchusen1, 0 );
setEffRotateKey( spep_0 + 150, shuchusen1, 180 );
setEffRotateKey( spep_0 + 152, shuchusen1, 0 );
setEffRotateKey( spep_0 + 154, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 79, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 80, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 154, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 64, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 64, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_0 + 76,  190006, 64, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffMoveKey( spep_0 + 76, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 78, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 80, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 82, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 86, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 88, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 90, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 92, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 96, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 98, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 100, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 102, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 104, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 106, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 108, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 110, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 112, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 114, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 116, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 118, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 120, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 122, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 124, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 126, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 128, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 130, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 132, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 134, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 136, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 138, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 140, ctgogo, -9.9, 521.8 , 0 );

setEffScaleKey( spep_0 + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 140, ctgogo, 0.7, 0.7 );

setEffRotateKey( spep_0 + 76, ctgogo, 0 );
setEffRotateKey( spep_0 + 140, ctgogo, 0 );

setEffAlphaKey( spep_0 + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 140, ctgogo, 255 );]]

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 1, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 156, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 1034 ); --気溜め
playSe( spep_0 + 20, 1034 );
playSe( spep_0 + 40, 1034 );

playSe( spep_0 + 76, SE_04 ); --ゴゴゴ

-- ** 次の準備 ** --
spep_1 = spep_0 + 164;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 2, shuchusen2, 180 );
setEffRotateKey( spep_1 + 4, shuchusen2, 0 );
setEffRotateKey( spep_1 + 6, shuchusen2, 180 );
setEffRotateKey( spep_1 + 8, shuchusen2, 0 );
setEffRotateKey( spep_1 + 10, shuchusen2, 180 );
setEffRotateKey( spep_1 + 12, shuchusen2, 0 );
setEffRotateKey( spep_1 + 14, shuchusen2, 180 );
setEffRotateKey( spep_1 + 16, shuchusen2, 0 );
setEffRotateKey( spep_1 + 10, shuchusen2, 180 );
setEffRotateKey( spep_1 + 12, shuchusen2, 0 );
setEffRotateKey( spep_1 + 14, shuchusen2, 180 );
setEffRotateKey( spep_1 + 16, shuchusen2, 0 );
setEffRotateKey( spep_1 + 18, shuchusen2, 180 );
setEffRotateKey( spep_1 + 20, shuchusen2, 0 );
setEffRotateKey( spep_1 + 22, shuchusen2, 180 );
setEffRotateKey( spep_1 + 24, shuchusen2, 0 );
setEffRotateKey( spep_1 + 26, shuchusen2, 180 );
setEffRotateKey( spep_1 + 28, shuchusen2, 0 );
setEffRotateKey( spep_1 + 30, shuchusen2, 180 );
setEffRotateKey( spep_1 + 32, shuchusen2, 0 );
setEffRotateKey( spep_1 + 34, shuchusen2, 180 );
setEffRotateKey( spep_1 + 36, shuchusen2, 0 );
setEffRotateKey( spep_1 + 38, shuchusen2, 180 );
setEffRotateKey( spep_1 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 + 42, shuchusen2, 180 );
setEffRotateKey( spep_1 + 44, shuchusen2, 0 );
setEffRotateKey( spep_1 + 46, shuchusen2, 180 );
setEffRotateKey( spep_1 + 48, shuchusen2, 0 );
setEffRotateKey( spep_1 + 50, shuchusen2, 180 );
setEffRotateKey( spep_1 + 52, shuchusen2, 0 );
setEffRotateKey( spep_1 + 54, shuchusen2, 180 );
setEffRotateKey( spep_1 + 56, shuchusen2, 0 );
setEffRotateKey( spep_1 + 58, shuchusen2, 180 );
setEffRotateKey( spep_1 + 60, shuchusen2, 0 );
setEffRotateKey( spep_1 + 62, shuchusen2, 180 );
setEffRotateKey( spep_1 + 64, shuchusen2, 0 );
setEffRotateKey( spep_1 + 66, shuchusen2, 0 );
setEffRotateKey( spep_1 + 68, shuchusen2, 180 );
setEffRotateKey( spep_1 + 70, shuchusen2, 0 );
setEffRotateKey( spep_1 + 72, shuchusen2, 180 );
setEffRotateKey( spep_1 + 74, shuchusen2, 0 );
setEffRotateKey( spep_1 + 76, shuchusen2, 180 );
setEffRotateKey( spep_1 + 78, shuchusen2, 0 );
setEffRotateKey( spep_1 + 80, shuchusen2, 180 );
setEffRotateKey( spep_1 + 82, shuchusen2, 0 );
setEffRotateKey( spep_1 + 84, shuchusen2, 180 );
setEffRotateKey( spep_1 + 86, shuchusen2, 0 );
setEffRotateKey( spep_1 + 88, shuchusen2, 180 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;
entryFade( spep_2 - 6, 3, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 開放(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
kaihou = entryEffectLife( spep_2 + 0, SP_02, 44, 0x100, -1, 0, 0, 0 );  --開放(ef_003)
setEffMoveKey( spep_2 + 0, kaihou, 0, 0 , 0 );
setEffMoveKey( spep_2 + 44, kaihou, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kaihou, -1.0, 1.0 );
setEffScaleKey( spep_2 + 44, kaihou, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kaihou, 0 );
setEffRotateKey( spep_2 + 44, kaihou, 0 );
setEffAlphaKey( spep_2 + 0, kaihou, 255 );
setEffAlphaKey( spep_2 + 44, kaihou, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, 1018 );  --溜め

-- ** ホワイトフェード ** --
entryFade( spep_2 + 34, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 44;

------------------------------------------------------
-- 光の拡散(104F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakusan = entryEffectLife( spep_3 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --光の拡散(ef_004)
setEffMoveKey( spep_3 + 0, kakusan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, kakusan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kakusan, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, kakusan, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakusan, 0 );
setEffRotateKey( spep_3 + 100, kakusan, 0 );
setEffAlphaKey( spep_3 + 0, kakusan, 255 );
setEffAlphaKey( spep_3 + 100, kakusan, 255 );

-- ** 音 ** --
playSe( spep_3 + 24, 1017 );  --光の玉爆発

-- ** 背景 ** --
entryFadeBg( spep_3 + 24, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFadeBg( spep_3 + 28, 0, 10, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 48, 50, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 104;

------------------------------------------------------
-- 飲み込む煙(288F)
------------------------------------------------------

-- ** エフェクト等 ** --
kemuri1 = entryEffectLife( spep_4 + 0, SP_04, 288, 0x80, -1, 0, 0, 0 );  --飲み込む煙　奥(ef_005)
setEffMoveKey( spep_4 + 0, kemuri1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 288, kemuri1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kemuri1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 288, kemuri1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kemuri1, 0 );
setEffRotateKey( spep_4 + 288, kemuri1, 0 );
setEffAlphaKey( spep_4 + 0, kemuri1, 255 );
setEffAlphaKey( spep_4 + 288, kemuri1, 255 );

kemuri2 = entryEffectLife( spep_4 + 0, SP_05, 152, 0x100, -1, 0, 0, 0 );  --飲み込む煙　手前(ef_006)
setEffMoveKey( spep_4 + 0, kemuri2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 152, kemuri2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kemuri2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 152, kemuri2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kemuri2, 0 );
setEffRotateKey( spep_4 + 152, kemuri2, 0 );
setEffAlphaKey( spep_4 + 0, kemuri2, 255 );
setEffAlphaKey( spep_4 + 150, kemuri2, 255 );
setEffAlphaKey( spep_4 + 151, kemuri2, 0 );
setEffAlphaKey( spep_4 + 152, kemuri2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 150, 1, 0 );
changeAnime( spep_4 + 0, 1, 102 );

setMoveKey( spep_4 + 0, 1, 240.3, -324.3 , 0 );
setMoveKey( spep_4 + 2, 1, 242.8, -328.5 , 0 );
setMoveKey( spep_4 + 4, 1, 241.5, -326.5 , 0 );
setMoveKey( spep_4 + 6, 1, 240.4, -327.3 , 0 );
setMoveKey( spep_4 + 8, 1, 242.8, -325.5 , 0 );
setMoveKey( spep_4 + 10, 1, 245.4, -320.6 , 0 );
setMoveKey( spep_4 + 12, 1, 248.1, -324.2 , 0 );
setMoveKey( spep_4 + 14, 1, 248.7, -331.4 , 0 );
setMoveKey( spep_4 + 16, 1, 247.4, -322.6 , 0 );
setMoveKey( spep_4 + 18, 1, 246.2, -322.3 , 0 );
setMoveKey( spep_4 + 20, 1, 244.8, -323.6 , 0 );
setMoveKey( spep_4 + 22, 1, 239.6, -318.6 , 0 );
setMoveKey( spep_4 + 24, 1, 237.1, -321 , 0 );
setMoveKey( spep_4 + 26, 1, 238.3, -321 , 0 );
setMoveKey( spep_4 + 28, 1, 235.7, -314.7 , 0 );
setMoveKey( spep_4 + 30, 1, 238.4, -320.3 , 0 );
setMoveKey( spep_4 + 32, 1, 235.1, -319.7 , 0 );
setMoveKey( spep_4 + 34, 1, 239.7, -322.5 , 0 );
setMoveKey( spep_4 + 36, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 38, 1, 242.9, -319.7 , 0 );
setMoveKey( spep_4 + 40, 1, 239.7, -310.8 , 0 );
setMoveKey( spep_4 + 42, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 44, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 46, 1, 239.7, -316.7 , 0 );
setMoveKey( spep_4 + 48, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 50, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 52, 1, 243.6, -314.7 , 0 );
setMoveKey( spep_4 + 54, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 56, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 58, 1, 241.6, -314.7 , 0 );
setMoveKey( spep_4 + 60, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 62, 1, 239, -327.5 , 0 );
setMoveKey( spep_4 + 64, 1, 239.7, -316.7 , 0 );
setMoveKey( spep_4 + 66, 1, 246.3, -318.4 , 0 );
setMoveKey( spep_4 + 68, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 70, 1, 235.8, -312.8 , 0 );
setMoveKey( spep_4 + 72, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 74, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 76, 1, 241.6, -322.5 , 0 );
setMoveKey( spep_4 + 78, 1, 234.6, -318.4 , 0 );
setMoveKey( spep_4 + 80, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 82, 1, 245.5, -312.8 , 0 );
setMoveKey( spep_4 + 84, 1, 238.5, -320.4 , 0 );
setMoveKey( spep_4 + 86, 1, 242.9, -317.8 , 0 );
setMoveKey( spep_4 + 88, 1, 239.7, -316.7 , 0 );
setMoveKey( spep_4 + 90, 1, 240.4, -318.4 , 0 );
setMoveKey( spep_4 + 92, 1, 241, -321.7 , 0 );
setMoveKey( spep_4 + 94, 1, 235.7, -320.6 , 0 );
setMoveKey( spep_4 + 96, 1, 238.4, -320.4 , 0 );
setMoveKey( spep_4 + 98, 1, 240.9, -321.7 , 0 );
setMoveKey( spep_4 + 100, 1, 241.6, -312.8 , 0 );
setMoveKey( spep_4 + 102, 1, 238.4, -320.4 , 0 );
setMoveKey( spep_4 + 104, 1, 237, -319.7 , 0 );
setMoveKey( spep_4 + 106, 1, 239.6, -316.7 , 0 );
setMoveKey( spep_4 + 108, 1, 240.4, -324.3 , 0 );
setMoveKey( spep_4 + 110, 1, 237, -321.7 , 0 );
setMoveKey( spep_4 + 112, 1, 239.6, -312.8 , 0 );
setMoveKey( spep_4 + 114, 1, 242.3, -324.3 , 0 );
setMoveKey( spep_4 + 116, 1, 244.8, -325.6 , 0 );
setMoveKey( spep_4 + 118, 1, 235.7, -314.7 , 0 );
setMoveKey( spep_4 + 120, 1, 238.4, -320.4 , 0 );
setMoveKey( spep_4 + 122, 1, 242.9, -317.8 , 0 );
setMoveKey( spep_4 + 124, 1, 239.6, -316.7 , 0 );
setMoveKey( spep_4 + 126, 1, 240.4, -324.3 , 0 );
setMoveKey( spep_4 + 128, 1, 235.1, -321.7 , 0 );
setMoveKey( spep_4 + 130, 1, 239.6, -320.6 , 0 );
setMoveKey( spep_4 + 132, 1, 240.4, -318.4 , 0 );
setMoveKey( spep_4 + 134, 1, 240.9, -319.7 , 0 );
setMoveKey( spep_4 + 136, 1, 241.6, -320.6 , 0 );
setMoveKey( spep_4 + 138, 1, 238.4, -320.4 , 0 );
setMoveKey( spep_4 + 140, 1, 237, -319.7 , 0 );
setMoveKey( spep_4 + 142, 1, 239.6, -316.7 , 0 );
setMoveKey( spep_4 + 144, 1, 240.4, -324.3 , 0 );
setMoveKey( spep_4 + 146, 1, 242.9, -317.8 , 0 );
setMoveKey( spep_4 + 148, 1, 235.7, -308.9 , 0 );
setMoveKey( spep_4 + 150, 1, 246.2, -324.3 , 0 );
setMoveKey( spep_4 + 152, 1, 244.8, -317.8 , 0 );

setScaleKey( spep_4 + 0, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 152, 1, 1.24, 1.24 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 152, 1, 0 );

-- ** 音 ** --
SEgo = playSeLife( spep_4 + 0, 1044 );  --煙迫る
stopSe( spep_4 + 150, SEgo, 0 );

playSe( spep_4 + 150, 1024 );  --爆発

-- ** 背景 ** --
entryFadeBg( spep_4 + 40, 14, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFadeBg( spep_4 + 150, 0, 4, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 154, 0, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 288;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 126; --エンドフェイズのフレーム数を置き換える
stopSe( spep_4 + 126, SEgo, 0 );

playSe( SP_dodge - 12, 1042 );

speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 火柱中(32F)
------------------------------------------------------

-- ** エフェクト等 ** --
hibasira1 = entryEffectLife( spep_5 + 0, SP_06, 32, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)
setEffMoveKey( spep_5 + 0, hibasira1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 32, hibasira1, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hibasira1, 1.0, 1.0 );
setEffScaleKey( spep_5 + 32, hibasira1, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hibasira1, 0 );
setEffRotateKey( spep_5 + 32, hibasira1, 0 );
setEffAlphaKey( spep_5 + 0, hibasira1, 255 );
setEffAlphaKey( spep_5 + 32, hibasira1, 255 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 32;

------------------------------------------------------
-- 火柱中敵吹っ飛び(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
--hibasira2 = entryEffectLife( spep_6 + 0, SP_06, 58, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)
hibasira2 = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)
setEffMoveKey( spep_6 + 0, hibasira2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 30, hibasira2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hibasira2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 30, hibasira2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hibasira2, 0 );
setEffRotateKey( spep_6 + 30, hibasira2, 0 );
setEffAlphaKey( spep_6 + 0, hibasira2, 255 );
setEffAlphaKey( spep_6 + 30, hibasira2, 255 );

hibasira2x = entryEffect( spep_6 + 30, SP_06, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)2ループ目
setEffMoveKey( spep_6 + 30, hibasira2x, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, hibasira2x, 0, 0 , 0 );
setEffScaleKey( spep_6 + 30, hibasira2x, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, hibasira2x, 1.0, 1.0 );
setEffRotateKey( spep_6 + 30, hibasira2x, 0 );
setEffRotateKey( spep_6 + 58, hibasira2x, 0 );
setEffAlphaKey( spep_6 + 30, hibasira2x, 255 );
setEffAlphaKey( spep_6 + 58, hibasira2x, 255 );

hibasira3 = entryEffectLife( spep_6 + 0, SP_07, 10, 0x100, -1, 0, 0, 0 );  --火柱中　手前(ef_008)
setEffMoveKey( spep_6 + 0, hibasira3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 10, hibasira3, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hibasira3, 1.0, 1.0 );
setEffScaleKey( spep_6 + 10, hibasira3, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hibasira3, 0 );
setEffRotateKey( spep_6 + 10, hibasira3, 0 );
setEffAlphaKey( spep_6 + 0, hibasira3, 128 );
setEffAlphaKey( spep_6 + 10, hibasira3, 128 );

hibasira4 = entryEffectLife( spep_6 + 10, SP_07, 3, 0x100, -1, 0, 0, 0 );  --火柱中　手前(ef_008)2ループ目
setEffMoveKey( spep_6 + 10, hibasira4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 13, hibasira4, 0, 0 , 0 );
setEffScaleKey( spep_6 + 10, hibasira4, 1.0, 1.0 );
setEffScaleKey( spep_6 + 13, hibasira4, 1.0, 1.0 );
setEffRotateKey( spep_6 + 10, hibasira4, 0 );
setEffRotateKey( spep_6 + 13, hibasira4, 0 );
setEffAlphaKey( spep_6 + 10, hibasira4, 128 );
setEffAlphaKey( spep_6 + 13, hibasira4, 128 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 3,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 3, hibiware, 68, -60, 0 ); 
setEffMoveKey( spep_6 + 4, hibiware, 68, -60, 0 ); 
setEffMoveKey( spep_6 + 58, hibiware, 68, -60, 0 ); 

setEffScaleKey( spep_6 + 3, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 4, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 3, hibiware, 0 );
setEffRotateKey( spep_6 + 4, hibiware, 0 );
setEffRotateKey( spep_6 + 58, hibiware, 0 );

setEffAlphaKey( spep_6 + 3, hibiware, 255 );
setEffAlphaKey( spep_6 + 4, hibiware, 255 );
setEffAlphaKey( spep_6 + 58, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_6 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen3, 180 );
setEffRotateKey( spep_6 + 16, shuchusen3, 0 );
setEffRotateKey( spep_6 + 18, shuchusen3, 180 );
setEffRotateKey( spep_6 + 20, shuchusen3, 0 );
setEffRotateKey( spep_6 + 22, shuchusen3, 180 );
setEffRotateKey( spep_6 + 24, shuchusen3, 0 );
setEffRotateKey( spep_6 + 26, shuchusen3, 180 );
setEffRotateKey( spep_6 + 28, shuchusen3, 0 );
setEffRotateKey( spep_6 + 30, shuchusen3, 180 );
setEffRotateKey( spep_6 + 32, shuchusen3, 0 );
setEffRotateKey( spep_6 + 34, shuchusen3, 180 );
setEffRotateKey( spep_6 + 36, shuchusen3, 0 );
setEffRotateKey( spep_6 + 38, shuchusen3, 180 );
setEffRotateKey( spep_6 + 40, shuchusen3, 0 );
setEffRotateKey( spep_6 + 42, shuchusen3, 180 );
setEffRotateKey( spep_6 + 44, shuchusen3, 0 );
setEffRotateKey( spep_6 + 46, shuchusen3, 180 );

setEffAlphaKey( spep_6 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_6 + 0,  1657, 58, 0x80, -1, 0, -256, 0 );  --細い集中線黒
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 58, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 58, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 0 );
setEffAlphaKey( spep_6 + 13, shuchusen4, 0 );
setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 58, shuchusen4, 255 );

shuchusen4x = entryEffectLife( spep_6 + 30,  1657, 58, 0x80, -1, 0, -256, 0 );  --細い集中線黒 ループ用
setEffMoveKey( spep_6 + 30, shuchusen4x, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, shuchusen4x, 0, 0 , 0 );

setEffScaleKey( spep_6 + 30, shuchusen4x, 1, 1 );
setEffScaleKey( spep_6 + 58, shuchusen4x, 1, 1 );

setEffRotateKey( spep_6 + 30, shuchusen4x, 0 );
setEffRotateKey( spep_6 + 58, shuchusen4x, 0 );

setEffAlphaKey( spep_6 + 30, shuchusen4x, 255 );
setEffAlphaKey( spep_6 + 58, shuchusen4x, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 44, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 16, ctga, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 18, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 20, ctga, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 22, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 24, ctga, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 26, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 30, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 58, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3, 3 );
setEffScaleKey( spep_6 + 58, ctga, 3, 3 );

setEffRotateKey( spep_6 + 14, ctga, -14.9 );
setEffRotateKey( spep_6 + 16, ctga, -10.9 );
setEffRotateKey( spep_6 + 18, ctga, -14.9 );
setEffRotateKey( spep_6 + 20, ctga, -10.9 );
setEffRotateKey( spep_6 + 22, ctga, -14.9 );
setEffRotateKey( spep_6 + 24, ctga, -10.9 );
setEffRotateKey( spep_6 + 26, ctga, -14.9 );
setEffRotateKey( spep_6 + 28, ctga, -10.9 );
setEffRotateKey( spep_6 + 30, ctga, -14.9 );
setEffRotateKey( spep_6 + 58, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 58, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
--setDisp( spep_6 + 58, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 3, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 4, 1, 17.7, -30.4 , 0 );
setMoveKey( spep_6 + 5, 1, 17.7, -30.4 , 0 );
setMoveKey( spep_6 + 6, 1, 25, -61.6 , 0 );
setMoveKey( spep_6 + 7, 1, 25, -61.6 , 0 );
setMoveKey( spep_6 + 8, 1, 27, -80.4 , 0 );
setMoveKey( spep_6 + 9, 1, 27, -80.4 , 0 );
setMoveKey( spep_6 + 10, 1, 8, -64.8 , 0 );
setMoveKey( spep_6 + 11, 1, 8, -64.8 , 0 );
setMoveKey( spep_6 + 12, 1, -58, -158.1 , 0 );
setMoveKey( spep_6 + 13, 1, -58, -158.1 , 0 );
setMoveKey( spep_6 + 14, 1, -58, -158.1 , 0 );
setMoveKey( spep_6 + 58, 1, -58, -158.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.24, 0.24 );
setScaleKey( spep_6 + 3, 1, 0.24, 0.24 );
setScaleKey( spep_6 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 5, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 7, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 9, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 10, 1, 0.99, 0.99 );
setScaleKey( spep_6 + 11, 1, 0.99, 0.99 );
setScaleKey( spep_6 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 15, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 19, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 23, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 58, 1, 1.3, 1.3 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 1, 1, 0 );
setRotateKey( spep_6 + 2, 1, 40 );
setRotateKey( spep_6 + 3, 1, 40 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 0 );
setRotateKey( spep_6 + 7, 1, 0 );
setRotateKey( spep_6 + 8, 1, 200 );
setRotateKey( spep_6 + 9, 1, 200 );
setRotateKey( spep_6 + 10, 1, 61 );
setRotateKey( spep_6 + 11, 1, 61 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 13, 1, -40 );
setRotateKey( spep_6 + 14, 1, -40 );
setRotateKey( spep_6 + 58, 1, -40 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 14 );
entryFade( spep_6 + 48, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 58 );

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
--hibasira5 = entryEffectLife( spep_z + 0, SP_06, 58, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)
hibasira5 = entryEffect( spep_z + 0, SP_06, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)
setEffMoveKey( spep_z + 0, hibasira5, 0, 0 , 0 );
setEffMoveKey( spep_z + 30, hibasira5, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, hibasira5, 1.0, 1.0 );
setEffScaleKey( spep_z + 30, hibasira5, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hibasira5, 0 );
setEffRotateKey( spep_z + 30, hibasira5, 0 );
setEffAlphaKey( spep_z + 0, hibasira5, 255 );
setEffAlphaKey( spep_z + 30, hibasira5, 255 );

hibasira5x = entryEffect( spep_z + 30, SP_06, 0x80, -1, 0, 0, 0 );  --火柱中　奥(ef_007)2ループ目
setEffMoveKey( spep_z + 30, hibasira5x, 0, 0 , 0 );
setEffMoveKey( spep_z + 58, hibasira5x, 0, 0 , 0 );
setEffScaleKey( spep_z + 30, hibasira5x, 1.0, 1.0 );
setEffScaleKey( spep_z + 58, hibasira5x, 1.0, 1.0 );
setEffRotateKey( spep_z + 30, hibasira5x, 0 );
setEffRotateKey( spep_z + 58, hibasira5x, 0 );
setEffAlphaKey( spep_z + 30, hibasira5x, 255 );
setEffAlphaKey( spep_z + 58, hibasira5x, 255 );

hibasira6 = entryEffectLife( spep_z + 0, SP_07, 10, 0x100, -1, 0, 0, 0 );  --火柱中　手前(ef_008)
setEffMoveKey( spep_z + 0, hibasira6, 0, 0 , 0 );
setEffMoveKey( spep_z + 10, hibasira6, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, hibasira6, 1.0, 1.0 );
setEffScaleKey( spep_z + 10, hibasira6, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hibasira6, 0 );
setEffRotateKey( spep_z + 10, hibasira6, 0 );
setEffAlphaKey( spep_z + 0, hibasira6, 128 );
setEffAlphaKey( spep_z + 10, hibasira6, 128 );

hibasira7 = entryEffectLife( spep_z + 10, SP_07, 3, 0x100, -1, 0, 0, 0 );  --火柱中　手前(ef_008)2ループ目
setEffMoveKey( spep_z + 10, hibasira7, 0, 0 , 0 );
setEffMoveKey( spep_z + 13, hibasira7, 0, 0 , 0 );
setEffScaleKey( spep_z + 10, hibasira7, 1.0, 1.0 );
setEffScaleKey( spep_z + 13, hibasira7, 1.0, 1.0 );
setEffRotateKey( spep_z + 10, hibasira7, 0 );
setEffRotateKey( spep_z + 13, hibasira7, 0 );
setEffAlphaKey( spep_z + 10, hibasira7, 128 );
setEffAlphaKey( spep_z + 13, hibasira7, 128 );

-- ** ひび割れ ** --
hibiware1 = entryEffect( spep_z + 3,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_z + 3, hibiware1, 68, -60, 0 ); 
setEffMoveKey( spep_z + 4, hibiware1, 68, -60, 0 ); 
setEffMoveKey( spep_z + 58, hibiware1, 68, -60, 0 ); 

setEffScaleKey( spep_z + 3, hibiware1, 1.0, 1.0 );
setEffScaleKey( spep_z + 4, hibiware1, 1.0, 1.0 );
setEffScaleKey( spep_z + 58, hibiware1, 1.0, 1.0 );

setEffRotateKey( spep_z + 3, hibiware1, 0 );
setEffRotateKey( spep_z + 4, hibiware1, 0 );
setEffRotateKey( spep_z + 58, hibiware1, 0 );

setEffAlphaKey( spep_z + 3, hibiware1, 255 );
setEffAlphaKey( spep_z + 4, hibiware1, 255 );
setEffAlphaKey( spep_z + 58, hibiware1, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_z + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_z + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_z + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_z + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen5, 180 );
setEffRotateKey( spep_z + 16, shuchusen5, 0 );
setEffRotateKey( spep_z + 18, shuchusen5, 180 );
setEffRotateKey( spep_z + 20, shuchusen5, 0 );
setEffRotateKey( spep_z + 22, shuchusen5, 180 );
setEffRotateKey( spep_z + 24, shuchusen5, 0 );
setEffRotateKey( spep_z + 26, shuchusen5, 180 );
setEffRotateKey( spep_z + 28, shuchusen5, 0 );
setEffRotateKey( spep_z + 30, shuchusen5, 180 );
setEffRotateKey( spep_z + 32, shuchusen5, 0 );
setEffRotateKey( spep_z + 34, shuchusen5, 180 );
setEffRotateKey( spep_z + 36, shuchusen5, 0 );
setEffRotateKey( spep_z + 38, shuchusen5, 180 );
setEffRotateKey( spep_z + 40, shuchusen5, 0 );
setEffRotateKey( spep_z + 42, shuchusen5, 180 );
setEffRotateKey( spep_z + 44, shuchusen5, 0 );
setEffRotateKey( spep_z + 46, shuchusen5, 180 );

setEffAlphaKey( spep_z + 14, shuchusen5, 255 );
setEffAlphaKey( spep_z + 28, shuchusen5, 255 );
setEffAlphaKey( spep_z + 30, shuchusen5, 252 );
setEffAlphaKey( spep_z + 32, shuchusen5, 242 );
setEffAlphaKey( spep_z + 34, shuchusen5, 227 );
setEffAlphaKey( spep_z + 36, shuchusen5, 205 );
setEffAlphaKey( spep_z + 38, shuchusen5, 176 );
setEffAlphaKey( spep_z + 40, shuchusen5, 142 );
setEffAlphaKey( spep_z + 42, shuchusen5, 101 );
setEffAlphaKey( spep_z + 44, shuchusen5, 54 );
setEffAlphaKey( spep_z + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_z + 0,  1657, 58, 0x80, -1, 0, -256, 0 );  --細い集中線黒
setEffMoveKey( spep_z + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_z + 58, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_z + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_z + 58, shuchusen6, 1, 1 );

setEffRotateKey( spep_z + 0, shuchusen6, 0 );
setEffRotateKey( spep_z + 58, shuchusen6, 0 );

setEffAlphaKey( spep_z + 0, shuchusen6, 0 );
setEffAlphaKey( spep_z + 13, shuchusen6, 0 );
setEffAlphaKey( spep_z + 14, shuchusen6, 255 );
setEffAlphaKey( spep_z + 58, shuchusen6, 255 );

shuchusen6x = entryEffectLife( spep_z + 30,  1657, 58, 0x80, -1, 0, -256, 0 );  --細い集中線黒 ループ用
setEffMoveKey( spep_z + 30, shuchusen6x, 0, 0 , 0 );
setEffMoveKey( spep_z + 58, shuchusen6x, 0, 0 , 0 );

setEffScaleKey( spep_z + 30, shuchusen6x, 1, 1 );
setEffScaleKey( spep_z + 58, shuchusen6x, 1, 1 );

setEffRotateKey( spep_z + 30, shuchusen6x, 0 );
setEffRotateKey( spep_z + 58, shuchusen6x, 0 );

setEffAlphaKey( spep_z + 30, shuchusen6x, 255 );
setEffAlphaKey( spep_z + 58, shuchusen6x, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_z + 14,  10005, 44, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffMoveKey( spep_z + 14, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 16, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_z + 18, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 20, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_z + 22, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 24, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_z + 26, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 28, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_z + 30, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 58, ctga1, 3.9, 316.1 , 0 );

setEffScaleKey( spep_z + 14, ctga1, 3, 3 );
setEffScaleKey( spep_z + 58, ctga1, 3, 3 );

setEffRotateKey( spep_z + 14, ctga1, -14.9 );
setEffRotateKey( spep_z + 16, ctga1, -10.9 );
setEffRotateKey( spep_z + 18, ctga1, -14.9 );
setEffRotateKey( spep_z + 20, ctga1, -10.9 );
setEffRotateKey( spep_z + 22, ctga1, -14.9 );
setEffRotateKey( spep_z + 24, ctga1, -10.9 );
setEffRotateKey( spep_z + 26, ctga1, -14.9 );
setEffRotateKey( spep_z + 28, ctga1, -10.9 );
setEffRotateKey( spep_z + 30, ctga1, -14.9 );
setEffRotateKey( spep_z + 58, ctga1, -14.9 );

setEffAlphaKey( spep_z + 14, ctga1, 255 );
setEffAlphaKey( spep_z + 58, ctga1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
--setDisp( spep_z + 58, 1, 1 );
changeAnime( spep_z + 0, 1, 107 );

setMoveKey( spep_z + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_z + 3, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_z + 4, 1, 17.7, -30.4 , 0 );
setMoveKey( spep_z + 5, 1, 17.7, -30.4 , 0 );
setMoveKey( spep_z + 6, 1, 25, -61.6 , 0 );
setMoveKey( spep_z + 7, 1, 25, -61.6 , 0 );
setMoveKey( spep_z + 8, 1, 27, -80.4 , 0 );
setMoveKey( spep_z + 9, 1, 27, -80.4 , 0 );
setMoveKey( spep_z + 10, 1, 8, -64.8 , 0 );
setMoveKey( spep_z + 11, 1, 8, -64.8 , 0 );
setMoveKey( spep_z + 12, 1, -58, -158.1 , 0 );
setMoveKey( spep_z + 13, 1, -58, -158.1 , 0 );
setMoveKey( spep_z + 14, 1, -58, -158.1 , 0 );
setMoveKey( spep_z + 58, 1, -58, -158.1 , 0 );

setScaleKey( spep_z + 0, 1, 0.22, 0.22 );
setScaleKey( spep_z + 2, 1, 0.24, 0.24 );
setScaleKey( spep_z + 3, 1, 0.24, 0.24 );
setScaleKey( spep_z + 4, 1, 0.39, 0.39 );
setScaleKey( spep_z + 5, 1, 0.39, 0.39 );
setScaleKey( spep_z + 6, 1, 0.64, 0.64 );
setScaleKey( spep_z + 7, 1, 0.64, 0.64 );
setScaleKey( spep_z + 8, 1, 0.78, 0.78 );
setScaleKey( spep_z + 9, 1, 0.78, 0.78 );
setScaleKey( spep_z + 10, 1, 0.99, 0.99 );
setScaleKey( spep_z + 11, 1, 0.99, 0.99 );
setScaleKey( spep_z + 12, 1, 1.1, 1.1 );
setScaleKey( spep_z + 13, 1, 1.1, 1.1 );
setScaleKey( spep_z + 14, 1, 1.3, 1.3 );
setScaleKey( spep_z + 15, 1, 1.3, 1.3 );
setScaleKey( spep_z + 16, 1, 1.1, 1.1 );
setScaleKey( spep_z + 17, 1, 1.1, 1.1 );
setScaleKey( spep_z + 18, 1, 1.3, 1.3 );
setScaleKey( spep_z + 19, 1, 1.3, 1.3 );
setScaleKey( spep_z + 20, 1, 1.1, 1.1 );
setScaleKey( spep_z + 21, 1, 1.1, 1.1 );
setScaleKey( spep_z + 22, 1, 1.3, 1.3 );
setScaleKey( spep_z + 23, 1, 1.3, 1.3 );
setScaleKey( spep_z + 24, 1, 1.1, 1.1 );
setScaleKey( spep_z + 25, 1, 1.1, 1.1 );
setScaleKey( spep_z + 26, 1, 1.3, 1.3 );
setScaleKey( spep_z + 58, 1, 1.3, 1.3 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 1, 1, 0 );
setRotateKey( spep_z + 2, 1, 40 );
setRotateKey( spep_z + 3, 1, 40 );
setRotateKey( spep_z + 4, 1, 200 );
setRotateKey( spep_z + 5, 1, 200 );
setRotateKey( spep_z + 6, 1, 0 );
setRotateKey( spep_z + 7, 1, 0 );
setRotateKey( spep_z + 8, 1, 200 );
setRotateKey( spep_z + 9, 1, 200 );
setRotateKey( spep_z + 10, 1, 61 );
setRotateKey( spep_z + 11, 1, 61 );
setRotateKey( spep_z + 12, 1, -40 );
setRotateKey( spep_z + 13, 1, -40 );
setRotateKey( spep_z + 14, 1, -40 );
setRotateKey( spep_z + 58, 1, -40 );

-- ** ホワイトフェード ** --
entryFade( spep_z + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_z + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_z + 14 );
entryFade( spep_z + 48, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_z + 58 );

end


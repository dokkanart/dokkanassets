--リベンジデスボールファイナル　大猿ベビー

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
SP_01 = 153018; --153018
SP_02 = 153019; --153019
SP_03 = 153020; --153020

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
-- 気弾溜め(290F)
------------------------------------------------------
spep_0 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 110, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 110, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.08, 1.98 );
setEffScaleKey( spep_0 + 110, shuchusen1, 1.08, 1.98 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 110, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 110, shuchusen1, 255 );


-- ** エフェクト等 ** --
kidame = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 290, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 290, kidame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 290, kidame, 255 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 290, kidame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 128, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 128, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 142,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 142, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 142, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 212, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 142, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 186, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 190, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 194, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 210, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 212, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 142, ctgogo, 0 );
setEffRotateKey( spep_0 + 212, ctgogo, 0 );

setEffAlphaKey( spep_0 + 142, ctgogo, 255 );
setEffAlphaKey( spep_0 + 212, ctgogo, 255 );

--***SE***
playSe(  spep_0,  17);  --気溜め
playSe(  spep_0+142,  SE_04);  --カットイン
playSe(  spep_0+200,  1068);  --気弾大きくなる


entryFade( spep_0+280,  4, 8,  4,fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


--------------------------------------
--カードカットイン(90F)
--------------------------------------
spep_1 = spep_0+290;

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線

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

--------------------------------------
--投げる〜被弾(500F)
--------------------------------------
spep_2 = spep_1+90;

a=4
--***書き文字***
ct_zuo = entryEffectLife( spep_2 + 26-a,  10012, 56, 0x100, -1, 0, 78.7, 260.5 );  --ズオ

setEffShake(  spep_2+26-a,  ct_zuo,  56,  20);  --揺れ
setEffMoveKey( spep_2 + 26-a, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_2 + 28-a, ct_zuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_2 + 30-a, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 78-a, ct_zuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_2 + 80-a, ct_zuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_2 + 82-a, ct_zuo, 250.3, 332.4 , 0 );
setEffScaleKey( spep_2 + 26-a, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 28-a, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 30-a, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 72-a, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 74-a, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 76-a, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 78-a, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 80-a, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 82-a, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_2 + 26-a, ct_zuo, 27.2 );
setEffRotateKey( spep_2 + 82-a, ct_zuo, 27.2 );
setEffAlphaKey( spep_2 + 26-a, ct_zuo, 255 );
setEffAlphaKey( spep_2 + 72-a, ct_zuo, 255 );
setEffAlphaKey( spep_2 + 74-a, ct_zuo, 204 );
setEffAlphaKey( spep_2 + 76-a, ct_zuo, 153 );
setEffAlphaKey( spep_2 + 78-a, ct_zuo, 102 );
setEffAlphaKey( spep_2 + 80-a, ct_zuo, 51 );
setEffAlphaKey( spep_2 + 82-a, ct_zuo, 0 );

--***集中線***
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 106, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.11, 1.75 );
setEffScaleKey( spep_2 + 106, shuchusen2, 1.11, 1.75 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 106, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen2, 204 );
setEffAlphaKey( spep_2 + 100, shuchusen2, 153 );
setEffAlphaKey( spep_2 + 102, shuchusen2, 102 );
setEffAlphaKey( spep_2 + 104, shuchusen2, 51 );
setEffAlphaKey( spep_2 + 106, shuchusen2, 0 );

-- ** エフェクト等 ** --
nageruBG = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 );  --投げる
setEffMoveKey( spep_2 + 0, nageruBG, 0, 0 , 0 );
setEffMoveKey( spep_2 + 500, nageruBG, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageruBG, 1.0, 1.0 );
setEffScaleKey( spep_2 + 500, nageruBG, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, nageruBG, 255 );
setEffAlphaKey( spep_2 + 500, nageruBG, 255 );
setEffRotateKey( spep_2 + 0, nageruBG, 0 );
setEffRotateKey( spep_2 + 500, nageruBG, 0 );


nageru = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --投げる
setEffMoveKey( spep_2 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 290, nageru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 290, nageru, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, nageru, 255 );
setEffAlphaKey( spep_2 + 290, nageru, 255 );
setEffRotateKey( spep_2 + 0, nageru, 0 );
setEffRotateKey( spep_2 + 290, nageru, 0 );

--***SE***
playSe(  spep_2+24,  1033);  --投げる


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 28; --エンドフェイズのフレーム数を置き換える

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

ct_zudodo = entryEffectLife( spep_2 + 100-a,  10014, 144, 0x100, -1, 0, 159.2, 335 );  --ズドド
setEffShake(  spep_2+100-a,  ct_zudodo,  144,  20);  --揺れ
setEffMoveKey( spep_2 + 100-a, ct_zudodo, 159.2, 335 , 0 );
setEffMoveKey( spep_2 + 240-a, ct_zudodo, 172.1, 337.6 , 0 );
setEffMoveKey( spep_2 + 242-a, ct_zudodo, 192.2, 359 , 0 );
setEffMoveKey( spep_2 + 244-a, ct_zudodo, 192.7, 357.9 , 0 );

setEffScaleKey( spep_2 + 100-a, ct_zudodo, 1.16, 1.16 );
setEffScaleKey( spep_2 + 102-a, ct_zudodo, 1.84, 1.84 );
setEffScaleKey( spep_2 + 104-a, ct_zudodo, 2.52, 2.52 );
setEffScaleKey( spep_2 + 106-a, ct_zudodo, 3.2, 3.2 );
setEffScaleKey( spep_2 + 108-a, ct_zudodo, 3.88, 3.88 );
setEffScaleKey( spep_2 + 110-a, ct_zudodo, 2.84, 2.84 );
setEffScaleKey( spep_2 + 112-a, ct_zudodo, 1.81, 1.81 );
setEffScaleKey( spep_2 + 114-a, ct_zudodo, 1.82, 1.82 );
setEffScaleKey( spep_2 + 116-a, ct_zudodo, 1.84, 1.84 );
setEffScaleKey( spep_2 + 118-a, ct_zudodo, 1.85, 1.85 );
setEffScaleKey( spep_2 + 120-a, ct_zudodo, 1.86, 1.86 );
setEffScaleKey( spep_2 + 122-a, ct_zudodo, 1.87, 1.87 );
setEffScaleKey( spep_2 + 124-a, ct_zudodo, 1.89, 1.89 );
setEffScaleKey( spep_2 + 126-a, ct_zudodo, 1.9, 1.9 );
setEffScaleKey( spep_2 + 128-a, ct_zudodo, 1.91, 1.91 );
setEffScaleKey( spep_2 + 130-a, ct_zudodo, 1.93, 1.93 );
setEffScaleKey( spep_2 + 132-a, ct_zudodo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 134-a, ct_zudodo, 1.95, 1.95 );
setEffScaleKey( spep_2 + 136-a, ct_zudodo, 1.97, 1.97 );
setEffScaleKey( spep_2 + 138-a, ct_zudodo, 1.98, 1.98 );
setEffScaleKey( spep_2 + 140-a, ct_zudodo, 1.99, 1.99 );
setEffScaleKey( spep_2 + 142-a, ct_zudodo, 2, 2 );
setEffScaleKey( spep_2 + 144-a, ct_zudodo, 2.02, 2.02 );
setEffScaleKey( spep_2 + 146-a, ct_zudodo, 2.03, 2.03 );
setEffScaleKey( spep_2 + 148-a, ct_zudodo, 2.04, 2.04 );
setEffScaleKey( spep_2 + 150-a, ct_zudodo, 2.06, 2.06 );
setEffScaleKey( spep_2 + 152-a, ct_zudodo, 2.07, 2.07 );
setEffScaleKey( spep_2 + 154-a, ct_zudodo, 2.08, 2.08 );
setEffScaleKey( spep_2 + 156-a, ct_zudodo, 2.09, 2.09 );
setEffScaleKey( spep_2 + 158-a, ct_zudodo, 2.11, 2.11 );
setEffScaleKey( spep_2 + 160-a, ct_zudodo, 2.12, 2.12 );
setEffScaleKey( spep_2 + 162-a, ct_zudodo, 2.13, 2.13 );
setEffScaleKey( spep_2 + 164-a, ct_zudodo, 2.15, 2.15 );
setEffScaleKey( spep_2 + 166-a, ct_zudodo, 2.16, 2.16 );
setEffScaleKey( spep_2 + 168-a, ct_zudodo, 2.17, 2.17 );
setEffScaleKey( spep_2 + 170-a, ct_zudodo, 2.18, 2.18 );
setEffScaleKey( spep_2 + 172-a, ct_zudodo, 2.2, 2.2 );
setEffScaleKey( spep_2 + 174-a, ct_zudodo, 2.21, 2.21 );
setEffScaleKey( spep_2 + 176-a, ct_zudodo, 2.22, 2.22 );
setEffScaleKey( spep_2 + 178-a, ct_zudodo, 2.24, 2.24 );
setEffScaleKey( spep_2 + 180-a, ct_zudodo, 2.25, 2.25 );
setEffScaleKey( spep_2 + 182-a, ct_zudodo, 2.26, 2.26 );
setEffScaleKey( spep_2 + 184-a, ct_zudodo, 2.28, 2.28 );
setEffScaleKey( spep_2 + 186-a, ct_zudodo, 2.29, 2.29 );
setEffScaleKey( spep_2 + 188-a, ct_zudodo, 2.3, 2.3 );
setEffScaleKey( spep_2 + 190-a, ct_zudodo, 2.31, 2.31 );
setEffScaleKey( spep_2 + 192-a, ct_zudodo, 2.33, 2.33 );
setEffScaleKey( spep_2 + 194-a, ct_zudodo, 2.34, 2.34 );
setEffScaleKey( spep_2 + 196-a, ct_zudodo, 2.35, 2.35 );
setEffScaleKey( spep_2 + 198-a, ct_zudodo, 2.37, 2.37 );
setEffScaleKey( spep_2 + 200-a, ct_zudodo, 2.38, 2.38 );
setEffScaleKey( spep_2 + 202-a, ct_zudodo, 2.39, 2.39 );
setEffScaleKey( spep_2 + 204-a, ct_zudodo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 206-a, ct_zudodo, 2.42, 2.42 );
setEffScaleKey( spep_2 + 208-a, ct_zudodo, 2.43, 2.43 );
setEffScaleKey( spep_2 + 210-a, ct_zudodo, 2.44, 2.44 );
setEffScaleKey( spep_2 + 212-a, ct_zudodo, 2.46, 2.46 );
setEffScaleKey( spep_2 + 214-a, ct_zudodo, 2.47, 2.47 );
setEffScaleKey( spep_2 + 216-a, ct_zudodo, 2.48, 2.48 );
setEffScaleKey( spep_2 + 218-a, ct_zudodo, 2.5, 2.5 );
setEffScaleKey( spep_2 + 220-a, ct_zudodo, 2.51, 2.51 );
setEffScaleKey( spep_2 + 222-a, ct_zudodo, 2.52, 2.52 );
setEffScaleKey( spep_2 + 224-a, ct_zudodo, 2.53, 2.53 );
setEffScaleKey( spep_2 + 226-a, ct_zudodo, 2.55, 2.55 );
setEffScaleKey( spep_2 + 228-a, ct_zudodo, 2.56, 2.56 );
setEffScaleKey( spep_2 + 230-a, ct_zudodo, 2.57, 2.57 );
setEffScaleKey( spep_2 + 232-a, ct_zudodo, 2.59, 2.59 );
setEffScaleKey( spep_2 + 234-a, ct_zudodo, 2.77, 2.77 );
setEffScaleKey( spep_2 + 236-a, ct_zudodo, 2.96, 2.96 );
setEffScaleKey( spep_2 + 238-a, ct_zudodo, 3.15, 3.15 );
setEffScaleKey( spep_2 + 240-a, ct_zudodo, 3.34, 3.34 );
setEffScaleKey( spep_2 + 242-a, ct_zudodo, 3.53, 3.53 );
setEffScaleKey( spep_2 + 244-a, ct_zudodo, 3.72, 3.72 );

setEffRotateKey( spep_2 + 100-a, ct_zudodo, 58 );
setEffRotateKey( spep_2 + 244-a, ct_zudodo, 58 );


setEffAlphaKey( spep_2 + 100-a, ct_zudodo, 255 );
setEffAlphaKey( spep_2 + 232-a, ct_zudodo, 255 );
setEffAlphaKey( spep_2 + 234-a, ct_zudodo, 213 );
setEffAlphaKey( spep_2 + 236-a, ct_zudodo, 170 );
setEffAlphaKey( spep_2 + 238-a, ct_zudodo, 128 );
setEffAlphaKey( spep_2 + 240-a, ct_zudodo, 85 );
setEffAlphaKey( spep_2 + 242-a, ct_zudodo, 42 );
setEffAlphaKey( spep_2 + 244-a, ct_zudodo, 0 );


--敵の動き
setDisp(  spep_2+116,  1,  1);
setDisp(  spep_2+246,  1,  0);  --消す
changeAnime(  spep_2+116,  1,  102);
setShakeChara(  spep_2+116,  1,  30,  20);  --揺れ

setMoveKey( spep_2 + 116, 1, 396.2, -671.4 , 0 );
setMoveKey( spep_2 + 118, 1, 357.8, -601.8 , 0 );
setMoveKey( spep_2 + 120, 1, 319.5, -532.2 , 0 );
setMoveKey( spep_2 + 122, 1, 281.1, -462.6 , 0 );
setMoveKey( spep_2 + 124, 1, 242.8, -393.1 , 0 );
setMoveKey( spep_2 + 126, 1, 204.5, -323.5 , 0 );
setMoveKey( spep_2 + 128, 1, 166.2, -253.9 , 0 );
setMoveKey( spep_2 + 130, 1, 165, -252.5 , 0 );
setMoveKey( spep_2 + 132, 1, 163.8, -251.1 , 0 );
setMoveKey( spep_2 + 134, 1, 162.7, -249.7 , 0 );
setMoveKey( spep_2 + 136, 1, 161.5, -248.2 , 0 );
setMoveKey( spep_2 + 138, 1, 160.3, -246.8 , 0 );
setMoveKey( spep_2 + 140, 1, 159.2, -245.4 , 0 );
setMoveKey( spep_2 + 142, 1, 158, -244 , 0 );
setMoveKey( spep_2 + 144, 1, 156.9, -242.6 , 0 );
setMoveKey( spep_2 + 146, 1, 155.7, -241.2 , 0 );
setMoveKey( spep_2 + 148, 1, 154.5, -239.7 , 0 );
setMoveKey( spep_2 + 150, 1, 153.4, -238.3 , 0 );
setMoveKey( spep_2 + 152, 1, 152.2, -236.9 , 0 );
setMoveKey( spep_2 + 154, 1, 151.1, -235.5 , 0 );
setMoveKey( spep_2 + 156, 1, 149.9, -234.1 , 0 );
setMoveKey( spep_2 + 158, 1, 148.7, -232.7 , 0 );
setMoveKey( spep_2 + 160, 1, 147.6, -231.3 , 0 );
setMoveKey( spep_2 + 162, 1, 146.4, -229.8 , 0 );
setMoveKey( spep_2 + 164, 1, 145.2, -228.4 , 0 );
setMoveKey( spep_2 + 166, 1, 144.1, -227 , 0 );
setMoveKey( spep_2 + 168, 1, 142.9, -225.6 , 0 );
setMoveKey( spep_2 + 170, 1, 141.8, -224.2 , 0 );
setMoveKey( spep_2 + 172, 1, 140.6, -222.8 , 0 );
setMoveKey( spep_2 + 174, 1, 139.4, -221.4 , 0 );
setMoveKey( spep_2 + 176, 1, 138.3, -219.9 , 0 );
setMoveKey( spep_2 + 178, 1, 137.1, -218.5 , 0 );
setMoveKey( spep_2 + 180, 1, 135.9, -217.1 , 0 );
setMoveKey( spep_2 + 182, 1, 134.8, -215.7 , 0 );
setMoveKey( spep_2 + 184, 1, 133.6, -214.3 , 0 );
setMoveKey( spep_2 + 186, 1, 132.5, -212.9 , 0 );
setMoveKey( spep_2 + 188, 1, 131.3, -211.5 , 0 );
setMoveKey( spep_2 + 190, 1, 130.1, -210 , 0 );
setMoveKey( spep_2 + 192, 1, 129, -208.6 , 0 );
setMoveKey( spep_2 + 194, 1, 127.8, -207.2 , 0 );
setMoveKey( spep_2 + 196, 1, 126.6, -205.8 , 0 );
setMoveKey( spep_2 + 198, 1, 125.5, -204.4 , 0 );
setMoveKey( spep_2 + 200, 1, 124.3, -203 , 0 );
setMoveKey( spep_2 + 202, 1, 123.1, -201.6 , 0 );
setMoveKey( spep_2 + 204, 1, 122, -200.1 , 0 );
setMoveKey( spep_2 + 206, 1, 120.8, -198.7 , 0 );
setMoveKey( spep_2 + 208, 1, 119.7, -197.3 , 0 );
setMoveKey( spep_2 + 210, 1, 118.5, -195.9 , 0 );
setMoveKey( spep_2 + 212, 1, 117.3, -194.5 , 0 );
setMoveKey( spep_2 + 214, 1, 116.2, -193.1 , 0 );
setMoveKey( spep_2 + 216, 1, 115, -191.7 , 0 );
setMoveKey( spep_2 + 218, 1, 113.8, -190.2 , 0 );
setMoveKey( spep_2 + 220, 1, 112.7, -188.8 , 0 );
setMoveKey( spep_2 + 222, 1, 111.5, -187.4 , 0 );
setMoveKey( spep_2 + 224, 1, 110.3, -186 , 0 );
setMoveKey( spep_2 + 226, 1, 109.2, -184.6 , 0 );
setMoveKey( spep_2 + 228, 1, 108, -183.2 , 0 );
setMoveKey( spep_2 + 230, 1, 106.8, -181.8 , 0 );
setMoveKey( spep_2 + 232, 1, 105.7, -180.4 , 0 );
setMoveKey( spep_2 + 234, 1, 104.5, -178.9 , 0 );
setMoveKey( spep_2 + 236, 1, 103.4, -177.5 , 0 );
setMoveKey( spep_2 + 238, 1, 102.2, -176.1 , 0 );
setMoveKey( spep_2 + 240, 1, 101, -174.7 , 0 );
setMoveKey( spep_2 + 242, 1, 100.8, -174.9 , 0 );
setMoveKey( spep_2 + 244, 1, 100.5, -175.2 , 0 );
setMoveKey( spep_2 + 246, 1, 100.3, -175.4 , 0 );

setScaleKey( spep_2 + 116, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 118, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 120, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 122, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 124, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 126, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 128, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 130, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 132, 1, 1, 1 );
setScaleKey( spep_2 + 134, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 136, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 138, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 140, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 142, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 144, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 146, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 148, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 150, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 152, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 154, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 156, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 158, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 160, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 162, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 164, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 166, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 168, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 170, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 172, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 174, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 176, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 178, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 180, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 182, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 184, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 186, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 188, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 190, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 192, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 194, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 196, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 198, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 200, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 202, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 204, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 206, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 208, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 210, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 212, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 214, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 216, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 218, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 220, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 222, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 224, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 226, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 228, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 230, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 232, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 234, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 236, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 238, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 240, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 242, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 246, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 116, 1, 0 );
setRotateKey( spep_2 + 246, 1, 0 );


entryFade( spep_2+96, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 200 );     -- white fade

--***SE**
playSe(  spep_2+98,SE_07)
SE = playSe(  spep_2+100,  1044);
playSe(  spep_2+244,  1060);
playSe(  spep_2+342,  SE_10);
playSe(  spep_2+344,  1069);

stopSe(  spep_2+340,  SE,  0)

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 380 );
entryFade( spep_2 + 490, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_2 + 480 );

else



------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気弾溜め(290F)
------------------------------------------------------
spep_0 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 110, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 110, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.08, 1.98 );
setEffScaleKey( spep_0 + 110, shuchusen1, 1.08, 1.98 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 110, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 110, shuchusen1, 255 );


-- ** エフェクト等 ** --
kidame = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 290, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 290, kidame, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 290, kidame, 255 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 290, kidame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 128, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 128, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 142,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 142, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 142, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 212, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 142, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 186, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 190, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 194, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 210, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 212, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 142, ctgogo, 0 );
setEffRotateKey( spep_0 + 212, ctgogo, 0 );

setEffAlphaKey( spep_0 + 142, ctgogo, 255 );
setEffAlphaKey( spep_0 + 212, ctgogo, 255 );

--***SE***
playSe(  spep_0,  17);  --気溜め
playSe(  spep_0+142,  SE_04);  --カットイン
playSe(  spep_0+200,  1068);  --気弾大きくなる


entryFade( spep_0+280,  4, 8,  4,fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


--------------------------------------
--カードカットイン(90F)
--------------------------------------
spep_1 = spep_0+290;

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線

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

--------------------------------------
--投げる〜被弾(500F)
--------------------------------------
spep_2 = spep_1+90;

a=4
--***書き文字***
ct_zuo = entryEffectLife( spep_2 + 26-a,  10012, 56, 0x100, -1, 0, 78.7, 260.5 );  --ズオ

setEffShake(  spep_2+26-a,  ct_zuo,  56,  20);  --揺れ
setEffMoveKey( spep_2 + 26-a, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_2 + 28-a, ct_zuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_2 + 30-a, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 78-a, ct_zuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_2 + 80-a, ct_zuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_2 + 82-a, ct_zuo, 250.3, 332.4 , 0 );
setEffScaleKey( spep_2 + 26-a, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 28-a, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 30-a, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 72-a, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 74-a, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 76-a, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 78-a, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 80-a, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 82-a, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_2 + 26-a, ct_zuo, 27.2 );
setEffRotateKey( spep_2 + 82-a, ct_zuo, 27.2 );
setEffAlphaKey( spep_2 + 26-a, ct_zuo, 255 );
setEffAlphaKey( spep_2 + 72-a, ct_zuo, 255 );
setEffAlphaKey( spep_2 + 74-a, ct_zuo, 204 );
setEffAlphaKey( spep_2 + 76-a, ct_zuo, 153 );
setEffAlphaKey( spep_2 + 78-a, ct_zuo, 102 );
setEffAlphaKey( spep_2 + 80-a, ct_zuo, 51 );
setEffAlphaKey( spep_2 + 82-a, ct_zuo, 0 );

--***集中線***
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 106, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.11, 1.75 );
setEffScaleKey( spep_2 + 106, shuchusen2, 1.11, 1.75 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 106, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen2, 204 );
setEffAlphaKey( spep_2 + 100, shuchusen2, 153 );
setEffAlphaKey( spep_2 + 102, shuchusen2, 102 );
setEffAlphaKey( spep_2 + 104, shuchusen2, 51 );
setEffAlphaKey( spep_2 + 106, shuchusen2, 0 );

-- ** エフェクト等 ** --
nageruBG = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 );  --投げる
setEffMoveKey( spep_2 + 0, nageruBG, 0, 0 , 0 );
setEffMoveKey( spep_2 + 500, nageruBG, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageruBG, 1.0, 1.0 );
setEffScaleKey( spep_2 + 500, nageruBG, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, nageruBG, 255 );
setEffAlphaKey( spep_2 + 500, nageruBG, 255 );
setEffRotateKey( spep_2 + 0, nageruBG, 0 );
setEffRotateKey( spep_2 + 500, nageruBG, 0 );


nageru = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --投げる
setEffMoveKey( spep_2 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 290, nageru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 290, nageru, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, nageru, 255 );
setEffAlphaKey( spep_2 + 290, nageru, 255 );
setEffRotateKey( spep_2 + 0, nageru, 0 );
setEffRotateKey( spep_2 + 290, nageru, 0 );

--***SE***
playSe(  spep_2+24,  1033);  --投げる


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 28; --エンドフェイズのフレーム数を置き換える

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

ct_zudodo = entryEffectLife( spep_2 + 100-a,  10014, 144, 0x100, -1, 0, 159.2, 335 );  --ズドド
setEffShake(  spep_2+100-a,  ct_zudodo,  144,  20);  --揺れ
setEffMoveKey( spep_2 + 100-a, ct_zudodo, 159.2, 335 , 0 );
setEffMoveKey( spep_2 + 240-a, ct_zudodo, 172.1, 337.6 , 0 );
setEffMoveKey( spep_2 + 242-a, ct_zudodo, 192.2, 359 , 0 );
setEffMoveKey( spep_2 + 244-a, ct_zudodo, 192.7, 357.9 , 0 );

setEffScaleKey( spep_2 + 100-a, ct_zudodo, 1.16, 1.16 );
setEffScaleKey( spep_2 + 102-a, ct_zudodo, 1.84, 1.84 );
setEffScaleKey( spep_2 + 104-a, ct_zudodo, 2.52, 2.52 );
setEffScaleKey( spep_2 + 106-a, ct_zudodo, 3.2, 3.2 );
setEffScaleKey( spep_2 + 108-a, ct_zudodo, 3.88, 3.88 );
setEffScaleKey( spep_2 + 110-a, ct_zudodo, 2.84, 2.84 );
setEffScaleKey( spep_2 + 112-a, ct_zudodo, 1.81, 1.81 );
setEffScaleKey( spep_2 + 114-a, ct_zudodo, 1.82, 1.82 );
setEffScaleKey( spep_2 + 116-a, ct_zudodo, 1.84, 1.84 );
setEffScaleKey( spep_2 + 118-a, ct_zudodo, 1.85, 1.85 );
setEffScaleKey( spep_2 + 120-a, ct_zudodo, 1.86, 1.86 );
setEffScaleKey( spep_2 + 122-a, ct_zudodo, 1.87, 1.87 );
setEffScaleKey( spep_2 + 124-a, ct_zudodo, 1.89, 1.89 );
setEffScaleKey( spep_2 + 126-a, ct_zudodo, 1.9, 1.9 );
setEffScaleKey( spep_2 + 128-a, ct_zudodo, 1.91, 1.91 );
setEffScaleKey( spep_2 + 130-a, ct_zudodo, 1.93, 1.93 );
setEffScaleKey( spep_2 + 132-a, ct_zudodo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 134-a, ct_zudodo, 1.95, 1.95 );
setEffScaleKey( spep_2 + 136-a, ct_zudodo, 1.97, 1.97 );
setEffScaleKey( spep_2 + 138-a, ct_zudodo, 1.98, 1.98 );
setEffScaleKey( spep_2 + 140-a, ct_zudodo, 1.99, 1.99 );
setEffScaleKey( spep_2 + 142-a, ct_zudodo, 2, 2 );
setEffScaleKey( spep_2 + 144-a, ct_zudodo, 2.02, 2.02 );
setEffScaleKey( spep_2 + 146-a, ct_zudodo, 2.03, 2.03 );
setEffScaleKey( spep_2 + 148-a, ct_zudodo, 2.04, 2.04 );
setEffScaleKey( spep_2 + 150-a, ct_zudodo, 2.06, 2.06 );
setEffScaleKey( spep_2 + 152-a, ct_zudodo, 2.07, 2.07 );
setEffScaleKey( spep_2 + 154-a, ct_zudodo, 2.08, 2.08 );
setEffScaleKey( spep_2 + 156-a, ct_zudodo, 2.09, 2.09 );
setEffScaleKey( spep_2 + 158-a, ct_zudodo, 2.11, 2.11 );
setEffScaleKey( spep_2 + 160-a, ct_zudodo, 2.12, 2.12 );
setEffScaleKey( spep_2 + 162-a, ct_zudodo, 2.13, 2.13 );
setEffScaleKey( spep_2 + 164-a, ct_zudodo, 2.15, 2.15 );
setEffScaleKey( spep_2 + 166-a, ct_zudodo, 2.16, 2.16 );
setEffScaleKey( spep_2 + 168-a, ct_zudodo, 2.17, 2.17 );
setEffScaleKey( spep_2 + 170-a, ct_zudodo, 2.18, 2.18 );
setEffScaleKey( spep_2 + 172-a, ct_zudodo, 2.2, 2.2 );
setEffScaleKey( spep_2 + 174-a, ct_zudodo, 2.21, 2.21 );
setEffScaleKey( spep_2 + 176-a, ct_zudodo, 2.22, 2.22 );
setEffScaleKey( spep_2 + 178-a, ct_zudodo, 2.24, 2.24 );
setEffScaleKey( spep_2 + 180-a, ct_zudodo, 2.25, 2.25 );
setEffScaleKey( spep_2 + 182-a, ct_zudodo, 2.26, 2.26 );
setEffScaleKey( spep_2 + 184-a, ct_zudodo, 2.28, 2.28 );
setEffScaleKey( spep_2 + 186-a, ct_zudodo, 2.29, 2.29 );
setEffScaleKey( spep_2 + 188-a, ct_zudodo, 2.3, 2.3 );
setEffScaleKey( spep_2 + 190-a, ct_zudodo, 2.31, 2.31 );
setEffScaleKey( spep_2 + 192-a, ct_zudodo, 2.33, 2.33 );
setEffScaleKey( spep_2 + 194-a, ct_zudodo, 2.34, 2.34 );
setEffScaleKey( spep_2 + 196-a, ct_zudodo, 2.35, 2.35 );
setEffScaleKey( spep_2 + 198-a, ct_zudodo, 2.37, 2.37 );
setEffScaleKey( spep_2 + 200-a, ct_zudodo, 2.38, 2.38 );
setEffScaleKey( spep_2 + 202-a, ct_zudodo, 2.39, 2.39 );
setEffScaleKey( spep_2 + 204-a, ct_zudodo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 206-a, ct_zudodo, 2.42, 2.42 );
setEffScaleKey( spep_2 + 208-a, ct_zudodo, 2.43, 2.43 );
setEffScaleKey( spep_2 + 210-a, ct_zudodo, 2.44, 2.44 );
setEffScaleKey( spep_2 + 212-a, ct_zudodo, 2.46, 2.46 );
setEffScaleKey( spep_2 + 214-a, ct_zudodo, 2.47, 2.47 );
setEffScaleKey( spep_2 + 216-a, ct_zudodo, 2.48, 2.48 );
setEffScaleKey( spep_2 + 218-a, ct_zudodo, 2.5, 2.5 );
setEffScaleKey( spep_2 + 220-a, ct_zudodo, 2.51, 2.51 );
setEffScaleKey( spep_2 + 222-a, ct_zudodo, 2.52, 2.52 );
setEffScaleKey( spep_2 + 224-a, ct_zudodo, 2.53, 2.53 );
setEffScaleKey( spep_2 + 226-a, ct_zudodo, 2.55, 2.55 );
setEffScaleKey( spep_2 + 228-a, ct_zudodo, 2.56, 2.56 );
setEffScaleKey( spep_2 + 230-a, ct_zudodo, 2.57, 2.57 );
setEffScaleKey( spep_2 + 232-a, ct_zudodo, 2.59, 2.59 );
setEffScaleKey( spep_2 + 234-a, ct_zudodo, 2.77, 2.77 );
setEffScaleKey( spep_2 + 236-a, ct_zudodo, 2.96, 2.96 );
setEffScaleKey( spep_2 + 238-a, ct_zudodo, 3.15, 3.15 );
setEffScaleKey( spep_2 + 240-a, ct_zudodo, 3.34, 3.34 );
setEffScaleKey( spep_2 + 242-a, ct_zudodo, 3.53, 3.53 );
setEffScaleKey( spep_2 + 244-a, ct_zudodo, 3.72, 3.72 );

setEffRotateKey( spep_2 + 100-a, ct_zudodo, 0 );
setEffRotateKey( spep_2 + 244-a, ct_zudodo, 0 );


setEffAlphaKey( spep_2 + 100-a, ct_zudodo, 255 );
setEffAlphaKey( spep_2 + 232-a, ct_zudodo, 255 );
setEffAlphaKey( spep_2 + 234-a, ct_zudodo, 213 );
setEffAlphaKey( spep_2 + 236-a, ct_zudodo, 170 );
setEffAlphaKey( spep_2 + 238-a, ct_zudodo, 128 );
setEffAlphaKey( spep_2 + 240-a, ct_zudodo, 85 );
setEffAlphaKey( spep_2 + 242-a, ct_zudodo, 42 );
setEffAlphaKey( spep_2 + 244-a, ct_zudodo, 0 );


--敵の動き
setDisp(  spep_2+116,  1,  1);
setDisp(  spep_2+246,  1,  0);  --消す
changeAnime(  spep_2+116,  1,  102);
setShakeChara(  spep_2+116,  1,  30,  20);  --揺れ

setMoveKey( spep_2 + 116, 1, 396.2, -671.4 , 0 );
setMoveKey( spep_2 + 118, 1, 357.8, -601.8 , 0 );
setMoveKey( spep_2 + 120, 1, 319.5, -532.2 , 0 );
setMoveKey( spep_2 + 122, 1, 281.1, -462.6 , 0 );
setMoveKey( spep_2 + 124, 1, 242.8, -393.1 , 0 );
setMoveKey( spep_2 + 126, 1, 204.5, -323.5 , 0 );
setMoveKey( spep_2 + 128, 1, 166.2, -253.9 , 0 );
setMoveKey( spep_2 + 130, 1, 165, -252.5 , 0 );
setMoveKey( spep_2 + 132, 1, 163.8, -251.1 , 0 );
setMoveKey( spep_2 + 134, 1, 162.7, -249.7 , 0 );
setMoveKey( spep_2 + 136, 1, 161.5, -248.2 , 0 );
setMoveKey( spep_2 + 138, 1, 160.3, -246.8 , 0 );
setMoveKey( spep_2 + 140, 1, 159.2, -245.4 , 0 );
setMoveKey( spep_2 + 142, 1, 158, -244 , 0 );
setMoveKey( spep_2 + 144, 1, 156.9, -242.6 , 0 );
setMoveKey( spep_2 + 146, 1, 155.7, -241.2 , 0 );
setMoveKey( spep_2 + 148, 1, 154.5, -239.7 , 0 );
setMoveKey( spep_2 + 150, 1, 153.4, -238.3 , 0 );
setMoveKey( spep_2 + 152, 1, 152.2, -236.9 , 0 );
setMoveKey( spep_2 + 154, 1, 151.1, -235.5 , 0 );
setMoveKey( spep_2 + 156, 1, 149.9, -234.1 , 0 );
setMoveKey( spep_2 + 158, 1, 148.7, -232.7 , 0 );
setMoveKey( spep_2 + 160, 1, 147.6, -231.3 , 0 );
setMoveKey( spep_2 + 162, 1, 146.4, -229.8 , 0 );
setMoveKey( spep_2 + 164, 1, 145.2, -228.4 , 0 );
setMoveKey( spep_2 + 166, 1, 144.1, -227 , 0 );
setMoveKey( spep_2 + 168, 1, 142.9, -225.6 , 0 );
setMoveKey( spep_2 + 170, 1, 141.8, -224.2 , 0 );
setMoveKey( spep_2 + 172, 1, 140.6, -222.8 , 0 );
setMoveKey( spep_2 + 174, 1, 139.4, -221.4 , 0 );
setMoveKey( spep_2 + 176, 1, 138.3, -219.9 , 0 );
setMoveKey( spep_2 + 178, 1, 137.1, -218.5 , 0 );
setMoveKey( spep_2 + 180, 1, 135.9, -217.1 , 0 );
setMoveKey( spep_2 + 182, 1, 134.8, -215.7 , 0 );
setMoveKey( spep_2 + 184, 1, 133.6, -214.3 , 0 );
setMoveKey( spep_2 + 186, 1, 132.5, -212.9 , 0 );
setMoveKey( spep_2 + 188, 1, 131.3, -211.5 , 0 );
setMoveKey( spep_2 + 190, 1, 130.1, -210 , 0 );
setMoveKey( spep_2 + 192, 1, 129, -208.6 , 0 );
setMoveKey( spep_2 + 194, 1, 127.8, -207.2 , 0 );
setMoveKey( spep_2 + 196, 1, 126.6, -205.8 , 0 );
setMoveKey( spep_2 + 198, 1, 125.5, -204.4 , 0 );
setMoveKey( spep_2 + 200, 1, 124.3, -203 , 0 );
setMoveKey( spep_2 + 202, 1, 123.1, -201.6 , 0 );
setMoveKey( spep_2 + 204, 1, 122, -200.1 , 0 );
setMoveKey( spep_2 + 206, 1, 120.8, -198.7 , 0 );
setMoveKey( spep_2 + 208, 1, 119.7, -197.3 , 0 );
setMoveKey( spep_2 + 210, 1, 118.5, -195.9 , 0 );
setMoveKey( spep_2 + 212, 1, 117.3, -194.5 , 0 );
setMoveKey( spep_2 + 214, 1, 116.2, -193.1 , 0 );
setMoveKey( spep_2 + 216, 1, 115, -191.7 , 0 );
setMoveKey( spep_2 + 218, 1, 113.8, -190.2 , 0 );
setMoveKey( spep_2 + 220, 1, 112.7, -188.8 , 0 );
setMoveKey( spep_2 + 222, 1, 111.5, -187.4 , 0 );
setMoveKey( spep_2 + 224, 1, 110.3, -186 , 0 );
setMoveKey( spep_2 + 226, 1, 109.2, -184.6 , 0 );
setMoveKey( spep_2 + 228, 1, 108, -183.2 , 0 );
setMoveKey( spep_2 + 230, 1, 106.8, -181.8 , 0 );
setMoveKey( spep_2 + 232, 1, 105.7, -180.4 , 0 );
setMoveKey( spep_2 + 234, 1, 104.5, -178.9 , 0 );
setMoveKey( spep_2 + 236, 1, 103.4, -177.5 , 0 );
setMoveKey( spep_2 + 238, 1, 102.2, -176.1 , 0 );
setMoveKey( spep_2 + 240, 1, 101, -174.7 , 0 );
setMoveKey( spep_2 + 242, 1, 100.8, -174.9 , 0 );
setMoveKey( spep_2 + 244, 1, 100.5, -175.2 , 0 );
setMoveKey( spep_2 + 246, 1, 100.3, -175.4 , 0 );

setScaleKey( spep_2 + 116, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 118, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 120, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 122, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 124, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 126, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 128, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 130, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 132, 1, 1, 1 );
setScaleKey( spep_2 + 134, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 136, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 138, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 140, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 142, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 144, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 146, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 148, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 150, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 152, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 154, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 156, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 158, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 160, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 162, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 164, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 166, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 168, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 170, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 172, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 174, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 176, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 178, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 180, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 182, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 184, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 186, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 188, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 190, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 192, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 194, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 196, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 198, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 200, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 202, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 204, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 206, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 208, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 210, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 212, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 214, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 216, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 218, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 220, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 222, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 224, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 226, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 228, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 230, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 232, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 234, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 236, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 238, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 240, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 242, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 246, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 116, 1, 0 );
setRotateKey( spep_2 + 246, 1, 0 );


entryFade( spep_2+96, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 200 );     -- white fade

--***SE**
playSe(  spep_2+98,SE_07)
SE = playSe(  spep_2+100,  1044);
playSe(  spep_2+244,  1060);
playSe(  spep_2+342,  SE_10);
playSe(  spep_2+344,  1069);

stopSe(  spep_2+340,  SE,  0)

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 380 );
entryFade( spep_2 + 490, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_2 + 480 );

end



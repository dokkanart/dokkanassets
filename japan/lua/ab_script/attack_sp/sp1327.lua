--超サイヤ人孫悟飯_超魔烈撃

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
SP_01 = 153907 ; --手前突進
SP_02 = 153908 ; --連撃前
SP_03 = 153909 ; --連撃後
SP_04 = 153910 ; --発射
SP_05 = 153911 ; --爆発


SP_02x = 153912 ; --連撃前
SP_03x = 153913 ; --連撃後
SP_04x = 153914 ; --発射

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

tosshin_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--  殴る(150F)
------------------------------------------------------
spep_0 = 0;



-- ** エフェクト等 ** --
naguru = entryEffectLife( spep_0 + 0, SP_01, 150, 0x80, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, naguru, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, naguru, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, naguru, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, naguru, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, naguru, 0 );
setEffRotateKey( spep_0 + 150, naguru, 0 );
setEffAlphaKey( spep_0 + 0, naguru, 255 );
setEffAlphaKey( spep_0 + 150, naguru, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 26, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 26, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16 + 26,  190006, 64, 0x100, -1, 0, 0, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 64, 10 );

setEffMoveKey( spep_0 + 16 + 26, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_0 + 80 + 26, ctgogo, 0, 515.5 , 0 );

setEffScaleKey( spep_0 + 16 + 26, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 72 + 26, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 74 + 26, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76 + 26, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 78 + 26, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 80 + 26, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 16 + 26, ctgogo, 0 );
setEffRotateKey( spep_0 + 80 + 26, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16 + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80 + 26, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0,  9);
playSe( spep_0 + 16 + 26,  1018);  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

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

entryFade( spep_0 + 144, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
playSe( spep_0+100,  1072);

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;

------------------------------------------------------
--  格闘(410F)
------------------------------------------------------

-- ** 書き文字 ** --
ctzun = entryEffectLife( spep_1 + 0,  10016, 32, 0x100, -1, 0, 15.8, 363.9 );  --ズン

setEffShake( spep_1 + 0,  ctzun,  32,  20);  --揺れ
setEffMoveKey( spep_1 + 0, ctzun, 15.8, 363.9 , 0 );
setEffMoveKey( spep_1 + 32, ctzun, 15.7, 364.1 , 0 );
setEffScaleKey( spep_1 + 0, ctzun, 1.41, 1.41 );
setEffScaleKey( spep_1 + 2, ctzun, 3.44, 3.44 );
setEffScaleKey( spep_1 + 4, ctzun, 3.3, 3.3 );
setEffScaleKey( spep_1 + 6, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_1 + 8, ctzun, 3.03, 3.03 );
setEffScaleKey( spep_1 + 10, ctzun, 2.9, 2.9 );
setEffScaleKey( spep_1 + 12, ctzun, 2.84, 2.84 );
setEffScaleKey( spep_1 + 14, ctzun, 2.79, 2.79 );
setEffScaleKey( spep_1 + 16, ctzun, 2.74, 2.74 );
setEffScaleKey( spep_1 + 18, ctzun, 2.68, 2.68 );
setEffScaleKey( spep_1 + 20, ctzun, 2.63, 2.63 );
setEffScaleKey( spep_1 + 22, ctzun, 2.57, 2.57 );
setEffScaleKey( spep_1 + 24, ctzun, 2.52, 2.52 );
setEffScaleKey( spep_1 + 26, ctzun, 2.4, 2.4 );
setEffScaleKey( spep_1 + 28, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_1 + 30, ctzun, 2.16, 2.16 );
setEffScaleKey( spep_1 + 32, ctzun, 2.04, 2.04 );
setEffRotateKey( spep_1 + 0, ctzun, -9.2 );
setEffRotateKey( spep_1 + 12, ctzun, -9.2 );
setEffRotateKey( spep_1 + 14, ctzun, -9.3 );
setEffRotateKey( spep_1 + 20, ctzun, -9.3 );
setEffRotateKey( spep_1 + 22, ctzun, -9.4 );
setEffRotateKey( spep_1 + 24, ctzun, -9.4 );
setEffRotateKey( spep_1 + 26, ctzun, -9.3 );
setEffRotateKey( spep_1 + 30, ctzun, -9.3 );
setEffRotateKey( spep_1 + 32, ctzun, -9.2 );
setEffAlphaKey( spep_1 + 0, ctzun, 255 );
setEffAlphaKey( spep_1 + 10, ctzun, 255 );
setEffAlphaKey( spep_1 + 12, ctzun, 246 );
setEffAlphaKey( spep_1 + 14, ctzun, 237 );
setEffAlphaKey( spep_1 + 16, ctzun, 228 );
setEffAlphaKey( spep_1 + 18, ctzun, 219 );
setEffAlphaKey( spep_1 + 20, ctzun, 209 );
setEffAlphaKey( spep_1 + 22, ctzun, 200 );
setEffAlphaKey( spep_1 + 24, ctzun, 191 );
setEffAlphaKey( spep_1 + 26, ctzun, 147 );
setEffAlphaKey( spep_1 + 28, ctzun, 102 );
setEffAlphaKey( spep_1 + 30, ctzun, 58 );
setEffAlphaKey( spep_1 + 32, ctzun, 13 );

ctzun2 = entryEffectLife( spep_1 - 3 + 170,  10016, 16, 0x100, -1, 0, 7.8, 363.9 );  --ズン
setEffMoveKey( spep_1 - 3 + 170, ctzun2, 7.8, 363.9 , 0 );
setEffMoveKey( spep_1 - 3 + 172, ctzun2, 7.8, 363.9 , 0 );
setEffMoveKey( spep_1 - 3 + 174, ctzun2, 1.3, 368.2 , 0 );
setEffMoveKey( spep_1 - 3 + 176, ctzun2, 7.9, 363.9 , 0 );
setEffMoveKey( spep_1 - 3 + 178, ctzun2, 7.9, 363.9 , 0 );
setEffMoveKey( spep_1 - 3 + 180, ctzun2, 2.4, 367.4 , 0 );
setEffMoveKey( spep_1 - 3 + 182, ctzun2, 2.7, 367 , 0 );
setEffMoveKey( spep_1 - 3 + 184, ctzun2, 7.8, 363.8 , 0 );
setEffMoveKey( spep_1 - 3 + 186, ctzun2, 7.7, 364 , 0 );

setEffScaleKey( spep_1 - 3 + 170, ctzun2, 1.13, 1.13 );
setEffScaleKey( spep_1 - 3 + 172, ctzun2, 2.77, 2.77 );
setEffScaleKey( spep_1 - 3 + 174, ctzun2, 2.63, 2.63 );
setEffScaleKey( spep_1 - 3 + 176, ctzun2, 2.48, 2.48 );
setEffScaleKey( spep_1 - 3 + 178, ctzun2, 2.33, 2.33 );
setEffScaleKey( spep_1 - 3 + 180, ctzun2, 2.18, 2.18 );
setEffScaleKey( spep_1 - 3 + 182, ctzun2, 2.03, 2.03 );
setEffScaleKey( spep_1 - 3 + 184, ctzun2, 1.84, 1.84 );
setEffScaleKey( spep_1 - 3 + 186, ctzun2, 1.64, 1.64 );

setEffRotateKey( spep_1 - 3 + 170, ctzun2, -9.2 );
setEffRotateKey( spep_1 - 3 + 178, ctzun2, -9.2 );
setEffRotateKey( spep_1 - 3 + 180, ctzun2, -9.3 );
setEffRotateKey( spep_1 - 3 + 182, ctzun2, -9.4 );
setEffRotateKey( spep_1 - 3 + 184, ctzun2, -9.3 );
setEffRotateKey( spep_1 - 3 + 186, ctzun2, -9.2 );

setEffAlphaKey( spep_1 - 3 + 170, ctzun2, 255 );
setEffAlphaKey( spep_1 - 3 + 178, ctzun2, 255 );
setEffAlphaKey( spep_1 - 3 + 180, ctzun2, 223 );
setEffAlphaKey( spep_1 - 3 + 182, ctzun2, 191 );
setEffAlphaKey( spep_1 - 3 + 184, ctzun2, 102 );
setEffAlphaKey( spep_1 - 3 + 186, ctzun2, 13 );

ctga = entryEffectLife( spep_1 - 3 + 214,  10005, 14, 0x100, -1, 0, 80.1, 262.1 );  --ガッ
setEffMoveKey( spep_1 - 3 + 214, ctga, 80.1, 262.1 , 0 );
setEffMoveKey( spep_1 - 3 + 216, ctga, 80.4, 262.1 , 0 );
setEffMoveKey( spep_1 - 3 + 218, ctga, 80.2, 262.3 , 0 );
setEffMoveKey( spep_1 - 3 + 220, ctga, 80.2, 262.1 , 0 );
setEffMoveKey( spep_1 - 3 + 228, ctga, 80.2, 262.1 , 0 );
setEffScaleKey( spep_1 - 3 + 214, ctga, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 216, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 218, ctga, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 220, ctga, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 222, ctga, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 224, ctga, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 226, ctga, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 228, ctga, 1.6, 1.6 );
setEffRotateKey( spep_1 - 3 + 214, ctga, 16.3 );
setEffRotateKey( spep_1 - 3 + 216, ctga, 2.9 );
setEffRotateKey( spep_1 - 3 + 218, ctga, 16.3 );
setEffRotateKey( spep_1 - 3 + 220, ctga, 16.3 );
setEffRotateKey( spep_1 - 3 + 222, ctga, 16.2 );
setEffRotateKey( spep_1 - 3 + 224, ctga, 16.2 );
setEffRotateKey( spep_1 - 3 + 226, ctga, 16.3 );
setEffRotateKey( spep_1 - 3 + 228, ctga, 16.3 );
setEffAlphaKey( spep_1 - 3 + 214, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 222, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 224, ctga, 170 );
setEffAlphaKey( spep_1 - 3 + 226, ctga, 85 );
setEffAlphaKey( spep_1 - 3 + 228, ctga, 0 );

ctga2 = entryEffectLife( spep_1 - 3 + 222,  10005, 14, 0x100, -1, 0, -227.8, 89.9 );  --ガッ
setEffMoveKey( spep_1 - 3 + 222, ctga2, -227.8, 89.9 , 0 );
setEffMoveKey( spep_1 - 3 + 224, ctga2, -227.8, 90.2 , 0 );
setEffMoveKey( spep_1 - 3 + 226, ctga2, -227.9, 90.1 , 0 );
setEffMoveKey( spep_1 - 3 + 228, ctga2, -227.8, 90 , 0 );
setEffMoveKey( spep_1 - 3 + 230, ctga2, -227.9, 90.1 , 0 );
setEffMoveKey( spep_1 - 3 + 232, ctga2, -227.9, 90.1 , 0 );
setEffMoveKey( spep_1 - 3 + 234, ctga2, -227.8, 90.1 , 0 );
setEffMoveKey( spep_1 - 3 + 236, ctga2, -227.8, 90.1 , 0 );

setEffScaleKey( spep_1 - 3 + 222, ctga2, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 224, ctga2, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 226, ctga2, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 228, ctga2, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 230, ctga2, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 232, ctga2, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 234, ctga2, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 236, ctga2, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 222, ctga2, -20.1 );
setEffRotateKey( spep_1 - 3 + 224, ctga2, -33.5 );
setEffRotateKey( spep_1 - 3 + 226, ctga2, -20.1 );
setEffRotateKey( spep_1 - 3 + 228, ctga2, -20.1 );
setEffRotateKey( spep_1 - 3 + 230, ctga2, -20.3 );
setEffRotateKey( spep_1 - 3 + 232, ctga2, -20.2 );
setEffRotateKey( spep_1 - 3 + 234, ctga2, -20.2 );
setEffRotateKey( spep_1 - 3 + 236, ctga2, -20.1 );

setEffAlphaKey( spep_1 - 3 + 222, ctga2, 255 );
setEffAlphaKey( spep_1 - 3 + 230, ctga2, 255 );
setEffAlphaKey( spep_1 - 3 + 232, ctga2, 170 );
setEffAlphaKey( spep_1 - 3 + 234, ctga2, 85 );
setEffAlphaKey( spep_1 - 3 + 236, ctga2, 0 );

--[[
ctga3 = entryEffectLife( spep_1 - 3 + 310,  10005, 14, 0x100, -1, 0, -13.9, 278 );  --ガッ
setEffMoveKey( spep_1 - 3 + 310, ctga3, -13.9, 278 , 0 );
setEffMoveKey( spep_1 - 3 + 312, ctga3, -13.7, 278.1 , 0 );
setEffMoveKey( spep_1 - 3 + 314, ctga3, -13.9, 278.3 , 0 );
setEffMoveKey( spep_1 - 3 + 316, ctga3, -13.8, 278.1 , 0 );
setEffMoveKey( spep_1 - 3 + 324, ctga3, -13.8, 278.1 , 0 );

setEffScaleKey( spep_1 - 3 + 310, ctga3, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 312, ctga3, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 314, ctga3, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 316, ctga3, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 318, ctga3, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 320, ctga3, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 322, ctga3, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 324, ctga3, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 310, ctga3, 3.3 );
setEffRotateKey( spep_1 - 3 + 312, ctga3, -10 );
setEffRotateKey( spep_1 - 3 + 314, ctga3, 3.3 );
setEffRotateKey( spep_1 - 3 + 316, ctga3, 3.3 );
setEffRotateKey( spep_1 - 3 + 318, ctga3, 3.2 );
setEffRotateKey( spep_1 - 3 + 320, ctga3, 3.2 );
setEffRotateKey( spep_1 - 3 + 322, ctga3, 3.3 );
setEffRotateKey( spep_1 - 3 + 324, ctga3, 3.3 );

setEffAlphaKey( spep_1 - 3 + 310, ctga3, 255 );
setEffAlphaKey( spep_1 - 3 + 318, ctga3, 255 );
setEffAlphaKey( spep_1 - 3 + 320, ctga3, 170 );
setEffAlphaKey( spep_1 - 3 + 322, ctga3, 85 );
setEffAlphaKey( spep_1 - 3 + 324, ctga3, 0 );
]]

ctga4 = entryEffectLife( spep_1 - 3 + 250,  10005, 14, 0x100, -1, 0, -77.8, 274.1 ); --ガッ
setEffMoveKey( spep_1 - 3 + 250, ctga4, -77.8, 274.1 , 0 );
setEffMoveKey( spep_1 - 3 + 252, ctga4, -77.6, 274.1 , 0 );
setEffMoveKey( spep_1 - 3 + 254, ctga4, -77.9, 274.3 , 0 );
setEffMoveKey( spep_1 - 3 + 256, ctga4, -77.8, 274.1 , 0 );
setEffMoveKey( spep_1 - 3 + 260, ctga4, -77.8, 274.1 , 0 );
setEffMoveKey( spep_1 - 3 + 264, ctga4, -77.7, 274.1 , 0 );
setEffScaleKey( spep_1 - 3 + 250, ctga4, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 252, ctga4, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 254, ctga4, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 256, ctga4, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 258, ctga4, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 260, ctga4, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 262, ctga4, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 264, ctga4, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 250, ctga4, -5.8 );
setEffRotateKey( spep_1 - 3 + 252, ctga4, -19.2 );
setEffRotateKey( spep_1 - 3 + 254, ctga4, -5.9 );
setEffRotateKey( spep_1 - 3 + 256, ctga4, -5.9 );
setEffRotateKey( spep_1 - 3 + 258, ctga4, -6 );
setEffRotateKey( spep_1 - 3 + 260, ctga4, -6 );
setEffRotateKey( spep_1 - 3 + 264, ctga4, -5.9 );

setEffAlphaKey( spep_1 - 3 + 250, ctga4, 255 );
setEffAlphaKey( spep_1 - 3 + 258, ctga4, 255 );
setEffAlphaKey( spep_1 - 3 + 260, ctga4, 170 );
setEffAlphaKey( spep_1 - 3 + 262, ctga4, 85 );
setEffAlphaKey( spep_1 - 3 + 264, ctga4, 0 );

ctga5 = entryEffectLife( spep_1 - 3 + 260,  10005, 14, 0x100, -1, 0, 74, 248 ); --ガッ
setEffMoveKey( spep_1 - 3 + 260, ctga5, 74, 248 , 0 );
setEffMoveKey( spep_1 - 3 + 262, ctga5, 74.3, 248.1 , 0 );
setEffMoveKey( spep_1 - 3 + 264, ctga5, 74.2, 248.3 , 0 );
setEffMoveKey( spep_1 - 3 + 266, ctga5, 74.1, 248.1 , 0 );
setEffMoveKey( spep_1 - 3 + 268, ctga5, 74.1, 248.1 , 0 );
setEffMoveKey( spep_1 - 3 + 270, ctga5, 74.2, 248.2 , 0 );
setEffMoveKey( spep_1 - 3 + 272, ctga5, 74.2, 248.2 , 0 );
setEffMoveKey( spep_1 - 3 + 274, ctga5, 74.3, 248.1 , 0 );

setEffScaleKey( spep_1 - 3 + 260, ctga5, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 262, ctga5, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 264, ctga5, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 266, ctga5, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 268, ctga5, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 270, ctga5, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 272, ctga5, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 274, ctga5, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 260, ctga5, 19.8 );
setEffRotateKey( spep_1 - 3 + 262, ctga5, 6.4 );
setEffRotateKey( spep_1 - 3 + 264, ctga5, 19.8 );
setEffRotateKey( spep_1 - 3 + 266, ctga5, 19.8 );
setEffRotateKey( spep_1 - 3 + 268, ctga5, 19.6 );
setEffRotateKey( spep_1 - 3 + 270, ctga5, 19.7 );
setEffRotateKey( spep_1 - 3 + 272, ctga5, 19.7 );
setEffRotateKey( spep_1 - 3 + 274, ctga5, 19.8 );

setEffAlphaKey( spep_1 - 3 + 260, ctga5, 255 );
setEffAlphaKey( spep_1 - 3 + 268, ctga5, 255 );
setEffAlphaKey( spep_1 - 3 + 270, ctga5, 170 );
setEffAlphaKey( spep_1 - 3 + 272, ctga5, 85 );
setEffAlphaKey( spep_1 - 3 + 274, ctga5, 0 );


ctbaki = entryEffectLife( spep_1 - 3 + 300,  10020, 16, 0x100, -1, 0, -91, 299 );  --バキ
setEffMoveKey( spep_1 - 3 + 300, ctbaki, -91, 299 , 0 );
setEffMoveKey( spep_1 - 3 + 302, ctbaki, -111.7, 312.1 , 0 );
setEffMoveKey( spep_1 - 3 + 304, ctbaki, -91, 298.9 , 0 );
setEffMoveKey( spep_1 - 3 + 306, ctbaki, -90.9, 298.9 , 0 );
setEffMoveKey( spep_1 - 3 + 308, ctbaki, -104.2, 307.4 , 0 );
setEffMoveKey( spep_1 - 3 + 310, ctbaki, -90.8, 298.9 , 0 );
setEffMoveKey( spep_1 - 3 + 312, ctbaki, -90.8, 298.9 , 0 );
setEffMoveKey( spep_1 - 3 + 314, ctbaki, -103.3, 306.9 , 0 );
setEffMoveKey( spep_1 - 3 + 316, ctbaki, -90.9, 298.9 , 0 );
setEffScaleKey( spep_1 - 3 + 300, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 - 3 + 302, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 - 3 + 304, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1 - 3 + 306, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 - 3 + 308, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1 - 3 + 310, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1 - 3 + 312, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 - 3 + 314, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 - 3 + 316, ctbaki, 1.76, 1.76 );
setEffRotateKey( spep_1 - 3 + 300, ctbaki, -12.4 );
setEffRotateKey( spep_1 - 3 + 316, ctbaki, -12.4 );
setEffAlphaKey( spep_1 - 3 + 300, ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 312, ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 314, ctbaki, 134 );
setEffAlphaKey( spep_1 - 3 + 316, ctbaki, 13 );

ctzun3 = entryEffectLife( spep_1 - 3 + 326,  10016, 16, 0x100, -1, 0, 7.8, 243.9 );  --ズン
setEffMoveKey( spep_1 - 3 + 326, ctzun3, 7.8, 243.9 , 0 );
setEffMoveKey( spep_1 - 3 + 328, ctzun3, 7.8, 243.9 , 0 );
setEffMoveKey( spep_1 - 3 + 330, ctzun3, 1.3, 248.2 , 0 );
setEffMoveKey( spep_1 - 3 + 332, ctzun3, 7.9, 243.9 , 0 );
setEffMoveKey( spep_1 - 3 + 334, ctzun3, 7.9, 243.9 , 0 );
setEffMoveKey( spep_1 - 3 + 336, ctzun3, 2.4, 247.4 , 0 );
setEffMoveKey( spep_1 - 3 + 338, ctzun3, 2.7, 247 , 0 );
setEffMoveKey( spep_1 - 3 + 340, ctzun3, 7.8, 243.8 , 0 );
setEffMoveKey( spep_1 - 3 + 342, ctzun3, 7.7, 244 , 0 );
setEffScaleKey( spep_1 - 3 + 326, ctzun3, 1.13, 1.13 );
setEffScaleKey( spep_1 - 3 + 328, ctzun3, 2.77, 2.77 );
setEffScaleKey( spep_1 - 3 + 330, ctzun3, 2.63, 2.63 );
setEffScaleKey( spep_1 - 3 + 332, ctzun3, 2.48, 2.48 );
setEffScaleKey( spep_1 - 3 + 334, ctzun3, 2.33, 2.33 );
setEffScaleKey( spep_1 - 3 + 336, ctzun3, 2.18, 2.18 );
setEffScaleKey( spep_1 - 3 + 338, ctzun3, 2.03, 2.03 );
setEffScaleKey( spep_1 - 3 + 340, ctzun3, 1.84, 1.84 );
setEffScaleKey( spep_1 - 3 + 342, ctzun3, 1.64, 1.64 );
setEffRotateKey( spep_1 - 3 + 326, ctzun3, -9.2 );
setEffRotateKey( spep_1 - 3 + 334, ctzun3, -9.2 );
setEffRotateKey( spep_1 - 3 + 336, ctzun3, -9.3 );
setEffRotateKey( spep_1 - 3 + 338, ctzun3, -9.4 );
setEffRotateKey( spep_1 - 3 + 340, ctzun3, -9.3 );
setEffRotateKey( spep_1 - 3 + 342, ctzun3, -9.2 );
setEffAlphaKey( spep_1 - 3 + 326, ctzun3, 255 );
setEffAlphaKey( spep_1 - 3 + 334, ctzun3, 255 );
setEffAlphaKey( spep_1 - 3 + 336, ctzun3, 223 );
setEffAlphaKey( spep_1 - 3 + 338, ctzun3, 191 );
setEffAlphaKey( spep_1 - 3 + 340, ctzun3, 102 );
setEffAlphaKey( spep_1 - 3 + 342, ctzun3, 13 );

--[[
ctga6 = entryEffectLife( spep_1 - 3 + 350,  10005, 14, 0x100, -1, 0, -149.9, 188 );  --ガッ
setEffMoveKey( spep_1 - 3 + 350, ctga6, -149.9, 188 , 0 );
setEffMoveKey( spep_1 - 3 + 352, ctga6, -149.7, 188.2 , 0 );
setEffMoveKey( spep_1 - 3 + 354, ctga6, -149.9, 188.3 , 0 );
setEffMoveKey( spep_1 - 3 + 356, ctga6, -149.8, 188 , 0 );
setEffMoveKey( spep_1 - 3 + 364, ctga6, -149.8, 188.1 , 0 );

setEffScaleKey( spep_1 - 3 + 350, ctga6, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 352, ctga6, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 354, ctga6, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 356, ctga6, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 358, ctga6, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 360, ctga6, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 362, ctga6, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 364, ctga6, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 350, ctga6, -10.1 );
setEffRotateKey( spep_1 - 3 + 352, ctga6, -23.5 );
setEffRotateKey( spep_1 - 3 + 354, ctga6, -10.1 );
setEffRotateKey( spep_1 - 3 + 356, ctga6, -10.1 );
setEffRotateKey( spep_1 - 3 + 358, ctga6, -10.3 );
setEffRotateKey( spep_1 - 3 + 360, ctga6, -10.2 );
setEffRotateKey( spep_1 - 3 + 362, ctga6, -10.2 );
setEffRotateKey( spep_1 - 3 + 364, ctga6, -10.1 );

setEffAlphaKey( spep_1 - 3 + 350, ctga6, 255 );
setEffAlphaKey( spep_1 - 3 + 358, ctga6, 255 );
setEffAlphaKey( spep_1 - 3 + 360, ctga6, 170 );
setEffAlphaKey( spep_1 - 3 + 362, ctga6, 85 );
setEffAlphaKey( spep_1 - 3 + 364, ctga6, 0 );
]]

ctbago = entryEffectLife( spep_1 - 3 + 362,  10021, 32, 0x100, -1, 0, 67.2, 381.8 );  --バゴォ
setEffMoveKey( spep_1 - 3 + 362, ctbago, 67.2, 381.8 , 0 );
setEffMoveKey( spep_1 - 3 + 364, ctbago, 66.6, 381.1 , 0 );
setEffMoveKey( spep_1 - 3 + 366, ctbago, 67.2, 381.6 , 0 );
setEffMoveKey( spep_1 - 3 + 368, ctbago, 55.8, 406.4 , 0 );
setEffMoveKey( spep_1 - 3 + 370, ctbago, 67.2, 381.7 , 0 );
setEffMoveKey( spep_1 - 3 + 372, ctbago, 56.1, 405.8 , 0 );
setEffMoveKey( spep_1 - 3 + 374, ctbago, 67.3, 381.7 , 0 );
setEffMoveKey( spep_1 - 3 + 376, ctbago, 56.4, 405.2 , 0 );
setEffMoveKey( spep_1 - 3 + 378, ctbago, 67.3, 381.8 , 0 );
setEffMoveKey( spep_1 - 3 + 380, ctbago, 56.8, 404.7 , 0 );
setEffMoveKey( spep_1 - 3 + 382, ctbago, 67.3, 381.8 , 0 );
setEffMoveKey( spep_1 - 3 + 384, ctbago, 67.4, 381.8 , 0 );
setEffMoveKey( spep_1 - 3 + 386, ctbago, 57.6, 403.1 , 0 );
setEffMoveKey( spep_1 - 3 + 388, ctbago, 67.4, 381.9 , 0 );
setEffMoveKey( spep_1 - 3 + 390, ctbago, 58.6, 401.2 , 0 );
setEffMoveKey( spep_1 - 3 + 392, ctbago, 67.5, 382 , 0 );
setEffMoveKey( spep_1 - 3 + 394, ctbago, 67.5, 382.1 , 0 );

setEffScaleKey( spep_1 - 3 + 362, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_1 - 3 + 364, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_1 - 3 + 366, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_1 - 3 + 368, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_1 - 3 + 370, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_1 - 3 + 372, ctbago, 3.09, 3.09 );
setEffScaleKey( spep_1 - 3 + 374, ctbago, 3.05, 3.05 );
setEffScaleKey( spep_1 - 3 + 376, ctbago, 3.01, 3.01 );
setEffScaleKey( spep_1 - 3 + 378, ctbago, 2.97, 2.97 );
setEffScaleKey( spep_1 - 3 + 380, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_1 - 3 + 382, ctbago, 2.89, 2.89 );
setEffScaleKey( spep_1 - 3 + 384, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_1 - 3 + 386, ctbago, 2.72, 2.72 );
setEffScaleKey( spep_1 - 3 + 388, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_1 - 3 + 390, ctbago, 2.46, 2.46 );
setEffScaleKey( spep_1 - 3 + 392, ctbago, 2.33, 2.33 );
setEffScaleKey( spep_1 - 3 + 394, ctbago, 2.2, 2.2 );

setEffRotateKey( spep_1 - 3 + 362, ctbago, 10.8 );
setEffRotateKey( spep_1 - 3 + 394, ctbago, 10.8 );

setEffAlphaKey( spep_1 - 3 + 362, ctbago, 255 );
setEffAlphaKey( spep_1 - 3 + 384, ctbago, 255 );
setEffAlphaKey( spep_1 - 3 + 386, ctbago, 204 );
setEffAlphaKey( spep_1 - 3 + 388, ctbago, 153 );
setEffAlphaKey( spep_1 - 3 + 390, ctbago, 102 );
setEffAlphaKey( spep_1 - 3 + 392, ctbago, 51 );
setEffAlphaKey( spep_1 - 3 + 394, ctbago, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 89, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 - 3 + 92, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen1, 1.17, 1.27 );
setEffScaleKey( spep_1 - 3 + 92, shuchusen1, 1.17, 1.27 );
setEffRotateKey( spep_1 - 3 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 - 3 + 92, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 34, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 36, shuchusen1, 204 );
setEffAlphaKey( spep_1 - 3 + 38, shuchusen1, 153 );
setEffAlphaKey( spep_1 - 3 + 40, shuchusen1, 102 );
setEffAlphaKey( spep_1 - 3 + 42, shuchusen1, 51 );
setEffAlphaKey( spep_1 - 3 + 44, shuchusen1, 0 );
setEffAlphaKey( spep_1 - 3 + 65, shuchusen1, 0 );
setEffAlphaKey( spep_1 - 3 + 66, shuchusen1, 64 );
setEffAlphaKey( spep_1 - 3 + 68, shuchusen1, 112 );
setEffAlphaKey( spep_1 - 3 + 70, shuchusen1, 159 );
setEffAlphaKey( spep_1 - 3 + 72, shuchusen1, 207 );
setEffAlphaKey( spep_1 - 3 + 74, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 86, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 88, shuchusen1, 170 );
setEffAlphaKey( spep_1 - 3 + 90, shuchusen1, 85 );
setEffAlphaKey( spep_1 - 3 + 92, shuchusen1, 0 );


-- ** エフェクト等 ** --
kakuto_f = entryEffectLife( spep_1 + 0, SP_02, 410, 0x100, -1, 0, 0, 0 );  --格闘前(ef_002)
setEffMoveKey( spep_1 + 0, kakuto_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 410, kakuto_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakuto_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 410, kakuto_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakuto_f, 0 );
setEffRotateKey( spep_1 + 410, nkakuto_f, 0 );
setEffAlphaKey( spep_1 + 0, kakuto_f, 255 );
setEffAlphaKey( spep_1 + 410, kakuto_f, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 395 - 3, 1, 0 );
changeAnime( spep_1 + 0, 1, 108 );
changeAnime( spep_1 - 3 + 50, 1, 105 );
changeAnime( spep_1 - 3 + 130, 1, 106);
changeAnime( spep_1 - 3 + 170, 1, 108 );
changeAnime( spep_1 - 3 + 214, 1, 106 );
changeAnime( spep_1 - 3 + 250, 1, 108 );
changeAnime( spep_1 - 3 + 300, 1, 106 );
changeAnime( spep_1 - 3 + 326, 1, 108 );
changeAnime( spep_1 - 3 + 362, 1, 107 );

setMoveKey( spep_1 + 0, 1, 244.2, -81.3 , 0 );
setMoveKey( spep_1 - 3 + 2, 1, 228.9, -96.8 , 0 );
setMoveKey( spep_1 - 3 + 4, 1, 219.7, -26.2 , 0 );
setMoveKey( spep_1 - 3 + 6, 1, 178.1, -13.4 , 0 );
setMoveKey( spep_1 - 3 + 8, 1, 157.8, 3.2 , 0 );
setMoveKey( spep_1 - 3 + 10, 1, 110.3, -1.7 , 0 );
setMoveKey( spep_1 - 3 + 12, 1, 114.9, 10.6 , 0 );
setMoveKey( spep_1 - 3 + 14, 1, 112, 10.4 , 0 );
setMoveKey( spep_1 - 3 + 16, 1, 118.8, 14.9 , 0 );
setMoveKey( spep_1 - 3 + 18, 1, 118.2, 14.7 , 0 );
setMoveKey( spep_1 - 3 + 20, 1, 122.4, 19.1 , 0 );
setMoveKey( spep_1 - 3 + 22, 1, 117.1, 18.9 , 0 );
setMoveKey( spep_1 - 3 + 24, 1, 125.7, 23.2 , 0 );
setMoveKey( spep_1 - 3 + 26, 1, 125.1, 20.4 , 0 );
setMoveKey( spep_1 - 3 + 28, 1, 128.8, 26.9 , 0 );
setMoveKey( spep_1 - 3 + 30, 1, 128, 26.5 , 0 );
setMoveKey( spep_1 - 3 + 32, 1, 131.6, 30.5 , 0 );
setMoveKey( spep_1 - 3 + 34, 1, 130.7, 32.2 , 0 );
setMoveKey( spep_1 - 3 + 36, 1, 134.1, 33.9 , 0 );
setMoveKey( spep_1 - 3 + 38, 1, 135.3, 33.4 , 0 );
setMoveKey( spep_1 - 3 + 40, 1, 136.4, 37.1 , 0 );
setMoveKey( spep_1 - 3 + 42, 1, 135.4, 36.6 , 0 );
setMoveKey( spep_1 - 3 + 44, 1, 138.4, 40.1 , 0 );
setMoveKey( spep_1 - 3 + 46, 1, 139.3, 41.5 , 0 );
setMoveKey( spep_1 - 3 + 49, 1, 140.1, 42.9 , 0 );
setMoveKey( spep_1 - 3 + 50, 1, 152.5, 49.4 , 0 );
setMoveKey( spep_1 - 3 + 52, 1, 174.6, 66.3 , 0 );
setMoveKey( spep_1 - 3 + 54, 1, 192.8, 80.2 , 0 );
setMoveKey( spep_1 - 3 + 56, 1, 207, 91 , 0 );
setMoveKey( spep_1 - 3 + 58, 1, 217.1, 98.7 , 0 );
setMoveKey( spep_1 - 3 + 60, 1, 223.2, 103.4 , 0 );
setMoveKey( spep_1 - 3 + 62, 1, 225.2, 104.9 , 0 );
setMoveKey( spep_1 - 3 + 64, 1, 226.2, 105.3 , 0 );
setMoveKey( spep_1 - 3 + 66, 1, 225.7, 107.8 , 0 );
setMoveKey( spep_1 - 3 + 68, 1, 225.3, 110.3 , 0 );
setMoveKey( spep_1 - 3 + 70, 1, 224.9, 112.8 , 0 );
setMoveKey( spep_1 - 3 + 72, 1, 224.7, 115.3 , 0 );
setMoveKey( spep_1 - 3 + 74, 1, 224.6, 117.9 , 0 );
setMoveKey( spep_1 - 3 + 76, 1, 227, 121.6 , 0 );
setMoveKey( spep_1 - 3 + 78, 1, 229.4, 125.1 , 0 );
setMoveKey( spep_1 - 3 + 80, 1, 231.8, 128.8 , 0 );
setMoveKey( spep_1 - 3 + 82, 1, 231.4, 127.7 , 0 );
setMoveKey( spep_1 - 3 + 84, 1, 230.9, 126.5 , 0 );
setMoveKey( spep_1 - 3 + 86, 1, 230.4, 125.2 , 0 );
setMoveKey( spep_1 - 3 + 88, 1, 229.8, 124 , 0 );
setMoveKey( spep_1 - 3 + 90, 1, 229.2, 122.8 , 0 );
setMoveKey( spep_1 - 3 + 92, 1, 228.5, 121.6 , 0 );
setMoveKey( spep_1 - 3 + 94, 1, 230.3, 121.4 , 0 );
setMoveKey( spep_1 - 3 + 96, 1, 232, 121.2 , 0 );
setMoveKey( spep_1 - 3 + 98, 1, 233.6, 121.1 , 0 );
setMoveKey( spep_1 - 3 + 100, 1, 235.3, 120.9 , 0 );
setMoveKey( spep_1 - 3 + 102, 1, 236.9, 120.7 , 0 );
setMoveKey( spep_1 - 3 + 104, 1, 238.5, 120.5 , 0 );
setMoveKey( spep_1 - 3 + 106, 1, 240.1, 120.3 , 0 );
setMoveKey( spep_1 - 3 + 108, 1, 241.7, 120.1 , 0 );
setMoveKey( spep_1 - 3 + 110, 1, 243.2, 119.9 , 0 );
setMoveKey( spep_1 - 3 + 112, 1, 244.7, 119.7 , 0 );
setMoveKey( spep_1 - 3 + 114, 1, 246.2, 119.4 , 0 );
setMoveKey( spep_1 - 3 + 116, 1, 247.7, 119.2 , 0 );
setMoveKey( spep_1 - 3 + 118, 1, 249.2, 118.9 , 0 );
setMoveKey( spep_1 - 3 + 120, 1, 250.6, 118.7 , 0 );
setMoveKey( spep_1 - 3 + 122, 1, 252, 118.4 , 0 );
setMoveKey( spep_1 - 3 + 124, 1, 253.4, 118.1 , 0 );
setMoveKey( spep_1 - 3 + 126, 1, 254.8, 117.8 , 0 );
setMoveKey( spep_1 - 3 + 129, 1, 256.2, 117.6 , 0 );
setMoveKey( spep_1 - 3 + 130, 1, -717.2, -573.2 , 0 );
setMoveKey( spep_1 - 3 + 132, 1, -545.7, -424.6 , 0 );
setMoveKey( spep_1 - 3 + 134, 1, -374.2, -276.1 , 0 );
setMoveKey( spep_1 - 3 + 136, 1, -202.7, -127.6 , 0 );
setMoveKey( spep_1 - 3 + 138, 1, -31.2, 21 , 0 );
setMoveKey( spep_1 - 3 + 140, 1, -25.9, 26.5 , 0 );
setMoveKey( spep_1 - 3 + 142, 1, -20.6, 32 , 0 );
setMoveKey( spep_1 - 3 + 144, 1, -15.3, 37.6 , 0 );
setMoveKey( spep_1 - 3 + 146, 1, -10.1, 43.1 , 0 );
setMoveKey( spep_1 - 3 + 148, 1, -4.8, 48.7 , 0 );
setMoveKey( spep_1 - 3 + 150, 1, 0.5, 54.2 , 0 );
setMoveKey( spep_1 - 3 + 152, 1, 5.8, 59.7 , 0 );
setMoveKey( spep_1 - 3 + 154, 1, 11, 65.3 , 0 );
setMoveKey( spep_1 - 3 + 156, 1, 16.3, 70.8 , 0 );
setMoveKey( spep_1 - 3 + 158, 1, 21.6, 76.4 , 0 );
setMoveKey( spep_1 - 3 + 160, 1, 26.9, 81.9 , 0 );
setMoveKey( spep_1 - 3 + 162, 1, 32.1, 87.4 , 0 );
setMoveKey( spep_1 - 3 + 164, 1, 37.4, 93 , 0 );
setMoveKey( spep_1 - 3 + 166, 1, 42.7, 98.5 , 0 );
setMoveKey( spep_1 - 3 + 169, 1, 48, 104.1 , 0 );
setMoveKey( spep_1 - 3 + 170, 1, 92.3, 19.3 , 0 );
setMoveKey( spep_1 - 3 + 172, 1, 84.1, 35.1 , 0 );
setMoveKey( spep_1 - 3 + 174, 1, 45.8, 6.8 , 0 );
setMoveKey( spep_1 - 3 + 176, 1, 47.6, -8 , 0 );
setMoveKey( spep_1 - 3 + 178, 1, 47.9, -19 , 0 );
setMoveKey( spep_1 - 3 + 180, 1, 52.5, -14.2 , 0 );
setMoveKey( spep_1 - 3 + 182, 1, 44.2, -18 , 0 );
setMoveKey( spep_1 - 3 + 184, 1, 53.1, -13.2 , 0 );
setMoveKey( spep_1 - 3 + 186, 1, 49.1, -16.9 , 0 );
setMoveKey( spep_1 - 3 + 188, 1, 53.5, -12.1 , 0 );
setMoveKey( spep_1 - 3 + 190, 1, 45.6, -15.7 , 0 );
setMoveKey( spep_1 - 3 + 192, 1, 54, -11 , 0 );
setMoveKey( spep_1 - 3 + 194, 1, 50.2, -14.5 , 0 );
setMoveKey( spep_1 - 3 + 196, 1, 54.4, -9.9 , 0 );
setMoveKey( spep_1 - 3 + 198, 1, 50.1, -5.7 , 0 );
setMoveKey( spep_1 - 3 + 200, 1, 45.8, -1.4 , 0 );
setMoveKey( spep_1 - 3 + 202, 1, 41.5, 2.8 , 0 );
setMoveKey( spep_1 - 3 + 204, 1, 37.1, 7 , 0 );
setMoveKey( spep_1 - 3 + 206, 1, 37.5, 6.6 , 0 );
setMoveKey( spep_1 - 3 + 208, 1, 37.8, 6.2 , 0 );
setMoveKey( spep_1 - 3 + 210, 1, 38.1, 5.8 , 0 );
setMoveKey( spep_1 - 3 + 213, 1, 38.4, 5.4 , 0 );
setMoveKey( spep_1 - 3 + 214, 1, -39.8, 64 , 0 );
setMoveKey( spep_1 - 3 + 216, 1, -40, 91.6 , 0 );
setMoveKey( spep_1 - 3 + 218, 1, -60, 91.2 , 0 );
setMoveKey( spep_1 - 3 + 220, 1, -48.2, 98.8 , 0 );
setMoveKey( spep_1 - 3 + 222, 1, -53.3, 95.9 , 0 );
setMoveKey( spep_1 - 3 + 224, 1, -50.5, 101 , 0 );
setMoveKey( spep_1 - 3 + 226, 1, -59.6, 98.1 , 0 );
setMoveKey( spep_1 - 3 + 228, 1, -52.8, 103.2 , 0 );
setMoveKey( spep_1 - 3 + 230, 1, -57.9, 100.3 , 0 );
setMoveKey( spep_1 - 3 + 232, 1, -55.1, 105.4 , 0 );
setMoveKey( spep_1 - 3 + 234, 1, -60.2, 102.6 , 0 );
setMoveKey( spep_1 - 3 + 236, 1, -57.4, 107.7 , 0 );
setMoveKey( spep_1 - 3 + 238, 1, -57.1, 105.9 , 0 );
setMoveKey( spep_1 - 3 + 240, 1, -48.9, 112.1 , 0 );
setMoveKey( spep_1 - 3 + 242, 1, -44.7, 114.4 , 0 );
setMoveKey( spep_1 - 3 + 244, 1, -40.4, 116.6 , 0 );
setMoveKey( spep_1 - 3 + 246, 1, -41.1, 117.5 , 0 );
setMoveKey( spep_1 - 3 + 249, 1, -41.7, 118.4 , 0 );
setMoveKey( spep_1 - 3 + 250, 1, 40.8, 54.3 , 0 );
setMoveKey( spep_1 - 3 + 252, 1, 52.9, 72.9 , 0 );
setMoveKey( spep_1 - 3 + 254, 1, 53, 71.5 , 0 );
setMoveKey( spep_1 - 3 + 256, 1, 69.1, 78.1 , 0 );
setMoveKey( spep_1 - 3 + 258, 1, 73.1, 72.6 , 0 );
setMoveKey( spep_1 - 3 + 260, 1, 78.6, 81.2 , 0 );
setMoveKey( spep_1 - 3 + 262, 1, 76.1, 77.7 , 0 );
setMoveKey( spep_1 - 3 + 264, 1, 81.5, 82.3 , 0 );
setMoveKey( spep_1 - 3 + 266, 1, 75, 78.9 , 0 );
setMoveKey( spep_1 - 3 + 268, 1, 84.4, 83.4 , 0 );
setMoveKey( spep_1 - 3 + 270, 1, 81.9, 76 , 0 );
setMoveKey( spep_1 - 3 + 272, 1, 87.3, 84.6 , 0 );
setMoveKey( spep_1 - 3 + 274, 1, 54.6, 63 , 0 );
setMoveKey( spep_1 - 3 + 276, 1, 37.9, 49.4 , 0 );
setMoveKey( spep_1 - 3 + 278, 1, 9.3, 31.8 , 0 );
setMoveKey( spep_1 - 3 + 280, 1, -11.4, 14.2 , 0 );
setMoveKey( spep_1 - 3 + 282, 1, -9.4, 16 , 0 );
setMoveKey( spep_1 - 3 + 284, 1, -7.5, 17.7 , 0 );
setMoveKey( spep_1 - 3 + 286, 1, -5.5, 19.5 , 0 );
setMoveKey( spep_1 - 3 + 288, 1, -3.5, 21.2 , 0 );
setMoveKey( spep_1 - 3 + 290, 1, -1.5, 23 , 0 );
setMoveKey( spep_1 - 3 + 292, 1, 0.4, 24.7 , 0 );
setMoveKey( spep_1 - 3 + 294, 1, -2.2, 18.5 , 0 );
setMoveKey( spep_1 - 3 + 296, 1, -4.9, 12.2 , 0 );
setMoveKey( spep_1 - 3 + 299, 1, -7.6, 5.9 , 0 );
setMoveKey( spep_1 - 3 + 300, 1, -98, -13.2 , 0 );
setMoveKey( spep_1 - 3 + 302, 1, -111.5, -34.3 , 0 );
setMoveKey( spep_1 - 3 + 304, 1, -111.8, -19.4 , 0 );
setMoveKey( spep_1 - 3 + 306, 1, -88, 3.5 , 0 );
setMoveKey( spep_1 - 3 + 308, 1, -67.1, 43.2 , 0 );
setMoveKey( spep_1 - 3 + 310, 1, -61.2, 54.4 , 0 );
setMoveKey( spep_1 - 3 + 312, 1, -71.4, 49.7 , 0 );
setMoveKey( spep_1 - 3 + 314, 1, -57.5, 52.9 , 0 );
setMoveKey( spep_1 - 3 + 316, 1, -55.7, 52.2 , 0 );
setMoveKey( spep_1 - 3 + 318, 1, -53.8, 51.4 , 0 );
setMoveKey( spep_1 - 3 + 320, 1, -52, 50.6 , 0 );
setMoveKey( spep_1 - 3 + 322, 1, -50.1, 49.9 , 0 );
setMoveKey( spep_1 - 3 + 325, 1, -48.3, 49.1 , 0 );
setMoveKey( spep_1 - 3 + 326, 1, -9.5, 68.7 , 0 );
setMoveKey( spep_1 - 3 + 328, 1, -1.9, 63.3 , 0 );
setMoveKey( spep_1 - 3 + 330, 1, -15.3, 39.9 , 0 );
setMoveKey( spep_1 - 3 + 332, 1, 5.9, 27.4 , 0 );
setMoveKey( spep_1 - 3 + 334, 1, 3.2, -31.2 , 0 );
setMoveKey( spep_1 - 3 + 336, 1, 8.1, -14.3 , 0 );
setMoveKey( spep_1 - 3 + 338, 1, 3.8, -20.5 , 0 );
setMoveKey( spep_1 - 3 + 340, 1, 8.7, -8.3 , 0 );
setMoveKey( spep_1 - 3 + 342, 1, -0.3, -9.9 , 0 );
setMoveKey( spep_1 - 3 + 344, 1, 9.3, -2.3 , 0 );
setMoveKey( spep_1 - 3 + 346, 1, 9.5, 0.7 , 0 );
setMoveKey( spep_1 - 3 + 348, 1, 9.8, 3.7 , 0 );
setMoveKey( spep_1 - 3 + 350, 1, 10.1, 6.7 , 0 );
setMoveKey( spep_1 - 3 + 352, 1, 10.4, 9.7 , 0 );
setMoveKey( spep_1 - 3 + 354, 1, 10.7, 12.7 , 0 );
setMoveKey( spep_1 - 3 + 356, 1, 10.9, 15.7 , 0 );
setMoveKey( spep_1 - 3 + 358, 1, 11.2, 18.7 , 0 );
setMoveKey( spep_1 - 3 + 361, 1, 11.5, 21.7 , 0 );
setMoveKey( spep_1 - 3 + 362, 1, -24.9, -89.8 , 0 );
setMoveKey( spep_1 - 3 + 364, 1, -9.4, -68.1 , 0 );
setMoveKey( spep_1 - 3 + 366, 1, -16.5, -79.5 , 0 );
setMoveKey( spep_1 - 3 + 368, 1, 5.7, -78.7 , 0 );
setMoveKey( spep_1 - 3 + 370, 1, 3.8, -106.2 , 0 );
setMoveKey( spep_1 - 3 + 372, 1, 11.1, -87.3 , 0 );
setMoveKey( spep_1 - 3 + 374, 1, 4.6, -96.2 , 0 );
setMoveKey( spep_1 - 3 + 376, 1, 16.4, -95.9 , 0 );
setMoveKey( spep_1 - 3 + 378, 1, 14.5, -109.3 , 0 );
setMoveKey( spep_1 - 3 + 380, 1, 21.6, -104.3 , 0 );
setMoveKey( spep_1 - 3 + 382, 1, 19.7, -112.9 , 0 );
setMoveKey( spep_1 - 3 + 384, 1, 26.8, -112.7 , 0 );
setMoveKey( spep_1 - 3 + 386, 1, 24.8, -116.8 , 0 );
setMoveKey( spep_1 - 3 + 388, 1, 178.7, -416 , 0 );
setMoveKey( spep_1 - 3 + 390, 1, 327.2, -717.7 , 0 );
setMoveKey( spep_1 - 3 + 392, 1, 474.6, -1008.3 , 0 );
setMoveKey( spep_1 - 3 + 395, 1, 621, -1301.4 , 0 );

setScaleKey( spep_1 + 0, 1, 7.41, 7.41 );
setScaleKey( spep_1 - 3 + 2, 1, 6.3, 6.3 );
setScaleKey( spep_1 - 3 + 4, 1, 5.2, 5.2 );
setScaleKey( spep_1 - 3 + 6, 1, 4.12, 4.12 );
setScaleKey( spep_1 - 3 + 8, 1, 3.05, 3.05 );
setScaleKey( spep_1 - 3 + 10, 1, 1.99, 1.99 );
setScaleKey( spep_1 - 3 + 12, 1, 1.97, 1.97 );
setScaleKey( spep_1 - 3 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_1 - 3 + 16, 1, 1.93, 1.93 );
setScaleKey( spep_1 - 3 + 18, 1, 1.91, 1.91 );
setScaleKey( spep_1 - 3 + 20, 1, 1.88, 1.88 );
setScaleKey( spep_1 - 3 + 22, 1, 1.86, 1.86 );
setScaleKey( spep_1 - 3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_1 - 3 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_1 - 3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_1 - 3 + 30, 1, 1.77, 1.77 );
setScaleKey( spep_1 - 3 + 32, 1, 1.75, 1.75 );
setScaleKey( spep_1 - 3 + 34, 1, 1.73, 1.73 );
setScaleKey( spep_1 - 3 + 36, 1, 1.71, 1.71 );
setScaleKey( spep_1 - 3 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_1 - 3 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_1 - 3 + 42, 1, 1.64, 1.64 );
setScaleKey( spep_1 - 3 + 44, 1, 1.62, 1.62 );
setScaleKey( spep_1 - 3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_1 - 3 + 49, 1, 1.58, 1.58 );
setScaleKey( spep_1 - 3 + 50, 1, 1.21, 1.21 );
setScaleKey( spep_1 - 3 + 52, 1, 0.92, 0.92 );
setScaleKey( spep_1 - 3 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_1 - 3 + 56, 1, 0.48, 0.48 );
setScaleKey( spep_1 - 3 + 58, 1, 0.35, 0.35 );
setScaleKey( spep_1 - 3 + 60, 1, 0.27, 0.27 );
setScaleKey( spep_1 - 3 + 62, 1, 0.24, 0.24 );
setScaleKey( spep_1 - 3 + 66, 1, 0.24, 0.24 );
setScaleKey( spep_1 - 3 + 68, 1, 0.25, 0.25 );
setScaleKey( spep_1 - 3 + 70, 1, 0.26, 0.26 );
setScaleKey( spep_1 - 3 + 72, 1, 0.26, 0.26 );
setScaleKey( spep_1 - 3 + 74, 1, 0.27, 0.27 );
setScaleKey( spep_1 - 3 + 76, 1, 0.26, 0.26 );
setScaleKey( spep_1 - 3 + 80, 1, 0.26, 0.26 );
setScaleKey( spep_1 - 3 + 82, 1, 0.25, 0.25 );
setScaleKey( spep_1 - 3 + 84, 1, 0.24, 0.24 );
setScaleKey( spep_1 - 3 + 86, 1, 0.23, 0.23 );
setScaleKey( spep_1 - 3 + 88, 1, 0.22, 0.22 );
setScaleKey( spep_1 - 3 + 90, 1, 0.22, 0.22 );
setScaleKey( spep_1 - 3 + 92, 1, 0.21, 0.21 );
setScaleKey( spep_1 - 3 + 94, 1, 0.2, 0.2 );
setScaleKey( spep_1 - 3 + 96, 1, 0.19, 0.19 );
setScaleKey( spep_1 - 3 + 98, 1, 0.19, 0.19 );
setScaleKey( spep_1 - 3 + 100, 1, 0.18, 0.18 );
setScaleKey( spep_1 - 3 + 102, 1, 0.17, 0.17 );
setScaleKey( spep_1 - 3 + 104, 1, 0.17, 0.17 );
setScaleKey( spep_1 - 3 + 106, 1, 0.16, 0.16 );
setScaleKey( spep_1 - 3 + 108, 1, 0.16, 0.16 );
setScaleKey( spep_1 - 3 + 110, 1, 0.15, 0.15 );
setScaleKey( spep_1 - 3 + 112, 1, 0.14, 0.14 );
setScaleKey( spep_1 - 3 + 114, 1, 0.14, 0.14 );
setScaleKey( spep_1 - 3 + 116, 1, 0.13, 0.13 );
setScaleKey( spep_1 - 3 + 118, 1, 0.13, 0.13 );
setScaleKey( spep_1 - 3 + 120, 1, 0.12, 0.12 );
setScaleKey( spep_1 - 3 + 122, 1, 0.12, 0.12 );
setScaleKey( spep_1 - 3 + 124, 1, 0.11, 0.11 );
setScaleKey( spep_1 - 3 + 126, 1, 0.11, 0.11 );
setScaleKey( spep_1 - 3 + 129, 1, 0.1, 0.1 );
setScaleKey( spep_1 - 3 + 130, 1, 4.33, 4.33 );
setScaleKey( spep_1 - 3 + 132, 1, 3.62, 3.62 );
setScaleKey( spep_1 - 3 + 134, 1, 2.9, 2.9 );
setScaleKey( spep_1 - 3 + 136, 1, 2.19, 2.19 );
setScaleKey( spep_1 - 3 + 138, 1, 1.48, 1.48 );
setScaleKey( spep_1 - 3 + 140, 1, 1.47, 1.47 );
setScaleKey( spep_1 - 3 + 142, 1, 1.46, 1.46 );
setScaleKey( spep_1 - 3 + 144, 1, 1.45, 1.45 );
setScaleKey( spep_1 - 3 + 146, 1, 1.44, 1.44 );
setScaleKey( spep_1 - 3 + 148, 1, 1.43, 1.43 );
setScaleKey( spep_1 - 3 + 150, 1, 1.42, 1.42 );
setScaleKey( spep_1 - 3 + 152, 1, 1.41, 1.41 );
setScaleKey( spep_1 - 3 + 154, 1, 1.4, 1.4 );
setScaleKey( spep_1 - 3 + 156, 1, 1.38, 1.38 );
setScaleKey( spep_1 - 3 + 158, 1, 1.37, 1.37 );
setScaleKey( spep_1 - 3 + 160, 1, 1.36, 1.36 );
setScaleKey( spep_1 - 3 + 162, 1, 1.35, 1.35 );
setScaleKey( spep_1 - 3 + 164, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 166, 1, 1.33, 1.33 );
setScaleKey( spep_1 - 3 + 169, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 170, 1, 2.25, 2.25 );
setScaleKey( spep_1 - 3 + 172, 1, 1.97, 1.97 );
setScaleKey( spep_1 - 3 + 174, 1, 1.69, 1.69 );
setScaleKey( spep_1 - 3 + 176, 1, 1.41, 1.41 );
setScaleKey( spep_1 - 3 + 178, 1, 1.4, 1.4 );
setScaleKey( spep_1 - 3 + 180, 1, 1.39, 1.39 );
setScaleKey( spep_1 - 3 + 182, 1, 1.37, 1.37 );
setScaleKey( spep_1 - 3 + 184, 1, 1.36, 1.36 );
setScaleKey( spep_1 - 3 + 186, 1, 1.35, 1.35 );
setScaleKey( spep_1 - 3 + 188, 1, 1.33, 1.33 );
setScaleKey( spep_1 - 3 + 190, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 192, 1, 1.31, 1.31 );
setScaleKey( spep_1 - 3 + 194, 1, 1.3, 1.3 );
setScaleKey( spep_1 - 3 + 196, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 213, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 214, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 249, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 250, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 254, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 256, 1, 1.33, 1.33 );
setScaleKey( spep_1 - 3 + 268, 1, 1.33, 1.33 );
setScaleKey( spep_1 - 3 + 270, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 299, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 300, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 325, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 326, 1, 1.26, 1.26 );
setScaleKey( spep_1 - 3 + 328, 1, 1.31, 1.31 );
setScaleKey( spep_1 - 3 + 330, 1, 1.36, 1.36 );
setScaleKey( spep_1 - 3 + 332, 1, 1.41, 1.41 );
setScaleKey( spep_1 - 3 + 334, 1, 1.47, 1.47 );
setScaleKey( spep_1 - 3 + 336, 1, 1.47, 1.47 );
setScaleKey( spep_1 - 3 + 338, 1, 1.48, 1.48 );
setScaleKey( spep_1 - 3 + 340, 1, 1.48, 1.48 );
setScaleKey( spep_1 - 3 + 342, 1, 1.49, 1.49 );
setScaleKey( spep_1 - 3 + 344, 1, 1.49, 1.49 );
setScaleKey( spep_1 - 3 + 346, 1, 1.5, 1.5 );
setScaleKey( spep_1 - 3 + 348, 1, 1.5, 1.5 );
setScaleKey( spep_1 - 3 + 350, 1, 1.51, 1.51 );
setScaleKey( spep_1 - 3 + 352, 1, 1.51, 1.51 );
setScaleKey( spep_1 - 3 + 354, 1, 1.52, 1.52 );
setScaleKey( spep_1 - 3 + 356, 1, 1.52, 1.52 );
setScaleKey( spep_1 - 3 + 358, 1, 1.53, 1.53 );
setScaleKey( spep_1 - 3 + 361, 1, 1.53, 1.53 );
setScaleKey( spep_1 - 3 + 362, 1, 0.84, 0.84 );
setScaleKey( spep_1 - 3 + 364, 1, 0.81, 0.81 );
setScaleKey( spep_1 - 3 + 366, 1, 0.77, 0.77 );
setScaleKey( spep_1 - 3 + 368, 1, 0.73, 0.73 );
setScaleKey( spep_1 - 3 + 386, 1, 0.73, 0.73 );
setScaleKey( spep_1 - 3 + 388, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 390, 1, 1.82, 1.82 );
setScaleKey( spep_1 - 3 + 392, 1, 2.36, 2.36 );
setScaleKey( spep_1 - 3 + 395, 1, 2.9, 2.9 );

setRotateKey( spep_1 + 0, 1, -10.5 );
setRotateKey( spep_1 - 3 + 2, 1, -10.1 );
setRotateKey( spep_1 - 3 + 4, 1, -9.8 );
setRotateKey( spep_1 - 3 + 6, 1, -9.5 );
setRotateKey( spep_1 - 3 + 8, 1, -9.1 );
setRotateKey( spep_1 - 3 + 10, 1, -8.8 );
setRotateKey( spep_1 - 3 + 12, 1, -8.9 );
setRotateKey( spep_1 - 3 + 14, 1, -9.1 );
setRotateKey( spep_1 - 3 + 16, 1, -9.2 );
setRotateKey( spep_1 - 3 + 18, 1, -9.4 );
setRotateKey( spep_1 - 3 + 20, 1, -9.5 );
setRotateKey( spep_1 - 3 + 22, 1, -9.6 );
setRotateKey( spep_1 - 3 + 24, 1, -9.8 );
setRotateKey( spep_1 - 3 + 26, 1, -9.9 );
setRotateKey( spep_1 - 3 + 28, 1, -10.1 );
setRotateKey( spep_1 - 3 + 30, 1, -10.2 );
setRotateKey( spep_1 - 3 + 32, 1, -10.3 );
setRotateKey( spep_1 - 3 + 34, 1, -10.5 );
setRotateKey( spep_1 - 3 + 36, 1, -10.6 );
setRotateKey( spep_1 - 3 + 38, 1, -10.8 );
setRotateKey( spep_1 - 3 + 40, 1, -10.9 );
setRotateKey( spep_1 - 3 + 42, 1, -11 );
setRotateKey( spep_1 - 3 + 44, 1, -11.2 );
setRotateKey( spep_1 - 3 + 46, 1, -11.3 );
setRotateKey( spep_1 - 3 + 49, 1, -11.5 );
setRotateKey( spep_1 - 3 + 50, 1, 33.4 );
setRotateKey( spep_1 - 3 + 52, 1, 29.8 );
setRotateKey( spep_1 - 3 + 54, 1, 27 );
setRotateKey( spep_1 - 3 + 56, 1, 24.7 );
setRotateKey( spep_1 - 3 + 58, 1, 23.1 );
setRotateKey( spep_1 - 3 + 60, 1, 22.2 );
setRotateKey( spep_1 - 3 + 62, 1, 21.8 );
setRotateKey( spep_1 - 3 + 70, 1, 21.8 );
setRotateKey( spep_1 - 3 + 72, 1, 21.7 );
setRotateKey( spep_1 - 3 + 80, 1, 21.7 );
setRotateKey( spep_1 - 3 + 82, 1, 21.6 );
setRotateKey( spep_1 - 3 + 90, 1, 21.6 );
setRotateKey( spep_1 - 3 + 92, 1, 21.5 );
setRotateKey( spep_1 - 3 + 102, 1, 21.5 );
setRotateKey( spep_1 - 3 + 104, 1, 21.4 );
setRotateKey( spep_1 - 3 + 112, 1, 21.4 );
setRotateKey( spep_1 - 3 + 114, 1, 21.3 );
setRotateKey( spep_1 - 3 + 124, 1, 21.3 );
setRotateKey( spep_1 - 3 + 126, 1, 21.2 );
setRotateKey( spep_1 - 3 + 129, 1, 21.2 );
setRotateKey( spep_1 - 3 + 130, 1, -23.2 );
setRotateKey( spep_1 - 3 + 132, 1, -17.9 );
setRotateKey( spep_1 - 3 + 134, 1, -12.6 );
setRotateKey( spep_1 - 3 + 136, 1, -7.3 );
setRotateKey( spep_1 - 3 + 138, 1, -2 );
setRotateKey( spep_1 - 3 + 140, 1, -1.8 );
setRotateKey( spep_1 - 3 + 142, 1, -1.6 );
setRotateKey( spep_1 - 3 + 144, 1, -1.4 );
setRotateKey( spep_1 - 3 + 146, 1, -1.2 );
setRotateKey( spep_1 - 3 + 148, 1, -1 );
setRotateKey( spep_1 - 3 + 150, 1, -0.8 );
setRotateKey( spep_1 - 3 + 152, 1, -0.6 );
setRotateKey( spep_1 - 3 + 154, 1, -0.4 );
setRotateKey( spep_1 - 3 + 156, 1, -0.2 );
setRotateKey( spep_1 - 3 + 158, 1, 0 );
setRotateKey( spep_1 - 3 + 160, 1, 0.2 );
setRotateKey( spep_1 - 3 + 162, 1, 0.4 );
setRotateKey( spep_1 - 3 + 164, 1, 0.6 );
setRotateKey( spep_1 - 3 + 166, 1, 0.8 );
setRotateKey( spep_1 - 3 + 169, 1, 1 );
setRotateKey( spep_1 - 3 + 170, 1, 43.2 );
setRotateKey( spep_1 - 3 + 213, 1, 43.2 );
setRotateKey( spep_1 - 3 + 214, 1, -13.2 );
setRotateKey( spep_1 - 3 + 216, 1, -13.1 );
setRotateKey( spep_1 - 3 + 240, 1, -13.1 );
setRotateKey( spep_1 - 3 + 242, 1, -13.2 );
setRotateKey( spep_1 - 3 + 249, 1, -13.2 );
setRotateKey( spep_1 - 3 + 250, 1, -9.2 );
setRotateKey( spep_1 - 3 + 252, 1, -9.2 );
setRotateKey( spep_1 - 3 + 254, 1, -9.1 );
setRotateKey( spep_1 - 3 + 280, 1, -9.1 );
setRotateKey( spep_1 - 3 + 282, 1, -9.2 );
setRotateKey( spep_1 - 3 + 299, 1, -9.2 );
setRotateKey( spep_1 - 3 + 300, 1, -98.8 );
setRotateKey( spep_1 - 3 + 302, 1, -104 );
setRotateKey( spep_1 - 3 + 304, 1, -109.1 );
setRotateKey( spep_1 - 3 + 306, 1, -114.3 );
setRotateKey( spep_1 - 3 + 308, 1, -114.9 );
setRotateKey( spep_1 - 3 + 310, 1, -115.5 );
setRotateKey( spep_1 - 3 + 312, 1, -116 );
setRotateKey( spep_1 - 3 + 314, 1, -116.6 );
setRotateKey( spep_1 - 3 + 316, 1, -117.2 );
setRotateKey( spep_1 - 3 + 318, 1, -117.8 );
setRotateKey( spep_1 - 3 + 320, 1, -118.3 );
setRotateKey( spep_1 - 3 + 322, 1, -118.9 );
setRotateKey( spep_1 - 3 + 325, 1, -119.5 );
setRotateKey( spep_1 - 3 + 326, 1, -76.2 );
setRotateKey( spep_1 - 3 + 361, 1, -76.2 );
setRotateKey( spep_1 - 3 + 362, 1, 16 );
setRotateKey( spep_1 - 3 + 364, 1, 15.9 );
setRotateKey( spep_1 - 3 + 366, 1, 15.9 );
setRotateKey( spep_1 - 3 + 368, 1, 15.8 );
setRotateKey( spep_1 - 3 + 372, 1, 15.8 );
setRotateKey( spep_1 - 3 + 374, 1, 15.9 );
setRotateKey( spep_1 - 3 + 380, 1, 15.9 );
setRotateKey( spep_1 - 3 + 382, 1, 16 );
setRotateKey( spep_1 - 3 + 386, 1, 16 );
setRotateKey( spep_1 - 3 + 388, 1, 14.6 );
setRotateKey( spep_1 - 3 + 390, 1, 13.3 );
setRotateKey( spep_1 - 3 + 392, 1, 11.9 );
setRotateKey( spep_1 - 3 + 395, 1, 10.5 );


ryusen = entryEffectLife( spep_1 - 3 + 130,  914, 50, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 - 3 + 130, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 - 3 + 180, ryusen, 0, 0 , 0 );
setEffScaleKey( spep_1 - 3 + 130, ryusen, 2.75, 1.22 );
setEffScaleKey( spep_1 - 3 + 180, ryusen, 2.75, 1.22 );
setEffRotateKey( spep_1 - 3 + 130, ryusen, -54 );
setEffRotateKey( spep_1 - 3 + 180, ryusen, -54 );
setEffAlphaKey( spep_1 - 3 + 130, ryusen, 128 );
setEffAlphaKey( spep_1 - 3 + 166, ryusen, 128 );
setEffAlphaKey( spep_1 - 3 + 168, ryusen, 109 );
setEffAlphaKey( spep_1 - 3 + 170, ryusen, 91 );
setEffAlphaKey( spep_1 - 3 + 172, ryusen, 73 );
setEffAlphaKey( spep_1 - 3 + 174, ryusen, 55 );
setEffAlphaKey( spep_1 - 3 + 176, ryusen, 36 );
setEffAlphaKey( spep_1 - 3 + 178, ryusen, 18 );
setEffAlphaKey( spep_1 - 3 + 180, ryusen, 0 );


kakuto_b = entryEffectLife( spep_1 + 0, SP_03, 410, 0x80, -1, 0, 0, 0 );  --格闘後ろ(ef_003)
setEffMoveKey( spep_1 + 0, kakuto_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 410, kakuto_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakuto_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 410, kakuto_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakuto_b, 0 );
setEffRotateKey( spep_1 + 410, kakuto_b, 0 );
setEffAlphaKey( spep_1 + 0, kakuto_b, 255 );
setEffAlphaKey( spep_1 + 410, kakuto_b, 255 );




-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 410, 0, 0, 0, 0, 255 );  --黒　背景

entryFade( spep_1 + 400, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
playSe( spep_1 + 0,  1011);  --殴る
playSe( spep_1 + 68,  1035);-- 気溜
playSe( spep_1 + 70,  9);
playSe( spep_1 - 3 + 170, 1120 );  --蹴り
playSe( spep_1 + 170, 1010 );  --蹴り
playSe( spep_1 + 200, 43);  --瞬間移動
playSe( spep_1 - 3 + 214, 1001);  --
playSe( spep_1 - 3 + 222, 1000);  --
playSe( spep_1 - 3 + 230, 1001);  --*
playSe( spep_1 + 200,  43);  -- *
playSe( spep_1 - 3 + 210, 1009);
playSe( spep_1 - 3 + 230, 1000);
playSe( spep_1 - 3 + 250, 1000);
playSe( spep_1 - 3 + 260, 1001);
playSe( spep_1 + 280,  43);  -- *
playSe( spep_1 + 292,  1003);
playSe( spep_1 - 3 + 300, 1010);
playSe( spep_1 - 3 + 326, 1009);
playSe( spep_1 - 3 + 362, 1011);


-- ** 次の準備 ** --
spep_2 = spep_1 + 410;

------------------------------------------------------
--  カードカットイン(90F)
------------------------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
--  構え(160F)
------------------------------------------------------
-- ** 書き文字 ** --
ctzuo = entryEffectLife( spep_3 - 3 + 48,  10012, 56, 0x100, -1, 0, 71.2, 379.6 );  --ズオ
setEffMoveKey( spep_3 - 3 + 48, ctzuo, 71.2, 379.6 , 0 );
setEffMoveKey( spep_3 - 3 + 50, ctzuo, 89.9, 372.1 , 0 );
setEffMoveKey( spep_3 - 3 + 52, ctzuo, 88, 383.9 , 0 );
setEffMoveKey( spep_3 - 3 + 54, ctzuo, 119.5, 364.5 , 0 );
setEffMoveKey( spep_3 - 3 + 56, ctzuo, 95.1, 385.9 , 0 );
setEffMoveKey( spep_3 - 3 + 58, ctzuo, 115.4, 365.6 , 0 );
setEffMoveKey( spep_3 - 3 + 60, ctzuo, 92.8, 385.3 , 0 );
setEffMoveKey( spep_3 - 3 + 62, ctzuo, 111.3, 366.6 , 0 );
setEffMoveKey( spep_3 - 3 + 64, ctzuo, 90.5, 384.7 , 0 );
setEffMoveKey( spep_3 - 3 + 66, ctzuo, 107.1, 367.7 , 0 );
setEffMoveKey( spep_3 - 3 + 68, ctzuo, 89.2, 384.4 , 0 );
setEffMoveKey( spep_3 - 3 + 70, ctzuo, 106.6, 367.8 , 0 );
setEffMoveKey( spep_3 - 3 + 72, ctzuo, 88.8, 384.3 , 0 );
setEffMoveKey( spep_3 - 3 + 74, ctzuo, 106, 368 , 0 );
setEffMoveKey( spep_3 - 3 + 76, ctzuo, 88.5, 384.2 , 0 );
setEffMoveKey( spep_3 - 3 + 78, ctzuo, 105.5, 368.1 , 0 );
setEffMoveKey( spep_3 - 3 + 80, ctzuo, 88.2, 384.1 , 0 );
setEffMoveKey( spep_3 - 3 + 82, ctzuo, 104.9, 368.3 , 0 );
setEffMoveKey( spep_3 - 3 + 84, ctzuo, 87.9, 384 , 0 );
setEffMoveKey( spep_3 - 3 + 86, ctzuo, 104.4, 368.4 , 0 );
setEffMoveKey( spep_3 - 3 + 88, ctzuo, 87.6, 384 , 0 );
setEffMoveKey( spep_3 - 3 + 90, ctzuo, 103.8, 368.6 , 0 );
setEffMoveKey( spep_3 - 3 + 92, ctzuo, 87.3, 383.9 , 0 );
setEffMoveKey( spep_3 - 3 + 94, ctzuo, 87.1, 383.8 , 0 );
setEffMoveKey( spep_3 - 3 + 96, ctzuo, 114, 365.9 , 0 );
setEffMoveKey( spep_3 - 3 + 98, ctzuo, 99.2, 387 , 0 );
setEffMoveKey( spep_3 - 3 + 100, ctzuo, 135.5, 360.3 , 0 );
setEffMoveKey( spep_3 - 3 + 102, ctzuo, 111.3, 390.2 , 0 );
setEffMoveKey( spep_3 - 3 + 104, ctzuo, 117.4, 391.8 , 0 );

setEffScaleKey( spep_3 - 3 + 48, ctzuo, 0.64, 0.64 );
setEffScaleKey( spep_3 - 3 + 50, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_3 - 3 + 52, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_3 - 3 + 54, ctzuo, 3.83, 3.83 );
setEffScaleKey( spep_3 - 3 + 56, ctzuo, 3.69, 3.69 );
setEffScaleKey( spep_3 - 3 + 58, ctzuo, 3.54, 3.54 );
setEffScaleKey( spep_3 - 3 + 60, ctzuo, 3.39, 3.39 );
setEffScaleKey( spep_3 - 3 + 62, ctzuo, 3.24, 3.24 );
setEffScaleKey( spep_3 - 3 + 64, ctzuo, 3.1, 3.1 );
setEffScaleKey( spep_3 - 3 + 66, ctzuo, 2.95, 2.95 );
setEffScaleKey( spep_3 - 3 + 68, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_3 - 3 + 70, ctzuo, 2.91, 2.91 );
setEffScaleKey( spep_3 - 3 + 72, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_3 - 3 + 74, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_3 - 3 + 76, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_3 - 3 + 78, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_3 - 3 + 80, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_3 - 3 + 82, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_3 - 3 + 84, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_3 - 3 + 86, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_3 - 3 + 88, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3 - 3 + 90, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_3 - 3 + 92, ctzuo, 2.69, 2.69 );
setEffScaleKey( spep_3 - 3 + 94, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_3 - 3 + 96, ctzuo, 3.44, 3.44 );
setEffScaleKey( spep_3 - 3 + 98, ctzuo, 4.21, 4.21 );
setEffScaleKey( spep_3 - 3 + 100, ctzuo, 4.99, 4.99 );
setEffScaleKey( spep_3 - 3 + 102, ctzuo, 5.76, 5.76 );
setEffScaleKey( spep_3 - 3 + 104, ctzuo, 6.53, 6.53 );

setEffRotateKey( spep_3 - 3 + 48, ctzuo, 25.3 );
setEffRotateKey( spep_3 - 3 + 56, ctzuo, 25.3 );
setEffRotateKey( spep_3 - 3 + 58, ctzuo, 25.4 );
setEffRotateKey( spep_3 - 3 + 88, ctzuo, 25.4 );
setEffRotateKey( spep_3 - 3 + 104, ctzuo, 25.3 );

setEffAlphaKey( spep_3 - 3 + 48, ctzuo, 255 );
setEffAlphaKey( spep_3 - 3 + 94, ctzuo, 255 );
setEffAlphaKey( spep_3 - 3 + 96, ctzuo, 204 );
setEffAlphaKey( spep_3 - 3 + 98, ctzuo, 153 );
setEffAlphaKey( spep_3 - 3 + 100, ctzuo, 102 );
setEffAlphaKey( spep_3 - 3 + 102, ctzuo, 51 );
setEffAlphaKey( spep_3 - 3 + 104, ctzuo, 0 );


-- ** 敵の動き ** --

setDisp(spep_3 -3 +110,  1,  1);
setDisp(spep_3 -3 +158,  1,  0);
changeAnime( spep_3 - 3 + 110,  1, 106);

setMoveKey( spep_3 - 3 + 110, 1, -532.9, 979.9 , 0 );
setMoveKey( spep_3 - 3 + 112, 1, -457.3, 850.1 , 0 );
setMoveKey( spep_3 - 3 + 114, 1, -381.7, 720.2 , 0 );
setMoveKey( spep_3 - 3 + 116, 1, -306.2, 590.3 , 0 );
setMoveKey( spep_3 - 3 + 118, 1, -230.6, 460.5 , 0 );
setMoveKey( spep_3 - 3 + 120, 1, -155, 330.6 , 0 );
setMoveKey( spep_3 - 3 + 122, 1, -79.5, 200.7 , 0 );
setMoveKey( spep_3 - 3 + 124, 1, -3.9, 70.8 , 0 );
setMoveKey( spep_3 - 3 + 126, 1, 4.3, 56.7 , 0 );
setMoveKey( spep_3 - 3 + 128, 1, 12.6, 42.6 , 0 );
setMoveKey( spep_3 - 3 + 130, 1, 20.8, 28.4 , 0 );
setMoveKey( spep_3 - 3 + 132, 1, 29.1, 14.3 , 0 );
setMoveKey( spep_3 - 3 + 134, 1, 37.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 136, 1, 45.6, -14 , 0 );
setMoveKey( spep_3 - 3 + 138, 1, 53.8, -28.2 , 0 );
setMoveKey( spep_3 - 3 + 140, 1, 62, -42.3 , 0 );
setMoveKey( spep_3 - 3 + 142, 1, 70.3, -56.5 , 0 );
setMoveKey( spep_3 - 3 + 144, 1, 78.5, -70.6 , 0 );
setMoveKey( spep_3 - 3 + 146, 1, 86.7, -84.8 , 0 );
setMoveKey( spep_3 - 3 + 148, 1, 95, -98.9 , 0 );
setMoveKey( spep_3 - 3 + 150, 1, 103.2, -113.1 , 0 );
setMoveKey( spep_3 - 3 + 152, 1, 111.4, -127.2 , 0 );
setMoveKey( spep_3 - 3 + 154, 1, 119.7, -141.4 , 0 );
setMoveKey( spep_3 - 3 + 156, 1, 127.9, -155.5 , 0 );
setMoveKey( spep_3 - 3 + 158, 1, 136.1, -169.7 , 0 );

setScaleKey( spep_3 - 3 + 110, 1, 0.28, 0.28 );
setScaleKey( spep_3 - 3 + 112, 1, 0.39, 0.39 );
setScaleKey( spep_3 - 3 + 114, 1, 0.49, 0.49 );
setScaleKey( spep_3 - 3 + 116, 1, 0.6, 0.6 );
setScaleKey( spep_3 - 3 + 118, 1, 0.71, 0.71 );
setScaleKey( spep_3 - 3 + 120, 1, 0.82, 0.82 );
setScaleKey( spep_3 - 3 + 122, 1, 0.93, 0.93 );
setScaleKey( spep_3 - 3 + 124, 1, 1.04, 1.04 );
setScaleKey( spep_3 - 3 + 126, 1, 1.07, 1.07 );
setScaleKey( spep_3 - 3 + 128, 1, 1.1, 1.1 );
setScaleKey( spep_3 - 3 + 130, 1, 1.13, 1.13 );
setScaleKey( spep_3 - 3 + 132, 1, 1.16, 1.16 );
setScaleKey( spep_3 - 3 + 134, 1, 1.19, 1.19 );
setScaleKey( spep_3 - 3 + 136, 1, 1.22, 1.22 );
setScaleKey( spep_3 - 3 + 138, 1, 1.25, 1.25 );
setScaleKey( spep_3 - 3 + 140, 1, 1.27, 1.27 );
setScaleKey( spep_3 - 3 + 142, 1, 1.3, 1.3 );
setScaleKey( spep_3 - 3 + 144, 1, 1.33, 1.33 );
setScaleKey( spep_3 - 3 + 146, 1, 1.36, 1.36 );
setScaleKey( spep_3 - 3 + 148, 1, 1.39, 1.39 );
setScaleKey( spep_3 - 3 + 150, 1, 1.42, 1.42 );
setScaleKey( spep_3 - 3 + 152, 1, 1.45, 1.45 );
setScaleKey( spep_3 - 3 + 154, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 156, 1, 1.51, 1.51 );
setScaleKey( spep_3 - 3 + 158, 1, 1.54, 1.54 );
setRotateKey( spep_3 - 3 + 110, 1, 75.3 );
setRotateKey( spep_3 - 3 + 112, 1, 75.2 );
setRotateKey( spep_3 - 3 + 156, 1, 75.2 );
setRotateKey( spep_3 - 3 + 158, 1, 75.3 );

-- ** エフェクト等 ** --
kamae_f = entryEffectLife( spep_3 + 0, SP_04, 160, 0x80, -1, 0, 0, 0 );  --気弾構え(ef_004)
setEffMoveKey( spep_3 + 0, kamae_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, kamae_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, kamae_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamae_f, 0 );
setEffRotateKey( spep_3 + 160, kamae_f, 0 );
setEffAlphaKey( spep_3 + 0, kamae_f, 255 );
setEffAlphaKey( spep_3 + 160, kamae_f, 255 );


-- ** 白フェード ** --
entryFade( spep_3 + 48 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 154 , 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 +0,  1004);
playSe( spep_3 +48,  1021);
playSe( spep_3 + 110 - 3,  1022);


-- ** 次の準備 ** --
spep_4 = spep_3 + 160;

------------------------------------------------------
--  爆発(220F)
------------------------------------------------------


-- ** 集中線 **  --
shuchusen3 = entryEffectLife( spep_4 + 40,  906, 130, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 40, shuchusen3, 1.17, 1.27 );
setEffScaleKey( spep_4 + 170, shuchusen3, 1.17, 1.27 );
setEffRotateKey( spep_4 + 40, shuchusen3, 0 );
setEffRotateKey( spep_4 + 170, shuchusen3, 0 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 170, shuchusen3, 255 );

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --気弾構え(ef_004)
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 170, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 170, bakuhatsu, 255 );

entryFade( spep_4 + 40 , 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 **  --
playSe( spep_4 + 0,  1023);
playSe( spep_4 + 50,  1024);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 50 );
endPhase( spep_4 + 160 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--  殴る(150F)
------------------------------------------------------
spep_0 = 0;



-- ** エフェクト等 ** --
naguru = entryEffectLife( spep_0 + 0, SP_01, 150, 0x80, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, naguru, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, naguru, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, naguru, -1.0, 1.0 );
setEffScaleKey( spep_0 + 150, naguru, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, naguru, 0 );
setEffRotateKey( spep_0 + 150, naguru, 0 );
setEffAlphaKey( spep_0 + 0, naguru, 255 );
setEffAlphaKey( spep_0 + 150, naguru, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 26, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 26, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16 + 26,  190006, 64, 0x100, -1, 0, 0, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 64, 10 );

setEffMoveKey( spep_0 + 16 + 26, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_0 + 80 + 26, ctgogo, 0, 515.5 , 0 );

setEffScaleKey( spep_0 + 16 + 26, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 72 + 26, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 74 + 26, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76 + 26, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 78 + 26, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 80 + 26, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 16 + 26, ctgogo, 0 );
setEffRotateKey( spep_0 + 80 + 26, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16 + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80 + 26, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0,  9);
playSe( spep_0 + 16 + 26,  1018);  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

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

entryFade( spep_0 + 144, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0+100, 1072);

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;

------------------------------------------------------
--  格闘(410F)
------------------------------------------------------

-- ** 書き文字 ** --
ctzun = entryEffectLife( spep_1 + 0,  10016, 32, 0x100, -1, 0, 15.8, 363.9 );  --ズン

setEffShake( spep_1 + 0,  ctzun,  32,  20);  --揺れ
setEffMoveKey( spep_1 + 0, ctzun, 15.8, 363.9 , 0 );
setEffMoveKey( spep_1 + 32, ctzun, 15.7, 364.1 , 0 );
setEffScaleKey( spep_1 + 0, ctzun, 1.41, 1.41 );
setEffScaleKey( spep_1 + 2, ctzun, 3.44, 3.44 );
setEffScaleKey( spep_1 + 4, ctzun, 3.3, 3.3 );
setEffScaleKey( spep_1 + 6, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_1 + 8, ctzun, 3.03, 3.03 );
setEffScaleKey( spep_1 + 10, ctzun, 2.9, 2.9 );
setEffScaleKey( spep_1 + 12, ctzun, 2.84, 2.84 );
setEffScaleKey( spep_1 + 14, ctzun, 2.79, 2.79 );
setEffScaleKey( spep_1 + 16, ctzun, 2.74, 2.74 );
setEffScaleKey( spep_1 + 18, ctzun, 2.68, 2.68 );
setEffScaleKey( spep_1 + 20, ctzun, 2.63, 2.63 );
setEffScaleKey( spep_1 + 22, ctzun, 2.57, 2.57 );
setEffScaleKey( spep_1 + 24, ctzun, 2.52, 2.52 );
setEffScaleKey( spep_1 + 26, ctzun, 2.4, 2.4 );
setEffScaleKey( spep_1 + 28, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_1 + 30, ctzun, 2.16, 2.16 );
setEffScaleKey( spep_1 + 32, ctzun, 2.04, 2.04 );
setEffRotateKey( spep_1 + 0, ctzun, -9.2 );
setEffRotateKey( spep_1 + 12, ctzun, -9.2 );
setEffRotateKey( spep_1 + 14, ctzun, -9.3 );
setEffRotateKey( spep_1 + 20, ctzun, -9.3 );
setEffRotateKey( spep_1 + 22, ctzun, -9.4 );
setEffRotateKey( spep_1 + 24, ctzun, -9.4 );
setEffRotateKey( spep_1 + 26, ctzun, -9.3 );
setEffRotateKey( spep_1 + 30, ctzun, -9.3 );
setEffRotateKey( spep_1 + 32, ctzun, -9.2 );
setEffAlphaKey( spep_1 + 0, ctzun, 255 );
setEffAlphaKey( spep_1 + 10, ctzun, 255 );
setEffAlphaKey( spep_1 + 12, ctzun, 246 );
setEffAlphaKey( spep_1 + 14, ctzun, 237 );
setEffAlphaKey( spep_1 + 16, ctzun, 228 );
setEffAlphaKey( spep_1 + 18, ctzun, 219 );
setEffAlphaKey( spep_1 + 20, ctzun, 209 );
setEffAlphaKey( spep_1 + 22, ctzun, 200 );
setEffAlphaKey( spep_1 + 24, ctzun, 191 );
setEffAlphaKey( spep_1 + 26, ctzun, 147 );
setEffAlphaKey( spep_1 + 28, ctzun, 102 );
setEffAlphaKey( spep_1 + 30, ctzun, 58 );
setEffAlphaKey( spep_1 + 32, ctzun, 13 );

ctzun2 = entryEffectLife( spep_1 - 3 + 170,  10016, 16, 0x100, -1, 0, 7.8, 363.9 );  --ズン
setEffMoveKey( spep_1 - 3 + 170, ctzun2, 7.8, 363.9 , 0 );
setEffMoveKey( spep_1 - 3 + 172, ctzun2, 7.8, 363.9 , 0 );
setEffMoveKey( spep_1 - 3 + 174, ctzun2, 1.3, 368.2 , 0 );
setEffMoveKey( spep_1 - 3 + 176, ctzun2, 7.9, 363.9 , 0 );
setEffMoveKey( spep_1 - 3 + 178, ctzun2, 7.9, 363.9 , 0 );
setEffMoveKey( spep_1 - 3 + 180, ctzun2, 2.4, 367.4 , 0 );
setEffMoveKey( spep_1 - 3 + 182, ctzun2, 2.7, 367 , 0 );
setEffMoveKey( spep_1 - 3 + 184, ctzun2, 7.8, 363.8 , 0 );
setEffMoveKey( spep_1 - 3 + 186, ctzun2, 7.7, 364 , 0 );

setEffScaleKey( spep_1 - 3 + 170, ctzun2, 1.13, 1.13 );
setEffScaleKey( spep_1 - 3 + 172, ctzun2, 2.77, 2.77 );
setEffScaleKey( spep_1 - 3 + 174, ctzun2, 2.63, 2.63 );
setEffScaleKey( spep_1 - 3 + 176, ctzun2, 2.48, 2.48 );
setEffScaleKey( spep_1 - 3 + 178, ctzun2, 2.33, 2.33 );
setEffScaleKey( spep_1 - 3 + 180, ctzun2, 2.18, 2.18 );
setEffScaleKey( spep_1 - 3 + 182, ctzun2, 2.03, 2.03 );
setEffScaleKey( spep_1 - 3 + 184, ctzun2, 1.84, 1.84 );
setEffScaleKey( spep_1 - 3 + 186, ctzun2, 1.64, 1.64 );

setEffRotateKey( spep_1 - 3 + 170, ctzun2, -9.2 );
setEffRotateKey( spep_1 - 3 + 178, ctzun2, -9.2 );
setEffRotateKey( spep_1 - 3 + 180, ctzun2, -9.3 );
setEffRotateKey( spep_1 - 3 + 182, ctzun2, -9.4 );
setEffRotateKey( spep_1 - 3 + 184, ctzun2, -9.3 );
setEffRotateKey( spep_1 - 3 + 186, ctzun2, -9.2 );

setEffAlphaKey( spep_1 - 3 + 170, ctzun2, 255 );
setEffAlphaKey( spep_1 - 3 + 178, ctzun2, 255 );
setEffAlphaKey( spep_1 - 3 + 180, ctzun2, 223 );
setEffAlphaKey( spep_1 - 3 + 182, ctzun2, 191 );
setEffAlphaKey( spep_1 - 3 + 184, ctzun2, 102 );
setEffAlphaKey( spep_1 - 3 + 186, ctzun2, 13 );

ctga = entryEffectLife( spep_1 - 3 + 214,  10005, 14, 0x100, -1, 0, 80.1, 262.1 );  --ガッ
setEffMoveKey( spep_1 - 3 + 214, ctga, 80.1, 262.1 , 0 );
setEffMoveKey( spep_1 - 3 + 216, ctga, 80.4, 262.1 , 0 );
setEffMoveKey( spep_1 - 3 + 218, ctga, 80.2, 262.3 , 0 );
setEffMoveKey( spep_1 - 3 + 220, ctga, 80.2, 262.1 , 0 );
setEffMoveKey( spep_1 - 3 + 228, ctga, 80.2, 262.1 , 0 );
setEffScaleKey( spep_1 - 3 + 214, ctga, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 216, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 218, ctga, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 220, ctga, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 222, ctga, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 224, ctga, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 226, ctga, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 228, ctga, 1.6, 1.6 );
setEffRotateKey( spep_1 - 3 + 214, ctga, 16.3 );
setEffRotateKey( spep_1 - 3 + 216, ctga, 2.9 );
setEffRotateKey( spep_1 - 3 + 218, ctga, 16.3 );
setEffRotateKey( spep_1 - 3 + 220, ctga, 16.3 );
setEffRotateKey( spep_1 - 3 + 222, ctga, 16.2 );
setEffRotateKey( spep_1 - 3 + 224, ctga, 16.2 );
setEffRotateKey( spep_1 - 3 + 226, ctga, 16.3 );
setEffRotateKey( spep_1 - 3 + 228, ctga, 16.3 );
setEffAlphaKey( spep_1 - 3 + 214, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 222, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 224, ctga, 170 );
setEffAlphaKey( spep_1 - 3 + 226, ctga, 85 );
setEffAlphaKey( spep_1 - 3 + 228, ctga, 0 );

ctga2 = entryEffectLife( spep_1 - 3 + 222,  10005, 14, 0x100, -1, 0, -227.8, 89.9 );  --ガッ
setEffMoveKey( spep_1 - 3 + 222, ctga2, -227.8, 89.9 , 0 );
setEffMoveKey( spep_1 - 3 + 224, ctga2, -227.8, 90.2 , 0 );
setEffMoveKey( spep_1 - 3 + 226, ctga2, -227.9, 90.1 , 0 );
setEffMoveKey( spep_1 - 3 + 228, ctga2, -227.8, 90 , 0 );
setEffMoveKey( spep_1 - 3 + 230, ctga2, -227.9, 90.1 , 0 );
setEffMoveKey( spep_1 - 3 + 232, ctga2, -227.9, 90.1 , 0 );
setEffMoveKey( spep_1 - 3 + 234, ctga2, -227.8, 90.1 , 0 );
setEffMoveKey( spep_1 - 3 + 236, ctga2, -227.8, 90.1 , 0 );

setEffScaleKey( spep_1 - 3 + 222, ctga2, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 224, ctga2, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 226, ctga2, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 228, ctga2, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 230, ctga2, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 232, ctga2, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 234, ctga2, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 236, ctga2, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 222, ctga2, -20.1 );
setEffRotateKey( spep_1 - 3 + 224, ctga2, -33.5 );
setEffRotateKey( spep_1 - 3 + 226, ctga2, -20.1 );
setEffRotateKey( spep_1 - 3 + 228, ctga2, -20.1 );
setEffRotateKey( spep_1 - 3 + 230, ctga2, -20.3 );
setEffRotateKey( spep_1 - 3 + 232, ctga2, -20.2 );
setEffRotateKey( spep_1 - 3 + 234, ctga2, -20.2 );
setEffRotateKey( spep_1 - 3 + 236, ctga2, -20.1 );

setEffAlphaKey( spep_1 - 3 + 222, ctga2, 255 );
setEffAlphaKey( spep_1 - 3 + 230, ctga2, 255 );
setEffAlphaKey( spep_1 - 3 + 232, ctga2, 170 );
setEffAlphaKey( spep_1 - 3 + 234, ctga2, 85 );
setEffAlphaKey( spep_1 - 3 + 236, ctga2, 0 );

--[[
ctga3 = entryEffectLife( spep_1 - 3 + 310,  10005, 14, 0x100, -1, 0, -13.9, 278 );  --ガッ
setEffMoveKey( spep_1 - 3 + 310, ctga3, -13.9, 278 , 0 );
setEffMoveKey( spep_1 - 3 + 312, ctga3, -13.7, 278.1 , 0 );
setEffMoveKey( spep_1 - 3 + 314, ctga3, -13.9, 278.3 , 0 );
setEffMoveKey( spep_1 - 3 + 316, ctga3, -13.8, 278.1 , 0 );
setEffMoveKey( spep_1 - 3 + 324, ctga3, -13.8, 278.1 , 0 );

setEffScaleKey( spep_1 - 3 + 310, ctga3, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 312, ctga3, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 314, ctga3, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 316, ctga3, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 318, ctga3, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 320, ctga3, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 322, ctga3, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 324, ctga3, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 310, ctga3, 3.3 );
setEffRotateKey( spep_1 - 3 + 312, ctga3, -10 );
setEffRotateKey( spep_1 - 3 + 314, ctga3, 3.3 );
setEffRotateKey( spep_1 - 3 + 316, ctga3, 3.3 );
setEffRotateKey( spep_1 - 3 + 318, ctga3, 3.2 );
setEffRotateKey( spep_1 - 3 + 320, ctga3, 3.2 );
setEffRotateKey( spep_1 - 3 + 322, ctga3, 3.3 );
setEffRotateKey( spep_1 - 3 + 324, ctga3, 3.3 );

setEffAlphaKey( spep_1 - 3 + 310, ctga3, 255 );
setEffAlphaKey( spep_1 - 3 + 318, ctga3, 255 );
setEffAlphaKey( spep_1 - 3 + 320, ctga3, 170 );
setEffAlphaKey( spep_1 - 3 + 322, ctga3, 85 );
setEffAlphaKey( spep_1 - 3 + 324, ctga3, 0 );
]]

ctga4 = entryEffectLife( spep_1 - 3 + 250,  10005, 14, 0x100, -1, 0, -77.8, 274.1 ); --ガッ
setEffMoveKey( spep_1 - 3 + 250, ctga4, -77.8, 274.1 , 0 );
setEffMoveKey( spep_1 - 3 + 252, ctga4, -77.6, 274.1 , 0 );
setEffMoveKey( spep_1 - 3 + 254, ctga4, -77.9, 274.3 , 0 );
setEffMoveKey( spep_1 - 3 + 256, ctga4, -77.8, 274.1 , 0 );
setEffMoveKey( spep_1 - 3 + 260, ctga4, -77.8, 274.1 , 0 );
setEffMoveKey( spep_1 - 3 + 264, ctga4, -77.7, 274.1 , 0 );
setEffScaleKey( spep_1 - 3 + 250, ctga4, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 252, ctga4, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 254, ctga4, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 256, ctga4, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 258, ctga4, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 260, ctga4, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 262, ctga4, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 264, ctga4, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 250, ctga4, -5.8 );
setEffRotateKey( spep_1 - 3 + 252, ctga4, -19.2 );
setEffRotateKey( spep_1 - 3 + 254, ctga4, -5.9 );
setEffRotateKey( spep_1 - 3 + 256, ctga4, -5.9 );
setEffRotateKey( spep_1 - 3 + 258, ctga4, -6 );
setEffRotateKey( spep_1 - 3 + 260, ctga4, -6 );
setEffRotateKey( spep_1 - 3 + 264, ctga4, -5.9 );

setEffAlphaKey( spep_1 - 3 + 250, ctga4, 255 );
setEffAlphaKey( spep_1 - 3 + 258, ctga4, 255 );
setEffAlphaKey( spep_1 - 3 + 260, ctga4, 170 );
setEffAlphaKey( spep_1 - 3 + 262, ctga4, 85 );
setEffAlphaKey( spep_1 - 3 + 264, ctga4, 0 );


ctga5 = entryEffectLife( spep_1 - 3 + 260,  10005, 14, 0x100, -1, 0, 74, 248 ); --ガッ
setEffMoveKey( spep_1 - 3 + 260, ctga5, 74, 248 , 0 );
setEffMoveKey( spep_1 - 3 + 262, ctga5, 74.3, 248.1 , 0 );
setEffMoveKey( spep_1 - 3 + 264, ctga5, 74.2, 248.3 , 0 );
setEffMoveKey( spep_1 - 3 + 266, ctga5, 74.1, 248.1 , 0 );
setEffMoveKey( spep_1 - 3 + 268, ctga5, 74.1, 248.1 , 0 );
setEffMoveKey( spep_1 - 3 + 270, ctga5, 74.2, 248.2 , 0 );
setEffMoveKey( spep_1 - 3 + 272, ctga5, 74.2, 248.2 , 0 );
setEffMoveKey( spep_1 - 3 + 274, ctga5, 74.3, 248.1 , 0 );

setEffScaleKey( spep_1 - 3 + 260, ctga5, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 262, ctga5, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 264, ctga5, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 266, ctga5, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 268, ctga5, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 270, ctga5, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 272, ctga5, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 274, ctga5, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 260, ctga5, 19.8 );
setEffRotateKey( spep_1 - 3 + 262, ctga5, 6.4 );
setEffRotateKey( spep_1 - 3 + 264, ctga5, 19.8 );
setEffRotateKey( spep_1 - 3 + 266, ctga5, 19.8 );
setEffRotateKey( spep_1 - 3 + 268, ctga5, 19.6 );
setEffRotateKey( spep_1 - 3 + 270, ctga5, 19.7 );
setEffRotateKey( spep_1 - 3 + 272, ctga5, 19.7 );
setEffRotateKey( spep_1 - 3 + 274, ctga5, 19.8 );

setEffAlphaKey( spep_1 - 3 + 260, ctga5, 255 );
setEffAlphaKey( spep_1 - 3 + 268, ctga5, 255 );
setEffAlphaKey( spep_1 - 3 + 270, ctga5, 170 );
setEffAlphaKey( spep_1 - 3 + 272, ctga5, 85 );
setEffAlphaKey( spep_1 - 3 + 274, ctga5, 0 );


ctbaki = entryEffectLife( spep_1 - 3 + 300,  10020, 16, 0x100, -1, 0, -91, 299 );  --バキ
setEffMoveKey( spep_1 - 3 + 300, ctbaki, -91, 299 , 0 );
setEffMoveKey( spep_1 - 3 + 302, ctbaki, -111.7, 312.1 , 0 );
setEffMoveKey( spep_1 - 3 + 304, ctbaki, -91, 298.9 , 0 );
setEffMoveKey( spep_1 - 3 + 306, ctbaki, -90.9, 298.9 , 0 );
setEffMoveKey( spep_1 - 3 + 308, ctbaki, -104.2, 307.4 , 0 );
setEffMoveKey( spep_1 - 3 + 310, ctbaki, -90.8, 298.9 , 0 );
setEffMoveKey( spep_1 - 3 + 312, ctbaki, -90.8, 298.9 , 0 );
setEffMoveKey( spep_1 - 3 + 314, ctbaki, -103.3, 306.9 , 0 );
setEffMoveKey( spep_1 - 3 + 316, ctbaki, -90.9, 298.9 , 0 );
setEffScaleKey( spep_1 - 3 + 300, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 - 3 + 302, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 - 3 + 304, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1 - 3 + 306, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 - 3 + 308, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1 - 3 + 310, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1 - 3 + 312, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 - 3 + 314, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 - 3 + 316, ctbaki, 1.76, 1.76 );
setEffRotateKey( spep_1 - 3 + 300, ctbaki, -12.4 );
setEffRotateKey( spep_1 - 3 + 316, ctbaki, -12.4 );
setEffAlphaKey( spep_1 - 3 + 300, ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 312, ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 314, ctbaki, 134 );
setEffAlphaKey( spep_1 - 3 + 316, ctbaki, 13 );

ctzun3 = entryEffectLife( spep_1 - 3 + 326,  10016, 16, 0x100, -1, 0, 7.8, 243.9 );  --ズン
setEffMoveKey( spep_1 - 3 + 326, ctzun3, 7.8, 243.9 , 0 );
setEffMoveKey( spep_1 - 3 + 328, ctzun3, 7.8, 243.9 , 0 );
setEffMoveKey( spep_1 - 3 + 330, ctzun3, 1.3, 248.2 , 0 );
setEffMoveKey( spep_1 - 3 + 332, ctzun3, 7.9, 243.9 , 0 );
setEffMoveKey( spep_1 - 3 + 334, ctzun3, 7.9, 243.9 , 0 );
setEffMoveKey( spep_1 - 3 + 336, ctzun3, 2.4, 247.4 , 0 );
setEffMoveKey( spep_1 - 3 + 338, ctzun3, 2.7, 247 , 0 );
setEffMoveKey( spep_1 - 3 + 340, ctzun3, 7.8, 243.8 , 0 );
setEffMoveKey( spep_1 - 3 + 342, ctzun3, 7.7, 244 , 0 );
setEffScaleKey( spep_1 - 3 + 326, ctzun3, 1.13, 1.13 );
setEffScaleKey( spep_1 - 3 + 328, ctzun3, 2.77, 2.77 );
setEffScaleKey( spep_1 - 3 + 330, ctzun3, 2.63, 2.63 );
setEffScaleKey( spep_1 - 3 + 332, ctzun3, 2.48, 2.48 );
setEffScaleKey( spep_1 - 3 + 334, ctzun3, 2.33, 2.33 );
setEffScaleKey( spep_1 - 3 + 336, ctzun3, 2.18, 2.18 );
setEffScaleKey( spep_1 - 3 + 338, ctzun3, 2.03, 2.03 );
setEffScaleKey( spep_1 - 3 + 340, ctzun3, 1.84, 1.84 );
setEffScaleKey( spep_1 - 3 + 342, ctzun3, 1.64, 1.64 );
setEffRotateKey( spep_1 - 3 + 326, ctzun3, -9.2 );
setEffRotateKey( spep_1 - 3 + 334, ctzun3, -9.2 );
setEffRotateKey( spep_1 - 3 + 336, ctzun3, -9.3 );
setEffRotateKey( spep_1 - 3 + 338, ctzun3, -9.4 );
setEffRotateKey( spep_1 - 3 + 340, ctzun3, -9.3 );
setEffRotateKey( spep_1 - 3 + 342, ctzun3, -9.2 );
setEffAlphaKey( spep_1 - 3 + 326, ctzun3, 255 );
setEffAlphaKey( spep_1 - 3 + 334, ctzun3, 255 );
setEffAlphaKey( spep_1 - 3 + 336, ctzun3, 223 );
setEffAlphaKey( spep_1 - 3 + 338, ctzun3, 191 );
setEffAlphaKey( spep_1 - 3 + 340, ctzun3, 102 );
setEffAlphaKey( spep_1 - 3 + 342, ctzun3, 13 );

--[[
ctga6 = entryEffectLife( spep_1 - 3 + 350,  10005, 14, 0x100, -1, 0, -149.9, 188 );  --ガッ
setEffMoveKey( spep_1 - 3 + 350, ctga6, -149.9, 188 , 0 );
setEffMoveKey( spep_1 - 3 + 352, ctga6, -149.7, 188.2 , 0 );
setEffMoveKey( spep_1 - 3 + 354, ctga6, -149.9, 188.3 , 0 );
setEffMoveKey( spep_1 - 3 + 356, ctga6, -149.8, 188 , 0 );
setEffMoveKey( spep_1 - 3 + 364, ctga6, -149.8, 188.1 , 0 );

setEffScaleKey( spep_1 - 3 + 350, ctga6, 0.75, 0.75 );
setEffScaleKey( spep_1 - 3 + 352, ctga6, 1.61, 1.61 );
setEffScaleKey( spep_1 - 3 + 354, ctga6, 2.05, 2.05 );
setEffScaleKey( spep_1 - 3 + 356, ctga6, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 358, ctga6, 1.65, 1.65 );
setEffScaleKey( spep_1 - 3 + 360, ctga6, 1.64, 1.64 );
setEffScaleKey( spep_1 - 3 + 362, ctga6, 1.62, 1.62 );
setEffScaleKey( spep_1 - 3 + 364, ctga6, 1.6, 1.6 );

setEffRotateKey( spep_1 - 3 + 350, ctga6, -10.1 );
setEffRotateKey( spep_1 - 3 + 352, ctga6, -23.5 );
setEffRotateKey( spep_1 - 3 + 354, ctga6, -10.1 );
setEffRotateKey( spep_1 - 3 + 356, ctga6, -10.1 );
setEffRotateKey( spep_1 - 3 + 358, ctga6, -10.3 );
setEffRotateKey( spep_1 - 3 + 360, ctga6, -10.2 );
setEffRotateKey( spep_1 - 3 + 362, ctga6, -10.2 );
setEffRotateKey( spep_1 - 3 + 364, ctga6, -10.1 );

setEffAlphaKey( spep_1 - 3 + 350, ctga6, 255 );
setEffAlphaKey( spep_1 - 3 + 358, ctga6, 255 );
setEffAlphaKey( spep_1 - 3 + 360, ctga6, 170 );
setEffAlphaKey( spep_1 - 3 + 362, ctga6, 85 );
setEffAlphaKey( spep_1 - 3 + 364, ctga6, 0 );
]]
ctbago = entryEffectLife( spep_1 - 3 + 362,  10021, 32, 0x100, -1, 0, 67.2, 381.8 );  --バゴォ
setEffMoveKey( spep_1 - 3 + 362, ctbago, 67.2, 381.8 , 0 );
setEffMoveKey( spep_1 - 3 + 364, ctbago, 66.6, 381.1 , 0 );
setEffMoveKey( spep_1 - 3 + 366, ctbago, 67.2, 381.6 , 0 );
setEffMoveKey( spep_1 - 3 + 368, ctbago, 55.8, 406.4 , 0 );
setEffMoveKey( spep_1 - 3 + 370, ctbago, 67.2, 381.7 , 0 );
setEffMoveKey( spep_1 - 3 + 372, ctbago, 56.1, 405.8 , 0 );
setEffMoveKey( spep_1 - 3 + 374, ctbago, 67.3, 381.7 , 0 );
setEffMoveKey( spep_1 - 3 + 376, ctbago, 56.4, 405.2 , 0 );
setEffMoveKey( spep_1 - 3 + 378, ctbago, 67.3, 381.8 , 0 );
setEffMoveKey( spep_1 - 3 + 380, ctbago, 56.8, 404.7 , 0 );
setEffMoveKey( spep_1 - 3 + 382, ctbago, 67.3, 381.8 , 0 );
setEffMoveKey( spep_1 - 3 + 384, ctbago, 67.4, 381.8 , 0 );
setEffMoveKey( spep_1 - 3 + 386, ctbago, 57.6, 403.1 , 0 );
setEffMoveKey( spep_1 - 3 + 388, ctbago, 67.4, 381.9 , 0 );
setEffMoveKey( spep_1 - 3 + 390, ctbago, 58.6, 401.2 , 0 );
setEffMoveKey( spep_1 - 3 + 392, ctbago, 67.5, 382 , 0 );
setEffMoveKey( spep_1 - 3 + 394, ctbago, 67.5, 382.1 , 0 );

setEffScaleKey( spep_1 - 3 + 362, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_1 - 3 + 364, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_1 - 3 + 366, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_1 - 3 + 368, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_1 - 3 + 370, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_1 - 3 + 372, ctbago, 3.09, 3.09 );
setEffScaleKey( spep_1 - 3 + 374, ctbago, 3.05, 3.05 );
setEffScaleKey( spep_1 - 3 + 376, ctbago, 3.01, 3.01 );
setEffScaleKey( spep_1 - 3 + 378, ctbago, 2.97, 2.97 );
setEffScaleKey( spep_1 - 3 + 380, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_1 - 3 + 382, ctbago, 2.89, 2.89 );
setEffScaleKey( spep_1 - 3 + 384, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_1 - 3 + 386, ctbago, 2.72, 2.72 );
setEffScaleKey( spep_1 - 3 + 388, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_1 - 3 + 390, ctbago, 2.46, 2.46 );
setEffScaleKey( spep_1 - 3 + 392, ctbago, 2.33, 2.33 );
setEffScaleKey( spep_1 - 3 + 394, ctbago, 2.2, 2.2 );

setEffRotateKey( spep_1 - 3 + 362, ctbago, 10.8 );
setEffRotateKey( spep_1 - 3 + 394, ctbago, 10.8 );

setEffAlphaKey( spep_1 - 3 + 362, ctbago, 255 );
setEffAlphaKey( spep_1 - 3 + 384, ctbago, 255 );
setEffAlphaKey( spep_1 - 3 + 386, ctbago, 204 );
setEffAlphaKey( spep_1 - 3 + 388, ctbago, 153 );
setEffAlphaKey( spep_1 - 3 + 390, ctbago, 102 );
setEffAlphaKey( spep_1 - 3 + 392, ctbago, 51 );
setEffAlphaKey( spep_1 - 3 + 394, ctbago, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 89, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 - 3 + 92, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen1, 1.17, 1.27 );
setEffScaleKey( spep_1 - 3 + 92, shuchusen1, 1.17, 1.27 );
setEffRotateKey( spep_1 - 3 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 - 3 + 92, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 34, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 36, shuchusen1, 204 );
setEffAlphaKey( spep_1 - 3 + 38, shuchusen1, 153 );
setEffAlphaKey( spep_1 - 3 + 40, shuchusen1, 102 );
setEffAlphaKey( spep_1 - 3 + 42, shuchusen1, 51 );
setEffAlphaKey( spep_1 - 3 + 44, shuchusen1, 0 );
setEffAlphaKey( spep_1 - 3 + 65, shuchusen1, 0 );
setEffAlphaKey( spep_1 - 3 + 66, shuchusen1, 64 );
setEffAlphaKey( spep_1 - 3 + 68, shuchusen1, 112 );
setEffAlphaKey( spep_1 - 3 + 70, shuchusen1, 159 );
setEffAlphaKey( spep_1 - 3 + 72, shuchusen1, 207 );
setEffAlphaKey( spep_1 - 3 + 74, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 86, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 88, shuchusen1, 170 );
setEffAlphaKey( spep_1 - 3 + 90, shuchusen1, 85 );
setEffAlphaKey( spep_1 - 3 + 92, shuchusen1, 0 );


-- ** エフェクト等 ** --
kakuto_f = entryEffectLife( spep_1 + 0, SP_02x, 410, 0x100, -1, 0, 0, 0 );  --格闘前(ef_002)
setEffMoveKey( spep_1 + 0, kakuto_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 410, kakuto_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakuto_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 410, kakuto_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakuto_f, 0 );
setEffRotateKey( spep_1 + 410, nkakuto_f, 0 );
setEffAlphaKey( spep_1 + 0, kakuto_f, 255 );
setEffAlphaKey( spep_1 + 410, kakuto_f, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 395 - 3, 1, 0 );
changeAnime( spep_1 + 0, 1, 108 );
changeAnime( spep_1 - 3 + 50, 1, 105 );
changeAnime( spep_1 - 3 + 130, 1, 106);
changeAnime( spep_1 - 3 + 170, 1, 108 );
changeAnime( spep_1 - 3 + 214, 1, 106 );
changeAnime( spep_1 - 3 + 250, 1, 108 );
changeAnime( spep_1 - 3 + 300, 1, 106 );
changeAnime( spep_1 - 3 + 326, 1, 108 );
changeAnime( spep_1 - 3 + 362, 1, 107 );

setMoveKey( spep_1 + 0, 1, 244.2, -81.3 , 0 );
setMoveKey( spep_1 - 3 + 2, 1, 228.9, -96.8 , 0 );
setMoveKey( spep_1 - 3 + 4, 1, 219.7, -26.2 , 0 );
setMoveKey( spep_1 - 3 + 6, 1, 178.1, -13.4 , 0 );
setMoveKey( spep_1 - 3 + 8, 1, 157.8, 3.2 , 0 );
setMoveKey( spep_1 - 3 + 10, 1, 110.3, -1.7 , 0 );
setMoveKey( spep_1 - 3 + 12, 1, 114.9, 10.6 , 0 );
setMoveKey( spep_1 - 3 + 14, 1, 112, 10.4 , 0 );
setMoveKey( spep_1 - 3 + 16, 1, 118.8, 14.9 , 0 );
setMoveKey( spep_1 - 3 + 18, 1, 118.2, 14.7 , 0 );
setMoveKey( spep_1 - 3 + 20, 1, 122.4, 19.1 , 0 );
setMoveKey( spep_1 - 3 + 22, 1, 117.1, 18.9 , 0 );
setMoveKey( spep_1 - 3 + 24, 1, 125.7, 23.2 , 0 );
setMoveKey( spep_1 - 3 + 26, 1, 125.1, 20.4 , 0 );
setMoveKey( spep_1 - 3 + 28, 1, 128.8, 26.9 , 0 );
setMoveKey( spep_1 - 3 + 30, 1, 128, 26.5 , 0 );
setMoveKey( spep_1 - 3 + 32, 1, 131.6, 30.5 , 0 );
setMoveKey( spep_1 - 3 + 34, 1, 130.7, 32.2 , 0 );
setMoveKey( spep_1 - 3 + 36, 1, 134.1, 33.9 , 0 );
setMoveKey( spep_1 - 3 + 38, 1, 135.3, 33.4 , 0 );
setMoveKey( spep_1 - 3 + 40, 1, 136.4, 37.1 , 0 );
setMoveKey( spep_1 - 3 + 42, 1, 135.4, 36.6 , 0 );
setMoveKey( spep_1 - 3 + 44, 1, 138.4, 40.1 , 0 );
setMoveKey( spep_1 - 3 + 46, 1, 139.3, 41.5 , 0 );
setMoveKey( spep_1 - 3 + 49, 1, 140.1, 42.9 , 0 );
setMoveKey( spep_1 - 3 + 50, 1, 152.5, 49.4 , 0 );
setMoveKey( spep_1 - 3 + 52, 1, 174.6, 66.3 , 0 );
setMoveKey( spep_1 - 3 + 54, 1, 192.8, 80.2 , 0 );
setMoveKey( spep_1 - 3 + 56, 1, 207, 91 , 0 );
setMoveKey( spep_1 - 3 + 58, 1, 217.1, 98.7 , 0 );
setMoveKey( spep_1 - 3 + 60, 1, 223.2, 103.4 , 0 );
setMoveKey( spep_1 - 3 + 62, 1, 225.2, 104.9 , 0 );
setMoveKey( spep_1 - 3 + 64, 1, 226.2, 105.3 , 0 );
setMoveKey( spep_1 - 3 + 66, 1, 225.7, 107.8 , 0 );
setMoveKey( spep_1 - 3 + 68, 1, 225.3, 110.3 , 0 );
setMoveKey( spep_1 - 3 + 70, 1, 224.9, 112.8 , 0 );
setMoveKey( spep_1 - 3 + 72, 1, 224.7, 115.3 , 0 );
setMoveKey( spep_1 - 3 + 74, 1, 224.6, 117.9 , 0 );
setMoveKey( spep_1 - 3 + 76, 1, 227, 121.6 , 0 );
setMoveKey( spep_1 - 3 + 78, 1, 229.4, 125.1 , 0 );
setMoveKey( spep_1 - 3 + 80, 1, 231.8, 128.8 , 0 );
setMoveKey( spep_1 - 3 + 82, 1, 231.4, 127.7 , 0 );
setMoveKey( spep_1 - 3 + 84, 1, 230.9, 126.5 , 0 );
setMoveKey( spep_1 - 3 + 86, 1, 230.4, 125.2 , 0 );
setMoveKey( spep_1 - 3 + 88, 1, 229.8, 124 , 0 );
setMoveKey( spep_1 - 3 + 90, 1, 229.2, 122.8 , 0 );
setMoveKey( spep_1 - 3 + 92, 1, 228.5, 121.6 , 0 );
setMoveKey( spep_1 - 3 + 94, 1, 230.3, 121.4 , 0 );
setMoveKey( spep_1 - 3 + 96, 1, 232, 121.2 , 0 );
setMoveKey( spep_1 - 3 + 98, 1, 233.6, 121.1 , 0 );
setMoveKey( spep_1 - 3 + 100, 1, 235.3, 120.9 , 0 );
setMoveKey( spep_1 - 3 + 102, 1, 236.9, 120.7 , 0 );
setMoveKey( spep_1 - 3 + 104, 1, 238.5, 120.5 , 0 );
setMoveKey( spep_1 - 3 + 106, 1, 240.1, 120.3 , 0 );
setMoveKey( spep_1 - 3 + 108, 1, 241.7, 120.1 , 0 );
setMoveKey( spep_1 - 3 + 110, 1, 243.2, 119.9 , 0 );
setMoveKey( spep_1 - 3 + 112, 1, 244.7, 119.7 , 0 );
setMoveKey( spep_1 - 3 + 114, 1, 246.2, 119.4 , 0 );
setMoveKey( spep_1 - 3 + 116, 1, 247.7, 119.2 , 0 );
setMoveKey( spep_1 - 3 + 118, 1, 249.2, 118.9 , 0 );
setMoveKey( spep_1 - 3 + 120, 1, 250.6, 118.7 , 0 );
setMoveKey( spep_1 - 3 + 122, 1, 252, 118.4 , 0 );
setMoveKey( spep_1 - 3 + 124, 1, 253.4, 118.1 , 0 );
setMoveKey( spep_1 - 3 + 126, 1, 254.8, 117.8 , 0 );
setMoveKey( spep_1 - 3 + 129, 1, 256.2, 117.6 , 0 );
setMoveKey( spep_1 - 3 + 130, 1, -717.2, -573.2 , 0 );
setMoveKey( spep_1 - 3 + 132, 1, -545.7, -424.6 , 0 );
setMoveKey( spep_1 - 3 + 134, 1, -374.2, -276.1 , 0 );
setMoveKey( spep_1 - 3 + 136, 1, -202.7, -127.6 , 0 );
setMoveKey( spep_1 - 3 + 138, 1, -31.2, 21 , 0 );
setMoveKey( spep_1 - 3 + 140, 1, -25.9, 26.5 , 0 );
setMoveKey( spep_1 - 3 + 142, 1, -20.6, 32 , 0 );
setMoveKey( spep_1 - 3 + 144, 1, -15.3, 37.6 , 0 );
setMoveKey( spep_1 - 3 + 146, 1, -10.1, 43.1 , 0 );
setMoveKey( spep_1 - 3 + 148, 1, -4.8, 48.7 , 0 );
setMoveKey( spep_1 - 3 + 150, 1, 0.5, 54.2 , 0 );
setMoveKey( spep_1 - 3 + 152, 1, 5.8, 59.7 , 0 );
setMoveKey( spep_1 - 3 + 154, 1, 11, 65.3 , 0 );
setMoveKey( spep_1 - 3 + 156, 1, 16.3, 70.8 , 0 );
setMoveKey( spep_1 - 3 + 158, 1, 21.6, 76.4 , 0 );
setMoveKey( spep_1 - 3 + 160, 1, 26.9, 81.9 , 0 );
setMoveKey( spep_1 - 3 + 162, 1, 32.1, 87.4 , 0 );
setMoveKey( spep_1 - 3 + 164, 1, 37.4, 93 , 0 );
setMoveKey( spep_1 - 3 + 166, 1, 42.7, 98.5 , 0 );
setMoveKey( spep_1 - 3 + 169, 1, 48, 104.1 , 0 );
setMoveKey( spep_1 - 3 + 170, 1, 92.3, 19.3 , 0 );
setMoveKey( spep_1 - 3 + 172, 1, 84.1, 35.1 , 0 );
setMoveKey( spep_1 - 3 + 174, 1, 45.8, 6.8 , 0 );
setMoveKey( spep_1 - 3 + 176, 1, 47.6, -8 , 0 );
setMoveKey( spep_1 - 3 + 178, 1, 47.9, -19 , 0 );
setMoveKey( spep_1 - 3 + 180, 1, 52.5, -14.2 , 0 );
setMoveKey( spep_1 - 3 + 182, 1, 44.2, -18 , 0 );
setMoveKey( spep_1 - 3 + 184, 1, 53.1, -13.2 , 0 );
setMoveKey( spep_1 - 3 + 186, 1, 49.1, -16.9 , 0 );
setMoveKey( spep_1 - 3 + 188, 1, 53.5, -12.1 , 0 );
setMoveKey( spep_1 - 3 + 190, 1, 45.6, -15.7 , 0 );
setMoveKey( spep_1 - 3 + 192, 1, 54, -11 , 0 );
setMoveKey( spep_1 - 3 + 194, 1, 50.2, -14.5 , 0 );
setMoveKey( spep_1 - 3 + 196, 1, 54.4, -9.9 , 0 );
setMoveKey( spep_1 - 3 + 198, 1, 50.1, -5.7 , 0 );
setMoveKey( spep_1 - 3 + 200, 1, 45.8, -1.4 , 0 );
setMoveKey( spep_1 - 3 + 202, 1, 41.5, 2.8 , 0 );
setMoveKey( spep_1 - 3 + 204, 1, 37.1, 7 , 0 );
setMoveKey( spep_1 - 3 + 206, 1, 37.5, 6.6 , 0 );
setMoveKey( spep_1 - 3 + 208, 1, 37.8, 6.2 , 0 );
setMoveKey( spep_1 - 3 + 210, 1, 38.1, 5.8 , 0 );
setMoveKey( spep_1 - 3 + 213, 1, 38.4, 5.4 , 0 );
setMoveKey( spep_1 - 3 + 214, 1, -39.8, 64 , 0 );
setMoveKey( spep_1 - 3 + 216, 1, -40, 91.6 , 0 );
setMoveKey( spep_1 - 3 + 218, 1, -60, 91.2 , 0 );
setMoveKey( spep_1 - 3 + 220, 1, -48.2, 98.8 , 0 );
setMoveKey( spep_1 - 3 + 222, 1, -53.3, 95.9 , 0 );
setMoveKey( spep_1 - 3 + 224, 1, -50.5, 101 , 0 );
setMoveKey( spep_1 - 3 + 226, 1, -59.6, 98.1 , 0 );
setMoveKey( spep_1 - 3 + 228, 1, -52.8, 103.2 , 0 );
setMoveKey( spep_1 - 3 + 230, 1, -57.9, 100.3 , 0 );
setMoveKey( spep_1 - 3 + 232, 1, -55.1, 105.4 , 0 );
setMoveKey( spep_1 - 3 + 234, 1, -60.2, 102.6 , 0 );
setMoveKey( spep_1 - 3 + 236, 1, -57.4, 107.7 , 0 );
setMoveKey( spep_1 - 3 + 238, 1, -57.1, 105.9 , 0 );
setMoveKey( spep_1 - 3 + 240, 1, -48.9, 112.1 , 0 );
setMoveKey( spep_1 - 3 + 242, 1, -44.7, 114.4 , 0 );
setMoveKey( spep_1 - 3 + 244, 1, -40.4, 116.6 , 0 );
setMoveKey( spep_1 - 3 + 246, 1, -41.1, 117.5 , 0 );
setMoveKey( spep_1 - 3 + 249, 1, -41.7, 118.4 , 0 );
setMoveKey( spep_1 - 3 + 250, 1, 40.8, 54.3 , 0 );
setMoveKey( spep_1 - 3 + 252, 1, 52.9, 72.9 , 0 );
setMoveKey( spep_1 - 3 + 254, 1, 53, 71.5 , 0 );
setMoveKey( spep_1 - 3 + 256, 1, 69.1, 78.1 , 0 );
setMoveKey( spep_1 - 3 + 258, 1, 73.1, 72.6 , 0 );
setMoveKey( spep_1 - 3 + 260, 1, 78.6, 81.2 , 0 );
setMoveKey( spep_1 - 3 + 262, 1, 76.1, 77.7 , 0 );
setMoveKey( spep_1 - 3 + 264, 1, 81.5, 82.3 , 0 );
setMoveKey( spep_1 - 3 + 266, 1, 75, 78.9 , 0 );
setMoveKey( spep_1 - 3 + 268, 1, 84.4, 83.4 , 0 );
setMoveKey( spep_1 - 3 + 270, 1, 81.9, 76 , 0 );
setMoveKey( spep_1 - 3 + 272, 1, 87.3, 84.6 , 0 );
setMoveKey( spep_1 - 3 + 274, 1, 54.6, 63 , 0 );
setMoveKey( spep_1 - 3 + 276, 1, 37.9, 49.4 , 0 );
setMoveKey( spep_1 - 3 + 278, 1, 9.3, 31.8 , 0 );
setMoveKey( spep_1 - 3 + 280, 1, -11.4, 14.2 , 0 );
setMoveKey( spep_1 - 3 + 282, 1, -9.4, 16 , 0 );
setMoveKey( spep_1 - 3 + 284, 1, -7.5, 17.7 , 0 );
setMoveKey( spep_1 - 3 + 286, 1, -5.5, 19.5 , 0 );
setMoveKey( spep_1 - 3 + 288, 1, -3.5, 21.2 , 0 );
setMoveKey( spep_1 - 3 + 290, 1, -1.5, 23 , 0 );
setMoveKey( spep_1 - 3 + 292, 1, 0.4, 24.7 , 0 );
setMoveKey( spep_1 - 3 + 294, 1, -2.2, 18.5 , 0 );
setMoveKey( spep_1 - 3 + 296, 1, -4.9, 12.2 , 0 );
setMoveKey( spep_1 - 3 + 299, 1, -7.6, 5.9 , 0 );
setMoveKey( spep_1 - 3 + 300, 1, -98, -13.2 , 0 );
setMoveKey( spep_1 - 3 + 302, 1, -111.5, -34.3 , 0 );
setMoveKey( spep_1 - 3 + 304, 1, -111.8, -19.4 , 0 );
setMoveKey( spep_1 - 3 + 306, 1, -88, 3.5 , 0 );
setMoveKey( spep_1 - 3 + 308, 1, -67.1, 43.2 , 0 );
setMoveKey( spep_1 - 3 + 310, 1, -61.2, 54.4 , 0 );
setMoveKey( spep_1 - 3 + 312, 1, -71.4, 49.7 , 0 );
setMoveKey( spep_1 - 3 + 314, 1, -57.5, 52.9 , 0 );
setMoveKey( spep_1 - 3 + 316, 1, -55.7, 52.2 , 0 );
setMoveKey( spep_1 - 3 + 318, 1, -53.8, 51.4 , 0 );
setMoveKey( spep_1 - 3 + 320, 1, -52, 50.6 , 0 );
setMoveKey( spep_1 - 3 + 322, 1, -50.1, 49.9 , 0 );
setMoveKey( spep_1 - 3 + 325, 1, -48.3, 49.1 , 0 );
setMoveKey( spep_1 - 3 + 326, 1, -9.5, 68.7 , 0 );
setMoveKey( spep_1 - 3 + 328, 1, -1.9, 63.3 , 0 );
setMoveKey( spep_1 - 3 + 330, 1, -15.3, 39.9 , 0 );
setMoveKey( spep_1 - 3 + 332, 1, 5.9, 27.4 , 0 );
setMoveKey( spep_1 - 3 + 334, 1, 3.2, -31.2 , 0 );
setMoveKey( spep_1 - 3 + 336, 1, 8.1, -14.3 , 0 );
setMoveKey( spep_1 - 3 + 338, 1, 3.8, -20.5 , 0 );
setMoveKey( spep_1 - 3 + 340, 1, 8.7, -8.3 , 0 );
setMoveKey( spep_1 - 3 + 342, 1, -0.3, -9.9 , 0 );
setMoveKey( spep_1 - 3 + 344, 1, 9.3, -2.3 , 0 );
setMoveKey( spep_1 - 3 + 346, 1, 9.5, 0.7 , 0 );
setMoveKey( spep_1 - 3 + 348, 1, 9.8, 3.7 , 0 );
setMoveKey( spep_1 - 3 + 350, 1, 10.1, 6.7 , 0 );
setMoveKey( spep_1 - 3 + 352, 1, 10.4, 9.7 , 0 );
setMoveKey( spep_1 - 3 + 354, 1, 10.7, 12.7 , 0 );
setMoveKey( spep_1 - 3 + 356, 1, 10.9, 15.7 , 0 );
setMoveKey( spep_1 - 3 + 358, 1, 11.2, 18.7 , 0 );
setMoveKey( spep_1 - 3 + 361, 1, 11.5, 21.7 , 0 );
setMoveKey( spep_1 - 3 + 362, 1, -24.9, -89.8 , 0 );
setMoveKey( spep_1 - 3 + 364, 1, -9.4, -68.1 , 0 );
setMoveKey( spep_1 - 3 + 366, 1, -16.5, -79.5 , 0 );
setMoveKey( spep_1 - 3 + 368, 1, 5.7, -78.7 , 0 );
setMoveKey( spep_1 - 3 + 370, 1, 3.8, -106.2 , 0 );
setMoveKey( spep_1 - 3 + 372, 1, 11.1, -87.3 , 0 );
setMoveKey( spep_1 - 3 + 374, 1, 4.6, -96.2 , 0 );
setMoveKey( spep_1 - 3 + 376, 1, 16.4, -95.9 , 0 );
setMoveKey( spep_1 - 3 + 378, 1, 14.5, -109.3 , 0 );
setMoveKey( spep_1 - 3 + 380, 1, 21.6, -104.3 , 0 );
setMoveKey( spep_1 - 3 + 382, 1, 19.7, -112.9 , 0 );
setMoveKey( spep_1 - 3 + 384, 1, 26.8, -112.7 , 0 );
setMoveKey( spep_1 - 3 + 386, 1, 24.8, -116.8 , 0 );
setMoveKey( spep_1 - 3 + 388, 1, 178.7, -416 , 0 );
setMoveKey( spep_1 - 3 + 390, 1, 327.2, -717.7 , 0 );
setMoveKey( spep_1 - 3 + 392, 1, 474.6, -1008.3 , 0 );
setMoveKey( spep_1 - 3 + 395, 1, 621, -1301.4 , 0 );

setScaleKey( spep_1 + 0, 1, 7.41, 7.41 );
setScaleKey( spep_1 - 3 + 2, 1, 6.3, 6.3 );
setScaleKey( spep_1 - 3 + 4, 1, 5.2, 5.2 );
setScaleKey( spep_1 - 3 + 6, 1, 4.12, 4.12 );
setScaleKey( spep_1 - 3 + 8, 1, 3.05, 3.05 );
setScaleKey( spep_1 - 3 + 10, 1, 1.99, 1.99 );
setScaleKey( spep_1 - 3 + 12, 1, 1.97, 1.97 );
setScaleKey( spep_1 - 3 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_1 - 3 + 16, 1, 1.93, 1.93 );
setScaleKey( spep_1 - 3 + 18, 1, 1.91, 1.91 );
setScaleKey( spep_1 - 3 + 20, 1, 1.88, 1.88 );
setScaleKey( spep_1 - 3 + 22, 1, 1.86, 1.86 );
setScaleKey( spep_1 - 3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_1 - 3 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_1 - 3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_1 - 3 + 30, 1, 1.77, 1.77 );
setScaleKey( spep_1 - 3 + 32, 1, 1.75, 1.75 );
setScaleKey( spep_1 - 3 + 34, 1, 1.73, 1.73 );
setScaleKey( spep_1 - 3 + 36, 1, 1.71, 1.71 );
setScaleKey( spep_1 - 3 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_1 - 3 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_1 - 3 + 42, 1, 1.64, 1.64 );
setScaleKey( spep_1 - 3 + 44, 1, 1.62, 1.62 );
setScaleKey( spep_1 - 3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_1 - 3 + 49, 1, 1.58, 1.58 );
setScaleKey( spep_1 - 3 + 50, 1, 1.21, 1.21 );
setScaleKey( spep_1 - 3 + 52, 1, 0.92, 0.92 );
setScaleKey( spep_1 - 3 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_1 - 3 + 56, 1, 0.48, 0.48 );
setScaleKey( spep_1 - 3 + 58, 1, 0.35, 0.35 );
setScaleKey( spep_1 - 3 + 60, 1, 0.27, 0.27 );
setScaleKey( spep_1 - 3 + 62, 1, 0.24, 0.24 );
setScaleKey( spep_1 - 3 + 66, 1, 0.24, 0.24 );
setScaleKey( spep_1 - 3 + 68, 1, 0.25, 0.25 );
setScaleKey( spep_1 - 3 + 70, 1, 0.26, 0.26 );
setScaleKey( spep_1 - 3 + 72, 1, 0.26, 0.26 );
setScaleKey( spep_1 - 3 + 74, 1, 0.27, 0.27 );
setScaleKey( spep_1 - 3 + 76, 1, 0.26, 0.26 );
setScaleKey( spep_1 - 3 + 80, 1, 0.26, 0.26 );
setScaleKey( spep_1 - 3 + 82, 1, 0.25, 0.25 );
setScaleKey( spep_1 - 3 + 84, 1, 0.24, 0.24 );
setScaleKey( spep_1 - 3 + 86, 1, 0.23, 0.23 );
setScaleKey( spep_1 - 3 + 88, 1, 0.22, 0.22 );
setScaleKey( spep_1 - 3 + 90, 1, 0.22, 0.22 );
setScaleKey( spep_1 - 3 + 92, 1, 0.21, 0.21 );
setScaleKey( spep_1 - 3 + 94, 1, 0.2, 0.2 );
setScaleKey( spep_1 - 3 + 96, 1, 0.19, 0.19 );
setScaleKey( spep_1 - 3 + 98, 1, 0.19, 0.19 );
setScaleKey( spep_1 - 3 + 100, 1, 0.18, 0.18 );
setScaleKey( spep_1 - 3 + 102, 1, 0.17, 0.17 );
setScaleKey( spep_1 - 3 + 104, 1, 0.17, 0.17 );
setScaleKey( spep_1 - 3 + 106, 1, 0.16, 0.16 );
setScaleKey( spep_1 - 3 + 108, 1, 0.16, 0.16 );
setScaleKey( spep_1 - 3 + 110, 1, 0.15, 0.15 );
setScaleKey( spep_1 - 3 + 112, 1, 0.14, 0.14 );
setScaleKey( spep_1 - 3 + 114, 1, 0.14, 0.14 );
setScaleKey( spep_1 - 3 + 116, 1, 0.13, 0.13 );
setScaleKey( spep_1 - 3 + 118, 1, 0.13, 0.13 );
setScaleKey( spep_1 - 3 + 120, 1, 0.12, 0.12 );
setScaleKey( spep_1 - 3 + 122, 1, 0.12, 0.12 );
setScaleKey( spep_1 - 3 + 124, 1, 0.11, 0.11 );
setScaleKey( spep_1 - 3 + 126, 1, 0.11, 0.11 );
setScaleKey( spep_1 - 3 + 129, 1, 0.1, 0.1 );
setScaleKey( spep_1 - 3 + 130, 1, 4.33, 4.33 );
setScaleKey( spep_1 - 3 + 132, 1, 3.62, 3.62 );
setScaleKey( spep_1 - 3 + 134, 1, 2.9, 2.9 );
setScaleKey( spep_1 - 3 + 136, 1, 2.19, 2.19 );
setScaleKey( spep_1 - 3 + 138, 1, 1.48, 1.48 );
setScaleKey( spep_1 - 3 + 140, 1, 1.47, 1.47 );
setScaleKey( spep_1 - 3 + 142, 1, 1.46, 1.46 );
setScaleKey( spep_1 - 3 + 144, 1, 1.45, 1.45 );
setScaleKey( spep_1 - 3 + 146, 1, 1.44, 1.44 );
setScaleKey( spep_1 - 3 + 148, 1, 1.43, 1.43 );
setScaleKey( spep_1 - 3 + 150, 1, 1.42, 1.42 );
setScaleKey( spep_1 - 3 + 152, 1, 1.41, 1.41 );
setScaleKey( spep_1 - 3 + 154, 1, 1.4, 1.4 );
setScaleKey( spep_1 - 3 + 156, 1, 1.38, 1.38 );
setScaleKey( spep_1 - 3 + 158, 1, 1.37, 1.37 );
setScaleKey( spep_1 - 3 + 160, 1, 1.36, 1.36 );
setScaleKey( spep_1 - 3 + 162, 1, 1.35, 1.35 );
setScaleKey( spep_1 - 3 + 164, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 166, 1, 1.33, 1.33 );
setScaleKey( spep_1 - 3 + 169, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 170, 1, 2.25, 2.25 );
setScaleKey( spep_1 - 3 + 172, 1, 1.97, 1.97 );
setScaleKey( spep_1 - 3 + 174, 1, 1.69, 1.69 );
setScaleKey( spep_1 - 3 + 176, 1, 1.41, 1.41 );
setScaleKey( spep_1 - 3 + 178, 1, 1.4, 1.4 );
setScaleKey( spep_1 - 3 + 180, 1, 1.39, 1.39 );
setScaleKey( spep_1 - 3 + 182, 1, 1.37, 1.37 );
setScaleKey( spep_1 - 3 + 184, 1, 1.36, 1.36 );
setScaleKey( spep_1 - 3 + 186, 1, 1.35, 1.35 );
setScaleKey( spep_1 - 3 + 188, 1, 1.33, 1.33 );
setScaleKey( spep_1 - 3 + 190, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 192, 1, 1.31, 1.31 );
setScaleKey( spep_1 - 3 + 194, 1, 1.3, 1.3 );
setScaleKey( spep_1 - 3 + 196, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 213, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 214, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 249, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 250, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 254, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 256, 1, 1.33, 1.33 );
setScaleKey( spep_1 - 3 + 268, 1, 1.33, 1.33 );
setScaleKey( spep_1 - 3 + 270, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 299, 1, 1.34, 1.34 );
setScaleKey( spep_1 - 3 + 300, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 325, 1, 1.32, 1.32 );
setScaleKey( spep_1 - 3 + 326, 1, 1.26, 1.26 );
setScaleKey( spep_1 - 3 + 328, 1, 1.31, 1.31 );
setScaleKey( spep_1 - 3 + 330, 1, 1.36, 1.36 );
setScaleKey( spep_1 - 3 + 332, 1, 1.41, 1.41 );
setScaleKey( spep_1 - 3 + 334, 1, 1.47, 1.47 );
setScaleKey( spep_1 - 3 + 336, 1, 1.47, 1.47 );
setScaleKey( spep_1 - 3 + 338, 1, 1.48, 1.48 );
setScaleKey( spep_1 - 3 + 340, 1, 1.48, 1.48 );
setScaleKey( spep_1 - 3 + 342, 1, 1.49, 1.49 );
setScaleKey( spep_1 - 3 + 344, 1, 1.49, 1.49 );
setScaleKey( spep_1 - 3 + 346, 1, 1.5, 1.5 );
setScaleKey( spep_1 - 3 + 348, 1, 1.5, 1.5 );
setScaleKey( spep_1 - 3 + 350, 1, 1.51, 1.51 );
setScaleKey( spep_1 - 3 + 352, 1, 1.51, 1.51 );
setScaleKey( spep_1 - 3 + 354, 1, 1.52, 1.52 );
setScaleKey( spep_1 - 3 + 356, 1, 1.52, 1.52 );
setScaleKey( spep_1 - 3 + 358, 1, 1.53, 1.53 );
setScaleKey( spep_1 - 3 + 361, 1, 1.53, 1.53 );
setScaleKey( spep_1 - 3 + 362, 1, 0.84, 0.84 );
setScaleKey( spep_1 - 3 + 364, 1, 0.81, 0.81 );
setScaleKey( spep_1 - 3 + 366, 1, 0.77, 0.77 );
setScaleKey( spep_1 - 3 + 368, 1, 0.73, 0.73 );
setScaleKey( spep_1 - 3 + 386, 1, 0.73, 0.73 );
setScaleKey( spep_1 - 3 + 388, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 390, 1, 1.82, 1.82 );
setScaleKey( spep_1 - 3 + 392, 1, 2.36, 2.36 );
setScaleKey( spep_1 - 3 + 395, 1, 2.9, 2.9 );

setRotateKey( spep_1 + 0, 1, -10.5 );
setRotateKey( spep_1 - 3 + 2, 1, -10.1 );
setRotateKey( spep_1 - 3 + 4, 1, -9.8 );
setRotateKey( spep_1 - 3 + 6, 1, -9.5 );
setRotateKey( spep_1 - 3 + 8, 1, -9.1 );
setRotateKey( spep_1 - 3 + 10, 1, -8.8 );
setRotateKey( spep_1 - 3 + 12, 1, -8.9 );
setRotateKey( spep_1 - 3 + 14, 1, -9.1 );
setRotateKey( spep_1 - 3 + 16, 1, -9.2 );
setRotateKey( spep_1 - 3 + 18, 1, -9.4 );
setRotateKey( spep_1 - 3 + 20, 1, -9.5 );
setRotateKey( spep_1 - 3 + 22, 1, -9.6 );
setRotateKey( spep_1 - 3 + 24, 1, -9.8 );
setRotateKey( spep_1 - 3 + 26, 1, -9.9 );
setRotateKey( spep_1 - 3 + 28, 1, -10.1 );
setRotateKey( spep_1 - 3 + 30, 1, -10.2 );
setRotateKey( spep_1 - 3 + 32, 1, -10.3 );
setRotateKey( spep_1 - 3 + 34, 1, -10.5 );
setRotateKey( spep_1 - 3 + 36, 1, -10.6 );
setRotateKey( spep_1 - 3 + 38, 1, -10.8 );
setRotateKey( spep_1 - 3 + 40, 1, -10.9 );
setRotateKey( spep_1 - 3 + 42, 1, -11 );
setRotateKey( spep_1 - 3 + 44, 1, -11.2 );
setRotateKey( spep_1 - 3 + 46, 1, -11.3 );
setRotateKey( spep_1 - 3 + 49, 1, -11.5 );
setRotateKey( spep_1 - 3 + 50, 1, 33.4 );
setRotateKey( spep_1 - 3 + 52, 1, 29.8 );
setRotateKey( spep_1 - 3 + 54, 1, 27 );
setRotateKey( spep_1 - 3 + 56, 1, 24.7 );
setRotateKey( spep_1 - 3 + 58, 1, 23.1 );
setRotateKey( spep_1 - 3 + 60, 1, 22.2 );
setRotateKey( spep_1 - 3 + 62, 1, 21.8 );
setRotateKey( spep_1 - 3 + 70, 1, 21.8 );
setRotateKey( spep_1 - 3 + 72, 1, 21.7 );
setRotateKey( spep_1 - 3 + 80, 1, 21.7 );
setRotateKey( spep_1 - 3 + 82, 1, 21.6 );
setRotateKey( spep_1 - 3 + 90, 1, 21.6 );
setRotateKey( spep_1 - 3 + 92, 1, 21.5 );
setRotateKey( spep_1 - 3 + 102, 1, 21.5 );
setRotateKey( spep_1 - 3 + 104, 1, 21.4 );
setRotateKey( spep_1 - 3 + 112, 1, 21.4 );
setRotateKey( spep_1 - 3 + 114, 1, 21.3 );
setRotateKey( spep_1 - 3 + 124, 1, 21.3 );
setRotateKey( spep_1 - 3 + 126, 1, 21.2 );
setRotateKey( spep_1 - 3 + 129, 1, 21.2 );
setRotateKey( spep_1 - 3 + 130, 1, -23.2 );
setRotateKey( spep_1 - 3 + 132, 1, -17.9 );
setRotateKey( spep_1 - 3 + 134, 1, -12.6 );
setRotateKey( spep_1 - 3 + 136, 1, -7.3 );
setRotateKey( spep_1 - 3 + 138, 1, -2 );
setRotateKey( spep_1 - 3 + 140, 1, -1.8 );
setRotateKey( spep_1 - 3 + 142, 1, -1.6 );
setRotateKey( spep_1 - 3 + 144, 1, -1.4 );
setRotateKey( spep_1 - 3 + 146, 1, -1.2 );
setRotateKey( spep_1 - 3 + 148, 1, -1 );
setRotateKey( spep_1 - 3 + 150, 1, -0.8 );
setRotateKey( spep_1 - 3 + 152, 1, -0.6 );
setRotateKey( spep_1 - 3 + 154, 1, -0.4 );
setRotateKey( spep_1 - 3 + 156, 1, -0.2 );
setRotateKey( spep_1 - 3 + 158, 1, 0 );
setRotateKey( spep_1 - 3 + 160, 1, 0.2 );
setRotateKey( spep_1 - 3 + 162, 1, 0.4 );
setRotateKey( spep_1 - 3 + 164, 1, 0.6 );
setRotateKey( spep_1 - 3 + 166, 1, 0.8 );
setRotateKey( spep_1 - 3 + 169, 1, 1 );
setRotateKey( spep_1 - 3 + 170, 1, 43.2 );
setRotateKey( spep_1 - 3 + 213, 1, 43.2 );
setRotateKey( spep_1 - 3 + 214, 1, -13.2 );
setRotateKey( spep_1 - 3 + 216, 1, -13.1 );
setRotateKey( spep_1 - 3 + 240, 1, -13.1 );
setRotateKey( spep_1 - 3 + 242, 1, -13.2 );
setRotateKey( spep_1 - 3 + 249, 1, -13.2 );
setRotateKey( spep_1 - 3 + 250, 1, -9.2 );
setRotateKey( spep_1 - 3 + 252, 1, -9.2 );
setRotateKey( spep_1 - 3 + 254, 1, -9.1 );
setRotateKey( spep_1 - 3 + 280, 1, -9.1 );
setRotateKey( spep_1 - 3 + 282, 1, -9.2 );
setRotateKey( spep_1 - 3 + 299, 1, -9.2 );
setRotateKey( spep_1 - 3 + 300, 1, -98.8 );
setRotateKey( spep_1 - 3 + 302, 1, -104 );
setRotateKey( spep_1 - 3 + 304, 1, -109.1 );
setRotateKey( spep_1 - 3 + 306, 1, -114.3 );
setRotateKey( spep_1 - 3 + 308, 1, -114.9 );
setRotateKey( spep_1 - 3 + 310, 1, -115.5 );
setRotateKey( spep_1 - 3 + 312, 1, -116 );
setRotateKey( spep_1 - 3 + 314, 1, -116.6 );
setRotateKey( spep_1 - 3 + 316, 1, -117.2 );
setRotateKey( spep_1 - 3 + 318, 1, -117.8 );
setRotateKey( spep_1 - 3 + 320, 1, -118.3 );
setRotateKey( spep_1 - 3 + 322, 1, -118.9 );
setRotateKey( spep_1 - 3 + 325, 1, -119.5 );
setRotateKey( spep_1 - 3 + 326, 1, -76.2 );
setRotateKey( spep_1 - 3 + 361, 1, -76.2 );
setRotateKey( spep_1 - 3 + 362, 1, 16 );
setRotateKey( spep_1 - 3 + 364, 1, 15.9 );
setRotateKey( spep_1 - 3 + 366, 1, 15.9 );
setRotateKey( spep_1 - 3 + 368, 1, 15.8 );
setRotateKey( spep_1 - 3 + 372, 1, 15.8 );
setRotateKey( spep_1 - 3 + 374, 1, 15.9 );
setRotateKey( spep_1 - 3 + 380, 1, 15.9 );
setRotateKey( spep_1 - 3 + 382, 1, 16 );
setRotateKey( spep_1 - 3 + 386, 1, 16 );
setRotateKey( spep_1 - 3 + 388, 1, 14.6 );
setRotateKey( spep_1 - 3 + 390, 1, 13.3 );
setRotateKey( spep_1 - 3 + 392, 1, 11.9 );
setRotateKey( spep_1 - 3 + 395, 1, 10.5 );


ryusen = entryEffectLife( spep_1 - 3 + 130,  914, 50, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 - 3 + 130, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 - 3 + 180, ryusen, 0, 0 , 0 );
setEffScaleKey( spep_1 - 3 + 130, ryusen, 2.75, 1.22 );
setEffScaleKey( spep_1 - 3 + 180, ryusen, 2.75, 1.22 );
setEffRotateKey( spep_1 - 3 + 130, ryusen, -54 );
setEffRotateKey( spep_1 - 3 + 180, ryusen, -54 );
setEffAlphaKey( spep_1 - 3 + 130, ryusen, 128 );
setEffAlphaKey( spep_1 - 3 + 166, ryusen, 128 );
setEffAlphaKey( spep_1 - 3 + 168, ryusen, 109 );
setEffAlphaKey( spep_1 - 3 + 170, ryusen, 91 );
setEffAlphaKey( spep_1 - 3 + 172, ryusen, 73 );
setEffAlphaKey( spep_1 - 3 + 174, ryusen, 55 );
setEffAlphaKey( spep_1 - 3 + 176, ryusen, 36 );
setEffAlphaKey( spep_1 - 3 + 178, ryusen, 18 );
setEffAlphaKey( spep_1 - 3 + 180, ryusen, 0 );


kakuto_b = entryEffectLife( spep_1 + 0, SP_03x, 410, 0x80, -1, 0, 0, 0 );  --格闘後ろ(ef_003)
setEffMoveKey( spep_1 + 0, kakuto_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 410, kakuto_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakuto_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 410, kakuto_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakuto_b, 0 );
setEffRotateKey( spep_1 + 410, kakuto_b, 0 );
setEffAlphaKey( spep_1 + 0, kakuto_b, 255 );
setEffAlphaKey( spep_1 + 410, kakuto_b, 255 );




-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 410, 0, 0, 0, 0, 255 );  --黒　背景

entryFade( spep_1 + 400, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
playSe( spep_1 + 0,  1011);  --殴る
playSe( spep_1 + 68,  1035);-- 気溜
playSe( spep_1 + 70,  9);
playSe( spep_1 - 3 + 170, 1120 );  --蹴り
playSe( spep_1 + 170, 1010 );  --蹴り
playSe( spep_1 + 200, 43);  --瞬間移動
playSe( spep_1 - 3 + 214, 1001);  --
playSe( spep_1 - 3 + 222, 1000);  --
playSe( spep_1 - 3 + 230, 1001);  --*
playSe( spep_1 + 200,  43);  -- *
playSe( spep_1 - 3 + 210, 1009);
playSe( spep_1 - 3 + 230, 1000);
playSe( spep_1 - 3 + 250, 1000);
playSe( spep_1 - 3 + 260, 1001);
playSe( spep_1 + 280,  43);  -- *
playSe( spep_1 + 292,  1003);
playSe( spep_1 - 3 + 300, 1010);
playSe( spep_1 - 3 + 326, 1009);
playSe( spep_1 - 3 + 362, 1011);
-- ** 次の準備 ** --
spep_2 = spep_1 + 410;

------------------------------------------------------
--  カードカットイン(90F)
------------------------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
--  構え(160F)
------------------------------------------------------
-- ** 書き文字 ** --
ctzuo = entryEffectLife( spep_3 - 3 + 48,  10012, 56, 0x100, -1, 0, 71.2, 379.6 );  --ズオ
setEffMoveKey( spep_3 - 3 + 48, ctzuo, 71.2, 379.6 , 0 );
setEffMoveKey( spep_3 - 3 + 50, ctzuo, 89.9, 372.1 , 0 );
setEffMoveKey( spep_3 - 3 + 52, ctzuo, 88, 383.9 , 0 );
setEffMoveKey( spep_3 - 3 + 54, ctzuo, 119.5, 364.5 , 0 );
setEffMoveKey( spep_3 - 3 + 56, ctzuo, 95.1, 385.9 , 0 );
setEffMoveKey( spep_3 - 3 + 58, ctzuo, 115.4, 365.6 , 0 );
setEffMoveKey( spep_3 - 3 + 60, ctzuo, 92.8, 385.3 , 0 );
setEffMoveKey( spep_3 - 3 + 62, ctzuo, 111.3, 366.6 , 0 );
setEffMoveKey( spep_3 - 3 + 64, ctzuo, 90.5, 384.7 , 0 );
setEffMoveKey( spep_3 - 3 + 66, ctzuo, 107.1, 367.7 , 0 );
setEffMoveKey( spep_3 - 3 + 68, ctzuo, 89.2, 384.4 , 0 );
setEffMoveKey( spep_3 - 3 + 70, ctzuo, 106.6, 367.8 , 0 );
setEffMoveKey( spep_3 - 3 + 72, ctzuo, 88.8, 384.3 , 0 );
setEffMoveKey( spep_3 - 3 + 74, ctzuo, 106, 368 , 0 );
setEffMoveKey( spep_3 - 3 + 76, ctzuo, 88.5, 384.2 , 0 );
setEffMoveKey( spep_3 - 3 + 78, ctzuo, 105.5, 368.1 , 0 );
setEffMoveKey( spep_3 - 3 + 80, ctzuo, 88.2, 384.1 , 0 );
setEffMoveKey( spep_3 - 3 + 82, ctzuo, 104.9, 368.3 , 0 );
setEffMoveKey( spep_3 - 3 + 84, ctzuo, 87.9, 384 , 0 );
setEffMoveKey( spep_3 - 3 + 86, ctzuo, 104.4, 368.4 , 0 );
setEffMoveKey( spep_3 - 3 + 88, ctzuo, 87.6, 384 , 0 );
setEffMoveKey( spep_3 - 3 + 90, ctzuo, 103.8, 368.6 , 0 );
setEffMoveKey( spep_3 - 3 + 92, ctzuo, 87.3, 383.9 , 0 );
setEffMoveKey( spep_3 - 3 + 94, ctzuo, 87.1, 383.8 , 0 );
setEffMoveKey( spep_3 - 3 + 96, ctzuo, 114, 365.9 , 0 );
setEffMoveKey( spep_3 - 3 + 98, ctzuo, 99.2, 387 , 0 );
setEffMoveKey( spep_3 - 3 + 100, ctzuo, 135.5, 360.3 , 0 );
setEffMoveKey( spep_3 - 3 + 102, ctzuo, 111.3, 390.2 , 0 );
setEffMoveKey( spep_3 - 3 + 104, ctzuo, 117.4, 391.8 , 0 );

setEffScaleKey( spep_3 - 3 + 48, ctzuo, 0.64, 0.64 );
setEffScaleKey( spep_3 - 3 + 50, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_3 - 3 + 52, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_3 - 3 + 54, ctzuo, 3.83, 3.83 );
setEffScaleKey( spep_3 - 3 + 56, ctzuo, 3.69, 3.69 );
setEffScaleKey( spep_3 - 3 + 58, ctzuo, 3.54, 3.54 );
setEffScaleKey( spep_3 - 3 + 60, ctzuo, 3.39, 3.39 );
setEffScaleKey( spep_3 - 3 + 62, ctzuo, 3.24, 3.24 );
setEffScaleKey( spep_3 - 3 + 64, ctzuo, 3.1, 3.1 );
setEffScaleKey( spep_3 - 3 + 66, ctzuo, 2.95, 2.95 );
setEffScaleKey( spep_3 - 3 + 68, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_3 - 3 + 70, ctzuo, 2.91, 2.91 );
setEffScaleKey( spep_3 - 3 + 72, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_3 - 3 + 74, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_3 - 3 + 76, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_3 - 3 + 78, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_3 - 3 + 80, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_3 - 3 + 82, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_3 - 3 + 84, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_3 - 3 + 86, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_3 - 3 + 88, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3 - 3 + 90, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_3 - 3 + 92, ctzuo, 2.69, 2.69 );
setEffScaleKey( spep_3 - 3 + 94, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_3 - 3 + 96, ctzuo, 3.44, 3.44 );
setEffScaleKey( spep_3 - 3 + 98, ctzuo, 4.21, 4.21 );
setEffScaleKey( spep_3 - 3 + 100, ctzuo, 4.99, 4.99 );
setEffScaleKey( spep_3 - 3 + 102, ctzuo, 5.76, 5.76 );
setEffScaleKey( spep_3 - 3 + 104, ctzuo, 6.53, 6.53 );

setEffRotateKey( spep_3 - 3 + 48, ctzuo, 25.3 );
setEffRotateKey( spep_3 - 3 + 56, ctzuo, 25.3 );
setEffRotateKey( spep_3 - 3 + 58, ctzuo, 25.4 );
setEffRotateKey( spep_3 - 3 + 88, ctzuo, 25.4 );
setEffRotateKey( spep_3 - 3 + 104, ctzuo, 25.3 );

setEffAlphaKey( spep_3 - 3 + 48, ctzuo, 255 );
setEffAlphaKey( spep_3 - 3 + 94, ctzuo, 255 );
setEffAlphaKey( spep_3 - 3 + 96, ctzuo, 204 );
setEffAlphaKey( spep_3 - 3 + 98, ctzuo, 153 );
setEffAlphaKey( spep_3 - 3 + 100, ctzuo, 102 );
setEffAlphaKey( spep_3 - 3 + 102, ctzuo, 51 );
setEffAlphaKey( spep_3 - 3 + 104, ctzuo, 0 );


-- ** 敵の動き ** --

setDisp(spep_3 -3 +110,  1,  1);
setDisp(spep_3 -3 +158,  1,  0);
changeAnime( spep_3 - 3 + 110,  1, 106);

setMoveKey( spep_3 - 3 + 110, 1, -532.9, 979.9 , 0 );
setMoveKey( spep_3 - 3 + 112, 1, -457.3, 850.1 , 0 );
setMoveKey( spep_3 - 3 + 114, 1, -381.7, 720.2 , 0 );
setMoveKey( spep_3 - 3 + 116, 1, -306.2, 590.3 , 0 );
setMoveKey( spep_3 - 3 + 118, 1, -230.6, 460.5 , 0 );
setMoveKey( spep_3 - 3 + 120, 1, -155, 330.6 , 0 );
setMoveKey( spep_3 - 3 + 122, 1, -79.5, 200.7 , 0 );
setMoveKey( spep_3 - 3 + 124, 1, -3.9, 70.8 , 0 );
setMoveKey( spep_3 - 3 + 126, 1, 4.3, 56.7 , 0 );
setMoveKey( spep_3 - 3 + 128, 1, 12.6, 42.6 , 0 );
setMoveKey( spep_3 - 3 + 130, 1, 20.8, 28.4 , 0 );
setMoveKey( spep_3 - 3 + 132, 1, 29.1, 14.3 , 0 );
setMoveKey( spep_3 - 3 + 134, 1, 37.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 136, 1, 45.6, -14 , 0 );
setMoveKey( spep_3 - 3 + 138, 1, 53.8, -28.2 , 0 );
setMoveKey( spep_3 - 3 + 140, 1, 62, -42.3 , 0 );
setMoveKey( spep_3 - 3 + 142, 1, 70.3, -56.5 , 0 );
setMoveKey( spep_3 - 3 + 144, 1, 78.5, -70.6 , 0 );
setMoveKey( spep_3 - 3 + 146, 1, 86.7, -84.8 , 0 );
setMoveKey( spep_3 - 3 + 148, 1, 95, -98.9 , 0 );
setMoveKey( spep_3 - 3 + 150, 1, 103.2, -113.1 , 0 );
setMoveKey( spep_3 - 3 + 152, 1, 111.4, -127.2 , 0 );
setMoveKey( spep_3 - 3 + 154, 1, 119.7, -141.4 , 0 );
setMoveKey( spep_3 - 3 + 156, 1, 127.9, -155.5 , 0 );
setMoveKey( spep_3 - 3 + 158, 1, 136.1, -169.7 , 0 );

setScaleKey( spep_3 - 3 + 110, 1, 0.28, 0.28 );
setScaleKey( spep_3 - 3 + 112, 1, 0.39, 0.39 );
setScaleKey( spep_3 - 3 + 114, 1, 0.49, 0.49 );
setScaleKey( spep_3 - 3 + 116, 1, 0.6, 0.6 );
setScaleKey( spep_3 - 3 + 118, 1, 0.71, 0.71 );
setScaleKey( spep_3 - 3 + 120, 1, 0.82, 0.82 );
setScaleKey( spep_3 - 3 + 122, 1, 0.93, 0.93 );
setScaleKey( spep_3 - 3 + 124, 1, 1.04, 1.04 );
setScaleKey( spep_3 - 3 + 126, 1, 1.07, 1.07 );
setScaleKey( spep_3 - 3 + 128, 1, 1.1, 1.1 );
setScaleKey( spep_3 - 3 + 130, 1, 1.13, 1.13 );
setScaleKey( spep_3 - 3 + 132, 1, 1.16, 1.16 );
setScaleKey( spep_3 - 3 + 134, 1, 1.19, 1.19 );
setScaleKey( spep_3 - 3 + 136, 1, 1.22, 1.22 );
setScaleKey( spep_3 - 3 + 138, 1, 1.25, 1.25 );
setScaleKey( spep_3 - 3 + 140, 1, 1.27, 1.27 );
setScaleKey( spep_3 - 3 + 142, 1, 1.3, 1.3 );
setScaleKey( spep_3 - 3 + 144, 1, 1.33, 1.33 );
setScaleKey( spep_3 - 3 + 146, 1, 1.36, 1.36 );
setScaleKey( spep_3 - 3 + 148, 1, 1.39, 1.39 );
setScaleKey( spep_3 - 3 + 150, 1, 1.42, 1.42 );
setScaleKey( spep_3 - 3 + 152, 1, 1.45, 1.45 );
setScaleKey( spep_3 - 3 + 154, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 156, 1, 1.51, 1.51 );
setScaleKey( spep_3 - 3 + 158, 1, 1.54, 1.54 );
setRotateKey( spep_3 - 3 + 110, 1, 75.3 );
setRotateKey( spep_3 - 3 + 112, 1, 75.2 );
setRotateKey( spep_3 - 3 + 156, 1, 75.2 );
setRotateKey( spep_3 - 3 + 158, 1, 75.3 );

-- ** エフェクト等 ** --
kamae_f = entryEffectLife( spep_3 + 0, SP_04x, 160, 0x80, -1, 0, 0, 0 );  --気弾構え(ef_004)
setEffMoveKey( spep_3 + 0, kamae_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, kamae_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, kamae_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamae_f, 0 );
setEffRotateKey( spep_3 + 160, kamae_f, 0 );
setEffAlphaKey( spep_3 + 0, kamae_f, 255 );
setEffAlphaKey( spep_3 + 160, kamae_f, 255 );


-- ** 白フェード ** --
entryFade( spep_3 + 48 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 154 , 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 +0,  1004);
playSe( spep_3 +48,  1021);
playSe( spep_3 + 110 - 3,  1022);


-- ** 次の準備 ** --
spep_4 = spep_3 + 160;

------------------------------------------------------
--  爆発(220F)
------------------------------------------------------


-- ** 集中線 **  --
shuchusen3 = entryEffectLife( spep_4 + 40,  906, 130, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 40, shuchusen3, 1.17, 1.27 );
setEffScaleKey( spep_4 + 170, shuchusen3, 1.17, 1.27 );
setEffRotateKey( spep_4 + 40, shuchusen3, 0 );
setEffRotateKey( spep_4 + 170, shuchusen3, 0 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 170, shuchusen3, 255 );

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --気弾構え(ef_004)
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 170, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 170, bakuhatsu, 255 );

entryFade( spep_4 + 40 , 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 **  --
playSe( spep_4 + 0,  1023);
playSe( spep_4 + 50,  1024);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 50 );
endPhase( spep_4 + 160 );

end
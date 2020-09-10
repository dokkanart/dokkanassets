--1015250:魔人ブウ(悪)_バイスシャウト
--sp_effect_a9_00064

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

--エフェクト(味方)
SP_01=	155391	;--	気だめ
SP_02=	155393	;--	上半身アップ
SP_03=	155394	;--	バイスシャウト
SP_04=	155395	;--	敵吸い込まれる渦
SP_05=	155396	;--	敵吸い込まれる渦
SP_06=	155397	;--	フィニッシュ　背景

--エフェクト(てき)
SP_01x=	155392	;--	気だめ	(敵)
SP_02x=	155393	;--	上半身アップ	
SP_03x=	155394	;--	バイスシャウト	
SP_04x=	155395	;--	敵吸い込まれる渦	
SP_05x=	155396	;--	敵吸い込まれる渦	
SP_06x=	155397	;--	フィニッシュ　背景	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気だめ
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 240, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 240, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 240, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 240, tame, 255 );

--SE
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 50 );
playSe( spep_0 + 39, 1002 );
se_1240 = playSe( spep_0 + 52, 1240 );
playSe( spep_0 + 176, 1072 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 242, 0, 0, 0, 0, 255 );

--白フェード
entryFade( spep_0+232 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+240;
------------------------------------------------------
-- 上半身アップ
------------------------------------------------------
-- ** エフェクト等 ** --
bust = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, bust, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, bust, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, bust, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, bust, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bust, 0 );
setEffRotateKey( spep_1 + 100, bust, 0 );
setEffAlphaKey( spep_1 + 0, bust, 255 );
setEffAlphaKey( spep_1 + 100, bust, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchusen1, 98, 20 );
setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_1 + 98, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen1, 255 );

--文字エントリー
ctgogogo = entryEffectLife( spep_1-3 + 16,  190006, 82, 0x100, -1, 0, -22.3, 458.2 );
setEffShake( spep_1-3 + 16, ctgogogo, 82, 10 );
setEffMoveKey( spep_1-3 + 16, ctgogogo, -22.3, 458.2 , 0 );
setEffMoveKey( spep_1-3 + 98, ctgogogo, -22.3, 458.2 , 0 );

setEffScaleKey( spep_1-3 + 16, ctgogogo, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 70, ctgogogo, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 72, ctgogogo, 1.13, 1.13 );
setEffScaleKey( spep_1-3 + 74, ctgogogo, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 76, ctgogogo, 1.18, 1.18 );
setEffScaleKey( spep_1-3 + 78, ctgogogo, 1.21, 1.21 );
setEffScaleKey( spep_1-3 + 80, ctgogogo, 1.23, 1.23 );
setEffScaleKey( spep_1-3 + 82, ctgogogo, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 84, ctgogogo, 1.28, 1.28 );
setEffScaleKey( spep_1-3 + 86, ctgogogo, 1.31, 1.31 );
setEffScaleKey( spep_1-3 + 88, ctgogogo, 1.34, 1.34 );
setEffScaleKey( spep_1-3 + 90, ctgogogo, 1.36, 1.36 );
setEffScaleKey( spep_1-3 + 92, ctgogogo, 1.39, 1.39 );
setEffScaleKey( spep_1-3 + 94, ctgogogo, 1.42, 1.42 );
setEffScaleKey( spep_1-3 + 96, ctgogogo, 1.44, 1.44 );
setEffScaleKey( spep_1-3 + 98, ctgogogo, 1.47, 1.47 );

setEffRotateKey( spep_1-3 + 16, ctgogogo, 0 );
setEffRotateKey( spep_1-3 + 98, ctgogogo, 0 );

setEffAlphaKey( spep_1-3 + 16, ctgogogo, 255 );
setEffAlphaKey( spep_1-3 + 70, ctgogogo, 255 );
setEffAlphaKey( spep_1-3 + 72, ctgogogo, 237 );
setEffAlphaKey( spep_1-3 + 74, ctgogogo, 219 );
setEffAlphaKey( spep_1-3 + 76, ctgogogo, 200 );
setEffAlphaKey( spep_1-3 + 78, ctgogogo, 182 );
setEffAlphaKey( spep_1-3 + 80, ctgogogo, 164 );
setEffAlphaKey( spep_1-3 + 82, ctgogogo, 146 );
setEffAlphaKey( spep_1-3 + 84, ctgogogo, 128 );
setEffAlphaKey( spep_1-3 + 86, ctgogogo, 109 );
setEffAlphaKey( spep_1-3 + 88, ctgogogo, 91 );
setEffAlphaKey( spep_1-3 + 90, ctgogogo, 73 );
setEffAlphaKey( spep_1-3 + 92, ctgogogo, 55 );
setEffAlphaKey( spep_1-3 + 94, ctgogogo, 36 );
setEffAlphaKey( spep_1-3 + 96, ctgogogo, 18 );
setEffAlphaKey( spep_1-3 + 98, ctgogogo, 0 )

--SE
se_1044 = playSe( spep_1 + 6, 1044 );
setSeVolume( spep_1 + 6, 1044, 56 );

stopSe( spep_1 + 6, se_1240, 0 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 102, 0, 0, 0, 0, 255 );

--白フェード
entryFade( spep_1+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

stopSe( spep_2 + 2, se_1175, 0 );
stopSe( spep_2 + 0, se_1044, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- バイスシャウト
------------------------------------------------------
-- ** エフェクト等 ** --
skil = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, skil, 0, 0, 0 );
setEffMoveKey( spep_3 + 190, skil, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, skil, 1.0, 1.0 );
setEffScaleKey( spep_3 + 190, skil, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, skil, 0 );
setEffRotateKey( spep_3 + 190, skil, 0 );
setEffAlphaKey( spep_3 + 0, skil, 255 );
setEffAlphaKey( spep_3 + 190, skil, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 100-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen2, 100-3, 20 );
setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100-3, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 100-3, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 100-3, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3-3 + 78, shuchusen2, 255 );
setEffAlphaKey( spep_3-3 + 80, shuchusen2, 233 );
setEffAlphaKey( spep_3-3 + 82, shuchusen2, 211 );
setEffAlphaKey( spep_3-3 + 84, shuchusen2, 189 );
setEffAlphaKey( spep_3-3 + 86, shuchusen2, 167 );
setEffAlphaKey( spep_3-3 + 88, shuchusen2, 145 );
setEffAlphaKey( spep_3-3 + 90, shuchusen2, 123 );
setEffAlphaKey( spep_3-3 + 92, shuchusen2, 101 );
setEffAlphaKey( spep_3-3 + 94, shuchusen2, 79 );
setEffAlphaKey( spep_3-3 + 96, shuchusen2, 57 );
setEffAlphaKey( spep_3-3 + 98, shuchusen2, 35 );
setEffAlphaKey( spep_3-3 + 100, shuchusen2, 13 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+68  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3+2  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
ctzudodo = entryEffectLife( spep_3-3 + 114,  10014, 74, 0x100, -1, 0, -53.9, 337.6 );
setEffShake( spep_3-3 + 114, ctzudodo, 74, 10 );
setEffMoveKey( spep_3-3 + 114, ctzudodo, -53.9, 337.6 , 0 );
setEffMoveKey( spep_3-3 + 116, ctzudodo, -50.5, 318.4 , 0 );
setEffMoveKey( spep_3-3 + 118, ctzudodo, -60.9, 344.1 , 0 );
setEffMoveKey( spep_3-3 + 120, ctzudodo, -57.1, 323.9 , 0 );
setEffMoveKey( spep_3-3 + 122, ctzudodo, -67.5, 350.2 , 0 );
setEffMoveKey( spep_3-3 + 124, ctzudodo, -63.2, 329 , 0 );
setEffMoveKey( spep_3-3 + 126, ctzudodo, -73.5, 355.7 , 0 );
setEffMoveKey( spep_3-3 + 128, ctzudodo, -68.6, 333.5 , 0 );
setEffMoveKey( spep_3-3 + 130, ctzudodo, -78.7, 360.5 , 0 );
setEffMoveKey( spep_3-3 + 132, ctzudodo, -73.1, 337.2 , 0 );
setEffMoveKey( spep_3-3 + 134, ctzudodo, -83, 364.4 , 0 );
setEffMoveKey( spep_3-3 + 136, ctzudodo, -76.9, 340.4 , 0 );
setEffMoveKey( spep_3-3 + 138, ctzudodo, -86.5, 367.7 , 0 );
setEffMoveKey( spep_3-3 + 140, ctzudodo, -80, 343 , 0 );
setEffMoveKey( spep_3-3 + 142, ctzudodo, -89.4, 370.4 , 0 );
setEffMoveKey( spep_3-3 + 144, ctzudodo, -82.5, 345.1 , 0 );
setEffMoveKey( spep_3-3 + 146, ctzudodo, -91.7, 372.5 , 0 );
setEffMoveKey( spep_3-3 + 148, ctzudodo, -84.6, 346.8 , 0 );
setEffMoveKey( spep_3-3 + 150, ctzudodo, -93.7, 374.2 , 0 );
setEffMoveKey( spep_3-3 + 152, ctzudodo, -86.2, 348.1 , 0 );
setEffMoveKey( spep_3-3 + 154, ctzudodo, -95.2, 375.7 , 0 );
setEffMoveKey( spep_3-3 + 156, ctzudodo, -87.5, 349.2 , 0 );
setEffMoveKey( spep_3-3 + 158, ctzudodo, -96.5, 376.8 , 0 );
setEffMoveKey( spep_3-3 + 160, ctzudodo, -88.6, 350.1 , 0 );
setEffMoveKey( spep_3-3 + 162, ctzudodo, -97.4, 377.7 , 0 );
setEffMoveKey( spep_3-3 + 164, ctzudodo, -89.4, 350.8 , 0 );
setEffMoveKey( spep_3-3 + 166, ctzudodo, -98.2, 378.4 , 0 );
setEffMoveKey( spep_3-3 + 168, ctzudodo, -90, 351.4 , 0 );
setEffMoveKey( spep_3-3 + 170, ctzudodo, -98.8, 379 , 0 );
setEffMoveKey( spep_3-3 + 172, ctzudodo, -90.6, 351.8 , 0 );
setEffMoveKey( spep_3-3 + 174, ctzudodo, -99.3, 379.4 , 0 );
setEffMoveKey( spep_3-3 + 176, ctzudodo, -90.8, 352 , 0 );
setEffMoveKey( spep_3-3 + 178, ctzudodo, -99.4, 379.6 , 0 );
setEffMoveKey( spep_3-3 + 180, ctzudodo, -90.9, 352.1 , 0 );
setEffMoveKey( spep_3-3 + 182, ctzudodo, -99.4, 379.7 , 0 );
setEffMoveKey( spep_3-3 + 184, ctzudodo, -91, 352.2 , 0 );
setEffMoveKey( spep_3-3 + 186, ctzudodo, -99.5, 379.7 , 0 );
setEffMoveKey( spep_3-3 + 188, ctzudodo, -99.5, 379.9 , 0 );

setEffScaleKey( spep_3-3 + 114, ctzudodo, 2.29, 2.97 );
setEffScaleKey( spep_3-3 + 116, ctzudodo, 2.34, 3.03 );
setEffScaleKey( spep_3-3 + 118, ctzudodo, 2.38, 3.08 );
setEffScaleKey( spep_3-3 + 120, ctzudodo, 2.42, 3.14 );
setEffScaleKey( spep_3-3 + 122, ctzudodo, 2.46, 3.19 );
setEffScaleKey( spep_3-3 + 124, ctzudodo, 2.5, 3.24 );
setEffScaleKey( spep_3-3 + 126, ctzudodo, 2.54, 3.29 );
setEffScaleKey( spep_3-3 + 128, ctzudodo, 2.57, 3.33 );
setEffScaleKey( spep_3-3 + 130, ctzudodo, 2.6, 3.37 );
setEffScaleKey( spep_3-3 + 132, ctzudodo, 2.63, 3.41 );
setEffScaleKey( spep_3-3 + 134, ctzudodo, 2.66, 3.44 );
setEffScaleKey( spep_3-3 + 136, ctzudodo, 2.68, 3.47 );
setEffScaleKey( spep_3-3 + 138, ctzudodo, 2.7, 3.5 );
setEffScaleKey( spep_3-3 + 140, ctzudodo, 2.72, 3.52 );
setEffScaleKey( spep_3-3 + 142, ctzudodo, 2.74, 3.54 );
setEffScaleKey( spep_3-3 + 144, ctzudodo, 2.75, 3.56 );
setEffScaleKey( spep_3-3 + 146, ctzudodo, 2.77, 3.58 );
setEffScaleKey( spep_3-3 + 148, ctzudodo, 2.78, 3.6 );
setEffScaleKey( spep_3-3 + 150, ctzudodo, 2.79, 3.61 );
setEffScaleKey( spep_3-3 + 152, ctzudodo, 2.8, 3.63 );
setEffScaleKey( spep_3-3 + 154, ctzudodo, 2.81, 3.64 );
setEffScaleKey( spep_3-3 + 156, ctzudodo, 2.82, 3.65 );
setEffScaleKey( spep_3-3 + 158, ctzudodo, 2.82, 3.66 );
setEffScaleKey( spep_3-3 + 160, ctzudodo, 2.83, 3.67 );
setEffScaleKey( spep_3-3 + 162, ctzudodo, 2.84, 3.67 );
setEffScaleKey( spep_3-3 + 164, ctzudodo, 2.84, 3.68 );
setEffScaleKey( spep_3-3 + 166, ctzudodo, 2.85, 3.69 );
setEffScaleKey( spep_3-3 + 168, ctzudodo, 2.85, 3.69 );
setEffScaleKey( spep_3-3 + 170, ctzudodo, 2.85, 3.7 );
setEffScaleKey( spep_3-3 + 172, ctzudodo, 2.86, 3.7 );
setEffScaleKey( spep_3-3 + 174, ctzudodo, 2.86, 3.7 );
setEffScaleKey( spep_3-3 + 176, ctzudodo, 2.86, 3.71 );
setEffScaleKey( spep_3-3 + 184, ctzudodo, 2.86, 3.71 );
setEffScaleKey( spep_3-3 + 186, ctzudodo, 2.87, 3.71 );
setEffScaleKey( spep_3-3 + 188, ctzudodo, 2.87, 3.71 );

setEffRotateKey( spep_3-3 + 114, ctzudodo, 6.6 );
setEffRotateKey( spep_3-3 + 188, ctzudodo, 6.6 );

setEffAlphaKey( spep_3-3 + 114, ctzudodo, 255 );
setEffAlphaKey( spep_3-3 + 188, ctzudodo, 255 );

--SE
playSe( spep_3 + 14, 1018 );
playSe( spep_3 + 18, 20 );
se_1213 = playSe( spep_3 + 18, 1213 );
setSeVolume( spep_3 + 18, 1213, 71 );
playSe( spep_3 + 19, 1024 );
se_1044 = playSe( spep_3 + 19, 1044 );
playSe( spep_3 + 23, 1068 );
playSe( spep_3 + 24, 1014 );


-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 192, 0, 0, 0, 0, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1213, 0 );
    stopSe( SP_dodge - 12, se_1044, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
playSe( spep_3 + 120, 1024 );
playSe( spep_3 + 120, 1145 );
playSe( spep_3 + 124, 1067 );
se_1147 = playSe( spep_3 + 144, 1147 );

--白フェード
entryFade( spep_3 + 182, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
-- ** 次の準備 ** --
spep_4 = spep_3 + 190;
------------------------------------------------------
-- 敵吸い込まれる渦
------------------------------------------------------
-- ** エフェクト等 ** --
eddy_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, eddy_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, eddy_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, eddy_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, eddy_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, eddy_f, 0 );
setEffRotateKey( spep_4 + 80, eddy_f, 0 );
setEffAlphaKey( spep_4 + 0, eddy_f, 255 );
setEffAlphaKey( spep_4 + 80, eddy_f, 255 );

-- ** エフェクト等 ** --
eddy_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, eddy_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, eddy_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, eddy_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, eddy_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, eddy_b, 0 );
setEffRotateKey( spep_4 + 80, eddy_b, 0 );
setEffAlphaKey( spep_4 + 0, eddy_b, 255 );
setEffAlphaKey( spep_4 + 80, eddy_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 0, -60.7 , 0 );
setMoveKey( spep_4 + 2, 1, -1.2, -63.5 , 0 );
setMoveKey( spep_4 + 4, 1, -2.8, -66.9 , 0 );
setMoveKey( spep_4 + 6, 1, -4.4, -70 , 0 );
setMoveKey( spep_4 + 8, 1, -5.7, -72.4 , 0 );
setMoveKey( spep_4 + 10, 1, -6.5, -73.8 , 0 );
setMoveKey( spep_4 + 12, 1, -6.9, -75.1 , 0 );
setMoveKey( spep_4 + 14, 1, -7.1, -76.4 , 0 );
setMoveKey( spep_4 + 16, 1, -7, -78 , 0 );
setMoveKey( spep_4 + 18, 1, -6.4, -81.1 , 0 );
setMoveKey( spep_4 + 20, 1, -4.7, -86.9 , 0 );
setMoveKey( spep_4 + 22, 1, -4.2, -88.1 , 0 );
setMoveKey( spep_4 + 24, 1, -3.7, -89.4 , 0 );
setMoveKey( spep_4 + 26, 1, -3.3, -90.6 , 0 );
setMoveKey( spep_4 + 28, 1, -3, -92 , 0 );
setMoveKey( spep_4 + 30, 1, -2.8, -93.2 , 0 );
setMoveKey( spep_4 + 32, 1, -2.7, -94.4 , 0 );
setMoveKey( spep_4 + 34, 1, -2.7, -95.6 , 0 );
setMoveKey( spep_4 + 36, 1, -2.8, -96.5 , 0 );
setMoveKey( spep_4 + 38, 1, -3.1, -97.2 , 0 );
setMoveKey( spep_4 + 40, 1, -3.3, -97.7 , 0 );
setMoveKey( spep_4 + 42, 1, -3.5, -98.1 , 0 );
setMoveKey( spep_4 + 44, 1, -3.7, -98.2 , 0 );
setMoveKey( spep_4 + 46, 1, -3.7, -98.1 , 0 );
setMoveKey( spep_4 + 48, 1, -3.7, -97.8 , 0 );
setMoveKey( spep_4 + 50, 1, -3.5, -97.6 , 0 );
setMoveKey( spep_4 + 52, 1, -3, -97.5 , 0 );
setMoveKey( spep_4 + 54, 1, -2.6, -97.7 , 0 );
setMoveKey( spep_4 + 56, 1, -2.3, -98.3 , 0 );
setMoveKey( spep_4 + 58, 1, -3.1, -99 , 0 );

setScaleKey( spep_4 + 0, 1, 7.78, 7.79 );
setScaleKey( spep_4 + 2, 1, 6.62, 6.47 );
setScaleKey( spep_4 + 4, 1, 5.32, 4.98 );
setScaleKey( spep_4 + 6, 1, 4.03, 3.67 );
setScaleKey( spep_4 + 8, 1, 3.05, 2.82 );
setScaleKey( spep_4 + 10, 1, 2.42, 2.29 );
setScaleKey( spep_4 + 12, 1, 2, 1.93 );
setScaleKey( spep_4 + 14, 1, 1.69, 1.66 );
setScaleKey( spep_4 + 16, 1, 1.45, 1.44 );
setScaleKey( spep_4 + 18, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 22, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 24, 1, 0.86, 0.85 );
setScaleKey( spep_4 + 26, 1, 0.79, 0.78 );
setScaleKey( spep_4 + 28, 1, 0.72, 0.71 );
setScaleKey( spep_4 + 30, 1, 0.66, 0.64 );
setScaleKey( spep_4 + 32, 1, 0.6, 0.58 );
setScaleKey( spep_4 + 34, 1, 0.55, 0.52 );
setScaleKey( spep_4 + 36, 1, 0.5, 0.47 );
setScaleKey( spep_4 + 38, 1, 0.45, 0.43 );
setScaleKey( spep_4 + 40, 1, 0.41, 0.39 );
setScaleKey( spep_4 + 42, 1, 0.37, 0.35 );
setScaleKey( spep_4 + 44, 1, 0.33, 0.32 );
setScaleKey( spep_4 + 46, 1, 0.3, 0.29 );
setScaleKey( spep_4 + 48, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 50, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 52, 1, 0.22, 0.23 );
setScaleKey( spep_4 + 54, 1, 0.21, 0.22 );
setScaleKey( spep_4 + 56, 1, 0.19, 0.21 );
setScaleKey( spep_4 + 58, 1, 0.19, 0.21 );

setRotateKey( spep_4 + 0, 1, -7.8 );
setRotateKey( spep_4 + 2, 1, -7.8 );
setRotateKey( spep_4 + 4, 1, -7.9 );
setRotateKey( spep_4 + 6, 1, -8 );
setRotateKey( spep_4 + 8, 1, -8.3 );
setRotateKey( spep_4 + 10, 1, -8.5 );
setRotateKey( spep_4 + 12, 1, -8.6 );
setRotateKey( spep_4 + 14, 1, -8.7 );
setRotateKey( spep_4 + 16, 1, -8.8 );
setRotateKey( spep_4 + 18, 1, -8.8 );
setRotateKey( spep_4 + 20, 1, -5.9 );
setRotateKey( spep_4 + 22, 1, 0.7 );
setRotateKey( spep_4 + 24, 1, 9.8 );
setRotateKey( spep_4 + 26, 1, 20.7 );
setRotateKey( spep_4 + 28, 1, 33.1 );
setRotateKey( spep_4 + 30, 1, 47 );
setRotateKey( spep_4 + 32, 1, 62.1 );
setRotateKey( spep_4 + 34, 1, 78.6 );
setRotateKey( spep_4 + 36, 1, 96.4 );
setRotateKey( spep_4 + 38, 1, 115.7 );
setRotateKey( spep_4 + 40, 1, 136.5 );
setRotateKey( spep_4 + 42, 1, 159.1 );
setRotateKey( spep_4 + 44, 1, 183.9 );
setRotateKey( spep_4 + 46, 1, 211.2 );
setRotateKey( spep_4 + 48, 1, 242.1 );
setRotateKey( spep_4 + 50, 1, 276.7 );
setRotateKey( spep_4 + 52, 1, 315.3 );
setRotateKey( spep_4 + 54, 1, 360.6 );
setRotateKey( spep_4 + 56, 1, 419.4 );
setRotateKey( spep_4 + 58, 1, 563.2 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 + 46, 1, 255 );
setAlphaKey( spep_4 + 48, 1, 255 );
setAlphaKey( spep_4 + 50, 1, 251 );
setAlphaKey( spep_4 + 52, 1, 237 );
setAlphaKey( spep_4 + 54, 1, 205 );
setAlphaKey( spep_4 + 56, 1, 146 );
setAlphaKey( spep_4 + 58, 1, 1 )

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen3, 78, 20 );
setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_4 + 78, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 78, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 50, shuchusen3, 239 );
setEffAlphaKey( spep_4 + 52, shuchusen3, 223 );
setEffAlphaKey( spep_4 + 54, shuchusen3, 207 );
setEffAlphaKey( spep_4 + 56, shuchusen3, 190 );
setEffAlphaKey( spep_4 + 58, shuchusen3, 174 );
setEffAlphaKey( spep_4 + 60, shuchusen3, 158 );
setEffAlphaKey( spep_4 + 62, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 64, shuchusen3, 126 );
setEffAlphaKey( spep_4 + 66, shuchusen3, 110 );
setEffAlphaKey( spep_4 + 68, shuchusen3, 94 );
setEffAlphaKey( spep_4 + 70, shuchusen3, 77 );
setEffAlphaKey( spep_4 + 72, shuchusen3, 61 );
setEffAlphaKey( spep_4 + 74, shuchusen3, 45 );
setEffAlphaKey( spep_4 + 76, shuchusen3, 29 );
setEffAlphaKey( spep_4 + 78, shuchusen3, 13 );

--文字エントリー
ctzudodo2 = entryEffectLife( spep_4 + 0,  10014, 78, 0x100, -1, 0, 71.1, 369.2 );
setEffShake( spep_4 + 0, ctzudodo2, 78, 10 );
setEffMoveKey( spep_4 + 0, ctzudodo2, 71.1, 369.2 , 0 );
setEffMoveKey( spep_4 + 2, ctzudodo2, 49.9, 336.2 , 0 );
setEffMoveKey( spep_4 + 4, ctzudodo2, 51.1, 339.2 , 0 );
setEffMoveKey( spep_4 + 6, ctzudodo2, 26.3, 300.8 , 0 );
setEffMoveKey( spep_4 + 8, ctzudodo2, 25, 300.2 , 0 );
setEffMoveKey( spep_4 + 10, ctzudodo2, 12, 279.3 , 0 );
setEffMoveKey( spep_4 + 12, ctzudodo2, 25, 300.1 , 0 );
setEffMoveKey( spep_4 + 14, ctzudodo2, 11.9, 279.2 , 0 );
setEffMoveKey( spep_4 + 16, ctzudodo2, 25, 300.1 , 0 );
setEffMoveKey( spep_4 + 18, ctzudodo2, 11.8, 279 , 0 );
setEffMoveKey( spep_4 + 20, ctzudodo2, 25, 300.1 , 0 );
setEffMoveKey( spep_4 + 22, ctzudodo2, 11.6, 278.7 , 0 );
setEffMoveKey( spep_4 + 24, ctzudodo2, 25, 300.1 , 0 );
setEffMoveKey( spep_4 + 26, ctzudodo2, 11.5, 278.4 , 0 );
setEffMoveKey( spep_4 + 28, ctzudodo2, 25, 300 , 0 );
setEffMoveKey( spep_4 + 30, ctzudodo2, 11.3, 278.1 , 0 );
setEffMoveKey( spep_4 + 32, ctzudodo2, 25, 300 , 0 );
setEffMoveKey( spep_4 + 34, ctzudodo2, 11.2, 277.7 , 0 );
setEffMoveKey( spep_4 + 36, ctzudodo2, 25.1, 299.9 , 0 );
setEffMoveKey( spep_4 + 38, ctzudodo2, 10.9, 277.2 , 0 );
setEffMoveKey( spep_4 + 40, ctzudodo2, 25.1, 299.9 , 0 );
setEffMoveKey( spep_4 + 42, ctzudodo2, 10.7, 276.7 , 0 );
setEffMoveKey( spep_4 + 44, ctzudodo2, 25.1, 299.8 , 0 );
setEffMoveKey( spep_4 + 46, ctzudodo2, 10.4, 276 , 0 );
setEffMoveKey( spep_4 + 48, ctzudodo2, 25.2, 299.7 , 0 );
setEffMoveKey( spep_4 + 50, ctzudodo2, 10.1, 275.3 , 0 );
setEffMoveKey( spep_4 + 52, ctzudodo2, 25.3, 299.6 , 0 );
setEffMoveKey( spep_4 + 54, ctzudodo2, 9.7, 274.6 , 0 );
setEffMoveKey( spep_4 + 56, ctzudodo2, 25.3, 299.5 , 0 );
setEffMoveKey( spep_4 + 58, ctzudodo2, 9.2, 273.7 , 0 );
setEffMoveKey( spep_4 + 60, ctzudodo2, 25.4, 299.4 , 0 );
setEffMoveKey( spep_4 + 62, ctzudodo2, 8.9, 272.9 , 0 );
setEffMoveKey( spep_4 + 64, ctzudodo2, 25.4, 299.3 , 0 );
setEffMoveKey( spep_4 + 66, ctzudodo2, 8.5, 272.1 , 0 );
setEffMoveKey( spep_4 + 68, ctzudodo2, 25.5, 299.2 , 0 );
setEffMoveKey( spep_4 + 70, ctzudodo2, 8, 271.2 , 0 );
setEffMoveKey( spep_4 + 72, ctzudodo2, 25.5, 299.1 , 0 );
setEffMoveKey( spep_4 + 74, ctzudodo2, 7.7, 270.3 , 0 );
setEffMoveKey( spep_4 + 76, ctzudodo2, 25.6, 299 , 0 );
setEffMoveKey( spep_4 + 78, ctzudodo2, 7.3, 269.8 , 0 );

setEffScaleKey( spep_4 + 0, ctzudodo2, 2.18, 2.82 );
setEffScaleKey( spep_4 + 2, ctzudodo2, 2.23, 2.89 );
setEffScaleKey( spep_4 + 4, ctzudodo2, 2.29, 2.97 );
setEffScaleKey( spep_4 + 6, ctzudodo2, 2.36, 3.06 );
setEffScaleKey( spep_4 + 8, ctzudodo2, 2.44, 3.16 );
setEffScaleKey( spep_4 + 10, ctzudodo2, 2.44, 3.17 );
setEffScaleKey( spep_4 + 12, ctzudodo2, 2.45, 3.18 );
setEffScaleKey( spep_4 + 14, ctzudodo2, 2.46, 3.19 );
setEffScaleKey( spep_4 + 16, ctzudodo2, 2.47, 3.2 );
setEffScaleKey( spep_4 + 18, ctzudodo2, 2.48, 3.21 );
setEffScaleKey( spep_4 + 20, ctzudodo2, 2.49, 3.23 );
setEffScaleKey( spep_4 + 22, ctzudodo2, 2.51, 3.25 );
setEffScaleKey( spep_4 + 24, ctzudodo2, 2.52, 3.27 );
setEffScaleKey( spep_4 + 26, ctzudodo2, 2.54, 3.29 );
setEffScaleKey( spep_4 + 28, ctzudodo2, 2.55, 3.31 );
setEffScaleKey( spep_4 + 30, ctzudodo2, 2.57, 3.33 );
setEffScaleKey( spep_4 + 32, ctzudodo2, 2.59, 3.36 );
setEffScaleKey( spep_4 + 34, ctzudodo2, 2.61, 3.39 );
setEffScaleKey( spep_4 + 36, ctzudodo2, 2.64, 3.42 );
setEffScaleKey( spep_4 + 38, ctzudodo2, 2.66, 3.45 );
setEffScaleKey( spep_4 + 40, ctzudodo2, 2.69, 3.49 );
setEffScaleKey( spep_4 + 42, ctzudodo2, 2.72, 3.52 );
setEffScaleKey( spep_4 + 44, ctzudodo2, 2.75, 3.56 );
setEffScaleKey( spep_4 + 46, ctzudodo2, 2.78, 3.61 );
setEffScaleKey( spep_4 + 48, ctzudodo2, 2.82, 3.65 );
setEffScaleKey( spep_4 + 50, ctzudodo2, 2.85, 3.7 );
setEffScaleKey( spep_4 + 52, ctzudodo2, 2.89, 3.75 );
setEffScaleKey( spep_4 + 54, ctzudodo2, 2.93, 3.8 );
setEffScaleKey( spep_4 + 56, ctzudodo2, 2.97, 3.85 );
setEffScaleKey( spep_4 + 58, ctzudodo2, 3.02, 3.91 );
setEffScaleKey( spep_4 + 60, ctzudodo2, 3.06, 3.96 );
setEffScaleKey( spep_4 + 62, ctzudodo2, 3.1, 4.02 );
setEffScaleKey( spep_4 + 64, ctzudodo2, 3.15, 4.08 );
setEffScaleKey( spep_4 + 66, ctzudodo2, 3.19, 4.13 );
setEffScaleKey( spep_4 + 68, ctzudodo2, 3.23, 4.19 );
setEffScaleKey( spep_4 + 70, ctzudodo2, 3.28, 4.24 );
setEffScaleKey( spep_4 + 72, ctzudodo2, 3.32, 4.3 );
setEffScaleKey( spep_4 + 74, ctzudodo2, 3.36, 4.35 );
setEffScaleKey( spep_4 + 76, ctzudodo2, 3.4, 4.4 );
setEffScaleKey( spep_4 + 78, ctzudodo2, 3.44, 4.45 );

setEffRotateKey( spep_4 + 0, ctzudodo2, 55.7 );
setEffRotateKey( spep_4 + 6, ctzudodo2, 55.7 );
setEffRotateKey( spep_4 + 8, ctzudodo2, 55.8 );
setEffRotateKey( spep_4 + 52, ctzudodo2, 55.8 );
setEffRotateKey( spep_4 + 54, ctzudodo2, 55.7 );
setEffRotateKey( spep_4 + 78, ctzudodo2, 55.7 );

setEffAlphaKey( spep_4 + 0, ctzudodo2, 255 );
setEffAlphaKey( spep_4 + 78, ctzudodo2, 255 );

--SE
playSe( spep_4 + 9, 1182 );
playSe( spep_4 + 12, 1027 );
se_1183 = playSe( spep_4 + 16, 1183 );

stopSe( spep_4 + 67, se_1044, 0 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 82, 0, 0, 0, 0, 255 );

--白フェード
entryFade( spep_4 + 70, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );
setMoveKey( spep_5 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_5 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_5 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_5 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_5 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_5 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_5 + 0, 1, 0-z );
setRotateKey( spep_5 + 2, 1, 105-z );
setRotateKey( spep_5 + 4, 1, 240-z );
setRotateKey( spep_5 + 6, 1, 405-z );
setRotateKey( spep_5 + 8, 1, 600-z );
setRotateKey( spep_5 + 10, 1, 825-z );
setRotateKey( spep_5 + 12, 1, 1080-z );
setRotateKey( spep_5 + 110, 1, 1080-z );

setAlphaKey( spep_5 + 0, 1, 255 );
setAlphaKey( spep_5 + 110, 1, 255 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 100, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 112, bakuhatsu, 255 );
]]--

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

--SE
playSe( spep_5 + 0, 1023 );
playSe( spep_5 + 14, 1054 );

stopSe( spep_5 + 13, se_1213, 0 );
stopSe( spep_5 + 13, se_1147, 0 );
stopSe( spep_5 + 5, se_1183, 0 );

--終わり
dealDamage( spep_5 +10 );
endPhase( spep_5 + 98 );

else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気だめ
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 240, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 240, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 240, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 240, tame, 255 );

--SE
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 50 );
playSe( spep_0 + 39, 1002 );
se_1240 = playSe( spep_0 + 52, 1240 );
playSe( spep_0 + 176, 1072 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 242, 0, 0, 0, 0, 255 );

--白フェード
entryFade( spep_0+232 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+240;
------------------------------------------------------
-- 上半身アップ
------------------------------------------------------
-- ** エフェクト等 ** --
bust = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, bust, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, bust, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, bust, -1.0, 1.0 );
setEffScaleKey( spep_1 + 100, bust, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bust, 0 );
setEffRotateKey( spep_1 + 100, bust, 0 );
setEffAlphaKey( spep_1 + 0, bust, 255 );
setEffAlphaKey( spep_1 + 100, bust, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchusen1, 98, 20 );
setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_1 + 98, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen1, 255 );

--文字エントリー
ctgogogo = entryEffectLife( spep_1-3 + 16,  190006, 82, 0x100, -1, 0, -22.3, 458.2 );
setEffShake( spep_1-3 + 16, ctgogogo, 82, 10 );
setEffMoveKey( spep_1-3 + 16, ctgogogo, -22.3, 458.2 , 0 );
setEffMoveKey( spep_1-3 + 98, ctgogogo, -22.3, 458.2 , 0 );

setEffScaleKey( spep_1-3 + 16, ctgogogo, -1.1, 1.1 );
setEffScaleKey( spep_1-3 + 70, ctgogogo, -1.1, 1.1 );
setEffScaleKey( spep_1-3 + 72, ctgogogo, -1.13, 1.13 );
setEffScaleKey( spep_1-3 + 74, ctgogogo, -1.15, 1.15 );
setEffScaleKey( spep_1-3 + 76, ctgogogo, -1.18, 1.18 );
setEffScaleKey( spep_1-3 + 78, ctgogogo, -1.21, 1.21 );
setEffScaleKey( spep_1-3 + 80, ctgogogo, -1.23, 1.23 );
setEffScaleKey( spep_1-3 + 82, ctgogogo, -1.26, 1.26 );
setEffScaleKey( spep_1-3 + 84, ctgogogo, -1.28, 1.28 );
setEffScaleKey( spep_1-3 + 86, ctgogogo, -1.31, 1.31 );
setEffScaleKey( spep_1-3 + 88, ctgogogo, -1.34, 1.34 );
setEffScaleKey( spep_1-3 + 90, ctgogogo, -1.36, 1.36 );
setEffScaleKey( spep_1-3 + 92, ctgogogo, -1.39, 1.39 );
setEffScaleKey( spep_1-3 + 94, ctgogogo, -1.42, 1.42 );
setEffScaleKey( spep_1-3 + 96, ctgogogo, -1.44, 1.44 );
setEffScaleKey( spep_1-3 + 98, ctgogogo, -1.47, 1.47 );

setEffRotateKey( spep_1-3 + 16, ctgogogo, 0 );
setEffRotateKey( spep_1-3 + 98, ctgogogo, 0 );

setEffAlphaKey( spep_1-3 + 16, ctgogogo, 255 );
setEffAlphaKey( spep_1-3 + 70, ctgogogo, 255 );
setEffAlphaKey( spep_1-3 + 72, ctgogogo, 237 );
setEffAlphaKey( spep_1-3 + 74, ctgogogo, 219 );
setEffAlphaKey( spep_1-3 + 76, ctgogogo, 200 );
setEffAlphaKey( spep_1-3 + 78, ctgogogo, 182 );
setEffAlphaKey( spep_1-3 + 80, ctgogogo, 164 );
setEffAlphaKey( spep_1-3 + 82, ctgogogo, 146 );
setEffAlphaKey( spep_1-3 + 84, ctgogogo, 128 );
setEffAlphaKey( spep_1-3 + 86, ctgogogo, 109 );
setEffAlphaKey( spep_1-3 + 88, ctgogogo, 91 );
setEffAlphaKey( spep_1-3 + 90, ctgogogo, 73 );
setEffAlphaKey( spep_1-3 + 92, ctgogogo, 55 );
setEffAlphaKey( spep_1-3 + 94, ctgogogo, 36 );
setEffAlphaKey( spep_1-3 + 96, ctgogogo, 18 );
setEffAlphaKey( spep_1-3 + 98, ctgogogo, 0 )

--SE
se_1044 = playSe( spep_1 + 6, 1044 );
setSeVolume( spep_1 + 6, 1044, 56 );

stopSe( spep_1 + 6, se_1240, 0 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 102, 0, 0, 0, 0, 255 );

--白フェード
entryFade( spep_1+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

stopSe( spep_2 + 2, se_1175, 0 );
stopSe( spep_2 + 0, se_1044, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- バイスシャウト
------------------------------------------------------
-- ** エフェクト等 ** --
skil = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, skil, 0, 0, 0 );
setEffMoveKey( spep_3 + 190, skil, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, skil, -1.0, 1.0 );
setEffScaleKey( spep_3 + 190, skil, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, skil, 0 );
setEffRotateKey( spep_3 + 190, skil, 0 );
setEffAlphaKey( spep_3 + 0, skil, 255 );
setEffAlphaKey( spep_3 + 190, skil, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 100-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen2, 100-3, 20 );
setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100-3, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 100-3, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 100-3, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3-3 + 78, shuchusen2, 255 );
setEffAlphaKey( spep_3-3 + 80, shuchusen2, 233 );
setEffAlphaKey( spep_3-3 + 82, shuchusen2, 211 );
setEffAlphaKey( spep_3-3 + 84, shuchusen2, 189 );
setEffAlphaKey( spep_3-3 + 86, shuchusen2, 167 );
setEffAlphaKey( spep_3-3 + 88, shuchusen2, 145 );
setEffAlphaKey( spep_3-3 + 90, shuchusen2, 123 );
setEffAlphaKey( spep_3-3 + 92, shuchusen2, 101 );
setEffAlphaKey( spep_3-3 + 94, shuchusen2, 79 );
setEffAlphaKey( spep_3-3 + 96, shuchusen2, 57 );
setEffAlphaKey( spep_3-3 + 98, shuchusen2, 35 );
setEffAlphaKey( spep_3-3 + 100, shuchusen2, 13 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+68  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3+2  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
ctzudodo = entryEffectLife( spep_3-3 + 114,  10014, 74, 0x100, -1, 0, -53.9, 337.6 );
setEffShake( spep_3-3 + 114, ctzudodo, 74, 10 );
setEffMoveKey( spep_3-3 + 114, ctzudodo, -53.9, 337.6 , 0 );
setEffMoveKey( spep_3-3 + 116, ctzudodo, -50.5, 318.4 , 0 );
setEffMoveKey( spep_3-3 + 118, ctzudodo, -60.9, 344.1 , 0 );
setEffMoveKey( spep_3-3 + 120, ctzudodo, -57.1, 323.9 , 0 );
setEffMoveKey( spep_3-3 + 122, ctzudodo, -67.5, 350.2 , 0 );
setEffMoveKey( spep_3-3 + 124, ctzudodo, -63.2, 329 , 0 );
setEffMoveKey( spep_3-3 + 126, ctzudodo, -73.5, 355.7 , 0 );
setEffMoveKey( spep_3-3 + 128, ctzudodo, -68.6, 333.5 , 0 );
setEffMoveKey( spep_3-3 + 130, ctzudodo, -78.7, 360.5 , 0 );
setEffMoveKey( spep_3-3 + 132, ctzudodo, -73.1, 337.2 , 0 );
setEffMoveKey( spep_3-3 + 134, ctzudodo, -83, 364.4 , 0 );
setEffMoveKey( spep_3-3 + 136, ctzudodo, -76.9, 340.4 , 0 );
setEffMoveKey( spep_3-3 + 138, ctzudodo, -86.5, 367.7 , 0 );
setEffMoveKey( spep_3-3 + 140, ctzudodo, -80, 343 , 0 );
setEffMoveKey( spep_3-3 + 142, ctzudodo, -89.4, 370.4 , 0 );
setEffMoveKey( spep_3-3 + 144, ctzudodo, -82.5, 345.1 , 0 );
setEffMoveKey( spep_3-3 + 146, ctzudodo, -91.7, 372.5 , 0 );
setEffMoveKey( spep_3-3 + 148, ctzudodo, -84.6, 346.8 , 0 );
setEffMoveKey( spep_3-3 + 150, ctzudodo, -93.7, 374.2 , 0 );
setEffMoveKey( spep_3-3 + 152, ctzudodo, -86.2, 348.1 , 0 );
setEffMoveKey( spep_3-3 + 154, ctzudodo, -95.2, 375.7 , 0 );
setEffMoveKey( spep_3-3 + 156, ctzudodo, -87.5, 349.2 , 0 );
setEffMoveKey( spep_3-3 + 158, ctzudodo, -96.5, 376.8 , 0 );
setEffMoveKey( spep_3-3 + 160, ctzudodo, -88.6, 350.1 , 0 );
setEffMoveKey( spep_3-3 + 162, ctzudodo, -97.4, 377.7 , 0 );
setEffMoveKey( spep_3-3 + 164, ctzudodo, -89.4, 350.8 , 0 );
setEffMoveKey( spep_3-3 + 166, ctzudodo, -98.2, 378.4 , 0 );
setEffMoveKey( spep_3-3 + 168, ctzudodo, -90, 351.4 , 0 );
setEffMoveKey( spep_3-3 + 170, ctzudodo, -98.8, 379 , 0 );
setEffMoveKey( spep_3-3 + 172, ctzudodo, -90.6, 351.8 , 0 );
setEffMoveKey( spep_3-3 + 174, ctzudodo, -99.3, 379.4 , 0 );
setEffMoveKey( spep_3-3 + 176, ctzudodo, -90.8, 352 , 0 );
setEffMoveKey( spep_3-3 + 178, ctzudodo, -99.4, 379.6 , 0 );
setEffMoveKey( spep_3-3 + 180, ctzudodo, -90.9, 352.1 , 0 );
setEffMoveKey( spep_3-3 + 182, ctzudodo, -99.4, 379.7 , 0 );
setEffMoveKey( spep_3-3 + 184, ctzudodo, -91, 352.2 , 0 );
setEffMoveKey( spep_3-3 + 186, ctzudodo, -99.5, 379.7 , 0 );
setEffMoveKey( spep_3-3 + 188, ctzudodo, -99.5, 379.9 , 0 );

setEffScaleKey( spep_3-3 + 114, ctzudodo, 2.29, 2.97 );
setEffScaleKey( spep_3-3 + 116, ctzudodo, 2.34, 3.03 );
setEffScaleKey( spep_3-3 + 118, ctzudodo, 2.38, 3.08 );
setEffScaleKey( spep_3-3 + 120, ctzudodo, 2.42, 3.14 );
setEffScaleKey( spep_3-3 + 122, ctzudodo, 2.46, 3.19 );
setEffScaleKey( spep_3-3 + 124, ctzudodo, 2.5, 3.24 );
setEffScaleKey( spep_3-3 + 126, ctzudodo, 2.54, 3.29 );
setEffScaleKey( spep_3-3 + 128, ctzudodo, 2.57, 3.33 );
setEffScaleKey( spep_3-3 + 130, ctzudodo, 2.6, 3.37 );
setEffScaleKey( spep_3-3 + 132, ctzudodo, 2.63, 3.41 );
setEffScaleKey( spep_3-3 + 134, ctzudodo, 2.66, 3.44 );
setEffScaleKey( spep_3-3 + 136, ctzudodo, 2.68, 3.47 );
setEffScaleKey( spep_3-3 + 138, ctzudodo, 2.7, 3.5 );
setEffScaleKey( spep_3-3 + 140, ctzudodo, 2.72, 3.52 );
setEffScaleKey( spep_3-3 + 142, ctzudodo, 2.74, 3.54 );
setEffScaleKey( spep_3-3 + 144, ctzudodo, 2.75, 3.56 );
setEffScaleKey( spep_3-3 + 146, ctzudodo, 2.77, 3.58 );
setEffScaleKey( spep_3-3 + 148, ctzudodo, 2.78, 3.6 );
setEffScaleKey( spep_3-3 + 150, ctzudodo, 2.79, 3.61 );
setEffScaleKey( spep_3-3 + 152, ctzudodo, 2.8, 3.63 );
setEffScaleKey( spep_3-3 + 154, ctzudodo, 2.81, 3.64 );
setEffScaleKey( spep_3-3 + 156, ctzudodo, 2.82, 3.65 );
setEffScaleKey( spep_3-3 + 158, ctzudodo, 2.82, 3.66 );
setEffScaleKey( spep_3-3 + 160, ctzudodo, 2.83, 3.67 );
setEffScaleKey( spep_3-3 + 162, ctzudodo, 2.84, 3.67 );
setEffScaleKey( spep_3-3 + 164, ctzudodo, 2.84, 3.68 );
setEffScaleKey( spep_3-3 + 166, ctzudodo, 2.85, 3.69 );
setEffScaleKey( spep_3-3 + 168, ctzudodo, 2.85, 3.69 );
setEffScaleKey( spep_3-3 + 170, ctzudodo, 2.85, 3.7 );
setEffScaleKey( spep_3-3 + 172, ctzudodo, 2.86, 3.7 );
setEffScaleKey( spep_3-3 + 174, ctzudodo, 2.86, 3.7 );
setEffScaleKey( spep_3-3 + 176, ctzudodo, 2.86, 3.71 );
setEffScaleKey( spep_3-3 + 184, ctzudodo, 2.86, 3.71 );
setEffScaleKey( spep_3-3 + 186, ctzudodo, 2.87, 3.71 );
setEffScaleKey( spep_3-3 + 188, ctzudodo, 2.87, 3.71 );

setEffRotateKey( spep_3-3 + 114, ctzudodo, -76.6 );
setEffRotateKey( spep_3-3 + 188, ctzudodo, -76.6 );

setEffAlphaKey( spep_3-3 + 114, ctzudodo, 255 );
setEffAlphaKey( spep_3-3 + 188, ctzudodo, 255 );

--SE
playSe( spep_3 + 14, 1018 );
playSe( spep_3 + 18, 20 );
se_1213 = playSe( spep_3 + 18, 1213 );
setSeVolume( spep_3 + 18, 1213, 71 );
playSe( spep_3 + 19, 1024 );
se_1044 = playSe( spep_3 + 19, 1044 );
playSe( spep_3 + 23, 1068 );
playSe( spep_3 + 24, 1014 );


-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 192, 0, 0, 0, 0, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1213, 0 );
    stopSe( SP_dodge - 12, se_1044, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
playSe( spep_3 + 120, 1024 );
playSe( spep_3 + 120, 1145 );
playSe( spep_3 + 124, 1067 );
se_1147 = playSe( spep_3 + 144, 1147 );

--白フェード
entryFade( spep_3 + 182, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
-- ** 次の準備 ** --
spep_4 = spep_3 + 190;
------------------------------------------------------
-- 敵吸い込まれる渦
------------------------------------------------------
-- ** エフェクト等 ** --
eddy_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, eddy_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, eddy_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, eddy_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, eddy_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, eddy_f, 0 );
setEffRotateKey( spep_4 + 80, eddy_f, 0 );
setEffAlphaKey( spep_4 + 0, eddy_f, 255 );
setEffAlphaKey( spep_4 + 80, eddy_f, 255 );

-- ** エフェクト等 ** --
eddy_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, eddy_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, eddy_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, eddy_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, eddy_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, eddy_b, 0 );
setEffRotateKey( spep_4 + 80, eddy_b, 0 );
setEffAlphaKey( spep_4 + 0, eddy_b, 255 );
setEffAlphaKey( spep_4 + 80, eddy_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 0, -60.7 , 0 );
setMoveKey( spep_4 + 2, 1, -1.2, -63.5 , 0 );
setMoveKey( spep_4 + 4, 1, -2.8, -66.9 , 0 );
setMoveKey( spep_4 + 6, 1, -4.4, -70 , 0 );
setMoveKey( spep_4 + 8, 1, -5.7, -72.4 , 0 );
setMoveKey( spep_4 + 10, 1, -6.5, -73.8 , 0 );
setMoveKey( spep_4 + 12, 1, -6.9, -75.1 , 0 );
setMoveKey( spep_4 + 14, 1, -7.1, -76.4 , 0 );
setMoveKey( spep_4 + 16, 1, -7, -78 , 0 );
setMoveKey( spep_4 + 18, 1, -6.4, -81.1 , 0 );
setMoveKey( spep_4 + 20, 1, -4.7, -86.9 , 0 );
setMoveKey( spep_4 + 22, 1, -4.2, -88.1 , 0 );
setMoveKey( spep_4 + 24, 1, -3.7, -89.4 , 0 );
setMoveKey( spep_4 + 26, 1, -3.3, -90.6 , 0 );
setMoveKey( spep_4 + 28, 1, -3, -92 , 0 );
setMoveKey( spep_4 + 30, 1, -2.8, -93.2 , 0 );
setMoveKey( spep_4 + 32, 1, -2.7, -94.4 , 0 );
setMoveKey( spep_4 + 34, 1, -2.7, -95.6 , 0 );
setMoveKey( spep_4 + 36, 1, -2.8, -96.5 , 0 );
setMoveKey( spep_4 + 38, 1, -3.1, -97.2 , 0 );
setMoveKey( spep_4 + 40, 1, -3.3, -97.7 , 0 );
setMoveKey( spep_4 + 42, 1, -3.5, -98.1 , 0 );
setMoveKey( spep_4 + 44, 1, -3.7, -98.2 , 0 );
setMoveKey( spep_4 + 46, 1, -3.7, -98.1 , 0 );
setMoveKey( spep_4 + 48, 1, -3.7, -97.8 , 0 );
setMoveKey( spep_4 + 50, 1, -3.5, -97.6 , 0 );
setMoveKey( spep_4 + 52, 1, -3, -97.5 , 0 );
setMoveKey( spep_4 + 54, 1, -2.6, -97.7 , 0 );
setMoveKey( spep_4 + 56, 1, -2.3, -98.3 , 0 );
setMoveKey( spep_4 + 58, 1, -3.1, -99 , 0 );

setScaleKey( spep_4 + 0, 1, 7.78, 7.79 );
setScaleKey( spep_4 + 2, 1, 6.62, 6.47 );
setScaleKey( spep_4 + 4, 1, 5.32, 4.98 );
setScaleKey( spep_4 + 6, 1, 4.03, 3.67 );
setScaleKey( spep_4 + 8, 1, 3.05, 2.82 );
setScaleKey( spep_4 + 10, 1, 2.42, 2.29 );
setScaleKey( spep_4 + 12, 1, 2, 1.93 );
setScaleKey( spep_4 + 14, 1, 1.69, 1.66 );
setScaleKey( spep_4 + 16, 1, 1.45, 1.44 );
setScaleKey( spep_4 + 18, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 22, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 24, 1, 0.86, 0.85 );
setScaleKey( spep_4 + 26, 1, 0.79, 0.78 );
setScaleKey( spep_4 + 28, 1, 0.72, 0.71 );
setScaleKey( spep_4 + 30, 1, 0.66, 0.64 );
setScaleKey( spep_4 + 32, 1, 0.6, 0.58 );
setScaleKey( spep_4 + 34, 1, 0.55, 0.52 );
setScaleKey( spep_4 + 36, 1, 0.5, 0.47 );
setScaleKey( spep_4 + 38, 1, 0.45, 0.43 );
setScaleKey( spep_4 + 40, 1, 0.41, 0.39 );
setScaleKey( spep_4 + 42, 1, 0.37, 0.35 );
setScaleKey( spep_4 + 44, 1, 0.33, 0.32 );
setScaleKey( spep_4 + 46, 1, 0.3, 0.29 );
setScaleKey( spep_4 + 48, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 50, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 52, 1, 0.22, 0.23 );
setScaleKey( spep_4 + 54, 1, 0.21, 0.22 );
setScaleKey( spep_4 + 56, 1, 0.19, 0.21 );
setScaleKey( spep_4 + 58, 1, 0.19, 0.21 );

setRotateKey( spep_4 + 0, 1, -7.8 );
setRotateKey( spep_4 + 2, 1, -7.8 );
setRotateKey( spep_4 + 4, 1, -7.9 );
setRotateKey( spep_4 + 6, 1, -8 );
setRotateKey( spep_4 + 8, 1, -8.3 );
setRotateKey( spep_4 + 10, 1, -8.5 );
setRotateKey( spep_4 + 12, 1, -8.6 );
setRotateKey( spep_4 + 14, 1, -8.7 );
setRotateKey( spep_4 + 16, 1, -8.8 );
setRotateKey( spep_4 + 18, 1, -8.8 );
setRotateKey( spep_4 + 20, 1, -5.9 );
setRotateKey( spep_4 + 22, 1, 0.7 );
setRotateKey( spep_4 + 24, 1, 9.8 );
setRotateKey( spep_4 + 26, 1, 20.7 );
setRotateKey( spep_4 + 28, 1, 33.1 );
setRotateKey( spep_4 + 30, 1, 47 );
setRotateKey( spep_4 + 32, 1, 62.1 );
setRotateKey( spep_4 + 34, 1, 78.6 );
setRotateKey( spep_4 + 36, 1, 96.4 );
setRotateKey( spep_4 + 38, 1, 115.7 );
setRotateKey( spep_4 + 40, 1, 136.5 );
setRotateKey( spep_4 + 42, 1, 159.1 );
setRotateKey( spep_4 + 44, 1, 183.9 );
setRotateKey( spep_4 + 46, 1, 211.2 );
setRotateKey( spep_4 + 48, 1, 242.1 );
setRotateKey( spep_4 + 50, 1, 276.7 );
setRotateKey( spep_4 + 52, 1, 315.3 );
setRotateKey( spep_4 + 54, 1, 360.6 );
setRotateKey( spep_4 + 56, 1, 419.4 );
setRotateKey( spep_4 + 58, 1, 563.2 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 + 46, 1, 255 );
setAlphaKey( spep_4 + 48, 1, 255 );
setAlphaKey( spep_4 + 50, 1, 251 );
setAlphaKey( spep_4 + 52, 1, 237 );
setAlphaKey( spep_4 + 54, 1, 205 );
setAlphaKey( spep_4 + 56, 1, 146 );
setAlphaKey( spep_4 + 58, 1, 1 )

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen3, 78, 20 );
setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_4 + 78, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 78, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 50, shuchusen3, 239 );
setEffAlphaKey( spep_4 + 52, shuchusen3, 223 );
setEffAlphaKey( spep_4 + 54, shuchusen3, 207 );
setEffAlphaKey( spep_4 + 56, shuchusen3, 190 );
setEffAlphaKey( spep_4 + 58, shuchusen3, 174 );
setEffAlphaKey( spep_4 + 60, shuchusen3, 158 );
setEffAlphaKey( spep_4 + 62, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 64, shuchusen3, 126 );
setEffAlphaKey( spep_4 + 66, shuchusen3, 110 );
setEffAlphaKey( spep_4 + 68, shuchusen3, 94 );
setEffAlphaKey( spep_4 + 70, shuchusen3, 77 );
setEffAlphaKey( spep_4 + 72, shuchusen3, 61 );
setEffAlphaKey( spep_4 + 74, shuchusen3, 45 );
setEffAlphaKey( spep_4 + 76, shuchusen3, 29 );
setEffAlphaKey( spep_4 + 78, shuchusen3, 13 );

--文字エントリー
ctzudodo2 = entryEffectLife( spep_4 + 0,  10014, 78, 0x100, -1, 0, 71.1, 369.2 );
setEffShake( spep_4 + 0, ctzudodo2, 78, 10 );
setEffMoveKey( spep_4 + 0, ctzudodo2, 71.1, 369.2 , 0 );
setEffMoveKey( spep_4 + 2, ctzudodo2, 49.9, 336.2 , 0 );
setEffMoveKey( spep_4 + 4, ctzudodo2, 51.1, 339.2 , 0 );
setEffMoveKey( spep_4 + 6, ctzudodo2, 26.3, 300.8 , 0 );
setEffMoveKey( spep_4 + 8, ctzudodo2, 25, 300.2 , 0 );
setEffMoveKey( spep_4 + 10, ctzudodo2, 12, 279.3 , 0 );
setEffMoveKey( spep_4 + 12, ctzudodo2, 25, 300.1 , 0 );
setEffMoveKey( spep_4 + 14, ctzudodo2, 11.9, 279.2 , 0 );
setEffMoveKey( spep_4 + 16, ctzudodo2, 25, 300.1 , 0 );
setEffMoveKey( spep_4 + 18, ctzudodo2, 11.8, 279 , 0 );
setEffMoveKey( spep_4 + 20, ctzudodo2, 25, 300.1 , 0 );
setEffMoveKey( spep_4 + 22, ctzudodo2, 11.6, 278.7 , 0 );
setEffMoveKey( spep_4 + 24, ctzudodo2, 25, 300.1 , 0 );
setEffMoveKey( spep_4 + 26, ctzudodo2, 11.5, 278.4 , 0 );
setEffMoveKey( spep_4 + 28, ctzudodo2, 25, 300 , 0 );
setEffMoveKey( spep_4 + 30, ctzudodo2, 11.3, 278.1 , 0 );
setEffMoveKey( spep_4 + 32, ctzudodo2, 25, 300 , 0 );
setEffMoveKey( spep_4 + 34, ctzudodo2, 11.2, 277.7 , 0 );
setEffMoveKey( spep_4 + 36, ctzudodo2, 25.1, 299.9 , 0 );
setEffMoveKey( spep_4 + 38, ctzudodo2, 10.9, 277.2 , 0 );
setEffMoveKey( spep_4 + 40, ctzudodo2, 25.1, 299.9 , 0 );
setEffMoveKey( spep_4 + 42, ctzudodo2, 10.7, 276.7 , 0 );
setEffMoveKey( spep_4 + 44, ctzudodo2, 25.1, 299.8 , 0 );
setEffMoveKey( spep_4 + 46, ctzudodo2, 10.4, 276 , 0 );
setEffMoveKey( spep_4 + 48, ctzudodo2, 25.2, 299.7 , 0 );
setEffMoveKey( spep_4 + 50, ctzudodo2, 10.1, 275.3 , 0 );
setEffMoveKey( spep_4 + 52, ctzudodo2, 25.3, 299.6 , 0 );
setEffMoveKey( spep_4 + 54, ctzudodo2, 9.7, 274.6 , 0 );
setEffMoveKey( spep_4 + 56, ctzudodo2, 25.3, 299.5 , 0 );
setEffMoveKey( spep_4 + 58, ctzudodo2, 9.2, 273.7 , 0 );
setEffMoveKey( spep_4 + 60, ctzudodo2, 25.4, 299.4 , 0 );
setEffMoveKey( spep_4 + 62, ctzudodo2, 8.9, 272.9 , 0 );
setEffMoveKey( spep_4 + 64, ctzudodo2, 25.4, 299.3 , 0 );
setEffMoveKey( spep_4 + 66, ctzudodo2, 8.5, 272.1 , 0 );
setEffMoveKey( spep_4 + 68, ctzudodo2, 25.5, 299.2 , 0 );
setEffMoveKey( spep_4 + 70, ctzudodo2, 8, 271.2 , 0 );
setEffMoveKey( spep_4 + 72, ctzudodo2, 25.5, 299.1 , 0 );
setEffMoveKey( spep_4 + 74, ctzudodo2, 7.7, 270.3 , 0 );
setEffMoveKey( spep_4 + 76, ctzudodo2, 25.6, 299 , 0 );
setEffMoveKey( spep_4 + 78, ctzudodo2, 7.3, 269.8 , 0 );

setEffScaleKey( spep_4 + 0, ctzudodo2, 2.18, 2.82 );
setEffScaleKey( spep_4 + 2, ctzudodo2, 2.23, 2.89 );
setEffScaleKey( spep_4 + 4, ctzudodo2, 2.29, 2.97 );
setEffScaleKey( spep_4 + 6, ctzudodo2, 2.36, 3.06 );
setEffScaleKey( spep_4 + 8, ctzudodo2, 2.44, 3.16 );
setEffScaleKey( spep_4 + 10, ctzudodo2, 2.44, 3.17 );
setEffScaleKey( spep_4 + 12, ctzudodo2, 2.45, 3.18 );
setEffScaleKey( spep_4 + 14, ctzudodo2, 2.46, 3.19 );
setEffScaleKey( spep_4 + 16, ctzudodo2, 2.47, 3.2 );
setEffScaleKey( spep_4 + 18, ctzudodo2, 2.48, 3.21 );
setEffScaleKey( spep_4 + 20, ctzudodo2, 2.49, 3.23 );
setEffScaleKey( spep_4 + 22, ctzudodo2, 2.51, 3.25 );
setEffScaleKey( spep_4 + 24, ctzudodo2, 2.52, 3.27 );
setEffScaleKey( spep_4 + 26, ctzudodo2, 2.54, 3.29 );
setEffScaleKey( spep_4 + 28, ctzudodo2, 2.55, 3.31 );
setEffScaleKey( spep_4 + 30, ctzudodo2, 2.57, 3.33 );
setEffScaleKey( spep_4 + 32, ctzudodo2, 2.59, 3.36 );
setEffScaleKey( spep_4 + 34, ctzudodo2, 2.61, 3.39 );
setEffScaleKey( spep_4 + 36, ctzudodo2, 2.64, 3.42 );
setEffScaleKey( spep_4 + 38, ctzudodo2, 2.66, 3.45 );
setEffScaleKey( spep_4 + 40, ctzudodo2, 2.69, 3.49 );
setEffScaleKey( spep_4 + 42, ctzudodo2, 2.72, 3.52 );
setEffScaleKey( spep_4 + 44, ctzudodo2, 2.75, 3.56 );
setEffScaleKey( spep_4 + 46, ctzudodo2, 2.78, 3.61 );
setEffScaleKey( spep_4 + 48, ctzudodo2, 2.82, 3.65 );
setEffScaleKey( spep_4 + 50, ctzudodo2, 2.85, 3.7 );
setEffScaleKey( spep_4 + 52, ctzudodo2, 2.89, 3.75 );
setEffScaleKey( spep_4 + 54, ctzudodo2, 2.93, 3.8 );
setEffScaleKey( spep_4 + 56, ctzudodo2, 2.97, 3.85 );
setEffScaleKey( spep_4 + 58, ctzudodo2, 3.02, 3.91 );
setEffScaleKey( spep_4 + 60, ctzudodo2, 3.06, 3.96 );
setEffScaleKey( spep_4 + 62, ctzudodo2, 3.1, 4.02 );
setEffScaleKey( spep_4 + 64, ctzudodo2, 3.15, 4.08 );
setEffScaleKey( spep_4 + 66, ctzudodo2, 3.19, 4.13 );
setEffScaleKey( spep_4 + 68, ctzudodo2, 3.23, 4.19 );
setEffScaleKey( spep_4 + 70, ctzudodo2, 3.28, 4.24 );
setEffScaleKey( spep_4 + 72, ctzudodo2, 3.32, 4.3 );
setEffScaleKey( spep_4 + 74, ctzudodo2, 3.36, 4.35 );
setEffScaleKey( spep_4 + 76, ctzudodo2, 3.4, 4.4 );
setEffScaleKey( spep_4 + 78, ctzudodo2, 3.44, 4.45 );

setEffRotateKey( spep_4 + 0, ctzudodo2, -25.7 );
setEffRotateKey( spep_4 + 6, ctzudodo2, -25.7 );
setEffRotateKey( spep_4 + 8, ctzudodo2, -25.8 );
setEffRotateKey( spep_4 + 52, ctzudodo2, -25.8 );
setEffRotateKey( spep_4 + 54, ctzudodo2, -25.7 );
setEffRotateKey( spep_4 + 78, ctzudodo2, -25.7 );

setEffAlphaKey( spep_4 + 0, ctzudodo2, 255 );
setEffAlphaKey( spep_4 + 78, ctzudodo2, 255 );

--SE
playSe( spep_4 + 9, 1182 );
playSe( spep_4 + 12, 1027 );
se_1183 = playSe( spep_4 + 16, 1183 );

stopSe( spep_4 + 67, se_1044, 0 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 82, 0, 0, 0, 0, 255 );

--白フェード
entryFade( spep_4 + 70, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );
setMoveKey( spep_5 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_5 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_5 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_5 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_5 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_5 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_5 + 0, 1, 0-z );
setRotateKey( spep_5 + 2, 1, 105-z );
setRotateKey( spep_5 + 4, 1, 240-z );
setRotateKey( spep_5 + 6, 1, 405-z );
setRotateKey( spep_5 + 8, 1, 600-z );
setRotateKey( spep_5 + 10, 1, 825-z );
setRotateKey( spep_5 + 12, 1, 1080-z );
setRotateKey( spep_5 + 110, 1, 1080-z );

setAlphaKey( spep_5 + 0, 1, 255 );
setAlphaKey( spep_5 + 110, 1, 255 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 100, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

--SE
playSe( spep_5 + 0, 1023 );
playSe( spep_5 + 14, 1054 );

stopSe( spep_5 + 13, se_1213, 0 );
stopSe( spep_5 + 13, se_1147, 0 );
stopSe( spep_5 + 5, se_1183, 0 );

--終わり
dealDamage( spep_5 +10 );
endPhase( spep_5 + 98 );
end
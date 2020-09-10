--4020100:アルティメット孫悟飯_爆裂ラッシュ
--sp_effect_b4_00151

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
SP_01=	155836	;--	導入部分
SP_02=	155837	;--	気合〜連撃〜叩き落とし・手前
SP_03=	155838	;--	気合〜連撃〜叩き落とし・奥
SP_04=	155839	;--	発射〜爆発

--エフェクト(てき)
SP_01x=	155840	;--	導入部分	(敵)
SP_02x=	155841	;--	気合〜連撃〜叩き落とし・手前	(敵)
SP_03x=	155842	;--	気合〜連撃〜叩き落とし・奥	(敵)
SP_04x=	155839	;--	発射〜爆発	

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

--[[
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
]]--

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入部分
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 130, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 130, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 130, tame, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 28, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 267.5, -36.5 , 0 );
setMoveKey( spep_0 + 2, 1, 271.4, -36.5 , 0 );
setMoveKey( spep_0 + 4, 1, 275.2, -36.5 , 0 );
setMoveKey( spep_0 + 6, 1, 278.8, -36.5 , 0 );
setMoveKey( spep_0 + 8, 1, 282.2, -36.5 , 0 );
setMoveKey( spep_0 + 10, 1, 285.5, -36.5 , 0 );
setMoveKey( spep_0 + 12, 1, 288.7, -36.5 , 0 );
setMoveKey( spep_0 + 14, 1, 291.8, -36.5 , 0 );
setMoveKey( spep_0 + 16, 1, 294.7, -36.5 , 0 );
setMoveKey( spep_0 + 18, 1, 297.4, -36.5 , 0 );
setMoveKey( spep_0 + 20, 1, 300, -36.5 , 0 );
setMoveKey( spep_0 + 22, 1, 302.5, -36.5 , 0 );
setMoveKey( spep_0 + 24, 1, 304.8, -36.5 , 0 );
setMoveKey( spep_0 + 26, 1, 307, -36.5 , 0 );
setMoveKey( spep_0-1 + 28, 1, 309, -36.5 , 0 );

setScaleKey( spep_0 + 0, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 1, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 2, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 3, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 4, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 5, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 6, 1, 4.2, 4.2 );
setScaleKey( spep_0-1 + 28, 1, 4.2, 4.2 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 28, 1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+34  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+34  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +46, 190006, 72, 0x102, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +46,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +108,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +46, ctgogo, 0 );
setEffAlphaKey( spep_0 + 47, ctgogo, 255 );
setEffAlphaKey( spep_0 + 48, ctgogo, 255 );
setEffAlphaKey( spep_0 + 102, ctgogo, 255 );
setEffAlphaKey( spep_0 + 104, ctgogo, 191 );
setEffAlphaKey( spep_0 + 106, ctgogo, 112 );
setEffAlphaKey( spep_0 + 108, ctgogo, 64 );

setEffRotateKey(  spep_0 +46,  ctgogo,  0);
setEffRotateKey(  spep_0 +108,  ctgogo,  0);

setEffScaleKey(  spep_0 +46,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +98,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +108,  ctgogo, 1.07, 1.07 );

--SE
SE3=playSe( spep_0 + 0, 1269 );--入り
setSeVolume( spep_0 + 0, 1269, 26 );
playSe( spep_0 + 0, 8 );--入り
playSe( spep_0 + 46, 1018 );--セリフカットイン

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 130;
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
se_1175 = playSe( spep_1 + 0, 1175 );--土煙
setSeVolume( spep_1 + 0, 1175, 0 );
stopSe( spep_1 + 0, SE3, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 気合〜連撃〜叩き落とし
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 656, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 656, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 656, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 656, fighting_f, 255 );
setEffAlphaKey( spep_2 + 657, fighting_f, 0 );
setEffAlphaKey( spep_2 + 658, fighting_f, 0 );

-- ** エフェクト等 ** --
ctkakimozi = entryEffect( spep_2 + 0, 155843, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ctkakimozi, 0, 0, 0 );
setEffMoveKey( spep_2 + 656, ctkakimozi, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ctkakimozi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 656, ctkakimozi, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ctkakimozi, 0 );
setEffRotateKey( spep_2 + 656, ctkakimozi, 0 );
setEffAlphaKey( spep_2 + 0, ctkakimozi, 255 );
setEffAlphaKey( spep_2 + 656, ctkakimozi, 255 );
setEffAlphaKey( spep_2 + 657, ctkakimozi, 0 );
setEffAlphaKey( spep_2 + 658, ctkakimozi, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 656, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 656, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 656, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 656, fighting_b, 255 );
setEffAlphaKey( spep_2 + 657, fighting_b, 0 );
setEffAlphaKey( spep_2 + 658, fighting_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2-3 + 66, 1, 118 );

setMoveKey( spep_2-3 + 0, 1, 135.9, 218.8 , 0 );
setMoveKey( spep_2-3 + 2, 1, 126.2, 210.8 , 0 );
setMoveKey( spep_2-3 + 4, 1, 114.9, 192.6 , 0 );
setMoveKey( spep_2-3 + 6, 1, 107.5, 194.3 , 0 );
setMoveKey( spep_2-3 + 8, 1, 94.1, 188.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 94.4, 180.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, 88.6, 169.2 , 0 );
setMoveKey( spep_2-3 + 14, 1, 86.8, 169.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, 81, 162.5 , 0 );
setMoveKey( spep_2-3 + 18, 1, 79.2, 159.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 69.4, 151.8 , 0 );
setMoveKey( spep_2-3 + 22, 1, 71.5, 148.5 , 0 );
setMoveKey( spep_2-3 + 24, 1, 65.7, 137.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 63.7, 137.8 , 0 );
setMoveKey( spep_2-3 + 28, 1, 55.9, 136.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, 16.3, 59.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 14.3, 53.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 16.3, 59.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 12.3, 57.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 16.3, 59.9 , 0 );
setMoveKey( spep_2-3 + 40, 1, 14.3, 57.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 16.3, 59.9 , 0 )
setMoveKey( spep_2-3 + 64, 1, 16.3, 59.9 , 0 )
setMoveKey( spep_2-3 + 65, 1, 16.3, 59.9 , 0 )

setMoveKey( spep_2-3 + 66, 1, 479.1, -114.5 , 0 );
setMoveKey( spep_2-3 + 68, 1, 472.8, -112 , 0 );
setMoveKey( spep_2-3 + 70, 1, 466.4, -109.4 , 0 );
setMoveKey( spep_2-3 + 72, 1, 460.1, -106.8 , 0 );
setMoveKey( spep_2-3 + 74, 1, 453.8, -104.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, 447.5, -101.7 , 0 );
setMoveKey( spep_2-3 + 78, 1, 441.1, -99.2 , 0 );
setMoveKey( spep_2-3 + 80, 1, 434.8, -96.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 437.4, -96.8 , 0 );

setScaleKey( spep_2-3 + 0, 1, 1.73, 1.73 );
setScaleKey( spep_2-3 + 2, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 4, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 6, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 8, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 14, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 16, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 18, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 20, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 22, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 26, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 29, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 30, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 64, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 65, 1, 0.53, 0.53 );

setScaleKey( spep_2-3 + 66, 1, 5.61, 5.61 );
setScaleKey( spep_2-3 + 68, 1, 5.57, 5.57 );
setScaleKey( spep_2-3 + 70, 1, 5.53, 5.53 );
setScaleKey( spep_2-3 + 72, 1, 5.49, 5.49 );
setScaleKey( spep_2-3 + 74, 1, 5.45, 5.45 );
setScaleKey( spep_2-3 + 76, 1, 5.41, 5.41 );
setScaleKey( spep_2-3 + 78, 1, 5.37, 5.37 );
setScaleKey( spep_2-3 + 80, 1, 5.33, 5.33 );
setScaleKey( spep_2-3 + 82, 1, 5.36, 5.36 );

setRotateKey( spep_2-3 + 0, 1, -0.3 );
setRotateKey( spep_2-3 + 6, 1, -0.3 );
setRotateKey( spep_2-3 + 8, 1, -0.2 );
setRotateKey( spep_2-3 + 10, 1, -0.1 );
setRotateKey( spep_2-3 + 12, 1, 0.1 );
setRotateKey( spep_2-3 + 14, 1, 0.2 );
setRotateKey( spep_2-3 + 16, 1, 0.3 );
setRotateKey( spep_2-3 + 18, 1, 0.5 );
setRotateKey( spep_2-3 + 20, 1, 0.6 );
setRotateKey( spep_2-3 + 22, 1, 0.8 );
setRotateKey( spep_2-3 + 24, 1, 0.9 );
setRotateKey( spep_2-3 + 26, 1, 1.1 );
setRotateKey( spep_2-3 + 28, 1, 1.2 );
setRotateKey( spep_2-3 + 64, 1, 1.2 );
setRotateKey( spep_2-3 + 65, 1, 1.2 );

setRotateKey( spep_2-3 + 66, 1, 0 );
setRotateKey( spep_2-3 + 82, 1, 0 );

--SE
setSeVolume( spep_2 + 17, 1175, 0 );
setSeVolume( spep_2 + 18, 1175, 4.07 );
setSeVolume( spep_2 + 19, 1175, 8.13 );
setSeVolume( spep_2 + 20, 1175, 12.2 );
setSeVolume( spep_2 + 21, 1175, 16.27 );
setSeVolume( spep_2 + 22, 1175, 20.33 );
setSeVolume( spep_2 + 23, 1175, 24.40 );
setSeVolume( spep_2 + 24, 1175, 28.47 );
setSeVolume( spep_2 + 25, 1175, 32.53 );
setSeVolume( spep_2 + 26, 1175, 36.6 );
setSeVolume( spep_2 + 27, 1175, 40.67 );
setSeVolume( spep_2 + 28, 1175, 44.73 );
setSeVolume( spep_2 + 29, 1175, 48.8 );
setSeVolume( spep_2 + 30, 1175, 52.87 );
setSeVolume( spep_2 + 31, 1175, 56.93 );
setSeVolume( spep_2 + 32, 1175, 61 );

SE0=playSe( spep_2 + 0, 1188 );--土煙
setSeVolume( spep_2 + 0, 1188, 62 );
SE1=playSe( spep_2 + 0, 19 );--土煙
setSeVolume( spep_2 + 0, 19, 47 );
SE2=playSe( spep_2 + 0, 1192 );--土煙
setSeVolume( spep_2 + 0, 1192, 37 );
se_1269 = playSe( spep_2 + 0, 1269 );--土煙
setSeVolume( spep_2 + 0, 1269, 0 );
setSeVolume( spep_2 + 1, 1269, 1.91 );
setSeVolume( spep_2 + 2, 1269, 3.83 );
setSeVolume( spep_2 + 3, 1269, 5.74 );
setSeVolume( spep_2 + 4, 1269, 7.66 );
setSeVolume( spep_2 + 5, 1269, 9.57 );
setSeVolume( spep_2 + 6, 1269, 11.49 );
setSeVolume( spep_2 + 7, 1269, 13.4 );
setSeVolume( spep_2 + 8, 1269, 15.31 );
setSeVolume( spep_2 + 9, 1269, 17.23 );
setSeVolume( spep_2 + 10, 1269, 19.14 );
setSeVolume( spep_2 + 11, 1269, 21.06 );
setSeVolume( spep_2 + 12, 1269, 22.97 );
setSeVolume( spep_2 + 13, 1269, 24.89 );
setSeVolume( spep_2 + 14, 1269, 26.80 );
setSeVolume( spep_2 + 15, 1269, 28.71 );
setSeVolume( spep_2 + 16, 1269, 30.63 );
setSeVolume( spep_2 + 17, 1269, 32.54 );
setSeVolume( spep_2 + 18, 1269, 34.46 );
setSeVolume( spep_2 + 19, 1269, 36.37 );
setSeVolume( spep_2 + 20, 1269, 38.29 );
setSeVolume( spep_2 + 21, 1269, 40.2 );
setSeVolume( spep_2 + 22, 1269, 42.11 );
setSeVolume( spep_2 + 23, 1269, 44.03 );
setSeVolume( spep_2 + 24, 1269, 45.94 );
setSeVolume( spep_2 + 25, 1269, 47.86 );
setSeVolume( spep_2 + 26, 1269, 49.77 );
setSeVolume( spep_2 + 27, 1269, 51.69 );
setSeVolume( spep_2 + 28, 1269, 53.6 );
setSeVolume( spep_2 + 29, 1269, 55.51 );
setSeVolume( spep_2 + 30, 1269, 57.43 );
setSeVolume( spep_2 + 31, 1269, 59.34 );
setSeVolume( spep_2 + 32, 1269, 61.26 );
setSeVolume( spep_2 + 33, 1269, 63.17 );
setSeVolume( spep_2 + 34, 1269, 65.09 );
setSeVolume( spep_2 + 35, 1269, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 660, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1269, 0 );
    stopSe( SP_dodge - 12, se_1175, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 437.4, -96.8 , 0 );
    setScaleKey( SP_dodge + 9, 1, 5.36, 5.36 );
    setRotateKey( SP_dodge + 9, 1, 0 );

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_2-1 + 134, 1, 0 );

changeAnime( spep_2-3 + 104, 1, 107 );

setMoveKey( spep_2-3 + 84, 1, 439.9, -97 , 0 );
setMoveKey( spep_2-3 + 86, 1, 442.5, -97.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 445.1, -97.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 447.6, -97.5 , 0 );
setMoveKey( spep_2-3 + 92, 1, 450.2, -97.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 452.8, -97.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, 455.3, -98 , 0 );
setMoveKey( spep_2-3 + 98, 1, 457.9, -98.1 , 0 );
setMoveKey( spep_2-3 + 100, 1, 460.5, -98.4 , 0 );
setMoveKey( spep_2-3 + 102, 1, 463.1, -98.5 , 0 );
setMoveKey( spep_2-3 + 103, 1, 463.1, -98.5 , 0 );

setMoveKey( spep_2-3 + 104, 1, 429.3, 10.9 , 0 );
setMoveKey( spep_2-3 + 106, 1, 401.4, 46.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, 363.4, 44 , 0 );
setMoveKey( spep_2-3 + 110, 1, 331.2, 71.5 , 0 );
setMoveKey( spep_2-3 + 112, 1, 329, 102.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, 344.7, 87.5 , 0 );
setMoveKey( spep_2-3 + 116, 1, 336.4, 88.4 , 0 );
setMoveKey( spep_2-3 + 118, 1, 352, 97.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, 339.7, 98.5 , 0 );
setMoveKey( spep_2-3 + 122, 1, 359.4, 107.6 , 0 );
setMoveKey( spep_2-3 + 124, 1, 359.2, 104.7 , 0 );
setMoveKey( spep_2-3 + 126, 1, 367, 117.9 , 0 );
setMoveKey( spep_2-3 + 128, 1, 354.7, 119 , 0 );
setMoveKey( spep_2-3 + 130, 1, 374.6, 128.2 , 0 );
setMoveKey( spep_2-3 + 132, 1, 378.4, 133.4 , 0 );
setMoveKey( spep_2-1 + 134, 1, 382.3, 138.6 , 0 );

setScaleKey( spep_2-3 + 84, 1, 5.38, 5.38 );
setScaleKey( spep_2-3 + 86, 1, 5.41, 5.41 );
setScaleKey( spep_2-3 + 88, 1, 5.43, 5.43 );
setScaleKey( spep_2-3 + 90, 1, 5.46, 5.46 );
setScaleKey( spep_2-3 + 92, 1, 5.48, 5.48 );
setScaleKey( spep_2-3 + 94, 1, 5.51, 5.51 );
setScaleKey( spep_2-3 + 96, 1, 5.53, 5.53 );
setScaleKey( spep_2-3 + 98, 1, 5.56, 5.56 );
setScaleKey( spep_2-3 + 100, 1, 5.58, 5.58 );
setScaleKey( spep_2-3 + 102, 1, 5.61, 5.61 );
setScaleKey( spep_2-3 + 103, 1, 5.61, 5.61 );

setScaleKey( spep_2-3 + 104, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 106, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 108, 1, 1.77, 1.77 );
setScaleKey( spep_2-3 + 110, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 112, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 114, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 116, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 118, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 120, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 122, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 124, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 126, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 128, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 130, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 132, 1, 1.68, 1.68 );
setScaleKey( spep_2-1 + 134, 1, 1.69, 1.69 );

setRotateKey( spep_2-3 + 102, 1, 0 );
setRotateKey( spep_2-3 + 103, 1, 0 );

setRotateKey( spep_2-3 + 104, 1, -110.7 );
setRotateKey( spep_2-3 + 106, 1, -109.9 );
setRotateKey( spep_2-3 + 108, 1, -109.1 );
setRotateKey( spep_2-3 + 110, 1, -108.3 );
setRotateKey( spep_2-3 + 112, 1, -107.5 );
setRotateKey( spep_2-3 + 114, 1, -107.4 );
setRotateKey( spep_2-3 + 116, 1, -107.2 );
setRotateKey( spep_2-3 + 118, 1, -107 );
setRotateKey( spep_2-3 + 120, 1, -106.8 );
setRotateKey( spep_2-3 + 122, 1, -106.6 );
setRotateKey( spep_2-3 + 124, 1, -106.5 );
setRotateKey( spep_2-3 + 126, 1, -106.3 );
setRotateKey( spep_2-3 + 128, 1, -106.1 );
setRotateKey( spep_2-3 + 130, 1, -105.9 );
setRotateKey( spep_2-3 + 132, 1, -105.7 );
setRotateKey( spep_2-1 + 134, 1, -105.5 );

--敵の動き
setDisp( spep_2-3 + 176, 1, 1 );
setDisp( spep_2-1 + 354, 1, 0 );

changeAnime( spep_2-3 + 176, 1, 5 );
changeAnime( spep_2-3 + 244, 1, 106 );
changeAnime( spep_2-3 + 268, 1, 107 );
changeAnime( spep_2-3 + 320, 1, 108 );

setMoveKey( spep_2-3 + 176, 1, 153.9, 331.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 207.5, 348.1 , 0 );
setMoveKey( spep_2-3 + 180, 1, 234.3, 355.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, 274.4, 340.6 , 0 );
setMoveKey( spep_2-3 + 184, 1, 250.8, 335.6 , 0 );
setMoveKey( spep_2-3 + 186, 1, 277.8, 329 , 0 );
setMoveKey( spep_2-3 + 188, 1, 289, 302.4 , 0 );
setMoveKey( spep_2-3 + 190, 1, 308.1, 307.8 , 0 );
setMoveKey( spep_2-3 + 192, 1, 311.1, 293.2 , 0 );
setMoveKey( spep_2-3 + 194, 1, 338.3, 286.6 , 0 );
setMoveKey( spep_2-3 + 196, 1, 318.5, 297.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 323.8, 277.8 , 0 );
setMoveKey( spep_2-3 + 200, 1, 310.1, 266.4 , 0 );
setMoveKey( spep_2-3 + 202, 1, 313.3, 270.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 309.1, 267.3 , 0 );
setMoveKey( spep_2-3 + 206, 1, 305, 263.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, 301, 260.4 , 0 );
setMoveKey( spep_2-3 + 210, 1, 297.2, 257.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, 293.6, 255.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 290.5, 253.2 , 0 );
setMoveKey( spep_2-3 + 216, 1, 287.7, 251.8 , 0 );
setMoveKey( spep_2-3 + 218, 1, 285.5, 250.9 , 0 );
setMoveKey( spep_2-3 + 220, 1, 266.2, 244.3 , 0 );
setMoveKey( spep_2-3 + 222, 1, 246.7, 237.9 , 0 );
setMoveKey( spep_2-3 + 224, 1, 227, 231.6 , 0 );
setMoveKey( spep_2-3 + 226, 1, 207, 225.2 , 0 );
setMoveKey( spep_2-3 + 228, 1, 186.9, 218.6 , 0 );
setMoveKey( spep_2-3 + 230, 1, 166.6, 211.8 , 0 );
setMoveKey( spep_2-3 + 232, 1, 159.2, 199.2 , 0 );
setMoveKey( spep_2-3 + 234, 1, 151.3, 185.1 , 0 );
setMoveKey( spep_2-3 + 236, 1, 142.7, 169.6 , 0 );
setMoveKey( spep_2-3 + 238, 1, 133.7, 152.7 , 0 );
setMoveKey( spep_2-3 + 240, 1, 124.2, 134.4 , 0 );
setMoveKey( spep_2-3 + 242, 1, 114.4, 114.9 , 0 );
setMoveKey( spep_2-3 + 243, 1, 114.4, 114.9 , 0 );

setMoveKey( spep_2-3 + 244, 1, 239, 95.5 , 0 );
setMoveKey( spep_2-3 + 246, 1, 199.7, 186.1 , 0 );
setMoveKey( spep_2-3 + 248, 1, 144.3, 244.5 , 0 );
setMoveKey( spep_2-3 + 250, 1, 125.8, 191.6 , 0 );
setMoveKey( spep_2-3 + 252, 1, 122.5, 188.9 , 0 );
setMoveKey( spep_2-3 + 254, 1, 134.8, 217 , 0 );
setMoveKey( spep_2-3 + 256, 1, 126.5, 223.7 , 0 );
setMoveKey( spep_2-3 + 258, 1, 141.5, 237.2 , 0 );
setMoveKey( spep_2-3 + 260, 1, 136, 257.4 , 0 );
setMoveKey( spep_2-3 + 262, 1, 146, 252.3 , 0 );
setMoveKey( spep_2-3 + 264, 1, 135.4, 242 , 0 );
setMoveKey( spep_2-3 + 266, 1, 148.2, 262.3 , 0 );
setMoveKey( spep_2-3 + 267, 1, 148.2, 262.3 , 0 );

setMoveKey( spep_2-3 + 268, 1, 74.2, -848.3 , 0 );
setMoveKey( spep_2-3 + 270, 1, 76.2, -872.7 , 0 );
setMoveKey( spep_2-3 + 272, 1, 78.2, -897.1 , 0 );
setMoveKey( spep_2-3 + 274, 1, 80.3, -921.9 , 0 );
setMoveKey( spep_2-3 + 276, 1, 82.3, -946.7 , 0 );
setMoveKey( spep_2-3 + 278, 1, 84.4, -971.7 , 0 );
setMoveKey( spep_2-3 + 280, 1, 86.4, -996.9 , 0 );
setMoveKey( spep_2-3 + 282, 1, 88.5, -1022.2 , 0 );
setMoveKey( spep_2-3 + 284, 1, 90.6, -1047.7 , 0 );
setMoveKey( spep_2-3 + 286, 1, 92.7, -1073.4 , 0 );
setMoveKey( spep_2-3 + 288, 1, 94.8, -1099.2 , 0 );
setMoveKey( spep_2-3 + 290, 1, 96.9, -1125.1 , 0 );
setMoveKey( spep_2-3 + 292, 1, 99, -1151.3 , 0 );
setMoveKey( spep_2-3 + 294, 1, 101.1, -1177.6 , 0 );
setMoveKey( spep_2-3 + 296, 1, 103.2, -1204.1 , 0 );
setMoveKey( spep_2-3 + 298, 1, 105.3, -1230.7 , 0 );
setMoveKey( spep_2-3 + 300, 1, 107.4, -1257.5 , 0 );
setMoveKey( spep_2-3 + 302, 1, 110.6, -1288.1 , 0 );
setMoveKey( spep_2-3 + 304, 1, 113.8, -1318.8 , 0 );
setMoveKey( spep_2-3 + 306, 1, 117, -1349.8 , 0 );
setMoveKey( spep_2-3 + 308, 1, 120.3, -1381.1 , 0 );
setMoveKey( spep_2-3 + 310, 1, 123.4, -1412.4 , 0 );
setMoveKey( spep_2-3 + 312, 1, 126.7, -1444.1 , 0 );
setMoveKey( spep_2-3 + 314, 1, 130, -1476 , 0 );
setMoveKey( spep_2-3 + 316, 1, 133.2, -1508 , 0 );
setMoveKey( spep_2-3 + 318, 1, 136.4, -1540.4 , 0 );
setMoveKey( spep_2-3 + 319, 1, 136.4, -1540.4 , 0 );

setMoveKey( spep_2-3 + 320, 1, 249.4, -40.2 , 0 );
setMoveKey( spep_2-3 + 322, 1, 255.9, -11.8 , 0 );
setMoveKey( spep_2-3 + 324, 1, 261, 16.6 , 0 );
setMoveKey( spep_2-3 + 326, 1, 264.6, 44.9 , 0 );
setMoveKey( spep_2-3 + 328, 1, 266.8, 73.3 , 0 );
setMoveKey( spep_2-3 + 330, 1, 247.9, 109 , 0 );
setMoveKey( spep_2-3 + 332, 1, 260.8, 72.6 , 0 );
setMoveKey( spep_2-3 + 334, 1, 253.7, 52.3 , 0 );
setMoveKey( spep_2-3 + 336, 1, 254.8, 72 , 0 );
setMoveKey( spep_2-3 + 338, 1, 239.7, 67.6 , 0 );
setMoveKey( spep_2-3 + 340, 1, 248.6, 71.3 , 0 );
setMoveKey( spep_2-3 + 342, 1, 241.6, 59 , 0 );
setMoveKey( spep_2-3 + 344, 1, 242.5, 70.7 , 0 );
setMoveKey( spep_2-3 + 346, 1, 223.3, 82.3 , 0 );
setMoveKey( spep_2-3 + 348, 1, 236.3, 70 , 0 );
setMoveKey( spep_2-3 + 350, 1, 229.2, 53.7 , 0 );
setMoveKey( spep_2-3 + 352, 1, 230, 69.3 , 0 );
setMoveKey( spep_2-1 + 354, 1, 214.9, 65 , 0 );

setScaleKey( spep_2-3 + 176, 1, 4, 4 );
setScaleKey( spep_2-3 + 178, 1, 3.68, 3.68 );
setScaleKey( spep_2-3 + 180, 1, 3.35, 3.35 );
setScaleKey( spep_2-3 + 182, 1, 3.03, 3.03 );
setScaleKey( spep_2-3 + 184, 1, 2.71, 2.71 );
setScaleKey( spep_2-3 + 194, 1, 2.71, 2.71 );
setScaleKey( spep_2-3 + 196, 1, 2.65, 2.65 );
setScaleKey( spep_2-3 + 198, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 200, 1, 2.55, 2.55 );
setScaleKey( spep_2-3 + 202, 1, 2.51, 2.51 );
setScaleKey( spep_2-3 + 204, 1, 2.47, 2.47 );
setScaleKey( spep_2-3 + 206, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 208, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 210, 1, 2.38, 2.38 );
setScaleKey( spep_2-3 + 212, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 214, 1, 2.34, 2.34 );
setScaleKey( spep_2-3 + 216, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 218, 1, 2.31, 2.31 );
setScaleKey( spep_2-3 + 220, 1, 2.26, 2.26 );
setScaleKey( spep_2-3 + 222, 1, 2.21, 2.21 );
setScaleKey( spep_2-3 + 224, 1, 2.16, 2.16 );
setScaleKey( spep_2-3 + 226, 1, 2.1, 2.1 );
setScaleKey( spep_2-3 + 228, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 230, 1, 2, 2 );
setScaleKey( spep_2-3 + 232, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 234, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 236, 1, 2.07, 2.07 );
setScaleKey( spep_2-3 + 238, 1, 2.1, 2.1 );
setScaleKey( spep_2-3 + 240, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 242, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 243, 1, 2.17, 2.17 );

setScaleKey( spep_2-3 + 244, 1, 3.38, 3.38 );
setScaleKey( spep_2-3 + 246, 1, 3.16, 3.16 );
setScaleKey( spep_2-3 + 248, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 250, 1, 2.64, 2.64 );
setScaleKey( spep_2-3 + 252, 1, 2.59, 2.59 );
setScaleKey( spep_2-3 + 254, 1, 2.55, 2.55 );
setScaleKey( spep_2-3 + 256, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 258, 1, 2.45, 2.45 );
setScaleKey( spep_2-3 + 260, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 262, 1, 2.35, 2.35 );
setScaleKey( spep_2-3 + 264, 1, 2.3, 2.3 );
setScaleKey( spep_2-3 + 266, 1, 2.25, 2.25 );
setScaleKey( spep_2-3 + 267, 1, 2.25, 2.25 );

setScaleKey( spep_2-3 + 268, 1, 3.37, 3.37 );
setScaleKey( spep_2-3 + 270, 1, 3.43, 3.43 );
setScaleKey( spep_2-3 + 272, 1, 3.49, 3.49 );
setScaleKey( spep_2-3 + 274, 1, 3.55, 3.55 );
setScaleKey( spep_2-3 + 276, 1, 3.61, 3.61 );
setScaleKey( spep_2-3 + 278, 1, 3.67, 3.67 );
setScaleKey( spep_2-3 + 280, 1, 3.73, 3.73 );
setScaleKey( spep_2-3 + 282, 1, 3.79, 3.79 );
setScaleKey( spep_2-3 + 284, 1, 3.85, 3.85 );
setScaleKey( spep_2-3 + 286, 1, 3.91, 3.91 );
setScaleKey( spep_2-3 + 288, 1, 3.97, 3.97 );
setScaleKey( spep_2-3 + 290, 1, 4.03, 4.03 );
setScaleKey( spep_2-3 + 292, 1, 4.09, 4.09 );
setScaleKey( spep_2-3 + 294, 1, 4.15, 4.15 );
setScaleKey( spep_2-3 + 296, 1, 4.22, 4.22 );
setScaleKey( spep_2-3 + 298, 1, 4.28, 4.28 );
setScaleKey( spep_2-3 + 300, 1, 4.34, 4.34 );
setScaleKey( spep_2-3 + 302, 1, 4.42, 4.42 );
setScaleKey( spep_2-3 + 304, 1, 4.5, 4.5 );
setScaleKey( spep_2-3 + 306, 1, 4.58, 4.58 );
setScaleKey( spep_2-3 + 308, 1, 4.66, 4.66 );
setScaleKey( spep_2-3 + 310, 1, 4.75, 4.75 );
setScaleKey( spep_2-3 + 312, 1, 4.83, 4.83 );
setScaleKey( spep_2-3 + 314, 1, 4.91, 4.91 );
setScaleKey( spep_2-3 + 316, 1, 4.99, 4.99 );
setScaleKey( spep_2-3 + 318, 1, 5.08, 5.08 );
setScaleKey( spep_2-3 + 319, 1, 5.08, 5.08 );

setScaleKey( spep_2-3 + 320, 1, 4.57, 4.57 );
setScaleKey( spep_2-3 + 322, 1, 4.11, 4.11 );
setScaleKey( spep_2-3 + 324, 1, 3.64, 3.64 );
setScaleKey( spep_2-3 + 326, 1, 3.18, 3.18 );
setScaleKey( spep_2-3 + 328, 1, 2.72, 2.72 );
setScaleKey( spep_2-3 + 330, 1, 2.68, 2.68 );
setScaleKey( spep_2-3 + 332, 1, 2.64, 2.64 );
setScaleKey( spep_2-3 + 334, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 336, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 338, 1, 2.52, 2.52 );
setScaleKey( spep_2-3 + 340, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 342, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 344, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 346, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 348, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 350, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 352, 1, 2.25, 2.25 );
setScaleKey( spep_2-1 + 354, 1, 2.21, 2.21 );

setRotateKey( spep_2-3 + 176, 1, 250 );
setRotateKey( spep_2-3 + 194, 1, 250 );
setRotateKey( spep_2-3 + 195, 1, 250 );
setRotateKey( spep_2-3 + 196, 1, 100.6 );
setRotateKey( spep_2-3 + 197, 1, 100.6 );
setRotateKey( spep_2-3 + 198, 1, 37.5 );
setRotateKey( spep_2-3 + 199, 1, 37.5 );
setRotateKey( spep_2-3 + 200, 1, -50.6 );
setRotateKey( spep_2-3 + 201, 1, -50.6 );
setRotateKey( spep_2-3 + 202, 1, -120 );
setRotateKey( spep_2-3 + 203, 1, -120 );
setRotateKey( spep_2-3 + 204, 1, -200.6 );
setRotateKey( spep_2-3 + 205, 1, -200.6 );
setRotateKey( spep_2-3 + 206, 1, -287.5 );
setRotateKey( spep_2-3 + 207, 1, -287.5 );
setRotateKey( spep_2-3 + 208, 1, -320.6 );
setRotateKey( spep_2-3 + 209, 1, -320.6 );
setRotateKey( spep_2-3 + 210, 1, -367.5 );
setRotateKey( spep_2-3 + 211, 1, -367.5 );
setRotateKey( spep_2-3 + 212, 1, -410.6 );
setRotateKey( spep_2-3 + 213, 1, -410.6 );
setRotateKey( spep_2-3 + 214, 1, -437.5 );
setRotateKey( spep_2-3 + 215, 1, -437.5 );
setRotateKey( spep_2-3 + 216, 1, -470.6 );
setRotateKey( spep_2-3 + 217, 1, -470.6 );
setRotateKey( spep_2-3 + 218, 1, -490 );
setRotateKey( spep_2-3 + 219, 1, -490 );
setRotateKey( spep_2-3 + 220, 1, -510 );
setRotateKey( spep_2-3 + 221, 1, -510 );
setRotateKey( spep_2-3 + 222, 1, -560 );
setRotateKey( spep_2-3 + 223, 1, -560 );
setRotateKey( spep_2-3 + 224, 1, -590 );
setRotateKey( spep_2-3 + 225, 1, -590 );
setRotateKey( spep_2-3 + 226, 1, -610 );
setRotateKey( spep_2-3 + 227, 1, -610 );
setRotateKey( spep_2-3 + 228, 1, -630 );
setRotateKey( spep_2-3 + 229, 1, -630 );
setRotateKey( spep_2-3 + 230, 1, -670 );
setRotateKey( spep_2-3 + 231, 1, -670 );
setRotateKey( spep_2-3 +242, 1, -820.4);
setRotateKey( spep_2-3 +243, 1, -820.4);

setRotateKey( spep_2-3 + 244, 1, -94.6 );
setRotateKey( spep_2-3 + 246, 1, -81.4 );
setRotateKey( spep_2-3 + 248, 1, -68.2 );
setRotateKey( spep_2-3 + 250, 1, -64.6 );
setRotateKey( spep_2-3 + 252, 1, -61.1 );
setRotateKey( spep_2-3 + 254, 1, -57.6 );
setRotateKey( spep_2-3 + 256, 1, -54 );
setRotateKey( spep_2-3 + 258, 1, -50.5 );
setRotateKey( spep_2-3 + 260, 1, -46.9 );
setRotateKey( spep_2-3 + 262, 1, -43.4 );
setRotateKey( spep_2-3 + 264, 1, -39.9 );
setRotateKey( spep_2-3 + 266, 1, -36.3 );
setRotateKey( spep_2-3 + 267, 1, -36.3 );

setRotateKey( spep_2-3 + 268, 1, -66.7 );
setRotateKey( spep_2-3 + 270, 1, -66.4 );
setRotateKey( spep_2-3 + 272, 1, -66.2 );
setRotateKey( spep_2-3 + 274, 1, -66 );
setRotateKey( spep_2-3 + 276, 1, -65.8 );
setRotateKey( spep_2-3 + 278, 1, -65.5 );
setRotateKey( spep_2-3 + 280, 1, -65.3 );
setRotateKey( spep_2-3 + 282, 1, -65.1 );
setRotateKey( spep_2-3 + 284, 1, -64.8 );
setRotateKey( spep_2-3 + 286, 1, -64.6 );
setRotateKey( spep_2-3 + 288, 1, -64.4 );
setRotateKey( spep_2-3 + 290, 1, -64.1 );
setRotateKey( spep_2-3 + 292, 1, -63.9 );
setRotateKey( spep_2-3 + 294, 1, -63.7 );
setRotateKey( spep_2-3 + 296, 1, -63.5 );
setRotateKey( spep_2-3 + 298, 1, -63.2 );
setRotateKey( spep_2-3 + 300, 1, -63 );
setRotateKey( spep_2-3 + 302, 1, -62.8 );
setRotateKey( spep_2-3 + 304, 1, -62.5 );
setRotateKey( spep_2-3 + 306, 1, -62.3 );
setRotateKey( spep_2-3 + 308, 1, -62.1 );
setRotateKey( spep_2-3 + 310, 1, -61.8 );
setRotateKey( spep_2-3 + 312, 1, -61.6 );
setRotateKey( spep_2-3 + 314, 1, -61.4 );
setRotateKey( spep_2-3 + 316, 1, -61.2 );
setRotateKey( spep_2-3 + 318, 1, -60.9 );
setRotateKey( spep_2-3 + 319, 1, -60.9 );

setRotateKey( spep_2-3 + 320, 1, 0 );
setRotateKey( spep_2-1 + 354, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 386, 1, 1 );
setDisp( spep_2-1 + 424, 1, 0 );

changeAnime( spep_2-3 + 386, 1, 105 );

setMoveKey( spep_2-3 + 386, 1, -104.5, 311.6 , 0 );
setMoveKey( spep_2-3 + 388, 1, -146.9, 447.8 , 0 );
setMoveKey( spep_2-3 + 390, 1, -179, 542.3 , 0 );
setMoveKey( spep_2-3 + 392, 1, -199.7, 595.1 , 0 );
setMoveKey( spep_2-3 + 394, 1, -158.1, 473.9 , 0 );
setMoveKey( spep_2-3 + 396, 1, -131.3, 327.8 , 0 );
setMoveKey( spep_2-3 + 398, 1, -118.4, 348.5 , 0 );
setMoveKey( spep_2-3 + 400, 1, -133.5, 357.1 , 0 );
setMoveKey( spep_2-3 + 402, 1, -124.7, 341.7 , 0 );
setMoveKey( spep_2-3 + 404, 1, -139.9, 334.3 , 0 );
setMoveKey( spep_2-3 + 406, 1, -131.1, 334.9 , 0 );
setMoveKey( spep_2-3 + 408, 1, -138.3, 311.5 , 0 );
setMoveKey( spep_2-3 + 410, 1, -137.7, 328 , 0 );
setMoveKey( spep_2-3 + 412, 1, -157, 320.6 , 0 );
setMoveKey( spep_2-3 + 414, 1, -144.3, 321.1 , 0 );
setMoveKey( spep_2-3 + 416, 1, -151.7, 337.5 , 0 );
setMoveKey( spep_2-3 + 418, 1, -151.1, 314 , 0 );
setMoveKey( spep_2-3 + 420, 1, -166.5, 298.5 , 0 );
setMoveKey( spep_2-3 + 422, 1, -157.9, 306.8 , 0 );
setMoveKey( spep_2-1 + 424, 1, -169.4, 283.2 , 0 );

setScaleKey( spep_2-3 + 386, 1, 2.88, 2.88 );
setScaleKey( spep_2-3 + 388, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 390, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 392, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 394, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 396, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 398, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 400, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 402, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 404, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 406, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 408, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 410, 1, 0.29, 0.29 );
setScaleKey( spep_2-3 + 412, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 414, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 416, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 418, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 420, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 422, 1, 0.22, 0.22 );
setScaleKey( spep_2-1 + 424, 1, 0.21, 0.21 );

setRotateKey( spep_2-3 + 386, 1, -48 );
setRotateKey( spep_2-3 + 388, 1, -48.5 );
setRotateKey( spep_2-3 + 390, 1, -49.1 );
setRotateKey( spep_2-3 + 392, 1, -49.6 );
setRotateKey( spep_2-3 + 394, 1, -50.1 );
setRotateKey( spep_2-3 + 396, 1, -50.7 );
setRotateKey( spep_2-3 + 398, 1, -51 );
setRotateKey( spep_2-3 + 400, 1, -51.3 );
setRotateKey( spep_2-3 + 402, 1, -51.5 );
setRotateKey( spep_2-3 + 404, 1, -51.8 );
setRotateKey( spep_2-3 + 406, 1, -52.1 );
setRotateKey( spep_2-3 + 408, 1, -52.4 );
setRotateKey( spep_2-3 + 410, 1, -52.7 );
setRotateKey( spep_2-3 + 412, 1, -53 );
setRotateKey( spep_2-3 + 414, 1, -53.3 );
setRotateKey( spep_2-3 + 416, 1, -53.6 );
setRotateKey( spep_2-3 + 418, 1, -53.9 );
setRotateKey( spep_2-3 + 420, 1, -54.2 );
setRotateKey( spep_2-3 + 422, 1, -54.5 );
setRotateKey( spep_2-1 + 424, 1, -54.8 );

--敵の動き
setDisp( spep_2-3 + 476, 1, 1 );
setDisp( spep_2-1 + 550, 1, 0 );

changeAnime( spep_2-3 + 476, 1, 105 );
changeAnime( spep_2-3 + 542, 1, 107 );

a=240;
b=0;

setMoveKey( spep_2-3 + 476, 1, 663.9-a, 39.8-b , 0 );
setMoveKey( spep_2-3 + 478, 1, 630.9-a, 51.2-b , 0 );
setMoveKey( spep_2-3 + 480, 1, 597.9-a, 62.6-b , 0 );
setMoveKey( spep_2-3 + 482, 1, 564.9-a, 74-b , 0 );
setMoveKey( spep_2-3 + 484, 1, 531.8-a, 85.5-b , 0 );
setMoveKey( spep_2-3 + 486, 1, 498.8-a, 96.8-b , 0 );
setMoveKey( spep_2-3 + 488, 1, 465.8-a, 108.2-b , 0 );
setMoveKey( spep_2-3 + 490, 1, 432.8-a, 119.6-b , 0 );
setMoveKey( spep_2-3 + 492, 1, 484-a, 112.6-b , 0 );
setMoveKey( spep_2-3 + 494, 1, 509.8-a, 118.9-b , 0 );
setMoveKey( spep_2-3 + 496, 1, 531.9-a, 127.3-b , 0 );
setMoveKey( spep_2-3 + 498, 1, 550.2-a, 137.6-b , 0 );
setMoveKey( spep_2-3 + 500, 1, 564.8-a, 150-b , 0 );
setMoveKey( spep_2-3 + 502, 1, 567.6-a, 140.4-b , 0 );
setMoveKey( spep_2-3 + 504, 1, 582.7-a, 180.7-b , 0 );
setMoveKey( spep_2-3 + 506, 1, 578-a, 211.1-b , 0 );
setMoveKey( spep_2-3 + 508, 1, 660.1-a, 299.8-b , 0 );
setMoveKey( spep_2-3 + 510, 1, 641.2-a, 310.5-b , 0 );
setMoveKey( spep_2-3 + 512, 1, 646.3-a, 329.2-b , 0 );
setMoveKey( spep_2-3 + 514, 1, 635.4-a, 335.9-b , 0 );
setMoveKey( spep_2-3 + 516, 1, 632.6-a, 358.6-b , 0 );
setMoveKey( spep_2-3 + 518, 1, 613.7-a, 381.3-b , 0 );
setMoveKey( spep_2-3 + 520, 1, 618.8-a, 388-b , 0 );
setMoveKey( spep_2-3 + 522, 1, 611.9-a, 402.7-b , 0 );
setMoveKey( spep_2-3 + 524, 1, 597.8-a, 436.3-b , 0 );
setMoveKey( spep_2-3 + 526, 1, 583.6-a, 469.9-b , 0 );
setMoveKey( spep_2-3 + 528, 1, 569.4-a, 503.6-b , 0 );
setMoveKey( spep_2-3 + 530, 1, 555.2-a, 537.2-b , 0 );
setMoveKey( spep_2-3 + 532, 1, 541-a, 570.8-b , 0 );
setMoveKey( spep_2-3 + 534, 1, 526.8-a, 604.4-b , 0 );
setMoveKey( spep_2-3 + 536, 1, 512.5-a, 638.1-b , 0 );
setMoveKey( spep_2-3 + 538, 1, 498.3-a, 671.7-b , 0 );
setMoveKey( spep_2-3 + 540, 1, 484-a, 705.3-b , 0 );
setMoveKey( spep_2-3 + 541, 1, 484-a, 705.3-b , 0 );

setMoveKey( spep_2-3 + 542, 1, -411.1, 1077.6 , 0 );
setMoveKey( spep_2-3 + 544, 1, -467.3, 423 , 0 );
setMoveKey( spep_2-3 + 546, 1, -523.5, -231.6 , 0 );
setMoveKey( spep_2-3 + 548, 1, -579.8, -886.1 , 0 );
setMoveKey( spep_2-1 + 550, 1, -636, -1540.7 , 0 );

c=0.5;

setScaleKey( spep_2-3 + 476, 1, 8.92+c, 8.92+c );
setScaleKey( spep_2-3 + 478, 1, 8.35+c, 8.35+c );
setScaleKey( spep_2-3 + 480, 1, 7.79+c, 7.79+c );
setScaleKey( spep_2-3 + 482, 1, 7.22+c, 7.22+c );
setScaleKey( spep_2-3 + 484, 1, 6.65+c, 6.65+c );
setScaleKey( spep_2-3 + 486, 1, 6.09+c, 6.09+c );
setScaleKey( spep_2-3 + 488, 1, 5.52+c, 5.52+c );
setScaleKey( spep_2-3 + 490, 1, 4.95+c, 4.95+c );
setScaleKey( spep_2-3 + 492, 1, 5.39+c, 5.39+c );
setScaleKey( spep_2-3 + 494, 1, 5.5+c, 5.5+c );
setScaleKey( spep_2-3 + 496, 1, 5.57+c, 5.57+c );
setScaleKey( spep_2-3 + 498, 1, 5.6+c, 5.6+c );
setScaleKey( spep_2-3 + 500, 1, 5.57+c, 5.57+c );
setScaleKey( spep_2-3 + 502, 1, 5.5+c, 5.5+c );
setScaleKey( spep_2-3 + 504, 1, 5.38+c, 5.38+c );
setScaleKey( spep_2-3 + 506, 1, 5.21+c, 5.21+c );
setScaleKey( spep_2-3 + 508, 1, 6.37+c, 6.37+c );
setScaleKey( spep_2-3 + 510, 1, 6.29+c, 6.29+c );
setScaleKey( spep_2-3 + 512, 1, 6.21+c, 6.21+c );
setScaleKey( spep_2-3 + 514, 1, 6.13+c, 6.13+c );
setScaleKey( spep_2-3 + 516, 1, 6.04+c, 6.04+c );
setScaleKey( spep_2-3 + 518, 1, 5.96+c, 5.96+c );
setScaleKey( spep_2-3 + 520, 1, 5.88+c, 5.88+c );
setScaleKey( spep_2-3 + 522, 1, 5.8+c, 5.8+c );
setScaleKey( spep_2-3 + 524, 1, 5.57+c, 5.57+c );
setScaleKey( spep_2-3 + 526, 1, 5.34+c, 5.34+c );
setScaleKey( spep_2-3 + 528, 1, 5.11+c, 5.11+c );
setScaleKey( spep_2-3 + 530, 1, 4.88+c, 4.88+c );
setScaleKey( spep_2-3 + 532, 1, 4.65+c, 4.65+c );
setScaleKey( spep_2-3 + 534, 1, 4.42+c, 4.42+c );
setScaleKey( spep_2-3 + 536, 1, 4.19+c, 4.19+c );
setScaleKey( spep_2-3 + 538, 1, 3.96+c, 3.96+c );
setScaleKey( spep_2-3 + 540, 1, 3.74+c, 3.74+c );
setScaleKey( spep_2-3 + 541, 1, 3.74+c, 3.74+c );

setScaleKey( spep_2-3 + 542, 1, 6.84, 6.84 );
setScaleKey( spep_2-1 + 550, 1, 6.84, 6.84 );

setRotateKey( spep_2-3 + 476, 1, 11.4 );
setRotateKey( spep_2-3 + 492, 1, 11.4 );
setRotateKey( spep_2-3 + 494, 1, 11.9 );
setRotateKey( spep_2-3 + 496, 1, 12.4 );
setRotateKey( spep_2-3 + 498, 1, 13 );
setRotateKey( spep_2-3 + 500, 1, 13.5 );
setRotateKey( spep_2-3 + 502, 1, 14 );
setRotateKey( spep_2-3 + 504, 1, 14.5 );
setRotateKey( spep_2-3 + 506, 1, 15.1 );
setRotateKey( spep_2-3 + 508, 1, 11 );
setRotateKey( spep_2-3 + 510, 1, 10.8 );
setRotateKey( spep_2-3 + 512, 1, 10.6 );
setRotateKey( spep_2-3 + 514, 1, 10.5 );
setRotateKey( spep_2-3 + 516, 1, 10.3 );
setRotateKey( spep_2-3 + 518, 1, 10.1 );
setRotateKey( spep_2-3 + 520, 1, 9.9 );
setRotateKey( spep_2-3 + 522, 1, 9.8 );
setRotateKey( spep_2-3 + 524, 1, 9.6 );
setRotateKey( spep_2-3 + 526, 1, 9.5 );
setRotateKey( spep_2-3 + 528, 1, 9.4 );
setRotateKey( spep_2-3 + 530, 1, 9.2 );
setRotateKey( spep_2-3 + 532, 1, 9.1 );
setRotateKey( spep_2-3 + 534, 1, 9 );
setRotateKey( spep_2-3 + 536, 1, 8.8 );
setRotateKey( spep_2-3 + 538, 1, 8.7 );
setRotateKey( spep_2-3 + 540, 1, 8.5 );
setRotateKey( spep_2-3 + 541, 1, 8.5 );

setRotateKey( spep_2-3 + 542, 1, 37.4 );
setRotateKey( spep_2-1 + 550, 1, 37.4 );

--敵の動き
setDisp( spep_2-3 + 588, 1, 1 );
setDisp( spep_2-1 + 616, 1, 0 );

changeAnime( spep_2-3 + 588, 1, 105 );

setMoveKey( spep_2-3 + 588, 1, -56.8, 171.3 , 0 );
setMoveKey( spep_2-3 + 590, 1, -47.9, 146.8 , 0 );
setMoveKey( spep_2-3 + 592, 1, -36, 114.2 , 0 );
setMoveKey( spep_2-3 + 594, 1, -21.2, 73.7 , 0 );
setMoveKey( spep_2-3 + 596, 1, -3.6, 25.1 , 0 );
setMoveKey( spep_2-3 + 598, 1, 16.8, -31.2 , 0 );
setMoveKey( spep_2-3 + 600, 1, 14.9, -49.4 , 0 );
setMoveKey( spep_2-3 + 602, 1, 13.2, -65.4 , 0 );
setMoveKey( spep_2-3 + 604, 1, 11.8, -79.2 , 0 );
setMoveKey( spep_2-3 + 606, 1, 10.6, -90.9 , 0 );
setMoveKey( spep_2-3 + 608, 1, 9.6, -100.5 , 0 );
setMoveKey( spep_2-3 + 610, 1, 8.9, -108 , 0 );
setMoveKey( spep_2-3 + 612, 1, 8.3, -113.3 , 0 );
setMoveKey( spep_2-3 + 614, 1, 8, -116.5 , 0 );
setMoveKey( spep_2-1 + 616, 1, 7.9, -117.6 , 0 );

setScaleKey( spep_2-3 + 588, 1, 26.49, 26.49 );
setScaleKey( spep_2-3 + 590, 1, 23.42, 23.42 );
setScaleKey( spep_2-3 + 592, 1, 19.33, 19.33 );
setScaleKey( spep_2-3 + 594, 1, 14.21, 14.21 );
setScaleKey( spep_2-3 + 596, 1, 8.07, 8.07 );
setScaleKey( spep_2-3 + 598, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 600, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 602, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 604, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 606, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 608, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 610, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 612, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 614, 1, 0.18, 0.18 );
setScaleKey( spep_2-1 + 616, 1, 0.17, 0.17 );

setRotateKey( spep_2-3 + 588, 1, -1 );
setRotateKey( spep_2-3 + 590, 1, 0.3 );
setRotateKey( spep_2-3 + 592, 1, 2 );
setRotateKey( spep_2-3 + 594, 1, 4.1 );
setRotateKey( spep_2-3 + 596, 1, 6.6 );
setRotateKey( spep_2-3 + 598, 1, 9.6 );
setRotateKey( spep_2-3 + 600, 1, 8.9 );
setRotateKey( spep_2-3 + 602, 1, 8.2 );
setRotateKey( spep_2-3 + 604, 1, 7.7 );
setRotateKey( spep_2-3 + 606, 1, 7.3 );
setRotateKey( spep_2-3 + 608, 1, 6.9 );
setRotateKey( spep_2-3 + 610, 1, 6.6 );
setRotateKey( spep_2-3 + 612, 1, 6.4 );
setRotateKey( spep_2-3 + 614, 1, 6.3 );
setRotateKey( spep_2-1 + 616, 1, 6.2 );

--SE
playSe( spep_2 + 82, 1003 );--裏拳
setSeVolume( spep_2 + 82, 1003, 60 );
se_1180 = playSe( spep_2 + 86, 1180 );--裏拳
setSeVolume( spep_2 + 86, 1180, 0 );
setSeVolume( spep_2 + 105, 1180, 0 );
setSeVolume( spep_2 + 106, 1180, 12.83 );
setSeVolume( spep_2 + 107, 1180, 25.67 );
setSeVolume( spep_2 + 108, 1180, 38.50 );
setSeVolume( spep_2 + 109, 1180, 51.33 );
setSeVolume( spep_2 + 110, 1180, 64.17 );
setSeVolume( spep_2 + 111, 1180, 77 );
playSe( spep_2 + 98, 1189 );--裏拳
playSe( spep_2 + 102, 1009 );--裏拳
playSe( spep_2 + 104, 1110 );--裏拳
playSe( spep_2 + 136, 9 );--足振りかぶる
setSeVolume( spep_2 + 136, 9, 0 );
setSeVolume( spep_2 + 137, 9, 2.67 );
setSeVolume( spep_2 + 138, 9, 5.33 );
setSeVolume( spep_2 + 139, 9, 8 );
setSeVolume( spep_2 + 140, 9, 10.67 );
setSeVolume( spep_2 + 141, 9, 13.33 );
setSeVolume( spep_2 + 142, 9, 16 );
setSeVolume( spep_2 + 143, 9, 18.67 );
setSeVolume( spep_2 + 144, 9, 21.33 );
setSeVolume( spep_2 + 145, 9, 24 );
setSeVolume( spep_2 + 146, 9, 26.67 );
setSeVolume( spep_2 + 147, 9, 29.33 );
setSeVolume( spep_2 + 148, 9, 32 );
setSeVolume( spep_2 + 149, 9, 34.67 );
setSeVolume( spep_2 + 150, 9, 37.33 );
setSeVolume( spep_2 + 151, 9, 40 );
setSeVolume( spep_2 + 152, 9, 42.67 );
setSeVolume( spep_2 + 153, 9, 45.33 );
setSeVolume( spep_2 + 154, 9, 48 );
setSeVolume( spep_2 + 155, 9, 50.67 );
setSeVolume( spep_2 + 156, 9, 53.33 );
setSeVolume( spep_2 + 157, 9, 56 );
setSeVolume( spep_2 + 158, 9, 58.67 );
setSeVolume( spep_2 + 159, 9, 61.33 );
setSeVolume( spep_2 + 160, 9, 64 );
setSeVolume( spep_2 + 161, 9, 66.67 );
setSeVolume( spep_2 + 162, 9, 69.33 );
setSeVolume( spep_2 + 163, 9, 72 );
setSeVolume( spep_2 + 164, 9, 74.67 );
setSeVolume( spep_2 + 165, 9, 77.33 );
setSeVolume( spep_2 + 166, 9, 80 );
playSe( spep_2 + 136, 1004 );--足振りかぶる
setSeVolume( spep_2 + 136, 1004, 76 );
playSe( spep_2 + 170, 1001 );--後ろ蹴り
setSeVolume( spep_2 + 170, 1001, 71 );
playSe( spep_2 + 172, 1010 );--後ろ蹴り
playSe( spep_2 + 172, 1110 );--後ろ蹴り
playSe( spep_2 + 234, 1189 );--蹴り上げ
playSe( spep_2 + 240, 1010 );--蹴り上げ
playSe( spep_2 + 240, 1012 );--蹴り上げ
playSe( spep_2 + 242, 1000 );--蹴り上げ
playSe( spep_2 + 244, 1010 );--蹴り上げ
setSeVolume( spep_2 + 244, 1010, 94 );
se_1072 = playSe( spep_2 + 256, 1072 );--後ろからアップ
setSeVolume( spep_2 + 256, 1072, 71 );
se_1182 = playSe( spep_2 + 272, 1182 );--後ろからアップ
setSeVolume( spep_2 + 272, 1182, 0 );
setSeVolume( spep_2 + 276, 1182, 0 );
setSeVolume( spep_2 + 277, 1182, 7.44 );
setSeVolume( spep_2 + 278, 1182, 14.89 );
setSeVolume( spep_2 + 279, 1182, 22.33 );
setSeVolume( spep_2 + 280, 1182, 29.78 );
setSeVolume( spep_2 + 281, 1182, 37.22 );
setSeVolume( spep_2 + 282, 1182, 44.67 );
setSeVolume( spep_2 + 283, 1182, 52.11 );
setSeVolume( spep_2 + 284, 1182, 59.56 );
setSeVolume( spep_2 + 285, 1182, 67);
playSe( spep_2 + 314, 1189 );--正拳突き
playSe( spep_2 + 316, 1000 );--正拳突き
se_1188 = playSe( spep_2 + 316, 1188 );--顔アップ
setSeVolume( spep_2 + 316, 1188, 0 );
setSeVolume( spep_2 + 352, 1188, 8 );
setSeVolume( spep_2 + 353, 1188, 16 );
setSeVolume( spep_2 + 354, 1188, 24 );
setSeVolume( spep_2 + 355, 1188, 32 );
setSeVolume( spep_2 + 356, 1188, 40 );
setSeVolume( spep_2 + 357, 1188, 48 );
setSeVolume( spep_2 + 358, 1188, 56 );
playSe( spep_2 + 318, 1187 );--正拳突き
setSeVolume( spep_2 + 318, 1187, 78 );
playSe( spep_2 + 318, 1190 );--正拳突き
setSeVolume( spep_2 + 318, 1190, 83 );
se_1002 = playSe( spep_2 + 348, 1002 );--顔アップ
setSeVolume( spep_2 + 348, 1002, 0 );
setSeVolume( spep_2 + 349, 1002, 5.07 );
setSeVolume( spep_2 + 350, 1002, 10.14 );
setSeVolume( spep_2 + 351, 1002, 15.21 );
setSeVolume( spep_2 + 352, 1002, 20.29 );
setSeVolume( spep_2 + 353, 1002, 25.36 );
setSeVolume( spep_2 + 354, 1002, 30.43 );
setSeVolume( spep_2 + 355, 1002, 35.50 );
setSeVolume( spep_2 + 356, 1002, 40.57 );
setSeVolume( spep_2 + 357, 1002, 45.64 );
setSeVolume( spep_2 + 358, 1002, 50.71 );
setSeVolume( spep_2 + 359, 1002, 55.79 );
setSeVolume( spep_2 + 360, 1002, 60.86 );
setSeVolume( spep_2 + 361, 1002, 65.93 );
setSeVolume( spep_2 + 362, 1002, 71 );
playSe( spep_2 + 352, 1004 );--顔アップ
setSeVolume( spep_2 + 352, 1004, 84 );
playSe( spep_2 + 354, 1003 );--顔アップ
playSe( spep_2 + 384, 1120 );--蹴り
playSe( spep_2 + 424, 9 );--前方ダッシュ
playSe( spep_2 + 424, 1182 );--前方ダッシュ
se_11831 = playSe( spep_2 + 424, 1183 );--前方ダッシュ
playSe( spep_2 + 488, 1006 );--足キャッチ
se_1192 = playSe( spep_2 + 488, 1192 );--足キャッチ
setSeVolume( spep_2 + 488, 1192, 158 );
playSe( spep_2 + 488, 1260 );--足キャッチ
setSeVolume( spep_2 + 488, 1260, 66 );
playSe( spep_2 + 534, 1004 );--投げる
se_1116 = playSe( spep_2 + 534, 1116 );--投げる
playSe( spep_2 + 534, 1182 );--投げる
setSeVolume( spep_2 + 534, 1182, 0 );
setSeVolume( spep_2 + 535, 1182, 9.09 );
setSeVolume( spep_2 + 536, 1182, 18.18 );
setSeVolume( spep_2 + 537, 1182, 27.27 );
setSeVolume( spep_2 + 538, 1182, 36.36 );
setSeVolume( spep_2 + 539, 1182, 45.45 );
setSeVolume( spep_2 + 540, 1182, 54.55 );
setSeVolume( spep_2 + 541, 1182, 63.64 );
setSeVolume( spep_2 + 542, 1182, 72.73 );
setSeVolume( spep_2 + 543, 1182, 81.82 );
setSeVolume( spep_2 + 544, 1182, 90.91 );
setSeVolume( spep_2 + 545, 1182, 100 );
playSe( spep_2 + 534, 1027 );--投げる
setSeVolume( spep_2 + 534, 1027, 75 );
se_1183 = playSe( spep_2 + 584, 1183 );--そして地面へ
playSe( spep_2 + 616, 1159 );--爆発


stopSe( spep_2 + 64, se_1175, 73 );
stopSe( spep_2 + 54, se_1269, 56 );
stopSe( spep_2 + 127, se_1180, 33 );
stopSe( spep_2 + 300, se_1072, 20 );
stopSe( spep_2 + 303, se_1182, 41 );
stopSe( spep_2 + 373, se_1188, 26 );
stopSe( spep_2 + 375, se_1002, 27 );
stopSe( spep_2 + 499, se_11831, 25 );
stopSe( spep_2 + 500, se_1192, 0 );
stopSe( spep_2 + 556, se_1116, 15 );
stopSe( spep_2 + 630, se_1183, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 656;
------------------------------------------------------
-- 発射〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_3 + 280, explosion, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_3 + 280, explosion, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, explosion, 0 );
setEffRotateKey( spep_3 + 280, explosion, 0 );
setEffAlphaKey( spep_3 + 0, explosion, 255 );
setEffAlphaKey( spep_3 + 280, explosion, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 64,  10012, 52, 0x100, -1, 0, -152.6, 278.9 );

setEffMoveKey( spep_3-3 + 64, ctzuo, -152.6, 278.9 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzuo, -137.2, 325.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 80, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 82, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 84, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 86, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 88, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 90, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 92, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 94, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 96, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 98, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 100, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 102, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 104, ctzuo, -149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 106, ctzuo, -126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 108, ctzuo, -147.8, 369.2 , 0 );
setEffMoveKey( spep_3-3 + 110, ctzuo, -110.3, 363.4 , 0 );
setEffMoveKey( spep_3-3 + 112, ctzuo, -144.8, 364.2 , 0 );
setEffMoveKey( spep_3-3 + 114, ctzuo, -93.7, 357.2 , 0 );
setEffMoveKey( spep_3-3 + 116, ctzuo, -85.5, 354 , 0 );

setEffScaleKey( spep_3-3 + 64, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_3-3 + 66, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_3-3 + 68, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3-3 + 106, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3-3 + 108, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_3-3 + 110, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_3-3 + 112, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_3-3 + 114, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_3-3 + 116, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_3-3 + 64, ctzuo, -30.1 );
setEffRotateKey( spep_3-3 + 66, ctzuo, -21.4 );
setEffRotateKey( spep_3-3 + 68, ctzuo, -12.5 );
setEffRotateKey( spep_3-3 + 116, ctzuo, -12.5 );

setEffAlphaKey( spep_3-3 + 64, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 106, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 108, ctzuo, 204 );
setEffAlphaKey( spep_3-3 + 110, ctzuo, 153 );
setEffAlphaKey( spep_3-3 + 112, ctzuo, 102 );
setEffAlphaKey( spep_3-3 + 114, ctzuo, 51 );
setEffAlphaKey( spep_3-3 + 116, ctzuo, 0 );

--SE
playSe( spep_3 + 30, 1003 );--腕後ろへ
playSe( spep_3 + 60, 1027 );--気弾発射
setSeVolume( spep_3 + 60, 1027, 63 );
playSe( spep_3 + 60, 1133 );--気弾発射
se_1236 = playSe( spep_3 + 60, 1236 );--気弾発射
setSeVolume( spep_3 + 60, 1236, 141 );
se_1177 = playSe( spep_3 + 60, 1177 );--気弾発射
se_1215 = playSe( spep_3 + 90, 1215 );--気弾発射
setSeVolume( spep_3 + 90, 1215, 85 );
playSe( spep_3 + 174, 1159 );--爆発
playSe( spep_3 + 174, 1023 );--爆発
playSe( spep_3 + 180, 1067 );--爆発
setSeVolume( spep_3 + 180, 1067, 82 );
playSe( spep_3 + 190, 1188 );--爆発

stopSe( spep_3 + 184, se_1236, 0 );
stopSe( spep_3 + 184, se_1177, 0 );
stopSe( spep_3 + 184, se_1215, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 280, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 50, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 58, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 170 );
endPhase( spep_3 + 270 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入部分
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 130, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 130, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 130, tame, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 28, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 267.5, -36.5 , 0 );
setMoveKey( spep_0 + 2, 1, 271.4, -36.5 , 0 );
setMoveKey( spep_0 + 4, 1, 275.2, -36.5 , 0 );
setMoveKey( spep_0 + 6, 1, 278.8, -36.5 , 0 );
setMoveKey( spep_0 + 8, 1, 282.2, -36.5 , 0 );
setMoveKey( spep_0 + 10, 1, 285.5, -36.5 , 0 );
setMoveKey( spep_0 + 12, 1, 288.7, -36.5 , 0 );
setMoveKey( spep_0 + 14, 1, 291.8, -36.5 , 0 );
setMoveKey( spep_0 + 16, 1, 294.7, -36.5 , 0 );
setMoveKey( spep_0 + 18, 1, 297.4, -36.5 , 0 );
setMoveKey( spep_0 + 20, 1, 300, -36.5 , 0 );
setMoveKey( spep_0 + 22, 1, 302.5, -36.5 , 0 );
setMoveKey( spep_0 + 24, 1, 304.8, -36.5 , 0 );
setMoveKey( spep_0 + 26, 1, 307, -36.5 , 0 );
setMoveKey( spep_0-1 + 28, 1, 309, -36.5 , 0 );

setScaleKey( spep_0 + 0, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 1, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 2, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 3, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 4, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 5, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 6, 1, 4.2, 4.2 );
setScaleKey( spep_0-1 + 28, 1, 4.2, 4.2 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 28, 1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+34  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+34  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +46, 190006, 72, 0x102, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +46,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +108,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +46, ctgogo, 0 );
setEffAlphaKey( spep_0 + 47, ctgogo, 255 );
setEffAlphaKey( spep_0 + 48, ctgogo, 255 );
setEffAlphaKey( spep_0 + 102, ctgogo, 255 );
setEffAlphaKey( spep_0 + 104, ctgogo, 191 );
setEffAlphaKey( spep_0 + 106, ctgogo, 112 );
setEffAlphaKey( spep_0 + 108, ctgogo, 64 );

setEffRotateKey(  spep_0 +46,  ctgogo,  0);
setEffRotateKey(  spep_0 +108,  ctgogo,  0);

setEffScaleKey(  spep_0 +46,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +98,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +108,  ctgogo, -1.07, 1.07 );

--SE
SE3=playSe( spep_0 + 0, 1269 );--入り
setSeVolume( spep_0 + 0, 1269, 26 );
playSe( spep_0 + 0, 8 );--入り
playSe( spep_0 + 46, 1018 );--セリフカットイン

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 130;
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
se_1175 = playSe( spep_1 + 0, 1175 );--土煙
setSeVolume( spep_1 + 0, 1175, 0 );
stopSe( spep_1 + 0, SE3, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 気合〜連撃〜叩き落とし
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 656, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 656, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 656, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 656, fighting_f, 255 );
setEffAlphaKey( spep_2 + 657, fighting_f, 0 );
setEffAlphaKey( spep_2 + 658, fighting_f, 0 );

-- ** エフェクト等 ** --
ctkakimozi = entryEffect( spep_2 + 0, 155844, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ctkakimozi, 0, 0, 0 );
setEffMoveKey( spep_2 + 656, ctkakimozi, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ctkakimozi, -1.0, 1.0 );
setEffScaleKey( spep_2 + 656, ctkakimozi, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ctkakimozi, 0 );
setEffRotateKey( spep_2 + 656, ctkakimozi, 0 );
setEffAlphaKey( spep_2 + 0, ctkakimozi, 255 );
setEffAlphaKey( spep_2 + 656, ctkakimozi, 255 );
setEffAlphaKey( spep_2 + 657, ctkakimozi, 0 );
setEffAlphaKey( spep_2 + 658, ctkakimozi, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 656, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 656, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 656, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 656, fighting_b, 255 );
setEffAlphaKey( spep_2 + 657, fighting_b, 0 );
setEffAlphaKey( spep_2 + 658, fighting_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2-3 + 66, 1, 118 );

setMoveKey( spep_2-3 + 0, 1, 135.9, 218.8 , 0 );
setMoveKey( spep_2-3 + 2, 1, 126.2, 210.8 , 0 );
setMoveKey( spep_2-3 + 4, 1, 114.9, 192.6 , 0 );
setMoveKey( spep_2-3 + 6, 1, 107.5, 194.3 , 0 );
setMoveKey( spep_2-3 + 8, 1, 94.1, 188.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 94.4, 180.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, 88.6, 169.2 , 0 );
setMoveKey( spep_2-3 + 14, 1, 86.8, 169.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, 81, 162.5 , 0 );
setMoveKey( spep_2-3 + 18, 1, 79.2, 159.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 69.4, 151.8 , 0 );
setMoveKey( spep_2-3 + 22, 1, 71.5, 148.5 , 0 );
setMoveKey( spep_2-3 + 24, 1, 65.7, 137.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 63.7, 137.8 , 0 );
setMoveKey( spep_2-3 + 28, 1, 55.9, 136.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, 16.3, 59.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 14.3, 53.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 16.3, 59.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 12.3, 57.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 16.3, 59.9 , 0 );
setMoveKey( spep_2-3 + 40, 1, 14.3, 57.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 16.3, 59.9 , 0 )
setMoveKey( spep_2-3 + 64, 1, 16.3, 59.9 , 0 )
setMoveKey( spep_2-3 + 65, 1, 16.3, 59.9 , 0 )

setMoveKey( spep_2-3 + 66, 1, 479.1, -114.5 , 0 );
setMoveKey( spep_2-3 + 68, 1, 472.8, -112 , 0 );
setMoveKey( spep_2-3 + 70, 1, 466.4, -109.4 , 0 );
setMoveKey( spep_2-3 + 72, 1, 460.1, -106.8 , 0 );
setMoveKey( spep_2-3 + 74, 1, 453.8, -104.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, 447.5, -101.7 , 0 );
setMoveKey( spep_2-3 + 78, 1, 441.1, -99.2 , 0 );
setMoveKey( spep_2-3 + 80, 1, 434.8, -96.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 437.4, -96.8 , 0 );

setScaleKey( spep_2-3 + 0, 1, 1.73, 1.73 );
setScaleKey( spep_2-3 + 2, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 4, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 6, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 8, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 14, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 16, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 18, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 20, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 22, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 26, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 29, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 30, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 64, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 65, 1, 0.53, 0.53 );

setScaleKey( spep_2-3 + 66, 1, 5.61, 5.61 );
setScaleKey( spep_2-3 + 68, 1, 5.57, 5.57 );
setScaleKey( spep_2-3 + 70, 1, 5.53, 5.53 );
setScaleKey( spep_2-3 + 72, 1, 5.49, 5.49 );
setScaleKey( spep_2-3 + 74, 1, 5.45, 5.45 );
setScaleKey( spep_2-3 + 76, 1, 5.41, 5.41 );
setScaleKey( spep_2-3 + 78, 1, 5.37, 5.37 );
setScaleKey( spep_2-3 + 80, 1, 5.33, 5.33 );
setScaleKey( spep_2-3 + 82, 1, 5.36, 5.36 );

setRotateKey( spep_2-3 + 0, 1, -0.3 );
setRotateKey( spep_2-3 + 6, 1, -0.3 );
setRotateKey( spep_2-3 + 8, 1, -0.2 );
setRotateKey( spep_2-3 + 10, 1, -0.1 );
setRotateKey( spep_2-3 + 12, 1, 0.1 );
setRotateKey( spep_2-3 + 14, 1, 0.2 );
setRotateKey( spep_2-3 + 16, 1, 0.3 );
setRotateKey( spep_2-3 + 18, 1, 0.5 );
setRotateKey( spep_2-3 + 20, 1, 0.6 );
setRotateKey( spep_2-3 + 22, 1, 0.8 );
setRotateKey( spep_2-3 + 24, 1, 0.9 );
setRotateKey( spep_2-3 + 26, 1, 1.1 );
setRotateKey( spep_2-3 + 28, 1, 1.2 );
setRotateKey( spep_2-3 + 64, 1, 1.2 );
setRotateKey( spep_2-3 + 65, 1, 1.2 );

setRotateKey( spep_2-3 + 66, 1, 0 );
setRotateKey( spep_2-3 + 82, 1, 0 );

--SE
setSeVolume( spep_2 + 17, 1175, 0 );
setSeVolume( spep_2 + 18, 1175, 4.07 );
setSeVolume( spep_2 + 19, 1175, 8.13 );
setSeVolume( spep_2 + 20, 1175, 12.2 );
setSeVolume( spep_2 + 21, 1175, 16.27 );
setSeVolume( spep_2 + 22, 1175, 20.33 );
setSeVolume( spep_2 + 23, 1175, 24.40 );
setSeVolume( spep_2 + 24, 1175, 28.47 );
setSeVolume( spep_2 + 25, 1175, 32.53 );
setSeVolume( spep_2 + 26, 1175, 36.6 );
setSeVolume( spep_2 + 27, 1175, 40.67 );
setSeVolume( spep_2 + 28, 1175, 44.73 );
setSeVolume( spep_2 + 29, 1175, 48.8 );
setSeVolume( spep_2 + 30, 1175, 52.87 );
setSeVolume( spep_2 + 31, 1175, 56.93 );
setSeVolume( spep_2 + 32, 1175, 61 );

SE0=playSe( spep_2 + 0, 1188 );--土煙
setSeVolume( spep_2 + 0, 1188, 62 );
SE1=playSe( spep_2 + 0, 19 );--土煙
setSeVolume( spep_2 + 0, 19, 47 );
SE2=playSe( spep_2 + 0, 1192 );--土煙
setSeVolume( spep_2 + 0, 1192, 37 );
se_1269 = playSe( spep_2 + 0, 1269 );--土煙
setSeVolume( spep_2 + 0, 1269, 0 );
setSeVolume( spep_2 + 1, 1269, 1.91 );
setSeVolume( spep_2 + 2, 1269, 3.83 );
setSeVolume( spep_2 + 3, 1269, 5.74 );
setSeVolume( spep_2 + 4, 1269, 7.66 );
setSeVolume( spep_2 + 5, 1269, 9.57 );
setSeVolume( spep_2 + 6, 1269, 11.49 );
setSeVolume( spep_2 + 7, 1269, 13.4 );
setSeVolume( spep_2 + 8, 1269, 15.31 );
setSeVolume( spep_2 + 9, 1269, 17.23 );
setSeVolume( spep_2 + 10, 1269, 19.14 );
setSeVolume( spep_2 + 11, 1269, 21.06 );
setSeVolume( spep_2 + 12, 1269, 22.97 );
setSeVolume( spep_2 + 13, 1269, 24.89 );
setSeVolume( spep_2 + 14, 1269, 26.80 );
setSeVolume( spep_2 + 15, 1269, 28.71 );
setSeVolume( spep_2 + 16, 1269, 30.63 );
setSeVolume( spep_2 + 17, 1269, 32.54 );
setSeVolume( spep_2 + 18, 1269, 34.46 );
setSeVolume( spep_2 + 19, 1269, 36.37 );
setSeVolume( spep_2 + 20, 1269, 38.29 );
setSeVolume( spep_2 + 21, 1269, 40.2 );
setSeVolume( spep_2 + 22, 1269, 42.11 );
setSeVolume( spep_2 + 23, 1269, 44.03 );
setSeVolume( spep_2 + 24, 1269, 45.94 );
setSeVolume( spep_2 + 25, 1269, 47.86 );
setSeVolume( spep_2 + 26, 1269, 49.77 );
setSeVolume( spep_2 + 27, 1269, 51.69 );
setSeVolume( spep_2 + 28, 1269, 53.6 );
setSeVolume( spep_2 + 29, 1269, 55.51 );
setSeVolume( spep_2 + 30, 1269, 57.43 );
setSeVolume( spep_2 + 31, 1269, 59.34 );
setSeVolume( spep_2 + 32, 1269, 61.26 );
setSeVolume( spep_2 + 33, 1269, 63.17 );
setSeVolume( spep_2 + 34, 1269, 65.09 );
setSeVolume( spep_2 + 35, 1269, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 660, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1269, 0 );
    stopSe( SP_dodge - 12, se_1175, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 437.4, -96.8 , 0 );
    setScaleKey( SP_dodge + 9, 1, 5.36, 5.36 );
    setRotateKey( SP_dodge + 9, 1, 0 );

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_2-1 + 134, 1, 0 );

changeAnime( spep_2-3 + 104, 1, 107 );

setMoveKey( spep_2-3 + 84, 1, 439.9, -97 , 0 );
setMoveKey( spep_2-3 + 86, 1, 442.5, -97.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 445.1, -97.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 447.6, -97.5 , 0 );
setMoveKey( spep_2-3 + 92, 1, 450.2, -97.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 452.8, -97.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, 455.3, -98 , 0 );
setMoveKey( spep_2-3 + 98, 1, 457.9, -98.1 , 0 );
setMoveKey( spep_2-3 + 100, 1, 460.5, -98.4 , 0 );
setMoveKey( spep_2-3 + 102, 1, 463.1, -98.5 , 0 );
setMoveKey( spep_2-3 + 103, 1, 463.1, -98.5 , 0 );

setMoveKey( spep_2-3 + 104, 1, 429.3, 10.9 , 0 );
setMoveKey( spep_2-3 + 106, 1, 401.4, 46.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, 363.4, 44 , 0 );
setMoveKey( spep_2-3 + 110, 1, 331.2, 71.5 , 0 );
setMoveKey( spep_2-3 + 112, 1, 329, 102.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, 344.7, 87.5 , 0 );
setMoveKey( spep_2-3 + 116, 1, 336.4, 88.4 , 0 );
setMoveKey( spep_2-3 + 118, 1, 352, 97.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, 339.7, 98.5 , 0 );
setMoveKey( spep_2-3 + 122, 1, 359.4, 107.6 , 0 );
setMoveKey( spep_2-3 + 124, 1, 359.2, 104.7 , 0 );
setMoveKey( spep_2-3 + 126, 1, 367, 117.9 , 0 );
setMoveKey( spep_2-3 + 128, 1, 354.7, 119 , 0 );
setMoveKey( spep_2-3 + 130, 1, 374.6, 128.2 , 0 );
setMoveKey( spep_2-3 + 132, 1, 378.4, 133.4 , 0 );
setMoveKey( spep_2-1 + 134, 1, 382.3, 138.6 , 0 );

setScaleKey( spep_2-3 + 84, 1, 5.38, 5.38 );
setScaleKey( spep_2-3 + 86, 1, 5.41, 5.41 );
setScaleKey( spep_2-3 + 88, 1, 5.43, 5.43 );
setScaleKey( spep_2-3 + 90, 1, 5.46, 5.46 );
setScaleKey( spep_2-3 + 92, 1, 5.48, 5.48 );
setScaleKey( spep_2-3 + 94, 1, 5.51, 5.51 );
setScaleKey( spep_2-3 + 96, 1, 5.53, 5.53 );
setScaleKey( spep_2-3 + 98, 1, 5.56, 5.56 );
setScaleKey( spep_2-3 + 100, 1, 5.58, 5.58 );
setScaleKey( spep_2-3 + 102, 1, 5.61, 5.61 );
setScaleKey( spep_2-3 + 103, 1, 5.61, 5.61 );

setScaleKey( spep_2-3 + 104, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 106, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 108, 1, 1.77, 1.77 );
setScaleKey( spep_2-3 + 110, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 112, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 114, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 116, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 118, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 120, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 122, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 124, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 126, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 128, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 130, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 132, 1, 1.68, 1.68 );
setScaleKey( spep_2-1 + 134, 1, 1.69, 1.69 );

setRotateKey( spep_2-3 + 102, 1, 0 );
setRotateKey( spep_2-3 + 103, 1, 0 );

setRotateKey( spep_2-3 + 104, 1, -110.7 );
setRotateKey( spep_2-3 + 106, 1, -109.9 );
setRotateKey( spep_2-3 + 108, 1, -109.1 );
setRotateKey( spep_2-3 + 110, 1, -108.3 );
setRotateKey( spep_2-3 + 112, 1, -107.5 );
setRotateKey( spep_2-3 + 114, 1, -107.4 );
setRotateKey( spep_2-3 + 116, 1, -107.2 );
setRotateKey( spep_2-3 + 118, 1, -107 );
setRotateKey( spep_2-3 + 120, 1, -106.8 );
setRotateKey( spep_2-3 + 122, 1, -106.6 );
setRotateKey( spep_2-3 + 124, 1, -106.5 );
setRotateKey( spep_2-3 + 126, 1, -106.3 );
setRotateKey( spep_2-3 + 128, 1, -106.1 );
setRotateKey( spep_2-3 + 130, 1, -105.9 );
setRotateKey( spep_2-3 + 132, 1, -105.7 );
setRotateKey( spep_2-1 + 134, 1, -105.5 );

--敵の動き
setDisp( spep_2-3 + 176, 1, 1 );
setDisp( spep_2-1 + 354, 1, 0 );

changeAnime( spep_2-3 + 176, 1, 5 );
changeAnime( spep_2-3 + 244, 1, 106 );
changeAnime( spep_2-3 + 268, 1, 107 );
changeAnime( spep_2-3 + 320, 1, 108 );

setMoveKey( spep_2-3 + 176, 1, 153.9, 331.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 207.5, 348.1 , 0 );
setMoveKey( spep_2-3 + 180, 1, 234.3, 355.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, 274.4, 340.6 , 0 );
setMoveKey( spep_2-3 + 184, 1, 250.8, 335.6 , 0 );
setMoveKey( spep_2-3 + 186, 1, 277.8, 329 , 0 );
setMoveKey( spep_2-3 + 188, 1, 289, 302.4 , 0 );
setMoveKey( spep_2-3 + 190, 1, 308.1, 307.8 , 0 );
setMoveKey( spep_2-3 + 192, 1, 311.1, 293.2 , 0 );
setMoveKey( spep_2-3 + 194, 1, 338.3, 286.6 , 0 );
setMoveKey( spep_2-3 + 196, 1, 318.5, 297.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 323.8, 277.8 , 0 );
setMoveKey( spep_2-3 + 200, 1, 310.1, 266.4 , 0 );
setMoveKey( spep_2-3 + 202, 1, 313.3, 270.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 309.1, 267.3 , 0 );
setMoveKey( spep_2-3 + 206, 1, 305, 263.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, 301, 260.4 , 0 );
setMoveKey( spep_2-3 + 210, 1, 297.2, 257.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, 293.6, 255.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 290.5, 253.2 , 0 );
setMoveKey( spep_2-3 + 216, 1, 287.7, 251.8 , 0 );
setMoveKey( spep_2-3 + 218, 1, 285.5, 250.9 , 0 );
setMoveKey( spep_2-3 + 220, 1, 266.2, 244.3 , 0 );
setMoveKey( spep_2-3 + 222, 1, 246.7, 237.9 , 0 );
setMoveKey( spep_2-3 + 224, 1, 227, 231.6 , 0 );
setMoveKey( spep_2-3 + 226, 1, 207, 225.2 , 0 );
setMoveKey( spep_2-3 + 228, 1, 186.9, 218.6 , 0 );
setMoveKey( spep_2-3 + 230, 1, 166.6, 211.8 , 0 );
setMoveKey( spep_2-3 + 232, 1, 159.2, 199.2 , 0 );
setMoveKey( spep_2-3 + 234, 1, 151.3, 185.1 , 0 );
setMoveKey( spep_2-3 + 236, 1, 142.7, 169.6 , 0 );
setMoveKey( spep_2-3 + 238, 1, 133.7, 152.7 , 0 );
setMoveKey( spep_2-3 + 240, 1, 124.2, 134.4 , 0 );
setMoveKey( spep_2-3 + 242, 1, 114.4, 114.9 , 0 );
setMoveKey( spep_2-3 + 243, 1, 114.4, 114.9 , 0 );

setMoveKey( spep_2-3 + 244, 1, 239, 95.5 , 0 );
setMoveKey( spep_2-3 + 246, 1, 199.7, 186.1 , 0 );
setMoveKey( spep_2-3 + 248, 1, 144.3, 244.5 , 0 );
setMoveKey( spep_2-3 + 250, 1, 125.8, 191.6 , 0 );
setMoveKey( spep_2-3 + 252, 1, 122.5, 188.9 , 0 );
setMoveKey( spep_2-3 + 254, 1, 134.8, 217 , 0 );
setMoveKey( spep_2-3 + 256, 1, 126.5, 223.7 , 0 );
setMoveKey( spep_2-3 + 258, 1, 141.5, 237.2 , 0 );
setMoveKey( spep_2-3 + 260, 1, 136, 257.4 , 0 );
setMoveKey( spep_2-3 + 262, 1, 146, 252.3 , 0 );
setMoveKey( spep_2-3 + 264, 1, 135.4, 242 , 0 );
setMoveKey( spep_2-3 + 266, 1, 148.2, 262.3 , 0 );
setMoveKey( spep_2-3 + 267, 1, 148.2, 262.3 , 0 );

setMoveKey( spep_2-3 + 268, 1, 74.2, -848.3 , 0 );
setMoveKey( spep_2-3 + 270, 1, 76.2, -872.7 , 0 );
setMoveKey( spep_2-3 + 272, 1, 78.2, -897.1 , 0 );
setMoveKey( spep_2-3 + 274, 1, 80.3, -921.9 , 0 );
setMoveKey( spep_2-3 + 276, 1, 82.3, -946.7 , 0 );
setMoveKey( spep_2-3 + 278, 1, 84.4, -971.7 , 0 );
setMoveKey( spep_2-3 + 280, 1, 86.4, -996.9 , 0 );
setMoveKey( spep_2-3 + 282, 1, 88.5, -1022.2 , 0 );
setMoveKey( spep_2-3 + 284, 1, 90.6, -1047.7 , 0 );
setMoveKey( spep_2-3 + 286, 1, 92.7, -1073.4 , 0 );
setMoveKey( spep_2-3 + 288, 1, 94.8, -1099.2 , 0 );
setMoveKey( spep_2-3 + 290, 1, 96.9, -1125.1 , 0 );
setMoveKey( spep_2-3 + 292, 1, 99, -1151.3 , 0 );
setMoveKey( spep_2-3 + 294, 1, 101.1, -1177.6 , 0 );
setMoveKey( spep_2-3 + 296, 1, 103.2, -1204.1 , 0 );
setMoveKey( spep_2-3 + 298, 1, 105.3, -1230.7 , 0 );
setMoveKey( spep_2-3 + 300, 1, 107.4, -1257.5 , 0 );
setMoveKey( spep_2-3 + 302, 1, 110.6, -1288.1 , 0 );
setMoveKey( spep_2-3 + 304, 1, 113.8, -1318.8 , 0 );
setMoveKey( spep_2-3 + 306, 1, 117, -1349.8 , 0 );
setMoveKey( spep_2-3 + 308, 1, 120.3, -1381.1 , 0 );
setMoveKey( spep_2-3 + 310, 1, 123.4, -1412.4 , 0 );
setMoveKey( spep_2-3 + 312, 1, 126.7, -1444.1 , 0 );
setMoveKey( spep_2-3 + 314, 1, 130, -1476 , 0 );
setMoveKey( spep_2-3 + 316, 1, 133.2, -1508 , 0 );
setMoveKey( spep_2-3 + 318, 1, 136.4, -1540.4 , 0 );
setMoveKey( spep_2-3 + 319, 1, 136.4, -1540.4 , 0 );

setMoveKey( spep_2-3 + 320, 1, 249.4, -40.2 , 0 );
setMoveKey( spep_2-3 + 322, 1, 255.9, -11.8 , 0 );
setMoveKey( spep_2-3 + 324, 1, 261, 16.6 , 0 );
setMoveKey( spep_2-3 + 326, 1, 264.6, 44.9 , 0 );
setMoveKey( spep_2-3 + 328, 1, 266.8, 73.3 , 0 );
setMoveKey( spep_2-3 + 330, 1, 247.9, 109 , 0 );
setMoveKey( spep_2-3 + 332, 1, 260.8, 72.6 , 0 );
setMoveKey( spep_2-3 + 334, 1, 253.7, 52.3 , 0 );
setMoveKey( spep_2-3 + 336, 1, 254.8, 72 , 0 );
setMoveKey( spep_2-3 + 338, 1, 239.7, 67.6 , 0 );
setMoveKey( spep_2-3 + 340, 1, 248.6, 71.3 , 0 );
setMoveKey( spep_2-3 + 342, 1, 241.6, 59 , 0 );
setMoveKey( spep_2-3 + 344, 1, 242.5, 70.7 , 0 );
setMoveKey( spep_2-3 + 346, 1, 223.3, 82.3 , 0 );
setMoveKey( spep_2-3 + 348, 1, 236.3, 70 , 0 );
setMoveKey( spep_2-3 + 350, 1, 229.2, 53.7 , 0 );
setMoveKey( spep_2-3 + 352, 1, 230, 69.3 , 0 );
setMoveKey( spep_2-1 + 354, 1, 214.9, 65 , 0 );

setScaleKey( spep_2-3 + 176, 1, 4, 4 );
setScaleKey( spep_2-3 + 178, 1, 3.68, 3.68 );
setScaleKey( spep_2-3 + 180, 1, 3.35, 3.35 );
setScaleKey( spep_2-3 + 182, 1, 3.03, 3.03 );
setScaleKey( spep_2-3 + 184, 1, 2.71, 2.71 );
setScaleKey( spep_2-3 + 194, 1, 2.71, 2.71 );
setScaleKey( spep_2-3 + 196, 1, 2.65, 2.65 );
setScaleKey( spep_2-3 + 198, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 200, 1, 2.55, 2.55 );
setScaleKey( spep_2-3 + 202, 1, 2.51, 2.51 );
setScaleKey( spep_2-3 + 204, 1, 2.47, 2.47 );
setScaleKey( spep_2-3 + 206, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 208, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 210, 1, 2.38, 2.38 );
setScaleKey( spep_2-3 + 212, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 214, 1, 2.34, 2.34 );
setScaleKey( spep_2-3 + 216, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 218, 1, 2.31, 2.31 );
setScaleKey( spep_2-3 + 220, 1, 2.26, 2.26 );
setScaleKey( spep_2-3 + 222, 1, 2.21, 2.21 );
setScaleKey( spep_2-3 + 224, 1, 2.16, 2.16 );
setScaleKey( spep_2-3 + 226, 1, 2.1, 2.1 );
setScaleKey( spep_2-3 + 228, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 230, 1, 2, 2 );
setScaleKey( spep_2-3 + 232, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 234, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 236, 1, 2.07, 2.07 );
setScaleKey( spep_2-3 + 238, 1, 2.1, 2.1 );
setScaleKey( spep_2-3 + 240, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 242, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 243, 1, 2.17, 2.17 );

setScaleKey( spep_2-3 + 244, 1, 3.38, 3.38 );
setScaleKey( spep_2-3 + 246, 1, 3.16, 3.16 );
setScaleKey( spep_2-3 + 248, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 250, 1, 2.64, 2.64 );
setScaleKey( spep_2-3 + 252, 1, 2.59, 2.59 );
setScaleKey( spep_2-3 + 254, 1, 2.55, 2.55 );
setScaleKey( spep_2-3 + 256, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 258, 1, 2.45, 2.45 );
setScaleKey( spep_2-3 + 260, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 262, 1, 2.35, 2.35 );
setScaleKey( spep_2-3 + 264, 1, 2.3, 2.3 );
setScaleKey( spep_2-3 + 266, 1, 2.25, 2.25 );
setScaleKey( spep_2-3 + 267, 1, 2.25, 2.25 );

setScaleKey( spep_2-3 + 268, 1, 3.37, 3.37 );
setScaleKey( spep_2-3 + 270, 1, 3.43, 3.43 );
setScaleKey( spep_2-3 + 272, 1, 3.49, 3.49 );
setScaleKey( spep_2-3 + 274, 1, 3.55, 3.55 );
setScaleKey( spep_2-3 + 276, 1, 3.61, 3.61 );
setScaleKey( spep_2-3 + 278, 1, 3.67, 3.67 );
setScaleKey( spep_2-3 + 280, 1, 3.73, 3.73 );
setScaleKey( spep_2-3 + 282, 1, 3.79, 3.79 );
setScaleKey( spep_2-3 + 284, 1, 3.85, 3.85 );
setScaleKey( spep_2-3 + 286, 1, 3.91, 3.91 );
setScaleKey( spep_2-3 + 288, 1, 3.97, 3.97 );
setScaleKey( spep_2-3 + 290, 1, 4.03, 4.03 );
setScaleKey( spep_2-3 + 292, 1, 4.09, 4.09 );
setScaleKey( spep_2-3 + 294, 1, 4.15, 4.15 );
setScaleKey( spep_2-3 + 296, 1, 4.22, 4.22 );
setScaleKey( spep_2-3 + 298, 1, 4.28, 4.28 );
setScaleKey( spep_2-3 + 300, 1, 4.34, 4.34 );
setScaleKey( spep_2-3 + 302, 1, 4.42, 4.42 );
setScaleKey( spep_2-3 + 304, 1, 4.5, 4.5 );
setScaleKey( spep_2-3 + 306, 1, 4.58, 4.58 );
setScaleKey( spep_2-3 + 308, 1, 4.66, 4.66 );
setScaleKey( spep_2-3 + 310, 1, 4.75, 4.75 );
setScaleKey( spep_2-3 + 312, 1, 4.83, 4.83 );
setScaleKey( spep_2-3 + 314, 1, 4.91, 4.91 );
setScaleKey( spep_2-3 + 316, 1, 4.99, 4.99 );
setScaleKey( spep_2-3 + 318, 1, 5.08, 5.08 );
setScaleKey( spep_2-3 + 319, 1, 5.08, 5.08 );

setScaleKey( spep_2-3 + 320, 1, 4.57, 4.57 );
setScaleKey( spep_2-3 + 322, 1, 4.11, 4.11 );
setScaleKey( spep_2-3 + 324, 1, 3.64, 3.64 );
setScaleKey( spep_2-3 + 326, 1, 3.18, 3.18 );
setScaleKey( spep_2-3 + 328, 1, 2.72, 2.72 );
setScaleKey( spep_2-3 + 330, 1, 2.68, 2.68 );
setScaleKey( spep_2-3 + 332, 1, 2.64, 2.64 );
setScaleKey( spep_2-3 + 334, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 336, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 338, 1, 2.52, 2.52 );
setScaleKey( spep_2-3 + 340, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 342, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 344, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 346, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 348, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 350, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 352, 1, 2.25, 2.25 );
setScaleKey( spep_2-1 + 354, 1, 2.21, 2.21 );

setRotateKey( spep_2-3 + 176, 1, 250 );
setRotateKey( spep_2-3 + 194, 1, 250 );
setRotateKey( spep_2-3 + 195, 1, 250 );
setRotateKey( spep_2-3 + 196, 1, 100.6 );
setRotateKey( spep_2-3 + 197, 1, 100.6 );
setRotateKey( spep_2-3 + 198, 1, 37.5 );
setRotateKey( spep_2-3 + 199, 1, 37.5 );
setRotateKey( spep_2-3 + 200, 1, -50.6 );
setRotateKey( spep_2-3 + 201, 1, -50.6 );
setRotateKey( spep_2-3 + 202, 1, -120 );
setRotateKey( spep_2-3 + 203, 1, -120 );
setRotateKey( spep_2-3 + 204, 1, -200.6 );
setRotateKey( spep_2-3 + 205, 1, -200.6 );
setRotateKey( spep_2-3 + 206, 1, -287.5 );
setRotateKey( spep_2-3 + 207, 1, -287.5 );
setRotateKey( spep_2-3 + 208, 1, -320.6 );
setRotateKey( spep_2-3 + 209, 1, -320.6 );
setRotateKey( spep_2-3 + 210, 1, -367.5 );
setRotateKey( spep_2-3 + 211, 1, -367.5 );
setRotateKey( spep_2-3 + 212, 1, -410.6 );
setRotateKey( spep_2-3 + 213, 1, -410.6 );
setRotateKey( spep_2-3 + 214, 1, -437.5 );
setRotateKey( spep_2-3 + 215, 1, -437.5 );
setRotateKey( spep_2-3 + 216, 1, -470.6 );
setRotateKey( spep_2-3 + 217, 1, -470.6 );
setRotateKey( spep_2-3 + 218, 1, -490 );
setRotateKey( spep_2-3 + 219, 1, -490 );
setRotateKey( spep_2-3 + 220, 1, -510 );
setRotateKey( spep_2-3 + 221, 1, -510 );
setRotateKey( spep_2-3 + 222, 1, -560 );
setRotateKey( spep_2-3 + 223, 1, -560 );
setRotateKey( spep_2-3 + 224, 1, -590 );
setRotateKey( spep_2-3 + 225, 1, -590 );
setRotateKey( spep_2-3 + 226, 1, -610 );
setRotateKey( spep_2-3 + 227, 1, -610 );
setRotateKey( spep_2-3 + 228, 1, -630 );
setRotateKey( spep_2-3 + 229, 1, -630 );
setRotateKey( spep_2-3 + 230, 1, -670 );
setRotateKey( spep_2-3 + 231, 1, -670 );
setRotateKey( spep_2-3 +242, 1, -820.4);
setRotateKey( spep_2-3 +243, 1, -820.4);

setRotateKey( spep_2-3 + 244, 1, -94.6 );
setRotateKey( spep_2-3 + 246, 1, -81.4 );
setRotateKey( spep_2-3 + 248, 1, -68.2 );
setRotateKey( spep_2-3 + 250, 1, -64.6 );
setRotateKey( spep_2-3 + 252, 1, -61.1 );
setRotateKey( spep_2-3 + 254, 1, -57.6 );
setRotateKey( spep_2-3 + 256, 1, -54 );
setRotateKey( spep_2-3 + 258, 1, -50.5 );
setRotateKey( spep_2-3 + 260, 1, -46.9 );
setRotateKey( spep_2-3 + 262, 1, -43.4 );
setRotateKey( spep_2-3 + 264, 1, -39.9 );
setRotateKey( spep_2-3 + 266, 1, -36.3 );
setRotateKey( spep_2-3 + 267, 1, -36.3 );

setRotateKey( spep_2-3 + 268, 1, -66.7 );
setRotateKey( spep_2-3 + 270, 1, -66.4 );
setRotateKey( spep_2-3 + 272, 1, -66.2 );
setRotateKey( spep_2-3 + 274, 1, -66 );
setRotateKey( spep_2-3 + 276, 1, -65.8 );
setRotateKey( spep_2-3 + 278, 1, -65.5 );
setRotateKey( spep_2-3 + 280, 1, -65.3 );
setRotateKey( spep_2-3 + 282, 1, -65.1 );
setRotateKey( spep_2-3 + 284, 1, -64.8 );
setRotateKey( spep_2-3 + 286, 1, -64.6 );
setRotateKey( spep_2-3 + 288, 1, -64.4 );
setRotateKey( spep_2-3 + 290, 1, -64.1 );
setRotateKey( spep_2-3 + 292, 1, -63.9 );
setRotateKey( spep_2-3 + 294, 1, -63.7 );
setRotateKey( spep_2-3 + 296, 1, -63.5 );
setRotateKey( spep_2-3 + 298, 1, -63.2 );
setRotateKey( spep_2-3 + 300, 1, -63 );
setRotateKey( spep_2-3 + 302, 1, -62.8 );
setRotateKey( spep_2-3 + 304, 1, -62.5 );
setRotateKey( spep_2-3 + 306, 1, -62.3 );
setRotateKey( spep_2-3 + 308, 1, -62.1 );
setRotateKey( spep_2-3 + 310, 1, -61.8 );
setRotateKey( spep_2-3 + 312, 1, -61.6 );
setRotateKey( spep_2-3 + 314, 1, -61.4 );
setRotateKey( spep_2-3 + 316, 1, -61.2 );
setRotateKey( spep_2-3 + 318, 1, -60.9 );
setRotateKey( spep_2-3 + 319, 1, -60.9 );

setRotateKey( spep_2-3 + 320, 1, 0 );
setRotateKey( spep_2-1 + 354, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 386, 1, 1 );
setDisp( spep_2-1 + 424, 1, 0 );

changeAnime( spep_2-3 + 386, 1, 105 );

setMoveKey( spep_2-3 + 386, 1, -104.5, 311.6 , 0 );
setMoveKey( spep_2-3 + 388, 1, -146.9, 447.8 , 0 );
setMoveKey( spep_2-3 + 390, 1, -179, 542.3 , 0 );
setMoveKey( spep_2-3 + 392, 1, -199.7, 595.1 , 0 );
setMoveKey( spep_2-3 + 394, 1, -158.1, 473.9 , 0 );
setMoveKey( spep_2-3 + 396, 1, -131.3, 327.8 , 0 );
setMoveKey( spep_2-3 + 398, 1, -118.4, 348.5 , 0 );
setMoveKey( spep_2-3 + 400, 1, -133.5, 357.1 , 0 );
setMoveKey( spep_2-3 + 402, 1, -124.7, 341.7 , 0 );
setMoveKey( spep_2-3 + 404, 1, -139.9, 334.3 , 0 );
setMoveKey( spep_2-3 + 406, 1, -131.1, 334.9 , 0 );
setMoveKey( spep_2-3 + 408, 1, -138.3, 311.5 , 0 );
setMoveKey( spep_2-3 + 410, 1, -137.7, 328 , 0 );
setMoveKey( spep_2-3 + 412, 1, -157, 320.6 , 0 );
setMoveKey( spep_2-3 + 414, 1, -144.3, 321.1 , 0 );
setMoveKey( spep_2-3 + 416, 1, -151.7, 337.5 , 0 );
setMoveKey( spep_2-3 + 418, 1, -151.1, 314 , 0 );
setMoveKey( spep_2-3 + 420, 1, -166.5, 298.5 , 0 );
setMoveKey( spep_2-3 + 422, 1, -157.9, 306.8 , 0 );
setMoveKey( spep_2-1 + 424, 1, -169.4, 283.2 , 0 );

setScaleKey( spep_2-3 + 386, 1, 2.88, 2.88 );
setScaleKey( spep_2-3 + 388, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 390, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 392, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 394, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 396, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 398, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 400, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 402, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 404, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 406, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 408, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 410, 1, 0.29, 0.29 );
setScaleKey( spep_2-3 + 412, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 414, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 416, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 418, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 420, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 422, 1, 0.22, 0.22 );
setScaleKey( spep_2-1 + 424, 1, 0.21, 0.21 );

setRotateKey( spep_2-3 + 386, 1, -48 );
setRotateKey( spep_2-3 + 388, 1, -48.5 );
setRotateKey( spep_2-3 + 390, 1, -49.1 );
setRotateKey( spep_2-3 + 392, 1, -49.6 );
setRotateKey( spep_2-3 + 394, 1, -50.1 );
setRotateKey( spep_2-3 + 396, 1, -50.7 );
setRotateKey( spep_2-3 + 398, 1, -51 );
setRotateKey( spep_2-3 + 400, 1, -51.3 );
setRotateKey( spep_2-3 + 402, 1, -51.5 );
setRotateKey( spep_2-3 + 404, 1, -51.8 );
setRotateKey( spep_2-3 + 406, 1, -52.1 );
setRotateKey( spep_2-3 + 408, 1, -52.4 );
setRotateKey( spep_2-3 + 410, 1, -52.7 );
setRotateKey( spep_2-3 + 412, 1, -53 );
setRotateKey( spep_2-3 + 414, 1, -53.3 );
setRotateKey( spep_2-3 + 416, 1, -53.6 );
setRotateKey( spep_2-3 + 418, 1, -53.9 );
setRotateKey( spep_2-3 + 420, 1, -54.2 );
setRotateKey( spep_2-3 + 422, 1, -54.5 );
setRotateKey( spep_2-1 + 424, 1, -54.8 );

--敵の動き
setDisp( spep_2-3 + 476, 1, 1 );
setDisp( spep_2-1 + 550, 1, 0 );

changeAnime( spep_2-3 + 476, 1, 105 );
changeAnime( spep_2-3 + 542, 1, 107 );

a=240;
b=0;

setMoveKey( spep_2-3 + 476, 1, 663.9-a, 39.8-b , 0 );
setMoveKey( spep_2-3 + 478, 1, 630.9-a, 51.2-b , 0 );
setMoveKey( spep_2-3 + 480, 1, 597.9-a, 62.6-b , 0 );
setMoveKey( spep_2-3 + 482, 1, 564.9-a, 74-b , 0 );
setMoveKey( spep_2-3 + 484, 1, 531.8-a, 85.5-b , 0 );
setMoveKey( spep_2-3 + 486, 1, 498.8-a, 96.8-b , 0 );
setMoveKey( spep_2-3 + 488, 1, 465.8-a, 108.2-b , 0 );
setMoveKey( spep_2-3 + 490, 1, 432.8-a, 119.6-b , 0 );
setMoveKey( spep_2-3 + 492, 1, 484-a, 112.6-b , 0 );
setMoveKey( spep_2-3 + 494, 1, 509.8-a, 118.9-b , 0 );
setMoveKey( spep_2-3 + 496, 1, 531.9-a, 127.3-b , 0 );
setMoveKey( spep_2-3 + 498, 1, 550.2-a, 137.6-b , 0 );
setMoveKey( spep_2-3 + 500, 1, 564.8-a, 150-b , 0 );
setMoveKey( spep_2-3 + 502, 1, 567.6-a, 140.4-b , 0 );
setMoveKey( spep_2-3 + 504, 1, 582.7-a, 180.7-b , 0 );
setMoveKey( spep_2-3 + 506, 1, 578-a, 211.1-b , 0 );
setMoveKey( spep_2-3 + 508, 1, 660.1-a, 299.8-b , 0 );
setMoveKey( spep_2-3 + 510, 1, 641.2-a, 310.5-b , 0 );
setMoveKey( spep_2-3 + 512, 1, 646.3-a, 329.2-b , 0 );
setMoveKey( spep_2-3 + 514, 1, 635.4-a, 335.9-b , 0 );
setMoveKey( spep_2-3 + 516, 1, 632.6-a, 358.6-b , 0 );
setMoveKey( spep_2-3 + 518, 1, 613.7-a, 381.3-b , 0 );
setMoveKey( spep_2-3 + 520, 1, 618.8-a, 388-b , 0 );
setMoveKey( spep_2-3 + 522, 1, 611.9-a, 402.7-b , 0 );
setMoveKey( spep_2-3 + 524, 1, 597.8-a, 436.3-b , 0 );
setMoveKey( spep_2-3 + 526, 1, 583.6-a, 469.9-b , 0 );
setMoveKey( spep_2-3 + 528, 1, 569.4-a, 503.6-b , 0 );
setMoveKey( spep_2-3 + 530, 1, 555.2-a, 537.2-b , 0 );
setMoveKey( spep_2-3 + 532, 1, 541-a, 570.8-b , 0 );
setMoveKey( spep_2-3 + 534, 1, 526.8-a, 604.4-b , 0 );
setMoveKey( spep_2-3 + 536, 1, 512.5-a, 638.1-b , 0 );
setMoveKey( spep_2-3 + 538, 1, 498.3-a, 671.7-b , 0 );
setMoveKey( spep_2-3 + 540, 1, 484-a, 705.3-b , 0 );
setMoveKey( spep_2-3 + 541, 1, 484-a, 705.3-b , 0 );

setMoveKey( spep_2-3 + 542, 1, -411.1, 1077.6 , 0 );
setMoveKey( spep_2-3 + 544, 1, -467.3, 423 , 0 );
setMoveKey( spep_2-3 + 546, 1, -523.5, -231.6 , 0 );
setMoveKey( spep_2-3 + 548, 1, -579.8, -886.1 , 0 );
setMoveKey( spep_2-1 + 550, 1, -636, -1540.7 , 0 );

c=0.5;

setScaleKey( spep_2-3 + 476, 1, 8.92+c, 8.92+c );
setScaleKey( spep_2-3 + 478, 1, 8.35+c, 8.35+c );
setScaleKey( spep_2-3 + 480, 1, 7.79+c, 7.79+c );
setScaleKey( spep_2-3 + 482, 1, 7.22+c, 7.22+c );
setScaleKey( spep_2-3 + 484, 1, 6.65+c, 6.65+c );
setScaleKey( spep_2-3 + 486, 1, 6.09+c, 6.09+c );
setScaleKey( spep_2-3 + 488, 1, 5.52+c, 5.52+c );
setScaleKey( spep_2-3 + 490, 1, 4.95+c, 4.95+c );
setScaleKey( spep_2-3 + 492, 1, 5.39+c, 5.39+c );
setScaleKey( spep_2-3 + 494, 1, 5.5+c, 5.5+c );
setScaleKey( spep_2-3 + 496, 1, 5.57+c, 5.57+c );
setScaleKey( spep_2-3 + 498, 1, 5.6+c, 5.6+c );
setScaleKey( spep_2-3 + 500, 1, 5.57+c, 5.57+c );
setScaleKey( spep_2-3 + 502, 1, 5.5+c, 5.5+c );
setScaleKey( spep_2-3 + 504, 1, 5.38+c, 5.38+c );
setScaleKey( spep_2-3 + 506, 1, 5.21+c, 5.21+c );
setScaleKey( spep_2-3 + 508, 1, 6.37+c, 6.37+c );
setScaleKey( spep_2-3 + 510, 1, 6.29+c, 6.29+c );
setScaleKey( spep_2-3 + 512, 1, 6.21+c, 6.21+c );
setScaleKey( spep_2-3 + 514, 1, 6.13+c, 6.13+c );
setScaleKey( spep_2-3 + 516, 1, 6.04+c, 6.04+c );
setScaleKey( spep_2-3 + 518, 1, 5.96+c, 5.96+c );
setScaleKey( spep_2-3 + 520, 1, 5.88+c, 5.88+c );
setScaleKey( spep_2-3 + 522, 1, 5.8+c, 5.8+c );
setScaleKey( spep_2-3 + 524, 1, 5.57+c, 5.57+c );
setScaleKey( spep_2-3 + 526, 1, 5.34+c, 5.34+c );
setScaleKey( spep_2-3 + 528, 1, 5.11+c, 5.11+c );
setScaleKey( spep_2-3 + 530, 1, 4.88+c, 4.88+c );
setScaleKey( spep_2-3 + 532, 1, 4.65+c, 4.65+c );
setScaleKey( spep_2-3 + 534, 1, 4.42+c, 4.42+c );
setScaleKey( spep_2-3 + 536, 1, 4.19+c, 4.19+c );
setScaleKey( spep_2-3 + 538, 1, 3.96+c, 3.96+c );
setScaleKey( spep_2-3 + 540, 1, 3.74+c, 3.74+c );
setScaleKey( spep_2-3 + 541, 1, 3.74+c, 3.74+c );

setScaleKey( spep_2-3 + 542, 1, 6.84, 6.84 );
setScaleKey( spep_2-1 + 550, 1, 6.84, 6.84 );

setRotateKey( spep_2-3 + 476, 1, 11.4 );
setRotateKey( spep_2-3 + 492, 1, 11.4 );
setRotateKey( spep_2-3 + 494, 1, 11.9 );
setRotateKey( spep_2-3 + 496, 1, 12.4 );
setRotateKey( spep_2-3 + 498, 1, 13 );
setRotateKey( spep_2-3 + 500, 1, 13.5 );
setRotateKey( spep_2-3 + 502, 1, 14 );
setRotateKey( spep_2-3 + 504, 1, 14.5 );
setRotateKey( spep_2-3 + 506, 1, 15.1 );
setRotateKey( spep_2-3 + 508, 1, 11 );
setRotateKey( spep_2-3 + 510, 1, 10.8 );
setRotateKey( spep_2-3 + 512, 1, 10.6 );
setRotateKey( spep_2-3 + 514, 1, 10.5 );
setRotateKey( spep_2-3 + 516, 1, 10.3 );
setRotateKey( spep_2-3 + 518, 1, 10.1 );
setRotateKey( spep_2-3 + 520, 1, 9.9 );
setRotateKey( spep_2-3 + 522, 1, 9.8 );
setRotateKey( spep_2-3 + 524, 1, 9.6 );
setRotateKey( spep_2-3 + 526, 1, 9.5 );
setRotateKey( spep_2-3 + 528, 1, 9.4 );
setRotateKey( spep_2-3 + 530, 1, 9.2 );
setRotateKey( spep_2-3 + 532, 1, 9.1 );
setRotateKey( spep_2-3 + 534, 1, 9 );
setRotateKey( spep_2-3 + 536, 1, 8.8 );
setRotateKey( spep_2-3 + 538, 1, 8.7 );
setRotateKey( spep_2-3 + 540, 1, 8.5 );
setRotateKey( spep_2-3 + 541, 1, 8.5 );

setRotateKey( spep_2-3 + 542, 1, 37.4 );
setRotateKey( spep_2-1 + 550, 1, 37.4 );

--敵の動き
setDisp( spep_2-3 + 588, 1, 1 );
setDisp( spep_2-1 + 616, 1, 0 );

changeAnime( spep_2-3 + 588, 1, 105 );

setMoveKey( spep_2-3 + 588, 1, -56.8, 171.3 , 0 );
setMoveKey( spep_2-3 + 590, 1, -47.9, 146.8 , 0 );
setMoveKey( spep_2-3 + 592, 1, -36, 114.2 , 0 );
setMoveKey( spep_2-3 + 594, 1, -21.2, 73.7 , 0 );
setMoveKey( spep_2-3 + 596, 1, -3.6, 25.1 , 0 );
setMoveKey( spep_2-3 + 598, 1, 16.8, -31.2 , 0 );
setMoveKey( spep_2-3 + 600, 1, 14.9, -49.4 , 0 );
setMoveKey( spep_2-3 + 602, 1, 13.2, -65.4 , 0 );
setMoveKey( spep_2-3 + 604, 1, 11.8, -79.2 , 0 );
setMoveKey( spep_2-3 + 606, 1, 10.6, -90.9 , 0 );
setMoveKey( spep_2-3 + 608, 1, 9.6, -100.5 , 0 );
setMoveKey( spep_2-3 + 610, 1, 8.9, -108 , 0 );
setMoveKey( spep_2-3 + 612, 1, 8.3, -113.3 , 0 );
setMoveKey( spep_2-3 + 614, 1, 8, -116.5 , 0 );
setMoveKey( spep_2-1 + 616, 1, 7.9, -117.6 , 0 );

setScaleKey( spep_2-3 + 588, 1, 26.49, 26.49 );
setScaleKey( spep_2-3 + 590, 1, 23.42, 23.42 );
setScaleKey( spep_2-3 + 592, 1, 19.33, 19.33 );
setScaleKey( spep_2-3 + 594, 1, 14.21, 14.21 );
setScaleKey( spep_2-3 + 596, 1, 8.07, 8.07 );
setScaleKey( spep_2-3 + 598, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 600, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 602, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 604, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 606, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 608, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 610, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 612, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 614, 1, 0.18, 0.18 );
setScaleKey( spep_2-1 + 616, 1, 0.17, 0.17 );

setRotateKey( spep_2-3 + 588, 1, -1 );
setRotateKey( spep_2-3 + 590, 1, 0.3 );
setRotateKey( spep_2-3 + 592, 1, 2 );
setRotateKey( spep_2-3 + 594, 1, 4.1 );
setRotateKey( spep_2-3 + 596, 1, 6.6 );
setRotateKey( spep_2-3 + 598, 1, 9.6 );
setRotateKey( spep_2-3 + 600, 1, 8.9 );
setRotateKey( spep_2-3 + 602, 1, 8.2 );
setRotateKey( spep_2-3 + 604, 1, 7.7 );
setRotateKey( spep_2-3 + 606, 1, 7.3 );
setRotateKey( spep_2-3 + 608, 1, 6.9 );
setRotateKey( spep_2-3 + 610, 1, 6.6 );
setRotateKey( spep_2-3 + 612, 1, 6.4 );
setRotateKey( spep_2-3 + 614, 1, 6.3 );
setRotateKey( spep_2-1 + 616, 1, 6.2 );

--SE
playSe( spep_2 + 82, 1003 );--裏拳
setSeVolume( spep_2 + 82, 1003, 60 );
se_1180 = playSe( spep_2 + 86, 1180 );--裏拳
setSeVolume( spep_2 + 86, 1180, 0 );
setSeVolume( spep_2 + 105, 1180, 0 );
setSeVolume( spep_2 + 106, 1180, 12.83 );
setSeVolume( spep_2 + 107, 1180, 25.67 );
setSeVolume( spep_2 + 108, 1180, 38.50 );
setSeVolume( spep_2 + 109, 1180, 51.33 );
setSeVolume( spep_2 + 110, 1180, 64.17 );
setSeVolume( spep_2 + 111, 1180, 77 );
playSe( spep_2 + 98, 1189 );--裏拳
playSe( spep_2 + 102, 1009 );--裏拳
playSe( spep_2 + 104, 1110 );--裏拳
playSe( spep_2 + 136, 9 );--足振りかぶる
setSeVolume( spep_2 + 136, 9, 0 );
setSeVolume( spep_2 + 137, 9, 2.67 );
setSeVolume( spep_2 + 138, 9, 5.33 );
setSeVolume( spep_2 + 139, 9, 8 );
setSeVolume( spep_2 + 140, 9, 10.67 );
setSeVolume( spep_2 + 141, 9, 13.33 );
setSeVolume( spep_2 + 142, 9, 16 );
setSeVolume( spep_2 + 143, 9, 18.67 );
setSeVolume( spep_2 + 144, 9, 21.33 );
setSeVolume( spep_2 + 145, 9, 24 );
setSeVolume( spep_2 + 146, 9, 26.67 );
setSeVolume( spep_2 + 147, 9, 29.33 );
setSeVolume( spep_2 + 148, 9, 32 );
setSeVolume( spep_2 + 149, 9, 34.67 );
setSeVolume( spep_2 + 150, 9, 37.33 );
setSeVolume( spep_2 + 151, 9, 40 );
setSeVolume( spep_2 + 152, 9, 42.67 );
setSeVolume( spep_2 + 153, 9, 45.33 );
setSeVolume( spep_2 + 154, 9, 48 );
setSeVolume( spep_2 + 155, 9, 50.67 );
setSeVolume( spep_2 + 156, 9, 53.33 );
setSeVolume( spep_2 + 157, 9, 56 );
setSeVolume( spep_2 + 158, 9, 58.67 );
setSeVolume( spep_2 + 159, 9, 61.33 );
setSeVolume( spep_2 + 160, 9, 64 );
setSeVolume( spep_2 + 161, 9, 66.67 );
setSeVolume( spep_2 + 162, 9, 69.33 );
setSeVolume( spep_2 + 163, 9, 72 );
setSeVolume( spep_2 + 164, 9, 74.67 );
setSeVolume( spep_2 + 165, 9, 77.33 );
setSeVolume( spep_2 + 166, 9, 80 );
playSe( spep_2 + 136, 1004 );--足振りかぶる
setSeVolume( spep_2 + 136, 1004, 76 );
playSe( spep_2 + 170, 1001 );--後ろ蹴り
setSeVolume( spep_2 + 170, 1001, 71 );
playSe( spep_2 + 172, 1010 );--後ろ蹴り
playSe( spep_2 + 172, 1110 );--後ろ蹴り
playSe( spep_2 + 234, 1189 );--蹴り上げ
playSe( spep_2 + 240, 1010 );--蹴り上げ
playSe( spep_2 + 240, 1012 );--蹴り上げ
playSe( spep_2 + 242, 1000 );--蹴り上げ
playSe( spep_2 + 244, 1010 );--蹴り上げ
setSeVolume( spep_2 + 244, 1010, 94 );
se_1072 = playSe( spep_2 + 256, 1072 );--後ろからアップ
setSeVolume( spep_2 + 256, 1072, 71 );
se_1182 = playSe( spep_2 + 272, 1182 );--後ろからアップ
setSeVolume( spep_2 + 272, 1182, 0 );
setSeVolume( spep_2 + 276, 1182, 0 );
setSeVolume( spep_2 + 277, 1182, 7.44 );
setSeVolume( spep_2 + 278, 1182, 14.89 );
setSeVolume( spep_2 + 279, 1182, 22.33 );
setSeVolume( spep_2 + 280, 1182, 29.78 );
setSeVolume( spep_2 + 281, 1182, 37.22 );
setSeVolume( spep_2 + 282, 1182, 44.67 );
setSeVolume( spep_2 + 283, 1182, 52.11 );
setSeVolume( spep_2 + 284, 1182, 59.56 );
setSeVolume( spep_2 + 285, 1182, 67);
playSe( spep_2 + 314, 1189 );--正拳突き
playSe( spep_2 + 316, 1000 );--正拳突き
se_1188 = playSe( spep_2 + 316, 1188 );--顔アップ
setSeVolume( spep_2 + 316, 1188, 0 );
setSeVolume( spep_2 + 352, 1188, 8 );
setSeVolume( spep_2 + 353, 1188, 16 );
setSeVolume( spep_2 + 354, 1188, 24 );
setSeVolume( spep_2 + 355, 1188, 32 );
setSeVolume( spep_2 + 356, 1188, 40 );
setSeVolume( spep_2 + 357, 1188, 48 );
setSeVolume( spep_2 + 358, 1188, 56 );
playSe( spep_2 + 318, 1187 );--正拳突き
setSeVolume( spep_2 + 318, 1187, 78 );
playSe( spep_2 + 318, 1190 );--正拳突き
setSeVolume( spep_2 + 318, 1190, 83 );
se_1002 = playSe( spep_2 + 348, 1002 );--顔アップ
setSeVolume( spep_2 + 348, 1002, 0 );
setSeVolume( spep_2 + 349, 1002, 5.07 );
setSeVolume( spep_2 + 350, 1002, 10.14 );
setSeVolume( spep_2 + 351, 1002, 15.21 );
setSeVolume( spep_2 + 352, 1002, 20.29 );
setSeVolume( spep_2 + 353, 1002, 25.36 );
setSeVolume( spep_2 + 354, 1002, 30.43 );
setSeVolume( spep_2 + 355, 1002, 35.50 );
setSeVolume( spep_2 + 356, 1002, 40.57 );
setSeVolume( spep_2 + 357, 1002, 45.64 );
setSeVolume( spep_2 + 358, 1002, 50.71 );
setSeVolume( spep_2 + 359, 1002, 55.79 );
setSeVolume( spep_2 + 360, 1002, 60.86 );
setSeVolume( spep_2 + 361, 1002, 65.93 );
setSeVolume( spep_2 + 362, 1002, 71 );
playSe( spep_2 + 352, 1004 );--顔アップ
setSeVolume( spep_2 + 352, 1004, 84 );
playSe( spep_2 + 354, 1003 );--顔アップ
playSe( spep_2 + 384, 1120 );--蹴り
playSe( spep_2 + 424, 9 );--前方ダッシュ
playSe( spep_2 + 424, 1182 );--前方ダッシュ
se_11831 = playSe( spep_2 + 424, 1183 );--前方ダッシュ
playSe( spep_2 + 488, 1006 );--足キャッチ
se_1192 = playSe( spep_2 + 488, 1192 );--足キャッチ
setSeVolume( spep_2 + 488, 1192, 158 );
playSe( spep_2 + 488, 1260 );--足キャッチ
setSeVolume( spep_2 + 488, 1260, 66 );
playSe( spep_2 + 534, 1004 );--投げる
se_1116 = playSe( spep_2 + 534, 1116 );--投げる
playSe( spep_2 + 534, 1182 );--投げる
setSeVolume( spep_2 + 534, 1182, 0 );
setSeVolume( spep_2 + 535, 1182, 9.09 );
setSeVolume( spep_2 + 536, 1182, 18.18 );
setSeVolume( spep_2 + 537, 1182, 27.27 );
setSeVolume( spep_2 + 538, 1182, 36.36 );
setSeVolume( spep_2 + 539, 1182, 45.45 );
setSeVolume( spep_2 + 540, 1182, 54.55 );
setSeVolume( spep_2 + 541, 1182, 63.64 );
setSeVolume( spep_2 + 542, 1182, 72.73 );
setSeVolume( spep_2 + 543, 1182, 81.82 );
setSeVolume( spep_2 + 544, 1182, 90.91 );
setSeVolume( spep_2 + 545, 1182, 100 );
playSe( spep_2 + 534, 1027 );--投げる
setSeVolume( spep_2 + 534, 1027, 75 );
se_1183 = playSe( spep_2 + 584, 1183 );--そして地面へ
playSe( spep_2 + 616, 1159 );--爆発


stopSe( spep_2 + 64, se_1175, 73 );
stopSe( spep_2 + 54, se_1269, 56 );
stopSe( spep_2 + 127, se_1180, 33 );
stopSe( spep_2 + 300, se_1072, 20 );
stopSe( spep_2 + 303, se_1182, 41 );
stopSe( spep_2 + 373, se_1188, 26 );
stopSe( spep_2 + 375, se_1002, 27 );
stopSe( spep_2 + 499, se_11831, 25 );
stopSe( spep_2 + 500, se_1192, 0 );
stopSe( spep_2 + 556, se_1116, 15 );
stopSe( spep_2 + 630, se_1183, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 656;
------------------------------------------------------
-- 発射〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_3 + 280, explosion, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_3 + 280, explosion, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, explosion, 0 );
setEffRotateKey( spep_3 + 280, explosion, 0 );
setEffAlphaKey( spep_3 + 0, explosion, 255 );
setEffAlphaKey( spep_3 + 280, explosion, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 64,  10012, 52, 0x100, -1, 0, 152.6, 278.9 );

setEffMoveKey( spep_3-3 + 64, ctzuo, 152.6, 278.9 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzuo, 137.2, 325.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 80, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 82, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 84, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 86, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 88, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 90, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 92, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 94, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 96, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 98, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 100, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 102, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 104, ctzuo, 149.4, 371.8 , 0 );
setEffMoveKey( spep_3-3 + 106, ctzuo, 126.9, 369.8 , 0 );
setEffMoveKey( spep_3-3 + 108, ctzuo, 147.8, 369.2 , 0 );
setEffMoveKey( spep_3-3 + 110, ctzuo, 110.3, 363.4 , 0 );
setEffMoveKey( spep_3-3 + 112, ctzuo, 144.8, 364.2 , 0 );
setEffMoveKey( spep_3-3 + 114, ctzuo, 93.7, 357.2 , 0 );
setEffMoveKey( spep_3-3 + 116, ctzuo, 85.5, 354 , 0 );

setEffScaleKey( spep_3-3 + 64, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_3-3 + 66, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_3-3 + 68, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3-3 + 106, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3-3 + 108, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_3-3 + 110, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_3-3 + 112, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_3-3 + 114, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_3-3 + 116, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_3-3 + 64, ctzuo, 30.1 );
setEffRotateKey( spep_3-3 + 66, ctzuo, 21.4 );
setEffRotateKey( spep_3-3 + 68, ctzuo, 12.5 );
setEffRotateKey( spep_3-3 + 116, ctzuo, 12.5 );

setEffAlphaKey( spep_3-3 + 64, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 106, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 108, ctzuo, 204 );
setEffAlphaKey( spep_3-3 + 110, ctzuo, 153 );
setEffAlphaKey( spep_3-3 + 112, ctzuo, 102 );
setEffAlphaKey( spep_3-3 + 114, ctzuo, 51 );
setEffAlphaKey( spep_3-3 + 116, ctzuo, 0 );

--SE
playSe( spep_3 + 30, 1003 );--腕後ろへ
playSe( spep_3 + 60, 1027 );--気弾発射
setSeVolume( spep_3 + 60, 1027, 63 );
playSe( spep_3 + 60, 1133 );--気弾発射
se_1236 = playSe( spep_3 + 60, 1236 );--気弾発射
setSeVolume( spep_3 + 60, 1236, 141 );
se_1177 = playSe( spep_3 + 60, 1177 );--気弾発射
se_1215 = playSe( spep_3 + 90, 1215 );--気弾発射
setSeVolume( spep_3 + 90, 1215, 85 );
playSe( spep_3 + 174, 1159 );--爆発
playSe( spep_3 + 174, 1023 );--爆発
playSe( spep_3 + 180, 1067 );--爆発
setSeVolume( spep_3 + 180, 1067, 82 );
playSe( spep_3 + 190, 1188 );--爆発

stopSe( spep_3 + 184, se_1236, 0 );
stopSe( spep_3 + 184, se_1177, 0 );
stopSe( spep_3 + 184, se_1215, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 280, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 50, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 58, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 170 );
endPhase( spep_3 + 270 );
end
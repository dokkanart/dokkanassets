--1016840_超サイヤ人2カリフラ&超サイヤ人2ケール_リミットブレイクブラスター
--sp_effect_a1_00156

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SE
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

--エフェクト
SP_01=	153317	;--	構え
SP_02=	153318	;--	放つ
SP_03=	153319	;--	ケールナビアップ
SP_04=	153320	;--	カリフラナビアップ
SP_05=	153321	;--	マーブル放つ
SP_06=	153322	;--	ビーム迫る
SP_07=	153323	;--	ビーム残心
SP_08=	153324	;--	締めカット

--エフェクト(敵)
SP_01x=	153325	;--	構え	(敵)
SP_02x=	153326	;--	放つ	(敵)
SP_03x=	153319	;--	ケールナビアップ	
SP_04x=	153320	;--	カリフラナビアップ	
SP_05x=	153327	;--	マーブル放つ	(敵)
SP_06x=	153322	;--	ビーム迫る	
SP_07x=	153323	;--	ビーム残心	
SP_08x=	153324	;--	締めカット	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--------------------------------------------------------
-- ため
--------------------------------------------------------
spep_0 = 0;

--エフェクト
tame = entryEffect(spep_0, SP_01, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_0, tame, 0, 0);
setEffMoveKey(spep_0 + 160, tame, 0, 0);

setEffScaleKey(spep_0, tame, 1.0, 1.0);
setEffScaleKey(spep_0 + 160, tame, 1.0, 1.0);

setEffRotateKey(spep_0, tame, 0);
setEffRotateKey(spep_0 + 160, tame, 0);

setEffAlphaKey(spep_0, tame, 255);
setEffAlphaKey(spep_0 + 160, tame, 255);

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 42 -12 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)   
setEffReplaceTexture( speff, 3, 2 );        --カットイン差し替え  
speff1 = entryEffect( spep_0 + 42 -12, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)   
setEffReplaceTexture( speff1, 4, 5 );        --セリフカットイン差し替え  

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 42,  190006, 72, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 42, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 42, ctgogo, -9.9, 512.8 , 0 );
setEffMoveKey( spep_0 + 42 +72, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 42, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0 + 42 +64, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0 + 42 +66, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_0 + 42 +68, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 42 +70, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_0 + 42 +72, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_0 + 42, ctgogo, 0 );
setEffRotateKey( spep_0 + 42 +72, ctgogo, 0 );

setEffAlphaKey( spep_0 + 42, ctgogo, 0 );
setEffAlphaKey( spep_0 + 42 +1, ctgogo, 255 );
setEffAlphaKey( spep_0 + 42 +2, ctgogo, 255 );
setEffAlphaKey( spep_0 + 42 +72, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 24,  906, 136, 0x100, -1, 0, 0 );

setEffMoveKey( spep_0 + 24, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 24, shuchusen1, 1.17, 1.31 );
setEffScaleKey( spep_0 + 160, shuchusen1, 1.17, 1.31 );

setEffRotateKey( spep_0 + 24, shuchusen1, 180 );
setEffRotateKey( spep_0 + 160, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 24, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 160, shuchusen1, 255 );

--SE
SE=playSe( spep_0,55);--気を溜めてる音
playSe(spep_0+42,SE_04);
stopSe(spep_0+158,SE,0);

--白フェード
entryFade(spep_0+20, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 180); --白フェード
entryFade(spep_0+152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_1 = spep_0+160;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
--白フェード
entryFade(spep_1, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255); --シーンの入り
entryFade(spep_1 + 84, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1, 906, 94, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1, shuchusen, 94, 20 );

setEffMoveKey( spep_1, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 94, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1, shuchusen, 0 );
setEffRotateKey( spep_1 + 94, shuchusen, 0 );

setEffAlphaKey( spep_1, shuchusen, 255 );
setEffAlphaKey( spep_1 + 94, shuchusen, 255 );

--白フェード
entryFade(spep_1+82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 180); --白フェード

-- ** 音 ** --
playSe( spep_1, SE_05 );--ゴゴゴ

--次の準備
spep_2 = spep_1 + 90;
--------------------------------------------------------
-- ビームを撃つ
--------------------------------------------------------
--エフェクト
beam = entryEffect(spep_2, SP_02, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_2, beam, 0, 0);
setEffMoveKey(spep_2 + 80, beam, 0, 0);

setEffScaleKey(spep_2, beam, 1.0, 1.0);
setEffScaleKey(spep_2 + 80, beam, 1.0, 1.0);

setEffRotateKey(spep_2, beam, 0);
setEffRotateKey(spep_2 + 80, beam, 0);

setEffAlphaKey(spep_2, beam, 255);
setEffAlphaKey(spep_2 + 80, beam, 255);

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 2,  10012, 54, 0x100, -1, 0, 78.7, 260.5 );--ズオッ
setEffShake( spep_2 + 2, ctzuo, 56, 20 );

setEffMoveKey( spep_2 + 2, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, 105, 288.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, 158.4, 347.5 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, 143.2, 366.1 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, 145.8, 366.7 , 0 );

setEffScaleKey( spep_2 + 2, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 4, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2 + 6, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 8, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 50, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 52, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_2 + 54, ctzuo, 3.41, 3.41 );
setEffScaleKey( spep_2 + 56, ctzuo, 3.75, 3.75 );

setEffRotateKey( spep_2 + 2, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 56, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 2, ctzuo, 255 );
setEffAlphaKey( spep_2 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2 + 52, ctzuo, 170 );
setEffAlphaKey( spep_2 + 54, ctzuo, 85 );
setEffAlphaKey( spep_2 + 56, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_2, SE_07);--ビーム発射
--白フェード
entryFade(spep_2+72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_3 = spep_2 + 80;

--------------------------------------------------------
-- ケールが強くなる
--------------------------------------------------------
--エフェクト
strengthening = entryEffect(spep_3, SP_03, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_3, strengthening, 0, 0);
setEffMoveKey(spep_3 + 210, strengthening, 0, 0);

setEffScaleKey(spep_3, strengthening, 1.01, 1.01);
setEffScaleKey(spep_3 + 210, strengthening, 1.01, 1.01);

setEffRotateKey(spep_3, strengthening, 0);
setEffRotateKey(spep_3 + 210, strengthening, 0);

setEffAlphaKey(spep_3, strengthening, 255);
setEffAlphaKey(spep_3 + 210, strengthening, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 +0,  906, 208, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 0, shuchusen2, 0 , 0 , 0 );
setEffMoveKey( spep_3  + 208, shuchusen2, 0 , 0 , 0 );

setEffScaleKey( spep_3  + 0, shuchusen2, 1.44, 1.87 );
setEffScaleKey( spep_3  + 68, shuchusen2, 1.44, 1.87 );
setEffScaleKey( spep_3  + 70, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_3  + 76, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_3  + 78, shuchusen2, 1.44, 1.87 );
setEffScaleKey( spep_3  + 200, shuchusen2, 1.44, 1.87 );
setEffScaleKey( spep_3  + 120, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_3  + 208, shuchusen2, 1.13, 1.13 );

setEffRotateKey( spep_3  + 0, shuchusen2, 0 );
setEffRotateKey( spep_3  + 208, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 210, shuchusen2, 255 );
--白フェード
entryFade(spep_3+64, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード
entryFade(spep_3+118, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード
entryFade(spep_3+202, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

-- ** 音 ** --
SE1=playSe( spep_3,17);--力を貯める
stopSe(spep_3+66,SE1,0);
--playSe( spep_3+68,40);--力をたまる
--playSe( spep_3+120,1026);--力をたまる
playSe( spep_3+68,19);--力をたまる（太もも）
playSe( spep_3+120,20);--力をたまる（顔）

--次の準備
spep_4 = spep_3 + 210;

--------------------------------------------------------
--カリフラが話しかける
--------------------------------------------------------
--エフェクト
speak = entryEffect(spep_4, SP_04, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_4, speak, 0, 0);
setEffMoveKey(spep_4 + 140, speak, 0, 0);

setEffScaleKey(spep_4, speak, 1.0, 1.0);
setEffScaleKey(spep_4 + 140, speak, 1.0, 1.0);

setEffRotateKey(spep_4, speak, 0);
setEffRotateKey(spep_4 + 140, speak, 0);

setEffAlphaKey(spep_4, speak, 255);
setEffAlphaKey(spep_4 + 140, speak, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 +0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 0, shuchusen3, 0 , -12.8 , 0 );
setEffMoveKey( spep_4  + 138, shuchusen3, 0 , -12.8 , 0 );

setEffScaleKey( spep_4  + 0, shuchusen3, 1.09, 1.18 );
setEffScaleKey( spep_4  + 138, shuchusen3, 1.09, 1.18 );

setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4  + 138, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4  + 138, shuchusen3, 255 );

-- ** 音 ** --
playSe(spep_4,SE_03);
playSe(spep_4+20,SE_03);
playSe(spep_4+42,SE_03);
playSe(spep_4+62,SE_03);
playSe( spep_4+40,1042);--笑う
playSe( spep_4+77,1018);--顔ズーム


--白フェード
entryFade(spep_4+132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_5 = spep_4 + 140;

--------------------------------------------------------
--ビームが混じる
--------------------------------------------------------
--エフェクト
mix = entryEffect(spep_5, SP_05, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_5, mix, 0, 0);
setEffMoveKey(spep_5 + 160, mix, 0, 0);

setEffScaleKey(spep_5, mix, 1.0, 1.0);
setEffScaleKey(spep_5 + 160, mix, 1.0, 1.0);

setEffRotateKey(spep_5, mix, 0);
setEffRotateKey(spep_5 + 160, mix, 0);

setEffAlphaKey(spep_5, mix, 255);
setEffAlphaKey(spep_5 + 160, mix, 255);

--文字エントリー
ctzuo2 = entryEffectLife( spep_5 + 68,  10012, 88, 0x100, -1, 0, 78.7, 260.5 );
setEffShake( spep_5 + 68, ctzuo2, 56, 20 );

setEffMoveKey( spep_5 + 68, ctzuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_5 + 70, ctzuo2, 105, 288.6 , 0 );
setEffMoveKey( spep_5 + 72, ctzuo2, 117.9, 330.1 , 0 );
setEffMoveKey( spep_5 + 74, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 76, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 78, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 80, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 82, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 84, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 86, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 88, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 90, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 92, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 94, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 96, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 98, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 100, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 102, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 104, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 106, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 108, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 110, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 112, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 114, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 116, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 118, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 120, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 122, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 124, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 126, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 128, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 130, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 132, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 134, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 136, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 138, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 140, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 142, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 146, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 148, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 150, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 152, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 154, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 156, ctzuo2, 153.7, 348.8 , 0 );

setEffScaleKey( spep_5 + 68, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_5 + 70, ctzuo2, 1.13, 1.13 );
setEffScaleKey( spep_5 + 72, ctzuo2, 1.94, 1.94 );
setEffScaleKey( spep_5 + 74, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_5 + 156, ctzuo2, 2.73, 2.73 );

setEffRotateKey( spep_5 + 68, ctzuo2, 27.2 );
setEffRotateKey( spep_5 + 156, ctzuo2, 27.2 );

setEffAlphaKey( spep_5 + 68, ctzuo2, 255 );
setEffAlphaKey( spep_5 + 156, ctzuo2, 255 );


-- ** 音 ** --
playSe( spep_5,SE_06);--ビームを撃つ
playSe( spep_5+62,SE_07);--ビームが強くなる


--白フェード
entryFade(spep_5+66, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード
entryFade(spep_5+152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_6 = spep_5 + 160;

--------------------------------------------------------
--ビームが迫る
--------------------------------------------------------

--エフェクト
hit = entryEffect(spep_6, SP_06, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_6, hit, 0, 0);
setEffMoveKey(spep_6 + 60, hit, 0, 0);

setEffScaleKey(spep_6, hit, 1.0, 1.0);
setEffScaleKey(spep_6 + 60, hit, 1.0, 1.0);

setEffRotateKey(spep_6, hit, 0);
setEffRotateKey(spep_6 + 60, hit, 0);

setEffAlphaKey(spep_6, hit, 255);
setEffAlphaKey(spep_6 + 60, hit, 255);

--文字エントリー
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 56, 0x100, -1, 0, 94.6, 301.3 );--ズドドドッ
setEffShake( spep_6 + 0, ctzudodo, 56, 20 );

setEffMoveKey( spep_6 + 0, ctzudodo, 94.6, 301.3 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, 87.6, 285.4 , 0 );
setEffMoveKey( spep_6 + 4, ctzudodo, 99.1, 294 , 0 );
setEffMoveKey( spep_6 + 6, ctzudodo, 85.4, 269 , 0 );
setEffMoveKey( spep_6 + 8, ctzudodo, 103.7, 286.6 , 0 );
setEffMoveKey( spep_6 + 10, ctzudodo, 86, 273.3 , 0 );
setEffMoveKey( spep_6 + 12, ctzudodo, 96.8, 297.8 , 0 );
setEffMoveKey( spep_6 + 14, ctzudodo, 90.6, 288.7 , 0 );
setEffMoveKey( spep_6 + 16, ctzudodo, 103.2, 304.4 , 0 );
setEffMoveKey( spep_6 + 18, ctzudodo, 96.5, 294.5 , 0 );
setEffMoveKey( spep_6 + 20, ctzudodo, 109.6, 310.9 , 0 );
setEffMoveKey( spep_6 + 22, ctzudodo, 102.3, 300.3 , 0 );
setEffMoveKey( spep_6 + 24, ctzudodo, 116, 317.5 , 0 );
setEffMoveKey( spep_6 + 26, ctzudodo, 108.1, 306.1 , 0 );
setEffMoveKey( spep_6 + 28, ctzudodo, 122.4, 324.1 , 0 );
setEffMoveKey( spep_6 + 30, ctzudodo, 113.9, 311.9 , 0 );
setEffMoveKey( spep_6 + 32, ctzudodo, 128.7, 330.6 , 0 );
setEffMoveKey( spep_6 + 34, ctzudodo, 119.7, 317.6 , 0 );
setEffMoveKey( spep_6 + 36, ctzudodo, 135.1, 337.2 , 0 );
setEffMoveKey( spep_6 + 38, ctzudodo, 125.5, 323.4 , 0 );
setEffMoveKey( spep_6 + 40, ctzudodo, 141.5, 343.7 , 0 );
setEffMoveKey( spep_6 + 42, ctzudodo, 131.3, 329.2 , 0 );
setEffMoveKey( spep_6 + 44, ctzudodo, 147.9, 350.3 , 0 );
setEffMoveKey( spep_6 + 46, ctzudodo, 137.2, 335 , 0 );
setEffMoveKey( spep_6 + 48, ctzudodo, 154.3, 356.8 , 0 );
setEffMoveKey( spep_6 + 50, ctzudodo, 143, 340.8 , 0 );
setEffMoveKey( spep_6 + 52, ctzudodo, 160.7, 363.4 , 0 );
setEffMoveKey( spep_6 + 54, ctzudodo, 148.8, 346.5 , 0 );
setEffMoveKey( spep_6 + 56, ctzudodo, 151.7, 349.4 , 0 );

setEffScaleKey( spep_6 + 0, ctzudodo, 1.09, 1.09 );
setEffScaleKey( spep_6 + 2, ctzudodo, 1.72, 1.72 );
setEffScaleKey( spep_6 + 4, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_6 + 6, ctzudodo, 2.99, 2.99 );
setEffScaleKey( spep_6 + 8, ctzudodo, 3.62, 3.62 );
setEffScaleKey( spep_6 + 10, ctzudodo, 2.65, 2.65 );
setEffScaleKey( spep_6 + 12, ctzudodo, 1.68, 1.68 );
setEffScaleKey( spep_6 + 14, ctzudodo, 1.73, 1.73 );
setEffScaleKey( spep_6 + 16, ctzudodo, 1.79, 1.79 );
setEffScaleKey( spep_6 + 18, ctzudodo, 1.84, 1.84 );
setEffScaleKey( spep_6 + 20, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_6 + 22, ctzudodo, 1.95, 1.95 );
setEffScaleKey( spep_6 + 24, ctzudodo, 2.01, 2.01 );
setEffScaleKey( spep_6 + 26, ctzudodo, 2.06, 2.06 );
setEffScaleKey( spep_6 + 28, ctzudodo, 2.12, 2.12 );
setEffScaleKey( spep_6 + 30, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_6 + 32, ctzudodo, 2.22, 2.22 );
setEffScaleKey( spep_6 + 34, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_6 + 36, ctzudodo, 2.33, 2.33 );
setEffScaleKey( spep_6 + 38, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_6 + 40, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_6 + 42, ctzudodo, 2.5, 2.5 );
setEffScaleKey( spep_6 + 44, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_6 + 46, ctzudodo, 2.6, 2.6 );
setEffScaleKey( spep_6 + 48, ctzudodo, 2.66, 2.66 );
setEffScaleKey( spep_6 + 50, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_6 + 52, ctzudodo, 2.77, 2.77 );
setEffScaleKey( spep_6 + 54, ctzudodo, 2.82, 2.82 );
setEffScaleKey( spep_6 + 56, ctzudodo, 2.88, 2.88 );

setEffRotateKey( spep_6 + 0, ctzudodo, 54.1 );
setEffRotateKey( spep_6 + 4, ctzudodo, 54.1 );
setEffRotateKey( spep_6 + 6, ctzudodo, 54 );
setEffRotateKey( spep_6 + 8, ctzudodo, 54 );
setEffRotateKey( spep_6 + 10, ctzudodo, 54.1 );
setEffRotateKey( spep_6 + 34, ctzudodo, 54.1 );
setEffRotateKey( spep_6 + 36, ctzudodo, 54 );
setEffRotateKey( spep_6 + 56, ctzudodo, 54 );

setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 + 56, ctzudodo, 255 );


--敵の動き
setDisp(spep_6,1,1);
setDisp(spep_6+58,1,0);

changeAnime(spep_6,1,102);

setMoveKey( spep_6 + 0, 1, 157.7, -54.2 , 0 );
setMoveKey( spep_6 + 2, 1, 156.8, -58.1 , 0 );
setMoveKey( spep_6 + 4, 1, 162.3, -55.7 , 0 );
setMoveKey( spep_6 + 6, 1, 158.2, -59.6 , 0 );
setMoveKey( spep_6 + 8, 1, 166.9, -57.2 , 0 );
setMoveKey( spep_6 + 10, 1, 166, -61.2 , 0 );
setMoveKey( spep_6 + 12, 1, 171.5, -58.7 , 0 );
setMoveKey( spep_6 + 14, 1, 170.6, -59.5 , 0 );
setMoveKey( spep_6 + 16, 1, 176.1, -60.3 , 0 );
setMoveKey( spep_6 + 18, 1, 172, -64.2 , 0 );
setMoveKey( spep_6 + 20, 1, 180.7, -61.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 2, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 4, 1, 1.84, 1.84 );
setScaleKey( spep_6 + 6, 1, 1.85, 1.85 );
setScaleKey( spep_6 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_6 + 10, 1, 1.86, 1.86 );
setScaleKey( spep_6 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_6 + 14, 1, 1.88, 1.88 );
setScaleKey( spep_6 + 16, 1, 1.88, 1.88 );
setScaleKey( spep_6 + 18, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 20, 1, 1.9, 1.9 );

setRotateKey( spep_6 + 0, 1, -4.9 );
setRotateKey( spep_6 + 20, 1, -4.9 );
	


--------------------------------------
--回避 
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6+20 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
--    stopSe(SP_dodge-14,SE0,0);--音を止める ※止めたい音がある場合
--    stopSe(SP_dodge-14,SE2,0);--音を止める ※止めたい音がある場合
 
    pauseAll( SP_dodge, 67);
    
     
    --キャラクターの固定
    setMoveKey( SP_dodge, 1, 180.7, -61.8 , 0 );
    setScaleKey(SP_dodge , 1 ,1.9, 1.9 ); --回避開始時のキャラの大きさ
    setRotateKey(SP_dodge,   1, -4.9); --回避開始時のキャラの角度
 
    
    --キャラクターの固定
    setMoveKey( SP_dodge+10, 1, 180.7, -61.8 , 0 );
    setScaleKey(SP_dodge+10 , 1 ,1.9, 1.9 ); --回避開始時のキャラの大きさ
    setRotateKey(SP_dodge+10,   1, -4.9); --回避開始時のキャラの角度
    

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------	
setMoveKey( spep_6 + 22, 1, 179.8, -65.7 , 0 );
setMoveKey( spep_6 + 24, 1, 185.3, -63.3 , 0 );
setMoveKey( spep_6 + 26, 1, 181.2, -67.3 , 0 );
setMoveKey( spep_6 + 28, 1, 189.9, -64.8 , 0 );
setMoveKey( spep_6 + 30, 1, 185.8, -68.8 , 0 );
setMoveKey( spep_6 + 32, 1, 194.5, -66.4 , 0 );
setMoveKey( spep_6 + 34, 1, 193.6, -73.5 , 0 );
setMoveKey( spep_6 + 36, 1, 199, -67.9 , 0 );
setMoveKey( spep_6 + 38, 1, 194.9, -75 , 0 );
setMoveKey( spep_6 + 40, 1, 203.6, -69.4 , 0 );
setMoveKey( spep_6 + 42, 1, 202.7, -73.4 , 0 );
setMoveKey( spep_6 + 44, 1, 208.2, -70.9 , 0 );
setMoveKey( spep_6 + 46, 1, 204.1, -78.1 , 0 );
setMoveKey( spep_6 + 48, 1, 212.8, -72.5 , 0 );
setMoveKey( spep_6 + 50, 1, 208.7, -76.4 , 0 );
setMoveKey( spep_6 + 52, 1, 217.4, -74 , 0 );
setMoveKey( spep_6 + 54, 1, 216.5, -81.1 , 0 );
setMoveKey( spep_6 + 56, 1, 222, -75.5 , 0 );
setMoveKey( spep_6 + 58, 1, 217.9, -82.7 , 0 );				

setScaleKey( spep_6 + 22, 1, 1.9, 1.9 );
setScaleKey( spep_6 + 24, 1, 1.91, 1.91 );
setScaleKey( spep_6 + 26, 1, 1.92, 1.92 );
setScaleKey( spep_6 + 28, 1, 1.93, 1.93 );
setScaleKey( spep_6 + 30, 1, 1.93, 1.93 );
setScaleKey( spep_6 + 32, 1, 1.94, 1.94 );
setScaleKey( spep_6 + 34, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 36, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_6 + 40, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 42, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 44, 1, 1.98, 1.98 );
setScaleKey( spep_6 + 46, 1, 1.99, 1.99 );
setScaleKey( spep_6 + 48, 1, 2, 2 );
setScaleKey( spep_6 + 50, 1, 2, 2 );
setScaleKey( spep_6 + 52, 1, 2.01, 2.01 );
setScaleKey( spep_6 + 54, 1, 2.02, 2.02 );
setScaleKey( spep_6 + 56, 1, 2.02, 2.02 );
setScaleKey( spep_6 + 58, 1, 2.03, 2.03 );

setRotateKey( spep_6 + 58, 1, -4.9 );

-- ** 音 ** --
playSe( spep_6,SE_06);--ビームが迫る
SE2=playSe( spep_6,1044);--地割れ音
stopSe(spep_6+60,SE2,0);

--白フェード
entryFade(spep_6+52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_7 = spep_6 + 60;

--------------------------------------------------------
--ギャン
--------------------------------------------------------
--エフェクトの再生
gyan = entryEffectLife(  spep_7,  190017,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_7+58,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);
setEffAlphaKey(  spep_7+58,  gyan,  255);


-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_7, 10006, 58, 0x100, -1, 8.8, 313 , 0);    -- ギャン

setEffMoveKey( spep_7 + 0, ctgyan, 8.8, 313 , 0 );
setEffMoveKey( spep_7 + 2, ctgyan, 9.1, 314.1 , 0 );
setEffMoveKey( spep_7 + 4, ctgyan, 9.4, 315.1 , 0 );
setEffMoveKey( spep_7 + 6, ctgyan, 9.7, 316.1 , 0 );
setEffMoveKey( spep_7 + 8, ctgyan, 10, 317.1 , 0 );
setEffMoveKey( spep_7 + 10, ctgyan, 10, 317.2 , 0 );
setEffMoveKey( spep_7 + 12, ctgyan, 10, 317.3 , 0 );
setEffMoveKey( spep_7 + 14, ctgyan, 10, 317.4 , 0 );
setEffMoveKey( spep_7 + 16, ctgyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_7 + 18, ctgyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_7 + 20, ctgyan, 10.1, 317.6 , 0 );
setEffMoveKey( spep_7 + 22, ctgyan, 10.1, 317.7 , 0 );
setEffMoveKey( spep_7 + 24, ctgyan, 10.2, 317.8 , 0 );
setEffMoveKey( spep_7 + 26, ctgyan, 10.2, 317.9 , 0 );
setEffMoveKey( spep_7 + 28, ctgyan, 10.2, 318 , 0 );
setEffMoveKey( spep_7 + 30, ctgyan, 10.2, 318 , 0 );
setEffMoveKey( spep_7 + 32, ctgyan, 10.3, 318.1 , 0 );
setEffMoveKey( spep_7 + 34, ctgyan, 10.3, 318.2 , 0 );
setEffMoveKey( spep_7 + 36, ctgyan, 10.3, 318.3 , 0 );
setEffMoveKey( spep_7 + 38, ctgyan, 10.3, 318.4 , 0 );
setEffMoveKey( spep_7 + 40, ctgyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_7 + 42, ctgyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_7 + 44, ctgyan, 10.4, 318.6 , 0 );
setEffMoveKey( spep_7 + 46, ctgyan, 10.4, 318.7 , 0 );
setEffMoveKey( spep_7 + 48, ctgyan, 10.5, 318.8 , 0 );
setEffMoveKey( spep_7 + 50, ctgyan, 10.5, 318.9 , 0 );
setEffMoveKey( spep_7 + 52, ctgyan, 10.5, 319 , 0 );
setEffMoveKey( spep_7 + 54, ctgyan, 10.5, 319 , 0 );
setEffMoveKey( spep_7 + 56, ctgyan, 10.5, 319.1 , 0 );
setEffMoveKey( spep_7 + 58, ctgyan, 10.6, 319.2 , 0 );

setEffScaleKey( spep_7 + 0, ctgyan, 2.11, 2.11 );
setEffScaleKey( spep_7 + 2, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_7 + 4, ctgyan, 2.82, 2.82 );
setEffScaleKey( spep_7 + 6, ctgyan, 3.18, 3.18 );
setEffScaleKey( spep_7 + 8, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_7 + 10, ctgyan, 3.56, 3.56 );
setEffScaleKey( spep_7 + 12, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_7 + 14, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_7 + 16, ctgyan, 3.63, 3.63 );
setEffScaleKey( spep_7 + 18, ctgyan, 3.67, 3.67 );
setEffScaleKey( spep_7 + 20, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_7 + 22, ctgyan, 3.74, 3.74 );
setEffScaleKey( spep_7 + 24, ctgyan, 3.74, 3.74 );
setEffScaleKey( spep_7 + 26, ctgyan, 3.77, 3.77 );
setEffScaleKey( spep_7 + 28, ctgyan, 3.81, 3.81 );
setEffScaleKey( spep_7 + 30, ctgyan, 3.85, 3.85 );
setEffScaleKey( spep_7 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_7 + 34, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_7 + 36, ctgyan, 3.92, 3.92 );
setEffScaleKey( spep_7 + 38, ctgyan, 3.95, 3.95 );
setEffScaleKey( spep_7 + 40, ctgyan, 3.99, 3.99 );
setEffScaleKey( spep_7 + 42, ctgyan, 4.02, 4.02 );
setEffScaleKey( spep_7 + 44, ctgyan, 4.02, 4.02 );
setEffScaleKey( spep_7 + 46, ctgyan, 4.06, 4.06 );
setEffScaleKey( spep_7 + 48, ctgyan, 4.09, 4.09 );
setEffScaleKey( spep_7 + 50, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_7 + 52, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_7 + 54, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_7 + 56, ctgyan, 4.2, 4.2 );
setEffScaleKey( spep_7 + 58, ctgyan, 4.23, 4.23 );

setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 0);

setEffRotateKey( spep_7 + 0, ctgyan, -5.2 );
setEffRotateKey( spep_7 + 58, ctgyan, -5.2 );

setEffShake( spep_7, ctgyan, 60, 10);

playSe(spep_7,SE_09);

entryFade( spep_7+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_8 = spep_7+60;

--------------------------------------------------------
--吹き飛ばす
--------------------------------------------------------

--エフェクト
fly = entryEffect(spep_8, SP_07, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_8, fly, 0, 0);
setEffMoveKey(spep_8 + 112, fly, 0, 0);

setEffScaleKey(spep_8, fly, 1.0, 1.0);
setEffScaleKey(spep_8 + 112, fly, 1.0, 1.0);

setEffRotateKey(spep_8, fly, 0);
setEffRotateKey(spep_8 + 112, fly, 0);

setEffAlphaKey(spep_8, fly, 255);
setEffAlphaKey(spep_8 + 110, fly, 255);
setEffAlphaKey(spep_8 + 111, fly, 255);
setEffAlphaKey(spep_8 + 112, fly, 0);

shuchusen4 = entryEffectLife( spep_8 + 0,  906,108, 0x100, -1, 0, 0, 24.1 );

setEffMoveKey( spep_8 + 0, shuchusen4, 0, 24.1 , 0 );
setEffMoveKey( spep_8 +108, shuchusen4, 0, 24.1 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen4, 1.21, 1.33 );
setEffScaleKey( spep_8 +108, shuchusen4, 1.21, 1.33 );

setEffAlphaKey( spep_8 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 76, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 78, shuchusen4, 239 );
setEffAlphaKey( spep_8 + 80, shuchusen4, 223 );
setEffAlphaKey( spep_8 + 82, shuchusen4, 207 );
setEffAlphaKey( spep_8 + 84, shuchusen4, 191 );
setEffAlphaKey( spep_8 + 86, shuchusen4, 175 );
setEffAlphaKey( spep_8 + 88, shuchusen4, 159 );
setEffAlphaKey( spep_8 + 90, shuchusen4, 143 );
setEffAlphaKey( spep_8 + 92, shuchusen4, 128 );
setEffAlphaKey( spep_8 + 94, shuchusen4, 112 );
setEffAlphaKey( spep_8 + 96, shuchusen4, 96 );
setEffAlphaKey( spep_8 + 98, shuchusen4, 80 );
setEffAlphaKey( spep_8 + 100, shuchusen4, 64 );
setEffAlphaKey( spep_8 + 102, shuchusen4, 48 );
setEffAlphaKey( spep_8 + 104, shuchusen4, 32 );
setEffAlphaKey( spep_8 + 106, shuchusen4, 16 );
setEffAlphaKey( spep_8 +108, shuchusen4, 0 );


-- ** 音 ** --
playSe( spep_8,SE_07);--ビームが迫る

--次の準備
spep_9 = spep_8+112;

--------------------------------------------------------
--終わり
--------------------------------------------------------
--エフェクト
finish = entryEffect(spep_9, SP_08, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_9, finish, 0, 0);
setEffMoveKey(spep_9 + 100, finish, 0, 0);

setEffScaleKey(spep_9, finish, 1.0, 1.0);
setEffScaleKey(spep_9 + 100, finish, 1.0, 1.0);

setEffRotateKey(spep_9, finish, 0);
setEffRotateKey(spep_9 + 100, finish, 0);

setEffAlphaKey(spep_9, finish, 255);
setEffAlphaKey(spep_9 + 100, finish, 255);

--集中線
shuchusen5 = entryEffectLife( spep_9 + 0,  906, 62, 0x100, -1, 0, 0, -88 );

setEffMoveKey( spep_9 + 0, shuchusen5, 0, -88 , 0 );
setEffMoveKey( spep_9 + 62, shuchusen5, 0, -88 , 0 );

setEffScaleKey( spep_9 + 0, shuchusen5, 1.22, 2.01 );
setEffScaleKey( spep_9 + 62, shuchusen5, 1.22, 2.01 );

setEffAlphaKey( spep_9 + 0, shuchusen5, 128 );
setEffAlphaKey( spep_9 + 32, shuchusen5, 128 );
setEffAlphaKey( spep_9 + 34, shuchusen5, 119 );
setEffAlphaKey( spep_9 + 36, shuchusen5, 111 );
setEffAlphaKey( spep_9 + 38, shuchusen5, 102 );
setEffAlphaKey( spep_9 + 40, shuchusen5, 94 );
setEffAlphaKey( spep_9 + 42, shuchusen5, 85 );
setEffAlphaKey( spep_9 + 44, shuchusen5, 77 );
setEffAlphaKey( spep_9 + 46, shuchusen5, 68 );
setEffAlphaKey( spep_9 + 48, shuchusen5, 60 );
setEffAlphaKey( spep_9 + 50, shuchusen5, 51 );
setEffAlphaKey( spep_9 + 52, shuchusen5, 43 );
setEffAlphaKey( spep_9 + 54, shuchusen5, 34 );
setEffAlphaKey( spep_9 + 56, shuchusen5, 25 );
setEffAlphaKey( spep_9 + 58, shuchusen5, 17 );
setEffAlphaKey( spep_9 + 60, shuchusen5, 8 );
setEffAlphaKey( spep_9 + 62, shuchusen5, 0 );

-- ** 音 ** --
playSe( spep_9+38,1003);--ビームが迫る

-- ダメージ表示
dealDamage(spep_9);
entryFade( spep_9+90, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+96);

else 

----------------------------------------------------------------------------------------------------------------
-- てき
----------------------------------------------------------------------------------------------------------------  
--------------------------------------------------------
-- ため
--------------------------------------------------------
spep_0 = 0;

--エフェクト
tame = entryEffect(spep_0, SP_01x, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_0, tame, 0, 0);
setEffMoveKey(spep_0 + 160, tame, 0, 0);

setEffScaleKey(spep_0, tame, 1.0, 1.0);
setEffScaleKey(spep_0 + 160, tame, 1.0, 1.0);

setEffRotateKey(spep_0, tame, 0);
setEffRotateKey(spep_0 + 160, tame, 0);

setEffAlphaKey(spep_0, tame, 255);
setEffAlphaKey(spep_0 + 160, tame, 255);

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 42 -12 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)   
--setEffReplaceTexture( speff, 3, 2 );        --カットイン差し替え  
--speff1 = entryEffect( spep_0 + 42 -12, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)   
--setEffReplaceTexture( speff1, 4, 5 );        --セリフカットイン差し替え  

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 42,  190006, 72, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 42, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 42, ctgogo, -9.9, 512.8 , 0 );
setEffMoveKey( spep_0 + 42 +72, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 42, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0 + 42 +64, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0 + 42 +66, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_0 + 42 +68, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_0 + 42 +70, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_0 + 42 +72, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_0 + 42, ctgogo, 0 );
setEffRotateKey( spep_0 + 42 +72, ctgogo, 0 );

setEffAlphaKey( spep_0 + 42, ctgogo, 0 );
setEffAlphaKey( spep_0 + 42 +1, ctgogo, 255 );
setEffAlphaKey( spep_0 + 42 +2, ctgogo, 255 );
setEffAlphaKey( spep_0 + 42 +72, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 24,  906, 136, 0x100, -1, 0, 0 );

setEffMoveKey( spep_0 + 24, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 24, shuchusen1, 1.17, 1.31 );
setEffScaleKey( spep_0 + 160, shuchusen1, 1.17, 1.31 );

setEffRotateKey( spep_0 + 24, shuchusen1, 180 );
setEffRotateKey( spep_0 + 160, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 24, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 160, shuchusen1, 255 );

--SE
SE=playSe( spep_0,55);--気を溜めてる音
playSe(spep_0+42,SE_04);
stopSe(spep_0+158,SE,0);

--白フェード
entryFade(spep_0+20, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 180); --白フェード
entryFade(spep_0+152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_1 = spep_0+160;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
--白フェード
entryFade(spep_1, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255); --シーンの入り
entryFade(spep_1 + 84, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1, 906, 94, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1, shuchusen, 94, 20 );

setEffMoveKey( spep_1, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 94, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1, shuchusen, 0 );
setEffRotateKey( spep_1 + 94, shuchusen, 0 );

setEffAlphaKey( spep_1, shuchusen, 255 );
setEffAlphaKey( spep_1 + 94, shuchusen, 255 );

--白フェード
entryFade(spep_1+82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 180); --白フェード

-- ** 音 ** --
playSe( spep_1, SE_05 );--ゴゴゴ

--次の準備
spep_2 = spep_1 + 90;
--------------------------------------------------------
-- ビームを撃つ
--------------------------------------------------------
--エフェクト
beam = entryEffect(spep_2, SP_02x, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_2, beam, 0, 0);
setEffMoveKey(spep_2 + 80, beam, 0, 0);

setEffScaleKey(spep_2, beam, 1.0, 1.0);
setEffScaleKey(spep_2 + 80, beam, 1.0, 1.0);

setEffRotateKey(spep_2, beam, 0);
setEffRotateKey(spep_2 + 80, beam, 0);

setEffAlphaKey(spep_2, beam, 255);
setEffAlphaKey(spep_2 + 80, beam, 255);

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 2,  10012, 54, 0x100, -1, 0, 78.7, 260.5 );--ズオッ
setEffShake( spep_2 + 2, ctzuo, 56, 20 );
a=-300;
b=50;

setEffMoveKey( spep_2 + 2, ctzuo, 78.7+a, 260.5+b , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, 105+a, 288.6+b , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, 117.9+a, 330.1+b , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 153.7+a, 348.8+b , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, 137.7+a, 364.8+b , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, 158.4+a, 347.5+b , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, 143.2+a, 366.1+b , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, 145.8+a, 366.7+b , 0 );

setEffScaleKey( spep_2 + 2, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 4, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2 + 6, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 8, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 50, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 52, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_2 + 54, ctzuo, 3.41, 3.41 );
setEffScaleKey( spep_2 + 56, ctzuo, 3.75, 3.75 );

setEffRotateKey( spep_2 + 2, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 56, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 2, ctzuo, 255 );
setEffAlphaKey( spep_2 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2 + 52, ctzuo, 170 );
setEffAlphaKey( spep_2 + 54, ctzuo, 85 );
setEffAlphaKey( spep_2 + 56, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_2, SE_07);--ビーム発射
--白フェード
entryFade(spep_2+72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_3 = spep_2 + 80;

--------------------------------------------------------
-- ケールが強くなる
--------------------------------------------------------
--エフェクト
strengthening = entryEffect(spep_3, SP_03x, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_3, strengthening, 0, 0);
setEffMoveKey(spep_3 + 210, strengthening, 0, 0);

setEffScaleKey(spep_3, strengthening, -1.01, 1.01);
setEffScaleKey(spep_3 + 210, strengthening, -1.01, 1.01);

setEffRotateKey(spep_3, strengthening, 0);
setEffRotateKey(spep_3 + 210, strengthening, 0);

setEffAlphaKey(spep_3, strengthening, 255);
setEffAlphaKey(spep_3 + 210, strengthening, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 +0,  906, 208, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 0, shuchusen2, 0 , 0 , 0 );
setEffMoveKey( spep_3  + 208, shuchusen2, 0 , 0 , 0 );

setEffScaleKey( spep_3  + 0, shuchusen2, 1.44, 1.87 );
setEffScaleKey( spep_3  + 68, shuchusen2, 1.44, 1.87 );
setEffScaleKey( spep_3  + 70, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_3  + 76, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_3  + 78, shuchusen2, 1.44, 1.87 );
setEffScaleKey( spep_3  + 200, shuchusen2, 1.44, 1.87 );
setEffScaleKey( spep_3  + 120, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_3  + 208, shuchusen2, 1.13, 1.13 );

setEffRotateKey( spep_3  + 0, shuchusen2, 0 );
setEffRotateKey( spep_3  + 208, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 210, shuchusen2, 255 );
--白フェード
entryFade(spep_3+64, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード
entryFade(spep_3+118, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード
entryFade(spep_3+202, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

-- ** 音 ** --
SE1=playSe( spep_3,17);--力を貯める
stopSe(spep_3+66,SE1,0);
--playSe( spep_3+68,40);--力をたまる
--playSe( spep_3+120,1026);--力をたまる
playSe( spep_3+68,19);--力をたまる（太もも）
playSe( spep_3+120,20);--力をたまる（顔）

--次の準備
spep_4 = spep_3 + 210;

--------------------------------------------------------
--カリフラが話しかける
--------------------------------------------------------
--エフェクト
speak = entryEffect(spep_4, SP_04x, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_4, speak, 0, 0);
setEffMoveKey(spep_4 + 140, speak, 0, 0);

setEffScaleKey(spep_4, speak, -1.0, 1.0);
setEffScaleKey(spep_4 + 140, speak, -1.0, 1.0);

setEffRotateKey(spep_4, speak, 0);
setEffRotateKey(spep_4 + 140, speak, 0);

setEffAlphaKey(spep_4, speak, 255);
setEffAlphaKey(spep_4 + 140, speak, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 +0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 0, shuchusen3, 0 , -12.8 , 0 );
setEffMoveKey( spep_4  + 138, shuchusen3, 0 , -12.8 , 0 );

setEffScaleKey( spep_4  + 0, shuchusen3, 1.09, 1.18 );
setEffScaleKey( spep_4  + 138, shuchusen3, 1.09, 1.18 );

setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4  + 138, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4  + 138, shuchusen3, 255 );

-- ** 音 ** --
playSe(spep_4,SE_03);
playSe(spep_4+20,SE_03);
playSe(spep_4+42,SE_03);
playSe(spep_4+62,SE_03);
playSe( spep_4+40,1042);--笑う
playSe( spep_4+77,1018);--顔ズーム


--白フェード
entryFade(spep_4+132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_5 = spep_4 + 140;

--------------------------------------------------------
--ビームが混じる
--------------------------------------------------------
--エフェクト
mix = entryEffect(spep_5, SP_05x, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_5, mix, 0, 0);
setEffMoveKey(spep_5 + 160, mix, 0, 0);

setEffScaleKey(spep_5, mix, 1.0, 1.0);
setEffScaleKey(spep_5 + 160, mix, 1.0, 1.0);

setEffRotateKey(spep_5, mix, 0);
setEffRotateKey(spep_5 + 160, mix, 0);

setEffAlphaKey(spep_5, mix, 255);
setEffAlphaKey(spep_5 + 160, mix, 255);

--文字エントリー
ctzuo2 = entryEffectLife( spep_5 + 68,  10012, 88, 0x100, -1, 0, 78.7, 260.5 );
setEffShake( spep_5 + 68, ctzuo2, 56, 20 );

setEffMoveKey( spep_5 + 68, ctzuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_5 + 70, ctzuo2, 105, 288.6 , 0 );
setEffMoveKey( spep_5 + 72, ctzuo2, 117.9, 330.1 , 0 );
setEffMoveKey( spep_5 + 74, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 76, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 78, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 80, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 82, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 84, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 86, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 88, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 90, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 92, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 94, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 96, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 98, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 100, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 102, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 104, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 106, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 108, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 110, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 112, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 114, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 116, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 118, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 120, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 122, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 124, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 126, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 128, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 130, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 132, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 134, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 136, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 138, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 140, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 142, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 146, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 148, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 150, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 152, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 154, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 156, ctzuo2, 153.7, 348.8 , 0 );

setEffScaleKey( spep_5 + 68, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_5 + 70, ctzuo2, 1.13, 1.13 );
setEffScaleKey( spep_5 + 72, ctzuo2, 1.94, 1.94 );
setEffScaleKey( spep_5 + 74, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_5 + 156, ctzuo2, 2.73, 2.73 );

setEffRotateKey( spep_5 + 68, ctzuo2, 27.2 );
setEffRotateKey( spep_5 + 156, ctzuo2, 27.2 );

setEffAlphaKey( spep_5 + 68, ctzuo2, 255 );
setEffAlphaKey( spep_5 + 156, ctzuo2, 255 );


-- ** 音 ** --
playSe( spep_5,SE_06);--ビームを撃つ
playSe( spep_5+62,SE_07);--ビームが強くなる


--白フェード
entryFade(spep_5+66, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード
entryFade(spep_5+152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_6 = spep_5 + 160;

--------------------------------------------------------
--ビームが迫る
--------------------------------------------------------

--エフェクト
hit = entryEffect(spep_6, SP_06x, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_6, hit, 0, 0);
setEffMoveKey(spep_6 + 60, hit, 0, 0);

setEffScaleKey(spep_6, hit, 1.0, 1.0);
setEffScaleKey(spep_6 + 60, hit, 1.0, 1.0);

setEffRotateKey(spep_6, hit, 0);
setEffRotateKey(spep_6 + 60, hit, 0);

setEffAlphaKey(spep_6, hit, 255);
setEffAlphaKey(spep_6 + 60, hit, 255);

--文字エントリー
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 56, 0x100, -1, 0, 94.6, 301.3 );--ズドドドッ
setEffShake( spep_6 + 0, ctzudodo, 56, 20 );

setEffMoveKey( spep_6 + 0, ctzudodo, 94.6, 301.3 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, 87.6, 285.4 , 0 );
setEffMoveKey( spep_6 + 4, ctzudodo, 99.1, 294 , 0 );
setEffMoveKey( spep_6 + 6, ctzudodo, 85.4, 269 , 0 );
setEffMoveKey( spep_6 + 8, ctzudodo, 103.7, 286.6 , 0 );
setEffMoveKey( spep_6 + 10, ctzudodo, 86, 273.3 , 0 );
setEffMoveKey( spep_6 + 12, ctzudodo, 96.8, 297.8 , 0 );
setEffMoveKey( spep_6 + 14, ctzudodo, 90.6, 288.7 , 0 );
setEffMoveKey( spep_6 + 16, ctzudodo, 103.2, 304.4 , 0 );
setEffMoveKey( spep_6 + 18, ctzudodo, 96.5, 294.5 , 0 );
setEffMoveKey( spep_6 + 20, ctzudodo, 109.6, 310.9 , 0 );
setEffMoveKey( spep_6 + 22, ctzudodo, 102.3, 300.3 , 0 );
setEffMoveKey( spep_6 + 24, ctzudodo, 116, 317.5 , 0 );
setEffMoveKey( spep_6 + 26, ctzudodo, 108.1, 306.1 , 0 );
setEffMoveKey( spep_6 + 28, ctzudodo, 122.4, 324.1 , 0 );
setEffMoveKey( spep_6 + 30, ctzudodo, 113.9, 311.9 , 0 );
setEffMoveKey( spep_6 + 32, ctzudodo, 128.7, 330.6 , 0 );
setEffMoveKey( spep_6 + 34, ctzudodo, 119.7, 317.6 , 0 );
setEffMoveKey( spep_6 + 36, ctzudodo, 135.1, 337.2 , 0 );
setEffMoveKey( spep_6 + 38, ctzudodo, 125.5, 323.4 , 0 );
setEffMoveKey( spep_6 + 40, ctzudodo, 141.5, 343.7 , 0 );
setEffMoveKey( spep_6 + 42, ctzudodo, 131.3, 329.2 , 0 );
setEffMoveKey( spep_6 + 44, ctzudodo, 147.9, 350.3 , 0 );
setEffMoveKey( spep_6 + 46, ctzudodo, 137.2, 335 , 0 );
setEffMoveKey( spep_6 + 48, ctzudodo, 154.3, 356.8 , 0 );
setEffMoveKey( spep_6 + 50, ctzudodo, 143, 340.8 , 0 );
setEffMoveKey( spep_6 + 52, ctzudodo, 160.7, 363.4 , 0 );
setEffMoveKey( spep_6 + 54, ctzudodo, 148.8, 346.5 , 0 );
setEffMoveKey( spep_6 + 56, ctzudodo, 151.7, 349.4 , 0 );

setEffScaleKey( spep_6 + 0, ctzudodo, 1.09, 1.09 );
setEffScaleKey( spep_6 + 2, ctzudodo, 1.72, 1.72 );
setEffScaleKey( spep_6 + 4, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_6 + 6, ctzudodo, 2.99, 2.99 );
setEffScaleKey( spep_6 + 8, ctzudodo, 3.62, 3.62 );
setEffScaleKey( spep_6 + 10, ctzudodo, 2.65, 2.65 );
setEffScaleKey( spep_6 + 12, ctzudodo, 1.68, 1.68 );
setEffScaleKey( spep_6 + 14, ctzudodo, 1.73, 1.73 );
setEffScaleKey( spep_6 + 16, ctzudodo, 1.79, 1.79 );
setEffScaleKey( spep_6 + 18, ctzudodo, 1.84, 1.84 );
setEffScaleKey( spep_6 + 20, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_6 + 22, ctzudodo, 1.95, 1.95 );
setEffScaleKey( spep_6 + 24, ctzudodo, 2.01, 2.01 );
setEffScaleKey( spep_6 + 26, ctzudodo, 2.06, 2.06 );
setEffScaleKey( spep_6 + 28, ctzudodo, 2.12, 2.12 );
setEffScaleKey( spep_6 + 30, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_6 + 32, ctzudodo, 2.22, 2.22 );
setEffScaleKey( spep_6 + 34, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_6 + 36, ctzudodo, 2.33, 2.33 );
setEffScaleKey( spep_6 + 38, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_6 + 40, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_6 + 42, ctzudodo, 2.5, 2.5 );
setEffScaleKey( spep_6 + 44, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_6 + 46, ctzudodo, 2.6, 2.6 );
setEffScaleKey( spep_6 + 48, ctzudodo, 2.66, 2.66 );
setEffScaleKey( spep_6 + 50, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_6 + 52, ctzudodo, 2.77, 2.77 );
setEffScaleKey( spep_6 + 54, ctzudodo, 2.82, 2.82 );
setEffScaleKey( spep_6 + 56, ctzudodo, 2.88, 2.88 );

setEffRotateKey( spep_6 + 0, ctzudodo, -4.1 );
setEffRotateKey( spep_6 + 4, ctzudodo, -4.1 );
setEffRotateKey( spep_6 + 6, ctzudodo, -4 );
setEffRotateKey( spep_6 + 8, ctzudodo, -4 );
setEffRotateKey( spep_6 + 10, ctzudodo, -4.1 );
setEffRotateKey( spep_6 + 34, ctzudodo, -4.1 );
setEffRotateKey( spep_6 + 36, ctzudodo, -4 );
setEffRotateKey( spep_6 + 56, ctzudodo, -4 );

setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 + 56, ctzudodo, 255 );


--敵の動き
setDisp(spep_6,1,1);
setDisp(spep_6+58,1,0);

changeAnime(spep_6,1,102);

setMoveKey( spep_6 + 0, 1, 157.7, -54.2 , 0 );
setMoveKey( spep_6 + 2, 1, 156.8, -58.1 , 0 );
setMoveKey( spep_6 + 4, 1, 162.3, -55.7 , 0 );
setMoveKey( spep_6 + 6, 1, 158.2, -59.6 , 0 );
setMoveKey( spep_6 + 8, 1, 166.9, -57.2 , 0 );
setMoveKey( spep_6 + 10, 1, 166, -61.2 , 0 );
setMoveKey( spep_6 + 12, 1, 171.5, -58.7 , 0 );
setMoveKey( spep_6 + 14, 1, 170.6, -59.5 , 0 );
setMoveKey( spep_6 + 16, 1, 176.1, -60.3 , 0 );
setMoveKey( spep_6 + 18, 1, 172, -64.2 , 0 );
setMoveKey( spep_6 + 20, 1, 180.7, -61.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 2, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 4, 1, 1.84, 1.84 );
setScaleKey( spep_6 + 6, 1, 1.85, 1.85 );
setScaleKey( spep_6 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_6 + 10, 1, 1.86, 1.86 );
setScaleKey( spep_6 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_6 + 14, 1, 1.88, 1.88 );
setScaleKey( spep_6 + 16, 1, 1.88, 1.88 );
setScaleKey( spep_6 + 18, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 20, 1, 1.9, 1.9 );

setRotateKey( spep_6 + 0, 1, -4.9 );
setRotateKey( spep_6 + 20, 1, -4.9 );
	


--------------------------------------
--回避 
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6+20 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
--    stopSe(SP_dodge-14,SE0,0);--音を止める ※止めたい音がある場合
--    stopSe(SP_dodge-14,SE2,0);--音を止める ※止めたい音がある場合
 
    pauseAll( SP_dodge, 67);
    
     
    --キャラクターの固定
    setMoveKey( SP_dodge, 1, 180.7, -61.8 , 0 );
    setScaleKey(SP_dodge , 1 ,1.9, 1.9 ); --回避開始時のキャラの大きさ
    setRotateKey(SP_dodge,   1, -4.9); --回避開始時のキャラの角度
 
    
    --キャラクターの固定
    setMoveKey( SP_dodge+10, 1, 180.7, -61.8 , 0 );
    setScaleKey(SP_dodge+10 , 1 ,1.9, 1.9 ); --回避開始時のキャラの大きさ
    setRotateKey(SP_dodge+10,   1, -4.9); --回避開始時のキャラの角度
    

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------	
setMoveKey( spep_6 + 22, 1, 179.8, -65.7 , 0 );
setMoveKey( spep_6 + 24, 1, 185.3, -63.3 , 0 );
setMoveKey( spep_6 + 26, 1, 181.2, -67.3 , 0 );
setMoveKey( spep_6 + 28, 1, 189.9, -64.8 , 0 );
setMoveKey( spep_6 + 30, 1, 185.8, -68.8 , 0 );
setMoveKey( spep_6 + 32, 1, 194.5, -66.4 , 0 );
setMoveKey( spep_6 + 34, 1, 193.6, -73.5 , 0 );
setMoveKey( spep_6 + 36, 1, 199, -67.9 , 0 );
setMoveKey( spep_6 + 38, 1, 194.9, -75 , 0 );
setMoveKey( spep_6 + 40, 1, 203.6, -69.4 , 0 );
setMoveKey( spep_6 + 42, 1, 202.7, -73.4 , 0 );
setMoveKey( spep_6 + 44, 1, 208.2, -70.9 , 0 );
setMoveKey( spep_6 + 46, 1, 204.1, -78.1 , 0 );
setMoveKey( spep_6 + 48, 1, 212.8, -72.5 , 0 );
setMoveKey( spep_6 + 50, 1, 208.7, -76.4 , 0 );
setMoveKey( spep_6 + 52, 1, 217.4, -74 , 0 );
setMoveKey( spep_6 + 54, 1, 216.5, -81.1 , 0 );
setMoveKey( spep_6 + 56, 1, 222, -75.5 , 0 );
setMoveKey( spep_6 + 58, 1, 217.9, -82.7 , 0 );				

setScaleKey( spep_6 + 22, 1, 1.9, 1.9 );
setScaleKey( spep_6 + 24, 1, 1.91, 1.91 );
setScaleKey( spep_6 + 26, 1, 1.92, 1.92 );
setScaleKey( spep_6 + 28, 1, 1.93, 1.93 );
setScaleKey( spep_6 + 30, 1, 1.93, 1.93 );
setScaleKey( spep_6 + 32, 1, 1.94, 1.94 );
setScaleKey( spep_6 + 34, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 36, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_6 + 40, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 42, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 44, 1, 1.98, 1.98 );
setScaleKey( spep_6 + 46, 1, 1.99, 1.99 );
setScaleKey( spep_6 + 48, 1, 2, 2 );
setScaleKey( spep_6 + 50, 1, 2, 2 );
setScaleKey( spep_6 + 52, 1, 2.01, 2.01 );
setScaleKey( spep_6 + 54, 1, 2.02, 2.02 );
setScaleKey( spep_6 + 56, 1, 2.02, 2.02 );
setScaleKey( spep_6 + 58, 1, 2.03, 2.03 );

setRotateKey( spep_6 + 58, 1, -4.9 );

-- ** 音 ** --
playSe( spep_6,SE_06);--ビームが迫る
SE2=playSe( spep_6,1044);--地割れ音
stopSe(spep_6+60,SE2,0);

--白フェード
entryFade(spep_6+52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

--次の準備
spep_7 = spep_6 + 60;

--------------------------------------------------------
--ギャン
--------------------------------------------------------
--エフェクトの再生
gyan = entryEffectLife(  spep_7,  190017,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_7+58,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);
setEffAlphaKey(  spep_7+58,  gyan,  255);


-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_7, 10006, 58, 0x100, -1, 8.8, 313 , 0);    -- ギャン

setEffMoveKey( spep_7 + 0, ctgyan, 8.8, 313 , 0 );
setEffMoveKey( spep_7 + 2, ctgyan, 9.1, 314.1 , 0 );
setEffMoveKey( spep_7 + 4, ctgyan, 9.4, 315.1 , 0 );
setEffMoveKey( spep_7 + 6, ctgyan, 9.7, 316.1 , 0 );
setEffMoveKey( spep_7 + 8, ctgyan, 10, 317.1 , 0 );
setEffMoveKey( spep_7 + 10, ctgyan, 10, 317.2 , 0 );
setEffMoveKey( spep_7 + 12, ctgyan, 10, 317.3 , 0 );
setEffMoveKey( spep_7 + 14, ctgyan, 10, 317.4 , 0 );
setEffMoveKey( spep_7 + 16, ctgyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_7 + 18, ctgyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_7 + 20, ctgyan, 10.1, 317.6 , 0 );
setEffMoveKey( spep_7 + 22, ctgyan, 10.1, 317.7 , 0 );
setEffMoveKey( spep_7 + 24, ctgyan, 10.2, 317.8 , 0 );
setEffMoveKey( spep_7 + 26, ctgyan, 10.2, 317.9 , 0 );
setEffMoveKey( spep_7 + 28, ctgyan, 10.2, 318 , 0 );
setEffMoveKey( spep_7 + 30, ctgyan, 10.2, 318 , 0 );
setEffMoveKey( spep_7 + 32, ctgyan, 10.3, 318.1 , 0 );
setEffMoveKey( spep_7 + 34, ctgyan, 10.3, 318.2 , 0 );
setEffMoveKey( spep_7 + 36, ctgyan, 10.3, 318.3 , 0 );
setEffMoveKey( spep_7 + 38, ctgyan, 10.3, 318.4 , 0 );
setEffMoveKey( spep_7 + 40, ctgyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_7 + 42, ctgyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_7 + 44, ctgyan, 10.4, 318.6 , 0 );
setEffMoveKey( spep_7 + 46, ctgyan, 10.4, 318.7 , 0 );
setEffMoveKey( spep_7 + 48, ctgyan, 10.5, 318.8 , 0 );
setEffMoveKey( spep_7 + 50, ctgyan, 10.5, 318.9 , 0 );
setEffMoveKey( spep_7 + 52, ctgyan, 10.5, 319 , 0 );
setEffMoveKey( spep_7 + 54, ctgyan, 10.5, 319 , 0 );
setEffMoveKey( spep_7 + 56, ctgyan, 10.5, 319.1 , 0 );
setEffMoveKey( spep_7 + 58, ctgyan, 10.6, 319.2 , 0 );

setEffScaleKey( spep_7 + 0, ctgyan, 2.11, 2.11 );
setEffScaleKey( spep_7 + 2, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_7 + 4, ctgyan, 2.82, 2.82 );
setEffScaleKey( spep_7 + 6, ctgyan, 3.18, 3.18 );
setEffScaleKey( spep_7 + 8, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_7 + 10, ctgyan, 3.56, 3.56 );
setEffScaleKey( spep_7 + 12, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_7 + 14, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_7 + 16, ctgyan, 3.63, 3.63 );
setEffScaleKey( spep_7 + 18, ctgyan, 3.67, 3.67 );
setEffScaleKey( spep_7 + 20, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_7 + 22, ctgyan, 3.74, 3.74 );
setEffScaleKey( spep_7 + 24, ctgyan, 3.74, 3.74 );
setEffScaleKey( spep_7 + 26, ctgyan, 3.77, 3.77 );
setEffScaleKey( spep_7 + 28, ctgyan, 3.81, 3.81 );
setEffScaleKey( spep_7 + 30, ctgyan, 3.85, 3.85 );
setEffScaleKey( spep_7 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_7 + 34, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_7 + 36, ctgyan, 3.92, 3.92 );
setEffScaleKey( spep_7 + 38, ctgyan, 3.95, 3.95 );
setEffScaleKey( spep_7 + 40, ctgyan, 3.99, 3.99 );
setEffScaleKey( spep_7 + 42, ctgyan, 4.02, 4.02 );
setEffScaleKey( spep_7 + 44, ctgyan, 4.02, 4.02 );
setEffScaleKey( spep_7 + 46, ctgyan, 4.06, 4.06 );
setEffScaleKey( spep_7 + 48, ctgyan, 4.09, 4.09 );
setEffScaleKey( spep_7 + 50, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_7 + 52, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_7 + 54, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_7 + 56, ctgyan, 4.2, 4.2 );
setEffScaleKey( spep_7 + 58, ctgyan, 4.23, 4.23 );

setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 0);

setEffRotateKey( spep_7 + 0, ctgyan, -5.2 );
setEffRotateKey( spep_7 + 58, ctgyan, -5.2 );

setEffShake( spep_7, ctgyan, 60, 10);

playSe(spep_7,SE_09);

entryFade( spep_7+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_8 = spep_7+60;

--------------------------------------------------------
--吹き飛ばす
--------------------------------------------------------

--エフェクト
fly = entryEffect(spep_8, SP_07x, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_8, fly, 0, 0);
setEffMoveKey(spep_8 + 112, fly, 0, 0);

setEffScaleKey(spep_8, fly, 1.0, 1.0);
setEffScaleKey(spep_8 + 112, fly, 1.0, 1.0);

setEffRotateKey(spep_8, fly, 0);
setEffRotateKey(spep_8 + 112, fly, 0);

setEffAlphaKey(spep_8, fly, 255);
setEffAlphaKey(spep_8 + 110, fly, 255);
setEffAlphaKey(spep_8 + 111, fly, 255);
setEffAlphaKey(spep_8 + 112, fly, 0);

shuchusen4 = entryEffectLife( spep_8 + 0,  906,108, 0x100, -1, 0, 0, 24.1 );

setEffMoveKey( spep_8 + 0, shuchusen4, 0, 24.1 , 0 );
setEffMoveKey( spep_8 +108, shuchusen4, 0, 24.1 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen4, 1.21, 1.33 );
setEffScaleKey( spep_8 +108, shuchusen4, 1.21, 1.33 );

setEffAlphaKey( spep_8 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 76, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 78, shuchusen4, 239 );
setEffAlphaKey( spep_8 + 80, shuchusen4, 223 );
setEffAlphaKey( spep_8 + 82, shuchusen4, 207 );
setEffAlphaKey( spep_8 + 84, shuchusen4, 191 );
setEffAlphaKey( spep_8 + 86, shuchusen4, 175 );
setEffAlphaKey( spep_8 + 88, shuchusen4, 159 );
setEffAlphaKey( spep_8 + 90, shuchusen4, 143 );
setEffAlphaKey( spep_8 + 92, shuchusen4, 128 );
setEffAlphaKey( spep_8 + 94, shuchusen4, 112 );
setEffAlphaKey( spep_8 + 96, shuchusen4, 96 );
setEffAlphaKey( spep_8 + 98, shuchusen4, 80 );
setEffAlphaKey( spep_8 + 100, shuchusen4, 64 );
setEffAlphaKey( spep_8 + 102, shuchusen4, 48 );
setEffAlphaKey( spep_8 + 104, shuchusen4, 32 );
setEffAlphaKey( spep_8 + 106, shuchusen4, 16 );
setEffAlphaKey( spep_8 +108, shuchusen4, 0 );


-- ** 音 ** --
playSe( spep_8,SE_07);--ビームが迫る

--次の準備
spep_9 = spep_8+112;

--------------------------------------------------------
--終わり
--------------------------------------------------------
--エフェクト
finish = entryEffect(spep_9, SP_08x, 0x80, -1 ,0 ,0, 0); 
setEffMoveKey(spep_9, finish, 0, 0);
setEffMoveKey(spep_9 + 100, finish, 0, 0);

setEffScaleKey(spep_9, finish, -1.0, 1.0);
setEffScaleKey(spep_9 + 100, finish, -1.0, 1.0);

setEffRotateKey(spep_9, finish, 0);
setEffRotateKey(spep_9 + 100, finish, 0);

setEffAlphaKey(spep_9, finish, 255);
setEffAlphaKey(spep_9 + 100, finish, 255);

--集中線
shuchusen5 = entryEffectLife( spep_9 + 0,  906, 62, 0x100, -1, 0, 0, -88 );

setEffMoveKey( spep_9 + 0, shuchusen5, 0, -88 , 0 );
setEffMoveKey( spep_9 + 62, shuchusen5, 0, -88 , 0 );

setEffScaleKey( spep_9 + 0, shuchusen5, 1.22, 2.01 );
setEffScaleKey( spep_9 + 62, shuchusen5, 1.22, 2.01 );

setEffAlphaKey( spep_9 + 0, shuchusen5, 128 );
setEffAlphaKey( spep_9 + 32, shuchusen5, 128 );
setEffAlphaKey( spep_9 + 34, shuchusen5, 119 );
setEffAlphaKey( spep_9 + 36, shuchusen5, 111 );
setEffAlphaKey( spep_9 + 38, shuchusen5, 102 );
setEffAlphaKey( spep_9 + 40, shuchusen5, 94 );
setEffAlphaKey( spep_9 + 42, shuchusen5, 85 );
setEffAlphaKey( spep_9 + 44, shuchusen5, 77 );
setEffAlphaKey( spep_9 + 46, shuchusen5, 68 );
setEffAlphaKey( spep_9 + 48, shuchusen5, 60 );
setEffAlphaKey( spep_9 + 50, shuchusen5, 51 );
setEffAlphaKey( spep_9 + 52, shuchusen5, 43 );
setEffAlphaKey( spep_9 + 54, shuchusen5, 34 );
setEffAlphaKey( spep_9 + 56, shuchusen5, 25 );
setEffAlphaKey( spep_9 + 58, shuchusen5, 17 );
setEffAlphaKey( spep_9 + 60, shuchusen5, 8 );
setEffAlphaKey( spep_9 + 62, shuchusen5, 0 );

-- ** 音 ** --
playSe( spep_9+38,1003);--ビームが迫る

-- ダメージ表示
dealDamage(spep_9);
entryFade( spep_9+90, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+96);



end


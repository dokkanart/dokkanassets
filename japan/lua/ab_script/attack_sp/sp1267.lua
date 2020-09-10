--孫悟空(少年期)&則巻アラレ_めちゃんこパワードリーム

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
SP_01 = 153118;  --冒頭
SP_02 = 153119;  --岩投げる　手前
SP_03 = 153120;  --岩投げる　奥
SP_04 = 153121;  --岩当たる　手前
SP_05 = 153122;  --岩当たる　奥
SP_06 = 153123;  --岩当たる　空
SP_07 = 153124;  --ジャンプして蹴る　手前
SP_08 = 153125;  --ジャンプして蹴る　奥
SP_09 = 153126;  --キラン　手前
SP_10 = 153127;  --キラン　奥

--敵側
SP_01x = 153128;  --冒頭
SP_02x = 153119;  --岩投げる　手前
SP_03x = 153120;  --岩投げる　奥
SP_04x = 153121;  --岩当たる　手前
SP_05x = 153122;  --岩当たる　奥
SP_06x = 153123;  --岩当たる　空
SP_07x = 153124;  --ジャンプして蹴る　手前
SP_08x = 153125;  --ジャンプして蹴る　奥
SP_09x = 153126;  --キラン　手前
SP_10x = 153127;  --キラン　奥

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
-- 冒頭(98F)
------------------------------------------------------
spep_0=0;
-- ** エフェクト等 ** --
boutou = entryEffectLife( spep_0 + 0, SP_01, 98, 0x80, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_0 + 0, boutou, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, boutou, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, boutou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, boutou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boutou, 0 );
setEffRotateKey( spep_0 + 98, boutou, 0 );
setEffAlphaKey( spep_0 + 0, boutou, 255 );
setEffAlphaKey( spep_0 + 98, boutou, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 98, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 15, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 12,  190006, 70, 0x100, -1, 0, 130.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 12, ctgogo, 70, 10 );

setEffMoveKey( spep_0 + 12, ctgogo, 130.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 82, ctgogo, 130.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 12, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 74, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 76, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 78, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 80, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 82, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 12, ctgogo, 0 );
setEffRotateKey( spep_0 + 82, ctgogo, 0 );

setEffAlphaKey( spep_0 + 12, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 12, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 84, 12, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;

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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 岩投げる(168F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru_f = entryEffectLife( spep_2 + 0, SP_02, 168, 0x100, -1, 0, 0, 0 );  --岩投げる　手前(ef_002)
setEffMoveKey( spep_2 + 0, nageru_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 168, nageru_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageru_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 168, nageru_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, nageru_f, 0 );
setEffRotateKey( spep_2 + 168, nageru_f, 0 );
setEffAlphaKey( spep_2 + 0, nageru_f, 255 );
setEffAlphaKey( spep_2 + 168, nageru_f, 255 );

nageru_b = entryEffectLife( spep_2 + 0, SP_03, 168, 0x80, -1, 0, 0, 0 );  --岩投げる　奥(ef_003)
setEffMoveKey( spep_2 + 0, nageru_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 168, nageru_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageru_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 168, nageru_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, nageru_b, 0 );
setEffRotateKey( spep_2 + 168, nageru_b, 0 );
setEffAlphaKey( spep_2 + 0, nageru_b, 255 );
setEffAlphaKey( spep_2 + 168, nageru_b, 255 );

--細い集中線入れる
shuchusen2 = entryEffectLife( spep_2 -3 + 120,  924, 48, 0x80, -1, 0, 390, 200 );  --集中線

setEffMoveKey( spep_2 -3 + 120, shuchusen2, 390, 200 , 0 );
setEffMoveKey( spep_2 -3 + 168, shuchusen2, 390, 200 , 0 );

setEffScaleKey( spep_2 -3 + 120, shuchusen2, 1.49, 1.51  );
setEffScaleKey( spep_2 -3 + 168, shuchusen2, 1.49, 1.51  );

setEffRotateKey( spep_2 -3 + 120, shuchusen2, 145.1 );
setEffRotateKey( spep_2 -3 + 168, shuchusen2, 145.1 );

setEffAlphaKey( spep_2 -3 + 120, shuchusen2, 255 );
setEffAlphaKey( spep_2 -3 + 168, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2-3 + 120,  10012, 46, 0x100, -1, 0, -75.7, -33 );  --ズオッ
setEffMoveKey( spep_2-3 + 120, ctzuo, -75.7, -33 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzuo, -40.6, 20.6 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, -5.5, 74.2 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, 29.6, 127.9 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, 29.5, 128.1 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, 29.4, 128.4 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, 29.3, 128.6 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, 29.2, 129 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, 29.1, 129.1 , 0 );
setEffMoveKey( spep_2-3 + 138, ctzuo, 29, 129.5 , 0 );
setEffMoveKey( spep_2-3 + 140, ctzuo, 28.9, 129.7 , 0 );
setEffMoveKey( spep_2-3 + 142, ctzuo, 28.7, 130 , 0 );
setEffMoveKey( spep_2-3 + 144, ctzuo, 28.6, 130.2 , 0 );
setEffMoveKey( spep_2-3 + 146, ctzuo, 28.5, 130.6 , 0 );
setEffMoveKey( spep_2-3 + 148, ctzuo, 28.4, 130.7 , 0 );
setEffMoveKey( spep_2-3 + 150, ctzuo, 28.3, 131.1 , 0 );
setEffMoveKey( spep_2-3 + 152, ctzuo, 28.2, 131.3 , 0 );
setEffMoveKey( spep_2-3 + 154, ctzuo, 28.1, 131.6 , 0 );
setEffMoveKey( spep_2-3 + 156, ctzuo, 28, 131.8 , 0 );
setEffMoveKey( spep_2-3 + 158, ctzuo, 27.9, 132.1 , 0 );
setEffMoveKey( spep_2-3 + 160, ctzuo, 27.8, 132.3 , 0 );
setEffMoveKey( spep_2-3 + 162, ctzuo, 27.7, 132.7 , 0 );
setEffMoveKey( spep_2-3 + 164, ctzuo, 27.6, 132.8 , 0 );
setEffMoveKey( spep_2-3 + 166, ctzuo, 27.5, 133.3 , 0 );

setEffScaleKey( spep_2-3 + 120, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_2-3 + 122, ctzuo, 1.05, 1.05 );
setEffScaleKey( spep_2-3 + 124, ctzuo, 1.9, 1.9 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 2.94, 2.94 );
setEffScaleKey( spep_2-3 + 128, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_2-3 + 130, ctzuo, 2.97, 2.97 );
setEffScaleKey( spep_2-3 + 132, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2-3 + 134, ctzuo, 2.99, 2.99 );
setEffScaleKey( spep_2-3 + 136, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2-3 + 138, ctzuo, 3.02, 3.02 );
setEffScaleKey( spep_2-3 + 140, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_2-3 + 142, ctzuo, 3.06, 3.06 );
setEffScaleKey( spep_2-3 + 144, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_2-3 + 146, ctzuo, 3.08, 3.08 );
setEffScaleKey( spep_2-3 + 148, ctzuo, 2.94, 2.94 );
setEffScaleKey( spep_2-3 + 150, ctzuo, 3.11, 3.11 );
setEffScaleKey( spep_2-3 + 152, ctzuo, 2.97, 2.97 );
setEffScaleKey( spep_2-3 + 154, ctzuo, 3.13, 3.13 );
setEffScaleKey( spep_2-3 + 156, ctzuo, 3, 3 );
setEffScaleKey( spep_2-3 + 158, ctzuo, 3.16, 3.16 );
setEffScaleKey( spep_2-3 + 160, ctzuo, 3.02, 3.02 );
setEffScaleKey( spep_2-3 + 162, ctzuo, 3.19, 3.19 );
setEffScaleKey( spep_2-3 + 164, ctzuo, 3.05, 3.05 );
setEffScaleKey( spep_2-3 + 166, ctzuo, 3.21, 3.21 );

setEffRotateKey( spep_2-3 + 120, ctzuo, -22 );
setEffRotateKey( spep_2-3 + 166, ctzuo, -22 );

setEffAlphaKey( spep_2-3 + 120, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 166, ctzuo, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 60, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 160, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 +	16	, 44 );
playSe( spep_2 +	92	, 1007 );
playSe( spep_2 +	118	, SE_04 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--playSe( spep_2 + 2, 1021 );  --

-- ** 次の準備 ** --
spep_3 = spep_2 + 168;

------------------------------------------------------
-- 岩当たる(78F)
------------------------------------------------------
-- ** エフェクト等 ** --
ataru_sora = entryEffectLife( spep_3 + 0, SP_06, 78, 0x80, -1, 0, 0, 0 );  --岩当たる　空(ef_006)
setEffMoveKey( spep_3 + 0, ataru_sora, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, ataru_sora, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ataru_sora, 1.0, 1.0 );
setEffScaleKey( spep_3 + 78, ataru_sora, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ataru_sora, 0 );
setEffRotateKey( spep_3 + 78, ataru_sora, 0 );
setEffAlphaKey( spep_3 + 0, ataru_sora, 255 );
setEffAlphaKey( spep_3 + 78, ataru_sora, 255 );

ataru_f = entryEffectLife( spep_3 + 0, SP_04, 78, 0x100, -1, 0, 0, 0 );  --岩当たる　手前(ef_004)
setEffMoveKey( spep_3 + 0, ataru_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, ataru_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ataru_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 78, ataru_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ataru_f, 0 );
setEffRotateKey( spep_3 + 78, ataru_f, 0 );
setEffAlphaKey( spep_3 + 0, ataru_f, 255 );
setEffAlphaKey( spep_3 + 78, ataru_f, 255 );

ataru_b = entryEffectLife( spep_3 + 0, SP_05, 78, 0x80, -1, 0, 0, 0 );  --岩当たる　空(ef_005)
setEffMoveKey( spep_3 + 0, ataru_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, ataru_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ataru_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 78, ataru_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ataru_b, 0 );
setEffRotateKey( spep_3 + 78, ataru_b, 0 );
setEffAlphaKey( spep_3 + 0, ataru_b, 255 );
setEffAlphaKey( spep_3 + 78, ataru_b, 255 );

--細い集中線入れる
shuchusen3 = entryEffectLife( spep_3 ,  924, 52, 0x80, -1, 0, -100, -130 );  --集中線

setEffMoveKey( spep_3 , shuchusen3, -100, -130 , 0 );
setEffMoveKey( spep_3 + 52, shuchusen3, -100, -130 , 0 );

setEffScaleKey( spep_3 , shuchusen3, 1.19, 1.71  );
setEffScaleKey( spep_3 + 52, shuchusen3, 1.19, 1.71  );

setEffRotateKey( spep_3 , shuchusen3, 325.1 );
setEffRotateKey( spep_3 + 52, shuchusen3, 325.1 );

setEffAlphaKey( spep_3 , shuchusen3, 255 );
setEffAlphaKey( spep_3 + 52, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_3 + 0, 10014, 44, 0x100, -1, 0, -6.4, 391 );  --ズドドド

setEffShake( spep_3 , ctzudo, 44, 10 );

setEffMoveKey( spep_3 + 0, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 2, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 4, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 6, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 8, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 10, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 12, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 14, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 16, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 18, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 20, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 22, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 24, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 26, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 28, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 30, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 32, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 34, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 36, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 38, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 40, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 42, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 44, ctzudo, -6.4, 391 , 0 );
--setEffMoveKey( spep_3 + 46, ctzudo, -6.1, 366.7 , 0 );

setEffScaleKey( spep_3 + 0, ctzudo, 2.54, 2.54 );
setEffScaleKey( spep_3 + 44, ctzudo, 2.54, 2.54 );

setEffRotateKey( spep_3 + 0, ctzudo, 22.2 );
setEffRotateKey( spep_3 + 44, ctzudo, 22.2 );

setEffAlphaKey( spep_3 + 0, ctzudo, 255 );
setEffAlphaKey( spep_3 + 44, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 14, 1, 1 );
setDisp( spep_3 -3 + 76, 1, 0 );
changeAnime( spep_3 -3 + 14, 1, 100 );  --待ち
changeAnime( spep_3 -3 + 46, 1, 108 );  --くの字

setMoveKey( spep_3 -3 + 14, 1, 356, 249.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 347.3, 256.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 317.7, 248.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 318, 225 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 294.3, 234.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 297.7, 208.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 289, 215.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 259.3, 207.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 259.6, 184.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 236, 193.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 239.3, 167.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 230.6, 174.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 201, 166.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 201.3, 143.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 177.6, 152.9 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 181, 126.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 108.8, 48.8 , 0 );  --着弾
setMoveKey( spep_3 -3 + 48, 1, 115.6, 26.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 152.4, -10 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 165.2, -13.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 205, -53.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 229.8, -75.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 254.6, -96.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 276.6, -163.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 298.7, -229.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 320.8, -296.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 342.9, -362.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 365.1, -429 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 387.3, -495.2 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 409.5, -561.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 431.8, -627.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 454.1, -693.8 , 0 );

setScaleKey( spep_3 -3 + 14, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 16, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 18, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 20, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 22, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 24, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 26, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 28, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 30, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 32, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 34, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 36, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 38, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 40, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 42, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 44, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 46, 1, 1.44, 1.44 );  --着弾
setScaleKey( spep_3 -3 + 76, 1, 1.44, 1.44 );

setRotateKey( spep_3 -3 + 14, 1, 0 );
setRotateKey( spep_3 -3 + 45, 1, 0 );
setRotateKey( spep_3 -3 + 46, 1, -16.1 );  --着弾
setRotateKey( spep_3 -3 + 48, 1, -10.1 );
setRotateKey( spep_3 -3 + 50, 1, -4.1 );
setRotateKey( spep_3 -3 + 52, 1, 1.9 );
setRotateKey( spep_3 -3 + 54, 1, 7.8 );
setRotateKey( spep_3 -3 + 56, 1, 13.8 );
setRotateKey( spep_3 -3 + 58, 1, 19.8 );
setRotateKey( spep_3 -3 + 60, 1, 25.1 );
setRotateKey( spep_3 -3 + 62, 1, 30.5 );
setRotateKey( spep_3 -3 + 64, 1, 35.8 );
setRotateKey( spep_3 -3 + 66, 1, 41.2 );
setRotateKey( spep_3 -3 + 68, 1, 46.5 );
setRotateKey( spep_3 -3 + 70, 1, 51.9 );
setRotateKey( spep_3 -3 + 72, 1, 57.2 );
setRotateKey( spep_3 -3 + 74, 1, 62.6 );
setRotateKey( spep_3 -3 + 76, 1, 67.9 );



-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 66, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    

    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 294.3, 234.8, 0);
    setScaleKey(SP_dodge , 1 ,0.66, 0.66 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 294.3, 234.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.66, 0.66 );
    setRotateKey(SP_dodge+10,   1, 0);

    
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

-- ** 音 ** --
playSe( spep_3 + 2, SE_04 );  --
playSe( spep_3 + 44, 1010 );  --

-- ** 次の準備 ** --
spep_4 = spep_3 + 78;


------------------------------------------------------
-- ジャンプして蹴る(168F)
------------------------------------------------------

-- ** エフェクト等 ** --
janp_f = entryEffectLife( spep_4 + 0, SP_07, 168, 0x100, -1, 0, 0, 0 );  --ジャンプして蹴る　手前(ef_007)
setEffMoveKey( spep_4 + 0, janp_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 168, janp_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, janp_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 168, janp_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, janp_f, 0 );
setEffRotateKey( spep_4 + 168, janp_f, 0 );
setEffAlphaKey( spep_4 + 0, janp_f, 255 );
setEffAlphaKey( spep_4 + 168, janp_f, 255 );

janp_b = entryEffectLife( spep_4 + 0, SP_08, 168, 0x80, -1, 0, 0, 0 );  --ジャンプして蹴る　奥(ef_008)
setEffMoveKey( spep_4 + 0, janp_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 168, janp_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, janp_b, 1.1, 1.1 );
setEffScaleKey( spep_4 + 168, janp_b, 1.1, 1.1 );
setEffRotateKey( spep_4 + 0, janp_b, 0 );
setEffRotateKey( spep_4 + 168, janp_b, 0 );
setEffAlphaKey( spep_4 + 0, janp_b, 255 );
setEffAlphaKey( spep_4 + 168, janp_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_4 -3 + 24,  914, 144, 0x80, -1, 0, 9.6, -127.4 );  --細い縦の流線
setEffMoveKey( spep_4 -3 + 24, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 168, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 24, ryusen1, 2.21, 1.32 );
setEffScaleKey( spep_4 -3 + 168, ryusen1, 2.21, 1.32 );

setEffRotateKey( spep_4 -3 + 24, ryusen1, 90 );
setEffRotateKey( spep_4 -3 + 168, ryusen1, 90 );

setEffAlphaKey( spep_4 -3 + 24, ryusen1, 128 );
setEffAlphaKey( spep_4 -3 + 168, ryusen1, 128 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 96,  906, 30, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 96, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 96, shuchusen4, 1.21, 1.21 );
setEffScaleKey( spep_4 + 126, shuchusen4, 1.21, 1.21 );

setEffRotateKey( spep_4 + 96, shuchusen4, 180 );
setEffRotateKey( spep_4 + 126, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 96, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 97, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 98, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 124, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 125, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 126, shuchusen4, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_4 -3 + 100,  10021, 34, 0x100, -1, 0, 8.3, -228.5 );  --バゴォッ
setEffMoveKey( spep_4 -3 + 100, ctbago, 8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 102, ctbago, 10.9, -232.5 , 0 );
setEffMoveKey( spep_4 -3 + 104, ctbago, 8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 106, ctbago, 12.5, -235.2 , 0 );
setEffMoveKey( spep_4 -3 + 108, ctbago, 8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 110, ctbago, 12.7, -235.5 , 0 );
setEffMoveKey( spep_4 -3 + 112, ctbago, 8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 114, ctbago, 12.9, -235.9 , 0 );
setEffMoveKey( spep_4 -3 + 116, ctbago, 8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 118, ctbago, 13.2, -236.2 , 0 );
setEffMoveKey( spep_4 -3 + 120, ctbago, 8.3, -228.6 , 0 );
setEffMoveKey( spep_4 -3 + 122, ctbago, 13.4, -236.5 , 0 );
setEffMoveKey( spep_4 -3 + 124, ctbago, 8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 126, ctbago, 13.6, -236.9 , 0 );
setEffMoveKey( spep_4 -3 + 128, ctbago, 8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 130, ctbago, 13.9, -237.2 , 0 );
setEffMoveKey( spep_4 -3 + 134, ctbago, 8.3, -228.6 , 0 );

setEffScaleKey( spep_4 -3 + 100, ctbago, 1.02, 1.02 );
setEffScaleKey( spep_4 -3 + 102, ctbago, 1.52, 1.52 );
setEffScaleKey( spep_4 -3 + 104, ctbago, 2.01, 2.01 );
setEffScaleKey( spep_4 -3 + 106, ctbago, 2.5, 2.5 );
setEffScaleKey( spep_4 -3 + 108, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_4 -3 + 110, ctbago, 2.63, 2.63 );
setEffScaleKey( spep_4 -3 + 112, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_4 -3 + 114, ctbago, 2.75, 2.75 );
setEffScaleKey( spep_4 -3 + 116, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_4 -3 + 118, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_4 -3 + 120, ctbago, 2.94, 2.94 );
setEffScaleKey( spep_4 -3 + 122, ctbago, 3.01, 3.01 );
setEffScaleKey( spep_4 -3 + 124, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_4 -3 + 126, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_4 -3 + 128, ctbago, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 130, ctbago, 3.26, 3.26 );
setEffScaleKey( spep_4 -3 + 132, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_4 -3 + 134, ctbago, 3.39, 3.39 );

setEffRotateKey( spep_4 -3 + 100, ctbago, -14.1 );
setEffRotateKey( spep_4 -3 + 102, ctbago, -14.2 );
setEffRotateKey( spep_4 -3 + 134, ctbago, -14.2 );

setEffAlphaKey( spep_4 -3 + 100, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 106, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 108, ctbago, 237 );
setEffAlphaKey( spep_4 -3 + 110, ctbago, 219 );
setEffAlphaKey( spep_4 -3 + 112, ctbago, 200 );
setEffAlphaKey( spep_4 -3 + 114, ctbago, 182 );
setEffAlphaKey( spep_4 -3 + 116, ctbago, 164 );
setEffAlphaKey( spep_4 -3 + 118, ctbago, 146 );
setEffAlphaKey( spep_4 -3 + 120, ctbago, 128 );
setEffAlphaKey( spep_4 -3 + 122, ctbago, 109 );
setEffAlphaKey( spep_4 -3 + 124, ctbago, 91 );
setEffAlphaKey( spep_4 -3 + 126, ctbago, 73 );
setEffAlphaKey( spep_4 -3 + 128, ctbago, 55 );
setEffAlphaKey( spep_4 -3 + 130, ctbago, 36 );
setEffAlphaKey( spep_4 -3 + 132, ctbago, 18 );
setEffAlphaKey( spep_4 -3 + 134, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 68, 1, 1 );
setDisp( spep_4-3 + 140, 1, 0 );
changeAnime( spep_4 + 68, 1, 106 );  --仰け反り
changeAnime( spep_4-3 + 100, 1, 108 );  --くの字

setMoveKey( spep_4 + 68, 1, -39.1, 392.7 , 0 );
setMoveKey( spep_4 + 70, 1, -29.3, 611.3 , 0 );
setMoveKey( spep_4 + 72, 1, -37.5, 585.9 , 0 );
setMoveKey( spep_4 + 74, 1, -39.1, 553.3 , 0 );
setMoveKey( spep_4 + 76, 1, -27.7, 512.5 , 0 );
setMoveKey( spep_4 + 78, 1, -41.9, 482.6 , 0 );
setMoveKey( spep_4 + 80, 1, -26.3, 443.2 , 0 );
setMoveKey( spep_4 + 82, 1, -40.5, 407.8 , 0 );
setMoveKey( spep_4 + 84, 1, -36.1, 385.2 , 0 );
setMoveKey( spep_4 + 86, 1, -30.7, 334.4 , 0 );
setMoveKey( spep_4 + 88, 1, -38.9, 314.6 , 0 );
setMoveKey( spep_4 + 90, 1, -29.3, 265.2 , 0 );
setMoveKey( spep_4 + 92, 1, -37.5, 239.8 , 0 );
setMoveKey( spep_4 + 94, 1, -39.1, 207.2 , 0 );
setMoveKey( spep_4 + 96, 1, -27.7, 166.4 , 0 );
--setMoveKey( spep_4 + 98, 1, -41.9, 136.6 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 53.8, 126.4 , 0 );  --ダメージ
setMoveKey( spep_4 -3 + 102, 1, 2.4, 129.2 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 59.3, 135.7 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 15.7, 169.2 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 41.1, 203.5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 14.5, 191.9 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 13.6, 204.5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 26.1, 207.4 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 26.5, 223.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 24.7, 257.4 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 20.2, 240.6 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 21.8, 256.2 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 15.7, 268.8 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 12, 293.1 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 24.3, 251.1 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 14.4, 368.1 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 19.5, 482.7 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 17.8, 605.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 16.6, 702.3 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 9.2, 822.9 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 13.8, 935.3 , 0 );

setScaleKey( spep_4 + 68, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 70, 1, 2.07, 2.07 );
setScaleKey( spep_4-3 + 99, 1, 2.57, 2.07 );
setScaleKey( spep_4-3 + 100, 1, 2.31, 2.31 );  --ダメージ
setScaleKey( spep_4-3 + 102, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 104, 1, 2.28, 2.28 );
setScaleKey( spep_4-3 + 106, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 108, 1, 2.24, 2.24 );
setScaleKey( spep_4-3 + 110, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 112, 1, 2.22, 2.22 );
setScaleKey( spep_4-3 + 114, 1, 2.21, 2.21 );
setScaleKey( spep_4-3 + 116, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 118, 1, 2.18, 2.18 );
setScaleKey( spep_4-3 + 120, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 122, 1, 2.15, 2.15 );
setScaleKey( spep_4-3 + 124, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 126, 1, 2.12, 2.12 );
setScaleKey( spep_4-3 + 128, 1, 2.11, 2.11 );
setScaleKey( spep_4-3 + 130, 1, 2.1, 2.1 );
setScaleKey( spep_4-3 + 132, 1, 2.09, 2.09 );
setScaleKey( spep_4-3 + 134, 1, 2.09, 2.09 );
setScaleKey( spep_4-3 + 136, 1, 2.08, 2.08 );
setScaleKey( spep_4-3 + 138, 1, 2.07, 2.07 );
setScaleKey( spep_4-3 + 140, 1, 2.06, 2.06 );

setRotateKey( spep_4 + 68, 1, -113.1 );
setRotateKey( spep_4-3 + 98, 1, -113.1 );
setRotateKey( spep_4-3 + 99, 1, -113.1 );
setRotateKey( spep_4-3 + 100, 1, -94 );  --ダメージ
setRotateKey( spep_4-3 + 102, 1, -93.4 );
setRotateKey( spep_4-3 + 104, 1, -92.6 );
setRotateKey( spep_4-3 + 106, 1, -91.9 );
setRotateKey( spep_4-3 + 108, 1, -91.1 );
setRotateKey( spep_4-3 + 110, 1, -90.4 );
setRotateKey( spep_4-3 + 112, 1, -89.6 );
setRotateKey( spep_4-3 + 114, 1, -88.9 );
setRotateKey( spep_4-3 + 116, 1, -88.1 );
setRotateKey( spep_4-3 + 118, 1, -87.4 );
setRotateKey( spep_4-3 + 120, 1, -86.6 );
setRotateKey( spep_4-3 + 122, 1, -85.9 );
setRotateKey( spep_4-3 + 124, 1, -85.1 );
setRotateKey( spep_4-3 + 126, 1, -84.4 );
setRotateKey( spep_4-3 + 128, 1, -83.6 );
setRotateKey( spep_4-3 + 130, 1, -77.5 );
setRotateKey( spep_4-3 + 132, 1, -71.4 );
setRotateKey( spep_4-3 + 134, 1, -65.3 );
setRotateKey( spep_4-3 + 136, 1, -59.2 );
setRotateKey( spep_4-3 + 138, 1, -53.2 );
setRotateKey( spep_4-3 + 140, 1, -47.1 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 60, 6, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 160, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 22, 1017 );  --
--playSe( spep_4 + 32, 44 );  --
playSe( spep_4 + 96, 1011 );  --

-- ** 次の準備 ** --
spep_5 = spep_4 + 168;



------------------------------------------------------
-- キラン(138F)
------------------------------------------------------

-- ** エフェクト等 ** --
kiran_f = entryEffect( spep_5 + 0, SP_09,  0x100, -1, 0, 0, 0 );  --キラン　手前(ef_009)
setEffMoveKey( spep_5 + 0, kiran_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 138, kiran_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kiran_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 138, kiran_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kiran_f, 0 );
setEffRotateKey( spep_5 + 138, kiran_f, 0 );
setEffAlphaKey( spep_5 + 0, kiran_f, 255 );
setEffAlphaKey( spep_5 + 138, kiran_f, 255 );

kiran_b = entryEffect( spep_5 + 0, SP_10,  0x80, -1, 0, 0, 0 );  --キラン　奥(ef_010)
setEffMoveKey( spep_5 + 0, kiran_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 138, kiran_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kiran_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 138, kiran_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kiran_b, 0 );
setEffRotateKey( spep_5 + 138, kiran_b, 0 );
setEffAlphaKey( spep_5 + 0, kiran_b, 255 );
setEffAlphaKey( spep_5 + 138, kiran_b, 255 );


-- ** エフェクト等 ** 
shuchusen5 = entryEffectLife( spep_5 +24 ,  906, 114, 0x80, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_5 +24 , shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5  + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 +24 , shuchusen5, 1.3, 1.3  );
setEffScaleKey( spep_5 + 138, shuchusen5, 1.3, 1.3  );

setEffRotateKey( spep_5 +24 , shuchusen5, 90 );
setEffRotateKey( spep_5  + 138, shuchusen5, 90 );

setEffAlphaKey( spep_5 +24 , shuchusen5, 0 );
setEffAlphaKey( spep_5 +25 , shuchusen5, 255 );
setEffAlphaKey( spep_5 +26 , shuchusen5, 255 );
setEffAlphaKey( spep_5  + 138, shuchusen5, 255 );

--[[
--細い集中線入れる
shuchusen6 = entryEffectLife( spep_5 ,  924, 138, 0x80, -1, 0, -530, 0 );  --集中線

setEffMoveKey( spep_5 , shuchusen6, 0, -530 , 0 );
setEffMoveKey( spep_5 + 138, shuchusen6, 0, -530 , 0 );

setEffScaleKey( spep_5 , shuchusen6, 1.0, 1.2  );
setEffScaleKey( spep_5 + 138, shuchusen6, 1.0, 1.2  );

setEffRotateKey( spep_5 , shuchusen6, -90 );
setEffRotateKey( spep_5 + 138, shuchusen6, -90 );

setEffAlphaKey( spep_5 , shuchusen6, 255 );
setEffAlphaKey( spep_5 + 138, shuchusen6, 255 );
]]

--普通の集中線入れる

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );  --くの字

setMoveKey( spep_5 + 0, 1, -14.6, -373.8 , 0 );
setMoveKey( spep_5 + 2, 1, -26.7, -356.3 , 0 );
setMoveKey( spep_5 + 4, 1, -34.3, -332 , 0 );
setMoveKey( spep_5 + 6, 1, -31.8, -300.4 , 0 );
setMoveKey( spep_5 + 8, 1, -16.3, -277.8 , 0 );
setMoveKey( spep_5 + 10, 1, -7.4, -266.4 , 0 );
setMoveKey( spep_5 + 12, 1, -0.8, -257.9 , 0 );
setMoveKey( spep_5 + 14, 1, 2.4, -256.4 , 0 );
setMoveKey( spep_5 + 16, 1, -3.8, -252.9 , 0 );
setMoveKey( spep_5 + 18, 1, -11.6, -239 , 0 );
setMoveKey( spep_5 + 20, 1, -21, -219.9 , 0 );
setMoveKey( spep_5 + 22, 1, -26.5, -195.6 , 0 );
setMoveKey( spep_5 + 24, 1, -24, -165.9 , 0 );
setMoveKey( spep_5 + 26, 1, -11.6, -143.6 , 0 );
setMoveKey( spep_5 + 28, 1, -4.8, -131.3 , 0 );
setMoveKey( spep_5 + 30, 1, 0, -119.4 , 0 );
setMoveKey( spep_5 + 32, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_5 + 34, 1, -1.9, -102.6 , 0 );
setMoveKey( spep_5 + 36, 1, -6.8, -87.6 , 0 );
setMoveKey( spep_5 + 38, 1, -12.3, -69.2 , 0 );
setMoveKey( spep_5 + 40, 1, -15.1, -48.2 , 0 );
setMoveKey( spep_5 + 42, 1, -12.9, -24.4 , 0 );
setMoveKey( spep_5 + 44, 1, -5.4, -5.1 , 0 );
setMoveKey( spep_5 + 46, 1, -1.5, 6.4 , 0 );
setMoveKey( spep_5 + 48, 1, 1.2, 19.9 , 0 );
setMoveKey( spep_5 + 50, 1, 2.3, 32.1 , 0 );
setMoveKey( spep_5 + 52, 1, 0.6, 45.9 , 0 );
setMoveKey( spep_5 + 54, 1, -0.9, 62 , 0 );
setMoveKey( spep_5 + 56, 1, -1.7, 79.4 , 0 );
setMoveKey( spep_5 + 58, 1, -0.8, 97.1 , 0 );
setMoveKey( spep_5 + 60, 1, -2, 2158.2 , 0 );


a=1.8;

setScaleKey( spep_5 + 0, 1, 1.13+a, 1.13+a );
setScaleKey( spep_5 + 2, 1, 1.11+a, 1.11+a );
setScaleKey( spep_5 + 4, 1, 1.09+a, 1.09+a );
setScaleKey( spep_5 + 6, 1, 1.07+a, 1.07+a );
setScaleKey( spep_5 + 8, 1, 1.05+a, 1.05+a );
setScaleKey( spep_5 + 10, 1, 1.02+a, 1.02+a );
setScaleKey( spep_5 + 12, 1, 1+a, 1+a );
--[[
setScaleKey( spep_5 + 14, 1, 0.98+a, 0.98+a );
setScaleKey( spep_5 + 16, 1, 0.95+a, 0.95+a );
setScaleKey( spep_5 + 18, 1, 0.92+a, 0.92+a );
setScaleKey( spep_5 + 20, 1, 0.89+a, 0.89+a );
setScaleKey( spep_5 + 22, 1, 0.85+a, 0.85+a );
setScaleKey( spep_5 + 24, 1, 0.82+a, 0.81+a );
setScaleKey( spep_5 + 26, 1, 0.78+a, 0.78+a );
setScaleKey( spep_5 + 28, 1, 0.74+a, 0.73+a );
setScaleKey( spep_5 + 30, 1, 0.7+a, 0.69+a );
setScaleKey( spep_5 + 32, 1, 0.67+a, 0.65+a );
setScaleKey( spep_5 + 34, 1, 0.63+a, 0.61+a );
setScaleKey( spep_5 + 36, 1, 0.59+a, 0.57+a );
setScaleKey( spep_5 + 38, 1, 0.55+a, 0.54+a );
setScaleKey( spep_5 + 40, 1, 0.51+a, 0.5+a );
setScaleKey( spep_5 + 42, 1, 0.48+a, 0.45+a );
setScaleKey( spep_5 + 44, 1, 0.43+a, 0.41+a );
setScaleKey( spep_5 + 46, 1, 0.39+a, 0.37+a );
setScaleKey( spep_5 + 48, 1, 0.34+a, 0.32+a );
setScaleKey( spep_5 + 50, 1, 0.3+a, 0.28+a );
setScaleKey( spep_5 + 52, 1, 0.25+a, 0.23+a );
setScaleKey( spep_5 + 54, 1, 0.2+a, 0.18+a );
setScaleKey( spep_5 + 56, 1, 0.15+a, 0.13+a );
setScaleKey( spep_5 + 58, 1, 0.09+a, 0.07+a );
]]
setScaleKey( spep_5 + 60, 1, 0, 0 );

setRotateKey( spep_5 + 0, 1, 9 );
setRotateKey( spep_5 + 2, 1, 46.7 );
setRotateKey( spep_5 + 4, 1, 84.4 );
setRotateKey( spep_5 + 6, 1, 139.2 );
setRotateKey( spep_5 + 8, 1, 194 );
setRotateKey( spep_5 + 10, 1, 221.9 );
setRotateKey( spep_5 + 12, 1, 249.7 );
setRotateKey( spep_5 + 14, 1, 293.8 );
setRotateKey( spep_5 + 16, 1, 337.9 );
setRotateKey( spep_5 + 18, 1, 369 );
setRotateKey( spep_5 + 20, 1, 406.7 );
setRotateKey( spep_5 + 22, 1, 444.4 );
setRotateKey( spep_5 + 24, 1, 499.2 );
setRotateKey( spep_5 + 26, 1, 554 );
setRotateKey( spep_5 + 28, 1, 581.9 );
setRotateKey( spep_5 + 30, 1, 609.7 );
setRotateKey( spep_5 + 32, 1, 653.8 );
setRotateKey( spep_5 + 34, 1, 679.9 );
setRotateKey( spep_5 + 36, 1, 729 );
setRotateKey( spep_5 + 38, 1, 766.7 );
setRotateKey( spep_5 + 40, 1, 804.4 );
setRotateKey( spep_5 + 42, 1, 859.2 );
setRotateKey( spep_5 + 44, 1, 914 );
setRotateKey( spep_5 + 46, 1,941.9 );
setRotateKey( spep_5 + 48, 1, 969.7 );
setRotateKey( spep_5 + 50, 1, 1013);
setRotateKey( spep_5 + 52, 1, 1057.9 );
setRotateKey( spep_5 + 54, 1, 1089 );
setRotateKey( spep_5 + 56, 1, 1126.7 );
setRotateKey( spep_5 + 58, 1, 1164.4 );
setRotateKey( spep_5 + 60, 1, 1164.4 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5  , 1053 );  --
playSe( spep_5+60  , 3 );  --

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 60 );
entryFade( spep_5 + 126, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 138 );

else 
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭(98F)
------------------------------------------------------
spep_0=0;
-- ** エフェクト等 ** --
boutou = entryEffectLife( spep_0 + 0, SP_01x, 98, 0x80, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_0 + 0, boutou, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, boutou, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, boutou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, boutou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boutou, 0 );
setEffRotateKey( spep_0 + 98, boutou, 0 );
setEffAlphaKey( spep_0 + 0, boutou, 255 );
setEffAlphaKey( spep_0 + 98, boutou, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 98, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 15, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 12,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 12, ctgogo, 70, 10 );

setEffMoveKey( spep_0 + 12, ctgogo, -8.5, 515.5, 0 );
setEffMoveKey( spep_0 + 82, ctgogo, -8.5, 515.5, 0 );

setEffScaleKey( spep_0 + 12, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 74, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 76, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 78, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 80, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 82, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 12, ctgogo, 0 );
setEffRotateKey( spep_0 + 82, ctgogo, 0 );

setEffAlphaKey( spep_0 + 12, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 12, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 84, 12, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;

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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 岩投げる(168F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru_f = entryEffectLife( spep_2 + 0, SP_02x, 168, 0x100, -1, 0, 0, 0 );  --岩投げる　手前(ef_002)
setEffMoveKey( spep_2 + 0, nageru_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 168, nageru_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageru_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 168, nageru_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, nageru_f, 0 );
setEffRotateKey( spep_2 + 168, nageru_f, 0 );
setEffAlphaKey( spep_2 + 0, nageru_f, 255 );
setEffAlphaKey( spep_2 + 168, nageru_f, 255 );

nageru_b = entryEffectLife( spep_2 + 0, SP_03x, 168, 0x80, -1, 0, 0, 0 );  --岩投げる　奥(ef_003)
setEffMoveKey( spep_2 + 0, nageru_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 168, nageru_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageru_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 168, nageru_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, nageru_b, 0 );
setEffRotateKey( spep_2 + 168, nageru_b, 0 );
setEffAlphaKey( spep_2 + 0, nageru_b, 255 );
setEffAlphaKey( spep_2 + 168, nageru_b, 255 );

--細い集中線入れる
shuchusen2 = entryEffectLife( spep_2 -3 + 120,  924, 48, 0x80, -1, 0, 390, 200 );  --集中線

setEffMoveKey( spep_2 -3 + 120, shuchusen2, -390, 200 , 0 );
setEffMoveKey( spep_2 -3 + 168, shuchusen2, -390, 200 , 0 );

setEffScaleKey( spep_2 -3 + 120, shuchusen2, -1.49, 1.51  );
setEffScaleKey( spep_2 -3 + 168, shuchusen2, -1.49, 1.51  );

setEffRotateKey( spep_2 -3 + 120, shuchusen2, -145.1 );
setEffRotateKey( spep_2 -3 + 168, shuchusen2, -145.1 );

setEffAlphaKey( spep_2 -3 + 120, shuchusen2, 255 );
setEffAlphaKey( spep_2 -3 + 168, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2-3 + 120,  10012, 46, 0x100, -1, 0, 75.7, -33 );  --ズオッ
setEffMoveKey( spep_2-3 + 120, ctzuo, 75.7, -33 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzuo, 40.6, 20.6 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, 5.5, 74.2 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, -29.6, 127.9 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, -29.5, 128.1 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, -29.4, 128.4 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, -29.3, 128.6 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, -29.2, 129 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, -29.1, 129.1 , 0 );
setEffMoveKey( spep_2-3 + 138, ctzuo, -29, 129.5 , 0 );
setEffMoveKey( spep_2-3 + 140, ctzuo, -28.9, 129.7 , 0 );
setEffMoveKey( spep_2-3 + 142, ctzuo, -28.7, 130 , 0 );
setEffMoveKey( spep_2-3 + 144, ctzuo, -28.6, 130.2 , 0 );
setEffMoveKey( spep_2-3 + 146, ctzuo, -28.5, 130.6 , 0 );
setEffMoveKey( spep_2-3 + 148, ctzuo, -28.4, 130.7 , 0 );
setEffMoveKey( spep_2-3 + 150, ctzuo, -28.3, 131.1 , 0 );
setEffMoveKey( spep_2-3 + 152, ctzuo, -28.2, 131.3 , 0 );
setEffMoveKey( spep_2-3 + 154, ctzuo, -28.1, 131.6 , 0 );
setEffMoveKey( spep_2-3 + 156, ctzuo, -28, 131.8 , 0 );
setEffMoveKey( spep_2-3 + 158, ctzuo, -27.9, 132.1 , 0 );
setEffMoveKey( spep_2-3 + 160, ctzuo, -27.8, 132.3 , 0 );
setEffMoveKey( spep_2-3 + 162, ctzuo, -27.7, 132.7 , 0 );
setEffMoveKey( spep_2-3 + 164, ctzuo, -27.6, 132.8 , 0 );
setEffMoveKey( spep_2-3 + 166, ctzuo, -27.5, 133.3 , 0 );

setEffScaleKey( spep_2-3 + 120, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_2-3 + 122, ctzuo, 1.05, 1.05 );
setEffScaleKey( spep_2-3 + 124, ctzuo, 1.9, 1.9 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 2.94, 2.94 );
setEffScaleKey( spep_2-3 + 128, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_2-3 + 130, ctzuo, 2.97, 2.97 );
setEffScaleKey( spep_2-3 + 132, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2-3 + 134, ctzuo, 2.99, 2.99 );
setEffScaleKey( spep_2-3 + 136, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2-3 + 138, ctzuo, 3.02, 3.02 );
setEffScaleKey( spep_2-3 + 140, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_2-3 + 142, ctzuo, 3.06, 3.06 );
setEffScaleKey( spep_2-3 + 144, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_2-3 + 146, ctzuo, 3.08, 3.08 );
setEffScaleKey( spep_2-3 + 148, ctzuo, 2.94, 2.94 );
setEffScaleKey( spep_2-3 + 150, ctzuo, 3.11, 3.11 );
setEffScaleKey( spep_2-3 + 152, ctzuo, 2.97, 2.97 );
setEffScaleKey( spep_2-3 + 154, ctzuo, 3.13, 3.13 );
setEffScaleKey( spep_2-3 + 156, ctzuo, 3, 3 );
setEffScaleKey( spep_2-3 + 158, ctzuo, 3.16, 3.16 );
setEffScaleKey( spep_2-3 + 160, ctzuo, 3.02, 3.02 );
setEffScaleKey( spep_2-3 + 162, ctzuo, 3.19, 3.19 );
setEffScaleKey( spep_2-3 + 164, ctzuo, 3.05, 3.05 );
setEffScaleKey( spep_2-3 + 166, ctzuo, 3.21, 3.21 );

setEffRotateKey( spep_2-3 + 120, ctzuo, 2 );
setEffRotateKey( spep_2-3 + 166, ctzuo, 2 );

setEffAlphaKey( spep_2-3 + 120, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 166, ctzuo, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 60, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 160, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 +	16	, 44 );
playSe( spep_2 +	92	, 1007 );
playSe( spep_2 +	118	, SE_04 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--playSe( spep_2 + 2, 1021 );  --

-- ** 次の準備 ** --
spep_3 = spep_2 + 168;

------------------------------------------------------
-- 岩当たる(78F)
------------------------------------------------------
-- ** エフェクト等 ** --
ataru_sora = entryEffectLife( spep_3 + 0, SP_06x, 78, 0x80, -1, 0, 0, 0 );  --岩当たる　空(ef_006)
setEffMoveKey( spep_3 + 0, ataru_sora, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, ataru_sora, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ataru_sora, -1.0, 1.0 );
setEffScaleKey( spep_3 + 78, ataru_sora, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ataru_sora, 0 );
setEffRotateKey( spep_3 + 78, ataru_sora, 0 );
setEffAlphaKey( spep_3 + 0, ataru_sora, 255 );
setEffAlphaKey( spep_3 + 78, ataru_sora, 255 );

ataru_f = entryEffectLife( spep_3 + 0, SP_04x, 78, 0x100, -1, 0, 0, 0 );  --岩当たる　手前(ef_004)
setEffMoveKey( spep_3 + 0, ataru_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, ataru_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ataru_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 78, ataru_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ataru_f, 0 );
setEffRotateKey( spep_3 + 78, ataru_f, 0 );
setEffAlphaKey( spep_3 + 0, ataru_f, 255 );
setEffAlphaKey( spep_3 + 78, ataru_f, 255 );

ataru_b = entryEffectLife( spep_3 + 0, SP_05x, 78, 0x80, -1, 0, 0, 0 );  --岩当たる　空(ef_005)
setEffMoveKey( spep_3 + 0, ataru_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, ataru_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ataru_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 78, ataru_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ataru_b, 0 );
setEffRotateKey( spep_3 + 78, ataru_b, 0 );
setEffAlphaKey( spep_3 + 0, ataru_b, 255 );
setEffAlphaKey( spep_3 + 78, ataru_b, 255 );

--細い集中線入れる
shuchusen3 = entryEffectLife( spep_3 ,  924, 52, 0x80, -1, 0, 100, -130 );  --集中線

setEffMoveKey( spep_3 , shuchusen3, 100, -130 , 0 );
setEffMoveKey( spep_3 + 52, shuchusen3, 100, -130 , 0 );

setEffScaleKey( spep_3 , shuchusen3, -1.19, 1.71  );
setEffScaleKey( spep_3 + 52, shuchusen3, -1.19, 1.71  );

setEffRotateKey( spep_3 , shuchusen3, -325.1 );
setEffRotateKey( spep_3 + 52, shuchusen3, -325.1 );

setEffAlphaKey( spep_3 , shuchusen3, 255 );
setEffAlphaKey( spep_3 + 52, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_3 + 0, 10014, 44, 0x100, -1, 0, 6.4, 391 );  --ズドドド

setEffShake( spep_3 , ctzudo, 44, 10 );

setEffMoveKey( spep_3 + 0, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 2, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 4, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 6, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 8, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 10, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 12, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 14, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 16, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 18, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 20, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 22, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 24, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 26, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 28, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 30, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 32, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 34, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 36, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 38, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 40, ctzudo, -6.4, 391 , 0 );
setEffMoveKey( spep_3 + 42, ctzudo, -6.1, 366.7 , 0 );
setEffMoveKey( spep_3 + 44, ctzudo, -6.4, 391 , 0 );
--setEffMoveKey( spep_3 + 46, ctzudo, -6.1, 366.7 , 0 );

setEffScaleKey( spep_3 + 0, ctzudo, 2.54, 2.54 );
setEffScaleKey( spep_3 + 44, ctzudo, 2.54, 2.54 );

setEffRotateKey( spep_3 + 0, ctzudo, -22.2 );
setEffRotateKey( spep_3 + 44, ctzudo, -22.2 );

setEffAlphaKey( spep_3 + 0, ctzudo, 255 );
setEffAlphaKey( spep_3 + 44, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 14, 1, 1 );
setDisp( spep_3 -3 + 76, 1, 0 );
changeAnime( spep_3 -3 + 14, 1, 0 );  --待ち
changeAnime( spep_3 -3 + 46, 1, 8 );  --くの字

setMoveKey( spep_3 -3 + 14, 1, -356, 249.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -347.3, 256.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -317.7, 248.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -318, 225 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -294.3, 234.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -297.7, 208.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -289, 215.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -259.3, 207.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -259.6, 184.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -236, 193.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -239.3, 167.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -230.6, 174.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -201, 166.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -201.3, 143.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -177.6, 152.9 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -181, 126.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -108.8, 48.8 , 0 );  --着弾
setMoveKey( spep_3 -3 + 48, 1, -115.6, 26.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -152.4, -10 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -165.2, -13.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -205, -53.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -229.8, -75.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -254.6, -96.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -276.6, -163.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -298.7, -229.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -320.8, -296.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -342.9, -362.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -365.1, -429 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -387.3, -495.2 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -409.5, -561.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -431.8, -627.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -454.1, -693.8 , 0 );

setScaleKey( spep_3 -3 + 14, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 16, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 18, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 20, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 22, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 24, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 26, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 28, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 30, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 32, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 34, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 36, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 38, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 40, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 42, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 44, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 46, 1, 1.44, 1.44 );  --着弾
setScaleKey( spep_3 -3 + 76, 1, 1.44, 1.44 );

setRotateKey( spep_3 -3 + 14, 1, 0 );
setRotateKey( spep_3 -3 + 45, 1, 0 );
setRotateKey( spep_3 -3 + 46, 1, -16.1 );  --着弾
setRotateKey( spep_3 -3 + 48, 1, -10.1 );
setRotateKey( spep_3 -3 + 50, 1, -4.1 );
setRotateKey( spep_3 -3 + 52, 1, 1.9 );
setRotateKey( spep_3 -3 + 54, 1, 7.8 );
setRotateKey( spep_3 -3 + 56, 1, 13.8 );
setRotateKey( spep_3 -3 + 58, 1, 19.8 );
setRotateKey( spep_3 -3 + 60, 1, 25.1 );
setRotateKey( spep_3 -3 + 62, 1, 30.5 );
setRotateKey( spep_3 -3 + 64, 1, 35.8 );
setRotateKey( spep_3 -3 + 66, 1, 41.2 );
setRotateKey( spep_3 -3 + 68, 1, 46.5 );
setRotateKey( spep_3 -3 + 70, 1, 51.9 );
setRotateKey( spep_3 -3 + 72, 1, 57.2 );
setRotateKey( spep_3 -3 + 74, 1, 62.6 );
setRotateKey( spep_3 -3 + 76, 1, 67.9 );



-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 66, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    

    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, -294.3, 234.8, 0);
    setScaleKey(SP_dodge , 1 ,0.66, 0.66 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, -294.3, 234.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.66, 0.66 );
    setRotateKey(SP_dodge+10,   1, 0);

    
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

-- ** 音 ** --
playSe( spep_3 + 2, SE_04 );  --
playSe( spep_3 + 44, 1010 );  --

-- ** 次の準備 ** --
spep_4 = spep_3 + 78;


------------------------------------------------------
-- ジャンプして蹴る(168F)
------------------------------------------------------

-- ** エフェクト等 ** --
janp_f = entryEffectLife( spep_4 + 0, SP_07x, 168, 0x100, -1, 0, 0, 0 );  --ジャンプして蹴る　手前(ef_007)
setEffMoveKey( spep_4 + 0, janp_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 168, janp_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, janp_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 168, janp_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, janp_f, 0 );
setEffRotateKey( spep_4 + 168, janp_f, 0 );
setEffAlphaKey( spep_4 + 0, janp_f, 255 );
setEffAlphaKey( spep_4 + 168, janp_f, 255 );

janp_b = entryEffectLife( spep_4 + 0, SP_08x, 168, 0x80, -1, 0, 0, 0 );  --ジャンプして蹴る　奥(ef_008)
setEffMoveKey( spep_4 + 0, janp_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 168, janp_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, janp_b, -1.1, 1.1 );
setEffScaleKey( spep_4 + 168, janp_b, -1.1, 1.1 );
setEffRotateKey( spep_4 + 0, janp_b, 0 );
setEffRotateKey( spep_4 + 168, janp_b, 0 );
setEffAlphaKey( spep_4 + 0, janp_b, 255 );
setEffAlphaKey( spep_4 + 168, janp_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_4 -3 + 24,  914, 144, 0x80, -1, 0, 9.6, -127.4 );  --細い縦の流線
setEffMoveKey( spep_4 -3 + 24, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 168, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 24, ryusen1, -2.21, 1.32 );
setEffScaleKey( spep_4 -3 + 168, ryusen1, -2.21, 1.32 );

setEffRotateKey( spep_4 -3 + 24, ryusen1, 90 );
setEffRotateKey( spep_4 -3 + 168, ryusen1, 90 );

setEffAlphaKey( spep_4 -3 + 24, ryusen1, 128 );
setEffAlphaKey( spep_4 -3 + 168, ryusen1, 128 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 96,  906, 30, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 96, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 96, shuchusen4, 1.21, 1.21 );
setEffScaleKey( spep_4 + 126, shuchusen4, 1.21, 1.21 );

setEffRotateKey( spep_4 + 96, shuchusen4, 180 );
setEffRotateKey( spep_4 + 126, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 96, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 97, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 98, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 124, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 125, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 126, shuchusen4, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_4 -3 + 100,  10021, 34, 0x100, -1, 0, -8.3, -228.5 );  --バゴォッ
setEffMoveKey( spep_4 -3 + 100, ctbago, -8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 102, ctbago, -10.9, -232.5 , 0 );
setEffMoveKey( spep_4 -3 + 104, ctbago, -8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 106, ctbago, -12.5, -235.2 , 0 );
setEffMoveKey( spep_4 -3 + 108, ctbago, -8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 110, ctbago, -12.7, -235.5 , 0 );
setEffMoveKey( spep_4 -3 + 112, ctbago, -8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 114, ctbago, -12.9, -235.9 , 0 );
setEffMoveKey( spep_4 -3 + 116, ctbago, -8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 118, ctbago, -13.2, -236.2 , 0 );
setEffMoveKey( spep_4 -3 + 120, ctbago, -8.3, -228.6 , 0 );
setEffMoveKey( spep_4 -3 + 122, ctbago, -13.4, -236.5 , 0 );
setEffMoveKey( spep_4 -3 + 124, ctbago, -8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 126, ctbago, -13.6, -236.9 , 0 );
setEffMoveKey( spep_4 -3 + 128, ctbago, -8.3, -228.5 , 0 );
setEffMoveKey( spep_4 -3 + 130, ctbago, -13.9, -237.2 , 0 );
setEffMoveKey( spep_4 -3 + 134, ctbago, -8.3, -228.6 , 0 );

setEffScaleKey( spep_4 -3 + 100, ctbago, 1.02, 1.02 );
setEffScaleKey( spep_4 -3 + 102, ctbago, 1.52, 1.52 );
setEffScaleKey( spep_4 -3 + 104, ctbago, 2.01, 2.01 );
setEffScaleKey( spep_4 -3 + 106, ctbago, 2.5, 2.5 );
setEffScaleKey( spep_4 -3 + 108, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_4 -3 + 110, ctbago, 2.63, 2.63 );
setEffScaleKey( spep_4 -3 + 112, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_4 -3 + 114, ctbago, 2.75, 2.75 );
setEffScaleKey( spep_4 -3 + 116, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_4 -3 + 118, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_4 -3 + 120, ctbago, 2.94, 2.94 );
setEffScaleKey( spep_4 -3 + 122, ctbago, 3.01, 3.01 );
setEffScaleKey( spep_4 -3 + 124, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_4 -3 + 126, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_4 -3 + 128, ctbago, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 130, ctbago, 3.26, 3.26 );
setEffScaleKey( spep_4 -3 + 132, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_4 -3 + 134, ctbago, 3.39, 3.39 );

setEffRotateKey( spep_4 -3 + 100, ctbago, 14.1 );
setEffRotateKey( spep_4 -3 + 102, ctbago, 14.2 );
setEffRotateKey( spep_4 -3 + 134, ctbago, 14.2 );

setEffAlphaKey( spep_4 -3 + 100, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 106, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 108, ctbago, 237 );
setEffAlphaKey( spep_4 -3 + 110, ctbago, 219 );
setEffAlphaKey( spep_4 -3 + 112, ctbago, 200 );
setEffAlphaKey( spep_4 -3 + 114, ctbago, 182 );
setEffAlphaKey( spep_4 -3 + 116, ctbago, 164 );
setEffAlphaKey( spep_4 -3 + 118, ctbago, 146 );
setEffAlphaKey( spep_4 -3 + 120, ctbago, 128 );
setEffAlphaKey( spep_4 -3 + 122, ctbago, 109 );
setEffAlphaKey( spep_4 -3 + 124, ctbago, 91 );
setEffAlphaKey( spep_4 -3 + 126, ctbago, 73 );
setEffAlphaKey( spep_4 -3 + 128, ctbago, 55 );
setEffAlphaKey( spep_4 -3 + 130, ctbago, 36 );
setEffAlphaKey( spep_4 -3 + 132, ctbago, 18 );
setEffAlphaKey( spep_4 -3 + 134, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 68, 1, 1 );
setDisp( spep_4-3 + 140, 1, 0 );
changeAnime( spep_4 + 68, 1, 6 );  --仰け反り
changeAnime( spep_4-3 + 100, 1, 8 );  --くの字

setMoveKey( spep_4 + 68, 1, 39.1, 392.7 , 0 );
setMoveKey( spep_4 + 70, 1, 29.3, 611.3 , 0 );
setMoveKey( spep_4 + 72, 1, 37.5, 585.9 , 0 );
setMoveKey( spep_4 + 74, 1, 39.1, 553.3 , 0 );
setMoveKey( spep_4 + 76, 1, 27.7, 512.5 , 0 );
setMoveKey( spep_4 + 78, 1, 41.9, 482.6 , 0 );
setMoveKey( spep_4 + 80, 1, 26.3, 443.2 , 0 );
setMoveKey( spep_4 + 82, 1, 40.5, 407.8 , 0 );
setMoveKey( spep_4 + 84, 1, 36.1, 385.2 , 0 );
setMoveKey( spep_4 + 86, 1, 30.7, 334.4 , 0 );
setMoveKey( spep_4 + 88, 1, 38.9, 314.6 , 0 );
setMoveKey( spep_4 + 90, 1, 29.3, 265.2 , 0 );
setMoveKey( spep_4 + 92, 1, 37.5, 239.8 , 0 );
setMoveKey( spep_4 + 94, 1, 39.1, 207.2 , 0 );
setMoveKey( spep_4 + 96, 1, 27.7, 166.4 , 0 );
--setMoveKey( spep_4 + 98, 1, -41.9, 136.6 , 0 );
setMoveKey( spep_4 -3 + 100, 1, -53.8, 126.4 , 0 );  --ダメージ
setMoveKey( spep_4 -3 + 102, 1, -2.4, 129.2 , 0 );
setMoveKey( spep_4 -3 + 104, 1, -59.3, 135.7 , 0 );
setMoveKey( spep_4 -3 + 106, 1, -15.7, 169.2 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -41.1, 203.5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -14.5, 191.9 , 0 );
setMoveKey( spep_4 -3 + 112, 1, -13.6, 204.5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, -26.1, 207.4 , 0 );
setMoveKey( spep_4 -3 + 116, 1, -26.5, 223.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, -24.7, 257.4 , 0 );
setMoveKey( spep_4 -3 + 120, 1, -20.2, 240.6 , 0 );
setMoveKey( spep_4 -3 + 122, 1, -21.8, 256.2 , 0 );
setMoveKey( spep_4 -3 + 124, 1, -15.7, 268.8 , 0 );
setMoveKey( spep_4 -3 + 126, 1, -12, 293.1 , 0 );
setMoveKey( spep_4 -3 + 128, 1, -24.3, 251.1 , 0 );
setMoveKey( spep_4 -3 + 130, 1, -14.4, 368.1 , 0 );
setMoveKey( spep_4 -3 + 132, 1, -19.5, 482.7 , 0 );
setMoveKey( spep_4 -3 + 134, 1, -17.8, 605.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, -16.6, 702.3 , 0 );
setMoveKey( spep_4 -3 + 138, 1, -9.2, 822.9 , 0 );
setMoveKey( spep_4 -3 + 140, 1, -13.8, 935.3 , 0 );

setScaleKey( spep_4 + 68, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 70, 1, 2.07, 2.07 );
setScaleKey( spep_4-3 + 99, 1, 2.57, 2.07 );
setScaleKey( spep_4-3 + 100, 1, 2.31, 2.31 );  --ダメージ
setScaleKey( spep_4-3 + 102, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 104, 1, 2.28, 2.28 );
setScaleKey( spep_4-3 + 106, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 108, 1, 2.24, 2.24 );
setScaleKey( spep_4-3 + 110, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 112, 1, 2.22, 2.22 );
setScaleKey( spep_4-3 + 114, 1, 2.21, 2.21 );
setScaleKey( spep_4-3 + 116, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 118, 1, 2.18, 2.18 );
setScaleKey( spep_4-3 + 120, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 122, 1, 2.15, 2.15 );
setScaleKey( spep_4-3 + 124, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 126, 1, 2.12, 2.12 );
setScaleKey( spep_4-3 + 128, 1, 2.11, 2.11 );
setScaleKey( spep_4-3 + 130, 1, 2.1, 2.1 );
setScaleKey( spep_4-3 + 132, 1, 2.09, 2.09 );
setScaleKey( spep_4-3 + 134, 1, 2.09, 2.09 );
setScaleKey( spep_4-3 + 136, 1, 2.08, 2.08 );
setScaleKey( spep_4-3 + 138, 1, 2.07, 2.07 );
setScaleKey( spep_4-3 + 140, 1, 2.06, 2.06 );

setRotateKey( spep_4 + 68, 1, 113.1 );
setRotateKey( spep_4-3 + 98, 1, 113.1 );
setRotateKey( spep_4-3 + 99, 1, 113.1 );
setRotateKey( spep_4-3 + 100, 1, 94 );  --ダメージ
setRotateKey( spep_4-3 + 102, 1, 93.4 );
setRotateKey( spep_4-3 + 104, 1, 92.6 );
setRotateKey( spep_4-3 + 106, 1, 91.9 );
setRotateKey( spep_4-3 + 108, 1, 91.1 );
setRotateKey( spep_4-3 + 110, 1, 90.4 );
setRotateKey( spep_4-3 + 112, 1, 89.6 );
setRotateKey( spep_4-3 + 114, 1, 88.9 );
setRotateKey( spep_4-3 + 116, 1, 88.1 );
setRotateKey( spep_4-3 + 118, 1, 87.4 );
setRotateKey( spep_4-3 + 120, 1, 86.6 );
setRotateKey( spep_4-3 + 122, 1, 85.9 );
setRotateKey( spep_4-3 + 124, 1, 85.1 );
setRotateKey( spep_4-3 + 126, 1, 84.4 );
setRotateKey( spep_4-3 + 128, 1, 83.6 );
setRotateKey( spep_4-3 + 130, 1, 77.5 );
setRotateKey( spep_4-3 + 132, 1, 71.4 );
setRotateKey( spep_4-3 + 134, 1, 65.3 );
setRotateKey( spep_4-3 + 136, 1, 59.2 );
setRotateKey( spep_4-3 + 138, 1, 53.2 );
setRotateKey( spep_4-3 + 140, 1, 47.1 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 60, 6, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 160, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 22, 1017 );  --
--playSe( spep_4 + 32, 44 );  --
playSe( spep_4 + 96, 1011 );  --

-- ** 次の準備 ** --
spep_5 = spep_4 + 168;



------------------------------------------------------
-- キラン(138F)
------------------------------------------------------

-- ** エフェクト等 ** --
kiran_f = entryEffect( spep_5 + 0, SP_09x,  0x100, -1, 0, 0, 0 );  --キラン　手前(ef_009)
setEffMoveKey( spep_5 + 0, kiran_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 138, kiran_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kiran_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 138, kiran_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kiran_f, 0 );
setEffRotateKey( spep_5 + 138, kiran_f, 0 );
setEffAlphaKey( spep_5 + 0, kiran_f, 255 );
setEffAlphaKey( spep_5 + 138, kiran_f, 255 );

kiran_b = entryEffect( spep_5 + 0, SP_10x,  0x80, -1, 0, 0, 0 );  --キラン　奥(ef_010)
setEffMoveKey( spep_5 + 0, kiran_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 138, kiran_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kiran_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 138, kiran_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kiran_b, 0 );
setEffRotateKey( spep_5 + 138, kiran_b, 0 );
setEffAlphaKey( spep_5 + 0, kiran_b, 255 );
setEffAlphaKey( spep_5 + 138, kiran_b, 255 );


-- ** エフェクト等 ** 
shuchusen5 = entryEffectLife( spep_5 +24 ,  906, 114, 0x80, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_5 +24 , shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5  + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 +24 , shuchusen5, 1.3, 1.3  );
setEffScaleKey( spep_5 + 138, shuchusen5, 1.3, 1.3  );

setEffRotateKey( spep_5 +24 , shuchusen5, 90 );
setEffRotateKey( spep_5  + 138, shuchusen5, 90 );

setEffAlphaKey( spep_5 +24 , shuchusen5, 0 );
setEffAlphaKey( spep_5 +25 , shuchusen5, 255 );
setEffAlphaKey( spep_5 +26 , shuchusen5, 255 );
setEffAlphaKey( spep_5  + 138, shuchusen5, 255 );

--[[
--細い集中線入れる
shuchusen6 = entryEffectLife( spep_5 ,  924, 138, 0x80, -1, 0, -530, 0 );  --集中線

setEffMoveKey( spep_5 , shuchusen6, 0, -530 , 0 );
setEffMoveKey( spep_5 + 138, shuchusen6, 0, -530 , 0 );

setEffScaleKey( spep_5 , shuchusen6, 1.0, 1.2  );
setEffScaleKey( spep_5 + 138, shuchusen6, 1.0, 1.2  );

setEffRotateKey( spep_5 , shuchusen6, -90 );
setEffRotateKey( spep_5 + 138, shuchusen6, -90 );

setEffAlphaKey( spep_5 , shuchusen6, 255 );
setEffAlphaKey( spep_5 + 138, shuchusen6, 255 );
]]

--普通の集中線入れる

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 8 );  --くの字

setMoveKey( spep_5 + 0, 1, -14.6, -373.8 , 0 );
setMoveKey( spep_5 + 2, 1, -26.7, -356.3 , 0 );
setMoveKey( spep_5 + 4, 1, -34.3, -332 , 0 );
setMoveKey( spep_5 + 6, 1, -31.8, -300.4 , 0 );
setMoveKey( spep_5 + 8, 1, -16.3, -277.8 , 0 );
setMoveKey( spep_5 + 10, 1, -7.4, -266.4 , 0 );
setMoveKey( spep_5 + 12, 1, -0.8, -257.9 , 0 );
setMoveKey( spep_5 + 14, 1, 2.4, -256.4 , 0 );
setMoveKey( spep_5 + 16, 1, -3.8, -252.9 , 0 );
setMoveKey( spep_5 + 18, 1, -11.6, -239 , 0 );
setMoveKey( spep_5 + 20, 1, -21, -219.9 , 0 );
setMoveKey( spep_5 + 22, 1, -26.5, -195.6 , 0 );
setMoveKey( spep_5 + 24, 1, -24, -165.9 , 0 );
setMoveKey( spep_5 + 26, 1, -11.6, -143.6 , 0 );
setMoveKey( spep_5 + 28, 1, -4.8, -131.3 , 0 );
setMoveKey( spep_5 + 30, 1, 0, -119.4 , 0 );
setMoveKey( spep_5 + 32, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_5 + 34, 1, -1.9, -102.6 , 0 );
setMoveKey( spep_5 + 36, 1, -6.8, -87.6 , 0 );
setMoveKey( spep_5 + 38, 1, -12.3, -69.2 , 0 );
setMoveKey( spep_5 + 40, 1, -15.1, -48.2 , 0 );
setMoveKey( spep_5 + 42, 1, -12.9, -24.4 , 0 );
setMoveKey( spep_5 + 44, 1, -5.4, -5.1 , 0 );
setMoveKey( spep_5 + 46, 1, -1.5, 6.4 , 0 );
setMoveKey( spep_5 + 48, 1, 1.2, 19.9 , 0 );
setMoveKey( spep_5 + 50, 1, 2.3, 32.1 , 0 );
setMoveKey( spep_5 + 52, 1, 0.6, 45.9 , 0 );
setMoveKey( spep_5 + 54, 1, -0.9, 62 , 0 );
setMoveKey( spep_5 + 56, 1, -1.7, 79.4 , 0 );
setMoveKey( spep_5 + 58, 1, -0.8, 97.1 , 0 );
setMoveKey( spep_5 + 60, 1, -2, 2158.2 , 0 );


a=1.8;

setScaleKey( spep_5 + 0, 1, 1.13+a, 1.13+a );
setScaleKey( spep_5 + 2, 1, 1.11+a, 1.11+a );
setScaleKey( spep_5 + 4, 1, 1.09+a, 1.09+a );
setScaleKey( spep_5 + 6, 1, 1.07+a, 1.07+a );
setScaleKey( spep_5 + 8, 1, 1.05+a, 1.05+a );
setScaleKey( spep_5 + 10, 1, 1.02+a, 1.02+a );
setScaleKey( spep_5 + 12, 1, 1+a, 1+a );
--[[
setScaleKey( spep_5 + 14, 1, 0.98+a, 0.98+a );
setScaleKey( spep_5 + 16, 1, 0.95+a, 0.95+a );
setScaleKey( spep_5 + 18, 1, 0.92+a, 0.92+a );
setScaleKey( spep_5 + 20, 1, 0.89+a, 0.89+a );
setScaleKey( spep_5 + 22, 1, 0.85+a, 0.85+a );
setScaleKey( spep_5 + 24, 1, 0.82+a, 0.81+a );
setScaleKey( spep_5 + 26, 1, 0.78+a, 0.78+a );
setScaleKey( spep_5 + 28, 1, 0.74+a, 0.73+a );
setScaleKey( spep_5 + 30, 1, 0.7+a, 0.69+a );
setScaleKey( spep_5 + 32, 1, 0.67+a, 0.65+a );
setScaleKey( spep_5 + 34, 1, 0.63+a, 0.61+a );
setScaleKey( spep_5 + 36, 1, 0.59+a, 0.57+a );
setScaleKey( spep_5 + 38, 1, 0.55+a, 0.54+a );
setScaleKey( spep_5 + 40, 1, 0.51+a, 0.5+a );
setScaleKey( spep_5 + 42, 1, 0.48+a, 0.45+a );
setScaleKey( spep_5 + 44, 1, 0.43+a, 0.41+a );
setScaleKey( spep_5 + 46, 1, 0.39+a, 0.37+a );
setScaleKey( spep_5 + 48, 1, 0.34+a, 0.32+a );
setScaleKey( spep_5 + 50, 1, 0.3+a, 0.28+a );
setScaleKey( spep_5 + 52, 1, 0.25+a, 0.23+a );
setScaleKey( spep_5 + 54, 1, 0.2+a, 0.18+a );
setScaleKey( spep_5 + 56, 1, 0.15+a, 0.13+a );
setScaleKey( spep_5 + 58, 1, 0.09+a, 0.07+a );
]]
setScaleKey( spep_5 + 60, 1, 0, 0 );

setRotateKey( spep_5 + 0, 1, -9 );
setRotateKey( spep_5 + 2, 1, -46.7 );
setRotateKey( spep_5 + 4, 1, -84.4 );
setRotateKey( spep_5 + 6, 1, -139.2 );
setRotateKey( spep_5 + 8, 1, -194 );
setRotateKey( spep_5 + 10, 1, -221.9 );
setRotateKey( spep_5 + 12, 1, -249.7 );
setRotateKey( spep_5 + 14, 1, -293.8 );
setRotateKey( spep_5 + 16, 1, -337.9 );
setRotateKey( spep_5 + 18, 1, -369 );
setRotateKey( spep_5 + 20, 1, -406.7 );
setRotateKey( spep_5 + 22, 1, -444.4 );
setRotateKey( spep_5 + 24, 1, -499.2 );
setRotateKey( spep_5 + 26, 1, -554 );
setRotateKey( spep_5 + 28, 1, -581.9 );
setRotateKey( spep_5 + 30, 1, -609.7 );
setRotateKey( spep_5 + 32, 1, -653.8 );
setRotateKey( spep_5 + 34, 1, -679.9 );
setRotateKey( spep_5 + 36, 1, -729 );
setRotateKey( spep_5 + 38, 1, -766.7 );
setRotateKey( spep_5 + 40, 1, -804.4 );
setRotateKey( spep_5 + 42, 1, -859.2 );
setRotateKey( spep_5 + 44, 1, -914 );
setRotateKey( spep_5 + 46, 1,-941.9 );
setRotateKey( spep_5 + 48, 1, -969.7 );
setRotateKey( spep_5 + 50, 1, -1013);
setRotateKey( spep_5 + 52, 1, -1057.9 );
setRotateKey( spep_5 + 54, 1, -1089 );
setRotateKey( spep_5 + 56, 1, -1126.7 );
setRotateKey( spep_5 + 58, 1, -1164.4 );
setRotateKey( spep_5 + 60, 1, -1164.4 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5  , 1053 );  --
playSe( spep_5+60  , 3 );  --

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 60 );
entryFade( spep_5 + 126, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 138 );



end



--1019270:超サイヤ人トランクス(未来)_シャイニングスラッシュ
--sp_effect_b2_00030

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
SP_01=	154882	;--	導入セリフカットイン
SP_02=	154883	;--	手前突進
SP_03=	154885	;--	斬撃エフェクト⇒フィニッシュ
SP_04=	154887	;--	斬撃エフェクト⇒フィニッシュ

--てき側
SP_01x=	154882	;--	導入セリフカットイン	
SP_02x=	154884	;--	手前突進	(敵)
SP_03x=	154886	;--	斬撃エフェクト⇒フィニッシュ	(敵)
SP_04x=	154887	;--	斬撃エフェクト⇒フィニッシュ	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

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
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +16, 190006, 72, 0x100, -1, 0, 70, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_0 +16,  ctgogo,  70,  510);
setEffMoveKey(  spep_0 +88,  ctgogo,  70,  510);

setEffAlphaKey( spep_0 +16, ctgogo, 0 );
setEffAlphaKey( spep_0 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 191 );
setEffAlphaKey( spep_0 + 86, ctgogo, 112 );
setEffAlphaKey( spep_0 + 88, ctgogo, 64 );

setEffRotateKey(  spep_0 +16,  ctgogo,  0);
setEffRotateKey(  spep_0 +88,  ctgogo,  0);

setEffScaleKey(  spep_0 +16,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +88,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen1 = entryEffectLife( spep_0,  906, 108 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 108 -3, 20 );
setEffMoveKey( spep_0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 35, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 36, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 255 );

--SE
playSe( spep_0 + 16, 1018 );
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 73, 1072 );
setSeVolume( spep_0 + 73, 1072, 0 );
setSeVolume( spep_0 + 87, 1072, 0 );
setSeVolume( spep_0 + 88, 1072, 20 );
setSeVolume( spep_0 + 89, 1072, 40 );
setSeVolume( spep_0 + 90, 1072, 60 );
setSeVolume( spep_0 + 91, 1072, 80 );
setSeVolume( spep_0 + 92, 1072, 100 );

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** しろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 112, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--次の準備
spep_1 = spep_0+110;

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

--白フェード
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 手前突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, tossin, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, tossin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tossin, 0 );
setEffRotateKey( spep_2 + 86, tossin, 0 );
setEffAlphaKey( spep_2 + 0, tossin, 255 );
setEffAlphaKey( spep_2 + 86, tossin, 255 );

ctzudodo = entryEffectLife( spep_2-3 + 10,  10014, 42, 0x100, -1, 0, -47.3, 169.3 );
setEffShake( spep_2-3 + 10, ctzudodo, 42, 10 );
setEffMoveKey( spep_2-3 + 10, ctzudodo, -47.3, 169.3 , 0 );
setEffMoveKey( spep_2-3 + 12, ctzudodo, -27.6, 205 , 0 );
setEffMoveKey( spep_2-3 + 14, ctzudodo, 16.4, 258.2 , 0 );
setEffMoveKey( spep_2-3 + 16, ctzudodo, 28.7, 287.2 , 0 );
setEffMoveKey( spep_2-3 + 18, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 20, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzudodo, 83, 350.1 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzudodo, 50.5, 322.6 , 0 );

setEffScaleKey( spep_2-3 + 10, ctzudodo, 0.98, 1.28 );
setEffScaleKey( spep_2-3 + 12, ctzudodo, 1.48, 1.92 );
setEffScaleKey( spep_2-3 + 14, ctzudodo, 1.98, 2.57 );
setEffScaleKey( spep_2-3 + 16, ctzudodo, 2.48, 3.22 );
setEffScaleKey( spep_2-3 + 18, ctzudodo, 2.98, 3.87 );
setEffScaleKey( spep_2-3 + 48, ctzudodo, 2.98, 3.87 );
setEffScaleKey( spep_2-3 + 50, ctzudodo, 3.81, 4.94 );
setEffScaleKey( spep_2-3 + 52, ctzudodo, 4.65, 6.02 );

setEffRotateKey( spep_2-3 + 10, ctzudodo, 80.1 );
setEffRotateKey( spep_2-3 + 12, ctzudodo, 78.4 );
setEffRotateKey( spep_2-3 + 14, ctzudodo, 76.7 );
setEffRotateKey( spep_2-3 + 16, ctzudodo, 75 );
setEffRotateKey( spep_2-3 + 18, ctzudodo, 73.4 );
setEffRotateKey( spep_2-3 + 50, ctzudodo, 73.4 );
setEffRotateKey( spep_2-3 + 52, ctzudodo, 73.5 );

setEffAlphaKey( spep_2-3 + 10, ctzudodo, 26 );
setEffAlphaKey( spep_2-3 + 12, ctzudodo, 83 );
setEffAlphaKey( spep_2-3 + 14, ctzudodo, 140 );
setEffAlphaKey( spep_2-3 + 16, ctzudodo, 198 );
setEffAlphaKey( spep_2-3 + 18, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 48, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 50, ctzudodo, 140 );
setEffAlphaKey( spep_2-3 + 52, ctzudodo, 26 );

--敵側
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 48, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 170.6, -429.9 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 172, -432.4 , 0 );
setMoveKey( spep_2-3 + 4, 1, 173.4, -434.9 , 0 );
setMoveKey( spep_2-3 + 6, 1, 174.8, -437.5 , 0 );
setMoveKey( spep_2-3 + 8, 1, 176.2, -440.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 177.8, -442.9 , 0 );
setMoveKey( spep_2-3 + 12, 1, 179.4, -445.8 , 0 );
setMoveKey( spep_2-3 + 14, 1, 181.1, -448.9 , 0 );
setMoveKey( spep_2-3 + 16, 1, 183, -452.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, 185, -456 , 0 );
setMoveKey( spep_2-3 + 20, 1, 187.3, -460.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 189.8, -464.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 192.7, -470 , 0 );
setMoveKey( spep_2-3 + 26, 1, 196, -475.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 199.8, -482.8 , 0 );
setMoveKey( spep_2-3 + 30, 1, 204.2, -490.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 209.4, -500.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, 215.6, -511.5 , 0 );
setMoveKey( spep_2-3 + 36, 1, 222.9, -524.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 231.8, -541 , 0 );
setMoveKey( spep_2-3 + 40, 1, 260.7, -593.5 , 0 );
setMoveKey( spep_2-3 + 42, 1, 308.5, -680.1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 392.7, -832.9 , 0 );
setMoveKey( spep_2-3 + 46, 1, 548.6, -1115.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 812.3, -1593.8 , 0 );

setScaleKey( spep_2 + 0, 1, 4, 4 );
--setScaleKey( spep_2-3 + 2, 1, 4.01, 4.01 );
setScaleKey( spep_2-3 + 4, 1, 4.03, 4.03 );
setScaleKey( spep_2-3 + 6, 1, 4.04, 4.04 );
setScaleKey( spep_2-3 + 8, 1, 4.05, 4.05 );
setScaleKey( spep_2-3 + 10, 1, 4.07, 4.07 );
setScaleKey( spep_2-3 + 12, 1, 4.08, 4.08 );
setScaleKey( spep_2-3 + 14, 1, 4.1, 4.1 );
setScaleKey( spep_2-3 + 16, 1, 4.11, 4.11 );
setScaleKey( spep_2-3 + 18, 1, 4.13, 4.13 );
setScaleKey( spep_2-3 + 20, 1, 4.15, 4.15 );
setScaleKey( spep_2-3 + 22, 1, 4.18, 4.18 );
setScaleKey( spep_2-3 + 24, 1, 4.2, 4.2 );
setScaleKey( spep_2-3 + 26, 1, 4.24, 4.24 );
setScaleKey( spep_2-3 + 28, 1, 4.27, 4.27 );
setScaleKey( spep_2-3 + 30, 1, 4.31, 4.31 );
setScaleKey( spep_2-3 + 32, 1, 4.36, 4.36 );
setScaleKey( spep_2-3 + 34, 1, 4.42, 4.42 );
setScaleKey( spep_2-3 + 36, 1, 4.49, 4.49 );
setScaleKey( spep_2-3 + 38, 1, 4.57, 4.57 );
setScaleKey( spep_2-3 + 40, 1, 4.84, 4.84 );
setScaleKey( spep_2-3 + 42, 1, 5.28, 5.28 );
setScaleKey( spep_2-3 + 44, 1, 6.06, 6.06 );
setScaleKey( spep_2-3 + 46, 1, 7.51, 7.51 );
setScaleKey( spep_2-3 + 48, 1, 9.96, 9.96 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 48, 1, 0 );

-- ** しろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--SE
SE0=playSe( spep_2 + 0, 9 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 34 );
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
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
playSe( spep_2 + 33, 8 );
setSeVolume( spep_2 + 33, 8, 126 );



--次の準備
spep_3 = spep_2+86;

------------------------------------------------------
-- 斬撃エフェクト⇒フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 180, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 180, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 180, finish_b, 255 );

--敵側
setDisp( spep_3 -3 + 24, 1, 1 );
setDisp( spep_3 -3 + 100, 1, 0 );

changeAnime( spep_3 -3 + 24, 1, 102 );

--setMoveKey( spep_3-3 + 24, 1, -221.3, -99.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, -8.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, -10.1, -99.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, -11.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, -13.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, -14.8, -99.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, -16.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, -18.3, -99.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, -20.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, -22.3, -99.9 , 0 );
setMoveKey( spep_3-3 + 44, 1, -24.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 46, 1, -27.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, -30.1, -99.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -33.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, -37.4, -99.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, -41.9, -99.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, -47.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, -53.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 60, 1, -61.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, -70.4, -99.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, -81.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, -95.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 68, 1, -112.8, -126.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, -134.7, -83.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, -157.7, -118.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, -200.2, -84.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, -240.1, -118.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, -318, -77.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, -311.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 82, 1, -312, -99.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, -312.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, -313.1, -99.9 , 0 );
setMoveKey( spep_3-3 + 88, 1, -313.7, -99.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, -314.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, -314.7, -99.9 , 0 );
setMoveKey( spep_3-3 + 94, 1, -315.3, -99.9 , 0 );
setMoveKey( spep_3-3 + 96, 1, -315.8, -99.9 , 0 );
setMoveKey( spep_3-3 + 98, 1, -316.4, -99.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, -316.9, -99.9 , 0 );

setScaleKey( spep_3-3 + 24, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 100, 1, 0.8, 0.8 );

setRotateKey( spep_3-3 + 24, 1, 0 );
setRotateKey( spep_3-3 + 100, 1, 0 );

--SE
playSe( spep_3 + 0, 1142 );
setSeVolume( spep_3 + 0, 1142, 89 );
playSe( spep_3 + 8, 1032 );
setSeVolume( spep_3 + 8, 1032, 89 );
playSe( spep_3 + 8, 1141 );
setSeVolume( spep_3 + 8, 1141, 71 );
se_1116 = playSe( spep_3 + 33, 1116 );
setSeVolume( spep_3 + 33, 1116, 63 );
playSe( spep_3 + 72, 1023 );
playSe( spep_3 + 72, 1159 );
setSeVolume( spep_3 + 72, 1159, 79 );

stopSe( spep_3 + 56, se_1116, 34 );

-- ** しろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 170, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 78 );
endPhase( spep_3 + 170 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
---setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +16, 190006, 72, 0x100, -1, 0, 70, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +16,  ctgogo,  70,  510);
setEffMoveKey(  spep_0 +88,  ctgogo,  70,  510);

setEffAlphaKey( spep_0 +16, ctgogo, 0 );
setEffAlphaKey( spep_0 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 191 );
setEffAlphaKey( spep_0 + 86, ctgogo, 112 );
setEffAlphaKey( spep_0 + 88, ctgogo, 64 );

setEffRotateKey(  spep_0 +16,  ctgogo,  0);
setEffRotateKey(  spep_0 +88,  ctgogo,  0);

setEffScaleKey(  spep_0 +16,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +88,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen1 = entryEffectLife( spep_0,  906, 108 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 108 -3, 20 );
setEffMoveKey( spep_0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 35, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 36, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 255 );

--SE
playSe( spep_0 + 16, 1018 );
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 73, 1072 );
setSeVolume( spep_0 + 73, 1072, 0 );
setSeVolume( spep_0 + 87, 1072, 0 );
setSeVolume( spep_0 + 88, 1072, 20 );
setSeVolume( spep_0 + 89, 1072, 40 );
setSeVolume( spep_0 + 90, 1072, 60 );
setSeVolume( spep_0 + 91, 1072, 80 );
setSeVolume( spep_0 + 92, 1072, 100 );

-- ** しろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 112, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+110;

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

--白フェード
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 手前突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, tossin, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, tossin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tossin, 0 );
setEffRotateKey( spep_2 + 86, tossin, 0 );
setEffAlphaKey( spep_2 + 0, tossin, 255 );
setEffAlphaKey( spep_2 + 86, tossin, 255 );

ctzudodo = entryEffectLife( spep_2-3 + 10,  10014, 42, 0x100, -1, 0, -47.3, 169.3 );
setEffShake( spep_2-3 + 10, ctzudodo, 42, 10 );
setEffMoveKey( spep_2-3 + 10, ctzudodo, -47.3, 169.3 , 0 );
setEffMoveKey( spep_2-3 + 12, ctzudodo, -27.6, 205 , 0 );
setEffMoveKey( spep_2-3 + 14, ctzudodo, 16.4, 258.2 , 0 );
setEffMoveKey( spep_2-3 + 16, ctzudodo, 28.7, 287.2 , 0 );
setEffMoveKey( spep_2-3 + 18, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 20, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzudodo, 79.8, 347.5 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzudodo, 57, 328 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzudodo, 83, 350.1 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzudodo, 50.5, 322.6 , 0 );

setEffScaleKey( spep_2-3 + 10, ctzudodo, 0.98, 1.28 );
setEffScaleKey( spep_2-3 + 12, ctzudodo, 1.48, 1.92 );
setEffScaleKey( spep_2-3 + 14, ctzudodo, 1.98, 2.57 );
setEffScaleKey( spep_2-3 + 16, ctzudodo, 2.48, 3.22 );
setEffScaleKey( spep_2-3 + 18, ctzudodo, 2.98, 3.87 );
setEffScaleKey( spep_2-3 + 48, ctzudodo, 2.98, 3.87 );
setEffScaleKey( spep_2-3 + 50, ctzudodo, 3.81, 4.94 );
setEffScaleKey( spep_2-3 + 52, ctzudodo, 4.65, 6.02 );

setEffRotateKey( spep_2-3 + 10, ctzudodo, 10.1 );
setEffRotateKey( spep_2-3 + 12, ctzudodo, 8.4 );
setEffRotateKey( spep_2-3 + 14, ctzudodo, 6.7 );
setEffRotateKey( spep_2-3 + 16, ctzudodo, 5 );
setEffRotateKey( spep_2-3 + 18, ctzudodo, 3.4 );
setEffRotateKey( spep_2-3 + 50, ctzudodo, 3.4 );
setEffRotateKey( spep_2-3 + 52, ctzudodo, 3.5 );

setEffAlphaKey( spep_2-3 + 10, ctzudodo, 26 );
setEffAlphaKey( spep_2-3 + 12, ctzudodo, 83 );
setEffAlphaKey( spep_2-3 + 14, ctzudodo, 140 );
setEffAlphaKey( spep_2-3 + 16, ctzudodo, 198 );
setEffAlphaKey( spep_2-3 + 18, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 48, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 50, ctzudodo, 140 );
setEffAlphaKey( spep_2-3 + 52, ctzudodo, 26 );

--敵側
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 48, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 170.6, -429.9 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 172, -432.4 , 0 );
setMoveKey( spep_2-3 + 4, 1, 173.4, -434.9 , 0 );
setMoveKey( spep_2-3 + 6, 1, 174.8, -437.5 , 0 );
setMoveKey( spep_2-3 + 8, 1, 176.2, -440.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 177.8, -442.9 , 0 );
setMoveKey( spep_2-3 + 12, 1, 179.4, -445.8 , 0 );
setMoveKey( spep_2-3 + 14, 1, 181.1, -448.9 , 0 );
setMoveKey( spep_2-3 + 16, 1, 183, -452.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, 185, -456 , 0 );
setMoveKey( spep_2-3 + 20, 1, 187.3, -460.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 189.8, -464.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 192.7, -470 , 0 );
setMoveKey( spep_2-3 + 26, 1, 196, -475.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 199.8, -482.8 , 0 );
setMoveKey( spep_2-3 + 30, 1, 204.2, -490.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 209.4, -500.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, 215.6, -511.5 , 0 );
setMoveKey( spep_2-3 + 36, 1, 222.9, -524.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 231.8, -541 , 0 );
setMoveKey( spep_2-3 + 40, 1, 260.7, -593.5 , 0 );
setMoveKey( spep_2-3 + 42, 1, 308.5, -680.1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 392.7, -832.9 , 0 );
setMoveKey( spep_2-3 + 46, 1, 548.6, -1115.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 812.3, -1593.8 , 0 );

setScaleKey( spep_2 + 0, 1, 4, 4 );
--setScaleKey( spep_2-3 + 2, 1, 4.01, 4.01 );
setScaleKey( spep_2-3 + 4, 1, 4.03, 4.03 );
setScaleKey( spep_2-3 + 6, 1, 4.04, 4.04 );
setScaleKey( spep_2-3 + 8, 1, 4.05, 4.05 );
setScaleKey( spep_2-3 + 10, 1, 4.07, 4.07 );
setScaleKey( spep_2-3 + 12, 1, 4.08, 4.08 );
setScaleKey( spep_2-3 + 14, 1, 4.1, 4.1 );
setScaleKey( spep_2-3 + 16, 1, 4.11, 4.11 );
setScaleKey( spep_2-3 + 18, 1, 4.13, 4.13 );
setScaleKey( spep_2-3 + 20, 1, 4.15, 4.15 );
setScaleKey( spep_2-3 + 22, 1, 4.18, 4.18 );
setScaleKey( spep_2-3 + 24, 1, 4.2, 4.2 );
setScaleKey( spep_2-3 + 26, 1, 4.24, 4.24 );
setScaleKey( spep_2-3 + 28, 1, 4.27, 4.27 );
setScaleKey( spep_2-3 + 30, 1, 4.31, 4.31 );
setScaleKey( spep_2-3 + 32, 1, 4.36, 4.36 );
setScaleKey( spep_2-3 + 34, 1, 4.42, 4.42 );
setScaleKey( spep_2-3 + 36, 1, 4.49, 4.49 );
setScaleKey( spep_2-3 + 38, 1, 4.57, 4.57 );
setScaleKey( spep_2-3 + 40, 1, 4.84, 4.84 );
setScaleKey( spep_2-3 + 42, 1, 5.28, 5.28 );
setScaleKey( spep_2-3 + 44, 1, 6.06, 6.06 );
setScaleKey( spep_2-3 + 46, 1, 7.51, 7.51 );
setScaleKey( spep_2-3 + 48, 1, 9.96, 9.96 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 48, 1, 0 );

-- ** しろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--SE
SE0=playSe( spep_2 + 0, 9 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 34 );
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
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
playSe( spep_2 + 33, 8 );
setSeVolume( spep_2 + 33, 8, 126 );


--次の準備
spep_3 = spep_2+86;

------------------------------------------------------
-- 斬撃エフェクト⇒フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 180, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 180, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 180, finish_b, 255 );

--敵側
setDisp( spep_3 -3 + 24, 1, 1 );
setDisp( spep_3 -3 + 100, 1, 0 );

changeAnime( spep_3 -3 + 24, 1, 102 );

--setMoveKey( spep_3-3 + 24, 1, -221.3, -99.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, -8.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, -10.1, -99.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, -11.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, -13.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, -14.8, -99.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, -16.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, -18.3, -99.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, -20.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, -22.3, -99.9 , 0 );
setMoveKey( spep_3-3 + 44, 1, -24.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 46, 1, -27.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, -30.1, -99.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -33.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, -37.4, -99.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, -41.9, -99.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, -47.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, -53.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 60, 1, -61.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, -70.4, -99.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, -81.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, -95.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 68, 1, -112.8, -126.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, -134.7, -83.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, -157.7, -118.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, -200.2, -84.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, -240.1, -118.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, -318, -77.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, -311.5, -99.9 , 0 );
setMoveKey( spep_3-3 + 82, 1, -312, -99.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, -312.6, -99.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, -313.1, -99.9 , 0 );
setMoveKey( spep_3-3 + 88, 1, -313.7, -99.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, -314.2, -99.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, -314.7, -99.9 , 0 );
setMoveKey( spep_3-3 + 94, 1, -315.3, -99.9 , 0 );
setMoveKey( spep_3-3 + 96, 1, -315.8, -99.9 , 0 );
setMoveKey( spep_3-3 + 98, 1, -316.4, -99.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, -316.9, -99.9 , 0 );

setScaleKey( spep_3-3 + 24, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 100, 1, 0.8, 0.8 );

setRotateKey( spep_3-3 + 24, 1, 0 );
setRotateKey( spep_3-3 + 100, 1, 0 );

--SE
playSe( spep_3 + 0, 1142 );
setSeVolume( spep_3 + 0, 1142, 89 );
playSe( spep_3 + 8, 1032 );
setSeVolume( spep_3 + 8, 1032, 89 );
playSe( spep_3 + 8, 1141 );
setSeVolume( spep_3 + 8, 1141, 71 );
se_1116 = playSe( spep_3 + 33, 1116 );
setSeVolume( spep_3 + 33, 1116, 63 );
playSe( spep_3 + 72, 1023 );
playSe( spep_3 + 72, 1159 );
setSeVolume( spep_3 + 72, 1159, 79 );

stopSe( spep_3 + 56, se_1116, 34 );

-- ** しろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 170, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 78 );
endPhase( spep_3 + 170 );
end
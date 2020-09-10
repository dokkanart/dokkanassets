--1019980:超サイヤ人ゴッドSS孫悟空&超サイヤ人ゴッドSSベジータ_気円斬&ギャリック砲
--sp_effect_b1_00118

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
SP_01=	155621	;--	溜め〜ベジータダッシュ
SP_02=	155622	;--	ベジータがパンチ〜フィニッシュ
SP_03=	155623	;--	ベジータがパンチ〜フィニッシュ

--エフェクト(てき)
SP_01x=	155624	;--	溜め〜ベジータダッシュ	(敵)
SP_02x=	155625	;--	ベジータがパンチ〜フィニッシュ	(敵)
SP_03x=	155626	;--	ベジータがパンチ〜フィニッシュ	(敵)

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
-- 前半
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
former = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, former, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, former, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, former, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, former, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, former, 0 );
setEffRotateKey( spep_0 + 120, former, 0 );
setEffAlphaKey( spep_0 + 0, former, 255 );
setEffAlphaKey( spep_0 + 120, former, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, se_1213, 0 );
--    stopSe( SP_dodge - 12, se_1161, 0 );

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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 12, 1018 );--顔カットイン
setSeVolume( spep_0 + 12, 1018, 79 );
se_1109 = playSe( spep_0 + 93, 1109 );
se_0044 = playSe( spep_0 + 98, 44 );

stopSe( spep_0 + 99, se_1109, 7 );

--白フェード
entryFade( spep_0 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 120
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 84, shuchusen, 255 );
setEffAlphaKey( spep_1 + 85, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 0 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

stopSe( spep_1 + 0, se_0044, 0 );

--白フェード
--entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
rear_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rear_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 680, rear_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rear_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 680, rear_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rear_f, 0 );
setEffRotateKey( spep_2 + 680, rear_f, 0 );
setEffAlphaKey( spep_2 + 0, rear_f, 255 );
setEffAlphaKey( spep_2 + 680, rear_f, 255 );

-- ** エフェクト等 ** --
rear_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rear_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 680, rear_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rear_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 680, rear_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rear_b, 0 );
setEffRotateKey( spep_2 + 680, rear_b, 0 );
setEffAlphaKey( spep_2 + 0, rear_b, 255 );
setEffAlphaKey( spep_2 + 680, rear_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 79, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2-3 + 30, 1, 108 );

setMoveKey( spep_2 + 0, 1, 383.8, -37.7 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 289.8, -37.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 243.6, -37.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 212.2, -37.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, 188.9, -37.7 , 0 );
setMoveKey( spep_2-3 + 10, 1, 170.9, -37.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, 156.7, -37.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, 145.5, -37.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 136.7, -37.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, 129.9, -37.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, 124.7, -37.7 , 0 );
setMoveKey( spep_2-3 + 22, 1, 121, -37.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 118.5, -37.7 , 0 );
setMoveKey( spep_2-3 + 26, 1, 117.1, -37.7 , 0 );
setMoveKey( spep_2-3 + 29, 1, 116.7, -37.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, 193.2, 31.6 , 0 );
setMoveKey( spep_2-3 + 32, 1, 151.6, 25.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, 164.8, 1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 163.9, 29.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 164.4, 15.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, 170.1, 29 , 0 );
setMoveKey( spep_2-3 + 42, 1, 164.4, 34.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 176.4, 18.5 , 0 );
setMoveKey( spep_2-3 + 46, 1, 166.5, 34.8 , 0 );
setMoveKey( spep_2-3 + 48, 1, 171.6, 26.9 , 0 );
setMoveKey( spep_2-3 + 50, 1, 171.5, 30.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, 168.9, 29.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 168.1, 30.7 , 0 );
setMoveKey( spep_2-3 + 56, 1, 161.8, 29.3 , 0 );
setMoveKey( spep_2-3 + 58, 1, 159.3, 31.1 , 0 );
setMoveKey( spep_2-3 + 60, 1, 152, 29 , 0 );
setMoveKey( spep_2-3 + 62, 1, 145.4, 31.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 137, 28.9 , 0 );
setMoveKey( spep_2-3 + 66, 1, 123.8, 31.3 , 0 );
setMoveKey( spep_2-3 + 68, 1, 106.9, 29.4 , 0 );
setMoveKey( spep_2-3 + 70, 1, 73.5, 31.7 , 0 );
setMoveKey( spep_2-3 + 72, 1, 137.3, 28.5 , 0 );
setMoveKey( spep_2-3 + 74, 1, 432.3, 30.9 , 0 );
setMoveKey( spep_2-3 + 76, 1, 643, 30.7 , 0 );
setMoveKey( spep_2-3 + 79, 1, 685.9, 31.4 , 0 );

setScaleKey( spep_2 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 29, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 30, 1, 2.18, 2.18 );
setScaleKey( spep_2-3 + 32, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 34, 1, 2.18, 2.18 );
setScaleKey( spep_2-3 + 36, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 79, 1, 1.98, 1.98 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 79, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 154, 1, 1 );
setDisp( spep_2-1 + 232, 1, 0 );

changeAnime( spep_2 + 154, 1, 108 );

setMoveKey( spep_2-3 + 154, 1, 104.8, -1.4 , 0 );
setMoveKey( spep_2-3 + 155, 1, 104.8, -1.4 , 0 );
setMoveKey( spep_2-3 + 156, 1, 102.4, 20.1 , 0 );
setMoveKey( spep_2-3 + 157, 1, 102.4, 20.1 , 0 );
setMoveKey( spep_2-3 + 158, 1, 123.4, 39.1 , 0 );
setMoveKey( spep_2-3 + 157, 1, 123.4, 39.1 , 0 );
setMoveKey( spep_2-3 + 160, 1, 122.2, 30.7 , 0 );
setMoveKey( spep_2-3 + 161, 1, 122.2, 30.7 , 0 );
setMoveKey( spep_2-3 + 162, 1, 213.4, 204.6 , 0 );
setMoveKey( spep_2-3 + 163, 1, 213.4, 204.6 , 0 );
setMoveKey( spep_2-3 + 164, 1, 215.5, 205.1 , 0 );
setMoveKey( spep_2-3 + 165, 1, 215.5, 205.1 , 0 );
setMoveKey( spep_2-3 + 166, 1, 219.6, 214 , 0 );
setMoveKey( spep_2-3 + 167, 1, 219.6, 214 , 0 );
setMoveKey( spep_2-3 + 168, 1, 221.4, 214.1 , 0 );
setMoveKey( spep_2-3 + 169, 1, 221.4, 214.1 , 0 );
setMoveKey( spep_2-3 + 170, 1, 219.3, 213.3 , 0 );
setMoveKey( spep_2-3 + 171, 1, 219.3, 213.3 , 0 );
setMoveKey( spep_2-3 + 172, 1, 214.6, 213.3 , 0 );
setMoveKey( spep_2-3 + 173, 1, 214.6, 213.3 , 0 );
setMoveKey( spep_2-3 + 174, 1, 223.9, 226.4 , 0 );
setMoveKey( spep_2-3 + 175, 1, 223.9, 226.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 229.4, 236.5 , 0 );
setMoveKey( spep_2-3 + 177, 1, 229.4, 236.5 , 0 );
setMoveKey( spep_2-3 + 178, 1, 219.6, 269.8 , 0 );
setMoveKey( spep_2-3 + 179, 1, 219.6, 269.8 , 0 );
setMoveKey( spep_2-3 + 180, 1, 225.9, 266.7 , 0 );
setMoveKey( spep_2-3 + 181, 1, 225.9, 266.7 , 0 );
setMoveKey( spep_2-3 + 182, 1, 226, 275.1 , 0 );
setMoveKey( spep_2-3 + 183, 1, 226, 275.1 , 0 );
setMoveKey( spep_2-3 + 184, 1, 214, 287.5 , 0 );
setMoveKey( spep_2-3 + 185, 1, 214, 287.5 , 0 );
setMoveKey( spep_2-3 + 186, 1, 220.2, 278.2 , 0 );
setMoveKey( spep_2-3 + 187, 1, 220.2, 278.2 , 0 );
setMoveKey( spep_2-3 + 188, 1, 220.3, 292.3 , 0 );
setMoveKey( spep_2-3 + 189, 1, 220.3, 292.3 , 0 );
setMoveKey( spep_2-3 + 190, 1, 226.3, 283.4 , 0 );
setMoveKey( spep_2-3 + 191, 1, 226.3, 283.4 , 0 );
setMoveKey( spep_2-3 + 192, 1, 226.1, 286 , 0 );
setMoveKey( spep_2-3 + 193, 1, 226.1, 286 , 0 );
setMoveKey( spep_2-3 + 194, 1, 213.9, 296.2 , 0 );
setMoveKey( spep_2-3 + 195, 1, 213.9, 296.2 , 0 );
setMoveKey( spep_2-3 + 196, 1, 226.1, 289.8 , 0 );
setMoveKey( spep_2-3 + 197, 1, 226.1, 289.8 , 0 );
setMoveKey( spep_2-3 + 198, 1, 213.9, 307.2 , 0 );
setMoveKey( spep_2-3 + 199, 1, 213.9, 307.2 , 0 );
setMoveKey( spep_2-3 + 200, 1, 224, 291.8 , 0 );
setMoveKey( spep_2-3 + 201, 1, 224, 291.8 , 0 );
setMoveKey( spep_2-3 + 202, 1, 223.8, 292.8 , 0 );
setMoveKey( spep_2-3 + 203, 1, 223.8, 292.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 213.6, 311.6 , 0 );
setMoveKey( spep_2-3 + 205, 1, 213.6, 311.6 , 0 );
setMoveKey( spep_2-3 + 206, 1, 217.8, 285.5 , 0 );
setMoveKey( spep_2-3 + 207, 1, 217.8, 285.5 , 0 );
setMoveKey( spep_2-3 + 208, 1, 215.8, 294.4 , 0 );
setMoveKey( spep_2-3 + 209, 1, 215.8, 294.4 , 0 );
setMoveKey( spep_2-3 + 210, 1, 229.8, 274.9 , 0 );
setMoveKey( spep_2-3 + 211, 1, 229.8, 274.9 , 0 );
setMoveKey( spep_2-3 + 212, 1, 229.2, 276.4 , 0 );
setMoveKey( spep_2-3 + 213, 1, 229.2, 276.4 , 0 );
setMoveKey( spep_2-3 + 214, 1, 204.7, 291.7 , 0 );
setMoveKey( spep_2-3 + 215, 1, 204.7, 291.7 , 0 );
setMoveKey( spep_2-3 + 216, 1, 216.9, 276.3 , 0 );
setMoveKey( spep_2-3 + 217, 1, 216.9, 276.3 , 0 );
setMoveKey( spep_2-3 + 218, 1, 200, 299.8 , 0 );
setMoveKey( spep_2-3 + 219, 1, 200, 299.8 , 0 );
setMoveKey( spep_2-3 + 220, 1, 199, 283.8 , 0 );
setMoveKey( spep_2-3 + 221, 1, 199, 283.8 , 0 );
setMoveKey( spep_2-3 + 222, 1, 200.3, 285 , 0 );
setMoveKey( spep_2-3 + 223, 1, 200.3, 285 , 0 );
setMoveKey( spep_2-3 + 224, 1, 211.5, 294.1 , 0 );
setMoveKey( spep_2-3 + 225, 1, 211.5, 294.1 , 0 );
setMoveKey( spep_2-3 + 226, 1, 220, 282.6 , 0 );
setMoveKey( spep_2-3 + 225, 1, 220, 282.6 , 0 );
setMoveKey( spep_2-3 + 228, 1, 219.8, 300.1 , 0 );
setMoveKey( spep_2-3 + 229, 1, 219.8, 300.1 , 0 );
setMoveKey( spep_2-3 + 230, 1, 215.7, 284.2 , 0 );
setMoveKey( spep_2-3 + 231, 1, 215.7, 284.2 , 0 );
setMoveKey( spep_2-3 + 232, 1, 215.9, 285.9 , 0 );
setMoveKey( spep_2-1 + 232, 1, 215.9, 285.9 , 0 );

setScaleKey( spep_2-3 + 154, 1, 5.2, 5.2 );
setScaleKey( spep_2-3 + 156, 1, 3.96, 3.96 );
setScaleKey( spep_2-3 + 158, 1, 4, 4 );
setScaleKey( spep_2-3 + 160, 1, 4, 4 );
setScaleKey( spep_2-3 + 162, 1, 3, 3 );
setScaleKey( spep_2-3 + 164, 1, 2.97, 2.97 );
setScaleKey( spep_2-3 + 166, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 168, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 170, 1, 2.76, 2.76 );
setScaleKey( spep_2-3 + 172, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 174, 1, 2.35, 2.35 );
setScaleKey( spep_2-3 + 176, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 178, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 180, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 182, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 184, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 186, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 188, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 190, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 192, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 194, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 196, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 198, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 200, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 202, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 204, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 206, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 208, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 210, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 212, 1, 0.08, 0.08 );
setScaleKey( spep_2-1 + 232, 1, 0.08, 0.08 );

setRotateKey( spep_2-3 + 154, 1, 0 );
setRotateKey( spep_2-1 + 232, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 418, 1, 1 );
setDisp( spep_2-1 + 458, 1, 0 );

changeAnime( spep_2 + 418, 1, 105 );

setMoveKey( spep_2-3 + 418, 1, 0, 174.1 , 0 );
setMoveKey( spep_2-3 + 419, 1, 0, 174.1 , 0 );
setMoveKey( spep_2-3 + 420, 1, -12, 167.1 , 0 );
setMoveKey( spep_2-3 + 421, 1, -12, 167.1 , 0 );
setMoveKey( spep_2-3 + 422, 1, 7.7, 172.6 , 0 );
setMoveKey( spep_2-3 + 423, 1, 7.7, 172.6 , 0 );
setMoveKey( spep_2-3 + 424, 1, -8.4, 175.3 , 0 );
setMoveKey( spep_2-3 + 425, 1, -8.4, 175.3 , 0 );
setMoveKey( spep_2-3 + 426, 1, 3.8, 171.2 , 0 );
setMoveKey( spep_2-3 + 427, 1, 3.8, 171.2 , 0 );
setMoveKey( spep_2-3 + 428, 1, -4, 177 , 0 );
setMoveKey( spep_2-3 + 429, 1, -4, 177 , 0 );
setMoveKey( spep_2-3 + 430, 1, 0.3, 179.1 , 0 );
setMoveKey( spep_2-3 + 431, 1, 0.3, 179.1 , 0 );
setMoveKey( spep_2-3 + 432, 1, 2.4, 171 , 0 );
setMoveKey( spep_2-3 + 433, 1, 2.4, 171 , 0 );
setMoveKey( spep_2-3 + 434, 1, -0.1, 179.2 , 0 );
setMoveKey( spep_2-3 + 435, 1, -0.1, 179.2 , 0 );
setMoveKey( spep_2-3 + 436, 1, -4, 167.6 , 0 );
setMoveKey( spep_2-3 + 437, 1, -4, 167.6 , 0 );
setMoveKey( spep_2-3 + 438, 1, 0.2, 175.4 , 0 );
setMoveKey( spep_2-3 + 439, 1, 0.2, 175.4 , 0 );
setMoveKey( spep_2-3 + 440, 1, -0.5, 171.8 , 0 );
setMoveKey( spep_2-3 + 441, 1, -0.5, 171.8 , 0 );
setMoveKey( spep_2-3 + 442, 1, -0.2, 174.7 , 0 );
setMoveKey( spep_2-3 + 443, 1, -0.2, 174.7 , 0 );
setMoveKey( spep_2-3 + 444, 1, -2.2, 173.2 , 0 );
setMoveKey( spep_2-3 + 445, 1, -2.2, 173.2 , 0 );
setMoveKey( spep_2-3 + 446, 1, 0.5, 174.8 , 0 );
setMoveKey( spep_2-3 + 447, 1, 0.5, 174.8 , 0 );
setMoveKey( spep_2-3 + 448, 1, -1, 172.6 , 0 );
setMoveKey( spep_2-3 + 449, 1, -1, 172.6 , 0 );
setMoveKey( spep_2-3 + 450, 1, -1.1, 174.9 , 0 );
setMoveKey( spep_2-3 + 451, 1, -1.1, 174.9 , 0 );
setMoveKey( spep_2-3 + 452, 1, -1.9, 172.4 , 0 );
setMoveKey( spep_2-3 + 453, 1, -1.9, 172.4 , 0 );
setMoveKey( spep_2-3 + 454, 1, 0.9, 174.1 , 0 );
setMoveKey( spep_2-3 + 455, 1, 0.9, 174.1 , 0 );
setMoveKey( spep_2-3 + 456, 1, -2.7, 173.3 , 0 );
setMoveKey( spep_2-3 + 457, 1, -2.7, 173.3 , 0 );
setMoveKey( spep_2-1 + 458, 1, 1.1, 173.5 , 0 );

setScaleKey( spep_2-3 + 418, 1, 0.3, 0.3 );
setScaleKey( spep_2-1 + 458, 1, 0.3, 0.3 );

setRotateKey( spep_2-3 + 418, 1, 0 );
setRotateKey( spep_2-1 + 458, 1, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 30,  10016, 20, 0x100, -1, 0, -19.3, 146.7 );
setEffShake( spep_2-3 + 30, ctzun, 20, 10 );
setEffMoveKey( spep_2-3 + 30, ctzun, -19.3, 146.7 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzun, -91.4, 211 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzun, -99.2, 221.5 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzun, -105.1, 224 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzun, -99.2, 221.5 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzun, -105.1, 224 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzun, -99.2, 221.5 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzun, -113.6, 232 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzun, -115.5, 237.1 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzun, -130.5, 247.8 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzun, -138.9, 255.8 , 0 );

setEffScaleKey( spep_2-3 + 30, ctzun, 1.38, 1.39 );
setEffScaleKey( spep_2-3 + 32, ctzun, 2.12, 2.13 );
setEffScaleKey( spep_2-3 + 34, ctzun, 2.27, 2.28 );
setEffScaleKey( spep_2-3 + 42, ctzun, 2.27, 2.28 );
setEffScaleKey( spep_2-3 + 44, ctzun, 2.4, 2.41 );
setEffScaleKey( spep_2-3 + 46, ctzun, 2.53, 2.54 );
setEffScaleKey( spep_2-3 + 48, ctzun, 2.65, 2.67 );
setEffScaleKey( spep_2-3 + 50, ctzun, 2.78, 2.8 );

setEffRotateKey( spep_2-3 + 30, ctzun, 0 );
setEffRotateKey( spep_2-3 + 50, ctzun, 0 );

setEffAlphaKey( spep_2-3 + 30, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 42, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 44, ctzun, 191 );
setEffAlphaKey( spep_2-3 + 46, ctzun, 128 );
setEffAlphaKey( spep_2-3 + 48, ctzun, 64 );
setEffAlphaKey( spep_2-3 + 50, ctzun, 0 );

--SE
playSe( spep_2 + 13, 1004 );
setSeVolume( spep_2 + 13, 1004, 40 );
playSe( spep_2 + 22, 1001 );
setSeVolume( spep_2 + 22, 1001, 65 );
playSe( spep_2 + 24, 1009 );
se_1188 = playSe( spep_2 + 25, 1188 );
setSeVolume( spep_2 + 27, 1188, 0.00 );
setSeVolume( spep_2 + 28, 1188, 1.39 );
setSeVolume( spep_2 + 29, 1188, 2.78 );
setSeVolume( spep_2 + 30, 1188, 4.17 );
setSeVolume( spep_2 + 31, 1188, 5.56 );
setSeVolume( spep_2 + 32, 1188, 6.94 );
setSeVolume( spep_2 + 33, 1188, 8.33 );
setSeVolume( spep_2 + 34, 1188, 9.72 );
setSeVolume( spep_2 + 35, 1188, 11.11 );
setSeVolume( spep_2 + 36, 1188, 12.50 );
setSeVolume( spep_2 + 37, 1188, 13.89 );
setSeVolume( spep_2 + 38, 1188, 15.28 );
setSeVolume( spep_2 + 39, 1188, 16.67 );
setSeVolume( spep_2 + 40, 1188, 18.06 );
setSeVolume( spep_2 + 41, 1188, 19.44 );
setSeVolume( spep_2 + 42, 1188, 20.83 );
setSeVolume( spep_2 + 43, 1188, 22.22 );
setSeVolume( spep_2 + 44, 1188, 23.61 );
setSeVolume( spep_2 + 45, 1188, 25.00 );
setSeVolume( spep_2 + 57,1188,25);
setSeVolume( spep_2 + 58,1188,24.45);
setSeVolume( spep_2 + 59,1188,23.9);
setSeVolume( spep_2 + 60,1188,23.35);
setSeVolume( spep_2 + 61,1188,22.8);
setSeVolume( spep_2 + 62,1188,22.25);
setSeVolume( spep_2 + 63,1188,21.7);
setSeVolume( spep_2 + 64,1188,21.15);
setSeVolume( spep_2 + 65,1188,20.6);
setSeVolume( spep_2 + 66,1188,20.05);
setSeVolume( spep_2 + 67,1188,19.5);
setSeVolume( spep_2 + 68,1188,18.95);
setSeVolume( spep_2 + 69,1188,18.4);
setSeVolume( spep_2 + 70,1188,17.85);
setSeVolume( spep_2 + 71,1188,17.3);
setSeVolume( spep_2 + 72,1188,16.75);
setSeVolume( spep_2 + 73,1188,16.2);
setSeVolume( spep_2 + 74,1188,15.65);
setSeVolume( spep_2 + 75,1188,15.1);
setSeVolume( spep_2 + 76,1188,14.55);
setSeVolume( spep_2 + 77,1188,14);
setSeVolume( spep_2 + 78,1188,13.45);
setSeVolume( spep_2 + 79,1188,12.9);
setSeVolume( spep_2 + 80,1188,12.35);
setSeVolume( spep_2 + 81,1188,11.8);
setSeVolume( spep_2 + 82,1188,11.25);
setSeVolume( spep_2 + 83,1188,10.7);
setSeVolume( spep_2 + 84,1188,10.15);
setSeVolume( spep_2 + 85,1188,9.59);
setSeVolume( spep_2 + 86,1188,9.04);
setSeVolume( spep_2 + 87,1188,8.49);
setSeVolume( spep_2 + 88,1188,7.94);
setSeVolume( spep_2 + 89,1188,7.39);
setSeVolume( spep_2 + 90,1188,6.84);
setSeVolume( spep_2 + 91,1188,6.29);
setSeVolume( spep_2 + 92,1188,5.74);
setSeVolume( spep_2 + 93,1188,5.19);
setSeVolume( spep_2 + 94,1188,4.64);
setSeVolume( spep_2 + 95,1188,4.09);
setSeVolume( spep_2 + 96,1188,3.54);
setSeVolume( spep_2 + 97,1188,2.99);
setSeVolume( spep_2 + 98,1188,2.44);
setSeVolume( spep_2 + 99,1188,1.89);
setSeVolume( spep_2 + 100,1188,1.34);
setSeVolume( spep_2 + 101,1188,0.791);
setSeVolume( spep_2 + 102,1188,0);
playSe( spep_2 + 28, 1000 );
setSeVolume( spep_2 + 28, 1000, 126 );
playSe( spep_2 + 32, 1110 );
setSeVolume( spep_2 + 32, 1110, 53 );
playSe( spep_2 + 81, 1035 );
se_1244 = playSe( spep_2 + 97, 1244 );
setSeVolume( spep_2 + 97, 1244, 0 );
setSeVolume( spep_2 + 125, 1244, 0 );
setSeVolume( spep_2 + 126, 1244, 14.29 );
setSeVolume( spep_2 + 127, 1244, 28.57 );
setSeVolume( spep_2 + 128, 1244, 42.86 );
setSeVolume( spep_2 + 129, 1244, 57.14 );
setSeVolume( spep_2 + 130, 1244, 71.43 );
setSeVolume( spep_2 + 131, 1244, 85.71 );
setSeVolume( spep_2 + 132, 1244, 100 );
se_12121 = playSe( spep_2 + 97, 1212 );
setSeVolume( spep_2 + 97, 1212, 0 );
setSeVolume( spep_2 + 129, 1212, 0 );
setSeVolume( spep_2 + 130, 1212, 2.31 );
setSeVolume( spep_2 + 131, 1212, 4.62 );
setSeVolume( spep_2 + 132, 1212, 6.92 );
setSeVolume( spep_2 + 133, 1212, 9.23 );
setSeVolume( spep_2 + 134, 1212, 11.54 );
setSeVolume( spep_2 + 135, 1212, 13.85 );
setSeVolume( spep_2 + 136, 1212, 16.15 );
setSeVolume( spep_2 + 137, 1212, 18.46 );
setSeVolume( spep_2 + 138, 1212, 20.77 );
setSeVolume( spep_2 + 139, 1212, 23.08 );
setSeVolume( spep_2 + 140, 1212, 25.38 );
setSeVolume( spep_2 + 141, 1212, 27.69 );
setSeVolume( spep_2 + 142, 1212, 30 );
setSeVolume( spep_2 + 143, 1212, 32.31 );
setSeVolume( spep_2 + 144, 1212, 34.62 );
setSeVolume( spep_2 + 145, 1212, 36.92 );
setSeVolume( spep_2 + 146, 1212, 39.23 );
setSeVolume( spep_2 + 147, 1212, 41.54 );
setSeVolume( spep_2 + 148, 1212, 43.85 );
setSeVolume( spep_2 + 149, 1212, 46.15 );
setSeVolume( spep_2 + 150, 1212, 48.46 );
setSeVolume( spep_2 + 151, 1212, 50.77 );
setSeVolume( spep_2 + 152, 1212, 53.08 );
setSeVolume( spep_2 + 153, 1212, 55.38 );
setSeVolume( spep_2 + 154, 1212, 57.69 );
setSeVolume( spep_2 + 155, 1212, 60 );
setSeVolume( spep_2 + 245,1212,60);
setSeVolume( spep_2 + 246,1212,58);
setSeVolume( spep_2 + 247,1212,56);
setSeVolume( spep_2 + 248,1212,54);
setSeVolume( spep_2 + 249,1212,52);
setSeVolume( spep_2 + 250,1212,50);
setSeVolume( spep_2 + 251,1212,48);
setSeVolume( spep_2 + 252,1212,46);
setSeVolume( spep_2 + 253,1212,44);
setSeVolume( spep_2 + 254,1212,42);
setSeVolume( spep_2 + 255,1212,40);
setSeVolume( spep_2 + 256,1212,38);
setSeVolume( spep_2 + 257,1212,36);
setSeVolume( spep_2 + 258,1212,34);
setSeVolume( spep_2 + 259,1212,32);
setSeVolume( spep_2 + 260,1212,30);
setSeVolume( spep_2 + 261,1212,28);
setSeVolume( spep_2 + 262,1212,26);
setSeVolume( spep_2 + 263,1212,24);
setSeVolume( spep_2 + 264,1212,22);
setSeVolume( spep_2 + 265,1212,20);
setSeVolume( spep_2 + 266,1212,18);
setSeVolume( spep_2 + 267,1212,16);
setSeVolume( spep_2 + 268,1212,14);
setSeVolume( spep_2 + 269,1212,12);
setSeVolume( spep_2 + 270,1212,10);
setSeVolume( spep_2 + 271,1212,8);
setSeVolume( spep_2 + 272,1212,6);
setSeVolume( spep_2 + 273,1212,4);
setSeVolume( spep_2 + 274,1212,0);
playSe( spep_2 + 104, 1133 );
setSeVolume( spep_2 + 104, 1133, 60 );
se_1146 = playSe( spep_2 + 104, 1146 );
playSe( spep_2 + 158, 1021 );
playSe( spep_2 + 160, 1027 );
setSeVolume( spep_2 + 160, 1027, 77 );
playSe( spep_2 + 204, 1072 );
se_1216 = playSe( spep_2 + 235, 1216 );
setSeVolume( spep_2 + 235, 1216, 0 );
setSeVolume( spep_2 + 266, 1216, 0 );
setSeVolume( spep_2 + 267, 1216, 22.67 );
setSeVolume( spep_2 + 268, 1216, 45.33 );
setSeVolume( spep_2 + 269, 1216, 68 );
setSeVolume( spep_2 + 295,1216,68);
setSeVolume( spep_2 + 296,1216,65.6);
setSeVolume( spep_2 + 297,1216,63.2);
setSeVolume( spep_2 + 298,1216,60.8);
setSeVolume( spep_2 + 299,1216,58.4);
setSeVolume( spep_2 + 300,1216,56);
setSeVolume( spep_2 + 301,1216,53.6);
setSeVolume( spep_2 + 302,1216,51.2);
setSeVolume( spep_2 + 303,1216,48.8);
setSeVolume( spep_2 + 304,1216,46.4);
setSeVolume( spep_2 + 305,1216,44);
setSeVolume( spep_2 + 306,1216,41.6);
setSeVolume( spep_2 + 307,1216,39.2);
setSeVolume( spep_2 + 308,1216,36.8);
setSeVolume( spep_2 + 309,1216,34.4);
setSeVolume( spep_2 + 310,1216,32);
setSeVolume( spep_2 + 311,1216,29.6);
setSeVolume( spep_2 + 312,1216,27.2);
setSeVolume( spep_2 + 313,1216,24.8);
setSeVolume( spep_2 + 314,1216,22.4);
setSeVolume( spep_2 + 315,1216,20);
setSeVolume( spep_2 + 316,1216,17.6);
setSeVolume( spep_2 + 317,1216,15.2);
setSeVolume( spep_2 + 318,1216,12.8);
setSeVolume( spep_2 + 319,1216,10.4);
setSeVolume( spep_2 + 320,1216,8.0);
setSeVolume( spep_2 + 321,1216,5.6);
setSeVolume( spep_2 + 322,1216,3.2);
setSeVolume( spep_2 + 323,1216,0);
playSe( spep_2 + 265, 1179 );
setSeVolume( spep_2 + 265, 1179, 61 );
playSe( spep_2 + 265, 1254 );
setSeVolume( spep_2 + 265, 1254, 61 );
se_1240 = playSe( spep_2 + 271, 1240 );
setSeVolume( spep_2 + 271, 1240, 136 );
playSe( spep_2 + 340, 1004 );
playSe( spep_2 + 340, 1003 );
playSe( spep_2 + 347, 1117 );
setSeVolume( spep_2 + 347, 1117, 116 );
playSe( spep_2 + 347, 1184 );
setSeVolume( spep_2 + 347, 1184, 0 );
setSeVolume( spep_2 + 348, 1184, 3.44 );
setSeVolume( spep_2 + 349, 1184, 6.88 );
setSeVolume( spep_2 + 350, 1184, 10.31 );
setSeVolume( spep_2 + 351, 1184, 13.75 );
setSeVolume( spep_2 + 352, 1184, 17.19 );
setSeVolume( spep_2 + 353, 1184, 20.63 );
setSeVolume( spep_2 + 354, 1184, 24.06 );
setSeVolume( spep_2 + 355, 1184, 27.50 );
setSeVolume( spep_2 + 356, 1184, 30.94 );
setSeVolume( spep_2 + 357, 1184, 34.38 );
setSeVolume( spep_2 + 358, 1184, 37.81 );
setSeVolume( spep_2 + 359, 1184, 41.25 );
setSeVolume( spep_2 + 360, 1184, 44.69 );
setSeVolume( spep_2 + 361, 1184, 48.13 );
setSeVolume( spep_2 + 362, 1184, 51.56 );
setSeVolume( spep_2 + 363, 1184, 55 );
playSe( spep_2 + 347, 1027 );
setSeVolume( spep_2 + 347, 1027, 61 );
playSe( spep_2 + 350, 1241 );
setSeVolume( spep_2 + 350, 1241, 69 );
se_1183 = playSe( spep_2 + 350, 1183 );
setSeVolume( spep_2 + 350, 1183, 69 );
playSe( spep_2 + 369, 44 );
se_1212 = playSe( spep_2 + 376, 1212 );
setSeVolume( spep_2 + 376, 1212, 0 );
setSeVolume( spep_2 + 395, 1212, 0 );
setSeVolume( spep_2 + 396, 1212, 2.9 );
setSeVolume( spep_2 + 397, 1212, 5.81 );
setSeVolume( spep_2 + 398, 1212, 8.71 );
setSeVolume( spep_2 + 399, 1212, 11.62 );
setSeVolume( spep_2 + 400, 1212, 14.52 );
setSeVolume( spep_2 + 401, 1212, 17.43 );
setSeVolume( spep_2 + 402, 1212, 20.33 );
setSeVolume( spep_2 + 403, 1212, 23.24 );
setSeVolume( spep_2 + 404, 1212, 26.14 );
setSeVolume( spep_2 + 405, 1212, 29.05 );
setSeVolume( spep_2 + 406, 1212, 31.95 );
setSeVolume( spep_2 + 407, 1212, 34.86 );
setSeVolume( spep_2 + 408, 1212, 37.76 );
setSeVolume( spep_2 + 409, 1212, 40.67 );
setSeVolume( spep_2 + 410, 1212, 43.57 );
setSeVolume( spep_2 + 411, 1212, 46.48 );
setSeVolume( spep_2 + 412, 1212, 49.38 );
setSeVolume( spep_2 + 413, 1212, 52.29 );
setSeVolume( spep_2 + 414, 1212, 55.19 );
setSeVolume( spep_2 + 415, 1212, 58.10 );
setSeVolume( spep_2 + 416, 1212, 61 );
setSeVolume( spep_2 + 463,1212,61);
setSeVolume( spep_2 + 464,1212,59.3);
setSeVolume( spep_2 + 465,1212,57.6);
setSeVolume( spep_2 + 466,1212,55.9);
setSeVolume( spep_2 + 467,1212,54.2);
setSeVolume( spep_2 + 468,1212,52.5);
setSeVolume( spep_2 + 469,1212,50.8);
setSeVolume( spep_2 + 470,1212,49.1);
setSeVolume( spep_2 + 471,1212,47.4);
setSeVolume( spep_2 + 472,1212,45.7);
setSeVolume( spep_2 + 473,1212,44);
setSeVolume( spep_2 + 474,1212,42.3);
setSeVolume( spep_2 + 475,1212,40.6);
setSeVolume( spep_2 + 476,1212,38.9);
setSeVolume( spep_2 + 477,1212,37.2);
setSeVolume( spep_2 + 478,1212,35.5);
setSeVolume( spep_2 + 479,1212,33.8);
setSeVolume( spep_2 + 480,1212,32.1);
setSeVolume( spep_2 + 481,1212,30.4);
setSeVolume( spep_2 + 482,1212,28.7);
setSeVolume( spep_2 + 483,1212,27);
setSeVolume( spep_2 + 484,1212,25.3);
setSeVolume( spep_2 + 485,1212,23.6);
setSeVolume( spep_2 + 486,1212,21.9);
setSeVolume( spep_2 + 487,1212,20.2);
setSeVolume( spep_2 + 488,1212,18.5);
setSeVolume( spep_2 + 489,1212,16.8);
setSeVolume( spep_2 + 490,1212,15.1);
setSeVolume( spep_2 + 491,1212,13.4);
setSeVolume( spep_2 + 492,1212,11.7);
setSeVolume( spep_2 + 493,1212,9.9);
setSeVolume( spep_2 + 494,1212,8.2);
setSeVolume( spep_2 + 495,1212,6.5);
setSeVolume( spep_2 + 496,1212,4.8);
setSeVolume( spep_2 + 497,1212,3.1);
setSeVolume( spep_2 + 498,1212,0);
se_1236 = playSe( spep_2 + 397, 1236 );
setSeVolume( spep_2 + 397, 1236, 116 );
se_1116 = playSe( spep_2 + 411, 1116 );
setSeVolume( spep_2 + 461, 1238, 59 );
playSe( spep_2 + 461, 1238 );
playSe( spep_2 + 461, 1179 );
playSe( spep_2 + 461, 1032 );
setSeVolume( spep_2 + 461, 1032, 87 );
playSe( spep_2 + 483, 1238 );
setSeVolume( spep_2 + 483, 1238, 64 );
playSe( spep_2 + 483, 1032 );
setSeVolume( spep_2 + 483, 1032, 69 );
playSe( spep_2 + 500, 1238 );
setSeVolume( spep_2 + 500, 1238, 67 );
playSe( spep_2 + 500, 1032 );
setSeVolume( spep_2 + 500, 1032, 68 );
playSe( spep_2 + 503, 1141 );
setSeVolume( spep_2 + 503, 1141, 54 );
playSe( spep_2 + 518, 1159 );
setSeVolume( spep_2 + 518, 1159, 72 );
playSe( spep_2 + 518, 1024 );
setSeVolume( spep_2 + 518, 1024, 75 );
playSe( spep_2 + 566, 1023 );
playSe( spep_2 + 566, 1188 );
setSeVolume( spep_2 + 566, 1188, 65 );
playSe( spep_2 + 578, 1229 );
setSeVolume( spep_2 + 578, 1229, 143 );


stopSe( spep_2 + 102, se_1188, 0 );
stopSe( spep_2 + 190, se_1244, 0 );
stopSe( spep_2 + 274, se_12121, 0 );
stopSe( spep_2 + 241, se_1146, 34 );
stopSe( spep_2 + 323, se_1216, 0 );
stopSe( spep_2 + 353, se_1240, 0 );
stopSe( spep_2 + 419, se_1183, 37 );
stopSe( spep_2 + 198, se_1212, 0 );
stopSe( spep_2 + 464, se_1236, 35 );
stopSe( spep_2 + 450, se_1116, 47 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 670 +10, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 562 );
endPhase( spep_2 + 670 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
former = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, former, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, former, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, former, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, former, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, former, 0 );
setEffRotateKey( spep_0 + 120, former, 0 );
setEffAlphaKey( spep_0 + 0, former, 255 );
setEffAlphaKey( spep_0 + 120, former, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, se_1213, 0 );
--    stopSe( SP_dodge - 12, se_1161, 0 );

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 12, 1018 );--顔カットイン
setSeVolume( spep_0 + 12, 1018, 79 );
se_1109 = playSe( spep_0 + 93, 1109 );
se_0044 = playSe( spep_0 + 98, 44 );

stopSe( spep_0 + 99, se_1109, 7 );

--白フェード
entryFade( spep_0 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 120
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 84, shuchusen, 255 );
setEffAlphaKey( spep_1 + 85, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 0 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

stopSe( spep_1 + 0, se_0044, 0 );

--白フェード
--entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
rear_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rear_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 680, rear_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rear_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 680, rear_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rear_f, 0 );
setEffRotateKey( spep_2 + 680, rear_f, 0 );
setEffAlphaKey( spep_2 + 0, rear_f, 255 );
setEffAlphaKey( spep_2 + 680, rear_f, 255 );

-- ** エフェクト等 ** --
rear_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rear_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 680, rear_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rear_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 680, rear_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rear_b, 0 );
setEffRotateKey( spep_2 + 680, rear_b, 0 );
setEffAlphaKey( spep_2 + 0, rear_b, 255 );
setEffAlphaKey( spep_2 + 680, rear_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 79, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2-3 + 30, 1, 108 );

setMoveKey( spep_2 + 0, 1, 383.8, -37.7 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 289.8, -37.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 243.6, -37.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 212.2, -37.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, 188.9, -37.7 , 0 );
setMoveKey( spep_2-3 + 10, 1, 170.9, -37.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, 156.7, -37.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, 145.5, -37.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 136.7, -37.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, 129.9, -37.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, 124.7, -37.7 , 0 );
setMoveKey( spep_2-3 + 22, 1, 121, -37.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 118.5, -37.7 , 0 );
setMoveKey( spep_2-3 + 26, 1, 117.1, -37.7 , 0 );
setMoveKey( spep_2-3 + 29, 1, 116.7, -37.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, 193.2, 31.6 , 0 );
setMoveKey( spep_2-3 + 32, 1, 151.6, 25.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, 164.8, 1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 163.9, 29.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 164.4, 15.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, 170.1, 29 , 0 );
setMoveKey( spep_2-3 + 42, 1, 164.4, 34.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 176.4, 18.5 , 0 );
setMoveKey( spep_2-3 + 46, 1, 166.5, 34.8 , 0 );
setMoveKey( spep_2-3 + 48, 1, 171.6, 26.9 , 0 );
setMoveKey( spep_2-3 + 50, 1, 171.5, 30.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, 168.9, 29.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 168.1, 30.7 , 0 );
setMoveKey( spep_2-3 + 56, 1, 161.8, 29.3 , 0 );
setMoveKey( spep_2-3 + 58, 1, 159.3, 31.1 , 0 );
setMoveKey( spep_2-3 + 60, 1, 152, 29 , 0 );
setMoveKey( spep_2-3 + 62, 1, 145.4, 31.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 137, 28.9 , 0 );
setMoveKey( spep_2-3 + 66, 1, 123.8, 31.3 , 0 );
setMoveKey( spep_2-3 + 68, 1, 106.9, 29.4 , 0 );
setMoveKey( spep_2-3 + 70, 1, 73.5, 31.7 , 0 );
setMoveKey( spep_2-3 + 72, 1, 137.3, 28.5 , 0 );
setMoveKey( spep_2-3 + 74, 1, 432.3, 30.9 , 0 );
setMoveKey( spep_2-3 + 76, 1, 643, 30.7 , 0 );
setMoveKey( spep_2-3 + 79, 1, 685.9, 31.4 , 0 );

setScaleKey( spep_2 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 29, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 30, 1, 2.18, 2.18 );
setScaleKey( spep_2-3 + 32, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 34, 1, 2.18, 2.18 );
setScaleKey( spep_2-3 + 36, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 79, 1, 1.98, 1.98 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 79, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 154, 1, 1 );
setDisp( spep_2-1 + 232, 1, 0 );

changeAnime( spep_2 + 154, 1, 108 );

setMoveKey( spep_2-3 + 154, 1, 104.8, -1.4 , 0 );
setMoveKey( spep_2-3 + 155, 1, 104.8, -1.4 , 0 );
setMoveKey( spep_2-3 + 156, 1, 102.4, 20.1 , 0 );
setMoveKey( spep_2-3 + 157, 1, 102.4, 20.1 , 0 );
setMoveKey( spep_2-3 + 158, 1, 123.4, 39.1 , 0 );
setMoveKey( spep_2-3 + 157, 1, 123.4, 39.1 , 0 );
setMoveKey( spep_2-3 + 160, 1, 122.2, 30.7 , 0 );
setMoveKey( spep_2-3 + 161, 1, 122.2, 30.7 , 0 );
setMoveKey( spep_2-3 + 162, 1, 213.4, 204.6 , 0 );
setMoveKey( spep_2-3 + 163, 1, 213.4, 204.6 , 0 );
setMoveKey( spep_2-3 + 164, 1, 215.5, 205.1 , 0 );
setMoveKey( spep_2-3 + 165, 1, 215.5, 205.1 , 0 );
setMoveKey( spep_2-3 + 166, 1, 219.6, 214 , 0 );
setMoveKey( spep_2-3 + 167, 1, 219.6, 214 , 0 );
setMoveKey( spep_2-3 + 168, 1, 221.4, 214.1 , 0 );
setMoveKey( spep_2-3 + 169, 1, 221.4, 214.1 , 0 );
setMoveKey( spep_2-3 + 170, 1, 219.3, 213.3 , 0 );
setMoveKey( spep_2-3 + 171, 1, 219.3, 213.3 , 0 );
setMoveKey( spep_2-3 + 172, 1, 214.6, 213.3 , 0 );
setMoveKey( spep_2-3 + 173, 1, 214.6, 213.3 , 0 );
setMoveKey( spep_2-3 + 174, 1, 223.9, 226.4 , 0 );
setMoveKey( spep_2-3 + 175, 1, 223.9, 226.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 229.4, 236.5 , 0 );
setMoveKey( spep_2-3 + 177, 1, 229.4, 236.5 , 0 );
setMoveKey( spep_2-3 + 178, 1, 219.6, 269.8 , 0 );
setMoveKey( spep_2-3 + 179, 1, 219.6, 269.8 , 0 );
setMoveKey( spep_2-3 + 180, 1, 225.9, 266.7 , 0 );
setMoveKey( spep_2-3 + 181, 1, 225.9, 266.7 , 0 );
setMoveKey( spep_2-3 + 182, 1, 226, 275.1 , 0 );
setMoveKey( spep_2-3 + 183, 1, 226, 275.1 , 0 );
setMoveKey( spep_2-3 + 184, 1, 214, 287.5 , 0 );
setMoveKey( spep_2-3 + 185, 1, 214, 287.5 , 0 );
setMoveKey( spep_2-3 + 186, 1, 220.2, 278.2 , 0 );
setMoveKey( spep_2-3 + 187, 1, 220.2, 278.2 , 0 );
setMoveKey( spep_2-3 + 188, 1, 220.3, 292.3 , 0 );
setMoveKey( spep_2-3 + 189, 1, 220.3, 292.3 , 0 );
setMoveKey( spep_2-3 + 190, 1, 226.3, 283.4 , 0 );
setMoveKey( spep_2-3 + 191, 1, 226.3, 283.4 , 0 );
setMoveKey( spep_2-3 + 192, 1, 226.1, 286 , 0 );
setMoveKey( spep_2-3 + 193, 1, 226.1, 286 , 0 );
setMoveKey( spep_2-3 + 194, 1, 213.9, 296.2 , 0 );
setMoveKey( spep_2-3 + 195, 1, 213.9, 296.2 , 0 );
setMoveKey( spep_2-3 + 196, 1, 226.1, 289.8 , 0 );
setMoveKey( spep_2-3 + 197, 1, 226.1, 289.8 , 0 );
setMoveKey( spep_2-3 + 198, 1, 213.9, 307.2 , 0 );
setMoveKey( spep_2-3 + 199, 1, 213.9, 307.2 , 0 );
setMoveKey( spep_2-3 + 200, 1, 224, 291.8 , 0 );
setMoveKey( spep_2-3 + 201, 1, 224, 291.8 , 0 );
setMoveKey( spep_2-3 + 202, 1, 223.8, 292.8 , 0 );
setMoveKey( spep_2-3 + 203, 1, 223.8, 292.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 213.6, 311.6 , 0 );
setMoveKey( spep_2-3 + 205, 1, 213.6, 311.6 , 0 );
setMoveKey( spep_2-3 + 206, 1, 217.8, 285.5 , 0 );
setMoveKey( spep_2-3 + 207, 1, 217.8, 285.5 , 0 );
setMoveKey( spep_2-3 + 208, 1, 215.8, 294.4 , 0 );
setMoveKey( spep_2-3 + 209, 1, 215.8, 294.4 , 0 );
setMoveKey( spep_2-3 + 210, 1, 229.8, 274.9 , 0 );
setMoveKey( spep_2-3 + 211, 1, 229.8, 274.9 , 0 );
setMoveKey( spep_2-3 + 212, 1, 229.2, 276.4 , 0 );
setMoveKey( spep_2-3 + 213, 1, 229.2, 276.4 , 0 );
setMoveKey( spep_2-3 + 214, 1, 204.7, 291.7 , 0 );
setMoveKey( spep_2-3 + 215, 1, 204.7, 291.7 , 0 );
setMoveKey( spep_2-3 + 216, 1, 216.9, 276.3 , 0 );
setMoveKey( spep_2-3 + 217, 1, 216.9, 276.3 , 0 );
setMoveKey( spep_2-3 + 218, 1, 200, 299.8 , 0 );
setMoveKey( spep_2-3 + 219, 1, 200, 299.8 , 0 );
setMoveKey( spep_2-3 + 220, 1, 199, 283.8 , 0 );
setMoveKey( spep_2-3 + 221, 1, 199, 283.8 , 0 );
setMoveKey( spep_2-3 + 222, 1, 200.3, 285 , 0 );
setMoveKey( spep_2-3 + 223, 1, 200.3, 285 , 0 );
setMoveKey( spep_2-3 + 224, 1, 211.5, 294.1 , 0 );
setMoveKey( spep_2-3 + 225, 1, 211.5, 294.1 , 0 );
setMoveKey( spep_2-3 + 226, 1, 220, 282.6 , 0 );
setMoveKey( spep_2-3 + 225, 1, 220, 282.6 , 0 );
setMoveKey( spep_2-3 + 228, 1, 219.8, 300.1 , 0 );
setMoveKey( spep_2-3 + 229, 1, 219.8, 300.1 , 0 );
setMoveKey( spep_2-3 + 230, 1, 215.7, 284.2 , 0 );
setMoveKey( spep_2-3 + 231, 1, 215.7, 284.2 , 0 );
setMoveKey( spep_2-3 + 232, 1, 215.9, 285.9 , 0 );
setMoveKey( spep_2-1 + 232, 1, 215.9, 285.9 , 0 );

setScaleKey( spep_2-3 + 154, 1, 5.2, 5.2 );
setScaleKey( spep_2-3 + 156, 1, 3.96, 3.96 );
setScaleKey( spep_2-3 + 158, 1, 4, 4 );
setScaleKey( spep_2-3 + 160, 1, 4, 4 );
setScaleKey( spep_2-3 + 162, 1, 3, 3 );
setScaleKey( spep_2-3 + 164, 1, 2.97, 2.97 );
setScaleKey( spep_2-3 + 166, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 168, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 170, 1, 2.76, 2.76 );
setScaleKey( spep_2-3 + 172, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 174, 1, 2.35, 2.35 );
setScaleKey( spep_2-3 + 176, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 178, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 180, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 182, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 184, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 186, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 188, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 190, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 192, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 194, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 196, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 198, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 200, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 202, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 204, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 206, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 208, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 210, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 212, 1, 0.08, 0.08 );
setScaleKey( spep_2-1 + 232, 1, 0.08, 0.08 );

setRotateKey( spep_2-3 + 154, 1, 0 );
setRotateKey( spep_2-1 + 232, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 418, 1, 1 );
setDisp( spep_2-1 + 458, 1, 0 );

changeAnime( spep_2 + 418, 1, 105 );

a=10;

setMoveKey( spep_2-3 + 418, 1, 0+a, 174.1 , 0 );
setMoveKey( spep_2-3 + 419, 1, 0+a, 174.1 , 0 );
setMoveKey( spep_2-3 + 420, 1, 12+a, 167.1 , 0 );
setMoveKey( spep_2-3 + 421, 1, 12+a, 167.1 , 0 );
setMoveKey( spep_2-3 + 422, 1, -7.7+a, 172.6 , 0 );
setMoveKey( spep_2-3 + 423, 1, -7.7+a, 172.6 , 0 );
setMoveKey( spep_2-3 + 424, 1, 8.4+a, 175.3 , 0 );
setMoveKey( spep_2-3 + 425, 1, 8.4+a, 175.3 , 0 );
setMoveKey( spep_2-3 + 426, 1, -3.8+a, 171.2 , 0 );
setMoveKey( spep_2-3 + 427, 1, -3.8+a, 171.2 , 0 );
setMoveKey( spep_2-3 + 428, 1, 4+a, 177 , 0 );
setMoveKey( spep_2-3 + 429, 1, 4+a, 177 , 0 );
setMoveKey( spep_2-3 + 430, 1, -0.3+a, 179.1 , 0 );
setMoveKey( spep_2-3 + 431, 1, -0.3+a, 179.1 , 0 );
setMoveKey( spep_2-3 + 432, 1, -2.4+a, 171 , 0 );
setMoveKey( spep_2-3 + 433, 1, -2.4+a, 171 , 0 );
setMoveKey( spep_2-3 + 434, 1, 0.1+a, 179.2 , 0 );
setMoveKey( spep_2-3 + 435, 1, 0.1+a, 179.2 , 0 );
setMoveKey( spep_2-3 + 436, 1, 4+a, 167.6 , 0 );
setMoveKey( spep_2-3 + 437, 1, 4+a, 167.6 , 0 );
setMoveKey( spep_2-3 + 438, 1, -0.2+a, 175.4 , 0 );
setMoveKey( spep_2-3 + 439, 1, -0.2+a, 175.4 , 0 );
setMoveKey( spep_2-3 + 440, 1, 0.5+a, 171.8 , 0 );
setMoveKey( spep_2-3 + 441, 1, 0.5+a, 171.8 , 0 );
setMoveKey( spep_2-3 + 442, 1, 0.2+a, 174.7 , 0 );
setMoveKey( spep_2-3 + 443, 1, 0.2+a, 174.7 , 0 );
setMoveKey( spep_2-3 + 444, 1, 2.2+a, 173.2 , 0 );
setMoveKey( spep_2-3 + 445, 1, 2.2+a, 173.2 , 0 );
setMoveKey( spep_2-3 + 446, 1, -0.5+a, 174.8 , 0 );
setMoveKey( spep_2-3 + 447, 1, -0.5+a, 174.8 , 0 );
setMoveKey( spep_2-3 + 448, 1, 1+a, 172.6 , 0 );
setMoveKey( spep_2-3 + 449, 1, 1+a, 172.6 , 0 );
setMoveKey( spep_2-3 + 450, 1, 1.1+a, 174.9 , 0 );
setMoveKey( spep_2-3 + 451, 1, 1.1+a, 174.9 , 0 );
setMoveKey( spep_2-3 + 452, 1, 1.9+a, 172.4 , 0 );
setMoveKey( spep_2-3 + 453, 1, 1.9+a, 172.4 , 0 );
setMoveKey( spep_2-3 + 454, 1, -0.9+a, 174.1 , 0 );
setMoveKey( spep_2-3 + 455, 1, -0.9+a, 174.1 , 0 );
setMoveKey( spep_2-3 + 456, 1, 2.7+a, 173.3 , 0 );
setMoveKey( spep_2-3 + 457, 1, 2.7+a, 173.3 , 0 );
setMoveKey( spep_2-1 + 458, 1, -1.1+a, 173.5 , 0 );

setScaleKey( spep_2-3 + 418, 1, 0.3, 0.3 );
setScaleKey( spep_2-1 + 458, 1, 0.3, 0.3 );

setRotateKey( spep_2-3 + 418, 1, 0 );
setRotateKey( spep_2-1 + 458, 1, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 30,  10016, 20, 0x100, -1, 0, -19.3, 146.7 );
setEffShake( spep_2-3 + 30, ctzun, 20, 10 );
setEffMoveKey( spep_2-3 + 30, ctzun, -19.3, 146.7 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzun, -91.4, 211 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzun, -99.2, 221.5 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzun, -105.1, 224 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzun, -99.2, 221.5 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzun, -105.1, 224 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzun, -99.2, 221.5 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzun, -113.6, 232 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzun, -115.5, 237.1 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzun, -130.5, 247.8 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzun, -138.9, 255.8 , 0 );

setEffScaleKey( spep_2-3 + 30, ctzun, 1.38, 1.39 );
setEffScaleKey( spep_2-3 + 32, ctzun, 2.12, 2.13 );
setEffScaleKey( spep_2-3 + 34, ctzun, 2.27, 2.28 );
setEffScaleKey( spep_2-3 + 42, ctzun, 2.27, 2.28 );
setEffScaleKey( spep_2-3 + 44, ctzun, 2.4, 2.41 );
setEffScaleKey( spep_2-3 + 46, ctzun, 2.53, 2.54 );
setEffScaleKey( spep_2-3 + 48, ctzun, 2.65, 2.67 );
setEffScaleKey( spep_2-3 + 50, ctzun, 2.78, 2.8 );

setEffRotateKey( spep_2-3 + 30, ctzun, 0 );
setEffRotateKey( spep_2-3 + 50, ctzun, 0 );

setEffAlphaKey( spep_2-3 + 30, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 42, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 44, ctzun, 191 );
setEffAlphaKey( spep_2-3 + 46, ctzun, 128 );
setEffAlphaKey( spep_2-3 + 48, ctzun, 64 );
setEffAlphaKey( spep_2-3 + 50, ctzun, 0 );

--SE
playSe( spep_2 + 13, 1004 );
setSeVolume( spep_2 + 13, 1004, 40 );
playSe( spep_2 + 22, 1001 );
setSeVolume( spep_2 + 22, 1001, 65 );
playSe( spep_2 + 24, 1009 );
se_1188 = playSe( spep_2 + 25, 1188 );
setSeVolume( spep_2 + 27, 1188, 0.00 );
setSeVolume( spep_2 + 28, 1188, 1.39 );
setSeVolume( spep_2 + 29, 1188, 2.78 );
setSeVolume( spep_2 + 30, 1188, 4.17 );
setSeVolume( spep_2 + 31, 1188, 5.56 );
setSeVolume( spep_2 + 32, 1188, 6.94 );
setSeVolume( spep_2 + 33, 1188, 8.33 );
setSeVolume( spep_2 + 34, 1188, 9.72 );
setSeVolume( spep_2 + 35, 1188, 11.11 );
setSeVolume( spep_2 + 36, 1188, 12.50 );
setSeVolume( spep_2 + 37, 1188, 13.89 );
setSeVolume( spep_2 + 38, 1188, 15.28 );
setSeVolume( spep_2 + 39, 1188, 16.67 );
setSeVolume( spep_2 + 40, 1188, 18.06 );
setSeVolume( spep_2 + 41, 1188, 19.44 );
setSeVolume( spep_2 + 42, 1188, 20.83 );
setSeVolume( spep_2 + 43, 1188, 22.22 );
setSeVolume( spep_2 + 44, 1188, 23.61 );
setSeVolume( spep_2 + 45, 1188, 25.00 );
setSeVolume( spep_2 + 57,1188,25);
setSeVolume( spep_2 + 58,1188,24.45);
setSeVolume( spep_2 + 59,1188,23.9);
setSeVolume( spep_2 + 60,1188,23.35);
setSeVolume( spep_2 + 61,1188,22.8);
setSeVolume( spep_2 + 62,1188,22.25);
setSeVolume( spep_2 + 63,1188,21.7);
setSeVolume( spep_2 + 64,1188,21.15);
setSeVolume( spep_2 + 65,1188,20.6);
setSeVolume( spep_2 + 66,1188,20.05);
setSeVolume( spep_2 + 67,1188,19.5);
setSeVolume( spep_2 + 68,1188,18.95);
setSeVolume( spep_2 + 69,1188,18.4);
setSeVolume( spep_2 + 70,1188,17.85);
setSeVolume( spep_2 + 71,1188,17.3);
setSeVolume( spep_2 + 72,1188,16.75);
setSeVolume( spep_2 + 73,1188,16.2);
setSeVolume( spep_2 + 74,1188,15.65);
setSeVolume( spep_2 + 75,1188,15.1);
setSeVolume( spep_2 + 76,1188,14.55);
setSeVolume( spep_2 + 77,1188,14);
setSeVolume( spep_2 + 78,1188,13.45);
setSeVolume( spep_2 + 79,1188,12.9);
setSeVolume( spep_2 + 80,1188,12.35);
setSeVolume( spep_2 + 81,1188,11.8);
setSeVolume( spep_2 + 82,1188,11.25);
setSeVolume( spep_2 + 83,1188,10.7);
setSeVolume( spep_2 + 84,1188,10.15);
setSeVolume( spep_2 + 85,1188,9.59);
setSeVolume( spep_2 + 86,1188,9.04);
setSeVolume( spep_2 + 87,1188,8.49);
setSeVolume( spep_2 + 88,1188,7.94);
setSeVolume( spep_2 + 89,1188,7.39);
setSeVolume( spep_2 + 90,1188,6.84);
setSeVolume( spep_2 + 91,1188,6.29);
setSeVolume( spep_2 + 92,1188,5.74);
setSeVolume( spep_2 + 93,1188,5.19);
setSeVolume( spep_2 + 94,1188,4.64);
setSeVolume( spep_2 + 95,1188,4.09);
setSeVolume( spep_2 + 96,1188,3.54);
setSeVolume( spep_2 + 97,1188,2.99);
setSeVolume( spep_2 + 98,1188,2.44);
setSeVolume( spep_2 + 99,1188,1.89);
setSeVolume( spep_2 + 100,1188,1.34);
setSeVolume( spep_2 + 101,1188,0.791);
setSeVolume( spep_2 + 102,1188,0);
playSe( spep_2 + 28, 1000 );
setSeVolume( spep_2 + 28, 1000, 126 );
playSe( spep_2 + 32, 1110 );
setSeVolume( spep_2 + 32, 1110, 53 );
playSe( spep_2 + 81, 1035 );
se_1244 = playSe( spep_2 + 97, 1244 );
setSeVolume( spep_2 + 97, 1244, 0 );
setSeVolume( spep_2 + 125, 1244, 0 );
setSeVolume( spep_2 + 126, 1244, 14.29 );
setSeVolume( spep_2 + 127, 1244, 28.57 );
setSeVolume( spep_2 + 128, 1244, 42.86 );
setSeVolume( spep_2 + 129, 1244, 57.14 );
setSeVolume( spep_2 + 130, 1244, 71.43 );
setSeVolume( spep_2 + 131, 1244, 85.71 );
setSeVolume( spep_2 + 132, 1244, 100 );
se_12121 = playSe( spep_2 + 97, 1212 );
setSeVolume( spep_2 + 97, 1212, 0 );
setSeVolume( spep_2 + 129, 1212, 0 );
setSeVolume( spep_2 + 130, 1212, 2.31 );
setSeVolume( spep_2 + 131, 1212, 4.62 );
setSeVolume( spep_2 + 132, 1212, 6.92 );
setSeVolume( spep_2 + 133, 1212, 9.23 );
setSeVolume( spep_2 + 134, 1212, 11.54 );
setSeVolume( spep_2 + 135, 1212, 13.85 );
setSeVolume( spep_2 + 136, 1212, 16.15 );
setSeVolume( spep_2 + 137, 1212, 18.46 );
setSeVolume( spep_2 + 138, 1212, 20.77 );
setSeVolume( spep_2 + 139, 1212, 23.08 );
setSeVolume( spep_2 + 140, 1212, 25.38 );
setSeVolume( spep_2 + 141, 1212, 27.69 );
setSeVolume( spep_2 + 142, 1212, 30 );
setSeVolume( spep_2 + 143, 1212, 32.31 );
setSeVolume( spep_2 + 144, 1212, 34.62 );
setSeVolume( spep_2 + 145, 1212, 36.92 );
setSeVolume( spep_2 + 146, 1212, 39.23 );
setSeVolume( spep_2 + 147, 1212, 41.54 );
setSeVolume( spep_2 + 148, 1212, 43.85 );
setSeVolume( spep_2 + 149, 1212, 46.15 );
setSeVolume( spep_2 + 150, 1212, 48.46 );
setSeVolume( spep_2 + 151, 1212, 50.77 );
setSeVolume( spep_2 + 152, 1212, 53.08 );
setSeVolume( spep_2 + 153, 1212, 55.38 );
setSeVolume( spep_2 + 154, 1212, 57.69 );
setSeVolume( spep_2 + 155, 1212, 60 );
setSeVolume( spep_2 + 245,1212,60);
setSeVolume( spep_2 + 246,1212,58);
setSeVolume( spep_2 + 247,1212,56);
setSeVolume( spep_2 + 248,1212,54);
setSeVolume( spep_2 + 249,1212,52);
setSeVolume( spep_2 + 250,1212,50);
setSeVolume( spep_2 + 251,1212,48);
setSeVolume( spep_2 + 252,1212,46);
setSeVolume( spep_2 + 253,1212,44);
setSeVolume( spep_2 + 254,1212,42);
setSeVolume( spep_2 + 255,1212,40);
setSeVolume( spep_2 + 256,1212,38);
setSeVolume( spep_2 + 257,1212,36);
setSeVolume( spep_2 + 258,1212,34);
setSeVolume( spep_2 + 259,1212,32);
setSeVolume( spep_2 + 260,1212,30);
setSeVolume( spep_2 + 261,1212,28);
setSeVolume( spep_2 + 262,1212,26);
setSeVolume( spep_2 + 263,1212,24);
setSeVolume( spep_2 + 264,1212,22);
setSeVolume( spep_2 + 265,1212,20);
setSeVolume( spep_2 + 266,1212,18);
setSeVolume( spep_2 + 267,1212,16);
setSeVolume( spep_2 + 268,1212,14);
setSeVolume( spep_2 + 269,1212,12);
setSeVolume( spep_2 + 270,1212,10);
setSeVolume( spep_2 + 271,1212,8);
setSeVolume( spep_2 + 272,1212,6);
setSeVolume( spep_2 + 273,1212,4);
setSeVolume( spep_2 + 274,1212,0);
playSe( spep_2 + 104, 1133 );
setSeVolume( spep_2 + 104, 1133, 60 );
se_1146 = playSe( spep_2 + 104, 1146 );
playSe( spep_2 + 158, 1021 );
playSe( spep_2 + 160, 1027 );
setSeVolume( spep_2 + 160, 1027, 77 );
playSe( spep_2 + 204, 1072 );
se_1216 = playSe( spep_2 + 235, 1216 );
setSeVolume( spep_2 + 235, 1216, 0 );
setSeVolume( spep_2 + 266, 1216, 0 );
setSeVolume( spep_2 + 267, 1216, 22.67 );
setSeVolume( spep_2 + 268, 1216, 45.33 );
setSeVolume( spep_2 + 269, 1216, 68 );
setSeVolume( spep_2 + 295,1216,68);
setSeVolume( spep_2 + 296,1216,65.6);
setSeVolume( spep_2 + 297,1216,63.2);
setSeVolume( spep_2 + 298,1216,60.8);
setSeVolume( spep_2 + 299,1216,58.4);
setSeVolume( spep_2 + 300,1216,56);
setSeVolume( spep_2 + 301,1216,53.6);
setSeVolume( spep_2 + 302,1216,51.2);
setSeVolume( spep_2 + 303,1216,48.8);
setSeVolume( spep_2 + 304,1216,46.4);
setSeVolume( spep_2 + 305,1216,44);
setSeVolume( spep_2 + 306,1216,41.6);
setSeVolume( spep_2 + 307,1216,39.2);
setSeVolume( spep_2 + 308,1216,36.8);
setSeVolume( spep_2 + 309,1216,34.4);
setSeVolume( spep_2 + 310,1216,32);
setSeVolume( spep_2 + 311,1216,29.6);
setSeVolume( spep_2 + 312,1216,27.2);
setSeVolume( spep_2 + 313,1216,24.8);
setSeVolume( spep_2 + 314,1216,22.4);
setSeVolume( spep_2 + 315,1216,20);
setSeVolume( spep_2 + 316,1216,17.6);
setSeVolume( spep_2 + 317,1216,15.2);
setSeVolume( spep_2 + 318,1216,12.8);
setSeVolume( spep_2 + 319,1216,10.4);
setSeVolume( spep_2 + 320,1216,8.0);
setSeVolume( spep_2 + 321,1216,5.6);
setSeVolume( spep_2 + 322,1216,3.2);
setSeVolume( spep_2 + 323,1216,0);
playSe( spep_2 + 265, 1179 );
setSeVolume( spep_2 + 265, 1179, 61 );
playSe( spep_2 + 265, 1254 );
setSeVolume( spep_2 + 265, 1254, 61 );
se_1240 = playSe( spep_2 + 271, 1240 );
setSeVolume( spep_2 + 271, 1240, 136 );
playSe( spep_2 + 340, 1004 );
playSe( spep_2 + 340, 1003 );
playSe( spep_2 + 347, 1117 );
setSeVolume( spep_2 + 347, 1117, 116 );
playSe( spep_2 + 347, 1184 );
setSeVolume( spep_2 + 347, 1184, 0 );
setSeVolume( spep_2 + 348, 1184, 3.44 );
setSeVolume( spep_2 + 349, 1184, 6.88 );
setSeVolume( spep_2 + 350, 1184, 10.31 );
setSeVolume( spep_2 + 351, 1184, 13.75 );
setSeVolume( spep_2 + 352, 1184, 17.19 );
setSeVolume( spep_2 + 353, 1184, 20.63 );
setSeVolume( spep_2 + 354, 1184, 24.06 );
setSeVolume( spep_2 + 355, 1184, 27.50 );
setSeVolume( spep_2 + 356, 1184, 30.94 );
setSeVolume( spep_2 + 357, 1184, 34.38 );
setSeVolume( spep_2 + 358, 1184, 37.81 );
setSeVolume( spep_2 + 359, 1184, 41.25 );
setSeVolume( spep_2 + 360, 1184, 44.69 );
setSeVolume( spep_2 + 361, 1184, 48.13 );
setSeVolume( spep_2 + 362, 1184, 51.56 );
setSeVolume( spep_2 + 363, 1184, 55 );
playSe( spep_2 + 347, 1027 );
setSeVolume( spep_2 + 347, 1027, 61 );
playSe( spep_2 + 350, 1241 );
setSeVolume( spep_2 + 350, 1241, 69 );
se_1183 = playSe( spep_2 + 350, 1183 );
setSeVolume( spep_2 + 350, 1183, 69 );
playSe( spep_2 + 369, 44 );
se_1212 = playSe( spep_2 + 376, 1212 );
setSeVolume( spep_2 + 376, 1212, 0 );
setSeVolume( spep_2 + 395, 1212, 0 );
setSeVolume( spep_2 + 396, 1212, 2.9 );
setSeVolume( spep_2 + 397, 1212, 5.81 );
setSeVolume( spep_2 + 398, 1212, 8.71 );
setSeVolume( spep_2 + 399, 1212, 11.62 );
setSeVolume( spep_2 + 400, 1212, 14.52 );
setSeVolume( spep_2 + 401, 1212, 17.43 );
setSeVolume( spep_2 + 402, 1212, 20.33 );
setSeVolume( spep_2 + 403, 1212, 23.24 );
setSeVolume( spep_2 + 404, 1212, 26.14 );
setSeVolume( spep_2 + 405, 1212, 29.05 );
setSeVolume( spep_2 + 406, 1212, 31.95 );
setSeVolume( spep_2 + 407, 1212, 34.86 );
setSeVolume( spep_2 + 408, 1212, 37.76 );
setSeVolume( spep_2 + 409, 1212, 40.67 );
setSeVolume( spep_2 + 410, 1212, 43.57 );
setSeVolume( spep_2 + 411, 1212, 46.48 );
setSeVolume( spep_2 + 412, 1212, 49.38 );
setSeVolume( spep_2 + 413, 1212, 52.29 );
setSeVolume( spep_2 + 414, 1212, 55.19 );
setSeVolume( spep_2 + 415, 1212, 58.10 );
setSeVolume( spep_2 + 416, 1212, 61 );
setSeVolume( spep_2 + 463,1212,61);
setSeVolume( spep_2 + 464,1212,59.3);
setSeVolume( spep_2 + 465,1212,57.6);
setSeVolume( spep_2 + 466,1212,55.9);
setSeVolume( spep_2 + 467,1212,54.2);
setSeVolume( spep_2 + 468,1212,52.5);
setSeVolume( spep_2 + 469,1212,50.8);
setSeVolume( spep_2 + 470,1212,49.1);
setSeVolume( spep_2 + 471,1212,47.4);
setSeVolume( spep_2 + 472,1212,45.7);
setSeVolume( spep_2 + 473,1212,44);
setSeVolume( spep_2 + 474,1212,42.3);
setSeVolume( spep_2 + 475,1212,40.6);
setSeVolume( spep_2 + 476,1212,38.9);
setSeVolume( spep_2 + 477,1212,37.2);
setSeVolume( spep_2 + 478,1212,35.5);
setSeVolume( spep_2 + 479,1212,33.8);
setSeVolume( spep_2 + 480,1212,32.1);
setSeVolume( spep_2 + 481,1212,30.4);
setSeVolume( spep_2 + 482,1212,28.7);
setSeVolume( spep_2 + 483,1212,27);
setSeVolume( spep_2 + 484,1212,25.3);
setSeVolume( spep_2 + 485,1212,23.6);
setSeVolume( spep_2 + 486,1212,21.9);
setSeVolume( spep_2 + 487,1212,20.2);
setSeVolume( spep_2 + 488,1212,18.5);
setSeVolume( spep_2 + 489,1212,16.8);
setSeVolume( spep_2 + 490,1212,15.1);
setSeVolume( spep_2 + 491,1212,13.4);
setSeVolume( spep_2 + 492,1212,11.7);
setSeVolume( spep_2 + 493,1212,9.9);
setSeVolume( spep_2 + 494,1212,8.2);
setSeVolume( spep_2 + 495,1212,6.5);
setSeVolume( spep_2 + 496,1212,4.8);
setSeVolume( spep_2 + 497,1212,3.1);
setSeVolume( spep_2 + 498,1212,0);
se_1236 = playSe( spep_2 + 397, 1236 );
setSeVolume( spep_2 + 397, 1236, 116 );
se_1116 = playSe( spep_2 + 411, 1116 );
setSeVolume( spep_2 + 461, 1238, 59 );
playSe( spep_2 + 461, 1238 );
playSe( spep_2 + 461, 1179 );
playSe( spep_2 + 461, 1032 );
setSeVolume( spep_2 + 461, 1032, 87 );
playSe( spep_2 + 483, 1238 );
setSeVolume( spep_2 + 483, 1238, 64 );
playSe( spep_2 + 483, 1032 );
setSeVolume( spep_2 + 483, 1032, 69 );
playSe( spep_2 + 500, 1238 );
setSeVolume( spep_2 + 500, 1238, 67 );
playSe( spep_2 + 500, 1032 );
setSeVolume( spep_2 + 500, 1032, 68 );
playSe( spep_2 + 503, 1141 );
setSeVolume( spep_2 + 503, 1141, 54 );
playSe( spep_2 + 518, 1159 );
setSeVolume( spep_2 + 518, 1159, 72 );
playSe( spep_2 + 518, 1024 );
setSeVolume( spep_2 + 518, 1024, 75 );
playSe( spep_2 + 566, 1023 );
playSe( spep_2 + 566, 1188 );
setSeVolume( spep_2 + 566, 1188, 65 );
playSe( spep_2 + 578, 1229 );
setSeVolume( spep_2 + 578, 1229, 143 );


stopSe( spep_2 + 102, se_1188, 0 );
stopSe( spep_2 + 190, se_1244, 0 );
stopSe( spep_2 + 274, se_12121, 0 );
stopSe( spep_2 + 241, se_1146, 34 );
stopSe( spep_2 + 323, se_1216, 0 );
stopSe( spep_2 + 353, se_1240, 0 );
stopSe( spep_2 + 419, se_1183, 37 );
stopSe( spep_2 + 198, se_1212, 0 );
stopSe( spep_2 + 464, se_1236, 35 );
stopSe( spep_2 + 450, se_1116, 47 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 670 +10, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 562 );
endPhase( spep_2 + 670 );


end
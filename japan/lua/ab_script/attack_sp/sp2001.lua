--1019370:魔人ブウ(シェイプアップ)_メテオシャワーアサルト
--sp_effect_b4_00146

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
SP_01=	155333	;--	気溜め→気弾出現
SP_02=	155334	;--	振りかぶって気弾発射
SP_03=	155335	;--	敵が気弾を弾く
SP_04=	155336	;--	敵が気弾を弾く
SP_05=	155337	;--	顔アップ
SP_06=	155338	;--	手が伸びて敵に迫る
SP_07=	155339	;--	手が敵にあたる
SP_08=	155340	;--	手が敵にあたる
SP_09=	155341	;--	地面にぶつかる
SP_10=	155342	;--	地面にぶつかる

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
-- 気溜め→気弾出現
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 146, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 146, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+46  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+46  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +58, 190006, 72, 0x102, -1, 0, 100 +10, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +58,  ctgogo,  100 +10,  510);
setEffMoveKey(  spep_0 +130,  ctgogo,  100 +10,  510);

setEffAlphaKey( spep_0 +58, ctgogo, 0 );
setEffAlphaKey( spep_0 + 59, ctgogo, 255 );
setEffAlphaKey( spep_0 + 60, ctgogo, 255 );
setEffAlphaKey( spep_0 + 124, ctgogo, 255 );
setEffAlphaKey( spep_0 + 126, ctgogo, 191 );
setEffAlphaKey( spep_0 + 128, ctgogo, 112 );
setEffAlphaKey( spep_0 + 130, ctgogo, 64 );

setEffRotateKey(  spep_0 +58,  ctgogo,  0);
setEffRotateKey(  spep_0 +130,  ctgogo,  0);

setEffScaleKey(  spep_0 +58,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +120,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +130,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 20, 1035 );
playSe( spep_0 + 58, 1018 );
se_1199 = playSe( spep_0 + 58, 1199 );
setSeVolume( spep_0 + 58, 1199, 141 );
se_0049 = playSe( spep_0 + 58, 49 );
setSeVolume( spep_0 + 58, 49, 141 );
se_1241 = playSe( spep_0 + 95, 1241 );
setSeVolume( spep_0 + 95, 1241, 79 );
playSe( spep_0 + 95, 1003 );
SE0=playSe( spep_0 + 122, 1072 );

stopSe( spep_0 + 92, se_1199, 0 );
stopSe( spep_0 + 92, se_0049, 0 );

--次の準備
spep_1=spep_0 + 146;

------------------------------------------------------
-- 振りかぶって気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, kidan, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, kidan, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan, 0 );
setEffRotateKey( spep_1 + 100, kidan, 0 );
setEffAlphaKey( spep_1 + 0, kidan, 255 );
setEffAlphaKey( spep_1 + 100, kidan, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1241, 0 );
 --   stopSe( SP_dodge - 12, se_1161, 0 );

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

--SE
se_1027 = playSe( spep_1 + 40, 1027 );
playSe( spep_1 + 44, 1021 );
se_1005 = playSe( spep_1 + 64, 1005 );
playSe( spep_1 + 76, 1005 );
setSeVolume( spep_1 + 76, 1005, 89 );
playSe( spep_1 + 85, 1005 );
playSe( spep_1 + 95, 1005 );
setSeVolume( spep_1 + 95, 1005, 79 );

stopSe( spep_1 + 44, se_1241, 0 );



--白フェード
entryFade( spep_1+92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1 + 100;
------------------------------------------------------
-- 敵が気弾を弾く
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 130, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 130, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 130, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 130, hit_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 128, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2-3 + 24, 1, 118 );
changeAnime( spep_2-3 + 32, 1, 114 );
changeAnime( spep_2-3 + 48, 1, 119 );
changeAnime( spep_2-3 + 49, 1, 119 );
changeAnime( spep_2-3 + 50, 1, 119 );
changeAnime( spep_2-3 + 51, 1, 119 );
changeAnime( spep_2-3 + 52, 1, 119 );
changeAnime( spep_2-3 + 53, 1, 119 );
changeAnime( spep_2-3 + 54, 1, 119 );
changeAnime( spep_2-3 + 55, 1, 119 );
changeAnime( spep_2-3 + 56, 1, 119 );
changeAnime( spep_2-3 + 57, 1, 119 );
changeAnime( spep_2-3 + 58, 1, 119 );
changeAnime( spep_2-3 + 59, 1, 119 );
changeAnime( spep_2-3 + 60, 1, 104 );
changeAnime( spep_2-3 + 64, 1, 112 );
changeAnime( spep_2-3 + 69, 1, 104 );
changeAnime( spep_2-3 + 70, 1, 113 );
changeAnime( spep_2-3 + 75, 1, 104 );
changeAnime( spep_2-3 + 77, 1, 112 );
changeAnime( spep_2-3 + 79, 1, 104 );
changeAnime( spep_2-3 + 81, 1, 113 );
changeAnime( spep_2-3 + 82, 1, 100 );
changeAnime( spep_2-3 + 92, 1, 11 );
changeAnime( spep_2-3 + 103, 1, 11 );
changeAnime( spep_2-3 + 104, 1, 12 );
changeAnime( spep_2-3 + 109, 1, 11 );
changeAnime( spep_2-3 + 110, 1, 13 );
changeAnime( spep_2-3 + 115, 1, 11 );
changeAnime( spep_2-3 + 116, 1, 12 );
changeAnime( spep_2-3 + 120, 1, 11 );
changeAnime( spep_2-3 + 120, 1, 11 );
changeAnime( spep_2-3 + 121, 1, 11 );
changeAnime( spep_2-3 + 122, 1, 11 );
changeAnime( spep_2-3 + 123, 1, 11 );
changeAnime( spep_2-3 + 124, 1, 11 );
changeAnime( spep_2-3 + 125, 1, 11 );
changeAnime( spep_2-3 + 126, 1, 11 );
changeAnime( spep_2-3 + 127, 1, 11 );
changeAnime( spep_2-3 + 128, 1, 11 );


setMoveKey( spep_2 + 0, 1, 737.2, -624.2 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 602.4, -502.1 , 0 );
setMoveKey( spep_2-3 + 4, 1, 467.7, -379.9 , 0 );
setMoveKey( spep_2-3 + 6, 1, 333, -257.8 , 0 );
setMoveKey( spep_2-3 + 8, 1, 198.2, -135.7 , 0 );
setMoveKey( spep_2-3 + 10, 1, 63.5, -13.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 0.1, 23 , 0 );
setMoveKey( spep_2-3 + 14, 1, 4.9, 21 , 0 );
setMoveKey( spep_2-3 + 16, 1, 9.7, 19 , 0 );
setMoveKey( spep_2-3 + 18, 1, 14.5, 17 , 0 );
setMoveKey( spep_2-3 + 20, 1, 19.3, 15 , 0 );
setMoveKey( spep_2-3 + 23, 1, 24.1, 13 , 0 );
setMoveKey( spep_2-3 + 24, 1, 62, 6 , 0 );
setMoveKey( spep_2-3 + 26, 1, 69.3, 2.7 , 0 );
setMoveKey( spep_2-3 + 28, 1, 76.7, -0.6 , 0 );
setMoveKey( spep_2-3 + 31, 1, 84, -4 , 0 );
setMoveKey( spep_2-3 + 32, 1, 58, -17.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 41, -10.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 24, -3.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 7, 3.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, -10, 10.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, -12, 14.2 , 0 );
setMoveKey( spep_2-3 + 44, 1, -14, 18.4 , 0 );
setMoveKey( spep_2-3 + 47, 1, -15.9, 22.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 0.1, 34 , 0 );
setMoveKey( spep_2-3 + 50, 1, -26, 34 , 0 );
setMoveKey( spep_2-3 + 52, 1, -66, 34 , 0 );
setMoveKey( spep_2-3 + 54, 1, -80, 34 , 0 );
setMoveKey( spep_2-3 + 56, 1, -90, 34 , 0 );
setMoveKey( spep_2-3 + 59, 1, -98, 34 , 0 );
setMoveKey( spep_2-3 + 60, 1, -70, 28 , 0 );
setMoveKey( spep_2-3 + 63, 1, -38, 24 , 0 );
setMoveKey( spep_2-3 + 64, 1, -60, 46 , 0 );
setMoveKey( spep_2-3 + 67, 1, -48, 46 , 0 );
setMoveKey( spep_2-3 + 69, 1, 22, 10 , 0 );
setMoveKey( spep_2-3 + 70, 1, 4, 30 , 0 );
setMoveKey( spep_2-3 + 73, 1, 16, 30 , 0 );
setMoveKey( spep_2-3 + 75, 1, 66, 14 , 0 );
setMoveKey( spep_2-3 + 77, 1, 40, 34 , 0 );
setMoveKey( spep_2-3 + 79, 1, 118, 16 , 0 );
setMoveKey( spep_2-3 + 81, 1, 102, 24 , 0 );
setMoveKey( spep_2-3 + 82, 1, 184, 0 , 0 );
setMoveKey( spep_2-3 + 84, 1, 201.6, -8.8 , 0 );
setMoveKey( spep_2-3 + 86, 1, 214.1, -15 , 0 );
setMoveKey( spep_2-3 + 88, 1, 221.6, -18.8 , 0 );
setMoveKey( spep_2-3 + 91, 1, 224, -20 , 0 );
setMoveKey( spep_2-3 + 92, 1, 170.1, -18 , 0 );
setMoveKey( spep_2-3 + 94, 1, 107.7, 4 , 0 );
setMoveKey( spep_2-3 + 96, 1, 17, 36 , 0 );
setMoveKey( spep_2-3 + 98, 1, -28.4, 52 , 0 );
setMoveKey( spep_2-3 + 101, 1, -34, 54 , 0 );
setMoveKey( spep_2-3 + 103, 1, -80, 70.1 , 0 );
setMoveKey( spep_2-3 + 104, 1, -32, 90 , 0 );
setMoveKey( spep_2-3 + 107, 1, -40, 90 , 0 );
setMoveKey( spep_2-3 + 109, 1, -110, 70.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, -52, 84.1 , 0 );
setMoveKey( spep_2-3 + 113, 1, -60, 84.1 , 0 );
setMoveKey( spep_2-3 + 115, 1, -130, 70.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, -112, 92 , 0 );
setMoveKey( spep_2-3 + 119, 1, -120, 92 , 0 );
setMoveKey( spep_2-3 + 120, 1, -220, 110.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, -226.1, 113.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, -235.8, 118.7 , 0 );
setMoveKey( spep_2-3 + 126, 1, -237.5, 119.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, -239.3, 120.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.57, 1.57 );
--setScaleKey( spep_2 + 2, 1, 1.89, 1.89 );
--setScaleKey( spep_2 + 4, 1, 1.8, 1.8 );
--setScaleKey( spep_2 + 6, 1, 1.72, 1.72 );
--setScaleKey( spep_2 + 8, 1, 1.63, 1.63 );
--setScaleKey( spep_2 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 12, 1, 1.27, 1.27 );
setScaleKey( spep_2-3 + 23, 1, 1.27, 1.27 );
setScaleKey( spep_2-3 + 24, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 31, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 32, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 47, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 48, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 59, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 60, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 63, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 64, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 67, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 69, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 70, 1, 1.4, 1.4 );
--setScaleKey( spep_2-3 + 73, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 76, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 77, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 78, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 79, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 80, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 81, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 82, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 91, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 92, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 101, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 103, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 104, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 107, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 109, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 110, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 113, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 115, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 116, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 119, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 120, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 124, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 126, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 128, 1, 1.44, 1.44 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 31, 1, 0 );
setRotateKey( spep_2-3 + 32, 1, -45.5 );
setRotateKey( spep_2-3 + 34, 1, -38 );
setRotateKey( spep_2-3 + 36, 1, -30.5 );
setRotateKey( spep_2-3 + 38, 1, -23 );
setRotateKey( spep_2-3 + 40, 1, -15.5 );
setRotateKey( spep_2-3 + 42, 1, -15 );
setRotateKey( spep_2-3 + 44, 1, -14.6 );
setRotateKey( spep_2-3 + 47, 1, -14.1 );
setRotateKey( spep_2-3 + 48, 1, 0 );
setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 63, 1, 3 );
setRotateKey( spep_2-3 + 64, 1, 0 );
setRotateKey( spep_2-3 + 67, 1, 0 );
setRotateKey( spep_2-3 + 69, 1, 3 );
setRotateKey( spep_2-3 + 70, 1, 8.4 );
setRotateKey( spep_2-3 + 73, 1, 8.4 );
setRotateKey( spep_2-3 + 75, 1, 3 );
setRotateKey( spep_2-3 + 77, 1, 0 );
setRotateKey( spep_2-3 + 79, 1, 3 );
setRotateKey( spep_2-3 + 81, 1, 8.4 );
setRotateKey( spep_2-3 + 82, 1, 0 );
setRotateKey( spep_2-3 + 91, 1, 0 );
setRotateKey( spep_2-3 + 92, 1, 12.5 );
setRotateKey( spep_2-3 + 94, 1, 13 );
setRotateKey( spep_2-3 + 96, 1, 14 );
setRotateKey( spep_2-3 + 98, 1, 14.5 );
setRotateKey( spep_2-3 + 103, 1, 14.7 );
setRotateKey( spep_2-3 + 104, 1, -39.7 );
setRotateKey( spep_2-3 + 105, 1, 0 );
setRotateKey( spep_2-3 + 108, 1, 0 );
setRotateKey( spep_2-3 + 109, 1, -41.4 );
setRotateKey( spep_2-3 + 110, 1, -27.5 );
setRotateKey( spep_2-3 + 113, 1, -27.5 );
setRotateKey( spep_2-3 + 115, 1, -41.4 );
setRotateKey( spep_2-3 + 116, 1, 0 );
setRotateKey( spep_2-3 + 119, 1, 0 );
setRotateKey( spep_2-3 + 120, 1, -39.7 );
setRotateKey( spep_2-3 + 122, 1, -39.6 );
setRotateKey( spep_2-3 + 128, 1, -39.6 );

--SE
playSe( spep_2 + 5, 1005 );
playSe( spep_2 + 14, 1005 );
setSeVolume( spep_2 + 14, 1005, 71 );
playSe( spep_2 + 26, 1005 );
setSeVolume( spep_2 + 26, 1005, 71 );
playSe( spep_2 + 31, 1008 );
playSe( spep_2 + 42, 1005 );
setSeVolume( spep_2 + 42, 1005, 79 );
playSe( spep_2 + 57, 1006 );
setSeVolume( spep_2 + 57, 1006, 89 );
playSe( spep_2 + 63, 1005 );
setSeVolume( spep_2 + 63, 1005, 63 );
playSe( spep_2 + 69, 1006 );
setSeVolume( spep_2 + 69, 1006, 71 );
playSe( spep_2 + 76, 1006 );
setSeVolume( spep_2 + 76, 1006, 79 );
playSe( spep_2 + 92, 1005 );
setSeVolume( spep_2 + 92, 1005, 63 );
playSe( spep_2 + 96, 1007 );
setSeVolume( spep_2 + 96, 1007, 89 );
playSe( spep_2 + 101, 1006 );
playSe( spep_2 + 107, 1006 );
setSeVolume( spep_2 + 107, 1006, 79 );
playSe( spep_2 + 113, 1005 );
setSeVolume( spep_2 + 113, 1005, 63 );
playSe( spep_2 + 120, 1007 );

--白フェード
entryFade( spep_2+122 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2 + 130;
------------------------------------------------------
-- 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_3 + 50, face, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_3 + 50, face, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, face, 0 );
setEffRotateKey( spep_3 + 50, face, 0 );
setEffAlphaKey( spep_3 + 0, face, 255 );
setEffAlphaKey( spep_3 + 50, face, 255 );

--SE
playSe( spep_3 + 10, 1237 );


--白フェード
entryFade( spep_3+42 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3 + 50;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 手が伸びて敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hand, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, hand, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, hand, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hand, 0 );
setEffRotateKey( spep_5 + 84, hand, 0 );
setEffAlphaKey( spep_5 + 0, hand, 255 );
setEffAlphaKey( spep_5 + 84, hand, 255 );

--SE
playSe( spep_5 + 6, 1021 );
playSe( spep_5 + 6, 1116 );
setSeVolume( spep_5 + 6, 1116, 112 );
playSe( spep_5 + 15, 1227 );
setSeVolume( spep_5 + 15, 1227, 126 );

--白フェード
entryFade( spep_5+72 +2 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 84;
------------------------------------------------------
-- 手が敵にあたる
------------------------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit2_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, hit2_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit2_f, 0 );
setEffRotateKey( spep_6 + 76, hit2_f, 0 );
setEffAlphaKey( spep_6 + 0, hit2_f, 255 );
setEffAlphaKey( spep_6 + 76, hit2_f, 255 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit2_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, hit2_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit2_b, 0 );
setEffRotateKey( spep_6 + 76, hit2_b, 0 );
setEffAlphaKey( spep_6 + 0, hit2_b, 255 );
setEffAlphaKey( spep_6 + 76, hit2_b, 255 );


--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 70, 1, 0 );

changeAnime( spep_6 + 0, 1, 3 );
changeAnime( spep_6-3 + 10, 1, 104 );
changeAnime( spep_6-3 + 20, 1, 119 );
changeAnime( spep_6-3 + 34, 1, 108 );

setMoveKey( spep_6 + 0, 1, -188, 140 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -82.9, 86 , 0 );
setMoveKey( spep_6-3 + 4, 1, -1.2, 44 , 0 );
setMoveKey( spep_6-3 + 6, 1, 92.3, -4 , 0 );
setMoveKey( spep_6-3 + 9, 1, 104, -10 , 0 );
setMoveKey( spep_6-3 + 10, 1, 146, -28 , 0 );
setMoveKey( spep_6-3 + 12, 1, 165.3, -41.1 , 0 );
setMoveKey( spep_6-3 + 14, 1, 179, -50.5 , 0 );
setMoveKey( spep_6-3 + 16, 1, 187.3, -56.1 , 0 );
setMoveKey( spep_6-3 + 19, 1, 190, -58 , 0 );
setMoveKey( spep_6-3 + 20, 1, 158.7, -17.6 , 0 );
setMoveKey( spep_6-3 + 22, 1, 135.8, -4.4 , 0 );
setMoveKey( spep_6-3 + 24, 1, 116.5, 6.9 , 0 );
setMoveKey( spep_6-3 + 26, 1, 100.7, 16 , 0 );
setMoveKey( spep_6-3 + 28, 1, 79.6, 28.3 , 0 );
setMoveKey( spep_6-3 + 30, 1, 77.1, 29.8 , 0 );
setMoveKey( spep_6-3 + 33, 1, 74.4, 31.4 , 0 );
setMoveKey( spep_6-3 + 34, 1, 28.5, 65.9 , 0 );
setMoveKey( spep_6-3 + 35, 1, 28.5, 65.9 , 0 );
setMoveKey( spep_6-3 + 36, 1, 33.8, 62.5 , 0 );
setMoveKey( spep_6-3 + 37, 1, 33.8, 62.5 , 0 );
setMoveKey( spep_6-3 + 38, 1, 39, 59.1 , 0 );
setMoveKey( spep_6-3 + 39, 1, 39, 59.1 , 0 );
setMoveKey( spep_6-3 + 40, 1, 44.3, 55.7 , 0 );
setMoveKey( spep_6-3 + 41, 1, 44.3, 55.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, 49.6, 52.2 , 0 );
setMoveKey( spep_6-3 + 43, 1, 49.6, 52.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, 54.8, 48.8 , 0 );
setMoveKey( spep_6-3 + 45, 1, 54.8, 48.8 , 0 );
setMoveKey( spep_6-3 + 46, 1, 60.1, 45.4 , 0 );
setMoveKey( spep_6-3 + 47, 1, 60.1, 45.4 , 0 );
setMoveKey( spep_6-3 + 48, 1, 65.4, 42 , 0 );
setMoveKey( spep_6-3 + 49, 1, 65.4, 42 , 0 );
setMoveKey( spep_6-3 + 50, 1, 70.6, 38.5 , 0 );
setMoveKey( spep_6-3 + 51, 1, 70.6, 38.5 , 0 );
setMoveKey( spep_6-3 + 52, 1, 75.9, 35.1 , 0 );
setMoveKey( spep_6-3 + 53, 1, 75.9, 35.1 , 0 );
setMoveKey( spep_6-3 + 54, 1, 145.4, -20.5 , 0 );
setMoveKey( spep_6-3 + 55, 1, 145.4, -20.5 , 0 );
setMoveKey( spep_6-3 + 56, 1, 214.9, -76.1 , 0 );
setMoveKey( spep_6-3 + 57, 1, 214.9, -76.1 , 0 );
setMoveKey( spep_6-3 + 58, 1, 284.4, -131.7 , 0 );
setMoveKey( spep_6-3 + 59, 1, 284.4, -131.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, 353.9, -187.3 , 0 );
setMoveKey( spep_6-3 + 61, 1, 353.9, -187.3 , 0 );
setMoveKey( spep_6-3 + 62, 1, 423.4, -242.8 , 0 );
setMoveKey( spep_6-3 + 63, 1, 423.4, -242.8 , 0 );
setMoveKey( spep_6-3 + 64, 1, 492.9, -298.4 , 0 );
setMoveKey( spep_6-3 + 65, 1, 492.9, -298.4 , 0 );
setMoveKey( spep_6-3 + 66, 1, 562.4, -354 , 0 );
setMoveKey( spep_6-3 + 67, 1, 562.4, -354 , 0 );
setMoveKey( spep_6-3 + 68, 1, 632, -409.6 , 0 );
setMoveKey( spep_6-3 + 69, 1, 632, -409.6 , 0 );
setMoveKey( spep_6-3 + 70, 1, 696, -451.2 , 0 );
--setMoveKey( spep_6-3 + 72, 1, 760, -492.8 , 0 );
--setMoveKey( spep_6-3 + 74, 1, 824, -534.4 , 0 );
--setMoveKey( spep_6-3 + 76, 1, 888, -576 , 0 );
--setMoveKey( spep_6-3 + 78, 1, 952, -617.6 , 0 );

setScaleKey( spep_6 + 0, 1, 1.55, 1.55 );
setScaleKey( spep_6-3 + 9, 1, 1.55, 1.55 );
setScaleKey( spep_6-3 + 10, 1, 1.39, 1.39 );
setScaleKey( spep_6-3 + 19, 1, 1.39, 1.39 );
setScaleKey( spep_6-3 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_6-3 + 33, 1, 1.47, 1.47 );
setScaleKey( spep_6-3 + 34, 1, 1.63, 1.63 );
setScaleKey( spep_6-3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_6-3 + 56, 1, 1.62, 1.62 );
setScaleKey( spep_6-3 + 58, 1, 1.62, 1.62 );
setScaleKey( spep_6-3 + 60, 1, 1.61, 1.61 );
setScaleKey( spep_6-3 + 62, 1, 1.6, 1.6 );
setScaleKey( spep_6-3 + 64, 1, 1.6, 1.6 );
setScaleKey( spep_6-3 + 66, 1, 1.59, 1.59 );
setScaleKey( spep_6-3 + 70, 1, 1.59, 1.59 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-3 + 19, 1, 0 );
setRotateKey( spep_6-3 + 20, 1, 18.9 );
setRotateKey( spep_6-3 + 22, 1, 18.8 );
setRotateKey( spep_6-3 + 33, 1, 18.8 );
setRotateKey( spep_6-3 + 34, 1, 25.3 );
setRotateKey( spep_6-3 + 70, 1, 25.3 );

--SE
playSe( spep_6 + 31, 1027 );
setSeVolume( spep_6 + 31, 1027, 71 );
playSe( spep_6 + 35, 1023 );
playSe( spep_6 + 35, 1010 );
setSeVolume( spep_6 + 35, 1010, 71 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 76;
------------------------------------------------------
-- 地面にぶつかる
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 120, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 120, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 120, finish_b, 255 );


setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -349.8, 169.9 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -288.2, 110.8 , 0 );
setMoveKey( spep_7-3 + 4, 1, -226.8, 48.1 , 0 );
setMoveKey( spep_7-3 + 5, 1, -226.8, 48.1 , 0 );
setMoveKey( spep_7-3 + 6, 1, -159, -9.5 , 0 );
setMoveKey( spep_7-3 + 7, 1, -159, -9.5 , 0 );
setMoveKey( spep_7-3 + 8, 1, -99.2, -69.9 , 0 );
setMoveKey( spep_7-3 + 9, 1, -99.2, -69.9 , 0 );
setMoveKey( spep_7-3 + 10, 1, -32.8, -135.4 , 0 );
setMoveKey( spep_7-3 + 11, 1, -32.8, -135.4 , 0 );
setMoveKey( spep_7-3 + 12, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 13, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 14, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 16, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 18, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 20, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 22, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 26, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 28, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 30, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 32, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 34, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 36, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 38, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 40, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 42, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 44, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 46, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 48, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 50, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 52, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 54, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 56, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 58, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 60, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 62, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 64, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 66, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 68, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 70, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 72, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 74, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 76, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 78, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 80, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 82, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 84, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 86, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 88, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 90, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 92, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 94, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 96, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 98, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 100, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 102, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 104, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 106, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 108, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 110, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 112, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 114, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 116, 1, 27, -195.4 , 0 );
setMoveKey( spep_7 + 118, 1, 31.7, -192.7 , 0 );

setScaleKey( spep_7 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 118, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 66.3 );
--setRotateKey( spep_7-3 + 2, 1, 68.7 );
setRotateKey( spep_7-3 + 4, 1, 71.1 );
setRotateKey( spep_7-3 + 6, 1, 73.6 );
setRotateKey( spep_7-3 + 8, 1, 76 );
setRotateKey( spep_7-3 + 10, 1, 78.4 );
setRotateKey( spep_7-3 + 12, 1, 80.8 );
setRotateKey( spep_7 + 118, 1, 80.8 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_7 + 15, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 28 );
endPhase( spep_7 + 110 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め→気弾出現
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 146, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 146, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+46  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+46  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +58, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +58,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +130,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +58, ctgogo, 0 );
setEffAlphaKey( spep_0 + 59, ctgogo, 255 );
setEffAlphaKey( spep_0 + 60, ctgogo, 255 );
setEffAlphaKey( spep_0 + 124, ctgogo, 255 );
setEffAlphaKey( spep_0 + 126, ctgogo, 191 );
setEffAlphaKey( spep_0 + 128, ctgogo, 112 );
setEffAlphaKey( spep_0 + 130, ctgogo, 64 );

setEffRotateKey(  spep_0 +58,  ctgogo,  0);
setEffRotateKey(  spep_0 +130,  ctgogo,  0);

setEffScaleKey(  spep_0 +58,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +120,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +130,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 20, 1035 );
playSe( spep_0 + 58, 1018 );
se_1199 = playSe( spep_0 + 58, 1199 );
setSeVolume( spep_0 + 58, 1199, 141 );
se_0049 = playSe( spep_0 + 58, 49 );
setSeVolume( spep_0 + 58, 49, 141 );
se_1241 = playSe( spep_0 + 95, 1241 );
setSeVolume( spep_0 + 95, 1241, 79 );
playSe( spep_0 + 95, 1003 );
SE0=playSe( spep_0 + 122, 1072 );

stopSe( spep_0 + 92, se_1199, 0 );
stopSe( spep_0 + 92, se_0049, 0 );

--次の準備
spep_1=spep_0 + 146;

------------------------------------------------------
-- 振りかぶって気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, kidan, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, kidan, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan, 0 );
setEffRotateKey( spep_1 + 100, kidan, 0 );
setEffAlphaKey( spep_1 + 0, kidan, 255 );
setEffAlphaKey( spep_1 + 100, kidan, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1241, 0 );
 --   stopSe( SP_dodge - 12, se_1161, 0 );

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

--SE
se_1027 = playSe( spep_1 + 40, 1027 );
playSe( spep_1 + 44, 1021 );
se_1005 = playSe( spep_1 + 64, 1005 );
playSe( spep_1 + 76, 1005 );
setSeVolume( spep_1 + 76, 1005, 89 );
playSe( spep_1 + 85, 1005 );
playSe( spep_1 + 95, 1005 );
setSeVolume( spep_1 + 95, 1005, 79 );

stopSe( spep_1 + 44, se_1241, 0 );



--白フェード
entryFade( spep_1+92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1 + 100;
------------------------------------------------------
-- 敵が気弾を弾く
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 130, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 130, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 130, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 130, hit_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 128, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2-3 + 24, 1, 118 );
changeAnime( spep_2-3 + 32, 1, 114 );
changeAnime( spep_2-3 + 48, 1, 119 );
changeAnime( spep_2-3 + 49, 1, 119 );
changeAnime( spep_2-3 + 50, 1, 119 );
changeAnime( spep_2-3 + 51, 1, 119 );
changeAnime( spep_2-3 + 52, 1, 119 );
changeAnime( spep_2-3 + 53, 1, 119 );
changeAnime( spep_2-3 + 54, 1, 119 );
changeAnime( spep_2-3 + 55, 1, 119 );
changeAnime( spep_2-3 + 56, 1, 119 );
changeAnime( spep_2-3 + 57, 1, 119 );
changeAnime( spep_2-3 + 58, 1, 119 );
changeAnime( spep_2-3 + 59, 1, 119 );
changeAnime( spep_2-3 + 60, 1, 104 );
changeAnime( spep_2-3 + 64, 1, 112 );
changeAnime( spep_2-3 + 69, 1, 104 );
changeAnime( spep_2-3 + 70, 1, 113 );
changeAnime( spep_2-3 + 75, 1, 104 );
changeAnime( spep_2-3 + 77, 1, 112 );
changeAnime( spep_2-3 + 79, 1, 104 );
changeAnime( spep_2-3 + 81, 1, 113 );
changeAnime( spep_2-3 + 82, 1, 100 );
changeAnime( spep_2-3 + 92, 1, 11 );
changeAnime( spep_2-3 + 103, 1, 11 );
changeAnime( spep_2-3 + 104, 1, 12 );
changeAnime( spep_2-3 + 109, 1, 11 );
changeAnime( spep_2-3 + 110, 1, 13 );
changeAnime( spep_2-3 + 115, 1, 11 );
changeAnime( spep_2-3 + 116, 1, 12 );
changeAnime( spep_2-3 + 120, 1, 11 );
changeAnime( spep_2-3 + 120, 1, 11 );
changeAnime( spep_2-3 + 121, 1, 11 );
changeAnime( spep_2-3 + 122, 1, 11 );
changeAnime( spep_2-3 + 123, 1, 11 );
changeAnime( spep_2-3 + 124, 1, 11 );
changeAnime( spep_2-3 + 125, 1, 11 );
changeAnime( spep_2-3 + 126, 1, 11 );
changeAnime( spep_2-3 + 127, 1, 11 );
changeAnime( spep_2-3 + 128, 1, 11 );


setMoveKey( spep_2 + 0, 1, 737.2, -624.2 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 602.4, -502.1 , 0 );
setMoveKey( spep_2-3 + 4, 1, 467.7, -379.9 , 0 );
setMoveKey( spep_2-3 + 6, 1, 333, -257.8 , 0 );
setMoveKey( spep_2-3 + 8, 1, 198.2, -135.7 , 0 );
setMoveKey( spep_2-3 + 10, 1, 63.5, -13.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 0.1, 23 , 0 );
setMoveKey( spep_2-3 + 14, 1, 4.9, 21 , 0 );
setMoveKey( spep_2-3 + 16, 1, 9.7, 19 , 0 );
setMoveKey( spep_2-3 + 18, 1, 14.5, 17 , 0 );
setMoveKey( spep_2-3 + 20, 1, 19.3, 15 , 0 );
setMoveKey( spep_2-3 + 23, 1, 24.1, 13 , 0 );
setMoveKey( spep_2-3 + 24, 1, 62, 6 , 0 );
setMoveKey( spep_2-3 + 26, 1, 69.3, 2.7 , 0 );
setMoveKey( spep_2-3 + 28, 1, 76.7, -0.6 , 0 );
setMoveKey( spep_2-3 + 31, 1, 84, -4 , 0 );
setMoveKey( spep_2-3 + 32, 1, 58, -17.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 41, -10.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 24, -3.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 7, 3.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, -10, 10.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, -12, 14.2 , 0 );
setMoveKey( spep_2-3 + 44, 1, -14, 18.4 , 0 );
setMoveKey( spep_2-3 + 47, 1, -15.9, 22.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 0.1, 34 , 0 );
setMoveKey( spep_2-3 + 50, 1, -26, 34 , 0 );
setMoveKey( spep_2-3 + 52, 1, -66, 34 , 0 );
setMoveKey( spep_2-3 + 54, 1, -80, 34 , 0 );
setMoveKey( spep_2-3 + 56, 1, -90, 34 , 0 );
setMoveKey( spep_2-3 + 59, 1, -98, 34 , 0 );
setMoveKey( spep_2-3 + 60, 1, -70, 28 , 0 );
setMoveKey( spep_2-3 + 63, 1, -38, 24 , 0 );
setMoveKey( spep_2-3 + 64, 1, -60, 46 , 0 );
setMoveKey( spep_2-3 + 67, 1, -48, 46 , 0 );
setMoveKey( spep_2-3 + 69, 1, 22, 10 , 0 );
setMoveKey( spep_2-3 + 70, 1, 4, 30 , 0 );
setMoveKey( spep_2-3 + 73, 1, 16, 30 , 0 );
setMoveKey( spep_2-3 + 75, 1, 66, 14 , 0 );
setMoveKey( spep_2-3 + 77, 1, 40, 34 , 0 );
setMoveKey( spep_2-3 + 79, 1, 118, 16 , 0 );
setMoveKey( spep_2-3 + 81, 1, 102, 24 , 0 );
setMoveKey( spep_2-3 + 82, 1, 184, 0 , 0 );
setMoveKey( spep_2-3 + 84, 1, 201.6, -8.8 , 0 );
setMoveKey( spep_2-3 + 86, 1, 214.1, -15 , 0 );
setMoveKey( spep_2-3 + 88, 1, 221.6, -18.8 , 0 );
setMoveKey( spep_2-3 + 91, 1, 224, -20 , 0 );
setMoveKey( spep_2-3 + 92, 1, 170.1, -18 , 0 );
setMoveKey( spep_2-3 + 94, 1, 107.7, 4 , 0 );
setMoveKey( spep_2-3 + 96, 1, 17, 36 , 0 );
setMoveKey( spep_2-3 + 98, 1, -28.4, 52 , 0 );
setMoveKey( spep_2-3 + 101, 1, -34, 54 , 0 );
setMoveKey( spep_2-3 + 103, 1, -80, 70.1 , 0 );
setMoveKey( spep_2-3 + 104, 1, -32, 90 , 0 );
setMoveKey( spep_2-3 + 107, 1, -40, 90 , 0 );
setMoveKey( spep_2-3 + 109, 1, -110, 70.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, -52, 84.1 , 0 );
setMoveKey( spep_2-3 + 113, 1, -60, 84.1 , 0 );
setMoveKey( spep_2-3 + 115, 1, -130, 70.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, -112, 92 , 0 );
setMoveKey( spep_2-3 + 119, 1, -120, 92 , 0 );
setMoveKey( spep_2-3 + 120, 1, -220, 110.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, -226.1, 113.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, -235.8, 118.7 , 0 );
setMoveKey( spep_2-3 + 126, 1, -237.5, 119.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, -239.3, 120.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.57, 1.57 );
--setScaleKey( spep_2 + 2, 1, 1.89, 1.89 );
--setScaleKey( spep_2 + 4, 1, 1.8, 1.8 );
--setScaleKey( spep_2 + 6, 1, 1.72, 1.72 );
--setScaleKey( spep_2 + 8, 1, 1.63, 1.63 );
--setScaleKey( spep_2 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 12, 1, 1.27, 1.27 );
setScaleKey( spep_2-3 + 23, 1, 1.27, 1.27 );
setScaleKey( spep_2-3 + 24, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 31, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 32, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 47, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 48, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 59, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 60, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 63, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 64, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 67, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 69, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 70, 1, 1.4, 1.4 );
--setScaleKey( spep_2-3 + 73, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 76, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 77, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 78, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 79, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 80, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 81, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 82, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 91, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 92, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 101, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 103, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 104, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 107, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 109, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 110, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 113, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 115, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 116, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 119, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 120, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 124, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 126, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 128, 1, 1.44, 1.44 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 31, 1, 0 );
setRotateKey( spep_2-3 + 32, 1, -45.5 );
setRotateKey( spep_2-3 + 34, 1, -38 );
setRotateKey( spep_2-3 + 36, 1, -30.5 );
setRotateKey( spep_2-3 + 38, 1, -23 );
setRotateKey( spep_2-3 + 40, 1, -15.5 );
setRotateKey( spep_2-3 + 42, 1, -15 );
setRotateKey( spep_2-3 + 44, 1, -14.6 );
setRotateKey( spep_2-3 + 47, 1, -14.1 );
setRotateKey( spep_2-3 + 48, 1, 0 );
setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 63, 1, 3 );
setRotateKey( spep_2-3 + 64, 1, 0 );
setRotateKey( spep_2-3 + 67, 1, 0 );
setRotateKey( spep_2-3 + 69, 1, 3 );
setRotateKey( spep_2-3 + 70, 1, 8.4 );
setRotateKey( spep_2-3 + 73, 1, 8.4 );
setRotateKey( spep_2-3 + 75, 1, 3 );
setRotateKey( spep_2-3 + 77, 1, 0 );
setRotateKey( spep_2-3 + 79, 1, 3 );
setRotateKey( spep_2-3 + 81, 1, 8.4 );
setRotateKey( spep_2-3 + 82, 1, 0 );
setRotateKey( spep_2-3 + 91, 1, 0 );
setRotateKey( spep_2-3 + 92, 1, 12.5 );
setRotateKey( spep_2-3 + 94, 1, 13 );
setRotateKey( spep_2-3 + 96, 1, 14 );
setRotateKey( spep_2-3 + 98, 1, 14.5 );
setRotateKey( spep_2-3 + 103, 1, 14.7 );
setRotateKey( spep_2-3 + 104, 1, -39.7 );
setRotateKey( spep_2-3 + 105, 1, 0 );
setRotateKey( spep_2-3 + 108, 1, 0 );
setRotateKey( spep_2-3 + 109, 1, -41.4 );
setRotateKey( spep_2-3 + 110, 1, -27.5 );
setRotateKey( spep_2-3 + 113, 1, -27.5 );
setRotateKey( spep_2-3 + 115, 1, -41.4 );
setRotateKey( spep_2-3 + 116, 1, 0 );
setRotateKey( spep_2-3 + 119, 1, 0 );
setRotateKey( spep_2-3 + 120, 1, -39.7 );
setRotateKey( spep_2-3 + 122, 1, -39.6 );
setRotateKey( spep_2-3 + 128, 1, -39.6 );

--SE
playSe( spep_2 + 5, 1005 );
playSe( spep_2 + 14, 1005 );
setSeVolume( spep_2 + 14, 1005, 71 );
playSe( spep_2 + 26, 1005 );
setSeVolume( spep_2 + 26, 1005, 71 );
playSe( spep_2 + 31, 1008 );
playSe( spep_2 + 42, 1005 );
setSeVolume( spep_2 + 42, 1005, 79 );
playSe( spep_2 + 57, 1006 );
setSeVolume( spep_2 + 57, 1006, 89 );
playSe( spep_2 + 63, 1005 );
setSeVolume( spep_2 + 63, 1005, 63 );
playSe( spep_2 + 69, 1006 );
setSeVolume( spep_2 + 69, 1006, 71 );
playSe( spep_2 + 76, 1006 );
setSeVolume( spep_2 + 76, 1006, 79 );
playSe( spep_2 + 92, 1005 );
setSeVolume( spep_2 + 92, 1005, 63 );
playSe( spep_2 + 96, 1007 );
setSeVolume( spep_2 + 96, 1007, 89 );
playSe( spep_2 + 101, 1006 );
playSe( spep_2 + 107, 1006 );
setSeVolume( spep_2 + 107, 1006, 79 );
playSe( spep_2 + 113, 1005 );
setSeVolume( spep_2 + 113, 1005, 63 );
playSe( spep_2 + 120, 1007 );

--白フェード
entryFade( spep_2+122 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2 + 130;
------------------------------------------------------
-- 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_3 + 50, face, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_3 + 50, face, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, face, 0 );
setEffRotateKey( spep_3 + 50, face, 0 );
setEffAlphaKey( spep_3 + 0, face, 255 );
setEffAlphaKey( spep_3 + 50, face, 255 );

--SE
playSe( spep_3 + 10, 1237 );


--白フェード
entryFade( spep_3+42 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3 + 50;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 手が伸びて敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hand, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, hand, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, hand, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hand, 0 );
setEffRotateKey( spep_5 + 84, hand, 0 );
setEffAlphaKey( spep_5 + 0, hand, 255 );
setEffAlphaKey( spep_5 + 84, hand, 255 );

--SE
playSe( spep_5 + 6, 1021 );
playSe( spep_5 + 6, 1116 );
setSeVolume( spep_5 + 6, 1116, 112 );
playSe( spep_5 + 15, 1227 );
setSeVolume( spep_5 + 15, 1227, 126 );

--白フェード
entryFade( spep_5+72 +2 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 84;
------------------------------------------------------
-- 手が敵にあたる
------------------------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit2_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, hit2_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit2_f, 0 );
setEffRotateKey( spep_6 + 76, hit2_f, 0 );
setEffAlphaKey( spep_6 + 0, hit2_f, 255 );
setEffAlphaKey( spep_6 + 76, hit2_f, 255 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit2_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, hit2_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit2_b, 0 );
setEffRotateKey( spep_6 + 76, hit2_b, 0 );
setEffAlphaKey( spep_6 + 0, hit2_b, 255 );
setEffAlphaKey( spep_6 + 76, hit2_b, 255 );


--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 70, 1, 0 );

changeAnime( spep_6 + 0, 1, 3 );
changeAnime( spep_6-3 + 10, 1, 104 );
changeAnime( spep_6-3 + 20, 1, 119 );
changeAnime( spep_6-3 + 34, 1, 108 );

setMoveKey( spep_6 + 0, 1, -188, 140 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -82.9, 86 , 0 );
setMoveKey( spep_6-3 + 4, 1, -1.2, 44 , 0 );
setMoveKey( spep_6-3 + 6, 1, 92.3, -4 , 0 );
setMoveKey( spep_6-3 + 9, 1, 104, -10 , 0 );
setMoveKey( spep_6-3 + 10, 1, 146, -28 , 0 );
setMoveKey( spep_6-3 + 12, 1, 165.3, -41.1 , 0 );
setMoveKey( spep_6-3 + 14, 1, 179, -50.5 , 0 );
setMoveKey( spep_6-3 + 16, 1, 187.3, -56.1 , 0 );
setMoveKey( spep_6-3 + 19, 1, 190, -58 , 0 );
setMoveKey( spep_6-3 + 20, 1, 158.7, -17.6 , 0 );
setMoveKey( spep_6-3 + 22, 1, 135.8, -4.4 , 0 );
setMoveKey( spep_6-3 + 24, 1, 116.5, 6.9 , 0 );
setMoveKey( spep_6-3 + 26, 1, 100.7, 16 , 0 );
setMoveKey( spep_6-3 + 28, 1, 79.6, 28.3 , 0 );
setMoveKey( spep_6-3 + 30, 1, 77.1, 29.8 , 0 );
setMoveKey( spep_6-3 + 33, 1, 74.4, 31.4 , 0 );
setMoveKey( spep_6-3 + 34, 1, 28.5, 65.9 , 0 );
setMoveKey( spep_6-3 + 35, 1, 28.5, 65.9 , 0 );
setMoveKey( spep_6-3 + 36, 1, 33.8, 62.5 , 0 );
setMoveKey( spep_6-3 + 37, 1, 33.8, 62.5 , 0 );
setMoveKey( spep_6-3 + 38, 1, 39, 59.1 , 0 );
setMoveKey( spep_6-3 + 39, 1, 39, 59.1 , 0 );
setMoveKey( spep_6-3 + 40, 1, 44.3, 55.7 , 0 );
setMoveKey( spep_6-3 + 41, 1, 44.3, 55.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, 49.6, 52.2 , 0 );
setMoveKey( spep_6-3 + 43, 1, 49.6, 52.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, 54.8, 48.8 , 0 );
setMoveKey( spep_6-3 + 45, 1, 54.8, 48.8 , 0 );
setMoveKey( spep_6-3 + 46, 1, 60.1, 45.4 , 0 );
setMoveKey( spep_6-3 + 47, 1, 60.1, 45.4 , 0 );
setMoveKey( spep_6-3 + 48, 1, 65.4, 42 , 0 );
setMoveKey( spep_6-3 + 49, 1, 65.4, 42 , 0 );
setMoveKey( spep_6-3 + 50, 1, 70.6, 38.5 , 0 );
setMoveKey( spep_6-3 + 51, 1, 70.6, 38.5 , 0 );
setMoveKey( spep_6-3 + 52, 1, 75.9, 35.1 , 0 );
setMoveKey( spep_6-3 + 53, 1, 75.9, 35.1 , 0 );
setMoveKey( spep_6-3 + 54, 1, 145.4, -20.5 , 0 );
setMoveKey( spep_6-3 + 55, 1, 145.4, -20.5 , 0 );
setMoveKey( spep_6-3 + 56, 1, 214.9, -76.1 , 0 );
setMoveKey( spep_6-3 + 57, 1, 214.9, -76.1 , 0 );
setMoveKey( spep_6-3 + 58, 1, 284.4, -131.7 , 0 );
setMoveKey( spep_6-3 + 59, 1, 284.4, -131.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, 353.9, -187.3 , 0 );
setMoveKey( spep_6-3 + 61, 1, 353.9, -187.3 , 0 );
setMoveKey( spep_6-3 + 62, 1, 423.4, -242.8 , 0 );
setMoveKey( spep_6-3 + 63, 1, 423.4, -242.8 , 0 );
setMoveKey( spep_6-3 + 64, 1, 492.9, -298.4 , 0 );
setMoveKey( spep_6-3 + 65, 1, 492.9, -298.4 , 0 );
setMoveKey( spep_6-3 + 66, 1, 562.4, -354 , 0 );
setMoveKey( spep_6-3 + 67, 1, 562.4, -354 , 0 );
setMoveKey( spep_6-3 + 68, 1, 632, -409.6 , 0 );
setMoveKey( spep_6-3 + 69, 1, 632, -409.6 , 0 );
setMoveKey( spep_6-3 + 70, 1, 696, -451.2 , 0 );
--setMoveKey( spep_6-3 + 72, 1, 760, -492.8 , 0 );
--setMoveKey( spep_6-3 + 74, 1, 824, -534.4 , 0 );
--setMoveKey( spep_6-3 + 76, 1, 888, -576 , 0 );
--setMoveKey( spep_6-3 + 78, 1, 952, -617.6 , 0 );

setScaleKey( spep_6 + 0, 1, 1.55, 1.55 );
setScaleKey( spep_6-3 + 9, 1, 1.55, 1.55 );
setScaleKey( spep_6-3 + 10, 1, 1.39, 1.39 );
setScaleKey( spep_6-3 + 19, 1, 1.39, 1.39 );
setScaleKey( spep_6-3 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_6-3 + 33, 1, 1.47, 1.47 );
setScaleKey( spep_6-3 + 34, 1, 1.63, 1.63 );
setScaleKey( spep_6-3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_6-3 + 56, 1, 1.62, 1.62 );
setScaleKey( spep_6-3 + 58, 1, 1.62, 1.62 );
setScaleKey( spep_6-3 + 60, 1, 1.61, 1.61 );
setScaleKey( spep_6-3 + 62, 1, 1.6, 1.6 );
setScaleKey( spep_6-3 + 64, 1, 1.6, 1.6 );
setScaleKey( spep_6-3 + 66, 1, 1.59, 1.59 );
setScaleKey( spep_6-3 + 70, 1, 1.59, 1.59 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-3 + 19, 1, 0 );
setRotateKey( spep_6-3 + 20, 1, 18.9 );
setRotateKey( spep_6-3 + 22, 1, 18.8 );
setRotateKey( spep_6-3 + 33, 1, 18.8 );
setRotateKey( spep_6-3 + 34, 1, 25.3 );
setRotateKey( spep_6-3 + 70, 1, 25.3 );

--SE
playSe( spep_6 + 31, 1027 );
setSeVolume( spep_6 + 31, 1027, 71 );
playSe( spep_6 + 35, 1023 );
playSe( spep_6 + 35, 1010 );
setSeVolume( spep_6 + 35, 1010, 71 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 76;
------------------------------------------------------
-- 地面にぶつかる
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 120, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 120, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 120, finish_b, 255 );


setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -349.8, 169.9 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -288.2, 110.8 , 0 );
setMoveKey( spep_7-3 + 4, 1, -226.8, 48.1 , 0 );
setMoveKey( spep_7-3 + 5, 1, -226.8, 48.1 , 0 );
setMoveKey( spep_7-3 + 6, 1, -159, -9.5 , 0 );
setMoveKey( spep_7-3 + 7, 1, -159, -9.5 , 0 );
setMoveKey( spep_7-3 + 8, 1, -99.2, -69.9 , 0 );
setMoveKey( spep_7-3 + 9, 1, -99.2, -69.9 , 0 );
setMoveKey( spep_7-3 + 10, 1, -32.8, -135.4 , 0 );
setMoveKey( spep_7-3 + 11, 1, -32.8, -135.4 , 0 );
setMoveKey( spep_7-3 + 12, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 13, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 14, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 16, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 18, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 20, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 22, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 26, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 28, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 30, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 32, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 34, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 36, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 38, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 40, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 42, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 44, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 46, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 48, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 50, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 52, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 54, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 56, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 58, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 60, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 62, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 64, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 66, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 68, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 70, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 72, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 74, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 76, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 78, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 80, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 82, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 84, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 86, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 88, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 90, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 92, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 94, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 96, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 98, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 100, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 102, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 104, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 106, 1, 27, -195.4 , 0 );
setMoveKey( spep_7-3 + 108, 1, 31.7, -192.7 , 0 );
setMoveKey( spep_7-3 + 110, 1, 28, -191.7 , 0 );
setMoveKey( spep_7-3 + 112, 1, 30.7, -196.4 , 0 );
setMoveKey( spep_7-3 + 114, 1, 29.3, -194 , 0 );
setMoveKey( spep_7-3 + 116, 1, 27, -195.4 , 0 );
setMoveKey( spep_7 + 118, 1, 31.7, -192.7 , 0 );

setScaleKey( spep_7 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 118, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 66.3 );
--setRotateKey( spep_7-3 + 2, 1, 68.7 );
setRotateKey( spep_7-3 + 4, 1, 71.1 );
setRotateKey( spep_7-3 + 6, 1, 73.6 );
setRotateKey( spep_7-3 + 8, 1, 76 );
setRotateKey( spep_7-3 + 10, 1, 78.4 );
setRotateKey( spep_7-3 + 12, 1, 80.8 );
setRotateKey( spep_7 + 118, 1, 80.8 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_7 + 15, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 28 );
endPhase( spep_7 + 110 );
end


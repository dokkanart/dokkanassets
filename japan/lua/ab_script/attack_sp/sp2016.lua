--1019990:超サイヤ人ゴッドSS孫悟空(界王拳)&超サイヤ人ゴッドSSベジータ(進化)_気円斬&ギャリック砲
--sp_effect_b1_00119

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
SP_01=	155609	;--	導入歩きながらオーラ解除
SP_02=	155610	;--	ダッシュ〜連打〜フィニッシュ
SP_03=	155627	;--	ダッシュ〜連打〜フィニッシュ

--エフェクト(てき)
SP_01x=	155609	;--	導入歩きながらオーラ解除	
SP_02x=	155611	;--	ダッシュ〜連打〜フィニッシュ	(敵)
SP_03x=	155628	;--	ダッシュ〜連打〜フィニッシュ	(敵)

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
setEffMoveKey( spep_0 + 110, former, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, former, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, former, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, former, 0 );
setEffRotateKey( spep_0 + 110, former, 0 );
setEffAlphaKey( spep_0 + 0, former, 255 );
setEffAlphaKey( spep_0 + 110, former, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +22, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +22,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +94,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 191 );
setEffAlphaKey( spep_0 + 92, ctgogo, 112 );
setEffAlphaKey( spep_0 + 94, ctgogo, 64 );

setEffRotateKey(  spep_0 +22,  ctgogo,  0);
setEffRotateKey(  spep_0 +94,  ctgogo,  0);

setEffScaleKey(  spep_0 +22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +94,  ctgogo, 1.07, 1.07 );

--SE
se_1269 = playSe( spep_0 + 0, 1269 );--オーラ
setSeVolume( spep_0 + 0, 1269, 35 );
se_1175 = playSe( spep_0 + 0, 1175 );--オーラ
setSeVolume( spep_0 + 0, 1175, 25 );
playSe( spep_0 + 22, 1018 );--顔カットイン
setSeVolume( spep_0 + 22, 1018, 79 );
playSe( spep_0 + 20, 1108 );--足音
setSeVolume( spep_0 + 20, 1108, 45 );
playSe( spep_0 + 54, 1106 );--足音
setSeVolume( spep_0 + 54, 1106, 60 );
playSe( spep_0 + 74, 1108 );--足音
setSeVolume( spep_0 + 74, 1108, 40 );
playSe( spep_0 + 96, 1106 );--足音
setSeVolume( spep_0 + 96, 1106, 48 );

stopSe( spep_0 + 110, se_1269, 0 );
stopSe( spep_0 + 110, se_1175, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 112, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 110;
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
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
rear_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rear_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 868, rear_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rear_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 868, rear_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rear_f, 0 );
setEffRotateKey( spep_2 + 868, rear_f, 0 );
setEffAlphaKey( spep_2 + 0, rear_f, 255 );
setEffAlphaKey( spep_2 + 868, rear_f, 255 );

-- ** エフェクト等 ** --
rear_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rear_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 868, rear_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rear_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 868, rear_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rear_b, 0 );
setEffRotateKey( spep_2 + 868, rear_b, 0 );
setEffAlphaKey( spep_2 + 0, rear_b, 255 );
setEffAlphaKey( spep_2 + 868, rear_b, 255 );

--敵の動き
setDisp( spep_2-3 + 38, 1, 1);
setDisp( spep_2-1 + 266, 1, 0);

changeAnime( spep_2-3 + 38, 1, 118);

setMoveKey( spep_2-3 + 38, 1, 1975.5, -1132.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 1961, -1124.3 , 0 );
setMoveKey( spep_2-3 + 42, 1, 1941, -1112.9 , 0 );
setMoveKey( spep_2-3 + 44, 1, 1909.5, -1095.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, 1856.6, -1066.7 , 0 );
setMoveKey( spep_2-3 + 48, 1, 1769.2, -1020.2 , 0 );
setMoveKey( spep_2-3 + 50, 1, 1629.4, -946.3 , 0 );

setScaleKey( spep_2-3 + 38, 1, 14.62, 14.62 );
setScaleKey( spep_2-3 + 40, 1, 14.53, 14.53 );
setScaleKey( spep_2-3 + 42, 1, 14.4, 14.4 );
setScaleKey( spep_2-3 + 44, 1, 14.21, 14.21 );
setScaleKey( spep_2-3 + 46, 1, 13.91, 13.91 );
setScaleKey( spep_2-3 + 48, 1, 13.43, 13.43 );
setScaleKey( spep_2-3 + 50, 1, 12.67, 12.67 );

setRotateKey( spep_2-3 + 38, 1, 0 );
setRotateKey( spep_2-3 + 50, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 870, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_2 + 0, 1182 );
setSeVolume( spep_2 + 0, 1182, 126 );
se_11831 = playSe( spep_2 + 0, 1183 );
setSeVolume( spep_2 + 0, 1183, 112 );
se_0009 = playSe( spep_2 + 0, 9 );
setSeVolume( spep_2 + 0, 9, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
   stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_11831, 0 );
    stopSe( SP_dodge - 12, se_0009, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 1629.4, -946.3 , 0 );
    setScaleKey( SP_dodge + 9, 1, 12.67, 12.67 );
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
changeAnime( spep_2-3 + 74, 1, 106);
changeAnime( spep_2-3 + 78, 1, 108);
changeAnime( spep_2-3 + 82, 1, 106);
changeAnime( spep_2-3 + 86, 1, 108);
changeAnime( spep_2-3 + 90, 1, 106);
changeAnime( spep_2-3 + 94, 1, 108);
changeAnime( spep_2-3 + 98, 1, 106);
changeAnime( spep_2-3 + 102, 1, 108);
changeAnime( spep_2-3 + 106, 1, 106);
changeAnime( spep_2-3 + 110, 1, 108);
changeAnime( spep_2-3 + 114, 1, 106);
changeAnime( spep_2-3 + 118, 1, 108);
changeAnime( spep_2-3 + 122, 1, 106);
changeAnime( spep_2-3 + 126, 1, 108);
changeAnime( spep_2-3 + 130, 1, 106);
changeAnime( spep_2-3 + 134, 1, 108);
changeAnime( spep_2-3 + 138, 1, 106);
changeAnime( spep_2-3 + 142, 1, 108);
changeAnime( spep_2-3 + 146, 1, 106);
changeAnime( spep_2-3 + 150, 1, 108);
changeAnime( spep_2-3 + 154, 1, 106);
changeAnime( spep_2-3 + 158, 1, 108);
changeAnime( spep_2-3 + 162, 1, 106);
changeAnime( spep_2-3 + 166, 1, 108);
changeAnime( spep_2-3 + 170, 1, 106);
changeAnime( spep_2-3 + 174, 1, 108);
changeAnime( spep_2-3 + 178, 1, 106);
changeAnime( spep_2-3 + 190, 1, 108);

setMoveKey( spep_2-3 + 52, 1, 1411.7, -831 , 0 );
setMoveKey( spep_2-3 + 54, 1, 1071.4, -647.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 738.8, -471 , 0 );
setMoveKey( spep_2-3 + 58, 1, 524.2, -357.4 , 0 );
setMoveKey( spep_2-3 + 60, 1, 393.4, -287.4 , 0 );
setMoveKey( spep_2-3 + 62, 1, 316, -245.6 , 0 );
setMoveKey( spep_2-3 + 64, 1, 270.7, -224.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 255, -208.5 , 0 );
setMoveKey( spep_2-3 + 68, 1, 236.4, -202.2 , 0 );
setMoveKey( spep_2-3 + 70, 1, 242.1, -202.1 , 0 );
setMoveKey( spep_2-3 + 72, 1, 232.3, -202.6 , 0 );
setMoveKey( spep_2-3 + 73, 1, 232.3, -202.6 , 0 );

setMoveKey( spep_2-3 + 74, 1, 70.4, -56.9 , 0 );
setMoveKey( spep_2-3 + 76, 1, 68.3, -55.8 , 0 );
setMoveKey( spep_2-3 + 77, 1, 68.3, -55.8 , 0 );

setMoveKey( spep_2-3 + 78, 1, 93.4, -48.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 93, -52.8 , 0 );
setMoveKey( spep_2-3 + 81, 1, 93, -52.8 , 0 );

setMoveKey( spep_2-3 + 82, 1, 72.1, -52 , 0 );
setMoveKey( spep_2-3 + 84, 1, 68.6, -59.8 , 0 );
setMoveKey( spep_2-3 + 85, 1, 68.6, -59.8 , 0 );

setMoveKey( spep_2-3 + 86, 1, 93.1, -44.8 , 0 );
setMoveKey( spep_2-3 + 88, 1, 90.1, -38.7 , 0 );
setMoveKey( spep_2-3 + 89, 1, 90.1, -38.7 , 0 );

setMoveKey( spep_2-3 + 90, 1, 70.7, -70.2 , 0 );
setMoveKey( spep_2-3 + 92, 1, 69.2, -48.6 , 0 );
setMoveKey( spep_2-3 + 93, 1, 69.2, -48.6 , 0 );

setMoveKey( spep_2-3 + 94, 1, 94.4, -57 , 0 );
setMoveKey( spep_2-3 + 96, 1, 92.4, -46.5 , 0 );
setMoveKey( spep_2-3 + 97, 1, 92.4, -46.5 , 0 );

setMoveKey( spep_2-3 + 98, 1, 71.9, -63.4 , 0 );
setMoveKey( spep_2-3 + 100, 1, 72.2, -69.3 , 0 );
setMoveKey( spep_2-3 + 101, 1, 72.2, -69.3 , 0 );

setMoveKey( spep_2-3 + 102, 1, 91.3, -22.4 , 0 );
setMoveKey( spep_2-3 + 104, 1, 92.5, -64.8 , 0 );
setMoveKey( spep_2-3 + 105, 1, 92.5, -64.8 , 0 );

setMoveKey( spep_2-3 + 106, 1, 72.7, -53.7 , 0 );
setMoveKey( spep_2-3 + 108, 1, 70.6, -48.1 , 0 );
setMoveKey( spep_2-3 + 109, 1, 70.6, -48.1 , 0 );

setMoveKey( spep_2-3 + 110, 1, 92.6, -53.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, 91.9, -32.5 , 0 );
setMoveKey( spep_2-3 + 113, 1, 91.9, -32.5 , 0 );

setMoveKey( spep_2-3 + 114, 1, 73.6, -68.9 , 0 );
setMoveKey( spep_2-3 + 116, 1, 68, -48.6 , 0 );
setMoveKey( spep_2-3 + 117, 1, 68, -48.6 , 0 );

setMoveKey( spep_2-3 + 118, 1, 95.5, -36 , 0 );
setMoveKey( spep_2-3 + 120, 1, 89.5, -64.9 , 0 );
setMoveKey( spep_2-3 + 121, 1, 89.5, -64.9 , 0 );

setMoveKey( spep_2-3 + 122, 1, 72.1, -58.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 71.1, -79.5 , 0 );
setMoveKey( spep_2-3 + 125, 1, 71.1, -79.5 , 0 );

setMoveKey( spep_2-3 + 126, 1, 89.5, -43.3 , 0 );
setMoveKey( spep_2-3 + 128, 1, 96.6, -40.9 , 0 );
setMoveKey( spep_2-3 + 129, 1, 96.6, -40.9 , 0 );

setMoveKey( spep_2-3 + 130, 1, 68.6, -97 , 0 );
setMoveKey( spep_2-3 + 132, 1, 69.9, -65.2 , 0 );
setMoveKey( spep_2-3 + 133, 1, 69.9, -65.2 , 0 );

setMoveKey( spep_2-3 + 134, 1, 95.8, -58.3 , 0 );
setMoveKey( spep_2-3 + 136, 1, 92.6, -66.7 , 0 );
setMoveKey( spep_2-3 + 137, 1, 92.6, -66.7 , 0 );

setMoveKey( spep_2-3 + 138, 1, 67.6, -68.4 , 0 );
setMoveKey( spep_2-3 + 140, 1, 72.6, -87.9 , 0 );
setMoveKey( spep_2-3 + 141, 1, 72.6, -87.9 , 0 );

setMoveKey( spep_2-3 + 142, 1, 91.9, -56.4 , 0 );
setMoveKey( spep_2-3 + 144, 1, 96.5, -68 , 0 );
setMoveKey( spep_2-3 + 145, 1, 96.5, -68 , 0 );

setMoveKey( spep_2-3 + 146, 1, 69.1, -63.1 , 0 );
setMoveKey( spep_2-3 + 148, 1, 69.9, -57.4 , 0 );
setMoveKey( spep_2-3 + 149, 1, 69.9, -57.4 , 0 );

setMoveKey( spep_2-3 + 150, 1, 95, -67.8 , 0 );
setMoveKey( spep_2-3 + 152, 1, 90.4, -50 , 0 );
setMoveKey( spep_2-3 + 153, 1, 90.4, -50 , 0 );

setMoveKey( spep_2-3 + 154, 1, 70.3, -66.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 69.2, -61 , 0 );
setMoveKey( spep_2-3 + 157, 1, 69.2, -61 , 0 );

setMoveKey( spep_2-3 + 158, 1, 95.2, -53.4 , 0 );
setMoveKey( spep_2-3 + 160, 1, 92.4, -63.2 , 0 );
setMoveKey( spep_2-3 + 161, 1, 92.4, -63.2 , 0 );

setMoveKey( spep_2-3 + 162, 1, 67, -58 , 0 );
setMoveKey( spep_2-3 + 164, 1, 71.6, -52.5 , 0 );
setMoveKey( spep_2-3 + 165, 1, 71.6, -52.5 , 0 );

setMoveKey( spep_2-3 + 166, 1, 84.9, -43.7 , 0 );
setMoveKey( spep_2-3 + 168, 1, 88.8, -45.7 , 0 );
setMoveKey( spep_2-3 + 169, 1, 88.8, -45.7 , 0 );

setMoveKey( spep_2-3 + 170, 1, 57.4, -79.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 60.5, -42.1 , 0 );
setMoveKey( spep_2-3 + 173, 1, 60.5, -42.1 , 0 );

setMoveKey( spep_2-3 + 174, 1, 71.2, -29 , 0 );
setMoveKey( spep_2-3 + 176, 1, 64.3, -20.7 , 0 );
setMoveKey( spep_2-3 + 177, 1, 64.3, -20.7 , 0 );

setMoveKey( spep_2-3 + 178, 1, 3.1, -16.2 , 0 );
setMoveKey( spep_2-3 + 179, 1, 3.1, -16.2 , 0 );

setMoveKey( spep_2-3 + 180, 1, -20.8, -13.4 , 0 );
setMoveKey( spep_2-3 + 182, 1, -20.6, -13.2 , 0 );
setMoveKey( spep_2-3 + 184, 1, -17.3, -11.1 , 0 );
setMoveKey( spep_2-3 + 186, 1, -14.1, -9 , 0 );
setMoveKey( spep_2-3 + 188, 1, -13.9, -8.9 , 0 );
setMoveKey( spep_2-3 + 189, 1, -13.9, -8.9 , 0 );

setMoveKey( spep_2-3 + 190, 1, 26.8, 24.6 , 0 );
setMoveKey( spep_2-3 + 192, 1, 23.7, 5.3 , 0 );
setMoveKey( spep_2-3 + 194, 1, 20.8, 16.5 , 0 );
setMoveKey( spep_2-3 + 196, 1, 18.6, 15.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 24.6, 6.2 , 0 );
setMoveKey( spep_2-3 + 200, 1, 16.8, 31.4 , 0 );
setMoveKey( spep_2-3 + 202, 1, 10.4, 17.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 10.1, 34.2 , 0 );
setMoveKey( spep_2-3 + 206, 1, 9.9, 26.4 , 0 );
setMoveKey( spep_2-3 + 208, 1, 9.7, 26.7 , 0 );
setMoveKey( spep_2-3 + 210, 1, 9.6, 26.9 , 0 );
setMoveKey( spep_2-3 + 212, 1, 9.4, 27.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 9.4, 27.1 , 0 );
setMoveKey( spep_2-3 + 216, 1, 9.3, 27.3 , 0 );
setMoveKey( spep_2-3 + 222, 1, 9.3, 27.3 , 0 );
setMoveKey( spep_2-3 + 224, 1, 9.2, 22.3 , 0 );
setMoveKey( spep_2-3 + 226, 1, 8.9, 27.7 , 0 );
setMoveKey( spep_2-3 + 228, 1, 8.7, 17.7 , 0 );
setMoveKey( spep_2-3 + 230, 1, 8.4, 24.2 , 0 );
setMoveKey( spep_2-3 + 232, 1, 8.2, 17.2 , 0 );
setMoveKey( spep_2-3 + 234, 1, 8, 17.6 , 0 );
setMoveKey( spep_2-3 + 236, 1, 7.8, 20.1 , 0 );
setMoveKey( spep_2-3 + 238, 1, 7.6, 20.5 , 0 );
setMoveKey( spep_2-3 + 240, 1, 7.4, 29.9 , 0 );
setMoveKey( spep_2-3 + 242, 1, 7.2, 30.2 , 0 );
setMoveKey( spep_2-3 + 244, 1, 7.1, 30.4 , 0 );
setMoveKey( spep_2-3 + 246, 1, 6.9, 30.6 , 0 );
setMoveKey( spep_2-3 + 248, 1, 6.8, 30.8 , 0 );
setMoveKey( spep_2-3 + 250, 1, 6.7, 30.9 , 0 );
setMoveKey( spep_2-3 + 252, 1, 6.6, 31.1 , 0 );
setMoveKey( spep_2-3 + 254, 1, 6.5, 31.2 , 0 );
setMoveKey( spep_2-3 + 256, 1, 6.4, 31.3 , 0 );
setMoveKey( spep_2-3 + 258, 1, 6.4, 31.4 , 0 );
setMoveKey( spep_2-3 + 260, 1, 6.3, 31.5 , 0 );
setMoveKey( spep_2-3 + 262, 1, 6.3, 31.5 , 0 );
setMoveKey( spep_2-1 + 266, 1, 6.3, 31.6 , 0 );

setScaleKey( spep_2-3 + 52, 1, 11.48, 11.48 );
setScaleKey( spep_2-3 + 54, 1, 9.56, 9.56 );
setScaleKey( spep_2-3 + 56, 1, 7.74, 7.74 );
setScaleKey( spep_2-3 + 58, 1, 6.58, 6.58 );
setScaleKey( spep_2-3 + 60, 1, 5.85, 5.85 );
setScaleKey( spep_2-3 + 62, 1, 5.41, 5.41 );
setScaleKey( spep_2-3 + 64, 1, 5.16, 5.16 );
setScaleKey( spep_2-3 + 66, 1, 5.03, 5.03 );
setScaleKey( spep_2-3 + 68, 1, 4.96, 4.96 );
setScaleKey( spep_2-3 + 70, 1, 4.95, 4.95 );
setScaleKey( spep_2-3 + 73, 1, 4.95, 4.95 );

setScaleKey( spep_2-3 + 74, 1, 1.05, 1.05 );

setScaleKey( spep_2-3 + 162, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 163, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 164, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 165, 1, 1.06, 1.06 );

setScaleKey( spep_2-3 + 166, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 168, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 169, 1, 1.07, 1.07 );

setScaleKey( spep_2-3 + 170, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 172, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 173, 1, 1.09, 1.09 );

setScaleKey( spep_2-3 + 174, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 176, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 177, 1, 1.15, 1.15 );

setScaleKey( spep_2-3 + 178, 1, 1.26, 1.26 );
setScaleKey( spep_2-3 + 179, 1, 1.26, 1.26 );

setScaleKey( spep_2-3 + 180, 1, 1.26, 1.26 );
setScaleKey( spep_2-3 + 182, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 184, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 186, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 188, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 189, 1, 0.84, 0.84 );

setScaleKey( spep_2-3 + 190, 1, 1.04, 1.04 );
setScaleKey( spep_2-3 + 192, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 194, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 196, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 198, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 200, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 202, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 204, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 206, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 208, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 210, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 212, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 214, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 216, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 224, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 226, 1, 0.29, 0.29 );
setScaleKey( spep_2-3 + 228, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 230, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 232, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 234, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 236, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 238, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 240, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 242, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 244, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 246, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 248, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 250, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 252, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 254, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 258, 1, 0.16, 0.16 );
setScaleKey( spep_2-1 + 266, 1, 0.15, 0.15 );

setRotateKey( spep_2-3 + 73, 1, 0 );

setRotateKey( spep_2-3 + 74, 1, -45 );
setRotateKey( spep_2-3 + 76, 1, -45 );
setRotateKey( spep_2-3 + 77, 1, -45 );

setRotateKey( spep_2-3 + 78, 1, -6.3 );
setRotateKey( spep_2-3 + 80, 1, -6.3 );
setRotateKey( spep_2-3 + 81, 1, -6.3 );

setRotateKey( spep_2-3 + 82, 1, -45 );
setRotateKey( spep_2-3 + 84, 1, -45 );

setRotateKey( spep_2-3 + 86, 1, -6.3 );
setRotateKey( spep_2-3 + 89, 1, -6.3 );

setRotateKey( spep_2-3 + 90, 1, -45 );
setRotateKey( spep_2-3 + 92, 1, -45 );
setRotateKey( spep_2-3 + 93, 1, -45 );

setRotateKey( spep_2-3 + 94, 1, -6.3 );
setRotateKey( spep_2-3 + 96, 1, -6.3 );
setRotateKey( spep_2-3 + 97, 1, -6.3 );

setRotateKey( spep_2-3 + 98, 1, -45 );
setRotateKey( spep_2-3 + 100, 1, -45 );
setRotateKey( spep_2-3 + 101, 1, -45 );

setRotateKey( spep_2-3 + 102, 1, -6.3 );
setRotateKey( spep_2-3 + 104, 1, -6.3 );
setRotateKey( spep_2-3 + 105, 1, -6.3 );

setRotateKey( spep_2-3 + 106, 1, -45 );
setRotateKey( spep_2-3 + 108, 1, -45 );
setRotateKey( spep_2-3 + 109, 1, -45 );

setRotateKey( spep_2-3 + 110, 1, -6.3 );
setRotateKey( spep_2-3 + 112, 1, -6.3 );
setRotateKey( spep_2-3 + 113, 1, -6.3 );

setRotateKey( spep_2-3 + 114, 1, -45 );
setRotateKey( spep_2-3 + 116, 1, -45 );
setRotateKey( spep_2-3 + 117, 1, -45 );

setRotateKey( spep_2-3 + 118, 1, -6.3 );
setRotateKey( spep_2-3 + 120, 1, -6.3 );
setRotateKey( spep_2-3 + 121, 1, -6.3 );

setRotateKey( spep_2-3 + 122, 1, -45 );
setRotateKey( spep_2-3 + 124, 1, -45 );
setRotateKey( spep_2-3 + 125, 1, -45 );

setRotateKey( spep_2-3 + 126, 1, -6.3 );
setRotateKey( spep_2-3 + 128, 1, -6.3 );
setRotateKey( spep_2-3 + 129, 1, -6.3 );

setRotateKey( spep_2-3 + 130, 1, -45 );
setRotateKey( spep_2-3 + 132, 1, -45 );
setRotateKey( spep_2-3 + 133, 1, -45 );

setRotateKey( spep_2-3 + 134, 1, -6.3 );
setRotateKey( spep_2-3 + 136, 1, -6.3 );
setRotateKey( spep_2-3 + 137, 1, -6.3 );

setRotateKey( spep_2-3 + 138, 1, -45 );
setRotateKey( spep_2-3 + 140, 1, -45 );
setRotateKey( spep_2-3 + 141, 1, -45 );

setRotateKey( spep_2-3 + 142, 1, -6.3 );
setRotateKey( spep_2-3 + 144, 1, -6.3 );
setRotateKey( spep_2-3 + 145, 1, -6.3 );

setRotateKey( spep_2-3 + 146, 1, -45 );
setRotateKey( spep_2-3 + 148, 1, -45 );
setRotateKey( spep_2-3 + 149, 1, -45 );

setRotateKey( spep_2-3 + 150, 1, -6.3 );
setRotateKey( spep_2-3 + 152, 1, -6.3 );
setRotateKey( spep_2-3 + 153, 1, -6.3 );

setRotateKey( spep_2-3 + 154, 1, -45 );
setRotateKey( spep_2-3 + 156, 1, -45 );

setRotateKey( spep_2-3 + 158, 1, -6.3 );
setRotateKey( spep_2-3 + 160, 1, -6.3 );
setRotateKey( spep_2-3 + 161, 1, -6.3 );

setRotateKey( spep_2-3 + 162, 1, -45 );
setRotateKey( spep_2-3 + 164, 1, -45 );
setRotateKey( spep_2-3 + 165, 1, -45 );

setRotateKey( spep_2-3 + 166, 1, -6.3 );
setRotateKey( spep_2-3 + 168, 1, -6.3 );
setRotateKey( spep_2-3 + 168, 1, -6.3 );
setRotateKey( spep_2-3 + 169, 1, -6.3 );

setRotateKey( spep_2-3 + 170, 1, -45 );
setRotateKey( spep_2-3 + 172, 1, -45 );
setRotateKey( spep_2-3 + 173, 1, -45 );

setRotateKey( spep_2-3 + 174, 1, -6.3 );
setRotateKey( spep_2-3 + 177, 1, -6.3 );

setRotateKey( spep_2-3 + 178, 1, -45 );
setRotateKey( spep_2-3 + 179, 1, -45 );

setRotateKey( spep_2-3 + 180, 1, -52 );
setRotateKey( spep_2-3 + 189, 1, -52 );

setRotateKey( spep_2-3 + 190, 1, -9.3 );
setRotateKey( spep_2-1 + 266, 1, -9.3 );

--敵の動き
setDisp( spep_2-3 + 342, 1, 1);
setDisp( spep_2-1 + 420, 1, 0);

changeAnime( spep_2-3 + 342, 1, 108);

setMoveKey( spep_2-3 + 342, 1, 104.7, -1.4 , 0 );
setMoveKey( spep_2-3 + 343, 1, 104.7, -1.4 , 0 );
setMoveKey( spep_2-3 + 344, 1, 102.4, 20.1 , 0 );
setMoveKey( spep_2-3 + 345, 1, 102.4, 20.1 , 0 );
setMoveKey( spep_2-3 + 346, 1, 123.4, 39.1 , 0 );
setMoveKey( spep_2-3 + 347, 1, 123.4, 39.1 , 0 );
setMoveKey( spep_2-3 + 348, 1, 122.2, 30.7 , 0 );
setMoveKey( spep_2-3 + 349, 1, 122.2, 30.7 , 0 );
setMoveKey( spep_2-3 + 350, 1, 213.4, 204.7 , 0 );
setMoveKey( spep_2-3 + 351, 1, 213.4, 204.7 , 0 );
setMoveKey( spep_2-3 + 352, 1, 215.5, 205.1 , 0 );
setMoveKey( spep_2-3 + 353, 1, 215.5, 205.1 , 0 );
setMoveKey( spep_2-3 + 354, 1, 219.6, 214 , 0 );
setMoveKey( spep_2-3 + 355, 1, 219.6, 214 , 0 );
setMoveKey( spep_2-3 + 356, 1, 221.4, 214.1 , 0 );
setMoveKey( spep_2-3 + 357, 1, 221.4, 214.1 , 0 );
setMoveKey( spep_2-3 + 358, 1, 219.3, 213.3 , 0 );
setMoveKey( spep_2-3 + 359, 1, 219.3, 213.3 , 0 );
setMoveKey( spep_2-3 + 360, 1, 214.6, 213.3 , 0 );
setMoveKey( spep_2-3 + 361, 1, 214.6, 213.3 , 0 );
setMoveKey( spep_2-3 + 362, 1, 223.9, 226.4 , 0 );
setMoveKey( spep_2-3 + 363, 1, 223.9, 226.4 , 0 );
setMoveKey( spep_2-3 + 364, 1, 229.4, 236.5 , 0 );
setMoveKey( spep_2-3 + 365, 1, 229.4, 236.5 , 0 );
setMoveKey( spep_2-3 + 366, 1, 219.6, 269.8 , 0 );
setMoveKey( spep_2-3 + 367, 1, 219.6, 269.8 , 0 );
setMoveKey( spep_2-3 + 368, 1, 225.9, 266.7 , 0 );
setMoveKey( spep_2-3 + 369, 1, 225.9, 266.7 , 0 );
setMoveKey( spep_2-3 + 370, 1, 226, 275.1 , 0 );
setMoveKey( spep_2-3 + 371, 1, 226, 275.1 , 0 );
setMoveKey( spep_2-3 + 372, 1, 214, 287.5 , 0 );
setMoveKey( spep_2-3 + 373, 1, 214, 287.5 , 0 );
setMoveKey( spep_2-3 + 374, 1, 220.2, 278.2 , 0 );
setMoveKey( spep_2-3 + 375, 1, 220.2, 278.2 , 0 );
setMoveKey( spep_2-3 + 376, 1, 220.3, 292.3 , 0 );
setMoveKey( spep_2-3 + 377, 1, 220.3, 292.3 , 0 );
setMoveKey( spep_2-3 + 378, 1, 226.3, 283.4 , 0 );
setMoveKey( spep_2-3 + 379, 1, 226.3, 283.4 , 0 );
setMoveKey( spep_2-3 + 380, 1, 226.1, 286 , 0 );
setMoveKey( spep_2-3 + 381, 1, 226.1, 286 , 0 );
setMoveKey( spep_2-3 + 382, 1, 213.9, 296.2 , 0 );
setMoveKey( spep_2-3 + 383, 1, 213.9, 296.2 , 0 );
setMoveKey( spep_2-3 + 384, 1, 226.1, 289.8 , 0 );
setMoveKey( spep_2-3 + 385, 1, 226.1, 289.8 , 0 );
setMoveKey( spep_2-3 + 386, 1, 213.9, 307.2 , 0 );
setMoveKey( spep_2-3 + 387, 1, 213.9, 307.2 , 0 );
setMoveKey( spep_2-3 + 388, 1, 224, 291.8 , 0 );
setMoveKey( spep_2-3 + 389, 1, 224, 291.8 , 0 );
setMoveKey( spep_2-3 + 390, 1, 223.8, 292.8 , 0 );
setMoveKey( spep_2-3 + 391, 1, 223.8, 292.8 , 0 );
setMoveKey( spep_2-3 + 392, 1, 213.6, 311.6 , 0 );
setMoveKey( spep_2-3 + 393, 1, 213.6, 311.6 , 0 );
setMoveKey( spep_2-3 + 394, 1, 217.8, 285.5 , 0 );
setMoveKey( spep_2-3 + 395, 1, 217.8, 285.5 , 0 );
setMoveKey( spep_2-3 + 396, 1, 215.8, 294.4 , 0 );
setMoveKey( spep_2-3 + 397, 1, 215.8, 294.4 , 0 );
setMoveKey( spep_2-3 + 398, 1, 229.8, 274.9 , 0 );
setMoveKey( spep_2-3 + 397, 1, 229.8, 274.9 , 0 );
setMoveKey( spep_2-3 + 400, 1, 229.2, 276.4 , 0 );
setMoveKey( spep_2-3 + 401, 1, 229.2, 276.4 , 0 );
setMoveKey( spep_2-3 + 402, 1, 204.7, 291.7 , 0 );
setMoveKey( spep_2-3 + 403, 1, 204.7, 291.7 , 0 );
setMoveKey( spep_2-3 + 404, 1, 216.9, 276.3 , 0 );
setMoveKey( spep_2-3 + 405, 1, 216.9, 276.3 , 0 );
setMoveKey( spep_2-3 + 406, 1, 200, 299.8 , 0 );
setMoveKey( spep_2-3 + 407, 1, 200, 299.8 , 0 );
setMoveKey( spep_2-3 + 408, 1, 199, 283.8 , 0 );
setMoveKey( spep_2-3 + 409, 1, 199, 283.8 , 0 );
setMoveKey( spep_2-3 + 410, 1, 200.3, 285 , 0 );
setMoveKey( spep_2-3 + 411, 1, 200.3, 285 , 0 );
setMoveKey( spep_2-3 + 412, 1, 211.5, 294.1 , 0 );
setMoveKey( spep_2-3 + 413, 1, 211.5, 294.1 , 0 );
setMoveKey( spep_2-3 + 414, 1, 220, 282.6 , 0 );
setMoveKey( spep_2-3 + 415, 1, 220, 282.6 , 0 );
setMoveKey( spep_2-3 + 416, 1, 219.8, 300.1 , 0 );
setMoveKey( spep_2-3 + 417, 1, 219.8, 300.1 , 0 );
setMoveKey( spep_2-3 + 418, 1, 215.7, 284.2 , 0 );
setMoveKey( spep_2-3 + 419, 1, 215.7, 284.2 , 0 );
setMoveKey( spep_2-3 + 420, 1, 215.9, 285.9 , 0 );
setMoveKey( spep_2-1 + 420, 1, 215.9, 285.9 , 0 );

setScaleKey( spep_2-3 + 342, 1, 5.2, 5.2 );
setScaleKey( spep_2-3 + 344, 1, 3.96, 3.96 );
setScaleKey( spep_2-3 + 346, 1, 4, 4 );
setScaleKey( spep_2-3 + 348, 1, 4, 4 );
setScaleKey( spep_2-3 + 350, 1, 3, 3 );
setScaleKey( spep_2-3 + 352, 1, 2.97, 2.97 );
setScaleKey( spep_2-3 + 354, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 356, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 358, 1, 2.76, 2.76 );
setScaleKey( spep_2-3 + 360, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 362, 1, 2.35, 2.35 );
setScaleKey( spep_2-3 + 364, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 366, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 368, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 370, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 372, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 374, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 376, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 378, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 380, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 382, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 384, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 386, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 388, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 390, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 392, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 394, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 396, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 398, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 400, 1, 0.08, 0.08 );
setScaleKey( spep_2-1 + 420, 1, 0.08, 0.08 );

setRotateKey( spep_2-3 + 342, 1, 0 );
setRotateKey( spep_2-1 + 420, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 606, 1, 1);
setDisp( spep_2-1 + 646, 1, 0);

changeAnime( spep_2-3 + 606, 1, 105);

setMoveKey( spep_2-3 + 606, 1, 0, 174.1 , 0 );
setMoveKey( spep_2-3 + 607, 1, 0, 174.1 , 0 );
setMoveKey( spep_2-3 + 608, 1, -12, 167.1 , 0 );
setMoveKey( spep_2-3 + 609, 1, -12, 167.1 , 0 );
setMoveKey( spep_2-3 + 610, 1, 7.8, 172.7 , 0 );
setMoveKey( spep_2-3 + 611, 1, 7.8, 172.7 , 0 );
setMoveKey( spep_2-3 + 612, 1, -8.4, 175.3 , 0 );
setMoveKey( spep_2-3 + 613, 1, -8.4, 175.3 , 0 );
setMoveKey( spep_2-3 + 614, 1, 3.8, 171.2 , 0 );
setMoveKey( spep_2-3 + 615, 1, 3.8, 171.2 , 0 );
setMoveKey( spep_2-3 + 616, 1, -4, 177 , 0 );
setMoveKey( spep_2-3 + 617, 1, -4, 177 , 0 );
setMoveKey( spep_2-3 + 618, 1, 0.3, 179.1 , 0 );
setMoveKey( spep_2-3 + 619, 1, 0.3, 179.1 , 0 );
setMoveKey( spep_2-3 + 620, 1, 2.4, 171 , 0 );
setMoveKey( spep_2-3 + 621, 1, 2.4, 171 , 0 );
setMoveKey( spep_2-3 + 622, 1, -0.2, 179.2 , 0 );
setMoveKey( spep_2-3 + 623, 1, -0.2, 179.2 , 0 );
setMoveKey( spep_2-3 + 624, 1, -4, 167.7 , 0 );
setMoveKey( spep_2-3 + 625, 1, -4, 167.7 , 0 );
setMoveKey( spep_2-3 + 626, 1, 0.2, 175.5 , 0 );
setMoveKey( spep_2-3 + 627, 1, 0.2, 175.5 , 0 );
setMoveKey( spep_2-3 + 628, 1, -0.5, 171.8 , 0 );
setMoveKey( spep_2-3 + 629, 1, -0.5, 171.8 , 0 );
setMoveKey( spep_2-3 + 630, 1, -0.2, 174.7 , 0 );
setMoveKey( spep_2-3 + 631, 1, -0.2, 174.7 , 0 );
setMoveKey( spep_2-3 + 632, 1, -2.2, 173.2 , 0 );
setMoveKey( spep_2-3 + 633, 1, -2.2, 173.2 , 0 );
setMoveKey( spep_2-3 + 634, 1, 0.5, 174.8 , 0 );
setMoveKey( spep_2-3 + 635, 1, 0.5, 174.8 , 0 );
setMoveKey( spep_2-3 + 636, 1, -1, 172.6 , 0 );
setMoveKey( spep_2-3 + 637, 1, -1, 172.6 , 0 );
setMoveKey( spep_2-3 + 638, 1, -1.2, 175 , 0 );
setMoveKey( spep_2-3 + 639, 1, -1.2, 175 , 0 );
setMoveKey( spep_2-3 + 640, 1, -2, 172.4 , 0 );
setMoveKey( spep_2-3 + 641, 1, -2, 172.4 , 0 );
setMoveKey( spep_2-3 + 642, 1, 0.9, 174.1 , 0 );
setMoveKey( spep_2-3 + 643, 1, 0.9, 174.1 , 0 );
setMoveKey( spep_2-3 + 644, 1, -2.7, 173.3 , 0 );
setMoveKey( spep_2-3 + 645, 1, -2.7, 173.3 , 0 );
setMoveKey( spep_2-1 + 646, 1, 1.1, 173.5 , 0 );

setScaleKey( spep_2-3 + 606, 1, 0.3, 0.3 );
setScaleKey( spep_2-1 + 646, 1, 0.3, 0.3 );

setRotateKey( spep_2-3 + 606, 1, 0 );
setRotateKey( spep_2-1 + 646, 1, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_2-3 + 74,  10017, 104, 0x100, -1, 0, -50.5, 183.2 );

setEffMoveKey( spep_2-3 + 74, ctdogagaga, -50.5, 183.2 , 0 );
setEffMoveKey( spep_2-3 + 76, ctdogagaga, -40.1, 192.2 , 0 );
setEffMoveKey( spep_2-3 + 78, ctdogagaga, -19, 196 , 0 );
setEffMoveKey( spep_2-3 + 80, ctdogagaga, -30.8, 194.8 , 0 );
setEffMoveKey( spep_2-3 + 82, ctdogagaga, -18.3, 190.1 , 0 );
setEffMoveKey( spep_2-3 + 84, ctdogagaga, -28.5, 198.6 , 0 );
setEffMoveKey( spep_2-3 + 86, ctdogagaga, -9.8, 189.3 , 0 );
setEffMoveKey( spep_2-3 + 88, ctdogagaga, -20, 201.8 , 0 );
setEffMoveKey( spep_2-3 + 90, ctdogagaga, -4.6, 200.3 , 0 );
setEffMoveKey( spep_2-3 + 92, ctdogagaga, -13.4, 207 , 0 );
setEffMoveKey( spep_2-3 + 94, ctdogagaga, -3.3, 197.6 , 0 );
setEffMoveKey( spep_2-3 + 96, ctdogagaga, -2.4, 210.3 , 0 );
setEffMoveKey( spep_2-3 + 98, ctdogagaga, -6.2, 196.9 , 0 );
setEffMoveKey( spep_2-3 + 100, ctdogagaga, -0.8, 212.7 , 0 );
setEffMoveKey( spep_2-3 + 102, ctdogagaga, -11.5, 196 , 0 );
setEffMoveKey( spep_2-3 + 104, ctdogagaga, 8.7, 209.3 , 0 );
setEffMoveKey( spep_2-3 + 106, ctdogagaga, -7, 202 , 0 );
setEffMoveKey( spep_2-3 + 108, ctdogagaga, 9.2, 210.2 , 0 );
setEffMoveKey( spep_2-3 + 110, ctdogagaga, -1.2, 196.7 , 0 );
setEffMoveKey( spep_2-3 + 112, ctdogagaga, 11, 210.9 , 0 );
setEffMoveKey( spep_2-3 + 114, ctdogagaga, -6.5, 204.7 , 0 );
setEffMoveKey( spep_2-3 + 116, ctdogagaga, 10.5, 212.7 , 0 );
setEffMoveKey( spep_2-3 + 118, ctdogagaga, 1.6, 198.2 , 0 );
setEffMoveKey( spep_2-3 + 120, ctdogagaga, 10.3, 216.8 , 0 );
setEffMoveKey( spep_2-3 + 122, ctdogagaga, -2, 197.2 , 0 );
setEffMoveKey( spep_2-3 + 124, ctdogagaga, 17.3, 211.4 , 0 );
setEffMoveKey( spep_2-3 + 126, ctdogagaga, -4.5, 206.1 , 0 );
setEffMoveKey( spep_2-3 + 128, ctdogagaga, 17.2, 207.5 , 0 );
setEffMoveKey( spep_2-3 + 130, ctdogagaga, 0.7, 210.9 , 0 );
setEffMoveKey( spep_2-3 + 132, ctdogagaga, 11.1, 201.7 , 0 );
setEffMoveKey( spep_2-3 + 134, ctdogagaga, 9.1, 210.2 , 0 );
setEffMoveKey( spep_2-3 + 136, ctdogagaga, 3.6, 213.5 , 0 );
setEffMoveKey( spep_2-3 + 138, ctdogagaga, 22.7, 214.9 , 0 );
setEffMoveKey( spep_2-3 + 140, ctdogagaga, 2.6, 210.7 , 0 );
setEffMoveKey( spep_2-3 + 142, ctdogagaga, 13.6, 203.3 , 0 );
setEffMoveKey( spep_2-3 + 144, ctdogagaga, -1.9, 211.8 , 0 );
setEffMoveKey( spep_2-3 + 146, ctdogagaga, 17.2, 199.9 , 0 );
setEffMoveKey( spep_2-3 + 148, ctdogagaga, 2.9, 213.2 , 0 );
setEffMoveKey( spep_2-3 + 150, ctdogagaga, 18.3, 210.5 , 0 );
setEffMoveKey( spep_2-3 + 152, ctdogagaga, 6.4, 217.1 , 0 );
setEffMoveKey( spep_2-3 + 154, ctdogagaga, 16, 205.8 , 0 );
setEffMoveKey( spep_2-3 + 156, ctdogagaga, 15.3, 219.2 , 0 );
setEffMoveKey( spep_2-3 + 158, ctdogagaga, 9.8, 203.8 , 0 );
setEffMoveKey( spep_2-3 + 160, ctdogagaga, 14.3, 220.3 , 0 );
setEffMoveKey( spep_2-3 + 162, ctdogagaga, 1.6, 201.6 , 0 );
setEffMoveKey( spep_2-3 + 164, ctdogagaga, 22.1, 215.6 , 0 );
setEffMoveKey( spep_2-3 + 166, ctdogagaga, 4.3, 207.2 , 0 );
setEffMoveKey( spep_2-3 + 168, ctdogagaga, 20.6, 215.5 , 0 );
setEffMoveKey( spep_2-3 + 170, ctdogagaga, 8.6, 200.8 , 0 );
setEffMoveKey( spep_2-3 + 172, ctdogagaga, 20.7, 215.4 , 0 );
setEffMoveKey( spep_2-3 + 174, ctdogagaga, 1.5, 208.5 , 0 );
setEffMoveKey( spep_2-3 + 176, ctdogagaga, 18.4, 216.5 , 0 );
setEffMoveKey( spep_2-3 + 178, ctdogagaga, 16.4, 219.9 , 0 );

setEffScaleKey( spep_2-3 + 74, ctdogagaga, 1.91, 1.94 );
setEffScaleKey( spep_2-3 + 76, ctdogagaga, 2.14, 2.17 );
setEffScaleKey( spep_2-3 + 78, ctdogagaga, 2.24, 2.27 );
setEffScaleKey( spep_2-3 + 80, ctdogagaga, 2.3, 2.34 );
setEffScaleKey( spep_2-3 + 82, ctdogagaga, 2.36, 2.4 );
setEffScaleKey( spep_2-3 + 84, ctdogagaga, 2.41, 2.44 );
setEffScaleKey( spep_2-3 + 86, ctdogagaga, 2.45, 2.49 );
setEffScaleKey( spep_2-3 + 88, ctdogagaga, 2.48, 2.52 );
setEffScaleKey( spep_2-3 + 90, ctdogagaga, 2.51, 2.55 );
setEffScaleKey( spep_2-3 + 92, ctdogagaga, 2.54, 2.58 );
setEffScaleKey( spep_2-3 + 94, ctdogagaga, 2.57, 2.61 );
setEffScaleKey( spep_2-3 + 96, ctdogagaga, 2.59, 2.63 );
setEffScaleKey( spep_2-3 + 98, ctdogagaga, 2.61, 2.66 );
setEffScaleKey( spep_2-3 + 100, ctdogagaga, 2.63, 2.68 );
setEffScaleKey( spep_2-3 + 102, ctdogagaga, 2.65, 2.69 );
setEffScaleKey( spep_2-3 + 104, ctdogagaga, 2.67, 2.71 );
setEffScaleKey( spep_2-3 + 106, ctdogagaga, 2.68, 2.73 );
setEffScaleKey( spep_2-3 + 108, ctdogagaga, 2.7, 2.74 );
setEffScaleKey( spep_2-3 + 110, ctdogagaga, 2.71, 2.76 );
setEffScaleKey( spep_2-3 + 112, ctdogagaga, 2.73, 2.77 );
setEffScaleKey( spep_2-3 + 114, ctdogagaga, 2.74, 2.78 );
setEffScaleKey( spep_2-3 + 116, ctdogagaga, 2.75, 2.79 );
setEffScaleKey( spep_2-3 + 118, ctdogagaga, 2.76, 2.8 );
setEffScaleKey( spep_2-3 + 120, ctdogagaga, 2.77, 2.81 );
setEffScaleKey( spep_2-3 + 122, ctdogagaga, 2.78, 2.82 );
setEffScaleKey( spep_2-3 + 124, ctdogagaga, 2.79, 2.83 );
setEffScaleKey( spep_2-3 + 126, ctdogagaga, 2.79, 2.84 );
setEffScaleKey( spep_2-3 + 128, ctdogagaga, 2.8, 2.85 );
setEffScaleKey( spep_2-3 + 130, ctdogagaga, 2.81, 2.85 );
setEffScaleKey( spep_2-3 + 132, ctdogagaga, 2.81, 2.86 );
setEffScaleKey( spep_2-3 + 134, ctdogagaga, 2.82, 2.86 );
setEffScaleKey( spep_2-3 + 136, ctdogagaga, 2.82, 2.87 );
setEffScaleKey( spep_2-3 + 138, ctdogagaga, 2.83, 2.88 );
setEffScaleKey( spep_2-3 + 140, ctdogagaga, 2.83, 2.88 );
setEffScaleKey( spep_2-3 + 142, ctdogagaga, 2.84, 2.88 );
setEffScaleKey( spep_2-3 + 144, ctdogagaga, 2.84, 2.89 );
setEffScaleKey( spep_2-3 + 146, ctdogagaga, 2.84, 2.89 );
setEffScaleKey( spep_2-3 + 148, ctdogagaga, 2.85, 2.89 );
setEffScaleKey( spep_2-3 + 150, ctdogagaga, 2.85, 2.9 );
setEffScaleKey( spep_2-3 + 152, ctdogagaga, 2.85, 2.9 );
setEffScaleKey( spep_2-3 + 154, ctdogagaga, 2.86, 2.9 );
setEffScaleKey( spep_2-3 + 156, ctdogagaga, 2.86, 2.9 );
setEffScaleKey( spep_2-3 + 158, ctdogagaga, 2.86, 2.91 );
setEffScaleKey( spep_2-3 + 166, ctdogagaga, 2.86, 2.91 );
setEffScaleKey( spep_2-3 + 168, ctdogagaga, 2.87, 2.91 );
setEffScaleKey( spep_2-3 + 178, ctdogagaga, 2.87, 2.91 );

setEffRotateKey( spep_2-3 + 74, ctdogagaga, 0 );
setEffRotateKey( spep_2-3 + 178, ctdogagaga, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 190,  10016, 30, 0x100, -1, 0, 2.3, 177.2 );

setEffMoveKey( spep_2-3 + 190, ctzun, 2.3, 177.2 , 0 );
setEffMoveKey( spep_2-3 + 192, ctzun, -0.1, 179.7 , 0 );
setEffMoveKey( spep_2-3 + 194, ctzun, 2.4, 188.3 , 0 );
setEffMoveKey( spep_2-3 + 196, ctzun, -2.3, 223.7 , 0 );
setEffMoveKey( spep_2-3 + 198, ctzun, 2.8, 230.8 , 0 );
setEffMoveKey( spep_2-3 + 200, ctzun, 2.8, 231.5 , 0 );
setEffMoveKey( spep_2-3 + 202, ctzun, -2.9, 235.7 , 0 );
setEffMoveKey( spep_2-3 + 204, ctzun, 2.6, 233.6 , 0 );
setEffMoveKey( spep_2-3 + 206, ctzun, -3.5, 240 , 0 );
setEffMoveKey( spep_2-3 + 208, ctzun, 2.1, 239.8 , 0 );
setEffMoveKey( spep_2-3 + 210, ctzun, -4.8, 248.7 , 0 );
setEffMoveKey( spep_2-3 + 212, ctzun, 1.4, 249.1 , 0 );
setEffMoveKey( spep_2-3 + 214, ctzun, -6, 257.3 , 0 );
setEffMoveKey( spep_2-3 + 216, ctzun, 0.9, 255.2 , 0 );
setEffMoveKey( spep_2-3 + 218, ctzun, -6.6, 261.6 , 0 );
setEffMoveKey( spep_2-3 + 220, ctzun, 0.8, 257.3 , 0 );

setEffScaleKey( spep_2-3 + 190, ctzun, 1, 1 );
setEffScaleKey( spep_2-3 + 192, ctzun, 1.02, 1.02 );
setEffScaleKey( spep_2-3 + 194, ctzun, 1.29, 1.28 );
setEffScaleKey( spep_2-3 + 196, ctzun, 2.1, 2.09 );
setEffScaleKey( spep_2-3 + 198, ctzun, 2.37, 2.36 );
setEffScaleKey( spep_2-3 + 200, ctzun, 2.39, 2.37 );
setEffScaleKey( spep_2-3 + 202, ctzun, 2.4, 2.39 );
setEffScaleKey( spep_2-3 + 204, ctzun, 2.45, 2.43 );
setEffScaleKey( spep_2-3 + 206, ctzun, 2.52, 2.51 );
setEffScaleKey( spep_2-3 + 208, ctzun, 2.63, 2.61 );
setEffScaleKey( spep_2-3 + 210, ctzun, 2.76, 2.75 );
setEffScaleKey( spep_2-3 + 212, ctzun, 2.9, 2.88 );
setEffScaleKey( spep_2-3 + 214, ctzun, 3.01, 2.99 );
setEffScaleKey( spep_2-3 + 216, ctzun, 3.08, 3.06 );
setEffScaleKey( spep_2-3 + 218, ctzun, 3.13, 3.11 );
setEffScaleKey( spep_2-3 + 220, ctzun, 3.14, 3.12 );

setEffRotateKey( spep_2-3 + 190, ctzun, -5.6 );
setEffRotateKey( spep_2-3 + 192, ctzun, -5.5 );
setEffRotateKey( spep_2-3 + 194, ctzun, -4.4 );
setEffRotateKey( spep_2-3 + 196, ctzun, -1.1 );
setEffRotateKey( spep_2-3 + 198, ctzun, -0.1 );
setEffRotateKey( spep_2-3 + 200, ctzun, 0 );
setEffRotateKey( spep_2-3 + 220, ctzun, 0 );

setEffAlphaKey( spep_2-3 + 190, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 200, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 202, ctzun, 250 );
setEffAlphaKey( spep_2-3 + 204, ctzun, 236 );
setEffAlphaKey( spep_2-3 + 206, ctzun, 211 );
setEffAlphaKey( spep_2-3 + 208, ctzun, 178 );
setEffAlphaKey( spep_2-3 + 210, ctzun, 134 );
setEffAlphaKey( spep_2-3 + 212, ctzun, 90 );
setEffAlphaKey( spep_2-3 + 214, ctzun, 57 );
setEffAlphaKey( spep_2-3 + 216, ctzun, 32 );
setEffAlphaKey( spep_2-3 + 218, ctzun, 18 );
setEffAlphaKey( spep_2-3 + 220, ctzun, 13 );

--SE



setSeVolume( spep_2 + 32,9,79);
setSeVolume( spep_2 + 33,9,77.68);
setSeVolume( spep_2 + 34,9,76.36);
setSeVolume( spep_2 + 35,9,75.04);
setSeVolume( spep_2 + 36,9,73.72);
setSeVolume( spep_2 + 37,9,72.4);
setSeVolume( spep_2 + 38,9,71.08);
setSeVolume( spep_2 + 39,9,69.76);
setSeVolume( spep_2 + 40,9,68.44);
setSeVolume( spep_2 + 41,9,67.12);
setSeVolume( spep_2 + 42,9,65.80);
setSeVolume( spep_2 + 43,9,64.48);
setSeVolume( spep_2 + 44,9,63.16);
setSeVolume( spep_2 + 45,9,61.84);
setSeVolume( spep_2 + 46,9,60.52);
setSeVolume( spep_2 + 47,9,59.20);
setSeVolume( spep_2 + 48,9,57.88);
setSeVolume( spep_2 + 49,9,56.56);
setSeVolume( spep_2 + 50,9,55.24);
setSeVolume( spep_2 + 51,9,53.92);
setSeVolume( spep_2 + 52,9,52.60);
setSeVolume( spep_2 + 53,9,51.28);
setSeVolume( spep_2 + 54,9,49.96);
setSeVolume( spep_2 + 55,9,48.64);
setSeVolume( spep_2 + 56,9,47.32);
setSeVolume( spep_2 + 57,9,46.00);
setSeVolume( spep_2 + 58,9,44.68);
setSeVolume( spep_2 + 59,9,43.36);
setSeVolume( spep_2 + 60,9,42.04);
setSeVolume( spep_2 + 61,9,40.72);
setSeVolume( spep_2 + 62,9,39.40);
setSeVolume( spep_2 + 63,9,38.08);
setSeVolume( spep_2 + 64,9,36.76);
setSeVolume( spep_2 + 65,9,35.44);
setSeVolume( spep_2 + 66,9,34.12);
setSeVolume( spep_2 +67,9,32.80);
setSeVolume( spep_2 +68,9,31.48);
setSeVolume( spep_2 +69,9,30.16);
setSeVolume( spep_2 +70,9,28.84);
setSeVolume( spep_2 +71,9,27.52);
setSeVolume( spep_2 +72,9,26.20);
setSeVolume( spep_2 +73,9,24.88);
setSeVolume( spep_2 +74,9,23.56);
setSeVolume( spep_2 +75,9,22.24);
setSeVolume( spep_2 +76,9,20.92);
setSeVolume( spep_2 +77,9,19.60);
setSeVolume( spep_2 +78,9,18.28);
setSeVolume( spep_2 +79,9,16.96);
setSeVolume( spep_2 +80,9,15.64);
setSeVolume( spep_2 +81,9,14.32);
setSeVolume( spep_2 +82,9,13.00);
setSeVolume( spep_2 +83,9,11.68);
setSeVolume( spep_2 +84,9,10.36);
setSeVolume( spep_2 +85,9,9.04);
setSeVolume( spep_2 +86,9,7.72);
setSeVolume( spep_2 +87,9,6.40);
setSeVolume( spep_2 +88,9,5.08);
setSeVolume( spep_2 +89,9,3.76);
setSeVolume( spep_2 +90,9,2.44);
setSeVolume( spep_2 +91,9,1.12);
setSeVolume( spep_2 +92,9,0);
se_11161 = playSe( spep_2 + 3, 1116 );
playSe( spep_2 + 71, 1000 );
playSe( spep_2 + 71, 1013 );
setSeVolume( spep_2 + 71, 1013, 52 );
playSe( spep_2 + 72, 1009 );
playSe( spep_2 + 80, 1000 );
playSe( spep_2 + 82, 1010 );
playSe( spep_2 + 90, 1006 );
playSe( spep_2 + 92, 1001 );
setSeVolume( spep_2 + 92, 1001, 53 );
playSe( spep_2 + 92, 1009 );
playSe( spep_2 + 101, 1012 );
se_11901 = playSe( spep_2 + 101, 1190 );
setSeVolume( spep_2 + 101, 1190, 59 );
setSeVolume( spep_2 + 110,1190,59);
setSeVolume( spep_2 + 111,1190,54);
setSeVolume( spep_2 + 112,1190,49);
setSeVolume( spep_2 + 113,1190,44);
setSeVolume( spep_2 + 114,1190,39);
setSeVolume( spep_2 + 115,1190,34);
setSeVolume( spep_2 + 116,1190,29);
setSeVolume( spep_2 + 117,1190,24);
setSeVolume( spep_2 + 118,1190,19);
setSeVolume( spep_2 + 119,1190,14);
setSeVolume( spep_2 + 120,1190,9);
setSeVolume( spep_2 + 121,1190,4);
setSeVolume( spep_2 + 122,1190,0);
playSe( spep_2 + 103, 1000 );
playSe( spep_2 + 103, 1110 );
setSeVolume( spep_2 + 103, 1110, 63 );
playSe( spep_2 + 111, 1009 );
playSe( spep_2 + 113, 1000 );
playSe( spep_2 + 122, 1000 );
playSe( spep_2 + 122, 1010 );
playSe( spep_2 + 134, 1010 );
se_1190 = playSe( spep_2 + 135, 1190 );
setSeVolume( spep_2 + 135, 1190, 66 );
setSeVolume( spep_2 + 144,1190,66);
setSeVolume( spep_2 + 145,1190,60.5);
setSeVolume( spep_2 + 146,1190,55);
setSeVolume( spep_2 + 147,1190,49.5);
setSeVolume( spep_2 + 148,1190,44);
setSeVolume( spep_2 + 149,1190,38.5);
setSeVolume( spep_2 + 150,1190,33);
setSeVolume( spep_2 + 151,1190,27.5);
setSeVolume( spep_2 + 152,1190,22);
setSeVolume( spep_2 + 153,1190,16.5);
setSeVolume( spep_2 + 154,1190,11);
setSeVolume( spep_2 + 155,1190,5.5);
setSeVolume( spep_2 + 156,1190,0);
playSe( spep_2 + 137, 1001 );
setSeVolume( spep_2 + 137, 1001, 46 );
playSe( spep_2 + 149, 1009 );
playSe( spep_2 + 151, 1013 );
playSe( spep_2 + 159, 1006 );
setSeVolume( spep_2 + 159, 1006, 65 );
playSe( spep_2 + 159, 1010 );
setSeVolume( spep_2 + 193, 1010, 65 );
playSe( spep_2 + 172, 1009 );
setSeVolume( spep_2 + 172, 1009, 76 );
playSe( spep_2 + 193, 1010 );
playSe( spep_2 + 195, 1187 );
setSeVolume( spep_2 + 195, 1187, 70 );
playSe( spep_2 + 197, 1110 );
setSeVolume( spep_2 + 197, 1110, 80 );
se_0008 = playSe( spep_2 + 232, 8 );
setSeVolume( spep_2 + 232, 8, 62 );
setSeVolume( spep_2 + 250,8,62);
setSeVolume( spep_2 + 251,8,58.5);
setSeVolume( spep_2 + 252,8,55);
setSeVolume( spep_2 + 253,8,51.5);
setSeVolume( spep_2 + 254,8,48);
setSeVolume( spep_2 + 255,8,44.5);
setSeVolume( spep_2 + 256,8,41);
setSeVolume( spep_2 + 257,8,37.5);
setSeVolume( spep_2 + 258,8,34);
setSeVolume( spep_2 + 259,8,30.5);
setSeVolume( spep_2 + 260,8,27);
setSeVolume( spep_2 + 261,8,23.5);
setSeVolume( spep_2 + 262,8,20);
setSeVolume( spep_2 + 45,8,16.5);
setSeVolume( spep_2 + 46,8,13);
setSeVolume( spep_2 + 47,8,9.5);
setSeVolume( spep_2 + 48,8,6);
setSeVolume( spep_2 + 49,8,2.5);
setSeVolume( spep_2 + 50,8,0);
se_1207 = playSe( spep_2 + 232, 1207 );
setSeVolume( spep_2 + 232, 1207, 35 );
setSeVolume( spep_2 + 261,1207,35);
setSeVolume( spep_2 + 262,1207,33.5);
setSeVolume( spep_2 + 263,1207,32);
setSeVolume( spep_2 + 264,1207,30.5);
setSeVolume( spep_2 + 265,1207,29);
setSeVolume( spep_2 + 266,1207,27.5);
setSeVolume( spep_2 + 267,1207,26);
setSeVolume( spep_2 + 268,1207,24.5);
setSeVolume( spep_2 + 269,1207,23);
setSeVolume( spep_2 + 270,1207,21.5);
setSeVolume( spep_2 + 271,1207,20);
setSeVolume( spep_2 + 272,1207,18.5);
setSeVolume( spep_2 + 273,1207,17);
setSeVolume( spep_2 + 274,1207,15.5);
setSeVolume( spep_2 + 275,1207,14);
setSeVolume( spep_2 + 276,1207,12.5);
setSeVolume( spep_2 + 277,1207,11);
setSeVolume( spep_2 + 278,1207,9.5);
setSeVolume( spep_2 + 279,1207,8);
setSeVolume( spep_2 + 280,1207,6.5);
setSeVolume( spep_2 + 281,1207,5);
setSeVolume( spep_2 + 282,1207,3.5);
setSeVolume( spep_2 + 283,1207,2);
setSeVolume( spep_2 + 284,1207,0);
playSe( spep_2 + 240, 44 );
setSeVolume( spep_2 + 240, 44, 79 );
playSe( spep_2 + 272, 1035 );
se_1244 = playSe( spep_2 + 288, 1244 );
setSeVolume( spep_2 + 288, 1244, 0 );
setSeVolume( spep_2 + 316, 1026, 0 );
setSeVolume( spep_2 + 317, 1026, 14.29 );
setSeVolume( spep_2 + 318, 1026, 28.57 );
setSeVolume( spep_2 + 319, 1026, 42.86 );
setSeVolume( spep_2 + 320, 1026, 57.14 );
setSeVolume( spep_2 + 321, 1026, 71.43 );
setSeVolume( spep_2 + 322, 1026, 85.71 );
setSeVolume( spep_2 + 323, 1026, 100 );
se_12121 = playSe( spep_2 + 288, 1212 );
setSeVolume( spep_2 + 288, 1212, 0 );
setSeVolume( spep_2 + 320, 1212, 0 );
setSeVolume( spep_2 + 321, 1212, 2.31 );
setSeVolume( spep_2 + 322, 1212, 4.62 );
setSeVolume( spep_2 + 323, 1212, 6.92 );
setSeVolume( spep_2 + 324, 1212, 9.23 );
setSeVolume( spep_2 + 325, 1212, 11.54 );
setSeVolume( spep_2 + 326, 1212, 13.85 );
setSeVolume( spep_2 + 327, 1212, 16.15 );
setSeVolume( spep_2 + 328, 1212, 18.46 );
setSeVolume( spep_2 + 329, 1212, 20.77 );
setSeVolume( spep_2 + 330, 1212, 23.08 );
setSeVolume( spep_2 + 331, 1212, 25.38 );
setSeVolume( spep_2 + 332, 1212, 27.69 );
setSeVolume( spep_2 + 333, 1212, 30 );
setSeVolume( spep_2 + 334, 1212, 32.31 );
setSeVolume( spep_2 + 335, 1212, 34.62 );
setSeVolume( spep_2 + 336, 1212, 36.92 );
setSeVolume( spep_2 + 337, 1212, 39.23 );
setSeVolume( spep_2 + 338, 1212, 41.54 );
setSeVolume( spep_2 + 339, 1212, 43.85 );
setSeVolume( spep_2 + 340, 1212, 46.15 );
setSeVolume( spep_2 + 341, 1212, 48.46 );
setSeVolume( spep_2 + 342, 1212, 50.77 );
setSeVolume( spep_2 + 343, 1212, 53.08 );
setSeVolume( spep_2 + 344, 1212, 55.38 );
setSeVolume( spep_2 + 345, 1212, 57.69 );
setSeVolume( spep_2 + 346, 1212, 60 );
setSeVolume( spep_2 + 436,1212,60);
setSeVolume( spep_2 + 437,1212,57.9);
setSeVolume( spep_2 + 438,1212,55.8);
setSeVolume( spep_2 + 439,1212,53.7);
setSeVolume( spep_2 + 440,1212,51.6);
setSeVolume( spep_2 + 441,1212,49.5);
setSeVolume( spep_2 + 442,1212,47.4);
setSeVolume( spep_2 + 443,1212,45.3);
setSeVolume( spep_2 + 444,1212,43.2);
setSeVolume( spep_2 + 445,1212,41.1);
setSeVolume( spep_2 + 446,1212,39);
setSeVolume( spep_2 + 447,1212,36.9);
setSeVolume( spep_2 + 448,1212,34.8);
setSeVolume( spep_2 + 449,1212,32.7);
setSeVolume( spep_2 + 450,1212,30.6);
setSeVolume( spep_2 + 451,1212,28.5);
setSeVolume( spep_2 + 452,1212,26.4);
setSeVolume( spep_2 + 453,1212,24.3);
setSeVolume( spep_2 + 454,1212,22.2);
setSeVolume( spep_2 + 455,1212,20.1);
setSeVolume( spep_2 + 456,1212,18);
setSeVolume( spep_2 + 457,1212,15.9);
setSeVolume( spep_2 + 458,1212,13.8);
setSeVolume( spep_2 + 459,1212,11.7);
setSeVolume( spep_2 + 460,1212,9.5);
setSeVolume( spep_2 + 461,1212,7.4);
setSeVolume( spep_2 + 462,1212,5.3);
setSeVolume( spep_2 + 463,1212,3.2);
setSeVolume( spep_2 + 464,1212,1.1);
setSeVolume( spep_2 + 465,1212,0);
playSe( spep_2 + 295, 1133 );
setSeVolume( spep_2 + 295, 1133, 60 );
se_1146 = playSe( spep_2 + 295, 1146 );
playSe( spep_2 + 349, 1021 );
playSe( spep_2 + 351, 1027 );
setSeVolume( spep_2 + 351, 1027, 77 );
playSe( spep_2 + 395, 1072 );
se_1216 = playSe( spep_2 + 426, 1216 );
setSeVolume( spep_2 + 426, 1216, 0 );
setSeVolume( spep_2 + 457, 1216, 0 );
setSeVolume( spep_2 + 458, 1216, 22.67 );
setSeVolume( spep_2 + 459, 1216, 45.33 );
setSeVolume( spep_2 + 460, 1216, 68 );
setSeVolume( spep_2 + 486,1216,68);
setSeVolume( spep_2 + 487,1216,65.5);
setSeVolume( spep_2 + 488,1216,63);
setSeVolume( spep_2 + 489,1216,60.5);
setSeVolume( spep_2 + 490,1216,58);
setSeVolume( spep_2 + 491,1216,55.5);
setSeVolume( spep_2 + 492,1216,53);
setSeVolume( spep_2 + 493,1216,50.5);
setSeVolume( spep_2 + 494,1216,48);
setSeVolume( spep_2 + 495,1216,45.5);
setSeVolume( spep_2 + 496,1216,43);
setSeVolume( spep_2 + 497,1216,40.5);
setSeVolume( spep_2 + 498,1216,38);
setSeVolume( spep_2 + 499,1216,35.5);
setSeVolume( spep_2 + 500,1216,33);
setSeVolume( spep_2 + 501,1216,30.5);
setSeVolume( spep_2 + 502,1216,28);
setSeVolume( spep_2 + 503,1216,25.5);
setSeVolume( spep_2 + 504,1216,23);
setSeVolume( spep_2 + 505,1216,20.5);
setSeVolume( spep_2 + 506,1216,18);
setSeVolume( spep_2 + 507,1216,15.5);
setSeVolume( spep_2 + 508,1216,13);
setSeVolume( spep_2 + 509,1216,10.5);
setSeVolume( spep_2 + 510,1216,8);
setSeVolume( spep_2 + 511,1216,5.5);
setSeVolume( spep_2 + 512,1216,3);
setSeVolume( spep_2 + 513,1216,0.5);
setSeVolume( spep_2 + 514,1216,0);
playSe( spep_2 + 456, 1179 );
setSeVolume( spep_2 + 456, 1179, 61 );
playSe( spep_2 + 456, 1254 );
setSeVolume( spep_2 + 456, 1254, 61 );
se_1240 = playSe( spep_2 + 462, 1240 );
setSeVolume( spep_2 + 462, 1240, 136 );
playSe( spep_2 + 531, 1004 );
playSe( spep_2 + 531, 1003 );
playSe( spep_2 + 538, 1117 );
setSeVolume( spep_2 + 538, 1117, 116 );
playSe( spep_2 + 538, 1184 );
setSeVolume( spep_2 + 538, 1184, 0 );
setSeVolume( spep_2 + 539, 1184, 3.44 );
setSeVolume( spep_2 + 540, 1184, 6.88 );
setSeVolume( spep_2 + 541, 1184, 10.31 );
setSeVolume( spep_2 + 542, 1184, 13.75 );
setSeVolume( spep_2 + 543, 1184, 17.19 );
setSeVolume( spep_2 + 544, 1184, 20.63 );
setSeVolume( spep_2 + 545, 1184, 24.06 );
setSeVolume( spep_2 + 546, 1184, 27.50 );
setSeVolume( spep_2 + 547, 1184, 30.94 );
setSeVolume( spep_2 + 548, 1184, 34.38 );
setSeVolume( spep_2 + 549, 1184, 37.81 );
setSeVolume( spep_2 + 550, 1184, 41.25 );
setSeVolume( spep_2 + 551, 1184, 44.69 );
setSeVolume( spep_2 + 552, 1184, 48.13 );
setSeVolume( spep_2 + 553, 1184, 51.56 );
setSeVolume( spep_2 + 554, 1184, 55 );
playSe( spep_2 + 538, 1027 );
setSeVolume( spep_2 + 538, 1027, 61 );
playSe( spep_2 + 541, 1241 );
setSeVolume( spep_2 + 541, 1241, 69 );
se_1183 = playSe( spep_2 + 541, 1183 );
setSeVolume( spep_2 + 541, 1183, 69 );
setSeVolume( spep_2 + 610,1183,69);
setSeVolume( spep_2 + 611,1183,67.1);
setSeVolume( spep_2 + 612,1183,65.2);
setSeVolume( spep_2 + 613,1183,63.3);
setSeVolume( spep_2 + 614,1183,61.4);
setSeVolume( spep_2 + 615,1183,59.5);
setSeVolume( spep_2 + 616,1183,57.6);
setSeVolume( spep_2 + 617,1183,55.7);
setSeVolume( spep_2 + 618,1183,53.8);
setSeVolume( spep_2 + 619,1183,51.9);
setSeVolume( spep_2 + 620,1183,50);
setSeVolume( spep_2 + 621,1183,48.1);
setSeVolume( spep_2 + 622,1183,46.2);
setSeVolume( spep_2 + 623,1183,44.3);
setSeVolume( spep_2 + 624,1183,42.4);
setSeVolume( spep_2 + 625,1183,40.5);
setSeVolume( spep_2 + 626,1183,38.6);
setSeVolume( spep_2 + 627,1183,36.7);
setSeVolume( spep_2 + 628,1183,34.8);
setSeVolume( spep_2 + 629,1183,32.9);
setSeVolume( spep_2 + 630,1183,31);
setSeVolume( spep_2 + 631,1183,29.1);
setSeVolume( spep_2 + 632,1183,27.2);
setSeVolume( spep_2 + 633,1183,25.3);
setSeVolume( spep_2 + 634,1183,23.4);
setSeVolume( spep_2 + 635,1183,21.5);
setSeVolume( spep_2 + 636,1183,19.6);
setSeVolume( spep_2 + 637,1183,17.7);
setSeVolume( spep_2 + 638,1183,15.8);
setSeVolume( spep_2 + 639,1183,13.9);
setSeVolume( spep_2 + 640,1183,12);
setSeVolume( spep_2 + 641,1183,10.1);
setSeVolume( spep_2 + 642,1183,8.20);
setSeVolume( spep_2 + 643,1183,6.30);
setSeVolume( spep_2 + 644,1183,4.40);
setSeVolume( spep_2 +645,1183,2.50);
setSeVolume( spep_2 +646,1183,0);
playSe( spep_2 + 560, 44 );
se_1212 = playSe( spep_2 + 567, 1212 );
setSeVolume( spep_2 + 567, 1212, 0 );
setSeVolume( spep_2 + 586, 1212, 0 );
setSeVolume( spep_2 + 587, 1212, 2.9 );
setSeVolume( spep_2 + 588, 1212, 5.81 );
setSeVolume( spep_2 + 589, 1212, 8.71 );
setSeVolume( spep_2 + 590, 1212, 11.62 );
setSeVolume( spep_2 + 591, 1212, 14.52 );
setSeVolume( spep_2 + 592, 1212, 17.43 );
setSeVolume( spep_2 + 593, 1212, 20.33 );
setSeVolume( spep_2 + 594, 1212, 23.24 );
setSeVolume( spep_2 + 595, 1212, 26.14 );
setSeVolume( spep_2 + 596, 1212, 29.05 );
setSeVolume( spep_2 + 597, 1212, 31.95 );
setSeVolume( spep_2 + 598, 1212, 34.86 );
setSeVolume( spep_2 + 599, 1212, 37.76 );
setSeVolume( spep_2 + 600, 1212, 40.67 );
setSeVolume( spep_2 + 601, 1212, 43.57 );
setSeVolume( spep_2 + 602, 1212, 46.48 );
setSeVolume( spep_2 + 603, 1212, 49.38 );
setSeVolume( spep_2 + 604, 1212, 52.29 );
setSeVolume( spep_2 + 605, 1212, 55.19 );
setSeVolume( spep_2 + 606, 1212, 58.1 );
setSeVolume( spep_2 + 607, 1212, 61 );
setSeVolume( spep_2 + 654,1212,61);
setSeVolume( spep_2 + 655,1212,59.22);
setSeVolume( spep_2 + 656,1212,57.44);
setSeVolume( spep_2 + 657,1212,55.66);
setSeVolume( spep_2 + 658,1212,53.88);
setSeVolume( spep_2 + 659,1212,52.1);
setSeVolume( spep_2 + 660,1212,50.32);
setSeVolume( spep_2 + 661,1212,48.54);
setSeVolume( spep_2 + 662,1212,46.76);
setSeVolume( spep_2 + 663,1212,44.98);
setSeVolume( spep_2 + 664,1212,43.2);
setSeVolume( spep_2 + 665,1212,41.42);
setSeVolume( spep_2 + 666,1212,39.64);
setSeVolume( spep_2 + 667,1212,37.86);
setSeVolume( spep_2 + 668,1212,36.08);
setSeVolume( spep_2 + 669,1212,34.3);
setSeVolume( spep_2 + 670,1212,32.52);
setSeVolume( spep_2 + 671,1212,30.74);
setSeVolume( spep_2 + 672,1212,28.96);
setSeVolume( spep_2 + 673,1212,27.18);
setSeVolume( spep_2 + 674,1212,25.4);
setSeVolume( spep_2 + 675,1212,23.62);
setSeVolume( spep_2 + 676,1212,21.84);
setSeVolume( spep_2 + 677,1212,20.06);
setSeVolume( spep_2 + 678,1212,18.28);
setSeVolume( spep_2 + 679,1212,16.5);
setSeVolume( spep_2 + 680,1212,14.72);
setSeVolume( spep_2 + 681,1212,12.94);
setSeVolume( spep_2 + 682,1212,11.16);
setSeVolume( spep_2 + 683,1212,9.37);
setSeVolume( spep_2 + 684,1212,7.59);
setSeVolume( spep_2 + 685,1212,5.81);
setSeVolume( spep_2 + 686,1212,4.03);
setSeVolume( spep_2 + 687,1212,2.25);
setSeVolume( spep_2 + 688,1212,0.47);
setSeVolume( spep_2 +689,1212,0);
se_1236 = playSe( spep_2 + 588, 1236 );
setSeVolume( spep_2 + 588, 1236, 116 );
setSeVolume( spep_2 + 654,1236,116);
setSeVolume( spep_2 + 655,1236,112.5);
setSeVolume( spep_2 + 656,1236,109);
setSeVolume( spep_2 + 657,1236,105.5);
setSeVolume( spep_2 + 658,1236,102);
setSeVolume( spep_2 + 659,1236,98.5);
setSeVolume( spep_2 + 660,1236,95);
setSeVolume( spep_2 + 661,1236,91.5);
setSeVolume( spep_2 + 662,1236,88);
setSeVolume( spep_2 + 663,1236,84.5);
setSeVolume( spep_2 + 664,1236,81);
setSeVolume( spep_2 + 665,1236,77.5);
setSeVolume( spep_2 + 666,1236,74);
setSeVolume( spep_2 + 667,1236,70.5);
setSeVolume( spep_2 + 668,1236,67);
setSeVolume( spep_2 + 669,1236,63.5);
setSeVolume( spep_2 + 670,1236,60);
setSeVolume( spep_2 + 671,1236,56.5);
setSeVolume( spep_2 + 672,1236,53);
setSeVolume( spep_2 + 673,1236,49.5);
setSeVolume( spep_2 + 674,1236,46);
setSeVolume( spep_2 + 675,1236,42.5);
setSeVolume( spep_2 + 676,1236,39);
setSeVolume( spep_2 + 677,1236,35.5);
setSeVolume( spep_2 + 678,1236,32);
setSeVolume( spep_2 + 679,1236,28.5);
setSeVolume( spep_2 + 680,1236,25);
setSeVolume( spep_2 + 681,1236,21.5);
setSeVolume( spep_2 + 682,1236,18);
setSeVolume( spep_2 + 683,1236,14.5);
setSeVolume( spep_2 + 684,1236,11);
setSeVolume( spep_2 + 685,1236,7.5);
setSeVolume( spep_2 + 686,1236,4);
setSeVolume( spep_2 + 687,1236,0.5);
setSeVolume( spep_2 + 688,1236,0);
se_1116 = playSe( spep_2 + 602, 1116 );
playSe( spep_2 + 652, 1238 );
setSeVolume( spep_2 + 652, 1238, 59 );
playSe( spep_2 + 652, 1179 );
playSe( spep_2 + 652, 1032 );
setSeVolume( spep_2 + 652, 1032, 87 );
playSe( spep_2 + 674, 1238 );
setSeVolume( spep_2 + 674, 1238, 64 );
playSe( spep_2 + 674, 1032 );
setSeVolume( spep_2 + 674, 1032, 69 );
playSe( spep_2 + 691, 1238 );
setSeVolume( spep_2 + 691, 1238, 67 );
playSe( spep_2 + 691, 1032 );
setSeVolume( spep_2 + 691, 1032, 68 );
playSe( spep_2 + 694, 1141 );
setSeVolume( spep_2 + 694, 1141, 54 );
playSe( spep_2 + 709, 1159 );
setSeVolume( spep_2 + 709, 1159, 72 );
playSe( spep_2 + 709, 1024 );
setSeVolume( spep_2 + 709, 1024, 75 );
playSe( spep_2 + 757, 1023 );
playSe( spep_2 + 757, 1188 );
setSeVolume( spep_2 + 757, 1188, 65 );
playSe( spep_2 + 769, 1229 );
setSeVolume( spep_2 + 769, 1229, 143 );




stopSe( spep_2 + 74, se_11831, 0 );
stopSe( spep_2 + 92, se_0009, 0 );
stopSe( spep_2 + 31, se_11161, 26 );
stopSe( spep_2 + 122, se_11901, 0 );
stopSe( spep_2 + 156, se_1190, 0 );
stopSe( spep_2 + 262, se_0008, 0 );
stopSe( spep_2 + 284, se_1207, 0 );
stopSe( spep_2 + 381, se_1244, 0 );
stopSe( spep_2 + 465, se_12121, 0 );
stopSe( spep_2 + 432, se_1146, 34 );
stopSe( spep_2 + 514, se_1216, 0 );
stopSe( spep_2 + 544, se_1240, 0 );
stopSe( spep_2 + 646, se_1183, 0 );
stopSe( spep_2 + 689, se_1212, 0 );
stopSe( spep_2 + 688, se_1236, 0 );
stopSe( spep_2 + 641, se_1116, 47 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 748 );
endPhase( spep_2 + 858 );
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
setEffMoveKey( spep_0 + 110, former, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, former, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, former, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, former, 0 );
setEffRotateKey( spep_0 + 110, former, 0 );
setEffAlphaKey( spep_0 + 0, former, 255 );
setEffAlphaKey( spep_0 + 110, former, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +22, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +22,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +94,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 191 );
setEffAlphaKey( spep_0 + 92, ctgogo, 112 );
setEffAlphaKey( spep_0 + 94, ctgogo, 64 );

setEffRotateKey(  spep_0 +22,  ctgogo,  0);
setEffRotateKey(  spep_0 +94,  ctgogo,  0);

setEffScaleKey(  spep_0 +22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +94,  ctgogo, -1.07, 1.07 );

--SE
se_1269 = playSe( spep_0 + 0, 1269 );--オーラ
setSeVolume( spep_0 + 0, 1269, 35 );
se_1175 = playSe( spep_0 + 0, 1175 );--オーラ
setSeVolume( spep_0 + 0, 1175, 25 );
playSe( spep_0 + 22, 1018 );--顔カットイン
setSeVolume( spep_0 + 22, 1018, 79 );
playSe( spep_0 + 20, 1108 );--足音
setSeVolume( spep_0 + 20, 1108, 45 );
playSe( spep_0 + 54, 1106 );--足音
setSeVolume( spep_0 + 54, 1106, 60 );
playSe( spep_0 + 74, 1108 );--足音
setSeVolume( spep_0 + 74, 1108, 40 );
playSe( spep_0 + 96, 1106 );--足音
setSeVolume( spep_0 + 96, 1106, 48 );

stopSe( spep_0 + 110, se_1269, 0 );
stopSe( spep_0 + 110, se_1175, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 112, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 110;
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
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
rear_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rear_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 868, rear_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rear_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 868, rear_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rear_f, 0 );
setEffRotateKey( spep_2 + 868, rear_f, 0 );
setEffAlphaKey( spep_2 + 0, rear_f, 255 );
setEffAlphaKey( spep_2 + 868, rear_f, 255 );

-- ** エフェクト等 ** --
rear_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rear_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 868, rear_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rear_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 868, rear_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rear_b, 0 );
setEffRotateKey( spep_2 + 868, rear_b, 0 );
setEffAlphaKey( spep_2 + 0, rear_b, 255 );
setEffAlphaKey( spep_2 + 868, rear_b, 255 );

--敵の動き
setDisp( spep_2-3 + 38, 1, 1);
setDisp( spep_2-1 + 266, 1, 0);

changeAnime( spep_2-3 + 38, 1, 118);

setMoveKey( spep_2-3 + 38, 1, 1975.5, -1132.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 1961, -1124.3 , 0 );
setMoveKey( spep_2-3 + 42, 1, 1941, -1112.9 , 0 );
setMoveKey( spep_2-3 + 44, 1, 1909.5, -1095.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, 1856.6, -1066.7 , 0 );
setMoveKey( spep_2-3 + 48, 1, 1769.2, -1020.2 , 0 );
setMoveKey( spep_2-3 + 50, 1, 1629.4, -946.3 , 0 );

setScaleKey( spep_2-3 + 38, 1, 14.62, 14.62 );
setScaleKey( spep_2-3 + 40, 1, 14.53, 14.53 );
setScaleKey( spep_2-3 + 42, 1, 14.4, 14.4 );
setScaleKey( spep_2-3 + 44, 1, 14.21, 14.21 );
setScaleKey( spep_2-3 + 46, 1, 13.91, 13.91 );
setScaleKey( spep_2-3 + 48, 1, 13.43, 13.43 );
setScaleKey( spep_2-3 + 50, 1, 12.67, 12.67 );

setRotateKey( spep_2-3 + 38, 1, 0 );
setRotateKey( spep_2-3 + 50, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 870, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_2 + 0, 1182 );
setSeVolume( spep_2 + 0, 1182, 126 );
se_11831 = playSe( spep_2 + 0, 1183 );
setSeVolume( spep_2 + 0, 1183, 112 );
se_0009 = playSe( spep_2 + 0, 9 );
setSeVolume( spep_2 + 0, 9, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
   stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_11831, 0 );
    stopSe( SP_dodge - 12, se_0009, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 1629.4, -946.3 , 0 );
    setScaleKey( SP_dodge + 9, 1, 12.67, 12.67 );
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
changeAnime( spep_2-3 + 74, 1, 106);
changeAnime( spep_2-3 + 78, 1, 108);
changeAnime( spep_2-3 + 82, 1, 106);
changeAnime( spep_2-3 + 86, 1, 108);
changeAnime( spep_2-3 + 90, 1, 106);
changeAnime( spep_2-3 + 94, 1, 108);
changeAnime( spep_2-3 + 98, 1, 106);
changeAnime( spep_2-3 + 102, 1, 108);
changeAnime( spep_2-3 + 106, 1, 106);
changeAnime( spep_2-3 + 110, 1, 108);
changeAnime( spep_2-3 + 114, 1, 106);
changeAnime( spep_2-3 + 118, 1, 108);
changeAnime( spep_2-3 + 122, 1, 106);
changeAnime( spep_2-3 + 126, 1, 108);
changeAnime( spep_2-3 + 130, 1, 106);
changeAnime( spep_2-3 + 134, 1, 108);
changeAnime( spep_2-3 + 138, 1, 106);
changeAnime( spep_2-3 + 142, 1, 108);
changeAnime( spep_2-3 + 146, 1, 106);
changeAnime( spep_2-3 + 150, 1, 108);
changeAnime( spep_2-3 + 154, 1, 106);
changeAnime( spep_2-3 + 158, 1, 108);
changeAnime( spep_2-3 + 162, 1, 106);
changeAnime( spep_2-3 + 166, 1, 108);
changeAnime( spep_2-3 + 170, 1, 106);
changeAnime( spep_2-3 + 174, 1, 108);
changeAnime( spep_2-3 + 178, 1, 106);
changeAnime( spep_2-3 + 190, 1, 108);

setMoveKey( spep_2-3 + 52, 1, 1411.7, -831 , 0 );
setMoveKey( spep_2-3 + 54, 1, 1071.4, -647.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 738.8, -471 , 0 );
setMoveKey( spep_2-3 + 58, 1, 524.2, -357.4 , 0 );
setMoveKey( spep_2-3 + 60, 1, 393.4, -287.4 , 0 );
setMoveKey( spep_2-3 + 62, 1, 316, -245.6 , 0 );
setMoveKey( spep_2-3 + 64, 1, 270.7, -224.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 255, -208.5 , 0 );
setMoveKey( spep_2-3 + 68, 1, 236.4, -202.2 , 0 );
setMoveKey( spep_2-3 + 70, 1, 242.1, -202.1 , 0 );
setMoveKey( spep_2-3 + 72, 1, 232.3, -202.6 , 0 );
setMoveKey( spep_2-3 + 73, 1, 232.3, -202.6 , 0 );

setMoveKey( spep_2-3 + 74, 1, 70.4, -56.9 , 0 );
setMoveKey( spep_2-3 + 76, 1, 68.3, -55.8 , 0 );
setMoveKey( spep_2-3 + 77, 1, 68.3, -55.8 , 0 );

setMoveKey( spep_2-3 + 78, 1, 93.4, -48.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 93, -52.8 , 0 );
setMoveKey( spep_2-3 + 81, 1, 93, -52.8 , 0 );

setMoveKey( spep_2-3 + 82, 1, 72.1, -52 , 0 );
setMoveKey( spep_2-3 + 84, 1, 68.6, -59.8 , 0 );
setMoveKey( spep_2-3 + 85, 1, 68.6, -59.8 , 0 );

setMoveKey( spep_2-3 + 86, 1, 93.1, -44.8 , 0 );
setMoveKey( spep_2-3 + 88, 1, 90.1, -38.7 , 0 );
setMoveKey( spep_2-3 + 89, 1, 90.1, -38.7 , 0 );

setMoveKey( spep_2-3 + 90, 1, 70.7, -70.2 , 0 );
setMoveKey( spep_2-3 + 92, 1, 69.2, -48.6 , 0 );
setMoveKey( spep_2-3 + 93, 1, 69.2, -48.6 , 0 );

setMoveKey( spep_2-3 + 94, 1, 94.4, -57 , 0 );
setMoveKey( spep_2-3 + 96, 1, 92.4, -46.5 , 0 );
setMoveKey( spep_2-3 + 97, 1, 92.4, -46.5 , 0 );

setMoveKey( spep_2-3 + 98, 1, 71.9, -63.4 , 0 );
setMoveKey( spep_2-3 + 100, 1, 72.2, -69.3 , 0 );
setMoveKey( spep_2-3 + 101, 1, 72.2, -69.3 , 0 );

setMoveKey( spep_2-3 + 102, 1, 91.3, -22.4 , 0 );
setMoveKey( spep_2-3 + 104, 1, 92.5, -64.8 , 0 );
setMoveKey( spep_2-3 + 105, 1, 92.5, -64.8 , 0 );

setMoveKey( spep_2-3 + 106, 1, 72.7, -53.7 , 0 );
setMoveKey( spep_2-3 + 108, 1, 70.6, -48.1 , 0 );
setMoveKey( spep_2-3 + 109, 1, 70.6, -48.1 , 0 );

setMoveKey( spep_2-3 + 110, 1, 92.6, -53.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, 91.9, -32.5 , 0 );
setMoveKey( spep_2-3 + 113, 1, 91.9, -32.5 , 0 );

setMoveKey( spep_2-3 + 114, 1, 73.6, -68.9 , 0 );
setMoveKey( spep_2-3 + 116, 1, 68, -48.6 , 0 );
setMoveKey( spep_2-3 + 117, 1, 68, -48.6 , 0 );

setMoveKey( spep_2-3 + 118, 1, 95.5, -36 , 0 );
setMoveKey( spep_2-3 + 120, 1, 89.5, -64.9 , 0 );
setMoveKey( spep_2-3 + 121, 1, 89.5, -64.9 , 0 );

setMoveKey( spep_2-3 + 122, 1, 72.1, -58.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 71.1, -79.5 , 0 );
setMoveKey( spep_2-3 + 125, 1, 71.1, -79.5 , 0 );

setMoveKey( spep_2-3 + 126, 1, 89.5, -43.3 , 0 );
setMoveKey( spep_2-3 + 128, 1, 96.6, -40.9 , 0 );
setMoveKey( spep_2-3 + 129, 1, 96.6, -40.9 , 0 );

setMoveKey( spep_2-3 + 130, 1, 68.6, -97 , 0 );
setMoveKey( spep_2-3 + 132, 1, 69.9, -65.2 , 0 );
setMoveKey( spep_2-3 + 133, 1, 69.9, -65.2 , 0 );

setMoveKey( spep_2-3 + 134, 1, 95.8, -58.3 , 0 );
setMoveKey( spep_2-3 + 136, 1, 92.6, -66.7 , 0 );
setMoveKey( spep_2-3 + 137, 1, 92.6, -66.7 , 0 );

setMoveKey( spep_2-3 + 138, 1, 67.6, -68.4 , 0 );
setMoveKey( spep_2-3 + 140, 1, 72.6, -87.9 , 0 );
setMoveKey( spep_2-3 + 141, 1, 72.6, -87.9 , 0 );

setMoveKey( spep_2-3 + 142, 1, 91.9, -56.4 , 0 );
setMoveKey( spep_2-3 + 144, 1, 96.5, -68 , 0 );
setMoveKey( spep_2-3 + 145, 1, 96.5, -68 , 0 );

setMoveKey( spep_2-3 + 146, 1, 69.1, -63.1 , 0 );
setMoveKey( spep_2-3 + 148, 1, 69.9, -57.4 , 0 );
setMoveKey( spep_2-3 + 149, 1, 69.9, -57.4 , 0 );

setMoveKey( spep_2-3 + 150, 1, 95, -67.8 , 0 );
setMoveKey( spep_2-3 + 152, 1, 90.4, -50 , 0 );
setMoveKey( spep_2-3 + 153, 1, 90.4, -50 , 0 );

setMoveKey( spep_2-3 + 154, 1, 70.3, -66.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 69.2, -61 , 0 );
setMoveKey( spep_2-3 + 157, 1, 69.2, -61 , 0 );

setMoveKey( spep_2-3 + 158, 1, 95.2, -53.4 , 0 );
setMoveKey( spep_2-3 + 160, 1, 92.4, -63.2 , 0 );
setMoveKey( spep_2-3 + 161, 1, 92.4, -63.2 , 0 );

setMoveKey( spep_2-3 + 162, 1, 67, -58 , 0 );
setMoveKey( spep_2-3 + 164, 1, 71.6, -52.5 , 0 );
setMoveKey( spep_2-3 + 165, 1, 71.6, -52.5 , 0 );

setMoveKey( spep_2-3 + 166, 1, 84.9, -43.7 , 0 );
setMoveKey( spep_2-3 + 168, 1, 88.8, -45.7 , 0 );
setMoveKey( spep_2-3 + 169, 1, 88.8, -45.7 , 0 );

setMoveKey( spep_2-3 + 170, 1, 57.4, -79.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 60.5, -42.1 , 0 );
setMoveKey( spep_2-3 + 173, 1, 60.5, -42.1 , 0 );

setMoveKey( spep_2-3 + 174, 1, 71.2, -29 , 0 );
setMoveKey( spep_2-3 + 176, 1, 64.3, -20.7 , 0 );
setMoveKey( spep_2-3 + 177, 1, 64.3, -20.7 , 0 );

setMoveKey( spep_2-3 + 178, 1, 3.1, -16.2 , 0 );
setMoveKey( spep_2-3 + 179, 1, 3.1, -16.2 , 0 );

setMoveKey( spep_2-3 + 180, 1, -20.8, -13.4 , 0 );
setMoveKey( spep_2-3 + 182, 1, -20.6, -13.2 , 0 );
setMoveKey( spep_2-3 + 184, 1, -17.3, -11.1 , 0 );
setMoveKey( spep_2-3 + 186, 1, -14.1, -9 , 0 );
setMoveKey( spep_2-3 + 188, 1, -13.9, -8.9 , 0 );
setMoveKey( spep_2-3 + 189, 1, -13.9, -8.9 , 0 );

setMoveKey( spep_2-3 + 190, 1, 26.8, 24.6 , 0 );
setMoveKey( spep_2-3 + 192, 1, 23.7, 5.3 , 0 );
setMoveKey( spep_2-3 + 194, 1, 20.8, 16.5 , 0 );
setMoveKey( spep_2-3 + 196, 1, 18.6, 15.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 24.6, 6.2 , 0 );
setMoveKey( spep_2-3 + 200, 1, 16.8, 31.4 , 0 );
setMoveKey( spep_2-3 + 202, 1, 10.4, 17.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 10.1, 34.2 , 0 );
setMoveKey( spep_2-3 + 206, 1, 9.9, 26.4 , 0 );
setMoveKey( spep_2-3 + 208, 1, 9.7, 26.7 , 0 );
setMoveKey( spep_2-3 + 210, 1, 9.6, 26.9 , 0 );
setMoveKey( spep_2-3 + 212, 1, 9.4, 27.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 9.4, 27.1 , 0 );
setMoveKey( spep_2-3 + 216, 1, 9.3, 27.3 , 0 );
setMoveKey( spep_2-3 + 222, 1, 9.3, 27.3 , 0 );
setMoveKey( spep_2-3 + 224, 1, 9.2, 22.3 , 0 );
setMoveKey( spep_2-3 + 226, 1, 8.9, 27.7 , 0 );
setMoveKey( spep_2-3 + 228, 1, 8.7, 17.7 , 0 );
setMoveKey( spep_2-3 + 230, 1, 8.4, 24.2 , 0 );
setMoveKey( spep_2-3 + 232, 1, 8.2, 17.2 , 0 );
setMoveKey( spep_2-3 + 234, 1, 8, 17.6 , 0 );
setMoveKey( spep_2-3 + 236, 1, 7.8, 20.1 , 0 );
setMoveKey( spep_2-3 + 238, 1, 7.6, 20.5 , 0 );
setMoveKey( spep_2-3 + 240, 1, 7.4, 29.9 , 0 );
setMoveKey( spep_2-3 + 242, 1, 7.2, 30.2 , 0 );
setMoveKey( spep_2-3 + 244, 1, 7.1, 30.4 , 0 );
setMoveKey( spep_2-3 + 246, 1, 6.9, 30.6 , 0 );
setMoveKey( spep_2-3 + 248, 1, 6.8, 30.8 , 0 );
setMoveKey( spep_2-3 + 250, 1, 6.7, 30.9 , 0 );
setMoveKey( spep_2-3 + 252, 1, 6.6, 31.1 , 0 );
setMoveKey( spep_2-3 + 254, 1, 6.5, 31.2 , 0 );
setMoveKey( spep_2-3 + 256, 1, 6.4, 31.3 , 0 );
setMoveKey( spep_2-3 + 258, 1, 6.4, 31.4 , 0 );
setMoveKey( spep_2-3 + 260, 1, 6.3, 31.5 , 0 );
setMoveKey( spep_2-3 + 262, 1, 6.3, 31.5 , 0 );
setMoveKey( spep_2-1 + 266, 1, 6.3, 31.6 , 0 );

setScaleKey( spep_2-3 + 52, 1, 11.48, 11.48 );
setScaleKey( spep_2-3 + 54, 1, 9.56, 9.56 );
setScaleKey( spep_2-3 + 56, 1, 7.74, 7.74 );
setScaleKey( spep_2-3 + 58, 1, 6.58, 6.58 );
setScaleKey( spep_2-3 + 60, 1, 5.85, 5.85 );
setScaleKey( spep_2-3 + 62, 1, 5.41, 5.41 );
setScaleKey( spep_2-3 + 64, 1, 5.16, 5.16 );
setScaleKey( spep_2-3 + 66, 1, 5.03, 5.03 );
setScaleKey( spep_2-3 + 68, 1, 4.96, 4.96 );
setScaleKey( spep_2-3 + 70, 1, 4.95, 4.95 );
setScaleKey( spep_2-3 + 73, 1, 4.95, 4.95 );

setScaleKey( spep_2-3 + 74, 1, 1.05, 1.05 );

setScaleKey( spep_2-3 + 162, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 163, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 164, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 165, 1, 1.06, 1.06 );

setScaleKey( spep_2-3 + 166, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 168, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 169, 1, 1.07, 1.07 );

setScaleKey( spep_2-3 + 170, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 172, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 173, 1, 1.09, 1.09 );

setScaleKey( spep_2-3 + 174, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 176, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 177, 1, 1.15, 1.15 );

setScaleKey( spep_2-3 + 178, 1, 1.26, 1.26 );
setScaleKey( spep_2-3 + 179, 1, 1.26, 1.26 );

setScaleKey( spep_2-3 + 180, 1, 1.26, 1.26 );
setScaleKey( spep_2-3 + 182, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 184, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 186, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 188, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 189, 1, 0.84, 0.84 );

setScaleKey( spep_2-3 + 190, 1, 1.04, 1.04 );
setScaleKey( spep_2-3 + 192, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 194, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 196, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 198, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 200, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 202, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 204, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 206, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 208, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 210, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 212, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 214, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 216, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 224, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 226, 1, 0.29, 0.29 );
setScaleKey( spep_2-3 + 228, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 230, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 232, 1, 0.25, 0.25 );
setScaleKey( spep_2-3 + 234, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 236, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 238, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 240, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 242, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 244, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 246, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 248, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 250, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 252, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 254, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 258, 1, 0.16, 0.16 );
setScaleKey( spep_2-1 + 266, 1, 0.15, 0.15 );

setRotateKey( spep_2-3 + 73, 1, 0 );

setRotateKey( spep_2-3 + 74, 1, -45 );
setRotateKey( spep_2-3 + 76, 1, -45 );
setRotateKey( spep_2-3 + 77, 1, -45 );

setRotateKey( spep_2-3 + 78, 1, -6.3 );
setRotateKey( spep_2-3 + 80, 1, -6.3 );
setRotateKey( spep_2-3 + 81, 1, -6.3 );

setRotateKey( spep_2-3 + 82, 1, -45 );
setRotateKey( spep_2-3 + 84, 1, -45 );

setRotateKey( spep_2-3 + 86, 1, -6.3 );
setRotateKey( spep_2-3 + 89, 1, -6.3 );

setRotateKey( spep_2-3 + 90, 1, -45 );
setRotateKey( spep_2-3 + 92, 1, -45 );
setRotateKey( spep_2-3 + 93, 1, -45 );

setRotateKey( spep_2-3 + 94, 1, -6.3 );
setRotateKey( spep_2-3 + 96, 1, -6.3 );
setRotateKey( spep_2-3 + 97, 1, -6.3 );

setRotateKey( spep_2-3 + 98, 1, -45 );
setRotateKey( spep_2-3 + 100, 1, -45 );
setRotateKey( spep_2-3 + 101, 1, -45 );

setRotateKey( spep_2-3 + 102, 1, -6.3 );
setRotateKey( spep_2-3 + 104, 1, -6.3 );
setRotateKey( spep_2-3 + 105, 1, -6.3 );

setRotateKey( spep_2-3 + 106, 1, -45 );
setRotateKey( spep_2-3 + 108, 1, -45 );
setRotateKey( spep_2-3 + 109, 1, -45 );

setRotateKey( spep_2-3 + 110, 1, -6.3 );
setRotateKey( spep_2-3 + 112, 1, -6.3 );
setRotateKey( spep_2-3 + 113, 1, -6.3 );

setRotateKey( spep_2-3 + 114, 1, -45 );
setRotateKey( spep_2-3 + 116, 1, -45 );
setRotateKey( spep_2-3 + 117, 1, -45 );

setRotateKey( spep_2-3 + 118, 1, -6.3 );
setRotateKey( spep_2-3 + 120, 1, -6.3 );
setRotateKey( spep_2-3 + 121, 1, -6.3 );

setRotateKey( spep_2-3 + 122, 1, -45 );
setRotateKey( spep_2-3 + 124, 1, -45 );
setRotateKey( spep_2-3 + 125, 1, -45 );

setRotateKey( spep_2-3 + 126, 1, -6.3 );
setRotateKey( spep_2-3 + 128, 1, -6.3 );
setRotateKey( spep_2-3 + 129, 1, -6.3 );

setRotateKey( spep_2-3 + 130, 1, -45 );
setRotateKey( spep_2-3 + 132, 1, -45 );
setRotateKey( spep_2-3 + 133, 1, -45 );

setRotateKey( spep_2-3 + 134, 1, -6.3 );
setRotateKey( spep_2-3 + 136, 1, -6.3 );
setRotateKey( spep_2-3 + 137, 1, -6.3 );

setRotateKey( spep_2-3 + 138, 1, -45 );
setRotateKey( spep_2-3 + 140, 1, -45 );
setRotateKey( spep_2-3 + 141, 1, -45 );

setRotateKey( spep_2-3 + 142, 1, -6.3 );
setRotateKey( spep_2-3 + 144, 1, -6.3 );
setRotateKey( spep_2-3 + 145, 1, -6.3 );

setRotateKey( spep_2-3 + 146, 1, -45 );
setRotateKey( spep_2-3 + 148, 1, -45 );
setRotateKey( spep_2-3 + 149, 1, -45 );

setRotateKey( spep_2-3 + 150, 1, -6.3 );
setRotateKey( spep_2-3 + 152, 1, -6.3 );
setRotateKey( spep_2-3 + 153, 1, -6.3 );

setRotateKey( spep_2-3 + 154, 1, -45 );
setRotateKey( spep_2-3 + 156, 1, -45 );

setRotateKey( spep_2-3 + 158, 1, -6.3 );
setRotateKey( spep_2-3 + 160, 1, -6.3 );
setRotateKey( spep_2-3 + 161, 1, -6.3 );

setRotateKey( spep_2-3 + 162, 1, -45 );
setRotateKey( spep_2-3 + 164, 1, -45 );
setRotateKey( spep_2-3 + 165, 1, -45 );

setRotateKey( spep_2-3 + 166, 1, -6.3 );
setRotateKey( spep_2-3 + 168, 1, -6.3 );
setRotateKey( spep_2-3 + 168, 1, -6.3 );
setRotateKey( spep_2-3 + 169, 1, -6.3 );

setRotateKey( spep_2-3 + 170, 1, -45 );
setRotateKey( spep_2-3 + 172, 1, -45 );
setRotateKey( spep_2-3 + 173, 1, -45 );

setRotateKey( spep_2-3 + 174, 1, -6.3 );
setRotateKey( spep_2-3 + 177, 1, -6.3 );

setRotateKey( spep_2-3 + 178, 1, -45 );
setRotateKey( spep_2-3 + 179, 1, -45 );

setRotateKey( spep_2-3 + 180, 1, -52 );
setRotateKey( spep_2-3 + 189, 1, -52 );

setRotateKey( spep_2-3 + 190, 1, -9.3 );
setRotateKey( spep_2-1 + 266, 1, -9.3 );

--敵の動き
setDisp( spep_2-3 + 342, 1, 1);
setDisp( spep_2-1 + 420, 1, 0);

changeAnime( spep_2-3 + 342, 1, 108);

setMoveKey( spep_2-3 + 342, 1, 104.7, -1.4 , 0 );
setMoveKey( spep_2-3 + 343, 1, 104.7, -1.4 , 0 );
setMoveKey( spep_2-3 + 344, 1, 102.4, 20.1 , 0 );
setMoveKey( spep_2-3 + 345, 1, 102.4, 20.1 , 0 );
setMoveKey( spep_2-3 + 346, 1, 123.4, 39.1 , 0 );
setMoveKey( spep_2-3 + 347, 1, 123.4, 39.1 , 0 );
setMoveKey( spep_2-3 + 348, 1, 122.2, 30.7 , 0 );
setMoveKey( spep_2-3 + 349, 1, 122.2, 30.7 , 0 );
setMoveKey( spep_2-3 + 350, 1, 213.4, 204.7 , 0 );
setMoveKey( spep_2-3 + 351, 1, 213.4, 204.7 , 0 );
setMoveKey( spep_2-3 + 352, 1, 215.5, 205.1 , 0 );
setMoveKey( spep_2-3 + 353, 1, 215.5, 205.1 , 0 );
setMoveKey( spep_2-3 + 354, 1, 219.6, 214 , 0 );
setMoveKey( spep_2-3 + 355, 1, 219.6, 214 , 0 );
setMoveKey( spep_2-3 + 356, 1, 221.4, 214.1 , 0 );
setMoveKey( spep_2-3 + 357, 1, 221.4, 214.1 , 0 );
setMoveKey( spep_2-3 + 358, 1, 219.3, 213.3 , 0 );
setMoveKey( spep_2-3 + 359, 1, 219.3, 213.3 , 0 );
setMoveKey( spep_2-3 + 360, 1, 214.6, 213.3 , 0 );
setMoveKey( spep_2-3 + 361, 1, 214.6, 213.3 , 0 );
setMoveKey( spep_2-3 + 362, 1, 223.9, 226.4 , 0 );
setMoveKey( spep_2-3 + 363, 1, 223.9, 226.4 , 0 );
setMoveKey( spep_2-3 + 364, 1, 229.4, 236.5 , 0 );
setMoveKey( spep_2-3 + 365, 1, 229.4, 236.5 , 0 );
setMoveKey( spep_2-3 + 366, 1, 219.6, 269.8 , 0 );
setMoveKey( spep_2-3 + 367, 1, 219.6, 269.8 , 0 );
setMoveKey( spep_2-3 + 368, 1, 225.9, 266.7 , 0 );
setMoveKey( spep_2-3 + 369, 1, 225.9, 266.7 , 0 );
setMoveKey( spep_2-3 + 370, 1, 226, 275.1 , 0 );
setMoveKey( spep_2-3 + 371, 1, 226, 275.1 , 0 );
setMoveKey( spep_2-3 + 372, 1, 214, 287.5 , 0 );
setMoveKey( spep_2-3 + 373, 1, 214, 287.5 , 0 );
setMoveKey( spep_2-3 + 374, 1, 220.2, 278.2 , 0 );
setMoveKey( spep_2-3 + 375, 1, 220.2, 278.2 , 0 );
setMoveKey( spep_2-3 + 376, 1, 220.3, 292.3 , 0 );
setMoveKey( spep_2-3 + 377, 1, 220.3, 292.3 , 0 );
setMoveKey( spep_2-3 + 378, 1, 226.3, 283.4 , 0 );
setMoveKey( spep_2-3 + 379, 1, 226.3, 283.4 , 0 );
setMoveKey( spep_2-3 + 380, 1, 226.1, 286 , 0 );
setMoveKey( spep_2-3 + 381, 1, 226.1, 286 , 0 );
setMoveKey( spep_2-3 + 382, 1, 213.9, 296.2 , 0 );
setMoveKey( spep_2-3 + 383, 1, 213.9, 296.2 , 0 );
setMoveKey( spep_2-3 + 384, 1, 226.1, 289.8 , 0 );
setMoveKey( spep_2-3 + 385, 1, 226.1, 289.8 , 0 );
setMoveKey( spep_2-3 + 386, 1, 213.9, 307.2 , 0 );
setMoveKey( spep_2-3 + 387, 1, 213.9, 307.2 , 0 );
setMoveKey( spep_2-3 + 388, 1, 224, 291.8 , 0 );
setMoveKey( spep_2-3 + 389, 1, 224, 291.8 , 0 );
setMoveKey( spep_2-3 + 390, 1, 223.8, 292.8 , 0 );
setMoveKey( spep_2-3 + 391, 1, 223.8, 292.8 , 0 );
setMoveKey( spep_2-3 + 392, 1, 213.6, 311.6 , 0 );
setMoveKey( spep_2-3 + 393, 1, 213.6, 311.6 , 0 );
setMoveKey( spep_2-3 + 394, 1, 217.8, 285.5 , 0 );
setMoveKey( spep_2-3 + 395, 1, 217.8, 285.5 , 0 );
setMoveKey( spep_2-3 + 396, 1, 215.8, 294.4 , 0 );
setMoveKey( spep_2-3 + 397, 1, 215.8, 294.4 , 0 );
setMoveKey( spep_2-3 + 398, 1, 229.8, 274.9 , 0 );
setMoveKey( spep_2-3 + 397, 1, 229.8, 274.9 , 0 );
setMoveKey( spep_2-3 + 400, 1, 229.2, 276.4 , 0 );
setMoveKey( spep_2-3 + 401, 1, 229.2, 276.4 , 0 );
setMoveKey( spep_2-3 + 402, 1, 204.7, 291.7 , 0 );
setMoveKey( spep_2-3 + 403, 1, 204.7, 291.7 , 0 );
setMoveKey( spep_2-3 + 404, 1, 216.9, 276.3 , 0 );
setMoveKey( spep_2-3 + 405, 1, 216.9, 276.3 , 0 );
setMoveKey( spep_2-3 + 406, 1, 200, 299.8 , 0 );
setMoveKey( spep_2-3 + 407, 1, 200, 299.8 , 0 );
setMoveKey( spep_2-3 + 408, 1, 199, 283.8 , 0 );
setMoveKey( spep_2-3 + 409, 1, 199, 283.8 , 0 );
setMoveKey( spep_2-3 + 410, 1, 200.3, 285 , 0 );
setMoveKey( spep_2-3 + 411, 1, 200.3, 285 , 0 );
setMoveKey( spep_2-3 + 412, 1, 211.5, 294.1 , 0 );
setMoveKey( spep_2-3 + 413, 1, 211.5, 294.1 , 0 );
setMoveKey( spep_2-3 + 414, 1, 220, 282.6 , 0 );
setMoveKey( spep_2-3 + 415, 1, 220, 282.6 , 0 );
setMoveKey( spep_2-3 + 416, 1, 219.8, 300.1 , 0 );
setMoveKey( spep_2-3 + 417, 1, 219.8, 300.1 , 0 );
setMoveKey( spep_2-3 + 418, 1, 215.7, 284.2 , 0 );
setMoveKey( spep_2-3 + 419, 1, 215.7, 284.2 , 0 );
setMoveKey( spep_2-3 + 420, 1, 215.9, 285.9 , 0 );
setMoveKey( spep_2-1 + 420, 1, 215.9, 285.9 , 0 );

setScaleKey( spep_2-3 + 342, 1, 5.2, 5.2 );
setScaleKey( spep_2-3 + 344, 1, 3.96, 3.96 );
setScaleKey( spep_2-3 + 346, 1, 4, 4 );
setScaleKey( spep_2-3 + 348, 1, 4, 4 );
setScaleKey( spep_2-3 + 350, 1, 3, 3 );
setScaleKey( spep_2-3 + 352, 1, 2.97, 2.97 );
setScaleKey( spep_2-3 + 354, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 356, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 358, 1, 2.76, 2.76 );
setScaleKey( spep_2-3 + 360, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 362, 1, 2.35, 2.35 );
setScaleKey( spep_2-3 + 364, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 366, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 368, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 370, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 372, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 374, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 376, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 378, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 380, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 382, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 384, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 386, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 388, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 390, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 392, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 394, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 396, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 398, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 400, 1, 0.08, 0.08 );
setScaleKey( spep_2-1 + 420, 1, 0.08, 0.08 );

setRotateKey( spep_2-3 + 342, 1, 0 );
setRotateKey( spep_2-1 + 420, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 606, 1, 1);
setDisp( spep_2-1 + 646, 1, 0);

changeAnime( spep_2-3 + 606, 1, 105);

a=10;

setMoveKey( spep_2-3 + 606, 1, 0+a, 174.1 , 0 );
setMoveKey( spep_2-3 + 607, 1, 0+a, 174.1 , 0 );
setMoveKey( spep_2-3 + 608, 1, 12+a, 167.1 , 0 );
setMoveKey( spep_2-3 + 609, 1, 12+a, 167.1 , 0 );
setMoveKey( spep_2-3 + 610, 1, -7.8+a, 172.7 , 0 );
setMoveKey( spep_2-3 + 611, 1, -7.8+a, 172.7 , 0 );
setMoveKey( spep_2-3 + 612, 1, 8.4+a, 175.3 , 0 );
setMoveKey( spep_2-3 + 613, 1, 8.4+a, 175.3 , 0 );
setMoveKey( spep_2-3 + 614, 1, -3.8+a, 171.2 , 0 );
setMoveKey( spep_2-3 + 615, 1, -3.8+a, 171.2 , 0 );
setMoveKey( spep_2-3 + 616, 1, 4+a, 177 , 0 );
setMoveKey( spep_2-3 + 617, 1, 4+a, 177 , 0 );
setMoveKey( spep_2-3 + 618, 1, -0.3+a, 179.1 , 0 );
setMoveKey( spep_2-3 + 619, 1, -0.3+a, 179.1 , 0 );
setMoveKey( spep_2-3 + 620, 1, -2.4+a, 171 , 0 );
setMoveKey( spep_2-3 + 621, 1, -2.4+a, 171 , 0 );
setMoveKey( spep_2-3 + 622, 1, 0.2+a, 179.2 , 0 );
setMoveKey( spep_2-3 + 623, 1, 0.2+a, 179.2 , 0 );
setMoveKey( spep_2-3 + 624, 1, 4+a, 167.7 , 0 );
setMoveKey( spep_2-3 + 625, 1, 4+a, 167.7 , 0 );
setMoveKey( spep_2-3 + 626, 1, -0.2+a, 175.5 , 0 );
setMoveKey( spep_2-3 + 627, 1, -0.2+a, 175.5 , 0 );
setMoveKey( spep_2-3 + 628, 1, 0.5+a, 171.8 , 0 );
setMoveKey( spep_2-3 + 629, 1, 0.5+a, 171.8 , 0 );
setMoveKey( spep_2-3 + 630, 1, 0.2+a, 174.7 , 0 );
setMoveKey( spep_2-3 + 631, 1, 0.2+a, 174.7 , 0 );
setMoveKey( spep_2-3 + 632, 1, 2.2+a, 173.2 , 0 );
setMoveKey( spep_2-3 + 633, 1, 2.2+a, 173.2 , 0 );
setMoveKey( spep_2-3 + 634, 1, -0.5+a, 174.8 , 0 );
setMoveKey( spep_2-3 + 635, 1, -0.5+a, 174.8 , 0 );
setMoveKey( spep_2-3 + 636, 1, 1+a, 172.6 , 0 );
setMoveKey( spep_2-3 + 637, 1, 1+a, 172.6 , 0 );
setMoveKey( spep_2-3 + 638, 1, 1.2+a, 175 , 0 );
setMoveKey( spep_2-3 + 639, 1, 1.2+a, 175 , 0 );
setMoveKey( spep_2-3 + 640, 1, 2+a, 172.4 , 0 );
setMoveKey( spep_2-3 + 641, 1, 2+a, 172.4 , 0 );
setMoveKey( spep_2-3 + 642, 1, -0.9+a, 174.1 , 0 );
setMoveKey( spep_2-3 + 643, 1, -0.9+a, 174.1 , 0 );
setMoveKey( spep_2-3 + 644, 1, 2.7+a, 173.3 , 0 );
setMoveKey( spep_2-3 + 645, 1, 2.7+a, 173.3 , 0 );
setMoveKey( spep_2-1 + 646, 1, -1.1+a, 173.5 , 0 );

setScaleKey( spep_2-3 + 606, 1, 0.3, 0.3 );
setScaleKey( spep_2-1 + 646, 1, 0.3, 0.3 );

setRotateKey( spep_2-3 + 606, 1, 0 );
setRotateKey( spep_2-1 + 646, 1, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_2-3 + 74,  10017, 104, 0x100, -1, 0, -50.5, 183.2 );

setEffMoveKey( spep_2-3 + 74, ctdogagaga, -50.5, 183.2 , 0 );
setEffMoveKey( spep_2-3 + 76, ctdogagaga, -40.1, 192.2 , 0 );
setEffMoveKey( spep_2-3 + 78, ctdogagaga, -19, 196 , 0 );
setEffMoveKey( spep_2-3 + 80, ctdogagaga, -30.8, 194.8 , 0 );
setEffMoveKey( spep_2-3 + 82, ctdogagaga, -18.3, 190.1 , 0 );
setEffMoveKey( spep_2-3 + 84, ctdogagaga, -28.5, 198.6 , 0 );
setEffMoveKey( spep_2-3 + 86, ctdogagaga, -9.8, 189.3 , 0 );
setEffMoveKey( spep_2-3 + 88, ctdogagaga, -20, 201.8 , 0 );
setEffMoveKey( spep_2-3 + 90, ctdogagaga, -4.6, 200.3 , 0 );
setEffMoveKey( spep_2-3 + 92, ctdogagaga, -13.4, 207 , 0 );
setEffMoveKey( spep_2-3 + 94, ctdogagaga, -3.3, 197.6 , 0 );
setEffMoveKey( spep_2-3 + 96, ctdogagaga, -2.4, 210.3 , 0 );
setEffMoveKey( spep_2-3 + 98, ctdogagaga, -6.2, 196.9 , 0 );
setEffMoveKey( spep_2-3 + 100, ctdogagaga, -0.8, 212.7 , 0 );
setEffMoveKey( spep_2-3 + 102, ctdogagaga, -11.5, 196 , 0 );
setEffMoveKey( spep_2-3 + 104, ctdogagaga, 8.7, 209.3 , 0 );
setEffMoveKey( spep_2-3 + 106, ctdogagaga, -7, 202 , 0 );
setEffMoveKey( spep_2-3 + 108, ctdogagaga, 9.2, 210.2 , 0 );
setEffMoveKey( spep_2-3 + 110, ctdogagaga, -1.2, 196.7 , 0 );
setEffMoveKey( spep_2-3 + 112, ctdogagaga, 11, 210.9 , 0 );
setEffMoveKey( spep_2-3 + 114, ctdogagaga, -6.5, 204.7 , 0 );
setEffMoveKey( spep_2-3 + 116, ctdogagaga, 10.5, 212.7 , 0 );
setEffMoveKey( spep_2-3 + 118, ctdogagaga, 1.6, 198.2 , 0 );
setEffMoveKey( spep_2-3 + 120, ctdogagaga, 10.3, 216.8 , 0 );
setEffMoveKey( spep_2-3 + 122, ctdogagaga, -2, 197.2 , 0 );
setEffMoveKey( spep_2-3 + 124, ctdogagaga, 17.3, 211.4 , 0 );
setEffMoveKey( spep_2-3 + 126, ctdogagaga, -4.5, 206.1 , 0 );
setEffMoveKey( spep_2-3 + 128, ctdogagaga, 17.2, 207.5 , 0 );
setEffMoveKey( spep_2-3 + 130, ctdogagaga, 0.7, 210.9 , 0 );
setEffMoveKey( spep_2-3 + 132, ctdogagaga, 11.1, 201.7 , 0 );
setEffMoveKey( spep_2-3 + 134, ctdogagaga, 9.1, 210.2 , 0 );
setEffMoveKey( spep_2-3 + 136, ctdogagaga, 3.6, 213.5 , 0 );
setEffMoveKey( spep_2-3 + 138, ctdogagaga, 22.7, 214.9 , 0 );
setEffMoveKey( spep_2-3 + 140, ctdogagaga, 2.6, 210.7 , 0 );
setEffMoveKey( spep_2-3 + 142, ctdogagaga, 13.6, 203.3 , 0 );
setEffMoveKey( spep_2-3 + 144, ctdogagaga, -1.9, 211.8 , 0 );
setEffMoveKey( spep_2-3 + 146, ctdogagaga, 17.2, 199.9 , 0 );
setEffMoveKey( spep_2-3 + 148, ctdogagaga, 2.9, 213.2 , 0 );
setEffMoveKey( spep_2-3 + 150, ctdogagaga, 18.3, 210.5 , 0 );
setEffMoveKey( spep_2-3 + 152, ctdogagaga, 6.4, 217.1 , 0 );
setEffMoveKey( spep_2-3 + 154, ctdogagaga, 16, 205.8 , 0 );
setEffMoveKey( spep_2-3 + 156, ctdogagaga, 15.3, 219.2 , 0 );
setEffMoveKey( spep_2-3 + 158, ctdogagaga, 9.8, 203.8 , 0 );
setEffMoveKey( spep_2-3 + 160, ctdogagaga, 14.3, 220.3 , 0 );
setEffMoveKey( spep_2-3 + 162, ctdogagaga, 1.6, 201.6 , 0 );
setEffMoveKey( spep_2-3 + 164, ctdogagaga, 22.1, 215.6 , 0 );
setEffMoveKey( spep_2-3 + 166, ctdogagaga, 4.3, 207.2 , 0 );
setEffMoveKey( spep_2-3 + 168, ctdogagaga, 20.6, 215.5 , 0 );
setEffMoveKey( spep_2-3 + 170, ctdogagaga, 8.6, 200.8 , 0 );
setEffMoveKey( spep_2-3 + 172, ctdogagaga, 20.7, 215.4 , 0 );
setEffMoveKey( spep_2-3 + 174, ctdogagaga, 1.5, 208.5 , 0 );
setEffMoveKey( spep_2-3 + 176, ctdogagaga, 18.4, 216.5 , 0 );
setEffMoveKey( spep_2-3 + 178, ctdogagaga, 16.4, 219.9 , 0 );

setEffScaleKey( spep_2-3 + 74, ctdogagaga, 1.91, 1.94 );
setEffScaleKey( spep_2-3 + 76, ctdogagaga, 2.14, 2.17 );
setEffScaleKey( spep_2-3 + 78, ctdogagaga, 2.24, 2.27 );
setEffScaleKey( spep_2-3 + 80, ctdogagaga, 2.3, 2.34 );
setEffScaleKey( spep_2-3 + 82, ctdogagaga, 2.36, 2.4 );
setEffScaleKey( spep_2-3 + 84, ctdogagaga, 2.41, 2.44 );
setEffScaleKey( spep_2-3 + 86, ctdogagaga, 2.45, 2.49 );
setEffScaleKey( spep_2-3 + 88, ctdogagaga, 2.48, 2.52 );
setEffScaleKey( spep_2-3 + 90, ctdogagaga, 2.51, 2.55 );
setEffScaleKey( spep_2-3 + 92, ctdogagaga, 2.54, 2.58 );
setEffScaleKey( spep_2-3 + 94, ctdogagaga, 2.57, 2.61 );
setEffScaleKey( spep_2-3 + 96, ctdogagaga, 2.59, 2.63 );
setEffScaleKey( spep_2-3 + 98, ctdogagaga, 2.61, 2.66 );
setEffScaleKey( spep_2-3 + 100, ctdogagaga, 2.63, 2.68 );
setEffScaleKey( spep_2-3 + 102, ctdogagaga, 2.65, 2.69 );
setEffScaleKey( spep_2-3 + 104, ctdogagaga, 2.67, 2.71 );
setEffScaleKey( spep_2-3 + 106, ctdogagaga, 2.68, 2.73 );
setEffScaleKey( spep_2-3 + 108, ctdogagaga, 2.7, 2.74 );
setEffScaleKey( spep_2-3 + 110, ctdogagaga, 2.71, 2.76 );
setEffScaleKey( spep_2-3 + 112, ctdogagaga, 2.73, 2.77 );
setEffScaleKey( spep_2-3 + 114, ctdogagaga, 2.74, 2.78 );
setEffScaleKey( spep_2-3 + 116, ctdogagaga, 2.75, 2.79 );
setEffScaleKey( spep_2-3 + 118, ctdogagaga, 2.76, 2.8 );
setEffScaleKey( spep_2-3 + 120, ctdogagaga, 2.77, 2.81 );
setEffScaleKey( spep_2-3 + 122, ctdogagaga, 2.78, 2.82 );
setEffScaleKey( spep_2-3 + 124, ctdogagaga, 2.79, 2.83 );
setEffScaleKey( spep_2-3 + 126, ctdogagaga, 2.79, 2.84 );
setEffScaleKey( spep_2-3 + 128, ctdogagaga, 2.8, 2.85 );
setEffScaleKey( spep_2-3 + 130, ctdogagaga, 2.81, 2.85 );
setEffScaleKey( spep_2-3 + 132, ctdogagaga, 2.81, 2.86 );
setEffScaleKey( spep_2-3 + 134, ctdogagaga, 2.82, 2.86 );
setEffScaleKey( spep_2-3 + 136, ctdogagaga, 2.82, 2.87 );
setEffScaleKey( spep_2-3 + 138, ctdogagaga, 2.83, 2.88 );
setEffScaleKey( spep_2-3 + 140, ctdogagaga, 2.83, 2.88 );
setEffScaleKey( spep_2-3 + 142, ctdogagaga, 2.84, 2.88 );
setEffScaleKey( spep_2-3 + 144, ctdogagaga, 2.84, 2.89 );
setEffScaleKey( spep_2-3 + 146, ctdogagaga, 2.84, 2.89 );
setEffScaleKey( spep_2-3 + 148, ctdogagaga, 2.85, 2.89 );
setEffScaleKey( spep_2-3 + 150, ctdogagaga, 2.85, 2.9 );
setEffScaleKey( spep_2-3 + 152, ctdogagaga, 2.85, 2.9 );
setEffScaleKey( spep_2-3 + 154, ctdogagaga, 2.86, 2.9 );
setEffScaleKey( spep_2-3 + 156, ctdogagaga, 2.86, 2.9 );
setEffScaleKey( spep_2-3 + 158, ctdogagaga, 2.86, 2.91 );
setEffScaleKey( spep_2-3 + 166, ctdogagaga, 2.86, 2.91 );
setEffScaleKey( spep_2-3 + 168, ctdogagaga, 2.87, 2.91 );
setEffScaleKey( spep_2-3 + 178, ctdogagaga, 2.87, 2.91 );

setEffRotateKey( spep_2-3 + 74, ctdogagaga, 0 );
setEffRotateKey( spep_2-3 + 178, ctdogagaga, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 190,  10016, 30, 0x100, -1, 0, 2.3, 177.2 );

setEffMoveKey( spep_2-3 + 190, ctzun, 2.3, 177.2 , 0 );
setEffMoveKey( spep_2-3 + 192, ctzun, -0.1, 179.7 , 0 );
setEffMoveKey( spep_2-3 + 194, ctzun, 2.4, 188.3 , 0 );
setEffMoveKey( spep_2-3 + 196, ctzun, -2.3, 223.7 , 0 );
setEffMoveKey( spep_2-3 + 198, ctzun, 2.8, 230.8 , 0 );
setEffMoveKey( spep_2-3 + 200, ctzun, 2.8, 231.5 , 0 );
setEffMoveKey( spep_2-3 + 202, ctzun, -2.9, 235.7 , 0 );
setEffMoveKey( spep_2-3 + 204, ctzun, 2.6, 233.6 , 0 );
setEffMoveKey( spep_2-3 + 206, ctzun, -3.5, 240 , 0 );
setEffMoveKey( spep_2-3 + 208, ctzun, 2.1, 239.8 , 0 );
setEffMoveKey( spep_2-3 + 210, ctzun, -4.8, 248.7 , 0 );
setEffMoveKey( spep_2-3 + 212, ctzun, 1.4, 249.1 , 0 );
setEffMoveKey( spep_2-3 + 214, ctzun, -6, 257.3 , 0 );
setEffMoveKey( spep_2-3 + 216, ctzun, 0.9, 255.2 , 0 );
setEffMoveKey( spep_2-3 + 218, ctzun, -6.6, 261.6 , 0 );
setEffMoveKey( spep_2-3 + 220, ctzun, 0.8, 257.3 , 0 );

setEffScaleKey( spep_2-3 + 190, ctzun, 1, 1 );
setEffScaleKey( spep_2-3 + 192, ctzun, 1.02, 1.02 );
setEffScaleKey( spep_2-3 + 194, ctzun, 1.29, 1.28 );
setEffScaleKey( spep_2-3 + 196, ctzun, 2.1, 2.09 );
setEffScaleKey( spep_2-3 + 198, ctzun, 2.37, 2.36 );
setEffScaleKey( spep_2-3 + 200, ctzun, 2.39, 2.37 );
setEffScaleKey( spep_2-3 + 202, ctzun, 2.4, 2.39 );
setEffScaleKey( spep_2-3 + 204, ctzun, 2.45, 2.43 );
setEffScaleKey( spep_2-3 + 206, ctzun, 2.52, 2.51 );
setEffScaleKey( spep_2-3 + 208, ctzun, 2.63, 2.61 );
setEffScaleKey( spep_2-3 + 210, ctzun, 2.76, 2.75 );
setEffScaleKey( spep_2-3 + 212, ctzun, 2.9, 2.88 );
setEffScaleKey( spep_2-3 + 214, ctzun, 3.01, 2.99 );
setEffScaleKey( spep_2-3 + 216, ctzun, 3.08, 3.06 );
setEffScaleKey( spep_2-3 + 218, ctzun, 3.13, 3.11 );
setEffScaleKey( spep_2-3 + 220, ctzun, 3.14, 3.12 );

setEffRotateKey( spep_2-3 + 190, ctzun, -5.6 );
setEffRotateKey( spep_2-3 + 192, ctzun, -5.5 );
setEffRotateKey( spep_2-3 + 194, ctzun, -4.4 );
setEffRotateKey( spep_2-3 + 196, ctzun, -1.1 );
setEffRotateKey( spep_2-3 + 198, ctzun, -0.1 );
setEffRotateKey( spep_2-3 + 200, ctzun, 0 );
setEffRotateKey( spep_2-3 + 220, ctzun, 0 );

setEffAlphaKey( spep_2-3 + 190, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 200, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 202, ctzun, 250 );
setEffAlphaKey( spep_2-3 + 204, ctzun, 236 );
setEffAlphaKey( spep_2-3 + 206, ctzun, 211 );
setEffAlphaKey( spep_2-3 + 208, ctzun, 178 );
setEffAlphaKey( spep_2-3 + 210, ctzun, 134 );
setEffAlphaKey( spep_2-3 + 212, ctzun, 90 );
setEffAlphaKey( spep_2-3 + 214, ctzun, 57 );
setEffAlphaKey( spep_2-3 + 216, ctzun, 32 );
setEffAlphaKey( spep_2-3 + 218, ctzun, 18 );
setEffAlphaKey( spep_2-3 + 220, ctzun, 13 );

--SE



setSeVolume( spep_2 + 32,9,79);
setSeVolume( spep_2 + 33,9,77.68);
setSeVolume( spep_2 + 34,9,76.36);
setSeVolume( spep_2 + 35,9,75.04);
setSeVolume( spep_2 + 36,9,73.72);
setSeVolume( spep_2 + 37,9,72.4);
setSeVolume( spep_2 + 38,9,71.08);
setSeVolume( spep_2 + 39,9,69.76);
setSeVolume( spep_2 + 40,9,68.44);
setSeVolume( spep_2 + 41,9,67.12);
setSeVolume( spep_2 + 42,9,65.80);
setSeVolume( spep_2 + 43,9,64.48);
setSeVolume( spep_2 + 44,9,63.16);
setSeVolume( spep_2 + 45,9,61.84);
setSeVolume( spep_2 + 46,9,60.52);
setSeVolume( spep_2 + 47,9,59.20);
setSeVolume( spep_2 + 48,9,57.88);
setSeVolume( spep_2 + 49,9,56.56);
setSeVolume( spep_2 + 50,9,55.24);
setSeVolume( spep_2 + 51,9,53.92);
setSeVolume( spep_2 + 52,9,52.60);
setSeVolume( spep_2 + 53,9,51.28);
setSeVolume( spep_2 + 54,9,49.96);
setSeVolume( spep_2 + 55,9,48.64);
setSeVolume( spep_2 + 56,9,47.32);
setSeVolume( spep_2 + 57,9,46.00);
setSeVolume( spep_2 + 58,9,44.68);
setSeVolume( spep_2 + 59,9,43.36);
setSeVolume( spep_2 + 60,9,42.04);
setSeVolume( spep_2 + 61,9,40.72);
setSeVolume( spep_2 + 62,9,39.40);
setSeVolume( spep_2 + 63,9,38.08);
setSeVolume( spep_2 + 64,9,36.76);
setSeVolume( spep_2 + 65,9,35.44);
setSeVolume( spep_2 + 66,9,34.12);
setSeVolume( spep_2 +67,9,32.80);
setSeVolume( spep_2 +68,9,31.48);
setSeVolume( spep_2 +69,9,30.16);
setSeVolume( spep_2 +70,9,28.84);
setSeVolume( spep_2 +71,9,27.52);
setSeVolume( spep_2 +72,9,26.20);
setSeVolume( spep_2 +73,9,24.88);
setSeVolume( spep_2 +74,9,23.56);
setSeVolume( spep_2 +75,9,22.24);
setSeVolume( spep_2 +76,9,20.92);
setSeVolume( spep_2 +77,9,19.60);
setSeVolume( spep_2 +78,9,18.28);
setSeVolume( spep_2 +79,9,16.96);
setSeVolume( spep_2 +80,9,15.64);
setSeVolume( spep_2 +81,9,14.32);
setSeVolume( spep_2 +82,9,13.00);
setSeVolume( spep_2 +83,9,11.68);
setSeVolume( spep_2 +84,9,10.36);
setSeVolume( spep_2 +85,9,9.04);
setSeVolume( spep_2 +86,9,7.72);
setSeVolume( spep_2 +87,9,6.40);
setSeVolume( spep_2 +88,9,5.08);
setSeVolume( spep_2 +89,9,3.76);
setSeVolume( spep_2 +90,9,2.44);
setSeVolume( spep_2 +91,9,1.12);
setSeVolume( spep_2 +92,9,0);
se_11161 = playSe( spep_2 + 3, 1116 );
playSe( spep_2 + 71, 1000 );
playSe( spep_2 + 71, 1013 );
setSeVolume( spep_2 + 71, 1013, 52 );
playSe( spep_2 + 72, 1009 );
playSe( spep_2 + 80, 1000 );
playSe( spep_2 + 82, 1010 );
playSe( spep_2 + 90, 1006 );
playSe( spep_2 + 92, 1001 );
setSeVolume( spep_2 + 92, 1001, 53 );
playSe( spep_2 + 92, 1009 );
playSe( spep_2 + 101, 1012 );
se_11901 = playSe( spep_2 + 101, 1190 );
setSeVolume( spep_2 + 101, 1190, 59 );
setSeVolume( spep_2 + 110,1190,59);
setSeVolume( spep_2 + 111,1190,54);
setSeVolume( spep_2 + 112,1190,49);
setSeVolume( spep_2 + 113,1190,44);
setSeVolume( spep_2 + 114,1190,39);
setSeVolume( spep_2 + 115,1190,34);
setSeVolume( spep_2 + 116,1190,29);
setSeVolume( spep_2 + 117,1190,24);
setSeVolume( spep_2 + 118,1190,19);
setSeVolume( spep_2 + 119,1190,14);
setSeVolume( spep_2 + 120,1190,9);
setSeVolume( spep_2 + 121,1190,4);
setSeVolume( spep_2 + 122,1190,0);
playSe( spep_2 + 103, 1000 );
playSe( spep_2 + 103, 1110 );
setSeVolume( spep_2 + 103, 1110, 63 );
playSe( spep_2 + 111, 1009 );
playSe( spep_2 + 113, 1000 );
playSe( spep_2 + 122, 1000 );
playSe( spep_2 + 122, 1010 );
playSe( spep_2 + 134, 1010 );
se_1190 = playSe( spep_2 + 135, 1190 );
setSeVolume( spep_2 + 135, 1190, 66 );
setSeVolume( spep_2 + 144,1190,66);
setSeVolume( spep_2 + 145,1190,60.5);
setSeVolume( spep_2 + 146,1190,55);
setSeVolume( spep_2 + 147,1190,49.5);
setSeVolume( spep_2 + 148,1190,44);
setSeVolume( spep_2 + 149,1190,38.5);
setSeVolume( spep_2 + 150,1190,33);
setSeVolume( spep_2 + 151,1190,27.5);
setSeVolume( spep_2 + 152,1190,22);
setSeVolume( spep_2 + 153,1190,16.5);
setSeVolume( spep_2 + 154,1190,11);
setSeVolume( spep_2 + 155,1190,5.5);
setSeVolume( spep_2 + 156,1190,0);
playSe( spep_2 + 137, 1001 );
setSeVolume( spep_2 + 137, 1001, 46 );
playSe( spep_2 + 149, 1009 );
playSe( spep_2 + 151, 1013 );
playSe( spep_2 + 159, 1006 );
setSeVolume( spep_2 + 159, 1006, 65 );
playSe( spep_2 + 159, 1010 );
setSeVolume( spep_2 + 193, 1010, 65 );
playSe( spep_2 + 172, 1009 );
setSeVolume( spep_2 + 172, 1009, 76 );
playSe( spep_2 + 193, 1010 );
playSe( spep_2 + 195, 1187 );
setSeVolume( spep_2 + 195, 1187, 70 );
playSe( spep_2 + 197, 1110 );
setSeVolume( spep_2 + 197, 1110, 80 );
se_0008 = playSe( spep_2 + 232, 8 );
setSeVolume( spep_2 + 232, 8, 62 );
setSeVolume( spep_2 + 250,8,62);
setSeVolume( spep_2 + 251,8,58.5);
setSeVolume( spep_2 + 252,8,55);
setSeVolume( spep_2 + 253,8,51.5);
setSeVolume( spep_2 + 254,8,48);
setSeVolume( spep_2 + 255,8,44.5);
setSeVolume( spep_2 + 256,8,41);
setSeVolume( spep_2 + 257,8,37.5);
setSeVolume( spep_2 + 258,8,34);
setSeVolume( spep_2 + 259,8,30.5);
setSeVolume( spep_2 + 260,8,27);
setSeVolume( spep_2 + 261,8,23.5);
setSeVolume( spep_2 + 262,8,20);
setSeVolume( spep_2 + 45,8,16.5);
setSeVolume( spep_2 + 46,8,13);
setSeVolume( spep_2 + 47,8,9.5);
setSeVolume( spep_2 + 48,8,6);
setSeVolume( spep_2 + 49,8,2.5);
setSeVolume( spep_2 + 50,8,0);
se_1207 = playSe( spep_2 + 232, 1207 );
setSeVolume( spep_2 + 232, 1207, 35 );
setSeVolume( spep_2 + 261,1207,35);
setSeVolume( spep_2 + 262,1207,33.5);
setSeVolume( spep_2 + 263,1207,32);
setSeVolume( spep_2 + 264,1207,30.5);
setSeVolume( spep_2 + 265,1207,29);
setSeVolume( spep_2 + 266,1207,27.5);
setSeVolume( spep_2 + 267,1207,26);
setSeVolume( spep_2 + 268,1207,24.5);
setSeVolume( spep_2 + 269,1207,23);
setSeVolume( spep_2 + 270,1207,21.5);
setSeVolume( spep_2 + 271,1207,20);
setSeVolume( spep_2 + 272,1207,18.5);
setSeVolume( spep_2 + 273,1207,17);
setSeVolume( spep_2 + 274,1207,15.5);
setSeVolume( spep_2 + 275,1207,14);
setSeVolume( spep_2 + 276,1207,12.5);
setSeVolume( spep_2 + 277,1207,11);
setSeVolume( spep_2 + 278,1207,9.5);
setSeVolume( spep_2 + 279,1207,8);
setSeVolume( spep_2 + 280,1207,6.5);
setSeVolume( spep_2 + 281,1207,5);
setSeVolume( spep_2 + 282,1207,3.5);
setSeVolume( spep_2 + 283,1207,2);
setSeVolume( spep_2 + 284,1207,0);
playSe( spep_2 + 240, 44 );
setSeVolume( spep_2 + 240, 44, 79 );
playSe( spep_2 + 272, 1035 );
se_1244 = playSe( spep_2 + 288, 1244 );
setSeVolume( spep_2 + 288, 1244, 0 );
setSeVolume( spep_2 + 316, 1026, 0 );
setSeVolume( spep_2 + 317, 1026, 14.29 );
setSeVolume( spep_2 + 318, 1026, 28.57 );
setSeVolume( spep_2 + 319, 1026, 42.86 );
setSeVolume( spep_2 + 320, 1026, 57.14 );
setSeVolume( spep_2 + 321, 1026, 71.43 );
setSeVolume( spep_2 + 322, 1026, 85.71 );
setSeVolume( spep_2 + 323, 1026, 100 );
se_12121 = playSe( spep_2 + 288, 1212 );
setSeVolume( spep_2 + 288, 1212, 0 );
setSeVolume( spep_2 + 320, 1212, 0 );
setSeVolume( spep_2 + 321, 1212, 2.31 );
setSeVolume( spep_2 + 322, 1212, 4.62 );
setSeVolume( spep_2 + 323, 1212, 6.92 );
setSeVolume( spep_2 + 324, 1212, 9.23 );
setSeVolume( spep_2 + 325, 1212, 11.54 );
setSeVolume( spep_2 + 326, 1212, 13.85 );
setSeVolume( spep_2 + 327, 1212, 16.15 );
setSeVolume( spep_2 + 328, 1212, 18.46 );
setSeVolume( spep_2 + 329, 1212, 20.77 );
setSeVolume( spep_2 + 330, 1212, 23.08 );
setSeVolume( spep_2 + 331, 1212, 25.38 );
setSeVolume( spep_2 + 332, 1212, 27.69 );
setSeVolume( spep_2 + 333, 1212, 30 );
setSeVolume( spep_2 + 334, 1212, 32.31 );
setSeVolume( spep_2 + 335, 1212, 34.62 );
setSeVolume( spep_2 + 336, 1212, 36.92 );
setSeVolume( spep_2 + 337, 1212, 39.23 );
setSeVolume( spep_2 + 338, 1212, 41.54 );
setSeVolume( spep_2 + 339, 1212, 43.85 );
setSeVolume( spep_2 + 340, 1212, 46.15 );
setSeVolume( spep_2 + 341, 1212, 48.46 );
setSeVolume( spep_2 + 342, 1212, 50.77 );
setSeVolume( spep_2 + 343, 1212, 53.08 );
setSeVolume( spep_2 + 344, 1212, 55.38 );
setSeVolume( spep_2 + 345, 1212, 57.69 );
setSeVolume( spep_2 + 346, 1212, 60 );
setSeVolume( spep_2 + 436,1212,60);
setSeVolume( spep_2 + 437,1212,57.9);
setSeVolume( spep_2 + 438,1212,55.8);
setSeVolume( spep_2 + 439,1212,53.7);
setSeVolume( spep_2 + 440,1212,51.6);
setSeVolume( spep_2 + 441,1212,49.5);
setSeVolume( spep_2 + 442,1212,47.4);
setSeVolume( spep_2 + 443,1212,45.3);
setSeVolume( spep_2 + 444,1212,43.2);
setSeVolume( spep_2 + 445,1212,41.1);
setSeVolume( spep_2 + 446,1212,39);
setSeVolume( spep_2 + 447,1212,36.9);
setSeVolume( spep_2 + 448,1212,34.8);
setSeVolume( spep_2 + 449,1212,32.7);
setSeVolume( spep_2 + 450,1212,30.6);
setSeVolume( spep_2 + 451,1212,28.5);
setSeVolume( spep_2 + 452,1212,26.4);
setSeVolume( spep_2 + 453,1212,24.3);
setSeVolume( spep_2 + 454,1212,22.2);
setSeVolume( spep_2 + 455,1212,20.1);
setSeVolume( spep_2 + 456,1212,18);
setSeVolume( spep_2 + 457,1212,15.9);
setSeVolume( spep_2 + 458,1212,13.8);
setSeVolume( spep_2 + 459,1212,11.7);
setSeVolume( spep_2 + 460,1212,9.5);
setSeVolume( spep_2 + 461,1212,7.4);
setSeVolume( spep_2 + 462,1212,5.3);
setSeVolume( spep_2 + 463,1212,3.2);
setSeVolume( spep_2 + 464,1212,1.1);
setSeVolume( spep_2 + 465,1212,0);
playSe( spep_2 + 295, 1133 );
setSeVolume( spep_2 + 295, 1133, 60 );
se_1146 = playSe( spep_2 + 295, 1146 );
playSe( spep_2 + 349, 1021 );
playSe( spep_2 + 351, 1027 );
setSeVolume( spep_2 + 351, 1027, 77 );
playSe( spep_2 + 395, 1072 );
se_1216 = playSe( spep_2 + 426, 1216 );
setSeVolume( spep_2 + 426, 1216, 0 );
setSeVolume( spep_2 + 457, 1216, 0 );
setSeVolume( spep_2 + 458, 1216, 22.67 );
setSeVolume( spep_2 + 459, 1216, 45.33 );
setSeVolume( spep_2 + 460, 1216, 68 );
setSeVolume( spep_2 + 486,1216,68);
setSeVolume( spep_2 + 487,1216,65.5);
setSeVolume( spep_2 + 488,1216,63);
setSeVolume( spep_2 + 489,1216,60.5);
setSeVolume( spep_2 + 490,1216,58);
setSeVolume( spep_2 + 491,1216,55.5);
setSeVolume( spep_2 + 492,1216,53);
setSeVolume( spep_2 + 493,1216,50.5);
setSeVolume( spep_2 + 494,1216,48);
setSeVolume( spep_2 + 495,1216,45.5);
setSeVolume( spep_2 + 496,1216,43);
setSeVolume( spep_2 + 497,1216,40.5);
setSeVolume( spep_2 + 498,1216,38);
setSeVolume( spep_2 + 499,1216,35.5);
setSeVolume( spep_2 + 500,1216,33);
setSeVolume( spep_2 + 501,1216,30.5);
setSeVolume( spep_2 + 502,1216,28);
setSeVolume( spep_2 + 503,1216,25.5);
setSeVolume( spep_2 + 504,1216,23);
setSeVolume( spep_2 + 505,1216,20.5);
setSeVolume( spep_2 + 506,1216,18);
setSeVolume( spep_2 + 507,1216,15.5);
setSeVolume( spep_2 + 508,1216,13);
setSeVolume( spep_2 + 509,1216,10.5);
setSeVolume( spep_2 + 510,1216,8);
setSeVolume( spep_2 + 511,1216,5.5);
setSeVolume( spep_2 + 512,1216,3);
setSeVolume( spep_2 + 513,1216,0.5);
setSeVolume( spep_2 + 514,1216,0);
playSe( spep_2 + 456, 1179 );
setSeVolume( spep_2 + 456, 1179, 61 );
playSe( spep_2 + 456, 1254 );
setSeVolume( spep_2 + 456, 1254, 61 );
se_1240 = playSe( spep_2 + 462, 1240 );
setSeVolume( spep_2 + 462, 1240, 136 );
playSe( spep_2 + 531, 1004 );
playSe( spep_2 + 531, 1003 );
playSe( spep_2 + 538, 1117 );
setSeVolume( spep_2 + 538, 1117, 116 );
playSe( spep_2 + 538, 1184 );
setSeVolume( spep_2 + 538, 1184, 0 );
setSeVolume( spep_2 + 539, 1184, 3.44 );
setSeVolume( spep_2 + 540, 1184, 6.88 );
setSeVolume( spep_2 + 541, 1184, 10.31 );
setSeVolume( spep_2 + 542, 1184, 13.75 );
setSeVolume( spep_2 + 543, 1184, 17.19 );
setSeVolume( spep_2 + 544, 1184, 20.63 );
setSeVolume( spep_2 + 545, 1184, 24.06 );
setSeVolume( spep_2 + 546, 1184, 27.50 );
setSeVolume( spep_2 + 547, 1184, 30.94 );
setSeVolume( spep_2 + 548, 1184, 34.38 );
setSeVolume( spep_2 + 549, 1184, 37.81 );
setSeVolume( spep_2 + 550, 1184, 41.25 );
setSeVolume( spep_2 + 551, 1184, 44.69 );
setSeVolume( spep_2 + 552, 1184, 48.13 );
setSeVolume( spep_2 + 553, 1184, 51.56 );
setSeVolume( spep_2 + 554, 1184, 55 );
playSe( spep_2 + 538, 1027 );
setSeVolume( spep_2 + 538, 1027, 61 );
playSe( spep_2 + 541, 1241 );
setSeVolume( spep_2 + 541, 1241, 69 );
se_1183 = playSe( spep_2 + 541, 1183 );
setSeVolume( spep_2 + 541, 1183, 69 );
setSeVolume( spep_2 + 610,1183,69);
setSeVolume( spep_2 + 611,1183,67.1);
setSeVolume( spep_2 + 612,1183,65.2);
setSeVolume( spep_2 + 613,1183,63.3);
setSeVolume( spep_2 + 614,1183,61.4);
setSeVolume( spep_2 + 615,1183,59.5);
setSeVolume( spep_2 + 616,1183,57.6);
setSeVolume( spep_2 + 617,1183,55.7);
setSeVolume( spep_2 + 618,1183,53.8);
setSeVolume( spep_2 + 619,1183,51.9);
setSeVolume( spep_2 + 620,1183,50);
setSeVolume( spep_2 + 621,1183,48.1);
setSeVolume( spep_2 + 622,1183,46.2);
setSeVolume( spep_2 + 623,1183,44.3);
setSeVolume( spep_2 + 624,1183,42.4);
setSeVolume( spep_2 + 625,1183,40.5);
setSeVolume( spep_2 + 626,1183,38.6);
setSeVolume( spep_2 + 627,1183,36.7);
setSeVolume( spep_2 + 628,1183,34.8);
setSeVolume( spep_2 + 629,1183,32.9);
setSeVolume( spep_2 + 630,1183,31);
setSeVolume( spep_2 + 631,1183,29.1);
setSeVolume( spep_2 + 632,1183,27.2);
setSeVolume( spep_2 + 633,1183,25.3);
setSeVolume( spep_2 + 634,1183,23.4);
setSeVolume( spep_2 + 635,1183,21.5);
setSeVolume( spep_2 + 636,1183,19.6);
setSeVolume( spep_2 + 637,1183,17.7);
setSeVolume( spep_2 + 638,1183,15.8);
setSeVolume( spep_2 + 639,1183,13.9);
setSeVolume( spep_2 + 640,1183,12);
setSeVolume( spep_2 + 641,1183,10.1);
setSeVolume( spep_2 + 642,1183,8.20);
setSeVolume( spep_2 + 643,1183,6.30);
setSeVolume( spep_2 + 644,1183,4.40);
setSeVolume( spep_2 +645,1183,2.50);
setSeVolume( spep_2 +646,1183,0);
playSe( spep_2 + 560, 44 );
se_1212 = playSe( spep_2 + 567, 1212 );
setSeVolume( spep_2 + 567, 1212, 0 );
setSeVolume( spep_2 + 586, 1212, 0 );
setSeVolume( spep_2 + 587, 1212, 2.9 );
setSeVolume( spep_2 + 588, 1212, 5.81 );
setSeVolume( spep_2 + 589, 1212, 8.71 );
setSeVolume( spep_2 + 590, 1212, 11.62 );
setSeVolume( spep_2 + 591, 1212, 14.52 );
setSeVolume( spep_2 + 592, 1212, 17.43 );
setSeVolume( spep_2 + 593, 1212, 20.33 );
setSeVolume( spep_2 + 594, 1212, 23.24 );
setSeVolume( spep_2 + 595, 1212, 26.14 );
setSeVolume( spep_2 + 596, 1212, 29.05 );
setSeVolume( spep_2 + 597, 1212, 31.95 );
setSeVolume( spep_2 + 598, 1212, 34.86 );
setSeVolume( spep_2 + 599, 1212, 37.76 );
setSeVolume( spep_2 + 600, 1212, 40.67 );
setSeVolume( spep_2 + 601, 1212, 43.57 );
setSeVolume( spep_2 + 602, 1212, 46.48 );
setSeVolume( spep_2 + 603, 1212, 49.38 );
setSeVolume( spep_2 + 604, 1212, 52.29 );
setSeVolume( spep_2 + 605, 1212, 55.19 );
setSeVolume( spep_2 + 606, 1212, 58.1 );
setSeVolume( spep_2 + 607, 1212, 61 );
setSeVolume( spep_2 + 654,1212,61);
setSeVolume( spep_2 + 655,1212,59.22);
setSeVolume( spep_2 + 656,1212,57.44);
setSeVolume( spep_2 + 657,1212,55.66);
setSeVolume( spep_2 + 658,1212,53.88);
setSeVolume( spep_2 + 659,1212,52.1);
setSeVolume( spep_2 + 660,1212,50.32);
setSeVolume( spep_2 + 661,1212,48.54);
setSeVolume( spep_2 + 662,1212,46.76);
setSeVolume( spep_2 + 663,1212,44.98);
setSeVolume( spep_2 + 664,1212,43.2);
setSeVolume( spep_2 + 665,1212,41.42);
setSeVolume( spep_2 + 666,1212,39.64);
setSeVolume( spep_2 + 667,1212,37.86);
setSeVolume( spep_2 + 668,1212,36.08);
setSeVolume( spep_2 + 669,1212,34.3);
setSeVolume( spep_2 + 670,1212,32.52);
setSeVolume( spep_2 + 671,1212,30.74);
setSeVolume( spep_2 + 672,1212,28.96);
setSeVolume( spep_2 + 673,1212,27.18);
setSeVolume( spep_2 + 674,1212,25.4);
setSeVolume( spep_2 + 675,1212,23.62);
setSeVolume( spep_2 + 676,1212,21.84);
setSeVolume( spep_2 + 677,1212,20.06);
setSeVolume( spep_2 + 678,1212,18.28);
setSeVolume( spep_2 + 679,1212,16.5);
setSeVolume( spep_2 + 680,1212,14.72);
setSeVolume( spep_2 + 681,1212,12.94);
setSeVolume( spep_2 + 682,1212,11.16);
setSeVolume( spep_2 + 683,1212,9.37);
setSeVolume( spep_2 + 684,1212,7.59);
setSeVolume( spep_2 + 685,1212,5.81);
setSeVolume( spep_2 + 686,1212,4.03);
setSeVolume( spep_2 + 687,1212,2.25);
setSeVolume( spep_2 + 688,1212,0.47);
setSeVolume( spep_2 +689,1212,0);
se_1236 = playSe( spep_2 + 588, 1236 );
setSeVolume( spep_2 + 588, 1236, 116 );
setSeVolume( spep_2 + 654,1236,116);
setSeVolume( spep_2 + 655,1236,112.5);
setSeVolume( spep_2 + 656,1236,109);
setSeVolume( spep_2 + 657,1236,105.5);
setSeVolume( spep_2 + 658,1236,102);
setSeVolume( spep_2 + 659,1236,98.5);
setSeVolume( spep_2 + 660,1236,95);
setSeVolume( spep_2 + 661,1236,91.5);
setSeVolume( spep_2 + 662,1236,88);
setSeVolume( spep_2 + 663,1236,84.5);
setSeVolume( spep_2 + 664,1236,81);
setSeVolume( spep_2 + 665,1236,77.5);
setSeVolume( spep_2 + 666,1236,74);
setSeVolume( spep_2 + 667,1236,70.5);
setSeVolume( spep_2 + 668,1236,67);
setSeVolume( spep_2 + 669,1236,63.5);
setSeVolume( spep_2 + 670,1236,60);
setSeVolume( spep_2 + 671,1236,56.5);
setSeVolume( spep_2 + 672,1236,53);
setSeVolume( spep_2 + 673,1236,49.5);
setSeVolume( spep_2 + 674,1236,46);
setSeVolume( spep_2 + 675,1236,42.5);
setSeVolume( spep_2 + 676,1236,39);
setSeVolume( spep_2 + 677,1236,35.5);
setSeVolume( spep_2 + 678,1236,32);
setSeVolume( spep_2 + 679,1236,28.5);
setSeVolume( spep_2 + 680,1236,25);
setSeVolume( spep_2 + 681,1236,21.5);
setSeVolume( spep_2 + 682,1236,18);
setSeVolume( spep_2 + 683,1236,14.5);
setSeVolume( spep_2 + 684,1236,11);
setSeVolume( spep_2 + 685,1236,7.5);
setSeVolume( spep_2 + 686,1236,4);
setSeVolume( spep_2 + 687,1236,0.5);
setSeVolume( spep_2 + 688,1236,0);
se_1116 = playSe( spep_2 + 602, 1116 );
playSe( spep_2 + 652, 1238 );
setSeVolume( spep_2 + 652, 1238, 59 );
playSe( spep_2 + 652, 1179 );
playSe( spep_2 + 652, 1032 );
setSeVolume( spep_2 + 652, 1032, 87 );
playSe( spep_2 + 674, 1238 );
setSeVolume( spep_2 + 674, 1238, 64 );
playSe( spep_2 + 674, 1032 );
setSeVolume( spep_2 + 674, 1032, 69 );
playSe( spep_2 + 691, 1238 );
setSeVolume( spep_2 + 691, 1238, 67 );
playSe( spep_2 + 691, 1032 );
setSeVolume( spep_2 + 691, 1032, 68 );
playSe( spep_2 + 694, 1141 );
setSeVolume( spep_2 + 694, 1141, 54 );
playSe( spep_2 + 709, 1159 );
setSeVolume( spep_2 + 709, 1159, 72 );
playSe( spep_2 + 709, 1024 );
setSeVolume( spep_2 + 709, 1024, 75 );
playSe( spep_2 + 757, 1023 );
playSe( spep_2 + 757, 1188 );
setSeVolume( spep_2 + 757, 1188, 65 );
playSe( spep_2 + 769, 1229 );
setSeVolume( spep_2 + 769, 1229, 143 );




stopSe( spep_2 + 74, se_11831, 0 );
stopSe( spep_2 + 92, se_0009, 0 );
stopSe( spep_2 + 31, se_11161, 26 );
stopSe( spep_2 + 122, se_11901, 0 );
stopSe( spep_2 + 156, se_1190, 0 );
stopSe( spep_2 + 262, se_0008, 0 );
stopSe( spep_2 + 284, se_1207, 0 );
stopSe( spep_2 + 381, se_1244, 0 );
stopSe( spep_2 + 465, se_12121, 0 );
stopSe( spep_2 + 432, se_1146, 34 );
stopSe( spep_2 + 514, se_1216, 0 );
stopSe( spep_2 + 544, se_1240, 0 );
stopSe( spep_2 + 646, se_1183, 0 );
stopSe( spep_2 + 689, se_1212, 0 );
stopSe( spep_2 + 688, se_1236, 0 );
stopSe( spep_2 + 641, se_1116, 47 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 748 );
endPhase( spep_2 + 858 );
end

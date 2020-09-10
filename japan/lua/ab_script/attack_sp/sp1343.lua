--4017600:ランチ_ランチのバズーカ
--sp_effect_a8_00043

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
SP_01=	155650	;--	敵に接近する
SP_02=	155652	;--	格闘：敵前
SP_03=	155654	;--	格闘：敵後
SP_04=	155655	;--	PAN/UPしながらランチ引き絵
SP_05=	155656	;--	バズーカ発射
SP_06=	155658	;--	弾丸が敵に迫り爆発する：敵前
SP_07=	155659	;--	弾丸が敵に迫り爆発する：敵後

--エフェクト(てき)
SP_01x=	155651	;--	敵に接近する
SP_02x=	155653	;--	格闘：敵前
SP_03x=	155654	;--	格闘：敵後
SP_04x=	155655	;--	PAN/UPしながらランチ引き絵
SP_05x=	155657	;--	バズーカ発射
SP_06x=	155658	;--	弾丸が敵に迫り爆発する：敵前
SP_07x=	155659	;--	弾丸が敵に迫り爆発する：敵後

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
-- 敵に接近する
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
access = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, access, 0, 0, 0 );
setEffMoveKey( spep_0 + 32, access, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, access, 1.0, 1.0 );
setEffScaleKey( spep_0 + 32, access, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, access, 0 );
setEffRotateKey( spep_0 + 32, access, 0 );
setEffAlphaKey( spep_0 + 0, access, 255 );
setEffAlphaKey( spep_0 + 32, access, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 34, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 26; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

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
se_0044 = playSe( spep_0 + 12, 44 );--ダッシュ

--白フェード
entryFade( spep_0+28 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1=spep_0+32;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
struggle_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, struggle_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 176, struggle_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, struggle_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, struggle_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, struggle_f, 0 );
setEffRotateKey( spep_1 + 176, struggle_f, 0 );
setEffAlphaKey( spep_1 + 0, struggle_f, 255 );
setEffAlphaKey( spep_1 + 176, struggle_f, 255 );
setEffAlphaKey( spep_1 + 177, struggle_f, 0 );
setEffAlphaKey( spep_1 + 178, struggle_f, 0 );

-- ** エフェクト等 ** --
struggle_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, struggle_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 176, struggle_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, struggle_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, struggle_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, struggle_b, 0 );
setEffRotateKey( spep_1 + 176, struggle_b, 0 );
setEffAlphaKey( spep_1 + 0, struggle_b, 255 );
setEffAlphaKey( spep_1 + 176, struggle_b, 255 );
setEffAlphaKey( spep_1 + 177, struggle_b, 0 );
setEffAlphaKey( spep_1 + 178, struggle_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 50, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 20, 1, 104 );
changeAnime( spep_1-3 + 40, 1, 106 );

setMoveKey( spep_1 + 0, 1, 61.4, -60 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 61.3, -60 , 0 );
setMoveKey( spep_1-3 + 19, 1, 61.3, -60 , 0 );
setMoveKey( spep_1-3 + 20, 1, 82.2, -43.5 , 0 );
setMoveKey( spep_1-3 + 39, 1, 82.2, -43.5 , 0 );
setMoveKey( spep_1-3 + 40, 1, 114.7, 29.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 225.1, 61.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 296.9, 97.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, 346.5, 148.9 , 0 );
setMoveKey( spep_1-3 + 48, 1, 417.4, 163.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 483.9, 187.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 546.5, 205 , 0 );
setMoveKey( spep_1-3 + 54, 1, 605.2, 225.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 39, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 42, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 44, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 54, 1, 1.5, 1.5 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 39, 1, 0 );
setRotateKey( spep_1-3 + 40, 1, -35.8 );
setRotateKey( spep_1-3 + 42, 1, -35.6 );
setRotateKey( spep_1-3 + 44, 1, -35.2 );
setRotateKey( spep_1-3 + 46, 1, -34.9 );
setRotateKey( spep_1-3 + 48, 1, -34.6 );
setRotateKey( spep_1-3 + 50, 1, -34.3 );
setRotateKey( spep_1-3 + 52, 1, -34 );
setRotateKey( spep_1-3 + 54, 1, -33.7 );

--敵の動き
setDisp( spep_1 + 100, 1, 1 );
setDisp( spep_1 + 136, 1, 0 );

changeAnime( spep_1-3 + 128, 1, 108 );

setMoveKey( spep_1 + 100, 1, 503.9, 249.9 , 0 );
setMoveKey( spep_1-3 + 104, 1, 344.4, 238.5 , 0 );
setMoveKey( spep_1-3 + 106, 1, 183.8, 226.4 , 0 );
setMoveKey( spep_1-3 + 108, 1, 21.9, 213.5 , 0 );
setMoveKey( spep_1-3 + 110, 1, 31.6, 200.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 40.5, 186.4 , 0 );
setMoveKey( spep_1-3 + 114, 1, 48.7, 172.2 , 0 );
setMoveKey( spep_1-3 + 116, 1, 56.4, 157.9 , 0 );
setMoveKey( spep_1-3 + 118, 1, 63.7, 143.4 , 0 );
setMoveKey( spep_1-3 + 120, 1, 70.7, 128.9 , 0 );
setMoveKey( spep_1-3 + 122, 1, 77.6, 114.4 , 0 );
setMoveKey( spep_1-3 + 124, 1, 84.4, 100 , 0 );
setMoveKey( spep_1-3 + 127, 1, 91.1, 85.7 , 0 );
setMoveKey( spep_1-3 + 128, 1, 198.5, 46.1 , 0 );
setMoveKey( spep_1-3 + 130, 1, 240.7, 28.9 , 0 );
setMoveKey( spep_1-3 + 132, 1, 366.3, 36 , 0 );
setMoveKey( spep_1-3 + 134, 1, 424.2, 8.8 , 0 );
setMoveKey( spep_1-3 + 136, 1, 548.7, 21.9 , 0 );
setMoveKey( spep_1-3 + 138, 1, 646.8, 17.4 , 0 );
setMoveKey( spep_1-3 + 140, 1, 747.5, 23.2 , 0 );

setScaleKey( spep_1 + 100, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 128, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 130, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 132, 1, 1.78, 1.78 );
setScaleKey( spep_1-3 + 134, 1, 1.87, 1.87 );
setScaleKey( spep_1-3 + 140, 1, 1.87, 1.87 );

setRotateKey( spep_1 + 100, 1, -26.5 );
setRotateKey( spep_1-3 + 104, 1, -26.2 );
setRotateKey( spep_1-3 + 106, 1, -25.9 );
setRotateKey( spep_1-3 + 108, 1, -25.6 );
setRotateKey( spep_1-3 + 110, 1, -25.3 );
setRotateKey( spep_1-3 + 112, 1, -25 );
setRotateKey( spep_1-3 + 114, 1, -24.7 );
setRotateKey( spep_1-3 + 116, 1, -24.4 );
setRotateKey( spep_1-3 + 118, 1, -24.2 );
setRotateKey( spep_1-3 + 120, 1, -23.9 );
setRotateKey( spep_1-3 + 122, 1, -23.6 );
setRotateKey( spep_1-3 + 124, 1, -23.3 );
setRotateKey( spep_1-3 + 127, 1, -23 );
setRotateKey( spep_1-3 + 128, 1, -5.8 );
setRotateKey( spep_1-3 + 130, 1, -6 );
setRotateKey( spep_1-3 + 140, 1, -6 );

--SE
playSe( spep_1 + 30, 1189 );--アッパー
playSe( spep_1 + 36, 1000 );--アッパー
playSe( spep_1 + 36, 1009 );--アッパー
setSeVolume( spep_1 + 36, 1009, 77 );
se_1116 = playSe( spep_1 + 82, 1116 );--ジャンプ
setSeVolume( spep_1 + 82, 1116, 71 );
se_1117 = playSe( spep_1 + 84, 1117 );--ジャンプ
playSe( spep_1 + 120, 1003 );--ドロップキック
playSe( spep_1 + 130, 1013 );--ドロップキック
playSe( spep_1 + 132, 1110 );--ドロップキック

stopSe( spep_1 + 6, se_0044, 23 );
stopSe( spep_1 + 104, se_1116, 17 );
stopSe( spep_1 + 112, se_1117, 19 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2=spep_1+176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--白フェード
--entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- PAN/UPしながらランチ引き絵
------------------------------------------------------
-- ** エフェクト等 ** --
standing = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, standing, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, standing, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, standing, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, standing, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, standing, 0 );
setEffRotateKey( spep_3 + 100, standing, 0 );
setEffAlphaKey( spep_3 + 0, standing, 255 );
setEffAlphaKey( spep_3 + 100, standing, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_3 + 12, 1018 );--セリフカットイン

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 100;
------------------------------------------------------
-- バズーカ発射
------------------------------------------------------
-- ** エフェクト等 ** --
discharge = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, discharge, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, discharge, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, discharge, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, discharge, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, discharge, 0 );
setEffRotateKey( spep_4 + 80, discharge, 0 );
setEffAlphaKey( spep_4 + 0, discharge, 255 );
setEffAlphaKey( spep_4 + 80, discharge, 255 );

--SE
playSe( spep_4 + 22, 1030 );--バズーカ発射
setSeVolume( spep_4 + 22, 1030, 112 );
playSe( spep_4 + 22, 20 );--バズーカ発射
setSeVolume( spep_4 + 22, 20, 89 );
se_1177 = playSe( spep_4 + 22, 1177 );--バズーカ発射
setSeVolume( spep_4 + 22, 1177, 0 );
setSeVolume( spep_4 + 52, 1177, 0 );
setSeVolume( spep_4 + 53, 1177, 4.94 );
setSeVolume( spep_4 + 54, 1177, 9.88 );
setSeVolume( spep_4 + 55, 1177, 14.81 );
setSeVolume( spep_4 + 56, 1177, 19.75 );
setSeVolume( spep_4 + 57, 1177, 24.69 );
setSeVolume( spep_4 + 58, 1177, 29.63 );
setSeVolume( spep_4 + 59, 1177, 34.56 );
setSeVolume( spep_4 + 60, 1177, 39.50 );
setSeVolume( spep_4 + 61, 1177, 44.44 );
setSeVolume( spep_4 + 62, 1177, 49.38 );
setSeVolume( spep_4 + 63, 1177, 54.31 );
setSeVolume( spep_4 + 64, 1177, 59.25 );
setSeVolume( spep_4 + 65, 1177, 64.19 );
setSeVolume( spep_4 + 66, 1177, 69.13 );
setSeVolume( spep_4 + 67, 1177, 74.06 );
setSeVolume( spep_4 + 68, 1177, 79 );
se_1118 = playSe( spep_4 + 72, 1118 );--バズーカ発射
setSeVolume( spep_4 + 72, 1118, 32 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;
------------------------------------------------------
-- 弾丸が敵に迫り爆発する
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 150, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 150, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 150, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 150, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 150, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 150, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 150, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 150, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 346.2, -60.9 , 0 );
setMoveKey( spep_5 + 2, 1, 343.8, -62.8 , 0 );
setMoveKey( spep_5 + 4, 1, 340.8, -64.6 , 0 );
setMoveKey( spep_5 + 6, 1, 342, -61.1 , 0 );
setMoveKey( spep_5 + 8, 1, 342.4, -57.6 , 0 );
setMoveKey( spep_5 + 10, 1, 341.7, -60 , 0 );
setMoveKey( spep_5 + 12, 1, 340.1, -62.3 , 0 );
setMoveKey( spep_5 + 14, 1, 332.5, -59.3 , 0 );
setMoveKey( spep_5 + 16, 1, 323.9, -56.1 , 0 );
setMoveKey( spep_5 + 18, 1, 318.5, -56.8 , 0 );
setMoveKey( spep_5 + 20, 1, 312, -57.4 , 0 );
setMoveKey( spep_5 + 22, 1, 304.2, -53.6 , 0 );
setMoveKey( spep_5 + 24, 1, 295.2, -49.7 , 0 );
setMoveKey( spep_5 + 26, 1, 281.7, -48.7 , 0 );
setMoveKey( spep_5 + 28, 1, 266.9, -47.5 , 0 );
setMoveKey( spep_5 + 30, 1, 249.8, -43 , 0 );
setMoveKey( spep_5 + 32, 1, 231.2, -38.2 , 0 );
setMoveKey( spep_5 + 34, 1, 215.4, -33.6 , 0 );
setMoveKey( spep_5 + 36, 1, 197.7, -28.7 , 0 );
setMoveKey( spep_5 + 38, 1, 176.7, -25.5 , 0 );
setMoveKey( spep_5 + 40, 1, 153.5, -21.9 , 0 );
setMoveKey( spep_5 + 42, 1, 125.8, -22.6 , 0 );
setMoveKey( spep_5 + 44, 1, 97.3, -15.7 , 0 );
setMoveKey( spep_5 + 46, 1, 60.6, -9.1 , 0 );
setMoveKey( spep_5 + 48, 1, 23.2, -5.5 , 0 );

setScaleKey( spep_5 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 2, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 8, 1, 0.44, 0.44 );
setScaleKey( spep_5 + 10, 1, 0.45, 0.45 );
setScaleKey( spep_5 + 12, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 14, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 16, 1, 0.52, 0.52 );
setScaleKey( spep_5 + 18, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 22, 1, 0.63, 0.63 );
setScaleKey( spep_5 + 24, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 28, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 30, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 34, 1, 1, 1 );
setScaleKey( spep_5 + 36, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 38, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 40, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 42, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_5 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_5 + 48, 1, 1.83, 1.83 );

setRotateKey( spep_5 + 0, 1, -18 );
setRotateKey( spep_5 + 4, 1, -18 );
setRotateKey( spep_5 + 6, 1, -17.9 );
setRotateKey( spep_5 + 8, 1, -17.8 );
setRotateKey( spep_5 + 10, 1, -17.7 );
setRotateKey( spep_5 + 12, 1, -17.5 );
setRotateKey( spep_5 + 14, 1, -17.4 );
setRotateKey( spep_5 + 16, 1, -17.2 );
setRotateKey( spep_5 + 18, 1, -16.9 );
setRotateKey( spep_5 + 20, 1, -16.6 );
setRotateKey( spep_5 + 22, 1, -16.3 );
setRotateKey( spep_5 + 24, 1, -15.9 );
setRotateKey( spep_5 + 26, 1, -15.5 );
setRotateKey( spep_5 + 28, 1, -15.1 );
setRotateKey( spep_5 + 30, 1, -14.6 );
setRotateKey( spep_5 + 32, 1, -14.1 );
setRotateKey( spep_5 + 34, 1, -13.5 );
setRotateKey( spep_5 + 36, 1, -12.8 );
setRotateKey( spep_5 + 38, 1, -12 );
setRotateKey( spep_5 + 40, 1, -11.2 );
setRotateKey( spep_5 + 42, 1, -10.3 );
setRotateKey( spep_5 + 44, 1, -9.3 );
setRotateKey( spep_5 + 46, 1, -8.2 );
setRotateKey( spep_5 + 48, 1, -7 );

--SE
playSe( spep_5 + 48, 1023 );--爆発
playSe( spep_5 + 48, 1024 );--爆発
setSeVolume( spep_5 + 48, 1024, 79 );

stopSe( spep_5 + 53, se_1177, 0 );
stopSe( spep_5 + 53, se_1118, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +50 );
endPhase( spep_5 + 140 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 敵に接近する
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
access = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, access, 0, 0, 0 );
setEffMoveKey( spep_0 + 32, access, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, access, -1.0, 1.0 );
setEffScaleKey( spep_0 + 32, access, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, access, 0 );
setEffRotateKey( spep_0 + 32, access, 0 );
setEffAlphaKey( spep_0 + 0, access, 255 );
setEffAlphaKey( spep_0 + 32, access, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 34, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 26; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

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
se_0044 = playSe( spep_0 + 12, 44 );--ダッシュ

--白フェード
entryFade( spep_0+28 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1=spep_0+32;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
struggle_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, struggle_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 176, struggle_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, struggle_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 176, struggle_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, struggle_f, 0 );
setEffRotateKey( spep_1 + 176, struggle_f, 0 );
setEffAlphaKey( spep_1 + 0, struggle_f, 255 );
setEffAlphaKey( spep_1 + 176, struggle_f, 255 );
setEffAlphaKey( spep_1 + 177, struggle_f, 0 );
setEffAlphaKey( spep_1 + 178, struggle_f, 0 );

-- ** エフェクト等 ** --
struggle_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, struggle_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 176, struggle_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, struggle_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, struggle_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, struggle_b, 0 );
setEffRotateKey( spep_1 + 176, struggle_b, 0 );
setEffAlphaKey( spep_1 + 0, struggle_b, 255 );
setEffAlphaKey( spep_1 + 176, struggle_b, 255 );
setEffAlphaKey( spep_1 + 177, struggle_b, 0 );
setEffAlphaKey( spep_1 + 178, struggle_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 50, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 20, 1, 104 );
changeAnime( spep_1-3 + 40, 1, 106 );

setMoveKey( spep_1 + 0, 1, 61.4, -60 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 61.3, -60 , 0 );
setMoveKey( spep_1-3 + 19, 1, 61.3, -60 , 0 );
setMoveKey( spep_1-3 + 20, 1, 82.2, -43.5 , 0 );
setMoveKey( spep_1-3 + 39, 1, 82.2, -43.5 , 0 );
setMoveKey( spep_1-3 + 40, 1, 114.7, 29.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 225.1, 61.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 296.9, 97.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, 346.5, 148.9 , 0 );
setMoveKey( spep_1-3 + 48, 1, 417.4, 163.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 483.9, 187.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 546.5, 205 , 0 );
setMoveKey( spep_1-3 + 54, 1, 605.2, 225.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 39, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 42, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 44, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 54, 1, 1.5, 1.5 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 39, 1, 0 );
setRotateKey( spep_1-3 + 40, 1, -35.8 );
setRotateKey( spep_1-3 + 42, 1, -35.6 );
setRotateKey( spep_1-3 + 44, 1, -35.2 );
setRotateKey( spep_1-3 + 46, 1, -34.9 );
setRotateKey( spep_1-3 + 48, 1, -34.6 );
setRotateKey( spep_1-3 + 50, 1, -34.3 );
setRotateKey( spep_1-3 + 52, 1, -34 );
setRotateKey( spep_1-3 + 54, 1, -33.7 );

--敵の動き
setDisp( spep_1 + 100, 1, 1 );
setDisp( spep_1 + 136, 1, 0 );

changeAnime( spep_1-3 + 128, 1, 108 );

setMoveKey( spep_1 + 100, 1, 503.9, 249.9 , 0 );
setMoveKey( spep_1-3 + 104, 1, 344.4, 238.5 , 0 );
setMoveKey( spep_1-3 + 106, 1, 183.8, 226.4 , 0 );
setMoveKey( spep_1-3 + 108, 1, 21.9, 213.5 , 0 );
setMoveKey( spep_1-3 + 110, 1, 31.6, 200.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 40.5, 186.4 , 0 );
setMoveKey( spep_1-3 + 114, 1, 48.7, 172.2 , 0 );
setMoveKey( spep_1-3 + 116, 1, 56.4, 157.9 , 0 );
setMoveKey( spep_1-3 + 118, 1, 63.7, 143.4 , 0 );
setMoveKey( spep_1-3 + 120, 1, 70.7, 128.9 , 0 );
setMoveKey( spep_1-3 + 122, 1, 77.6, 114.4 , 0 );
setMoveKey( spep_1-3 + 124, 1, 84.4, 100 , 0 );
setMoveKey( spep_1-3 + 127, 1, 91.1, 85.7 , 0 );
setMoveKey( spep_1-3 + 128, 1, 198.5, 46.1 , 0 );
setMoveKey( spep_1-3 + 130, 1, 240.7, 28.9 , 0 );
setMoveKey( spep_1-3 + 132, 1, 366.3, 36 , 0 );
setMoveKey( spep_1-3 + 134, 1, 424.2, 8.8 , 0 );
setMoveKey( spep_1-3 + 136, 1, 548.7, 21.9 , 0 );
setMoveKey( spep_1-3 + 138, 1, 646.8, 17.4 , 0 );
setMoveKey( spep_1-3 + 140, 1, 747.5, 23.2 , 0 );

setScaleKey( spep_1 + 100, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 128, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 130, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 132, 1, 1.78, 1.78 );
setScaleKey( spep_1-3 + 134, 1, 1.87, 1.87 );
setScaleKey( spep_1-3 + 140, 1, 1.87, 1.87 );

setRotateKey( spep_1 + 100, 1, -26.5 );
setRotateKey( spep_1-3 + 104, 1, -26.2 );
setRotateKey( spep_1-3 + 106, 1, -25.9 );
setRotateKey( spep_1-3 + 108, 1, -25.6 );
setRotateKey( spep_1-3 + 110, 1, -25.3 );
setRotateKey( spep_1-3 + 112, 1, -25 );
setRotateKey( spep_1-3 + 114, 1, -24.7 );
setRotateKey( spep_1-3 + 116, 1, -24.4 );
setRotateKey( spep_1-3 + 118, 1, -24.2 );
setRotateKey( spep_1-3 + 120, 1, -23.9 );
setRotateKey( spep_1-3 + 122, 1, -23.6 );
setRotateKey( spep_1-3 + 124, 1, -23.3 );
setRotateKey( spep_1-3 + 127, 1, -23 );
setRotateKey( spep_1-3 + 128, 1, -5.8 );
setRotateKey( spep_1-3 + 130, 1, -6 );
setRotateKey( spep_1-3 + 140, 1, -6 );

--SE
playSe( spep_1 + 30, 1189 );--アッパー
playSe( spep_1 + 36, 1000 );--アッパー
playSe( spep_1 + 36, 1009 );--アッパー
setSeVolume( spep_1 + 36, 1009, 77 );
se_1116 = playSe( spep_1 + 82, 1116 );--ジャンプ
setSeVolume( spep_1 + 82, 1116, 71 );
se_1117 = playSe( spep_1 + 84, 1117 );--ジャンプ
playSe( spep_1 + 120, 1003 );--ドロップキック
playSe( spep_1 + 130, 1013 );--ドロップキック
playSe( spep_1 + 132, 1110 );--ドロップキック

stopSe( spep_1 + 6, se_0044, 23 );
stopSe( spep_1 + 104, se_1116, 17 );
stopSe( spep_1 + 112, se_1117, 19 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2=spep_1+176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--白フェード
--entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- PAN/UPしながらランチ引き絵
------------------------------------------------------
-- ** エフェクト等 ** --
standing = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, standing, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, standing, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, standing, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, standing, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, standing, 0 );
setEffRotateKey( spep_3 + 100, standing, 0 );
setEffAlphaKey( spep_3 + 0, standing, 255 );
setEffAlphaKey( spep_3 + 100, standing, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_3 + 12, 1018 );--セリフカットイン

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 100;
------------------------------------------------------
-- バズーカ発射
------------------------------------------------------

-- ** エフェクト等 ** --
discharge = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, discharge, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, discharge, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, discharge, -1.0, 1.0 );
setEffScaleKey( spep_4 + 80, discharge, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, discharge, 0 );
setEffRotateKey( spep_4 + 80, discharge, 0 );
setEffAlphaKey( spep_4 + 0, discharge, 255 );
setEffAlphaKey( spep_4 + 80, discharge, 255 );

--SE
playSe( spep_4 + 22, 1030 );--バズーカ発射
setSeVolume( spep_4 + 22, 1030, 112 );
playSe( spep_4 + 22, 20 );--バズーカ発射
setSeVolume( spep_4 + 22, 20, 89 );
se_1177 = playSe( spep_4 + 22, 1177 );--バズーカ発射
setSeVolume( spep_4 + 22, 1177, 0 );
setSeVolume( spep_4 + 52, 1177, 0 );
setSeVolume( spep_4 + 53, 1177, 4.94 );
setSeVolume( spep_4 + 54, 1177, 9.88 );
setSeVolume( spep_4 + 55, 1177, 14.81 );
setSeVolume( spep_4 + 56, 1177, 19.75 );
setSeVolume( spep_4 + 57, 1177, 24.69 );
setSeVolume( spep_4 + 58, 1177, 29.63 );
setSeVolume( spep_4 + 59, 1177, 34.56 );
setSeVolume( spep_4 + 60, 1177, 39.50 );
setSeVolume( spep_4 + 61, 1177, 44.44 );
setSeVolume( spep_4 + 62, 1177, 49.38 );
setSeVolume( spep_4 + 63, 1177, 54.31 );
setSeVolume( spep_4 + 64, 1177, 59.25 );
setSeVolume( spep_4 + 65, 1177, 64.19 );
setSeVolume( spep_4 + 66, 1177, 69.13 );
setSeVolume( spep_4 + 67, 1177, 74.06 );
setSeVolume( spep_4 + 68, 1177, 79 );
se_1118 = playSe( spep_4 + 72, 1118 );--バズーカ発射
setSeVolume( spep_4 + 72, 1118, 32 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;
------------------------------------------------------
-- 弾丸が敵に迫り爆発する
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 150, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 150, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 150, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 150, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 150, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 150, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 150, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 150, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 346.2, -60.9 , 0 );
setMoveKey( spep_5 + 2, 1, 343.8, -62.8 , 0 );
setMoveKey( spep_5 + 4, 1, 340.8, -64.6 , 0 );
setMoveKey( spep_5 + 6, 1, 342, -61.1 , 0 );
setMoveKey( spep_5 + 8, 1, 342.4, -57.6 , 0 );
setMoveKey( spep_5 + 10, 1, 341.7, -60 , 0 );
setMoveKey( spep_5 + 12, 1, 340.1, -62.3 , 0 );
setMoveKey( spep_5 + 14, 1, 332.5, -59.3 , 0 );
setMoveKey( spep_5 + 16, 1, 323.9, -56.1 , 0 );
setMoveKey( spep_5 + 18, 1, 318.5, -56.8 , 0 );
setMoveKey( spep_5 + 20, 1, 312, -57.4 , 0 );
setMoveKey( spep_5 + 22, 1, 304.2, -53.6 , 0 );
setMoveKey( spep_5 + 24, 1, 295.2, -49.7 , 0 );
setMoveKey( spep_5 + 26, 1, 281.7, -48.7 , 0 );
setMoveKey( spep_5 + 28, 1, 266.9, -47.5 , 0 );
setMoveKey( spep_5 + 30, 1, 249.8, -43 , 0 );
setMoveKey( spep_5 + 32, 1, 231.2, -38.2 , 0 );
setMoveKey( spep_5 + 34, 1, 215.4, -33.6 , 0 );
setMoveKey( spep_5 + 36, 1, 197.7, -28.7 , 0 );
setMoveKey( spep_5 + 38, 1, 176.7, -25.5 , 0 );
setMoveKey( spep_5 + 40, 1, 153.5, -21.9 , 0 );
setMoveKey( spep_5 + 42, 1, 125.8, -22.6 , 0 );
setMoveKey( spep_5 + 44, 1, 97.3, -15.7 , 0 );
setMoveKey( spep_5 + 46, 1, 60.6, -9.1 , 0 );
setMoveKey( spep_5 + 48, 1, 23.2, -5.5 , 0 );

setScaleKey( spep_5 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 2, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 8, 1, 0.44, 0.44 );
setScaleKey( spep_5 + 10, 1, 0.45, 0.45 );
setScaleKey( spep_5 + 12, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 14, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 16, 1, 0.52, 0.52 );
setScaleKey( spep_5 + 18, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 22, 1, 0.63, 0.63 );
setScaleKey( spep_5 + 24, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 28, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 30, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 34, 1, 1, 1 );
setScaleKey( spep_5 + 36, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 38, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 40, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 42, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_5 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_5 + 48, 1, 1.83, 1.83 );

setRotateKey( spep_5 + 0, 1, -18 );
setRotateKey( spep_5 + 4, 1, -18 );
setRotateKey( spep_5 + 6, 1, -17.9 );
setRotateKey( spep_5 + 8, 1, -17.8 );
setRotateKey( spep_5 + 10, 1, -17.7 );
setRotateKey( spep_5 + 12, 1, -17.5 );
setRotateKey( spep_5 + 14, 1, -17.4 );
setRotateKey( spep_5 + 16, 1, -17.2 );
setRotateKey( spep_5 + 18, 1, -16.9 );
setRotateKey( spep_5 + 20, 1, -16.6 );
setRotateKey( spep_5 + 22, 1, -16.3 );
setRotateKey( spep_5 + 24, 1, -15.9 );
setRotateKey( spep_5 + 26, 1, -15.5 );
setRotateKey( spep_5 + 28, 1, -15.1 );
setRotateKey( spep_5 + 30, 1, -14.6 );
setRotateKey( spep_5 + 32, 1, -14.1 );
setRotateKey( spep_5 + 34, 1, -13.5 );
setRotateKey( spep_5 + 36, 1, -12.8 );
setRotateKey( spep_5 + 38, 1, -12 );
setRotateKey( spep_5 + 40, 1, -11.2 );
setRotateKey( spep_5 + 42, 1, -10.3 );
setRotateKey( spep_5 + 44, 1, -9.3 );
setRotateKey( spep_5 + 46, 1, -8.2 );
setRotateKey( spep_5 + 48, 1, -7 );

--SE
playSe( spep_5 + 48, 1023 );--爆発
playSe( spep_5 + 48, 1024 );--爆発
setSeVolume( spep_5 + 48, 1024, 79 );

stopSe( spep_5 + 53, se_1177, 0 );
stopSe( spep_5 + 53, se_1118, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +50 );
endPhase( spep_5 + 140 );
end
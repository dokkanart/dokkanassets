--1018880:ゴクウブラック(超サイヤ人ロゼ)_神縛ブラックかめはめ波
--sp_effect_a1_00224

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
SP_01=	154923	;--	かめはめ波　溜める
SP_02=	154924	;--	ザマス出現
SP_03=	154925	;--	ザマス出現
SP_04=	154927	;--	ザマス出現
SP_05=	154929	;--	かめはめ波　発射
SP_06=	154930	;--	かめはめ波　敵に迫る
SP_07=	154931	;--	かめはめ波　敵に迫る
SP_08=	154933	;--	かめはめ波　敵に迫る
SP_09=	154935	;--	爆発
SP_10=  154941  ;--ザマス出現
SP_11=  154942  ;--かめはめ波　敵に迫る

--敵側
SP_01x=	154923	;--	かめはめ波　溜める	
SP_02x=	154924	;--	ザマス出現
SP_03x=	154925	;--	ザマス出現
SP_04x=	154927	;--	ザマス出現
SP_05x=	154929	;--	かめはめ波　発射	
SP_06x=	154930	;--	かめはめ波　敵に迫る	
SP_07x=	154932	;--	かめはめ波　敵に迫る	(敵)
SP_08x=	154934	;--	かめはめ波　敵に迫る	(敵)
SP_09x=	154935	;--	爆発	
SP_10x=  154941  ;--ザマス出現
SP_11x=  154942  ;--かめはめ波　敵に迫る

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
-- かめはめ波　溜める
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 116, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 116, tame, 255 );
setEffAlphaKey( spep_0 + 117, tame, 0 );
setEffAlphaKey( spep_0 + 118, tame, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 63 );
se_1172 = playSe( spep_0 + 7, 1172 );
setSeVolume( spep_0 + 7, 1172, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1172, 0 );

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_0 + 16, 1018 );


setSeVolume( spep_0 + 20, 1172, 7.9 );
setSeVolume( spep_0 + 21, 1172, 15.8 );
setSeVolume( spep_0 + 22, 1172, 23.7 );
setSeVolume( spep_0 + 23, 1172, 31.6 );
setSeVolume( spep_0 + 24, 1172, 39.5 );
setSeVolume( spep_0 + 25, 1172, 47.4 );
setSeVolume( spep_0 + 26, 1172, 55.3 );
setSeVolume( spep_0 + 27, 1172, 63.2 );
setSeVolume( spep_0 + 28, 1172, 71 );
playSe( spep_0 + 13, 1043 );
setSeVolume( spep_0 + 13, 1043, 89 );
playSe( spep_0 + 18, 1199 );
setSeVolume( spep_0 + 18, 1199, 71 );
se_1210 = playSe( spep_0 + 26, 1210 );
setSeVolume( spep_0 + 26, 1210, 50 );
se_1158 = playSe( spep_0 + 26, 1158 );
setSeVolume( spep_0 + 26, 1158, 40 );
se_1181 = playSe( spep_0 + 26, 1181 );
setSeVolume( spep_0 + 26, 1181, 0 );
setSeVolume( spep_0 + 27, 1181, 3.1 );
setSeVolume( spep_0 + 28, 1181, 6.2 );
setSeVolume( spep_0 + 29, 1181, 9.29 );
setSeVolume( spep_0 + 30, 1181, 12.39 );
setSeVolume( spep_0 + 31, 1181, 15.49 );
setSeVolume( spep_0 + 32, 1181, 18.59 );
setSeVolume( spep_0 + 33, 1181, 21.69 );
setSeVolume( spep_0 + 34, 1181, 24.78 );
setSeVolume( spep_0 + 35, 1181, 27.88 );
setSeVolume( spep_0 + 36, 1181, 30.98 );
setSeVolume( spep_0 + 37, 1181, 34.08 );
setSeVolume( spep_0 + 38, 1181, 37.18 );
setSeVolume( spep_0 + 39, 1181, 40.27 );
setSeVolume( spep_0 + 40, 1181, 43.37 );
setSeVolume( spep_0 + 41, 1181, 46.47 );
setSeVolume( spep_0 + 42, 1181, 49.57 );
setSeVolume( spep_0 + 43, 1181, 52.67 );
setSeVolume( spep_0 + 44, 1181, 55.76 );
setSeVolume( spep_0 + 45, 1181, 58.86 );
setSeVolume( spep_0 + 46, 1181, 61.96 );
setSeVolume( spep_0 + 47, 1181, 65.06 );
setSeVolume( spep_0 + 48, 1181, 68.16 );
setSeVolume( spep_0 + 49, 1181, 71.25 );
setSeVolume( spep_0 + 50, 1181, 74.35 );
setSeVolume( spep_0 + 51, 1181, 77.45 );
setSeVolume( spep_0 + 52, 1181, 80.55 );
setSeVolume( spep_0 + 53, 1181, 83.65 );
setSeVolume( spep_0 + 54, 1181, 86.75 );
setSeVolume( spep_0 + 55, 1181, 89.84 );
setSeVolume( spep_0 + 56, 1181, 92.94 );
setSeVolume( spep_0 + 57, 1181, 96.04 );
setSeVolume( spep_0 + 58, 1181, 99.14 );
setSeVolume( spep_0 + 59, 1181, 102.24 );
setSeVolume( spep_0 + 60, 1181, 105.33 );
setSeVolume( spep_0 + 61, 1181, 108.43 );
setSeVolume( spep_0 + 62, 1181, 111.53 );
setSeVolume( spep_0 + 63, 1181, 114.63 );
setSeVolume( spep_0 + 64, 1181, 117.73 );
setSeVolume( spep_0 + 65, 1181, 120.82 );
setSeVolume( spep_0 + 66, 1181, 123.92 );
setSeVolume( spep_0 + 67, 1181, 127.02 );
setSeVolume( spep_0 + 68, 1181, 130.12 );
setSeVolume( spep_0 + 69, 1181, 133.22 );
setSeVolume( spep_0 + 70, 1181, 136.31 );
setSeVolume( spep_0 + 71, 1181, 139.41 );
setSeVolume( spep_0 + 72, 1181, 142.51 );
setSeVolume( spep_0 + 73, 1181, 145.61 );
setSeVolume( spep_0 + 74, 1181, 148.71 );
setSeVolume( spep_0 + 75, 1181, 151.8 );
setSeVolume( spep_0 + 76, 1181, 154.9 );
setSeVolume( spep_0 + 77, 1181, 158 );
setSeVolume( spep_0 + 78, 1181, 161.1 );
setSeVolume( spep_0 + 79, 1181, 164.2 );
setSeVolume( spep_0 + 80, 1181, 167.29 );
setSeVolume( spep_0 + 81, 1181, 170.39 );
setSeVolume( spep_0 + 82, 1181, 173.49 );
setSeVolume( spep_0 + 83, 1181, 176.59 );
setSeVolume( spep_0 + 84, 1181, 179.69 );
setSeVolume( spep_0 + 85, 1181, 182.78 );
setSeVolume( spep_0 + 86, 1181, 185.88 );
setSeVolume( spep_0 + 87, 1181, 188.98 );
setSeVolume( spep_0 + 88, 1181, 192.08 );
setSeVolume( spep_0 + 89, 1181, 195.18 );
setSeVolume( spep_0 + 90, 1181, 198.27 );
setSeVolume( spep_0 + 91, 1181, 201.37 );
setSeVolume( spep_0 + 92, 1181, 204.47 );
setSeVolume( spep_0 + 93, 1181, 207.57 );
setSeVolume( spep_0 + 94, 1181, 210.67 );
setSeVolume( spep_0 + 95, 1181, 213.76 );
setSeVolume( spep_0 + 96, 1181, 216.86 );
setSeVolume( spep_0 + 97, 1181, 219.96 );
setSeVolume( spep_0 + 98, 1181, 223.06 );
setSeVolume( spep_0 + 99, 1181, 226.16 );
setSeVolume( spep_0 + 100, 1181, 229.25 );
setSeVolume( spep_0 + 101, 1181, 232.35 );
setSeVolume( spep_0 + 102, 1181, 235.45 );
setSeVolume( spep_0 + 103, 1181, 238.55 );
setSeVolume( spep_0 + 104, 1181, 241.65 );
setSeVolume( spep_0 + 105, 1181, 244.75 );
setSeVolume( spep_0 + 106, 1181, 247.84 );
setSeVolume( spep_0 + 107, 1181, 250.94 );
setSeVolume( spep_0 + 108, 1181, 254.04 );
setSeVolume( spep_0 + 109, 1181, 257.14 );
setSeVolume( spep_0 + 110, 1181, 260.24 );
setSeVolume( spep_0 + 111, 1181, 263.33 );
setSeVolume( spep_0 + 112, 1181, 266.43 );
setSeVolume( spep_0 + 113, 1181, 269.53 );
setSeVolume( spep_0 + 114, 1181, 272.63 );
setSeVolume( spep_0 + 115, 1181, 275.73 );
setSeVolume( spep_0 + 116, 1181, 278.82 );
setSeVolume( spep_0 + 117, 1181, 281.92 );
setSeVolume( spep_0 + 118, 1181, 285.02 );
setSeVolume( spep_0 + 119, 1181, 288.12 );
setSeVolume( spep_0 + 120, 1181, 291.22 );
setSeVolume( spep_0 + 121, 1181, 294.31 );
setSeVolume( spep_0 + 122, 1181, 297.41 );
setSeVolume( spep_0 + 123, 1181, 300.51 );
setSeVolume( spep_0 + 124, 1181, 303.61 );
setSeVolume( spep_0 + 125, 1181, 306.71 );
setSeVolume( spep_0 + 126, 1181, 309.8 );
setSeVolume( spep_0 + 127, 1181, 312.9 );
setSeVolume( spep_0 + 128, 1181, 316 );
playSe( spep_0 + 43, 1062 );
setSeVolume( spep_0 + 43, 1062, 0 );
setSeVolume( spep_0 + 52, 1062, 0 );
setSeVolume( spep_0 + 53, 1062, 4.45 );
setSeVolume( spep_0 + 54, 1062, 8.9 );
setSeVolume( spep_0 + 55, 1062, 13.35 );
setSeVolume( spep_0 + 56, 1062, 17.8 );
setSeVolume( spep_0 + 57, 1062, 22.25 );
setSeVolume( spep_0 + 58, 1062, 26.7 );
setSeVolume( spep_0 + 59, 1062, 31.15 );
setSeVolume( spep_0 + 60, 1062, 35.6 );
setSeVolume( spep_0 + 61, 1062, 40.05 );
setSeVolume( spep_0 + 62, 1062, 44.5 );
setSeVolume( spep_0 + 63, 1062, 48.95 );
setSeVolume( spep_0 + 64, 1062, 53.4 );
setSeVolume( spep_0 + 65, 1062, 57.85 );
setSeVolume( spep_0 + 66, 1062, 62.3 );
setSeVolume( spep_0 + 67, 1062, 66.75 );
setSeVolume( spep_0 + 68, 1062, 71.2 );
setSeVolume( spep_0 + 69, 1062, 75.65 );
setSeVolume( spep_0 + 70, 1062, 80.1 );
setSeVolume( spep_0 + 71, 1062, 84.55 );
setSeVolume( spep_0 + 72, 1062, 89 );
se_1199 = playSe( spep_0 + 86, 1199 );

stopSe( spep_0 + 52, se_1172, 50 );


--次の準備
spep_1 = spep_0+116;

------------------------------------------------------
-- ザマス出現
------------------------------------------------------
-- ** エフェクト等 ** --
touzyou_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, touzyou_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, touzyou_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, touzyou_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, touzyou_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, touzyou_f, 0 );
setEffRotateKey( spep_1 + 160, touzyou_f, 0 );
setEffAlphaKey( spep_1 + 0, touzyou_f, 255 );
setEffAlphaKey( spep_1 + 160, touzyou_f, 255 );

-- ** エフェクト等 ** --
touzyou_n = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, touzyou_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, touzyou_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, touzyou_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, touzyou_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, touzyou_n, 0 );
setEffRotateKey( spep_1 + 160, touzyou_n, 0 );
setEffAlphaKey( spep_1 + 0, touzyou_n, 255 );
setEffAlphaKey( spep_1 + 160, touzyou_n, 255 );

-- ** エフェクト等 ** --
touzyou_bg = entryEffect( spep_1 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, touzyou_bg, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, touzyou_bg, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, touzyou_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, touzyou_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, touzyou_bg, 0 );
setEffRotateKey( spep_1 + 160, touzyou_bg, 0 );
setEffAlphaKey( spep_1 + 0, touzyou_bg, 255 );
setEffAlphaKey( spep_1 + 160, touzyou_bg, 255 );

-- ** エフェクト等 ** --
touzyou_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, -40, 0 ); 
setEffMoveKey( spep_1 + 0, touzyou_b, -40, 0, 0 );
setEffMoveKey( spep_1 + 160, touzyou_b, -40, 0, 0 );
setEffScaleKey( spep_1 + 0, touzyou_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, touzyou_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, touzyou_b, 0 );
setEffRotateKey( spep_1 + 160, touzyou_b, 0 );
setEffAlphaKey( spep_1 + 0, touzyou_b, 255 );
setEffAlphaKey( spep_1 + 160, touzyou_b, 255 );

--文字エントリー
ctga = entryEffectLife( spep_1 -3 + 78,  10005, 20, 0x100, -1, 0, -135.4, 247.2 );--ガッ
setEffShake( spep_1 -3 + 78, ctga, 20, 10 );
setEffMoveKey( spep_1 -3 + 78, ctga, -135.4, 247.2 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctga, -135.4, 250.6 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctga, -131.3, 245.6 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctga, -140.5, 250.2 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctga, -136.5, 248.2 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctga, -132.4, 246.3 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctga, -136, 248.7 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctga, -139.4, 251.1 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctga, -137, 248.3 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctga, -134.6, 245.4 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctga, -134.6, 245.4 , 0 );

setEffScaleKey( spep_1 -3 + 78, ctga, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 98, ctga, 1.7, 1.7 );

a=10;

setEffRotateKey( spep_1 -3 + 78, ctga, -27+a );
setEffRotateKey( spep_1 -3 + 80, ctga, -25.4+a );
setEffRotateKey( spep_1 -3 + 82, ctga, -23.9+a );
setEffRotateKey( spep_1 -3 + 84, ctga, -25.4+a );
setEffRotateKey( spep_1 -3 + 86, ctga, -27+a );
setEffRotateKey( spep_1 -3 + 88, ctga, -25.9+a );
setEffRotateKey( spep_1 -3 + 90, ctga, -24.8+a );
setEffRotateKey( spep_1 -3 + 92, ctga, -25.9+a );
setEffRotateKey( spep_1 -3 + 94, ctga, -27+a );
setEffRotateKey( spep_1 -3 + 98, ctga, -27+a );

setEffAlphaKey( spep_1 -3 + 78, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 92, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 94, ctga, 170 );
setEffAlphaKey( spep_1 -3 + 96, ctga, 86 );
setEffAlphaKey( spep_1 -3 + 98, ctga, 1 );

--てき
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 160, 1, 0 );

changeAnime( spep_1 -3 + 0, 1, 104 );
changeAnime( spep_1 -3 + 76, 1, 106 );

b=30;

setMoveKey( spep_1  + 0, 1, 194.5, 318.9 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 194.4, 318.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 194.3, 318.1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 194.1, 317.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 193.7, 316.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 193.5, 315.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 193.1, 314.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 192.7, 313.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 192.2, 311.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 191.7, 310.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 189.2, 304.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 186, 296.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 181.9, 286.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 177, 274.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 171.1, 260 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 164.2, 243.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 156.2, 223.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 146.8, 201.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 136.1, 175 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 123.7, 145 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 109.4, 110.5 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 93, 70.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 74.1, 24.6 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 52, -28.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 25.8, -90.4 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 25.8, -90.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -49.6+b, -47.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -49.6+b, -47.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -52.5+b, -50.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -48.6+b, -46.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -46.2+b, -50.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -49.6+b, -47.9 , 0 );
setMoveKey( spep_1  + 160, 1, -49.6+b, -47.9 , 0 );

setScaleKey( spep_1  + 0, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 4, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 10, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 12, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 14, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 18, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 20, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 22, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 24, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 28, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 30, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 32, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 34, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 36, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 38, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 42, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 44, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 46, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 48, 1, 2.33, 2.33 );
setScaleKey( spep_1  + 160, 1, 2.33, 2.33 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 75, 1, 0 );
setRotateKey( spep_1 -3 + 76, 1, -59 );
setRotateKey( spep_1  + 160, 1, -59 );

--SE
playSe( spep_1 + 60, 43 );
setSeVolume( spep_1 + 60, 43, 79 );
playSe( spep_1 + 76, 1013 );
setSeVolume( spep_1 + 76, 1013, 126 );
stopSe( spep_1 + 1, se_1199, 69 );


--白フェード
entryFade( spep_1 + 152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2 = spep_1+160;

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

stopSe( spep_2 + 5, se_1210, 0 );
stopSe( spep_2 + 0, se_1158, 0 );
stopSe( spep_2 + 5, se_1181, 0 );

playSe( spep_2 + 85, 1062 );
setSeVolume( spep_2 + 85, 1062, 0 );
playSe( spep_2 + 88, 1154 );
setSeVolume( spep_2 + 88, 1154, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- かめはめ波　発射
------------------------------------------------------
-- ** エフェクト等 ** --
hasya = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hasya, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, hasya, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hasya, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, hasya, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hasya, 0 );
setEffRotateKey( spep_3 + 116, hasya, 0 );
setEffAlphaKey( spep_3 + 0, hasya, 255 );
setEffAlphaKey( spep_3 + 116, hasya, 255 );
setEffAlphaKey( spep_3 + 117, hasya, 0 );
setEffAlphaKey( spep_3 + 118, hasya, 0 );
--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 40,  10012, 68, 0x100, -1, 0, 140.9, 262.6 );--ズオッ
setEffShake( spep_3-3 + 40, ctzuo, 68, 10 );
setEffMoveKey( spep_3-3 + 40, ctzuo, 140.9, 262.6 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzuo, 161.7, 278.2 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, 164.2, 303.9 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzuo, 189.2, 315.6 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzuo, 187.5, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzuo, 202.7, 334.1 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzuo, 187.5, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzuo, 202.8, 334.1 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzuo, 187.5, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzuo, 202.8, 334.1 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzuo, 187.4, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzuo, 202.8, 334 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzuo, 187.4, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzuo, 202.9, 334 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzuo, 187.4, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzuo, 202.9, 333.9 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzuo, 187.3, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzuo, 202.9, 333.9 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzuo, 187.3, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzuo, 203, 333.9 , 0 );
setEffMoveKey( spep_3-3 + 80, ctzuo, 187.3, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 82, ctzuo, 203, 333.8 , 0 );
setEffMoveKey( spep_3-3 + 84, ctzuo, 187.2, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 86, ctzuo, 203, 333.8 , 0 );
setEffMoveKey( spep_3-3 + 88, ctzuo, 187.2, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 90, ctzuo, 203.1, 333.7 , 0 );
setEffMoveKey( spep_3-3 + 92, ctzuo, 187.2, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 94, ctzuo, 203.1, 333.7 , 0 );
setEffMoveKey( spep_3-3 + 96, ctzuo, 187.2, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 98, ctzuo, 203.1, 333.6 , 0 );
setEffMoveKey( spep_3-3 + 100, ctzuo, 201, 352.2 , 0 );
setEffMoveKey( spep_3-3 + 102, ctzuo, 239.6, 340 , 0 );
setEffMoveKey( spep_3-3 + 104, ctzuo, 228.7, 365.1 , 0 );
setEffMoveKey( spep_3-3 + 106, ctzuo, 276, 346.4 , 0 );
setEffMoveKey( spep_3-3 + 108, ctzuo, 294.2, 349.5 , 0 );

setEffScaleKey( spep_3-3 + 40, ctzuo, 0.9, 0.9 );
setEffScaleKey( spep_3-3 + 42, ctzuo, 1.24, 1.24 );
setEffScaleKey( spep_3-3 + 44, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_3-3 + 46, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_3-3 + 48, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_3-3 + 50, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_3-3 + 52, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 54, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 56, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_3-3 + 58, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_3-3 + 60, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_3-3 + 62, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_3-3 + 64, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_3-3 + 66, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_3-3 + 68, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_3-3 + 70, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_3-3 + 72, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_3-3 + 74, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_3-3 + 76, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_3-3 + 80, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_3-3 + 82, ctzuo, 2.36, 2.36 );
setEffScaleKey( spep_3-3 + 84, ctzuo, 2.36, 2.36 );
setEffScaleKey( spep_3-3 + 86, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_3-3 + 88, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_3-3 + 90, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_3-3 + 92, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_3-3 + 94, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_3-3 + 96, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_3-3 + 98, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_3-3 + 100, ctzuo, 3.05, 3.05 );
setEffScaleKey( spep_3-3 + 102, ctzuo, 3.7, 3.7 );
setEffScaleKey( spep_3-3 + 104, ctzuo, 4.36, 4.36 );
setEffScaleKey( spep_3-3 + 106, ctzuo, 5.01, 5.01 );
setEffScaleKey( spep_3-3 + 108, ctzuo, 5.66, 5.66 );

setEffRotateKey( spep_3-3 + 40, ctzuo, 6 );
setEffRotateKey( spep_3-3 + 42, ctzuo, 9 );
setEffRotateKey( spep_3-3 + 44, ctzuo, 12 );
setEffRotateKey( spep_3-3 + 46, ctzuo, 15 );
setEffRotateKey( spep_3-3 + 48, ctzuo, 18 );
setEffRotateKey( spep_3-3 + 64, ctzuo, 18 );
setEffRotateKey( spep_3-3 + 66, ctzuo, 17.9 );
setEffRotateKey( spep_3-3 + 108, ctzuo, 17.9 );

setEffAlphaKey( spep_3-3 + 40, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 98, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 100, ctzuo, 204 );
setEffAlphaKey( spep_3-3 + 102, ctzuo, 153 );
setEffAlphaKey( spep_3-3 + 104, ctzuo, 102 );
setEffAlphaKey( spep_3-3 + 106, ctzuo, 51 );
setEffAlphaKey( spep_3-3 + 108, ctzuo, 0 );

--SE
se_1043 = playSe( spep_3 + 0, 1043 );
setSeVolume( spep_3 + 0, 1043, 71 );
se_0017 = playSe( spep_3 + 0, 17 );
setSeVolume( spep_3 + 0, 17, 71 );
playSe( spep_3 + 5, 49 );
setSeVolume( spep_3 + 5, 49, 112 );
se_1213 = playSe( spep_3 + 39, 1213 );
setSeVolume( spep_3 + 39, 1213, 79 );
se_1176 = playSe( spep_3 + 39, 1176 );
se_1212 = playSe( spep_3 + 66, 1212 );
setSeVolume( spep_3 + 66, 1212, 0 );
setSeVolume( spep_3 + 103, 1212, 0 );
setSeVolume( spep_3 + 104, 1212, 2.33 );
setSeVolume( spep_3 + 105, 1212, 4.67 );
setSeVolume( spep_3 + 106, 1212, 7 );
setSeVolume( spep_3 + 107, 1212, 9.33 );
setSeVolume( spep_3 + 108, 1212, 11.67 );
setSeVolume( spep_3 + 109, 1212, 14 );
setSeVolume( spep_3 + 110, 1212, 16.33 );
setSeVolume( spep_3 + 111, 1212, 18.67 );
setSeVolume( spep_3 + 112, 1212, 21 );
setSeVolume( spep_3 + 113, 1212, 23.33 );
setSeVolume( spep_3 + 114, 1212, 25.67 );
setSeVolume( spep_3 + 115, 1212, 28 );
setSeVolume( spep_3 + 116, 1212, 30.33 );
setSeVolume( spep_3 + 117, 1212, 32.67 );
setSeVolume( spep_3 + 118, 1212, 35 );
setSeVolume( spep_3 + 119, 1212, 37.33 );
setSeVolume( spep_3 + 120, 1212, 39.67 );
setSeVolume( spep_3 + 121, 1212, 42 );
setSeVolume( spep_3 + 122, 1212, 44.33 );
setSeVolume( spep_3 + 123, 1212, 46.67 );
setSeVolume( spep_3 + 124, 1212, 49 );
setSeVolume( spep_3 + 125, 1212, 51.33 );
setSeVolume( spep_3 + 126, 1212, 53.67 );
setSeVolume( spep_3 + 127, 1212, 56 );

stopSe( spep_3 + 45, se_1043, 0 );
stopSe( spep_3 + 42, se_0017, 0 );

setSeVolume( spep_3 + 0, 1062, 0 );
setSeVolume( spep_3 + 1, 1062, 5 );
setSeVolume( spep_3 + 2, 1062, 10 );
setSeVolume( spep_3 + 3, 1062, 15 );
setSeVolume( spep_3 + 4, 1062, 20 );
setSeVolume( spep_3 + 5, 1062, 25 );
setSeVolume( spep_3 + 6, 1062, 30 );
setSeVolume( spep_3 + 7, 1062, 35 );
setSeVolume( spep_3 + 8, 1062, 40 );
setSeVolume( spep_3 + 9, 1062, 45 );
setSeVolume( spep_3 + 10, 1062, 50 );
setSeVolume( spep_3 + 11, 1062, 55 );
setSeVolume( spep_3 + 12, 1062, 60 );
setSeVolume( spep_3 + 13, 1062, 65 );
setSeVolume( spep_3 + 14, 1062, 70 );
setSeVolume( spep_3 + 15, 1062, 75 );
setSeVolume( spep_3 + 16, 1062, 80 );
setSeVolume( spep_3 + 17, 1062, 85 );
setSeVolume( spep_3 + 18, 1062, 90 );
setSeVolume( spep_3 + 19, 1062, 95 );
setSeVolume( spep_3 + 20, 1062, 100 );

setSeVolume( spep_3 + 13, 1154, 39.5 );
setSeVolume( spep_3 + 14, 1154, 79 );

--白フェード
entryFade( spep_3 + 108, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 118, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4 = spep_3+116;
------------------------------------------------------
-- かめはめ波　敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 56, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 54, hit_f, 255 );
setEffAlphaKey( spep_4 + 55, hit_f, 0 );
setEffAlphaKey( spep_4 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_n = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_n, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_n, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_n, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_n, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_n, 0 );
setEffRotateKey( spep_4 + 56, hit_n, 0 );
setEffAlphaKey( spep_4 + 0, hit_n, 255 );
setEffAlphaKey( spep_4 + 54, hit_n, 255 );
setEffAlphaKey( spep_4 + 55, hit_n, 0 );
setEffAlphaKey( spep_4 + 56, hit_n, 0 );

-- ** エフェクト等 ** --
hit_bg = entryEffect( spep_4 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, hit_bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, hit_bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_bg, 0 );
setEffRotateKey( spep_4 + 54, hit_bg, 0 );
setEffAlphaKey( spep_4 + 0, hit_bg, 255 );
setEffAlphaKey( spep_4 + 54, hit_bg, 255 );
setEffAlphaKey( spep_4 + 55, hit_bg, 0 );
setEffAlphaKey( spep_4 + 56, hit_bg, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 56, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 54, hit_b, 255 );
setEffAlphaKey( spep_4 + 55, hit_b, 0 );
setEffAlphaKey( spep_4 + 56, hit_b, 0 );

--文字エントリー
ctgyaaa = entryEffectLife( spep_4 + 0,  10032, 54, 0x100, -1, 0, 60.4, -178.8 );
setEffShake( spep_4 + 0, ctgyaaa, 54, 10 );
setEffMoveKey( spep_4 + 0, ctgyaaa, 60.4, -178.8 , 0 );
setEffMoveKey( spep_4 + 2, ctgyaaa, 65.4, -196.4 , 0 );
setEffMoveKey( spep_4 + 4, ctgyaaa, 58.6, -200.9 , 0 );
setEffMoveKey( spep_4 + 6, ctgyaaa, 68.7, -186.4 , 0 );
setEffMoveKey( spep_4 + 8, ctgyaaa, 60.6, -206.4 , 0 );
setEffMoveKey( spep_4 + 10, ctgyaaa, 65.1, -195.6 , 0 );
setEffMoveKey( spep_4 + 12, ctgyaaa, 65.7, -192.5 , 0 );
setEffMoveKey( spep_4 + 14, ctgyaaa, 71.2, -211.9 , 0 );
setEffMoveKey( spep_4 + 16, ctgyaaa, 63.5, -216.6 , 0 );
setEffMoveKey( spep_4 + 18, ctgyaaa, 74.7, -200.2 , 0 );
setEffMoveKey( spep_4 + 20, ctgyaaa, 65.5, -222.2 , 0 );
setEffMoveKey( spep_4 + 22, ctgyaaa, 70.4, -210 , 0 );
setEffMoveKey( spep_4 + 24, ctgyaaa, 71, -206.3 , 0 );
setEffMoveKey( spep_4 + 26, ctgyaaa, 76.9, -227.4 , 0 );
setEffMoveKey( spep_4 + 28, ctgyaaa, 68.4, -232.3 , 0 );
setEffMoveKey( spep_4 + 30, ctgyaaa, 80.6, -214.1 , 0 );
setEffMoveKey( spep_4 + 32, ctgyaaa, 70.5, -237.9 , 0 );
setEffMoveKey( spep_4 + 34, ctgyaaa, 75.8, -224.3 , 0 );
setEffMoveKey( spep_4 + 36, ctgyaaa, 76.3, -220.1 , 0 );
setEffMoveKey( spep_4 + 38, ctgyaaa, 82.7, -242.9 , 0 );
setEffMoveKey( spep_4 + 40, ctgyaaa, 73.2, -248 , 0 );
setEffMoveKey( spep_4 + 42, ctgyaaa, 86.5, -227.9 , 0 );
setEffMoveKey( spep_4 + 44, ctgyaaa, 75.4, -253.6 , 0 );
setEffMoveKey( spep_4 + 46, ctgyaaa, 81.1, -238.6 , 0 );
setEffMoveKey( spep_4 + 48, ctgyaaa, 81.6, -233.8 , 0 );
setEffMoveKey( spep_4 + 50, ctgyaaa, 88.5, -258.3 , 0 );
setEffMoveKey( spep_4 + 52, ctgyaaa, 78.1, -263.7 , 0 );
setEffMoveKey( spep_4 + 54, ctgyaaa, 92.4, -241.7 , 0 );
--setEffMoveKey( spep_4 + 56, ctgyaaa, 80.3, -269.4 , 0 );
--setEffMoveKey( spep_4 + 58, ctgyaaa, 92.3, -268.7 , 0 );

setEffScaleKey( spep_4 + 0, ctgyaaa, 2.31, 2.31 );
setEffScaleKey( spep_4 + 2, ctgyaaa, 2.35, 2.35 );
setEffScaleKey( spep_4 + 4, ctgyaaa, 2.4, 2.4 );
setEffScaleKey( spep_4 + 6, ctgyaaa, 2.44, 2.44 );
setEffScaleKey( spep_4 + 8, ctgyaaa, 2.49, 2.49 );
setEffScaleKey( spep_4 + 10, ctgyaaa, 2.53, 2.53 );
setEffScaleKey( spep_4 + 12, ctgyaaa, 2.58, 2.58 );
setEffScaleKey( spep_4 + 14, ctgyaaa, 2.62, 2.62 );
setEffScaleKey( spep_4 + 16, ctgyaaa, 2.67, 2.67 );
setEffScaleKey( spep_4 + 18, ctgyaaa, 2.71, 2.71 );
setEffScaleKey( spep_4 + 20, ctgyaaa, 2.75, 2.75 );
setEffScaleKey( spep_4 + 22, ctgyaaa, 2.8, 2.8 );
setEffScaleKey( spep_4 + 24, ctgyaaa, 2.84, 2.84 );
setEffScaleKey( spep_4 + 26, ctgyaaa, 2.89, 2.89 );
setEffScaleKey( spep_4 + 28, ctgyaaa, 2.93, 2.93 );
setEffScaleKey( spep_4 + 30, ctgyaaa, 2.98, 2.98 );
setEffScaleKey( spep_4 + 32, ctgyaaa, 3.02, 3.02 );
setEffScaleKey( spep_4 + 34, ctgyaaa, 3.07, 3.07 );
setEffScaleKey( spep_4 + 36, ctgyaaa, 3.11, 3.11 );
setEffScaleKey( spep_4 + 38, ctgyaaa, 3.16, 3.16 );
setEffScaleKey( spep_4 + 40, ctgyaaa, 3.2, 3.2 );
setEffScaleKey( spep_4 + 42, ctgyaaa, 3.24, 3.24 );
setEffScaleKey( spep_4 + 44, ctgyaaa, 3.29, 3.29 );
setEffScaleKey( spep_4 + 46, ctgyaaa, 3.33, 3.33 );
setEffScaleKey( spep_4 + 48, ctgyaaa, 3.38, 3.38 );
setEffScaleKey( spep_4 + 50, ctgyaaa, 3.42, 3.42 );
setEffScaleKey( spep_4 + 52, ctgyaaa, 3.47, 3.47 );
setEffScaleKey( spep_4 + 54, ctgyaaa, 3.51, 3.51 );
--setEffScaleKey( spep_4 + 56, ctgyaaa, 3.56, 3.56 );
--setEffScaleKey( spep_4 + 58, ctgyaaa, 3.6, 3.6 );

setEffRotateKey( spep_4 + 0, ctgyaaa, -12 );
setEffRotateKey( spep_4 + 54, ctgyaaa, -12 );

setEffAlphaKey( spep_4 + 0, ctgyaaa, 255 );
setEffAlphaKey( spep_4 + 54, ctgyaaa, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 54, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4  + 0, 1, 202, 229.6 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 201.8, 227.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 203.5, 226.9 , 0 );
setMoveKey( spep_4 -3 + 5, 1, 203.5, 226.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 204.8, 229.7 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 204.8, 229.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 206, 227.7 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 206, 227.7 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 203.2, 231.5 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 203.2, 231.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 202.2, 232.4 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 202.2, 232.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 201, 229.5 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 201, 229.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 201.5, 227.6 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 201.5, 227.6 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 198, 230.4 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 198, 230.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 197.9, 229.4 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 197.9, 229.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 199.6, 229.3 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 199.6, 229.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 195.4, 231.1 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 195.4, 231.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 191, 229.2 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 191, 229.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 185.3, 226.3 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 185.3, 226.3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 183, 227.2 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 183, 227.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 185.2, 230.8 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 185.2, 230.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 175.8, 224.9 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 175.8, 224.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 167.7, 232.3 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 167.7, 232.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 167, 228.4 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 167, 228.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 164.7, 230.2 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 164.7, 230.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 162.1, 231.8 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 162.1, 231.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 154.2, 233.6 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 154.2, 233.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 145.6, 235.2 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 145.6, 235.2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 142.2, 231.3 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 142.2, 231.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 138.1, 227.2 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 138.1, 227.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 128.3, 226 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 128.3, 226 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 117.7, 224.7 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 117.7, 224.7 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 110.8, 228.2 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 110.8, 228.2 , 0 );
--setMoveKey( spep_4 -3 + 58, 1, 102.5, 231.9 , 0 );
--setMoveKey( spep_4 -3 + 59, 1, 102.5, 231.9 , 0 );

setScaleKey( spep_4  + 0, 1, 0.5, 0.5 );
--setScaleKey( spep_4 -3 + 2, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 7, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 8, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 9, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 10, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 11, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 12, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 13, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 14, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 15, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 16, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 17, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 18, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 19, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 20, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 21, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 22, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 23, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 24, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 25, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 26, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 27, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 28, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 29, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 30, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 31, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 33, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 34, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 35, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 37, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 38, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 39, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 41, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 42, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 43, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 44, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 45, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 46, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 47, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 48, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 49, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 50, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 51, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 52, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 53, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 54, 1, 1.53, 1.53 );
setScaleKey( spep_4 -3 + 55, 1, 1.53, 1.53 );
setScaleKey( spep_4 -3 + 56, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 57, 1, 1.65, 1.65 );
--setScaleKey( spep_4 -3 + 58, 1, 1.78, 1.78 );
--setScaleKey( spep_4 -3 + 59, 1, 1.78, 1.78 );

setRotateKey( spep_4  + 0, 1, -69.2 );
setRotateKey( spep_4 -3 + 57, 1, -69.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5 = spep_4+54;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 180, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 180, finish, 255 );


--SE
playSe( spep_5 + 10, 1159 );
setSeVolume( spep_5 + 10, 1159, 79 );
playSe( spep_5 + 10, 1024 );


stopSe( spep_5 + 13 +2, se_1213, 0 );
stopSe( spep_5 + 13 +2, se_1176, 0 );
stopSe( spep_5 + 13 +2, se_1212, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 166 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- かめはめ波　溜める
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 116, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 116, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 116, tame, 255 );
setEffAlphaKey( spep_0 + 117, tame, 0 );
setEffAlphaKey( spep_0 + 118, tame, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 63 );
se_1172 = playSe( spep_0 + 7, 1172 );
setSeVolume( spep_0 + 7, 1172, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1172, 0 );

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_0 + 16, 1018 );


setSeVolume( spep_0 + 20, 1172, 7.9 );
setSeVolume( spep_0 + 21, 1172, 15.8 );
setSeVolume( spep_0 + 22, 1172, 23.7 );
setSeVolume( spep_0 + 23, 1172, 31.6 );
setSeVolume( spep_0 + 24, 1172, 39.5 );
setSeVolume( spep_0 + 25, 1172, 47.4 );
setSeVolume( spep_0 + 26, 1172, 55.3 );
setSeVolume( spep_0 + 27, 1172, 63.2 );
setSeVolume( spep_0 + 28, 1172, 71 );
playSe( spep_0 + 13, 1043 );
setSeVolume( spep_0 + 13, 1043, 89 );
playSe( spep_0 + 18, 1199 );
setSeVolume( spep_0 + 18, 1199, 71 );
se_1210 = playSe( spep_0 + 26, 1210 );
setSeVolume( spep_0 + 26, 1210, 50 );
se_1158 = playSe( spep_0 + 26, 1158 );
setSeVolume( spep_0 + 26, 1158, 40 );
se_1181 = playSe( spep_0 + 26, 1181 );
setSeVolume( spep_0 + 26, 1181, 0 );
setSeVolume( spep_0 + 27, 1181, 3.1 );
setSeVolume( spep_0 + 28, 1181, 6.2 );
setSeVolume( spep_0 + 29, 1181, 9.29 );
setSeVolume( spep_0 + 30, 1181, 12.39 );
setSeVolume( spep_0 + 31, 1181, 15.49 );
setSeVolume( spep_0 + 32, 1181, 18.59 );
setSeVolume( spep_0 + 33, 1181, 21.69 );
setSeVolume( spep_0 + 34, 1181, 24.78 );
setSeVolume( spep_0 + 35, 1181, 27.88 );
setSeVolume( spep_0 + 36, 1181, 30.98 );
setSeVolume( spep_0 + 37, 1181, 34.08 );
setSeVolume( spep_0 + 38, 1181, 37.18 );
setSeVolume( spep_0 + 39, 1181, 40.27 );
setSeVolume( spep_0 + 40, 1181, 43.37 );
setSeVolume( spep_0 + 41, 1181, 46.47 );
setSeVolume( spep_0 + 42, 1181, 49.57 );
setSeVolume( spep_0 + 43, 1181, 52.67 );
setSeVolume( spep_0 + 44, 1181, 55.76 );
setSeVolume( spep_0 + 45, 1181, 58.86 );
setSeVolume( spep_0 + 46, 1181, 61.96 );
setSeVolume( spep_0 + 47, 1181, 65.06 );
setSeVolume( spep_0 + 48, 1181, 68.16 );
setSeVolume( spep_0 + 49, 1181, 71.25 );
setSeVolume( spep_0 + 50, 1181, 74.35 );
setSeVolume( spep_0 + 51, 1181, 77.45 );
setSeVolume( spep_0 + 52, 1181, 80.55 );
setSeVolume( spep_0 + 53, 1181, 83.65 );
setSeVolume( spep_0 + 54, 1181, 86.75 );
setSeVolume( spep_0 + 55, 1181, 89.84 );
setSeVolume( spep_0 + 56, 1181, 92.94 );
setSeVolume( spep_0 + 57, 1181, 96.04 );
setSeVolume( spep_0 + 58, 1181, 99.14 );
setSeVolume( spep_0 + 59, 1181, 102.24 );
setSeVolume( spep_0 + 60, 1181, 105.33 );
setSeVolume( spep_0 + 61, 1181, 108.43 );
setSeVolume( spep_0 + 62, 1181, 111.53 );
setSeVolume( spep_0 + 63, 1181, 114.63 );
setSeVolume( spep_0 + 64, 1181, 117.73 );
setSeVolume( spep_0 + 65, 1181, 120.82 );
setSeVolume( spep_0 + 66, 1181, 123.92 );
setSeVolume( spep_0 + 67, 1181, 127.02 );
setSeVolume( spep_0 + 68, 1181, 130.12 );
setSeVolume( spep_0 + 69, 1181, 133.22 );
setSeVolume( spep_0 + 70, 1181, 136.31 );
setSeVolume( spep_0 + 71, 1181, 139.41 );
setSeVolume( spep_0 + 72, 1181, 142.51 );
setSeVolume( spep_0 + 73, 1181, 145.61 );
setSeVolume( spep_0 + 74, 1181, 148.71 );
setSeVolume( spep_0 + 75, 1181, 151.8 );
setSeVolume( spep_0 + 76, 1181, 154.9 );
setSeVolume( spep_0 + 77, 1181, 158 );
setSeVolume( spep_0 + 78, 1181, 161.1 );
setSeVolume( spep_0 + 79, 1181, 164.2 );
setSeVolume( spep_0 + 80, 1181, 167.29 );
setSeVolume( spep_0 + 81, 1181, 170.39 );
setSeVolume( spep_0 + 82, 1181, 173.49 );
setSeVolume( spep_0 + 83, 1181, 176.59 );
setSeVolume( spep_0 + 84, 1181, 179.69 );
setSeVolume( spep_0 + 85, 1181, 182.78 );
setSeVolume( spep_0 + 86, 1181, 185.88 );
setSeVolume( spep_0 + 87, 1181, 188.98 );
setSeVolume( spep_0 + 88, 1181, 192.08 );
setSeVolume( spep_0 + 89, 1181, 195.18 );
setSeVolume( spep_0 + 90, 1181, 198.27 );
setSeVolume( spep_0 + 91, 1181, 201.37 );
setSeVolume( spep_0 + 92, 1181, 204.47 );
setSeVolume( spep_0 + 93, 1181, 207.57 );
setSeVolume( spep_0 + 94, 1181, 210.67 );
setSeVolume( spep_0 + 95, 1181, 213.76 );
setSeVolume( spep_0 + 96, 1181, 216.86 );
setSeVolume( spep_0 + 97, 1181, 219.96 );
setSeVolume( spep_0 + 98, 1181, 223.06 );
setSeVolume( spep_0 + 99, 1181, 226.16 );
setSeVolume( spep_0 + 100, 1181, 229.25 );
setSeVolume( spep_0 + 101, 1181, 232.35 );
setSeVolume( spep_0 + 102, 1181, 235.45 );
setSeVolume( spep_0 + 103, 1181, 238.55 );
setSeVolume( spep_0 + 104, 1181, 241.65 );
setSeVolume( spep_0 + 105, 1181, 244.75 );
setSeVolume( spep_0 + 106, 1181, 247.84 );
setSeVolume( spep_0 + 107, 1181, 250.94 );
setSeVolume( spep_0 + 108, 1181, 254.04 );
setSeVolume( spep_0 + 109, 1181, 257.14 );
setSeVolume( spep_0 + 110, 1181, 260.24 );
setSeVolume( spep_0 + 111, 1181, 263.33 );
setSeVolume( spep_0 + 112, 1181, 266.43 );
setSeVolume( spep_0 + 113, 1181, 269.53 );
setSeVolume( spep_0 + 114, 1181, 272.63 );
setSeVolume( spep_0 + 115, 1181, 275.73 );
setSeVolume( spep_0 + 116, 1181, 278.82 );
setSeVolume( spep_0 + 117, 1181, 281.92 );
setSeVolume( spep_0 + 118, 1181, 285.02 );
setSeVolume( spep_0 + 119, 1181, 288.12 );
setSeVolume( spep_0 + 120, 1181, 291.22 );
setSeVolume( spep_0 + 121, 1181, 294.31 );
setSeVolume( spep_0 + 122, 1181, 297.41 );
setSeVolume( spep_0 + 123, 1181, 300.51 );
setSeVolume( spep_0 + 124, 1181, 303.61 );
setSeVolume( spep_0 + 125, 1181, 306.71 );
setSeVolume( spep_0 + 126, 1181, 309.8 );
setSeVolume( spep_0 + 127, 1181, 312.9 );
setSeVolume( spep_0 + 128, 1181, 316 );
playSe( spep_0 + 43, 1062 );
setSeVolume( spep_0 + 43, 1062, 0 );
setSeVolume( spep_0 + 52, 1062, 0 );
setSeVolume( spep_0 + 53, 1062, 4.45 );
setSeVolume( spep_0 + 54, 1062, 8.9 );
setSeVolume( spep_0 + 55, 1062, 13.35 );
setSeVolume( spep_0 + 56, 1062, 17.8 );
setSeVolume( spep_0 + 57, 1062, 22.25 );
setSeVolume( spep_0 + 58, 1062, 26.7 );
setSeVolume( spep_0 + 59, 1062, 31.15 );
setSeVolume( spep_0 + 60, 1062, 35.6 );
setSeVolume( spep_0 + 61, 1062, 40.05 );
setSeVolume( spep_0 + 62, 1062, 44.5 );
setSeVolume( spep_0 + 63, 1062, 48.95 );
setSeVolume( spep_0 + 64, 1062, 53.4 );
setSeVolume( spep_0 + 65, 1062, 57.85 );
setSeVolume( spep_0 + 66, 1062, 62.3 );
setSeVolume( spep_0 + 67, 1062, 66.75 );
setSeVolume( spep_0 + 68, 1062, 71.2 );
setSeVolume( spep_0 + 69, 1062, 75.65 );
setSeVolume( spep_0 + 70, 1062, 80.1 );
setSeVolume( spep_0 + 71, 1062, 84.55 );
setSeVolume( spep_0 + 72, 1062, 89 );
se_1199 = playSe( spep_0 + 86, 1199 );

stopSe( spep_0 + 52, se_1172, 50 );


--次の準備
spep_1 = spep_0+116;

------------------------------------------------------
-- ザマス出現
------------------------------------------------------
-- ** エフェクト等 ** --
touzyou_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, touzyou_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, touzyou_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, touzyou_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 160, touzyou_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, touzyou_f, 0 );
setEffRotateKey( spep_1 + 160, touzyou_f, 0 );
setEffAlphaKey( spep_1 + 0, touzyou_f, 255 );
setEffAlphaKey( spep_1 + 160, touzyou_f, 255 );

-- ** エフェクト等 ** --
touzyou_n = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, touzyou_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, touzyou_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, touzyou_n, -1.0, 1.0 );
setEffScaleKey( spep_1 + 160, touzyou_n, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, touzyou_n, 0 );
setEffRotateKey( spep_1 + 160, touzyou_n, 0 );
setEffAlphaKey( spep_1 + 0, touzyou_n, 255 );
setEffAlphaKey( spep_1 + 160, touzyou_n, 255 );

-- ** エフェクト等 ** --
touzyou_bg = entryEffect( spep_1 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, touzyou_bg, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, touzyou_bg, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, touzyou_bg, -1.0, 1.0 );
setEffScaleKey( spep_1 + 160, touzyou_bg, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, touzyou_bg, 0 );
setEffRotateKey( spep_1 + 160, touzyou_bg, 0 );
setEffAlphaKey( spep_1 + 0, touzyou_bg, 255 );
setEffAlphaKey( spep_1 + 160, touzyou_bg, 255 );

-- ** エフェクト等 ** --
touzyou_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 40, 0 ); 
setEffMoveKey( spep_1 + 0, touzyou_b, 40, 0, 0 );
setEffMoveKey( spep_1 + 160, touzyou_b, 40, 0, 0 );
setEffScaleKey( spep_1 + 0, touzyou_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 160, touzyou_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, touzyou_b, 0 );
setEffRotateKey( spep_1 + 160, touzyou_b, 0 );
setEffAlphaKey( spep_1 + 0, touzyou_b, 255 );
setEffAlphaKey( spep_1 + 160, touzyou_b, 255 );

--文字エントリー
ctga = entryEffectLife( spep_1 -3 + 78,  10005, 20, 0x100, -1, 0, -135.4, 247.2 );--ガッ
setEffShake( spep_1 -3 + 78, ctga, 20, 10 );
setEffMoveKey( spep_1 -3 + 78, ctga, 135.4, 247.2 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctga, 135.4, 250.6 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctga, 131.3, 245.6 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctga, 140.5, 250.2 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctga, 136.5, 248.2 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctga, 132.4, 246.3 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctga, 136, 248.7 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctga, 139.4, 251.1 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctga, 137, 248.3 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctga, 134.6, 245.4 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctga, 134.6, 245.4 , 0 );

setEffScaleKey( spep_1 -3 + 78, ctga, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 98, ctga, 1.7, 1.7 );

a=-10;

setEffRotateKey( spep_1 -3 + 78, ctga, 27+a );
setEffRotateKey( spep_1 -3 + 80, ctga, 25.4+a );
setEffRotateKey( spep_1 -3 + 82, ctga, 23.9+a );
setEffRotateKey( spep_1 -3 + 84, ctga, 25.4+a );
setEffRotateKey( spep_1 -3 + 86, ctga, 27+a );
setEffRotateKey( spep_1 -3 + 88, ctga, 25.9+a );
setEffRotateKey( spep_1 -3 + 90, ctga, 24.8+a );
setEffRotateKey( spep_1 -3 + 92, ctga, 25.9+a );
setEffRotateKey( spep_1 -3 + 94, ctga, 27+a );
setEffRotateKey( spep_1 -3 + 98, ctga, 27+a );

setEffAlphaKey( spep_1 -3 + 78, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 92, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 94, ctga, 170 );
setEffAlphaKey( spep_1 -3 + 96, ctga, 86 );
setEffAlphaKey( spep_1 -3 + 98, ctga, 1 );

--てき
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 160, 1, 0 );

changeAnime( spep_1 -3 + 0, 1, 4 );
changeAnime( spep_1 -3 + 76, 1, 6 );

b=-30;

setMoveKey( spep_1  + 0, 1, -194.5, 318.9 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 194.4, 318.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -194.3, 318.1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -194.1, 317.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -193.7, 316.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -193.5, 315.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -193.1, 314.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -192.7, 313.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -192.2, 311.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -191.7, 310.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -189.2, 304.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -186, 296.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -181.9, 286.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -177, 274.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -171.1, 260 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -164.2, 243.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -156.2, 223.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -146.8, 201.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -136.1, 175 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -123.7, 145 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -109.4, 110.5 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -93, 70.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -74.1, 24.6 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -52, -28.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -25.8, -90.4 , 0 );
setMoveKey( spep_1 -3 + 75, 1, -25.8, -90.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 49.6+b, -47.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 49.6+b, -47.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 52.5+b, -50.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 48.6+b, -46.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 46.2+b, -50.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 49.6+b, -47.9 , 0 );
setMoveKey( spep_1  + 160, 1, 49.6+b, -47.9 , 0 );

setScaleKey( spep_1  + 0, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 4, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 10, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 12, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 14, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 18, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 20, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 22, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 24, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 28, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 30, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 32, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 34, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 36, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 38, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 42, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 44, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 46, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 48, 1, 2.33, 2.33 );
setScaleKey( spep_1  + 160, 1, 2.33, 2.33 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 75, 1, 0 );
setRotateKey( spep_1 -3 + 76, 1, 59 );
setRotateKey( spep_1  + 160, 1, 59 );

--SE
playSe( spep_1 + 60, 43 );
setSeVolume( spep_1 + 60, 43, 79 );
playSe( spep_1 + 76, 1013 );
setSeVolume( spep_1 + 76, 1013, 126 );
stopSe( spep_1 + 1, se_1199, 69 );


--白フェード
entryFade( spep_1 + 152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2 = spep_1+160;

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

stopSe( spep_2 + 5, se_1210, 0 );
stopSe( spep_2 + 0, se_1158, 0 );
stopSe( spep_2 + 5, se_1181, 0 );

playSe( spep_2 + 85, 1062 );
setSeVolume( spep_2 + 85, 1062, 0 );
playSe( spep_2 + 88, 1154 );
setSeVolume( spep_2 + 88, 1154, 0 );


--白フェード
entryFade( spep_2 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- かめはめ波　発射
------------------------------------------------------
-- ** エフェクト等 ** --
hasya = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hasya, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, hasya, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hasya, -1.0, 1.0 );
setEffScaleKey( spep_3 + 116, hasya, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hasya, 0 );
setEffRotateKey( spep_3 + 116, hasya, 0 );
setEffAlphaKey( spep_3 + 0, hasya, 255 );
setEffAlphaKey( spep_3 + 116, hasya, 255 );
setEffAlphaKey( spep_3 + 117, hasya, 0 );
setEffAlphaKey( spep_3 + 118, hasya, 0 );
--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 40,  10012, 68, 0x100, -1, 0, 140.9, 262.6 );--ズオッ
setEffShake( spep_3-3 + 40, ctzuo, 68, 10 );
setEffMoveKey( spep_3-3 + 40, ctzuo, 140.9, 262.6 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzuo, 161.7, 278.2 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, 164.2, 303.9 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzuo, 189.2, 315.6 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzuo, 187.5, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzuo, 202.7, 334.1 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzuo, 187.5, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzuo, 202.8, 334.1 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzuo, 187.5, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzuo, 202.8, 334.1 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzuo, 187.4, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzuo, 202.8, 334 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzuo, 187.4, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzuo, 202.9, 334 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzuo, 187.4, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzuo, 202.9, 333.9 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzuo, 187.3, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzuo, 202.9, 333.9 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzuo, 187.3, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzuo, 203, 333.9 , 0 );
setEffMoveKey( spep_3-3 + 80, ctzuo, 187.3, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 82, ctzuo, 203, 333.8 , 0 );
setEffMoveKey( spep_3-3 + 84, ctzuo, 187.2, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 86, ctzuo, 203, 333.8 , 0 );
setEffMoveKey( spep_3-3 + 88, ctzuo, 187.2, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 90, ctzuo, 203.1, 333.7 , 0 );
setEffMoveKey( spep_3-3 + 92, ctzuo, 187.2, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 94, ctzuo, 203.1, 333.7 , 0 );
setEffMoveKey( spep_3-3 + 96, ctzuo, 187.2, 345.7 , 0 );
setEffMoveKey( spep_3-3 + 98, ctzuo, 203.1, 333.6 , 0 );
setEffMoveKey( spep_3-3 + 100, ctzuo, 201, 352.2 , 0 );
setEffMoveKey( spep_3-3 + 102, ctzuo, 239.6, 340 , 0 );
setEffMoveKey( spep_3-3 + 104, ctzuo, 228.7, 365.1 , 0 );
setEffMoveKey( spep_3-3 + 106, ctzuo, 276, 346.4 , 0 );
setEffMoveKey( spep_3-3 + 108, ctzuo, 294.2, 349.5 , 0 );

setEffScaleKey( spep_3-3 + 40, ctzuo, 0.9, 0.9 );
setEffScaleKey( spep_3-3 + 42, ctzuo, 1.24, 1.24 );
setEffScaleKey( spep_3-3 + 44, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_3-3 + 46, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_3-3 + 48, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_3-3 + 50, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_3-3 + 52, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 54, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 56, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_3-3 + 58, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_3-3 + 60, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_3-3 + 62, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_3-3 + 64, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_3-3 + 66, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_3-3 + 68, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_3-3 + 70, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_3-3 + 72, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_3-3 + 74, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_3-3 + 76, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_3-3 + 80, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_3-3 + 82, ctzuo, 2.36, 2.36 );
setEffScaleKey( spep_3-3 + 84, ctzuo, 2.36, 2.36 );
setEffScaleKey( spep_3-3 + 86, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_3-3 + 88, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_3-3 + 90, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_3-3 + 92, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_3-3 + 94, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_3-3 + 96, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_3-3 + 98, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_3-3 + 100, ctzuo, 3.05, 3.05 );
setEffScaleKey( spep_3-3 + 102, ctzuo, 3.7, 3.7 );
setEffScaleKey( spep_3-3 + 104, ctzuo, 4.36, 4.36 );
setEffScaleKey( spep_3-3 + 106, ctzuo, 5.01, 5.01 );
setEffScaleKey( spep_3-3 + 108, ctzuo, 5.66, 5.66 );

setEffRotateKey( spep_3-3 + 40, ctzuo, 6 );
setEffRotateKey( spep_3-3 + 42, ctzuo, 9 );
setEffRotateKey( spep_3-3 + 44, ctzuo, 12 );
setEffRotateKey( spep_3-3 + 46, ctzuo, 15 );
setEffRotateKey( spep_3-3 + 48, ctzuo, 18 );
setEffRotateKey( spep_3-3 + 64, ctzuo, 18 );
setEffRotateKey( spep_3-3 + 66, ctzuo, 17.9 );
setEffRotateKey( spep_3-3 + 108, ctzuo, 17.9 );

setEffAlphaKey( spep_3-3 + 40, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 98, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 100, ctzuo, 204 );
setEffAlphaKey( spep_3-3 + 102, ctzuo, 153 );
setEffAlphaKey( spep_3-3 + 104, ctzuo, 102 );
setEffAlphaKey( spep_3-3 + 106, ctzuo, 51 );
setEffAlphaKey( spep_3-3 + 108, ctzuo, 0 );

--SE
se_1043 = playSe( spep_3 + 0, 1043 );
setSeVolume( spep_3 + 0, 1043, 71 );
se_0017 = playSe( spep_3 + 0, 17 );
setSeVolume( spep_3 + 0, 17, 71 );
playSe( spep_3 + 5, 49 );
setSeVolume( spep_3 + 5, 49, 112 );
se_1213 = playSe( spep_3 + 39, 1213 );
setSeVolume( spep_3 + 39, 1213, 79 );
se_1176 = playSe( spep_3 + 39, 1176 );
se_1212 = playSe( spep_3 + 66, 1212 );
setSeVolume( spep_3 + 66, 1212, 0 );
setSeVolume( spep_3 + 103, 1212, 0 );
setSeVolume( spep_3 + 104, 1212, 2.33 );
setSeVolume( spep_3 + 105, 1212, 4.67 );
setSeVolume( spep_3 + 106, 1212, 7 );
setSeVolume( spep_3 + 107, 1212, 9.33 );
setSeVolume( spep_3 + 108, 1212, 11.67 );
setSeVolume( spep_3 + 109, 1212, 14 );
setSeVolume( spep_3 + 110, 1212, 16.33 );
setSeVolume( spep_3 + 111, 1212, 18.67 );
setSeVolume( spep_3 + 112, 1212, 21 );
setSeVolume( spep_3 + 113, 1212, 23.33 );
setSeVolume( spep_3 + 114, 1212, 25.67 );
setSeVolume( spep_3 + 115, 1212, 28 );
setSeVolume( spep_3 + 116, 1212, 30.33 );
setSeVolume( spep_3 + 117, 1212, 32.67 );
setSeVolume( spep_3 + 118, 1212, 35 );
setSeVolume( spep_3 + 119, 1212, 37.33 );
setSeVolume( spep_3 + 120, 1212, 39.67 );
setSeVolume( spep_3 + 121, 1212, 42 );
setSeVolume( spep_3 + 122, 1212, 44.33 );
setSeVolume( spep_3 + 123, 1212, 46.67 );
setSeVolume( spep_3 + 124, 1212, 49 );
setSeVolume( spep_3 + 125, 1212, 51.33 );
setSeVolume( spep_3 + 126, 1212, 53.67 );
setSeVolume( spep_3 + 127, 1212, 56 );

stopSe( spep_3 + 45, se_1043, 0 );
stopSe( spep_3 + 42, se_0017, 0 );

setSeVolume( spep_3 + 0, 1062, 0 );
setSeVolume( spep_3 + 1, 1062, 5 );
setSeVolume( spep_3 + 2, 1062, 10 );
setSeVolume( spep_3 + 3, 1062, 15 );
setSeVolume( spep_3 + 4, 1062, 20 );
setSeVolume( spep_3 + 5, 1062, 25 );
setSeVolume( spep_3 + 6, 1062, 30 );
setSeVolume( spep_3 + 7, 1062, 35 );
setSeVolume( spep_3 + 8, 1062, 40 );
setSeVolume( spep_3 + 9, 1062, 45 );
setSeVolume( spep_3 + 10, 1062, 50 );
setSeVolume( spep_3 + 11, 1062, 55 );
setSeVolume( spep_3 + 12, 1062, 60 );
setSeVolume( spep_3 + 13, 1062, 65 );
setSeVolume( spep_3 + 14, 1062, 70 );
setSeVolume( spep_3 + 15, 1062, 75 );
setSeVolume( spep_3 + 16, 1062, 80 );
setSeVolume( spep_3 + 17, 1062, 85 );
setSeVolume( spep_3 + 18, 1062, 90 );
setSeVolume( spep_3 + 19, 1062, 95 );
setSeVolume( spep_3 + 20, 1062, 100 );

setSeVolume( spep_3 + 13, 1154, 39.5 );
setSeVolume( spep_3 + 14, 1154, 79 );

--白フェード
entryFade( spep_3 + 108, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 118, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4 = spep_3+116;
------------------------------------------------------
-- かめはめ波　敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 56, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 54, hit_f, 255 );
setEffAlphaKey( spep_4 + 55, hit_f, 0 );
setEffAlphaKey( spep_4 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_n = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_n, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_n, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_n, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_n, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_n, 0 );
setEffRotateKey( spep_4 + 56, hit_n, 0 );
setEffAlphaKey( spep_4 + 0, hit_n, 255 );
setEffAlphaKey( spep_4 + 54, hit_n, 255 );
setEffAlphaKey( spep_4 + 55, hit_n, 0 );
setEffAlphaKey( spep_4 + 56, hit_n, 0 );

-- ** エフェクト等 ** --
hit_bg = entryEffect( spep_4 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, hit_bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, hit_bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_bg, 0 );
setEffRotateKey( spep_4 + 54, hit_bg, 0 );
setEffAlphaKey( spep_4 + 0, hit_bg, 255 );
setEffAlphaKey( spep_4 + 54, hit_bg, 255 );
setEffAlphaKey( spep_4 + 55, hit_bg, 0 );
setEffAlphaKey( spep_4 + 56, hit_bg, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 56, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 54, hit_b, 255 );
setEffAlphaKey( spep_4 + 55, hit_b, 0 );
setEffAlphaKey( spep_4 + 56, hit_b, 0 );

--文字エントリー
ctgyaaa = entryEffectLife( spep_4 + 0,  10032, 54, 0x100, -1, 0, 60.4, -178.8 );
setEffShake( spep_4 + 0, ctgyaaa, 54, 10 );
setEffMoveKey( spep_4 + 0, ctgyaaa, 60.4, -178.8 , 0 );
setEffMoveKey( spep_4 + 2, ctgyaaa, 65.4, -196.4 , 0 );
setEffMoveKey( spep_4 + 4, ctgyaaa, 58.6, -200.9 , 0 );
setEffMoveKey( spep_4 + 6, ctgyaaa, 68.7, -186.4 , 0 );
setEffMoveKey( spep_4 + 8, ctgyaaa, 60.6, -206.4 , 0 );
setEffMoveKey( spep_4 + 10, ctgyaaa, 65.1, -195.6 , 0 );
setEffMoveKey( spep_4 + 12, ctgyaaa, 65.7, -192.5 , 0 );
setEffMoveKey( spep_4 + 14, ctgyaaa, 71.2, -211.9 , 0 );
setEffMoveKey( spep_4 + 16, ctgyaaa, 63.5, -216.6 , 0 );
setEffMoveKey( spep_4 + 18, ctgyaaa, 74.7, -200.2 , 0 );
setEffMoveKey( spep_4 + 20, ctgyaaa, 65.5, -222.2 , 0 );
setEffMoveKey( spep_4 + 22, ctgyaaa, 70.4, -210 , 0 );
setEffMoveKey( spep_4 + 24, ctgyaaa, 71, -206.3 , 0 );
setEffMoveKey( spep_4 + 26, ctgyaaa, 76.9, -227.4 , 0 );
setEffMoveKey( spep_4 + 28, ctgyaaa, 68.4, -232.3 , 0 );
setEffMoveKey( spep_4 + 30, ctgyaaa, 80.6, -214.1 , 0 );
setEffMoveKey( spep_4 + 32, ctgyaaa, 70.5, -237.9 , 0 );
setEffMoveKey( spep_4 + 34, ctgyaaa, 75.8, -224.3 , 0 );
setEffMoveKey( spep_4 + 36, ctgyaaa, 76.3, -220.1 , 0 );
setEffMoveKey( spep_4 + 38, ctgyaaa, 82.7, -242.9 , 0 );
setEffMoveKey( spep_4 + 40, ctgyaaa, 73.2, -248 , 0 );
setEffMoveKey( spep_4 + 42, ctgyaaa, 86.5, -227.9 , 0 );
setEffMoveKey( spep_4 + 44, ctgyaaa, 75.4, -253.6 , 0 );
setEffMoveKey( spep_4 + 46, ctgyaaa, 81.1, -238.6 , 0 );
setEffMoveKey( spep_4 + 48, ctgyaaa, 81.6, -233.8 , 0 );
setEffMoveKey( spep_4 + 50, ctgyaaa, 88.5, -258.3 , 0 );
setEffMoveKey( spep_4 + 52, ctgyaaa, 78.1, -263.7 , 0 );
setEffMoveKey( spep_4 + 54, ctgyaaa, 92.4, -241.7 , 0 );
--setEffMoveKey( spep_4 + 56, ctgyaaa, 80.3, -269.4 , 0 );
--setEffMoveKey( spep_4 + 58, ctgyaaa, 92.3, -268.7 , 0 );

setEffScaleKey( spep_4 + 0, ctgyaaa, 2.31, 2.31 );
setEffScaleKey( spep_4 + 2, ctgyaaa, 2.35, 2.35 );
setEffScaleKey( spep_4 + 4, ctgyaaa, 2.4, 2.4 );
setEffScaleKey( spep_4 + 6, ctgyaaa, 2.44, 2.44 );
setEffScaleKey( spep_4 + 8, ctgyaaa, 2.49, 2.49 );
setEffScaleKey( spep_4 + 10, ctgyaaa, 2.53, 2.53 );
setEffScaleKey( spep_4 + 12, ctgyaaa, 2.58, 2.58 );
setEffScaleKey( spep_4 + 14, ctgyaaa, 2.62, 2.62 );
setEffScaleKey( spep_4 + 16, ctgyaaa, 2.67, 2.67 );
setEffScaleKey( spep_4 + 18, ctgyaaa, 2.71, 2.71 );
setEffScaleKey( spep_4 + 20, ctgyaaa, 2.75, 2.75 );
setEffScaleKey( spep_4 + 22, ctgyaaa, 2.8, 2.8 );
setEffScaleKey( spep_4 + 24, ctgyaaa, 2.84, 2.84 );
setEffScaleKey( spep_4 + 26, ctgyaaa, 2.89, 2.89 );
setEffScaleKey( spep_4 + 28, ctgyaaa, 2.93, 2.93 );
setEffScaleKey( spep_4 + 30, ctgyaaa, 2.98, 2.98 );
setEffScaleKey( spep_4 + 32, ctgyaaa, 3.02, 3.02 );
setEffScaleKey( spep_4 + 34, ctgyaaa, 3.07, 3.07 );
setEffScaleKey( spep_4 + 36, ctgyaaa, 3.11, 3.11 );
setEffScaleKey( spep_4 + 38, ctgyaaa, 3.16, 3.16 );
setEffScaleKey( spep_4 + 40, ctgyaaa, 3.2, 3.2 );
setEffScaleKey( spep_4 + 42, ctgyaaa, 3.24, 3.24 );
setEffScaleKey( spep_4 + 44, ctgyaaa, 3.29, 3.29 );
setEffScaleKey( spep_4 + 46, ctgyaaa, 3.33, 3.33 );
setEffScaleKey( spep_4 + 48, ctgyaaa, 3.38, 3.38 );
setEffScaleKey( spep_4 + 50, ctgyaaa, 3.42, 3.42 );
setEffScaleKey( spep_4 + 52, ctgyaaa, 3.47, 3.47 );
setEffScaleKey( spep_4 + 54, ctgyaaa, 3.51, 3.51 );
--setEffScaleKey( spep_4 + 56, ctgyaaa, 3.56, 3.56 );
--setEffScaleKey( spep_4 + 58, ctgyaaa, 3.6, 3.6 );

setEffRotateKey( spep_4 + 0, ctgyaaa, -32 );
setEffRotateKey( spep_4 + 54, ctgyaaa, -32 );

setEffAlphaKey( spep_4 + 0, ctgyaaa, 255 );
setEffAlphaKey( spep_4 + 54, ctgyaaa, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 54, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4  + 0, 1, 202, 229.6 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 201.8, 227.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 203.5, 226.9 , 0 );
setMoveKey( spep_4 -3 + 5, 1, 203.5, 226.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 204.8, 229.7 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 204.8, 229.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 206, 227.7 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 206, 227.7 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 203.2, 231.5 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 203.2, 231.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 202.2, 232.4 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 202.2, 232.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 201, 229.5 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 201, 229.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 201.5, 227.6 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 201.5, 227.6 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 198, 230.4 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 198, 230.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 197.9, 229.4 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 197.9, 229.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 199.6, 229.3 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 199.6, 229.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 195.4, 231.1 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 195.4, 231.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 191, 229.2 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 191, 229.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 185.3, 226.3 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 185.3, 226.3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 183, 227.2 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 183, 227.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 185.2, 230.8 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 185.2, 230.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 175.8, 224.9 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 175.8, 224.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 167.7, 232.3 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 167.7, 232.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 167, 228.4 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 167, 228.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 164.7, 230.2 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 164.7, 230.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 162.1, 231.8 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 162.1, 231.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 154.2, 233.6 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 154.2, 233.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 145.6, 235.2 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 145.6, 235.2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 142.2, 231.3 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 142.2, 231.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 138.1, 227.2 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 138.1, 227.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 128.3, 226 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 128.3, 226 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 117.7, 224.7 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 117.7, 224.7 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 110.8, 228.2 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 110.8, 228.2 , 0 );
--setMoveKey( spep_4 -3 + 58, 1, 102.5, 231.9 , 0 );
--setMoveKey( spep_4 -3 + 59, 1, 102.5, 231.9 , 0 );

setScaleKey( spep_4  + 0, 1, 0.5, 0.5 );
--setScaleKey( spep_4 -3 + 2, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 7, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 8, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 9, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 10, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 11, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 12, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 13, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 14, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 15, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 16, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 17, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 18, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 19, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 20, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 21, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 22, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 23, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 24, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 25, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 26, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 27, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 28, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 29, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 30, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 31, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 33, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 34, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 35, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 37, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 38, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 39, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 41, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 42, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 43, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 44, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 45, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 46, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 47, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 48, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 49, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 50, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 51, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 52, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 53, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 54, 1, 1.53, 1.53 );
setScaleKey( spep_4 -3 + 55, 1, 1.53, 1.53 );
setScaleKey( spep_4 -3 + 56, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 57, 1, 1.65, 1.65 );
--setScaleKey( spep_4 -3 + 58, 1, 1.78, 1.78 );
--setScaleKey( spep_4 -3 + 59, 1, 1.78, 1.78 );

setRotateKey( spep_4  + 0, 1, -69.2 );
setRotateKey( spep_4 -3 + 57, 1, -69.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5 = spep_4+54;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 180, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 180, finish, 255 );

--SE
playSe( spep_5 + 10, 1159 );
setSeVolume( spep_5 + 10, 1159, 79 );
playSe( spep_5 + 10, 1024 );


stopSe( spep_5 + 13 +2, se_1213, 0 );
stopSe( spep_5 + 13 +2, se_1176, 0 );
stopSe( spep_5 + 13 +2, se_1212, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 166 );

end
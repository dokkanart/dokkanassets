--4020510:ゴールデンフリーザ(天使)_ゴールデンデスブラスター
--sp_effect_a1_00257

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
SP_01=	156092	;--	指先ビーム〜正面見下ろし
SP_02=	156094	;--	指先ビーム〜正面見下ろし
SP_03=	156096	;--	着地〜連続ビームヒット
SP_04=	156097	;--	着地〜連続ビームヒット
SP_05=	156098	;--	両手をかざす〜フィニッシュ爆発
SP_06=	156100	;--	両手をかざす〜フィニッシュ爆発

--エフェクト(てき)
SP_01x=	156093	;--	指先ビーム〜正面見下ろし	(敵)
SP_02x=	156095	;--	指先ビーム〜正面見下ろし	(敵)
SP_03x=	156096	;--	着地〜連続ビームヒット	
SP_04x=	156097	;--	着地〜連続ビームヒット	
SP_05x=	156099	;--	両手をかざす〜フィニッシュ爆発	(敵)
SP_06x=	156101	;--	両手をかざす〜フィニッシュ爆発	(敵)
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
-- 指先ビーム〜正面見下ろし
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 332, beam_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 332, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_f, 0 );
setEffRotateKey( spep_0 + 332, beam_f, 0 );
setEffAlphaKey( spep_0 + 0, beam_f, 255 );
setEffAlphaKey( spep_0 + 330, beam_f, 255 );
setEffAlphaKey( spep_0 + 331, beam_f, 255 );
setEffAlphaKey( spep_0 + 332, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 332, beam_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 332, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_b, 0 );
setEffRotateKey( spep_0 + 332, beam_b, 0 );
setEffAlphaKey( spep_0 + 0, beam_b, 255 );
setEffAlphaKey( spep_0 + 330, beam_b, 255 );
setEffAlphaKey( spep_0 + 331, beam_b, 255 );
setEffAlphaKey( spep_0 + 332, beam_b, 0 );

--SE
--腕あげる
SE001 =playSe( spep_0 + 12 , 1003 );
setSeVolumeByWorkId( spep_0 + 12 , SE001 , 50 );
setPitch( spep_0 + 12, SE001, -600 );
setTimeStretch( SE001, 0.66, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 336, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );

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


--敵の動き
setDisp( spep_0-3 + 82, 1, 1);
setDisp( spep_0-3 + 176, 1, 0);

changeAnime( spep_0-3 + 82, 1, 17);
changeAnime( spep_0-3 + 98, 1, 6);

a=30;

setMoveKey( spep_0-3 + 82, 1, 158-a, -280 , 0 );
setMoveKey( spep_0-3 + 97, 1, 158-a, -280 , 0 );

setMoveKey( spep_0-3 + 98, 1, 199.9-a, -278 , 0 );
setMoveKey( spep_0-3 + 100, 1, 191.2-a, -284.8 , 0 );
setMoveKey( spep_0-3 + 102, 1, 186.6-a, -280.1 , 0 );
setMoveKey( spep_0-3 + 104, 1, 201.5-a, -278.7 , 0 );
setMoveKey( spep_0-3 + 106, 1, 207.2-a, -266 , 0 );
setMoveKey( spep_0-3 + 108, 1, 191-a, -266.1 , 0 );
setMoveKey( spep_0-3 + 110, 1, 212-a, -277 , 0 );
setMoveKey( spep_0-3 + 112, 1, 201-a, -275.9 , 0 );
setMoveKey( spep_0-3 + 114, 1, 192.6-a, -290.8 , 0 );
setMoveKey( spep_0-3 + 116, 1, 211.4-a, -276.9 , 0 );
setMoveKey( spep_0-3 + 118, 1, 195.6-a, -290.2 , 0 );
setMoveKey( spep_0-3 + 120, 1, 198.5-a, -269 , 0 );
setMoveKey( spep_0-3 + 122, 1, 210.1-a, -274.1 , 0 );
setMoveKey( spep_0-3 + 124, 1, 205.7-a, -285.6 , 0 );
setMoveKey( spep_0-3 + 126, 1, 200.6-a, -274.4 , 0 );
setMoveKey( spep_0-3 + 128, 1, 199.9-a, -277.9 , 0 );
setMoveKey( spep_0-3 + 130, 1, 203.8-a, -273.3 , 0 );
setMoveKey( spep_0-3 + 132, 1, 190.7-a, -282.6 , 0 );
setMoveKey( spep_0-3 + 134, 1, 202.8-a, -281.4 , 0 );
setMoveKey( spep_0-3 + 136, 1, 207.1-a, -285.9 , 0 );
setMoveKey( spep_0-3 + 138, 1, 201.2-a, -279.7 , 0 );
setMoveKey( spep_0-3 + 140, 1, 207.6-a, -283.7 , 0 );
setMoveKey( spep_0-3 + 142, 1, 200.7-a, -276.7 , 0 );
setMoveKey( spep_0-3 + 144, 1, 192.1-a, -279.4 , 0 );
setMoveKey( spep_0-3 + 146, 1, 200.3-a, -281.3 , 0 );
setMoveKey( spep_0-3 + 148, 1, 201.4-a, -272.1 , 0 );
setMoveKey( spep_0-3 + 150, 1, 213.8-a, -277.3 , 0 );
setMoveKey( spep_0-3 + 152, 1, 199.8-a, -277.6 , 0 );
setMoveKey( spep_0-3 + 154, 1, 212.2-a, -281.8 , 0 );
setMoveKey( spep_0-3 + 156, 1, 199.7-a, -278.8 , 0 );
setMoveKey( spep_0-3 + 158, 1, 201.3-a, -277.6 , 0 );
setMoveKey( spep_0-3 + 160, 1, 201.2-a, -280.6 , 0 );
setMoveKey( spep_0-3 + 162, 1, 201.1-a, -283.5 , 0 );
setMoveKey( spep_0-3 + 164, 1, 201-a, -286.5 , 0 );
setMoveKey( spep_0-3 + 166, 1, 196.6-a, -276.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 207.4-a, -274.3 , 0 );
setMoveKey( spep_0-3 + 170, 1, 201.2-a, -277.5 , 0 );
setMoveKey( spep_0-3 + 172, 1, 204.3-a, -278.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 203-a, -280.2 , 0 );
setMoveKey( spep_0-3 + 176, 1, 201-a, -278.9 , 0 );

setScaleKey( spep_0-3 + 82, 1, 1.24, 1.24 );
setScaleKey( spep_0-3 + 176, 1, 1.24, 1.24 );

setRotateKey( spep_0-3 + 82, 1, 0 );
setRotateKey( spep_0-3 + 97, 1, 0 );
setRotateKey( spep_0-3 + 98, 1, 72.2 );
setRotateKey( spep_0-3 + 176, 1, 72.2 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+20+224  , 1504, 0x101, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+20+224  , 1505, 0x101, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0+20 +236, 190006, 72, 0x102, -1, 0, 180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0+20 +236,  ctgogo,   180,  510);
setEffMoveKey(  spep_0+20 +308,  ctgogo,   180,  510);

setEffAlphaKey( spep_0+20 +236, ctgogo, 0 );
setEffAlphaKey( spep_0+20 + 237, ctgogo, 255 );
setEffAlphaKey( spep_0+20 + 238, ctgogo, 255 );
setEffAlphaKey( spep_0+20 + 302, ctgogo, 255 );
setEffAlphaKey( spep_0+20 + 304, ctgogo, 191 );
setEffAlphaKey( spep_0+20 + 306, ctgogo, 112 );
setEffAlphaKey( spep_0+20 + 308, ctgogo, 64 );

setEffRotateKey(  spep_0+20 +236,  ctgogo,  0);
setEffRotateKey(  spep_0+20 +308,  ctgogo,  0);

setEffScaleKey(  spep_0+20 +236,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0+20 +298,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0+20 +308,  ctgogo, 1.07, 1.07 );

--SE
--気弾溜め
SE002 =playSe( spep_0 + 48 , 1281 );
setSeVolumeByWorkId( spep_0 + 48 , SE002 , 78 );
stopSe( spep_0 + 74, SE002, 14);

--気弾発射
SE003 =playSe( spep_0 + 74 , 1026 );
setSeVolumeByWorkId( spep_0 + 74 , SE003 , 0 );
setSeVolumeByWorkId( spep_0 + 75 , SE003 , 30 );
setSeVolumeByWorkId( spep_0 + 76 , SE003 , 60 );
setSeVolumeByWorkId( spep_0 + 77 , SE003 , 90 );
setSeVolumeByWorkId( spep_0 + 78 , SE003 , 120 );
setSeVolumeByWorkId( spep_0 + 79 , SE003 , 150 );
setSeVolumeByWorkId( spep_0 + 80 , SE003 , 178 );
setStartTimeMs( SE003,  283 );
SE004 =playSe( spep_0 + 72 , 1015 );
setSeVolumeByWorkId( spep_0 + 72 , SE004 , 56 );
SE005 =playSe( spep_0 + 72 , 1016 );

--爆発
SE006 =playSe( spep_0 + 102 , 1023 );
SE007 =playSe( spep_0 + 104 , 1033 );

--カメラ遷移
SE008 =playSe( spep_0 + 172 , 8 );
setSeVolumeByWorkId( spep_0 + 172 , SE008 , 60 );
setPitch( spep_0 + 172, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );

--カメラアップ
SE009 =playSe( spep_0 + 230 , 1072 );
setSeVolumeByWorkId( spep_0 + 230 , SE009 , 0 );
setSeVolumeByWorkId( spep_0 + 231 , SE009 , 17 );
setSeVolumeByWorkId( spep_0 + 232 , SE009 , 34 );
setSeVolumeByWorkId( spep_0 + 233 , SE009 , 51 );
setSeVolumeByWorkId( spep_0 + 234 , SE009 , 68 );
setSeVolumeByWorkId( spep_0 + 235 , SE009 , 85 );
setSeVolumeByWorkId( spep_0 + 236 , SE009 , 100 );
setStartTimeMs( SE009,  417 );

--顔カットイン
SE010 =playSe( spep_0 + 256 , 1018 );

--次の準備
spep_1=spep_0+332;
------------------------------------------------------
-- 着地〜連続ビームヒット
------------------------------------------------------
-- ** エフェクト等 ** --
landing_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, landing_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 260, landing_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, landing_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 260, landing_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, landing_f, 0 );
setEffRotateKey( spep_1 + 260, landing_f, 0 );
setEffAlphaKey( spep_1 + 0, landing_f, 255 );
setEffAlphaKey( spep_1 + 260, landing_f, 255 );

-- ** エフェクト等 ** --
landing_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, landing_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 260, landing_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, landing_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 260, landing_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, landing_b, 0 );
setEffRotateKey( spep_1 + 260, landing_b, 0 );
setEffAlphaKey( spep_1 + 0, landing_b, 255 );
setEffAlphaKey( spep_1 + 260, landing_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 79, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 6, -22.1 , 0 );
setMoveKey( spep_1 + 79, 1, 6, -22.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 79, 1, 0.48, 0.48 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 79, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 168, 1, 1 );
setDisp( spep_1 + 258, 1, 0 );

changeAnime( spep_1-3 + 168, 1, 5 );

setMoveKey( spep_1-3 + 168, 1, -43.5, 63 , 0 );
setMoveKey( spep_1-3 + 170, 1, -1, 95.4 , 0 );
setMoveKey( spep_1-3 + 172, 1, -34.3, 15.4 , 0 );
setMoveKey( spep_1-3 + 174, 1, -85.8, 37.5 , 0 );
setMoveKey( spep_1-3 + 176, 1, -45.3, 36.4 , 0 );
setMoveKey( spep_1-3 + 178, 1, 1.8, 65.2 , 0 );
setMoveKey( spep_1-3 + 180, 1, -38.5, 4.5 , 0 );
setMoveKey( spep_1-3 + 182, 1, -68.8, 35.8 , 0 );
setMoveKey( spep_1-3 + 184, 1, -22.6, 26.2 , 0 );
setMoveKey( spep_1-3 + 186, 1, -0.6, 56.4 , 0 );
setMoveKey( spep_1-3 + 188, 1, -20.9, -9.1 , 0 );
setMoveKey( spep_1-3 + 190, 1, -57.5, 2.2 , 0 );
setMoveKey( spep_1-3 + 192, 1, -4.2, 18.7 , 0 );
setMoveKey( spep_1-3 + 194, 1, 19.5, 17.8 , 0 );
setMoveKey( spep_1-3 + 196, 1, -14.8, -18.6 , 0 );
setMoveKey( spep_1-3 + 198, 1, -44.1, 7.6 , 0 );
setMoveKey( spep_1-3 + 200, 1, -28.7, 4.3 , 0 );
setMoveKey( spep_1-3 + 202, 1, 9.5, 11.1 , 0 );
setMoveKey( spep_1-3 + 204, 1, -25.6, -21.1 , 0 );
setMoveKey( spep_1-3 + 206, 1, -23.4, 6.7 , 0 );
setMoveKey( spep_1-3 + 208, 1, -5.8, -5.8 , 0 );
setMoveKey( spep_1-3 + 210, 1, 18.6, 3.9 , 0 );
setMoveKey( spep_1-3 + 212, 1, 1.5, -21 , 0 );
setMoveKey( spep_1-3 + 214, 1, -30.9, -8.8 , 0 );
setMoveKey( spep_1-3 + 216, 1, 4.9, -10.6 , 0 );
setMoveKey( spep_1-3 + 218, 1, 16.6, 6.6 , 0 );
setMoveKey( spep_1-3 + 220, 1, -2.2, -28.5 , 0 );
setMoveKey( spep_1-3 + 222, 1, -38.5, -24.2 , 0 );
setMoveKey( spep_1-3 + 224, 1, -3, -2.2 , 0 );
setMoveKey( spep_1-3 + 226, 1, 24.6, 0.9 , 0 );
setMoveKey( spep_1-3 + 228, 1, -3.2, -30.1 , 0 );
setMoveKey( spep_1-3 + 230, 1, -19, -13.1 , 0 );
setMoveKey( spep_1-3 + 232, 1, -2.2, -16.6 , 0 );
setMoveKey( spep_1-3 + 234, 1, 26.9, -6.7 , 0 );
setMoveKey( spep_1-3 + 236, 1, 10.4, -30.8 , 0 );
setMoveKey( spep_1-3 + 238, 1, -17.6, -2 , 0 );
setMoveKey( spep_1-3 + 240, 1, 2.4, -0.9 , 0 );
setMoveKey( spep_1-3 + 242, 1, 0.5, -7.9 , 0 );
setMoveKey( spep_1-3 + 244, 1, -10, -37.1 , 0 );
setMoveKey( spep_1-3 + 246, 1, -13.6, -19.9 , 0 );
setMoveKey( spep_1-3 + 248, 1, 1.9, -17.9 , 0 );
setMoveKey( spep_1-3 + 250, 1, 8, -8.6 , 0 );
setMoveKey( spep_1-3 + 252, 1, -12.5, -26.8 , 0 );
setMoveKey( spep_1-3 + 254, 1, -21.8, -22.7 , 0 );
setMoveKey( spep_1-3 + 256, 1, -3.2, -14.9 , 0 );
setMoveKey( spep_1 + 258, 1, 3.7, -3.3 , 0 );

setScaleKey( spep_1-3 + 168, 1, 3.53, 3.53 );
setScaleKey( spep_1-3 + 170, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 172, 1, 3.24, 3.24 );
setScaleKey( spep_1-3 + 174, 1, 3.1, 3.1 );
setScaleKey( spep_1-3 + 176, 1, 2.96, 2.96 );
setScaleKey( spep_1-3 + 178, 1, 2.83, 2.83 );
setScaleKey( spep_1-3 + 180, 1, 2.7, 2.7 );
setScaleKey( spep_1-3 + 182, 1, 2.58, 2.58 );
setScaleKey( spep_1-3 + 184, 1, 2.46, 2.46 );
setScaleKey( spep_1-3 + 186, 1, 2.35, 2.35 );
setScaleKey( spep_1-3 + 188, 1, 2.25, 2.25 );
setScaleKey( spep_1-3 + 190, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 192, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 194, 1, 1.99, 1.99 );
setScaleKey( spep_1-3 + 196, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 198, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 200, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 202, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 204, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 206, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 208, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 210, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 212, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 214, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 216, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 218, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 220, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 222, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 224, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 226, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 228, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 230, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 232, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 234, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 236, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 238, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 240, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 242, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 244, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 246, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 250, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 252, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 258, 1, 1.18, 1.18 );

setRotateKey( spep_1-3 + 168, 1, 31.7 );
setRotateKey( spep_1 + 258, 1, 31.7 );

--SE
--着地
SE011 =playSe( spep_1-10 + 24 , 63 );
setSeVolumeByWorkId( spep_1-10 + 24 , SE011 , 0 );
setSeVolumeByWorkId( spep_1-10 + 25 , SE011 , 5 );
setSeVolumeByWorkId( spep_1-10 + 26 , SE011 , 10 );
setSeVolumeByWorkId( spep_1-10 + 27 , SE011 , 15 );
setSeVolumeByWorkId( spep_1-10 + 28 , SE011 , 20 );
setSeVolumeByWorkId( spep_1-10 + 29 , SE011 , 25 );
setSeVolumeByWorkId( spep_1-10 + 30 , SE011 , 32 );
setStartTimeMs( SE011,  350 );
stopSe( spep_1-10 + 42, SE011, 8);
SE012 =playSe( spep_1-10 + 36 , 1135 );
setSeVolumeByWorkId( spep_1-10 + 36 , SE012 , 65 );
SE013 =playSe( spep_1-10 + 38 , 1153 );
setSeVolumeByWorkId( spep_1-10 + 38 , SE013 , 23 );
stopSe( spep_1-10 + 46, SE013, 15);
SE014 =playSe( spep_1-10 + 46 , 1116 );
setSeVolumeByWorkId( spep_1-10 + 46 , SE014 , 15 );
setPitch( spep_1-10 + 46, SE014, -500 );
setTimeStretch( SE014, 0.67, 10, 1 );
stopSe( spep_1-10 + 66, SE014, 26);

--気弾連射
SE015 =playSe( spep_1 + 120 , 1026 );
setSeVolumeByWorkId( spep_1 + 120 , SE015 , 0 );
setSeVolumeByWorkId( spep_1 + 121 , SE015 , 4 );
setSeVolumeByWorkId( spep_1 + 122 , SE015 , 8 );
setSeVolumeByWorkId( spep_1 + 123 , SE015 , 12 );
setSeVolumeByWorkId( spep_1 + 124 , SE015 , 16 );
setSeVolumeByWorkId( spep_1 + 125 , SE015 , 20 );
setSeVolumeByWorkId( spep_1 + 126 , SE015 , 24 );
setSeVolumeByWorkId( spep_1 + 127 , SE015 , 28 );
setSeVolumeByWorkId( spep_1 + 128 , SE015 , 32 );
setStartTimeMs( SE015,  267 );
SE016 =playSe( spep_1 + 112 , 1021 );
setSeVolumeByWorkId( spep_1 + 112 , SE016 , 84 );
SE017 =playSe( spep_1 + 112 , 1015 );
setSeVolumeByWorkId( spep_1 + 112 , SE017 , 52 );
stopSe( spep_1 + 132 , SE017, 0);
SE018 =playSe( spep_1 + 112 , 1016 );
stopSe( spep_1 + 124 , SE018, 0);
SE019 =playSe( spep_1 + 132 , 1026 );
setSeVolumeByWorkId( spep_1 + 132 , SE019 , 0 );
setSeVolumeByWorkId( spep_1 + 133 , SE019 , 10 );
setSeVolumeByWorkId( spep_1 + 134 , SE019 , 20 );
setSeVolumeByWorkId( spep_1 + 135 , SE019 , 30 );
setSeVolumeByWorkId( spep_1 + 136 , SE019 , 40 );
setSeVolumeByWorkId( spep_1 + 137 , SE019 , 50 );
setSeVolumeByWorkId( spep_1 + 138 , SE019 , 62 );
setStartTimeMs( SE019,  283 );
SE020 =playSe( spep_1 + 132 , 1026 );
setSeVolumeByWorkId( spep_1 + 132 , SE020 , 0 );
setSeVolumeByWorkId( spep_1 + 133 , SE020 , 11 );
setSeVolumeByWorkId( spep_1 + 134 , SE020 , 22 );
setSeVolumeByWorkId( spep_1 + 135 , SE020 , 33 );
setSeVolumeByWorkId( spep_1 + 136 , SE020 , 44 );
setSeVolumeByWorkId( spep_1 + 137 , SE020 , 55 );
setSeVolumeByWorkId( spep_1 + 138 , SE020 , 64 );
setStartTimeMs( SE020,  283 );
SE021 =playSe( spep_1 + 122 , 1015 );
stopSe( spep_1 + 142 , SE021, 0);
SE022 =playSe( spep_1 + 122 , 1016 );
stopSe( spep_1 + 136 , SE022, 0);
SE023 =playSe( spep_1 + 144 , 1026 );
setSeVolumeByWorkId( spep_1 + 144 , SE023 , 0 );
setSeVolumeByWorkId( spep_1 + 145 , SE023 , 17 );
setSeVolumeByWorkId( spep_1 + 146 , SE023 , 34 );
setSeVolumeByWorkId( spep_1 + 147 , SE023 , 51 );
setSeVolumeByWorkId( spep_1 + 148 , SE023 , 78 );
setSeVolumeByWorkId( spep_1 + 149 , SE023 , 85 );
setSeVolumeByWorkId( spep_1 + 150 , SE023 , 100 );
setStartTimeMs( SE023,  283 );
SE024 =playSe( spep_1 + 128 , 1015 );
setSeVolumeByWorkId( spep_1 + 128 , SE024 , 51 );
stopSe( spep_1 + 148 , SE024, 0);
SE025 =playSe( spep_1 + 128 , 1016 );
SE026 =playSe( spep_1 + 140 , 1015 );
setSeVolumeByWorkId( spep_1 + 140 , SE026 , 54 );
stopSe( spep_1 + 158 , SE026, 0);
SE027 =playSe( spep_1 + 140 , 1016 );
SE028 =playSe( spep_1 + 156 , 1026 );
setSeVolumeByWorkId( spep_1 + 156 , SE028 , 0 );
setSeVolumeByWorkId( spep_1 + 157 , SE028 , 13 );
setSeVolumeByWorkId( spep_1 + 158 , SE028 , 26 );
setSeVolumeByWorkId( spep_1 + 159 , SE028 , 39 );
setSeVolumeByWorkId( spep_1 + 160 , SE028 , 52 );
setSeVolumeByWorkId( spep_1 + 161 , SE028 , 65 );
setSeVolumeByWorkId( spep_1 + 162 , SE028 , 78 );
setSeVolumeByWorkId( spep_1 + 163 , SE028 , 86 );
setSeVolumeByWorkId( spep_1 + 164 , SE028 , 100 );
setStartTimeMs( SE028,  267 );
SE029 =playSe( spep_1 + 162 , 1026 );
setSeVolumeByWorkId( spep_1 + 162 , SE029 , 0 );
setSeVolumeByWorkId( spep_1 + 163 , SE029 , 17 );
setSeVolumeByWorkId( spep_1 + 164 , SE029 , 34 );
setSeVolumeByWorkId( spep_1 + 165 , SE029 , 51 );
setSeVolumeByWorkId( spep_1 + 166 , SE029 , 78 );
setSeVolumeByWorkId( spep_1 + 167 , SE029 , 85 );
setSeVolumeByWorkId( spep_1 + 168 , SE029 , 100 );
setStartTimeMs( SE029,  283 );
SE030 =playSe( spep_1 + 148 , 1015 );
setSeVolumeByWorkId( spep_1 + 148 , SE030 , 61 );
stopSe( spep_1 + 162 , SE030, 0);
SE031 =playSe( spep_1 + 148 , 1016 );
SE032 =playSe( spep_1 + 158 , 1015 );
setSeVolumeByWorkId( spep_1 + 158 , SE032 , 56 );
stopSe( spep_1 + 178 , SE032, 0);
SE033 =playSe( spep_1 + 158 , 1016 );

--気弾弾道
SE034 =playSe( spep_1 + 174 , 1016 );
setSeVolumeByWorkId( spep_1 + 174 , SE034 , 71 );
--SE036 =playSe( spep_1 + 180 , 1016 );
--setSeVolumeByWorkId( spep_1 + 180 , SE036 , 65 );
SE038 =playSe( spep_1 + 188 , 1016 );
setSeVolumeByWorkId( spep_1 + 188 , SE038 , 77 );
--SE040 =playSe( spep_1 + 196 , 1016 );
--setSeVolumeByWorkId( spep_1 + 196 , SE040 , 50 );
SE042 =playSe( spep_1 + 204 , 1016 );
setSeVolumeByWorkId( spep_1 + 204 , SE042 , 52 );
--SE044 =playSe( spep_1 + 212 , 1016 );
--setSeVolumeByWorkId( spep_1 + 212 , SE044 , 69 );
SE046 =playSe( spep_1 + 218 , 1016 );
setSeVolumeByWorkId( spep_1 + 218 , SE046 , 89 );
--SE048 =playSe( spep_1 + 226 , 1016 );
--setSeVolumeByWorkId( spep_1 + 226 , SE048 , 62 );
SE049 =playSe( spep_1 + 234 , 1016 );
setSeVolumeByWorkId( spep_1 + 234 , SE049 , 65 );
--SE051 =playSe( spep_1 + 240 , 1016 );
--setSeVolumeByWorkId( spep_1 + 240 , SE051 , 79 );
SE052 =playSe( spep_1 + 248 , 1016 );
setSeVolumeByWorkId( spep_1 + 248 , SE052 , 50 );

--連続爆発
SE035 =playSe( spep_1 + 174 , 1023 );
setSeVolumeByWorkId( spep_1 + 174 , SE035 , 86 );
stopSe( spep_1 + 186, SE035, 20);
SE037 =playSe( spep_1 + 182 , 1023 );
setSeVolumeByWorkId( spep_1 + 182 , SE037 , 84 );
stopSe( spep_1 + 196, SE037, 25);
SE039 =playSe( spep_1 + 192 , 1023 );
setSeVolumeByWorkId( spep_1 + 192 , SE039 , 89 );
stopSe( spep_1 + 212, SE039, 26);
SE041 =playSe( spep_1 + 198 , 1023 );
stopSe( spep_1 + 226, SE041, 28);
SE043 =playSe( spep_1 + 208 , 1024 );
setSeVolumeByWorkId( spep_1 + 208 , SE043 , 45 );
SE045 =playSe( spep_1 + 212 , 1023 );
setSeVolumeByWorkId( spep_1 + 212 , SE045 , 89 );
stopSe( spep_1 + 230, SE045, 28);
SE047 =playSe( spep_1 + 222 , 1023 );
setSeVolumeByWorkId( spep_1 + 222 , SE047 , 89 );
stopSe( spep_1 + 238, SE047, 30);
SE050 =playSe( spep_1 + 234 , 1023 );
stopSe( spep_1 + 252, SE050, 16);

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 260, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--白フェード
entryFade( spep_1+252 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+260;
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

--気弾弾道
stopSe( spep_2 + 2 , SE049, 0);
--stopSe( spep_2 + 2 , SE051, 0);
stopSe( spep_2 + 2 , SE052, 0);

--連続爆発
stopSe( spep_2 + 0 , SE043, 0);

--白フェード
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 指先ビーム〜正面見下ろし
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 384, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 384, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 384, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 384, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 384, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 384, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 384, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 384, finish_b, 255 );

--敵の動き
setDisp( spep_3-3 + 208, 1, 1 );
setDisp( spep_3-3 + 262, 1, 0 );

changeAnime( spep_3-3 + 208, 1, 106 );

setBlendColor(spep_3-3 + 242,1,1,1,1,1,0.1);
setBlendColor(spep_3-3 + 244,1,1,1,1,1,0.3);
setBlendColor(spep_3-3 + 248,1,1,1,1,1,0.5);
setBlendColor(spep_3-3 + 250,1,1,1,1,1,0.7);
setBlendColor(spep_3-3 + 254,1,1,1,1,1,0.9);
setBlendColor(spep_3-3 + 258,1,1,1,1,1,1);
setBlendColor(spep_3-3 + 262,1,1,1,1,1,1);
setBlendColor(spep_3-3 + 264,1,1,1,1,1,0);

setMoveKey( spep_3-3 + 208, 1, 652.6, 5.8 , 0 );
setMoveKey( spep_3-3 + 210, 1, 504.8, 23.8 , 0 );
setMoveKey( spep_3-3 + 212, 1, 342.6, 27.6 , 0 );
setMoveKey( spep_3-3 + 214, 1, 171.8, 42.1 , 0 );
setMoveKey( spep_3-3 + 216, 1, 14, 38 , 0 );
setMoveKey( spep_3-3 + 218, 1, -11.1, 31.5 , 0 );
setMoveKey( spep_3-3 + 220, 1, -22.4, 44.6 , 0 );
setMoveKey( spep_3-3 + 222, 1, -70.1, 37.8 , 0 );
setMoveKey( spep_3-3 + 224, 1, -48.6, 64.7 , 0 );
setMoveKey( spep_3-3 + 226, 1, -20.6, 28 , 0 );
setMoveKey( spep_3-3 + 228, 1, -32, 27.9 , 0 );
setMoveKey( spep_3-3 + 230, 1, 0.9, 38.2 , 0 );
setMoveKey( spep_3-3 + 232, 1, 17, 57.8 , 0 );
setMoveKey( spep_3-3 + 234, 1, 37.1, 22.7 , 0 );
setMoveKey( spep_3-3 + 236, 1, 23.4, 24.1 , 0 );
setMoveKey( spep_3-3 + 238, 1, 64, 31.8 , 0 );
setMoveKey( spep_3-3 + 240, 1, 76.8, 64.8 , 0 );
setMoveKey( spep_3-3 + 242, 1, 90.6, 25.7 , 0 );
setMoveKey( spep_3-3 + 244, 1, 82.9, 25.6 , 0 );
setMoveKey( spep_3-3 + 246, 1, 129.7, 49.6 , 0 );
setMoveKey( spep_3-3 + 248, 1, 146.8, 68.1 , 0 );
setMoveKey( spep_3-3 + 250, 1, 154, 18.2 , 0 );
setMoveKey( spep_3-3 + 252, 1, 129.2, 26 , 0 );
setMoveKey( spep_3-3 + 254, 1, 190.4, 32.9 , 0 );
setMoveKey( spep_3-3 + 256, 1, 199.4, 72.6 , 0 );
setMoveKey( spep_3-3 + 258, 1, 206.1, 31.4 , 0 );
setMoveKey( spep_3-3 + 260, 1, 206.8, 30.7 , 0 );
setMoveKey( spep_3-3 + 262, 1, 240.8, -74.5 , 0 );

setScaleKey( spep_3-3 + 208, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 221, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 222, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 262, 1, 1.57, 1.57 );

setRotateKey( spep_3-3 + 208, 1, -40 );
setRotateKey( spep_3-3 + 210, 1, -38.9 );
setRotateKey( spep_3-3 + 212, 1, -37.8 );
setRotateKey( spep_3-3 + 214, 1, -36.8 );
setRotateKey( spep_3-3 + 216, 1, -35.7 );
setRotateKey( spep_3-3 + 221, 1, -35.7 );
setRotateKey( spep_3-3 + 222, 1, -7.8 );
setRotateKey( spep_3-3 + 262, 1, -7.8 );

--SE
--腕あげる
SE054 =playSe( spep_3 + 22 , 1003 );

--気弾溜める
SE055 =playSe( spep_3 + 44 , 1281 );
SE056 =playSe( spep_3 + 44 , 1282 );
setSeVolumeByWorkId( spep_3 + 44 , SE056 , 48 );
SE057 =playSe( spep_3 + 44 , 1161 );
setSeVolumeByWorkId( spep_3 + 44 , SE057 , 0 );
setSeVolumeByWorkId( spep_3 + 45,SE057,1.1);
setSeVolumeByWorkId( spep_3 + 46,SE057,2.2);
setSeVolumeByWorkId( spep_3 + 47,SE057,3.3);
setSeVolumeByWorkId( spep_3 + 48,SE057,4.4);
setSeVolumeByWorkId( spep_3 + 49,SE057,5.5);
setSeVolumeByWorkId( spep_3 + 50,SE057,6.6);
setSeVolumeByWorkId( spep_3 + 51,SE057,7.7);
setSeVolumeByWorkId( spep_3 + 52,SE057,8.8);
setSeVolumeByWorkId( spep_3 + 53,SE057,9.9);
setSeVolumeByWorkId( spep_3 + 54,SE057,11);
setSeVolumeByWorkId( spep_3 + 55,SE057,12.1);
setSeVolumeByWorkId( spep_3 + 56,SE057,13.2);
setSeVolumeByWorkId( spep_3 + 57,SE057,14.3);
setSeVolumeByWorkId( spep_3 + 58,SE057,15.4);
setSeVolumeByWorkId( spep_3 + 59,SE057,16.5);
setSeVolumeByWorkId( spep_3 + 60,SE057,17.6);
setSeVolumeByWorkId( spep_3 + 61,SE057,18.7);
setSeVolumeByWorkId( spep_3 + 62,SE057,19.8);
setSeVolumeByWorkId( spep_3 + 63,SE057,20.9);
setSeVolumeByWorkId( spep_3 + 64,SE057,22);
setSeVolumeByWorkId( spep_3 + 65,SE057,23.1);
setSeVolumeByWorkId( spep_3 + 66,SE057,24.2);
setSeVolumeByWorkId( spep_3 + 67,SE057,25.3);
setSeVolumeByWorkId( spep_3 + 68,SE057,26.4);
setSeVolumeByWorkId( spep_3 + 69,SE057,27.5);
setSeVolumeByWorkId( spep_3 + 70,SE057,28.6);
setSeVolumeByWorkId( spep_3 + 71,SE057,29.7);
setSeVolumeByWorkId( spep_3 + 72,SE057,30.8);
setSeVolumeByWorkId( spep_3 + 73,SE057,31.9);
setSeVolumeByWorkId( spep_3 + 74,SE057,33);
setSeVolumeByWorkId( spep_3 + 75,SE057,34.1);
setSeVolumeByWorkId( spep_3 + 76,SE057,35.2);
setSeVolumeByWorkId( spep_3 + 77,SE057,36.3);
setSeVolumeByWorkId( spep_3 + 78,SE057,37);
SE058 =playSe( spep_3 + 48 , 1248 );
setSeVolumeByWorkId( spep_3 + 48 , SE058 , 18 );

--気弾発射
SE059 =playSe( spep_3 + 118 , 1256 );
SE060 =playSe( spep_3 + 118 , 1027 );
setSeVolumeByWorkId( spep_3 + 118 , SE060 , 89 );
SE061 =playSe( spep_3 + 118 , 1026 );
setSeVolumeByWorkId( spep_3 + 118 , SE061 , 123 );
SE063 =playSe( spep_3 + 118 , 1254 );
setSeVolumeByWorkId( spep_3 + 118 , SE063 , 46 );
setPitch( spep_3 + 118, SE063, -300 );
setTimeStretch( SE063, 0.8, 10, 1 );

--気弾道
SE062 =playSe( spep_3 + 118 , 1212 );
setSeVolumeByWorkId( spep_3 + 118 , SE062 , 0 );
setSeVolumeByWorkId( spep_3 + 118,SE062,0);
setSeVolumeByWorkId( spep_3 + 119,SE062,1);
setSeVolumeByWorkId( spep_3 + 120,SE062,2);
setSeVolumeByWorkId( spep_3 + 121,SE062,3);
setSeVolumeByWorkId( spep_3 + 122,SE062,4);
setSeVolumeByWorkId( spep_3 + 123,SE062,5);
setSeVolumeByWorkId( spep_3 + 124,SE062,6);
setSeVolumeByWorkId( spep_3 + 125,SE062,7);
setSeVolumeByWorkId( spep_3 + 126,SE062,8);
setSeVolumeByWorkId( spep_3 + 127,SE062,9);
setSeVolumeByWorkId( spep_3 + 128,SE062,10);
setSeVolumeByWorkId( spep_3 + 129,SE062,11);
setSeVolumeByWorkId( spep_3 + 130,SE062,12);
setSeVolumeByWorkId( spep_3 + 131,SE062,13);
setSeVolumeByWorkId( spep_3 + 132,SE062,14);
setSeVolumeByWorkId( spep_3 + 133,SE062,15);
setSeVolumeByWorkId( spep_3 + 134,SE062,16);
setSeVolumeByWorkId( spep_3 + 135,SE062,17);
setSeVolumeByWorkId( spep_3 + 136,SE062,18);
setSeVolumeByWorkId( spep_3 + 137,SE062,19);
setSeVolumeByWorkId( spep_3 + 138,SE062,20);
setSeVolumeByWorkId( spep_3 + 139,SE062,21);
setSeVolumeByWorkId( spep_3 + 140,SE062,22);
setSeVolumeByWorkId( spep_3 + 141,SE062,23);
setSeVolumeByWorkId( spep_3 + 142,SE062,24);
setSeVolumeByWorkId( spep_3 + 143,SE062,25);
setSeVolumeByWorkId( spep_3 + 144,SE062,26);
setSeVolumeByWorkId( spep_3 + 145,SE062,27);
setSeVolumeByWorkId( spep_3 + 146,SE062,28);
setSeVolumeByWorkId( spep_3 + 147,SE062,29);
setSeVolumeByWorkId( spep_3 + 148,SE062,30);
setSeVolumeByWorkId( spep_3 + 149,SE062,31);
setSeVolumeByWorkId( spep_3 + 150,SE062,32);
setSeVolumeByWorkId( spep_3 + 151,SE062,33);
setSeVolumeByWorkId( spep_3 + 152,SE062,34);
setSeVolumeByWorkId( spep_3 + 153,SE062,35);
setSeVolumeByWorkId( spep_3 + 154,SE062,36);
setSeVolumeByWorkId( spep_3 + 155,SE062,37);
setSeVolumeByWorkId( spep_3 + 156,SE062,38);
setSeVolumeByWorkId( spep_3 + 157,SE062,39);
setSeVolumeByWorkId( spep_3 + 158,SE062,40);
setSeVolumeByWorkId( spep_3 + 159,SE062,41);
setSeVolumeByWorkId( spep_3 + 160,SE062,42);
setSeVolumeByWorkId( spep_3 + 161,SE062,43);
setSeVolumeByWorkId( spep_3 + 162,SE062,44);
setSeVolumeByWorkId( spep_3 + 163,SE062,45);
setSeVolumeByWorkId( spep_3 + 164,SE062,46);
stopSe( spep_3 + 220, SE062, 22);
SE064 =playSe( spep_3 + 134 , 1227 );
setSeVolumeByWorkId( spep_3 + 134 , SE064 , 180 );
stopSe( spep_3 + 224, SE064, 18);

--気弾当たって弾ける
SE065 =playSe( spep_3 + 212 , 1026 );
setSeVolumeByWorkId( spep_3 + 212 , SE065 , 116 );
setPitch( spep_3 + 212, SE065, 500 );
setTimeStretch( SE065, 1.33, 10, 1 );
SE066 =playSe( spep_3 + 212 , 1256 );
setSeVolumeByWorkId( spep_3 + 212 , SE066 , 160 );
setTimeStretch( SE066, 1.25, 10, 1 );
SE067 =playSe( spep_3 + 212 , 1262 );
setSeVolumeByWorkId( spep_3 + 212 , SE067 , 71 );
setPitch( spep_3 + 212, SE067, 700 );
setTimeStretch( SE067, 1.47, 10, 1 );
stopSe( spep_3 + 252, SE067, 36);

--爆発
SE068 =playSe( spep_3 + 272 , 1023 );
setSeVolumeByWorkId( spep_3 + 272 , SE068 , 75 );
SE069 =playSe( spep_3 + 272 , 1188 );
setSeVolumeByWorkId( spep_3 + 272 , SE069 , 81 );
SE070 =playSe( spep_3 + 272 , 1159 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 270, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--終わり
dealDamage( spep_3 +280 );
endPhase( spep_3 + 370 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 指先ビーム〜正面見下ろし
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 332, beam_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 332, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_f, 0 );
setEffRotateKey( spep_0 + 332, beam_f, 0 );
setEffAlphaKey( spep_0 + 0, beam_f, 255 );
setEffAlphaKey( spep_0 + 330, beam_f, 255 );
setEffAlphaKey( spep_0 + 331, beam_f, 255 );
setEffAlphaKey( spep_0 + 332, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 332, beam_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 332, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_b, 0 );
setEffRotateKey( spep_0 + 332, beam_b, 0 );
setEffAlphaKey( spep_0 + 0, beam_b, 255 );
setEffAlphaKey( spep_0 + 330, beam_b, 255 );
setEffAlphaKey( spep_0 + 331, beam_b, 255 );
setEffAlphaKey( spep_0 + 332, beam_b, 0 );

--SE
--腕あげる
SE001 =playSe( spep_0 + 12 , 1003 );
setSeVolumeByWorkId( spep_0 + 12 , SE001 , 50 );
setPitch( spep_0 + 12, SE001, -600 );
setTimeStretch( SE001, 0.66, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 336, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );

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


--敵の動き
setDisp( spep_0-3 + 82, 1, 1);
setDisp( spep_0-3 + 176, 1, 0);

changeAnime( spep_0-3 + 82, 1, 17);
changeAnime( spep_0-3 + 98, 1, 6);

a=30;

setMoveKey( spep_0-3 + 82, 1, 158-a, -280 , 0 );
setMoveKey( spep_0-3 + 97, 1, 158-a, -280 , 0 );

setMoveKey( spep_0-3 + 98, 1, 199.9-a, -278 , 0 );
setMoveKey( spep_0-3 + 100, 1, 191.2-a, -284.8 , 0 );
setMoveKey( spep_0-3 + 102, 1, 186.6-a, -280.1 , 0 );
setMoveKey( spep_0-3 + 104, 1, 201.5-a, -278.7 , 0 );
setMoveKey( spep_0-3 + 106, 1, 207.2-a, -266 , 0 );
setMoveKey( spep_0-3 + 108, 1, 191-a, -266.1 , 0 );
setMoveKey( spep_0-3 + 110, 1, 212-a, -277 , 0 );
setMoveKey( spep_0-3 + 112, 1, 201-a, -275.9 , 0 );
setMoveKey( spep_0-3 + 114, 1, 192.6-a, -290.8 , 0 );
setMoveKey( spep_0-3 + 116, 1, 211.4-a, -276.9 , 0 );
setMoveKey( spep_0-3 + 118, 1, 195.6-a, -290.2 , 0 );
setMoveKey( spep_0-3 + 120, 1, 198.5-a, -269 , 0 );
setMoveKey( spep_0-3 + 122, 1, 210.1-a, -274.1 , 0 );
setMoveKey( spep_0-3 + 124, 1, 205.7-a, -285.6 , 0 );
setMoveKey( spep_0-3 + 126, 1, 200.6-a, -274.4 , 0 );
setMoveKey( spep_0-3 + 128, 1, 199.9-a, -277.9 , 0 );
setMoveKey( spep_0-3 + 130, 1, 203.8-a, -273.3 , 0 );
setMoveKey( spep_0-3 + 132, 1, 190.7-a, -282.6 , 0 );
setMoveKey( spep_0-3 + 134, 1, 202.8-a, -281.4 , 0 );
setMoveKey( spep_0-3 + 136, 1, 207.1-a, -285.9 , 0 );
setMoveKey( spep_0-3 + 138, 1, 201.2-a, -279.7 , 0 );
setMoveKey( spep_0-3 + 140, 1, 207.6-a, -283.7 , 0 );
setMoveKey( spep_0-3 + 142, 1, 200.7-a, -276.7 , 0 );
setMoveKey( spep_0-3 + 144, 1, 192.1-a, -279.4 , 0 );
setMoveKey( spep_0-3 + 146, 1, 200.3-a, -281.3 , 0 );
setMoveKey( spep_0-3 + 148, 1, 201.4-a, -272.1 , 0 );
setMoveKey( spep_0-3 + 150, 1, 213.8-a, -277.3 , 0 );
setMoveKey( spep_0-3 + 152, 1, 199.8-a, -277.6 , 0 );
setMoveKey( spep_0-3 + 154, 1, 212.2-a, -281.8 , 0 );
setMoveKey( spep_0-3 + 156, 1, 199.7-a, -278.8 , 0 );
setMoveKey( spep_0-3 + 158, 1, 201.3-a, -277.6 , 0 );
setMoveKey( spep_0-3 + 160, 1, 201.2-a, -280.6 , 0 );
setMoveKey( spep_0-3 + 162, 1, 201.1-a, -283.5 , 0 );
setMoveKey( spep_0-3 + 164, 1, 201-a, -286.5 , 0 );
setMoveKey( spep_0-3 + 166, 1, 196.6-a, -276.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 207.4-a, -274.3 , 0 );
setMoveKey( spep_0-3 + 170, 1, 201.2-a, -277.5 , 0 );
setMoveKey( spep_0-3 + 172, 1, 204.3-a, -278.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 203-a, -280.2 , 0 );
setMoveKey( spep_0-3 + 176, 1, 201-a, -278.9 , 0 );

setScaleKey( spep_0-3 + 82, 1, 1.24, 1.24 );
setScaleKey( spep_0-3 + 176, 1, 1.24, 1.24 );

setRotateKey( spep_0-3 + 82, 1, 0 );
setRotateKey( spep_0-3 + 97, 1, 0 );
setRotateKey( spep_0-3 + 98, 1, 72.2 );
setRotateKey( spep_0-3 + 176, 1, 72.2 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+224  , 1504, 0x101, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+224  , 1505, 0x101, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0+20 +236, 190006, 72, 0x102, -1, 0, 180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0+20 +236,  ctgogo,   180,  510);
setEffMoveKey(  spep_0+20 +308,  ctgogo,   180,  510);

setEffAlphaKey( spep_0+20 +236, ctgogo, 0 );
setEffAlphaKey( spep_0+20 + 237, ctgogo, 255 );
setEffAlphaKey( spep_0+20 + 238, ctgogo, 255 );
setEffAlphaKey( spep_0+20 + 302, ctgogo, 255 );
setEffAlphaKey( spep_0+20 + 304, ctgogo, 191 );
setEffAlphaKey( spep_0+20 + 306, ctgogo, 112 );
setEffAlphaKey( spep_0+20 + 308, ctgogo, 64 );

setEffRotateKey(  spep_0+20 +236,  ctgogo,  0);
setEffRotateKey(  spep_0+20 +308,  ctgogo,  0);

setEffScaleKey(  spep_0+20 +236,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0+20 +298,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0+20 +308,  ctgogo, -1.07, 1.07 );

--SE
--気弾溜め
SE002 =playSe( spep_0 + 48 , 1281 );
setSeVolumeByWorkId( spep_0 + 48 , SE002 , 78 );
stopSe( spep_0 + 74, SE002, 14);

--気弾発射
SE003 =playSe( spep_0 + 74 , 1026 );
setSeVolumeByWorkId( spep_0 + 74 , SE003 , 0 );
setSeVolumeByWorkId( spep_0 + 75 , SE003 , 30 );
setSeVolumeByWorkId( spep_0 + 76 , SE003 , 60 );
setSeVolumeByWorkId( spep_0 + 77 , SE003 , 90 );
setSeVolumeByWorkId( spep_0 + 78 , SE003 , 120 );
setSeVolumeByWorkId( spep_0 + 79 , SE003 , 150 );
setSeVolumeByWorkId( spep_0 + 80 , SE003 , 178 );
setStartTimeMs( SE003,  283 );
SE004 =playSe( spep_0 + 72 , 1015 );
setSeVolumeByWorkId( spep_0 + 72 , SE004 , 56 );
SE005 =playSe( spep_0 + 72 , 1016 );

--爆発
SE006 =playSe( spep_0 + 102 , 1023 );
SE007 =playSe( spep_0 + 104 , 1033 );

--カメラ遷移
SE008 =playSe( spep_0 + 172 , 8 );
setSeVolumeByWorkId( spep_0 + 172 , SE008 , 60 );
setPitch( spep_0 + 172, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );

--カメラアップ
SE009 =playSe( spep_0 + 230 , 1072 );
setSeVolumeByWorkId( spep_0 + 230 , SE009 , 0 );
setSeVolumeByWorkId( spep_0 + 231 , SE009 , 17 );
setSeVolumeByWorkId( spep_0 + 232 , SE009 , 34 );
setSeVolumeByWorkId( spep_0 + 233 , SE009 , 51 );
setSeVolumeByWorkId( spep_0 + 234 , SE009 , 68 );
setSeVolumeByWorkId( spep_0 + 235 , SE009 , 85 );
setSeVolumeByWorkId( spep_0 + 236 , SE009 , 100 );
setStartTimeMs( SE009,  417 );

--顔カットイン
SE010 =playSe( spep_0 + 256 , 1018 );

--次の準備
spep_1=spep_0+332;
------------------------------------------------------
-- 着地〜連続ビームヒット
------------------------------------------------------
-- ** エフェクト等 ** --
landing_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, landing_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 260, landing_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, landing_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 260, landing_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, landing_f, 0 );
setEffRotateKey( spep_1 + 260, landing_f, 0 );
setEffAlphaKey( spep_1 + 0, landing_f, 255 );
setEffAlphaKey( spep_1 + 260, landing_f, 255 );

-- ** エフェクト等 ** --
landing_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, landing_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 260, landing_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, landing_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 260, landing_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, landing_b, 0 );
setEffRotateKey( spep_1 + 260, landing_b, 0 );
setEffAlphaKey( spep_1 + 0, landing_b, 255 );
setEffAlphaKey( spep_1 + 260, landing_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 79, 1, 0 );

changeAnime( spep_1 + 0, 1, 17 );

setMoveKey( spep_1 + 0, 1, 6, -22.1 , 0 );
setMoveKey( spep_1 + 79, 1, 6, -22.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 79, 1, 0.48, 0.48 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 79, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 168, 1, 1 );
setDisp( spep_1 + 258, 1, 0 );

changeAnime( spep_1-3 + 168, 1, 5 );

setMoveKey( spep_1-3 + 168, 1, -43.5, 63 , 0 );
setMoveKey( spep_1-3 + 170, 1, -1, 95.4 , 0 );
setMoveKey( spep_1-3 + 172, 1, -34.3, 15.4 , 0 );
setMoveKey( spep_1-3 + 174, 1, -85.8, 37.5 , 0 );
setMoveKey( spep_1-3 + 176, 1, -45.3, 36.4 , 0 );
setMoveKey( spep_1-3 + 178, 1, 1.8, 65.2 , 0 );
setMoveKey( spep_1-3 + 180, 1, -38.5, 4.5 , 0 );
setMoveKey( spep_1-3 + 182, 1, -68.8, 35.8 , 0 );
setMoveKey( spep_1-3 + 184, 1, -22.6, 26.2 , 0 );
setMoveKey( spep_1-3 + 186, 1, -0.6, 56.4 , 0 );
setMoveKey( spep_1-3 + 188, 1, -20.9, -9.1 , 0 );
setMoveKey( spep_1-3 + 190, 1, -57.5, 2.2 , 0 );
setMoveKey( spep_1-3 + 192, 1, -4.2, 18.7 , 0 );
setMoveKey( spep_1-3 + 194, 1, 19.5, 17.8 , 0 );
setMoveKey( spep_1-3 + 196, 1, -14.8, -18.6 , 0 );
setMoveKey( spep_1-3 + 198, 1, -44.1, 7.6 , 0 );
setMoveKey( spep_1-3 + 200, 1, -28.7, 4.3 , 0 );
setMoveKey( spep_1-3 + 202, 1, 9.5, 11.1 , 0 );
setMoveKey( spep_1-3 + 204, 1, -25.6, -21.1 , 0 );
setMoveKey( spep_1-3 + 206, 1, -23.4, 6.7 , 0 );
setMoveKey( spep_1-3 + 208, 1, -5.8, -5.8 , 0 );
setMoveKey( spep_1-3 + 210, 1, 18.6, 3.9 , 0 );
setMoveKey( spep_1-3 + 212, 1, 1.5, -21 , 0 );
setMoveKey( spep_1-3 + 214, 1, -30.9, -8.8 , 0 );
setMoveKey( spep_1-3 + 216, 1, 4.9, -10.6 , 0 );
setMoveKey( spep_1-3 + 218, 1, 16.6, 6.6 , 0 );
setMoveKey( spep_1-3 + 220, 1, -2.2, -28.5 , 0 );
setMoveKey( spep_1-3 + 222, 1, -38.5, -24.2 , 0 );
setMoveKey( spep_1-3 + 224, 1, -3, -2.2 , 0 );
setMoveKey( spep_1-3 + 226, 1, 24.6, 0.9 , 0 );
setMoveKey( spep_1-3 + 228, 1, -3.2, -30.1 , 0 );
setMoveKey( spep_1-3 + 230, 1, -19, -13.1 , 0 );
setMoveKey( spep_1-3 + 232, 1, -2.2, -16.6 , 0 );
setMoveKey( spep_1-3 + 234, 1, 26.9, -6.7 , 0 );
setMoveKey( spep_1-3 + 236, 1, 10.4, -30.8 , 0 );
setMoveKey( spep_1-3 + 238, 1, -17.6, -2 , 0 );
setMoveKey( spep_1-3 + 240, 1, 2.4, -0.9 , 0 );
setMoveKey( spep_1-3 + 242, 1, 0.5, -7.9 , 0 );
setMoveKey( spep_1-3 + 244, 1, -10, -37.1 , 0 );
setMoveKey( spep_1-3 + 246, 1, -13.6, -19.9 , 0 );
setMoveKey( spep_1-3 + 248, 1, 1.9, -17.9 , 0 );
setMoveKey( spep_1-3 + 250, 1, 8, -8.6 , 0 );
setMoveKey( spep_1-3 + 252, 1, -12.5, -26.8 , 0 );
setMoveKey( spep_1-3 + 254, 1, -21.8, -22.7 , 0 );
setMoveKey( spep_1-3 + 256, 1, -3.2, -14.9 , 0 );
setMoveKey( spep_1 + 258, 1, 3.7, -3.3 , 0 );

setScaleKey( spep_1-3 + 168, 1, 3.53, 3.53 );
setScaleKey( spep_1-3 + 170, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 172, 1, 3.24, 3.24 );
setScaleKey( spep_1-3 + 174, 1, 3.1, 3.1 );
setScaleKey( spep_1-3 + 176, 1, 2.96, 2.96 );
setScaleKey( spep_1-3 + 178, 1, 2.83, 2.83 );
setScaleKey( spep_1-3 + 180, 1, 2.7, 2.7 );
setScaleKey( spep_1-3 + 182, 1, 2.58, 2.58 );
setScaleKey( spep_1-3 + 184, 1, 2.46, 2.46 );
setScaleKey( spep_1-3 + 186, 1, 2.35, 2.35 );
setScaleKey( spep_1-3 + 188, 1, 2.25, 2.25 );
setScaleKey( spep_1-3 + 190, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 192, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 194, 1, 1.99, 1.99 );
setScaleKey( spep_1-3 + 196, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 198, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 200, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 202, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 204, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 206, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 208, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 210, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 212, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 214, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 216, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 218, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 220, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 222, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 224, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 226, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 228, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 230, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 232, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 234, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 236, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 238, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 240, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 242, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 244, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 246, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 250, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 252, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 258, 1, 1.18, 1.18 );

setRotateKey( spep_1-3 + 168, 1, 31.7 );
setRotateKey( spep_1 + 258, 1, 31.7 );

--SE
--着地
SE011 =playSe( spep_1-10 + 24 , 63 );
setSeVolumeByWorkId( spep_1-10 + 24 , SE011 , 0 );
setSeVolumeByWorkId( spep_1-10 + 25 , SE011 , 5 );
setSeVolumeByWorkId( spep_1-10 + 26 , SE011 , 10 );
setSeVolumeByWorkId( spep_1-10 + 27 , SE011 , 15 );
setSeVolumeByWorkId( spep_1-10 + 28 , SE011 , 20 );
setSeVolumeByWorkId( spep_1-10 + 29 , SE011 , 25 );
setSeVolumeByWorkId( spep_1-10 + 30 , SE011 , 32 );
setStartTimeMs( SE011,  350 );
stopSe( spep_1-10 + 42, SE011, 8);
SE012 =playSe( spep_1-10 + 36 , 1135 );
setSeVolumeByWorkId( spep_1-10 + 36 , SE012 , 65 );
SE013 =playSe( spep_1-10 + 38 , 1153 );
setSeVolumeByWorkId( spep_1-10 + 38 , SE013 , 23 );
stopSe( spep_1-10 + 46, SE013, 15);
SE014 =playSe( spep_1-10 + 46 , 1116 );
setSeVolumeByWorkId( spep_1-10 + 46 , SE014 , 15 );
setPitch( spep_1-10 + 46, SE014, -500 );
setTimeStretch( SE014, 0.67, 10, 1 );
stopSe( spep_1-10 + 66, SE014, 26);

--気弾連射
SE015 =playSe( spep_1 + 120 , 1026 );
setSeVolumeByWorkId( spep_1 + 120 , SE015 , 0 );
setSeVolumeByWorkId( spep_1 + 121 , SE015 , 4 );
setSeVolumeByWorkId( spep_1 + 122 , SE015 , 8 );
setSeVolumeByWorkId( spep_1 + 123 , SE015 , 12 );
setSeVolumeByWorkId( spep_1 + 124 , SE015 , 16 );
setSeVolumeByWorkId( spep_1 + 125 , SE015 , 20 );
setSeVolumeByWorkId( spep_1 + 126 , SE015 , 24 );
setSeVolumeByWorkId( spep_1 + 127 , SE015 , 28 );
setSeVolumeByWorkId( spep_1 + 128 , SE015 , 32 );
setStartTimeMs( SE015,  267 );
SE016 =playSe( spep_1 + 112 , 1021 );
setSeVolumeByWorkId( spep_1 + 112 , SE016 , 84 );
SE017 =playSe( spep_1 + 112 , 1015 );
setSeVolumeByWorkId( spep_1 + 112 , SE017 , 52 );
stopSe( spep_1 + 132 , SE017, 0);
SE018 =playSe( spep_1 + 112 , 1016 );
stopSe( spep_1 + 124 , SE018, 0);
SE019 =playSe( spep_1 + 132 , 1026 );
setSeVolumeByWorkId( spep_1 + 132 , SE019 , 0 );
setSeVolumeByWorkId( spep_1 + 133 , SE019 , 10 );
setSeVolumeByWorkId( spep_1 + 134 , SE019 , 20 );
setSeVolumeByWorkId( spep_1 + 135 , SE019 , 30 );
setSeVolumeByWorkId( spep_1 + 136 , SE019 , 40 );
setSeVolumeByWorkId( spep_1 + 137 , SE019 , 50 );
setSeVolumeByWorkId( spep_1 + 138 , SE019 , 62 );
setStartTimeMs( SE019,  283 );
SE020 =playSe( spep_1 + 132 , 1026 );
setSeVolumeByWorkId( spep_1 + 132 , SE020 , 0 );
setSeVolumeByWorkId( spep_1 + 133 , SE020 , 11 );
setSeVolumeByWorkId( spep_1 + 134 , SE020 , 22 );
setSeVolumeByWorkId( spep_1 + 135 , SE020 , 33 );
setSeVolumeByWorkId( spep_1 + 136 , SE020 , 44 );
setSeVolumeByWorkId( spep_1 + 137 , SE020 , 55 );
setSeVolumeByWorkId( spep_1 + 138 , SE020 , 64 );
setStartTimeMs( SE020,  283 );
SE021 =playSe( spep_1 + 122 , 1015 );
stopSe( spep_1 + 142 , SE021, 0);
SE022 =playSe( spep_1 + 122 , 1016 );
stopSe( spep_1 + 136 , SE022, 0);
SE023 =playSe( spep_1 + 144 , 1026 );
setSeVolumeByWorkId( spep_1 + 144 , SE023 , 0 );
setSeVolumeByWorkId( spep_1 + 145 , SE023 , 17 );
setSeVolumeByWorkId( spep_1 + 146 , SE023 , 34 );
setSeVolumeByWorkId( spep_1 + 147 , SE023 , 51 );
setSeVolumeByWorkId( spep_1 + 148 , SE023 , 78 );
setSeVolumeByWorkId( spep_1 + 149 , SE023 , 85 );
setSeVolumeByWorkId( spep_1 + 150 , SE023 , 100 );
setStartTimeMs( SE023,  283 );
SE024 =playSe( spep_1 + 128 , 1015 );
setSeVolumeByWorkId( spep_1 + 128 , SE024 , 51 );
stopSe( spep_1 + 148 , SE024, 0);
SE025 =playSe( spep_1 + 128 , 1016 );
SE026 =playSe( spep_1 + 140 , 1015 );
setSeVolumeByWorkId( spep_1 + 140 , SE026 , 54 );
stopSe( spep_1 + 158 , SE026, 0);
SE027 =playSe( spep_1 + 140 , 1016 );
SE028 =playSe( spep_1 + 156 , 1026 );
setSeVolumeByWorkId( spep_1 + 156 , SE028 , 0 );
setSeVolumeByWorkId( spep_1 + 157 , SE028 , 13 );
setSeVolumeByWorkId( spep_1 + 158 , SE028 , 26 );
setSeVolumeByWorkId( spep_1 + 159 , SE028 , 39 );
setSeVolumeByWorkId( spep_1 + 160 , SE028 , 52 );
setSeVolumeByWorkId( spep_1 + 161 , SE028 , 65 );
setSeVolumeByWorkId( spep_1 + 162 , SE028 , 78 );
setSeVolumeByWorkId( spep_1 + 163 , SE028 , 86 );
setSeVolumeByWorkId( spep_1 + 164 , SE028 , 100 );
setStartTimeMs( SE028,  267 );
SE029 =playSe( spep_1 + 162 , 1026 );
setSeVolumeByWorkId( spep_1 + 162 , SE029 , 0 );
setSeVolumeByWorkId( spep_1 + 163 , SE029 , 17 );
setSeVolumeByWorkId( spep_1 + 164 , SE029 , 34 );
setSeVolumeByWorkId( spep_1 + 165 , SE029 , 51 );
setSeVolumeByWorkId( spep_1 + 166 , SE029 , 78 );
setSeVolumeByWorkId( spep_1 + 167 , SE029 , 85 );
setSeVolumeByWorkId( spep_1 + 168 , SE029 , 100 );
setStartTimeMs( SE029,  283 );
SE030 =playSe( spep_1 + 148 , 1015 );
setSeVolumeByWorkId( spep_1 + 148 , SE030 , 61 );
stopSe( spep_1 + 162 , SE030, 0);
SE031 =playSe( spep_1 + 148 , 1016 );
SE032 =playSe( spep_1 + 158 , 1015 );
setSeVolumeByWorkId( spep_1 + 158 , SE032 , 56 );
stopSe( spep_1 + 178 , SE032, 0);
SE033 =playSe( spep_1 + 158 , 1016 );

--気弾弾道
SE034 =playSe( spep_1 + 174 , 1016 );
setSeVolumeByWorkId( spep_1 + 174 , SE034 , 71 );
--SE036 =playSe( spep_1 + 180 , 1016 );
--setSeVolumeByWorkId( spep_1 + 180 , SE036 , 65 );
SE038 =playSe( spep_1 + 188 , 1016 );
setSeVolumeByWorkId( spep_1 + 188 , SE038 , 77 );
--SE040 =playSe( spep_1 + 196 , 1016 );
--setSeVolumeByWorkId( spep_1 + 196 , SE040 , 50 );
SE042 =playSe( spep_1 + 204 , 1016 );
setSeVolumeByWorkId( spep_1 + 204 , SE042 , 52 );
--SE044 =playSe( spep_1 + 212 , 1016 );
--setSeVolumeByWorkId( spep_1 + 212 , SE044 , 69 );
SE046 =playSe( spep_1 + 218 , 1016 );
setSeVolumeByWorkId( spep_1 + 218 , SE046 , 89 );
--SE048 =playSe( spep_1 + 226 , 1016 );
--setSeVolumeByWorkId( spep_1 + 226 , SE048 , 62 );
SE049 =playSe( spep_1 + 234 , 1016 );
setSeVolumeByWorkId( spep_1 + 234 , SE049 , 65 );
--SE051 =playSe( spep_1 + 240 , 1016 );
--setSeVolumeByWorkId( spep_1 + 240 , SE051 , 79 );
SE052 =playSe( spep_1 + 248 , 1016 );
setSeVolumeByWorkId( spep_1 + 248 , SE052 , 50 );

--連続爆発
SE035 =playSe( spep_1 + 174 , 1023 );
setSeVolumeByWorkId( spep_1 + 174 , SE035 , 86 );
stopSe( spep_1 + 186, SE035, 20);
SE037 =playSe( spep_1 + 182 , 1023 );
setSeVolumeByWorkId( spep_1 + 182 , SE037 , 84 );
stopSe( spep_1 + 196, SE037, 25);
SE039 =playSe( spep_1 + 192 , 1023 );
setSeVolumeByWorkId( spep_1 + 192 , SE039 , 89 );
stopSe( spep_1 + 212, SE039, 26);
SE041 =playSe( spep_1 + 198 , 1023 );
stopSe( spep_1 + 226, SE041, 28);
SE043 =playSe( spep_1 + 208 , 1024 );
setSeVolumeByWorkId( spep_1 + 208 , SE043 , 45 );
SE045 =playSe( spep_1 + 212 , 1023 );
setSeVolumeByWorkId( spep_1 + 212 , SE045 , 89 );
stopSe( spep_1 + 230, SE045, 28);
SE047 =playSe( spep_1 + 222 , 1023 );
setSeVolumeByWorkId( spep_1 + 222 , SE047 , 89 );
stopSe( spep_1 + 238, SE047, 30);
SE050 =playSe( spep_1 + 234 , 1023 );
stopSe( spep_1 + 252, SE050, 16);

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 260, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--白フェード
entryFade( spep_1+252 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+260;
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

--気弾弾道
stopSe( spep_2 + 2 , SE049, 0);
--stopSe( spep_2 + 2 , SE051, 0);
stopSe( spep_2 + 2 , SE052, 0);

--連続爆発
stopSe( spep_2 + 0 , SE043, 0);

--白フェード
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 指先ビーム〜正面見下ろし
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 384, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 384, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 384, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 384, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 384, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 384, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 384, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 384, finish_b, 255 );

--敵の動き
setDisp( spep_3-3 + 208, 1, 1 );
setDisp( spep_3-3 + 262, 1, 0 );

changeAnime( spep_3-3 + 208, 1, 106 );

setBlendColor(spep_3-3 + 242,1,1,1,1,1,0.1);
setBlendColor(spep_3-3 + 244,1,1,1,1,1,0.3);
setBlendColor(spep_3-3 + 248,1,1,1,1,1,0.5);
setBlendColor(spep_3-3 + 250,1,1,1,1,1,0.7);
setBlendColor(spep_3-3 + 254,1,1,1,1,1,0.9);
setBlendColor(spep_3-3 + 258,1,1,1,1,1,1);
setBlendColor(spep_3-3 + 262,1,1,1,1,1,1);
setBlendColor(spep_3-3 + 264,1,1,1,1,1,0);

setMoveKey( spep_3-3 + 208, 1, 652.6, 5.8 , 0 );
setMoveKey( spep_3-3 + 210, 1, 504.8, 23.8 , 0 );
setMoveKey( spep_3-3 + 212, 1, 342.6, 27.6 , 0 );
setMoveKey( spep_3-3 + 214, 1, 171.8, 42.1 , 0 );
setMoveKey( spep_3-3 + 216, 1, 14, 38 , 0 );
setMoveKey( spep_3-3 + 218, 1, -11.1, 31.5 , 0 );
setMoveKey( spep_3-3 + 220, 1, -22.4, 44.6 , 0 );
setMoveKey( spep_3-3 + 222, 1, -70.1, 37.8 , 0 );
setMoveKey( spep_3-3 + 224, 1, -48.6, 64.7 , 0 );
setMoveKey( spep_3-3 + 226, 1, -20.6, 28 , 0 );
setMoveKey( spep_3-3 + 228, 1, -32, 27.9 , 0 );
setMoveKey( spep_3-3 + 230, 1, 0.9, 38.2 , 0 );
setMoveKey( spep_3-3 + 232, 1, 17, 57.8 , 0 );
setMoveKey( spep_3-3 + 234, 1, 37.1, 22.7 , 0 );
setMoveKey( spep_3-3 + 236, 1, 23.4, 24.1 , 0 );
setMoveKey( spep_3-3 + 238, 1, 64, 31.8 , 0 );
setMoveKey( spep_3-3 + 240, 1, 76.8, 64.8 , 0 );
setMoveKey( spep_3-3 + 242, 1, 90.6, 25.7 , 0 );
setMoveKey( spep_3-3 + 244, 1, 82.9, 25.6 , 0 );
setMoveKey( spep_3-3 + 246, 1, 129.7, 49.6 , 0 );
setMoveKey( spep_3-3 + 248, 1, 146.8, 68.1 , 0 );
setMoveKey( spep_3-3 + 250, 1, 154, 18.2 , 0 );
setMoveKey( spep_3-3 + 252, 1, 129.2, 26 , 0 );
setMoveKey( spep_3-3 + 254, 1, 190.4, 32.9 , 0 );
setMoveKey( spep_3-3 + 256, 1, 199.4, 72.6 , 0 );
setMoveKey( spep_3-3 + 258, 1, 206.1, 31.4 , 0 );
setMoveKey( spep_3-3 + 260, 1, 206.8, 30.7 , 0 );
setMoveKey( spep_3-3 + 262, 1, 240.8, -74.5 , 0 );

setScaleKey( spep_3-3 + 208, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 221, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 222, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 262, 1, 1.57, 1.57 );

setRotateKey( spep_3-3 + 208, 1, -40 );
setRotateKey( spep_3-3 + 210, 1, -38.9 );
setRotateKey( spep_3-3 + 212, 1, -37.8 );
setRotateKey( spep_3-3 + 214, 1, -36.8 );
setRotateKey( spep_3-3 + 216, 1, -35.7 );
setRotateKey( spep_3-3 + 221, 1, -35.7 );
setRotateKey( spep_3-3 + 222, 1, -7.8 );
setRotateKey( spep_3-3 + 262, 1, -7.8 );

--SE
--腕あげる
SE054 =playSe( spep_3 + 22 , 1003 );

--気弾溜める
SE055 =playSe( spep_3 + 44 , 1281 );
SE056 =playSe( spep_3 + 44 , 1282 );
setSeVolumeByWorkId( spep_3 + 44 , SE056 , 48 );
SE057 =playSe( spep_3 + 44 , 1161 );
setSeVolumeByWorkId( spep_3 + 44 , SE057 , 0 );
setSeVolumeByWorkId( spep_3 + 45,SE057,1.1);
setSeVolumeByWorkId( spep_3 + 46,SE057,2.2);
setSeVolumeByWorkId( spep_3 + 47,SE057,3.3);
setSeVolumeByWorkId( spep_3 + 48,SE057,4.4);
setSeVolumeByWorkId( spep_3 + 49,SE057,5.5);
setSeVolumeByWorkId( spep_3 + 50,SE057,6.6);
setSeVolumeByWorkId( spep_3 + 51,SE057,7.7);
setSeVolumeByWorkId( spep_3 + 52,SE057,8.8);
setSeVolumeByWorkId( spep_3 + 53,SE057,9.9);
setSeVolumeByWorkId( spep_3 + 54,SE057,11);
setSeVolumeByWorkId( spep_3 + 55,SE057,12.1);
setSeVolumeByWorkId( spep_3 + 56,SE057,13.2);
setSeVolumeByWorkId( spep_3 + 57,SE057,14.3);
setSeVolumeByWorkId( spep_3 + 58,SE057,15.4);
setSeVolumeByWorkId( spep_3 + 59,SE057,16.5);
setSeVolumeByWorkId( spep_3 + 60,SE057,17.6);
setSeVolumeByWorkId( spep_3 + 61,SE057,18.7);
setSeVolumeByWorkId( spep_3 + 62,SE057,19.8);
setSeVolumeByWorkId( spep_3 + 63,SE057,20.9);
setSeVolumeByWorkId( spep_3 + 64,SE057,22);
setSeVolumeByWorkId( spep_3 + 65,SE057,23.1);
setSeVolumeByWorkId( spep_3 + 66,SE057,24.2);
setSeVolumeByWorkId( spep_3 + 67,SE057,25.3);
setSeVolumeByWorkId( spep_3 + 68,SE057,26.4);
setSeVolumeByWorkId( spep_3 + 69,SE057,27.5);
setSeVolumeByWorkId( spep_3 + 70,SE057,28.6);
setSeVolumeByWorkId( spep_3 + 71,SE057,29.7);
setSeVolumeByWorkId( spep_3 + 72,SE057,30.8);
setSeVolumeByWorkId( spep_3 + 73,SE057,31.9);
setSeVolumeByWorkId( spep_3 + 74,SE057,33);
setSeVolumeByWorkId( spep_3 + 75,SE057,34.1);
setSeVolumeByWorkId( spep_3 + 76,SE057,35.2);
setSeVolumeByWorkId( spep_3 + 77,SE057,36.3);
setSeVolumeByWorkId( spep_3 + 78,SE057,37);
SE058 =playSe( spep_3 + 48 , 1248 );
setSeVolumeByWorkId( spep_3 + 48 , SE058 , 18 );

--気弾発射
SE059 =playSe( spep_3 + 118 , 1256 );
SE060 =playSe( spep_3 + 118 , 1027 );
setSeVolumeByWorkId( spep_3 + 118 , SE060 , 89 );
SE061 =playSe( spep_3 + 118 , 1026 );
setSeVolumeByWorkId( spep_3 + 118 , SE061 , 123 );
SE063 =playSe( spep_3 + 118 , 1254 );
setSeVolumeByWorkId( spep_3 + 118 , SE063 , 46 );
setPitch( spep_3 + 118, SE063, -300 );
setTimeStretch( SE063, 0.8, 10, 1 );

--気弾道
SE062 =playSe( spep_3 + 118 , 1212 );
setSeVolumeByWorkId( spep_3 + 118 , SE062 , 0 );
setSeVolumeByWorkId( spep_3 + 118,SE062,0);
setSeVolumeByWorkId( spep_3 + 119,SE062,1);
setSeVolumeByWorkId( spep_3 + 120,SE062,2);
setSeVolumeByWorkId( spep_3 + 121,SE062,3);
setSeVolumeByWorkId( spep_3 + 122,SE062,4);
setSeVolumeByWorkId( spep_3 + 123,SE062,5);
setSeVolumeByWorkId( spep_3 + 124,SE062,6);
setSeVolumeByWorkId( spep_3 + 125,SE062,7);
setSeVolumeByWorkId( spep_3 + 126,SE062,8);
setSeVolumeByWorkId( spep_3 + 127,SE062,9);
setSeVolumeByWorkId( spep_3 + 128,SE062,10);
setSeVolumeByWorkId( spep_3 + 129,SE062,11);
setSeVolumeByWorkId( spep_3 + 130,SE062,12);
setSeVolumeByWorkId( spep_3 + 131,SE062,13);
setSeVolumeByWorkId( spep_3 + 132,SE062,14);
setSeVolumeByWorkId( spep_3 + 133,SE062,15);
setSeVolumeByWorkId( spep_3 + 134,SE062,16);
setSeVolumeByWorkId( spep_3 + 135,SE062,17);
setSeVolumeByWorkId( spep_3 + 136,SE062,18);
setSeVolumeByWorkId( spep_3 + 137,SE062,19);
setSeVolumeByWorkId( spep_3 + 138,SE062,20);
setSeVolumeByWorkId( spep_3 + 139,SE062,21);
setSeVolumeByWorkId( spep_3 + 140,SE062,22);
setSeVolumeByWorkId( spep_3 + 141,SE062,23);
setSeVolumeByWorkId( spep_3 + 142,SE062,24);
setSeVolumeByWorkId( spep_3 + 143,SE062,25);
setSeVolumeByWorkId( spep_3 + 144,SE062,26);
setSeVolumeByWorkId( spep_3 + 145,SE062,27);
setSeVolumeByWorkId( spep_3 + 146,SE062,28);
setSeVolumeByWorkId( spep_3 + 147,SE062,29);
setSeVolumeByWorkId( spep_3 + 148,SE062,30);
setSeVolumeByWorkId( spep_3 + 149,SE062,31);
setSeVolumeByWorkId( spep_3 + 150,SE062,32);
setSeVolumeByWorkId( spep_3 + 151,SE062,33);
setSeVolumeByWorkId( spep_3 + 152,SE062,34);
setSeVolumeByWorkId( spep_3 + 153,SE062,35);
setSeVolumeByWorkId( spep_3 + 154,SE062,36);
setSeVolumeByWorkId( spep_3 + 155,SE062,37);
setSeVolumeByWorkId( spep_3 + 156,SE062,38);
setSeVolumeByWorkId( spep_3 + 157,SE062,39);
setSeVolumeByWorkId( spep_3 + 158,SE062,40);
setSeVolumeByWorkId( spep_3 + 159,SE062,41);
setSeVolumeByWorkId( spep_3 + 160,SE062,42);
setSeVolumeByWorkId( spep_3 + 161,SE062,43);
setSeVolumeByWorkId( spep_3 + 162,SE062,44);
setSeVolumeByWorkId( spep_3 + 163,SE062,45);
setSeVolumeByWorkId( spep_3 + 164,SE062,46);
stopSe( spep_3 + 220, SE062, 22);
SE064 =playSe( spep_3 + 134 , 1227 );
setSeVolumeByWorkId( spep_3 + 134 , SE064 , 180 );
stopSe( spep_3 + 224, SE064, 18);

--気弾当たって弾ける
SE065 =playSe( spep_3 + 212 , 1026 );
setSeVolumeByWorkId( spep_3 + 212 , SE065 , 116 );
setPitch( spep_3 + 212, SE065, 500 );
setTimeStretch( SE065, 1.33, 10, 1 );
SE066 =playSe( spep_3 + 212 , 1256 );
setSeVolumeByWorkId( spep_3 + 212 , SE066 , 160 );
setTimeStretch( SE066, 1.25, 10, 1 );
SE067 =playSe( spep_3 + 212 , 1262 );
setSeVolumeByWorkId( spep_3 + 212 , SE067 , 71 );
setPitch( spep_3 + 212, SE067, 700 );
setTimeStretch( SE067, 1.47, 10, 1 );
stopSe( spep_3 + 252, SE067, 36);

--爆発
SE068 =playSe( spep_3 + 272 , 1023 );
setSeVolumeByWorkId( spep_3 + 272 , SE068 , 75 );
SE069 =playSe( spep_3 + 272 , 1188 );
setSeVolumeByWorkId( spep_3 + 272 , SE069 , 81 );
SE070 =playSe( spep_3 + 272 , 1159 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 270, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--終わり
dealDamage( spep_3 +280 );
endPhase( spep_3 + 370 );
end
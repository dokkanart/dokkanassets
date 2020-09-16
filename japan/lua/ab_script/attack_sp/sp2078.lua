--1010160:魔人ベジータ_ファイナルインパクト
--sp_effect_a3_00070

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
SP_01=	156054	;--	かまえる
SP_02=	156055	;--	構え引き構図
SP_03=	156056	;--	発射
SP_04=	156058	;--	迫る
SP_05=	156059	;--	貫通　手前
SP_06=	156060	;--	貫通　背面

--エフェクト(てき)
SP_01x=	156054	;--	かまえる
SP_02x=	156055	;--	構え引き構図
SP_03x=	156057	;--	発射
SP_04x=	156058	;--	発射　敵側
SP_05x=	156059	;--	貫通　手前
SP_06x=	156060	;--	貫通　背面
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
-- 飛び込み
------------------------------------------------------
--はじめの準備
spep_0=0;
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

--SE
--腕あげる
SE001 =playSe( spep_0 + 4 , 1004 );
setSeVolumeByWorkId( spep_0 + 4 , SE001 , 65 );
setPitch( spep_0 + 4, SE001, -400 );
setTimeStretch( SE001, 0.92, 10, 1 );
setBandpassFilter	( spep_0 + 4, SE001, 0, 800 );

--手を前に
SE002 =playSe( spep_0 + 36 , 1003 );
setSeVolumeByWorkId( spep_0 + 36 , SE002 , 42 );
SE003 =playSe( spep_0 + 36 , 4 );
stopSe( spep_0 + 42, SE003, 4);

--暗転雷
SE004 =playSe( spep_0 + 72 , 1147 );
setSeVolumeByWorkId( spep_0 + 72 , SE004 , 132 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
-- 構え引き構図
------------------------------------------------------
-- ** エフェクト等 ** --
store = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, store, 0, 0, 0 );
setEffMoveKey( spep_1 + 220, store, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, store, 1.0, 1.0 );
setEffScaleKey( spep_1 + 220, store, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, store, 0 );
setEffRotateKey( spep_1 + 220, store, 0 );
setEffAlphaKey( spep_1 + 0, store, 255 );
setEffAlphaKey( spep_1 + 220, store, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1  , 1504, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1  , 1505, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 100,  906, 118, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 100, shuchusen1, 118, 20 );
setEffMoveKey( spep_1-3 + 100, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 218, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 100, shuchusen1, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 218, shuchusen1, 1.26, 1.26 );

setEffRotateKey( spep_1-3 + 100, shuchusen1, 180 );
setEffRotateKey( spep_1-3 + 218, shuchusen1, 180 );

setEffAlphaKey( spep_1-3 + 100, shuchusen1, 255 );
setEffAlphaKey( spep_1-3 + 218, shuchusen1, 255 );

--SE
--暗転雷
stopSe( spep_1 + 24 , SE004, 0);

--オーラ
SE005 =playSe( spep_1 + 0 , 1036 );
SE008 =playSe( spep_1 + 24 , 1036 );
SE009 =playSe( spep_1 + 48 , 1036 );
SE010 =playSe( spep_1 + 72 , 1036 );
SE011 =playSe( spep_1 + 96 , 1036 );
SE016 =playSe( spep_1 + 120 , 1036 );
setSeVolumeByWorkId( spep_1 + 120 , SE016 , 56 );
SE017 =playSe( spep_1 + 144 , 1036 );
setSeVolumeByWorkId( spep_1 + 144 , SE017 , 56 );
SE018 =playSe( spep_1 + 168 , 1036 );
setSeVolumeByWorkId( spep_1 + 168 , SE018 , 56 );
SE019 =playSe( spep_1 + 192 , 1036 );
setSeVolumeByWorkId( spep_1 + 192 , SE019 , 56 );
SE020 =playSe( spep_1 + 216 , 1036 );
setSeVolumeByWorkId( spep_1 + 216 , SE020 , 56 );

--スパーク
SE006 =playSe( spep_1 + 10 , 1148 );
setSeVolumeByWorkId( spep_1 + 10 , SE006 , 60 );

--顔カットイン
SE007 =playSe( spep_1 + 20 , 1018 );

--気ダメ
SE012 =playSe( spep_1 + 104 , 1044 );
setSeVolumeByWorkId( spep_1 + 104 , SE012 , 0 );
setSeVolumeByWorkId(spep_1 +104,SE012,0);
setSeVolumeByWorkId(spep_1 +105,SE012,2.1);
setSeVolumeByWorkId(spep_1 +106,SE012,4.2);
setSeVolumeByWorkId(spep_1 +107,SE012,6.3);
setSeVolumeByWorkId(spep_1 +108,SE012,8.4);
setSeVolumeByWorkId(spep_1 +109,SE012,10.5);
setSeVolumeByWorkId(spep_1 +110,SE012,12.6);
setSeVolumeByWorkId(spep_1 +111,SE012,14.7);
setSeVolumeByWorkId(spep_1 +112,SE012,16.8);
setSeVolumeByWorkId(spep_1 +113,SE012,18.9);
setSeVolumeByWorkId(spep_1 +114,SE012,21);
setSeVolumeByWorkId(spep_1 +115,SE012,23.1);
setSeVolumeByWorkId(spep_1 +116,SE012,25.2);
setSeVolumeByWorkId(spep_1 +117,SE012,27.3);
setSeVolumeByWorkId(spep_1 +118,SE012,29.4);
setSeVolumeByWorkId(spep_1 +119,SE012,31.5);
setSeVolumeByWorkId(spep_1 +120,SE012,33.6);
setSeVolumeByWorkId(spep_1 +121,SE012,35.7);
setSeVolumeByWorkId(spep_1 +122,SE012,37.8);
setSeVolumeByWorkId(spep_1 +123,SE012,39.9);
setSeVolumeByWorkId(spep_1 +124,SE012,42);
setSeVolumeByWorkId(spep_1 +125,SE012,44.1);
setSeVolumeByWorkId(spep_1 +126,SE012,46.2);
setSeVolumeByWorkId(spep_1 +127,SE012,48.3);
setSeVolumeByWorkId(spep_1 +128,SE012,50.4);
setSeVolumeByWorkId(spep_1 +129,SE012,52.5);
setSeVolumeByWorkId(spep_1 +130,SE012,54.6);
setSeVolumeByWorkId(spep_1 +131,SE012,56.7);
setSeVolumeByWorkId(spep_1 +132,SE012,58.8);
setSeVolumeByWorkId(spep_1 +133,SE012,60.9);
setSeVolumeByWorkId(spep_1 +134,SE012,63);
setSeVolumeByWorkId(spep_1 +135,SE012,65.1);
setSeVolumeByWorkId(spep_1 +136,SE012,67.2);
setSeVolumeByWorkId(spep_1 +137,SE012,69.3);
setSeVolumeByWorkId(spep_1 +138,SE012,71.4);
setSeVolumeByWorkId(spep_1 +139,SE012,73.5);
setSeVolumeByWorkId(spep_1 +140,SE012,75.6);
setSeVolumeByWorkId(spep_1 +141,SE012,77.7);
setSeVolumeByWorkId(spep_1 +142,SE012,79.8);
setSeVolumeByWorkId(spep_1 +143,SE012,81.9);
setSeVolumeByWorkId(spep_1 +144,SE012,84);
setSeVolumeByWorkId(spep_1 +145,SE012,86.1);
setSeVolumeByWorkId(spep_1 +146,SE012,88.2);
setSeVolumeByWorkId(spep_1 +147,SE012,90.3);
setSeVolumeByWorkId(spep_1 +148,SE012,92.3);
setSeVolumeByWorkId(spep_1 +149,SE012,94.4);
setSeVolumeByWorkId(spep_1 +150,SE012,96.5);
setSeVolumeByWorkId(spep_1 +151,SE012,98.6);
setSeVolumeByWorkId(spep_1 +152,SE012,100.8);
setSeVolumeByWorkId(spep_1 +153,SE012,102.9);
setSeVolumeByWorkId(spep_1 +154,SE012,105);
setSeVolumeByWorkId(spep_1 +155,SE012,107.1);
setSeVolumeByWorkId(spep_1 +156,SE012,109.2);
setSeVolumeByWorkId(spep_1 +157,SE012,111.3);
setSeVolumeByWorkId(spep_1 +158,SE012,113.4);
setSeVolumeByWorkId(spep_1 +159,SE012,115.5);
setSeVolumeByWorkId(spep_1 +160,SE012,117.6);
setSeVolumeByWorkId(spep_1 +161,SE012,119.7);
setSeVolumeByWorkId(spep_1 +162,SE012,121.8);
setSeVolumeByWorkId(spep_1 +163,SE012,123.9);
setSeVolumeByWorkId(spep_1 +164,SE012,126);
setSeVolumeByWorkId(spep_1 +165,SE012,128.1);
setSeVolumeByWorkId(spep_1 +166,SE012,130.2);
setSeVolumeByWorkId(spep_1 +167,SE012,132.3);
setSeVolumeByWorkId(spep_1 +168,SE012,134.4);
setSeVolumeByWorkId(spep_1 +169,SE012,136.5);
setSeVolumeByWorkId(spep_1 +170,SE012,138.6);
setSeVolumeByWorkId(spep_1 +171,SE012,140.7);
setSeVolumeByWorkId(spep_1 +172,SE012,142.8);
setSeVolumeByWorkId(spep_1 +173,SE012,144.9);
setSeVolumeByWorkId(spep_1 +174,SE012,147);
setSeVolumeByWorkId(spep_1 +175,SE012,149.1);
setSeVolumeByWorkId(spep_1 +176,SE012,151.2);
setSeVolumeByWorkId(spep_1 +177,SE012,153.3);
setSeVolumeByWorkId(spep_1 +178,SE012,155.4);
setSeVolumeByWorkId(spep_1 +179,SE012,157.5);
setSeVolumeByWorkId(spep_1 +180,SE012,159.6);
setSeVolumeByWorkId(spep_1 +181,SE012,161.7);
setSeVolumeByWorkId(spep_1 +182,SE012,163.8);
setSeVolumeByWorkId(spep_1 +183,SE012,165.9);
setSeVolumeByWorkId(spep_1 +184,SE012,168);
setSeVolumeByWorkId(spep_1 +185,SE012,170.1);
setSeVolumeByWorkId(spep_1 +186,SE012,172.2);
setSeVolumeByWorkId(spep_1 +187,SE012,174.3);
setSeVolumeByWorkId(spep_1 +188,SE012,176.4);
setSeVolumeByWorkId(spep_1 +189,SE012,178.5);
setSeVolumeByWorkId(spep_1 +190,SE012,180.6);
setSeVolumeByWorkId(spep_1 +191,SE012,182.7);
setSeVolumeByWorkId(spep_1 +192,SE012,184.8);
setSeVolumeByWorkId(spep_1 +193,SE012,186.9);
setSeVolumeByWorkId(spep_1 +194,SE012,189);
setSeVolumeByWorkId(spep_1 +195,SE012,191.1);
setSeVolumeByWorkId(spep_1 +196,SE012,193.2);
setSeVolumeByWorkId(spep_1 +197,SE012,195.3);
setSeVolumeByWorkId(spep_1 +198,SE012,197.4);
setSeVolumeByWorkId(spep_1 +199,SE012,199.5);
setSeVolumeByWorkId(spep_1 +200,SE012,200);
SE013 =playSe( spep_1 + 114 , 1035 );
setSeVolumeByWorkId( spep_1 + 114 , SE013 , 126 );
SE014 =playSe( spep_1 + 114 , 1024 );
SE015 =playSe( spep_1 + 116 , 1258 );
setSeVolumeByWorkId( spep_1 + 116 , SE015 , 50 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 220, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+212 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+220;
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

--オーラ
stopSe( spep_2 + 2 , SE020, 0);

--気ダメ
stopSe( spep_2 + 2 , SE012, 0);

--白フェード
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
discharge = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, discharge, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, discharge, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, discharge, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, discharge, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, discharge, 0 );
setEffRotateKey( spep_3 + 60, discharge, 0 );
setEffAlphaKey( spep_3 + 0, discharge, 255 );
setEffAlphaKey( spep_3 + 60, discharge, 255 );

--SE
--気弾発射
SE022 =playSe( spep_3 + 0 , 1145 );
SE023 =playSe( spep_3 + 0 , 1027 );
setSeVolumeByWorkId( spep_3 + 0 , SE023 , 68 );

--白フェード
entryFade( spep_3+50 , 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 60;
------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 70, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 70, beam, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );
    
   
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
--気弾迫る
SE026 =playSe( spep_4+6  , 1179 );
setSeVolumeByWorkId( spep_4+6  , SE026 , 158 );
setPitch( spep_4+6 , SE026, 200 );
setTimeStretch( SE026, 0.75, 10, 1 );

SE024 =playSe( spep_4 + 6 , 1193 );
setSeVolumeByWorkId( spep_4 + 6 , SE024 , 0 );
setSeVolumeByWorkId(spep_4 +6,SE024,0);
setSeVolumeByWorkId(spep_4 +7,SE024,1.6);
setSeVolumeByWorkId(spep_4 +8,SE024,3.2);
setSeVolumeByWorkId(spep_4 +9,SE024,4.8);
setSeVolumeByWorkId(spep_4 +10,SE024,6.4);
setSeVolumeByWorkId(spep_4 +11,SE024,8);
setSeVolumeByWorkId(spep_4 +12,SE024,9.6);
setSeVolumeByWorkId(spep_4 +13,SE024,11.2);
setSeVolumeByWorkId(spep_4 +14,SE024,12.8);
setSeVolumeByWorkId(spep_4 +15,SE024,14.4);
setSeVolumeByWorkId(spep_4 +16,SE024,16);
setSeVolumeByWorkId(spep_4 +17,SE024,17.6);
setSeVolumeByWorkId(spep_4 +18,SE024,19.2);
setSeVolumeByWorkId(spep_4 +19,SE024,20.8);
setSeVolumeByWorkId(spep_4 +20,SE024,22.4);
setSeVolumeByWorkId(spep_4 +21,SE024,24);
setSeVolumeByWorkId(spep_4 +22,SE024,25.6);
setSeVolumeByWorkId(spep_4 +23,SE024,27.2);
setSeVolumeByWorkId(spep_4 +24,SE024,28.8);
setSeVolumeByWorkId(spep_4 +25,SE024,30.4);
setSeVolumeByWorkId(spep_4 +26,SE024,32);
setSeVolumeByWorkId(spep_4 +27,SE024,33.6);
setSeVolumeByWorkId(spep_4 +28,SE024,35.2);
setSeVolumeByWorkId(spep_4 +29,SE024,36.8);
setSeVolumeByWorkId(spep_4 +30,SE024,38.4);
setSeVolumeByWorkId(spep_4 +31,SE024,40);
setSeVolumeByWorkId(spep_4 +32,SE024,41.6);
setSeVolumeByWorkId(spep_4 +33,SE024,43.2);
setSeVolumeByWorkId(spep_4 +34,SE024,44.8);
setSeVolumeByWorkId(spep_4 +35,SE024,46.4);
setSeVolumeByWorkId(spep_4 +36,SE024,48);
setSeVolumeByWorkId(spep_4 +37,SE024,49.6);
setSeVolumeByWorkId(spep_4 +38,SE024,51.2);
setSeVolumeByWorkId(spep_4 +39,SE024,52.8);
setSeVolumeByWorkId(spep_4 +40,SE024,54.4);
setSeVolumeByWorkId(spep_4 +41,SE024,56);
setSeVolumeByWorkId(spep_4 +42,SE024,57.6);
setSeVolumeByWorkId(spep_4 +43,SE024,59.2);
setSeVolumeByWorkId(spep_4 +44,SE024,60.8);
setSeVolumeByWorkId(spep_4 +45,SE024,62.4);
setSeVolumeByWorkId(spep_4 +46,SE024,64);
setSeVolumeByWorkId(spep_4 +47,SE024,65.6);
setSeVolumeByWorkId(spep_4 +48,SE024,67.2);
setSeVolumeByWorkId(spep_4 +49,SE024,68.8);
setSeVolumeByWorkId(spep_4 +50,SE024,71);
setStartTimeMs( SE024,  367 );
SE025 =playSe( spep_4 + 6 , 1215 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 70;
------------------------------------------------------
-- 貫通
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 100, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 100, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 100, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 100, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 101 );
changeAnime( spep_5-3 + 20, 1, 108 );
changeAnime( spep_5-3 + 60, 1, 106 );

setMoveKey( spep_5 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_5-3 + 19, 1, 0, 0 , 0 );
setMoveKey( spep_5-3 + 20, 1, 1, 15.9 , 0 );
setMoveKey( spep_5-3 + 22, 1, 2.1, 16.2 , 0 );
setMoveKey( spep_5-3 + 24, 1, 3.2, 16.4 , 0 );
setMoveKey( spep_5-3 + 26, 1, 4.3, 16.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 5.4, 17 , 0 );
setMoveKey( spep_5-3 + 30, 1, 6.5, 17.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 7.6, 17.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 8.7, 17.7 , 0 );
setMoveKey( spep_5-3 + 36, 1, 9.8, 18 , 0 );
setMoveKey( spep_5-3 + 38, 1, 10.9, 18.3 , 0 );
setMoveKey( spep_5-3 + 40, 1, 12.1, 18.5 , 0 );
setMoveKey( spep_5-3 + 42, 1, 13.2, 18.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 14.3, 19.1 , 0 );
setMoveKey( spep_5-3 + 46, 1, 15.4, 19.3 , 0 );
setMoveKey( spep_5-3 + 48, 1, 16.5, 19.6 , 0 );
setMoveKey( spep_5-3 + 50, 1, 17.6, 19.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 18.7, 20.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 19.8, 20.4 , 0 );
setMoveKey( spep_5-3 + 56, 1, 20.9, 20.6 , 0 );
setMoveKey( spep_5-3 + 59, 1, 22, 20.9 , 0 );
setMoveKey( spep_5-3 + 60, 1, 4.1, 25 , 0 );
setMoveKey( spep_5-3 + 62, 1, 11.6, 27.7 , 0 );
setMoveKey( spep_5-3 + 64, 1, 18.9, 31.1 , 0 );
setMoveKey( spep_5-3 + 66, 1, 25.9, 34.6 , 0 );
setMoveKey( spep_5-3 + 68, 1, 32.9, 38 , 0 );
setMoveKey( spep_5-3 + 70, 1, 39.6, 41.2 , 0 );
setMoveKey( spep_5-3 + 72, 1, 46.2, 44.1 , 0 );
setMoveKey( spep_5-3 + 74, 1, 52.7, 46.7 , 0 );
setMoveKey( spep_5-3 + 76, 1, 59.1, 48.9 , 0 );
setMoveKey( spep_5-3 + 78, 1, 65.4, 50.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, 71.5, 52.3 , 0 );
setMoveKey( spep_5-3 + 82, 1, 77.5, 53.5 , 0 );
setMoveKey( spep_5-3 + 84, 1, 83.4, 54.2 , 0 );
setMoveKey( spep_5-3 + 86, 1, 89.2, 54.5 , 0 );
setMoveKey( spep_5-3 + 88, 1, 94.9, 54.5 , 0 );
setMoveKey( spep_5-3 + 90, 1, 100.4, 53.9 , 0 );
setMoveKey( spep_5-3 + 92, 1, 105.9, 52.9 , 0 );
setMoveKey( spep_5-3 + 94, 1, 111.3, 51.5 , 0 );
setMoveKey( spep_5-3 + 96, 1, 116.7, 49.5 , 0 );
setMoveKey( spep_5-3 + 98, 1, 122, 47 , 0 );

setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 19, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 98, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, -10.5 );
setRotateKey( spep_5-3 + 19, 1, -10.5 );
setRotateKey( spep_5-3 + 20, 1, -12.1 );
setRotateKey( spep_5-3 + 22, 1, -12.2 );
setRotateKey( spep_5-3 + 59, 1, -12.2 );
setRotateKey( spep_5-3 + 60, 1, -38 );
setRotateKey( spep_5-3 + 62, 1, -36.9 );
setRotateKey( spep_5-3 + 64, 1, -34.6 );
setRotateKey( spep_5-3 + 66, 1, -31.7 );
setRotateKey( spep_5-3 + 68, 1, -28.5 );
setRotateKey( spep_5-3 + 70, 1, -25.2 );
setRotateKey( spep_5-3 + 72, 1, -21.8 );
setRotateKey( spep_5-3 + 74, 1, -18.5 );
setRotateKey( spep_5-3 + 76, 1, -15.2 );
setRotateKey( spep_5-3 + 78, 1, -11.9 );
setRotateKey( spep_5-3 + 80, 1, -8.7 );
setRotateKey( spep_5-3 + 82, 1, -5.6 );
setRotateKey( spep_5-3 + 84, 1, -2.7 );
setRotateKey( spep_5-3 + 86, 1, 0.2 );
setRotateKey( spep_5-3 + 88, 1, 2.8 );
setRotateKey( spep_5-3 + 90, 1, 5.4 );
setRotateKey( spep_5-3 + 92, 1, 7.8 );
setRotateKey( spep_5-3 + 94, 1, 10 );
setRotateKey( spep_5-3 + 96, 1, 12.1 );
setRotateKey( spep_5-3 + 98, 1, 14 );

--SE
--気弾迫る
stopSe( spep_5 + 20, SE024, 15);
stopSe( spep_5 + 22, SE025, 16);

--気弾敵貫く
SE027 =playSe( spep_5 + 18 , 1178 );
setSeVolumeByWorkId( spep_5 + 18 , SE027 , 61 );
SE028 =playSe( spep_5 + 18 , 1026 );
SE029 =playSe( spep_5 + 18 , 1162 );
setSeVolumeByWorkId( spep_5 + 18 , SE029 , 68 );
SE030 =playSe( spep_5 + 20 , 1011 );
setSeVolumeByWorkId( spep_5 + 20 , SE030 , 93 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 18 );
endPhase( spep_5 + 90 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 飛び込み
------------------------------------------------------
--はじめの準備
spep_0=0;
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

--SE
--腕あげる
SE001 =playSe( spep_0 + 4 , 1004 );
setSeVolumeByWorkId( spep_0 + 4 , SE001 , 65 );
setPitch( spep_0 + 4, SE001, -400 );
setTimeStretch( SE001, 0.92, 10, 1 );
setBandpassFilter	( spep_0 + 4, SE001, 0, 800 );

--手を前に
SE002 =playSe( spep_0 + 36 , 1003 );
setSeVolumeByWorkId( spep_0 + 36 , SE002 , 42 );
SE003 =playSe( spep_0 + 36 , 4 );
stopSe( spep_0 + 42, SE003, 4);

--暗転雷
SE004 =playSe( spep_0 + 72 , 1147 );
setSeVolumeByWorkId( spep_0 + 72 , SE004 , 132 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
-- 構え引き構図
------------------------------------------------------
-- ** エフェクト等 ** --
store = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, store, 0, 0, 0 );
setEffMoveKey( spep_1 + 220, store, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, store, -1.0, 1.0 );
setEffScaleKey( spep_1 + 220, store, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, store, 0 );
setEffRotateKey( spep_1 + 220, store, 0 );
setEffAlphaKey( spep_1 + 0, store, 255 );
setEffAlphaKey( spep_1 + 220, store, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1  , 1504, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1  , 1505, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 100,  906, 118, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 100, shuchusen1, 118, 20 );
setEffMoveKey( spep_1-3 + 100, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 218, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 100, shuchusen1, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 218, shuchusen1, 1.26, 1.26 );

setEffRotateKey( spep_1-3 + 100, shuchusen1, 180 );
setEffRotateKey( spep_1-3 + 218, shuchusen1, 180 );

setEffAlphaKey( spep_1-3 + 100, shuchusen1, 255 );
setEffAlphaKey( spep_1-3 + 218, shuchusen1, 255 );

--SE
--暗転雷
stopSe( spep_1 + 24 , SE004, 0);

--オーラ
SE005 =playSe( spep_1 + 0 , 1036 );
SE008 =playSe( spep_1 + 24 , 1036 );
SE009 =playSe( spep_1 + 48 , 1036 );
SE010 =playSe( spep_1 + 72 , 1036 );
SE011 =playSe( spep_1 + 96 , 1036 );
SE016 =playSe( spep_1 + 120 , 1036 );
setSeVolumeByWorkId( spep_1 + 120 , SE016 , 56 );
SE017 =playSe( spep_1 + 144 , 1036 );
setSeVolumeByWorkId( spep_1 + 144 , SE017 , 56 );
SE018 =playSe( spep_1 + 168 , 1036 );
setSeVolumeByWorkId( spep_1 + 168 , SE018 , 56 );
SE019 =playSe( spep_1 + 192 , 1036 );
setSeVolumeByWorkId( spep_1 + 192 , SE019 , 56 );
SE020 =playSe( spep_1 + 216 , 1036 );
setSeVolumeByWorkId( spep_1 + 216 , SE020 , 56 );

--スパーク
SE006 =playSe( spep_1 + 10 , 1148 );
setSeVolumeByWorkId( spep_1 + 10 , SE006 , 60 );

--顔カットイン
SE007 =playSe( spep_1 + 20 , 1018 );

--気ダメ
SE012 =playSe( spep_1 + 104 , 1044 );
setSeVolumeByWorkId( spep_1 + 104 , SE012 , 0 );
setSeVolumeByWorkId(spep_1 +104,SE012,0);
setSeVolumeByWorkId(spep_1 +105,SE012,2.1);
setSeVolumeByWorkId(spep_1 +106,SE012,4.2);
setSeVolumeByWorkId(spep_1 +107,SE012,6.3);
setSeVolumeByWorkId(spep_1 +108,SE012,8.4);
setSeVolumeByWorkId(spep_1 +109,SE012,10.5);
setSeVolumeByWorkId(spep_1 +110,SE012,12.6);
setSeVolumeByWorkId(spep_1 +111,SE012,14.7);
setSeVolumeByWorkId(spep_1 +112,SE012,16.8);
setSeVolumeByWorkId(spep_1 +113,SE012,18.9);
setSeVolumeByWorkId(spep_1 +114,SE012,21);
setSeVolumeByWorkId(spep_1 +115,SE012,23.1);
setSeVolumeByWorkId(spep_1 +116,SE012,25.2);
setSeVolumeByWorkId(spep_1 +117,SE012,27.3);
setSeVolumeByWorkId(spep_1 +118,SE012,29.4);
setSeVolumeByWorkId(spep_1 +119,SE012,31.5);
setSeVolumeByWorkId(spep_1 +120,SE012,33.6);
setSeVolumeByWorkId(spep_1 +121,SE012,35.7);
setSeVolumeByWorkId(spep_1 +122,SE012,37.8);
setSeVolumeByWorkId(spep_1 +123,SE012,39.9);
setSeVolumeByWorkId(spep_1 +124,SE012,42);
setSeVolumeByWorkId(spep_1 +125,SE012,44.1);
setSeVolumeByWorkId(spep_1 +126,SE012,46.2);
setSeVolumeByWorkId(spep_1 +127,SE012,48.3);
setSeVolumeByWorkId(spep_1 +128,SE012,50.4);
setSeVolumeByWorkId(spep_1 +129,SE012,52.5);
setSeVolumeByWorkId(spep_1 +130,SE012,54.6);
setSeVolumeByWorkId(spep_1 +131,SE012,56.7);
setSeVolumeByWorkId(spep_1 +132,SE012,58.8);
setSeVolumeByWorkId(spep_1 +133,SE012,60.9);
setSeVolumeByWorkId(spep_1 +134,SE012,63);
setSeVolumeByWorkId(spep_1 +135,SE012,65.1);
setSeVolumeByWorkId(spep_1 +136,SE012,67.2);
setSeVolumeByWorkId(spep_1 +137,SE012,69.3);
setSeVolumeByWorkId(spep_1 +138,SE012,71.4);
setSeVolumeByWorkId(spep_1 +139,SE012,73.5);
setSeVolumeByWorkId(spep_1 +140,SE012,75.6);
setSeVolumeByWorkId(spep_1 +141,SE012,77.7);
setSeVolumeByWorkId(spep_1 +142,SE012,79.8);
setSeVolumeByWorkId(spep_1 +143,SE012,81.9);
setSeVolumeByWorkId(spep_1 +144,SE012,84);
setSeVolumeByWorkId(spep_1 +145,SE012,86.1);
setSeVolumeByWorkId(spep_1 +146,SE012,88.2);
setSeVolumeByWorkId(spep_1 +147,SE012,90.3);
setSeVolumeByWorkId(spep_1 +148,SE012,92.3);
setSeVolumeByWorkId(spep_1 +149,SE012,94.4);
setSeVolumeByWorkId(spep_1 +150,SE012,96.5);
setSeVolumeByWorkId(spep_1 +151,SE012,98.6);
setSeVolumeByWorkId(spep_1 +152,SE012,100.8);
setSeVolumeByWorkId(spep_1 +153,SE012,102.9);
setSeVolumeByWorkId(spep_1 +154,SE012,105);
setSeVolumeByWorkId(spep_1 +155,SE012,107.1);
setSeVolumeByWorkId(spep_1 +156,SE012,109.2);
setSeVolumeByWorkId(spep_1 +157,SE012,111.3);
setSeVolumeByWorkId(spep_1 +158,SE012,113.4);
setSeVolumeByWorkId(spep_1 +159,SE012,115.5);
setSeVolumeByWorkId(spep_1 +160,SE012,117.6);
setSeVolumeByWorkId(spep_1 +161,SE012,119.7);
setSeVolumeByWorkId(spep_1 +162,SE012,121.8);
setSeVolumeByWorkId(spep_1 +163,SE012,123.9);
setSeVolumeByWorkId(spep_1 +164,SE012,126);
setSeVolumeByWorkId(spep_1 +165,SE012,128.1);
setSeVolumeByWorkId(spep_1 +166,SE012,130.2);
setSeVolumeByWorkId(spep_1 +167,SE012,132.3);
setSeVolumeByWorkId(spep_1 +168,SE012,134.4);
setSeVolumeByWorkId(spep_1 +169,SE012,136.5);
setSeVolumeByWorkId(spep_1 +170,SE012,138.6);
setSeVolumeByWorkId(spep_1 +171,SE012,140.7);
setSeVolumeByWorkId(spep_1 +172,SE012,142.8);
setSeVolumeByWorkId(spep_1 +173,SE012,144.9);
setSeVolumeByWorkId(spep_1 +174,SE012,147);
setSeVolumeByWorkId(spep_1 +175,SE012,149.1);
setSeVolumeByWorkId(spep_1 +176,SE012,151.2);
setSeVolumeByWorkId(spep_1 +177,SE012,153.3);
setSeVolumeByWorkId(spep_1 +178,SE012,155.4);
setSeVolumeByWorkId(spep_1 +179,SE012,157.5);
setSeVolumeByWorkId(spep_1 +180,SE012,159.6);
setSeVolumeByWorkId(spep_1 +181,SE012,161.7);
setSeVolumeByWorkId(spep_1 +182,SE012,163.8);
setSeVolumeByWorkId(spep_1 +183,SE012,165.9);
setSeVolumeByWorkId(spep_1 +184,SE012,168);
setSeVolumeByWorkId(spep_1 +185,SE012,170.1);
setSeVolumeByWorkId(spep_1 +186,SE012,172.2);
setSeVolumeByWorkId(spep_1 +187,SE012,174.3);
setSeVolumeByWorkId(spep_1 +188,SE012,176.4);
setSeVolumeByWorkId(spep_1 +189,SE012,178.5);
setSeVolumeByWorkId(spep_1 +190,SE012,180.6);
setSeVolumeByWorkId(spep_1 +191,SE012,182.7);
setSeVolumeByWorkId(spep_1 +192,SE012,184.8);
setSeVolumeByWorkId(spep_1 +193,SE012,186.9);
setSeVolumeByWorkId(spep_1 +194,SE012,189);
setSeVolumeByWorkId(spep_1 +195,SE012,191.1);
setSeVolumeByWorkId(spep_1 +196,SE012,193.2);
setSeVolumeByWorkId(spep_1 +197,SE012,195.3);
setSeVolumeByWorkId(spep_1 +198,SE012,197.4);
setSeVolumeByWorkId(spep_1 +199,SE012,199.5);
setSeVolumeByWorkId(spep_1 +200,SE012,200);
SE013 =playSe( spep_1 + 114 , 1035 );
setSeVolumeByWorkId( spep_1 + 114 , SE013 , 126 );
SE014 =playSe( spep_1 + 114 , 1024 );
SE015 =playSe( spep_1 + 116 , 1258 );
setSeVolumeByWorkId( spep_1 + 116 , SE015 , 50 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 220, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+212 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+220;
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

--オーラ
stopSe( spep_2 + 2 , SE020, 0);

--気ダメ
stopSe( spep_2 + 2 , SE012, 0);

--白フェード
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
discharge = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, discharge, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, discharge, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, discharge, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, discharge, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, discharge, 0 );
setEffRotateKey( spep_3 + 60, discharge, 0 );
setEffAlphaKey( spep_3 + 0, discharge, 255 );
setEffAlphaKey( spep_3 + 60, discharge, 255 );

--SE
--気弾発射
SE022 =playSe( spep_3 + 0 , 1145 );
SE023 =playSe( spep_3 + 0 , 1027 );
setSeVolumeByWorkId( spep_3 + 0 , SE023 , 68 );

--白フェード
entryFade( spep_3+50 , 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 60;
------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 70, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 70, beam, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );
    
   
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
--気弾迫る
SE026 =playSe( spep_4+6  , 1179 );
setSeVolumeByWorkId( spep_4+6  , SE026 , 158 );
setPitch( spep_4+6 , SE026, 200 );
setTimeStretch( SE026, 0.75, 10, 1 );

SE024 =playSe( spep_4 + 6 , 1193 );
setSeVolumeByWorkId( spep_4 + 6 , SE024 , 0 );
setSeVolumeByWorkId(spep_4 +6,SE024,0);
setSeVolumeByWorkId(spep_4 +7,SE024,1.6);
setSeVolumeByWorkId(spep_4 +8,SE024,3.2);
setSeVolumeByWorkId(spep_4 +9,SE024,4.8);
setSeVolumeByWorkId(spep_4 +10,SE024,6.4);
setSeVolumeByWorkId(spep_4 +11,SE024,8);
setSeVolumeByWorkId(spep_4 +12,SE024,9.6);
setSeVolumeByWorkId(spep_4 +13,SE024,11.2);
setSeVolumeByWorkId(spep_4 +14,SE024,12.8);
setSeVolumeByWorkId(spep_4 +15,SE024,14.4);
setSeVolumeByWorkId(spep_4 +16,SE024,16);
setSeVolumeByWorkId(spep_4 +17,SE024,17.6);
setSeVolumeByWorkId(spep_4 +18,SE024,19.2);
setSeVolumeByWorkId(spep_4 +19,SE024,20.8);
setSeVolumeByWorkId(spep_4 +20,SE024,22.4);
setSeVolumeByWorkId(spep_4 +21,SE024,24);
setSeVolumeByWorkId(spep_4 +22,SE024,25.6);
setSeVolumeByWorkId(spep_4 +23,SE024,27.2);
setSeVolumeByWorkId(spep_4 +24,SE024,28.8);
setSeVolumeByWorkId(spep_4 +25,SE024,30.4);
setSeVolumeByWorkId(spep_4 +26,SE024,32);
setSeVolumeByWorkId(spep_4 +27,SE024,33.6);
setSeVolumeByWorkId(spep_4 +28,SE024,35.2);
setSeVolumeByWorkId(spep_4 +29,SE024,36.8);
setSeVolumeByWorkId(spep_4 +30,SE024,38.4);
setSeVolumeByWorkId(spep_4 +31,SE024,40);
setSeVolumeByWorkId(spep_4 +32,SE024,41.6);
setSeVolumeByWorkId(spep_4 +33,SE024,43.2);
setSeVolumeByWorkId(spep_4 +34,SE024,44.8);
setSeVolumeByWorkId(spep_4 +35,SE024,46.4);
setSeVolumeByWorkId(spep_4 +36,SE024,48);
setSeVolumeByWorkId(spep_4 +37,SE024,49.6);
setSeVolumeByWorkId(spep_4 +38,SE024,51.2);
setSeVolumeByWorkId(spep_4 +39,SE024,52.8);
setSeVolumeByWorkId(spep_4 +40,SE024,54.4);
setSeVolumeByWorkId(spep_4 +41,SE024,56);
setSeVolumeByWorkId(spep_4 +42,SE024,57.6);
setSeVolumeByWorkId(spep_4 +43,SE024,59.2);
setSeVolumeByWorkId(spep_4 +44,SE024,60.8);
setSeVolumeByWorkId(spep_4 +45,SE024,62.4);
setSeVolumeByWorkId(spep_4 +46,SE024,64);
setSeVolumeByWorkId(spep_4 +47,SE024,65.6);
setSeVolumeByWorkId(spep_4 +48,SE024,67.2);
setSeVolumeByWorkId(spep_4 +49,SE024,68.8);
setSeVolumeByWorkId(spep_4 +50,SE024,71);
setStartTimeMs( SE024,  367 );
SE025 =playSe( spep_4 + 6 , 1215 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 70;
------------------------------------------------------
-- 貫通
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 100, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 100, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 100, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 100, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 101 );
changeAnime( spep_5-3 + 20, 1, 108 );
changeAnime( spep_5-3 + 60, 1, 106 );

setMoveKey( spep_5 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_5-3 + 19, 1, 0, 0 , 0 );
setMoveKey( spep_5-3 + 20, 1, 1, 15.9 , 0 );
setMoveKey( spep_5-3 + 22, 1, 2.1, 16.2 , 0 );
setMoveKey( spep_5-3 + 24, 1, 3.2, 16.4 , 0 );
setMoveKey( spep_5-3 + 26, 1, 4.3, 16.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 5.4, 17 , 0 );
setMoveKey( spep_5-3 + 30, 1, 6.5, 17.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 7.6, 17.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 8.7, 17.7 , 0 );
setMoveKey( spep_5-3 + 36, 1, 9.8, 18 , 0 );
setMoveKey( spep_5-3 + 38, 1, 10.9, 18.3 , 0 );
setMoveKey( spep_5-3 + 40, 1, 12.1, 18.5 , 0 );
setMoveKey( spep_5-3 + 42, 1, 13.2, 18.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 14.3, 19.1 , 0 );
setMoveKey( spep_5-3 + 46, 1, 15.4, 19.3 , 0 );
setMoveKey( spep_5-3 + 48, 1, 16.5, 19.6 , 0 );
setMoveKey( spep_5-3 + 50, 1, 17.6, 19.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 18.7, 20.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 19.8, 20.4 , 0 );
setMoveKey( spep_5-3 + 56, 1, 20.9, 20.6 , 0 );
setMoveKey( spep_5-3 + 59, 1, 22, 20.9 , 0 );
setMoveKey( spep_5-3 + 60, 1, 4.1, 25 , 0 );
setMoveKey( spep_5-3 + 62, 1, 11.6, 27.7 , 0 );
setMoveKey( spep_5-3 + 64, 1, 18.9, 31.1 , 0 );
setMoveKey( spep_5-3 + 66, 1, 25.9, 34.6 , 0 );
setMoveKey( spep_5-3 + 68, 1, 32.9, 38 , 0 );
setMoveKey( spep_5-3 + 70, 1, 39.6, 41.2 , 0 );
setMoveKey( spep_5-3 + 72, 1, 46.2, 44.1 , 0 );
setMoveKey( spep_5-3 + 74, 1, 52.7, 46.7 , 0 );
setMoveKey( spep_5-3 + 76, 1, 59.1, 48.9 , 0 );
setMoveKey( spep_5-3 + 78, 1, 65.4, 50.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, 71.5, 52.3 , 0 );
setMoveKey( spep_5-3 + 82, 1, 77.5, 53.5 , 0 );
setMoveKey( spep_5-3 + 84, 1, 83.4, 54.2 , 0 );
setMoveKey( spep_5-3 + 86, 1, 89.2, 54.5 , 0 );
setMoveKey( spep_5-3 + 88, 1, 94.9, 54.5 , 0 );
setMoveKey( spep_5-3 + 90, 1, 100.4, 53.9 , 0 );
setMoveKey( spep_5-3 + 92, 1, 105.9, 52.9 , 0 );
setMoveKey( spep_5-3 + 94, 1, 111.3, 51.5 , 0 );
setMoveKey( spep_5-3 + 96, 1, 116.7, 49.5 , 0 );
setMoveKey( spep_5-3 + 98, 1, 122, 47 , 0 );

setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 19, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 98, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, -10.5 );
setRotateKey( spep_5-3 + 19, 1, -10.5 );
setRotateKey( spep_5-3 + 20, 1, -12.1 );
setRotateKey( spep_5-3 + 22, 1, -12.2 );
setRotateKey( spep_5-3 + 59, 1, -12.2 );
setRotateKey( spep_5-3 + 60, 1, -38 );
setRotateKey( spep_5-3 + 62, 1, -36.9 );
setRotateKey( spep_5-3 + 64, 1, -34.6 );
setRotateKey( spep_5-3 + 66, 1, -31.7 );
setRotateKey( spep_5-3 + 68, 1, -28.5 );
setRotateKey( spep_5-3 + 70, 1, -25.2 );
setRotateKey( spep_5-3 + 72, 1, -21.8 );
setRotateKey( spep_5-3 + 74, 1, -18.5 );
setRotateKey( spep_5-3 + 76, 1, -15.2 );
setRotateKey( spep_5-3 + 78, 1, -11.9 );
setRotateKey( spep_5-3 + 80, 1, -8.7 );
setRotateKey( spep_5-3 + 82, 1, -5.6 );
setRotateKey( spep_5-3 + 84, 1, -2.7 );
setRotateKey( spep_5-3 + 86, 1, 0.2 );
setRotateKey( spep_5-3 + 88, 1, 2.8 );
setRotateKey( spep_5-3 + 90, 1, 5.4 );
setRotateKey( spep_5-3 + 92, 1, 7.8 );
setRotateKey( spep_5-3 + 94, 1, 10 );
setRotateKey( spep_5-3 + 96, 1, 12.1 );
setRotateKey( spep_5-3 + 98, 1, 14 );

--SE
--気弾迫る
stopSe( spep_5 + 20, SE024, 15);
stopSe( spep_5 + 22, SE025, 16);

--気弾敵貫く
SE027 =playSe( spep_5 + 18 , 1178 );
setSeVolumeByWorkId( spep_5 + 18 , SE027 , 61 );
SE028 =playSe( spep_5 + 18 , 1026 );
SE029 =playSe( spep_5 + 18 , 1162 );
setSeVolumeByWorkId( spep_5 + 18 , SE029 , 68 );
SE030 =playSe( spep_5 + 20 , 1011 );
setSeVolumeByWorkId( spep_5 + 20 , SE030 , 93 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 18 );
endPhase( spep_5 + 90 );
end
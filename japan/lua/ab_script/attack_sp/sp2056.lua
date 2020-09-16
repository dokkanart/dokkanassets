--1020220:超サイヤ人2ベジータ(天使)_ビッグ・バン・アタック
--sp_effect_a2_00146

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
SP_01=	156013	;--	気合入れ
SP_02=	156019	;--	殴る×２　前面
SP_03=	156020	;--	殴る×２　背景
SP_04=	156021	;--	瞬間移動～膝蹴り　前面
SP_05=	156022	;--	瞬間移動～膝蹴り　背景
SP_06=	156023	;--	殴りかかる
SP_07=	156024	;--	殴って吹っ飛ばす　前面
SP_08=	156025	;--	殴って吹っ飛ばす　背景
SP_09=	156014	;--	ビッグバンアタック構え（セリフカットイン用）
SP_10=	156015	;--	ビッグバンアタック発射
SP_11=	156016	;--	命中　手前
SP_12=	156017	;--	命中　背景
SP_13=	156018	;--	岩に着弾～爆発
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
-- 気合入れ
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
style = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, style, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, style, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, style, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, style, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, style, 0 );
setEffRotateKey( spep_0 + 96, style, 0 );
setEffAlphaKey( spep_0 + 0, style, 255 );
setEffAlphaKey( spep_0 + 94, style, 255 );
setEffAlphaKey( spep_0 + 95, style, 255 );
setEffAlphaKey( spep_0 + 96, style, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 42,  906, 54+2, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 42, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 95, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 42, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 95, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0-3 + 42, shuchusen1, 180 );
setEffRotateKey( spep_0 + 95, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 42, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 95, shuchusen1, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
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
--気ダメ
SE001 =playSe( spep_0 + 44 , 1024 );
setTimeStretch( SE001, 0.77, 10, 1 );
SE002 =playSe( spep_0 + 44 , 1035 );
setSeVolumeByWorkId( spep_0 + 44 , SE002 , 126 );

--スパーク
SE003 =playSe( spep_0 + 44 , 1147 );
setSeVolumeByWorkId( spep_0 + 44 , SE003 , 40 );

--オーラ
SE004 =playSe( spep_0 + 60 , 1036 );
setSeVolumeByWorkId( spep_0 + 60 , SE004 , 63 );
SE005 =playSe( spep_0 + 84 , 1036 );
setSeVolumeByWorkId( spep_0 + 84 , SE005 , 63 );


--次の準備
spep_1=spep_0+96;
------------------------------------------------------
-- 殴る×２　前面
------------------------------------------------------
-- ** エフェクト等 ** --
Punch_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, Punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 120, Punch_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, Punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, Punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Punch_f, 0 );
setEffRotateKey( spep_1 + 120, Punch_f, 0 );
setEffAlphaKey( spep_1 + 0, Punch_f, 255 );
setEffAlphaKey( spep_1 + 120, Punch_f, 255 );
setEffAlphaKey( spep_1 + 121, Punch_f, 0 );
setEffAlphaKey( spep_1 + 122, Punch_f, 0 );

-- ** エフェクト等 ** --
Punch_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, Punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 120, Punch_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, Punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, Punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Punch_b, 0 );
setEffRotateKey( spep_1 + 120, Punch_b, 0 );
setEffAlphaKey( spep_1 + 0, Punch_b, 255 );
setEffAlphaKey( spep_1 + 120, Punch_b, 255 );
setEffAlphaKey( spep_1 + 121, Punch_b, 0 );
setEffAlphaKey( spep_1 + 122, Punch_b, 0 );

--敵のうごき
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 23, 1, 0 );

changeAnime( spep_1 + 0, 1, 17 );

setMoveKey( spep_1 + 0, 1, -559.6, -420.5 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -486.6, -397.1 , 0 );
setMoveKey( spep_1-3 + 4, 1, -425.9, -377.7 , 0 );
setMoveKey( spep_1-3 + 6, 1, -374, -361 , 0 );
setMoveKey( spep_1-3 + 8, 1, -329.5, -346.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, -291.9, -334.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, -260.7, -324.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, -235.5, -316.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, -216.1, -310.4 , 0 );
setMoveKey( spep_1-3 + 18, 1, -202.4, -306 , 0 );
setMoveKey( spep_1-3 + 20, 1, -194.3, -303.4 , 0 );
setMoveKey( spep_1-1 + 23, 1, -191.6, -302.5 , 0 );

c=0.5;

setScaleKey( spep_1 + 0, 1, 2.8+c, 2.8+c );
setScaleKey( spep_1-1 + 23, 1, 2.8+c, 2.8+c );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-1 + 23, 1, 0 );

--敵のうごき
setDisp( spep_1-3 + 34, 1, 1 );
setDisp( spep_1-1 + 72, 1, 0 );

changeAnime( spep_1-3 + 34, 1, 6 );

setMoveKey( spep_1-3 + 34, 1, 280.7, -51.2 , 0 );
setMoveKey( spep_1-3 + 36, 1, 100.4, -241.1 , 0 );
setMoveKey( spep_1-3 + 38, 1, 68.7, -261.2 , 0 );
setMoveKey( spep_1-3 + 40, 1, 50.7, -243.2 , 0 );
setMoveKey( spep_1-3 + 42, 1, 72.7, -231.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 48.7, -231.2 , 0 );
setMoveKey( spep_1-3 + 46, 1, 68.7, -255.2 , 0 );
setMoveKey( spep_1-3 + 48, 1, 48.7, -239.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 62.7, -249.2 , 0 );
setMoveKey( spep_1-3 + 52, 1, 62.1, -249.2 , 0 );
setMoveKey( spep_1-3 + 54, 1, 60.1, -249.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 58.1, -249.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, 56, -249.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 54, -249.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, 51.9, -249.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, 30.7, -249.2 , 0 );
setMoveKey( spep_1-3 + 66, 1, 6.7, -247.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, -17.3, -246.2 , 0 );
setMoveKey( spep_1-3 + 70, 1, -41.3, -244.7 , 0 );
setMoveKey( spep_1-1 + 72, 1, -65.3, -243.2 , 0 );

d=0.5;

setScaleKey( spep_1-3 + 34, 1, 2.79+d, 2.79+d );
setScaleKey( spep_1-3 + 36, 1, 4.18+d, 4.18+d );
setScaleKey( spep_1-3 + 38, 1, 2.79+d, 2.79+d );
setScaleKey( spep_1-1 + 72, 1, 2.79+d, 2.79+d );

setRotateKey( spep_1-3 + 34, 1, 21.8 );
setRotateKey( spep_1-1 + 72, 1, 21.8 );

--敵のうごき
setDisp( spep_1-3 + 84, 1, 1 );
setDisp( spep_1 + 102, 1, 0 );

changeAnime( spep_1-3 + 84, 1, 7 );

setMoveKey( spep_1-3 + 84, 1, -36.7, -68.9 , 0 );
setMoveKey( spep_1-3 + 86, 1, -260.8, -98.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, -276.8, -118.9 , 0 );
setMoveKey( spep_1-3 + 90, 1, -296.8, -96.9 , 0 );
setMoveKey( spep_1-3 + 92, 1, -282.8, -88.9 , 0 );
setMoveKey( spep_1-3 + 94, 1, -268.8, -62.9 , 0 );
setMoveKey( spep_1-3 + 96, 1, -321.8, -61.9 , 0 );
setMoveKey( spep_1-3 + 98, 1, -374.8, -60.9 , 0 );
setMoveKey( spep_1-3 + 100, 1, -427.8, -59.9 , 0 );
setMoveKey( spep_1-1 + 102, 1, -480.8, -58.9 , 0 );

a=0.7;
b=2;

setScaleKey( spep_1-3 + 84, 1, 1.73-a, 1.73-a );
setScaleKey( spep_1-3 + 86, 1, 3.6-b, 3.6-b );
setScaleKey( spep_1-3 + 88, 1, 3.88-b, 3.88-b );
setScaleKey( spep_1-3 + 90, 1, 4.19-b, 4.19-b );
setScaleKey( spep_1-3 + 92, 1, 4.12-b, 4.12-b );
setScaleKey( spep_1-3 + 94, 1, 4.05-b, 4.05-b );
setScaleKey( spep_1-3 + 96, 1, 4.55-b, 4.55-b );
setScaleKey( spep_1-3 + 98, 1, 5.05-b, 5.05-b );
setScaleKey( spep_1-3 + 100, 1, 5.55-b, 5.55-b );
setScaleKey( spep_1 + 102, 1, 6.05-b, 6.05-b );

setRotateKey( spep_1-3 + 84, 1, 71.5 );
setRotateKey( spep_1-1 + 102, 1, 71.5 );

--SE
--スパーク
stopSe( spep_1 + 54 , SE003, 0);
SE013 =playSe( spep_1 + 38 , 1147 );
setSeVolumeByWorkId( spep_1 + 38 , SE013 , 20 );

--オーラ
SE006 =playSe( spep_1 + 0 , 1036 );
setSeVolumeByWorkId( spep_1 + 0 , SE006 , 63 );
SE011 =playSe( spep_1 + 24 , 1036 );
setSeVolumeByWorkId( spep_1 + 24 , SE011 , 32 );
SE014 =playSe( spep_1 + 48 , 1036 );
setSeVolumeByWorkId( spep_1 + 48 , SE014 , 32 );
SE015 =playSe( spep_1 + 72 , 1036 );
setSeVolumeByWorkId( spep_1 + 72 , SE015 , 32 );
SE020 =playSe( spep_1 + 96 , 1036 );
setSeVolumeByWorkId( spep_1 + 96 , SE020 , 32 );

--パンチ
SE007 =playSe( spep_1 + 20 , 1003 );
SE008 =playSe( spep_1 + 30 , 1009 );
setSeVolumeByWorkId( spep_1 + 30 , SE008 , 112 );
SE009 =playSe( spep_1 + 30 , 1187 );
stopSe( spep_1 + 38, SE009, 20);
SE010 =playSe( spep_1 + 30 , 19 );
setSeVolumeByWorkId( spep_1 + 30 , SE010 , 67 );
SE012 =playSe( spep_1 + 34 , 1110 );
setSeVolumeByWorkId( spep_1 + 34 , SE012 , 79 );

--パンチ２
SE016 =playSe( spep_1 + 80 , 1187 );
stopSe( spep_1 + 100, SE016, 12);
SE017 =playSe( spep_1 + 80 , 1010 );
SE018 =playSe( spep_1 + 80 , 1011 );
setSeVolumeByWorkId( spep_1 + 80 , SE018 , 72 );
SE019 =playSe( spep_1 + 84 , 1110 );
setSeVolumeByWorkId( spep_1 + 84 , SE019 , 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+120;

------------------------------------------------------
-- 瞬間移動～膝蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
knee_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, knee_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 104, knee_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, knee_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 104, knee_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knee_f, 0 );
setEffRotateKey( spep_2 + 104, knee_f, 0 );
setEffAlphaKey( spep_2 + 0, knee_f, 255 );
setEffAlphaKey( spep_2 + 104, knee_f, 255 );
setEffAlphaKey( spep_2 + 105, knee_f, 0 );
setEffAlphaKey( spep_2 + 106, knee_f, 0 );

-- ** エフェクト等 ** --
knee_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, knee_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 104, knee_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, knee_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 104, knee_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knee_b, 0 );
setEffRotateKey( spep_2 + 104, knee_b, 0 );
setEffAlphaKey( spep_2 + 0, knee_b, 255 );
setEffAlphaKey( spep_2 + 104, knee_b, 255 );
setEffAlphaKey( spep_2 + 105, knee_b, 0 );
setEffAlphaKey( spep_2 + 106, knee_b, 0 );

--敵のうごき
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 47, 1, 0 );

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, 41.5, -42.1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 46.5, 1.9 , 0 );
setMoveKey( spep_2-3 + 4, 1, 51.5, 45.8 , 0 );
setMoveKey( spep_2-3 + 6, 1, 56.5, 89.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, 61.5, 133.6 , 0 );
setMoveKey( spep_2-3 + 10, 1, 66.5, 177.4 , 0 );
setMoveKey( spep_2-3 + 12, 1, 71.5, 221.3 , 0 );
setMoveKey( spep_2-3 + 14, 1, 76.5, 265.2 , 0 );
setMoveKey( spep_2-3 + 16, 1, 77, 273.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, 77.4, 281.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, 77.9, 289.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 78.3, 297.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 78.8, 305.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, 78.8, 306.6 , 0 );
setMoveKey( spep_2-3 + 28, 1, 78.9, 307.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, 78.9, 308.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 79, 308.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 79, 309.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, 79.1, 310.4 , 0 );
setMoveKey( spep_2-3 + 38, 1, 79.1, 311.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, 79.2, 311.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 79.2, 312.7 , 0 );
setMoveKey( spep_2-3 + 44, 1, 79.3, 313.4 , 0 );
setMoveKey( spep_2-1 + 47, 1, 79.3, 314.2 , 0 );

setScaleKey( spep_2 + 0, 1, 7.99, 7.99 );
--setScaleKey( spep_2-3 + 2, 1, 7.11, 7.11 );
setScaleKey( spep_2-3 + 4, 1, 6.23, 6.23 );
setScaleKey( spep_2-3 + 6, 1, 5.34, 5.34 );
setScaleKey( spep_2-3 + 8, 1, 4.46, 4.46 );
setScaleKey( spep_2-3 + 10, 1, 3.57, 3.57 );
setScaleKey( spep_2-3 + 12, 1, 2.69, 2.69 );
setScaleKey( spep_2-3 + 14, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 18, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 20, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 24, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 26, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 28, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 32, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 36, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 38, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 40, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 42, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 44, 1, 1.31, 1.31 );
setScaleKey( spep_2-1 + 47, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 0, 1, -58.7 );
setRotateKey( spep_2 + 2, 1, -58.6 );
setRotateKey( spep_2-1 + 47, 1, -58.6 );

--敵のうごき
setDisp( spep_2-3 + 58, 1, 1 );
setDisp( spep_2 + 104, 1, 0 );

changeAnime( spep_2-3 + 58, 1, 108 );

setMoveKey( spep_2-3 + 58, 1, 93.2, 93.8 , 0 );
setMoveKey( spep_2-3 + 60, 1, 156.8, 151.5 , 0 );
setMoveKey( spep_2-3 + 62, 1, 165.6, 97.9 , 0 );
setMoveKey( spep_2-3 + 64, 1, 149.4, 133.2 , 0 );
setMoveKey( spep_2-3 + 66, 1, 110.7, 106.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, 108.4, 116.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, 85.4, 86 , 0 );
setMoveKey( spep_2-3 + 72, 1, 95.7, 99.5 , 0 );
setMoveKey( spep_2-3 + 74, 1, 98.1, 105.2 , 0 );
setMoveKey( spep_2-3 + 76, 1, 100.6, 110.9 , 0 );
setMoveKey( spep_2-3 + 78, 1, 103.1, 116.7 , 0 );
setMoveKey( spep_2-3 + 80, 1, 105.5, 122.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, 108, 128.1 , 0 );
setMoveKey( spep_2-3 + 84, 1, 110.5, 133.9 , 0 );
setMoveKey( spep_2-3 + 86, 1, 112.9, 139.6 , 0 );
setMoveKey( spep_2-3 + 88, 1, 115.4, 145.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 117.9, 151.1 , 0 );
setMoveKey( spep_2-3 + 92, 1, 120.3, 156.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 122.8, 162.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 125.3, 168.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 127.7, 174 , 0 );
setMoveKey( spep_2-3 + 100, 1, 130.2, 179.7 , 0 );
setMoveKey( spep_2-3 + 102, 1, 132.7, 185.4 , 0 );
setMoveKey( spep_2 + 104, 1, 135.1, 191.2 , 0 );
--setMoveKey( spep_2-3 + 106, 1, 137.6, 196.9 , 0 );

e=0.6;

setScaleKey( spep_2-3 + 58, 1, 1.99+e, 1.99+e );
setScaleKey( spep_2-3 + 59, 1, 1.99+e, 1.99+e );
setScaleKey( spep_2-3 + 60, 1, 3.19+e, 3.19+e );
setScaleKey( spep_2-3 + 61, 1, 3.19+e, 3.19+e );
setScaleKey( spep_2-3 + 62, 1, 2.95+e, 2.95+e );
setScaleKey( spep_2-3 + 64, 1, 2.72+e, 2.72+e );
setScaleKey( spep_2-3 + 66, 1, 2.48+e, 2.48+e );
setScaleKey( spep_2-3 + 68, 1, 2.24+e, 2.24+e );
setScaleKey( spep_2-3 + 70, 1, 2+e, 2+e );
setScaleKey( spep_2 + 104, 1, 2+e, 2+e );

setRotateKey( spep_2-3 + 58, 1, -47.9 );
setRotateKey( spep_2 + 104, 1, -47.9 );

--SE
--パンチ２
stopSe( spep_2 + 6, SE018, 55);

--オーラ
SE021 =playSe( spep_2 + 0 , 1036 );
setSeVolumeByWorkId( spep_2 + 0 , SE021 , 32 );
SE023 =playSe( spep_2 + 24 , 1036 );
setSeVolumeByWorkId( spep_2 + 24 , SE023 , 32 );
SE026 =playSe( spep_2 + 48 , 1036 );
setSeVolumeByWorkId( spep_2 + 48 , SE026 , 32 );
SE030 =playSe( spep_2 + 72 , 1036 );
setSeVolumeByWorkId( spep_2 + 72 , SE030 , 32 );
SE031 =playSe( spep_2 + 92 , 1036 );
setSeVolumeByWorkId( spep_2 + 92 , SE031 , 32 );

--瞬間移動
SE022 =playSe( spep_2 + 14 , 1109 );


--膝蹴り
SE024 =playSe( spep_2 + 38 , 1072 );
setTimeStretch( SE024, 0.77, 10, 1 );
SE025 =playSe( spep_2 + 52 , 1004 );
setSeVolumeByWorkId( spep_2 + 58 , SE025 , 71 );
SE027 =playSe( spep_2 + 57 , 1187 );
stopSe( spep_2 + 70, SE027, 12);
SE028 =playSe( spep_2 + 56 , 1190 );
SE029 =playSe( spep_2 + 56 , 1009 );

--スパーク
SE032 =playSe( spep_2 + 82 , 1148 );
setSeVolumeByWorkId( spep_2 + 82 , SE032 , 20 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+104;
------------------------------------------------------
-- 殴りかかる
------------------------------------------------------
-- ** エフェクト等 ** --
punching = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punching, 0, 0, 0 );
setEffMoveKey( spep_3 + 72, punching, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punching, 1.0, 1.0 );
setEffScaleKey( spep_3 + 72, punching, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punching, 0 );
setEffRotateKey( spep_3 + 72, punching, 0 );
setEffAlphaKey( spep_3 + 0, punching, 255 );
setEffAlphaKey( spep_3 + 70, punching, 255 );
setEffAlphaKey( spep_3 + 71, punching, 255 );
setEffAlphaKey( spep_3 + 72, punching, 0 );

--SE
--オーラ
SE036 =playSe( spep_3 + 0 , 1036 );
setSeVolumeByWorkId( spep_3 + 0 , SE036 , 32 );
SE037 =playSe( spep_3 + 24 , 1036 );
setSeVolumeByWorkId( spep_3 + 24 , SE037 , 32 );
SE038 =playSe( spep_3 + 48 , 1036 );
setSeVolumeByWorkId( spep_3 + 48 , SE038 , 32 );

--向かっていく
SE033 =playSe( spep_3 + 0 , 1182 );
setSeVolumeByWorkId( spep_3 + 0 , SE033 , 126 );
SE034 =playSe( spep_3 + 0 , 1183 );
SE035 =playSe( spep_3 + 0 , 9 );
setTimeStretch( SE035, 1.81, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+72;

------------------------------------------------------
-- 殴って吹っ飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
dispel_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, dispel_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, dispel_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, dispel_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, dispel_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, dispel_f, 0 );
setEffRotateKey( spep_4 + 60, dispel_f, 0 );
setEffAlphaKey( spep_4 + 0, dispel_f, 255 );
setEffAlphaKey( spep_4 + 60, dispel_f, 255 );


-- ** エフェクト等 ** --
dispel_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, dispel_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, dispel_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, dispel_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, dispel_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, dispel_b, 0 );
setEffRotateKey( spep_4 + 60, dispel_b, 0 );
setEffAlphaKey( spep_4 + 0, dispel_b, 255 );
setEffAlphaKey( spep_4 + 60, dispel_b, 255 );

--敵のうごき
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 95.3, -139.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 125.3, -162.4 , 0 );
setMoveKey( spep_4-3 + 4, 1, 137.8, -189.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 103.6, -155.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 122, -137.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 82.8, -123.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 104.7, -139.3 , 0 );
setMoveKey( spep_4-3 + 14, 1, 89.5, -113.1 , 0 );
setMoveKey( spep_4-3 + 16, 1, 104.3, -107.6 , 0 );
setMoveKey( spep_4-3 + 18, 1, 107.4, -96.3 , 0 );
setMoveKey( spep_4-3 + 20, 1, 110.5, -85 , 0 );
setMoveKey( spep_4-3 + 22, 1, 113.6, -73.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 116.8, -62.4 , 0 );
setMoveKey( spep_4-3 + 26, 1, 119.9, -51.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 123, -39.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 123.3, -38.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 123.6, -37.3 , 0 );
setMoveKey( spep_4-3 + 34, 1, 123.9, -36 , 0 );
setMoveKey( spep_4-3 + 36, 1, 124.1, -34.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 124.4, -33.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 124.7, -32.1 , 0 );
setMoveKey( spep_4-3 + 42, 1, 125, -30.8 , 0 );
setMoveKey( spep_4-3 + 44, 1, 125.3, -29.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 125.6, -28.2 , 0 );
setMoveKey( spep_4-3 + 48, 1, 125.9, -27 , 0 );
setMoveKey( spep_4-3 + 50, 1, 126.2, -25.7 , 0 );
setMoveKey( spep_4-3 + 52, 1, 126.4, -24.4 , 0 );
setMoveKey( spep_4-3 + 54, 1, 126.7, -23.1 , 0 );
setMoveKey( spep_4-3 + 56, 1, 127, -21.8 , 0 );
setMoveKey( spep_4-1 + 58, 1, 127.3, -20.5 , 0 );

setScaleKey( spep_4 + 0, 1, 2, 2 );
--setScaleKey( spep_4-3 + 2, 1, 3.17, 3.17 );
setScaleKey( spep_4-3 + 4, 1, 2.87, 2.87 );
setScaleKey( spep_4-3 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_4-3 + 8, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 10, 1, 2, 2 );
setScaleKey( spep_4-3 + 12, 1, 1.83, 1.83 );
setScaleKey( spep_4-3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_4-3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_4-3 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_4-3 + 22, 1, 1, 1 );
setScaleKey( spep_4-3 + 24, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 26, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 28, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 30, 1, 0.49, 0.49 );
setScaleKey( spep_4-3 + 32, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 34, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 38, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 40, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 42, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 44, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 48, 1, 0.37, 0.37 );
setScaleKey( spep_4-3 + 50, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 52, 1, 0.34, 0.34 );
setScaleKey( spep_4-3 + 54, 1, 0.33, 0.33 );
setScaleKey( spep_4-3 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_4-1 + 58, 1, 0.3, 0.3 );

setRotateKey( spep_4 + 0, 1, 22.8 );
setRotateKey( spep_4 + 2, 1, 23 );
setRotateKey( spep_4-1 + 58, 1, 23 );

--文字エントリー
ctbago = entryEffectLife( spep_4 + 0,  10021, 58, 0x100, -1, 0, -23.3, 154.1 );

setEffMoveKey( spep_4 + 0, ctbago, -23.3, 154.1 , 0 );
setEffMoveKey( spep_4 + 2, ctbago, 6.7, 222.4 , 0 );
setEffMoveKey( spep_4 + 4, ctbago, 25.6, 305 , 0 );
setEffMoveKey( spep_4 + 6, ctbago, 35, 294.4 , 0 );
setEffMoveKey( spep_4 + 8, ctbago, 26.2, 306.7 , 0 );
setEffMoveKey( spep_4 + 10, ctbago, 35.7, 296 , 0 );
setEffMoveKey( spep_4 + 12, ctbago, 26.7, 308.4 , 0 );
setEffMoveKey( spep_4 + 14, ctbago, 36.3, 297.6 , 0 );
setEffMoveKey( spep_4 + 16, ctbago, 27.3, 310.1 , 0 );
setEffMoveKey( spep_4 + 18, ctbago, 36.9, 299.2 , 0 );
setEffMoveKey( spep_4 + 20, ctbago, 27.8, 311.8 , 0 );
setEffMoveKey( spep_4 + 22, ctbago, 37.6, 300.7 , 0 );
setEffMoveKey( spep_4 + 24, ctbago, 28.4, 313.5 , 0 );
setEffMoveKey( spep_4 + 26, ctbago, 38.3, 302.3 , 0 );
setEffMoveKey( spep_4 + 28, ctbago, 28.9, 315.1 , 0 );
setEffMoveKey( spep_4 + 30, ctbago, 38.8, 304 , 0 );
setEffMoveKey( spep_4 + 32, ctbago, 29.5, 316.9 , 0 );
setEffMoveKey( spep_4 + 34, ctbago, 39.5, 305.6 , 0 );
setEffMoveKey( spep_4 + 36, ctbago, 30.1, 318.6 , 0 );
setEffMoveKey( spep_4 + 38, ctbago, 40.1, 307.2 , 0 );
setEffMoveKey( spep_4 + 40, ctbago, 30.6, 320.2 , 0 );
setEffMoveKey( spep_4 + 42, ctbago, 40.8, 308.7 , 0 );
setEffMoveKey( spep_4 + 44, ctbago, 31.1, 321.9 , 0 );
setEffMoveKey( spep_4 + 46, ctbago, 41.4, 310.3 , 0 );
setEffMoveKey( spep_4 + 48, ctbago, 31.7, 323.7 , 0 );
setEffMoveKey( spep_4 + 50, ctbago, 42, 312 , 0 );
setEffMoveKey( spep_4 + 52, ctbago, 32.3, 325.4 , 0 );
setEffMoveKey( spep_4 + 54, ctbago, 42.6, 313.6 , 0 );
setEffMoveKey( spep_4 + 56, ctbago, 32.8, 327.1 , 0 );
setEffMoveKey( spep_4 + 58, ctbago, 43.3, 315.2 , 0 );

setEffScaleKey( spep_4 + 0, ctbago, 0.82, 0.82 );
--setEffScaleKey( spep_4 + 2, ctbago, 2.07, 2.07 );
setEffScaleKey( spep_4 + 4, ctbago, 3.25, 3.25 );
setEffScaleKey( spep_4 + 6, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_4 + 8, ctbago, 3.28, 3.28 );
setEffScaleKey( spep_4 + 10, ctbago, 3.36, 3.36 );
setEffScaleKey( spep_4 + 12, ctbago, 3.31, 3.31 );
setEffScaleKey( spep_4 + 14, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_4 + 16, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_4 + 18, ctbago, 3.41, 3.41 );
setEffScaleKey( spep_4 + 20, ctbago, 3.36, 3.36 );
setEffScaleKey( spep_4 + 22, ctbago, 3.44, 3.44 );
setEffScaleKey( spep_4 + 24, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_4 + 26, ctbago, 3.47, 3.47 );
setEffScaleKey( spep_4 + 28, ctbago, 3.41, 3.41 );
setEffScaleKey( spep_4 + 30, ctbago, 3.5, 3.5 );
setEffScaleKey( spep_4 + 32, ctbago, 3.44, 3.44 );
setEffScaleKey( spep_4 + 34, ctbago, 3.53, 3.53 );
setEffScaleKey( spep_4 + 36, ctbago, 3.47, 3.47 );
setEffScaleKey( spep_4 + 38, ctbago, 3.55, 3.55 );
setEffScaleKey( spep_4 + 40, ctbago, 3.5, 3.5 );
setEffScaleKey( spep_4 + 42, ctbago, 3.58, 3.58 );
setEffScaleKey( spep_4 + 44, ctbago, 3.52, 3.52 );
setEffScaleKey( spep_4 + 46, ctbago, 3.61, 3.61 );
setEffScaleKey( spep_4 + 48, ctbago, 3.55, 3.55 );
setEffScaleKey( spep_4 + 50, ctbago, 3.64, 3.64 );
setEffScaleKey( spep_4 + 52, ctbago, 3.58, 3.58 );
setEffScaleKey( spep_4 + 54, ctbago, 3.66, 3.66 );
setEffScaleKey( spep_4 + 56, ctbago, 3.61, 3.61 );
setEffScaleKey( spep_4 + 58, ctbago, 3.69, 3.69 );

setEffRotateKey( spep_4 + 0, ctbago, -17.6 );
setEffRotateKey( spep_4 + 2, ctbago, -17.7 );
setEffRotateKey( spep_4 + 58, ctbago, -17.7 );

setEffAlphaKey( spep_4 + 0, ctbago, 255 );
setEffAlphaKey( spep_4 + 58, ctbago, 255 );

--SE
--向かっていく
stopSe( spep_4 + 4, SE034, 8);

--パンチ３
SE039 =playSe( spep_4 + 0 , 1120 );

--オーラ
SE040 =playSe( spep_4 + 8 , 1036 );
setSeVolumeByWorkId( spep_4 + 8 , SE040 , 32 );
SE041 =playSe( spep_4 + 32 , 1036 );
setSeVolumeByWorkId( spep_4 + 32 , SE041 , 32 );
SE043 =playSe( spep_4 + 56 , 1036 );
setSeVolumeByWorkId( spep_4 + 56 , SE043 , 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 56, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+60;
------------------------------------------------------
-- ビッグバンアタック構え（セリフカットイン用）
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 110, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 110, tame, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_5-3 + 30,  906, 78+3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5-3 + 30, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 30, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_5-3 + 108, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_5-3 + 30, shuchusen2, 180 );
setEffRotateKey( spep_5-3 + 108, shuchusen2, 180 );

setEffAlphaKey( spep_5-3 + 30, shuchusen2, 255 );
setEffAlphaKey( spep_5-3 + 108, shuchusen2, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_5+22  , 1504, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_5+22  , 1505, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_5 +34, 190006, 72, 0x100, -1, 0, 180, 510,10000);-- ゴゴゴゴ

setEffMoveKey(  spep_5 +34,  ctgogo,  180,  510);
setEffMoveKey(  spep_5 +106,  ctgogo,  180,  510);

setEffAlphaKey( spep_5 +34, ctgogo, 0 );
setEffAlphaKey( spep_5 + 35, ctgogo, 255 );
setEffAlphaKey( spep_5 + 36, ctgogo, 255 );
setEffAlphaKey( spep_5 + 100, ctgogo, 255 );
setEffAlphaKey( spep_5 + 102, ctgogo, 191 );
setEffAlphaKey( spep_5 + 104, ctgogo, 112 );
setEffAlphaKey( spep_5 + 106, ctgogo, 64 );

setEffRotateKey(  spep_5 +34,  ctgogo,  0);
setEffRotateKey(  spep_5 +106,  ctgogo,  0);

setEffScaleKey(  spep_5 +34,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_5 +96,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_5 +106,  ctgogo, 1.07, 1.07 );

--SE
--スパーク
stopSe( spep_5 + 14 , SE032, 0);
SE042 =playSe( spep_5 + 14 , 1147 );
setSeVolumeByWorkId( spep_5 + 14 , SE042 , 50 );

--オーラ
SE045 =playSe( spep_5 + 20 , 1036 );
setSeVolumeByWorkId( spep_5 + 20 , SE045 , 79 );
SE047 =playSe( spep_5 + 44 , 1036 );
setSeVolumeByWorkId( spep_5 + 44 , SE047 , 79 );
SE048 =playSe( spep_5 + 68 , 1036 );
setSeVolumeByWorkId( spep_5 + 68 , SE048 , 79 );
SE049 =playSe( spep_5 + 92 , 1036 );
setSeVolumeByWorkId( spep_5 + 92 , SE049 , 79 );

--手をあげる
SE044 =playSe( spep_5 + 8 , 1003 );

--顔カットイン
SE046 =playSe( spep_5 + 34 , 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--スパーク
stopSe( spep_6 + 0 , SE042, 4);
----オーラ
stopSe( spep_6 + 0 , SE049, 4);

--白フェード
entryFade( spep_6 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;
------------------------------------------------------
-- ビッグバンアタック発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 60, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 60, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 60, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 60, beam, 255 );

--SE
--気弾溜め
SE051 =playSe( spep_7 + 0 , 1276 );

--オーラ
SE052 =playSe( spep_7 + 0 , 1036 );
SE053 =playSe( spep_7 + 24 , 1036 );

--気弾発射
SE054 =playSe( spep_7 + 28 , 1022 );
SE055 =playSe( spep_7 + 28 , 1133 );
SE056 =playSe( spep_7 + 28 , 1213 );
setSeVolumeByWorkId( spep_7 + 28 , SE056 , 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_7 + 56, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_8=spep_7+60;
------------------------------------------------------
-- 命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 66, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 66, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 66, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 66, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 66, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 66, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 66, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 66, hit_b, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_8 + 0,  10014, 66, 0x100, -1, 0, 94, 364 );

setEffMoveKey( spep_8 + 0, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 2, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 4, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 6, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 8, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 10, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 12, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 14, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 16, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 18, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 20, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 22, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 24, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 26, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 28, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 30, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 32, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 34, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 36, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 38, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 40, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 42, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 44, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 46, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 48, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 50, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 52, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 54, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 56, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 58, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 60, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 62, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 64, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 66, ctzudododo, 88.2, 363.3 , 0 );
--setEffMoveKey( spep_8 + 68, ctzudododo, 94, 364 , 0 );

setEffScaleKey( spep_8 + 0, ctzudododo, 2.13, 2.13 );
setEffScaleKey( spep_8 + 66, ctzudododo, 2.13, 2.13 );

setEffRotateKey( spep_8 + 0, ctzudododo, 66 );
setEffRotateKey( spep_8 + 66, ctzudododo, 66 );

setEffAlphaKey( spep_8 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_8 + 66, ctzudododo, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 35, 1, 0 );

setBlendColor(spep_8+12,1,2,0,0,0,0.4);
setBlendColor(spep_8+14,1,2,0,0,0,0.8);
setBlendColor(spep_8+16,1,2,0,0,0,1);
setBlendColor(spep_8+34,1,2,0,0,0,1);
setBlendColor(spep_8+35,1,2,0,0,0,0);

changeAnime( spep_8-3 + 0, 1, 106 );

h=40;

setMoveKey( spep_8 + 0, 1, -84.5, 65-h , 0 );
--setMoveKey( spep_8-3 + 2, 1, -76.4, 70.4 , 0 );
setMoveKey( spep_8-3 + 4, 1, -60.2, 59.6-h , 0 );
setMoveKey( spep_8-3 + 6, 1, -57.4, 65-h , 0 );
setMoveKey( spep_8-3 + 8, 1, -35.8, 67.7-h , 0 );
setMoveKey( spep_8-3 + 10, 1, -33.1, 70.4-h , 0 );
setMoveKey( spep_8-3 + 12, 1, -16.9, 59.6-h , 0 );
setMoveKey( spep_8-3 + 14, 1, -14.2, 65-h , 0 );
setMoveKey( spep_8-3 + 16, 1, 37.9, 67.7-h , 0 );
setMoveKey( spep_8-3 + 18, 1, 71.2, 70.4-h , 0 );
setMoveKey( spep_8-1 + 20, 1, 117.9, 59.6-h , 0 );
setMoveKey( spep_8-1 + 22, 1, 100.9, 75.6-h , 0 );
setMoveKey( spep_8-1 + 24, 1, 115.9, 62.6-h , 0 );
setMoveKey( spep_8-1 + 26, 1, 106.9, 78.6-h , 0 );
setMoveKey( spep_8-1 + 28, 1, 117.9, 58.6-h , 0 );
setMoveKey( spep_8-1 + 30, 1, 108.9, 72.6-h , 0 );
setMoveKey( spep_8 + 35, 1, 112.9, 63.6-h , 0 );

setScaleKey( spep_8 + 0, 1, 0.91, 0.91 );
setScaleKey( spep_8 + 35, 1, 0.91, 0.91 );

setRotateKey( spep_8 + 0, 1, 17.8 );
setRotateKey( spep_8 + 2, 1, 17.9 );
setRotateKey( spep_8 + 35, 1, 17.9 );

--SE
--気弾道
SE057 =playSe( spep_8 + 0 , 1193 );
setSeVolumeByWorkId( spep_8 + 0 , SE057 , 0 );
setSeVolumeByWorkId( spep_8 + 1, SE057 ,4.5);
setSeVolumeByWorkId( spep_8 + 2, SE057 ,9);
setSeVolumeByWorkId( spep_8 + 3, SE057 ,13.5);
setSeVolumeByWorkId( spep_8 + 4, SE057 ,18);
setSeVolumeByWorkId( spep_8 + 5, SE057 ,22.5);
setSeVolumeByWorkId( spep_8 + 6, SE057 ,27);
setSeVolumeByWorkId( spep_8 + 7, SE057 ,31.5);
setSeVolumeByWorkId( spep_8 + 8, SE057 ,36);
setSeVolumeByWorkId( spep_8 + 9, SE057 ,40.5);
setSeVolumeByWorkId( spep_8 + 10, SE057 ,45);
setSeVolumeByWorkId( spep_8 + 11, SE057 ,49.5);
setSeVolumeByWorkId( spep_8 + 12, SE057 ,54);
setSeVolumeByWorkId( spep_8 + 13, SE057 ,58.5);
setSeVolumeByWorkId( spep_8 + 14, SE057 ,63);
setSeVolumeByWorkId( spep_8 + 15, SE057 ,67.5);
setSeVolumeByWorkId( spep_8 + 16, SE057 ,72);
setSeVolumeByWorkId( spep_8 + 17, SE057 ,76.5);
setSeVolumeByWorkId( spep_8 + 18, SE057 ,81);
setSeVolumeByWorkId( spep_8 + 19, SE057 ,85.5);
setSeVolumeByWorkId( spep_8 + 20, SE057 ,90);
setSeVolumeByWorkId( spep_8 + 21, SE057 ,94.5);
setSeVolumeByWorkId( spep_8 + 22, SE057 ,100);
setStartTimeMs( SE057,  567 );

--敵に被る
SE058 =playSe( spep_8 + 12 , 1021 );
setSeVolumeByWorkId( spep_8 + 12 , SE058 , 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+66;
------------------------------------------------------
-- 岩に着弾～爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 150, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 150, finish, 255 );

--SE
--気弾発射
stopSe( spep_9 + 50, SE056, 4);

--気弾道
stopSe( spep_9 + 50, SE057, 4);

--爆発
SE059 =playSe( spep_9 + 48 , 1023 );
SE060 =playSe( spep_9 + 48 , 1159 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_9 +56 );
endPhase( spep_9 + 140 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気合入れ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
style = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, style, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, style, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, style, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, style, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, style, 0 );
setEffRotateKey( spep_0 + 96, style, 0 );
setEffAlphaKey( spep_0 + 0, style, 255 );
setEffAlphaKey( spep_0 + 94, style, 255 );
setEffAlphaKey( spep_0 + 95, style, 255 );
setEffAlphaKey( spep_0 + 96, style, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 42,  906, 54+2, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 42, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 95, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 42, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 95, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0-3 + 42, shuchusen1, 180 );
setEffRotateKey( spep_0 + 95, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 42, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 95, shuchusen1, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
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
--気ダメ
SE001 =playSe( spep_0 + 44 , 1024 );
setTimeStretch( SE001, 0.77, 10, 1 );
SE002 =playSe( spep_0 + 44 , 1035 );
setSeVolumeByWorkId( spep_0 + 44 , SE002 , 126 );

--スパーク
SE003 =playSe( spep_0 + 44 , 1147 );
setSeVolumeByWorkId( spep_0 + 44 , SE003 , 40 );

--オーラ
SE004 =playSe( spep_0 + 60 , 1036 );
setSeVolumeByWorkId( spep_0 + 60 , SE004 , 63 );
SE005 =playSe( spep_0 + 84 , 1036 );
setSeVolumeByWorkId( spep_0 + 84 , SE005 , 63 );


--次の準備
spep_1=spep_0+96;
------------------------------------------------------
-- 殴る×２　前面
------------------------------------------------------
-- ** エフェクト等 ** --
Punch_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, Punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 120, Punch_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, Punch_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 120, Punch_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Punch_f, 0 );
setEffRotateKey( spep_1 + 120, Punch_f, 0 );
setEffAlphaKey( spep_1 + 0, Punch_f, 255 );
setEffAlphaKey( spep_1 + 120, Punch_f, 255 );
setEffAlphaKey( spep_1 + 121, Punch_f, 0 );
setEffAlphaKey( spep_1 + 122, Punch_f, 0 );

-- ** エフェクト等 ** --
Punch_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, Punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 120, Punch_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, Punch_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 120, Punch_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Punch_b, 0 );
setEffRotateKey( spep_1 + 120, Punch_b, 0 );
setEffAlphaKey( spep_1 + 0, Punch_b, 255 );
setEffAlphaKey( spep_1 + 120, Punch_b, 255 );
setEffAlphaKey( spep_1 + 121, Punch_b, 0 );
setEffAlphaKey( spep_1 + 122, Punch_b, 0 );

--敵のうごき
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 23, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 559.6, -420.5 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 486.6, -397.1 , 0 );
setMoveKey( spep_1-3 + 4, 1, 425.9, -377.7 , 0 );
setMoveKey( spep_1-3 + 6, 1, 374, -361 , 0 );
setMoveKey( spep_1-3 + 8, 1,329.5, -346.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 291.9, -334.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, 260.7, -324.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 235.5, -316.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, 216.1, -310.4 , 0 );
setMoveKey( spep_1-3 + 18, 1, 202.4, -306 , 0 );
setMoveKey( spep_1-3 + 20, 1, 194.3, -303.4 , 0 );
setMoveKey( spep_1-1 + 23, 1, 191.6, -302.5 , 0 );

c=0.5;

setScaleKey( spep_1 + 0, 1, 2.8+c, 2.8+c );
setScaleKey( spep_1-1 + 23, 1, 2.8+c, 2.8+c );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-1 + 23, 1, 0 );

--敵のうごき
setDisp( spep_1-3 + 34, 1, 1 );
setDisp( spep_1-1 + 72, 1, 0 );

changeAnime( spep_1-3 + 34, 1, 106 );

setMoveKey( spep_1-3 + 34, 1, -280.7, -51.2 , 0 );
setMoveKey( spep_1-3 + 36, 1, -100.4, -241.1 , 0 );
setMoveKey( spep_1-3 + 38, 1, -68.7, -261.2 , 0 );
setMoveKey( spep_1-3 + 40, 1, -50.7, -243.2 , 0 );
setMoveKey( spep_1-3 + 42, 1, -72.7, -231.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, -48.7, -231.2 , 0 );
setMoveKey( spep_1-3 + 46, 1, -68.7, -255.2 , 0 );
setMoveKey( spep_1-3 + 48, 1, -48.7, -239.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, -62.7, -249.2 , 0 );
setMoveKey( spep_1-3 + 52, 1, -62.1, -249.2 , 0 );
setMoveKey( spep_1-3 + 54, 1, -60.1, -249.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, -58.1, -249.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, -56, -249.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, -54, -249.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, -51.9, -249.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, -30.7, -249.2 , 0 );
setMoveKey( spep_1-3 + 66, 1, -6.7, -247.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 17.3, -246.2 , 0 );
setMoveKey( spep_1-3 + 70, 1, 41.3, -244.7 , 0 );
setMoveKey( spep_1-1 + 72, 1, 65.3, -243.2 , 0 );

d=0.5;

setScaleKey( spep_1-3 + 34, 1, 2.79+d, 2.79+d );
setScaleKey( spep_1-3 + 36, 1, 4.18+d, 4.18+d );
setScaleKey( spep_1-3 + 38, 1, 2.79+d, 2.79+d );
setScaleKey( spep_1-1 + 72, 1, 2.79+d, 2.79+d );

setRotateKey( spep_1-3 + 34, 1, -21.8 );
setRotateKey( spep_1-1 + 72, 1, -21.8 );

--敵のうごき
setDisp( spep_1-3 + 84, 1, 1 );
setDisp( spep_1-1 + 102, 1, 0 );

changeAnime( spep_1-3 + 84, 1, 107 );

setMoveKey( spep_1-3 + 84, 1, 36.7, -68.9 , 0 );
setMoveKey( spep_1-3 + 86, 1, 260.8, -98.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 276.8, -118.9 , 0 );
setMoveKey( spep_1-3 + 90, 1, 296.8, -96.9 , 0 );
setMoveKey( spep_1-3 + 92, 1, 282.8, -88.9 , 0 );
setMoveKey( spep_1-3 + 94, 1, 268.8, -62.9 , 0 );
setMoveKey( spep_1-3 + 96, 1, 321.8, -61.9 , 0 );
setMoveKey( spep_1-3 + 98, 1, 374.8, -60.9 , 0 );
setMoveKey( spep_1-3 + 100, 1, 427.8, -59.9 , 0 );
setMoveKey( spep_1-1 + 102, 1, 480.8, -58.9 , 0 );

a=0.7;
b=2;

setScaleKey( spep_1-3 + 84, 1, 1.73-a, 1.73-a );
setScaleKey( spep_1-3 + 86, 1, 3.6-b, 3.6-b );
setScaleKey( spep_1-3 + 88, 1, 3.88-b, 3.88-b );
setScaleKey( spep_1-3 + 90, 1, 4.19-b, 4.19-b );
setScaleKey( spep_1-3 + 92, 1, 4.12-b, 4.12-b );
setScaleKey( spep_1-3 + 94, 1, 4.05-b, 4.05-b );
setScaleKey( spep_1-3 + 96, 1, 4.55-b, 4.55-b );
setScaleKey( spep_1-3 + 98, 1, 5.05-b, 5.05-b );
setScaleKey( spep_1-3 + 100, 1, 5.55-b, 5.55-b );
setScaleKey( spep_1-1 + 102, 1, 6.05-b, 6.05-b );

setRotateKey( spep_1-3 + 84, 1, -71.5 );
setRotateKey( spep_1-1 + 102, 1, -71.5 );

--SE
--スパーク
stopSe( spep_1 + 54 , SE003, 0);
SE013 =playSe( spep_1 + 38 , 1147 );
setSeVolumeByWorkId( spep_1 + 38 , SE013 , 20 );

--オーラ
SE006 =playSe( spep_1 + 0 , 1036 );
setSeVolumeByWorkId( spep_1 + 0 , SE006 , 63 );
SE011 =playSe( spep_1 + 24 , 1036 );
setSeVolumeByWorkId( spep_1 + 24 , SE011 , 32 );
SE014 =playSe( spep_1 + 48 , 1036 );
setSeVolumeByWorkId( spep_1 + 48 , SE014 , 32 );
SE015 =playSe( spep_1 + 72 , 1036 );
setSeVolumeByWorkId( spep_1 + 72 , SE015 , 32 );
SE020 =playSe( spep_1 + 96 , 1036 );
setSeVolumeByWorkId( spep_1 + 96 , SE020 , 32 );

--パンチ
SE007 =playSe( spep_1 + 20 , 1003 );
SE008 =playSe( spep_1 + 30 , 1009 );
setSeVolumeByWorkId( spep_1 + 30 , SE008 , 112 );
SE009 =playSe( spep_1 + 30 , 1187 );
stopSe( spep_1 + 38, SE009, 20);
SE010 =playSe( spep_1 + 30 , 19 );
setSeVolumeByWorkId( spep_1 + 30 , SE010 , 67 );
SE012 =playSe( spep_1 + 34 , 1110 );
setSeVolumeByWorkId( spep_1 + 34 , SE012 , 79 );

--パンチ２
SE016 =playSe( spep_1 + 80 , 1187 );
stopSe( spep_1 + 100, SE016, 12);
SE017 =playSe( spep_1 + 80 , 1010 );
SE018 =playSe( spep_1 + 80 , 1011 );
setSeVolumeByWorkId( spep_1 + 80 , SE018 , 72 );
SE019 =playSe( spep_1 + 84 , 1110 );
setSeVolumeByWorkId( spep_1 + 84 , SE019 , 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+120;

------------------------------------------------------
-- 瞬間移動～膝蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
knee_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, knee_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 104, knee_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, knee_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 104, knee_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knee_f, 0 );
setEffRotateKey( spep_2 + 104, knee_f, 0 );
setEffAlphaKey( spep_2 + 0, knee_f, 255 );
setEffAlphaKey( spep_2 + 104, knee_f, 255 );
setEffAlphaKey( spep_2 + 105, knee_f, 0 );
setEffAlphaKey( spep_2 + 106, knee_f, 0 );

-- ** エフェクト等 ** --
knee_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, knee_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 104, knee_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, knee_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 104, knee_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knee_b, 0 );
setEffRotateKey( spep_2 + 104, knee_b, 0 );
setEffAlphaKey( spep_2 + 0, knee_b, 255 );
setEffAlphaKey( spep_2 + 104, knee_b, 255 );
setEffAlphaKey( spep_2 + 105, knee_b, 0 );
setEffAlphaKey( spep_2 + 106, knee_b, 0 );

--敵のうごき
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 47, 1, 0 );

changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, -41.5, -42.1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 46.5, 1.9 , 0 );
setMoveKey( spep_2-3 + 4, 1, -51.5, 45.8 , 0 );
setMoveKey( spep_2-3 + 6, 1, -56.5, 89.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, -61.5, 133.6 , 0 );
setMoveKey( spep_2-3 + 10, 1, -66.5, 177.4 , 0 );
setMoveKey( spep_2-3 + 12, 1, -71.5, 221.3 , 0 );
setMoveKey( spep_2-3 + 14, 1, -76.5, 265.2 , 0 );
setMoveKey( spep_2-3 + 16, 1, -77, 273.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, -77.4, 281.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, -77.9, 289.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, -78.3, 297.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, -78.8, 305.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, -78.8, 306.6 , 0 );
setMoveKey( spep_2-3 + 28, 1, -78.9, 307.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, -78.9, 308.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, -79, 308.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, -79, 309.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, -79.1, 310.4 , 0 );
setMoveKey( spep_2-3 + 38, 1, -79.1, 311.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, -79.2, 311.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, -79.2, 312.7 , 0 );
setMoveKey( spep_2-3 + 44, 1, -79.3, 313.4 , 0 );
setMoveKey( spep_2-1 + 47, 1, -79.3, 314.2 , 0 );

setScaleKey( spep_2 + 0, 1, 7.99, 7.99 );
--setScaleKey( spep_2-3 + 2, 1, 7.11, 7.11 );
setScaleKey( spep_2-3 + 4, 1, 6.23, 6.23 );
setScaleKey( spep_2-3 + 6, 1, 5.34, 5.34 );
setScaleKey( spep_2-3 + 8, 1, 4.46, 4.46 );
setScaleKey( spep_2-3 + 10, 1, 3.57, 3.57 );
setScaleKey( spep_2-3 + 12, 1, 2.69, 2.69 );
setScaleKey( spep_2-3 + 14, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 18, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 20, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 24, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 26, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 28, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 32, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 36, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 38, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 40, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 42, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 44, 1, 1.31, 1.31 );
setScaleKey( spep_2-1 + 47, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 0, 1, 58.7 );
setRotateKey( spep_2 + 2, 1, 58.6 );
setRotateKey( spep_2-1 + 47, 1, 58.6 );

--敵のうごき
setDisp( spep_2-3 + 58, 1, 1 );
setDisp( spep_2 + 104, 1, 0 );

changeAnime( spep_2-3 + 58, 1, 8 );

setMoveKey( spep_2-3 + 58, 1, -93.2, 93.8 , 0 );
setMoveKey( spep_2-3 + 60, 1, -156.8, 151.5 , 0 );
setMoveKey( spep_2-3 + 62, 1, -165.6, 97.9 , 0 );
setMoveKey( spep_2-3 + 64, 1, -149.4, 133.2 , 0 );
setMoveKey( spep_2-3 + 66, 1, -110.7, 106.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, -108.4, 116.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, -85.4, 86 , 0 );
setMoveKey( spep_2-3 + 72, 1, -95.7, 99.5 , 0 );
setMoveKey( spep_2-3 + 74, 1, -98.1, 105.2 , 0 );
setMoveKey( spep_2-3 + 76, 1, -100.6, 110.9 , 0 );
setMoveKey( spep_2-3 + 78, 1, -103.1, 116.7 , 0 );
setMoveKey( spep_2-3 + 80, 1, -105.5, 122.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, -108, 128.1 , 0 );
setMoveKey( spep_2-3 + 84, 1, -110.5, 133.9 , 0 );
setMoveKey( spep_2-3 + 86, 1, -112.9, 139.6 , 0 );
setMoveKey( spep_2-3 + 88, 1, -115.4, 145.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, -117.9, 151.1 , 0 );
setMoveKey( spep_2-3 + 92, 1, -120.3, 156.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, -122.8, 162.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, -125.3, 168.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, -127.7, 174 , 0 );
setMoveKey( spep_2-3 + 100, 1, -130.2, 179.7 , 0 );
setMoveKey( spep_2-3 + 102, 1, -132.7, 185.4 , 0 );
setMoveKey( spep_2 + 104, 1, -135.1, 191.2 , 0 );
--setMoveKey( spep_2-3 + 106, 1, 137.6, 196.9 , 0 );

e=0.6;

setScaleKey( spep_2-3 + 58, 1, 1.99+e, 1.99+e );
setScaleKey( spep_2-3 + 59, 1, 1.99+e, 1.99+e );
setScaleKey( spep_2-3 + 60, 1, 3.19+e, 3.19+e );
setScaleKey( spep_2-3 + 61, 1, 3.19+e, 3.19+e );
setScaleKey( spep_2-3 + 62, 1, 2.95+e, 2.95+e );
setScaleKey( spep_2-3 + 64, 1, 2.72+e, 2.72+e );
setScaleKey( spep_2-3 + 66, 1, 2.48+e, 2.48+e );
setScaleKey( spep_2-3 + 68, 1, 2.24+e, 2.24+e );
setScaleKey( spep_2-3 + 70, 1, 2+e, 2+e );
setScaleKey( spep_2 + 104, 1, 2+e, 2+e );

setRotateKey( spep_2-3 + 58, 1, 47.9 );
setRotateKey( spep_2 + 104, 1, 47.9 );

--SE
--パンチ２
stopSe( spep_2 + 6, SE018, 55);

--オーラ
SE021 =playSe( spep_2 + 0 , 1036 );
setSeVolumeByWorkId( spep_2 + 0 , SE021 , 32 );
SE023 =playSe( spep_2 + 24 , 1036 );
setSeVolumeByWorkId( spep_2 + 24 , SE023 , 32 );
SE026 =playSe( spep_2 + 48 , 1036 );
setSeVolumeByWorkId( spep_2 + 48 , SE026 , 32 );
SE030 =playSe( spep_2 + 72 , 1036 );
setSeVolumeByWorkId( spep_2 + 72 , SE030 , 32 );
SE031 =playSe( spep_2 + 92 , 1036 );
setSeVolumeByWorkId( spep_2 + 92 , SE031 , 32 );

--瞬間移動
SE022 =playSe( spep_2 + 14 , 1109 );


--膝蹴り
SE024 =playSe( spep_2 + 38 , 1072 );
setTimeStretch( SE024, 0.77, 10, 1 );
SE025 =playSe( spep_2 + 52 , 1004 );
setSeVolumeByWorkId( spep_2 + 58 , SE025 , 71 );
SE027 =playSe( spep_2 + 57 , 1187 );
stopSe( spep_2 + 70, SE027, 12);
SE028 =playSe( spep_2 + 56 , 1190 );
SE029 =playSe( spep_2 + 56 , 1009 );

--スパーク
SE032 =playSe( spep_2 + 82 , 1148 );
setSeVolumeByWorkId( spep_2 + 82 , SE032 , 20 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+104;
------------------------------------------------------
-- 殴りかかる
------------------------------------------------------
-- ** エフェクト等 ** --
punching = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punching, 0, 0, 0 );
setEffMoveKey( spep_3 + 72, punching, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punching, 1.0, 1.0 );
setEffScaleKey( spep_3 + 72, punching, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punching, 0 );
setEffRotateKey( spep_3 + 72, punching, 0 );
setEffAlphaKey( spep_3 + 0, punching, 255 );
setEffAlphaKey( spep_3 + 70, punching, 255 );
setEffAlphaKey( spep_3 + 71, punching, 255 );
setEffAlphaKey( spep_3 + 72, punching, 0 );

--SE
--オーラ
SE036 =playSe( spep_3 + 0 , 1036 );
setSeVolumeByWorkId( spep_3 + 0 , SE036 , 32 );
SE037 =playSe( spep_3 + 24 , 1036 );
setSeVolumeByWorkId( spep_3 + 24 , SE037 , 32 );
SE038 =playSe( spep_3 + 48 , 1036 );
setSeVolumeByWorkId( spep_3 + 48 , SE038 , 32 );

--向かっていく
SE033 =playSe( spep_3 + 0 , 1182 );
setSeVolumeByWorkId( spep_3 + 0 , SE033 , 126 );
SE034 =playSe( spep_3 + 0 , 1183 );
SE035 =playSe( spep_3 + 0 , 9 );
setTimeStretch( SE035, 1.81, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+72;

------------------------------------------------------
-- 殴って吹っ飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
dispel_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, dispel_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, dispel_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, dispel_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, dispel_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, dispel_f, 0 );
setEffRotateKey( spep_4 + 60, dispel_f, 0 );
setEffAlphaKey( spep_4 + 0, dispel_f, 255 );
setEffAlphaKey( spep_4 + 60, dispel_f, 255 );


-- ** エフェクト等 ** --
dispel_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, dispel_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, dispel_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, dispel_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, dispel_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, dispel_b, 0 );
setEffRotateKey( spep_4 + 60, dispel_b, 0 );
setEffAlphaKey( spep_4 + 0, dispel_b, 255 );
setEffAlphaKey( spep_4 + 60, dispel_b, 255 );

--敵のうごき
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 95.3, -139.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 125.3, -162.4 , 0 );
setMoveKey( spep_4-3 + 4, 1, 137.8, -189.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 103.6, -155.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 122, -137.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 82.8, -123.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 104.7, -139.3 , 0 );
setMoveKey( spep_4-3 + 14, 1, 89.5, -113.1 , 0 );
setMoveKey( spep_4-3 + 16, 1, 104.3, -107.6 , 0 );
setMoveKey( spep_4-3 + 18, 1, 107.4, -96.3 , 0 );
setMoveKey( spep_4-3 + 20, 1, 110.5, -85 , 0 );
setMoveKey( spep_4-3 + 22, 1, 113.6, -73.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 116.8, -62.4 , 0 );
setMoveKey( spep_4-3 + 26, 1, 119.9, -51.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 123, -39.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 123.3, -38.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 123.6, -37.3 , 0 );
setMoveKey( spep_4-3 + 34, 1, 123.9, -36 , 0 );
setMoveKey( spep_4-3 + 36, 1, 124.1, -34.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 124.4, -33.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 124.7, -32.1 , 0 );
setMoveKey( spep_4-3 + 42, 1, 125, -30.8 , 0 );
setMoveKey( spep_4-3 + 44, 1, 125.3, -29.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 125.6, -28.2 , 0 );
setMoveKey( spep_4-3 + 48, 1, 125.9, -27 , 0 );
setMoveKey( spep_4-3 + 50, 1, 126.2, -25.7 , 0 );
setMoveKey( spep_4-3 + 52, 1, 126.4, -24.4 , 0 );
setMoveKey( spep_4-3 + 54, 1, 126.7, -23.1 , 0 );
setMoveKey( spep_4-3 + 56, 1, 127, -21.8 , 0 );
setMoveKey( spep_4-1 + 58, 1, 127.3, -20.5 , 0 );

setScaleKey( spep_4 + 0, 1, 2, 2 );
--setScaleKey( spep_4-3 + 2, 1, 3.17, 3.17 );
setScaleKey( spep_4-3 + 4, 1, 2.87, 2.87 );
setScaleKey( spep_4-3 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_4-3 + 8, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 10, 1, 2, 2 );
setScaleKey( spep_4-3 + 12, 1, 1.83, 1.83 );
setScaleKey( spep_4-3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_4-3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_4-3 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_4-3 + 22, 1, 1, 1 );
setScaleKey( spep_4-3 + 24, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 26, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 28, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 30, 1, 0.49, 0.49 );
setScaleKey( spep_4-3 + 32, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 34, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 38, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 40, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 42, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 44, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 48, 1, 0.37, 0.37 );
setScaleKey( spep_4-3 + 50, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 52, 1, 0.34, 0.34 );
setScaleKey( spep_4-3 + 54, 1, 0.33, 0.33 );
setScaleKey( spep_4-3 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_4-1 + 58, 1, 0.3, 0.3 );

setRotateKey( spep_4 + 0, 1, 22.8 );
setRotateKey( spep_4 + 2, 1, 23 );
setRotateKey( spep_4-1 + 58, 1, 23 );

--文字エントリー
ctbago = entryEffectLife( spep_4 + 0,  10021, 58, 0x100, -1, 0, -23.3, 154.1 );

setEffMoveKey( spep_4 + 0, ctbago, -23.3, 154.1 , 0 );
setEffMoveKey( spep_4 + 2, ctbago, 6.7, 222.4 , 0 );
setEffMoveKey( spep_4 + 4, ctbago, 25.6, 305 , 0 );
setEffMoveKey( spep_4 + 6, ctbago, 35, 294.4 , 0 );
setEffMoveKey( spep_4 + 8, ctbago, 26.2, 306.7 , 0 );
setEffMoveKey( spep_4 + 10, ctbago, 35.7, 296 , 0 );
setEffMoveKey( spep_4 + 12, ctbago, 26.7, 308.4 , 0 );
setEffMoveKey( spep_4 + 14, ctbago, 36.3, 297.6 , 0 );
setEffMoveKey( spep_4 + 16, ctbago, 27.3, 310.1 , 0 );
setEffMoveKey( spep_4 + 18, ctbago, 36.9, 299.2 , 0 );
setEffMoveKey( spep_4 + 20, ctbago, 27.8, 311.8 , 0 );
setEffMoveKey( spep_4 + 22, ctbago, 37.6, 300.7 , 0 );
setEffMoveKey( spep_4 + 24, ctbago, 28.4, 313.5 , 0 );
setEffMoveKey( spep_4 + 26, ctbago, 38.3, 302.3 , 0 );
setEffMoveKey( spep_4 + 28, ctbago, 28.9, 315.1 , 0 );
setEffMoveKey( spep_4 + 30, ctbago, 38.8, 304 , 0 );
setEffMoveKey( spep_4 + 32, ctbago, 29.5, 316.9 , 0 );
setEffMoveKey( spep_4 + 34, ctbago, 39.5, 305.6 , 0 );
setEffMoveKey( spep_4 + 36, ctbago, 30.1, 318.6 , 0 );
setEffMoveKey( spep_4 + 38, ctbago, 40.1, 307.2 , 0 );
setEffMoveKey( spep_4 + 40, ctbago, 30.6, 320.2 , 0 );
setEffMoveKey( spep_4 + 42, ctbago, 40.8, 308.7 , 0 );
setEffMoveKey( spep_4 + 44, ctbago, 31.1, 321.9 , 0 );
setEffMoveKey( spep_4 + 46, ctbago, 41.4, 310.3 , 0 );
setEffMoveKey( spep_4 + 48, ctbago, 31.7, 323.7 , 0 );
setEffMoveKey( spep_4 + 50, ctbago, 42, 312 , 0 );
setEffMoveKey( spep_4 + 52, ctbago, 32.3, 325.4 , 0 );
setEffMoveKey( spep_4 + 54, ctbago, 42.6, 313.6 , 0 );
setEffMoveKey( spep_4 + 56, ctbago, 32.8, 327.1 , 0 );
setEffMoveKey( spep_4 + 58, ctbago, 43.3, 315.2 , 0 );

setEffScaleKey( spep_4 + 0, ctbago, 0.82, 0.82 );
--setEffScaleKey( spep_4 + 2, ctbago, 2.07, 2.07 );
setEffScaleKey( spep_4 + 4, ctbago, 3.25, 3.25 );
setEffScaleKey( spep_4 + 6, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_4 + 8, ctbago, 3.28, 3.28 );
setEffScaleKey( spep_4 + 10, ctbago, 3.36, 3.36 );
setEffScaleKey( spep_4 + 12, ctbago, 3.31, 3.31 );
setEffScaleKey( spep_4 + 14, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_4 + 16, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_4 + 18, ctbago, 3.41, 3.41 );
setEffScaleKey( spep_4 + 20, ctbago, 3.36, 3.36 );
setEffScaleKey( spep_4 + 22, ctbago, 3.44, 3.44 );
setEffScaleKey( spep_4 + 24, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_4 + 26, ctbago, 3.47, 3.47 );
setEffScaleKey( spep_4 + 28, ctbago, 3.41, 3.41 );
setEffScaleKey( spep_4 + 30, ctbago, 3.5, 3.5 );
setEffScaleKey( spep_4 + 32, ctbago, 3.44, 3.44 );
setEffScaleKey( spep_4 + 34, ctbago, 3.53, 3.53 );
setEffScaleKey( spep_4 + 36, ctbago, 3.47, 3.47 );
setEffScaleKey( spep_4 + 38, ctbago, 3.55, 3.55 );
setEffScaleKey( spep_4 + 40, ctbago, 3.5, 3.5 );
setEffScaleKey( spep_4 + 42, ctbago, 3.58, 3.58 );
setEffScaleKey( spep_4 + 44, ctbago, 3.52, 3.52 );
setEffScaleKey( spep_4 + 46, ctbago, 3.61, 3.61 );
setEffScaleKey( spep_4 + 48, ctbago, 3.55, 3.55 );
setEffScaleKey( spep_4 + 50, ctbago, 3.64, 3.64 );
setEffScaleKey( spep_4 + 52, ctbago, 3.58, 3.58 );
setEffScaleKey( spep_4 + 54, ctbago, 3.66, 3.66 );
setEffScaleKey( spep_4 + 56, ctbago, 3.61, 3.61 );
setEffScaleKey( spep_4 + 58, ctbago, 3.69, 3.69 );

setEffRotateKey( spep_4 + 0, ctbago, -17.6 );
setEffRotateKey( spep_4 + 2, ctbago, -17.7 );
setEffRotateKey( spep_4 + 58, ctbago, -17.7 );

setEffAlphaKey( spep_4 + 0, ctbago, 255 );
setEffAlphaKey( spep_4 + 58, ctbago, 255 );

--SE
--向かっていく
stopSe( spep_4 + 4, SE034, 8);

--パンチ３
SE039 =playSe( spep_4 + 0 , 1120 );

--オーラ
SE040 =playSe( spep_4 + 8 , 1036 );
setSeVolumeByWorkId( spep_4 + 8 , SE040 , 32 );
SE041 =playSe( spep_4 + 32 , 1036 );
setSeVolumeByWorkId( spep_4 + 32 , SE041 , 32 );
SE043 =playSe( spep_4 + 56 , 1036 );
setSeVolumeByWorkId( spep_4 + 56 , SE043 , 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 56, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+60;
------------------------------------------------------
-- ビッグバンアタック構え（セリフカットイン用）
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_5 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 110, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 110, tame, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_5-3 + 30,  906, 78+3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5-3 + 30, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 30, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_5-3 + 108, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_5-3 + 30, shuchusen2, 180 );
setEffRotateKey( spep_5-3 + 108, shuchusen2, 180 );

setEffAlphaKey( spep_5-3 + 30, shuchusen2, 255 );
setEffAlphaKey( spep_5-3 + 108, shuchusen2, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_5+22  , 1504, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_5+22  , 1505, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_5 +34, 190006, 72, 0x100, -1, 0, 80, 510,10000);-- ゴゴゴゴ

setEffMoveKey(  spep_5 +34,  ctgogo,  80,  510);
setEffMoveKey(  spep_5 +106,  ctgogo,  80,  510);

setEffAlphaKey( spep_5 +34, ctgogo, 0 );
setEffAlphaKey( spep_5 + 35, ctgogo, 255 );
setEffAlphaKey( spep_5 + 36, ctgogo, 255 );
setEffAlphaKey( spep_5 + 100, ctgogo, 255 );
setEffAlphaKey( spep_5 + 102, ctgogo, 191 );
setEffAlphaKey( spep_5 + 104, ctgogo, 112 );
setEffAlphaKey( spep_5 + 106, ctgogo, 64 );

setEffRotateKey(  spep_5 +34,  ctgogo,  0);
setEffRotateKey(  spep_5 +106,  ctgogo,  0);

setEffScaleKey(  spep_5 +34,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_5 +96,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_5 +106,  ctgogo, -1.07, 1.07 );

--SE
--スパーク
stopSe( spep_5 + 14 , SE032, 0);
SE042 =playSe( spep_5 + 14 , 1147 );
setSeVolumeByWorkId( spep_5 + 14 , SE042 , 50 );

--オーラ
SE045 =playSe( spep_5 + 20 , 1036 );
setSeVolumeByWorkId( spep_5 + 20 , SE045 , 79 );
SE047 =playSe( spep_5 + 44 , 1036 );
setSeVolumeByWorkId( spep_5 + 44 , SE047 , 79 );
SE048 =playSe( spep_5 + 68 , 1036 );
setSeVolumeByWorkId( spep_5 + 68 , SE048 , 79 );
SE049 =playSe( spep_5 + 92 , 1036 );
setSeVolumeByWorkId( spep_5 + 92 , SE049 , 79 );

--手をあげる
SE044 =playSe( spep_5 + 8 , 1003 );

--顔カットイン
SE046 =playSe( spep_5 + 34 , 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--スパーク
stopSe( spep_6 + 0 , SE042, 4);
----オーラ
stopSe( spep_6 + 0 , SE049, 4);

--白フェード
entryFade( spep_6 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;
------------------------------------------------------
-- ビッグバンアタック発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 60, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_7 + 60, beam, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 60, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 60, beam, 255 );

--SE
--気弾溜め
SE051 =playSe( spep_7 + 0 , 1276 );

--オーラ
SE052 =playSe( spep_7 + 0 , 1036 );
SE053 =playSe( spep_7 + 24 , 1036 );

--気弾発射
SE054 =playSe( spep_7 + 28 , 1022 );
SE055 =playSe( spep_7 + 28 , 1133 );
SE056 =playSe( spep_7 + 28 , 1213 );
setSeVolumeByWorkId( spep_7 + 28 , SE056 , 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_7 + 56, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_8=spep_7+60;
------------------------------------------------------
-- 命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 66, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 66, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 66, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 66, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 66, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 66, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 66, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 66, hit_b, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_8 + 0,  10014, 66, 0x100, -1, 0, 94, 364 );

setEffMoveKey( spep_8 + 0, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 2, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 4, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 6, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 8, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 10, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 12, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 14, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 16, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 18, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 20, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 22, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 24, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 26, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 28, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 30, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 32, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 34, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 36, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 38, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 40, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 42, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 44, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 46, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 48, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 50, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 52, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 54, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 56, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 58, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 60, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 62, ctzudododo, 88.2, 363.3 , 0 );
setEffMoveKey( spep_8 + 64, ctzudododo, 94, 364 , 0 );
setEffMoveKey( spep_8 + 66, ctzudododo, 88.2, 363.3 , 0 );
--setEffMoveKey( spep_8 + 68, ctzudododo, 94, 364 , 0 );

setEffScaleKey( spep_8 + 0, ctzudododo, 2.13, 2.13 );
setEffScaleKey( spep_8 + 66, ctzudododo, 2.13, 2.13 );

setEffRotateKey( spep_8 + 0, ctzudododo, -16 );
setEffRotateKey( spep_8 + 66, ctzudododo, -16 );

setEffAlphaKey( spep_8 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_8 + 66, ctzudododo, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 35, 1, 0 );

setBlendColor(spep_8+12,1,2,0,0,0,0.4);
setBlendColor(spep_8+14,1,2,0,0,0,0.8);
setBlendColor(spep_8+16,1,2,0,0,0,1);
setBlendColor(spep_8+34,1,2,0,0,0,1);
setBlendColor(spep_8+35,1,2,0,0,0,0);

changeAnime( spep_8-3 + 0, 1, 106 );

h=40;

setMoveKey( spep_8 + 0, 1, -84.5, 65-h , 0 );
--setMoveKey( spep_8-3 + 2, 1, -76.4, 70.4 , 0 );
setMoveKey( spep_8-3 + 4, 1, -60.2, 59.6-h , 0 );
setMoveKey( spep_8-3 + 6, 1, -57.4, 65-h , 0 );
setMoveKey( spep_8-3 + 8, 1, -35.8, 67.7-h , 0 );
setMoveKey( spep_8-3 + 10, 1, -33.1, 70.4-h , 0 );
setMoveKey( spep_8-3 + 12, 1, -16.9, 59.6-h , 0 );
setMoveKey( spep_8-3 + 14, 1, -14.2, 65-h , 0 );
setMoveKey( spep_8-3 + 16, 1, 37.9, 67.7-h , 0 );
setMoveKey( spep_8-3 + 18, 1, 71.2, 70.4-h , 0 );
setMoveKey( spep_8-1 + 20, 1, 117.9, 59.6-h , 0 );
setMoveKey( spep_8-1 + 22, 1, 100.9, 75.6-h , 0 );
setMoveKey( spep_8-1 + 24, 1, 115.9, 62.6-h , 0 );
setMoveKey( spep_8-1 + 26, 1, 106.9, 78.6-h , 0 );
setMoveKey( spep_8-1 + 28, 1, 117.9, 58.6-h , 0 );
setMoveKey( spep_8-1 + 30, 1, 108.9, 72.6-h , 0 );
setMoveKey( spep_8 + 35, 1, 112.9, 63.6-h , 0 );

setScaleKey( spep_8 + 0, 1, 0.91, 0.91 );
setScaleKey( spep_8 + 35, 1, 0.91, 0.91 );

setRotateKey( spep_8 + 0, 1, 17.8 );
setRotateKey( spep_8 + 2, 1, 17.9 );
setRotateKey( spep_8 + 35, 1, 17.9 );

--SE
--気弾道
SE057 =playSe( spep_8 + 0 , 1193 );
setSeVolumeByWorkId( spep_8 + 0 , SE057 , 0 );
setSeVolumeByWorkId( spep_8 + 1, SE057 ,4.5);
setSeVolumeByWorkId( spep_8 + 2, SE057 ,9);
setSeVolumeByWorkId( spep_8 + 3, SE057 ,13.5);
setSeVolumeByWorkId( spep_8 + 4, SE057 ,18);
setSeVolumeByWorkId( spep_8 + 5, SE057 ,22.5);
setSeVolumeByWorkId( spep_8 + 6, SE057 ,27);
setSeVolumeByWorkId( spep_8 + 7, SE057 ,31.5);
setSeVolumeByWorkId( spep_8 + 8, SE057 ,36);
setSeVolumeByWorkId( spep_8 + 9, SE057 ,40.5);
setSeVolumeByWorkId( spep_8 + 10, SE057 ,45);
setSeVolumeByWorkId( spep_8 + 11, SE057 ,49.5);
setSeVolumeByWorkId( spep_8 + 12, SE057 ,54);
setSeVolumeByWorkId( spep_8 + 13, SE057 ,58.5);
setSeVolumeByWorkId( spep_8 + 14, SE057 ,63);
setSeVolumeByWorkId( spep_8 + 15, SE057 ,67.5);
setSeVolumeByWorkId( spep_8 + 16, SE057 ,72);
setSeVolumeByWorkId( spep_8 + 17, SE057 ,76.5);
setSeVolumeByWorkId( spep_8 + 18, SE057 ,81);
setSeVolumeByWorkId( spep_8 + 19, SE057 ,85.5);
setSeVolumeByWorkId( spep_8 + 20, SE057 ,90);
setSeVolumeByWorkId( spep_8 + 21, SE057 ,94.5);
setSeVolumeByWorkId( spep_8 + 22, SE057 ,100);
setStartTimeMs( SE057,  567 );

--敵に被る
SE058 =playSe( spep_8 + 12 , 1021 );
setSeVolumeByWorkId( spep_8 + 12 , SE058 , 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+66;
------------------------------------------------------
-- 岩に着弾～爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 150, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 150, finish, 255 );

--SE
--気弾発射
stopSe( spep_9 + 50, SE056, 4);

--気弾道
stopSe( spep_9 + 50, SE057, 4);

--爆発
SE059 =playSe( spep_9 + 48 , 1023 );
SE060 =playSe( spep_9 + 48 , 1159 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_9 +56 );
endPhase( spep_9 + 140 );
end
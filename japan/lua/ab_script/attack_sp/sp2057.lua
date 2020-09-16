--1020220:超サイヤ人2ベジータ(天使)_命がけの１分間（ユニット必殺技）
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
SP_01=	156026	;--	悟空～ベジータ気合い入れ
SP_02=	156019	;--	殴る×２　前面
SP_03=	156020	;--	殴る×２　背景
SP_04=	156021	;--	瞬間移動～膝蹴り　前面
SP_05=	156022	;--	瞬間移動～膝蹴り　背景
SP_06=	156023	;--	殴りかかる
SP_07=	156024	;--	殴って吹っ飛ばす　前面
SP_08=	156025	;--	殴って吹っ飛ばす　背景
SP_09=	156027	;--	悟空の気が溜まりかめはめ波構え
SP_10=	156028	;--	カメラ回転～かめはめ波発射
SP_11=	156029	;--	迫るかめはめ波　前面
SP_12=	156030	;--	迫るかめはめ波　背景
SP_13=	156031	;--	地球から波動砲
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
-- 悟空～ベジータ気合い入れ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
style = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, style, 0, 0, 0 );
setEffMoveKey( spep_0 + 180, style, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, style, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, style, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, style, 0 );
setEffRotateKey( spep_0 + 180, style, 0 );
setEffAlphaKey( spep_0 + 0, style, 255 );
setEffAlphaKey( spep_0 + 180, style, 255 );

--SE
--悟空気ダメ
SE001 =playSe( spep_0 + 26 , 1117 );
setSeVolumeByWorkId( spep_0 + 26 , SE001 , 68 );
stopSe( spep_0 + 40, SE001, 10);
SE002 =playSe( spep_0 + 32 , 1067 );
setSeVolumeByWorkId( spep_0 + 32 , SE002 , 79 );
SE003 =playSe( spep_0 + 32 , 1036 );

--ベジータスライドイン
SE004 =playSe( spep_0 + 54 , 1072 );

--悟空気ダメ
SE005 =playSe( spep_0 + 56 , 1036 );
SE006 =playSe( spep_0 + 80 , 1036 );
SE007 =playSe( spep_0 + 104 , 1036 );

--ベジータ気ダメ
SE008 =playSe( spep_0 + 122 , 1035 );
SE009 =playSe( spep_0 + 122 , 1024 );
setSeVolumeByWorkId( spep_0 + 122 , SE009 , 79 );

--ベジータスパーク
SE010 =playSe( spep_0 + 122 , 1147 );
setSeVolumeByWorkId( spep_0 + 122 , SE010 , 47 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);


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
--ベジータオーラ
SE011 =playSe( spep_0 + 136 , 1036 );
setSeVolumeByWorkId( spep_0 + 136 , SE011 , 79 );
SE012 =playSe( spep_0 + 160 , 1036 );
setSeVolumeByWorkId( spep_0 + 160 , SE012 , 79 );

--白フェード
entryFade( spep_0 + 172, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+180;
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

stopSe( spep_1 + 2 , SE008, 0);
stopSe( spep_1 + 2 , SE009, 0);
stopSe( spep_1 + 2 , SE010, 0);

stopSe( spep_1 + 2 , SE012, 0);

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 94, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 殴る×２　前面
------------------------------------------------------
-- ** エフェクト等 ** --
Punch_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, Punch_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 120, Punch_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, Punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, Punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, Punch_f, 0 );
setEffRotateKey( spep_2 + 120, Punch_f, 0 );
setEffAlphaKey( spep_2 + 0, Punch_f, 255 );
setEffAlphaKey( spep_2 + 120, Punch_f, 255 );
setEffAlphaKey( spep_2 + 121, Punch_f, 0 );
setEffAlphaKey( spep_2 + 122, Punch_f, 0 );

-- ** エフェクト等 ** --
Punch_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, Punch_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 120, Punch_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, Punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, Punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, Punch_b, 0 );
setEffRotateKey( spep_2 + 120, Punch_b, 0 );
setEffAlphaKey( spep_2 + 0, Punch_b, 255 );
setEffAlphaKey( spep_2 + 120, Punch_b, 255 );
setEffAlphaKey( spep_2 + 121, Punch_b, 0 );
setEffAlphaKey( spep_2 + 122, Punch_b, 0 );

--敵のうごき
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 23, 1, 0 );

changeAnime( spep_2 + 0, 1, 17 );

setMoveKey( spep_2 + 0, 1, -559.6, -420.5 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -486.6, -397.1 , 0 );
setMoveKey( spep_2-3 + 4, 1, -425.9, -377.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, -374, -361 , 0 );
setMoveKey( spep_2-3 + 8, 1, -329.5, -346.8 , 0 );
setMoveKey( spep_2-3 + 10, 1, -291.9, -334.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, -260.7, -324.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, -235.5, -316.6 , 0 );
setMoveKey( spep_2-3 + 16, 1, -216.1, -310.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, -202.4, -306 , 0 );
setMoveKey( spep_2-3 + 20, 1, -194.3, -303.4 , 0 );
setMoveKey( spep_2-1 + 23, 1, -191.6, -302.5 , 0 );

c=0.5;

setScaleKey( spep_2 + 0, 1, 2.8+c, 2.8+c );
setScaleKey( spep_2-1 + 23, 1, 2.8+c, 2.8+c );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-1 + 23, 1, 0 );

--敵のうごき
setDisp( spep_2-3 + 34, 1, 1 );
setDisp( spep_2-1 + 72, 1, 0 );

changeAnime( spep_2-3 + 34, 1, 6 );

setMoveKey( spep_2-3 + 34, 1, 280.7, -51.2 , 0 );
setMoveKey( spep_2-3 + 36, 1, 100.4, -241.1 , 0 );
setMoveKey( spep_2-3 + 38, 1, 68.7, -261.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, 50.7, -243.2 , 0 );
setMoveKey( spep_2-3 + 42, 1, 72.7, -231.2 , 0 );
setMoveKey( spep_2-3 + 44, 1, 48.7, -231.2 , 0 );
setMoveKey( spep_2-3 + 46, 1, 68.7, -255.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 48.7, -239.2 , 0 );
setMoveKey( spep_2-3 + 50, 1, 62.7, -249.2 , 0 );
setMoveKey( spep_2-3 + 52, 1, 62.1, -249.2 , 0 );
setMoveKey( spep_2-3 + 54, 1, 60.1, -249.2 , 0 );
setMoveKey( spep_2-3 + 56, 1, 58.1, -249.2 , 0 );
setMoveKey( spep_2-3 + 58, 1, 56, -249.2 , 0 );
setMoveKey( spep_2-3 + 60, 1, 54, -249.2 , 0 );
setMoveKey( spep_2-3 + 62, 1, 51.9, -249.2 , 0 );
setMoveKey( spep_2-3 + 64, 1, 30.7, -249.2 , 0 );
setMoveKey( spep_2-3 + 66, 1, 6.7, -247.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, -17.3, -246.2 , 0 );
setMoveKey( spep_2-3 + 70, 1, -41.3, -244.7 , 0 );
setMoveKey( spep_2-1 + 72, 1, -65.3, -243.2 , 0 );

d=0.5;

setScaleKey( spep_2-3 + 34, 1, 2.79+d, 2.79+d );
setScaleKey( spep_2-3 + 36, 1, 4.18+d, 4.18+d );
setScaleKey( spep_2-3 + 38, 1, 2.79+d, 2.79+d );
setScaleKey( spep_2-1 + 72, 1, 2.79+d, 2.79+d );

setRotateKey( spep_2-3 + 34, 1, 21.8 );
setRotateKey( spep_2-1 + 72, 1, 21.8 );

--敵のうごき
setDisp( spep_2-3 + 84, 1, 1 );
setDisp( spep_2-1 + 102, 1, 0 );

changeAnime( spep_2-3 + 84, 1, 7 );

setMoveKey( spep_2-3 + 84, 1, -36.7, -68.9 , 0 );
setMoveKey( spep_2-3 + 86, 1, -260.8, -98.9 , 0 );
setMoveKey( spep_2-3 + 88, 1, -276.8, -118.9 , 0 );
setMoveKey( spep_2-3 + 90, 1, -296.8, -96.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, -282.8, -88.9 , 0 );
setMoveKey( spep_2-3 + 94, 1, -268.8, -62.9 , 0 );
setMoveKey( spep_2-3 + 96, 1, -321.8, -61.9 , 0 );
setMoveKey( spep_2-3 + 98, 1, -374.8, -60.9 , 0 );
setMoveKey( spep_2-3 + 100, 1, -427.8, -59.9 , 0 );
setMoveKey( spep_2-1 + 102, 1, -480.8, -58.9 , 0 );

a=0.7;
b=2;

setScaleKey( spep_2-3 + 84, 1, 1.73-a, 1.73-a );
setScaleKey( spep_2-3 + 86, 1, 3.6-b, 3.6-b );
setScaleKey( spep_2-3 + 88, 1, 3.88-b, 3.88-b );
setScaleKey( spep_2-3 + 90, 1, 4.19-b, 4.19-b );
setScaleKey( spep_2-3 + 92, 1, 4.12-b, 4.12-b );
setScaleKey( spep_2-3 + 94, 1, 4.05-b, 4.05-b );
setScaleKey( spep_2-3 + 96, 1, 4.55-b, 4.55-b );
setScaleKey( spep_2-3 + 98, 1, 5.05-b, 5.05-b );
setScaleKey( spep_2-3 + 100, 1, 5.55-b, 5.55-b );
setScaleKey( spep_2-1 + 102, 1, 6.05-b, 6.05-b );

setRotateKey( spep_2-3 + 84, 1, 71.5 );
setRotateKey( spep_2-1 + 102, 1, 71.5 );

--SE
--オーラ
SE014 =playSe( spep_2 + 0 , 1036 );
setSeVolumeByWorkId( spep_2 + 0 , SE014 , 32 );
SE017 =playSe( spep_2 + 24 , 1036 );
setSeVolumeByWorkId( spep_2 + 24 , SE017 , 32 );
SE022 =playSe( spep_2 + 48 , 1036 );
setSeVolumeByWorkId( spep_2 + 48 , SE022 , 32 );
SE023 =playSe( spep_2 + 72 , 1036 );
setSeVolumeByWorkId( spep_2 + 72 , SE023 , 32 );
SE028 =playSe( spep_2 + 96 , 1036 );
setSeVolumeByWorkId( spep_2 + 96 , SE028 , 32 );

--スパーク
SE015 =playSe( spep_2 + 4 , 1147 );
setSeVolumeByWorkId( spep_2 + 4 , SE015 , 20 );

--パンチ
SE016 =playSe( spep_2 + 20 , 1003 );
SE018 =playSe( spep_2 + 30 , 1009 );
setSeVolumeByWorkId( spep_2 + 30 , SE018 , 112 );
SE019 =playSe( spep_2 + 30 , 1187 );
stopSe( spep_2 + 38, SE019, 20);
SE020 =playSe( spep_2 + 30 , 19 );
setSeVolumeByWorkId( spep_2 + 30 , SE020 , 67 );
SE021 =playSe( spep_2 + 34 , 1110 );
setSeVolumeByWorkId( spep_2 + 34 , SE021 , 79 );

--パンチ２
SE024 =playSe( spep_2 + 80 , 1187 );
stopSe( spep_2 + 100, SE024, 12);
SE025 =playSe( spep_2 + 80 , 1010 );
SE026 =playSe( spep_2 + 80 , 1011 );
setSeVolumeByWorkId( spep_2 + 80 , SE026 , 72 );
SE027 =playSe( spep_2 + 84 , 1110 );
setSeVolumeByWorkId( spep_2 + 84 , SE027 , 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+120;
------------------------------------------------------
-- 瞬間移動～膝蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
knee_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, knee_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 104, knee_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, knee_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 104, knee_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knee_f, 0 );
setEffRotateKey( spep_3 + 104, knee_f, 0 );
setEffAlphaKey( spep_3 + 0, knee_f, 255 );
setEffAlphaKey( spep_3 + 104, knee_f, 255 );
setEffAlphaKey( spep_3 + 105, knee_f, 0 );
setEffAlphaKey( spep_3 + 106, knee_f, 0 );

-- ** エフェクト等 ** --
knee_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, knee_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 104, knee_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, knee_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 104, knee_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knee_b, 0 );
setEffRotateKey( spep_3 + 104, knee_b, 0 );
setEffAlphaKey( spep_3 + 0, knee_b, 255 );
setEffAlphaKey( spep_3 + 104, knee_b, 255 );
setEffAlphaKey( spep_3 + 105, knee_b, 0 );
setEffAlphaKey( spep_3 + 106, knee_b, 0 );

--敵のうごき
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 47, 1, 0 );

changeAnime( spep_3 + 0, 1, 5 );

setMoveKey( spep_3 + 0, 1, 41.5, -42.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 46.5, 1.9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 51.5, 45.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, 56.5, 89.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 61.5, 133.6 , 0 );
setMoveKey( spep_3-3 + 10, 1, 66.5, 177.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 71.5, 221.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, 76.5, 265.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, 77, 273.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, 77.4, 281.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 77.9, 289.6 , 0 );
setMoveKey( spep_3-3 + 22, 1, 78.3, 297.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 78.8, 305.8 , 0 );
setMoveKey( spep_3-3 + 26, 1, 78.8, 306.6 , 0 );
setMoveKey( spep_3-3 + 28, 1, 78.9, 307.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 78.9, 308.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, 79, 308.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, 79, 309.6 , 0 );
setMoveKey( spep_3-3 + 36, 1, 79.1, 310.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, 79.1, 311.2 , 0 );
setMoveKey( spep_3-3 + 40, 1, 79.2, 311.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 79.2, 312.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 79.3, 313.4 , 0 );
setMoveKey( spep_3-1 + 47, 1, 79.3, 314.2 , 0 );

setScaleKey( spep_3 + 0, 1, 7.99, 7.99 );
--setScaleKey( spep_3-3 + 2, 1, 7.11, 7.11 );
setScaleKey( spep_3-3 + 4, 1, 6.23, 6.23 );
setScaleKey( spep_3-3 + 6, 1, 5.34, 5.34 );
setScaleKey( spep_3-3 + 8, 1, 4.46, 4.46 );
setScaleKey( spep_3-3 + 10, 1, 3.57, 3.57 );
setScaleKey( spep_3-3 + 12, 1, 2.69, 2.69 );
setScaleKey( spep_3-3 + 14, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 18, 1, 1.64, 1.64 );
setScaleKey( spep_3-3 + 20, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_3-3 + 24, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 26, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 28, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 32, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 36, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 38, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 40, 1, 1.33, 1.33 );
setScaleKey( spep_3-3 + 42, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 44, 1, 1.31, 1.31 );
setScaleKey( spep_3-1 + 47, 1, 1.3, 1.3 );

setRotateKey( spep_3 + 0, 1, -58.7 );
setRotateKey( spep_3 + 2, 1, -58.6 );
setRotateKey( spep_3-1 + 47, 1, -58.6 );

--敵のうごき
setDisp( spep_3-3 + 58, 1, 1 );
setDisp( spep_3 + 104, 1, 0 );

changeAnime( spep_3-3 + 58, 1, 108 );

setMoveKey( spep_3-3 + 58, 1, 93.2, 93.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 156.8, 151.5 , 0 );
setMoveKey( spep_3-3 + 62, 1, 165.6, 97.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 149.4, 133.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 110.7, 106.7 , 0 );
setMoveKey( spep_3-3 + 68, 1, 108.4, 116.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, 85.4, 86 , 0 );
setMoveKey( spep_3-3 + 72, 1, 95.7, 99.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 98.1, 105.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 100.6, 110.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 103.1, 116.7 , 0 );
setMoveKey( spep_3-3 + 80, 1, 105.5, 122.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 108, 128.1 , 0 );
setMoveKey( spep_3-3 + 84, 1, 110.5, 133.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 112.9, 139.6 , 0 );
setMoveKey( spep_3-3 + 88, 1, 115.4, 145.3 , 0 );
setMoveKey( spep_3-3 + 90, 1, 117.9, 151.1 , 0 );
setMoveKey( spep_3-3 + 92, 1, 120.3, 156.8 , 0 );
setMoveKey( spep_3-3 + 94, 1, 122.8, 162.5 , 0 );
setMoveKey( spep_3-3 + 96, 1, 125.3, 168.2 , 0 );
setMoveKey( spep_3-3 + 98, 1, 127.7, 174 , 0 );
setMoveKey( spep_3-3 + 100, 1, 130.2, 179.7 , 0 );
setMoveKey( spep_3-3 + 102, 1, 132.7, 185.4 , 0 );
setMoveKey( spep_3 + 104, 1, 135.1, 191.2 , 0 );
--setMoveKey( spep_3-3 + 106, 1, 137.6, 196.9 , 0 );

e=0.6;

setScaleKey( spep_3-3 + 58, 1, 1.99+e, 1.99+e );
setScaleKey( spep_3-3 + 59, 1, 1.99+e, 1.99+e );
setScaleKey( spep_3-3 + 60, 1, 3.19+e, 3.19+e );
setScaleKey( spep_3-3 + 61, 1, 3.19+e, 3.19+e );
setScaleKey( spep_3-3 + 62, 1, 2.95+e, 2.95+e );
setScaleKey( spep_3-3 + 64, 1, 2.72+e, 2.72+e );
setScaleKey( spep_3-3 + 66, 1, 2.48+e, 2.48+e );
setScaleKey( spep_3-3 + 68, 1, 2.24+e, 2.24+e );
setScaleKey( spep_3-3 + 70, 1, 2+e, 2+e );
setScaleKey( spep_3 + 104, 1, 2+e, 2+e );

setRotateKey( spep_3-3 + 58, 1, -47.9 );
setRotateKey( spep_3 + 104, 1, -47.9 );

--SE
--パンチ２
stopSe( spep_3 + 6, SE026, 55);

--オーラ
SE029 =playSe( spep_3 + 0 , 1036 );
setSeVolumeByWorkId( spep_3 + 0 , SE029 , 32 );
SE030 =playSe( spep_3 + 24 , 1036 );
setSeVolumeByWorkId( spep_3 + 24 , SE030 , 32 );
SE033 =playSe( spep_3 + 48 , 1036 );
setSeVolumeByWorkId( spep_3 + 48 , SE033 , 32 );
SE038 =playSe( spep_3 + 72 , 1036 );
setSeVolumeByWorkId( spep_3 + 72 , SE038 , 32 );
SE040 =playSe( spep_3 + 96 , 1036 );
setSeVolumeByWorkId( spep_3 + 96 , SE040 , 32 );

--瞬間移動
SE031 =playSe( spep_3 + 14 , 1109 );

--膝蹴り
SE032 =playSe( spep_3 + 42 , 1072 );
setTimeStretch( SE032, 0.77, 10, 1 );
SE034 =playSe( spep_3 + 58 , 1004 );
setSeVolumeByWorkId( spep_3 + 58 , SE034 , 71 );
SE035 =playSe( spep_3 + 62 , 1187 );
stopSe( spep_3 + 76, SE035, 12);
SE036 =playSe( spep_3 + 62 , 1190 );
SE037 =playSe( spep_3 + 62 , 1009 );

--スパーク
SE039 =playSe( spep_3 + 82 , 1148 );
setSeVolumeByWorkId( spep_3 + 82 , SE039 , 20 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 104, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+104;
------------------------------------------------------
-- 殴りかかる
------------------------------------------------------
-- ** エフェクト等 ** --
punching = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, punching, 0, 0, 0 );
setEffMoveKey( spep_4 + 72, punching, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punching, 1.0, 1.0 );
setEffScaleKey( spep_4 + 72, punching, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punching, 0 );
setEffRotateKey( spep_4 + 72, punching, 0 );
setEffAlphaKey( spep_4 + 0, punching, 255 );
setEffAlphaKey( spep_4 + 70, punching, 255 );
setEffAlphaKey( spep_4 + 71, punching, 255 );
setEffAlphaKey( spep_4 + 72, punching, 0 );

--SE
--ベジータ向かっていく
SE041 =playSe( spep_4 + 0 , 1182 );
setSeVolumeByWorkId( spep_4 + 0 , SE041 , 126 );
SE042 =playSe( spep_4 + 0 , 1183 );
stopSe( spep_4 + 60, SE042, 7);
SE043 =playSe( spep_4 + 0 , 9 );
setTimeStretch( SE043, 1.81, 10, 1 );

--オーラ
SE044 =playSe( spep_4 + 0 , 1036 );
setSeVolumeByWorkId( spep_4 + 0 , SE044 , 32 );
SE045 =playSe( spep_4 + 24 , 1036 );
setSeVolumeByWorkId( spep_4 + 24 , SE045 , 32 );
SE046 =playSe( spep_4 + 48 , 1036 );
setSeVolumeByWorkId( spep_4 + 48 , SE046 , 32 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+72;

------------------------------------------------------
-- 殴って吹っ飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
dispel_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, dispel_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, dispel_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, dispel_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, dispel_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dispel_f, 0 );
setEffRotateKey( spep_5 + 60, dispel_f, 0 );
setEffAlphaKey( spep_5 + 0, dispel_f, 255 );
setEffAlphaKey( spep_5 + 60, dispel_f, 255 );


-- ** エフェクト等 ** --
dispel_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, dispel_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, dispel_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, dispel_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, dispel_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dispel_b, 0 );
setEffRotateKey( spep_5 + 60, dispel_b, 0 );
setEffAlphaKey( spep_5 + 0, dispel_b, 255 );
setEffAlphaKey( spep_5 + 60, dispel_b, 255 );

--敵のうごき
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-1 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 95.3, -139.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 125.3, -162.4 , 0 );
setMoveKey( spep_5-3 + 4, 1, 137.8, -189.3 , 0 );
setMoveKey( spep_5-3 + 6, 1, 103.6, -155.3 , 0 );
setMoveKey( spep_5-3 + 8, 1, 122, -137.6 , 0 );
setMoveKey( spep_5-3 + 10, 1, 82.8, -123.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 104.7, -139.3 , 0 );
setMoveKey( spep_5-3 + 14, 1, 89.5, -113.1 , 0 );
setMoveKey( spep_5-3 + 16, 1, 104.3, -107.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, 107.4, -96.3 , 0 );
setMoveKey( spep_5-3 + 20, 1, 110.5, -85 , 0 );
setMoveKey( spep_5-3 + 22, 1, 113.6, -73.7 , 0 );
setMoveKey( spep_5-3 + 24, 1, 116.8, -62.4 , 0 );
setMoveKey( spep_5-3 + 26, 1, 119.9, -51.1 , 0 );
setMoveKey( spep_5-3 + 28, 1, 123, -39.9 , 0 );
setMoveKey( spep_5-3 + 30, 1, 123.3, -38.6 , 0 );
setMoveKey( spep_5-3 + 32, 1, 123.6, -37.3 , 0 );
setMoveKey( spep_5-3 + 34, 1, 123.9, -36 , 0 );
setMoveKey( spep_5-3 + 36, 1, 124.1, -34.7 , 0 );
setMoveKey( spep_5-3 + 38, 1, 124.4, -33.4 , 0 );
setMoveKey( spep_5-3 + 40, 1, 124.7, -32.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 125, -30.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 125.3, -29.5 , 0 );
setMoveKey( spep_5-3 + 46, 1, 125.6, -28.2 , 0 );
setMoveKey( spep_5-3 + 48, 1, 125.9, -27 , 0 );
setMoveKey( spep_5-3 + 50, 1, 126.2, -25.7 , 0 );
setMoveKey( spep_5-3 + 52, 1, 126.4, -24.4 , 0 );
setMoveKey( spep_5-3 + 54, 1, 126.7, -23.1 , 0 );
setMoveKey( spep_5-3 + 56, 1, 127, -21.8 , 0 );
setMoveKey( spep_5-1 + 58, 1, 127.3, -20.5 , 0 );

setScaleKey( spep_5 + 0, 1, 2, 2 );
--setScaleKey( spep_5-3 + 2, 1, 3.17, 3.17 );
setScaleKey( spep_5-3 + 4, 1, 2.87, 2.87 );
setScaleKey( spep_5-3 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_5-3 + 8, 1, 2.29, 2.29 );
setScaleKey( spep_5-3 + 10, 1, 2, 2 );
setScaleKey( spep_5-3 + 12, 1, 1.83, 1.83 );
setScaleKey( spep_5-3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_5-3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_5-3 + 22, 1, 1, 1 );
setScaleKey( spep_5-3 + 24, 1, 0.83, 0.83 );
setScaleKey( spep_5-3 + 26, 1, 0.67, 0.67 );
setScaleKey( spep_5-3 + 28, 1, 0.5, 0.5 );
setScaleKey( spep_5-3 + 30, 1, 0.49, 0.49 );
setScaleKey( spep_5-3 + 32, 1, 0.47, 0.47 );
setScaleKey( spep_5-3 + 34, 1, 0.46, 0.46 );
setScaleKey( spep_5-3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_5-3 + 38, 1, 0.43, 0.43 );
setScaleKey( spep_5-3 + 40, 1, 0.42, 0.42 );
setScaleKey( spep_5-3 + 42, 1, 0.41, 0.41 );
setScaleKey( spep_5-3 + 44, 1, 0.39, 0.39 );
setScaleKey( spep_5-3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_5-3 + 48, 1, 0.37, 0.37 );
setScaleKey( spep_5-3 + 50, 1, 0.35, 0.35 );
setScaleKey( spep_5-3 + 52, 1, 0.34, 0.34 );
setScaleKey( spep_5-3 + 54, 1, 0.33, 0.33 );
setScaleKey( spep_5-3 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_5-1 + 58, 1, 0.3, 0.3 );

setRotateKey( spep_5 + 0, 1, 22.8 );
setRotateKey( spep_5 + 2, 1, 23 );
setRotateKey( spep_5-1 + 58, 1, 23 );

--文字エントリー
ctbago = entryEffectLife( spep_5 + 0,  10021, 58, 0x100, -1, 0, -23.3, 154.1 );
setEffShake( spep_5 + 0, ctbago, 58, 10 );
setEffMoveKey( spep_5 + 0, ctbago, -23.3, 154.1 , 0 );
setEffMoveKey( spep_5 + 2, ctbago, 6.7, 222.4 , 0 );
setEffMoveKey( spep_5 + 4, ctbago, 25.6, 305 , 0 );
setEffMoveKey( spep_5 + 6, ctbago, 35, 294.4 , 0 );
setEffMoveKey( spep_5 + 8, ctbago, 26.2, 306.7 , 0 );
setEffMoveKey( spep_5 + 10, ctbago, 35.7, 296 , 0 );
setEffMoveKey( spep_5 + 12, ctbago, 26.7, 308.4 , 0 );
setEffMoveKey( spep_5 + 14, ctbago, 36.3, 297.6 , 0 );
setEffMoveKey( spep_5 + 16, ctbago, 27.3, 310.1 , 0 );
setEffMoveKey( spep_5 + 18, ctbago, 36.9, 299.2 , 0 );
setEffMoveKey( spep_5 + 20, ctbago, 27.8, 311.8 , 0 );
setEffMoveKey( spep_5 + 22, ctbago, 37.6, 300.7 , 0 );
setEffMoveKey( spep_5 + 24, ctbago, 28.4, 313.5 , 0 );
setEffMoveKey( spep_5 + 26, ctbago, 38.3, 302.3 , 0 );
setEffMoveKey( spep_5 + 28, ctbago, 28.9, 315.1 , 0 );
setEffMoveKey( spep_5 + 30, ctbago, 38.8, 304 , 0 );
setEffMoveKey( spep_5 + 32, ctbago, 29.5, 316.9 , 0 );
setEffMoveKey( spep_5 + 34, ctbago, 39.5, 305.6 , 0 );
setEffMoveKey( spep_5 + 36, ctbago, 30.1, 318.6 , 0 );
setEffMoveKey( spep_5 + 38, ctbago, 40.1, 307.2 , 0 );
setEffMoveKey( spep_5 + 40, ctbago, 30.6, 320.2 , 0 );
setEffMoveKey( spep_5 + 42, ctbago, 40.8, 308.7 , 0 );
setEffMoveKey( spep_5 + 44, ctbago, 31.1, 321.9 , 0 );
setEffMoveKey( spep_5 + 46, ctbago, 41.4, 310.3 , 0 );
setEffMoveKey( spep_5 + 48, ctbago, 31.7, 323.7 , 0 );
setEffMoveKey( spep_5 + 50, ctbago, 42, 312 , 0 );
setEffMoveKey( spep_5 + 52, ctbago, 32.3, 325.4 , 0 );
setEffMoveKey( spep_5 + 54, ctbago, 42.6, 313.6 , 0 );
setEffMoveKey( spep_5 + 56, ctbago, 32.8, 327.1 , 0 );
setEffMoveKey( spep_5 + 58, ctbago, 43.3, 315.2 , 0 );

setEffScaleKey( spep_5 + 0, ctbago, 0.82, 0.82 );
--setEffScaleKey( spep_5 + 2, ctbago, 2.07, 2.07 );
setEffScaleKey( spep_5 + 4, ctbago, 3.25, 3.25 );
setEffScaleKey( spep_5 + 6, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_5 + 8, ctbago, 3.28, 3.28 );
setEffScaleKey( spep_5 + 10, ctbago, 3.36, 3.36 );
setEffScaleKey( spep_5 + 12, ctbago, 3.31, 3.31 );
setEffScaleKey( spep_5 + 14, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_5 + 16, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_5 + 18, ctbago, 3.41, 3.41 );
setEffScaleKey( spep_5 + 20, ctbago, 3.36, 3.36 );
setEffScaleKey( spep_5 + 22, ctbago, 3.44, 3.44 );
setEffScaleKey( spep_5 + 24, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_5 + 26, ctbago, 3.47, 3.47 );
setEffScaleKey( spep_5 + 28, ctbago, 3.41, 3.41 );
setEffScaleKey( spep_5 + 30, ctbago, 3.5, 3.5 );
setEffScaleKey( spep_5 + 32, ctbago, 3.44, 3.44 );
setEffScaleKey( spep_5 + 34, ctbago, 3.53, 3.53 );
setEffScaleKey( spep_5 + 36, ctbago, 3.47, 3.47 );
setEffScaleKey( spep_5 + 38, ctbago, 3.55, 3.55 );
setEffScaleKey( spep_5 + 40, ctbago, 3.5, 3.5 );
setEffScaleKey( spep_5 + 42, ctbago, 3.58, 3.58 );
setEffScaleKey( spep_5 + 44, ctbago, 3.52, 3.52 );
setEffScaleKey( spep_5 + 46, ctbago, 3.61, 3.61 );
setEffScaleKey( spep_5 + 48, ctbago, 3.55, 3.55 );
setEffScaleKey( spep_5 + 50, ctbago, 3.64, 3.64 );
setEffScaleKey( spep_5 + 52, ctbago, 3.58, 3.58 );
setEffScaleKey( spep_5 + 54, ctbago, 3.66, 3.66 );
setEffScaleKey( spep_5 + 56, ctbago, 3.61, 3.61 );
setEffScaleKey( spep_5 + 58, ctbago, 3.69, 3.69 );

setEffRotateKey( spep_5 + 0, ctbago, -17.6 );
setEffRotateKey( spep_5 + 2, ctbago, -17.7 );
setEffRotateKey( spep_5 + 58, ctbago, -17.7 );

setEffAlphaKey( spep_5 + 0, ctbago, 255 );
setEffAlphaKey( spep_5 + 58, ctbago, 255 );

--SE
--パンチ
SE047 =playSe( spep_5 + 0 , 1120 );

--スパーク
SE048 =playSe( spep_5 + 4 , 1147 );
setSeVolumeByWorkId( spep_5 + 4 , SE048 , 20 );

--オーラ
SE049 =playSe( spep_5 + 8 , 1036 );
setSeVolumeByWorkId( spep_5 + 8 , SE049 , 32 );
SE050 =playSe( spep_5 + 32 , 1036 );
setSeVolumeByWorkId( spep_5 + 32 , SE050 , 32 );
SE051 =playSe( spep_5 + 56 , 1036 );
setSeVolumeByWorkId( spep_5 + 56 , SE051 , 32 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 56, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+60;
------------------------------------------------------
-- 悟空の気が溜まりかめはめ波構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_6 + 226, tame, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_6 + 226, tame, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame, 0 );
setEffRotateKey( spep_6 + 226, tame, 0 );
setEffAlphaKey( spep_6 + 0, tame, 255 );
setEffAlphaKey( spep_6 + 226, tame, 255 );
setEffAlphaKey( spep_6 + 227, tame, 0 );
setEffAlphaKey( spep_6 + 228, tame, 0 );

--集中線
--[[
shuchusen1 = entryEffectLife( spep_6-3 + 40,  906, 66, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6-3 + 40, shuchusen1, 90, 20 );
setEffMoveKey( spep_6-3 + 40, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 106, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 40, shuchusen1, 1, 1 );
setEffScaleKey( spep_6-3 + 106, shuchusen1, 1, 1 );

setEffRotateKey( spep_6-3 + 40, shuchusen1, 180 );
setEffRotateKey( spep_6-3 + 106, shuchusen1, 180 );
--]]
-- 文字エントリー --
ctgogo = entryEffectLife( spep_6 +74, 190006, 54, 0x100, -1, 0, 0, 350,10000);-- ゴゴゴゴ


setEffMoveKey(  spep_6 +74,  ctgogo,  0,  350);
setEffMoveKey(  spep_6 +128,  ctgogo,  0,  350);

setEffAlphaKey( spep_6 +74, ctgogo, 0 );
setEffAlphaKey( spep_6 + 75, ctgogo, 255 );
setEffAlphaKey( spep_6 + 128, ctgogo, 255 );

setEffRotateKey(  spep_6 +74,  ctgogo,  0);
setEffRotateKey(  spep_6 +128,  ctgogo,  0);

setEffScaleKey(  spep_6 +74,  ctgogo,  0.85,  0.8);
setEffScaleKey(  spep_6 +128,  ctgogo,  0.85,  0.8);

--SE
--画面遷移
SE052 =playSe( spep_6 + 0 , 8 );
setSeVolumeByWorkId( spep_6 + 0 , SE052 , 74 );

--悟空気ダメ
SE053 =playSe( spep_6 + 28 , 1035 );
setSeVolumeByWorkId( spep_6 + 28 , SE053 , 126 );
SE054 =playSe( spep_6 + 28 , 20 );
setSeVolumeByWorkId( spep_6 + 28 , SE054 , 55 );
SE055 =playSe( spep_6 + 28 , 1148 );
setSeVolumeByWorkId( spep_6 + 28 , SE055 , 33 );

--顔カットイン
SE056 =playSe( spep_6 + 36 , 1018 );

--かめはめ波溜め
SE057 =playSe( spep_6 + 80 , 1209 );
setSeVolumeByWorkId( spep_6 + 80 , SE057 , 79 );
SE058 =playSe( spep_6 + 80 , 1210 );

--腕をひく
SE059 =playSe( spep_6 + 122 , 1003 );

--地割れ
SE060 =playSe( spep_6 + 138 , 1044 );
setSeVolumeByWorkId( spep_6 + 138 , SE060 , 62 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 226, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+226;
------------------------------------------------------
-- カメラ回転～かめはめ波発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 146, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 146, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 146, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 146, beam, 255 );
setEffAlphaKey( spep_7 + 147, beam, 0 );
setEffAlphaKey( spep_7 + 148, beam, 0 );

--文字エントリー
ctka = entryEffectLife( spep_7-3 + 56,  10004, 22, 0x100, -1, 0, 57.2, 110.1 );
setEffShake( spep_7-3 + 56, ctka, 22, 10 );
setEffMoveKey( spep_7-3 + 56, ctka, 57.2, 110.1 , 0 );
setEffMoveKey( spep_7-3 + 58, ctka, 94.1, 171.2 , 0 );
setEffMoveKey( spep_7-3 + 60, ctka, 130.5, 230.9 , 0 );
setEffMoveKey( spep_7-3 + 62, ctka, 131.1, 232.1 , 0 );
setEffMoveKey( spep_7-3 + 64, ctka, 130.9, 231.6 , 0 );
setEffMoveKey( spep_7-3 + 66, ctka, 131.5, 232.8 , 0 );
setEffMoveKey( spep_7-3 + 68, ctka, 131.3, 232.3 , 0 );
setEffMoveKey( spep_7-3 + 70, ctka, 131.9, 233.5 , 0 );
setEffMoveKey( spep_7-3 + 72, ctka, 131.7, 233 , 0 );
setEffMoveKey( spep_7-3 + 74, ctka, 132.3, 234.2 , 0 );
setEffMoveKey( spep_7-3 + 76, ctka, 169.8, 295.8 , 0 );
setEffMoveKey( spep_7-3 + 78, ctka, 208.2, 359.4 , 0 );

setEffScaleKey( spep_7-3 + 56, ctka, 1.38, 1.38 );
setEffScaleKey( spep_7-3 + 58, ctka, 2.22, 2.22 );
setEffScaleKey( spep_7-3 + 60, ctka, 2.9, 2.9 );
setEffScaleKey( spep_7-3 + 62, ctka, 3.02, 3.02 );
setEffScaleKey( spep_7-3 + 64, ctka, 2.91, 2.91 );
setEffScaleKey( spep_7-3 + 66, ctka, 3.02, 3.02 );
setEffScaleKey( spep_7-3 + 68, ctka, 2.92, 2.92 );
setEffScaleKey( spep_7-3 + 70, ctka, 3.03, 3.03 );
setEffScaleKey( spep_7-3 + 72, ctka, 2.93, 2.93 );
setEffScaleKey( spep_7-3 + 74, ctka, 3.04, 3.04 );
setEffScaleKey( spep_7-3 + 76, ctka, 3.72, 3.72 );
setEffScaleKey( spep_7-3 + 78, ctka, 4.67, 4.67 );

setEffRotateKey( spep_7-3 + 56, ctka, 34.3 );
setEffRotateKey( spep_7-3 + 78, ctka, 34.3 );

setEffAlphaKey( spep_7-3 + 56, ctka, 255 );
setEffAlphaKey( spep_7-3 + 78, ctka, 255 );

--SE
--かめはめ波溜め
stopSe( spep_7 + 50, SE058, 12);
--腕をひく
stopSe( spep_7 + 58, SE060, 14);

--かめはめ波発射
SE061 =playSe( spep_7 + 54 , 1146 );
SE062 =playSe( spep_7 + 54 , 1258 );
SE063 =playSe( spep_7 + 54 , 1213 );
SE064 =playSe( spep_7 + 54 , 1223 );
setSeVolumeByWorkId( spep_7 + 54 , SE064 , 186 );
SE065 =playSe( spep_7 + 72 , 1124 );
setSeVolumeByWorkId( spep_7 + 72 , SE065 , 55 );
SE066 =playSe( spep_7 + 90 , 1211 );
SE067 =playSe( spep_7 + 98 , 1215 );
setSeVolumeByWorkId( spep_7 + 98 , SE067 , 49 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 146, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+146;
------------------------------------------------------
-- 迫るかめはめ波
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

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 66, 1, 0 );

changeAnime( spep_8 + 0, 1, 105 );

setBlendColor(spep_8+24,1,2,0,0,0,0.2);
setBlendColor(spep_8+26,1,2,0,0,0,0.4);
setBlendColor(spep_8+28,1,2,0,0,0,0.6);
setBlendColor(spep_8+30,1,2,0,0,0,0.8);
setBlendColor(spep_8+32,1,2,0,0,0,1);

setBlendColor(spep_8+68,1,2,0,0,0,0);

setMoveKey( spep_8 + 0, 1, 78.1, 61.7 , 0 );
setMoveKey( spep_8 + 2, 1, 71.5, 53.5 , 0 );
setMoveKey( spep_8 + 4, 1, 78.2, 52.9 , 0 );
setMoveKey( spep_8 + 6, 1, 71.6, 58.4 , 0 );
setMoveKey( spep_8 + 8, 1, 78.5, 57.1 , 0 );
setMoveKey( spep_8 + 10, 1, 71.7, 49.7 , 0 );
setMoveKey( spep_8 + 12, 1, 78.6, 48.4 , 0 );
setMoveKey( spep_8 + 14, 1, 72, 53.9 , 0 );
setMoveKey( spep_8 + 16, 1, 78.7, 53.3 , 0 );
setMoveKey( spep_8 + 18, 1, 72.1, 45.3 , 0 );
setMoveKey( spep_8 + 20, 1, 79, 43.9 , 0 );
setMoveKey( spep_8 + 22, 1, 72.2, 50.1 , 0 );
setMoveKey( spep_8 + 24, 1, 79.1, 48.9 , 0 );
setMoveKey( spep_8 + 26, 1, 72.5, 40.6 , 0 );
setMoveKey( spep_8 + 28, 1, 79.2, 40.2 , 0 );
setMoveKey( spep_8 + 30, 1, 72.6, 45.7 , 0 );
setMoveKey( spep_8 + 32, 1, 79.6, 44.2 , 0 );
setMoveKey( spep_8 + 34, 1, 72.7, 37 , 0 );
setMoveKey( spep_8 + 36, 1, 79.6, 35.7 , 0 );
setMoveKey( spep_8 + 38, 1, 73, 41 , 0 );
setMoveKey( spep_8 + 40, 1, 79.7, 40.6 , 0 );
setMoveKey( spep_8 + 42, 1, 73.1, 32.5 , 0 );
setMoveKey( spep_8 + 44, 1, 80.1, 30.9 , 0 );
setMoveKey( spep_8 + 46, 1, 72.2, 37.2 , 0 );
setMoveKey( spep_8 + 48, 1, 78.2, 35.8 , 0 );
setMoveKey( spep_8 + 50, 1, 70.6, 27.3 , 0 );
setMoveKey( spep_8 + 52, 1, 76.3, 26.8 , 0 );
setMoveKey( spep_8 + 54, 1, 68.8, 32.1 , 0 );
setMoveKey( spep_8 + 56, 1, 74.8, 30.4 , 0 );
setMoveKey( spep_8 + 58, 1, 66.9, 23.1 , 0 );
setMoveKey( spep_8 + 60, 1, 72.8, 21.6 , 0 );
setMoveKey( spep_8 + 62, 1, 65.3, 26.7 , 0 );
setMoveKey( spep_8 + 64, 1, 64.2, 26.3 , 0 );
setMoveKey( spep_8 + 66, 1, 63.4, 24.8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_8 + 2, 1, 0.28, 0.28 );
setScaleKey( spep_8 + 4, 1, 0.28, 0.28 );
setScaleKey( spep_8 + 6, 1, 0.29, 0.29 );
setScaleKey( spep_8 + 8, 1, 0.32, 0.32 );
setScaleKey( spep_8 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_8 + 12, 1, 0.33, 0.33 );
setScaleKey( spep_8 + 14, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 16, 1, 0.34, 0.34 );
setScaleKey( spep_8 + 18, 1, 0.36, 0.36 );
setScaleKey( spep_8 + 20, 1, 0.39, 0.39 );
setScaleKey( spep_8 + 22, 1, 0.38, 0.38 );
setScaleKey( spep_8 + 24, 1, 0.4, 0.4 );
setScaleKey( spep_8 + 26, 1, 0.42, 0.42 );
setScaleKey( spep_8 + 28, 1, 0.41, 0.41 );
setScaleKey( spep_8 + 30, 1, 0.43, 0.43 );
setScaleKey( spep_8 + 32, 1, 0.46, 0.46 );
setScaleKey( spep_8 + 34, 1, 0.44, 0.44 );
setScaleKey( spep_8 + 36, 1, 0.47, 0.47 );
setScaleKey( spep_8 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_8 + 40, 1, 0.48, 0.48 );
setScaleKey( spep_8 + 42, 1, 0.5, 0.5 );
setScaleKey( spep_8 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_8 + 46, 1, 0.5, 0.5 );
setScaleKey( spep_8 + 48, 1, 0.52, 0.52 );
setScaleKey( spep_8 + 50, 1, 0.55, 0.55 );
setScaleKey( spep_8 + 52, 1, 0.52, 0.52 );
setScaleKey( spep_8 + 54, 1, 0.54, 0.54 );
setScaleKey( spep_8 + 56, 1, 0.57, 0.57 );
setScaleKey( spep_8 + 58, 1, 0.54, 0.54 );
setScaleKey( spep_8 + 60, 1, 0.56, 0.56 );
setScaleKey( spep_8 + 62, 1, 0.58, 0.58 );
setScaleKey( spep_8 + 64, 1, 0.56, 0.56 );
setScaleKey( spep_8 + 66, 1, 0.58, 0.58 );

setRotateKey( spep_8 + 0, 1, 29.4 );
setRotateKey( spep_8 + 2, 1, 29.5 );
setRotateKey( spep_8 + 66, 1, 29.5 );

--文字エントリー
ctzudodo = entryEffectLife( spep_8 + 0,  10014, 66, 0x100, -1, 0, 50, 335.8 );
setEffShake( spep_8 + 0, ctzudodo, 66, 10 );
setEffMoveKey( spep_8 + 0, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 2, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 4, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 6, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 8, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 10, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 12, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 14, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 16, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 18, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 20, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 22, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 24, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 26, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 28, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 30, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 32, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 34, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 36, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 38, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 40, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 42, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 44, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 46, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 48, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 50, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 52, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 54, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 56, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 58, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 60, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 62, ctzudodo, 48.8, 328.7 , 0 );
setEffMoveKey( spep_8 + 64, ctzudodo, 50, 335.8 , 0 );
setEffMoveKey( spep_8 + 66, ctzudodo, 48.8, 328.7 , 0 );

setEffScaleKey( spep_8 + 0, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_8 + 66, ctzudodo, 2.28, 2.28 );

setEffRotateKey( spep_8 + 0, ctzudodo, 2.7 );
setEffRotateKey( spep_8 + 66, ctzudodo, 2.7 );

setEffAlphaKey( spep_8 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_8 + 66, ctzudodo, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 66, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_8 + 58, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_9=spep_8+66;
------------------------------------------------------
-- 地球から波動砲
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 180, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 180, finish, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_9-3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9-3 + 14, shuchusen2, 90, 32 );
setEffMoveKey( spep_9-3 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_9-3 + 46, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_9-3 + 14, shuchusen2, 1, 1 );
setEffScaleKey( spep_9-3 + 46, shuchusen2, 1, 1 );

setEffRotateKey( spep_9-3 + 14, shuchusen2, 180 );
setEffRotateKey( spep_9-3 + 46, shuchusen2, 180 );

setEffAlphaKey( spep_9-3 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_9-3 + 28, shuchusen2, 255 );
setEffAlphaKey( spep_9-3 + 30, shuchusen2, 252 );
setEffAlphaKey( spep_9-3 + 32, shuchusen2, 242 );
setEffAlphaKey( spep_9-3 + 34, shuchusen2, 227 );
setEffAlphaKey( spep_9-3 + 36, shuchusen2, 205 );
setEffAlphaKey( spep_9-3 + 38, shuchusen2, 176 );
setEffAlphaKey( spep_9-3 + 40, shuchusen2, 142 );
setEffAlphaKey( spep_9-3 + 42, shuchusen2, 101 );
setEffAlphaKey( spep_9-3 + 44, shuchusen2, 54 );
setEffAlphaKey( spep_9-3 + 46, shuchusen2, 0 );

--SE
--かめはめ波発射
stopSe( spep_9 + 44, SE063, 152);
stopSe( spep_9 + 52 , SE065, 0);
stopSe( spep_9 + 18, SE066, 104);
stopSe( spep_9 + 16, SE067, 59);

--SE
--地球から飛び出る
SE068 =playSe( spep_9 + 0 , 1159 );
SE069 =playSe( spep_9 + 0 , 1145 );
SE070 =playSe( spep_9 + 50 , 1168 );
setSeVolumeByWorkId( spep_9 + 50 , SE070 , 0 );
setSeVolumeByWorkId( spep_9 + 55, SE070 ,2.3);
setSeVolumeByWorkId( spep_9 + 56, SE070 ,4.6);
setSeVolumeByWorkId( spep_9 + 57, SE070 ,6.9);
setSeVolumeByWorkId( spep_9 + 58, SE070 ,9.2);
setSeVolumeByWorkId( spep_9 + 59, SE070 ,11.5);
setSeVolumeByWorkId( spep_9 + 60, SE070 ,13.8);
setSeVolumeByWorkId( spep_9 + 61, SE070 ,16.1);
setSeVolumeByWorkId( spep_9 + 62, SE070 ,18.4);
setSeVolumeByWorkId( spep_9 + 63, SE070 ,20.7);
setSeVolumeByWorkId( spep_9 + 64, SE070 ,23);
setSeVolumeByWorkId( spep_9 + 65, SE070 ,25.3);
setSeVolumeByWorkId( spep_9 + 66, SE070 ,27.6);
setSeVolumeByWorkId( spep_9 + 67, SE070 ,29.9);
setSeVolumeByWorkId( spep_9 + 68, SE070 ,32.2);
setSeVolumeByWorkId( spep_9 + 69, SE070 ,34.5);
setSeVolumeByWorkId( spep_9 + 70, SE070 ,36.8);
setSeVolumeByWorkId( spep_9 + 71, SE070 ,39.1);
setSeVolumeByWorkId( spep_9 + 72, SE070 ,41.4);
setSeVolumeByWorkId( spep_9 + 73, SE070 ,43.7);
setSeVolumeByWorkId( spep_9 + 74, SE070 ,46);
setSeVolumeByWorkId( spep_9 + 75, SE070 ,48.3);
setSeVolumeByWorkId( spep_9 + 76, SE070 ,50.6);
setSeVolumeByWorkId( spep_9 + 77, SE070 ,52.9);
setSeVolumeByWorkId( spep_9 + 78, SE070 ,56);
setStartTimeMs( SE070,  533 );

--ラスト爆発
SE071 =playSe( spep_9 + 54 , 1188 );
SE072 =playSe( spep_9 + 54 , 1159 );
setSeVolumeByWorkId( spep_9 + 54 , SE072 , 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_9 +60 );
endPhase( spep_9 + 170 );
else end
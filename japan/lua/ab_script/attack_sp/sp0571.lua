--4014070:リブリアン_プリティーキャノン
--sp_effect_a3_00061


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
SP_01=	153531	;--	帽子アップ
SP_02=	153532	;--	カットイン？
SP_03=	153533	;--	ハート作成
SP_04=	153534	;--	溜め、発射
SP_05=	153535	;--	ef_004のBG
SP_06=	153536	;--	キラキラ
SP_07=	153537	;--	爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
--帽子アップ
------------------------------------------------------
--はじめの準備
spep_0=0;

--エフェクトの再生
cap=entryEffect(spep_0,SP_01,0x80,-1,0,0,0);

setEffMoveKey(spep_0,cap,0,0,0);
setEffMoveKey(spep_0+76,cap,0,0,0);
setEffScaleKey(spep_0,cap,1.0,1.0);
setEffScaleKey(spep_0+76,cap,1.0,1.0);
setEffAlphaKey(spep_0,cap,255);
setEffAlphaKey(spep_0+76,cap,255);
setEffRotateKey(spep_0,cap,0);
setEffRotateKey(spep_0+76,cap,0);

-- ** 音 ** --
playSe( spep_0 , 1112 );  --帽子がうねる
playSe( spep_0+44 , 1113 );  --帽子がうねる
playSe( spep_0+58 , 1113 );  --帽子がうねる


-- ** 白背景 ** --
entryFadeBg( spep_0 , 0, 78, 0, 255, 255, 255, 255 );  --薄い黒　背景
--次の準備
spep_1=spep_0 + 76;
------------------------------------------------------
--顔カットイン
------------------------------------------------------
--エフェクトの再生
hurt=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);

setEffMoveKey(spep_1,hurt,0,0,0);
setEffMoveKey(spep_1+96,hurt,0,0,0);
setEffScaleKey(spep_1,hurt,1.0,1.0);
setEffScaleKey(spep_1+96,hurt,1.0,1.0);
setEffAlphaKey(spep_1,hurt,255);
setEffAlphaKey(spep_1+96,hurt,255);
setEffRotateKey(spep_1,hurt,0);
setEffRotateKey(spep_1+96,hurt,0);

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1  + 20,  190006, 72, 0x100, -1, 0, -100.9, 512.8 ); --ゴゴゴ
setEffShake( spep_1  + 20, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1  + 20, ctgogo, -100.9, 512.8 , 0 );
setEffMoveKey( spep_1  + 92, ctgogo, -100.9, 515.5 , 0 );

setEffScaleKey( spep_1  + 20, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1  + 84, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1  + 86, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_1  + 88, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_1  + 90, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_1  + 92, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_1  + 20, ctgogo, 0 );
setEffRotateKey( spep_1  + 92, ctgogo, 0 );

setEffAlphaKey( spep_1  + 20, ctgogo, 0 );
setEffAlphaKey( spep_1  + 21, ctgogo, 255 );
setEffAlphaKey( spep_1  + 22, ctgogo, 255 );
setEffAlphaKey( spep_1  + 92, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 ,  906, 98 +180, 0x100, -1, 0, 20, 0 );

setEffMoveKey( spep_1 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1  + 98 +180, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 , shuchusen1, 1.34, 1.28 );
setEffScaleKey( spep_1  + 98 +180, shuchusen1, 1.34, 1.28 );

setEffRotateKey( spep_1 , shuchusen1, 0 );
setEffRotateKey( spep_1  + 98 +180, shuchusen1, 0 );

setEffAlphaKey( spep_1 , shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 33, shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 34, shuchusen1, 28 );
setEffAlphaKey( spep_1 -3 + 36, shuchusen1, 57 );
setEffAlphaKey( spep_1 -3 + 38, shuchusen1, 85 );
setEffAlphaKey( spep_1 -3 + 40, shuchusen1, 113 );
setEffAlphaKey( spep_1 -3 + 42, shuchusen1, 142 );
setEffAlphaKey( spep_1 -3 + 44, shuchusen1, 170 );
setEffAlphaKey( spep_1 -3 + 46, shuchusen1, 198 );
setEffAlphaKey( spep_1 -3 + 48, shuchusen1, 227 );
setEffAlphaKey( spep_1 -3 + 50, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 98 +180, shuchusen1, 255 );

--SE
playSe( spep_1 + 20, SE_04 );  --ゴゴゴ

-- ** 白背景 ** --
entryFadeBg( spep_1 , 0, 98, 0, 255, 255, 255, 255 );  --薄い黒　背景

--次の準備
spep_2=spep_1 + 96;


------------------------------------------------------
--ハート作成
------------------------------------------------------
--エフェクトの再生
dance=entryEffect(spep_2,SP_03,0x80,-1,0,0,0);

setEffMoveKey(spep_2,dance,0,0,0);
setEffMoveKey(spep_2+180,dance,0,0,0);
setEffScaleKey(spep_2,dance,1.0,1.0);
setEffScaleKey(spep_2+180,dance,1.0,1.0);
setEffAlphaKey(spep_2,dance,255);
setEffAlphaKey(spep_2+180,dance,255);
setEffRotateKey(spep_2,dance,0);
setEffRotateKey(spep_2+180,dance,0);

--SE
SE1=playSe( spep_2 + 20, 1115 );  --ハート作る時のやつ
playSe( spep_2 + 142, 46 );  --ハート作る時のやつ


stopSe( spep_2 + 170, SE1, 10 );

-- ** 白フェード** --
entryFade(spep_2+168,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2 + 182;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 6, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_3+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 94;



--------------------------------------
--溜め、発射
--------------------------------------
--エフェクトの再生
beam_f=entryEffect(spep_4,SP_04,0x100,-1,0,0,0);

setEffMoveKey(spep_4,beam_f,0,0,0);
setEffMoveKey(spep_4+240,beam_f,0,0,0);
setEffScaleKey(spep_4,beam_f,1.0,1.0);
setEffScaleKey(spep_4+240,beam_f,1.0,1.0);
setEffAlphaKey(spep_4,beam_f,255);
setEffAlphaKey(spep_4+240,beam_f,255);
setEffRotateKey(spep_4,beam_f,0);
setEffRotateKey(spep_4+240,beam_f,0);

--エフェクトの再生
beam_b=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);

setEffMoveKey(spep_4,beam_b,0,0,0);
setEffMoveKey(spep_4+240,beam_b,0,0,0);
setEffScaleKey(spep_4,beam_b,1.0,1.0);
setEffScaleKey(spep_4+240,beam_b,1.0,1.0);
setEffAlphaKey(spep_4,beam_b,255);
setEffAlphaKey(spep_4+240,beam_b,255);
setEffRotateKey(spep_4,beam_b,0);
setEffRotateKey(spep_4+240,beam_b,0);


--集中線
shuchusen2 = entryEffectLife( spep_4 ,  906, 238, 0x80, -1, 0, 450.1, -61 );

a=50;
b=100;

setEffMoveKey( spep_4  + 168, shuchusen2, 450.1 -a, -61 -b , 0 );
--setEffMoveKey( spep_4 -3 + 170, shuchusen2, 517.2 -a, -141.8 -b , 0 );
setEffMoveKey( spep_4 -3 + 172, shuchusen2, 584.3 -a, -222.6 -b , 0 );
setEffMoveKey( spep_4 -3 + 174, shuchusen2, 651.4 -a, -303.5 -b , 0 );
setEffMoveKey( spep_4 -3 + 176, shuchusen2, 718.4 -a, -384.3 -b , 0 );
setEffMoveKey( spep_4 -3 + 178, shuchusen2, 785.5 -a, -465.1 -b , 0 );
setEffMoveKey( spep_4 -3 + 180, shuchusen2, 852.6 -a, -545.9 -b , 0 );
setEffMoveKey( spep_4 -3 + 182, shuchusen2, 919.7 -a, -626.8 -b , 0 );
setEffMoveKey( spep_4 -3 + 184, shuchusen2, 986.7 -a, -707.6 -b , 0 );
setEffMoveKey( spep_4 -3 + 186, shuchusen2, 1053.8 -a, -788.4 -b , 0 );
setEffMoveKey( spep_4  + 238, shuchusen2, 1120.8 -a, -869.2 -b , 0 );

setEffScaleKey( spep_4  , shuchusen2, 1.68, 2.58 );
--setEffScaleKey( spep_4 -3 + 168, shuchusen2, 1.68, 2.58 );
setEffScaleKey( spep_4 -3 + 170, shuchusen2, 1.68, 2.7 );
setEffScaleKey( spep_4 -3 + 172, shuchusen2, 1.68, 2.82 );
setEffScaleKey( spep_4 -3 + 174, shuchusen2, 1.68, 2.95 );
setEffScaleKey( spep_4 -3 + 176, shuchusen2, 1.68, 3.07 );
setEffScaleKey( spep_4 -3 + 178, shuchusen2, 1.68, 3.19 );
setEffScaleKey( spep_4 -3 + 180, shuchusen2, 1.68, 3.32 );
setEffScaleKey( spep_4 -3 + 182, shuchusen2, 1.68, 3.44 );
setEffScaleKey( spep_4 -3 + 184, shuchusen2, 1.68, 3.56 );
setEffScaleKey( spep_4 -3 + 186, shuchusen2, 1.68, 3.69 );
setEffScaleKey( spep_4  + 238, shuchusen2, 1.68, 3.81 );

setEffRotateKey( spep_4  + 0 , shuchusen2, 139.8 );
setEffRotateKey( spep_4  + 238, shuchusen2, 139.8);

setEffAlphaKey( spep_4  + 0, shuchusen2, 0 );
setEffAlphaKey( spep_4 -3 + 167, shuchusen2,0  );
setEffAlphaKey( spep_4 -3 + 168, shuchusen2, 255 );
setEffAlphaKey( spep_4  + 238, shuchusen2, 255 );

--SE
SE0=playSe( spep_4 , 63 );  --ため
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
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
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------

--敵の動き
setDisp( spep_4 -3 + 170, 1, 1 );
setDisp( spep_4 -3 + 240, 1, 0 );

setShakeChara(spep_4 -3 +170,1,70,15);
changeAnime( spep_4 -3 + 170, 1, 101 );
changeAnime( spep_4 -3 + 194, 1, 108 );

setMoveKey( spep_4 -3 + 170, 1, 482, -593.7 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 463.8, -573.7 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 445.7, -553.7 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 427.5, -533.7 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 409.4, -513.7 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 391.2, -493.7 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 373.1, -473.8 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 354.9, -453.8 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 336.7, -433.8 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 318.6, -413.8 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 300.4, -393.8 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 282.3, -373.8 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 264.1, -353.8 , 0 );
setMoveKey( spep_4 -3 + 240, 1, 264.1, -353.8 , 0 );

setScaleKey( spep_4 -3 + 170, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 172, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 174, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 176, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 178, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 180, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 182, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 184, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 186, 1, 1, 1 );
setScaleKey( spep_4 -3 + 188, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 190, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 192, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 194, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 240, 1, 1.13, 1.13 );


setRotateKey( spep_4 -3 + 170, 1, 0 );
setRotateKey( spep_4 -3 + 240, 1, 0 );


--stopSe( spep_4 + 70, SE2, 10 );
playSe( spep_4 + 116, 1114 );  --ため
--playSe( spep_4 + 170, 1021 );  --ため
playSe( spep_4 + 170, 1022 );  --ため

-- ** 白背景 ** --
entryFadeBg( spep_4 , 0, 242, 0, 255, 255, 255, 255 );  --薄い黒　背景

-- ** エフェクト等 ** --
entryFade(spep_4+230,4,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5= spep_4 + 240;

--------------------------------------
--キラキラ
--------------------------------------
--エフェクトの再生
kirakira=entryEffect(spep_5,SP_06,0x100,-1,0,0,0);

setEffMoveKey(spep_5,kirakira,0,0,0);
setEffMoveKey(spep_5+40,kirakira,0,0,0);
setEffScaleKey(spep_5,kirakira,1.0,1.0);
setEffScaleKey(spep_5+40,kirakira,1.0,1.0);
setEffAlphaKey(spep_5,kirakira,255);
setEffAlphaKey(spep_5+40,kirakira,255);
setEffRotateKey(spep_5,kirakira,0);
setEffRotateKey(spep_5+40,kirakira,0);

--SE
playSe( spep_5, 46 );  --ハート作る時のやつ

-- ** エフェクト等 ** --
entryFade(spep_5+40,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 白背景 ** --
entryFadeBg( spep_5 , 0, 44, 0, 255, 255, 255, 255 );  --薄い黒　背景

--次の準備
spep_6= spep_5 + 42;


--------------------------------------
--フィニッシュ
--------------------------------------
--エフェクトの再生
finish=entryEffect(spep_6,SP_07,0x100,-1,0,0,0);

setEffMoveKey(spep_6,finish,0,0,0);
setEffMoveKey(spep_6+200,finish,0,0,0);
setEffScaleKey(spep_6,finish,1.0,1.0);
setEffScaleKey(spep_6+200,finish,1.0,1.0);
setEffAlphaKey(spep_6,finish,255);
setEffAlphaKey(spep_6+200,finish,255);
setEffRotateKey(spep_6,finish,0);
setEffRotateKey(spep_6+200,finish,0);

--SE
playSe( spep_6+58, 1024 );  --ため

dealDamage( spep_6 + 58 );
endPhase( spep_6 + 190 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--帽子アップ
------------------------------------------------------
--はじめの準備
spep_0=0;

--エフェクトの再生
cap=entryEffect(spep_0,SP_01,0x80,-1,0,0,0);

setEffMoveKey(spep_0,cap,0,0,0);
setEffMoveKey(spep_0+76,cap,0,0,0);
setEffScaleKey(spep_0,cap,-1.0,1.0);
setEffScaleKey(spep_0+76,cap,-1.0,1.0);
setEffAlphaKey(spep_0,cap,255);
setEffAlphaKey(spep_0+76,cap,255);
setEffRotateKey(spep_0,cap,0);
setEffRotateKey(spep_0+76,cap,0);

-- ** 音 ** --
playSe( spep_0 , 1112 );  --帽子がうねる
playSe( spep_0+44 , 1113 );  --帽子がうねる
playSe( spep_0+58 , 1113 );  --帽子がうねる


-- ** 白背景 ** --
entryFadeBg( spep_0 , 0, 78, 0, 255, 255, 255, 255 );  --薄い黒　背景
--次の準備
spep_1=spep_0 + 76;
------------------------------------------------------
--顔カットイン
------------------------------------------------------
--エフェクトの再生
hurt=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);

setEffMoveKey(spep_1,hurt,0,0,0);
setEffMoveKey(spep_1+96,hurt,0,0,0);
setEffScaleKey(spep_1,hurt,-1.0,1.0);
setEffScaleKey(spep_1+96,hurt,-1.0,1.0);
setEffAlphaKey(spep_1,hurt,255);
setEffAlphaKey(spep_1+96,hurt,255);
setEffRotateKey(spep_1,hurt,0);
setEffRotateKey(spep_1+96,hurt,0);

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1  + 20,  190006, 72, 0x100, -1, 0, 100.9, 512.8 ); --ゴゴゴ
setEffShake( spep_1  + 20, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1  + 20, ctgogo, 100.9, 512.8 , 0 );
setEffMoveKey( spep_1  + 92, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_1  + 20, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1  + 84, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1  + 86, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_1  + 88, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_1  + 90, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_1  + 92, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_1  + 20, ctgogo, 0 );
setEffRotateKey( spep_1  + 92, ctgogo, 0 );

setEffAlphaKey( spep_1  + 20, ctgogo, 0 );
setEffAlphaKey( spep_1  + 21, ctgogo, 255 );
setEffAlphaKey( spep_1  + 22, ctgogo, 255 );
setEffAlphaKey( spep_1  + 92, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 ,  906, 98 +180, 0x100, -1, 0, 20, 0 );

setEffMoveKey( spep_1 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1  + 98 +180, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 , shuchusen1, 1.34, 1.28 );
setEffScaleKey( spep_1  + 98 +180, shuchusen1, 1.34, 1.28 );

setEffRotateKey( spep_1 , shuchusen1, 0 );
setEffRotateKey( spep_1  + 98 +180, shuchusen1, 0 );

setEffAlphaKey( spep_1 , shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 33, shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 34, shuchusen1, 28 );
setEffAlphaKey( spep_1 -3 + 36, shuchusen1, 57 );
setEffAlphaKey( spep_1 -3 + 38, shuchusen1, 85 );
setEffAlphaKey( spep_1 -3 + 40, shuchusen1, 113 );
setEffAlphaKey( spep_1 -3 + 42, shuchusen1, 142 );
setEffAlphaKey( spep_1 -3 + 44, shuchusen1, 170 );
setEffAlphaKey( spep_1 -3 + 46, shuchusen1, 198 );
setEffAlphaKey( spep_1 -3 + 48, shuchusen1, 227 );
setEffAlphaKey( spep_1 -3 + 50, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 98 +180, shuchusen1, 255 );

--SE
playSe( spep_1 + 20, SE_04 );  --ゴゴゴ

-- ** 白背景 ** --
entryFadeBg( spep_1 , 0, 98, 0, 255, 255, 255, 255 );  --薄い黒　背景

--次の準備
spep_2=spep_1 + 96;


------------------------------------------------------
--ハート作成
------------------------------------------------------
--エフェクトの再生
dance=entryEffect(spep_2,SP_03,0x80,-1,0,0,0);

setEffMoveKey(spep_2,dance,0,0,0);
setEffMoveKey(spep_2+180,dance,0,0,0);
setEffScaleKey(spep_2,dance,-1.0,1.0);
setEffScaleKey(spep_2+180,dance,-1.0,1.0);
setEffAlphaKey(spep_2,dance,255);
setEffAlphaKey(spep_2+180,dance,255);
setEffRotateKey(spep_2,dance,0);
setEffRotateKey(spep_2+180,dance,0);

--SE
SE1=playSe( spep_2 + 20, 1115 );  --ハート作る時のやつ
playSe( spep_2 + 142, 46 );  --ハート作る時のやつ


stopSe( spep_2 + 170, SE1, 10 );

-- ** 白フェード** --
entryFade(spep_2+168,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2 + 182;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 6, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_3+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 94;



--------------------------------------
--溜め、発射
--------------------------------------
--エフェクトの再生
beam_f=entryEffect(spep_4,SP_04,0x100,-1,0,0,0);

setEffMoveKey(spep_4,beam_f,0,0,0);
setEffMoveKey(spep_4+240,beam_f,0,0,0);
setEffScaleKey(spep_4,beam_f,-1.0,1.0);
setEffScaleKey(spep_4+142,beam_f,-1.0,1.0);
setEffScaleKey(spep_4+143 + 18,beam_f,-1.0,1.0);
setEffScaleKey(spep_4+144 + 18,beam_f,1.0,1.0);
setEffScaleKey(spep_4+240,beam_f,1.0,1.0);
setEffAlphaKey(spep_4,beam_f,255);
setEffAlphaKey(spep_4+240,beam_f,255);
setEffRotateKey(spep_4,beam_f,0);
setEffRotateKey(spep_4+240,beam_f,0);

--エフェクトの再生
beam_b=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);

setEffMoveKey(spep_4,beam_b,0,0,0);
setEffMoveKey(spep_4+240,beam_b,0,0,0);
setEffScaleKey(spep_4,beam_b,1.0,1.0);
setEffScaleKey(spep_4+240,beam_b,1.0,1.0);
setEffAlphaKey(spep_4,beam_b,255);
setEffAlphaKey(spep_4+240,beam_b,255);
setEffRotateKey(spep_4,beam_b,0);
setEffRotateKey(spep_4+240,beam_b,0);


--集中線
shuchusen2 = entryEffectLife( spep_4 ,  906, 238, 0x80, -1, 0, 450.1, -61 );

a=50;
b=100;

setEffMoveKey( spep_4  + 168, shuchusen2, 450.1 -a, -61 -b , 0 );
--setEffMoveKey( spep_4 -3 + 170, shuchusen2, 517.2 -a, -141.8 -b , 0 );
setEffMoveKey( spep_4 -3 + 172, shuchusen2, 584.3 -a, -222.6 -b , 0 );
setEffMoveKey( spep_4 -3 + 174, shuchusen2, 651.4 -a, -303.5 -b , 0 );
setEffMoveKey( spep_4 -3 + 176, shuchusen2, 718.4 -a, -384.3 -b , 0 );
setEffMoveKey( spep_4 -3 + 178, shuchusen2, 785.5 -a, -465.1 -b , 0 );
setEffMoveKey( spep_4 -3 + 180, shuchusen2, 852.6 -a, -545.9 -b , 0 );
setEffMoveKey( spep_4 -3 + 182, shuchusen2, 919.7 -a, -626.8 -b , 0 );
setEffMoveKey( spep_4 -3 + 184, shuchusen2, 986.7 -a, -707.6 -b , 0 );
setEffMoveKey( spep_4 -3 + 186, shuchusen2, 1053.8 -a, -788.4 -b , 0 );
setEffMoveKey( spep_4  + 238, shuchusen2, 1120.8 -a, -869.2 -b , 0 );

setEffScaleKey( spep_4  , shuchusen2, 1.68, 2.58 );
--setEffScaleKey( spep_4 -3 + 168, shuchusen2, 1.68, 2.58 );
setEffScaleKey( spep_4 -3 + 170, shuchusen2, 1.68, 2.7 );
setEffScaleKey( spep_4 -3 + 172, shuchusen2, 1.68, 2.82 );
setEffScaleKey( spep_4 -3 + 174, shuchusen2, 1.68, 2.95 );
setEffScaleKey( spep_4 -3 + 176, shuchusen2, 1.68, 3.07 );
setEffScaleKey( spep_4 -3 + 178, shuchusen2, 1.68, 3.19 );
setEffScaleKey( spep_4 -3 + 180, shuchusen2, 1.68, 3.32 );
setEffScaleKey( spep_4 -3 + 182, shuchusen2, 1.68, 3.44 );
setEffScaleKey( spep_4 -3 + 184, shuchusen2, 1.68, 3.56 );
setEffScaleKey( spep_4 -3 + 186, shuchusen2, 1.68, 3.69 );
setEffScaleKey( spep_4  + 238, shuchusen2, 1.68, 3.81 );

setEffRotateKey( spep_4  + 0 , shuchusen2, 139.8 );
setEffRotateKey( spep_4  + 238, shuchusen2, 139.8);

setEffAlphaKey( spep_4  + 0, shuchusen2, 0 );
setEffAlphaKey( spep_4 -3 + 167, shuchusen2,0  );
setEffAlphaKey( spep_4 -3 + 168, shuchusen2, 255 );
setEffAlphaKey( spep_4  + 238, shuchusen2, 255 );

--SE
SE0=playSe( spep_4 , 63 );  --ため
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
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
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------

--敵の動き
setDisp( spep_4 -3 + 170, 1, 1 );
setDisp( spep_4 -3 + 240, 1, 0 );

setShakeChara(spep_4 -3 +170,1,70,15);
changeAnime( spep_4 -3 + 170, 1, 101 );
changeAnime( spep_4 -3 + 194, 1, 108 );

setMoveKey( spep_4 -3 + 170, 1, 482, -593.7 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 463.8, -573.7 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 445.7, -553.7 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 427.5, -533.7 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 409.4, -513.7 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 391.2, -493.7 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 373.1, -473.8 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 354.9, -453.8 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 336.7, -433.8 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 318.6, -413.8 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 300.4, -393.8 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 282.3, -373.8 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 264.1, -353.8 , 0 );
setMoveKey( spep_4 -3 + 240, 1, 264.1, -353.8 , 0 );

setScaleKey( spep_4 -3 + 170, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 172, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 174, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 176, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 178, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 180, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 182, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 184, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 186, 1, 1, 1 );
setScaleKey( spep_4 -3 + 188, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 190, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 192, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 194, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 240, 1, 1.13, 1.13 );


setRotateKey( spep_4 -3 + 170, 1, 0 );
setRotateKey( spep_4 -3 + 240, 1, 0 );


--stopSe( spep_4 + 70, SE2, 10 );
playSe( spep_4 + 116, 1114 );  --ため
--playSe( spep_4 + 170, 1114 );  --ため
playSe( spep_4 + 170, 1022 );  --ため

-- ** 白背景 ** --
entryFadeBg( spep_4 , 0, 242, 0, 255, 255, 255, 255 );  --薄い黒　背景

-- ** エフェクト等 ** --
entryFade(spep_4+230,4,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5= spep_4 + 240;

--------------------------------------
--キラキラ
--------------------------------------
--エフェクトの再生
kirakira=entryEffect(spep_5,SP_06,0x100,-1,0,0,0);

setEffMoveKey(spep_5,kirakira,0,0,0);
setEffMoveKey(spep_5+40,kirakira,0,0,0);
setEffScaleKey(spep_5,kirakira,1.0,1.0);
setEffScaleKey(spep_5+40,kirakira,1.0,1.0);
setEffAlphaKey(spep_5,kirakira,255);
setEffAlphaKey(spep_5+40,kirakira,255);
setEffRotateKey(spep_5,kirakira,0);
setEffRotateKey(spep_5+40,kirakira,0);

--SE
playSe( spep_5, 46 );  --ハート作る時のやつ

-- ** エフェクト等 ** --
entryFade(spep_5+40,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 白背景 ** --
entryFadeBg( spep_5 , 0, 44, 0, 255, 255, 255, 255 );  --薄い黒　背景

--次の準備
spep_6= spep_5 + 42;


--------------------------------------
--フィニッシュ
--------------------------------------
--エフェクトの再生
finish=entryEffect(spep_6,SP_07,0x100,-1,0,0,0);

setEffMoveKey(spep_6,finish,0,0,0);
setEffMoveKey(spep_6+200,finish,0,0,0);
setEffScaleKey(spep_6,finish,1.0,1.0);
setEffScaleKey(spep_6+200,finish,1.0,1.0);
setEffAlphaKey(spep_6,finish,255);
setEffAlphaKey(spep_6+200,finish,255);
setEffRotateKey(spep_6,finish,0);
setEffRotateKey(spep_6+200,finish,0);

--SE
playSe( spep_6+58, 1024 );  --ため

dealDamage( spep_6 + 58 );
endPhase( spep_6 + 190 );
end





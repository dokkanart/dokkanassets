--1020280:天津飯_気功砲
--sp_effect_a7_00036

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
SP_01=	155760	;--	煽りで登場→セリフ＆表情カットイン
SP_02=	155761	;--	静止から手で構えを作り照準を絞る
SP_03=	155762	;--	気功砲発射（寄り）
SP_04=	155763	;--	気功砲発射（寄り→引き）
SP_05=	155764	;--	　ef_004の画面揺らし
SP_06=	155765	;--	　ef_004の画面横移動
SP_07=	155766	;--	気功砲放出→敵HIT
SP_08=	155767	;--	　ef_005の画面揺らし
SP_09=	155768	;--	爆発（引き）
SP_10=	155853	;--	静止から手で構えを作り照準を絞る(背景)
SP_11=	155858	;--	気功砲放出→敵HIT(背景)            

--エフェクト(てき)
SP_01x=	155760	;--	煽りで登場→セリフ＆表情カットイン
SP_02x=	155852	;--	静止から手で構えを作り照準を絞る
SP_03x=	155854	;--	気功砲発射（寄り）
SP_04x=	155763	;--	気功砲発射（寄り→引き）
SP_05x=	155764	;--	　ef_004の画面揺らし
SP_06x=	155855	;--	　ef_004の画面横移動
SP_07x=	155766	;--	気功砲放出→敵HIT
SP_08x=	155767	;--	　ef_005の画面揺らし
SP_09x=	155768	;--	爆発（引き）
SP_10x=	155853	;--	静止から手で構えを作り照準を絞る(背景)
SP_11x=	155858	;--	気功砲放出→敵HIT(背景)         

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
-- 煽りで登場→セリフ＆表情カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 158, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 158, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+68  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+68  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +80, 190006, 72, 0x102, -1, -15, 0, 515);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +80,  ctgogo,  -15,  515);
setEffMoveKey(  spep_0 +152,  ctgogo,  -15,  515);

setEffAlphaKey( spep_0 +80, ctgogo, 0 );
setEffAlphaKey( spep_0 + 81, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 146, ctgogo, 255 );
setEffAlphaKey( spep_0 + 148, ctgogo, 191 );
setEffAlphaKey( spep_0 + 150, ctgogo, 112 );
setEffAlphaKey( spep_0 + 152, ctgogo, 64 );

setEffRotateKey(  spep_0 +80,  ctgogo,  0);
setEffRotateKey(  spep_0 +152,  ctgogo,  0);

setEffScaleKey(  spep_0 +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +142,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +152,  ctgogo, 1.07, 1.07 );

--SE
se_1229 = playSe( spep_0 + 0, 1229 );--入り
setSeVolume( spep_0 + 0, 1229, 66 );
playSe( spep_0 + 14, 8 );--入り
playSe( spep_0 + 80, 1018 );--顔カットイン

--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+150 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1=spep_0+158;
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
stopSe( spep_1 + 0, se_1229, 0 );

--白フェード
entryFade( spep_1 + 76, 6, 14, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 静止から手で構えを作り照準を絞る
------------------------------------------------------
-- ** エフェクト等 ** --
ranging_f = entryEffect( spep_2 + 0, 155970, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ranging_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 138, ranging_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ranging_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, ranging_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ranging_f, 0 );
setEffRotateKey( spep_2 + 138, ranging_f, 0 );
setEffAlphaKey( spep_2 + 0, ranging_f, 255 );
setEffAlphaKey( spep_2 + 138, ranging_f, 255 );

-- ** エフェクト等 ** --
ranging = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ranging, 0, 0, 0 );
setEffMoveKey( spep_2 + 138, ranging, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ranging, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, ranging, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ranging, 0 );
setEffRotateKey( spep_2 + 138, ranging, 0 );
setEffAlphaKey( spep_2 + 0, ranging, 255 );
setEffAlphaKey( spep_2 + 138, ranging, 255 );

-- ** エフェクト等 ** --
ranging_bg = entryEffect( spep_2 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ranging_bg, 0, 0, 0 );
setEffMoveKey( spep_2 + 138, ranging_bg, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ranging_bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, ranging_bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ranging_bg, 0 );
setEffRotateKey( spep_2 + 138, ranging_bg, 0 );
setEffAlphaKey( spep_2 + 0, ranging_bg, 255 );
setEffAlphaKey( spep_2 + 138, ranging_bg, 255 );

--敵の動き
setDisp( spep_2-3 + 28, 1, 1);
setDisp( spep_2-3 + 138, 1, 0);

changeAnime( spep_2-3 + 28, 1, 117);

a=20;

setMoveKey( spep_2-3 + 28, 1, 1.2-a, -0.2 , 0 );
setMoveKey( spep_2-3 + 76, 1, 1.2-a, -0.2 , 0 );
setMoveKey( spep_2-3 + 77, 1, 1.2-a, -0.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 1.8-a, -0.8 , 0 );
setMoveKey( spep_2-3 + 106, 1, 1.8-a, -0.8 , 0 );
setMoveKey( spep_2-3 + 107, 1, 1.8-a, -0.8 , 0 );
setMoveKey( spep_2-3 + 108, 1, 1.6-a, -0.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 1.6-a, -0.6 , 0 );

setScaleKey( spep_2-3 + 28, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 76, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 77, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 78, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 106, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 107, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 108, 1, 2.1, 2.1 );
setScaleKey( spep_2-3 + 138, 1, 2.1, 2.1 );

setRotateKey( spep_2-3 + 28, 1, 0 );
setRotateKey( spep_2-3 + 138, 1, 0 );

--SE
playSe( spep_2 + 30, 1048 );--手広げる
setSeVolume( spep_2 + 30, 1048, 86 );
playSe( spep_2 + 30, 1003 );--手広げる
setSeVolume( spep_2 + 30, 1003, 69 );
SE1=playSe( spep_2 + 56, 1231 );--拡大１
setSeVolume( spep_2 + 56, 1231, 56 );
setPitch( spep_2 + 56, SE1, 600 );
setTimeStretch( SE1, 0.71, 10, 1 );
SE2=playSe( spep_2 + 56, 1040 );--拡大１
setSeVolume( spep_2 + 56, 1040, 84 );
setPitch( spep_2 + 56, SE2, -900 );
setTimeStretch( SE2, 0.4, 10, 1 );
SE3=playSe( spep_2 + 56, 1061 );--拡大１
setSeVolume( spep_2 + 56, 1061, 79 );
setPitch( spep_2 + 56, SE3, 300 );
setTimeStretch( SE3, 1.2, 10, 1 );
playSe( spep_2 + 58, 1041 );--拡大１
setSeVolume( spep_2 + 58, 1041, 59 );
SE4=playSe( spep_2 + 92, 1231 );--拡大２
setSeVolume( spep_2 + 92, 1231, 56 );
setPitch( spep_2 + 92, SE4, 600 );
setTimeStretch( SE4, 0.71, 10, 1 );
SE5=playSe( spep_2 + 92, 1040 );--拡大２
setSeVolume( spep_2 + 92, 1040, 84 );
setPitch( spep_2 + 92, SE5, -900 );
setTimeStretch( SE5, 0.4, 10, 1 );
SE6=playSe( spep_2 + 92, 1061 );--拡大２
setSeVolume( spep_2 + 92, 1061, 79 );
setPitch( spep_2 + 92, SE6, 300 );
setTimeStretch( SE6, 1.2, 10, 1 );
playSe( spep_2 + 94, 1041 );--拡大２
setSeVolume( spep_2 + 94, 1041, 59 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2+130 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 138;
------------------------------------------------------
-- 気功砲発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 56, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 56, beam, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 26; --エンドフェイズのフレーム数を置き換える
    
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
--集中線
shuchusen1 = entryEffectLife( spep_3-3 + 28,  906, 12+1, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 28, shuchusen1, 12+1, 20 );
setEffMoveKey( spep_3-3 + 28, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3-2 + 40, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 28, shuchusen1, 3, 3 );
setEffScaleKey( spep_3-3 + 30, shuchusen1, 2.64, 2.64 );
setEffScaleKey( spep_3-3 + 32, shuchusen1, 2.28, 2.28 );
setEffScaleKey( spep_3-3 + 34, shuchusen1, 1.92, 1.92 );
setEffScaleKey( spep_3-3 + 36, shuchusen1, 1.56, 1.56 );
setEffScaleKey( spep_3-3 + 38, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_3-2 + 40, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_3-3 + 28, shuchusen1, 180 );
setEffRotateKey( spep_3-2 + 40, shuchusen1, 180 );

setEffAlphaKey( spep_3-3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_3-2 + 40, shuchusen1, 255 );

--SE
playSe( spep_3 + 24, 1027 );--発射
setSeVolume( spep_3 + 24, 1027, 83 );
playSe( spep_3 + 24, 1109 );--発射
setSeVolume( spep_3 + 24, 1109, 80 );
playSe( spep_3 + 26, 1145 );--発射
setSeVolume( spep_3 + 26, 1145, 87 );
playSe( spep_3 + 26, 1179 );--発射
se_1193 = playSe( spep_3 + 42, 1193 );--発射
setStartTimeMs( se_1193,  867 );
setSeVolume( spep_3 + 42, 1193, 0 );
setSeVolume( spep_3 + 43, 1193, 8.33 );
setSeVolume( spep_3 + 44, 1193, 16.67 );
setSeVolume( spep_3 + 45, 1193, 25 );
setSeVolume( spep_3 + 46, 1193, 33.33 );
setSeVolume( spep_3 + 47, 1193, 41.67 );
setSeVolume( spep_3 + 48, 1193, 50 );
setSeVolume( spep_3 + 49, 1193, 58.33 );
setSeVolume( spep_3 + 50, 1193, 66.67 );
setSeVolume( spep_3 + 51, 1193, 75 );
setSeVolume( spep_3 + 52, 1193, 83.33 );
setSeVolume( spep_3 + 53, 1193, 91.67 );
setSeVolume( spep_3 + 54, 1193, 100 );

--白フェード
entryFade( spep_3+48 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;
------------------------------------------------------
-- 気功砲発射（寄り→引き）
------------------------------------------------------
-- ** エフェクト等 ** --
beam2 = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam2, 0, 0, 0 );
setEffMoveKey( spep_4 + 34, beam2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 34, beam2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam2, 0 );
setEffRotateKey( spep_4 + 34, beam2, 0 );
setEffAlphaKey( spep_4 + 0, beam2, 255 );
setEffAlphaKey( spep_4 + 34, beam2, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 34;
------------------------------------------------------
-- 気功砲放出→敵HIT
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 40, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 40, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 40, hit_f, 255 );
setEffAlphaKey( spep_5 + 41, hit_f, 0 );
setEffAlphaKey( spep_5 + 42, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 40, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 40, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 40, hit_b, 255 );
setEffAlphaKey( spep_5 + 41, hit_b, 0 );
setEffAlphaKey( spep_5 + 42, hit_b, 0 );

--流線
ryuusen1 = entryEffectLife( spep_5 + 0,  921, 40, 0x80, -1, 0, -85.1, -58.3 );
setEffBlendColor(spep_5 + 0,ryuusen1,2,0.85,0.5,0,1);
setEffShake( spep_5 + 0, ryuusen1, 40, 20 );

setEffMoveKey( spep_5 + 0, ryuusen1, -85.1, -58.3 , 0 );
setEffMoveKey( spep_5 + 40, ryuusen1, -85.1, -58.3 , 0 );

setEffScaleKey( spep_5 + 0, ryuusen1, 1.96, 1.54 );
setEffScaleKey( spep_5 + 40, ryuusen1, 1.96, 1.54 );

setEffRotateKey( spep_5 + 0, ryuusen1, -40 );
setEffRotateKey( spep_5 + 40, ryuusen1, -40 );

setEffAlphaKey( spep_5 + 0, ryuusen1, 255 );
setEffAlphaKey( spep_5 + 32, ryuusen1, 255 );
setEffAlphaKey( spep_5 + 34, ryuusen1, 191 );
setEffAlphaKey( spep_5 + 36, ryuusen1, 128 );
setEffAlphaKey( spep_5 + 38, ryuusen1, 64 );
setEffAlphaKey( spep_5 + 40, ryuusen1, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 42, 1, 0 );

changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 22, 1, 108 );

setMoveKey( spep_5 + 0, 1, 218.2, 190.4 , 0 );
setMoveKey( spep_5-3 + 12, 1, 218.2, 190.4 , 0 );
setMoveKey( spep_5-3 + 14, 1, 218.4, 190.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 188.3, 164.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, 170.2, 149.4 , 0 );
setMoveKey( spep_5-3 + 21, 1, 164.1, 144.3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 191.4, 170.6 , 0 );
setMoveKey( spep_5-3 + 24, 1, 202.7, 163.1 , 0 );
setMoveKey( spep_5-3 + 26, 1, 180.8, 166.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 217.1, 192.9 , 0 );
setMoveKey( spep_5-3 + 30, 1, 248.8, 215.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 276, 233.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 298.8, 249.1 , 0 );
setMoveKey( spep_5-3 + 36, 1, 317.3, 261.2 , 0 );
setMoveKey( spep_5-3 + 38, 1, 331.6, 270.5 , 0 );
setMoveKey( spep_5-3 + 40, 1, 341.8, 276.9 , 0 );
setMoveKey( spep_5-3 + 42, 1, 347.8, 280.8 , 0 );

setScaleKey( spep_5 + 0, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 14, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 16, 1, 1.73, 1.73 );
setScaleKey( spep_5-3 + 18, 1, 1.82, 1.82 );
setScaleKey( spep_5-3 + 21, 1, 1.85, 1.85 );
setScaleKey( spep_5-3 + 22, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 24, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 28, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 30, 1, 1.08, 1.08 );
setScaleKey( spep_5-3 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_5-3 + 36, 1, 0.54, 0.54 );
setScaleKey( spep_5-3 + 38, 1, 0.43, 0.43 );
setScaleKey( spep_5-3 + 40, 1, 0.35, 0.35 );
setScaleKey( spep_5-3 + 42, 1, 0.3, 0.3 );

setRotateKey( spep_5 + 0, 1, -16.9 );
setRotateKey( spep_5-3 + 21, 1, -16.9 );
setRotateKey( spep_5-3 + 22, 1, -0.6 );
setRotateKey( spep_5-3 + 24, 1, -1.1 );
setRotateKey( spep_5-3 + 26, 1, 4.5 );
setRotateKey( spep_5-3 + 28, 1, 3.5 );
setRotateKey( spep_5-3 + 30, 1, 2.6 );
setRotateKey( spep_5-3 + 32, 1, 1.9 );
setRotateKey( spep_5-3 + 34, 1, 1.3 );
setRotateKey( spep_5-3 + 36, 1, 0.8 );
setRotateKey( spep_5-3 + 38, 1, 0.4 );
setRotateKey( spep_5-3 + 40, 1, 0.1 );
setRotateKey( spep_5-3 + 42, 1, -0.1 );

--SE
playSe( spep_5 + 12, 1021 );--追い気功砲

stopSe( spep_5 + 27, se_1193, 41 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 56, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5+19 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_5+32 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 40;
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, 190013, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_6 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_6 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.5, 3.5 );
--[[setEffScaleKey( spep_6 + 8, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 -3 + 10, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 -3 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_6 -3 + 14, ctgyan, 2.42, 2.42 );
setEffScaleKey( spep_6 -3 + 16, ctgyan, 2.43, 2.43 );
setEffScaleKey( spep_6 -3 + 18, ctgyan, 2.44, 2.44 );
setEffScaleKey( spep_6 -3 + 20, ctgyan, 2.45, 2.45 );
setEffScaleKey( spep_6 -3 + 22, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_6 -3 + 24, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_6 -3 + 26, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_6 -3 + 28, ctgyan, 2.48, 2.48 );
setEffScaleKey( spep_6 -3 + 30, ctgyan, 2.49, 2.49 );
setEffScaleKey( spep_6 -3 + 32, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 -3 + 34, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 -3 + 36, ctgyan, 2.51, 2.51 );
setEffScaleKey( spep_6 -3 + 38, ctgyan, 2.52, 2.52 );
setEffScaleKey( spep_6 -3 + 40, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_6 -3 + 42, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_6 -3 + 44, ctgyan, 2.54, 2.54 );
setEffScaleKey( spep_6 -3 + 46, ctgyan, 2.55, 2.55 );
setEffScaleKey( spep_6 -3 + 48, ctgyan, 2.56, 2.56 );
setEffScaleKey( spep_6 -3 + 50, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_6 -3 + 52, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_6 -3 + 54, ctgyan, 2.58, 2.58 );
setEffScaleKey( spep_6 -3 + 56, ctgyan, 2.59, 2.59 );
setEffScaleKey( spep_6 -3 + 58, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 57, ctgyan, 3.8, 3.8 );]]
setEffScaleKey( spep_6 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

--SE
playSe( spep_6 + 0, 1023 );--ギャン

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6+52 , 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;
------------------------------------------------------
-- 爆発（引き）
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 110, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 110, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 110, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 110, explosion, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_7-3 + 24,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7-3 + 24, shuchusen2, 32, 20 );
setEffMoveKey( spep_7-3 + 24, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_7-3 + 56, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_7-3 + 24, shuchusen2, 1, 1 );
setEffScaleKey( spep_7-3 + 56, shuchusen2, 1, 1 );

setEffRotateKey( spep_7-3 + 24, shuchusen2, 180 );
setEffRotateKey( spep_7-3 + 56, shuchusen2, 180 );

setEffAlphaKey( spep_7-3 + 24, shuchusen2, 255 );
setEffAlphaKey( spep_7-3 + 38, shuchusen2, 255 );
setEffAlphaKey( spep_7-3 + 40, shuchusen2, 252 );
setEffAlphaKey( spep_7-3 + 42, shuchusen2, 242 );
setEffAlphaKey( spep_7-3 + 44, shuchusen2, 227 );
setEffAlphaKey( spep_7-3 + 46, shuchusen2, 205 );
setEffAlphaKey( spep_7-3 + 48, shuchusen2, 176 );
setEffAlphaKey( spep_7-3 + 50, shuchusen2, 142 );
setEffAlphaKey( spep_7-3 + 52, shuchusen2, 101 );
setEffAlphaKey( spep_7-3 + 54, shuchusen2, 54 );
setEffAlphaKey( spep_7-3 + 56, shuchusen2, 0 );

--SE
playSe( spep_7 + 0, 1068 );--爆発
playSe( spep_7 + 2, 1159 );--爆発

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--敵の動き
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 100 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 煽りで登場→セリフ＆表情カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 158, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 158, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 158, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+68  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+68  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +80, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +80,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +152,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +80, ctgogo, 0 );
setEffAlphaKey( spep_0 + 81, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 146, ctgogo, 255 );
setEffAlphaKey( spep_0 + 148, ctgogo, 191 );
setEffAlphaKey( spep_0 + 150, ctgogo, 112 );
setEffAlphaKey( spep_0 + 152, ctgogo, 64 );

setEffRotateKey(  spep_0 +80,  ctgogo,  0);
setEffRotateKey(  spep_0 +152,  ctgogo,  0);

setEffScaleKey(  spep_0 +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +142,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +152,  ctgogo, -1.07, 1.07 );

--SE
se_1229 = playSe( spep_0 + 0, 1229 );--入り
setSeVolume( spep_0 + 0, 1229, 66 );
playSe( spep_0 + 14, 8 );--入り
playSe( spep_0 + 80, 1018 );--顔カットイン

--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+150 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1=spep_0+158;
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
stopSe( spep_1 + 0, se_1229, 0 );

--白フェード
entryFade( spep_1 + 76, 6, 14, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 静止から手で構えを作り照準を絞る
------------------------------------------------------
-- ** エフェクト等 ** --
ranging_f = entryEffect( spep_2 + 0, 155970, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ranging_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 138, ranging_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ranging_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, ranging_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ranging_f, 0 );
setEffRotateKey( spep_2 + 138, ranging_f, 0 );
setEffAlphaKey( spep_2 + 0, ranging_f, 255 );
setEffAlphaKey( spep_2 + 138, ranging_f, 255 );

-- ** エフェクト等 ** --
ranging = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ranging, 0, 0, 0 );
setEffMoveKey( spep_2 + 138, ranging, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ranging, -1.0, 1.0 );
setEffScaleKey( spep_2 + 138, ranging, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ranging, 0 );
setEffRotateKey( spep_2 + 138, ranging, 0 );
setEffAlphaKey( spep_2 + 0, ranging, 255 );
setEffAlphaKey( spep_2 + 138, ranging, 255 );

-- ** エフェクト等 ** --
ranging_bg = entryEffect( spep_2 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ranging_bg, 0, 0, 0 );
setEffMoveKey( spep_2 + 138, ranging_bg, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ranging_bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, ranging_bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ranging_bg, 0 );
setEffRotateKey( spep_2 + 138, ranging_bg, 0 );
setEffAlphaKey( spep_2 + 0, ranging_bg, 255 );
setEffAlphaKey( spep_2 + 138, ranging_bg, 255 );

--敵の動き
setDisp( spep_2-3 + 28, 1, 1);
setDisp( spep_2-3 + 138, 1, 0);

changeAnime( spep_2-3 + 28, 1, 117);

a=20;

setMoveKey( spep_2-3 + 28, 1, 1.2-a, -0.2 , 0 );
setMoveKey( spep_2-3 + 76, 1, 1.2-a, -0.2 , 0 );
setMoveKey( spep_2-3 + 77, 1, 1.2-a, -0.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 1.8-a, -0.8 , 0 );
setMoveKey( spep_2-3 + 106, 1, 1.8-a, -0.8 , 0 );
setMoveKey( spep_2-3 + 107, 1, 1.8-a, -0.8 , 0 );
setMoveKey( spep_2-3 + 108, 1, 1.6-a, -0.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 1.6-a, -0.6 , 0 );

setScaleKey( spep_2-3 + 28, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 76, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 77, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 78, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 106, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 107, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 108, 1, 2.1, 2.1 );
setScaleKey( spep_2-3 + 138, 1, 2.1, 2.1 );

setRotateKey( spep_2-3 + 28, 1, 0 );
setRotateKey( spep_2-3 + 138, 1, 0 );

--SE
playSe( spep_2 + 30, 1048 );--手広げる
setSeVolume( spep_2 + 30, 1048, 86 );
playSe( spep_2 + 30, 1003 );--手広げる
setSeVolume( spep_2 + 30, 1003, 69 );
SE1=playSe( spep_2 + 56, 1231 );--拡大１
setSeVolume( spep_2 + 56, 1231, 56 );
setPitch( spep_2 + 56, SE1, 600 );
setTimeStretch( SE1, 0.71, 10, 1 );
SE2=playSe( spep_2 + 56, 1040 );--拡大１
setSeVolume( spep_2 + 56, 1040, 84 );
setPitch( spep_2 + 56, SE2, -900 );
setTimeStretch( SE2, 0.4, 10, 1 );
SE3=playSe( spep_2 + 56, 1061 );--拡大１
setSeVolume( spep_2 + 56, 1061, 79 );
setPitch( spep_2 + 56, SE3, 300 );
setTimeStretch( SE3, 1.2, 10, 1 );
playSe( spep_2 + 58, 1041 );--拡大１
setSeVolume( spep_2 + 58, 1041, 59 );
SE4=playSe( spep_2 + 92, 1231 );--拡大２
setSeVolume( spep_2 + 92, 1231, 56 );
setPitch( spep_2 + 92, SE4, 600 );
setTimeStretch( SE4, 0.71, 10, 1 );
SE5=playSe( spep_2 + 92, 1040 );--拡大２
setSeVolume( spep_2 + 92, 1040, 84 );
setPitch( spep_2 + 92, SE5, -900 );
setTimeStretch( SE5, 0.4, 10, 1 );
SE6=playSe( spep_2 + 92, 1061 );--拡大２
setSeVolume( spep_2 + 92, 1061, 79 );
setPitch( spep_2 + 92, SE6, 300 );
setTimeStretch( SE6, 1.2, 10, 1 );
playSe( spep_2 + 94, 1041 );--拡大２
setSeVolume( spep_2 + 94, 1041, 59 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2+130 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 138;
------------------------------------------------------
-- 気功砲発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 56, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 56, beam, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 26; --エンドフェイズのフレーム数を置き換える
    
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
--集中線
shuchusen1 = entryEffectLife( spep_3-3 + 28,  906, 12+1, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 28, shuchusen1, 12+1, 20 );
setEffMoveKey( spep_3-3 + 28, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3-2 + 40, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 28, shuchusen1, 3, 3 );
setEffScaleKey( spep_3-3 + 30, shuchusen1, 2.64, 2.64 );
setEffScaleKey( spep_3-3 + 32, shuchusen1, 2.28, 2.28 );
setEffScaleKey( spep_3-3 + 34, shuchusen1, 1.92, 1.92 );
setEffScaleKey( spep_3-3 + 36, shuchusen1, 1.56, 1.56 );
setEffScaleKey( spep_3-3 + 38, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_3-2 + 40, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_3-3 + 28, shuchusen1, 180 );
setEffRotateKey( spep_3-2 + 40, shuchusen1, 180 );

setEffAlphaKey( spep_3-3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_3-2 + 40, shuchusen1, 255 );

--SE
playSe( spep_3 + 24, 1027 );--発射
setSeVolume( spep_3 + 24, 1027, 83 );
playSe( spep_3 + 24, 1109 );--発射
setSeVolume( spep_3 + 24, 1109, 80 );
playSe( spep_3 + 26, 1145 );--発射
setSeVolume( spep_3 + 26, 1145, 87 );
playSe( spep_3 + 26, 1179 );--発射
se_1193 = playSe( spep_3 + 42, 1193 );--発射
setStartTimeMs( se_1193,  867 );
setSeVolume( spep_3 + 42, 1193, 0 );
setSeVolume( spep_3 + 43, 1193, 8.33 );
setSeVolume( spep_3 + 44, 1193, 16.67 );
setSeVolume( spep_3 + 45, 1193, 25 );
setSeVolume( spep_3 + 46, 1193, 33.33 );
setSeVolume( spep_3 + 47, 1193, 41.67 );
setSeVolume( spep_3 + 48, 1193, 50 );
setSeVolume( spep_3 + 49, 1193, 58.33 );
setSeVolume( spep_3 + 50, 1193, 66.67 );
setSeVolume( spep_3 + 51, 1193, 75 );
setSeVolume( spep_3 + 52, 1193, 83.33 );
setSeVolume( spep_3 + 53, 1193, 91.67 );
setSeVolume( spep_3 + 54, 1193, 100 );

--白フェード
entryFade( spep_3+48 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;
------------------------------------------------------
-- 気功砲発射（寄り→引き）
------------------------------------------------------
-- ** エフェクト等 ** --
beam2 = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam2, 0, 0, 0 );
setEffMoveKey( spep_4 + 34, beam2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 34, beam2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam2, 0 );
setEffRotateKey( spep_4 + 34, beam2, 0 );
setEffAlphaKey( spep_4 + 0, beam2, 255 );
setEffAlphaKey( spep_4 + 34, beam2, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 34;
------------------------------------------------------
-- 気功砲放出→敵HIT
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 40, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 40, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 40, hit_f, 255 );
setEffAlphaKey( spep_5 + 41, hit_f, 0 );
setEffAlphaKey( spep_5 + 42, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 40, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 40, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 40, hit_b, 255 );
setEffAlphaKey( spep_5 + 41, hit_b, 0 );
setEffAlphaKey( spep_5 + 42, hit_b, 0 );
--流線
ryuusen1 = entryEffectLife( spep_5 + 0,  921, 40, 0x80, -1, 0, -85.1, -58.3 );
setEffBlendColor(spep_5 + 0,ryuusen1,2,0.85,0.5,0,1);
setEffShake( spep_5 + 0, ryuusen1, 40, 20 );

setEffMoveKey( spep_5 + 0, ryuusen1, -85.1, -58.3 , 0 );
setEffMoveKey( spep_5 + 40, ryuusen1, -85.1, -58.3 , 0 );

setEffScaleKey( spep_5 + 0, ryuusen1, 1.96, 1.54 );
setEffScaleKey( spep_5 + 40, ryuusen1, 1.96, 1.54 );

setEffRotateKey( spep_5 + 0, ryuusen1, -40 );
setEffRotateKey( spep_5 + 40, ryuusen1, -40 );

setEffAlphaKey( spep_5 + 0, ryuusen1, 255 );
setEffAlphaKey( spep_5 + 32, ryuusen1, 255 );
setEffAlphaKey( spep_5 + 34, ryuusen1, 191 );
setEffAlphaKey( spep_5 + 36, ryuusen1, 128 );
setEffAlphaKey( spep_5 + 38, ryuusen1, 64 );
setEffAlphaKey( spep_5 + 40, ryuusen1, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 42, 1, 0 );

changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 22, 1, 108 );

setMoveKey( spep_5 + 0, 1, 218.2, 190.4 , 0 );
setMoveKey( spep_5-3 + 12, 1, 218.2, 190.4 , 0 );
setMoveKey( spep_5-3 + 14, 1, 218.4, 190.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 188.3, 164.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, 170.2, 149.4 , 0 );
setMoveKey( spep_5-3 + 21, 1, 164.1, 144.3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 191.4, 170.6 , 0 );
setMoveKey( spep_5-3 + 24, 1, 202.7, 163.1 , 0 );
setMoveKey( spep_5-3 + 26, 1, 180.8, 166.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 217.1, 192.9 , 0 );
setMoveKey( spep_5-3 + 30, 1, 248.8, 215.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 276, 233.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 298.8, 249.1 , 0 );
setMoveKey( spep_5-3 + 36, 1, 317.3, 261.2 , 0 );
setMoveKey( spep_5-3 + 38, 1, 331.6, 270.5 , 0 );
setMoveKey( spep_5-3 + 40, 1, 341.8, 276.9 , 0 );
setMoveKey( spep_5-3 + 42, 1, 347.8, 280.8 , 0 );

setScaleKey( spep_5 + 0, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 14, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 16, 1, 1.73, 1.73 );
setScaleKey( spep_5-3 + 18, 1, 1.82, 1.82 );
setScaleKey( spep_5-3 + 21, 1, 1.85, 1.85 );
setScaleKey( spep_5-3 + 22, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 24, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 28, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 30, 1, 1.08, 1.08 );
setScaleKey( spep_5-3 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_5-3 + 36, 1, 0.54, 0.54 );
setScaleKey( spep_5-3 + 38, 1, 0.43, 0.43 );
setScaleKey( spep_5-3 + 40, 1, 0.35, 0.35 );
setScaleKey( spep_5-3 + 42, 1, 0.3, 0.3 );

setRotateKey( spep_5 + 0, 1, -16.9 );
setRotateKey( spep_5-3 + 21, 1, -16.9 );
setRotateKey( spep_5-3 + 22, 1, -0.6 );
setRotateKey( spep_5-3 + 24, 1, -1.1 );
setRotateKey( spep_5-3 + 26, 1, 4.5 );
setRotateKey( spep_5-3 + 28, 1, 3.5 );
setRotateKey( spep_5-3 + 30, 1, 2.6 );
setRotateKey( spep_5-3 + 32, 1, 1.9 );
setRotateKey( spep_5-3 + 34, 1, 1.3 );
setRotateKey( spep_5-3 + 36, 1, 0.8 );
setRotateKey( spep_5-3 + 38, 1, 0.4 );
setRotateKey( spep_5-3 + 40, 1, 0.1 );
setRotateKey( spep_5-3 + 42, 1, -0.1 );

--SE
playSe( spep_5 + 12, 1021 );--追い気功砲

stopSe( spep_5 + 27, se_1193, 41 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 56, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5+19 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_5+32 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 40;
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, 190013, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_6 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_6 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.5, 3.5 );
--[[setEffScaleKey( spep_6 + 8, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 -3 + 10, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 -3 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_6 -3 + 14, ctgyan, 2.42, 2.42 );
setEffScaleKey( spep_6 -3 + 16, ctgyan, 2.43, 2.43 );
setEffScaleKey( spep_6 -3 + 18, ctgyan, 2.44, 2.44 );
setEffScaleKey( spep_6 -3 + 20, ctgyan, 2.45, 2.45 );
setEffScaleKey( spep_6 -3 + 22, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_6 -3 + 24, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_6 -3 + 26, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_6 -3 + 28, ctgyan, 2.48, 2.48 );
setEffScaleKey( spep_6 -3 + 30, ctgyan, 2.49, 2.49 );
setEffScaleKey( spep_6 -3 + 32, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 -3 + 34, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 -3 + 36, ctgyan, 2.51, 2.51 );
setEffScaleKey( spep_6 -3 + 38, ctgyan, 2.52, 2.52 );
setEffScaleKey( spep_6 -3 + 40, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_6 -3 + 42, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_6 -3 + 44, ctgyan, 2.54, 2.54 );
setEffScaleKey( spep_6 -3 + 46, ctgyan, 2.55, 2.55 );
setEffScaleKey( spep_6 -3 + 48, ctgyan, 2.56, 2.56 );
setEffScaleKey( spep_6 -3 + 50, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_6 -3 + 52, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_6 -3 + 54, ctgyan, 2.58, 2.58 );
setEffScaleKey( spep_6 -3 + 56, ctgyan, 2.59, 2.59 );
setEffScaleKey( spep_6 -3 + 58, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 57, ctgyan, 3.8, 3.8 );]]
setEffScaleKey( spep_6 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

--SE
playSe( spep_6 + 0, 1023 );--ギャン

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6+52 , 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;
------------------------------------------------------
-- 爆発（引き）
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 110, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 110, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 110, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 110, explosion, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_7-3 + 24,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7-3 + 24, shuchusen2, 32, 20 );
setEffMoveKey( spep_7-3 + 24, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_7-3 + 56, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_7-3 + 24, shuchusen2, 1, 1 );
setEffScaleKey( spep_7-3 + 56, shuchusen2, 1, 1 );

setEffRotateKey( spep_7-3 + 24, shuchusen2, 180 );
setEffRotateKey( spep_7-3 + 56, shuchusen2, 180 );

setEffAlphaKey( spep_7-3 + 24, shuchusen2, 255 );
setEffAlphaKey( spep_7-3 + 38, shuchusen2, 255 );
setEffAlphaKey( spep_7-3 + 40, shuchusen2, 252 );
setEffAlphaKey( spep_7-3 + 42, shuchusen2, 242 );
setEffAlphaKey( spep_7-3 + 44, shuchusen2, 227 );
setEffAlphaKey( spep_7-3 + 46, shuchusen2, 205 );
setEffAlphaKey( spep_7-3 + 48, shuchusen2, 176 );
setEffAlphaKey( spep_7-3 + 50, shuchusen2, 142 );
setEffAlphaKey( spep_7-3 + 52, shuchusen2, 101 );
setEffAlphaKey( spep_7-3 + 54, shuchusen2, 54 );
setEffAlphaKey( spep_7-3 + 56, shuchusen2, 0 );

--SE
playSe( spep_7 + 0, 1068 );--爆発
playSe( spep_7 + 2, 1159 );--爆発

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--敵の動き
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 100 );
end
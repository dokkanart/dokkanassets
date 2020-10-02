--1021080:ゴールデンフリーザ＆ソルベ_万が一の作戦
--sp_effect_b4_00165

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
SP_01=	156136	;--	フリーザ構える
SP_02=	156137	;--	フリーザがソルベに合図をする
SP_03=	156138	;--	ソルベ頷く
SP_04=	156140	;--	ソルベ気弾発射
SP_05=	156142	;--	敵に気弾がヒットする
SP_06=	156143	;--	敵に気弾がヒットする
SP_07=	156144	;--	フリーザーが敵に近づく
SP_08=	156146	;--	フリーザが敵を踏みつける
SP_09=	156147	;--	フリーザが敵を蹴っ飛ばす
SP_10=	156148	;--	フリーザが敵を蹴っ飛ばす
SP_11=	156149	;--	ダメージ絵共通

--エフェクト(てき)
SP_01x=	156136	;--	フリーザ構える	
SP_02x=	156137	;--	フリーザがソルベに合図をする	
SP_03x=	156139	;--	ソルベ頷く	(敵)
SP_04x=	156141	;--	ソルベ気弾発射	(敵)
SP_05x=	156142	;--	敵に気弾がヒットする	
SP_06x=	156143	;--	敵に気弾がヒットする	
SP_07x=	156145	;--	フリーザーが敵に近づく	(敵)
SP_08x=	156146	;--	フリーザが敵を踏みつける	
SP_09x=	156147	;--	フリーザが敵を蹴っ飛ばす	
SP_10x=	156148	;--	フリーザが敵を蹴っ飛ばす	
SP_11x=	156149	;--	ダメージ絵共通	
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
-- フリーザ構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
store = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, store, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, store, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, store, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, store, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, store, 0 );
setEffRotateKey( spep_0 + 86, store, 0 );
setEffAlphaKey( spep_0 + 0, store, 255 );
setEffAlphaKey( spep_0 + 86, store, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, 180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  180,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  180,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07);

--SE
--手握る
SE001 =playSe( spep_0 + 0 , 1233 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 67 );	
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--顔カットイン
SE002 =playSe( spep_0 + 12 , 1018 );

--手握る
SE003 =playSe( spep_0 + 10 , 1012 );
setSeVolumeByWorkId( spep_0 + 10 , SE003 , 89 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
--entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
-- フリーザがソルベに合図をする
------------------------------------------------------
-- ** エフェクト等 ** --
cue = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, cue, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, cue, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, cue, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, cue, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, cue, 0 );
setEffRotateKey( spep_2 + 66, cue, 0 );
setEffAlphaKey( spep_2 + 0, cue, 255 );
setEffAlphaKey( spep_2 + 66, cue, 255 );

--SE
--目ギョロ
SE005 =playSe( spep_2 + 10 , 1179 );
setSeVolumeByWorkId( spep_2 + 10 , SE005 , 89 );
stopSe( spep_2 + 32, SE005, 42);
SE006 =playSe( spep_2 + 14 , 4 );	
setSeVolumeByWorkId( spep_2 + 14 , SE006 , 76 );	


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;
------------------------------------------------------
-- ソルベ頷く
------------------------------------------------------
-- ** エフェクト等 ** --
nod = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, nod, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, nod, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, nod, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, nod, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, nod, 0 );
setEffRotateKey( spep_3 + 66, nod, 0 );
setEffAlphaKey( spep_3 + 0, nod, 255 );
setEffAlphaKey( spep_3 + 66, nod, 255 );

--SE
--ごくり
SE007 =playSe( spep_3 + 18 , 1134 );
setSeVolumeByWorkId( spep_3 + 18 , SE007 , 0 );
setSeVolumeByWorkId( spep_3 + 19 , SE007 , 29);
setSeVolumeByWorkId( spep_3 + 20 , SE007 , 58 );
setStartTimeMs( SE007,  100 );
setPitch( spep_3 + 18, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );
stopSe( spep_3 + 32, SE007, 8);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;
------------------------------------------------------
--ソルベ気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 56, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 56, beam, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE001, 0 );

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
--光線撃つ
SE008 =playSe( spep_4 + 22 , 1240 );
stopSe( spep_4 + 46, SE008, 22);
SE009 =playSe( spep_4 + 22 , 1114 );
setSeVolumeByWorkId( spep_4 + 22 , SE009 , 112 );
stopSe( spep_4 + 38, SE009, 30);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;
------------------------------------------------------
--敵に気弾がヒットする
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 86, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 86, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 86, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 86, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 117 );
changeAnime( spep_5-3 + 14, 1, 105 );

setMoveKey( spep_5 + 0, 1, 20.9, -37.8 , 0 );
setMoveKey( spep_5-3 + 13, 1, 20.9, -37.8 , 0 );

a=-50;
b=-30;

setMoveKey( spep_5-3 + 14, 1, 51.2+a, -51.8+b , 0 );
setMoveKey( spep_5-3 + 16, 1, 58.5+a, -38.2+b , 0 );
setMoveKey( spep_5-3 + 18, 1, 42.8+a, -48.3+b , 0 );
setMoveKey( spep_5-3 + 20, 1, 29.8+a, -32.9+b , 0 );
setMoveKey( spep_5-3 + 22, 1, 47.6+a, -48.8+b , 0 );
setMoveKey( spep_5-3 + 24, 1, 53+a, -39.4+b , 0 );
setMoveKey( spep_5-3 + 26, 1, 41.9+a, -40.7+b , 0 );
setMoveKey( spep_5-3 + 28, 1, 47.7+a, -46+b , 0 );
setMoveKey( spep_5-3 + 30, 1, 47.7+a, -49.5+b , 0 );
setMoveKey( spep_5-3 + 32, 1, 47.7+a, -54.2+b , 0 );
setMoveKey( spep_5-3 + 34, 1, 47.7+a, -59.9+b , 0 );
setMoveKey( spep_5-3 + 36, 1, 47.7+a, -66.7+b , 0 );
setMoveKey( spep_5-3 + 38, 1, 44.4+a, -72.7+b , 0 );
setMoveKey( spep_5-3 + 40, 1, 51+a, -86+b , 0 );
setMoveKey( spep_5-3 + 42, 1, 44+a, -90.1+b , 0 );
setMoveKey( spep_5-3 + 44, 1, 46.3+a, -105+b , 0 );
setMoveKey( spep_5-3 + 46, 1, 46.3+a, -104.1+b , 0 );
setMoveKey( spep_5-3 + 48, 1, 46.3+a, -103.2+b , 0 );
setMoveKey( spep_5-3 + 50, 1, 46.3+a, -102.3+b , 0 );
setMoveKey( spep_5-3 + 52, 1, 46.3+a, -101.3+b , 0 );
setMoveKey( spep_5-3 + 54, 1, 46.3+a, -100.4+b , 0 );
setMoveKey( spep_5-3 + 56, 1, 46.3+a, -99.5+b , 0 );
setMoveKey( spep_5-3 + 58, 1, 46.3+a, -99.2+b , 0 );
setMoveKey( spep_5-3 + 60, 1, 46.3+a, -98.9+b , 0 );
setMoveKey( spep_5-3 + 62, 1, 46.3+a, -98.6+b , 0 );
setMoveKey( spep_5-3 + 64, 1, 46.3+a, -98.3+b , 0 );
setMoveKey( spep_5-3 + 66, 1, 46.3+a, -98+b , 0 );
setMoveKey( spep_5-3 + 68, 1, 46.3+a, -97.6+b , 0 );
setMoveKey( spep_5-3 + 70, 1, 46.3+a, -97.3+b , 0 );
setMoveKey( spep_5-3 + 72, 1, 46.3+a, -97+b , 0 );
setMoveKey( spep_5-3 + 74, 1, 46.3+a, -96.7+b , 0 );
setMoveKey( spep_5-3 + 76, 1, 46.3+a, -96.4+b , 0 );
setMoveKey( spep_5-3 + 78, 1, 46.3+a, -96.1+b , 0 );
setMoveKey( spep_5-3 + 80, 1, 46.3+a, -95.8+b , 0 );
setMoveKey( spep_5-3 + 82, 1, 46.3+a, -95.5+b , 0 );
setMoveKey( spep_5-3 + 84, 1, 46.3+a, -95.2+b , 0 );
setMoveKey( spep_5-1 + 86, 1, 46.3+a, -94.9+b , 0 );

setScaleKey( spep_5 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_5-3 + 13, 1, 2.52, 2.52 );
setScaleKey( spep_5-3 + 14, 1, 2.41, 2.41 );
setScaleKey( spep_5-3 + 16, 1, 2.25, 2.26 );
setScaleKey( spep_5-3 + 18, 1, 2.1, 2.12 );
setScaleKey( spep_5-3 + 20, 1, 2.07, 2.09 );
setScaleKey( spep_5-3 + 22, 1, 2.05, 2.06 );
setScaleKey( spep_5-3 + 24, 1, 2.04, 2.03 );
setScaleKey( spep_5-3 + 26, 1, 2.03, 2.02 );
setScaleKey( spep_5-3 + 28, 1, 2.02, 2.01 );
setScaleKey( spep_5-3 + 30, 1, 2, 1.99 );
setScaleKey( spep_5-3 + 32, 1, 1.99, 1.98 );
setScaleKey( spep_5-3 + 34, 1, 1.97, 1.97 );
setScaleKey( spep_5-3 + 36, 1, 1.96, 1.96 );
setScaleKey( spep_5-3 + 38, 1, 1.95, 1.94 );
setScaleKey( spep_5-3 + 40, 1, 1.93, 1.93 );
setScaleKey( spep_5-3 + 42, 1, 1.92, 1.92 );
setScaleKey( spep_5-3 + 44, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 46, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 48, 1, 1.9, 1.88 );
setScaleKey( spep_5-3 + 50, 1, 1.9, 1.87 );
setScaleKey( spep_5-3 + 52, 1, 1.89, 1.87 );
setScaleKey( spep_5-3 + 54, 1, 1.87, 1.86 );
setScaleKey( spep_5-3 + 56, 1, 1.85, 1.85 );
setScaleKey( spep_5-3 + 58, 1, 1.85, 1.84 );
setScaleKey( spep_5-3 + 60, 1, 1.84, 1.84 );
setScaleKey( spep_5-3 + 62, 1, 1.84, 1.84 );
setScaleKey( spep_5-3 + 64, 1, 1.84, 1.83 );
setScaleKey( spep_5-3 + 66, 1, 1.83, 1.83 );
setScaleKey( spep_5-3 + 68, 1, 1.83, 1.83 );
setScaleKey( spep_5-3 + 70, 1, 1.83, 1.82 );
setScaleKey( spep_5-3 + 72, 1, 1.82, 1.82 );
setScaleKey( spep_5-3 + 74, 1, 1.82, 1.82 );
setScaleKey( spep_5-3 + 76, 1, 1.82, 1.81 );
setScaleKey( spep_5-3 + 78, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 80, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 82, 1, 1.81, 1.8 );
setScaleKey( spep_5-3 + 84, 1, 1.8, 1.8 );
setScaleKey( spep_5-1 + 86, 1, 1.8, 1.8 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-1 + 86, 1, 0 );

--SE
--光線ヒット
SE010 =playSe( spep_5 + 0 , 1008 );
setSeVolumeByWorkId( spep_5 + 0 , SE010 , 62 );	
SE011 =playSe( spep_5 + 0 , 1177 );
setSeVolumeByWorkId( spep_5 + 0 , SE011 , 79 );
stopSe( spep_5 + 28, SE011, 42);
SE012 =playSe( spep_5 + 0 , 1169 );
setSeVolumeByWorkId( spep_5 + 0 , SE012 , 77 );	

--SE
--ドサッ
SE013 =playSe( spep_5 + 36 , 1012 );
SE014 =playSe( spep_5 + 36 , 1044 );
stopSe( spep_5 + 62, SE014, 40);
SE015 =playSe( spep_5 + 40 , 1192 );
setSeVolumeByWorkId( spep_5 + 40 , SE015 , 158 );	

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 86;
------------------------------------------------------
--フリーザーが敵に近づく
------------------------------------------------------
-- ** エフェクト等 ** --
close = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, close, 0, 0, 0 );
setEffMoveKey( spep_6 + 42, close, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, close, 1.0, 1.0 );
setEffScaleKey( spep_6 + 42, close, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, close, 0 );
setEffRotateKey( spep_6 + 42, close, 0 );
setEffAlphaKey( spep_6 + 0, close, 255 );
setEffAlphaKey( spep_6 + 42, close, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 44, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 50.3, -200.2 , 0 );
setMoveKey( spep_6 + 44, 1, 50.3, -200.2 , 0 );

setScaleKey( spep_6 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_6 + 44, 1, 2.19, 2.19 );

setRotateKey( spep_6 + 0, 1, 42 );
setRotateKey( spep_6 + 44, 1, 42 );

--SE
--向き直る
SE016 =playSe( spep_6 + 2 , 1135 );
setSeVolumeByWorkId( spep_6 + 2 , SE016 , 43 );
SE017 =playSe( spep_6 + 2 , 1013 );
setSeVolumeByWorkId( spep_6 + 2 , SE017 , 60 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 42;
------------------------------------------------------
--フリーザが敵を踏みつける
------------------------------------------------------
-- ** エフェクト等 ** --
value = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, value, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, value, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, value, 1.0, 1.0 );
setEffScaleKey( spep_7 + 46, value, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, value, 0 );
setEffRotateKey( spep_7 + 46, value, 0 );
setEffAlphaKey( spep_7 + 0, value, 255 );
setEffAlphaKey( spep_7 + 46, value, 255 );

--SE
--足持ち上げる
SE018 =playSe( spep_7 + 0 , 1072 );
setSeVolumeByWorkId( spep_7 + 0,SE018,7);
setSeVolumeByWorkId( spep_7 + 1,SE018,14);
setSeVolumeByWorkId( spep_7 + 2,SE018,21);
setSeVolumeByWorkId( spep_7 + 3,SE018,28);
setSeVolumeByWorkId( spep_7 + 4,SE018,35);
setSeVolumeByWorkId( spep_7 + 5,SE018,42);
setSeVolumeByWorkId( spep_7 + 6,SE018,49);
setSeVolumeByWorkId( spep_7 + 7,SE018,56);
setSeVolumeByWorkId( spep_7 + 8,SE018,63);
setSeVolumeByWorkId( spep_7 + 9,SE018,70);
setSeVolumeByWorkId( spep_7 + 10,SE018,77);
setSeVolumeByWorkId( spep_7 + 11,SE018,84);
setSeVolumeByWorkId( spep_7 + 12,SE018,91);
setStartTimeMs( SE018,  333 );

--踏みつける
SE019 =playSe( spep_7 + 12 , 1003 );		
SE020 =playSe( spep_7 + 20 , 1135 );		
SE021 =playSe( spep_7 + 20 , 1153 );
stopSe( spep_7 + 38, SE021, 22);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 46;
------------------------------------------------------
--フリーザが敵を蹴っ飛ばす
------------------------------------------------------
--[[
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, kick_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kick_f, 0 );
setEffRotateKey( spep_8 + 56, kick_f, 0 );
setEffAlphaKey( spep_8 + 0, kick_f, 255 );
setEffAlphaKey( spep_8 + 56, kick_f, 255 );
]]
-- ** エフェクト等 ** --
kick_b = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, kick_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kick_b, 0 );
setEffRotateKey( spep_8 + 56, kick_b, 0 );
setEffAlphaKey( spep_8 + 0, kick_b, 255 );
setEffAlphaKey( spep_8 + 56, kick_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-3 + 24, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8-3 + 12, 1, 107 );

setMoveKey( spep_8 + 0, 1, 52.1, -258.8 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 52.2, -261.7 , 0 );
setMoveKey( spep_8-3 + 4, 1, 52.4, -264.5 , 0 );
setMoveKey( spep_8-3 + 6, 1, 52.6, -267.3 , 0 );
setMoveKey( spep_8-3 + 8, 1, 52.7, -270.2 , 0 );
setMoveKey( spep_8-3 + 11, 1, 52.8, -273.1 , 0 );
setMoveKey( spep_8-3 + 12, 1, 4, -151 , 0 );
setMoveKey( spep_8-3 + 14, 1, 11.2, -241.9 , 0 );
setMoveKey( spep_8-3 + 16, 1, -4.1, -347.5 , 0 );
setMoveKey( spep_8-3 + 18, 1, 10.9, -432.5 , 0 );
setMoveKey( spep_8-3 + 20, 1, -14.1, -489.1 , 0 );
setMoveKey( spep_8-3 + 22, 1, 7.2, -480.9 , 0 );
setMoveKey( spep_8-3 + 24, 1, 5.4, -483 , 0 );

setScaleKey( spep_8 + 0, 1, 2.11, 2.11 );
--setScaleKey( spep_8-3 + 2, 1, 2.13, 2.13 );
setScaleKey( spep_8-3 + 4, 1, 2.15, 2.15 );
setScaleKey( spep_8-3 + 6, 1, 2.17, 2.17 );
setScaleKey( spep_8-3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_8-3 + 11, 1, 2.21, 2.21 );
setScaleKey( spep_8-3 + 12, 1, 1.08, 1.08 );
setScaleKey( spep_8-3 + 14, 1, 1.46, 1.46 );
setScaleKey( spep_8-3 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_8-3 + 18, 1, 2.11, 2.11 );
setScaleKey( spep_8-3 + 20, 1, 2.39, 2.39 );
setScaleKey( spep_8-3 + 22, 1, 2.28, 2.28 );
setScaleKey( spep_8-3 + 24, 1, 2.28, 2.28 );

setRotateKey( spep_8 + 0, 1, 42 );
setRotateKey( spep_8-3 + 11, 1, 42 );
setRotateKey( spep_8-3 + 12, 1, 1 );
setRotateKey( spep_8-3 + 24, 1, 1 );

--SE
SE022 =playSe( spep_8 + 8 , 1004 );
setSeVolumeByWorkId( spep_8 + 8 , SE022 , 65 );
SE023 =playSe( spep_8 + 12 , 1110 );	
SE024 =playSe( spep_8 + 12 , 1187 );
setSeVolumeByWorkId( spep_8 + 12 , SE024 , 66 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_9 + 0, 1, 1 );
changeAnime( spep_9 + 0, 1, 107 );
setMoveKey( spep_9 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_9 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_9 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_9 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_9 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_9 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_9 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_9 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_9 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_9 + 0, 1, 105 );
setRotateKey( spep_9 -3 + 4, 1, 240 );
setRotateKey( spep_9 -3 + 6, 1, 405 );
setRotateKey( spep_9 -3 + 8, 1, 600 );
setRotateKey( spep_9 -3 + 10, 1, 825 );
setRotateKey( spep_9 -3 + 12, 1, 1080 );
setRotateKey( spep_9 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffectLife( spep_9 + 0, SP_11,110, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_9 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_9 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, bg, 0 );
setEffRotateKey( spep_9 + 100, bg, 0 );
setEffAlphaKey( spep_9 + 0, bg, 255 );
setEffAlphaKey( spep_9 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_9 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_9 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_9 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_9 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_9 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_9 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_9 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_9 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_9 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_9 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_9 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_9 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_9 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_9 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_9 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_9 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_9 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_9 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_9 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_9 + 14, shuchusenga, 0 );
setEffRotateKey( spep_9 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_9 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_9 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_9 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_9 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_9 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_9 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_9 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_9 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_9 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_9 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_9 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_9 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_9 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_9 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_9 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_9 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_9 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_9 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_9 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_9 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_9 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_9 + 14, ctga, 14, 20 );

setEffMoveKey( spep_9 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_9 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_9 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_9 + 14, ctga, -10.9 );
setEffRotateKey( spep_9 + 15, ctga, -10.9 );
setEffRotateKey( spep_9 + 16, ctga, -14.9 );
setEffRotateKey( spep_9 + 17, ctga, -14.9 );
setEffRotateKey( spep_9 + 18, ctga, -10.9 );
setEffRotateKey( spep_9 + 19, ctga, -10.9 );
setEffRotateKey( spep_9 + 20, ctga, -14.9 );
setEffRotateKey( spep_9 + 21, ctga, -14.9 );
setEffRotateKey( spep_9 + 22, ctga, -10.9 );
setEffRotateKey( spep_9 + 23, ctga, -10.9 );
setEffRotateKey( spep_9 + 24, ctga, -14.9 );
setEffRotateKey( spep_9 + 25, ctga, -14.9 );
setEffRotateKey( spep_9 + 26, ctga, -10.9 );
setEffRotateKey( spep_9 + 27, ctga, -10.9 );
setEffRotateKey( spep_9 + 28, ctga, -14.9 );
setEffRotateKey( spep_9 + 100, ctga, -14.9 );

setEffAlphaKey( spep_9 + 14, ctga, 255 );
setEffAlphaKey( spep_9 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_9 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_9 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_9 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_9 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_9 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_9 + 2, hibiware, 0 );
setEffRotateKey( spep_9 + 100, hibiware, 0 );

setEffAlphaKey( spep_9 + 2, hibiware, 0 );
setEffAlphaKey( spep_9 + 13, hibiware, 0 );
setEffAlphaKey( spep_9 + 14, hibiware, 255 );
setEffAlphaKey( spep_9 + 100, hibiware, 255 );

--SE
--playSe( spep_9 + 0, 1023 );--爆発
playSe( spep_9 + 14, 1054 );--ガッ

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_9 +10 );
endPhase( spep_9 + 98 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- フリーザ構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
store = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, store, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, store, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, store, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, store, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, store, 0 );
setEffRotateKey( spep_0 + 86, store, 0 );
setEffAlphaKey( spep_0 + 0, store, 255 );
setEffAlphaKey( spep_0 + 86, store, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, 180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  180,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  180,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07);

--SE
--手握る
SE001 =playSe( spep_0 + 0 , 1233 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 67 );	
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--顔カットイン
SE002 =playSe( spep_0 + 12 , 1018 );

--手握る
SE003 =playSe( spep_0 + 10 , 1012 );
setSeVolumeByWorkId( spep_0 + 10 , SE003 , 89 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
--entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
-- フリーザがソルベに合図をする
------------------------------------------------------
-- ** エフェクト等 ** --
cue = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, cue, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, cue, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, cue, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, cue, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, cue, 0 );
setEffRotateKey( spep_2 + 66, cue, 0 );
setEffAlphaKey( spep_2 + 0, cue, 255 );
setEffAlphaKey( spep_2 + 66, cue, 255 );

--SE
--目ギョロ
SE005 =playSe( spep_2 + 10 , 1179 );
setSeVolumeByWorkId( spep_2 + 10 , SE005 , 89 );
stopSe( spep_2 + 32, SE005, 42);
SE006 =playSe( spep_2 + 14 , 4 );	
setSeVolumeByWorkId( spep_2 + 14 , SE006 , 76 );	


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;
------------------------------------------------------
-- ソルベ頷く
------------------------------------------------------
-- ** エフェクト等 ** --
nod = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, nod, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, nod, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, nod, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, nod, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, nod, 0 );
setEffRotateKey( spep_3 + 66, nod, 0 );
setEffAlphaKey( spep_3 + 0, nod, 255 );
setEffAlphaKey( spep_3 + 66, nod, 255 );

--SE
--ごくり
SE007 =playSe( spep_3 + 18 , 1134 );
setSeVolumeByWorkId( spep_3 + 18 , SE007 , 0 );
setSeVolumeByWorkId( spep_3 + 19 , SE007 , 29);
setSeVolumeByWorkId( spep_3 + 20 , SE007 , 58 );
setStartTimeMs( SE007,  100 );
setPitch( spep_3 + 18, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );
stopSe( spep_3 + 32, SE007, 8);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;
------------------------------------------------------
--ソルベ気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 56, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 56, beam, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE001, 0 );

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
--光線撃つ
SE008 =playSe( spep_4 + 22 , 1240 );
stopSe( spep_4 + 46, SE008, 22);
SE009 =playSe( spep_4 + 22 , 1114 );
setSeVolumeByWorkId( spep_4 + 22 , SE009 , 112 );
stopSe( spep_4 + 38, SE009, 30);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;
------------------------------------------------------
--敵に気弾がヒットする
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 86, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 86, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 86, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 86, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 117 );
changeAnime( spep_5-3 + 14, 1, 105 );

setMoveKey( spep_5 + 0, 1, 20.9, -37.8 , 0 );
setMoveKey( spep_5-3 + 13, 1, 20.9, -37.8 , 0 );

a=-50;
b=-30;

setMoveKey( spep_5-3 + 14, 1, 51.2+a, -51.8+b , 0 );
setMoveKey( spep_5-3 + 16, 1, 58.5+a, -38.2+b , 0 );
setMoveKey( spep_5-3 + 18, 1, 42.8+a, -48.3+b , 0 );
setMoveKey( spep_5-3 + 20, 1, 29.8+a, -32.9+b , 0 );
setMoveKey( spep_5-3 + 22, 1, 47.6+a, -48.8+b , 0 );
setMoveKey( spep_5-3 + 24, 1, 53+a, -39.4+b , 0 );
setMoveKey( spep_5-3 + 26, 1, 41.9+a, -40.7+b , 0 );
setMoveKey( spep_5-3 + 28, 1, 47.7+a, -46+b , 0 );
setMoveKey( spep_5-3 + 30, 1, 47.7+a, -49.5+b , 0 );
setMoveKey( spep_5-3 + 32, 1, 47.7+a, -54.2+b , 0 );
setMoveKey( spep_5-3 + 34, 1, 47.7+a, -59.9+b , 0 );
setMoveKey( spep_5-3 + 36, 1, 47.7+a, -66.7+b , 0 );
setMoveKey( spep_5-3 + 38, 1, 44.4+a, -72.7+b , 0 );
setMoveKey( spep_5-3 + 40, 1, 51+a, -86+b , 0 );
setMoveKey( spep_5-3 + 42, 1, 44+a, -90.1+b , 0 );
setMoveKey( spep_5-3 + 44, 1, 46.3+a, -105+b , 0 );
setMoveKey( spep_5-3 + 46, 1, 46.3+a, -104.1+b , 0 );
setMoveKey( spep_5-3 + 48, 1, 46.3+a, -103.2+b , 0 );
setMoveKey( spep_5-3 + 50, 1, 46.3+a, -102.3+b , 0 );
setMoveKey( spep_5-3 + 52, 1, 46.3+a, -101.3+b , 0 );
setMoveKey( spep_5-3 + 54, 1, 46.3+a, -100.4+b , 0 );
setMoveKey( spep_5-3 + 56, 1, 46.3+a, -99.5+b , 0 );
setMoveKey( spep_5-3 + 58, 1, 46.3+a, -99.2+b , 0 );
setMoveKey( spep_5-3 + 60, 1, 46.3+a, -98.9+b , 0 );
setMoveKey( spep_5-3 + 62, 1, 46.3+a, -98.6+b , 0 );
setMoveKey( spep_5-3 + 64, 1, 46.3+a, -98.3+b , 0 );
setMoveKey( spep_5-3 + 66, 1, 46.3+a, -98+b , 0 );
setMoveKey( spep_5-3 + 68, 1, 46.3+a, -97.6+b , 0 );
setMoveKey( spep_5-3 + 70, 1, 46.3+a, -97.3+b , 0 );
setMoveKey( spep_5-3 + 72, 1, 46.3+a, -97+b , 0 );
setMoveKey( spep_5-3 + 74, 1, 46.3+a, -96.7+b , 0 );
setMoveKey( spep_5-3 + 76, 1, 46.3+a, -96.4+b , 0 );
setMoveKey( spep_5-3 + 78, 1, 46.3+a, -96.1+b , 0 );
setMoveKey( spep_5-3 + 80, 1, 46.3+a, -95.8+b , 0 );
setMoveKey( spep_5-3 + 82, 1, 46.3+a, -95.5+b , 0 );
setMoveKey( spep_5-3 + 84, 1, 46.3+a, -95.2+b , 0 );
setMoveKey( spep_5-1 + 86, 1, 46.3+a, -94.9+b , 0 );

setScaleKey( spep_5 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_5-3 + 13, 1, 2.52, 2.52 );
setScaleKey( spep_5-3 + 14, 1, 2.41, 2.41 );
setScaleKey( spep_5-3 + 16, 1, 2.25, 2.26 );
setScaleKey( spep_5-3 + 18, 1, 2.1, 2.12 );
setScaleKey( spep_5-3 + 20, 1, 2.07, 2.09 );
setScaleKey( spep_5-3 + 22, 1, 2.05, 2.06 );
setScaleKey( spep_5-3 + 24, 1, 2.04, 2.03 );
setScaleKey( spep_5-3 + 26, 1, 2.03, 2.02 );
setScaleKey( spep_5-3 + 28, 1, 2.02, 2.01 );
setScaleKey( spep_5-3 + 30, 1, 2, 1.99 );
setScaleKey( spep_5-3 + 32, 1, 1.99, 1.98 );
setScaleKey( spep_5-3 + 34, 1, 1.97, 1.97 );
setScaleKey( spep_5-3 + 36, 1, 1.96, 1.96 );
setScaleKey( spep_5-3 + 38, 1, 1.95, 1.94 );
setScaleKey( spep_5-3 + 40, 1, 1.93, 1.93 );
setScaleKey( spep_5-3 + 42, 1, 1.92, 1.92 );
setScaleKey( spep_5-3 + 44, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 46, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 48, 1, 1.9, 1.88 );
setScaleKey( spep_5-3 + 50, 1, 1.9, 1.87 );
setScaleKey( spep_5-3 + 52, 1, 1.89, 1.87 );
setScaleKey( spep_5-3 + 54, 1, 1.87, 1.86 );
setScaleKey( spep_5-3 + 56, 1, 1.85, 1.85 );
setScaleKey( spep_5-3 + 58, 1, 1.85, 1.84 );
setScaleKey( spep_5-3 + 60, 1, 1.84, 1.84 );
setScaleKey( spep_5-3 + 62, 1, 1.84, 1.84 );
setScaleKey( spep_5-3 + 64, 1, 1.84, 1.83 );
setScaleKey( spep_5-3 + 66, 1, 1.83, 1.83 );
setScaleKey( spep_5-3 + 68, 1, 1.83, 1.83 );
setScaleKey( spep_5-3 + 70, 1, 1.83, 1.82 );
setScaleKey( spep_5-3 + 72, 1, 1.82, 1.82 );
setScaleKey( spep_5-3 + 74, 1, 1.82, 1.82 );
setScaleKey( spep_5-3 + 76, 1, 1.82, 1.81 );
setScaleKey( spep_5-3 + 78, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 80, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 82, 1, 1.81, 1.8 );
setScaleKey( spep_5-3 + 84, 1, 1.8, 1.8 );
setScaleKey( spep_5-1 + 86, 1, 1.8, 1.8 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-1 + 86, 1, 0 );

--SE
--光線ヒット
SE010 =playSe( spep_5 + 0 , 1008 );
setSeVolumeByWorkId( spep_5 + 0 , SE010 , 62 );	
SE011 =playSe( spep_5 + 0 , 1177 );
setSeVolumeByWorkId( spep_5 + 0 , SE011 , 79 );
stopSe( spep_5 + 28, SE011, 42);
SE012 =playSe( spep_5 + 0 , 1169 );
setSeVolumeByWorkId( spep_5 + 0 , SE012 , 77 );	

--SE
--ドサッ
SE013 =playSe( spep_5 + 36 , 1012 );
SE014 =playSe( spep_5 + 36 , 1044 );
stopSe( spep_5 + 62, SE014, 40);
SE015 =playSe( spep_5 + 40 , 1192 );
setSeVolumeByWorkId( spep_5 + 40 , SE015 , 158 );	

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 86;
------------------------------------------------------
--フリーザーが敵に近づく
------------------------------------------------------
-- ** エフェクト等 ** --
close = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, close, 0, 0, 0 );
setEffMoveKey( spep_6 + 42, close, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, close, 1.0, 1.0 );
setEffScaleKey( spep_6 + 42, close, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, close, 0 );
setEffRotateKey( spep_6 + 42, close, 0 );
setEffAlphaKey( spep_6 + 0, close, 255 );
setEffAlphaKey( spep_6 + 42, close, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 44, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 50.3, -200.2 , 0 );
setMoveKey( spep_6 + 44, 1, 50.3, -200.2 , 0 );

setScaleKey( spep_6 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_6 + 44, 1, 2.19, 2.19 );

setRotateKey( spep_6 + 0, 1, 42 );
setRotateKey( spep_6 + 44, 1, 42 );

--SE
--向き直る
SE016 =playSe( spep_6 + 2 , 1135 );
setSeVolumeByWorkId( spep_6 + 2 , SE016 , 43 );
SE017 =playSe( spep_6 + 2 , 1013 );
setSeVolumeByWorkId( spep_6 + 2 , SE017 , 60 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 42;
------------------------------------------------------
--フリーザが敵を踏みつける
------------------------------------------------------
-- ** エフェクト等 ** --
value = entryEffect( spep_7 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, value, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, value, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, value, -1.0, 1.0 );
setEffScaleKey( spep_7 + 46, value, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, value, 0 );
setEffRotateKey( spep_7 + 46, value, 0 );
setEffAlphaKey( spep_7 + 0, value, 255 );
setEffAlphaKey( spep_7 + 46, value, 255 );

--SE
--足持ち上げる
SE018 =playSe( spep_7 + 0 , 1072 );
setSeVolumeByWorkId( spep_7 + 0,SE018,7);
setSeVolumeByWorkId( spep_7 + 1,SE018,14);
setSeVolumeByWorkId( spep_7 + 2,SE018,21);
setSeVolumeByWorkId( spep_7 + 3,SE018,28);
setSeVolumeByWorkId( spep_7 + 4,SE018,35);
setSeVolumeByWorkId( spep_7 + 5,SE018,42);
setSeVolumeByWorkId( spep_7 + 6,SE018,49);
setSeVolumeByWorkId( spep_7 + 7,SE018,56);
setSeVolumeByWorkId( spep_7 + 8,SE018,63);
setSeVolumeByWorkId( spep_7 + 9,SE018,70);
setSeVolumeByWorkId( spep_7 + 10,SE018,77);
setSeVolumeByWorkId( spep_7 + 11,SE018,84);
setSeVolumeByWorkId( spep_7 + 12,SE018,91);
setStartTimeMs( SE018,  333 );

--踏みつける
SE019 =playSe( spep_7 + 12 , 1003 );		
SE020 =playSe( spep_7 + 20 , 1135 );		
SE021 =playSe( spep_7 + 20 , 1153 );
stopSe( spep_7 + 38, SE021, 22);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 46;
------------------------------------------------------
--フリーザが敵を蹴っ飛ばす
------------------------------------------------------
--[[
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_8 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, kick_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 56, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kick_f, 0 );
setEffRotateKey( spep_8 + 56, kick_f, 0 );
setEffAlphaKey( spep_8 + 0, kick_f, 255 );
setEffAlphaKey( spep_8 + 56, kick_f, 255 );
]]
-- ** エフェクト等 ** --
kick_b = entryEffect( spep_8 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, kick_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_8 + 56, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kick_b, 0 );
setEffRotateKey( spep_8 + 56, kick_b, 0 );
setEffAlphaKey( spep_8 + 0, kick_b, 255 );
setEffAlphaKey( spep_8 + 56, kick_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-3 + 24, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8-3 + 12, 1, 107 );

setMoveKey( spep_8 + 0, 1, 52.1, -258.8 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 52.2, -261.7 , 0 );
setMoveKey( spep_8-3 + 4, 1, 52.4, -264.5 , 0 );
setMoveKey( spep_8-3 + 6, 1, 52.6, -267.3 , 0 );
setMoveKey( spep_8-3 + 8, 1, 52.7, -270.2 , 0 );
setMoveKey( spep_8-3 + 11, 1, 52.8, -273.1 , 0 );
setMoveKey( spep_8-3 + 12, 1, 4, -151 , 0 );
setMoveKey( spep_8-3 + 14, 1, 11.2, -241.9 , 0 );
setMoveKey( spep_8-3 + 16, 1, -4.1, -347.5 , 0 );
setMoveKey( spep_8-3 + 18, 1, 10.9, -432.5 , 0 );
setMoveKey( spep_8-3 + 20, 1, -14.1, -489.1 , 0 );
setMoveKey( spep_8-3 + 22, 1, 7.2, -480.9 , 0 );
setMoveKey( spep_8-3 + 24, 1, 5.4, -483 , 0 );

setScaleKey( spep_8 + 0, 1, 2.11, 2.11 );
--setScaleKey( spep_8-3 + 2, 1, 2.13, 2.13 );
setScaleKey( spep_8-3 + 4, 1, 2.15, 2.15 );
setScaleKey( spep_8-3 + 6, 1, 2.17, 2.17 );
setScaleKey( spep_8-3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_8-3 + 11, 1, 2.21, 2.21 );
setScaleKey( spep_8-3 + 12, 1, 1.08, 1.08 );
setScaleKey( spep_8-3 + 14, 1, 1.46, 1.46 );
setScaleKey( spep_8-3 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_8-3 + 18, 1, 2.11, 2.11 );
setScaleKey( spep_8-3 + 20, 1, 2.39, 2.39 );
setScaleKey( spep_8-3 + 22, 1, 2.28, 2.28 );
setScaleKey( spep_8-3 + 24, 1, 2.28, 2.28 );

setRotateKey( spep_8 + 0, 1, 42 );
setRotateKey( spep_8-3 + 11, 1, 42 );
setRotateKey( spep_8-3 + 12, 1, 1 );
setRotateKey( spep_8-3 + 24, 1, 1 );

--SE
SE022 =playSe( spep_8 + 8 , 1004 );
setSeVolumeByWorkId( spep_8 + 8 , SE022 , 65 );
SE023 =playSe( spep_8 + 12 , 1110 );	
SE024 =playSe( spep_8 + 12 , 1187 );
setSeVolumeByWorkId( spep_8 + 12 , SE024 , 66 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_9 + 0, 1, 1 );
changeAnime( spep_9 + 0, 1, 107 );
setMoveKey( spep_9 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_9 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_9 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_9 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_9 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_9 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_9 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_9 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_9 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_9 + 0, 1, 105 );
setRotateKey( spep_9 -3 + 4, 1, 240 );
setRotateKey( spep_9 -3 + 6, 1, 405 );
setRotateKey( spep_9 -3 + 8, 1, 600 );
setRotateKey( spep_9 -3 + 10, 1, 825 );
setRotateKey( spep_9 -3 + 12, 1, 1080 );
setRotateKey( spep_9 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffectLife( spep_9 + 0, SP_11x,110, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_9 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_9 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, bg, 0 );
setEffRotateKey( spep_9 + 100, bg, 0 );
setEffAlphaKey( spep_9 + 0, bg, 255 );
setEffAlphaKey( spep_9 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_9 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_9 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_9 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_9 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_9 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_9 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_9 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_9 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_9 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_9 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_9 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_9 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_9 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_9 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_9 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_9 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_9 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_9 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_9 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_9 + 14, shuchusenga, 0 );
setEffRotateKey( spep_9 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_9 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_9 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_9 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_9 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_9 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_9 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_9 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_9 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_9 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_9 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_9 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_9 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_9 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_9 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_9 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_9 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_9 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_9 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_9 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_9 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_9 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_9 + 14, ctga, 14, 20 );

setEffMoveKey( spep_9 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_9 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_9 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_9 + 14, ctga, -10.9 );
setEffRotateKey( spep_9 + 15, ctga, -10.9 );
setEffRotateKey( spep_9 + 16, ctga, -14.9 );
setEffRotateKey( spep_9 + 17, ctga, -14.9 );
setEffRotateKey( spep_9 + 18, ctga, -10.9 );
setEffRotateKey( spep_9 + 19, ctga, -10.9 );
setEffRotateKey( spep_9 + 20, ctga, -14.9 );
setEffRotateKey( spep_9 + 21, ctga, -14.9 );
setEffRotateKey( spep_9 + 22, ctga, -10.9 );
setEffRotateKey( spep_9 + 23, ctga, -10.9 );
setEffRotateKey( spep_9 + 24, ctga, -14.9 );
setEffRotateKey( spep_9 + 25, ctga, -14.9 );
setEffRotateKey( spep_9 + 26, ctga, -10.9 );
setEffRotateKey( spep_9 + 27, ctga, -10.9 );
setEffRotateKey( spep_9 + 28, ctga, -14.9 );
setEffRotateKey( spep_9 + 100, ctga, -14.9 );

setEffAlphaKey( spep_9 + 14, ctga, 255 );
setEffAlphaKey( spep_9 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_9 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_9 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_9 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_9 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_9 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_9 + 2, hibiware, 0 );
setEffRotateKey( spep_9 + 100, hibiware, 0 );

setEffAlphaKey( spep_9 + 2, hibiware, 0 );
setEffAlphaKey( spep_9 + 13, hibiware, 0 );
setEffAlphaKey( spep_9 + 14, hibiware, 255 );
setEffAlphaKey( spep_9 + 100, hibiware, 255 );

--SE
--playSe( spep_9 + 0, 1023 );--爆発
playSe( spep_9 + 14, 1054 );--ガッ

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_9 +10 );
endPhase( spep_9 + 98 );
end
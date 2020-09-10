--1016000　超サイヤ人ブロリー_ブラスターメテオ
--sp_effect_b4_00080

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
SP_01=	152748	;--	ブロリー上昇(反転なし)
SP_02=	152749	;--	溜め〜球体オーラ纏い(反転なし)
SP_03=	152750	;--	発射・手前
SP_04=	152751	;--	発射・奥
SP_05=	152752	;--	爆発
SP_06=	152753	;--	全体攻撃爆発


--敵側
SP_01x=	152748	;--	ブロリー上昇(反転なし)
SP_02x=	152749	;--	溜め〜球体オーラ纏い(反転なし)
SP_03x=	152750	;--	発射・手前
SP_04x=	152751	;--	発射・奥
SP_05x=	152752	;--	爆発
SP_06x=	152753	;--	全体攻撃爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -9000,   0);
setMoveKey(   1,   0,    0, -9000,   0);
setMoveKey(   2,   0,    0, -9000,   0);
setMoveKey(   3,   0,    0, -9000,   0);
setMoveKey(   4,   0,    0, -9000,   0);
setMoveKey(   5,   0,    0, -9000,   0);
setMoveKey(   6,   0,    0, -9000,   0);
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

setMoveKey(   0,   1,    0, -9000,   0);
setMoveKey(   1,   1,    0, -9000,   0);
setMoveKey(   2,   1,    0, -9000,   0);
setMoveKey(   3,   1,    0, -9000,   0);
setMoveKey(   4,   1,    0, -9000,   0);
setMoveKey(   5,   1,    0, -9000,   0);
setMoveKey(   6,   1,    0, -9000,   0);
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
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ブロリー上昇(反転なし)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
rising = entryEffectLife( spep_0 + 0, SP_01, 180, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, rising, 0, 0 , 0 );
setEffMoveKey( spep_0 + 180, rising, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rising, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, rising, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, rising, 255 );
setEffAlphaKey( spep_0 + 180, rising, 255 );
setEffRotateKey( spep_0 + 0, rising, 0 );
setEffRotateKey( spep_0 + 180, rising, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 90, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 90, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0 + 102,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+102, ctgogo, 74, 10 );

setEffMoveKey( spep_0 + 102, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 176, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 102, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 168, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 170, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 172, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 174, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 176, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 102, ctgogo, 0 );
setEffRotateKey( spep_0 + 176, ctgogo, 0 );

setEffAlphaKey( spep_0 + 102, ctgogo, 0 );
setEffAlphaKey( spep_0 + 103, ctgogo, 255 );
setEffAlphaKey( spep_0 + 104, ctgogo, 255 );
setEffAlphaKey( spep_0 + 176, ctgogo, 255 );

--SE
playSe( spep_0, SE_03 );  --気ダメ
playSe( spep_0+20, SE_03 );  --気ダメ
playSe( spep_0+40, SE_03 );  --気ダメ
playSe( spep_0+60, SE_03 );  --気ダメ
playSe( spep_0+80, SE_03 );  --気ダメ
playSe( spep_0 + 110, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 180, 0, 0, 0, 0, 255 );  --薄い黒　背景

--白フェード
entryFade( spep_0 + 172, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+180;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--溜め〜球体オーラ纏い
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 206, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 206, tame, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 204, tame, 255 );
setEffAlphaKey( spep_2 + 205, tame, 255 );
setEffAlphaKey( spep_2 + 206, tame, 0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 206, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 180, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 180, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.18, 1.18 );
setEffScaleKey( spep_2 + 180, shuchusen1, 1.18, 1.18 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 180, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 180, shuchusen1, 255 );

--白フェード
entryFade( spep_2 + 176, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE1=playSe( spep_2 + 0, 1066 );
stopSe(spep_2+126,SE1,0);
SE2=playSe( spep_2 + 128, 17 );
stopSe(spep_2+182,SE2,0);

--[[
playSe( spep_2 + 184, 1049 );
playSe( spep_2 + 192, 1049 );
playSe( spep_2 + 200, 1049 );
]]
--v4.11修正
SE001 = playSe( spep_2 + 184, 1049 );
setSeVolumeByWorkId( spep_2 + 184, SE001, 79 );
stopSe(spep_2 + 202,SE001,10);
SE002 = playSe( spep_2 + 192, 1049 );
setSeVolumeByWorkId( spep_2 + 192, SE002, 79 );
stopSe(spep_2 + 210,SE002,10);
SE003 = playSe( spep_2 + 200, 1049 );
setSeVolumeByWorkId( spep_2 + 200, SE003, 79 );

--次の準備
spep_3 = spep_2+204;

--------------------------------------
--発射
--------------------------------------
-- ** エフェクト等 ** --(前)
hit_f = entryEffectLife( spep_3 + 0, SP_03, 160, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 160, hit_f, 255 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 160, hit_f, 0 );

-- ** エフェクト等 ** --(後)
hit_b = entryEffectLife( spep_3 + 0, SP_04, 160, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, hit_b, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 160, hit_b, 255 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 160, hit_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 160, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_3 + 160, shuchusen2, 1.18, 1.18 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 160, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 160, shuchusen2, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 160, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );

setMoveKey( spep_3 + 0, 1, 64.7, -211.8 , 0 );
setMoveKey( spep_3 + 160, 1, 64.7, -211.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 + 160, 1, 1, 1 );

setRotateKey( spep_3 + 0, 1, 4.5 );
setRotateKey( spep_3 + 160, 1, 4.5 );

setShakeChara(spep_3,1,160,10);


--SE
--playSe( spep_3 + 8, 1016 );
--playSe( spep_3 + 18, 1016 );
--playSe( spep_3 + 28, 1016 );
--playSe( spep_3 + 38, 1016 );
--[[
playSe( spep_3 + 2, 1023 );
playSe( spep_3 + 12, 1023 );
playSe( spep_3 + 22, 1023 );
playSe( spep_3 + 32, 1023 );
playSe( spep_3 + 42, 1023 );
playSe( spep_3 + 62, 1023 );
]]
--v4.11修正

SE004 = playSe( spep_3 + 2, 1023 );
setSeVolume(spep_3 + 2,1023,80);
stopSe(spep_3 + 22,SE004,10);
SE005 = playSe( spep_3 + 12, 1023 );
setSeVolume(spep_3 + 12,1023,80);
stopSe(spep_3 + 32,SE005,10);
SE006 = playSe( spep_3 + 22, 1023 );
setSeVolume(spep_3 + 22,1023,80);
stopSe(spep_3 + 42,SE006,10);
SE007 = playSe( spep_3 + 32, 1023 );
setSeVolume(spep_3 + 32,1023,80);
stopSe(spep_3 + 52,SE007,10);
SE008 = playSe( spep_3 + 42, 1023 );
setSeVolume(spep_3 + 42,1023,80);
stopSe(spep_3 + 72,SE008,10);
SE009 = playSe( spep_3 + 62, 1023 );
setSeVolume(spep_3 + 62,1023,80);


--白フェード
entryFade( spep_3 + 152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 102 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 64.7, -211.8 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1, 1 );
    setScaleKey( SP_dodge + 2, 1, 1, 1 );
    setScaleKey( SP_dodge + 4, 1, 1, 1 );
    setScaleKey( SP_dodge + 6, 1, 1, 1 );
    setScaleKey( SP_dodge + 8, 1, 1, 1 );
    setScaleKey( SP_dodge + 10, 1, 1, 1 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
  
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

--SE
--[[
playSe( spep_3 + 72, 1023 );
playSe( spep_3 + 92, 1023 );
playSe( spep_3 + 98, 1023 );
playSe( spep_3 + 106, 1023 );
playSe( spep_3 + 122, 1024 );
]]
--4.11調整
SE010 = playSe( spep_3 + 72, 1023 );
setSeVolumeByWorkId( spep_3 + 72, SE010, 79 );
stopSe(spep_3 + 102,SE010,10);
SE011 = playSe( spep_3 + 92, 1023 );
setSeVolumeByWorkId( spep_3 + 92, SE011, 79 );
stopSe(spep_3 + 108,SE011,10);
SE012 = playSe( spep_3 + 98, 1023 );
setSeVolumeByWorkId( spep_3 + 98, SE012, 69 );
stopSe(spep_3 + 116,SE012,10);
SE013 = playSe( spep_3 + 106, 1023 );
setSeVolumeByWorkId( spep_3 + 106, SE013, 69 );
stopSe(spep_3 + 132,SE013,10);
SE014 = playSe( spep_3 + 122, 1024 );
setSeVolumeByWorkId( spep_3 + 122, SE014, 80 );


--次の準備
spep_4 = spep_3+160;

--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_4 + 300, explosion, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, explosion, 255 );
setEffAlphaKey( spep_4 + 300, explosion, 255 );
setEffRotateKey( spep_4 + 0, explosion, 0 );
setEffRotateKey( spep_4 + 300, explosion, 0 );

--SE
--[[
playSe( spep_4, 1023 );
playSe( spep_4+22, 1023 );
playSe( spep_4+42, 1023 );
playSe( spep_4+70, 1023 );
playSe( spep_4+86, 1023 );
playSe( spep_4+102, 1023 );
playSe( spep_4+110, 1023 );
playSe( spep_4+122, 1023 );
playSe( spep_4+138, 1024 );
]]
--4.11調整
SE015 = playSe( spep_4, 1023 );
setSeVolumeByWorkId( spep_4, SE015, 80 );
stopSe(spep_4 + 32,SE015,10);
SE016 = playSe( spep_4+22, 1023 );
setSeVolumeByWorkId( spep_4 + 22, SE016, 80 );
stopSe(spep_4 + 52,SE016,10);
SE017 = playSe( spep_4+42, 1023 );
setSeVolumeByWorkId( spep_4 + 42, SE017, 80 );
stopSe(spep_4 + 80,SE017,10);
SE018 = playSe( spep_4+70, 1023 );
setSeVolumeByWorkId( spep_4 + 70, SE018, 80 );
stopSe(spep_4 + 96,SE018,10);
SE019 = playSe( spep_4+86, 1023 );
setSeVolumeByWorkId( spep_4 + 86, SE019, 80 );
stopSe(spep_4 + 112,SE019,10);
SE020 = playSe( spep_4+102, 1023 );
setSeVolumeByWorkId( spep_4 + 102, SE020, 80 );
stopSe(spep_4 + 120,SE020,10);
SE021 = playSe( spep_4+110, 1023 );
setSeVolumeByWorkId( spep_4 + 110, SE021, 80 );
stopSe(spep_4 + 132,SE021,10);
SE022 = playSe( spep_4+122, 1023 );
setSeVolumeByWorkId( spep_4 + 122, SE022, 80 );
stopSe(spep_4 + 148,SE022,10);
SE023 = playSe( spep_4+138, 1024 );
setSeVolumeByWorkId( spep_4 + 138, SE023, 80 );


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 180 );
entryFade( spep_4 + 280, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 290 );

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ブロリー上昇(反転なし)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
rising = entryEffectLife( spep_0 + 0, SP_01x, 180, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, rising, 0, 0 , 0 );
setEffMoveKey( spep_0 + 180, rising, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rising, -1.0, 1.0 );
setEffScaleKey( spep_0 + 180, rising, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, rising, 255 );
setEffAlphaKey( spep_0 + 180, rising, 255 );
setEffRotateKey( spep_0 + 0, rising, 0 );
setEffRotateKey( spep_0 + 180, rising, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 90, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 90, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0 + 102,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+102, ctgogo, 74, 10 );

setEffMoveKey( spep_0 + 102, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 176, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 102, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 168, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 170, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 172, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 174, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 176, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 102, ctgogo, 0 );
setEffRotateKey( spep_0 + 176, ctgogo, 0 );

setEffAlphaKey( spep_0 + 102, ctgogo, 0 );
setEffAlphaKey( spep_0 + 103, ctgogo, 255 );
setEffAlphaKey( spep_0 + 104, ctgogo, 255 );
setEffAlphaKey( spep_0 + 176, ctgogo, 255 );

--SE
playSe( spep_0, SE_03 );  --気ダメ
playSe( spep_0+20, SE_03 );  --気ダメ
playSe( spep_0+40, SE_03 );  --気ダメ
playSe( spep_0+60, SE_03 );  --気ダメ
playSe( spep_0+80, SE_03 );  --気ダメ
playSe( spep_0 + 110, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 180, 0, 0, 0, 0, 255 );  --薄い黒　背景

--白フェード
entryFade( spep_0 + 172, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+180;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--溜め〜球体オーラ纏い
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 210, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 210, tame, -1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 204, tame, 255 );
setEffAlphaKey( spep_2 + 205, tame, 255 );
setEffAlphaKey( spep_2 + 206, tame, 0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 210, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 180, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 180, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.18, 1.18 );
setEffScaleKey( spep_2 + 180, shuchusen1, 1.18, 1.18 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 180, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 180, shuchusen1, 255 );

--白フェード
entryFade( spep_2 + 176, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE1=playSe( spep_2 + 0, 1066 );
stopSe(spep_2+126,SE1,0);
SE2=playSe( spep_2 + 128, 17 );
stopSe(spep_2+182,SE2,0);
--[[
playSe( spep_2 + 184, 1049 );
playSe( spep_2 + 192, 1049 );
playSe( spep_2 + 200, 1049 );
]]
--v4.11修正
SE001 = playSe( spep_2 + 184, 1049 );
setSeVolumeByWorkId( spep_2 + 184, SE001, 79 );
stopSe(spep_2 + 202,SE001,10);
SE002 = playSe( spep_2 + 192, 1049 );
setSeVolumeByWorkId( spep_2 + 192, SE002, 79 );
stopSe(spep_2 + 210,SE002,10);
SE003 = playSe( spep_2 + 200, 1049 );
setSeVolumeByWorkId( spep_2 + 200, SE003, 79 );

--次の準備
spep_3 = spep_2+204;

--------------------------------------
--発射
--------------------------------------
-- ** エフェクト等 ** --(前)
hit_f = entryEffectLife( spep_3 + 0, SP_03x, 160, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 160, hit_f, 255 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 160, hit_f, 0 );

-- ** エフェクト等 ** --(後)
hit_b = entryEffectLife( spep_3 + 0, SP_04x, 160, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, hit_b, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 160, hit_b, 255 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 160, hit_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 160, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_3 + 160, shuchusen2, 1.18, 1.18 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 160, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 160, shuchusen2, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 160, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );

setMoveKey( spep_3 + 0, 1, 64.7, -211.8 , 0 );
setMoveKey( spep_3 + 160, 1, 64.7, -211.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 + 160, 1, 1, 1 );

setRotateKey( spep_3 + 0, 1, 4.5 );
setRotateKey( spep_3 + 160, 1, 4.5 );

setShakeChara(spep_3,1,160,10);


--SE
--playSe( spep_3 + 8, 1016 );
--playSe( spep_3 + 18, 1016 );
--playSe( spep_3 + 28, 1016 );
--playSe( spep_3 + 38, 1016 );
--[[
playSe( spep_3 + 2, 1023 );
playSe( spep_3 + 12, 1023 );
playSe( spep_3 + 22, 1023 );
playSe( spep_3 + 32, 1023 );
playSe( spep_3 + 42, 1023 );
playSe( spep_3 + 62, 1023 );
]]
--v4.11修正

SE004 = playSe( spep_3 + 2, 1023 );
setSeVolume(spep_3 + 2,1023,80);
stopSe(spep_3 + 22,SE004,10);
SE005 = playSe( spep_3 + 12, 1023 );
setSeVolume(spep_3 + 12,1023,80);
stopSe(spep_3 + 32,SE005,10);
SE006 = playSe( spep_3 + 22, 1023 );
setSeVolume(spep_3 + 22,1023,80);
stopSe(spep_3 + 42,SE006,10);
SE007 = playSe( spep_3 + 32, 1023 );
setSeVolume(spep_3 + 32,1023,80);
stopSe(spep_3 + 52,SE007,10);
SE008 = playSe( spep_3 + 42, 1023 );
setSeVolume(spep_3 + 42,1023,80);
stopSe(spep_3 + 72,SE008,10);
SE009 = playSe( spep_3 + 62, 1023 );
setSeVolume(spep_3 + 62,1023,80);


--白フェード
entryFade( spep_3 + 152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 102 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 64.7, -211.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 64.7, -211.8 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1, 1 );
    setScaleKey( SP_dodge + 2, 1, 1, 1 );
    setScaleKey( SP_dodge + 4, 1, 1, 1 );
    setScaleKey( SP_dodge + 6, 1, 1, 1 );
    setScaleKey( SP_dodge + 8, 1, 1, 1 );
    setScaleKey( SP_dodge + 10, 1, 1, 1 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
  
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

--SE
--[[
playSe( spep_3 + 72, 1023 );
playSe( spep_3 + 92, 1023 );
playSe( spep_3 + 98, 1023 );
playSe( spep_3 + 106, 1023 );
playSe( spep_3 + 122, 1024 );
]]
--4.11調整
SE010 = playSe( spep_3 + 72, 1023 );
setSeVolumeByWorkId( spep_3 + 72, SE010, 79 );
stopSe(spep_3 + 102,SE010,10);
SE011 = playSe( spep_3 + 92, 1023 );
setSeVolumeByWorkId( spep_3 + 92, SE011, 79 );
stopSe(spep_3 + 108,SE011,10);
SE012 = playSe( spep_3 + 98, 1023 );
setSeVolumeByWorkId( spep_3 + 98, SE012, 69 );
stopSe(spep_3 + 116,SE012,10);
SE013 = playSe( spep_3 + 106, 1023 );
setSeVolumeByWorkId( spep_3 + 106, SE013, 69 );
stopSe(spep_3 + 132,SE013,10);
SE014 = playSe( spep_3 + 122, 1024 );
setSeVolumeByWorkId( spep_3 + 122, SE014, 80 );

--次の準備
spep_4 = spep_3+160;

--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_4 + 300, explosion, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, explosion, 255 );
setEffAlphaKey( spep_4 + 300, explosion, 255 );
setEffRotateKey( spep_4 + 0, explosion, 0 );
setEffRotateKey( spep_4 + 300, explosion, 0 );

--SE
--[[
playSe( spep_4, 1023 );
playSe( spep_4+22, 1023 );
playSe( spep_4+42, 1023 );
playSe( spep_4+70, 1023 );
playSe( spep_4+86, 1023 );
playSe( spep_4+102, 1023 );
playSe( spep_4+110, 1023 );
playSe( spep_4+122, 1023 );
playSe( spep_4+138, 1024 );
]]
--4.11調整
SE015 = playSe( spep_4, 1023 );
setSeVolumeByWorkId( spep_4, SE015, 80 );
stopSe(spep_4 + 32,SE015,10);
SE016 = playSe( spep_4+22, 1023 );
setSeVolumeByWorkId( spep_4 + 22, SE016, 80 );
stopSe(spep_4 + 52,SE016,10);
SE017 = playSe( spep_4+42, 1023 );
setSeVolumeByWorkId( spep_4 + 42, SE017, 80 );
stopSe(spep_4 + 80,SE017,10);
SE018 = playSe( spep_4+70, 1023 );
setSeVolumeByWorkId( spep_4 + 70, SE018, 80 );
stopSe(spep_4 + 96,SE018,10);
SE019 = playSe( spep_4+86, 1023 );
setSeVolumeByWorkId( spep_4 + 86, SE019, 80 );
stopSe(spep_4 + 112,SE019,10);
SE020 = playSe( spep_4+102, 1023 );
setSeVolumeByWorkId( spep_4 + 102, SE020, 80 );
stopSe(spep_4 + 120,SE020,10);
SE021 = playSe( spep_4+110, 1023 );
setSeVolumeByWorkId( spep_4 + 110, SE021, 80 );
stopSe(spep_4 + 132,SE021,10);
SE022 = playSe( spep_4+122, 1023 );
setSeVolumeByWorkId( spep_4 + 122, SE022, 80 );
stopSe(spep_4 + 148,SE022,10);
SE023 = playSe( spep_4+138, 1024 );
setSeVolumeByWorkId( spep_4 + 138, SE023, 80 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 180 );
entryFade( spep_4 + 280, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 290 );

end

end
------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge-12, 1042);

	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		if (_IS_PLAYER_SIDE_ == 1) then

			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

		else

			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

		end

	setEffAlphaKey( SP_dodge, kaihi, 255);

	pauseAll( SP_dodge, 67);

	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	endPhase(SP_dodge+10);
	do return end
	else end

--敵表示
setDisp( spep_z, 1, 1);
setMoveKey(  spep_z,    1,  120,    0,  128);
setScaleKey( spep_z,    1,  1.0, 1.0);
setMoveKey(  spep_z+1,    1,    0,   0,   128);
setScaleKey( spep_z+1,    1,  0.1, 0.1);

--手前ダメージ
changeAnime( spep_z+1, 1, 107);
setAnimeLoop( spep_z+1, 1, 1);

 -- 全体攻撃用背景
explosion = entryEffect( spep_z+1, SP_06,  0x80,  -1,  0,  0,  0);
setEffScaleKey( spep_z+1, explosion, 1.1, 1.1);
playSe( spep_z+1, SE_10 );

setMoveKey(  spep_z+8,    1,    0,    -250,   128);
setMoveKey(  spep_z+15,   1,  -60,    0,  -100);
setShake(spep_z+10,6,15);
setShake(spep_z+17,15,9);

setRotateKey( spep_z,  1,  30 );
setRotateKey( spep_z+2,  1,  80 );
setRotateKey( spep_z+4,  1, 120 );
setRotateKey( spep_z+6,  1, 160 );
setRotateKey( spep_z+8,  1, 200 );
setRotateKey( spep_z+10,  1, 260 );
setRotateKey( spep_z+12,  1, 320 );
setRotateKey( spep_z+14,  1,   0 );

setShakeChara( spep_z+14, 1, 5,  10);
setShakeChara( spep_z+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_z+14, 10005, 100, 0, -1, 0, -100, 230); -- ガッ
setEffShake( spep_z+15, ct, 30, 10);
setEffRotateKey( spep_z+15, ct, -40);
setEffScaleKey( spep_z+15, ct, 4.0, 4.0);
setEffScaleKey( spep_z+16, ct, 2.0, 2.0);
setEffScaleKey( spep_z+17, ct, 2.6, 2.6);
setEffScaleKey( spep_z+18, ct, 4.0, 4.0);
setEffScaleKey( spep_z+19, ct, 2.6, 2.6);
setEffScaleKey( spep_z+20, ct, 3.8, 3.8);
setEffScaleKey( spep_z+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_z+15, ct, 255);
setEffAlphaKey( spep_z+105, ct, 255);
setEffAlphaKey( spep_z+115, ct, 0);

playSe( spep_z+20, SE_11);

shuchusen6 = entryEffectLife( spep_z, 1657, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffect( spep_z+20, 1600,  0x00,  -1,  0,30, -70);   -- ひび割れ

entryFadeBg( spep_z, 0, 90, 0, 10, 10, 10, 190);          -- ベース暗め　背景

setDamage( spep_z+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(spep_z+33);

entryFade( spep_z+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_z+80);

end
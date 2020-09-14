--4020630:孫悟空_超元気玉
--sp_effect_a2_00143

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
SP_01=	155984	;--	ポーズをとる
SP_02=	155985	;--	ポーズのアップ
SP_03=	155986	;--	ポーズの引き
SP_04=	155987	;--	サタンの呼びかけセリフカットイン
SP_05=	155988	;--	空中からの町の俯瞰、元気玉が上昇
SP_06=	155989	;--	地球の各地から元気玉が集まる
SP_07=	155990	;--	地球、引きで元気玉飛び出る
SP_08=	155991	;--	元気玉を投げる
SP_09=	155992	;--	元気玉、敵に当たる_敵より手前
SP_10=	155993	;--	元気玉、敵に当たる_敵より奥
SP_11=	155994	;--	地球、遠景で爆破シーン

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
-- ポーズをとる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pose = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pose, 0, 0, 0 );
setEffMoveKey( spep_0 + 60, pose, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pose, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, pose, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 60, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 60, pose, 255 );

--SE
--環境音
SE001 =playSe( spep_0 + 0 , 1269 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 13 );

--手をあげる
SE002 =playSe( spep_0 + 8 , 1003 );
setSeVolumeByWorkId( spep_0 + 8 , SE002 , 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+52 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+60;
------------------------------------------------------
-- ポーズのアップ
------------------------------------------------------
-- ** エフェクト等 ** --
pose_up = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, pose_up, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, pose_up, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, pose_up, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, pose_up, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pose_up, 0 );
setEffRotateKey( spep_1 + 140, pose_up, 0 );
setEffAlphaKey( spep_1 + 0, pose_up, 255 );
setEffAlphaKey( spep_1 + 140, pose_up, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+20  , 1504, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+20  , 1505, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--キラキラ
SE003 =playSe( spep_1 + 0 , 1115 );
setSeVolumeByWorkId( spep_1 + 0 , SE003 , 31 );
setPitch( spep_1 + 0, SE003, 400 );
setTimeStretch( SE003, 1.27, 10, 1 );

--セリフカットイン
SE004 =playSe( spep_1 + 32 , 1018 );
setSeVolumeByWorkId( spep_1 + 32 , SE004 , 69 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+132 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+140;
------------------------------------------------------
-- ポーズの引き
------------------------------------------------------
-- ** エフェクト等 ** --
pose_length = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pose_length, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, pose_length, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pose_length, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, pose_length, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pose_length, 0 );
setEffRotateKey( spep_2 + 96, pose_length, 0 );
setEffAlphaKey( spep_2 + 0, pose_length, 255 );
setEffAlphaKey( spep_2 + 96, pose_length, 255 );

--SE
--元気玉溜める
SE005 =playSe( spep_2 + 0 , 1184 );
setSeVolumeByWorkId( spep_2 + 0 , SE005 , 23 );

SE006 =playSe( spep_2 + 0 , 1194 );
setSeVolumeByWorkId( spep_2 + 0 , SE006 , 48 );
stopSe( spep_2 + 86, SE006, 48);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+96;
------------------------------------------------------
-- サタンの呼びかけセリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
satan = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, satan, 0, 0, 0 );
setEffMoveKey( spep_3 + 124, satan, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, satan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 124, satan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, satan, 0 );
setEffRotateKey( spep_3 + 124, satan, 0 );
setEffAlphaKey( spep_3 + 0, satan, 255 );
setEffAlphaKey( spep_3 + 124, satan, 255 );
setEffAlphaKey( spep_3 + 125, satan, 0 );
setEffAlphaKey( spep_3 + 126, satan,0 );

--SE
--キラキラ
stopSe( spep_3 + 28, SE003, 74);

--サタンカットイン
SE007 =playSe( spep_3 + 0 , 1018 );

SE008 =playSe( spep_3 + 0 , 1264 );
setSeVolumeByWorkId( spep_3 + 0 , SE008 , 50 );
stopSe( spep_3 + 60, SE008, 62);

SE009 =playSe( spep_3 + 0 , 1024 );
setSeVolumeByWorkId( spep_3 + 0 , SE009 , 68 );

SE010 =playSe( spep_3 + 0 , 1026 );
setSeVolumeByWorkId( spep_3 + 0 , SE010 , 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 124, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3+124;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );]]

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 空中からの町の俯瞰、元気玉が上昇
------------------------------------------------------
-- ** エフェクト等 ** --
elevation = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, elevation, 0, 0, 0 );
setEffMoveKey( spep_5 + 66, elevation, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, elevation, 1.0, 1.0 );
setEffScaleKey( spep_5 + 66, elevation, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, elevation, 0 );
setEffRotateKey( spep_5 + 66, elevation, 0 );
setEffAlphaKey( spep_5 + 0, elevation, 255 );
setEffAlphaKey( spep_5 + 66, elevation, 255 );
setEffAlphaKey( spep_5 + 67, elevation, 0 );
setEffAlphaKey( spep_5 + 68, elevation, 0 );


--SE
--元気集まる
SE013 =playSe( spep_5 + 0 , 1269 );
setSeVolumeByWorkId( spep_5 + 0 , SE013 , 11 );

SE014 =playSe( spep_5 + 0 , 1263 );
setSeVolumeByWorkId( spep_5 + 0 , SE014 , 64 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 66, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+66;
------------------------------------------------------
-- 地球の各地から元気玉が集まる
------------------------------------------------------
-- ** エフェクト等 ** --
gather = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gather, 0, 0, 0 );
setEffMoveKey( spep_6 + 54, gather, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, gather, 1.0, 1.0 );
setEffScaleKey( spep_6 + 54, gather, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gather, 0 );
setEffRotateKey( spep_6 + 54, gather, 0 );
setEffAlphaKey( spep_6 + 0, gather, 255 );
setEffAlphaKey( spep_6 + 54, gather, 255 );
setEffAlphaKey( spep_6 + 55, gather, 0 );
setEffAlphaKey( spep_6 + 56, gather, 0 );

--SE
--地球俯瞰で光集まる
SE012 =playSe( spep_6 + 0 , 1185 );
setSeVolumeByWorkId( spep_6 + 0 , SE012 , 0 );
setSeVolumeByWorkId( spep_6 + 1 , SE012 , 5 );
setSeVolumeByWorkId( spep_6 + 2 , SE012 , 10 );
setSeVolumeByWorkId( spep_6 + 3 , SE012 , 15 );
setSeVolumeByWorkId( spep_6 + 4 , SE012 , 20 );
setSeVolumeByWorkId( spep_6 + 5 , SE012 , 25 );
setSeVolumeByWorkId( spep_6 + 6 , SE012 , 30 );
setSeVolumeByWorkId( spep_6 + 7 , SE012 , 35 );
setSeVolumeByWorkId( spep_6 + 8 , SE012 , 40 );
setSeVolumeByWorkId( spep_6 + 9 , SE012 , 45 );
setSeVolumeByWorkId( spep_6 + 10 , SE012 , 50 );
setSeVolumeByWorkId( spep_6 + 11 , SE012 , 55 );
setSeVolumeByWorkId( spep_6 + 12 , SE012 , 61 );
setStartTimeMs( SE012,  1417 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+54;
------------------------------------------------------
-- 地球、引きで元気玉飛び出る
------------------------------------------------------
-- ** エフェクト等 ** --
pop = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, pop, 0, 0, 0 );
setEffMoveKey( spep_7 + 76, pop, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, pop, 1.0, 1.0 );
setEffScaleKey( spep_7 + 76, pop, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, pop, 0 );
setEffRotateKey( spep_7 + 76, pop, 0 );
setEffAlphaKey( spep_7 + 0, pop, 255 );
setEffAlphaKey( spep_7 + 76, pop, 255 );
setEffAlphaKey( spep_7 + 77, pop, 0 );
setEffAlphaKey( spep_7 + 78, pop, 0 );

--SE
--元気弾ける
SE015 =playSe( spep_7 + 6 , 44 );
setSeVolumeByWorkId( spep_7 + 6 , SE015 , 82 );

SE016 =playSe( spep_7 + 6 , 1117 );

SE017 =playSe( spep_7 + 6 , 1124 );
setSeVolumeByWorkId( spep_7 + 6 , SE017 , 45 );

SE018 =playSe( spep_7 + 10 , 1027 );
setSeVolumeByWorkId( spep_7 + 10 , SE018 , 64 );

SE019 =playSe( spep_7 + 20 , 1119 );
stopSe( spep_7 + 58, SE019, 36);

SE020 =playSe( spep_7 + 24 , 1027 );
setSeVolumeByWorkId( spep_7 + 24 , SE020 , 61 );

SE021 =playSe( spep_7 + 32 , 1027 );
setSeVolumeByWorkId( spep_7 + 32 , SE021 , 62 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 76, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_7 + 76, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_8=spep_7+76;

------------------------------------------------------
-- 元気玉を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_8 + 82, throw, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_8 + 82, throw, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, throw, 0 );
setEffRotateKey( spep_8 + 82, throw, 0 );
setEffAlphaKey( spep_8 + 0, throw, 255 );
setEffAlphaKey( spep_8 + 82, throw, 255 );
setEffAlphaKey( spep_8 + 83, throw, 0 );
setEffAlphaKey( spep_8 + 84, throw, 0 );

--SE
--元気たまる
SE022 =playSe( spep_8 + 0 , 1184 );

SE023 =playSe( spep_8 + 2 , 1036 );
setSeVolumeByWorkId( spep_8 + 2 , SE023 , 63 );

SE024 =playSe( spep_8 + 2 , 1194 );
setSeVolumeByWorkId( spep_8 + 2 , SE024 , 122 );


-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_8 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );
    stopSe( SP_dodge - 12, SE024, 0 );



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

--元気弾ける
stopSe( spep_8 + 80 , SE017, 0);

--元気たまる
stopSe( spep_8 + 66, SE022, 18);
stopSe( spep_8 + 74, SE024, 14);

SE025 =playSe( spep_8 + 24 , 1036 );
setSeVolumeByWorkId( spep_8 + 24 , SE025 , 63 );

SE026 =playSe( spep_8 + 48 , 1036 );
setSeVolumeByWorkId( spep_8 + 48 , SE026 , 63 );

--元気玉投げる
SE027 =playSe( spep_8 + 60 , 1027 );

SE028 =playSe( spep_8 + 60 , 1116 );

SE029 =playSe( spep_8 + 60 , 1021 );

SE030 =playSe( spep_8 + 64 , 1278 );
setSeVolumeByWorkId( spep_8 + 64 , SE030 , 69 );

SE031 =playSe( spep_8 + 70 , 1215 );
setSeVolumeByWorkId( spep_8 + 70, SE031 , 200 );

--白フェード
entryFade( spep_8 + 78, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_9=spep_8+82;
------------------------------------------------------
-- 元気玉、敵に当たる
------------------------------------------------------
a1 = 18;
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_9 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 46 +a1, hit_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 46 +a1, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit_f, 0 );
setEffRotateKey( spep_9 + 46 +a1, hit_f, 0 );
setEffAlphaKey( spep_9 + 0, hit_f, 255 );
setEffAlphaKey( spep_9 + 46 +a1, hit_f, 255 );
--setEffAlphaKey( spep_9 + 47 +2, hit_f, 0 );
--setEffAlphaKey( spep_9 + 48 +2, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_9 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 46 +a1, hit_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 46 +a1, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit_b, 0 );
setEffRotateKey( spep_9 + 46 +a1, hit_b, 0 );
setEffAlphaKey( spep_9 + 0, hit_b, 255 );
setEffAlphaKey( spep_9 + 46 +a1, hit_b, 255 );
--setEffAlphaKey( spep_9 + 47 +2, hit_b, 0 );
--setEffAlphaKey( spep_9 + 48 +2, hit_b, 0 );

--敵の動き
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 46 +a1, 1, 0 );

changeAnime( spep_9 + 0, 1, 118 );

setMoveKey( spep_9 + 0, 1, 200, -320 , 0 );
setMoveKey( spep_9 + 46 +a1, 1, 200, -320 , 0 );

a=0.75;
b=0.6;
setScaleKey( spep_9 + 0, 1, 0.15+a, 0.15+a );
--setScaleKey( spep_9 + 0, 1, 0.15+a, 0.15+a );
--setScaleKey( spep_9 + 2 -1, 1, 0.14+a, 0.14+a );
setScaleKey( spep_9 + 4 -3, 1, 0.14+a, 0.14+a );
setScaleKey( spep_9 + 6 -3, 1, 0.135+a, 0.135+a );
setScaleKey( spep_9 + 7 -3, 1, 0.131+a, 0.131+a );
setScaleKey( spep_9 + 8 -3, 1, 0.128+a, 0.128+a );
--setScaleKey( spep_9 + 32, 1, 0.12+a, 0.12+a );
setScaleKey( spep_9 + 34 -3, 1, 0.126+b, 0.126+b );
setScaleKey( spep_9 + 40 -3, 1, 0.12+b, 0.12+b );
setScaleKey( spep_9 + 46 +a1, 1, 0.12+b, 0.12+b );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 46 +a1, 1, 0 );

--SE
--元気玉投げる
stopSe( spep_9 + 10, SE028, 32);

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 50 +4, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+46 +a1;
------------------------------------------------------
-- ギャン
------------------------------------------------------


-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_10 + 0, 190000, 58, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_10 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_10 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_10 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_10 + 0, gyan, 255 );
setEffAlphaKey( spep_10 + 58, gyan, 255 );
setEffRotateKey( spep_10 + 0, gyan, 0 );
setEffRotateKey( spep_10 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_10 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_10 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_10 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_10 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_10 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_10 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_10 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_10 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_10 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_10 + 0, ctgyan, 0 );
setEffRotateKey( spep_10 + 58, ctgyan, 0 );

setEffAlphaKey( spep_10 + 0, ctgyan, 255 );
setEffAlphaKey( spep_10 + 58, ctgyan, 255 );

--SE
--元気玉投げる
stopSe( spep_10 + 0, SE030, 10);
stopSe( spep_10 + 8 , SE031, 5);

--ギャン
SE032 =playSe( spep_10 + 0 , 1023 );
setSeVolumeByWorkId( spep_10 + 0 , SE032 , 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ホワイトフェード ** --
entryFade( spep_10 + 18, 40, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_11 = spep_10 + 60;
------------------------------------------------------
-- 地球、遠景で爆破シーン
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_11 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_11 +140, explosion, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_11 +140, explosion, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, explosion, 0 );
setEffRotateKey( spep_11 +140, explosion, 0 );
setEffAlphaKey( spep_11 + 0, explosion, 255 );
setEffAlphaKey( spep_11 +140, explosion, 255 );

--SE
--爆発
SE033 =playSe( spep_11 + 0 , 1067 );

SE034 =playSe( spep_11 + 0 , 1159 );
setSeVolumeByWorkId( spep_11 + 0 , SE034 , 85 );

SE035 =playSe( spep_11 + 6 , 1188 );
setSeVolumeByWorkId( spep_11 + 6 , SE035 , 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_11 +30 );
endPhase( spep_11 + 130 );
else end
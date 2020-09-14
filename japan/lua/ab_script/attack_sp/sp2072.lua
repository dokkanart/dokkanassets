--4020630:孫悟空_元気玉
--sp_effect_a2_00144

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
SP_01=	156002	;--	ポーズとるまで
SP_02=	156003	;--	ポーズのアップ
SP_03=	156004	;--	元気玉を投げる
SP_04=	156005	;--	元気玉、敵に当たる_敵より手前
SP_05=	156006	;--	元気玉、敵に当たる_敵より奥
SP_06=	156007	;--	爆破シーン
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
-- ポーズとるまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pause = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pause, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, pause, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pause, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, pause, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pause, 0 );
setEffRotateKey( spep_0 + 100, pause, 0 );
setEffAlphaKey( spep_0 + 0, pause, 255 );
setEffAlphaKey( spep_0 + 100, pause, 255 );

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 13 );

--飛び上がる
SE002 = playSe( spep_0 + 30, 1207 );
setSeVolumeByWorkId( spep_0 + 30, SE002, 50 );
stopSe( spep_0 + 40, SE002, 14 );
SE003 = playSe( spep_0 + 30, 44 );
setTimeStretch( SE003, 0.67, 10, 1 );

--手をあげる
SE004 = playSe( spep_0 + 48, 1003 );
setSeVolumeByWorkId( spep_0 + 48, SE004, 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 白フェード ** --
entryFade( spep_0 + 96, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;
------------------------------------------------------
-- ポーズのアップ
------------------------------------------------------
-- ** エフェクト等 ** --
pause_up = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, pause_up, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, pause_up, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, pause_up, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, pause_up, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pause_up, 0 );
setEffRotateKey( spep_1 + 140, pause_up, 0 );
setEffAlphaKey( spep_1 + 0, pause_up, 255 );
setEffAlphaKey( spep_1 + 140, pause_up, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--キラキラ音
SE005 = playSe( spep_1 + 0, 1115 );
setSeVolumeByWorkId( spep_1 + 0, SE005, 32 );
setPitch( spep_1 + 0, SE005, 400 );
setTimeStretch( SE005, 1.27, 40, 10 );

--顔カットイン
SE006 = playSe( spep_1 + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 白フェード ** --
entryFade( spep_1 + 132, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 140;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );]]

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

--SE
--環境音
stopSe( spep_2 + 10, SE001, 0 );

--キラキラ音
stopSe( spep_2 + 10, SE005, 0 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 元気玉を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 86 -2, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86 -2, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 86 -2, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 86 -2, beam, 255 );
setEffAlphaKey( spep_3 + 87 -2, beam, 0 );
setEffAlphaKey( spep_3 + 88 -2, beam, 0);

--SE
--元気玉溜める
SE008 = playSe( spep_3 + 0, 1184 );
setSeVolumeByWorkId( spep_3 + 0, SE008, 23 );
stopSe( spep_3 + 62, SE008, 18 );
SE009 = playSe( spep_3 + 2, 1036 );
setSeVolumeByWorkId( spep_3 + 2, SE009, 16 );
SE010 = playSe( spep_3 + 2, 1194 );
setSeVolumeByWorkId( spep_3 + 2, SE010, 48 );
stopSe( spep_3 + 70, SE010, 16 );
SE011 = playSe( spep_3 + 24, 1036 );
setSeVolumeByWorkId( spep_3 + 24, SE011, 16 );
SE012 = playSe( spep_3 + 48, 1036 );
setSeVolumeByWorkId( spep_3 + 48, SE012, 16 );

--元気玉投げる
SE013 = playSe( spep_3 + 60, 1027 );
SE014 = playSe( spep_3 + 60, 1116 );
SE015 = playSe( spep_3 + 60, 1021 );
SE016 = playSe( spep_3 + 64, 1278 );
setSeVolumeByWorkId( spep_3 + 64, SE016, 69 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4 = spep_3 + 86 -2;
------------------------------------------------------
-- 元気玉、敵に当たる_敵より手前
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 54, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 54, hit_f, 255 );
setEffAlphaKey( spep_4 + 55, hit_f, 0 );
setEffAlphaKey( spep_4 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 54, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 54, hit_b, 255 );
setEffAlphaKey( spep_4 + 55, hit_b, 0 );
setEffAlphaKey( spep_4 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 54, 1, 0 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, 184, -352.1 , 0 );
setMoveKey( spep_4 + 2, 1, 184, -352 , 0 );
setMoveKey( spep_4 + 30, 1, 184, -352 , 0 );

setScaleKey( spep_4 + 0, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 30, 1, 0.95, 0.95 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 30, 1, 0 );

--SE
--元気玉飛んでいく
SE017 = playSe( spep_4 + 0, 1215 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 18, SE014, 6 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge  + 9, 1, 184, -352 , 0 );
    
    setScaleKey( SP_dodge + 9, 1, 0.95, 0.95 );
    
    setRotateKey( SP_dodge + 9, 1, 0 );
    
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
--敵のうごき
setMoveKey( spep_4 + 54, 1, 184, -352 , 0 );

setScaleKey( spep_4 + 54, 1, 0.95, 0.95 );

setRotateKey( spep_4 + 54, 1, 0 );

--SE
--元気玉投げる
stopSe( spep_4 + 12, SE014, 32 );

--次の準備
spep_5 = spep_4 + 54 -2;
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5 + 0, 190000, 58, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_5 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_5 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_5 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_5 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_5 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_5 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

--SE
--元気玉投げる
stopSe( spep_5 + 4, SE016, 10 );

--元気玉飛んでいく
stopSe( spep_5 + 16, SE017, 0 );

--ギャン
SE018 = playSe( spep_5 + 0, 1023 );
setSeVolumeByWorkId( spep_5 + 0, SE018, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 18, 40, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;
------------------------------------------------------
-- 爆破シーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 180, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 180, finish, 255 );

--SE
--爆発
SE019 = playSe( spep_6 + 0, 1159 );
SE020 = playSe( spep_6 + 6, 1188 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 170 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ポーズとるまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pause = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pause, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, pause, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pause, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, pause, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pause, 0 );
setEffRotateKey( spep_0 + 100, pause, 0 );
setEffAlphaKey( spep_0 + 0, pause, 255 );
setEffAlphaKey( spep_0 + 100, pause, 255 );

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 13 );

--飛び上がる
SE002 = playSe( spep_0 + 30, 1207 );
setSeVolumeByWorkId( spep_0 + 30, SE002, 50 );
stopSe( spep_0 + 40, SE002, 14 );
SE003 = playSe( spep_0 + 30, 44 );
setTimeStretch( SE003, 0.67, 10, 1 );

--手をあげる
SE004 = playSe( spep_0 + 48, 1003 );
setSeVolumeByWorkId( spep_0 + 48, SE004, 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 白フェード ** --
entryFade( spep_0 + 96, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;
------------------------------------------------------
-- ポーズのアップ
------------------------------------------------------
-- ** エフェクト等 ** --
pause_up = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, pause_up, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, pause_up, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, pause_up, -1.0, 1.0 );
setEffScaleKey( spep_1 + 140, pause_up, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pause_up, 0 );
setEffRotateKey( spep_1 + 140, pause_up, 0 );
setEffAlphaKey( spep_1 + 0, pause_up, 255 );
setEffAlphaKey( spep_1 + 140, pause_up, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--キラキラ音
SE005 = playSe( spep_1 + 0, 1115 );
setSeVolumeByWorkId( spep_1 + 0, SE005, 32 );
setPitch( spep_1 + 0, SE005, 400 );
setTimeStretch( SE005, 1.27, 40, 10 );

--顔カットイン
SE006 = playSe( spep_1 + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 白フェード ** --
entryFade( spep_1 + 132, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 140;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );]]

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

--SE
--環境音
stopSe( spep_2 + 10, SE001, 0 );

--キラキラ音
stopSe( spep_2 + 10, SE005, 0 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 元気玉を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 86 -2, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86 -2, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 86 -2, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 86 -2, beam, 255 );
setEffAlphaKey( spep_3 + 87 -2, beam, 0 );
setEffAlphaKey( spep_3 + 88 -2, beam, 0);

--SE
--元気玉溜める
SE008 = playSe( spep_3 + 0, 1184 );
setSeVolumeByWorkId( spep_3 + 0, SE008, 23 );
stopSe( spep_3 + 62, SE008, 18 );
SE009 = playSe( spep_3 + 2, 1036 );
setSeVolumeByWorkId( spep_3 + 2, SE009, 16 );
SE010 = playSe( spep_3 + 2, 1194 );
setSeVolumeByWorkId( spep_3 + 2, SE010, 48 );
stopSe( spep_3 + 70, SE010, 16 );
SE011 = playSe( spep_3 + 24, 1036 );
setSeVolumeByWorkId( spep_3 + 24, SE011, 16 );
SE012 = playSe( spep_3 + 48, 1036 );
setSeVolumeByWorkId( spep_3 + 48, SE012, 16 );

--元気玉投げる
SE013 = playSe( spep_3 + 60, 1027 );
SE014 = playSe( spep_3 + 60, 1116 );
SE015 = playSe( spep_3 + 60, 1021 );
SE016 = playSe( spep_3 + 64, 1278 );
setSeVolumeByWorkId( spep_3 + 64, SE016, 69 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4 = spep_3 + 86 -2;
------------------------------------------------------
-- 元気玉、敵に当たる_敵より手前
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 54, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 54, hit_f, 255 );
setEffAlphaKey( spep_4 + 55, hit_f, 0 );
setEffAlphaKey( spep_4 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 54, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 54, hit_b, 255 );
setEffAlphaKey( spep_4 + 55, hit_b, 0 );
setEffAlphaKey( spep_4 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 54, 1, 0 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, 184, -352.1 , 0 );
setMoveKey( spep_4 + 2, 1, 184, -352 , 0 );
setMoveKey( spep_4 + 30, 1, 184, -352 , 0 );

setScaleKey( spep_4 + 0, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 30, 1, 0.95, 0.95 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 30, 1, 0 );

--SE
--元気玉飛んでいく
SE017 = playSe( spep_4 + 0, 1215 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 18, SE014, 6 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge  + 9, 1, 184, -352 , 0 );
    
    setScaleKey( SP_dodge + 9, 1, 0.95, 0.95 );
    
    setRotateKey( SP_dodge + 9, 1, 0 );
    
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
--敵のうごき
setMoveKey( spep_4 + 54, 1, 184, -352 , 0 );

setScaleKey( spep_4 + 54, 1, 0.95, 0.95 );

setRotateKey( spep_4 + 54, 1, 0 );

--SE
--元気玉投げる
stopSe( spep_4 + 12, SE014, 32 );

--次の準備
spep_5 = spep_4 + 54 -2;
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5 + 0, 190000, 58, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_5 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_5 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_5 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_5 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_5 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_5 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

--SE
--元気玉投げる
stopSe( spep_5 + 4, SE016, 10 );

--元気玉飛んでいく
stopSe( spep_5 + 16, SE017, 0 );

--ギャン
SE018 = playSe( spep_5 + 0, 1023 );
setSeVolumeByWorkId( spep_5 + 0, SE018, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 18, 40, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;
------------------------------------------------------
-- 爆破シーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 180, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 180, finish, 255 );

--SE
--爆発
SE019 = playSe( spep_6 + 0, 1159 );
SE020 = playSe( spep_6 + 6, 1188 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 170 );
end
--1020150:フリーザ_デスブラスター
--sp_effect_a1_00233

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
SP_01=	155308	;--	気溜め
SP_02=	155309	;--	発射
SP_03=	155311	;--	気弾が敵に迫る
SP_04=	155312	;--	気弾が敵に迫る

--敵側
SP_01x=	155308	;--	気溜め	(敵)
SP_02x=	155310	;--	発射	(敵)
SP_03x=	155311	;--	気弾が敵に迫る	
SP_04x=	155312	;--	気弾が敵に迫る	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
setDisp( 0, 0, 0);

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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
--はじめの準備
spep_0 = 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 116, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 116, tame, 255 );
setEffAlphaKey( spep_0 + 117, tame, 0 );
setEffAlphaKey( spep_0 + 118, tame, 0 );

-- ** エフェクト等 ** --
ora = entryEffect( spep_0 + 17, 1503, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 17, ora, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, ora, 0, 0 , 0 );
setEffScaleKey( spep_0 + 17, ora, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, ora, 1.0, 1.0 );
setEffRotateKey( spep_0 + 17, ora, 0 );
setEffRotateKey( spep_0 + 116, ora, 0 );
setEffAlphaKey( spep_0 + 17, ora, 255 );
setEffAlphaKey( spep_0 + 116, ora, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 20  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 20  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +32, 190006, 72, 0x100, -1, 0, 110, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +32,  ctgogo,  110,  510);
setEffMoveKey(  spep_0 +104,  ctgogo,  110,  510);

setEffAlphaKey( spep_0 +32, ctgogo, 0 );
setEffAlphaKey( spep_0 + 33, ctgogo, 255 );
setEffAlphaKey( spep_0 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 191 );
setEffAlphaKey( spep_0 + 102, ctgogo, 112 );
setEffAlphaKey( spep_0 + 104, ctgogo, 64 );

setEffRotateKey(  spep_0 +32,  ctgogo,  0);
setEffRotateKey(  spep_0 +104,  ctgogo,  0);

setEffScaleKey(  spep_0 +32,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +94,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +104,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 32, 1018 );
playSe( spep_0-19 + 21, 1014 );
setSeVolume( spep_0-19 + 21, 1014, 89 );
playSe( spep_0-19 + 22, 1035 );
setSeVolume( spep_0-19 + 22, 1035, 71 );

--白フェード
entryFade( spep_0 + 104, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1 =spep_0+ 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]
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

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 90, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 90, beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 28,  10012, 56, 0x100, -1, 0, 23.9, 155.2 );
setEffShake( spep_2-3 + 28, ctzuo, 56, 10 );
setEffMoveKey( spep_2-3 + 28, ctzuo, 23.9, 155.2 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzuo, 44.7, 170.8 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, 47.1, 196.5 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, 72.2, 208.2 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo, 70.5, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo, 85.7, 226.7 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo, 70.4, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo, 85.7, 226.7 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo, 70.4, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzuo, 85.8, 226.6 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzuo, 70.3, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo, 85.8, 226.6 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, 70.3, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, 85.9, 226.5 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, 70.3, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, 85.9, 226.5 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, 70.2, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, 86, 226.4 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, 70.2, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, 86, 226.4 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, 70.1, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, 86, 226.3 , 0 );
setEffMoveKey( spep_2-3 + 72, ctzuo, 70.1, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 74, ctzuo, 86.1, 226.2 , 0 );
setEffMoveKey( spep_2-3 + 76, ctzuo, 83.9, 244.8 , 0 );
setEffMoveKey( spep_2-3 + 78, ctzuo, 122.5, 232.6 , 0 );
setEffMoveKey( spep_2-3 + 80, ctzuo, 111.7, 257.7 , 0 );
setEffMoveKey( spep_2-3 + 82, ctzuo, 159, 239 , 0 );
setEffMoveKey( spep_2-3 + 84, ctzuo, 177.2, 242.1 , 0 );

setEffScaleKey( spep_2-3 + 28, ctzuo, 0.9, 0.9 );
setEffScaleKey( spep_2-3 + 30, ctzuo, 1.24, 1.24 );
setEffScaleKey( spep_2-3 + 32, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_2-3 + 34, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 36, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_2-3 + 38, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 40, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 42, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 44, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 46, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_2-3 + 48, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 50, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 52, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 54, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 56, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 58, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 60, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 62, ctzuo, 2.36, 2.36 );
setEffScaleKey( spep_2-3 + 64, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 66, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 68, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_2-3 + 70, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_2-3 + 72, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_2-3 + 74, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2-3 + 76, ctzuo, 3.05, 3.05 );
setEffScaleKey( spep_2-3 + 78, ctzuo, 3.7, 3.7 );
setEffScaleKey( spep_2-3 + 80, ctzuo, 4.36, 4.36 );
setEffScaleKey( spep_2-3 + 82, ctzuo, 5.01, 5.01 );
setEffScaleKey( spep_2-3 + 84, ctzuo, 5.66, 5.66 );

setEffRotateKey( spep_2-3 + 28, ctzuo, 6 );
setEffRotateKey( spep_2-3 + 30, ctzuo, 9 );
setEffRotateKey( spep_2-3 + 32, ctzuo, 12 );
setEffRotateKey( spep_2-3 + 34, ctzuo, 15 );
setEffRotateKey( spep_2-3 + 36, ctzuo, 18 );
setEffRotateKey( spep_2-3 + 48, ctzuo, 18 );
setEffRotateKey( spep_2-3 + 50, ctzuo, 17.9 );
setEffRotateKey( spep_2-3 + 84, ctzuo, 17.9 );

setEffAlphaKey( spep_2-3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 74, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 76, ctzuo, 204 );
setEffAlphaKey( spep_2-3 + 78, ctzuo, 153 );
setEffAlphaKey( spep_2-3 + 80, ctzuo, 102 );
setEffAlphaKey( spep_2-3 + 82, ctzuo, 51 );
setEffAlphaKey( spep_2-3 + 84, ctzuo, 0 );

--SE
SE0=playSe( spep_2 , 49 );
setSeVolume( spep_2 , 49, 112 );
SE1=playSe( spep_2 -39 + 45, 1021 );
se_1177 = playSe( spep_2 -39 + 45, 1177 );
setSeVolume( spep_2 -39 + 45, 1177, 0 );
setSeVolume( spep_2 -39 + 46, 1177, 6.36 );
setSeVolume( spep_2 -39 + 47, 1177, 12.71 );
setSeVolume( spep_2 -39 + 48, 1177, 19.07 );
setSeVolume( spep_2 -39 + 49, 1177, 25.43 );
setSeVolume( spep_2 -39 + 50, 1177, 31.79 );
setSeVolume( spep_2 -39 + 51, 1177, 38.14 );
setSeVolume( spep_2 -39 + 52, 1177, 44.50 );
setSeVolume( spep_2 -39 + 53, 1177, 50.86 );
setSeVolume( spep_2 -39 + 54, 1177, 57.21 );
setSeVolume( spep_2 -39 + 55, 1177, 63.57 );
setSeVolume( spep_2 -39 + 56, 1177, 69.93 );
setSeVolume( spep_2 -39 + 57, 1177, 76.29 );
SE2=playSe( spep_2-39 + 45, 1027 );
setSeVolume( spep_2-39 + 45, 1027, 79 );
se_1215 = playSe( spep_2-39 + 51, 1215 );
setSeVolume( spep_2-39 + 51, 1215, 56 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1177, 0 );
    stopSe( SP_dodge - 12, se_1215, 0 );
    pauseAll( SP_dodge, 67);

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
setSeVolume( spep_2 -39 + 58, 1177, 82.64 );
setSeVolume( spep_2 -39 + 59, 1177, 89 );
--白フェード
entryFade( spep_2 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 60, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 60, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 60, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 306.2, 37 , 0 );
setMoveKey( spep_3 + 2, 1, 305.5, 36.9 , 0 );
setMoveKey( spep_3 + 4, 1, 304.7, 36.8 , 0 );
setMoveKey( spep_3 + 6, 1, 303.8, 36.6 , 0 );
setMoveKey( spep_3 + 8, 1, 302.8, 36.5 , 0 );
setMoveKey( spep_3 + 10, 1, 301.6, 36.3 , 0 );
setMoveKey( spep_3 + 12, 1, 300.2, 36 , 0 );
setMoveKey( spep_3 + 14, 1, 298.7, 35.8 , 0 );
setMoveKey( spep_3 + 16, 1, 296.9, 35.5 , 0 );
setMoveKey( spep_3 + 18, 1, 294.9, 35.2 , 0 );
setMoveKey( spep_3 + 20, 1, 292.7, 34.8 , 0 );
setMoveKey( spep_3 + 22, 1, 290.1, 34.4 , 0 );
setMoveKey( spep_3 + 24, 1, 287.3, 33.9 , 0 );
setMoveKey( spep_3 + 26, 1, 284.1, 33.4 , 0 );
setMoveKey( spep_3 + 28, 1, 280.4, 32.8 , 0 );
setMoveKey( spep_3 + 30, 1, 276.3, 32.1 , 0 );
setMoveKey( spep_3 + 32, 1, 271.7, 31.3 , 0 );
setMoveKey( spep_3 + 34, 1, 266.6, 30.5 , 0 );
setMoveKey( spep_3 + 36, 1, 260.7, 29.5 , 0 );
setMoveKey( spep_3 + 38, 1, 254.2, 28.4 , 0 );
setMoveKey( spep_3 + 40, 1, 246.8, 27.2 , 0 );
setMoveKey( spep_3 + 42, 1, 238.4, 25.8 , 0 );
setMoveKey( spep_3 + 44, 1, 228.9, 24.3 , 0 );
setMoveKey( spep_3 + 46, 1, 218.2, 22.5 , 0 );
setMoveKey( spep_3 + 48, 1, 206, 20.5 , 0 );
setMoveKey( spep_3 + 50, 1, 192.2, 18.2 , 0 );
setMoveKey( spep_3 + 52, 1, 176.3, 15.6 , 0 );
setMoveKey( spep_3 + 54, 1, 158.1, 12.6 , 0 );
setMoveKey( spep_3 + 56, 1, 137.2, 9.2 , 0 );
setMoveKey( spep_3 + 58, 1, 113.9, 2.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 2, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 4, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 6, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 8, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 10, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 12, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 14, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 20, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 22, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 24, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 28, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 30, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 32, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 36, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 38, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 44, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 48, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 50, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 52, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 54, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 56, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 58, 1, 2.5, 2.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 58, 1, 0 );

--文字エントリー
ctzudododo = entryEffectLife( spep_3 + 6,  10014, 52, 0x100, -1, 0, 17.9, -358.4 );

setEffMoveKey( spep_3 + 6, ctzudododo, 17.9, -358.4 , 0 );
setEffMoveKey( spep_3 + 8, ctzudododo, 25, -375.9 , 0 );
setEffMoveKey( spep_3 + 10, ctzudododo, 4.4, -354.8 , 0 );
setEffMoveKey( spep_3 + 12, ctzudododo, 18.5, -299.8 , 0 );
setEffMoveKey( spep_3 + 14, ctzudododo, 1.3, -303.8 , 0 );
setEffMoveKey( spep_3 + 16, ctzudododo, 6.2, -286.5 , 0 );
setEffMoveKey( spep_3 + 18, ctzudododo, 5.9, -280.1 , 0 );
setEffMoveKey( spep_3 + 20, ctzudododo, 11.7, -302.3 , 0 );
setEffMoveKey( spep_3 + 22, ctzudododo, 1, -305.4 , 0 );
setEffMoveKey( spep_3 + 24, ctzudododo, 13.6, -283 , 0 );
setEffMoveKey( spep_3 + 26, ctzudododo, 1.7, -306.8 , 0 );
setEffMoveKey( spep_3 + 28, ctzudododo, 6.5, -290.2 , 0 );
setEffMoveKey( spep_3 + 30, ctzudododo, 6.1, -284.1 , 0 );
setEffMoveKey( spep_3 + 32, ctzudododo, 11.7, -305.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzudododo, 1.5, -308.4 , 0 );
setEffMoveKey( spep_3 + 36, ctzudododo, 13.5, -287 , 0 );
setEffMoveKey( spep_3 + 38, ctzudododo, 2.2, -309.8 , 0 );
setEffMoveKey( spep_3 + 40, ctzudododo, 6.7, -293.9 , 0 );
setEffMoveKey( spep_3 + 42, ctzudododo, 6.4, -288.1 , 0 );
setEffMoveKey( spep_3 + 44, ctzudododo, 11.8, -308.5 , 0 );
setEffMoveKey( spep_3 + 46, ctzudododo, 2, -311.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzudododo, 13.5, -290.9 , 0 );
setEffMoveKey( spep_3 + 50, ctzudododo, 2.6, -312.7 , 0 );
setEffMoveKey( spep_3 + 52, ctzudododo, 7, -297.6 , 0 );
setEffMoveKey( spep_3 + 54, ctzudododo, 6.7, -292.1 , 0 );
setEffMoveKey( spep_3 + 56, ctzudododo, 11.8, -311.6 , 0 );
setEffMoveKey( spep_3 + 58, ctzudododo, 11.8, -312.1 , 0 );

setEffScaleKey( spep_3 + 6, ctzudododo, 6.57, 6.57 );
setEffScaleKey( spep_3 + 8, ctzudododo, 5.77, 5.77 );
setEffScaleKey( spep_3 + 10, ctzudododo, 4.98, 4.98 );
setEffScaleKey( spep_3 + 12, ctzudododo, 4.18, 4.18 );
setEffScaleKey( spep_3 + 14, ctzudododo, 3.39, 3.39 );
setEffScaleKey( spep_3 + 16, ctzudododo, 3.37, 3.37 );
setEffScaleKey( spep_3 + 18, ctzudododo, 3.34, 3.34 );
setEffScaleKey( spep_3 + 20, ctzudododo, 3.32, 3.32 );
setEffScaleKey( spep_3 + 22, ctzudododo, 3.3, 3.3 );
setEffScaleKey( spep_3 + 24, ctzudododo, 3.27, 3.27 );
setEffScaleKey( spep_3 + 26, ctzudododo, 3.25, 3.25 );
setEffScaleKey( spep_3 + 28, ctzudododo, 3.23, 3.23 );
setEffScaleKey( spep_3 + 30, ctzudododo, 3.2, 3.2 );
setEffScaleKey( spep_3 + 32, ctzudododo, 3.18, 3.18 );
setEffScaleKey( spep_3 + 34, ctzudododo, 3.16, 3.16 );
setEffScaleKey( spep_3 + 36, ctzudododo, 3.13, 3.13 );
setEffScaleKey( spep_3 + 38, ctzudododo, 3.11, 3.11 );
setEffScaleKey( spep_3 + 40, ctzudododo, 3.09, 3.09 );
setEffScaleKey( spep_3 + 42, ctzudododo, 3.07, 3.07 );
setEffScaleKey( spep_3 + 44, ctzudododo, 3.04, 3.04 );
setEffScaleKey( spep_3 + 46, ctzudododo, 3.02, 3.02 );
setEffScaleKey( spep_3 + 48, ctzudododo, 3, 3 );
setEffScaleKey( spep_3 + 50, ctzudododo, 2.97, 2.97 );
setEffScaleKey( spep_3 + 52, ctzudododo, 2.95, 2.95 );
setEffScaleKey( spep_3 + 54, ctzudododo, 2.93, 2.93 );
setEffScaleKey( spep_3 + 56, ctzudododo, 2.9, 2.9 );
setEffScaleKey( spep_3 + 58, ctzudododo, 2.88, 2.88 );

setEffRotateKey( spep_3 + 6, ctzudododo, 19 );
setEffRotateKey( spep_3 + 58, ctzudododo, 19 );

setEffAlphaKey( spep_3 + 6, ctzudododo, 255 );
setEffAlphaKey( spep_3 + 58, ctzudododo, 255 );

--白フェード
entryFade( spep_3 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 60;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_4 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_4 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_4 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_4 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_4 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_4 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_4 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_4 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_4 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_4 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_4 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_4 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_4 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_4 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_4 + 0, 1, 0-z );
setRotateKey( spep_4 + 2, 1, 105-z );
setRotateKey( spep_4 + 4, 1, 240-z );
setRotateKey( spep_4 + 6, 1, 405-z );
setRotateKey( spep_4 + 8, 1, 600-z );
setRotateKey( spep_4 + 10, 1, 825-z );
setRotateKey( spep_4 + 12, 1, 1080-z );
setRotateKey( spep_4 + 110, 1, 1080-z );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

--SE
playSe( spep_4 + 0, 1023 );
playSe( spep_4 + 14, 1054 );
stopSe( spep_4 + 20, se_1177, 0 );
stopSe( spep_4 + 20, se_1215, 0 );

--終わり
dealDamage( spep_4  );
endPhase( spep_4 + 98 );
else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
--はじめの準備
spep_0 = 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 116, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 116, tame, 255 );

-- ** エフェクト等 ** --
ora = entryEffect( spep_0 + 17, 1503, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 17, ora, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, ora, 0, 0 , 0 );
setEffScaleKey( spep_0 + 17, ora, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, ora, 1.0, 1.0 );
setEffRotateKey( spep_0 + 17, ora, 0 );
setEffRotateKey( spep_0 + 116, ora, 0 );
setEffAlphaKey( spep_0 + 17, ora, 255 );
setEffAlphaKey( spep_0 + 116, ora, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 20  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 20  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +32, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +32,  ctgogo,  80,  510);
setEffMoveKey(  spep_0 +104,  ctgogo,  80,  510);

setEffAlphaKey( spep_0 +32, ctgogo, 0 );
setEffAlphaKey( spep_0 + 33, ctgogo, 255 );
setEffAlphaKey( spep_0 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 191 );
setEffAlphaKey( spep_0 + 102, ctgogo, 112 );
setEffAlphaKey( spep_0 + 104, ctgogo, 64 );

setEffRotateKey(  spep_0 +32,  ctgogo,  0);
setEffRotateKey(  spep_0 +104,  ctgogo,  0);

setEffScaleKey(  spep_0 +32,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +94,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +104,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 32, 1018 );
playSe( spep_0-19 + 21, 1014 );
setSeVolume( spep_0-19 + 21, 1014, 89 );
playSe( spep_0-19 + 22, 1035 );
setSeVolume( spep_0-19 + 22, 1035, 71 );


--白フェード
entryFade( spep_0 + 104, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1 =spep_0+ 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]
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

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_2 + 90, beam, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 90, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 90, beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 28,  10012, 56, 0x100, -1, 0, 23.9, 155.2 );
setEffShake( spep_2-3 + 28, ctzuo, 56, 10 );
setEffMoveKey( spep_2-3 + 28, ctzuo, 23.9, 155.2 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzuo, 44.7, 170.8 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, 47.1, 196.5 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, 72.2, 208.2 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo, 70.5, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo, 85.7, 226.7 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo, 70.4, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo, 85.7, 226.7 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo, 70.4, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzuo, 85.8, 226.6 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzuo, 70.3, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo, 85.8, 226.6 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, 70.3, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, 85.9, 226.5 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, 70.3, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, 85.9, 226.5 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, 70.2, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, 86, 226.4 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, 70.2, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, 86, 226.4 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, 70.1, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, 86, 226.3 , 0 );
setEffMoveKey( spep_2-3 + 72, ctzuo, 70.1, 238.3 , 0 );
setEffMoveKey( spep_2-3 + 74, ctzuo, 86.1, 226.2 , 0 );
setEffMoveKey( spep_2-3 + 76, ctzuo, 83.9, 244.8 , 0 );
setEffMoveKey( spep_2-3 + 78, ctzuo, 122.5, 232.6 , 0 );
setEffMoveKey( spep_2-3 + 80, ctzuo, 111.7, 257.7 , 0 );
setEffMoveKey( spep_2-3 + 82, ctzuo, 159, 239 , 0 );
setEffMoveKey( spep_2-3 + 84, ctzuo, 177.2, 242.1 , 0 );

setEffScaleKey( spep_2-3 + 28, ctzuo, 0.9, 0.9 );
setEffScaleKey( spep_2-3 + 30, ctzuo, 1.24, 1.24 );
setEffScaleKey( spep_2-3 + 32, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_2-3 + 34, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 36, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_2-3 + 38, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 40, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 42, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 44, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 46, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_2-3 + 48, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 50, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 52, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 54, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 56, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 58, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 60, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 62, ctzuo, 2.36, 2.36 );
setEffScaleKey( spep_2-3 + 64, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 66, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 68, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_2-3 + 70, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_2-3 + 72, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_2-3 + 74, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2-3 + 76, ctzuo, 3.05, 3.05 );
setEffScaleKey( spep_2-3 + 78, ctzuo, 3.7, 3.7 );
setEffScaleKey( spep_2-3 + 80, ctzuo, 4.36, 4.36 );
setEffScaleKey( spep_2-3 + 82, ctzuo, 5.01, 5.01 );
setEffScaleKey( spep_2-3 + 84, ctzuo, 5.66, 5.66 );

setEffRotateKey( spep_2-3 + 28, ctzuo, 6 );
setEffRotateKey( spep_2-3 + 30, ctzuo, 9 );
setEffRotateKey( spep_2-3 + 32, ctzuo, 12 );
setEffRotateKey( spep_2-3 + 34, ctzuo, 15 );
setEffRotateKey( spep_2-3 + 36, ctzuo, 18 );
setEffRotateKey( spep_2-3 + 48, ctzuo, 18 );
setEffRotateKey( spep_2-3 + 50, ctzuo, 17.9 );
setEffRotateKey( spep_2-3 + 84, ctzuo, 17.9 );

setEffAlphaKey( spep_2-3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 74, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 76, ctzuo, 204 );
setEffAlphaKey( spep_2-3 + 78, ctzuo, 153 );
setEffAlphaKey( spep_2-3 + 80, ctzuo, 102 );
setEffAlphaKey( spep_2-3 + 82, ctzuo, 51 );
setEffAlphaKey( spep_2-3 + 84, ctzuo, 0 );

--SE
SE0=playSe( spep_2 , 49 );
setSeVolume( spep_2 , 49, 112 );
SE1=playSe( spep_2 -39 + 45, 1021 );
se_1177 = playSe( spep_2 -39 + 45, 1177 );
setSeVolume( spep_2 -39 + 45, 1177, 0 );
setSeVolume( spep_2 -39 + 46, 1177, 6.36 );
setSeVolume( spep_2 -39 + 47, 1177, 12.71 );
setSeVolume( spep_2 -39 + 48, 1177, 19.07 );
setSeVolume( spep_2 -39 + 49, 1177, 25.43 );
setSeVolume( spep_2 -39 + 50, 1177, 31.79 );
setSeVolume( spep_2 -39 + 51, 1177, 38.14 );
setSeVolume( spep_2 -39 + 52, 1177, 44.50 );
setSeVolume( spep_2 -39 + 53, 1177, 50.86 );
setSeVolume( spep_2 -39 + 54, 1177, 57.21 );
setSeVolume( spep_2 -39 + 55, 1177, 63.57 );
setSeVolume( spep_2 -39 + 56, 1177, 69.93 );
setSeVolume( spep_2 -39 + 57, 1177, 76.29 );
SE2=playSe( spep_2-39 + 45, 1027 );
setSeVolume( spep_2-39 + 45, 1027, 79 );
se_1215 = playSe( spep_2-39 + 51, 1215 );
setSeVolume( spep_2-39 + 51, 1215, 56 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1177, 0 );
    stopSe( SP_dodge - 12, se_1215, 0 );
    pauseAll( SP_dodge, 67);

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
setSeVolume( spep_2 -39 + 58, 1177, 82.64 );
setSeVolume( spep_2 -39 + 59, 1177, 89 );
--白フェード
entryFade( spep_2 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 60, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 60, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 60, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 306.2, 37 , 0 );
setMoveKey( spep_3 + 2, 1, 305.5, 36.9 , 0 );
setMoveKey( spep_3 + 4, 1, 304.7, 36.8 , 0 );
setMoveKey( spep_3 + 6, 1, 303.8, 36.6 , 0 );
setMoveKey( spep_3 + 8, 1, 302.8, 36.5 , 0 );
setMoveKey( spep_3 + 10, 1, 301.6, 36.3 , 0 );
setMoveKey( spep_3 + 12, 1, 300.2, 36 , 0 );
setMoveKey( spep_3 + 14, 1, 298.7, 35.8 , 0 );
setMoveKey( spep_3 + 16, 1, 296.9, 35.5 , 0 );
setMoveKey( spep_3 + 18, 1, 294.9, 35.2 , 0 );
setMoveKey( spep_3 + 20, 1, 292.7, 34.8 , 0 );
setMoveKey( spep_3 + 22, 1, 290.1, 34.4 , 0 );
setMoveKey( spep_3 + 24, 1, 287.3, 33.9 , 0 );
setMoveKey( spep_3 + 26, 1, 284.1, 33.4 , 0 );
setMoveKey( spep_3 + 28, 1, 280.4, 32.8 , 0 );
setMoveKey( spep_3 + 30, 1, 276.3, 32.1 , 0 );
setMoveKey( spep_3 + 32, 1, 271.7, 31.3 , 0 );
setMoveKey( spep_3 + 34, 1, 266.6, 30.5 , 0 );
setMoveKey( spep_3 + 36, 1, 260.7, 29.5 , 0 );
setMoveKey( spep_3 + 38, 1, 254.2, 28.4 , 0 );
setMoveKey( spep_3 + 40, 1, 246.8, 27.2 , 0 );
setMoveKey( spep_3 + 42, 1, 238.4, 25.8 , 0 );
setMoveKey( spep_3 + 44, 1, 228.9, 24.3 , 0 );
setMoveKey( spep_3 + 46, 1, 218.2, 22.5 , 0 );
setMoveKey( spep_3 + 48, 1, 206, 20.5 , 0 );
setMoveKey( spep_3 + 50, 1, 192.2, 18.2 , 0 );
setMoveKey( spep_3 + 52, 1, 176.3, 15.6 , 0 );
setMoveKey( spep_3 + 54, 1, 158.1, 12.6 , 0 );
setMoveKey( spep_3 + 56, 1, 137.2, 9.2 , 0 );
setMoveKey( spep_3 + 58, 1, 113.9, 2.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 2, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 4, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 6, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 8, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 10, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 12, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 14, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 20, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 22, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 24, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 28, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 30, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 32, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 36, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 38, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 44, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 48, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 50, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 52, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 54, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 56, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 58, 1, 2.5, 2.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 58, 1, 0 );

--文字エントリー
ctzudododo = entryEffectLife( spep_3 + 6,  10014, 52, 0x100, -1, 0, 17.9, -358.4 );

setEffMoveKey( spep_3 + 6, ctzudododo, 17.9, -358.4 , 0 );
setEffMoveKey( spep_3 + 8, ctzudododo, 25, -375.9 , 0 );
setEffMoveKey( spep_3 + 10, ctzudododo, 4.4, -354.8 , 0 );
setEffMoveKey( spep_3 + 12, ctzudododo, 18.5, -299.8 , 0 );
setEffMoveKey( spep_3 + 14, ctzudododo, 1.3, -303.8 , 0 );
setEffMoveKey( spep_3 + 16, ctzudododo, 6.2, -286.5 , 0 );
setEffMoveKey( spep_3 + 18, ctzudododo, 5.9, -280.1 , 0 );
setEffMoveKey( spep_3 + 20, ctzudododo, 11.7, -302.3 , 0 );
setEffMoveKey( spep_3 + 22, ctzudododo, 1, -305.4 , 0 );
setEffMoveKey( spep_3 + 24, ctzudododo, 13.6, -283 , 0 );
setEffMoveKey( spep_3 + 26, ctzudododo, 1.7, -306.8 , 0 );
setEffMoveKey( spep_3 + 28, ctzudododo, 6.5, -290.2 , 0 );
setEffMoveKey( spep_3 + 30, ctzudododo, 6.1, -284.1 , 0 );
setEffMoveKey( spep_3 + 32, ctzudododo, 11.7, -305.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzudododo, 1.5, -308.4 , 0 );
setEffMoveKey( spep_3 + 36, ctzudododo, 13.5, -287 , 0 );
setEffMoveKey( spep_3 + 38, ctzudododo, 2.2, -309.8 , 0 );
setEffMoveKey( spep_3 + 40, ctzudododo, 6.7, -293.9 , 0 );
setEffMoveKey( spep_3 + 42, ctzudododo, 6.4, -288.1 , 0 );
setEffMoveKey( spep_3 + 44, ctzudododo, 11.8, -308.5 , 0 );
setEffMoveKey( spep_3 + 46, ctzudododo, 2, -311.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzudododo, 13.5, -290.9 , 0 );
setEffMoveKey( spep_3 + 50, ctzudododo, 2.6, -312.7 , 0 );
setEffMoveKey( spep_3 + 52, ctzudododo, 7, -297.6 , 0 );
setEffMoveKey( spep_3 + 54, ctzudododo, 6.7, -292.1 , 0 );
setEffMoveKey( spep_3 + 56, ctzudododo, 11.8, -311.6 , 0 );
setEffMoveKey( spep_3 + 58, ctzudododo, 11.8, -312.1 , 0 );

setEffScaleKey( spep_3 + 6, ctzudododo, 6.57, 6.57 );
setEffScaleKey( spep_3 + 8, ctzudododo, 5.77, 5.77 );
setEffScaleKey( spep_3 + 10, ctzudododo, 4.98, 4.98 );
setEffScaleKey( spep_3 + 12, ctzudododo, 4.18, 4.18 );
setEffScaleKey( spep_3 + 14, ctzudododo, 3.39, 3.39 );
setEffScaleKey( spep_3 + 16, ctzudododo, 3.37, 3.37 );
setEffScaleKey( spep_3 + 18, ctzudododo, 3.34, 3.34 );
setEffScaleKey( spep_3 + 20, ctzudododo, 3.32, 3.32 );
setEffScaleKey( spep_3 + 22, ctzudododo, 3.3, 3.3 );
setEffScaleKey( spep_3 + 24, ctzudododo, 3.27, 3.27 );
setEffScaleKey( spep_3 + 26, ctzudododo, 3.25, 3.25 );
setEffScaleKey( spep_3 + 28, ctzudododo, 3.23, 3.23 );
setEffScaleKey( spep_3 + 30, ctzudododo, 3.2, 3.2 );
setEffScaleKey( spep_3 + 32, ctzudododo, 3.18, 3.18 );
setEffScaleKey( spep_3 + 34, ctzudododo, 3.16, 3.16 );
setEffScaleKey( spep_3 + 36, ctzudododo, 3.13, 3.13 );
setEffScaleKey( spep_3 + 38, ctzudododo, 3.11, 3.11 );
setEffScaleKey( spep_3 + 40, ctzudododo, 3.09, 3.09 );
setEffScaleKey( spep_3 + 42, ctzudododo, 3.07, 3.07 );
setEffScaleKey( spep_3 + 44, ctzudododo, 3.04, 3.04 );
setEffScaleKey( spep_3 + 46, ctzudododo, 3.02, 3.02 );
setEffScaleKey( spep_3 + 48, ctzudododo, 3, 3 );
setEffScaleKey( spep_3 + 50, ctzudododo, 2.97, 2.97 );
setEffScaleKey( spep_3 + 52, ctzudododo, 2.95, 2.95 );
setEffScaleKey( spep_3 + 54, ctzudododo, 2.93, 2.93 );
setEffScaleKey( spep_3 + 56, ctzudododo, 2.9, 2.9 );
setEffScaleKey( spep_3 + 58, ctzudododo, 2.88, 2.88 );

setEffRotateKey( spep_3 + 6, ctzudododo, -69 );
setEffRotateKey( spep_3 + 58, ctzudododo, -69 );

setEffAlphaKey( spep_3 + 6, ctzudododo, 255 );
setEffAlphaKey( spep_3 + 58, ctzudododo, 255 );

--白フェード
entryFade( spep_3 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 60;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_4 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_4 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_4 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_4 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_4 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_4 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_4 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_4 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_4 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_4 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_4 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_4 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_4 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_4 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_4 + 0, 1, 0-z );
setRotateKey( spep_4 + 2, 1, 105-z );
setRotateKey( spep_4 + 4, 1, 240-z );
setRotateKey( spep_4 + 6, 1, 405-z );
setRotateKey( spep_4 + 8, 1, 600-z );
setRotateKey( spep_4 + 10, 1, 825-z );
setRotateKey( spep_4 + 12, 1, 1080-z );
setRotateKey( spep_4 + 110, 1, 1080-z );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

--SE
playSe( spep_4 + 0, 1023 );
playSe( spep_4 + 14, 1054 );
stopSe( spep_4 + 20, se_1177, 0 );
stopSe( spep_4 + 20, se_1215, 0 );

--終わり
dealDamage( spep_4  );
endPhase( spep_4 + 98 );
end
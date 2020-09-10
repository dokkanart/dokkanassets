--1019530:クリリン_拡散エネルギー波
--sp_effect_a1_00232

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
SP_01=	155222	;--	構え
SP_02=	155223	;--	溜め
SP_03=	155225	;--	放つ
SP_04=	155227	;--	放つ（引き絵）
SP_05=	155228	;--	気弾が敵に迫る→敵が回避行動
SP_06=	155229	;--	気弾が敵に迫る→敵が回避行動
SP_07=	155230	;--	気弾を曲げる
SP_08=	155232	;--	気弾が空に上がる
SP_09=	155233	;--	キャラアップ絵
SP_10=	155235	;--	気弾が拡散する
SP_11=	155236	;--	気弾が敵に迫る
SP_12=	155237	;--	爆発
SP_13=	155238	;--	爆発
SP_14=	155239	;--	爆発（全体用）
SP_15=	155240	;--	爆発（全体用）

--エフェクト(敵)
SP_01x=	155222	;--	構え	
SP_02x=	155224	;--	溜め	(敵)
SP_03x=	155226	;--	放つ	(敵)
SP_04x=	155227	;--	放つ（引き絵）	
SP_05x=	155228	;--	気弾が敵に迫る→敵が回避行動	
SP_06x=	155229	;--	気弾が敵に迫る→敵が回避行動	
SP_07x=	155231	;--	気弾を曲げる	(敵)
SP_08x=	155232	;--	気弾が空に上がる	
SP_09x=	155234	;--	キャラアップ絵	(敵)
SP_10x=	155235	;--	気弾が拡散する	
SP_11x=	155236	;--	気弾が敵に迫る	
SP_12x=	155237	;--	爆発	
SP_13x=	155238	;--	爆発	
SP_14x=	155239	;--	爆発（全体用）	
SP_15x=	155240	;--	爆発（全体用）	

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

kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
kamae = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, kamae, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 100, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 100, kamae, 255 );
setEffAlphaKey( spep_0 + 101, kamae, 0 );
setEffAlphaKey( spep_0 + 102, kamae, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 10,  906, 88, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 10, shuchusen1, 88, 20 );
setEffMoveKey( spep_0-3 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 10, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 98, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_0-3 + 10, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 98, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--敵の動き
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
--setAlphaKey( 0, 1, 255 );

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

--SE
playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 71 );
playSe( spep_0 + 22, 1018 );

--白フェード
entryFade( spep_0 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg(   spep_0, 0, 102, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;
------------------------------------------------------
-- 溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 90, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 90, tame, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_1, 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_1 + 2, 1003 );
playSe( spep_1 + 29, 49 );
setSeVolume( spep_1 + 29, 49, 63 );
se_1148 = playSe( spep_1 + 32, 1148 );
playSe( spep_1 + 54, 49 );
setSeVolume( spep_1 + 54, 49, 63 );
--playSe( spep_1 + 88, 1035 );

stopSe( spep_1 + 88, se_1148, 0 );

--白フェード
entryFade( spep_1 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 78, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- 放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 30, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 30, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 30, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 30, beam, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_3, 0, 32, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_3 + 0, 1056 );

--白フェード
entryFade( spep_3 + 22, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 30;
------------------------------------------------------
-- 放つ（引き絵）
------------------------------------------------------
-- ** エフェクト等 ** --
beam2 = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam2, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, beam2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, beam2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam2, 0 );
setEffRotateKey( spep_4 + 76, beam2, 0 );
setEffAlphaKey( spep_4 + 0, beam2, 255 );
setEffAlphaKey( spep_4 + 74, beam2, 255 );
setEffAlphaKey( spep_4 + 75, beam2, 255 );
setEffAlphaKey( spep_4 + 76, beam2, 0 );

-- ** くろ背景 ** --
entryFadeBg(   spep_4, 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_4 + 11, 1022 );
SE1=playSe( spep_4 + 11, 1027 );
setSeVolume( spep_4 + 11, 1027, 79 );
SE2=playSe( spep_4 + 11, 1177 );
setSeVolume( spep_4 + 11, 1177, 0 );
setSeVolume( spep_4 + 24, 1177, 0 );
setSeVolume( spep_4 + 25, 1177, 2.63 );
setSeVolume( spep_4 + 26, 1177, 5.26 );
setSeVolume( spep_4 + 27, 1177, 7.89 );
setSeVolume( spep_4 + 28, 1177, 10.53 );
setSeVolume( spep_4 + 29, 1177, 13.16 );
setSeVolume( spep_4 + 30, 1177, 15.79 );
setSeVolume( spep_4 + 31, 1177, 18.42 );
setSeVolume( spep_4 + 32, 1177, 21.05 );
setSeVolume( spep_4 + 33, 1177, 23.68 );
setSeVolume( spep_4 + 34, 1177, 26.32 );
setSeVolume( spep_4 + 35, 1177, 28.95 );
setSeVolume( spep_4 + 36, 1177, 31.58 );
setSeVolume( spep_4 + 37, 1177, 34.21 );
setSeVolume( spep_4 + 38, 1177, 36.84 );
setSeVolume( spep_4 + 39, 1177, 39.47 );
setSeVolume( spep_4 + 40, 1177, 42.11 );
setSeVolume( spep_4 + 41, 1177, 44.74 );
setSeVolume( spep_4 + 42, 1177, 47.37 );
setSeVolume( spep_4 + 43, 1177, 50.00 );
setSeVolume( spep_4 + 44, 1177, 52.63 );
setSeVolume( spep_4 + 45, 1177, 55.26 );
setSeVolume( spep_4 + 46, 1177, 57.89 );
setSeVolume( spep_4 + 47, 1177, 60.53 );
setSeVolume( spep_4 + 48, 1177, 63.16 );
setSeVolume( spep_4 + 49, 1177, 65.79 );
setSeVolume( spep_4 + 50, 1177, 68.42 );
setSeVolume( spep_4 + 51, 1177, 71.05 );
setSeVolume( spep_4 + 52, 1177, 73.68 );
setSeVolume( spep_4 + 53, 1177, 76.32 );
setSeVolume( spep_4 + 54, 1177, 78.95 );
setSeVolume( spep_4 + 55, 1177, 81.58 );
setSeVolume( spep_4 + 56, 1177, 84.21 );
setSeVolume( spep_4 + 57, 1177, 86.84 );
setSeVolume( spep_4 + 58, 1177, 89.47 );
setSeVolume( spep_4 + 59, 1177, 92.11 );
setSeVolume( spep_4 + 60, 1177, 94.74 );
setSeVolume( spep_4 + 61, 1177, 97.37 );
setSeVolume( spep_4 + 62, 1177, 100 );
se_1124 = playSe( spep_4 + 11, 1124 );
setSeVolume( spep_4 + 11, 1124, 50 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 +50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1124, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--白フェード
--entryFade( spep_4 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

------------------------------------------------------
-- 気弾が空に上がる
------------------------------------------------------
-- ** エフェクト等 ** --
kaihi_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kaihi_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 50, kaihi_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kaihi_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, kaihi_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kaihi_f, 0 );
setEffRotateKey( spep_5 + 50, kaihi_f, 0 );
setEffAlphaKey( spep_5 + 0, kaihi_f, 255 );
setEffAlphaKey( spep_5 + 50, kaihi_f, 255 );
setEffAlphaKey( spep_5 + 51, kaihi_f, 0 );
setEffAlphaKey( spep_5 + 52, kaihi_f, 0 );

-- ** エフェクト等 ** --
kaihi_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kaihi_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 50, kaihi_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kaihi_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, kaihi_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kaihi_b, 0 );
setEffRotateKey( spep_5 + 50, kaihi_b, 0 );
setEffAlphaKey( spep_5 + 0, kaihi_b, 255 );
setEffAlphaKey( spep_5 + 50, kaihi_b, 255 );
setEffAlphaKey( spep_5 + 51, kaihi_b, 0 );
setEffAlphaKey( spep_5 + 52, kaihi_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 117 );
changeAnime( spep_5-3 + 28, 1, 103 );

setMoveKey( spep_5 + 0, 1, 198.2, -301 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 189, -296.2 , 0 );
setMoveKey( spep_5-3 + 4, 1, 193.7, -287.7 , 0 );
setMoveKey( spep_5-3 + 6, 1, 187.4, -280.1 , 0 );
setMoveKey( spep_5-3 + 8, 1, 183.5, -276.8 , 0 );
setMoveKey( spep_5-3 + 10, 1, 187.4, -281.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, 189.5, -282.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 195.6, -276.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 190.2, -266 , 0 );
setMoveKey( spep_5-3 + 18, 1, 188.8, -269.5 , 0 );
setMoveKey( spep_5-3 + 20, 1, 187.4, -265.4 , 0 );
setMoveKey( spep_5-3 + 22, 1, 188, -263.2 , 0 );
setMoveKey( spep_5-3 + 24, 1, 188.6, -253.5 , 0 );
setMoveKey( spep_5-3 + 27, 1, 185.5, -245.8 , 0 );
setMoveKey( spep_5-3 + 28, 1, 138.6, -228.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 72.6, -175 , 0 );
setMoveKey( spep_5-3 + 32, 1, 25, -137.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, -9.9, -107.6 , 0 );
setMoveKey( spep_5-3 + 36, 1, -50.2, -79.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, -82, -50.7 , 0 );
setMoveKey( spep_5-3 + 40, 1, -98.4, -37.2 , 0 );
setMoveKey( spep_5-3 + 42, 1, -126.8, -22.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, -136.9, -14.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, -159.7, 6.3 , 0 );
setMoveKey( spep_5-3 + 48, 1, -172.4, 10 , 0 );

setScaleKey( spep_5 + 0, 1, 0.82, 0.82 );
--setScaleKey( spep_5-3 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_5-3 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_5-3 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 8, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 10, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 12, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 14, 1, 0.91, 0.91 );
setScaleKey( spep_5-3 + 16, 1, 0.91, 0.91 );
setScaleKey( spep_5-3 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_5-3 + 20, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 22, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 24, 1, 0.94, 0.94 );
setScaleKey( spep_5-3 + 27, 1, 0.95, 0.95 );
setScaleKey( spep_5-3 + 28, 1, 0.95, 0.95 );
setScaleKey( spep_5-3 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_5-3 + 32, 1, 1, 1 );
setScaleKey( spep_5-3 + 34, 1, 1.02, 1.02 );
setScaleKey( spep_5-3 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_5-3 + 38, 1, 1.06, 1.06 );
setScaleKey( spep_5-3 + 40, 1, 1.07, 1.07 );
setScaleKey( spep_5-3 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_5-3 + 44, 1, 1.09, 1.09 );
setScaleKey( spep_5-3 + 46, 1, 1.1, 1.1 );
setScaleKey( spep_5-3 + 48, 1, 1.11, 1.11 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 27, 1, 0 );
setRotateKey( spep_5-3 + 28, 1, 18 );
setRotateKey( spep_5-3 + 48, 1, 18 );

-- ** くろ背景 ** --
entryFadeBg(   spep_5, 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 50;
------------------------------------------------------
-- 気弾を曲げる
------------------------------------------------------
-- ** エフェクト等 ** --
mageru = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, mageru, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, mageru, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, mageru, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, mageru, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, mageru, 0 );
setEffRotateKey( spep_6 + 46, mageru, 0 );
setEffAlphaKey( spep_6 + 0, mageru, 255 );
setEffAlphaKey( spep_6 + 46, mageru, 255 );
setEffAlphaKey( spep_6 + 47, mageru, 0 );
setEffAlphaKey( spep_6 + 48, mageru, 0 );

--SE
playSe( spep_6 + 15, 1004 );

--白フェード
--entryFade( spep_6 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg(   spep_6, 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景
-- ** 次の準備 ** --
spep_7 = spep_6 + 46;
------------------------------------------------------
-- 気弾が空に上がる
------------------------------------------------------
-- ** エフェクト等 ** --
up = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, up, 0, 0, 0 );
setEffMoveKey( spep_7 + 64, up, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, up, 1.0, 1.0 );
setEffScaleKey( spep_7 + 64, up, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, up, 0 );
setEffRotateKey( spep_7 + 64, up, 0 );
setEffAlphaKey( spep_7 + 0, up, 255 );
setEffAlphaKey( spep_7 + 64, up, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_7, 0, 66, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
se_1184 = playSe( spep_7 + 3, 1184 );
setSeVolume( spep_7 + 3, 1184, 40 );
se_1035 = playSe( spep_7 + 5, 1035 );
se_1116 = playSe( spep_7 + 14, 1116 );
playSe( spep_7 + 14, 1179 );
setSeVolume( spep_7 + 14, 1179, 63 );
playSe( spep_7 + 29, 1202 );
playSe( spep_7 + 30, 44 );
setSeVolume( spep_7 + 30, 44, 89 );

stopSe( spep_7 + 39, se_1124, 0 );
stopSe( spep_7 + 32, se_1184, 34 );
stopSe( spep_7 + 36, se_1035, 25 );
stopSe( spep_7 + 43, se_1116, 28 );

--白フェード
entryFade( spep_7 + 56, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 64;
------------------------------------------------------
-- キャラアップ絵
------------------------------------------------------
-- ** エフェクト等 ** --
character = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, character, 0, 0, 0 );
setEffMoveKey( spep_8 + 60, character, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, character, 1.0, 1.0 );
setEffScaleKey( spep_8 + 60, character, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, character, 0 );
setEffRotateKey( spep_8 + 60, character, 0 );
setEffAlphaKey( spep_8 + 0, character, 255 );
setEffAlphaKey( spep_8 + 60, character, 255 );

--白フェード
entryFade( spep_8 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_8 + 23, 1003 );
se_1187 = playSe( spep_8 + 23, 1187 );
setSeVolume( spep_8 + 23, 1187, 0 );
setSeVolume( spep_8 + 26, 1187, 0 );
setSeVolume( spep_8 + 27, 1187, 7.89 );
setSeVolume( spep_8 + 28, 1187, 15.78 );
setSeVolume( spep_8 + 29, 1187, 23.67 );
setSeVolume( spep_8 + 30, 1187, 31.56 );
setSeVolume( spep_8 + 31, 1187, 39.44 );
setSeVolume( spep_8 + 32, 1187, 47.33 );
setSeVolume( spep_8 + 33, 1187, 55.22 );
setSeVolume( spep_8 + 34, 1187, 63.11 );
setSeVolume( spep_8 + 35, 1187, 71 );
playSe( spep_8 + 27, 1004 );
setSeVolume( spep_8 + 27, 1004, 89 );
playSe( spep_8 + 27, 1232 );
setSeVolume( spep_8 + 27, 1232, 89 );
playSe( spep_8 + 27, 1033 );
setSeVolume( spep_8 + 27, 1033, 89 );

stopSe( spep_8 + 56, se_1187, 38 );

-- ** くろ背景 ** --
entryFadeBg(   spep_8, 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 60;

------------------------------------------------------
-- 気弾が拡散する
------------------------------------------------------
-- ** エフェクト等 ** --
kakusan = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kakusan, 0, 0, 0 );
setEffMoveKey( spep_9 + 70, kakusan, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kakusan, 1.0, 1.0 );
setEffScaleKey( spep_9 + 70, kakusan, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kakusan, 0 );
setEffRotateKey( spep_9 + 70, kakusan, 0 );
setEffAlphaKey( spep_9 + 0, kakusan, 255 );
setEffAlphaKey( spep_9 + 70, kakusan, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_9, 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_9 + 3, 1021 );
playSe( spep_9 + 3, 1046 );
playSe( spep_9 + 4, 1062 );
setSeVolume( spep_9 + 4, 1062, 79 );
playSe( spep_9 + 13, 1212 );
setSeVolume( spep_9 + 13, 1212, 0 );
setSeVolume( spep_9 + 36, 1212, 0 );
setSeVolume( spep_9 + 37, 1212, 1.03 );
setSeVolume( spep_9 + 38, 1212, 2.06 );
setSeVolume( spep_9 + 39, 1212, 3.1 );
setSeVolume( spep_9 + 40, 1212, 4.13 );
setSeVolume( spep_9 + 41, 1212, 5.16 );
setSeVolume( spep_9 + 42, 1212, 6.19 );
setSeVolume( spep_9 + 43, 1212, 7.23 );
setSeVolume( spep_9 + 44, 1212, 8.26 );
setSeVolume( spep_9 + 45, 1212, 9.29 );
setSeVolume( spep_9 + 46, 1212, 10.32 );
setSeVolume( spep_9 + 47, 1212, 11.35 );
setSeVolume( spep_9 + 48, 1212, 12.39 );
setSeVolume( spep_9 + 49, 1212, 13.42 );
setSeVolume( spep_9 + 50, 1212, 14.45 );
setSeVolume( spep_9 + 51, 1212, 15.48 );
setSeVolume( spep_9 + 52, 1212, 16.52 );
setSeVolume( spep_9 + 53, 1212, 17.55 );
setSeVolume( spep_9 + 54, 1212, 18.58 );
setSeVolume( spep_9 + 55, 1212, 19.61 );
setSeVolume( spep_9 + 56, 1212, 20.65 );
setSeVolume( spep_9 + 57, 1212, 21.68 );
setSeVolume( spep_9 + 58, 1212, 22.71 );
setSeVolume( spep_9 + 59, 1212, 23.74 );
setSeVolume( spep_9 + 60, 1212, 24.77 );
setSeVolume( spep_9 + 61, 1212, 25.81 );
setSeVolume( spep_9 + 62, 1212, 26.84 );
setSeVolume( spep_9 + 63, 1212, 27.87 );
setSeVolume( spep_9 + 64, 1212, 28.9 );
setSeVolume( spep_9 + 65, 1212, 29.94 );
setSeVolume( spep_9 + 66, 1212, 30.97 );
setSeVolume( spep_9 + 67, 1212, 32);
se_1227 = playSe( spep_9 + 13, 1227 );
setSeVolume( spep_9 + 13, 1227, 251 );
playSe( spep_9 + 23, 1022 );
setSeVolume( spep_9 + 23, 1022, 0 );
setSeVolume( spep_9 + 23, 1022, 0 );
setSeVolume( spep_9 + 24, 1022, 3.23 );
setSeVolume( spep_9 + 25, 1022, 6.45 );
setSeVolume( spep_9 + 26, 1022, 9.68 );
setSeVolume( spep_9 + 27, 1022, 12.9 );
setSeVolume( spep_9 + 28, 1022, 16.13 );
setSeVolume( spep_9 + 29, 1022, 19.35 );
setSeVolume( spep_9 + 30, 1022, 22.58 );
setSeVolume( spep_9 + 31, 1022, 25.81 );
setSeVolume( spep_9 + 32, 1022, 29.03 );
setSeVolume( spep_9 + 33, 1022, 32.26 );
setSeVolume( spep_9 + 34, 1022, 35.48 );
setSeVolume( spep_9 + 35, 1022, 38.71 );
setSeVolume( spep_9 + 36, 1022, 41.94 );
setSeVolume( spep_9 + 37, 1022, 45.16 );
setSeVolume( spep_9 + 38, 1022, 48.39 );
setSeVolume( spep_9 + 39, 1022, 51.61 );
setSeVolume( spep_9 + 40, 1022, 54.84 );
setSeVolume( spep_9 + 41, 1022, 58.06 );
setSeVolume( spep_9 + 42, 1022, 61.29 );
setSeVolume( spep_9 + 43, 1022, 64.52 );
setSeVolume( spep_9 + 44, 1022, 67.74 );
setSeVolume( spep_9 + 45, 1022, 70.97 );
setSeVolume( spep_9 + 46, 1022, 74.19 );
setSeVolume( spep_9 + 47, 1022, 77.42 );
setSeVolume( spep_9 + 48, 1022, 80.65 );
setSeVolume( spep_9 + 49, 1022, 83.87 );
setSeVolume( spep_9 + 50, 1022, 87.1 );
setSeVolume( spep_9 + 51, 1022, 90.32 );
setSeVolume( spep_9 + 52, 1022, 93.55 );
setSeVolume( spep_9 + 53, 1022, 96.77 );
setSeVolume( spep_9 + 54, 1022, 100 );

--白フェード
entryFade( spep_9 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 70;

------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru = entryEffect( spep_10 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, semaru, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, semaru, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, semaru, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, semaru, 0 );
setEffRotateKey( spep_10 + 56, semaru, 0 );
setEffAlphaKey( spep_10 + 0, semaru, 255 );
setEffAlphaKey( spep_10 + 56, semaru, 255 );
setEffAlphaKey( spep_10 + 57, semaru, 0 );
setEffAlphaKey( spep_10 + 58, semaru, 0 );

--SE
playSe( spep_10 + 55, 1021 );

-- ** くろ背景 ** --
entryFadeBg(   spep_10, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 140, finish_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 140, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 140, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 140, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_11 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 140, finish_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 140, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 140, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 140, finish_b, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
changeAnime( spep_11 + 0, 1, 103 );
changeAnime( spep_11-3 + 16, 1, 108 );

setBlendColor(spep_11+30,1,2,0,0,0,1);
setBlendColor(spep_11+128,1,2,0,0,0,0);

--setMoveKey( spep_11 + 0, 1, 77.7, -190.1 , 0 );
setMoveKey( spep_11-3 + 2, 1, 54.6, -173.6 , 0 );
setMoveKey( spep_11-3 + 4, 1, 38.6, -162.3 , 0 );
setMoveKey( spep_11-3 + 6, 1, 26.6, -153.8 , 0 );
setMoveKey( spep_11-3 + 8, 1, 17.2, -147.1 , 0 );
setMoveKey( spep_11-3 + 10, 1, 9.9, -141.9 , 0 );
setMoveKey( spep_11-3 + 12, 1, 4.2, -137.9 , 0 );
setMoveKey( spep_11-3 + 15, 1, 0, -134.9 , 0 );
setMoveKey( spep_11-3 + 16, 1, 2.4, -126.7 , 0 );
setMoveKey( spep_11-3 + 18, 1, 12.1, -135.3 , 0 );
setMoveKey( spep_11-3 + 20, 1, 33.6, -120.4 , 0 );
setMoveKey( spep_11-3 + 22, 1, 28.8, -134.7 , 0 );
setMoveKey( spep_11-3 + 24, 1, 12, -117.2 , 0 );
setMoveKey( spep_11-3 + 26, 1, 20.4, -146.3 , 0 );
setMoveKey( spep_11-3 + 28, 1, 34, -133.5 , 0 );
setMoveKey( spep_11-3 + 30, 1, 25.1, -135.3 , 0 );
setMoveKey( spep_11-3 + 32, 1, 49.7, -143.8 , 0 );
setMoveKey( spep_11-3 + 34, 1, 48.8, -137.1 , 0 );
setMoveKey( spep_11-3 + 36, 1, 46.3, -125.7 , 0 );
setMoveKey( spep_11-3 + 38, 1, 43.8, -114.4 , 0 );
setMoveKey( spep_11-3 + 40, 1, 49.9, -129.6 , 0 );
setMoveKey( spep_11-3 + 42, 1, 59.9, -116.2 , 0 );
setMoveKey( spep_11-3 + 44, 1, 42, -119.8 , 0 );
setMoveKey( spep_11-3 + 46, 1, 41.9, -130.4 , 0 );
setMoveKey( spep_11-3 + 48, 1, 51.1, -119.3 , 0 );
setMoveKey( spep_11-3 + 50, 1, 46.4, -114.5 , 0 );
setMoveKey( spep_11-3 + 52, 1, 47.8, -120.4 , 0 );
setMoveKey( spep_11-3 + 54, 1, 46.2, -121.7 , 0 );
setMoveKey( spep_11-3 + 56, 1, 50.8, -116.8 , 0 );
setMoveKey( spep_11-3 + 58, 1, 45.3, -112.7 , 0 );
setMoveKey( spep_11-3 + 60, 1, 44.4, -116.4 , 0 );
setMoveKey( spep_11-3 + 62, 1, 47.4, -113 , 0 );
setMoveKey( spep_11-3 + 64, 1, 42.7, -109.7 , 0 );
setMoveKey( spep_11-3 + 66, 1, 41.1, -111 , 0 );
setMoveKey( spep_11-3 + 68, 1, 39.5, -112.3 , 0 );
setMoveKey( spep_11-3 + 70, 1, 41.7, -109.8 , 0 );
setMoveKey( spep_11-3 + 72, 1, 43.9, -107.2 , 0 );
setMoveKey( spep_11-3 + 74, 1, 42.3, -105.4 , 0 );
setMoveKey( spep_11-3 + 76, 1, 40.7, -103.7 , 0 );
setMoveKey( spep_11-3 + 78, 1, 41.4, -103.4 , 0 );
setMoveKey( spep_11-3 + 80, 1, 42, -103.2 , 0 );
setMoveKey( spep_11-3 + 82, 1, 41.9, -101.4 , 0 );
setMoveKey( spep_11-3 + 84, 1, 41.9, -99.6 , 0 );
setMoveKey( spep_11-3 + 86, 1, 40.3, -100.9 , 0 );
setMoveKey( spep_11-3 + 88, 1, 38.6, -102.2 , 0 );
setMoveKey( spep_11-3 + 90, 1, 40.1, -101.3 , 0 );
setMoveKey( spep_11-3 + 92, 1, 41.5, -100.2 , 0 );
setMoveKey( spep_11-3 + 94, 1, 39.9, -98.5 , 0 );
setMoveKey( spep_11-3 + 96, 1, 38.3, -96.7 , 0 );
setMoveKey( spep_11-3 + 98, 1, 39.8, -97.2 , 0 );
setMoveKey( spep_11-3 + 100, 1, 41.2, -97.8 , 0 );
setMoveKey( spep_11-3 + 102, 1, 41.7, -96.5 , 0 );
setMoveKey( spep_11-3 + 104, 1, 42.1, -95.3 , 0 );
setMoveKey( spep_11-3 + 106, 1, 42.5, -94 , 0 );
setMoveKey( spep_11-3 + 108, 1, 42.8, -93 , 0 );
setMoveKey( spep_11-3 + 110, 1, 43.2, -92 , 0 );
setMoveKey( spep_11-3 + 112, 1, 43.5, -91 , 0 );
setMoveKey( spep_11-3 + 114, 1, 43.7, -90 , 0 );
setMoveKey( spep_11-3 + 116, 1, 43.7, -90.5 , 0 );
setMoveKey( spep_11-3 + 118, 1, 43.6, -91.1 , 0 );
setMoveKey( spep_11-3 + 120, 1, 43.5, -91.6 , 0 );
setMoveKey( spep_11-3 + 122, 1, 43.4, -92.2 , 0 );
setMoveKey( spep_11-3 + 124, 1, 43.3, -90.9 , 0 );
setMoveKey( spep_11-3 + 126, 1, 43.3, -89.7 , 0 );
setMoveKey( spep_11-3 + 128, 1, 43.2, -88.4 , 0 );
setMoveKey( spep_11-3 + 130, 1, 42.1, -87.7 , 0 );
setMoveKey( spep_11-3 + 132, 1, 41, -87 , 0 );
setMoveKey( spep_11-3 + 134, 1, 39.9, -86.2 , 0 );
setMoveKey( spep_11-3 + 136, 1, 39.8, -86.5 , 0 );
setMoveKey( spep_11-3 + 138, 1, 39.7, -86.8 , 0 );

setScaleKey( spep_11 + 0, 1, 1.28, 1.28 );
--setScaleKey( spep_11-3 + 2, 1, 1.3, 1.3 );
setScaleKey( spep_11-3 + 4, 1, 1.32, 1.32 );
setScaleKey( spep_11-3 + 6, 1, 1.33, 1.33 );
setScaleKey( spep_11-3 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_11-3 + 10, 1, 1.35, 1.35 );
setScaleKey( spep_11-3 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_11-3 + 15, 1, 1.36, 1.36 );
setScaleKey( spep_11-3 + 16, 1, 1.44, 1.44 );
setScaleKey( spep_11-3 + 138, 1, 1.44, 1.44 );

setRotateKey( spep_11 + 0, 1, 18 );
setRotateKey( spep_11-3 + 15, 1, 18 );
setRotateKey( spep_11-3 + 16, 1, 45.4 );
setRotateKey( spep_11-3 + 30, 1, 45.4 );
setRotateKey( spep_11-3 + 32, 1, 45 );
setRotateKey( spep_11-3 + 34, 1, 45.1 );
setRotateKey( spep_11-3 + 36, 1, 45.3 );
setRotateKey( spep_11-3 + 38, 1, 45.4 );
setRotateKey( spep_11-3 + 40, 1, 45.5 );
setRotateKey( spep_11-3 + 42, 1, 45.6 );
setRotateKey( spep_11-3 + 44, 1, 45.7 );
setRotateKey( spep_11-3 + 46, 1, 45.8 );
setRotateKey( spep_11-3 + 48, 1, 45.9 );
setRotateKey( spep_11-3 + 50, 1, 46 );
setRotateKey( spep_11-3 + 52, 1, 46.1 );
setRotateKey( spep_11-3 + 54, 1, 46.2 );
setRotateKey( spep_11-3 + 56, 1, 46.4 );
setRotateKey( spep_11-3 + 58, 1, 46.5 );
setRotateKey( spep_11-3 + 60, 1, 46.6 );
setRotateKey( spep_11-3 + 62, 1, 46.7 );
setRotateKey( spep_11-3 + 64, 1, 46.8 );
setRotateKey( spep_11-3 + 66, 1, 46.9 );
setRotateKey( spep_11-3 + 68, 1, 47 );
setRotateKey( spep_11-3 + 70, 1, 47.1 );
setRotateKey( spep_11-3 + 72, 1, 47.2 );
setRotateKey( spep_11-3 + 74, 1, 47.3 );
setRotateKey( spep_11-3 + 76, 1, 47.4 );
setRotateKey( spep_11-3 + 78, 1, 47.5 );
setRotateKey( spep_11-3 + 80, 1, 47.6 );
setRotateKey( spep_11-3 + 82, 1, 47.7 );
setRotateKey( spep_11-3 + 84, 1, 47.8 );
setRotateKey( spep_11-3 + 86, 1, 47.9 );
setRotateKey( spep_11-3 + 88, 1, 48 );
setRotateKey( spep_11-3 + 90, 1, 48.1 );
setRotateKey( spep_11-3 + 92, 1, 48.2 );
setRotateKey( spep_11-3 + 94, 1, 48.3 );
setRotateKey( spep_11-3 + 96, 1, 48.5 );
setRotateKey( spep_11-3 + 98, 1, 48.6 );
setRotateKey( spep_11-3 + 100, 1, 48.7 );
setRotateKey( spep_11-3 + 102, 1, 48.8 );
setRotateKey( spep_11-3 + 104, 1, 48.9 );
setRotateKey( spep_11-3 + 106, 1, 49 );
setRotateKey( spep_11-3 + 108, 1, 49.1 );
setRotateKey( spep_11-3 + 110, 1, 49.2 );
setRotateKey( spep_11-3 + 112, 1, 49.3 );
setRotateKey( spep_11-3 + 114, 1, 49.4 );
setRotateKey( spep_11-3 + 116, 1, 49.5 );
setRotateKey( spep_11-3 + 118, 1, 49.6 );
setRotateKey( spep_11-3 + 120, 1, 49.7 );
setRotateKey( spep_11-3 + 122, 1, 49.8 );
setRotateKey( spep_11-3 + 124, 1, 49.9 );
setRotateKey( spep_11-3 + 126, 1, 50 );
setRotateKey( spep_11-3 + 128, 1, 50.1 );
setRotateKey( spep_11-3 + 130, 1, 50.2 );
setRotateKey( spep_11-3 + 132, 1, 50.3 );
setRotateKey( spep_11-3 + 134, 1, 50.4 );
setRotateKey( spep_11-3 + 136, 1, 50.5 );
setRotateKey( spep_11-3 + 138, 1, 50.6 );

--白フェード
--entryFade( spep_11 + 32, 0, 100, 0, 150, 100, 0, 80 );  --white fade
entryFade( spep_11 + 28, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_11 + 2, 1032 );
setSeVolume( spep_11 + 2, 1032, 71 );
playSe( spep_11 + 18, 1023 );
setSeVolume( spep_11 + 18, 1023, 79 );
playSe( spep_11 + 18, 1159 );
setSeVolume( spep_11 + 18, 1159, 79 );

stopSe( spep_11 + 19, se_1227, 12 );

--黒フェード
entryFade( spep_11+124, 2,  16, 0, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

--終わり
dealDamage( spep_11+30  );
endPhase( spep_11 + 130 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
kamae = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, kamae, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, kamae, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 100, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 100, kamae, 255 );
setEffAlphaKey( spep_0 + 101, kamae, 0 );
setEffAlphaKey( spep_0 + 102, kamae, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 10,  906, 88, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 10, shuchusen1, 88, 20 );
setEffMoveKey( spep_0-3 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 10, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 98, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_0-3 + 10, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 98, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--敵の動き
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
--setAlphaKey( 0, 1, 255 );

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

--SE
playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 71 );
playSe( spep_0 + 22, 1018 );

--白フェード
entryFade( spep_0 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg(   spep_0, 0, 102, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;
------------------------------------------------------
-- 溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 90, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 90, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 90, tame, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_1, 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_1 + 2, 1003 );
playSe( spep_1 + 29, 49 );
setSeVolume( spep_1 + 29, 49, 63 );
se_1148 = playSe( spep_1 + 32, 1148 );
playSe( spep_1 + 54, 49 );
setSeVolume( spep_1 + 54, 49, 63 );
--playSe( spep_1 + 88, 1035 );

stopSe( spep_1 + 88, se_1148, 0 );

--白フェード
entryFade( spep_1 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 78, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- 放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 30, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_3 + 30, beam, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 30, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 30, beam, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_3, 0, 32, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_3 + 0, 1056 );

--白フェード
entryFade( spep_3 + 22, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 30;
------------------------------------------------------
-- 放つ（引き絵）
------------------------------------------------------
-- ** エフェクト等 ** --
beam2 = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam2, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, beam2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, beam2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam2, 0 );
setEffRotateKey( spep_4 + 76, beam2, 0 );
setEffAlphaKey( spep_4 + 0, beam2, 255 );
setEffAlphaKey( spep_4 + 74, beam2, 255 );
setEffAlphaKey( spep_4 + 75, beam2, 255 );
setEffAlphaKey( spep_4 + 76, beam2, 0 );

-- ** くろ背景 ** --
entryFadeBg(   spep_4, 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_4 + 11, 1022 );
SE1=playSe( spep_4 + 11, 1027 );
setSeVolume( spep_4 + 11, 1027, 79 );
SE2=playSe( spep_4 + 11, 1177 );
setSeVolume( spep_4 + 11, 1177, 0 );
setSeVolume( spep_4 + 24, 1177, 0 );
setSeVolume( spep_4 + 25, 1177, 2.63 );
setSeVolume( spep_4 + 26, 1177, 5.26 );
setSeVolume( spep_4 + 27, 1177, 7.89 );
setSeVolume( spep_4 + 28, 1177, 10.53 );
setSeVolume( spep_4 + 29, 1177, 13.16 );
setSeVolume( spep_4 + 30, 1177, 15.79 );
setSeVolume( spep_4 + 31, 1177, 18.42 );
setSeVolume( spep_4 + 32, 1177, 21.05 );
setSeVolume( spep_4 + 33, 1177, 23.68 );
setSeVolume( spep_4 + 34, 1177, 26.32 );
setSeVolume( spep_4 + 35, 1177, 28.95 );
setSeVolume( spep_4 + 36, 1177, 31.58 );
setSeVolume( spep_4 + 37, 1177, 34.21 );
setSeVolume( spep_4 + 38, 1177, 36.84 );
setSeVolume( spep_4 + 39, 1177, 39.47 );
setSeVolume( spep_4 + 40, 1177, 42.11 );
setSeVolume( spep_4 + 41, 1177, 44.74 );
setSeVolume( spep_4 + 42, 1177, 47.37 );
setSeVolume( spep_4 + 43, 1177, 50.00 );
setSeVolume( spep_4 + 44, 1177, 52.63 );
setSeVolume( spep_4 + 45, 1177, 55.26 );
setSeVolume( spep_4 + 46, 1177, 57.89 );
setSeVolume( spep_4 + 47, 1177, 60.53 );
setSeVolume( spep_4 + 48, 1177, 63.16 );
setSeVolume( spep_4 + 49, 1177, 65.79 );
setSeVolume( spep_4 + 50, 1177, 68.42 );
setSeVolume( spep_4 + 51, 1177, 71.05 );
setSeVolume( spep_4 + 52, 1177, 73.68 );
setSeVolume( spep_4 + 53, 1177, 76.32 );
setSeVolume( spep_4 + 54, 1177, 78.95 );
setSeVolume( spep_4 + 55, 1177, 81.58 );
setSeVolume( spep_4 + 56, 1177, 84.21 );
setSeVolume( spep_4 + 57, 1177, 86.84 );
setSeVolume( spep_4 + 58, 1177, 89.47 );
setSeVolume( spep_4 + 59, 1177, 92.11 );
setSeVolume( spep_4 + 60, 1177, 94.74 );
setSeVolume( spep_4 + 61, 1177, 97.37 );
setSeVolume( spep_4 + 62, 1177, 100 );
se_1124 = playSe( spep_4 + 11, 1124 );
setSeVolume( spep_4 + 11, 1124, 50 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 +50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1124, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--白フェード
--entryFade( spep_4 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

------------------------------------------------------
-- 気弾が空に上がる
------------------------------------------------------
-- ** エフェクト等 ** --
kaihi_f = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kaihi_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 50, kaihi_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kaihi_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, kaihi_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kaihi_f, 0 );
setEffRotateKey( spep_5 + 50, kaihi_f, 0 );
setEffAlphaKey( spep_5 + 0, kaihi_f, 255 );
setEffAlphaKey( spep_5 + 50, kaihi_f, 255 );
setEffAlphaKey( spep_5 + 51, kaihi_f, 0 );
setEffAlphaKey( spep_5 + 52, kaihi_f, 0 );

-- ** エフェクト等 ** --
kaihi_b = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kaihi_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 50, kaihi_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kaihi_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, kaihi_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kaihi_b, 0 );
setEffRotateKey( spep_5 + 50, kaihi_b, 0 );
setEffAlphaKey( spep_5 + 0, kaihi_b, 255 );
setEffAlphaKey( spep_5 + 50, kaihi_b, 255 );
setEffAlphaKey( spep_5 + 51, kaihi_b, 0 );
setEffAlphaKey( spep_5 + 52, kaihi_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 117 );
changeAnime( spep_5-3 + 28, 1, 103 );

setMoveKey( spep_5 + 0, 1, 198.2, -301 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 189, -296.2 , 0 );
setMoveKey( spep_5-3 + 4, 1, 193.7, -287.7 , 0 );
setMoveKey( spep_5-3 + 6, 1, 187.4, -280.1 , 0 );
setMoveKey( spep_5-3 + 8, 1, 183.5, -276.8 , 0 );
setMoveKey( spep_5-3 + 10, 1, 187.4, -281.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, 189.5, -282.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 195.6, -276.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 190.2, -266 , 0 );
setMoveKey( spep_5-3 + 18, 1, 188.8, -269.5 , 0 );
setMoveKey( spep_5-3 + 20, 1, 187.4, -265.4 , 0 );
setMoveKey( spep_5-3 + 22, 1, 188, -263.2 , 0 );
setMoveKey( spep_5-3 + 24, 1, 188.6, -253.5 , 0 );
setMoveKey( spep_5-3 + 27, 1, 185.5, -245.8 , 0 );
setMoveKey( spep_5-3 + 28, 1, 138.6, -228.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 72.6, -175 , 0 );
setMoveKey( spep_5-3 + 32, 1, 25, -137.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, -9.9, -107.6 , 0 );
setMoveKey( spep_5-3 + 36, 1, -50.2, -79.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, -82, -50.7 , 0 );
setMoveKey( spep_5-3 + 40, 1, -98.4, -37.2 , 0 );
setMoveKey( spep_5-3 + 42, 1, -126.8, -22.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, -136.9, -14.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, -159.7, 6.3 , 0 );
setMoveKey( spep_5-3 + 48, 1, -172.4, 10 , 0 );

setScaleKey( spep_5 + 0, 1, 0.82, 0.82 );
--setScaleKey( spep_5-3 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_5-3 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_5-3 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 8, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 10, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 12, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 14, 1, 0.91, 0.91 );
setScaleKey( spep_5-3 + 16, 1, 0.91, 0.91 );
setScaleKey( spep_5-3 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_5-3 + 20, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 22, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 24, 1, 0.94, 0.94 );
setScaleKey( spep_5-3 + 27, 1, 0.95, 0.95 );
setScaleKey( spep_5-3 + 28, 1, 0.95, 0.95 );
setScaleKey( spep_5-3 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_5-3 + 32, 1, 1, 1 );
setScaleKey( spep_5-3 + 34, 1, 1.02, 1.02 );
setScaleKey( spep_5-3 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_5-3 + 38, 1, 1.06, 1.06 );
setScaleKey( spep_5-3 + 40, 1, 1.07, 1.07 );
setScaleKey( spep_5-3 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_5-3 + 44, 1, 1.09, 1.09 );
setScaleKey( spep_5-3 + 46, 1, 1.1, 1.1 );
setScaleKey( spep_5-3 + 48, 1, 1.11, 1.11 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 27, 1, 0 );
setRotateKey( spep_5-3 + 28, 1, 18 );
setRotateKey( spep_5-3 + 48, 1, 18 );

-- ** くろ背景 ** --
entryFadeBg(   spep_5, 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 50;
------------------------------------------------------
-- 気弾を曲げる
------------------------------------------------------
-- ** エフェクト等 ** --
mageru = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, mageru, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, mageru, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, mageru, -1.0, 1.0 );
setEffScaleKey( spep_6 + 46, mageru, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, mageru, 0 );
setEffRotateKey( spep_6 + 46, mageru, 0 );
setEffAlphaKey( spep_6 + 0, mageru, 255 );
setEffAlphaKey( spep_6 + 46, mageru, 255 );
setEffAlphaKey( spep_6 + 47, mageru, 0 );
setEffAlphaKey( spep_6 + 48, mageru, 0 );

--SE
playSe( spep_6 + 15, 1004 );

--白フェード
--entryFade( spep_6 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg(   spep_6, 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景
-- ** 次の準備 ** --
spep_7 = spep_6 + 46;
------------------------------------------------------
-- 気弾が空に上がる
------------------------------------------------------
-- ** エフェクト等 ** --
up = entryEffect( spep_7 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, up, 0, 0, 0 );
setEffMoveKey( spep_7 + 64, up, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, up, 1.0, 1.0 );
setEffScaleKey( spep_7 + 64, up, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, up, 0 );
setEffRotateKey( spep_7 + 64, up, 0 );
setEffAlphaKey( spep_7 + 0, up, 255 );
setEffAlphaKey( spep_7 + 64, up, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_7, 0, 66, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
se_1184 = playSe( spep_7 + 3, 1184 );
setSeVolume( spep_7 + 3, 1184, 40 );
se_1035 = playSe( spep_7 + 5, 1035 );
se_1116 = playSe( spep_7 + 14, 1116 );
playSe( spep_7 + 14, 1179 );
setSeVolume( spep_7 + 14, 1179, 63 );
playSe( spep_7 + 29, 1202 );
playSe( spep_7 + 30, 44 );
setSeVolume( spep_7 + 30, 44, 89 );

stopSe( spep_7 + 39, se_1124, 0 );
stopSe( spep_7 + 32, se_1184, 34 );
stopSe( spep_7 + 36, se_1035, 25 );
stopSe( spep_7 + 43, se_1116, 28 );

--白フェード
entryFade( spep_7 + 56, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 64;
------------------------------------------------------
-- キャラアップ絵
------------------------------------------------------
-- ** エフェクト等 ** --
character = entryEffect( spep_8 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, character, 0, 0, 0 );
setEffMoveKey( spep_8 + 60, character, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, character, -1.0, 1.0 );
setEffScaleKey( spep_8 + 60, character, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, character, 0 );
setEffRotateKey( spep_8 + 60, character, 0 );
setEffAlphaKey( spep_8 + 0, character, 255 );
setEffAlphaKey( spep_8 + 60, character, 255 );

--白フェード
entryFade( spep_8 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_8 + 23, 1003 );
se_1187 = playSe( spep_8 + 23, 1187 );
setSeVolume( spep_8 + 23, 1187, 0 );
setSeVolume( spep_8 + 26, 1187, 0 );
setSeVolume( spep_8 + 27, 1187, 7.89 );
setSeVolume( spep_8 + 28, 1187, 15.78 );
setSeVolume( spep_8 + 29, 1187, 23.67 );
setSeVolume( spep_8 + 30, 1187, 31.56 );
setSeVolume( spep_8 + 31, 1187, 39.44 );
setSeVolume( spep_8 + 32, 1187, 47.33 );
setSeVolume( spep_8 + 33, 1187, 55.22 );
setSeVolume( spep_8 + 34, 1187, 63.11 );
setSeVolume( spep_8 + 35, 1187, 71 );
playSe( spep_8 + 27, 1004 );
setSeVolume( spep_8 + 27, 1004, 89 );
playSe( spep_8 + 27, 1232 );
setSeVolume( spep_8 + 27, 1232, 89 );
playSe( spep_8 + 27, 1033 );
setSeVolume( spep_8 + 27, 1033, 89 );

stopSe( spep_8 + 56, se_1187, 38 );

-- ** くろ背景 ** --
entryFadeBg(   spep_8, 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 60;

------------------------------------------------------
-- 気弾が拡散する
------------------------------------------------------
-- ** エフェクト等 ** --
kakusan = entryEffect( spep_9 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kakusan, 0, 0, 0 );
setEffMoveKey( spep_9 + 70, kakusan, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kakusan, 1.0, 1.0 );
setEffScaleKey( spep_9 + 70, kakusan, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kakusan, 0 );
setEffRotateKey( spep_9 + 70, kakusan, 0 );
setEffAlphaKey( spep_9 + 0, kakusan, 255 );
setEffAlphaKey( spep_9 + 70, kakusan, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_9, 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_9 + 3, 1021 );
playSe( spep_9 + 3, 1046 );
playSe( spep_9 + 4, 1062 );
setSeVolume( spep_9 + 4, 1062, 79 );
playSe( spep_9 + 13, 1212 );
setSeVolume( spep_9 + 13, 1212, 0 );
setSeVolume( spep_9 + 36, 1212, 0 );
setSeVolume( spep_9 + 37, 1212, 1.03 );
setSeVolume( spep_9 + 38, 1212, 2.06 );
setSeVolume( spep_9 + 39, 1212, 3.1 );
setSeVolume( spep_9 + 40, 1212, 4.13 );
setSeVolume( spep_9 + 41, 1212, 5.16 );
setSeVolume( spep_9 + 42, 1212, 6.19 );
setSeVolume( spep_9 + 43, 1212, 7.23 );
setSeVolume( spep_9 + 44, 1212, 8.26 );
setSeVolume( spep_9 + 45, 1212, 9.29 );
setSeVolume( spep_9 + 46, 1212, 10.32 );
setSeVolume( spep_9 + 47, 1212, 11.35 );
setSeVolume( spep_9 + 48, 1212, 12.39 );
setSeVolume( spep_9 + 49, 1212, 13.42 );
setSeVolume( spep_9 + 50, 1212, 14.45 );
setSeVolume( spep_9 + 51, 1212, 15.48 );
setSeVolume( spep_9 + 52, 1212, 16.52 );
setSeVolume( spep_9 + 53, 1212, 17.55 );
setSeVolume( spep_9 + 54, 1212, 18.58 );
setSeVolume( spep_9 + 55, 1212, 19.61 );
setSeVolume( spep_9 + 56, 1212, 20.65 );
setSeVolume( spep_9 + 57, 1212, 21.68 );
setSeVolume( spep_9 + 58, 1212, 22.71 );
setSeVolume( spep_9 + 59, 1212, 23.74 );
setSeVolume( spep_9 + 60, 1212, 24.77 );
setSeVolume( spep_9 + 61, 1212, 25.81 );
setSeVolume( spep_9 + 62, 1212, 26.84 );
setSeVolume( spep_9 + 63, 1212, 27.87 );
setSeVolume( spep_9 + 64, 1212, 28.9 );
setSeVolume( spep_9 + 65, 1212, 29.94 );
setSeVolume( spep_9 + 66, 1212, 30.97 );
setSeVolume( spep_9 + 67, 1212, 32);
se_1227 = playSe( spep_9 + 13, 1227 );
setSeVolume( spep_9 + 13, 1227, 251 );
playSe( spep_9 + 23, 1022 );
setSeVolume( spep_9 + 23, 1022, 0 );
setSeVolume( spep_9 + 23, 1022, 0 );
setSeVolume( spep_9 + 24, 1022, 3.23 );
setSeVolume( spep_9 + 25, 1022, 6.45 );
setSeVolume( spep_9 + 26, 1022, 9.68 );
setSeVolume( spep_9 + 27, 1022, 12.9 );
setSeVolume( spep_9 + 28, 1022, 16.13 );
setSeVolume( spep_9 + 29, 1022, 19.35 );
setSeVolume( spep_9 + 30, 1022, 22.58 );
setSeVolume( spep_9 + 31, 1022, 25.81 );
setSeVolume( spep_9 + 32, 1022, 29.03 );
setSeVolume( spep_9 + 33, 1022, 32.26 );
setSeVolume( spep_9 + 34, 1022, 35.48 );
setSeVolume( spep_9 + 35, 1022, 38.71 );
setSeVolume( spep_9 + 36, 1022, 41.94 );
setSeVolume( spep_9 + 37, 1022, 45.16 );
setSeVolume( spep_9 + 38, 1022, 48.39 );
setSeVolume( spep_9 + 39, 1022, 51.61 );
setSeVolume( spep_9 + 40, 1022, 54.84 );
setSeVolume( spep_9 + 41, 1022, 58.06 );
setSeVolume( spep_9 + 42, 1022, 61.29 );
setSeVolume( spep_9 + 43, 1022, 64.52 );
setSeVolume( spep_9 + 44, 1022, 67.74 );
setSeVolume( spep_9 + 45, 1022, 70.97 );
setSeVolume( spep_9 + 46, 1022, 74.19 );
setSeVolume( spep_9 + 47, 1022, 77.42 );
setSeVolume( spep_9 + 48, 1022, 80.65 );
setSeVolume( spep_9 + 49, 1022, 83.87 );
setSeVolume( spep_9 + 50, 1022, 87.1 );
setSeVolume( spep_9 + 51, 1022, 90.32 );
setSeVolume( spep_9 + 52, 1022, 93.55 );
setSeVolume( spep_9 + 53, 1022, 96.77 );
setSeVolume( spep_9 + 54, 1022, 100 );

--白フェード
entryFade( spep_9 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 70;

------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru = entryEffect( spep_10 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, semaru, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, semaru, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, semaru, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, semaru, 0 );
setEffRotateKey( spep_10 + 56, semaru, 0 );
setEffAlphaKey( spep_10 + 0, semaru, 255 );
setEffAlphaKey( spep_10 + 56, semaru, 255 );
setEffAlphaKey( spep_10 + 57, semaru, 0 );
setEffAlphaKey( spep_10 + 58, semaru, 0 );

--SE
playSe( spep_10 + 55, 1021 );

-- ** くろ背景 ** --
entryFadeBg(   spep_10, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 140, finish_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 140, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 140, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 140, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_11 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 140, finish_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 140, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 140, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 140, finish_b, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
changeAnime( spep_11 + 0, 1, 103 );
changeAnime( spep_11-3 + 16, 1, 108 );

setBlendColor(spep_11+30,1,2,0,0,0,1);
setBlendColor(spep_11+128,1,2,0,0,0,0);

--setMoveKey( spep_11 + 0, 1, 77.7, -190.1 , 0 );
setMoveKey( spep_11-3 + 2, 1, 54.6, -173.6 , 0 );
setMoveKey( spep_11-3 + 4, 1, 38.6, -162.3 , 0 );
setMoveKey( spep_11-3 + 6, 1, 26.6, -153.8 , 0 );
setMoveKey( spep_11-3 + 8, 1, 17.2, -147.1 , 0 );
setMoveKey( spep_11-3 + 10, 1, 9.9, -141.9 , 0 );
setMoveKey( spep_11-3 + 12, 1, 4.2, -137.9 , 0 );
setMoveKey( spep_11-3 + 15, 1, 0, -134.9 , 0 );
setMoveKey( spep_11-3 + 16, 1, 2.4, -126.7 , 0 );
setMoveKey( spep_11-3 + 18, 1, 12.1, -135.3 , 0 );
setMoveKey( spep_11-3 + 20, 1, 33.6, -120.4 , 0 );
setMoveKey( spep_11-3 + 22, 1, 28.8, -134.7 , 0 );
setMoveKey( spep_11-3 + 24, 1, 12, -117.2 , 0 );
setMoveKey( spep_11-3 + 26, 1, 20.4, -146.3 , 0 );
setMoveKey( spep_11-3 + 28, 1, 34, -133.5 , 0 );
setMoveKey( spep_11-3 + 30, 1, 25.1, -135.3 , 0 );
setMoveKey( spep_11-3 + 32, 1, 49.7, -143.8 , 0 );
setMoveKey( spep_11-3 + 34, 1, 48.8, -137.1 , 0 );
setMoveKey( spep_11-3 + 36, 1, 46.3, -125.7 , 0 );
setMoveKey( spep_11-3 + 38, 1, 43.8, -114.4 , 0 );
setMoveKey( spep_11-3 + 40, 1, 49.9, -129.6 , 0 );
setMoveKey( spep_11-3 + 42, 1, 59.9, -116.2 , 0 );
setMoveKey( spep_11-3 + 44, 1, 42, -119.8 , 0 );
setMoveKey( spep_11-3 + 46, 1, 41.9, -130.4 , 0 );
setMoveKey( spep_11-3 + 48, 1, 51.1, -119.3 , 0 );
setMoveKey( spep_11-3 + 50, 1, 46.4, -114.5 , 0 );
setMoveKey( spep_11-3 + 52, 1, 47.8, -120.4 , 0 );
setMoveKey( spep_11-3 + 54, 1, 46.2, -121.7 , 0 );
setMoveKey( spep_11-3 + 56, 1, 50.8, -116.8 , 0 );
setMoveKey( spep_11-3 + 58, 1, 45.3, -112.7 , 0 );
setMoveKey( spep_11-3 + 60, 1, 44.4, -116.4 , 0 );
setMoveKey( spep_11-3 + 62, 1, 47.4, -113 , 0 );
setMoveKey( spep_11-3 + 64, 1, 42.7, -109.7 , 0 );
setMoveKey( spep_11-3 + 66, 1, 41.1, -111 , 0 );
setMoveKey( spep_11-3 + 68, 1, 39.5, -112.3 , 0 );
setMoveKey( spep_11-3 + 70, 1, 41.7, -109.8 , 0 );
setMoveKey( spep_11-3 + 72, 1, 43.9, -107.2 , 0 );
setMoveKey( spep_11-3 + 74, 1, 42.3, -105.4 , 0 );
setMoveKey( spep_11-3 + 76, 1, 40.7, -103.7 , 0 );
setMoveKey( spep_11-3 + 78, 1, 41.4, -103.4 , 0 );
setMoveKey( spep_11-3 + 80, 1, 42, -103.2 , 0 );
setMoveKey( spep_11-3 + 82, 1, 41.9, -101.4 , 0 );
setMoveKey( spep_11-3 + 84, 1, 41.9, -99.6 , 0 );
setMoveKey( spep_11-3 + 86, 1, 40.3, -100.9 , 0 );
setMoveKey( spep_11-3 + 88, 1, 38.6, -102.2 , 0 );
setMoveKey( spep_11-3 + 90, 1, 40.1, -101.3 , 0 );
setMoveKey( spep_11-3 + 92, 1, 41.5, -100.2 , 0 );
setMoveKey( spep_11-3 + 94, 1, 39.9, -98.5 , 0 );
setMoveKey( spep_11-3 + 96, 1, 38.3, -96.7 , 0 );
setMoveKey( spep_11-3 + 98, 1, 39.8, -97.2 , 0 );
setMoveKey( spep_11-3 + 100, 1, 41.2, -97.8 , 0 );
setMoveKey( spep_11-3 + 102, 1, 41.7, -96.5 , 0 );
setMoveKey( spep_11-3 + 104, 1, 42.1, -95.3 , 0 );
setMoveKey( spep_11-3 + 106, 1, 42.5, -94 , 0 );
setMoveKey( spep_11-3 + 108, 1, 42.8, -93 , 0 );
setMoveKey( spep_11-3 + 110, 1, 43.2, -92 , 0 );
setMoveKey( spep_11-3 + 112, 1, 43.5, -91 , 0 );
setMoveKey( spep_11-3 + 114, 1, 43.7, -90 , 0 );
setMoveKey( spep_11-3 + 116, 1, 43.7, -90.5 , 0 );
setMoveKey( spep_11-3 + 118, 1, 43.6, -91.1 , 0 );
setMoveKey( spep_11-3 + 120, 1, 43.5, -91.6 , 0 );
setMoveKey( spep_11-3 + 122, 1, 43.4, -92.2 , 0 );
setMoveKey( spep_11-3 + 124, 1, 43.3, -90.9 , 0 );
setMoveKey( spep_11-3 + 126, 1, 43.3, -89.7 , 0 );
setMoveKey( spep_11-3 + 128, 1, 43.2, -88.4 , 0 );
setMoveKey( spep_11-3 + 130, 1, 42.1, -87.7 , 0 );
setMoveKey( spep_11-3 + 132, 1, 41, -87 , 0 );
setMoveKey( spep_11-3 + 134, 1, 39.9, -86.2 , 0 );
setMoveKey( spep_11-3 + 136, 1, 39.8, -86.5 , 0 );
setMoveKey( spep_11-3 + 138, 1, 39.7, -86.8 , 0 );

setScaleKey( spep_11 + 0, 1, 1.28, 1.28 );
--setScaleKey( spep_11-3 + 2, 1, 1.3, 1.3 );
setScaleKey( spep_11-3 + 4, 1, 1.32, 1.32 );
setScaleKey( spep_11-3 + 6, 1, 1.33, 1.33 );
setScaleKey( spep_11-3 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_11-3 + 10, 1, 1.35, 1.35 );
setScaleKey( spep_11-3 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_11-3 + 15, 1, 1.36, 1.36 );
setScaleKey( spep_11-3 + 16, 1, 1.44, 1.44 );
setScaleKey( spep_11-3 + 138, 1, 1.44, 1.44 );

setRotateKey( spep_11 + 0, 1, 18 );
setRotateKey( spep_11-3 + 15, 1, 18 );
setRotateKey( spep_11-3 + 16, 1, 45.4 );
setRotateKey( spep_11-3 + 30, 1, 45.4 );
setRotateKey( spep_11-3 + 32, 1, 45 );
setRotateKey( spep_11-3 + 34, 1, 45.1 );
setRotateKey( spep_11-3 + 36, 1, 45.3 );
setRotateKey( spep_11-3 + 38, 1, 45.4 );
setRotateKey( spep_11-3 + 40, 1, 45.5 );
setRotateKey( spep_11-3 + 42, 1, 45.6 );
setRotateKey( spep_11-3 + 44, 1, 45.7 );
setRotateKey( spep_11-3 + 46, 1, 45.8 );
setRotateKey( spep_11-3 + 48, 1, 45.9 );
setRotateKey( spep_11-3 + 50, 1, 46 );
setRotateKey( spep_11-3 + 52, 1, 46.1 );
setRotateKey( spep_11-3 + 54, 1, 46.2 );
setRotateKey( spep_11-3 + 56, 1, 46.4 );
setRotateKey( spep_11-3 + 58, 1, 46.5 );
setRotateKey( spep_11-3 + 60, 1, 46.6 );
setRotateKey( spep_11-3 + 62, 1, 46.7 );
setRotateKey( spep_11-3 + 64, 1, 46.8 );
setRotateKey( spep_11-3 + 66, 1, 46.9 );
setRotateKey( spep_11-3 + 68, 1, 47 );
setRotateKey( spep_11-3 + 70, 1, 47.1 );
setRotateKey( spep_11-3 + 72, 1, 47.2 );
setRotateKey( spep_11-3 + 74, 1, 47.3 );
setRotateKey( spep_11-3 + 76, 1, 47.4 );
setRotateKey( spep_11-3 + 78, 1, 47.5 );
setRotateKey( spep_11-3 + 80, 1, 47.6 );
setRotateKey( spep_11-3 + 82, 1, 47.7 );
setRotateKey( spep_11-3 + 84, 1, 47.8 );
setRotateKey( spep_11-3 + 86, 1, 47.9 );
setRotateKey( spep_11-3 + 88, 1, 48 );
setRotateKey( spep_11-3 + 90, 1, 48.1 );
setRotateKey( spep_11-3 + 92, 1, 48.2 );
setRotateKey( spep_11-3 + 94, 1, 48.3 );
setRotateKey( spep_11-3 + 96, 1, 48.5 );
setRotateKey( spep_11-3 + 98, 1, 48.6 );
setRotateKey( spep_11-3 + 100, 1, 48.7 );
setRotateKey( spep_11-3 + 102, 1, 48.8 );
setRotateKey( spep_11-3 + 104, 1, 48.9 );
setRotateKey( spep_11-3 + 106, 1, 49 );
setRotateKey( spep_11-3 + 108, 1, 49.1 );
setRotateKey( spep_11-3 + 110, 1, 49.2 );
setRotateKey( spep_11-3 + 112, 1, 49.3 );
setRotateKey( spep_11-3 + 114, 1, 49.4 );
setRotateKey( spep_11-3 + 116, 1, 49.5 );
setRotateKey( spep_11-3 + 118, 1, 49.6 );
setRotateKey( spep_11-3 + 120, 1, 49.7 );
setRotateKey( spep_11-3 + 122, 1, 49.8 );
setRotateKey( spep_11-3 + 124, 1, 49.9 );
setRotateKey( spep_11-3 + 126, 1, 50 );
setRotateKey( spep_11-3 + 128, 1, 50.1 );
setRotateKey( spep_11-3 + 130, 1, 50.2 );
setRotateKey( spep_11-3 + 132, 1, 50.3 );
setRotateKey( spep_11-3 + 134, 1, 50.4 );
setRotateKey( spep_11-3 + 136, 1, 50.5 );
setRotateKey( spep_11-3 + 138, 1, 50.6 );

--白フェード
entryFade( spep_11 + 28, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_11 + 2, 1032 );
setSeVolume( spep_11 + 2, 1032, 71 );
playSe( spep_11 + 18, 1023 );
setSeVolume( spep_11 + 18, 1023, 79 );
playSe( spep_11 + 18, 1159 );
setSeVolume( spep_11 + 18, 1159, 79 );

stopSe( spep_11 + 19, se_1227, 12 );

--黒フェード
entryFade( spep_11+124, 2,  16, 0, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

--終わり
dealDamage( spep_11+30  );
endPhase( spep_11 + 130 );
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

-- ** エフェクト等 ** --
finish2_f = entryEffect( spep_z + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, finish2_f, 0, 0, 0 );
setEffMoveKey( spep_z + 180, finish2_f, 0, 0, 0 );
setEffScaleKey( spep_z + 0, finish2_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 180, finish2_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish2_f, 0 );
setEffRotateKey( spep_z + 180, finish2_f, 0 );
setEffAlphaKey( spep_z + 0, finish2_f, 255 );
setEffAlphaKey( spep_z + 180, finish2_f, 255 );

-- ** エフェクト等 ** --
finish2_b = entryEffect( spep_z + 0, SP_15, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, finish2_b, 0, 0, 0 );
setEffMoveKey( spep_z + 180, finish2_b, 0, 0, 0 );
setEffScaleKey( spep_z + 0, finish2_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 180, finish2_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish2_b, 0 );
setEffRotateKey( spep_z + 180, finish2_b, 0 );
setEffAlphaKey( spep_z + 0, finish2_b, 255 );
setEffAlphaKey( spep_z + 180, finish2_b, 255 );


--敵の動き
setDisp( spep_z + 0, 1, 1 );

setBlendColor(spep_z+20,1,2,0,0,0,1);
setBlendColor(spep_z+86,1,2,0,0,0,0);

changeAnime( spep_z + 0, 1, 104 );
changeAnime( spep_z-3 + 22, 1, 106 );

setMoveKey( spep_z + 0, 1, 25.5, -281.9 , 0 );
setMoveKey( spep_z + 1, 1, 25.5, -281.9 , 0 );
setMoveKey( spep_z + 2, 1, 25.5, -281.9 , 0 );
setMoveKey( spep_z + 3, 1, 25.5, -281.9 , 0 );
setMoveKey( spep_z + 4, 1, 25.5, -281.9 , 0 );
setMoveKey( spep_z + 5, 1, 25.5, -281.9 , 0 );
setMoveKey( spep_z-3 + 21, 1, 25.5, -281.9 , 0 );
setMoveKey( spep_z-3 + 22, 1, 3.9, -172.8 , 0 );
setMoveKey( spep_z-3 + 24, 1, -28.7, -186 , 0 );
setMoveKey( spep_z-3 + 26, 1, -0.9, -181.3 , 0 );
setMoveKey( spep_z-3 + 28, 1, -25.1, -135.2 , 0 );
setMoveKey( spep_z-3 + 30, 1, -1.9, -146.5 , 0 );
setMoveKey( spep_z-3 + 32, 1, -18.9, -106.6 , 0 );
setMoveKey( spep_z-3 + 34, 1, -6.3, -127.6 , 0 );
setMoveKey( spep_z-3 + 36, 1, -1.3, -107.4 , 0 );
setMoveKey( spep_z-3 + 38, 1, -18.8, -127.2 , 0 );
setMoveKey( spep_z-3 + 40, 1, -13.8, -118.2 , 0 );
setMoveKey( spep_z-3 + 42, 1, -8.8, -109.3 , 0 );
setMoveKey( spep_z-3 + 44, 1, -12.5, -115.3 , 0 );
setMoveKey( spep_z-3 + 46, 1, -16.3, -121.3 , 0 );
setMoveKey( spep_z-3 + 48, 1, -8.8, -121 , 0 );
setMoveKey( spep_z-3 + 50, 1, -1.3, -120.8 , 0 );
setMoveKey( spep_z-3 + 52, 1, -8.8, -115.6 , 0 );
setMoveKey( spep_z-3 + 54, 1, -16.3, -110.4 , 0 );
setMoveKey( spep_z-3 + 56, 1, -13.8, -113.9 , 0 );
setMoveKey( spep_z-3 + 58, 1, -11.3, -117.5 , 0 );
setMoveKey( spep_z-3 + 60, 1, -13.8, -114.7 , 0 );
setMoveKey( spep_z-3 + 62, 1, -16.3, -112 , 0 );
setMoveKey( spep_z-3 + 64, 1, -11.3, -110.5 , 0 );
setMoveKey( spep_z-3 + 66, 1, -6.3, -109.1 , 0 );
setMoveKey( spep_z-3 + 68, 1, -10, -112.6 , 0 );
setMoveKey( spep_z-3 + 70, 1, -13.8, -116.1 , 0 );
setMoveKey( spep_z-3 + 72, 1, -11.3, -113.4 , 0 );
setMoveKey( spep_z-3 + 74, 1, -8.8, -110.7 , 0 );
setMoveKey( spep_z-3 + 76, 1, -12.5, -109.2 , 0 );
setMoveKey( spep_z-3 + 78, 1, -16.3, -107.7 , 0 );
setMoveKey( spep_z-3 + 80, 1, -11.3, -112.5 , 0 );
setMoveKey( spep_z-3 + 82, 1, -6.3, -117.2 , 0 );
setMoveKey( spep_z-3 + 84, 1, -10, -114.5 , 0 );
setMoveKey( spep_z-3 + 86, 1, -13.8, -111.8 , 0 );
setMoveKey( spep_z-3 + 88, 1, -12.5, -109.1 , 0 );
setMoveKey( spep_z-3 + 90, 1, -11.3, -106.4 , 0 );
setMoveKey( spep_z-3 + 92, 1, -12.9, -107.8 , 0 );
setMoveKey( spep_z-3 + 94, 1, -14.6, -109.2 , 0 );
setMoveKey( spep_z-3 + 96, 1, -16.3, -110.7 , 0 );
setMoveKey( spep_z-3 + 98, 1, -12.9, -111.3 , 0 );
setMoveKey( spep_z-3 + 100, 1, -9.6, -111.9 , 0 );
setMoveKey( spep_z-3 + 102, 1, -6.3, -112.5 , 0 );
setMoveKey( spep_z-3 + 104, 1, -8, -112.3 , 0 );
setMoveKey( spep_z-3 + 106, 1, -9.6, -112 , 0 );
setMoveKey( spep_z-3 + 108, 1, -11.3, -111.8 , 0 );
setMoveKey( spep_z-3 + 110, 1, -9.6, -109.9 , 0 );
setMoveKey( spep_z-3 + 112, 1, -8, -108 , 0 );
setMoveKey( spep_z-3 + 114, 1, -6.3, -106.1 , 0 );
setMoveKey( spep_z-3 + 116, 1, -7.7, -108.8 , 0 );
setMoveKey( spep_z-3 + 118, 1, -9.1, -111.4 , 0 );
setMoveKey( spep_z + 170, 1, -9.1, -111.4 , 0 );

setScaleKey( spep_z + 0, 1, 1.6, 1.6 );
setScaleKey( spep_z + 1, 1, 1.6, 1.6 );
setScaleKey( spep_z + 2, 1, 1.6, 1.6 );
setScaleKey( spep_z + 3, 1, 1.6, 1.6 );
setScaleKey( spep_z + 4, 1, 1.6, 1.6 );
setScaleKey( spep_z + 5, 1, 1.6, 1.6 );
setScaleKey( spep_z-3 + 21, 1, 1.6, 1.6 );
setScaleKey( spep_z-3 + 22, 1, 1.44, 1.44 );
setScaleKey( spep_z + 170, 1, 1.44, 1.44 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 1, 1, 0 );
setRotateKey( spep_z + 2, 1, 0 );
setRotateKey( spep_z + 3, 1, 0 );
setRotateKey( spep_z + 4, 1, 0 );
setRotateKey( spep_z + 5, 1, 0 );
setRotateKey( spep_z-3 + 21, 1, 0 );
setRotateKey( spep_z-3 + 22, 1, -29.1 );
setRotateKey( spep_z-3 + 32, 1, -29.1 );
setRotateKey( spep_z-3 + 34, 1, -29 );
setRotateKey( spep_z-3 + 36, 1, -28.9 );
setRotateKey( spep_z-3 + 38, 1, -28.8 );
setRotateKey( spep_z-3 + 40, 1, -28.7 );
setRotateKey( spep_z-3 + 42, 1, -28.6 );
setRotateKey( spep_z-3 + 44, 1, -28.5 );
setRotateKey( spep_z-3 + 46, 1, -28.4 );
setRotateKey( spep_z-3 + 48, 1, -28.4 );
setRotateKey( spep_z-3 + 50, 1, -28.3 );
setRotateKey( spep_z-3 + 52, 1, -28.2 );
setRotateKey( spep_z-3 + 54, 1, -28.1 );
setRotateKey( spep_z-3 + 56, 1, -28 );
setRotateKey( spep_z-3 + 58, 1, -27.9 );
setRotateKey( spep_z-3 + 60, 1, -27.8 );
setRotateKey( spep_z-3 + 62, 1, -27.7 );
setRotateKey( spep_z-3 + 64, 1, -27.7 );
setRotateKey( spep_z-3 + 66, 1, -27.6 );
setRotateKey( spep_z-3 + 68, 1, -27.5 );
setRotateKey( spep_z-3 + 70, 1, -27.4 );
setRotateKey( spep_z-3 + 72, 1, -27.3 );
setRotateKey( spep_z-3 + 74, 1, -27.2 );
setRotateKey( spep_z-3 + 76, 1, -27.1 );
setRotateKey( spep_z-3 + 78, 1, -27 );
setRotateKey( spep_z-3 + 80, 1, -26.9 );
setRotateKey( spep_z-3 + 82, 1, -26.9 );
setRotateKey( spep_z-3 + 84, 1, -26.8 );
setRotateKey( spep_z-3 + 86, 1, -26.7 );
setRotateKey( spep_z-3 + 88, 1, -26.6 );
setRotateKey( spep_z-3 + 90, 1, -26.5 );
setRotateKey( spep_z-3 + 92, 1, -26.4 );
setRotateKey( spep_z-3 + 94, 1, -26.3 );
setRotateKey( spep_z-3 + 96, 1, -26.2 );
setRotateKey( spep_z-3 + 98, 1, -26.2 );
setRotateKey( spep_z-3 + 100, 1, -26.1 );
setRotateKey( spep_z-3 + 102, 1, -26 );
setRotateKey( spep_z-3 + 104, 1, -25.9 );
setRotateKey( spep_z-3 + 106, 1, -25.8 );
setRotateKey( spep_z-3 + 108, 1, -25.7 );
setRotateKey( spep_z-3 + 110, 1, -25.6 );
setRotateKey( spep_z-3 + 112, 1, -25.5 );
setRotateKey( spep_z-3 + 114, 1, -25.5 );
setRotateKey( spep_z-3 + 116, 1, -25.4 );
setRotateKey( spep_z + 170, 1, -25.3 );

--SE
playSe( spep_z + 0, 1046 );
playSe( spep_z + 0, 1021 );
playSe( spep_z + 18, 1032 );
playSe( spep_z + 34, 1023 );
playSe( spep_z + 34, 1159 );

-- ダメージ表示
dealDamage(spep_z+22);

--白フェード
entryFade( spep_z + 18, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

entryFade( spep_z+78, 4,  16, 0, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

endPhase(spep_z+94);

end
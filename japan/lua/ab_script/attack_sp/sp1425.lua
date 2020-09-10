--1019400:ナッパ/ベジータ_ジャイアントストーム
--sp_effect_a7_00033

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
SP_01=	155241	;--	気為→足→気を纏う
SP_02=	155242	;--	指先を上げる
SP_03=	155243	;--	爆発
SP_04=	155244	;--	爆発
SP_05=	155245	;--	敵吹っ飛び
SP_06=	155246	;--	敵吹っ飛び
SP_07=	155247	;--	敵画面に激突
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

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
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気為→足→気を纏う
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 220, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 220, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 220, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 220, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 , 190006, 94, 0x100, -1, 0, 0, 410);-- ゴゴゴゴ

setEffMoveKey(  spep_0 ,  ctgogo,  0,  410);
setEffMoveKey(  spep_0 +84,  ctgogo,  0,  410);
setEffMoveKey(  spep_0 +94,  ctgogo,  0,  490);

setEffAlphaKey( spep_0 + 0, ctgogo, 26 );
setEffAlphaKey( spep_0 + 2, ctgogo, 102 );
setEffAlphaKey( spep_0 + 4, ctgogo, 179 );
setEffAlphaKey( spep_0 + 6, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 191 );
setEffAlphaKey( spep_0 + 92, ctgogo, 112 );
setEffAlphaKey( spep_0 + 94, ctgogo, 64 );

setEffRotateKey(  spep_0 ,  ctgogo,  0);
setEffRotateKey(  spep_0 +94,  ctgogo,  0);

setEffScaleKey(  spep_0 ,  ctgogo,  1.1,  1.1);
setEffScaleKey(  spep_0 +84,  ctgogo,  1.1,  1.1);
setEffScaleKey(  spep_0 +94,  ctgogo, 1.43, 1.43 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 126,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 126, shuchusen1, 8, 20 );
setEffMoveKey( spep_0-3 + 126, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 134, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 126, shuchusen1, 1.1, 1.3 );
setEffScaleKey( spep_0-3 + 134, shuchusen1, 1.1, 1.3 );

setEffRotateKey( spep_0-3 + 126, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 134, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 126, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 134, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_0-3 + 168,  906, 50, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 168, shuchusen2, 50, 20 );
setEffMoveKey( spep_0-3 + 168, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 218, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 168, shuchusen2, 1.1, 1.3 );
setEffScaleKey( spep_0-3 + 218, shuchusen2, 1.1, 1.3 );

setEffRotateKey( spep_0-3 + 168, shuchusen2, 0 );
setEffRotateKey( spep_0-3 + 218, shuchusen2, 0 );

setEffAlphaKey( spep_0-3 + 168, shuchusen2, 255 );
setEffAlphaKey( spep_0-3 + 218, shuchusen2, 255 );


-- ** 音 ** --
playSe( spep_0 + 24, 1018 );

playSe( spep_0 + 0, 1232 );
setSeVolume( spep_0 + 0, 1232, 71 );
se_1044 = playSe( spep_0 + 0, 1044 );
se_1147 = playSe( spep_0 + 111, 1147 );
setSeVolume( spep_0 + 111, 1147, 0 );
setSeVolume( spep_0 + 120, 1147, 8 );
setSeVolume( spep_0 + 121, 1147, 16 );
setSeVolume( spep_0 + 122, 1147, 24 );
setSeVolume( spep_0 + 123, 1147, 32 );
se_1182 = playSe( spep_0 + 125, 1182 );
setSeVolume( spep_0 + 131, 1023, 56 );
se_0020 = playSe( spep_0 + 126, 20 );
se_1023 = playSe( spep_0 + 131, 1023 );
playSe( spep_0 + 164, 1231 );
setSeVolume( spep_0 + 164, 1231, 141 );
se_1176 = playSe( spep_0 + 169, 1176 );
setSeVolume( spep_0 + 169, 1176, 40 );
playSe( spep_0 + 169, 1020 );
setSeVolume( spep_0 + 169, 1020, 79 );
se_1043 = playSe( spep_0 + 169, 1043 );
setSeVolume( spep_0 + 169, 1043, 35 );
se_1147_1 = playSe( spep_0 + 179, 1147 );
setSeVolume( spep_0 + 179, 1147, 35 );
playSe( spep_0 + 199, 1020 );
setSeVolume( spep_0 + 199, 1020, 79 );
se_1148 = playSe( spep_0 + 202, 1148 );
setSeVolume( spep_0 + 202, 1148, 35 );

stopSe( spep_0 + 127, se_1044, 14 );
stopSe( spep_0 + 147, se_1147, 6 );
stopSe( spep_0 + 138, se_1182, 8 );
stopSe( spep_0 + 161, se_0020, 34 );
stopSe( spep_0 + 155, se_1023, 39 );

-- ** くろ背景 ** --
entryFadeBg(   spep_0, 0, 222, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 212, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_1=spep_0+220;

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
se_1227 = playSe( spep_1 + 53, 1227 );
setSeVolume( spep_1 + 53, 1227, 0 );

stopSe( spep_1 + 0, se_1176, 0 );
stopSe( spep_1 + 0, se_1043, 0 );
stopSe( spep_1 + 0, se_1147_1, 0 );
stopSe( spep_1 + 0, se_1148, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--指先を上げる
--------------------------------------
-- ** エフェクト等 ** --
yubi = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, yubi, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, yubi, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, yubi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, yubi, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, yubi, 0 );
setEffRotateKey( spep_2 + 66, yubi, 0 );
setEffAlphaKey( spep_2 + 0, yubi, 255 );
setEffAlphaKey( spep_2 + 66, yubi, 255 );

--SE
setSeVolume( spep_2 + 1, 1227, 0 );
setSeVolume( spep_2 + 2, 1227, 5.63 );
setSeVolume( spep_2 + 3, 1227, 11.25 );
setSeVolume( spep_2 + 4, 1227, 16.88 );
setSeVolume( spep_2 + 5, 1227, 22.5 );
setSeVolume( spep_2 + 6, 1227, 28.13 );
setSeVolume( spep_2 + 7, 1227, 33.75 );
setSeVolume( spep_2 + 8, 1227, 39.38 );
setSeVolume( spep_2 + 9, 1227, 45 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 +40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1227, 0 );

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

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 52,  906, 6, 0x100, -1, 0, 0, 199.9 );
setEffShake( spep_0-3 + 52, shuchusen3, 6, 20 );
setEffMoveKey( spep_2-3 + 52, shuchusen3, 0, 199.9 , 0 );
setEffMoveKey( spep_2-3 + 58, shuchusen3, 0, 199.9 , 0 );

setEffScaleKey( spep_2-3 + 52, shuchusen3, 1.2, 1.4 );
setEffScaleKey( spep_2-3 + 58, shuchusen3, 1.2, 1.4 );

setEffRotateKey( spep_2-3 + 52, shuchusen3, 0 );
setEffRotateKey( spep_2-3 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_2-3 + 52, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 58, shuchusen3, 255 );

--SE
se_1176 = playSe( spep_2 + 2, 1176 );
setSeVolume( spep_2 + 2, 1176, 25 );
playSe( spep_2 + 44, 37 );
setSeVolume( spep_2 + 44, 37, 158 );
playSe( spep_2 + 44, 1003 );
setSeVolume( spep_2 + 44, 1003, 40 );
playSe( spep_2 + 49, 04 );


stopSe( spep_2 + 63, se_1227, 21 );
stopSe( spep_2 + 65, se_1176, 21 );

-- ** くろ背景 ** --
entryFadeBg(   spep_2, 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;
--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
explosion_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, explosion_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, explosion_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, explosion_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, explosion_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, explosion_f, 0 );
setEffRotateKey( spep_3 + 106, explosion_f, 0 );
setEffAlphaKey( spep_3 + 0, explosion_f, 255 );
setEffAlphaKey( spep_3 + 106, explosion_f, 255 );

-- ** エフェクト等 ** --
explosion_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, explosion_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, explosion_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, explosion_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, explosion_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, explosion_b, 0 );
setEffRotateKey( spep_3 + 106, explosion_b, 0 );
setEffAlphaKey( spep_3 + 0, explosion_b, 255 );
setEffAlphaKey( spep_3 + 106, explosion_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 46, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 158, -198 , 0 );
setMoveKey( spep_3 + 46, 1, 158, -198 , 0 );

setScaleKey( spep_3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 46, 1, 0.5, 0.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 46, 1, 0 );

--SE
playSe( spep_3 + 45, 1159 );
playSe( spep_3 + 45, 1188 );


-- ** くろ背景 ** --
entryFadeBg(   spep_3, 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景
-- ** 次の準備 ** --
spep_4 = spep_3 + 106;
--------------------------------------
--敵吹っ飛び
--------------------------------------
-- ** エフェクト等 ** --
tobu_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tobu_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, tobu_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tobu_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, tobu_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tobu_f, 0 );
setEffRotateKey( spep_4 + 80, tobu_f, 0 );
setEffAlphaKey( spep_4 + 0, tobu_f, 255 );
setEffAlphaKey( spep_4 + 80, tobu_f, 255 );

-- ** エフェクト等 ** --
tobu_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tobu_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, tobu_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tobu_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, tobu_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tobu_b, 0 );
setEffRotateKey( spep_4 + 80, tobu_b, 0 );
setEffAlphaKey( spep_4 + 0, tobu_b, 255 );
setEffAlphaKey( spep_4 + 80, tobu_b, 255 );

--敵の動き
setDisp( spep_4-3 + 38, 1, 1 );
setDisp( spep_4-3 + 66, 1, 0 );

changeAnime( spep_4-3 + 38, 1, 108 );

setMoveKey( spep_4-3 + 38, 1, -22.9, -162.9 , 0 );
setMoveKey( spep_4-3 + 39, 1, -22.9, -162.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 92.2, 38.6 , 0 );
setMoveKey( spep_4-3 + 41, 1, 92.2, 38.6 , 0 );
setMoveKey( spep_4-3 + 42, 1, 172.6, 179.3 , 0 );
setMoveKey( spep_4-3 + 43, 1, 172.6, 179.3 , 0 );
setMoveKey( spep_4-3 + 44, 1, 235.4, 289.2 , 0 );
setMoveKey( spep_4-3 + 45, 1, 235.4, 289.2 , 0 );
setMoveKey( spep_4-3 + 46, 1, 287, 379.5 , 0 );
setMoveKey( spep_4-3 + 47, 1, 287, 379.5 , 0 );
setMoveKey( spep_4-3 + 48, 1, 330.6, 455.8 , 0 );
setMoveKey( spep_4-3 + 49, 1, 330.6, 455.8 , 0 );
setMoveKey( spep_4-3 + 50, 1, 368, 521.4 , 0 );
setMoveKey( spep_4-3 + 51, 1, 368, 521.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 400.5, 578.3 , 0 );
setMoveKey( spep_4-3 + 53, 1, 400.5, 578.3 , 0 );
setMoveKey( spep_4-3 + 54, 1, 429, 628 , 0 );
setMoveKey( spep_4-3 + 55, 1, 429, 628 , 0 );
setMoveKey( spep_4-3 + 56, 1, 453.9, 671.6 , 0 );
setMoveKey( spep_4-3 + 57, 1, 453.9, 671.6 , 0 );
setMoveKey( spep_4-3 + 58, 1, 475.7, 709.7 , 0 );
setMoveKey( spep_4-3 + 59, 1, 475.7, 709.7 , 0 );
setMoveKey( spep_4-3 + 60, 1, 494.7, 743 , 0 );
setMoveKey( spep_4-3 + 61, 1, 494.7, 743 , 0 );
setMoveKey( spep_4-3 + 62, 1, 511.1, 771.8 , 0 );
setMoveKey( spep_4-3 + 63, 1, 511.1, 771.8 , 0 );
setMoveKey( spep_4-3 + 64, 1, 525.2, 796.4 , 0 );
setMoveKey( spep_4-3 + 65, 1, 525.2, 796.4 , 0 );
setMoveKey( spep_4-3 + 66, 1, 537.1, 817.1 , 0 );

setScaleKey( spep_4-3 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 42, 1, 1.06, 1.06 );
setScaleKey( spep_4-3 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_4-3 + 46, 1, 0.98, 0.98 );
setScaleKey( spep_4-3 + 48, 1, 0.95, 0.95 );
setScaleKey( spep_4-3 + 50, 1, 0.92, 0.92 );
setScaleKey( spep_4-3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_4-3 + 54, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 56, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 58, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 60, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 62, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 64, 1, 0.81, 0.81 );
setScaleKey( spep_4-3 + 66, 1, 0.8, 0.8 );

setRotateKey( spep_4-3 + 38, 1, -24 );
setRotateKey( spep_4-3 + 40, 1, -31.4 );
setRotateKey( spep_4-3 + 42, 1, -36.6 );
setRotateKey( spep_4-3 + 44, 1, -40.6 );
setRotateKey( spep_4-3 + 46, 1, -43.9 );
setRotateKey( spep_4-3 + 48, 1, -46.7 );
setRotateKey( spep_4-3 + 50, 1, -49.1 );
setRotateKey( spep_4-3 + 52, 1, -51.2 );
setRotateKey( spep_4-3 + 54, 1, -53.1 );
setRotateKey( spep_4-3 + 56, 1, -54.7 );
setRotateKey( spep_4-3 + 58, 1, -56.1 );
setRotateKey( spep_4-3 + 60, 1, -57.3 );
setRotateKey( spep_4-3 + 62, 1, -58.3 );
setRotateKey( spep_4-3 + 64, 1, -59.2 );
setRotateKey( spep_4-3 + 66, 1, -60 );

--SE
se_1183 = playSe( spep_4 + 26, 1183 );

--白フェード
entryFade( spep_4 + 72, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg(   spep_4, 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;
------------------------------------------------------
-- ガッ
------------------------------------------------------
-- ** エフェクト等 **120-
bg = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 +0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 120, bg, 0, 0, 0 );
setEffScaleKey( spep_5 +0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 +0, bg, 0 );
setEffRotateKey( spep_5 + 120, bg, 0 );
setEffAlphaKey( spep_5 +0, bg, 255 );
setEffAlphaKey( spep_5 + 120, bg, 255 );


--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 120, 1, 1.3, 1.3 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 120, 1, 1080 );

--エフェクト
hibi = entryEffect( spep_5 -22 + 20,  1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_5 -22 + 20, hibi, 60, -92 , 0 );
setEffMoveKey( spep_5  + 120, hibi, 60, -92 , 0 );

setEffScaleKey( spep_5 -22 + 20, hibi, 1, 1 );
setEffScaleKey( spep_5  + 120, hibi, 1, 1 );

setEffRotateKey( spep_5 -22 + 20, hibi, 0 );
setEffRotateKey( spep_5  + 120, hibi, 0 );

setEffAlphaKey( spep_5 -22 + 20, hibi, 255 );
setEffAlphaKey( spep_5  + 120, hibi, 255 );

--集中線
shuchusenx = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 14,shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46,shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14,shuchusenx, 1, 1 );
setEffScaleKey( spep_5 + 46,shuchusenx, 1, 1 );

setEffRotateKey( spep_5 + 14,shuchusenx, 180 );
setEffRotateKey( spep_5 + 46,shuchusenx, 180 );

setEffAlphaKey( spep_5 + 14,shuchusenx, 255 );
setEffAlphaKey( spep_5 + 28,shuchusenx, 255 );
setEffAlphaKey( spep_5 + 30,shuchusenx, 252 );
setEffAlphaKey( spep_5 + 32,shuchusenx, 242 );
setEffAlphaKey( spep_5 + 34,shuchusenx, 227 );
setEffAlphaKey( spep_5 + 36,shuchusenx, 205 );
setEffAlphaKey( spep_5 + 38,shuchusenx, 176 );
setEffAlphaKey( spep_5 + 40,shuchusenx, 142 );
setEffAlphaKey( spep_5 + 42,shuchusenx, 101 );
setEffAlphaKey( spep_5 + 44,shuchusenx, 54 );
setEffAlphaKey( spep_5 + 46,shuchusenx, 0 );

--集中線(黒)
shuchusen_bk = entryEffectLife( spep_5 + 14,  1657, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 14, shuchusen_bk, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, shuchusen_bk, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bk, 1, 1 );
setEffScaleKey( spep_5 + 120, shuchusen_bk, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bk, 0 );
setEffRotateKey( spep_5 + 120, shuchusen_bk, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bk, 255 );
setEffAlphaKey( spep_5 + 120, shuchusen_bk, 255 );

--文字エントリー
ctga = entryEffectLife( spep_5 + 14,  10005, 106, 0x100, -1, 0, 3.9, 316.1 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 120, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.3, 3.3 );
setEffScaleKey( spep_5 + 120, ctga, 3.3, 3.3 );

setEffRotateKey( spep_5 + 14, ctga, -23.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -23.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -23.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -23.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 30, ctga, -18.9 );
setEffRotateKey( spep_5 + 120, ctga, -18.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 120, ctga, 255 );

--SE
playSe( spep_5 + 4, 1023 );
playSe( spep_5 + 12, 1054 );

stopSe( spep_5 + 35, se_1183, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 14 );
endPhase( spep_5 + 100 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気為→足→気を纏う
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 220, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 220, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 220, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 220, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 , 190006, 94, 0x100, -1, 0, 0, 410);-- ゴゴゴゴ

setEffMoveKey(  spep_0 ,  ctgogo,  0,  410);
setEffMoveKey(  spep_0 +84,  ctgogo,  0,  410);
setEffMoveKey(  spep_0 +94,  ctgogo,  0,  490);

setEffAlphaKey( spep_0 + 0, ctgogo, 26 );
setEffAlphaKey( spep_0 + 2, ctgogo, 102 );
setEffAlphaKey( spep_0 + 4, ctgogo, 179 );
setEffAlphaKey( spep_0 + 6, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 191 );
setEffAlphaKey( spep_0 + 92, ctgogo, 112 );
setEffAlphaKey( spep_0 + 94, ctgogo, 64 );

setEffRotateKey(  spep_0 ,  ctgogo,  0);
setEffRotateKey(  spep_0 +94,  ctgogo,  0);

setEffScaleKey(  spep_0 ,  ctgogo,  -1.1,  1.1);
setEffScaleKey(  spep_0 +84,  ctgogo,  -1.1,  1.1);
setEffScaleKey(  spep_0 +94,  ctgogo, -1.43, 1.43 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 126,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 126, shuchusen1, 8, 20 );
setEffMoveKey( spep_0-3 + 126, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 134, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 126, shuchusen1, 1.1, 1.3 );
setEffScaleKey( spep_0-3 + 134, shuchusen1, 1.1, 1.3 );

setEffRotateKey( spep_0-3 + 126, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 134, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 126, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 134, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_0-3 + 168,  906, 50, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 168, shuchusen2, 50, 20 );
setEffMoveKey( spep_0-3 + 168, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 218, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 168, shuchusen2, 1.1, 1.3 );
setEffScaleKey( spep_0-3 + 218, shuchusen2, 1.1, 1.3 );

setEffRotateKey( spep_0-3 + 168, shuchusen2, 0 );
setEffRotateKey( spep_0-3 + 218, shuchusen2, 0 );

setEffAlphaKey( spep_0-3 + 168, shuchusen2, 255 );
setEffAlphaKey( spep_0-3 + 218, shuchusen2, 255 );


-- ** 音 ** --
playSe( spep_0 + 24, 1018 );

playSe( spep_0 + 0, 1232 );
setSeVolume( spep_0 + 0, 1232, 71 );
se_1044 = playSe( spep_0 + 0, 1044 );
se_1147 = playSe( spep_0 + 111, 1147 );
setSeVolume( spep_0 + 111, 1147, 0 );
setSeVolume( spep_0 + 120, 1147, 8 );
setSeVolume( spep_0 + 121, 1147, 16 );
setSeVolume( spep_0 + 122, 1147, 24 );
setSeVolume( spep_0 + 123, 1147, 32 );
se_1182 = playSe( spep_0 + 125, 1182 );
setSeVolume( spep_0 + 131, 1023, 56 );
se_0020 = playSe( spep_0 + 126, 20 );
se_1023 = playSe( spep_0 + 131, 1023 );
playSe( spep_0 + 164, 1231 );
setSeVolume( spep_0 + 164, 1231, 141 );
se_1176 = playSe( spep_0 + 169, 1176 );
setSeVolume( spep_0 + 169, 1176, 40 );
playSe( spep_0 + 169, 1020 );
setSeVolume( spep_0 + 169, 1020, 79 );
se_1043 = playSe( spep_0 + 169, 1043 );
setSeVolume( spep_0 + 169, 1043, 35 );
se_1147_1 = playSe( spep_0 + 179, 1147 );
setSeVolume( spep_0 + 179, 1147, 35 );
playSe( spep_0 + 199, 1020 );
setSeVolume( spep_0 + 199, 1020, 79 );
se_1148 = playSe( spep_0 + 202, 1148 );
setSeVolume( spep_0 + 202, 1148, 35 );

stopSe( spep_0 + 127, se_1044, 14 );
stopSe( spep_0 + 147, se_1147, 6 );
stopSe( spep_0 + 138, se_1182, 8 );
stopSe( spep_0 + 161, se_0020, 34 );
stopSe( spep_0 + 155, se_1023, 39 );

-- ** くろ背景 ** --
entryFadeBg(   spep_0, 0, 222, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 212, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_1=spep_0+220;

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
se_1227 = playSe( spep_1 + 53, 1227 );
setSeVolume( spep_1 + 53, 1227, 0 );

stopSe( spep_1 + 0, se_1176, 0 );
stopSe( spep_1 + 0, se_1043, 0 );
stopSe( spep_1 + 0, se_1147_1, 0 );
stopSe( spep_1 + 0, se_1148, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--指先を上げる
--------------------------------------
-- ** エフェクト等 ** --
yubi = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, yubi, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, yubi, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, yubi, -1.0, 1.0 );
setEffScaleKey( spep_2 + 66, yubi, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, yubi, 0 );
setEffRotateKey( spep_2 + 66, yubi, 0 );
setEffAlphaKey( spep_2 + 0, yubi, 255 );
setEffAlphaKey( spep_2 + 66, yubi, 255 );

--SE
setSeVolume( spep_2 + 1, 1227, 0 );
setSeVolume( spep_2 + 2, 1227, 5.63 );
setSeVolume( spep_2 + 3, 1227, 11.25 );
setSeVolume( spep_2 + 4, 1227, 16.88 );
setSeVolume( spep_2 + 5, 1227, 22.5 );
setSeVolume( spep_2 + 6, 1227, 28.13 );
setSeVolume( spep_2 + 7, 1227, 33.75 );
setSeVolume( spep_2 + 8, 1227, 39.38 );
setSeVolume( spep_2 + 9, 1227, 45 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 +40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1227, 0 );

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

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 52,  906, 6, 0x100, -1, 0, 0, 199.9 );
setEffShake( spep_0-3 + 52, shuchusen3, 6, 20 );
setEffMoveKey( spep_2-3 + 52, shuchusen3, 0, 199.9 , 0 );
setEffMoveKey( spep_2-3 + 58, shuchusen3, 0, 199.9 , 0 );

setEffScaleKey( spep_2-3 + 52, shuchusen3, 1.2, 1.4 );
setEffScaleKey( spep_2-3 + 58, shuchusen3, 1.2, 1.4 );

setEffRotateKey( spep_2-3 + 52, shuchusen3, 0 );
setEffRotateKey( spep_2-3 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_2-3 + 52, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 58, shuchusen3, 255 );

--SE
se_1176 = playSe( spep_2 + 2, 1176 );
setSeVolume( spep_2 + 2, 1176, 25 );
playSe( spep_2 + 44, 37 );
setSeVolume( spep_2 + 44, 37, 158 );
playSe( spep_2 + 44, 1003 );
setSeVolume( spep_2 + 44, 1003, 40 );
playSe( spep_2 + 49, 04 );


stopSe( spep_2 + 63, se_1227, 21 );
stopSe( spep_2 + 65, se_1176, 21 );

-- ** くろ背景 ** --
entryFadeBg(   spep_2, 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;
--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
explosion_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, explosion_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, explosion_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, explosion_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 106, explosion_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, explosion_f, 0 );
setEffRotateKey( spep_3 + 106, explosion_f, 0 );
setEffAlphaKey( spep_3 + 0, explosion_f, 255 );
setEffAlphaKey( spep_3 + 106, explosion_f, 255 );

-- ** エフェクト等 ** --
explosion_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, explosion_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, explosion_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, explosion_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 106, explosion_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, explosion_b, 0 );
setEffRotateKey( spep_3 + 106, explosion_b, 0 );
setEffAlphaKey( spep_3 + 0, explosion_b, 255 );
setEffAlphaKey( spep_3 + 106, explosion_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 46, 1, 0 );

changeAnime( spep_3 + 0, 1, 0 );

setMoveKey( spep_3 + 0, 1, -158, -198 , 0 );
setMoveKey( spep_3 + 46, 1, -158, -198 , 0 );

setScaleKey( spep_3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 46, 1, 0.5, 0.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 46, 1, 0 );

--SE
playSe( spep_3 + 45, 1159 );
playSe( spep_3 + 45, 1188 );


-- ** くろ背景 ** --
entryFadeBg(   spep_3, 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景
-- ** 次の準備 ** --
spep_4 = spep_3 + 106;
--------------------------------------
--敵吹っ飛び
--------------------------------------
-- ** エフェクト等 ** --
tobu_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tobu_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, tobu_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tobu_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, tobu_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tobu_f, 0 );
setEffRotateKey( spep_4 + 80, tobu_f, 0 );
setEffAlphaKey( spep_4 + 0, tobu_f, 255 );
setEffAlphaKey( spep_4 + 80, tobu_f, 255 );

-- ** エフェクト等 ** --
tobu_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tobu_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, tobu_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tobu_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, tobu_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tobu_b, 0 );
setEffRotateKey( spep_4 + 80, tobu_b, 0 );
setEffAlphaKey( spep_4 + 0, tobu_b, 255 );
setEffAlphaKey( spep_4 + 80, tobu_b, 255 );

--敵の動き
setDisp( spep_4-3 + 38, 1, 1 );
setDisp( spep_4-3 + 66, 1, 0 );

changeAnime( spep_4-3 + 38, 1, 108 );

setMoveKey( spep_4-3 + 38, 1, -22.9, -162.9 , 0 );
setMoveKey( spep_4-3 + 39, 1, -22.9, -162.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 92.2, 38.6 , 0 );
setMoveKey( spep_4-3 + 41, 1, 92.2, 38.6 , 0 );
setMoveKey( spep_4-3 + 42, 1, 172.6, 179.3 , 0 );
setMoveKey( spep_4-3 + 43, 1, 172.6, 179.3 , 0 );
setMoveKey( spep_4-3 + 44, 1, 235.4, 289.2 , 0 );
setMoveKey( spep_4-3 + 45, 1, 235.4, 289.2 , 0 );
setMoveKey( spep_4-3 + 46, 1, 287, 379.5 , 0 );
setMoveKey( spep_4-3 + 47, 1, 287, 379.5 , 0 );
setMoveKey( spep_4-3 + 48, 1, 330.6, 455.8 , 0 );
setMoveKey( spep_4-3 + 49, 1, 330.6, 455.8 , 0 );
setMoveKey( spep_4-3 + 50, 1, 368, 521.4 , 0 );
setMoveKey( spep_4-3 + 51, 1, 368, 521.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 400.5, 578.3 , 0 );
setMoveKey( spep_4-3 + 53, 1, 400.5, 578.3 , 0 );
setMoveKey( spep_4-3 + 54, 1, 429, 628 , 0 );
setMoveKey( spep_4-3 + 55, 1, 429, 628 , 0 );
setMoveKey( spep_4-3 + 56, 1, 453.9, 671.6 , 0 );
setMoveKey( spep_4-3 + 57, 1, 453.9, 671.6 , 0 );
setMoveKey( spep_4-3 + 58, 1, 475.7, 709.7 , 0 );
setMoveKey( spep_4-3 + 59, 1, 475.7, 709.7 , 0 );
setMoveKey( spep_4-3 + 60, 1, 494.7, 743 , 0 );
setMoveKey( spep_4-3 + 61, 1, 494.7, 743 , 0 );
setMoveKey( spep_4-3 + 62, 1, 511.1, 771.8 , 0 );
setMoveKey( spep_4-3 + 63, 1, 511.1, 771.8 , 0 );
setMoveKey( spep_4-3 + 64, 1, 525.2, 796.4 , 0 );
setMoveKey( spep_4-3 + 65, 1, 525.2, 796.4 , 0 );
setMoveKey( spep_4-3 + 66, 1, 537.1, 817.1 , 0 );

setScaleKey( spep_4-3 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 42, 1, 1.06, 1.06 );
setScaleKey( spep_4-3 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_4-3 + 46, 1, 0.98, 0.98 );
setScaleKey( spep_4-3 + 48, 1, 0.95, 0.95 );
setScaleKey( spep_4-3 + 50, 1, 0.92, 0.92 );
setScaleKey( spep_4-3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_4-3 + 54, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 56, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 58, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 60, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 62, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 64, 1, 0.81, 0.81 );
setScaleKey( spep_4-3 + 66, 1, 0.8, 0.8 );

setRotateKey( spep_4-3 + 38, 1, -24 );
setRotateKey( spep_4-3 + 40, 1, -31.4 );
setRotateKey( spep_4-3 + 42, 1, -36.6 );
setRotateKey( spep_4-3 + 44, 1, -40.6 );
setRotateKey( spep_4-3 + 46, 1, -43.9 );
setRotateKey( spep_4-3 + 48, 1, -46.7 );
setRotateKey( spep_4-3 + 50, 1, -49.1 );
setRotateKey( spep_4-3 + 52, 1, -51.2 );
setRotateKey( spep_4-3 + 54, 1, -53.1 );
setRotateKey( spep_4-3 + 56, 1, -54.7 );
setRotateKey( spep_4-3 + 58, 1, -56.1 );
setRotateKey( spep_4-3 + 60, 1, -57.3 );
setRotateKey( spep_4-3 + 62, 1, -58.3 );
setRotateKey( spep_4-3 + 64, 1, -59.2 );
setRotateKey( spep_4-3 + 66, 1, -60 );

--SE
se_1183 = playSe( spep_4 + 26, 1183 );

--白フェード
entryFade( spep_4 + 72, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg(   spep_4, 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;
------------------------------------------------------
-- ガッ
------------------------------------------------------
-- ** エフェクト等 **120-
bg = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 +0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 120, bg, 0, 0, 0 );
setEffScaleKey( spep_5 +0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 +0, bg, 0 );
setEffRotateKey( spep_5 + 120, bg, 0 );
setEffAlphaKey( spep_5 +0, bg, 255 );
setEffAlphaKey( spep_5 + 120, bg, 255 );


--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 120, 1, 1.3, 1.3 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 120, 1, 1080 );

--エフェクト
hibi = entryEffect( spep_5 -22 + 20,  1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_5 -22 + 20, hibi, 60, -92 , 0 );
setEffMoveKey( spep_5  + 120, hibi, 60, -92 , 0 );

setEffScaleKey( spep_5 -22 + 20, hibi, 1, 1 );
setEffScaleKey( spep_5  + 120, hibi, 1, 1 );

setEffRotateKey( spep_5 -22 + 20, hibi, 0 );
setEffRotateKey( spep_5  + 120, hibi, 0 );

setEffAlphaKey( spep_5 -22 + 20, hibi, 255 );
setEffAlphaKey( spep_5  + 120, hibi, 255 );

--集中線
shuchusenx = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 14,shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46,shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14,shuchusenx, 1, 1 );
setEffScaleKey( spep_5 + 46,shuchusenx, 1, 1 );

setEffRotateKey( spep_5 + 14,shuchusenx, 180 );
setEffRotateKey( spep_5 + 46,shuchusenx, 180 );

setEffAlphaKey( spep_5 + 14,shuchusenx, 255 );
setEffAlphaKey( spep_5 + 28,shuchusenx, 255 );
setEffAlphaKey( spep_5 + 30,shuchusenx, 252 );
setEffAlphaKey( spep_5 + 32,shuchusenx, 242 );
setEffAlphaKey( spep_5 + 34,shuchusenx, 227 );
setEffAlphaKey( spep_5 + 36,shuchusenx, 205 );
setEffAlphaKey( spep_5 + 38,shuchusenx, 176 );
setEffAlphaKey( spep_5 + 40,shuchusenx, 142 );
setEffAlphaKey( spep_5 + 42,shuchusenx, 101 );
setEffAlphaKey( spep_5 + 44,shuchusenx, 54 );
setEffAlphaKey( spep_5 + 46,shuchusenx, 0 );

--集中線(黒)
shuchusen_bk = entryEffectLife( spep_5 + 14,  1657, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 14, shuchusen_bk, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, shuchusen_bk, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bk, 1, 1 );
setEffScaleKey( spep_5 + 120, shuchusen_bk, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bk, 0 );
setEffRotateKey( spep_5 + 120, shuchusen_bk, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bk, 255 );
setEffAlphaKey( spep_5 + 120, shuchusen_bk, 255 );

--文字エントリー
ctga = entryEffectLife( spep_5 + 14,  10005, 106, 0x100, -1, 0, 3.9, 316.1 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 120, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.3, 3.3 );
setEffScaleKey( spep_5 + 120, ctga, 3.3, 3.3 );

setEffRotateKey( spep_5 + 14, ctga, -23.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -23.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -23.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -23.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 30, ctga, -18.9 );
setEffRotateKey( spep_5 + 120, ctga, -18.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 120, ctga, 255 );

--SE
playSe( spep_5 + 4, 1023 );
playSe( spep_5 + 12, 1054 );

stopSe( spep_5 + 35, se_1183, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 14 );
endPhase( spep_5 + 100 );
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

-- ** エフェクト等 **120-
bg = entryEffect( spep_z + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z +0, bg, 0, 0, 0 );
setEffMoveKey( spep_z + 120, bg, 0, 0, 0 );
setEffScaleKey( spep_z +0, bg, 1.0, 1.0 );
setEffScaleKey( spep_z + 120, bg, 1.0, 1.0 );
setEffRotateKey( spep_z +0, bg, 0 );
setEffRotateKey( spep_z + 120, bg, 0 );
setEffAlphaKey( spep_z +0, bg, 255 );
setEffAlphaKey( spep_z + 120, bg, 255 );


--敵の動き
setDisp( spep_z + 0, 1, 1 );

changeAnime( spep_z + 0, 1, 107 );

setMoveKey( spep_z + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_z + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_z + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_z + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_z + 0, 1, 0.22, 0.22 );
setScaleKey( spep_z + 2, 1, 0.35, 0.35 );
setScaleKey( spep_z + 4, 1, 0.51, 0.51 );
setScaleKey( spep_z + 6, 1, 0.7, 0.7 );
setScaleKey( spep_z + 8, 1, 0.93, 0.93 );
setScaleKey( spep_z + 10, 1, 1.1, 1.1 );
setScaleKey( spep_z + 12, 1, 1.2, 1.2 );
setScaleKey( spep_z + 14, 1, 1.3, 1.3 );
setScaleKey( spep_z + 16, 1, 1.2, 1.2 );
setScaleKey( spep_z + 18, 1, 1.3, 1.3 );
setScaleKey( spep_z + 20, 1, 1.2, 1.2 );
setScaleKey( spep_z + 22, 1, 1.3, 1.3 );
setScaleKey( spep_z + 24, 1, 1.2, 1.2 );
setScaleKey( spep_z + 26, 1, 1.3, 1.3 );
setScaleKey( spep_z + 120, 1, 1.3, 1.3 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2, 1, 105 );
setRotateKey( spep_z + 4, 1, 240 );
setRotateKey( spep_z + 6, 1, 405 );
setRotateKey( spep_z + 8, 1, 600 );
setRotateKey( spep_z + 10, 1, 825 );
setRotateKey( spep_z + 12, 1, 1080 );
setRotateKey( spep_z + 120, 1, 1080 );

--エフェクト
hibi = entryEffect( spep_z -22 + 20,  1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_z -22 + 20, hibi, 60, -92 , 0 );
setEffMoveKey( spep_z  + 120, hibi, 60, -92 , 0 );

setEffScaleKey( spep_z -22 + 20, hibi, 1, 1 );
setEffScaleKey( spep_z  + 120, hibi, 1, 1 );

setEffRotateKey( spep_z -22 + 20, hibi, 0 );
setEffRotateKey( spep_z  + 120, hibi, 0 );

setEffAlphaKey( spep_z -22 + 20, hibi, 255 );
setEffAlphaKey( spep_z  + 120, hibi, 255 );

--集中線
shuchusenx = entryEffectLife( spep_z + 14,  906, 32, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_z + 14,shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_z + 46,shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_z + 14,shuchusenx, 1, 1 );
setEffScaleKey( spep_z + 46,shuchusenx, 1, 1 );

setEffRotateKey( spep_z + 14,shuchusenx, 180 );
setEffRotateKey( spep_z + 46,shuchusenx, 180 );

setEffAlphaKey( spep_z + 14,shuchusenx, 255 );
setEffAlphaKey( spep_z + 28,shuchusenx, 255 );
setEffAlphaKey( spep_z + 30,shuchusenx, 252 );
setEffAlphaKey( spep_z + 32,shuchusenx, 242 );
setEffAlphaKey( spep_z + 34,shuchusenx, 227 );
setEffAlphaKey( spep_z + 36,shuchusenx, 205 );
setEffAlphaKey( spep_z + 38,shuchusenx, 176 );
setEffAlphaKey( spep_z + 40,shuchusenx, 142 );
setEffAlphaKey( spep_z + 42,shuchusenx, 101 );
setEffAlphaKey( spep_z + 44,shuchusenx, 54 );
setEffAlphaKey( spep_z + 46,shuchusenx, 0 );

--集中線(黒)
shuchusen_bk = entryEffectLife( spep_z + 14,  1657, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_z + 14, shuchusen_bk, 0, 0 , 0 );
setEffMoveKey( spep_z + 120, shuchusen_bk, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen_bk, 1, 1 );
setEffScaleKey( spep_z + 120, shuchusen_bk, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen_bk, 0 );
setEffRotateKey( spep_z + 120, shuchusen_bk, 0 );

setEffAlphaKey( spep_z + 14, shuchusen_bk, 255 );
setEffAlphaKey( spep_z + 120, shuchusen_bk, 255 );

--文字エントリー
ctga = entryEffectLife( spep_z + 14,  10005, 106, 0x100, -1, 0, 3.9, 316.1 );

setEffMoveKey( spep_z + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 120, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_z + 14, ctga, 3.3, 3.3 );
setEffScaleKey( spep_z + 120, ctga, 3.3, 3.3 );

setEffRotateKey( spep_z + 14, ctga, -23.9 );
setEffRotateKey( spep_z + 16, ctga, -14.9 );
setEffRotateKey( spep_z + 18, ctga, -23.9 );
setEffRotateKey( spep_z + 20, ctga, -14.9 );
setEffRotateKey( spep_z + 22, ctga, -23.9 );
setEffRotateKey( spep_z + 24, ctga, -14.9 );
setEffRotateKey( spep_z + 26, ctga, -23.9 );
setEffRotateKey( spep_z + 28, ctga, -14.9 );
setEffRotateKey( spep_z + 30, ctga, -18.9 );
setEffRotateKey( spep_z + 120, ctga, -18.9 );

setEffAlphaKey( spep_z + 14, ctga, 255 );
setEffAlphaKey( spep_z + 120, ctga, 255 );

--SE
playSe( spep_z + 4, 1023 );
playSe( spep_z + 12, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_z + 14 );
endPhase( spep_z + 80 );

end
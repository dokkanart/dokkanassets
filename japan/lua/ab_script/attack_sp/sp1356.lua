--1018590:バビディ＆ダーブラ_エビルスプラッシュ
--sp_effect_a4_00021

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
SP_01=	155212	;--	気溜め
SP_02=	155213	;--	バビディ魔術発射〜敵にヒット：手前
SP_03=	155214	;--	バビディ魔術発射〜敵にヒット：奥
SP_04=	155215	;--	ダーブラ 瞬間移動〜フィニッシュ：手前
SP_05=	155216	;--	ダーブラ 瞬間移動〜フィニッシュ：奥

--エフェクト(敵)
SP_01x=	155217	;--	気溜め	(敵)
SP_02x=	155218	;--	バビディ魔術発射〜敵にヒット：手前	(敵)
SP_03x=	155219	;--	バビディ魔術発射〜敵にヒット：奥	(敵)
SP_04x=	155220	;--	ダーブラ 瞬間移動〜フィニッシュ：手前	(敵)
SP_05x=	155221	;--	ダーブラ 瞬間移動〜フィニッシュ：奥	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);


if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

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
-- 気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--顔カットイン
speff = entryEffect( spep_0 + 18  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 18  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +6 +24, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_0 +6 +24,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +6 +96,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +6 +24, ctgogo, 0 );
setEffAlphaKey( spep_0 +6 + 25, ctgogo, 255 );
setEffAlphaKey( spep_0 +6 + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 +6 + 90, ctgogo, 255 );
setEffAlphaKey( spep_0 +6 + 92, ctgogo, 191 );
setEffAlphaKey( spep_0 +6 + 94, ctgogo, 112 );
setEffAlphaKey( spep_0 +6 + 96, ctgogo, 64 );

setEffRotateKey(  spep_0 +6 +24,  ctgogo,  0);
setEffRotateKey(  spep_0 +6 +96,  ctgogo,  0);

setEffScaleKey(  spep_0 +6 +24,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +6 +86,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +6 +96,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 30, 1018 );
setSeVolume( spep_0 + 30, 1018, 89 );

se_1116 = playSe( spep_0 + 0, 1116 );
setSeVolume( spep_0 + 0, 1116, 71 );
playSe( spep_0 + 24, 1023 );
setSeVolume( spep_0 + 24, 1023, 79 );
playSe( spep_0 + 28, 1035 );
setSeVolume( spep_0 + 28, 1035, 50 );

stopSe( spep_0 + 20, se_1116, 19 );

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 112, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+110;

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
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- バビディ魔術発射〜敵にヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 126, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 126, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 124, hit_f, 255 );
setEffAlphaKey( spep_2 + 125, hit_f, 255 );
setEffAlphaKey( spep_2 + 126, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 126, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 126, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 124, hit_b, 255 );
setEffAlphaKey( spep_2 + 125, hit_b, 255 );
setEffAlphaKey( spep_2 + 126, hit_b, 0 );

--SE
playSe( spep_2 + 0, 1198 );
setSeVolume( spep_2 + 0, 1198, 0 );
setSeVolume( spep_2 + 20, 1198, 15.8);
setSeVolume( spep_2 + 21, 1198, 31.6 );
setSeVolume( spep_2 + 22, 1198, 47.4 );
setSeVolume( spep_2 + 23, 1198, 63.2 );
setSeVolume( spep_2 + 24, 1198, 79 );
se_1222 = playSe( spep_2 + 10, 1222 );
setSeVolume( spep_2 + 10, 1222, 71 );
se_1127 = playSe( spep_2 + 10, 1127 );
setSeVolume( spep_2 + 10, 1127, 63 );
se_1214 = playSe( spep_2 + 10, 1214 );
setSeVolume( spep_2 + 10, 1214, 0 );
setSeVolume( spep_2 + 109, 1214, 66.3 );
setSeVolume( spep_2 + 110, 1214, 132.6 );
setSeVolume( spep_2 + 111, 1214, 198.9 );
setSeVolume( spep_2 + 112, 1214, 265.2 );
setSeVolume( spep_2 + 113, 1214, 331.5 );
setSeVolume( spep_2 + 114, 1214, 398 );
playSe( spep_2 + 14, 49 );
setSeVolume( spep_2 + 14, 49, 63 );
se_1196 = playSe( spep_2 + 14, 1196 );
setSeVolume( spep_2 + 14, 1196, 141 );
se_1185 = playSe( spep_2 + 21, 1185 );
setSeVolume( spep_2 + 21, 1185, 141 );
se_1215 = playSe( spep_2 + 23, 1215 );
setSeVolume( spep_2 + 23, 1215, 0 );
se_1195 = playSe( spep_2 + 29, 1195 );
setSeVolume( spep_2 + 29, 1195, 141 );
se_1177 = playSe( spep_2 + 41, 1177 );
se_1202 = playSe( spep_2 + 41, 1202 );
SE0=playSe( spep_2 + 41, 1027 );
setSeVolume( spep_2 + 41, 1027, 89 );

stopSe( spep_2 + 30, se_1222, 15 );
stopSe( spep_2 + 25, se_1127, 23 );
stopSe( spep_2 + 26, se_1196, 7 );
stopSe( spep_2 + 34, se_1185, 5 );
stopSe( spep_2 + 40, se_1195, 6 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+64 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1177, 0 );  
    stopSe( SP_dodge - 12, se_1202, 0 );
    stopSe( SP_dodge - 12, SE0, 0 );

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

--敵の動き
setDisp( spep_2-3 + 70, 1, 1);
changeAnime( spep_2-3 + 70, 1, 100);
changeAnime( spep_2-3 + 78, 1, 104);
changeAnime( spep_2-3 + 90, 1, 106);

setMoveKey( spep_2-3 + 70, 1, -108.8, -11.7 , 0 );
setMoveKey( spep_2-3 + 72, 1, -91.3, -9.8 , 0 );
setMoveKey( spep_2-3 + 74, 1, -76.1, -8.1 , 0 );
setMoveKey( spep_2-3 + 76, 1, -63.1, -6.7 , 0 );
setMoveKey( spep_2-3 + 77, 1, -63.1, -6.7 , 0 );

setMoveKey( spep_2-3 + 78, 1, -51.8, -5.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, -42.3, -4.5 , 0 );
setMoveKey( spep_2-3 + 82, 1, -34.2, -3.7 , 0 );
setMoveKey( spep_2-3 + 84, 1, -27.3, -2.9 , 0 );
setMoveKey( spep_2-3 + 86, 1, -21.7, -2.3 , 0 );
setMoveKey( spep_2-3 + 88, 1, -17, -1.8 , 0 );
setMoveKey( spep_2-3 + 89, 1, -17, -1.8 , 0 );

setMoveKey( spep_2-3 + 90, 1, -45, 16.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, -41.4, 16.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, -38.6, 16.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, -36.3, 16.9 , 0 );
setMoveKey( spep_2-3 + 98, 1, -34.6, 16.9 , 0 );
setMoveKey( spep_2-3 + 100, 1, -33.2, 16.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, -32.2, 17 , 0 );
setMoveKey( spep_2-3 + 104, 1, -31.5, 17 , 0 );
setMoveKey( spep_2-3 + 106, 1, -31, 17 , 0 );
setMoveKey( spep_2-3 + 108, 1, -30.6, 17 , 0 );
setMoveKey( spep_2-3 + 110, 1, -30.4, 17 , 0 );
setMoveKey( spep_2-3 + 112, 1, -30.2, 17 , 0 );
setMoveKey( spep_2-3 + 114, 1, -30.1, 17 , 0 );
setMoveKey( spep_2 + 125, 1, -30, 17 , 0 );

setScaleKey( spep_2-3 + 70, 1, 2.25, 2.25 );
setScaleKey( spep_2-3 + 72, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 74, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 76, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 77, 1, 1.93, 1.93 );

setScaleKey( spep_2-3 + 78, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 80, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 82, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 84, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 86, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 89, 1, 1.62, 1.62 );

setScaleKey( spep_2-3 + 90, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 92, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 94, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 96, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 98, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 106, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 108, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 125, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 70, 1, 0 );
setRotateKey( spep_2-3 + 89, 1, 0 );
setRotateKey( spep_2-3 + 90, 1, -45 );
setRotateKey( spep_2 + 125, 1, -45 );

--SE
playSe( spep_2 + 110, 1162 );
setSeVolume( spep_2 + 110, 1162, 63 );
playSe( spep_2 + 110, 1038 );
setSeVolume( spep_2 + 110, 1038, 79 );

stopSe( spep_2 + 117, se_1177, 0 );
stopSe( spep_2 + 117, se_1202, 0 );

--次の準備
spep_3=spep_2+126;
------------------------------------------------------
-- バビディ魔術発射〜敵にヒット
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 270, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 270, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 270, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 270, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 26, 1, 0 );
setDisp( spep_3 + 72, 1, 1 );
setDisp( spep_3 + 148, 1, 0 );

setMoveKey( spep_3 + 0, 1, -30, 17 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -30, 16.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, -30.1, 15.2 , 0 );
setMoveKey( spep_3-3 + 5, 1, -30.1, 15.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, -30.3, 10.8 , 0 );
setMoveKey( spep_3-3 + 7, 1, -30.3, 10.8 , 0 );
setMoveKey( spep_3-3 + 8, 1, -30.8, 2.2 , 0 );
setMoveKey( spep_3-3 + 9, 1, -30.8, 2.2 , 0 );
setMoveKey( spep_3-3 + 10, 1, -31.5, -12.2 , 0 );
setMoveKey( spep_3-3 + 11, 1, -31.5, -12.2 , 0 );
setMoveKey( spep_3-3 + 12, 1, -32.6, -34 , 0 );
setMoveKey( spep_3-3 + 13, 1, -32.6, -34 , 0 );
setMoveKey( spep_3-3 + 14, 1, -34.2, -65.2 , 0 );
setMoveKey( spep_3-3 + 15, 1, -34.2, -65.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, -36.3, -108.3 , 0 );
setMoveKey( spep_3-3 + 17, 1, -36.3, -108.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, -39.2, -166 , 0 );
setMoveKey( spep_3-3 + 19, 1, -39.2, -166 , 0 );
setMoveKey( spep_3-3 + 20, 1, -42.9, -242 , 0 );
setMoveKey( spep_3-3 + 21, 1, -42.9, -242 , 0 );
setMoveKey( spep_3-3 + 22, 1, -47.7, -340.5 , 0 );
setMoveKey( spep_3-3 + 23, 1, -47.7, -340.5 , 0 );
setMoveKey( spep_3-3 + 24, 1, -53.8, -467.2 , 0 );
setMoveKey( spep_3-3 + 25, 1, -53.8, -467.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, -61.4, -628.6 , 0 );
setMoveKey( spep_3-3 + 27, 1, -61.4, -628.6 , 0 );
setMoveKey( spep_3-3 + 28, 1, -70.9, -833.1 , 0 );
setMoveKey( spep_3-3 + 29, 1, -70.9, -833.1 , 0 );

setMoveKey( spep_3-3 + 30, 1, -82.3, -1081.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, -93.2, -1322.7 , 0 );
setMoveKey( spep_3-3 + 34, 1, -103.2, -1543.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, -111.9, -1740.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, -119.5, -1911.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, -125.9, -2056.5 , 0 );
setMoveKey( spep_3-3 + 42, 1, -131.2, -2175.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, -135.3, -2270.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, -138.5, -2342.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, -140.8, -2394.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -142.4, -2430.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, -143.3, -2451.8 , 0 );
setMoveKey( spep_3-3 + 54, 1, -143.8, -2462.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, -144, -2467 , 0 );
setMoveKey( spep_3-3 + 58, 1, -144, -2467.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, -144, -2467.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, -132.1, -2224.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, -120.7, -1987.5 , 0 );
setMoveKey( spep_3-3 + 66, 1, -109.8, -1759.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, -99.5, -1542 , 0 );
setMoveKey( spep_3-3 + 70, 1, -89.9, -1337.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, -81, -1148.2 , 0 );

setMoveKey( spep_3-3 + 74, 1, -72.9, -973.9 , 0 );
setMoveKey( spep_3-3 + 75, 1, -72.9, -973.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, -65.6, -815 , 0 );
setMoveKey( spep_3-3 + 77, 1, -65.6, -815 , 0 );
setMoveKey( spep_3-3 + 78, 1, -59, -671.4 , 0 );
setMoveKey( spep_3-3 + 79, 1, -59, -671.4 , 0 );
setMoveKey( spep_3-3 + 80, 1, -53.2, -542.3 , 0 );
setMoveKey( spep_3-3 + 81, 1, -53.2, -542.3 , 0 );
setMoveKey( spep_3-3 + 82, 1, -48.1, -426.3 , 0 );
setMoveKey( spep_3-3 + 83, 1, -48.1, -426.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, -43.6, -321.4 , 0 );
setMoveKey( spep_3-3 + 85, 1, -43.6, -321.4 , 0 );
setMoveKey( spep_3-3 + 86, 1, -39.6, -225.4 , 0 );
setMoveKey( spep_3-3 + 87, 1, -39.6, -225.4 , 0 );
setMoveKey( spep_3-3 + 88, 1, -36, -135.1 , 0 );
setMoveKey( spep_3-3 + 89, 1, -36, -135.1 , 0 );

setMoveKey( spep_3-3 + 90, 1, -30, 109 , 0 );
setMoveKey( spep_3-3 + 92, 1, -29.7, 111.9 , 0 );
setMoveKey( spep_3-3 + 94, 1, -29.5, 114.4 , 0 );
setMoveKey( spep_3-3 + 96, 1, -29.3, 116.7 , 0 );
setMoveKey( spep_3-3 + 98, 1, -29.1, 118.7 , 0 );
setMoveKey( spep_3-3 + 100, 1, -28.9, 120.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, -28.7, 122.1 , 0 );
setMoveKey( spep_3-3 + 104, 1, -28.6, 123.6 , 0 );
setMoveKey( spep_3-3 + 106, 1, -28.5, 125 , 0 );
setMoveKey( spep_3-3 + 108, 1, -28.3, 126.3 , 0 );
setMoveKey( spep_3-3 + 110, 1, -28.2, 127.5 , 0 );
setMoveKey( spep_3-3 + 112, 1, -28.1, 128.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, -28, 129.8 , 0 );
setMoveKey( spep_3-3 + 116, 1, -27.9, 130.8 , 0 );
setMoveKey( spep_3-3 + 118, 1, -27.8, 131.7 , 0 );
setMoveKey( spep_3-3 + 120, 1, -27.8, 132.6 , 0 );
setMoveKey( spep_3-3 + 122, 1, -27.7, 133.5 , 0 );
setMoveKey( spep_3-3 + 124, 1, -27.6, 134.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, -27.5, 135 , 0 );
setMoveKey( spep_3-3 + 128, 1, -27.5, 135.7 , 0 );
setMoveKey( spep_3-3 + 130, 1, -27.4, 136.5 , 0 );
setMoveKey( spep_3-3 + 132, 1, -27.3, 137.1 , 0 );
setMoveKey( spep_3-3 + 134, 1, -27.3, 137.7 , 0 );
setMoveKey( spep_3-3 + 136, 1, -27.2, 138.4 , 0 );
setMoveKey( spep_3-3 + 138, 1, -27.2, 138.9 , 0 );
setMoveKey( spep_3-3 + 140, 1, -27.1, 139.5 , 0 );
setMoveKey( spep_3-3 + 142, 1, -27.1, 140 , 0 );
setMoveKey( spep_3-3 + 144, 1, -27, 140.5 , 0 );
setMoveKey( spep_3-3 + 146, 1, -27, 141 , 0 );
setMoveKey( spep_3 + 148, 1, -35, 183.9 , 0 );

--[[
setMoveKey( spep_3-3 + 148, 1, -24.6, 127.7 , 0 );
setMoveKey( spep_3-3 + 152, 1, -31.7, 163.4 , 0 );
setMoveKey( spep_3-3 + 154, 1, -26.8, 135.3 , 0 );
setMoveKey( spep_3-3 + 156, 1, -31.1, 157 , 0 );
setMoveKey( spep_3-3 + 158, 1, -27.5, 135.7 , 0 );
setMoveKey( spep_3-3 + 160, 1, -27.9, 145 , 0 );
setMoveKey( spep_3-3 + 162, 1, -27.1, 142 , 0 );
setMoveKey( spep_3-3 + 164, 1, -24.6, 145.6 , 0 );
setMoveKey( spep_3-3 + 166, 1, -27.7, 142.4 , 0 );
setMoveKey( spep_3-3 + 168, 1, -26.1, 147.4 , 0 );
setMoveKey( spep_3-3 + 170, 1, -27.1, 144 , 0 );
setMoveKey( spep_3-3 + 172, 1, -24.8, 146.2 , 0 );
setMoveKey( spep_3-3 + 174, 1, -28.8, 147 , 0 );
setMoveKey( spep_3-3 + 176, 1, -24.3, 144.8 , 0 );
setMoveKey( spep_3-3 + 178, 1, -28.3, 147.1 , 0 );
setMoveKey( spep_3-3 + 180, 1, -25.8, 144.5 , 0 );
setMoveKey( spep_3-3 + 182, 1, -24.7, 148.8 , 0 );
setMoveKey( spep_3-3 + 184, 1, -26.7, 145.4 , 0 );
setMoveKey( spep_3-3 + 186, 1, -25.8, 150.2 , 0 );
setMoveKey( spep_3-3 + 188, 1, -25.5, 146.1 , 0 );
setMoveKey( spep_3-3 + 190, 1, -28.5, 148.8 , 0 );
setMoveKey( spep_3-3 + 192, 1, -25, 147.1 , 0 );
setMoveKey( spep_3-3 + 194, 1, -28.7, 148.7 , 0 );
setMoveKey( spep_3-3 + 196, 1, -24.6, 146.2 , 0 );
setMoveKey( spep_3-3 + 198, 1, -26.3, 151 , 0 );
setMoveKey( spep_3-3 + 200, 1, -24.5, 146.7 , 0 );
setMoveKey( spep_3-3 + 202, 1, -27.9, 151 , 0 );
setMoveKey( spep_3-3 + 204, 1, -26, 147.3 , 0 );
setMoveKey( spep_3-3 + 206, 1, -25.1, 151.5 , 0 );
setMoveKey( spep_3-3 + 208, 1, -28.3, 148.4 , 0 );
setMoveKey( spep_3-3 + 210, 1, -25.4, 151.5 , 0 );
setMoveKey( spep_3-3 + 212, 1, -27.3, 147.8 , 0 );
setMoveKey( spep_3-3 + 214, 1, -25.4, 152.4 , 0 );
setMoveKey( spep_3-3 + 216, 1, -26.5, 147.2 , 0 );
setMoveKey( spep_3-3 + 218, 1, -24.5, 152.1 , 0 );
setMoveKey( spep_3-3 + 220, 1, -28.8, 149.5 , 0 );
setMoveKey( spep_3-3 + 222, 1, -25, 149 , 0 );
setMoveKey( spep_3-3 + 224, 1, -26.9, 152 , 0 );
setMoveKey( spep_3-3 + 226, 1, -25.9, 148.7 , 0 );
setMoveKey( spep_3-3 + 228, 1, -24.6, 152.2 , 0 );
setMoveKey( spep_3-3 + 230, 1, -26.2, 148.8 , 0 );
setMoveKey( spep_3-3 + 232, 1, -25.1, 152.6 , 0 );
setMoveKey( spep_3-3 + 234, 1, -25.5, 149.1 , 0 );
setMoveKey( spep_3-3 + 236, 1, -27, 152.4 , 0 );
setMoveKey( spep_3-3 + 238, 1, -25.8, 148.5 , 0 );
setMoveKey( spep_3-3 + 240, 1, -27.4, 151.5 , 0 );
setMoveKey( spep_3-3 + 242, 1, -23.8, 151.9 , 0 );
setMoveKey( spep_3-3 + 244, 1, -27.2, 148.6 , 0 );
setMoveKey( spep_3-3 + 246, 1, -23.9, 151.9 , 0 );
setMoveKey( spep_3-3 + 248, 1, -27.9, 151.3 , 0 );
setMoveKey( spep_3-3 + 250, 1, -25.2, 150 , 0 );
setMoveKey( spep_3-3 + 252, 1, -25.1, 153.5 , 0 );
setMoveKey( spep_3-3 + 254, 1, -27.7, 149.4 , 0 );
setMoveKey( spep_3-3 + 256, 1, -24.6, 153.7 , 0 );
setMoveKey( spep_3-3 + 258, 1, -25.9, 149 , 0 );
setMoveKey( spep_3-3 + 260, 1, -23.9, 152.8 , 0 );
setMoveKey( spep_3-3 + 262, 1, -28.4, 151.8 , 0 );
setMoveKey( spep_3-3 + 264, 1, -24.5, 152.2 , 0 );
setMoveKey( spep_3-3 + 266, 1, -28.1, 151 , 0 );
]]
setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 6, 1, 1.52, 1.52 );
setScaleKey( spep_3-3 + 7, 1, 1.52, 1.52 );
setScaleKey( spep_3-3 + 8, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 9, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 10, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 11, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 12, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 13, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 14, 1, 1.71, 1.71 );
setScaleKey( spep_3-3 + 15, 1, 1.71, 1.71 );
setScaleKey( spep_3-3 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 17, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 18, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 19, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 20, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 21, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 22, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 23, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 24, 1, 2.69, 2.69 );
setScaleKey( spep_3-3 + 25, 1, 2.69, 2.69 );
setScaleKey( spep_3-3 + 26, 1, 3.07, 3.07 );
setScaleKey( spep_3-3 + 27, 1, 3.07, 3.07 );
setScaleKey( spep_3-3 + 28, 1, 3.55, 3.55 );
setScaleKey( spep_3-3 + 29, 1, 3.55, 3.55 );

setScaleKey( spep_3-3 + 30, 1, 4.11, 4.11 );
setScaleKey( spep_3-3 + 32, 1, 4.66, 4.66 );
setScaleKey( spep_3-3 + 34, 1, 5.16, 5.16 );
setScaleKey( spep_3-3 + 36, 1, 5.6, 5.6 );
setScaleKey( spep_3-3 + 38, 1, 5.98, 5.98 );
setScaleKey( spep_3-3 + 40, 1, 6.3, 6.3 );
setScaleKey( spep_3-3 + 42, 1, 6.56, 6.56 );
setScaleKey( spep_3-3 + 44, 1, 6.77, 6.77 );
setScaleKey( spep_3-3 + 46, 1, 6.93, 6.93 );
setScaleKey( spep_3-3 + 48, 1, 7.04, 7.04 );
setScaleKey( spep_3-3 + 50, 1, 7.12, 7.12 );
setScaleKey( spep_3-3 + 52, 1, 7.16, 7.16 );
setScaleKey( spep_3-3 + 54, 1, 7.19, 7.19 );
setScaleKey( spep_3-3 + 56, 1, 7.2, 7.2 );
setScaleKey( spep_3-3 + 60, 1, 7.2, 7.2 );
setScaleKey( spep_3-3 + 62, 1, 6.61, 6.61 );
setScaleKey( spep_3-3 + 64, 1, 6.04, 6.04 );
setScaleKey( spep_3-3 + 66, 1, 5.49, 5.49 );
setScaleKey( spep_3-3 + 68, 1, 4.97, 4.97 );
setScaleKey( spep_3-3 + 70, 1, 4.49, 4.49 );
setScaleKey( spep_3-3 + 72, 1, 4.05, 4.05 );

setScaleKey( spep_3-3 + 74, 1, 3.64, 3.64 );
setScaleKey( spep_3-3 + 75, 1, 3.64, 3.64 );
setScaleKey( spep_3-3 + 76, 1, 3.28, 3.28 );
setScaleKey( spep_3-3 + 77, 1, 3.28, 3.28 );
setScaleKey( spep_3-3 + 78, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 79, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 80, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 81, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 82, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 83, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 84, 1, 2.18, 2.18 );
setScaleKey( spep_3-3 + 85, 1, 2.18, 2.18 );
setScaleKey( spep_3-3 + 86, 1, 1.98, 1.98 );
setScaleKey( spep_3-3 + 87, 1, 1.98, 1.98 );
setScaleKey( spep_3-3 + 88, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 89, 1, 1.8, 1.8 );

setScaleKey( spep_3-3 + 90, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 92, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 94, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_3-3 + 98, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 100, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 102, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 104, 1, 1.43, 1.43 );
setScaleKey( spep_3-3 + 106, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 108, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 110, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 112, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 114, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 116, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 118, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 124, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 126, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 128, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 134, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 136, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 140, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 142, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 146, 1, 1.35, 1.35 );
--setScaleKey( spep_3-3 + 148, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 148, 1, 1.21, 1.21 );
--[[
setScaleKey( spep_3-3 + 152, 1, 1.55, 1.55 );
setScaleKey( spep_3-3 + 154, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 156, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 158, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 160, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 162, 1, 1.33, 1.33 );
setScaleKey( spep_3-3 + 176, 1, 1.33, 1.33 );
setScaleKey( spep_3-3 + 178, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 196, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 198, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 232, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 234, 1, 1.3, 1.3 );
setScaleKey( spep_3-3 + 266, 1, 1.3, 1.3 );
]]
setRotateKey( spep_3-3 + 0, 1, -45 );
setRotateKey( spep_3 + 148, 1, -45 );

--集中線
shuchusen1 = entryEffectLife( spep_3-3 + 148,  906, 120, 0x100, -1, 0, 1, 1 );
setEffShake( spep_3-3 + 148, shuchusen1, 120, 20 );
setEffMoveKey( spep_3-3 + 148, shuchusen1, 1, 1 , 0 );
setEffMoveKey( spep_3-3 + 268, shuchusen1, 1, 1 , 0 );

setEffScaleKey( spep_3-3 + 148, shuchusen1, 1.14, 1.15 );
setEffScaleKey( spep_3-3 + 268, shuchusen1, 1.14, 1.15 );

setEffRotateKey( spep_3-3 + 148, shuchusen1, 180 );
setEffRotateKey( spep_3-3 + 268, shuchusen1, 180 );

setEffAlphaKey( spep_3-3 + 148, shuchusen1, 255 );
setEffAlphaKey( spep_3-3 + 268, shuchusen1, 255 );

--SE
setSeVolume( spep_3 + 37, 1215, 4.5 );
setSeVolume( spep_3 + 38, 1215, 9 );
setSeVolume( spep_3 + 39, 1215, 13.5 );
setSeVolume( spep_3 + 40, 1215, 18 );
setSeVolume( spep_3 + 41, 1215, 22.5 );
setSeVolume( spep_3 + 42, 1215, 27 );
setSeVolume( spep_3 + 43, 1215, 31.5 );
setSeVolume( spep_3 + 44, 1215, 36 );
setSeVolume( spep_3 + 45, 1215, 40.5 );
setSeVolume( spep_3 + 46, 1215, 45 );
setSeVolume( spep_3 + 47, 1215, 50 );
se_1209 = playSe( spep_3 + 18, 1209 );
setSeVolume( spep_3 + 18, 1209, 0 );
setSeVolume( spep_3 + 42, 1209, 8.7 );
setSeVolume( spep_3 + 43, 1209, 17.4 );
setSeVolume( spep_3 + 44, 1209, 26.1 );
setSeVolume( spep_3 + 45, 1209, 34.8 );
setSeVolume( spep_3 + 46, 1209, 43.5 );
setSeVolume( spep_3 + 47, 1209, 52.2 );
setSeVolume( spep_3 + 48, 1209, 60.9 );
setSeVolume( spep_3 + 49, 1209, 69.6 );
setSeVolume( spep_3 + 50, 1209, 79 );
playSe( spep_3 + 26, 1109 );
se_1161 = playSe( spep_3 + 34, 1161 );
setSeVolume( spep_3 + 34, 1161, 45 );

--敵に向かう
se_1116 = playSe( spep_3 + 57, 1116 );
playSe( spep_3 + 59, 1004 );
playSe( spep_3 + 64, 1003 );
--斬る
playSe( spep_3 + 79, 1189 );
playSe( spep_3 + 85, 1061 );
playSe( spep_3 + 85, 1238 );
playSe( spep_3 + 92, 1032 );
--爆発
playSe( spep_3 + 150, 1023 );
playSe( spep_3 + 150, 1159 );
setSeVolume( spep_3 + 150, 1159, 63 );

stopSe( spep_3 + 26, se_1214, 24 );
stopSe( spep_3 + 61, se_1215, 30 );
stopSe( spep_3 + 60, se_1209, 25 );
stopSe( spep_3 + 49, se_1161, 26 );
stopSe( spep_3 + 74, se_1116, 32 );

--終わり
dealDamage( spep_3+148  );
endPhase( spep_3 + 260 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--顔カットイン
--speff = entryEffect( spep_0 + 18  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 18  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +6 +24, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_0 +6 +24,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +6 +96,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +6 +24, ctgogo, 0 );
setEffAlphaKey( spep_0 +6 + 25, ctgogo, 255 );
setEffAlphaKey( spep_0 +6 + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 +6 + 90, ctgogo, 255 );
setEffAlphaKey( spep_0 +6 + 92, ctgogo, 191 );
setEffAlphaKey( spep_0 +6 + 94, ctgogo, 112 );
setEffAlphaKey( spep_0 +6 + 96, ctgogo, 64 );

setEffRotateKey(  spep_0 +6 +24,  ctgogo,  0);
setEffRotateKey(  spep_0 +6 +96,  ctgogo,  0);

setEffScaleKey(  spep_0 +6 +24,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +6 +86,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +6 +96,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 30, 1018 );
setSeVolume( spep_0 + 30, 1018, 89 );

se_1116 = playSe( spep_0 + 0, 1116 );
setSeVolume( spep_0 + 0, 1116, 71 );
playSe( spep_0 + 24, 1023 );
setSeVolume( spep_0 + 24, 1023, 79 );
playSe( spep_0 + 28, 1035 );
setSeVolume( spep_0 + 28, 1035, 50 );

stopSe( spep_0 + 20, se_1116, 19 );

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 112, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+110;

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
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- バビディ魔術発射〜敵にヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 126, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 126, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 124, hit_f, 255 );
setEffAlphaKey( spep_2 + 125, hit_f, 255 );
setEffAlphaKey( spep_2 + 126, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 126, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 126, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 124, hit_b, 255 );
setEffAlphaKey( spep_2 + 125, hit_b, 255 );
setEffAlphaKey( spep_2 + 126, hit_b, 0 );

--SE
playSe( spep_2 + 0, 1198 );
setSeVolume( spep_2 + 0, 1198, 0 );
setSeVolume( spep_2 + 20, 1198, 15.8);
setSeVolume( spep_2 + 21, 1198, 31.6 );
setSeVolume( spep_2 + 22, 1198, 47.4 );
setSeVolume( spep_2 + 23, 1198, 63.2 );
setSeVolume( spep_2 + 24, 1198, 79 );
se_1222 = playSe( spep_2 + 10, 1222 );
setSeVolume( spep_2 + 10, 1222, 71 );
se_1127 = playSe( spep_2 + 10, 1127 );
setSeVolume( spep_2 + 10, 1127, 63 );
se_1214 = playSe( spep_2 + 10, 1214 );
setSeVolume( spep_2 + 10, 1214, 0 );
setSeVolume( spep_2 + 109, 1214, 66.3 );
setSeVolume( spep_2 + 110, 1214, 132.6 );
setSeVolume( spep_2 + 111, 1214, 198.9 );
setSeVolume( spep_2 + 112, 1214, 265.2 );
setSeVolume( spep_2 + 113, 1214, 331.5 );
setSeVolume( spep_2 + 114, 1214, 398 );
playSe( spep_2 + 14, 49 );
setSeVolume( spep_2 + 14, 49, 63 );
se_1196 = playSe( spep_2 + 14, 1196 );
setSeVolume( spep_2 + 14, 1196, 141 );
se_1185 = playSe( spep_2 + 21, 1185 );
setSeVolume( spep_2 + 21, 1185, 141 );
se_1215 = playSe( spep_2 + 23, 1215 );
setSeVolume( spep_2 + 23, 1215, 0 );
se_1195 = playSe( spep_2 + 29, 1195 );
setSeVolume( spep_2 + 29, 1195, 141 );
se_1177 = playSe( spep_2 + 41, 1177 );
se_1202 = playSe( spep_2 + 41, 1202 );
SE0=playSe( spep_2 + 41, 1027 );
setSeVolume( spep_2 + 41, 1027, 89 );

stopSe( spep_2 + 30, se_1222, 15 );
stopSe( spep_2 + 25, se_1127, 23 );
stopSe( spep_2 + 26, se_1196, 7 );
stopSe( spep_2 + 34, se_1185, 5 );
stopSe( spep_2 + 40, se_1195, 6 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+64 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1177, 0 );  
    stopSe( SP_dodge - 12, se_1202, 0 );
    stopSe( SP_dodge - 12, SE0, 0 );

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

--敵の動き
setDisp( spep_2-3 + 70, 1, 1);
changeAnime( spep_2-3 + 70, 1, 100);
changeAnime( spep_2-3 + 78, 1, 104);
changeAnime( spep_2-3 + 90, 1, 106);

setMoveKey( spep_2-3 + 70, 1, -108.8, -11.7 , 0 );
setMoveKey( spep_2-3 + 72, 1, -91.3, -9.8 , 0 );
setMoveKey( spep_2-3 + 74, 1, -76.1, -8.1 , 0 );
setMoveKey( spep_2-3 + 76, 1, -63.1, -6.7 , 0 );
setMoveKey( spep_2-3 + 77, 1, -63.1, -6.7 , 0 );

setMoveKey( spep_2-3 + 78, 1, -51.8, -5.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, -42.3, -4.5 , 0 );
setMoveKey( spep_2-3 + 82, 1, -34.2, -3.7 , 0 );
setMoveKey( spep_2-3 + 84, 1, -27.3, -2.9 , 0 );
setMoveKey( spep_2-3 + 86, 1, -21.7, -2.3 , 0 );
setMoveKey( spep_2-3 + 88, 1, -17, -1.8 , 0 );
setMoveKey( spep_2-3 + 89, 1, -17, -1.8 , 0 );

setMoveKey( spep_2-3 + 90, 1, -45, 16.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, -41.4, 16.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, -38.6, 16.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, -36.3, 16.9 , 0 );
setMoveKey( spep_2-3 + 98, 1, -34.6, 16.9 , 0 );
setMoveKey( spep_2-3 + 100, 1, -33.2, 16.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, -32.2, 17 , 0 );
setMoveKey( spep_2-3 + 104, 1, -31.5, 17 , 0 );
setMoveKey( spep_2-3 + 106, 1, -31, 17 , 0 );
setMoveKey( spep_2-3 + 108, 1, -30.6, 17 , 0 );
setMoveKey( spep_2-3 + 110, 1, -30.4, 17 , 0 );
setMoveKey( spep_2-3 + 112, 1, -30.2, 17 , 0 );
setMoveKey( spep_2-3 + 114, 1, -30.1, 17 , 0 );
setMoveKey( spep_2 + 125, 1, -30, 17 , 0 );

setScaleKey( spep_2-3 + 70, 1, 2.25, 2.25 );
setScaleKey( spep_2-3 + 72, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 74, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 76, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 77, 1, 1.93, 1.93 );

setScaleKey( spep_2-3 + 78, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 80, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 82, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 84, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 86, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 89, 1, 1.62, 1.62 );

setScaleKey( spep_2-3 + 90, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 92, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 94, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 96, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 98, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 106, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 108, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 125, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 70, 1, 0 );
setRotateKey( spep_2-3 + 89, 1, 0 );
setRotateKey( spep_2-3 + 90, 1, -45 );
setRotateKey( spep_2 + 125, 1, -45 );

--SE
playSe( spep_2 + 110, 1162 );
setSeVolume( spep_2 + 110, 1162, 63 );
playSe( spep_2 + 110, 1038 );
setSeVolume( spep_2 + 110, 1038, 79 );

stopSe( spep_2 + 117, se_1177, 0 );
stopSe( spep_2 + 117, se_1202, 0 );

--次の準備
spep_3=spep_2+126;
------------------------------------------------------
-- バビディ魔術発射〜敵にヒット
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 270, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 270, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 270, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 270, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 26, 1, 0 );
setDisp( spep_3 + 72, 1, 1 );
setDisp( spep_3 + 148, 1, 0 );

setMoveKey( spep_3 + 0, 1, -30, 17 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -30, 16.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, -30.1, 15.2 , 0 );
setMoveKey( spep_3-3 + 5, 1, -30.1, 15.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, -30.3, 10.8 , 0 );
setMoveKey( spep_3-3 + 7, 1, -30.3, 10.8 , 0 );
setMoveKey( spep_3-3 + 8, 1, -30.8, 2.2 , 0 );
setMoveKey( spep_3-3 + 9, 1, -30.8, 2.2 , 0 );
setMoveKey( spep_3-3 + 10, 1, -31.5, -12.2 , 0 );
setMoveKey( spep_3-3 + 11, 1, -31.5, -12.2 , 0 );
setMoveKey( spep_3-3 + 12, 1, -32.6, -34 , 0 );
setMoveKey( spep_3-3 + 13, 1, -32.6, -34 , 0 );
setMoveKey( spep_3-3 + 14, 1, -34.2, -65.2 , 0 );
setMoveKey( spep_3-3 + 15, 1, -34.2, -65.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, -36.3, -108.3 , 0 );
setMoveKey( spep_3-3 + 17, 1, -36.3, -108.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, -39.2, -166 , 0 );
setMoveKey( spep_3-3 + 19, 1, -39.2, -166 , 0 );
setMoveKey( spep_3-3 + 20, 1, -42.9, -242 , 0 );
setMoveKey( spep_3-3 + 21, 1, -42.9, -242 , 0 );
setMoveKey( spep_3-3 + 22, 1, -47.7, -340.5 , 0 );
setMoveKey( spep_3-3 + 23, 1, -47.7, -340.5 , 0 );
setMoveKey( spep_3-3 + 24, 1, -53.8, -467.2 , 0 );
setMoveKey( spep_3-3 + 25, 1, -53.8, -467.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, -61.4, -628.6 , 0 );
setMoveKey( spep_3-3 + 27, 1, -61.4, -628.6 , 0 );
setMoveKey( spep_3-3 + 28, 1, -70.9, -833.1 , 0 );
setMoveKey( spep_3-3 + 29, 1, -70.9, -833.1 , 0 );

setMoveKey( spep_3-3 + 30, 1, -82.3, -1081.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, -93.2, -1322.7 , 0 );
setMoveKey( spep_3-3 + 34, 1, -103.2, -1543.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, -111.9, -1740.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, -119.5, -1911.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, -125.9, -2056.5 , 0 );
setMoveKey( spep_3-3 + 42, 1, -131.2, -2175.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, -135.3, -2270.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, -138.5, -2342.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, -140.8, -2394.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -142.4, -2430.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, -143.3, -2451.8 , 0 );
setMoveKey( spep_3-3 + 54, 1, -143.8, -2462.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, -144, -2467 , 0 );
setMoveKey( spep_3-3 + 58, 1, -144, -2467.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, -144, -2467.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, -132.1, -2224.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, -120.7, -1987.5 , 0 );
setMoveKey( spep_3-3 + 66, 1, -109.8, -1759.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, -99.5, -1542 , 0 );
setMoveKey( spep_3-3 + 70, 1, -89.9, -1337.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, -81, -1148.2 , 0 );

setMoveKey( spep_3-3 + 74, 1, -72.9, -973.9 , 0 );
setMoveKey( spep_3-3 + 75, 1, -72.9, -973.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, -65.6, -815 , 0 );
setMoveKey( spep_3-3 + 77, 1, -65.6, -815 , 0 );
setMoveKey( spep_3-3 + 78, 1, -59, -671.4 , 0 );
setMoveKey( spep_3-3 + 79, 1, -59, -671.4 , 0 );
setMoveKey( spep_3-3 + 80, 1, -53.2, -542.3 , 0 );
setMoveKey( spep_3-3 + 81, 1, -53.2, -542.3 , 0 );
setMoveKey( spep_3-3 + 82, 1, -48.1, -426.3 , 0 );
setMoveKey( spep_3-3 + 83, 1, -48.1, -426.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, -43.6, -321.4 , 0 );
setMoveKey( spep_3-3 + 85, 1, -43.6, -321.4 , 0 );
setMoveKey( spep_3-3 + 86, 1, -39.6, -225.4 , 0 );
setMoveKey( spep_3-3 + 87, 1, -39.6, -225.4 , 0 );
setMoveKey( spep_3-3 + 88, 1, -36, -135.1 , 0 );
setMoveKey( spep_3-3 + 89, 1, -36, -135.1 , 0 );

setMoveKey( spep_3-3 + 90, 1, -30, 109 , 0 );
setMoveKey( spep_3-3 + 92, 1, -29.7, 111.9 , 0 );
setMoveKey( spep_3-3 + 94, 1, -29.5, 114.4 , 0 );
setMoveKey( spep_3-3 + 96, 1, -29.3, 116.7 , 0 );
setMoveKey( spep_3-3 + 98, 1, -29.1, 118.7 , 0 );
setMoveKey( spep_3-3 + 100, 1, -28.9, 120.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, -28.7, 122.1 , 0 );
setMoveKey( spep_3-3 + 104, 1, -28.6, 123.6 , 0 );
setMoveKey( spep_3-3 + 106, 1, -28.5, 125 , 0 );
setMoveKey( spep_3-3 + 108, 1, -28.3, 126.3 , 0 );
setMoveKey( spep_3-3 + 110, 1, -28.2, 127.5 , 0 );
setMoveKey( spep_3-3 + 112, 1, -28.1, 128.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, -28, 129.8 , 0 );
setMoveKey( spep_3-3 + 116, 1, -27.9, 130.8 , 0 );
setMoveKey( spep_3-3 + 118, 1, -27.8, 131.7 , 0 );
setMoveKey( spep_3-3 + 120, 1, -27.8, 132.6 , 0 );
setMoveKey( spep_3-3 + 122, 1, -27.7, 133.5 , 0 );
setMoveKey( spep_3-3 + 124, 1, -27.6, 134.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, -27.5, 135 , 0 );
setMoveKey( spep_3-3 + 128, 1, -27.5, 135.7 , 0 );
setMoveKey( spep_3-3 + 130, 1, -27.4, 136.5 , 0 );
setMoveKey( spep_3-3 + 132, 1, -27.3, 137.1 , 0 );
setMoveKey( spep_3-3 + 134, 1, -27.3, 137.7 , 0 );
setMoveKey( spep_3-3 + 136, 1, -27.2, 138.4 , 0 );
setMoveKey( spep_3-3 + 138, 1, -27.2, 138.9 , 0 );
setMoveKey( spep_3-3 + 140, 1, -27.1, 139.5 , 0 );
setMoveKey( spep_3-3 + 142, 1, -27.1, 140 , 0 );
setMoveKey( spep_3-3 + 144, 1, -27, 140.5 , 0 );
setMoveKey( spep_3-3 + 146, 1, -27, 141 , 0 );
setMoveKey( spep_3 + 148, 1, -35, 183.9 , 0 );

--[[
setMoveKey( spep_3-3 + 148, 1, -24.6, 127.7 , 0 );
setMoveKey( spep_3-3 + 152, 1, -31.7, 163.4 , 0 );
setMoveKey( spep_3-3 + 154, 1, -26.8, 135.3 , 0 );
setMoveKey( spep_3-3 + 156, 1, -31.1, 157 , 0 );
setMoveKey( spep_3-3 + 158, 1, -27.5, 135.7 , 0 );
setMoveKey( spep_3-3 + 160, 1, -27.9, 145 , 0 );
setMoveKey( spep_3-3 + 162, 1, -27.1, 142 , 0 );
setMoveKey( spep_3-3 + 164, 1, -24.6, 145.6 , 0 );
setMoveKey( spep_3-3 + 166, 1, -27.7, 142.4 , 0 );
setMoveKey( spep_3-3 + 168, 1, -26.1, 147.4 , 0 );
setMoveKey( spep_3-3 + 170, 1, -27.1, 144 , 0 );
setMoveKey( spep_3-3 + 172, 1, -24.8, 146.2 , 0 );
setMoveKey( spep_3-3 + 174, 1, -28.8, 147 , 0 );
setMoveKey( spep_3-3 + 176, 1, -24.3, 144.8 , 0 );
setMoveKey( spep_3-3 + 178, 1, -28.3, 147.1 , 0 );
setMoveKey( spep_3-3 + 180, 1, -25.8, 144.5 , 0 );
setMoveKey( spep_3-3 + 182, 1, -24.7, 148.8 , 0 );
setMoveKey( spep_3-3 + 184, 1, -26.7, 145.4 , 0 );
setMoveKey( spep_3-3 + 186, 1, -25.8, 150.2 , 0 );
setMoveKey( spep_3-3 + 188, 1, -25.5, 146.1 , 0 );
setMoveKey( spep_3-3 + 190, 1, -28.5, 148.8 , 0 );
setMoveKey( spep_3-3 + 192, 1, -25, 147.1 , 0 );
setMoveKey( spep_3-3 + 194, 1, -28.7, 148.7 , 0 );
setMoveKey( spep_3-3 + 196, 1, -24.6, 146.2 , 0 );
setMoveKey( spep_3-3 + 198, 1, -26.3, 151 , 0 );
setMoveKey( spep_3-3 + 200, 1, -24.5, 146.7 , 0 );
setMoveKey( spep_3-3 + 202, 1, -27.9, 151 , 0 );
setMoveKey( spep_3-3 + 204, 1, -26, 147.3 , 0 );
setMoveKey( spep_3-3 + 206, 1, -25.1, 151.5 , 0 );
setMoveKey( spep_3-3 + 208, 1, -28.3, 148.4 , 0 );
setMoveKey( spep_3-3 + 210, 1, -25.4, 151.5 , 0 );
setMoveKey( spep_3-3 + 212, 1, -27.3, 147.8 , 0 );
setMoveKey( spep_3-3 + 214, 1, -25.4, 152.4 , 0 );
setMoveKey( spep_3-3 + 216, 1, -26.5, 147.2 , 0 );
setMoveKey( spep_3-3 + 218, 1, -24.5, 152.1 , 0 );
setMoveKey( spep_3-3 + 220, 1, -28.8, 149.5 , 0 );
setMoveKey( spep_3-3 + 222, 1, -25, 149 , 0 );
setMoveKey( spep_3-3 + 224, 1, -26.9, 152 , 0 );
setMoveKey( spep_3-3 + 226, 1, -25.9, 148.7 , 0 );
setMoveKey( spep_3-3 + 228, 1, -24.6, 152.2 , 0 );
setMoveKey( spep_3-3 + 230, 1, -26.2, 148.8 , 0 );
setMoveKey( spep_3-3 + 232, 1, -25.1, 152.6 , 0 );
setMoveKey( spep_3-3 + 234, 1, -25.5, 149.1 , 0 );
setMoveKey( spep_3-3 + 236, 1, -27, 152.4 , 0 );
setMoveKey( spep_3-3 + 238, 1, -25.8, 148.5 , 0 );
setMoveKey( spep_3-3 + 240, 1, -27.4, 151.5 , 0 );
setMoveKey( spep_3-3 + 242, 1, -23.8, 151.9 , 0 );
setMoveKey( spep_3-3 + 244, 1, -27.2, 148.6 , 0 );
setMoveKey( spep_3-3 + 246, 1, -23.9, 151.9 , 0 );
setMoveKey( spep_3-3 + 248, 1, -27.9, 151.3 , 0 );
setMoveKey( spep_3-3 + 250, 1, -25.2, 150 , 0 );
setMoveKey( spep_3-3 + 252, 1, -25.1, 153.5 , 0 );
setMoveKey( spep_3-3 + 254, 1, -27.7, 149.4 , 0 );
setMoveKey( spep_3-3 + 256, 1, -24.6, 153.7 , 0 );
setMoveKey( spep_3-3 + 258, 1, -25.9, 149 , 0 );
setMoveKey( spep_3-3 + 260, 1, -23.9, 152.8 , 0 );
setMoveKey( spep_3-3 + 262, 1, -28.4, 151.8 , 0 );
setMoveKey( spep_3-3 + 264, 1, -24.5, 152.2 , 0 );
setMoveKey( spep_3-3 + 266, 1, -28.1, 151 , 0 );
]]
setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 6, 1, 1.52, 1.52 );
setScaleKey( spep_3-3 + 7, 1, 1.52, 1.52 );
setScaleKey( spep_3-3 + 8, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 9, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 10, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 11, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 12, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 13, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 14, 1, 1.71, 1.71 );
setScaleKey( spep_3-3 + 15, 1, 1.71, 1.71 );
setScaleKey( spep_3-3 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 17, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 18, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 19, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 20, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 21, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 22, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 23, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 24, 1, 2.69, 2.69 );
setScaleKey( spep_3-3 + 25, 1, 2.69, 2.69 );
setScaleKey( spep_3-3 + 26, 1, 3.07, 3.07 );
setScaleKey( spep_3-3 + 27, 1, 3.07, 3.07 );
setScaleKey( spep_3-3 + 28, 1, 3.55, 3.55 );
setScaleKey( spep_3-3 + 29, 1, 3.55, 3.55 );

setScaleKey( spep_3-3 + 30, 1, 4.11, 4.11 );
setScaleKey( spep_3-3 + 32, 1, 4.66, 4.66 );
setScaleKey( spep_3-3 + 34, 1, 5.16, 5.16 );
setScaleKey( spep_3-3 + 36, 1, 5.6, 5.6 );
setScaleKey( spep_3-3 + 38, 1, 5.98, 5.98 );
setScaleKey( spep_3-3 + 40, 1, 6.3, 6.3 );
setScaleKey( spep_3-3 + 42, 1, 6.56, 6.56 );
setScaleKey( spep_3-3 + 44, 1, 6.77, 6.77 );
setScaleKey( spep_3-3 + 46, 1, 6.93, 6.93 );
setScaleKey( spep_3-3 + 48, 1, 7.04, 7.04 );
setScaleKey( spep_3-3 + 50, 1, 7.12, 7.12 );
setScaleKey( spep_3-3 + 52, 1, 7.16, 7.16 );
setScaleKey( spep_3-3 + 54, 1, 7.19, 7.19 );
setScaleKey( spep_3-3 + 56, 1, 7.2, 7.2 );
setScaleKey( spep_3-3 + 60, 1, 7.2, 7.2 );
setScaleKey( spep_3-3 + 62, 1, 6.61, 6.61 );
setScaleKey( spep_3-3 + 64, 1, 6.04, 6.04 );
setScaleKey( spep_3-3 + 66, 1, 5.49, 5.49 );
setScaleKey( spep_3-3 + 68, 1, 4.97, 4.97 );
setScaleKey( spep_3-3 + 70, 1, 4.49, 4.49 );
setScaleKey( spep_3-3 + 72, 1, 4.05, 4.05 );

setScaleKey( spep_3-3 + 74, 1, 3.64, 3.64 );
setScaleKey( spep_3-3 + 75, 1, 3.64, 3.64 );
setScaleKey( spep_3-3 + 76, 1, 3.28, 3.28 );
setScaleKey( spep_3-3 + 77, 1, 3.28, 3.28 );
setScaleKey( spep_3-3 + 78, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 79, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 80, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 81, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 82, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 83, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 84, 1, 2.18, 2.18 );
setScaleKey( spep_3-3 + 85, 1, 2.18, 2.18 );
setScaleKey( spep_3-3 + 86, 1, 1.98, 1.98 );
setScaleKey( spep_3-3 + 87, 1, 1.98, 1.98 );
setScaleKey( spep_3-3 + 88, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 89, 1, 1.8, 1.8 );

setScaleKey( spep_3-3 + 90, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 92, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 94, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_3-3 + 98, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 100, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 102, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 104, 1, 1.43, 1.43 );
setScaleKey( spep_3-3 + 106, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 108, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 110, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 112, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 114, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 116, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 118, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 124, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 126, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 128, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 134, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 136, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 140, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 142, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 146, 1, 1.35, 1.35 );
--setScaleKey( spep_3-3 + 148, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 148, 1, 1.21, 1.21 );
--[[
setScaleKey( spep_3-3 + 152, 1, 1.55, 1.55 );
setScaleKey( spep_3-3 + 154, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 156, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 158, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 160, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 162, 1, 1.33, 1.33 );
setScaleKey( spep_3-3 + 176, 1, 1.33, 1.33 );
setScaleKey( spep_3-3 + 178, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 196, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 198, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 232, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 234, 1, 1.3, 1.3 );
setScaleKey( spep_3-3 + 266, 1, 1.3, 1.3 );
]]
setRotateKey( spep_3-3 + 0, 1, -45 );
setRotateKey( spep_3 + 148, 1, -45 );

--集中線
shuchusen1 = entryEffectLife( spep_3-3 + 148,  906, 120, 0x100, -1, 0, 1, 1 );
setEffShake( spep_3-3 + 148, shuchusen1, 120, 20 );
setEffMoveKey( spep_3-3 + 148, shuchusen1, 1, 1 , 0 );
setEffMoveKey( spep_3-3 + 268, shuchusen1, 1, 1 , 0 );

setEffScaleKey( spep_3-3 + 148, shuchusen1, 1.14, 1.15 );
setEffScaleKey( spep_3-3 + 268, shuchusen1, 1.14, 1.15 );

setEffRotateKey( spep_3-3 + 148, shuchusen1, 180 );
setEffRotateKey( spep_3-3 + 268, shuchusen1, 180 );

setEffAlphaKey( spep_3-3 + 148, shuchusen1, 255 );
setEffAlphaKey( spep_3-3 + 268, shuchusen1, 255 );

--SE
setSeVolume( spep_3 + 37, 1215, 4.5 );
setSeVolume( spep_3 + 38, 1215, 9 );
setSeVolume( spep_3 + 39, 1215, 13.5 );
setSeVolume( spep_3 + 40, 1215, 18 );
setSeVolume( spep_3 + 41, 1215, 22.5 );
setSeVolume( spep_3 + 42, 1215, 27 );
setSeVolume( spep_3 + 43, 1215, 31.5 );
setSeVolume( spep_3 + 44, 1215, 36 );
setSeVolume( spep_3 + 45, 1215, 40.5 );
setSeVolume( spep_3 + 46, 1215, 45 );
setSeVolume( spep_3 + 47, 1215, 50 );
se_1209 = playSe( spep_3 + 18, 1209 );
setSeVolume( spep_3 + 18, 1209, 0 );
setSeVolume( spep_3 + 42, 1209, 8.7 );
setSeVolume( spep_3 + 43, 1209, 17.4 );
setSeVolume( spep_3 + 44, 1209, 26.1 );
setSeVolume( spep_3 + 45, 1209, 34.8 );
setSeVolume( spep_3 + 46, 1209, 43.5 );
setSeVolume( spep_3 + 47, 1209, 52.2 );
setSeVolume( spep_3 + 48, 1209, 60.9 );
setSeVolume( spep_3 + 49, 1209, 69.6 );
setSeVolume( spep_3 + 50, 1209, 79 );
playSe( spep_3 + 26, 1109 );

--敵に向かう
se_1116 = playSe( spep_3 + 57, 1116 );
playSe( spep_3 + 59, 1004 );
playSe( spep_3 + 64, 1003 );
--斬る
playSe( spep_3 + 79, 1189 );
playSe( spep_3 + 85, 1061 );
playSe( spep_3 + 85, 1238 );
playSe( spep_3 + 92, 1032 );
--爆発
playSe( spep_3 + 150, 1023 );
playSe( spep_3 + 150, 1159 );
setSeVolume( spep_3 + 150, 1159, 63 );

stopSe( spep_3 + 26, se_1214, 24 );
stopSe( spep_3 + 61, se_1215, 30 );
stopSe( spep_3 + 60, se_1209, 25 );
stopSe( spep_3 + 49, se_1161, 26 );
stopSe( spep_3 + 74, se_1116, 32 );

--終わり
dealDamage( spep_3+148  );
endPhase( spep_3 + 260 );
end
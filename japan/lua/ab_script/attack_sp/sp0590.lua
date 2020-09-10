--1018590:バビディ＆ダーブラ_バビディの恐ろしい魔術
--sp_effect_a8_00041

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
SP_01=	155319	;--	導入、バビディアップ
SP_02=	155320	;--	ヤコン、プイプイ召喚→突撃
SP_03=	155321	;--	ヤコン、プイプイラッシュ：敵より前
SP_04=	155322	;--	ヤコン、プイプイラッシュ：敵より後ろ
SP_05=	155323	;--	岩激突：敵より前
SP_06=	155324	;--	岩激突：敵より後ろ
SP_07=	155325	;--	ツバ吐き
SP_08=	155326	;--	ツバヒット：敵より前
SP_09=	155327	;--	ツバヒット：敵より後ろ
SP_10=	155328	;--	セリフカットイン＆槍投げ
SP_11=	155329	;--	槍ヒット
SP_12=	155330	;--	ラストシーン

--エフェクト(てき)
SP_01x=	155319	;--	導入、バビディアップ	(敵)
SP_02x=	155320	;--	ヤコン、プイプイ召喚→突撃	(敵)
SP_03x=	155321	;--	ヤコン、プイプイラッシュ：敵より前	(敵)
SP_04x=	155322	;--	ヤコン、プイプイラッシュ：敵より後ろ	(敵)
SP_05x=	155323	;--	岩激突：敵より前	(敵)
SP_06x=	155324	;--	岩激突：敵より後ろ	(敵)
SP_07x=	155325	;--	ツバ吐き	(敵)
SP_08x=	155326	;--	ツバヒット：敵より前	(敵)
SP_09x=	155327	;--	ツバヒット：敵より後ろ	(敵)
SP_10x=	155331	;--	セリフカットイン＆槍投げ	(敵)
SP_11x=	155329	;--	槍ヒット	(敵)
SP_12x=	155332	;--	ラストシーン	(敵)

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
-- 導入、バビディアップ
------------------------------------------------------
--はじめの準備
spep_0=0;


-- ** エフェクト等 ** --
induction = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, induction, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, induction, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, induction, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, induction, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, induction, 0 );
setEffRotateKey( spep_0 + 50, induction, 0 );
setEffAlphaKey( spep_0 + 0, induction, 255 );
setEffAlphaKey( spep_0 + 50, induction, 255 );
setEffAlphaKey( spep_0 + 51, induction, 0 );
setEffAlphaKey( spep_0 + 52, induction, 0 );

shuchusen1 = entryEffectLife( spep_0 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 48, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 48, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 48, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 48, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 48, shuchusen1, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+42 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
SE_1241 = playSe( spep_0 + 4, 1241 );
setSeVolume( spep_0 + 4, 1241, 100 );
setSeVolume( spep_0 + 49, 1241, 100 );
setSeVolume( spep_0 + 50, 1241, 97.6 );
setSeVolume( spep_0 + 51, 1241, 95.2 );
setSeVolume( spep_0 + 52, 1241, 92.8 );
setSeVolume( spep_0 + 53, 1241, 90.4 );
setSeVolume( spep_0 + 54, 1241, 88 );
setSeVolume( spep_0 + 55, 1241, 85.6 );
setSeVolume( spep_0 + 56, 1241, 83.2 );
setSeVolume( spep_0 + 57, 1241, 80.8 );
setSeVolume( spep_0 + 58, 1241, 78.4 );
setSeVolume( spep_0 + 59, 1241, 76 );
setSeVolume( spep_0 + 60, 1241, 73.6 );
setSeVolume( spep_0 + 61, 1241, 71.2 );
setSeVolume( spep_0 + 62, 1241, 68.8 );
setSeVolume( spep_0 + 63, 1241, 66.4 );
setSeVolume( spep_0 + 64, 1241, 64 );
setSeVolume( spep_0 + 65, 1241, 61.6 );
setSeVolume( spep_0 + 66, 1241, 59.2 );
setSeVolume( spep_0 + 67, 1241, 56.8 );
setSeVolume( spep_0 + 68, 1241, 54.4 );
setSeVolume( spep_0 + 69, 1241, 52 );
setSeVolume( spep_0 + 70, 1241, 49.6 );
setSeVolume( spep_0 + 71, 1241, 47.2 );
setSeVolume( spep_0 + 72, 1241, 44.8 );
setSeVolume( spep_0 + 73, 1241, 42.4 );
setSeVolume( spep_0 + 74, 1241, 40 );
setSeVolume( spep_0 + 75, 1241, 37.6 );
setSeVolume( spep_0 + 76, 1241, 35.2 );
setSeVolume( spep_0 + 77, 1241, 32.8 );
setSeVolume( spep_0 + 78, 1241, 30.4 );
setSeVolume( spep_0 + 79, 1241, 28 );
setSeVolume( spep_0 + 80, 1241, 25.6 );
setSeVolume( spep_0 + 81, 1241, 23.2 );
setSeVolume( spep_0 + 82, 1241, 20.8 );
setSeVolume( spep_0 + 83, 1241, 18.4 );
setSeVolume( spep_0 + 84, 1241, 16 );
setSeVolume( spep_0 + 85, 1241, 13.6 );
setSeVolume( spep_0 + 86, 1241, 11.2 );
setSeVolume( spep_0 + 87, 1241, 8.8 );
setSeVolume( spep_0 + 88, 1241, 6.4 );
setSeVolume( spep_0 + 89, 1241, 4 );
setSeVolume( spep_0 + 90, 1241, 1.6 );
setSeVolume( spep_0 + 91, 1241, 0 );
stopSe( spep_0 + 92, SE_1241, 0 );
SE_1225 = playSe( spep_0 + 6, 1225 );
setSeVolume( spep_0 + 6, 1225, 141 );
SE_1214 = playSe( spep_0 + 7, 1214 );
setSeVolume( spep_0 + 7, 1214, 125.9 );
setSeVolume( spep_0 + 43, 1214, 125.9 );
setSeVolume( spep_0 + 44, 1214, 121.7 );
setSeVolume( spep_0 + 45, 1214, 117.5 );
setSeVolume( spep_0 + 46, 1214, 113.3 );
setSeVolume( spep_0 + 47, 1214, 109.1 );
setSeVolume( spep_0 + 48, 1214, 104.9 );
setSeVolume( spep_0 + 49, 1214, 100.7 );
setSeVolume( spep_0 + 50, 1214, 96.5 );
setSeVolume( spep_0 + 51, 1214, 92.3 );
setSeVolume( spep_0 + 52, 1214, 88.1 );
setSeVolume( spep_0 + 53, 1214, 83.9 );
setSeVolume( spep_0 + 54, 1214, 79.7 );
setSeVolume( spep_0 + 55, 1214, 75.5 );
setSeVolume( spep_0 + 56, 1214, 71.3 );
setSeVolume( spep_0 + 57, 1214, 67.1 );
setSeVolume( spep_0 + 58, 1214, 62.9 );
setSeVolume( spep_0 + 59, 1214, 58.7 );
setSeVolume( spep_0 + 60, 1214, 54.5 );
setSeVolume( spep_0 + 61, 1214, 50.3 );
setSeVolume( spep_0 + 62, 1214, 46.1 );
setSeVolume( spep_0 + 63, 1214, 41.9 );
setSeVolume( spep_0 + 64, 1214, 37.7 );
setSeVolume( spep_0 + 65, 1214, 33.5 );
setSeVolume( spep_0 + 66, 1214, 29.3 );
setSeVolume( spep_0 + 67, 1214, 25.1 );
setSeVolume( spep_0 + 68, 1214, 20.9 );
setSeVolume( spep_0 + 69, 1214, 16.7 );
setSeVolume( spep_0 + 70, 1214, 12.5 );
setSeVolume( spep_0 + 71, 1214, 8.3 );
setSeVolume( spep_0 + 72, 1214, 4.1 );
setSeVolume( spep_0 + 73, 1214, 0 );
stopSe( spep_0 + 74, SE_1214, 0 );

SE_8 = playSe( spep_0 + 42, 8 );
setSeVolume( spep_0 + 42, 8, 89 );




-- ** 次の準備 ** --
spep_1=spep_0+50;
------------------------------------------------------
-- ヤコン、プイプイ召喚→突撃
------------------------------------------------------
-- ** エフェクト等 ** --
summon = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, summon, 0, 0, 0 );
setEffMoveKey( spep_1 + 130, summon, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, summon, 1.0, 1.0 );
setEffScaleKey( spep_1 + 130, summon, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, summon, 0 );
setEffRotateKey( spep_1 + 130, summon, 0 );
setEffAlphaKey( spep_1 + 0, summon, 255 );
setEffAlphaKey( spep_1 + 130, summon, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 78,  906, 50, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 -3 + 78, shuchusen2, 50, 20 );
setEffMoveKey( spep_1 -3 + 78, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 128, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 78, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 128, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_1 -3 + 78, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 128, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 78, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 255 );

--白フェード
entryFade( spep_1+122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 132, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_1 + 36, 43 );
playSe( spep_1 + 47, 43 );
playSe( spep_1 + 83, 1182 );
setSeVolume( spep_1 + 83, 1182, 89 );
playSe( spep_1 + 83, 9 );
playSe( spep_1 + 83, 44 );
setSeVolume( spep_1 + 83, 44, 79 );


-- ** 次の準備 ** --
spep_2=spep_1+130;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
SE_44 = playSe( spep_2 + 93, 44 );
setSeVolume( spep_2 + 93, 44, 71 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- ヤコン、プイプイラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
struggle_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, struggle_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, struggle_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, struggle_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, struggle_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, struggle_f, 0 );
setEffRotateKey( spep_3 + 176, struggle_f, 0 );
setEffAlphaKey( spep_3 + 0, struggle_f, 255 );
setEffAlphaKey( spep_3 + 176, struggle_f, 255 );

-- ** エフェクト等 ** --
struggle_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, struggle_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, struggle_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, struggle_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, struggle_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, struggle_b, 0 );
setEffRotateKey( spep_3 + 176, struggle_b, 0 );
setEffAlphaKey( spep_3 + 0, struggle_b, 255 );
setEffAlphaKey( spep_3 + 176, struggle_b, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 42,  10012, 18, 0x100, -1, 0, 33.1, 216.5 );
setEffShake( spep_3-3 + 42, ctzuo, 18, 10 );
setEffMoveKey( spep_3-3 + 42, ctzuo, 33.1, 216.5 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, -51.9, 277.9 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzuo, -64.5, 275.3 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzuo, -75.9, 285 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzuo, -88.5, 282.3 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzuo, -99.9, 292 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzuo, -112.5, 289.3 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzuo, -123.9, 299 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzuo, -136.5, 296.3 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzuo, -147.9, 306 , 0 );

setEffScaleKey( spep_3-3 + 42, ctzuo, 1.38,1.38 );
setEffScaleKey( spep_3-3 + 44, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_3-3 + 60, ctzuo, 2.4, 2.4 );

setEffRotateKey( spep_3-3 + 42, ctzuo, -10 );
setEffRotateKey( spep_3-3 + 60, ctzuo, -10 );

setEffAlphaKey( spep_3-3 + 42, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 44, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 60, ctzuo, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE_49 = playSe( spep_3 + 24, 49 );
setSeVolume( spep_3 + 24, 49, 100 );
SE_1037 = playSe( spep_3 + 24, 1037 );
setSeVolume( spep_3 + 24, 1037, 63 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_44, 0 );
    stopSe( SP_dodge - 12, SE_49, 0 );
    stopSe( SP_dodge - 12, SE_1037, 0 );

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
setDisp( spep_3-3 + 64, 1, 1);
--setDisp( spep_3-3 + 178, 1, 0);
changeAnime( spep_3-3 + 64, 1, 100);
changeAnime( spep_3-3 + 90, 1, 108);
changeAnime( spep_3-3 + 100, 1, 105);
changeAnime( spep_3-3 + 128, 1, 105);
changeAnime( spep_3-3 + 152, 1, 107);

setMoveKey( spep_3-3 + 64, 1, 165.9, 245.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 152.2, 233.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 138.5, 220.5 , 0 );
setMoveKey( spep_3-3 + 70, 1, 132.2, 213.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 125.2, 206.2 , 0 );
setMoveKey( spep_3-3 + 74, 1, 117.3, 197.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 108.6, 188.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 99.1, 179 , 0 );
setMoveKey( spep_3-3 + 80, 1, 88.7, 168.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 77.6, 157.1 , 0 );
setMoveKey( spep_3-3 + 84, 1, 65.6, 145 , 0 );
setMoveKey( spep_3-3 + 86, 1, 52.8, 132.1 , 0 );
setMoveKey( spep_3-3 + 88, 1, 39.1, 118.4 , 0 );
setMoveKey( spep_3-3 + 89, 1, 39.1, 118.4 , 0 );

setMoveKey( spep_3-3 + 90, 1, 87.4, 93.5 , 0 );
setMoveKey( spep_3-3 + 92, 1, 57.3, 70 , 0 );
setMoveKey( spep_3-3 + 94, 1, 152.6, 130 , 0 );
setMoveKey( spep_3-3 + 96, 1, 81.4, 90.5 , 0 );
setMoveKey( spep_3-3 + 98, 1, 50.7, 68.5 , 0 );
setMoveKey( spep_3-3 + 99, 1, 50.7, 68.5 , 0 );

setMoveKey( spep_3-3 + 100, 1, 168.9, 102.4 , 0 );
setMoveKey( spep_3-3 + 102, 1, 113.1, 83.1 , 0 );
setMoveKey( spep_3-3 + 104, 1, 126.1, 102.6 , 0 );
setMoveKey( spep_3-3 + 106, 1, 135, 117.8 , 0 );
setMoveKey( spep_3-3 + 108, 1, 151.7, 140.9 , 0 );
setMoveKey( spep_3-3 + 110, 1, 160.2, 155.6 , 0 );
setMoveKey( spep_3-3 + 112, 1, 172.4, 174.2 , 0 );
setMoveKey( spep_3-3 + 114, 1, 184.5, 192.5 , 0 );
setMoveKey( spep_3-3 + 116, 1, 196.4, 210.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 208.1, 228.3 , 0 );
setMoveKey( spep_3-3 + 120, 1, 219.6, 245.9 , 0 );
setMoveKey( spep_3-3 + 122, 1, 230.8, 263.3 , 0 );
setMoveKey( spep_3-3 + 124, 1, 241.9, 280.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, 252.8, 297.2 , 0 );
setMoveKey( spep_3-3 + 127, 1, 252.8, 297.2 , 0 );

setMoveKey( spep_3-3 + 128, 1, -285, -730.3 , 0 );
setMoveKey( spep_3-3 + 130, 1, -258.3, -667.7 , 0 );
setMoveKey( spep_3-3 + 132, 1, -231.5, -605 , 0 );
setMoveKey( spep_3-3 + 134, 1, -204.8, -542.3 , 0 );
setMoveKey( spep_3-3 + 136, 1, -178.1, -479.6 , 0 );
setMoveKey( spep_3-3 + 138, 1, -151.4, -417 , 0 );
setMoveKey( spep_3-3 + 140, 1, -124.7, -354.3 , 0 );
setMoveKey( spep_3-3 + 142, 1, -97.9, -291.6 , 0 );
setMoveKey( spep_3-3 + 144, 1, -71.2, -228.9 , 0 );
setMoveKey( spep_3-3 + 146, 1, -44.5, -166.3 , 0 );
setMoveKey( spep_3-3 + 148, 1, -17.8, -103.6 , 0 );
setMoveKey( spep_3-3 + 150, 1, 8.9, -40.9 , 0 );
setMoveKey( spep_3-3 + 151, 1, 8.9, -40.9 , 0 );

setMoveKey( spep_3-3 + 152, 1, 43.1, -80.2 , 0 );
setMoveKey( spep_3-3 + 154, 1, 129.3, -41.8 , 0 );
setMoveKey( spep_3-3 + 156, 1, 76.7, -117.6 , 0 );
setMoveKey( spep_3-3 + 158, 1, 85.1, -155.4 , 0 );
setMoveKey( spep_3-3 + 160, 1, 106.4, -184.6 , 0 );
setMoveKey( spep_3-3 + 162, 1, 115.9, -215.1 , 0 );
setMoveKey( spep_3-3 + 164, 1, 132.1, -242.9 , 0 );
setMoveKey( spep_3-3 + 166, 1, 138.9, -272.1 , 0 );
setMoveKey( spep_3-3 + 168, 1, 152.5, -290.6 , 0 );
setMoveKey( spep_3-3 + 170, 1, 156.7, -310.5 , 0 );
setMoveKey( spep_3-3 + 172, 1, 167.6, -327.7 , 0 );
setMoveKey( spep_3-3 + 174, 1, 169.2, -346.2 , 0 );
setMoveKey( spep_3-1 + 176, 1, 177.4, -354.1 , 0 );
--setMoveKey( spep_3-3 + 178, 1, 176.4, -367.3 , 0 );


setScaleKey( spep_3-3 + 64, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 66, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 68, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 70, 1, 0.77, 0.77 );
setScaleKey( spep_3-3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_3-3 + 74, 1, 1, 1 );
setScaleKey( spep_3-3 + 76, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 78, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 80, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 82, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 84, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 86, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 88, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 89, 1, 1.95, 1.95 );

setScaleKey( spep_3-3 + 90, 1, 2.24, 2.24 );
setScaleKey( spep_3-3 + 92, 1, 2.08, 2.08 );
setScaleKey( spep_3-3 + 94, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 96, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 98, 1, 2.04, 2.04 );
setScaleKey( spep_3-3 + 99, 1, 2.04, 2.04 );

setScaleKey( spep_3-3 + 100, 1, 2.03, 2.03 );
setScaleKey( spep_3-3 + 102, 1, 1.87, 1.87 );
setScaleKey( spep_3-3 + 104, 1, 1.71, 1.71 );
setScaleKey( spep_3-3 + 106, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 108, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 110, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 112, 1, 1.1, 1.1 );
setScaleKey( spep_3-3 + 114, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 116, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 118, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 120, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 122, 1, 0.39, 0.39 );
setScaleKey( spep_3-3 + 124, 1, 0.25, 0.25 );
setScaleKey( spep_3-3 + 126, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 127, 1, 0.12, 0.12 );

setScaleKey( spep_3-3 + 128, 1, 2.53, 2.53 );
setScaleKey( spep_3-3 + 130, 1, 2.46, 2.46 );
setScaleKey( spep_3-3 + 132, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 134, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 136, 1, 2.28, 2.28 );
setScaleKey( spep_3-3 + 138, 1, 2.21, 2.21 );
setScaleKey( spep_3-3 + 140, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 142, 1, 2.09, 2.09 );
setScaleKey( spep_3-3 + 144, 1, 2.03, 2.03 );
setScaleKey( spep_3-3 + 146, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 148, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 150, 1, 1.84, 1.84 );
setScaleKey( spep_3-3 + 151, 1, 1.84, 1.84 );

setScaleKey( spep_3-3 + 152, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 154, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 156, 1, 0.86, 0.86 );
setScaleKey( spep_3-3 + 158, 1, 0.93, 0.93 );
setScaleKey( spep_3-3 + 160, 1, 1, 1 );
setScaleKey( spep_3-3 + 162, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 164, 1, 1.13, 1.13 );
setScaleKey( spep_3-3 + 166, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 168, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 170, 1, 1.29, 1.29 );
setScaleKey( spep_3-3 + 172, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 174, 1, 1.38, 1.38 );
setScaleKey( spep_3-1 + 176, 1, 1.41, 1.41 );
--setScaleKey( spep_3-3 + 178, 1, 1.44, 1.44 );

setRotateKey( spep_3-3 + 64, 1, 0 );
setRotateKey( spep_3-3 + 99, 1, 0 );

setRotateKey( spep_3-3 + 100, 1, 10 );
setRotateKey( spep_3-3 + 127, 1, 10 );

setRotateKey( spep_3-3 + 128, 1, 25 );
setRotateKey( spep_3-3 + 151, 1, 25 );

setRotateKey( spep_3-3 + 152, 1, 0 );
setRotateKey( spep_3-1 + 176, 1, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 152,  10020, 16, 0x100, -1, 0, 125.7, 263.5 );
setEffShake( spep_3-3 + 152, ctbaki, 16, 10 );
setEffMoveKey( spep_3-3 + 152, ctbaki, 125.7, 263.5 , 0 );
setEffMoveKey( spep_3-3 + 154, ctbaki, 144.9, 281.3 , 0 );
setEffMoveKey( spep_3-3 + 156, ctbaki, 140.1, 286.5 , 0 );
setEffMoveKey( spep_3-3 + 158, ctbaki, 137.9, 278.8 , 0 );
setEffMoveKey( spep_3-3 + 160, ctbaki, 161.3, 300.2 , 0 );
setEffMoveKey( spep_3-3 + 162, ctbaki, 153.8, 305 , 0 );
setEffMoveKey( spep_3-3 + 164, ctbaki, 172.3, 312.8 , 0 );
setEffMoveKey( spep_3-3 + 166, ctbaki, 158.4, 311.2 , 0 );
setEffMoveKey( spep_3-3 + 168, ctbaki, 158.4, 311.2 , 0 );

setEffScaleKey( spep_3-3 + 152, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 154, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_3-3 + 156, ctbaki, 1.44, 1.44 );
setEffScaleKey( spep_3-3 + 158, ctbaki, 1.56, 1.56 );
setEffScaleKey( spep_3-3 + 160, ctbaki, 1.69, 1.69 );
setEffScaleKey( spep_3-3 + 162, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_3-3 + 164, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_3-3 + 168, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_3-3 + 152, ctbaki, 50 );
setEffRotateKey( spep_3-3 + 168, ctbaki, 50 );

setEffAlphaKey( spep_3-3 + 152, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 164, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 166, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 168, ctbaki, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 152,  906, 26, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 152, shuchusen3, 26, 20 );
setEffMoveKey( spep_3-3 + 152, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 178, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 152, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 178, shuchusen3, 1.2, 1.2 );

setEffRotateKey( spep_3-3 + 152, shuchusen3, 0 );
setEffRotateKey( spep_3-3 + 178, shuchusen3, 0 );

setEffAlphaKey( spep_3-3 + 152, shuchusen3, 255 );
setEffAlphaKey( spep_3-3 + 178, shuchusen3, 255 );

--SE
stopSe( spep_3 + 43, SE_49, 0 );
stopSe( spep_3 + 43, SE_1037, 0 );
SE_1021 = playSe( spep_3 + 38, 1021 );
playSe( spep_3 + 38, 1021 );
SE_1027 = playSe( spep_3 + 38, 1027 );
setSeVolume( spep_3 + 38, 1027, 71 );
playSe( spep_3 + 85, 1023 );
playSe( spep_3 + 133, 43 );
playSe( spep_3 + 143, 1003 );
playSe( spep_3 + 148, 1187 );
setSeVolume( spep_3 + 148, 1187, 71 );
playSe( spep_3 + 149, 1009 );
setSeVolume( spep_3 + 149, 1009, 79 );
playSe( spep_3 + 152, 1110 );
setSeVolume( spep_3 + 152, 1110, 63 );
playSe( spep_3 + 154, 1013 );
SE_1183 = playSe( spep_3 + 164, 1183 );
setSeVolume( spep_3 + 164, 1183, 100 );

-- ** 次の準備 ** --
spep_4=spep_3+176;

------------------------------------------------------
-- 岩激突
------------------------------------------------------
-- ** エフェクト等 ** --
crash_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, crash_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, crash_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, crash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, crash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, crash_f, 0 );
setEffRotateKey( spep_4 + 76, crash_f, 0 );
setEffAlphaKey( spep_4 + 0, crash_f, 255 );
setEffAlphaKey( spep_4 + 76, crash_f, 255 );

-- ** エフェクト等 ** --
crash_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, crash_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, crash_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, crash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, crash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, crash_b, 0 );
setEffRotateKey( spep_4 + 76, crash_b, 0 );
setEffAlphaKey( spep_4 + 0, crash_b, 255 );
setEffAlphaKey( spep_4 + 76, crash_b, 255 );

--敵の動き
setDisp( spep_4-3 + 74, 1, 0);

changeAnime( spep_4+ 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, -309.7, 82.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -263.4, 75.3 , 0 );
setMoveKey( spep_4-3 + 4, 1, -216.7, 67.7 , 0 );
setMoveKey( spep_4-3 + 6, 1, -169.8, 60 , 0 );
setMoveKey( spep_4-3 + 8, 1, -122.6, 52.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, -75.2, 44.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, -27.5, 36.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 20.5, 29.1 , 0 );
setMoveKey( spep_4-3 + 16, 1, 68.7, 21.3 , 0 );
setMoveKey( spep_4-3 + 17, 1, 68.7, 21.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, 117.1, 13.4 , 0 );
setMoveKey( spep_4-3 + 19, 1, 117.1, 13.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 165.9, 5.5 , 0 );
setMoveKey( spep_4-3 + 21, 1, 165.9, 5.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 138.2, -14.5 , 0 );
setMoveKey( spep_4-3 + 23, 1, 138.2, -14.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 236.1, 46 , 0 );
setMoveKey( spep_4-3 + 25, 1, 236.1, 46 , 0 );
setMoveKey( spep_4-3 + 26, 1, 138.9, -14.6 , 0 );
setMoveKey( spep_4-3 + 27, 1, 138.9, -14.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 236.9, 45.9 , 0 );
setMoveKey( spep_4-3 + 29, 1, 236.9, 45.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 168.2, 6.9 , 0 );
setMoveKey( spep_4-3 + 31, 1, 168.2, 6.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 164.5, 6.9 , 0 );
setMoveKey( spep_4-3 + 33, 1, 164.5, 6.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 168.9, 6.8 , 0 );
setMoveKey( spep_4-3 + 35, 1, 168.9, 6.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 165.3, 2.8 , 0 );
setMoveKey( spep_4-3 + 37, 1, 165.3, 2.8 , 0 );
setMoveKey( spep_4-3 + 38, 1, 169.6, 6.8 , 0 );
setMoveKey( spep_4-3 + 39, 1, 169.6, 6.8 , 0 );
setMoveKey( spep_4-3 + 40, 1, 166, 2.7 , 0 );
setMoveKey( spep_4-3 + 41, 1, 166, 2.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, 170.3, 6.7 , 0 );
setMoveKey( spep_4-3 + 43, 1, 170.3, 6.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, 166.7, 2.7 , 0 );
setMoveKey( spep_4-3 + 45, 1, 166.7, 2.7 , 0 );
setMoveKey( spep_4-3 + 46, 1, 171, 6.6 , 0 );
setMoveKey( spep_4-3 + 47, 1, 171, 6.6 , 0 );
setMoveKey( spep_4-3 + 48, 1, 167.4, 2.6 , 0 );
setMoveKey( spep_4-3 + 49, 1, 167.4, 2.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 171.8, 6.6 , 0 );
setMoveKey( spep_4-3 + 51, 1, 171.8, 6.6 , 0 );
setMoveKey( spep_4-3 + 52, 1, 172.1, 6.5 , 0 );
setMoveKey( spep_4-3 + 53, 1, 172.1, 6.5 , 0 );
setMoveKey( spep_4-3 + 54, 1, 172.5, 6.5 , 0 );
setMoveKey( spep_4-3 + 55, 1, 172.5, 6.5 , 0 );
setMoveKey( spep_4-3 + 56, 1, 172.8, 6.5 , 0 );
setMoveKey( spep_4-3 + 57, 1, 172.8, 6.5 , 0 );
setMoveKey( spep_4-3 + 58, 1, 173.2, 6.4 , 0 );
setMoveKey( spep_4-3 + 59, 1, 173.2, 6.4 , 0 );
setMoveKey( spep_4-3 + 60, 1, 173.5, 6.4 , 0 );
setMoveKey( spep_4-3 + 61, 1, 173.5, 6.4 , 0 );
setMoveKey( spep_4-3 + 62, 1, 173.9, 6.4 , 0 );
setMoveKey( spep_4-3 + 61, 1, 173.9, 6.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, 174.3, 6.3 , 0 );
setMoveKey( spep_4-3 + 65, 1, 174.3, 6.3 , 0 );
setMoveKey( spep_4-3 + 66, 1, 174.6, 6.3 , 0 );
setMoveKey( spep_4-3 + 67, 1, 174.6, 6.3 , 0 );
setMoveKey( spep_4-3 + 68, 1, 175, 6.3 , 0 );
setMoveKey( spep_4-3 + 69, 1, 175, 6.3 , 0 );
setMoveKey( spep_4-3 + 70, 1, 175.3, 6.2 , 0 );
setMoveKey( spep_4-3 + 71, 1, 175.3, 6.2 , 0 );
setMoveKey( spep_4-3 + 72, 1, 175.7, 6.2 , 0 );
setMoveKey( spep_4-3 + 73, 1, 175.7, 6.2 , 0 );
setMoveKey( spep_4-3 + 74, 1, 176, 6.2 , 0 );

setScaleKey( spep_4 + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_4-3 + 2, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 4, 1, 2.09, 2.09 );
setScaleKey( spep_4-3 + 6, 1, 1.89, 1.89 );
setScaleKey( spep_4-3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_4-3 + 10, 1, 1.47, 1.47 );
setScaleKey( spep_4-3 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_4-3 + 14, 1, 1.05, 1.05 );
setScaleKey( spep_4-3 + 16, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_4-3 + 20, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 28, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 46, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 48, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 64, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 66, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 74, 1, 0.44, 0.44 );

setRotateKey( spep_4 + 0, 1, 37.2 );
--setRotateKey( spep_4-3 + 2, 1, 33.5 );
setRotateKey( spep_4-3 + 4, 1, 29.8 );
setRotateKey( spep_4-3 + 6, 1, 26 );
setRotateKey( spep_4-3 + 8, 1, 22.3 );
setRotateKey( spep_4-3 + 10, 1, 18.6 );
setRotateKey( spep_4-3 + 12, 1, 14.9 );
setRotateKey( spep_4-3 + 14, 1, 11.2 );
setRotateKey( spep_4-3 + 16, 1, 7.4 );
setRotateKey( spep_4-3 + 18, 1, 3.7 );
setRotateKey( spep_4-3 + 20, 1, 0 );
setRotateKey( spep_4-3 + 22, 1, -0.2 );
setRotateKey( spep_4-3 + 74, 1, -0.2 );

--文字エントリー
ctdon = entryEffectLife( spep_4 -3 + 20,  10019, 38, 0x100, -1, 0, 182.4, 152.4 );
setEffShake( spep_4 -3 + 20, ctdon, 38, 10 );
setEffMoveKey( spep_4 -3 + 20, ctdon, 182.4, 152.4 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctdon, 180.6, 213 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctdon, 176.4, 273.9 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctdon, 173.3, 334.7 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctdon, 175.5, 335.2 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctdon, 173.4, 336.5 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctdon, 175.4, 334.9 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctdon, 173.3, 334.7 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctdon, 175.5, 335.2 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctdon, 173.4, 336.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctdon, 175.4, 334.9 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctdon, 173.3, 334.7 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdon, 175.5, 335.2 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdon, 173.4, 336.5 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdon, 175.4, 334.9 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctdon, 173.3, 334.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctdon, 175.5, 335.2 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctdon, 173.4, 336.5 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctdon, 175.4, 334.9 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctdon, 175.4, 334.9 , 0 );

setEffScaleKey( spep_4 -3 + 20, ctdon, 0.5, 0.5 );
setEffScaleKey( spep_4 -3 + 22, ctdon, 0.83, 0.83 );
setEffScaleKey( spep_4 -3 + 24, ctdon, 1.17, 1.17 );
setEffScaleKey( spep_4 -3 + 26, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 58, ctdon, 1.5, 1.5 );

setEffRotateKey( spep_4 -3 + 20, ctdon, -10 );
setEffRotateKey( spep_4 -3 + 58, ctdon, -10 );

setEffAlphaKey( spep_4 -3 + 20, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 50, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 52, ctdon, 191 );
setEffAlphaKey( spep_4 -3 + 54, ctdon, 128 );
setEffAlphaKey( spep_4 -3 + 56, ctdon, 64 );
setEffAlphaKey( spep_4 -3 + 58, ctdon, 0 );

--白フェード
entryFade( spep_4+68 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
stopSe( spep_4 + 29, SE_1183, 0 );
playSe( spep_4 + 28, 1033 );
setSeVolume( spep_4 + 28, 1033, 89 );
SE_1159 = playSe( spep_4 + 29, 1159 );
setSeVolume( spep_4 + 29, 1159, 36 );


-- ** 次の準備 ** --
spep_5=spep_4+76;
------------------------------------------------------
-- ツバ吐き
------------------------------------------------------
-- ** エフェクト等 ** --
saliva = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, saliva, 0, 0, 0 );
setEffMoveKey( spep_5 + 76, saliva, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, saliva, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, saliva, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, saliva, 0 );
setEffRotateKey( spep_5 + 76, saliva, 0 );
setEffAlphaKey( spep_5 + 0, saliva, 255 );
setEffAlphaKey( spep_5 + 76, saliva, 255 );
setEffAlphaKey( spep_5 + 77, saliva, 0 );
setEffAlphaKey( spep_5 + 78, saliva, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5-3 + 30,  906, 48, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-3 + 30, shuchusen4, 48, 20 );
setEffMoveKey( spep_5-3 + 30, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 30, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_5-3 + 78, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_5-3 + 30, shuchusen4, 0 );
setEffRotateKey( spep_5-3 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_5-3 + 30, shuchusen4, 255 );
setEffAlphaKey( spep_5-3 + 78, shuchusen4, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
setSeVolume( spep_5 + 31, 1159, 35.5 );
setSeVolume( spep_5 + 32, 1159, 35 );
setSeVolume( spep_5 + 33, 1159, 34.5 );
setSeVolume( spep_5 + 34, 1159, 34 );
setSeVolume( spep_5 + 35, 1159, 33.5 );
setSeVolume( spep_5 + 36, 1159, 33 );
setSeVolume( spep_5 + 37, 1159, 32.5 );
setSeVolume( spep_5 + 38, 1159, 32 );
setSeVolume( spep_5 + 39, 1159, 31.5 );
setSeVolume( spep_5 + 40, 1159, 31 );
setSeVolume( spep_5 + 41, 1159, 30.5 );
setSeVolume( spep_5 + 42, 1159, 30 );
setSeVolume( spep_5 + 43, 1159, 29.5 );
setSeVolume( spep_5 + 44, 1159, 29 );
setSeVolume( spep_5 + 45, 1159, 28.5 );
setSeVolume( spep_5 + 46, 1159, 28 );
setSeVolume( spep_5 + 47, 1159, 27.5 );
setSeVolume( spep_5 + 48, 1159, 27 );
setSeVolume( spep_5 + 49, 1159, 26.5 );
setSeVolume( spep_5 + 50, 1159, 26 );
setSeVolume( spep_5 + 51, 1159, 25.5 );
setSeVolume( spep_5 + 52, 1159, 25 );
setSeVolume( spep_5 + 53, 1159, 24.5 );
setSeVolume( spep_5 + 54, 1159, 24 );
setSeVolume( spep_5 + 55, 1159, 23.5 );
setSeVolume( spep_5 + 56, 1159, 23 );
setSeVolume( spep_5 + 57, 1159, 22.5 );
setSeVolume( spep_5 + 58, 1159, 22 );
setSeVolume( spep_5 + 59, 1159, 21.5 );
setSeVolume( spep_5 + 60, 1159, 21 );
setSeVolume( spep_5 + 61, 1159, 20.5 );
setSeVolume( spep_5 + 62, 1159, 20 );
setSeVolume( spep_5 + 63, 1159, 19.5 );
setSeVolume( spep_5 + 64, 1159, 19 );
setSeVolume( spep_5 + 65, 1159, 18.5 );
setSeVolume( spep_5 + 66, 1159, 18 );
setSeVolume( spep_5 + 67, 1159, 17.5 );
setSeVolume( spep_5 + 68, 1159, 17 );
setSeVolume( spep_5 + 69, 1159, 16.5 );
setSeVolume( spep_5 + 70, 1159, 16 );
setSeVolume( spep_5 + 71, 1159, 15.5 );
setSeVolume( spep_5 + 72, 1159, 15 );
setSeVolume( spep_5 + 73, 1159, 14.5);
setSeVolume( spep_5 + 74, 1159, 14 );
setSeVolume( spep_5 + 75, 1159, 13.5 );
setSeVolume( spep_5 + 76, 1159, 13 );

SE_1046 = playSe( spep_5 + 33, 1046 );
setSeVolume( spep_5 + 33, 1046, 100 );
setSeVolume( spep_5 + 43, 1046, 100 );
setSeVolume( spep_5 + 44, 1046, 95.2 );
setSeVolume( spep_5 + 45, 1046, 90.4 );
setSeVolume( spep_5 + 46, 1046, 85.6 );
setSeVolume( spep_5 + 47, 1046, 80.8 );
setSeVolume( spep_5 + 48, 1046, 76 );
setSeVolume( spep_5 + 49, 1046, 71.2 );
setSeVolume( spep_5 + 50, 1046, 66.4 );
setSeVolume( spep_5 + 51, 1046, 61.6 );
setSeVolume( spep_5 + 52, 1046, 56.8 );
setSeVolume( spep_5 + 53, 1046, 52 );
setSeVolume( spep_5 + 54, 1046, 47.2 );
setSeVolume( spep_5 + 55, 1046, 42.4 );
setSeVolume( spep_5 + 56, 1046, 37.6 );
setSeVolume( spep_5 + 57, 1046, 32.8 );
setSeVolume( spep_5 + 58, 1046, 28 );
setSeVolume( spep_5 + 59, 1046, 23.2 );
setSeVolume( spep_5 + 60, 1046, 18.4 );
setSeVolume( spep_5 + 61, 1046, 13.6 );
setSeVolume( spep_5 + 62, 1046, 8.8 );
setSeVolume( spep_5 + 63, 1046, 4 );
setSeVolume( spep_5 + 64, 1046, 0 );
stopSe( spep_5 + 65, SE_1046, 0 );
playSe( spep_5 + 35, 1005 );

SE_1118 = playSe( spep_5 + 42, 1118 );
setSeVolume( spep_5 + 42, 1118, 71 );


-- ** 次の準備 ** --
spep_6=spep_5+76;
------------------------------------------------------
-- ツバヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 120, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 120, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 120, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 120, hit_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );

changeAnime( spep_6-3 + 0, 1, 108 );
changeAnime( spep_6-3 + 28, 1, 106 );

setMoveKey( spep_6 + 0, 1, 87.3, 2 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 86.7, 3.2 , 0 );
setMoveKey( spep_6-3 + 4, 1, 85.9, 4.7 , 0 );
setMoveKey( spep_6-3 + 6, 1, 84.9, 6.9 , 0 );
setMoveKey( spep_6-3 + 8, 1, 83.6, 9.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 81.9, 13.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 79.8, 18 , 0 );
setMoveKey( spep_6-3 + 14, 1, 77.1, 23.6 , 0 );
setMoveKey( spep_6-3 + 16, 1, 73.9, 30.4 , 0 );
setMoveKey( spep_6-3 + 18, 1, 70.1, 38.5 , 0 );
setMoveKey( spep_6-3 + 20, 1, 65.9, 47.6 , 0 );
setMoveKey( spep_6-3 + 22, 1, 61.3, 57.3 , 0 );
setMoveKey( spep_6-3 + 24, 1, 56.7, 67 , 0 );
setMoveKey( spep_6-3 + 27, 1, 48.4, 72.5 , 0 );
setMoveKey( spep_6-3 + 28, 1, -0.7, 116.9 , 0 );
setMoveKey( spep_6-3 + 30, 1, -4.5, 108.7 , 0 );
setMoveKey( spep_6-3 + 32, 1, -2.5, 110.7 , 0 );
setMoveKey( spep_6-3 + 34, 1, -1.8, 110.4 , 0 );
setMoveKey( spep_6-3 + 36, 1, -1.1, 110 , 0 );
setMoveKey( spep_6-3 + 38, 1, -0.5, 109.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, 0.2, 109.3 , 0 );
setMoveKey( spep_6-3 + 42, 1, -0.3, 109.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, -0.9, 109.9 , 0 );
setMoveKey( spep_6-3 + 46, 1, -1.4, 110.2 , 0 );
setMoveKey( spep_6-3 + 48, 1, -2, 110.4 , 0 );
setMoveKey( spep_6-3 + 50, 1, -2.5, 110.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, -2.5, 110.7 , 0 );
setMoveKey( spep_6-3 + 54, 1, -4.5, 106.7 , 0 );
setMoveKey( spep_6-3 + 56, 1, -2.5, 110.7 , 0 );
setMoveKey( spep_6-3 + 58, 1, -15.8, 108 , 0 );
setMoveKey( spep_6-3 + 60, 1, -11.8, 110 , 0 );
setMoveKey( spep_6-3 + 62, 1, -14.6, 107.6 , 0 );
setMoveKey( spep_6-3 + 64, 1, -13.3, 109.1 , 0 );
setMoveKey( spep_6-3 + 66, 1, -18.1, 104.7 , 0 );
setMoveKey( spep_6-3 + 68, 1, -14.8, 108.2 , 0 );
setMoveKey( spep_6-3 + 70, 1, -17.6, 103.8 , 0 );
setMoveKey( spep_6-3 + 72, 1, -16.3, 107.3 , 0 );
setMoveKey( spep_6-3 + 74, 1, -21.1, 104.9 , 0 );
setMoveKey( spep_6-3 + 76, 1, -17.8, 106.4 , 0 );
setMoveKey( spep_6-3 + 78, 1, -20.5, 102 , 0 );
setMoveKey( spep_6-3 + 80, 1, -19.3, 105.5 , 0 );
setMoveKey( spep_6-3 + 82, 1, -24, 103 , 0 );
setMoveKey( spep_6-3 + 84, 1, -20.8, 104.6 , 0 );
setMoveKey( spep_6-3 + 86, 1, -23.5, 100.1 , 0 );
setMoveKey( spep_6-3 + 88, 1, -22.3, 103.7 , 0 );
setMoveKey( spep_6-3 + 90, 1, -27, 101.2 , 0 );
setMoveKey( spep_6-3 + 92, 1, -34.2, 96.4 , 0 );
setMoveKey( spep_6-3 + 94, 1, 1, 125.2 , 0 );
setMoveKey( spep_6-3 + 96, 1, -10.3, 114.1 , 0 );
setMoveKey( spep_6-3 + 98, 1, -27.8, 96.9 , 0 );
setMoveKey( spep_6-3 + 100, 1, -36.8, 84.1 , 0 );
setMoveKey( spep_6-3 + 102, 1, -51.2, 66.1 , 0 );
setMoveKey( spep_6-3 + 104, 1, -60.5, 57.3 , 0 );
setMoveKey( spep_6-3 + 106, 1, -74.7, 43.8 , 0 );
setMoveKey( spep_6-3 + 108, 1, -79.6, 35.6 , 0 );
setMoveKey( spep_6-3 + 110, 1, -89.4, 22.8 , 0 );
setMoveKey( spep_6-3 + 112, 1, -94, 19.3 , 0 );
setMoveKey( spep_6-3 + 114, 1, -103.7, 10.9 , 0 );
setMoveKey( spep_6-3 + 116, 1, -104.4, 7.5 , 0 );
setMoveKey( spep_6-3 + 118, 1, -110.3, -1 , 0 );

setScaleKey( spep_6 + 0, 1, 1.68, 1.68 );
--setScaleKey( spep_6-3 + 2, 1, 1.71, 1.71 );
setScaleKey( spep_6-3 + 4, 1, 1.75, 1.75 );
setScaleKey( spep_6-3 + 6, 1, 1.81, 1.81 );
setScaleKey( spep_6-3 + 8, 1, 1.88, 1.88 );
setScaleKey( spep_6-3 + 10, 1, 1.98, 1.98 );
setScaleKey( spep_6-3 + 12, 1, 2.1, 2.1 );
setScaleKey( spep_6-3 + 14, 1, 2.25, 2.25 );
setScaleKey( spep_6-3 + 16, 1, 2.43, 2.43 );
setScaleKey( spep_6-3 + 18, 1, 2.64, 2.64 );
setScaleKey( spep_6-3 + 20, 1, 2.88, 2.88 );
setScaleKey( spep_6-3 + 22, 1, 3.13, 3.13 );
setScaleKey( spep_6-3 + 24, 1, 3.39, 3.39 );
setScaleKey( spep_6-3 + 27, 1, 3.64, 3.64 );
setScaleKey( spep_6-3 + 28, 1, 3.82, 3.82 );
setScaleKey( spep_6-3 + 30, 1, 3.64, 3.64 );
setScaleKey( spep_6-3 + 56, 1, 3.64, 3.64 );
setScaleKey( spep_6-3 + 58, 1, 4, 4 );
setScaleKey( spep_6-3 + 60, 1, 4, 4 );
setScaleKey( spep_6-3 + 62, 1, 4.02, 4.02 );
setScaleKey( spep_6-3 + 64, 1, 4.03, 4.03 );
setScaleKey( spep_6-3 + 66, 1, 4.04, 4.04 );
setScaleKey( spep_6-3 + 68, 1, 4.05, 4.05 );
setScaleKey( spep_6-3 + 70, 1, 4.06, 4.06 );
setScaleKey( spep_6-3 + 72, 1, 4.08, 4.08 );
setScaleKey( spep_6-3 + 74, 1, 4.09, 4.09 );
setScaleKey( spep_6-3 + 76, 1, 4.1, 4.1 );
setScaleKey( spep_6-3 + 78, 1, 4.11, 4.11 );
setScaleKey( spep_6-3 + 80, 1, 4.12, 4.12 );
setScaleKey( spep_6-3 + 82, 1, 4.14, 4.14 );
setScaleKey( spep_6-3 + 84, 1, 4.15, 4.15 );
setScaleKey( spep_6-3 + 86, 1, 4.16, 4.16 );
setScaleKey( spep_6-3 + 88, 1, 4.17, 4.17 );
setScaleKey( spep_6-3 + 90, 1, 4.19, 4.19 );
setScaleKey( spep_6-3 + 92, 1, 4.37, 4.37 );
setScaleKey( spep_6-3 + 94, 1, 4.19, 4.19 );
setScaleKey( spep_6-3 + 96, 1, 4.64, 4.64 );
setScaleKey( spep_6-3 + 98, 1, 5.1, 5.1 );
setScaleKey( spep_6-3 + 100, 1, 5.55, 5.55 );
setScaleKey( spep_6-3 + 102, 1, 5.98, 5.98 );
setScaleKey( spep_6-3 + 104, 1, 6.37, 6.37 );
setScaleKey( spep_6-3 + 106, 1, 6.71, 6.71 );
setScaleKey( spep_6-3 + 108, 1, 7.02, 7.02 );
setScaleKey( spep_6-3 + 110, 1, 7.29, 7.29 );
setScaleKey( spep_6-3 + 112, 1, 7.51, 7.51 );
setScaleKey( spep_6-3 + 114, 1, 7.71, 7.71 );
setScaleKey( spep_6-3 + 116, 1, 7.87, 7.87 );
setScaleKey( spep_6-3 + 118, 1, 8.01, 8.01 );

setRotateKey( spep_6 + 0, 1, 11 );
setRotateKey( spep_6-3 + 27, 1, 11 );
setRotateKey( spep_6-3 + 28, 1, -37 );
setRotateKey( spep_6-3 + 118, 1, -37 );

--集中線
shuchusen5 = entryEffectLife( spep_6-3 + 56,  906, 62, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6-3 + 56, shuchusen5, 62, 20 );
setEffMoveKey( spep_6-3 + 56, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 118, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 56, shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_6-3 + 118, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_6-3 + 56, shuchusen5, 0 );
setEffRotateKey( spep_6-3 + 118, shuchusen5, 0 );

setEffAlphaKey( spep_6-3 + 56, shuchusen5, 255 );
setEffAlphaKey( spep_6-3 + 118, shuchusen5, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_6-3 + 56,  10016, 62, 0x100, -1, 0, -73.3, 274 );
setEffShake( spep_6-3 + 56, ctzun, 62, 10 );
setEffMoveKey( spep_6-3 + 56, ctzun, -73.3, 274 , 0 );
setEffMoveKey( spep_6-3 + 58, ctzun, -98.1, 318.5 , 0 );
setEffMoveKey( spep_6-3 + 60, ctzun, -126.3, 366.3 , 0 );
setEffMoveKey( spep_6-3 + 62, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 64, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 66, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 68, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 70, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 72, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 74, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 76, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 78, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 80, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 82, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 84, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 86, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 88, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 90, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 92, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 94, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 96, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 98, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 100, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 102, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 104, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 106, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 108, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 110, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 112, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 114, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 116, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 118, ctzun, -152.8, 412.4 , 0 );

setEffScaleKey( spep_6-3 + 56, ctzun, 0.2, 0.2 );
setEffScaleKey( spep_6-3 + 58, ctzun, 0.63, 0.63 );
setEffScaleKey( spep_6-3 + 60, ctzun, 1.07, 1.07 );
setEffScaleKey( spep_6-3 + 62, ctzun, 1.5, 1.5 );
setEffScaleKey( spep_6-3 + 118, ctzun, 1.5, 1.5 );

setEffRotateKey( spep_6-3 + 56, ctzun, -20 );
setEffRotateKey( spep_6-3 + 118, ctzun, -20 );

setEffAlphaKey( spep_6-3 + 56, ctzun, 255 );
setEffAlphaKey( spep_6-3 + 118, ctzun, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_6-3 + 90,  10013, 28, 0x100, -1, 0, 41.8, -33.8 );
setEffShake( spep_6-3 + 90, ctzuzuzun, 28, 10 );
setEffMoveKey( spep_6-3 + 90, ctzuzuzun, 41.8, -33.8 , 0 );
setEffMoveKey( spep_6-3 + 92, ctzuzuzun, 51.8, -145.4 , 0 );
setEffMoveKey( spep_6-3 + 94, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 96, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 98, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 100, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 102, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 104, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 106, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 108, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 110, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 112, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 114, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 116, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 118, ctzuzuzun, 57.4, -273.4 , 0 );

setEffScaleKey( spep_6-3 + 90, ctzuzuzun, 0.58, 0.58 );
setEffScaleKey( spep_6-3 + 92, ctzuzuzun, 1.75, 1.75 );
setEffScaleKey( spep_6-3 + 94, ctzuzuzun, 2.91, 2.91 );
setEffScaleKey( spep_6-3 + 118, ctzuzuzun, 2.91, 2.91 );

setEffRotateKey( spep_6-3 + 90, ctzuzuzun, -35 );
setEffRotateKey( spep_6-3 + 118, ctzuzuzun, -35 );

setEffAlphaKey( spep_6-3 + 90, ctzuzuzun, 255 );
setEffAlphaKey( spep_6-3 + 118, ctzuzuzun, 255 );

--白フェード
entryFade( spep_6+50 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6+112 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 122, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
setSeVolume( spep_6 + 0, 1159, 12.5 );
setSeVolume( spep_6 + 1, 1159, 12 );
setSeVolume( spep_6 + 2, 1159, 11.5 );
setSeVolume( spep_6 + 3, 1159, 11 );
setSeVolume( spep_6 + 4, 1159, 10.5 );
setSeVolume( spep_6 + 5, 1159, 10 );
setSeVolume( spep_6 + 6, 1159, 9.5 );
setSeVolume( spep_6 + 7, 1159, 9 );
setSeVolume( spep_6 + 8, 1159, 8.5 );
setSeVolume( spep_6 + 9, 1159, 8 );
setSeVolume( spep_6 + 10, 1159, 7.5 );
setSeVolume( spep_6 + 11, 1159, 7 );
setSeVolume( spep_6 + 12, 1159, 6.5 );
setSeVolume( spep_6 + 13, 1159, 6 );
setSeVolume( spep_6 + 14, 1159, 5.5 );
setSeVolume( spep_6 + 15, 1159, 5 );
setSeVolume( spep_6 + 16, 1159, 4.5 );
setSeVolume( spep_6 + 17, 1159, 4 );
setSeVolume( spep_6 + 18, 1159, 3.5 );
setSeVolume( spep_6 + 19, 1159, 3 );
setSeVolume( spep_6 + 20, 1159, 2.5 );
setSeVolume( spep_6 + 21, 1159, 2 );
setSeVolume( spep_6 + 22, 1159, 1.5 );
setSeVolume( spep_6 + 23, 1159, 1 );
setSeVolume( spep_6 + 24, 1159, 0 );
stopSe( spep_6 + 24, SE_1159, 0 );
stopSe( spep_6 + 33, SE_1118, 0 );
SE_1215 = playSe( spep_6 + 2, 1215 );
setSeVolume( spep_6 + 2, 1215, 0 );
SE_1113 = playSe( spep_6 + 33, 1113 );
setSeVolume( spep_6 + 33, 1113, 159 );
stopSe( spep_6 + 48, SE_1113, 0 );
SE_1013 = playSe( spep_6 + 33, 1013 );
setSeVolume( spep_6 + 33, 1013, 40 );
stopSe( spep_6 + 48, SE_1013, 0 );
SE_1250 = playSe( spep_6 + 48, 1250 );
setSeVolume( spep_6 + 48, 1250, 200 );




-- ** 次の準備 ** --
spep_7=spep_6+120;
------------------------------------------------------
-- セリフカットイン＆槍投げ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_7 + 156, tame, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_7 + 156, tame, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame, 0 );
setEffRotateKey( spep_7 + 156, tame, 0 );
setEffAlphaKey( spep_7 + 0, tame, 255 );
setEffAlphaKey( spep_7 + 156, tame, 255 );
setEffAlphaKey( spep_7 + 157, tame, 0 );
setEffAlphaKey( spep_7 + 158, tame, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_7-3 + 10,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7-3 + 10, shuchusen6, 78, 20 );
setEffMoveKey( spep_7-3 + 10, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_7-3 + 88, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_7-3 + 10, shuchusen6, 1, 1 );
setEffScaleKey( spep_7-3 + 88, shuchusen6, 1, 1 );

setEffRotateKey( spep_7-3 + 10, shuchusen6, 0 );
setEffRotateKey( spep_7-3 + 88, shuchusen6, 0 );

setEffAlphaKey( spep_7-3 + 10, shuchusen6, 255 );
setEffAlphaKey( spep_7-3 + 88, shuchusen6, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_7+20  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_7+20  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_7 +32, 190006, 72, 0x102, -1, 0, 55, 515);-- ゴゴゴゴ

setEffMoveKey(  spep_7 +32,  ctgogo,  55,  515);
setEffMoveKey(  spep_7 +104,  ctgogo,  55,  515);

setEffAlphaKey( spep_7 +32, ctgogo, 0 );
setEffAlphaKey( spep_7 + 33, ctgogo, 255 );
setEffAlphaKey( spep_7 + 34, ctgogo, 255 );
setEffAlphaKey( spep_7 + 98, ctgogo, 255 );
setEffAlphaKey( spep_7 + 100, ctgogo, 191 );
setEffAlphaKey( spep_7 + 102, ctgogo, 112 );
setEffAlphaKey( spep_7 + 104, ctgogo, 64 );

setEffRotateKey(  spep_7 +32,  ctgogo,  0);
setEffRotateKey(  spep_7 +104,  ctgogo,  0);

setEffScaleKey(  spep_7 +32,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_7 +94,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_7 +104,  ctgogo, 1.07, 1.07 );

-- 文字エントリー --
ctgyun = entryEffectLife( spep_7-3 + 130,  10006, 22, 0x100, -1, 0, 26.7, 210.7 );
setEffShake( spep_7-3 + 130, ctgyun, 22, 10 );
setEffMoveKey( spep_7-3 + 130, ctgyun, 26.7, 210.7 , 0 );
setEffMoveKey( spep_7-3 + 132, ctgyun, -46.7, 267.5 , 0 );
setEffMoveKey( spep_7-3 + 134, ctgyun, -51.8, 260.3 , 0 );
setEffMoveKey( spep_7-3 + 136, ctgyun, -41, 275.5 , 0 );
setEffMoveKey( spep_7-3 + 138, ctgyun, -46.5, 267.6 , 0 );
setEffMoveKey( spep_7-3 + 140, ctgyun, -35.2, 283.5 , 0 );
setEffMoveKey( spep_7-3 + 142, ctgyun, -41.2, 274.8 , 0 );
setEffMoveKey( spep_7-3 + 144, ctgyun, -29.4, 291.5 , 0 );
setEffMoveKey( spep_7-3 + 146, ctgyun, -35.9, 282.1 , 0 );
setEffMoveKey( spep_7-3 + 148, ctgyun, -23.6, 299.4 , 0 );
setEffMoveKey( spep_7-3 + 150, ctgyun, -30.6, 289.3 , 0 );
setEffMoveKey( spep_7-3 + 152, ctgyun, -17.9, 307.5 , 0 );

setEffScaleKey( spep_7-3 + 130, ctgyun, 0.78, 0.78 );
setEffScaleKey( spep_7-3 + 132, ctgyun, 1.5, 1.5 );
setEffScaleKey( spep_7-3 + 134, ctgyun, 1.55, 1.55 );
setEffScaleKey( spep_7-3 + 136, ctgyun, 1.6, 1.6 );
setEffScaleKey( spep_7-3 + 138, ctgyun, 1.65, 1.65 );
setEffScaleKey( spep_7-3 + 140, ctgyun, 1.7, 1.7 );
setEffScaleKey( spep_7-3 + 142, ctgyun, 1.75, 1.75 );
setEffScaleKey( spep_7-3 + 144, ctgyun, 1.8, 1.8 );
setEffScaleKey( spep_7-3 + 146, ctgyun, 1.85, 1.85 );
setEffScaleKey( spep_7-3 + 148, ctgyun, 1.9, 1.9 );
setEffScaleKey( spep_7-3 + 150, ctgyun, 1.95, 1.95 );
setEffScaleKey( spep_7-3 + 152, ctgyun, 2, 2 );

setEffRotateKey( spep_7-3 + 130, ctgyun, -10 );
setEffRotateKey( spep_7-3 + 152, ctgyun, -10 );

setEffAlphaKey( spep_7-3 + 130, ctgyun, 128 );
setEffAlphaKey( spep_7-3 + 132, ctgyun, 255 );
setEffAlphaKey( spep_7-3 + 152, ctgyun, 255 );

--SE
stopSe( spep_7 + 27, SE_1250, 0 );
setSeVolume( spep_7 + 22, 1215, 0 );
setSeVolume( spep_7 + 23, 1215, 5 );
setSeVolume( spep_7 + 24, 1215, 10 );
setSeVolume( spep_7 + 25, 1215, 15 );
setSeVolume( spep_7 + 26, 1215, 20 );
setSeVolume( spep_7 + 27, 1215, 25 );
setSeVolume( spep_7 + 28, 1215, 30 );
setSeVolume( spep_7 + 29, 1215, 35 );
setSeVolume( spep_7 + 30, 1215, 40 );
setSeVolume( spep_7 + 31, 1215, 45 );
setSeVolume( spep_7 + 32, 1215, 50 );
setSeVolume( spep_7 + 60, 1215, 50.1 );
setSeVolume( spep_7 + 61, 1215, 48.4 );
setSeVolume( spep_7 + 62, 1215, 46.7 );
setSeVolume( spep_7 + 63, 1215, 45 );
setSeVolume( spep_7 + 64, 1215, 43.3 );
setSeVolume( spep_7 + 65, 1215, 41.6 );
setSeVolume( spep_7 + 66, 1215, 39.9 );
setSeVolume( spep_7 + 67, 1215, 38.2 );
setSeVolume( spep_7 + 68, 1215, 36.5 );
setSeVolume( spep_7 + 69, 1215, 34.8 );
setSeVolume( spep_7 + 70, 1215, 33.1 );
setSeVolume( spep_7 + 71, 1215, 31.4 );
setSeVolume( spep_7 + 72, 1215, 29.7 );
setSeVolume( spep_7 + 73, 1215, 28 );
setSeVolume( spep_7 + 74, 1215, 26.3 );
setSeVolume( spep_7 + 75, 1215, 24.6 );
setSeVolume( spep_7 + 76, 1215, 22.9 );
setSeVolume( spep_7 + 77, 1215, 21.2 );
setSeVolume( spep_7 + 78, 1215, 19.5 );
setSeVolume( spep_7 + 79, 1215, 17.8 );
setSeVolume( spep_7 + 80, 1215, 16.1 );
setSeVolume( spep_7 + 81, 1215, 14.4 );
setSeVolume( spep_7 + 82, 1215, 12.7 );
setSeVolume( spep_7 + 83, 1215, 11 );
setSeVolume( spep_7 + 84, 1215, 9.3 );
setSeVolume( spep_7 + 85, 1215, 7.6 );
setSeVolume( spep_7 + 86, 1215, 5.9 );
setSeVolume( spep_7 + 87, 1215, 4.2 );
setSeVolume( spep_7 + 88, 1215, 2.5 );
setSeVolume( spep_7 + 89, 1215, 0.8 );
setSeVolume( spep_7 + 90, 1215, 0 );
playSe( spep_7 +32, 1018 );
SE_1209 = playSe( spep_7 + 3, 1209 );
setSeVolume( spep_7 + 3, 1209, 0 );
setSeVolume( spep_7 + 27, 1209, 0 );
setSeVolume( spep_7 + 28, 1209, 9.9 );
setSeVolume( spep_7 + 29, 1209, 19.8 );
setSeVolume( spep_7 + 30, 1209, 29.7 );
setSeVolume( spep_7 + 31, 1209, 39.6 );
setSeVolume( spep_7 + 32, 1209, 49.5 );
setSeVolume( spep_7 + 33, 1209, 59.4 );
setSeVolume( spep_7 + 34, 1209, 69.3 );
setSeVolume( spep_7 + 35, 1209, 79.2 );
setSeVolume( spep_7 + 59, 1209, 79.4 );
setSeVolume( spep_7 + 60, 1209, 76.2 );
setSeVolume( spep_7 + 61, 1209, 73 );
setSeVolume( spep_7 + 62, 1209, 69.8 );
setSeVolume( spep_7 + 63, 1209, 66.6 );
setSeVolume( spep_7 + 64, 1209, 63.4 );
setSeVolume( spep_7 + 65, 1209, 60.2 );
setSeVolume( spep_7 + 66, 1209, 57 );
setSeVolume( spep_7 + 67, 1209, 53.8 );
setSeVolume( spep_7 + 68, 1209, 50.6 );
setSeVolume( spep_7 + 69, 1209, 47.4 );
setSeVolume( spep_7 + 70, 1209, 44.2 );
setSeVolume( spep_7 + 71, 1209, 41 );
setSeVolume( spep_7 + 72, 1209, 37.8 );
setSeVolume( spep_7 + 73, 1209, 34.6 );
setSeVolume( spep_7 + 74, 1209, 31.4 );
setSeVolume( spep_7 + 75, 1209, 28.2 );
setSeVolume( spep_7 + 76, 1209, 25 );
setSeVolume( spep_7 + 77, 1209, 21.8 );
setSeVolume( spep_7 + 78, 1209, 18.6 );
setSeVolume( spep_7 + 79, 1209, 15.4 );
setSeVolume( spep_7 + 80, 1209, 12.2 );
setSeVolume( spep_7 + 81, 1209, 9 );
setSeVolume( spep_7 + 82, 1209, 5.8 );
setSeVolume( spep_7 + 83, 1209, 2.6 );
setSeVolume( spep_7 + 84, 1209, 0 );
stopSe( spep_7 + 85, SE_1209, 0 );
SE_1161 = playSe( spep_7 + 19, 1161 );
setSeVolume( spep_7 + 19, 1161, 44.7 );
setSeVolume( spep_7 + 48, 1161, 44.7 );
setSeVolume( spep_7 + 49, 1161, 43 );
setSeVolume( spep_7 + 50, 1161, 41.3 );
setSeVolume( spep_7 + 51, 1161, 39.6 );
setSeVolume( spep_7 + 52, 1161, 37.9 );
setSeVolume( spep_7 + 53, 1161, 36.2 );
setSeVolume( spep_7 + 54, 1161, 34.5 );
setSeVolume( spep_7 + 55, 1161, 32.8 );
setSeVolume( spep_7 + 56, 1161, 31.1 );
setSeVolume( spep_7 + 57, 1161, 29.4 );
setSeVolume( spep_7 + 58, 1161, 27.7 );
setSeVolume( spep_7 + 59, 1161, 26 );
setSeVolume( spep_7 + 60, 1161, 24.3 );
setSeVolume( spep_7 + 61, 1161, 22.6 );
setSeVolume( spep_7 + 62, 1161, 20.9 );
setSeVolume( spep_7 + 63, 1161, 19.2 );
setSeVolume( spep_7 + 64, 1161, 17.5 );
setSeVolume( spep_7 + 65, 1161, 15.8 );
setSeVolume( spep_7 + 66, 1161, 14.1 );
setSeVolume( spep_7 + 67, 1161, 12.4 );
setSeVolume( spep_7 + 68, 1161, 10.7 );
setSeVolume( spep_7 + 69, 1161, 9 );
setSeVolume( spep_7 + 70, 1161, 7.3 );
setSeVolume( spep_7 + 71, 1161, 5.6 );
setSeVolume( spep_7 + 72, 1161, 3.9 );
setSeVolume( spep_7 + 73, 1161, 2.2 );
setSeVolume( spep_7 + 74, 1161, 0 );
stopSe( spep_7 + 75, SE_1161, 0 );
playSe( spep_7 + 110, 1003 );
SE_1168 = playSe( spep_7 + 117, 1168 );
setSeVolume( spep_7 + 117, 1168, 0 );
playSe( spep_7 + 131, 1027 );
SE_1117 = playSe( spep_7 + 134, 1117 );
setSeVolume( spep_7 + 134, 1117, 100 );


-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8=spep_7+156;
------------------------------------------------------
-- 槍ヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit2 = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit2, 0, 0, 0 );
setEffMoveKey( spep_8 + 80, hit2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 80, hit2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit2, 0 );
setEffRotateKey( spep_8 + 80, hit2, 0 );
setEffAlphaKey( spep_8 + 0, hit2, 255 );
setEffAlphaKey( spep_8 + 80, hit2, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_8-3 + 22,  10018, 40, 0x100, -1, 0, -22, -59.4 );
setEffShake( spep_8-3 + 22, ctdogon, 40, 10 );
setEffMoveKey( spep_8-3 + 22, ctdogon, -22, -59.4 , 0 );
setEffMoveKey( spep_8-3 + 24, ctdogon, -13, -46 , 0 );
setEffMoveKey( spep_8-3 + 26, ctdogon, -4.9, -57 , 0 );
setEffMoveKey( spep_8-3 + 28, ctdogon, -14, -47.2 , 0 );
setEffMoveKey( spep_8-3 + 30, ctdogon, -2.9, -47.4 , 0 );
setEffMoveKey( spep_8-3 + 32, ctdogon, -13.5, -56.4 , 0 );
setEffMoveKey( spep_8-3 + 34, ctdogon, -4.5, -43.6 , 0 );
setEffMoveKey( spep_8-3 + 36, ctdogon, -8.9, -54.8 , 0 );
setEffMoveKey( spep_8-3 + 38, ctdogon, -10.4, -46.3 , 0 );
setEffMoveKey( spep_8-3 + 40, ctdogon, -12, -54.3 , 0 );
setEffMoveKey( spep_8-3 + 42, ctdogon, -5.4, -49.7 , 0 );
setEffMoveKey( spep_8-3 + 44, ctdogon, -12.9, -54.5 , 0 );
setEffMoveKey( spep_8-3 + 46, ctdogon, -7.9, -45.8 , 0 );
setEffMoveKey( spep_8-3 + 48, ctdogon, -11.7, -52.3 , 0 );
setEffMoveKey( spep_8-3 + 50, ctdogon, -9.8, -46.6 , 0 );
setEffMoveKey( spep_8-3 + 52, ctdogon, -10.8, -54.1 , 0 );
setEffMoveKey( spep_8-3 + 54, ctdogon, -6.6, -56.7 , 0 );
setEffMoveKey( spep_8-3 + 56, ctdogon, -13.3, -52.6 , 0 );
setEffMoveKey( spep_8-3 + 58, ctdogon, -18.2, -85.4 , 0 );
setEffMoveKey( spep_8-3 + 60, ctdogon, -38.9, -83.2 , 0 );
setEffMoveKey( spep_8-3 + 62, ctdogon, -47.1, -94.7 , 0 );

setEffScaleKey( spep_8-3 + 22, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_8-3 + 24, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_8-3 + 26, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_8-3 + 28, ctdogon, 2.92, 2.92 );
setEffScaleKey( spep_8-3 + 30, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_8-3 + 32, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_8-3 + 34, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_8-3 + 36, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_8-3 + 38, ctdogon, 3, 3 );
setEffScaleKey( spep_8-3 + 40, ctdogon, 3.01, 3.01 );
setEffScaleKey( spep_8-3 + 42, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_8-3 + 44, ctdogon, 3.05, 3.05 );
setEffScaleKey( spep_8-3 + 46, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_8-3 + 48, ctdogon, 3.08, 3.08 );
setEffScaleKey( spep_8-3 + 50, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_8-3 + 52, ctdogon, 3.12, 3.12 );
setEffScaleKey( spep_8-3 + 54, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_8-3 + 56, ctdogon, 3.57, 3.57 );
setEffScaleKey( spep_8-3 + 58, ctdogon, 4, 4 );
setEffScaleKey( spep_8-3 + 60, ctdogon, 4.42, 4.42 );
setEffScaleKey( spep_8-3 + 62, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_8-3 + 22, ctdogon, 24.1 );
setEffRotateKey( spep_8-3 + 24, ctdogon, 24.2 );
setEffRotateKey( spep_8-3 + 36, ctdogon, 24.2 );
setEffRotateKey( spep_8-3 + 38, ctdogon, 24.1 );
setEffRotateKey( spep_8-3 + 62, ctdogon, 24.1 );

setEffAlphaKey( spep_8-3 + 22, ctdogon, 255 );
setEffAlphaKey( spep_8-3 + 54, ctdogon, 255 );
setEffAlphaKey( spep_8-3 + 56, ctdogon, 191 );
setEffAlphaKey( spep_8-3 + 58, ctdogon, 128 );
setEffAlphaKey( spep_8-3 + 60, ctdogon, 64 );
setEffAlphaKey( spep_8-3 + 62, ctdogon, 0 );

--集中線
shuchusen7 = entryEffectLife( spep_8-3 + 16,  906, 62, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8-3 + 16, shuchusen7, 62, 20 );
setEffMoveKey( spep_8-3 + 16, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_8-3 + 78, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_8-3 + 16, shuchusen7, 1.1, 1.1 );
setEffScaleKey( spep_8-3 + 78, shuchusen7, 1.1, 1.1 );

setEffRotateKey( spep_8-3 + 16, shuchusen7, 0 );
setEffRotateKey( spep_8-3 + 78, shuchusen7, 0 );

setEffAlphaKey( spep_8-3 + 16, shuchusen7, 255 );
setEffAlphaKey( spep_8-3 + 78, shuchusen7, 255 );

--白フェード
entryFade( spep_8+16 , 0, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8+72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
setSeVolume( spep_8 + 33, 1168, 0 );
setSeVolume( spep_8 + 34, 1168, 50 );
setSeVolume( spep_8 + 35, 1168, 100 );
stopSe( spep_8 + 42, SE_1117, 0 );
playSe( spep_8 + 27, 1153 );
playSe( spep_8 + 30, 1110 );
setSeVolume( spep_8 + 30, 1110, 79 );
playSe( spep_8 + 33, 1009 );
setSeVolume( spep_8 + 33, 1009, 63 );


-- ** 次の準備 ** --
spep_9=spep_8+80;
------------------------------------------------------
-- ラストシーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 140, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 140, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 140, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 140, finish, 255 );

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 20 );
endPhase( spep_9 + 130 );

--SE
playSe( spep_9 + 27, 1024 );
setSeVolume( spep_9 + 27, 1024, 71 );


else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、バビディアップ
------------------------------------------------------
--はじめの準備
spep_0=0;


-- ** エフェクト等 ** --
induction = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, induction, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, induction, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, induction, -1.0, 1.0 );
setEffScaleKey( spep_0 + 50, induction, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, induction, 0 );
setEffRotateKey( spep_0 + 50, induction, 0 );
setEffAlphaKey( spep_0 + 0, induction, 255 );
setEffAlphaKey( spep_0 + 50, induction, 255 );
setEffAlphaKey( spep_0 + 51, induction, 0 );
setEffAlphaKey( spep_0 + 52, induction, 0 );

shuchusen1 = entryEffectLife( spep_0 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 48, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 48, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 48, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 48, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 48, shuchusen1, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+42 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
SE_1241 = playSe( spep_0 + 4, 1241 );
setSeVolume( spep_0 + 4, 1241, 100 );
setSeVolume( spep_0 + 49, 1241, 100 );
setSeVolume( spep_0 + 50, 1241, 97.6 );
setSeVolume( spep_0 + 51, 1241, 95.2 );
setSeVolume( spep_0 + 52, 1241, 92.8 );
setSeVolume( spep_0 + 53, 1241, 90.4 );
setSeVolume( spep_0 + 54, 1241, 88 );
setSeVolume( spep_0 + 55, 1241, 85.6 );
setSeVolume( spep_0 + 56, 1241, 83.2 );
setSeVolume( spep_0 + 57, 1241, 80.8 );
setSeVolume( spep_0 + 58, 1241, 78.4 );
setSeVolume( spep_0 + 59, 1241, 76 );
setSeVolume( spep_0 + 60, 1241, 73.6 );
setSeVolume( spep_0 + 61, 1241, 71.2 );
setSeVolume( spep_0 + 62, 1241, 68.8 );
setSeVolume( spep_0 + 63, 1241, 66.4 );
setSeVolume( spep_0 + 64, 1241, 64 );
setSeVolume( spep_0 + 65, 1241, 61.6 );
setSeVolume( spep_0 + 66, 1241, 59.2 );
setSeVolume( spep_0 + 67, 1241, 56.8 );
setSeVolume( spep_0 + 68, 1241, 54.4 );
setSeVolume( spep_0 + 69, 1241, 52 );
setSeVolume( spep_0 + 70, 1241, 49.6 );
setSeVolume( spep_0 + 71, 1241, 47.2 );
setSeVolume( spep_0 + 72, 1241, 44.8 );
setSeVolume( spep_0 + 73, 1241, 42.4 );
setSeVolume( spep_0 + 74, 1241, 40 );
setSeVolume( spep_0 + 75, 1241, 37.6 );
setSeVolume( spep_0 + 76, 1241, 35.2 );
setSeVolume( spep_0 + 77, 1241, 32.8 );
setSeVolume( spep_0 + 78, 1241, 30.4 );
setSeVolume( spep_0 + 79, 1241, 28 );
setSeVolume( spep_0 + 80, 1241, 25.6 );
setSeVolume( spep_0 + 81, 1241, 23.2 );
setSeVolume( spep_0 + 82, 1241, 20.8 );
setSeVolume( spep_0 + 83, 1241, 18.4 );
setSeVolume( spep_0 + 84, 1241, 16 );
setSeVolume( spep_0 + 85, 1241, 13.6 );
setSeVolume( spep_0 + 86, 1241, 11.2 );
setSeVolume( spep_0 + 87, 1241, 8.8 );
setSeVolume( spep_0 + 88, 1241, 6.4 );
setSeVolume( spep_0 + 89, 1241, 4 );
setSeVolume( spep_0 + 90, 1241, 1.6 );
setSeVolume( spep_0 + 91, 1241, 0 );
stopSe( spep_0 + 92, SE_1241, 0 );
SE_1225 = playSe( spep_0 + 6, 1225 );
setSeVolume( spep_0 + 6, 1225, 141 );
SE_1214 = playSe( spep_0 + 7, 1214 );
setSeVolume( spep_0 + 7, 1214, 125.9 );
setSeVolume( spep_0 + 43, 1214, 125.9 );
setSeVolume( spep_0 + 44, 1214, 121.7 );
setSeVolume( spep_0 + 45, 1214, 117.5 );
setSeVolume( spep_0 + 46, 1214, 113.3 );
setSeVolume( spep_0 + 47, 1214, 109.1 );
setSeVolume( spep_0 + 48, 1214, 104.9 );
setSeVolume( spep_0 + 49, 1214, 100.7 );
setSeVolume( spep_0 + 50, 1214, 96.5 );
setSeVolume( spep_0 + 51, 1214, 92.3 );
setSeVolume( spep_0 + 52, 1214, 88.1 );
setSeVolume( spep_0 + 53, 1214, 83.9 );
setSeVolume( spep_0 + 54, 1214, 79.7 );
setSeVolume( spep_0 + 55, 1214, 75.5 );
setSeVolume( spep_0 + 56, 1214, 71.3 );
setSeVolume( spep_0 + 57, 1214, 67.1 );
setSeVolume( spep_0 + 58, 1214, 62.9 );
setSeVolume( spep_0 + 59, 1214, 58.7 );
setSeVolume( spep_0 + 60, 1214, 54.5 );
setSeVolume( spep_0 + 61, 1214, 50.3 );
setSeVolume( spep_0 + 62, 1214, 46.1 );
setSeVolume( spep_0 + 63, 1214, 41.9 );
setSeVolume( spep_0 + 64, 1214, 37.7 );
setSeVolume( spep_0 + 65, 1214, 33.5 );
setSeVolume( spep_0 + 66, 1214, 29.3 );
setSeVolume( spep_0 + 67, 1214, 25.1 );
setSeVolume( spep_0 + 68, 1214, 20.9 );
setSeVolume( spep_0 + 69, 1214, 16.7 );
setSeVolume( spep_0 + 70, 1214, 12.5 );
setSeVolume( spep_0 + 71, 1214, 8.3 );
setSeVolume( spep_0 + 72, 1214, 4.1 );
setSeVolume( spep_0 + 73, 1214, 0 );
stopSe( spep_0 + 74, SE_1214, 0 );

SE_8 = playSe( spep_0 + 42, 8 );
setSeVolume( spep_0 + 42, 8, 89 );




-- ** 次の準備 ** --
spep_1=spep_0+50;
------------------------------------------------------
-- ヤコン、プイプイ召喚→突撃
------------------------------------------------------
-- ** エフェクト等 ** --
summon = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, summon, 0, 0, 0 );
setEffMoveKey( spep_1 + 130, summon, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, summon, -1.0, 1.0 );
setEffScaleKey( spep_1 + 130, summon, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, summon, 0 );
setEffRotateKey( spep_1 + 130, summon, 0 );
setEffAlphaKey( spep_1 + 0, summon, 255 );
setEffAlphaKey( spep_1 + 130, summon, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 78,  906, 50, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 -3 + 78, shuchusen2, 50, 20 );
setEffMoveKey( spep_1 -3 + 78, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 128, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 78, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 128, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_1 -3 + 78, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 128, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 78, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 255 );

--白フェード
entryFade( spep_1+122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 132, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_1 + 36, 43 );
playSe( spep_1 + 47, 43 );
playSe( spep_1 + 83, 1182 );
setSeVolume( spep_1 + 83, 1182, 89 );
playSe( spep_1 + 83, 9 );
playSe( spep_1 + 83, 44 );
setSeVolume( spep_1 + 83, 44, 79 );


-- ** 次の準備 ** --
spep_2=spep_1+130;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
SE_44 = playSe( spep_2 + 93, 44 );
setSeVolume( spep_2 + 93, 44, 71 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- ヤコン、プイプイラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
struggle_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, struggle_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, struggle_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, struggle_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, struggle_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, struggle_f, 0 );
setEffRotateKey( spep_3 + 176, struggle_f, 0 );
setEffAlphaKey( spep_3 + 0, struggle_f, 255 );
setEffAlphaKey( spep_3 + 176, struggle_f, 255 );

-- ** エフェクト等 ** --
struggle_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, struggle_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, struggle_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, struggle_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, struggle_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, struggle_b, 0 );
setEffRotateKey( spep_3 + 176, struggle_b, 0 );
setEffAlphaKey( spep_3 + 0, struggle_b, 255 );
setEffAlphaKey( spep_3 + 176, struggle_b, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 42,  10012, 18, 0x100, -1, 0, 33.1, 216.5 );
setEffShake( spep_3-3 + 42, ctzuo, 18, 10 );
setEffMoveKey( spep_3-3 + 42, ctzuo, 33.1, 216.5 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, -51.9, 277.9 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzuo, -64.5, 275.3 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzuo, -75.9, 285 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzuo, -88.5, 282.3 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzuo, -99.9, 292 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzuo, -112.5, 289.3 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzuo, -123.9, 299 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzuo, -136.5, 296.3 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzuo, -147.9, 306 , 0 );

setEffScaleKey( spep_3-3 + 42, ctzuo, 1.38,1.38 );
setEffScaleKey( spep_3-3 + 44, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_3-3 + 60, ctzuo, 2.4, 2.4 );

setEffRotateKey( spep_3-3 + 42, ctzuo, -25 );
setEffRotateKey( spep_3-3 + 60, ctzuo, -25 );

setEffAlphaKey( spep_3-3 + 42, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 44, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 60, ctzuo, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE_49 = playSe( spep_3 + 24, 49 );
setSeVolume( spep_3 + 24, 49, 100 );
SE_1037 = playSe( spep_3 + 24, 1037 );
setSeVolume( spep_3 + 24, 1037, 63 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_44, 0 );
    stopSe( SP_dodge - 12, SE_49, 0 );
    stopSe( SP_dodge - 12, SE_1037, 0 );

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
setDisp( spep_3-3 + 64, 1, 1);
--setDisp( spep_3-3 + 178, 1, 0);
changeAnime( spep_3-3 + 64, 1, 100);
changeAnime( spep_3-3 + 90, 1, 108);
changeAnime( spep_3-3 + 100, 1, 105);
changeAnime( spep_3-3 + 128, 1, 105);
changeAnime( spep_3-3 + 152, 1, 107);

setMoveKey( spep_3-3 + 64, 1, 165.9, 245.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 152.2, 233.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 138.5, 220.5 , 0 );
setMoveKey( spep_3-3 + 70, 1, 132.2, 213.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 125.2, 206.2 , 0 );
setMoveKey( spep_3-3 + 74, 1, 117.3, 197.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 108.6, 188.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 99.1, 179 , 0 );
setMoveKey( spep_3-3 + 80, 1, 88.7, 168.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 77.6, 157.1 , 0 );
setMoveKey( spep_3-3 + 84, 1, 65.6, 145 , 0 );
setMoveKey( spep_3-3 + 86, 1, 52.8, 132.1 , 0 );
setMoveKey( spep_3-3 + 88, 1, 39.1, 118.4 , 0 );
setMoveKey( spep_3-3 + 89, 1, 39.1, 118.4 , 0 );

setMoveKey( spep_3-3 + 90, 1, 87.4, 93.5 , 0 );
setMoveKey( spep_3-3 + 92, 1, 57.3, 70 , 0 );
setMoveKey( spep_3-3 + 94, 1, 152.6, 130 , 0 );
setMoveKey( spep_3-3 + 96, 1, 81.4, 90.5 , 0 );
setMoveKey( spep_3-3 + 98, 1, 50.7, 68.5 , 0 );
setMoveKey( spep_3-3 + 99, 1, 50.7, 68.5 , 0 );

setMoveKey( spep_3-3 + 100, 1, 168.9, 102.4 , 0 );
setMoveKey( spep_3-3 + 102, 1, 113.1, 83.1 , 0 );
setMoveKey( spep_3-3 + 104, 1, 126.1, 102.6 , 0 );
setMoveKey( spep_3-3 + 106, 1, 135, 117.8 , 0 );
setMoveKey( spep_3-3 + 108, 1, 151.7, 140.9 , 0 );
setMoveKey( spep_3-3 + 110, 1, 160.2, 155.6 , 0 );
setMoveKey( spep_3-3 + 112, 1, 172.4, 174.2 , 0 );
setMoveKey( spep_3-3 + 114, 1, 184.5, 192.5 , 0 );
setMoveKey( spep_3-3 + 116, 1, 196.4, 210.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 208.1, 228.3 , 0 );
setMoveKey( spep_3-3 + 120, 1, 219.6, 245.9 , 0 );
setMoveKey( spep_3-3 + 122, 1, 230.8, 263.3 , 0 );
setMoveKey( spep_3-3 + 124, 1, 241.9, 280.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, 252.8, 297.2 , 0 );
setMoveKey( spep_3-3 + 127, 1, 252.8, 297.2 , 0 );

setMoveKey( spep_3-3 + 128, 1, -285, -730.3 , 0 );
setMoveKey( spep_3-3 + 130, 1, -258.3, -667.7 , 0 );
setMoveKey( spep_3-3 + 132, 1, -231.5, -605 , 0 );
setMoveKey( spep_3-3 + 134, 1, -204.8, -542.3 , 0 );
setMoveKey( spep_3-3 + 136, 1, -178.1, -479.6 , 0 );
setMoveKey( spep_3-3 + 138, 1, -151.4, -417 , 0 );
setMoveKey( spep_3-3 + 140, 1, -124.7, -354.3 , 0 );
setMoveKey( spep_3-3 + 142, 1, -97.9, -291.6 , 0 );
setMoveKey( spep_3-3 + 144, 1, -71.2, -228.9 , 0 );
setMoveKey( spep_3-3 + 146, 1, -44.5, -166.3 , 0 );
setMoveKey( spep_3-3 + 148, 1, -17.8, -103.6 , 0 );
setMoveKey( spep_3-3 + 150, 1, 8.9, -40.9 , 0 );
setMoveKey( spep_3-3 + 151, 1, 8.9, -40.9 , 0 );

setMoveKey( spep_3-3 + 152, 1, 43.1, -80.2 , 0 );
setMoveKey( spep_3-3 + 154, 1, 129.3, -41.8 , 0 );
setMoveKey( spep_3-3 + 156, 1, 76.7, -117.6 , 0 );
setMoveKey( spep_3-3 + 158, 1, 85.1, -155.4 , 0 );
setMoveKey( spep_3-3 + 160, 1, 106.4, -184.6 , 0 );
setMoveKey( spep_3-3 + 162, 1, 115.9, -215.1 , 0 );
setMoveKey( spep_3-3 + 164, 1, 132.1, -242.9 , 0 );
setMoveKey( spep_3-3 + 166, 1, 138.9, -272.1 , 0 );
setMoveKey( spep_3-3 + 168, 1, 152.5, -290.6 , 0 );
setMoveKey( spep_3-3 + 170, 1, 156.7, -310.5 , 0 );
setMoveKey( spep_3-3 + 172, 1, 167.6, -327.7 , 0 );
setMoveKey( spep_3-3 + 174, 1, 169.2, -346.2 , 0 );
setMoveKey( spep_3-1 + 176, 1, 177.4, -354.1 , 0 );
--setMoveKey( spep_3-3 + 178, 1, 176.4, -367.3 , 0 );


setScaleKey( spep_3-3 + 64, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 66, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 68, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 70, 1, 0.77, 0.77 );
setScaleKey( spep_3-3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_3-3 + 74, 1, 1, 1 );
setScaleKey( spep_3-3 + 76, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 78, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 80, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 82, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 84, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 86, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 88, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 89, 1, 1.95, 1.95 );

setScaleKey( spep_3-3 + 90, 1, 2.24, 2.24 );
setScaleKey( spep_3-3 + 92, 1, 2.08, 2.08 );
setScaleKey( spep_3-3 + 94, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 96, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 98, 1, 2.04, 2.04 );
setScaleKey( spep_3-3 + 99, 1, 2.04, 2.04 );

setScaleKey( spep_3-3 + 100, 1, 2.03, 2.03 );
setScaleKey( spep_3-3 + 102, 1, 1.87, 1.87 );
setScaleKey( spep_3-3 + 104, 1, 1.71, 1.71 );
setScaleKey( spep_3-3 + 106, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 108, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 110, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 112, 1, 1.1, 1.1 );
setScaleKey( spep_3-3 + 114, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 116, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 118, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 120, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 122, 1, 0.39, 0.39 );
setScaleKey( spep_3-3 + 124, 1, 0.25, 0.25 );
setScaleKey( spep_3-3 + 126, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 127, 1, 0.12, 0.12 );

setScaleKey( spep_3-3 + 128, 1, 2.53, 2.53 );
setScaleKey( spep_3-3 + 130, 1, 2.46, 2.46 );
setScaleKey( spep_3-3 + 132, 1, 2.4, 2.4 );
setScaleKey( spep_3-3 + 134, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 136, 1, 2.28, 2.28 );
setScaleKey( spep_3-3 + 138, 1, 2.21, 2.21 );
setScaleKey( spep_3-3 + 140, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 142, 1, 2.09, 2.09 );
setScaleKey( spep_3-3 + 144, 1, 2.03, 2.03 );
setScaleKey( spep_3-3 + 146, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 148, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 150, 1, 1.84, 1.84 );
setScaleKey( spep_3-3 + 151, 1, 1.84, 1.84 );

setScaleKey( spep_3-3 + 152, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 154, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 156, 1, 0.86, 0.86 );
setScaleKey( spep_3-3 + 158, 1, 0.93, 0.93 );
setScaleKey( spep_3-3 + 160, 1, 1, 1 );
setScaleKey( spep_3-3 + 162, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 164, 1, 1.13, 1.13 );
setScaleKey( spep_3-3 + 166, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 168, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 170, 1, 1.29, 1.29 );
setScaleKey( spep_3-3 + 172, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 174, 1, 1.38, 1.38 );
setScaleKey( spep_3-1 + 176, 1, 1.41, 1.41 );
--setScaleKey( spep_3-3 + 178, 1, 1.44, 1.44 );

setRotateKey( spep_3-3 + 64, 1, 0 );
setRotateKey( spep_3-3 + 99, 1, 0 );

setRotateKey( spep_3-3 + 100, 1, 10 );
setRotateKey( spep_3-3 + 127, 1, 10 );

setRotateKey( spep_3-3 + 128, 1, 25 );
setRotateKey( spep_3-3 + 151, 1, 25 );

setRotateKey( spep_3-3 + 152, 1, 0 );
setRotateKey( spep_3-1 + 176, 1, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 152,  10020, 16, 0x100, -1, 0, 125.7, 263.5 );
setEffShake( spep_3-3 + 152, ctbaki, 16, 10 );
setEffMoveKey( spep_3-3 + 152, ctbaki, 125.7, 263.5 , 0 );
setEffMoveKey( spep_3-3 + 154, ctbaki, 144.9, 281.3 , 0 );
setEffMoveKey( spep_3-3 + 156, ctbaki, 140.1, 286.5 , 0 );
setEffMoveKey( spep_3-3 + 158, ctbaki, 137.9, 278.8 , 0 );
setEffMoveKey( spep_3-3 + 160, ctbaki, 161.3, 300.2 , 0 );
setEffMoveKey( spep_3-3 + 162, ctbaki, 153.8, 305 , 0 );
setEffMoveKey( spep_3-3 + 164, ctbaki, 172.3, 312.8 , 0 );
setEffMoveKey( spep_3-3 + 166, ctbaki, 158.4, 311.2 , 0 );
setEffMoveKey( spep_3-3 + 168, ctbaki, 158.4, 311.2 , 0 );

setEffScaleKey( spep_3-3 + 152, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 154, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_3-3 + 156, ctbaki, 1.44, 1.44 );
setEffScaleKey( spep_3-3 + 158, ctbaki, 1.56, 1.56 );
setEffScaleKey( spep_3-3 + 160, ctbaki, 1.69, 1.69 );
setEffScaleKey( spep_3-3 + 162, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_3-3 + 164, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_3-3 + 168, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_3-3 + 152, ctbaki, 15 );
setEffRotateKey( spep_3-3 + 168, ctbaki, 15 );

setEffAlphaKey( spep_3-3 + 152, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 164, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 166, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 168, ctbaki, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 152,  906, 26, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 152, shuchusen3, 26, 20 );
setEffMoveKey( spep_3-3 + 152, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 178, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 152, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 178, shuchusen3, 1.2, 1.2 );

setEffRotateKey( spep_3-3 + 152, shuchusen3, 0 );
setEffRotateKey( spep_3-3 + 178, shuchusen3, 0 );

setEffAlphaKey( spep_3-3 + 152, shuchusen3, 255 );
setEffAlphaKey( spep_3-3 + 178, shuchusen3, 255 );

--SE
stopSe( spep_3 + 43, SE_49, 0 );
stopSe( spep_3 + 43, SE_1037, 0 );
SE_1021 = playSe( spep_3 + 38, 1021 );
playSe( spep_3 + 38, 1021 );
SE_1027 = playSe( spep_3 + 38, 1027 );
setSeVolume( spep_3 + 38, 1027, 71 );
playSe( spep_3 + 85, 1023 );
playSe( spep_3 + 133, 43 );
playSe( spep_3 + 143, 1003 );
playSe( spep_3 + 148, 1187 );
setSeVolume( spep_3 + 148, 1187, 71 );
playSe( spep_3 + 149, 1009 );
setSeVolume( spep_3 + 149, 1009, 79 );
playSe( spep_3 + 152, 1110 );
setSeVolume( spep_3 + 152, 1110, 63 );
playSe( spep_3 + 154, 1013 );
SE_1183 = playSe( spep_3 + 164, 1183 );
setSeVolume( spep_3 + 164, 1183, 100 );

-- ** 次の準備 ** --
spep_4=spep_3+176;

------------------------------------------------------
-- 岩激突
------------------------------------------------------
-- ** エフェクト等 ** --
crash_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, crash_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, crash_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, crash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, crash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, crash_f, 0 );
setEffRotateKey( spep_4 + 76, crash_f, 0 );
setEffAlphaKey( spep_4 + 0, crash_f, 255 );
setEffAlphaKey( spep_4 + 76, crash_f, 255 );

-- ** エフェクト等 ** --
crash_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, crash_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, crash_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, crash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, crash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, crash_b, 0 );
setEffRotateKey( spep_4 + 76, crash_b, 0 );
setEffAlphaKey( spep_4 + 0, crash_b, 255 );
setEffAlphaKey( spep_4 + 76, crash_b, 255 );

--敵の動き
setDisp( spep_4-3 + 74, 1, 0);

changeAnime( spep_4+ 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, -309.7, 82.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 263.4, 75.3 , 0 );
setMoveKey( spep_4-3 + 4, 1, -216.7, 67.7 , 0 );
setMoveKey( spep_4-3 + 6, 1, -169.8, 60 , 0 );
setMoveKey( spep_4-3 + 8, 1, -122.6, 52.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, -75.2, 44.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, -27.5, 36.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 20.5, 29.1 , 0 );
setMoveKey( spep_4-3 + 16, 1, 68.7, 21.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, 117.1, 13.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 165.9, 5.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 138.2, -14.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 236.1, 46 , 0 );
setMoveKey( spep_4-3 + 26, 1, 138.9, -14.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 236.9, 45.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 168.2, 6.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 164.5, 6.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 168.9, 6.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 165.3, 2.8 , 0 );
setMoveKey( spep_4-3 + 38, 1, 169.6, 6.8 , 0 );
setMoveKey( spep_4-3 + 40, 1, 166, 2.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, 170.3, 6.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, 166.7, 2.7 , 0 );
setMoveKey( spep_4-3 + 46, 1, 171, 6.6 , 0 );
setMoveKey( spep_4-3 + 48, 1, 167.4, 2.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 171.8, 6.6 , 0 );
setMoveKey( spep_4-3 + 52, 1, 172.1, 6.5 , 0 );
setMoveKey( spep_4-3 + 54, 1, 172.5, 6.5 , 0 );
setMoveKey( spep_4-3 + 56, 1, 172.8, 6.5 , 0 );
setMoveKey( spep_4-3 + 58, 1, 173.2, 6.4 , 0 );
setMoveKey( spep_4-3 + 60, 1, 173.5, 6.4 , 0 );
setMoveKey( spep_4-3 + 62, 1, 173.9, 6.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, 174.3, 6.3 , 0 );
setMoveKey( spep_4-3 + 66, 1, 174.6, 6.3 , 0 );
setMoveKey( spep_4-3 + 68, 1, 175, 6.3 , 0 );
setMoveKey( spep_4-3 + 70, 1, 175.3, 6.2 , 0 );
setMoveKey( spep_4-3 + 72, 1, 175.7, 6.2 , 0 );
setMoveKey( spep_4-3 + 74, 1, 176, 6.2 , 0 );


setScaleKey( spep_4 + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_4-3 + 2, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 4, 1, 2.09, 2.09 );
setScaleKey( spep_4-3 + 6, 1, 1.89, 1.89 );
setScaleKey( spep_4-3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_4-3 + 10, 1, 1.47, 1.47 );
setScaleKey( spep_4-3 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_4-3 + 14, 1, 1.05, 1.05 );
setScaleKey( spep_4-3 + 16, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_4-3 + 20, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 28, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 46, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 48, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 64, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 66, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 74, 1, 0.44, 0.44 );

setRotateKey( spep_4 + 0, 1, 37.2 );
--setRotateKey( spep_4-3 + 2, 1, 33.5 );
setRotateKey( spep_4-3 + 4, 1, 29.8 );
setRotateKey( spep_4-3 + 6, 1, 26 );
setRotateKey( spep_4-3 + 8, 1, 22.3 );
setRotateKey( spep_4-3 + 10, 1, 18.6 );
setRotateKey( spep_4-3 + 12, 1, 14.9 );
setRotateKey( spep_4-3 + 14, 1, 11.2 );
setRotateKey( spep_4-3 + 16, 1, 7.4 );
setRotateKey( spep_4-3 + 18, 1, 3.7 );
setRotateKey( spep_4-3 + 20, 1, 0 );
setRotateKey( spep_4-3 + 22, 1, -0.2 );
setRotateKey( spep_4-3 + 74, 1, -0.2 );

--文字エントリー
ctdon = entryEffectLife( spep_4 -3 + 20,  10019, 38, 0x100, -1, 0, 182.4, 152.4 );
setEffShake( spep_4 -3 + 20, ctdon, 38, 10 );
setEffMoveKey( spep_4 -3 + 20, ctdon, 182.4, 152.4 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctdon, 180.6, 213 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctdon, 176.4, 273.9 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctdon, 173.3, 334.7 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctdon, 175.5, 335.2 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctdon, 173.4, 336.5 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctdon, 175.4, 334.9 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctdon, 173.3, 334.7 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctdon, 175.5, 335.2 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctdon, 173.4, 336.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctdon, 175.4, 334.9 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctdon, 173.3, 334.7 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdon, 175.5, 335.2 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdon, 173.4, 336.5 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdon, 175.4, 334.9 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctdon, 173.3, 334.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctdon, 175.5, 335.2 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctdon, 173.4, 336.5 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctdon, 175.4, 334.9 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctdon, 175.4, 334.9 , 0 );

setEffScaleKey( spep_4 -3 + 20, ctdon, 0.5, 0.5 );
setEffScaleKey( spep_4 -3 + 22, ctdon, 0.83, 0.83 );
setEffScaleKey( spep_4 -3 + 24, ctdon, 1.17, 1.17 );
setEffScaleKey( spep_4 -3 + 26, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 58, ctdon, 1.5, 1.5 );

setEffRotateKey( spep_4 -3 + 20, ctdon, 10 );
setEffRotateKey( spep_4 -3 + 58, ctdon, 10 );

setEffAlphaKey( spep_4 -3 + 20, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 50, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 52, ctdon, 191 );
setEffAlphaKey( spep_4 -3 + 54, ctdon, 128 );
setEffAlphaKey( spep_4 -3 + 56, ctdon, 64 );
setEffAlphaKey( spep_4 -3 + 58, ctdon, 0 );

--白フェード
entryFade( spep_4+68 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
stopSe( spep_4 + 29, SE_1183, 0 );
playSe( spep_4 + 28, 1033 );
setSeVolume( spep_4 + 28, 1033, 89 );
SE_1159 = playSe( spep_4 + 29, 1159 );
setSeVolume( spep_4 + 29, 1159, 36 );


-- ** 次の準備 ** --
spep_5=spep_4+76;
------------------------------------------------------
-- ツバ吐き
------------------------------------------------------
-- ** エフェクト等 ** --
saliva = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, saliva, 0, 0, 0 );
setEffMoveKey( spep_5 + 76, saliva, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, saliva, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, saliva, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, saliva, 0 );
setEffRotateKey( spep_5 + 76, saliva, 0 );
setEffAlphaKey( spep_5 + 0, saliva, 255 );
setEffAlphaKey( spep_5 + 76, saliva, 255 );
setEffAlphaKey( spep_5 + 77, saliva, 0 );
setEffAlphaKey( spep_5 + 78, saliva, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5-3 + 30,  906, 48, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-3 + 30, shuchusen4, 48, 20 );
setEffMoveKey( spep_5-3 + 30, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 30, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_5-3 + 78, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_5-3 + 30, shuchusen4, 0 );
setEffRotateKey( spep_5-3 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_5-3 + 30, shuchusen4, 255 );
setEffAlphaKey( spep_5-3 + 78, shuchusen4, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
setSeVolume( spep_5 + 31, 1159, 35.5 );
setSeVolume( spep_5 + 32, 1159, 35 );
setSeVolume( spep_5 + 33, 1159, 34.5 );
setSeVolume( spep_5 + 34, 1159, 34 );
setSeVolume( spep_5 + 35, 1159, 33.5 );
setSeVolume( spep_5 + 36, 1159, 33 );
setSeVolume( spep_5 + 37, 1159, 32.5 );
setSeVolume( spep_5 + 38, 1159, 32 );
setSeVolume( spep_5 + 39, 1159, 31.5 );
setSeVolume( spep_5 + 40, 1159, 31 );
setSeVolume( spep_5 + 41, 1159, 30.5 );
setSeVolume( spep_5 + 42, 1159, 30 );
setSeVolume( spep_5 + 43, 1159, 29.5 );
setSeVolume( spep_5 + 44, 1159, 29 );
setSeVolume( spep_5 + 45, 1159, 28.5 );
setSeVolume( spep_5 + 46, 1159, 28 );
setSeVolume( spep_5 + 47, 1159, 27.5 );
setSeVolume( spep_5 + 48, 1159, 27 );
setSeVolume( spep_5 + 49, 1159, 26.5 );
setSeVolume( spep_5 + 50, 1159, 26 );
setSeVolume( spep_5 + 51, 1159, 25.5 );
setSeVolume( spep_5 + 52, 1159, 25 );
setSeVolume( spep_5 + 53, 1159, 24.5 );
setSeVolume( spep_5 + 54, 1159, 24 );
setSeVolume( spep_5 + 55, 1159, 23.5 );
setSeVolume( spep_5 + 56, 1159, 23 );
setSeVolume( spep_5 + 57, 1159, 22.5 );
setSeVolume( spep_5 + 58, 1159, 22 );
setSeVolume( spep_5 + 59, 1159, 21.5 );
setSeVolume( spep_5 + 60, 1159, 21 );
setSeVolume( spep_5 + 61, 1159, 20.5 );
setSeVolume( spep_5 + 62, 1159, 20 );
setSeVolume( spep_5 + 63, 1159, 19.5 );
setSeVolume( spep_5 + 64, 1159, 19 );
setSeVolume( spep_5 + 65, 1159, 18.5 );
setSeVolume( spep_5 + 66, 1159, 18 );
setSeVolume( spep_5 + 67, 1159, 17.5 );
setSeVolume( spep_5 + 68, 1159, 17 );
setSeVolume( spep_5 + 69, 1159, 16.5 );
setSeVolume( spep_5 + 70, 1159, 16 );
setSeVolume( spep_5 + 71, 1159, 15.5 );
setSeVolume( spep_5 + 72, 1159, 15 );
setSeVolume( spep_5 + 73, 1159, 14.5);
setSeVolume( spep_5 + 74, 1159, 14 );
setSeVolume( spep_5 + 75, 1159, 13.5 );
setSeVolume( spep_5 + 76, 1159, 13 );

SE_1046 = playSe( spep_5 + 33, 1046 );
setSeVolume( spep_5 + 33, 1046, 100 );
setSeVolume( spep_5 + 43, 1046, 100 );
setSeVolume( spep_5 + 44, 1046, 95.2 );
setSeVolume( spep_5 + 45, 1046, 90.4 );
setSeVolume( spep_5 + 46, 1046, 85.6 );
setSeVolume( spep_5 + 47, 1046, 80.8 );
setSeVolume( spep_5 + 48, 1046, 76 );
setSeVolume( spep_5 + 49, 1046, 71.2 );
setSeVolume( spep_5 + 50, 1046, 66.4 );
setSeVolume( spep_5 + 51, 1046, 61.6 );
setSeVolume( spep_5 + 52, 1046, 56.8 );
setSeVolume( spep_5 + 53, 1046, 52 );
setSeVolume( spep_5 + 54, 1046, 47.2 );
setSeVolume( spep_5 + 55, 1046, 42.4 );
setSeVolume( spep_5 + 56, 1046, 37.6 );
setSeVolume( spep_5 + 57, 1046, 32.8 );
setSeVolume( spep_5 + 58, 1046, 28 );
setSeVolume( spep_5 + 59, 1046, 23.2 );
setSeVolume( spep_5 + 60, 1046, 18.4 );
setSeVolume( spep_5 + 61, 1046, 13.6 );
setSeVolume( spep_5 + 62, 1046, 8.8 );
setSeVolume( spep_5 + 63, 1046, 4 );
setSeVolume( spep_5 + 64, 1046, 0 );
stopSe( spep_5 + 65, SE_1046, 0 );
playSe( spep_5 + 35, 1005 );

SE_1118 = playSe( spep_5 + 42, 1118 );
setSeVolume( spep_5 + 42, 1118, 71 );


-- ** 次の準備 ** --
spep_6=spep_5+76;
------------------------------------------------------
-- ツバヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 120, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 120, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 120, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 120, hit_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );

changeAnime( spep_6-3 + 0, 1, 108 );
changeAnime( spep_6-3 + 28, 1, 106 );

setMoveKey( spep_6 + 0, 1, 87.3, 2 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 86.7, 3.2 , 0 );
setMoveKey( spep_6-3 + 4, 1, 85.9, 4.7 , 0 );
setMoveKey( spep_6-3 + 6, 1, 84.9, 6.9 , 0 );
setMoveKey( spep_6-3 + 8, 1, 83.6, 9.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 81.9, 13.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 79.8, 18 , 0 );
setMoveKey( spep_6-3 + 14, 1, 77.1, 23.6 , 0 );
setMoveKey( spep_6-3 + 16, 1, 73.9, 30.4 , 0 );
setMoveKey( spep_6-3 + 18, 1, 70.1, 38.5 , 0 );
setMoveKey( spep_6-3 + 20, 1, 65.9, 47.6 , 0 );
setMoveKey( spep_6-3 + 22, 1, 61.3, 57.3 , 0 );
setMoveKey( spep_6-3 + 24, 1, 56.7, 67 , 0 );
setMoveKey( spep_6-3 + 27, 1, 48.4, 72.5 , 0 );
setMoveKey( spep_6-3 + 28, 1, -0.7, 116.9 , 0 );
setMoveKey( spep_6-3 + 30, 1, -4.5, 108.7 , 0 );
setMoveKey( spep_6-3 + 32, 1, -2.5, 110.7 , 0 );
setMoveKey( spep_6-3 + 34, 1, -1.8, 110.4 , 0 );
setMoveKey( spep_6-3 + 36, 1, -1.1, 110 , 0 );
setMoveKey( spep_6-3 + 38, 1, -0.5, 109.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, 0.2, 109.3 , 0 );
setMoveKey( spep_6-3 + 42, 1, -0.3, 109.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, -0.9, 109.9 , 0 );
setMoveKey( spep_6-3 + 46, 1, -1.4, 110.2 , 0 );
setMoveKey( spep_6-3 + 48, 1, -2, 110.4 , 0 );
setMoveKey( spep_6-3 + 50, 1, -2.5, 110.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, -2.5, 110.7 , 0 );
setMoveKey( spep_6-3 + 54, 1, -4.5, 106.7 , 0 );
setMoveKey( spep_6-3 + 56, 1, -2.5, 110.7 , 0 );
setMoveKey( spep_6-3 + 58, 1, -15.8, 108 , 0 );
setMoveKey( spep_6-3 + 60, 1, -11.8, 110 , 0 );
setMoveKey( spep_6-3 + 62, 1, -14.6, 107.6 , 0 );
setMoveKey( spep_6-3 + 64, 1, -13.3, 109.1 , 0 );
setMoveKey( spep_6-3 + 66, 1, -18.1, 104.7 , 0 );
setMoveKey( spep_6-3 + 68, 1, -14.8, 108.2 , 0 );
setMoveKey( spep_6-3 + 70, 1, -17.6, 103.8 , 0 );
setMoveKey( spep_6-3 + 72, 1, -16.3, 107.3 , 0 );
setMoveKey( spep_6-3 + 74, 1, -21.1, 104.9 , 0 );
setMoveKey( spep_6-3 + 76, 1, -17.8, 106.4 , 0 );
setMoveKey( spep_6-3 + 78, 1, -20.5, 102 , 0 );
setMoveKey( spep_6-3 + 80, 1, -19.3, 105.5 , 0 );
setMoveKey( spep_6-3 + 82, 1, -24, 103 , 0 );
setMoveKey( spep_6-3 + 84, 1, -20.8, 104.6 , 0 );
setMoveKey( spep_6-3 + 86, 1, -23.5, 100.1 , 0 );
setMoveKey( spep_6-3 + 88, 1, -22.3, 103.7 , 0 );
setMoveKey( spep_6-3 + 90, 1, -27, 101.2 , 0 );
setMoveKey( spep_6-3 + 92, 1, -34.2, 96.4 , 0 );
setMoveKey( spep_6-3 + 94, 1, 1, 125.2 , 0 );
setMoveKey( spep_6-3 + 96, 1, -10.3, 114.1 , 0 );
setMoveKey( spep_6-3 + 98, 1, -27.8, 96.9 , 0 );
setMoveKey( spep_6-3 + 100, 1, -36.8, 84.1 , 0 );
setMoveKey( spep_6-3 + 102, 1, -51.2, 66.1 , 0 );
setMoveKey( spep_6-3 + 104, 1, -60.5, 57.3 , 0 );
setMoveKey( spep_6-3 + 106, 1, -74.7, 43.8 , 0 );
setMoveKey( spep_6-3 + 108, 1, -79.6, 35.6 , 0 );
setMoveKey( spep_6-3 + 110, 1, -89.4, 22.8 , 0 );
setMoveKey( spep_6-3 + 112, 1, -94, 19.3 , 0 );
setMoveKey( spep_6-3 + 114, 1, -103.7, 10.9 , 0 );
setMoveKey( spep_6-3 + 116, 1, -104.4, 7.5 , 0 );
setMoveKey( spep_6-3 + 118, 1, -110.3, -1 , 0 );

setScaleKey( spep_6 + 0, 1, 1.68, 1.68 );
--setScaleKey( spep_6-3 + 2, 1, 1.71, 1.71 );
setScaleKey( spep_6-3 + 4, 1, 1.75, 1.75 );
setScaleKey( spep_6-3 + 6, 1, 1.81, 1.81 );
setScaleKey( spep_6-3 + 8, 1, 1.88, 1.88 );
setScaleKey( spep_6-3 + 10, 1, 1.98, 1.98 );
setScaleKey( spep_6-3 + 12, 1, 2.1, 2.1 );
setScaleKey( spep_6-3 + 14, 1, 2.25, 2.25 );
setScaleKey( spep_6-3 + 16, 1, 2.43, 2.43 );
setScaleKey( spep_6-3 + 18, 1, 2.64, 2.64 );
setScaleKey( spep_6-3 + 20, 1, 2.88, 2.88 );
setScaleKey( spep_6-3 + 22, 1, 3.13, 3.13 );
setScaleKey( spep_6-3 + 24, 1, 3.39, 3.39 );
setScaleKey( spep_6-3 + 27, 1, 3.64, 3.64 );
setScaleKey( spep_6-3 + 28, 1, 3.82, 3.82 );
setScaleKey( spep_6-3 + 30, 1, 3.64, 3.64 );
setScaleKey( spep_6-3 + 56, 1, 3.64, 3.64 );
setScaleKey( spep_6-3 + 58, 1, 4, 4 );
setScaleKey( spep_6-3 + 60, 1, 4, 4 );
setScaleKey( spep_6-3 + 62, 1, 4.02, 4.02 );
setScaleKey( spep_6-3 + 64, 1, 4.03, 4.03 );
setScaleKey( spep_6-3 + 66, 1, 4.04, 4.04 );
setScaleKey( spep_6-3 + 68, 1, 4.05, 4.05 );
setScaleKey( spep_6-3 + 70, 1, 4.06, 4.06 );
setScaleKey( spep_6-3 + 72, 1, 4.08, 4.08 );
setScaleKey( spep_6-3 + 74, 1, 4.09, 4.09 );
setScaleKey( spep_6-3 + 76, 1, 4.1, 4.1 );
setScaleKey( spep_6-3 + 78, 1, 4.11, 4.11 );
setScaleKey( spep_6-3 + 80, 1, 4.12, 4.12 );
setScaleKey( spep_6-3 + 82, 1, 4.14, 4.14 );
setScaleKey( spep_6-3 + 84, 1, 4.15, 4.15 );
setScaleKey( spep_6-3 + 86, 1, 4.16, 4.16 );
setScaleKey( spep_6-3 + 88, 1, 4.17, 4.17 );
setScaleKey( spep_6-3 + 90, 1, 4.19, 4.19 );
setScaleKey( spep_6-3 + 92, 1, 4.37, 4.37 );
setScaleKey( spep_6-3 + 94, 1, 4.19, 4.19 );
setScaleKey( spep_6-3 + 96, 1, 4.64, 4.64 );
setScaleKey( spep_6-3 + 98, 1, 5.1, 5.1 );
setScaleKey( spep_6-3 + 100, 1, 5.55, 5.55 );
setScaleKey( spep_6-3 + 102, 1, 5.98, 5.98 );
setScaleKey( spep_6-3 + 104, 1, 6.37, 6.37 );
setScaleKey( spep_6-3 + 106, 1, 6.71, 6.71 );
setScaleKey( spep_6-3 + 108, 1, 7.02, 7.02 );
setScaleKey( spep_6-3 + 110, 1, 7.29, 7.29 );
setScaleKey( spep_6-3 + 112, 1, 7.51, 7.51 );
setScaleKey( spep_6-3 + 114, 1, 7.71, 7.71 );
setScaleKey( spep_6-3 + 116, 1, 7.87, 7.87 );
setScaleKey( spep_6-3 + 118, 1, 8.01, 8.01 );

setRotateKey( spep_6 + 0, 1, 11 );
setRotateKey( spep_6-3 + 27, 1, 11 );
setRotateKey( spep_6-3 + 28, 1, -37 );
setRotateKey( spep_6-3 + 118, 1, -37 );

--集中線
shuchusen5 = entryEffectLife( spep_6-3 + 56,  906, 62, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6-3 + 56, shuchusen5, 62, 20 );
setEffMoveKey( spep_6-3 + 56, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 118, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 56, shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_6-3 + 118, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_6-3 + 56, shuchusen5, 0 );
setEffRotateKey( spep_6-3 + 118, shuchusen5, 0 );

setEffAlphaKey( spep_6-3 + 56, shuchusen5, 255 );
setEffAlphaKey( spep_6-3 + 118, shuchusen5, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_6-3 + 56,  10016, 62, 0x100, -1, 0, -73.3, 274 );
setEffShake( spep_6-3 + 56, ctzun, 62, 10 );
setEffMoveKey( spep_6-3 + 56, ctzun, -73.3, 274 , 0 );
setEffMoveKey( spep_6-3 + 58, ctzun, -98.1, 318.5 , 0 );
setEffMoveKey( spep_6-3 + 60, ctzun, -126.3, 366.3 , 0 );
setEffMoveKey( spep_6-3 + 62, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 64, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 66, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 68, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 70, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 72, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 74, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 76, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 78, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 80, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 82, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 84, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 86, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 88, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 90, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 92, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 94, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 96, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 98, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 100, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 102, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 104, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 106, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 108, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 110, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 112, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 114, ctzun, -152.8, 412.4 , 0 );
setEffMoveKey( spep_6-3 + 116, ctzun, -148.6, 408.3 , 0 );
setEffMoveKey( spep_6-3 + 118, ctzun, -152.8, 412.4 , 0 );

setEffScaleKey( spep_6-3 + 56, ctzun, 0.2, 0.2 );
setEffScaleKey( spep_6-3 + 58, ctzun, 0.63, 0.63 );
setEffScaleKey( spep_6-3 + 60, ctzun, 1.07, 1.07 );
setEffScaleKey( spep_6-3 + 62, ctzun, 1.5, 1.5 );
setEffScaleKey( spep_6-3 + 118, ctzun, 1.5, 1.5 );

setEffRotateKey( spep_6-3 + 56, ctzun, 20 );
setEffRotateKey( spep_6-3 + 118, ctzun, 20 );

setEffAlphaKey( spep_6-3 + 56, ctzun, 255 );
setEffAlphaKey( spep_6-3 + 118, ctzun, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_6-3 + 90,  10013, 28, 0x100, -1, 0, 41.8, -33.8 );
setEffShake( spep_6-3 + 90, ctzuzuzun, 28, 10 );
setEffMoveKey( spep_6-3 + 90, ctzuzuzun, 41.8, -33.8 , 0 );
setEffMoveKey( spep_6-3 + 92, ctzuzuzun, 51.8, -145.4 , 0 );
setEffMoveKey( spep_6-3 + 94, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 96, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 98, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 100, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 102, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 104, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 106, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 108, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 110, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 112, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 114, ctzuzuzun, 57.4, -273.4 , 0 );
setEffMoveKey( spep_6-3 + 116, ctzuzuzun, 61.1, -259.7 , 0 );
setEffMoveKey( spep_6-3 + 118, ctzuzuzun, 57.4, -273.4 , 0 );

setEffScaleKey( spep_6-3 + 90, ctzuzuzun, 0.58, 0.58 );
setEffScaleKey( spep_6-3 + 92, ctzuzuzun, 1.75, 1.75 );
setEffScaleKey( spep_6-3 + 94, ctzuzuzun, 2.91, 2.91 );
setEffScaleKey( spep_6-3 + 118, ctzuzuzun, 2.91, 2.91 );

setEffRotateKey( spep_6-3 + 90, ctzuzuzun, 35 );
setEffRotateKey( spep_6-3 + 118, ctzuzuzun, 35 );

setEffAlphaKey( spep_6-3 + 90, ctzuzuzun, 255 );
setEffAlphaKey( spep_6-3 + 118, ctzuzuzun, 255 );

--白フェード
entryFade( spep_6+50 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6+112 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 122, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
setSeVolume( spep_6 + 0, 1159, 12.5 );
setSeVolume( spep_6 + 1, 1159, 12 );
setSeVolume( spep_6 + 2, 1159, 11.5 );
setSeVolume( spep_6 + 3, 1159, 11 );
setSeVolume( spep_6 + 4, 1159, 10.5 );
setSeVolume( spep_6 + 5, 1159, 10 );
setSeVolume( spep_6 + 6, 1159, 9.5 );
setSeVolume( spep_6 + 7, 1159, 9 );
setSeVolume( spep_6 + 8, 1159, 8.5 );
setSeVolume( spep_6 + 9, 1159, 8 );
setSeVolume( spep_6 + 10, 1159, 7.5 );
setSeVolume( spep_6 + 11, 1159, 7 );
setSeVolume( spep_6 + 12, 1159, 6.5 );
setSeVolume( spep_6 + 13, 1159, 6 );
setSeVolume( spep_6 + 14, 1159, 5.5 );
setSeVolume( spep_6 + 15, 1159, 5 );
setSeVolume( spep_6 + 16, 1159, 4.5 );
setSeVolume( spep_6 + 17, 1159, 4 );
setSeVolume( spep_6 + 18, 1159, 3.5 );
setSeVolume( spep_6 + 19, 1159, 3 );
setSeVolume( spep_6 + 20, 1159, 2.5 );
setSeVolume( spep_6 + 21, 1159, 2 );
setSeVolume( spep_6 + 22, 1159, 1.5 );
setSeVolume( spep_6 + 23, 1159, 1 );
setSeVolume( spep_6 + 24, 1159, 0 );
stopSe( spep_6 + 24, SE_1159, 0 );
stopSe( spep_6 + 33, SE_1118, 0 );
SE_1215 = playSe( spep_6 + 2, 1215 );
setSeVolume( spep_6 + 2, 1215, 0 );
SE_1113 = playSe( spep_6 + 33, 1113 );
setSeVolume( spep_6 + 33, 1113, 159 );
stopSe( spep_6 + 48, SE_1113, 0 );
SE_1013 = playSe( spep_6 + 33, 1013 );
setSeVolume( spep_6 + 33, 1013, 40 );
stopSe( spep_6 + 48, SE_1013, 0 );
SE_1250 = playSe( spep_6 + 48, 1250 );
setSeVolume( spep_6 + 48, 1250, 200 );




-- ** 次の準備 ** --
spep_7=spep_6+120;
------------------------------------------------------
-- セリフカットイン＆槍投げ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_7 + 156, tame, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_7 + 156, tame, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame, 0 );
setEffRotateKey( spep_7 + 156, tame, 0 );
setEffAlphaKey( spep_7 + 0, tame, 255 );
setEffAlphaKey( spep_7 + 156, tame, 255 );
setEffAlphaKey( spep_7 + 157, tame, 0 );
setEffAlphaKey( spep_7 + 158, tame, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_7-3 + 10,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7-3 + 10, shuchusen6, 78, 20 );
setEffMoveKey( spep_7-3 + 10, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_7-3 + 88, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_7-3 + 10, shuchusen6, 1, 1 );
setEffScaleKey( spep_7-3 + 88, shuchusen6, 1, 1 );

setEffRotateKey( spep_7-3 + 10, shuchusen6, 0 );
setEffRotateKey( spep_7-3 + 88, shuchusen6, 0 );

setEffAlphaKey( spep_7-3 + 10, shuchusen6, 255 );
setEffAlphaKey( spep_7-3 + 88, shuchusen6, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_7+20  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_7+20  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_7 +32, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_7 +32,  ctgogo,  100,  510);
setEffMoveKey(  spep_7 +104,  ctgogo,  100,  510);

setEffAlphaKey( spep_7 +32, ctgogo, 0 );
setEffAlphaKey( spep_7 + 33, ctgogo, 255 );
setEffAlphaKey( spep_7 + 34, ctgogo, 255 );
setEffAlphaKey( spep_7 + 98, ctgogo, 255 );
setEffAlphaKey( spep_7 + 100, ctgogo, 191 );
setEffAlphaKey( spep_7 + 102, ctgogo, 112 );
setEffAlphaKey( spep_7 + 104, ctgogo, 64 );

setEffRotateKey(  spep_7 +32,  ctgogo,  0);
setEffRotateKey(  spep_7 +104,  ctgogo,  0);

setEffScaleKey(  spep_7 +32,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_7 +94,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_7 +104,  ctgogo, -1.07, 1.07 );

-- 文字エントリー --
ctgyun = entryEffectLife( spep_7-3 + 130,  10006, 22, 0x100, -1, 0, 26.7, 210.7 );
setEffShake( spep_7-3 + 130, ctgyun, 22, 10 );
setEffMoveKey( spep_7-3 + 130, ctgyun, 26.7, 210.7 , 0 );
setEffMoveKey( spep_7-3 + 132, ctgyun, -46.7, 267.5 , 0 );
setEffMoveKey( spep_7-3 + 134, ctgyun, -51.8, 260.3 , 0 );
setEffMoveKey( spep_7-3 + 136, ctgyun, -41, 275.5 , 0 );
setEffMoveKey( spep_7-3 + 138, ctgyun, -46.5, 267.6 , 0 );
setEffMoveKey( spep_7-3 + 140, ctgyun, -35.2, 283.5 , 0 );
setEffMoveKey( spep_7-3 + 142, ctgyun, -41.2, 274.8 , 0 );
setEffMoveKey( spep_7-3 + 144, ctgyun, -29.4, 291.5 , 0 );
setEffMoveKey( spep_7-3 + 146, ctgyun, -35.9, 282.1 , 0 );
setEffMoveKey( spep_7-3 + 148, ctgyun, -23.6, 299.4 , 0 );
setEffMoveKey( spep_7-3 + 150, ctgyun, -30.6, 289.3 , 0 );
setEffMoveKey( spep_7-3 + 152, ctgyun, -17.9, 307.5 , 0 );

setEffScaleKey( spep_7-3 + 130, ctgyun, 0.78, 0.78 );
setEffScaleKey( spep_7-3 + 132, ctgyun, 1.5, 1.5 );
setEffScaleKey( spep_7-3 + 134, ctgyun, 1.55, 1.55 );
setEffScaleKey( spep_7-3 + 136, ctgyun, 1.6, 1.6 );
setEffScaleKey( spep_7-3 + 138, ctgyun, 1.65, 1.65 );
setEffScaleKey( spep_7-3 + 140, ctgyun, 1.7, 1.7 );
setEffScaleKey( spep_7-3 + 142, ctgyun, 1.75, 1.75 );
setEffScaleKey( spep_7-3 + 144, ctgyun, 1.8, 1.8 );
setEffScaleKey( spep_7-3 + 146, ctgyun, 1.85, 1.85 );
setEffScaleKey( spep_7-3 + 148, ctgyun, 1.9, 1.9 );
setEffScaleKey( spep_7-3 + 150, ctgyun, 1.95, 1.95 );
setEffScaleKey( spep_7-3 + 152, ctgyun, 2, 2 );

setEffRotateKey( spep_7-3 + 130, ctgyun, -10 );
setEffRotateKey( spep_7-3 + 152, ctgyun, -10 );

setEffAlphaKey( spep_7-3 + 130, ctgyun, 128 );
setEffAlphaKey( spep_7-3 + 132, ctgyun, 255 );
setEffAlphaKey( spep_7-3 + 152, ctgyun, 255 );

--SE
stopSe( spep_7 + 27, SE_1250, 0 );
setSeVolume( spep_7 + 22, 1215, 0 );
setSeVolume( spep_7 + 23, 1215, 5 );
setSeVolume( spep_7 + 24, 1215, 10 );
setSeVolume( spep_7 + 25, 1215, 15 );
setSeVolume( spep_7 + 26, 1215, 20 );
setSeVolume( spep_7 + 27, 1215, 25 );
setSeVolume( spep_7 + 28, 1215, 30 );
setSeVolume( spep_7 + 29, 1215, 35 );
setSeVolume( spep_7 + 30, 1215, 40 );
setSeVolume( spep_7 + 31, 1215, 45 );
setSeVolume( spep_7 + 32, 1215, 50 );
setSeVolume( spep_7 + 60, 1215, 50.1 );
setSeVolume( spep_7 + 61, 1215, 48.4 );
setSeVolume( spep_7 + 62, 1215, 46.7 );
setSeVolume( spep_7 + 63, 1215, 45 );
setSeVolume( spep_7 + 64, 1215, 43.3 );
setSeVolume( spep_7 + 65, 1215, 41.6 );
setSeVolume( spep_7 + 66, 1215, 39.9 );
setSeVolume( spep_7 + 67, 1215, 38.2 );
setSeVolume( spep_7 + 68, 1215, 36.5 );
setSeVolume( spep_7 + 69, 1215, 34.8 );
setSeVolume( spep_7 + 70, 1215, 33.1 );
setSeVolume( spep_7 + 71, 1215, 31.4 );
setSeVolume( spep_7 + 72, 1215, 29.7 );
setSeVolume( spep_7 + 73, 1215, 28 );
setSeVolume( spep_7 + 74, 1215, 26.3 );
setSeVolume( spep_7 + 75, 1215, 24.6 );
setSeVolume( spep_7 + 76, 1215, 22.9 );
setSeVolume( spep_7 + 77, 1215, 21.2 );
setSeVolume( spep_7 + 78, 1215, 19.5 );
setSeVolume( spep_7 + 79, 1215, 17.8 );
setSeVolume( spep_7 + 80, 1215, 16.1 );
setSeVolume( spep_7 + 81, 1215, 14.4 );
setSeVolume( spep_7 + 82, 1215, 12.7 );
setSeVolume( spep_7 + 83, 1215, 11 );
setSeVolume( spep_7 + 84, 1215, 9.3 );
setSeVolume( spep_7 + 85, 1215, 7.6 );
setSeVolume( spep_7 + 86, 1215, 5.9 );
setSeVolume( spep_7 + 87, 1215, 4.2 );
setSeVolume( spep_7 + 88, 1215, 2.5 );
setSeVolume( spep_7 + 89, 1215, 0.8 );
setSeVolume( spep_7 + 90, 1215, 0 );
playSe( spep_7 +32, 1018 );
SE_1209 = playSe( spep_7 + 3, 1209 );
setSeVolume( spep_7 + 3, 1209, 0 );
setSeVolume( spep_7 + 27, 1209, 0 );
setSeVolume( spep_7 + 28, 1209, 9.9 );
setSeVolume( spep_7 + 29, 1209, 19.8 );
setSeVolume( spep_7 + 30, 1209, 29.7 );
setSeVolume( spep_7 + 31, 1209, 39.6 );
setSeVolume( spep_7 + 32, 1209, 49.5 );
setSeVolume( spep_7 + 33, 1209, 59.4 );
setSeVolume( spep_7 + 34, 1209, 69.3 );
setSeVolume( spep_7 + 35, 1209, 79.2 );
setSeVolume( spep_7 + 59, 1209, 79.4 );
setSeVolume( spep_7 + 60, 1209, 76.2 );
setSeVolume( spep_7 + 61, 1209, 73 );
setSeVolume( spep_7 + 62, 1209, 69.8 );
setSeVolume( spep_7 + 63, 1209, 66.6 );
setSeVolume( spep_7 + 64, 1209, 63.4 );
setSeVolume( spep_7 + 65, 1209, 60.2 );
setSeVolume( spep_7 + 66, 1209, 57 );
setSeVolume( spep_7 + 67, 1209, 53.8 );
setSeVolume( spep_7 + 68, 1209, 50.6 );
setSeVolume( spep_7 + 69, 1209, 47.4 );
setSeVolume( spep_7 + 70, 1209, 44.2 );
setSeVolume( spep_7 + 71, 1209, 41 );
setSeVolume( spep_7 + 72, 1209, 37.8 );
setSeVolume( spep_7 + 73, 1209, 34.6 );
setSeVolume( spep_7 + 74, 1209, 31.4 );
setSeVolume( spep_7 + 75, 1209, 28.2 );
setSeVolume( spep_7 + 76, 1209, 25 );
setSeVolume( spep_7 + 77, 1209, 21.8 );
setSeVolume( spep_7 + 78, 1209, 18.6 );
setSeVolume( spep_7 + 79, 1209, 15.4 );
setSeVolume( spep_7 + 80, 1209, 12.2 );
setSeVolume( spep_7 + 81, 1209, 9 );
setSeVolume( spep_7 + 82, 1209, 5.8 );
setSeVolume( spep_7 + 83, 1209, 2.6 );
setSeVolume( spep_7 + 84, 1209, 0 );
stopSe( spep_7 + 85, SE_1209, 0 );
SE_1161 = playSe( spep_7 + 19, 1161 );
setSeVolume( spep_7 + 19, 1161, 44.7 );
setSeVolume( spep_7 + 48, 1161, 44.7 );
setSeVolume( spep_7 + 49, 1161, 43 );
setSeVolume( spep_7 + 50, 1161, 41.3 );
setSeVolume( spep_7 + 51, 1161, 39.6 );
setSeVolume( spep_7 + 52, 1161, 37.9 );
setSeVolume( spep_7 + 53, 1161, 36.2 );
setSeVolume( spep_7 + 54, 1161, 34.5 );
setSeVolume( spep_7 + 55, 1161, 32.8 );
setSeVolume( spep_7 + 56, 1161, 31.1 );
setSeVolume( spep_7 + 57, 1161, 29.4 );
setSeVolume( spep_7 + 58, 1161, 27.7 );
setSeVolume( spep_7 + 59, 1161, 26 );
setSeVolume( spep_7 + 60, 1161, 24.3 );
setSeVolume( spep_7 + 61, 1161, 22.6 );
setSeVolume( spep_7 + 62, 1161, 20.9 );
setSeVolume( spep_7 + 63, 1161, 19.2 );
setSeVolume( spep_7 + 64, 1161, 17.5 );
setSeVolume( spep_7 + 65, 1161, 15.8 );
setSeVolume( spep_7 + 66, 1161, 14.1 );
setSeVolume( spep_7 + 67, 1161, 12.4 );
setSeVolume( spep_7 + 68, 1161, 10.7 );
setSeVolume( spep_7 + 69, 1161, 9 );
setSeVolume( spep_7 + 70, 1161, 7.3 );
setSeVolume( spep_7 + 71, 1161, 5.6 );
setSeVolume( spep_7 + 72, 1161, 3.9 );
setSeVolume( spep_7 + 73, 1161, 2.2 );
setSeVolume( spep_7 + 74, 1161, 0 );
stopSe( spep_7 + 75, SE_1161, 0 );
playSe( spep_7 + 110, 1003 );
SE_1168 = playSe( spep_7 + 117, 1168 );
setSeVolume( spep_7 + 117, 1168, 0 );
playSe( spep_7 + 131, 1027 );
SE_1117 = playSe( spep_7 + 134, 1117 );
setSeVolume( spep_7 + 134, 1117, 100 );


-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8=spep_7+156;
------------------------------------------------------
-- 槍ヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit2 = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit2, 0, 0, 0 );
setEffMoveKey( spep_8 + 80, hit2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 80, hit2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit2, 0 );
setEffRotateKey( spep_8 + 80, hit2, 0 );
setEffAlphaKey( spep_8 + 0, hit2, 255 );
setEffAlphaKey( spep_8 + 80, hit2, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_8-3 + 22,  10018, 40, 0x100, -1, 0, -22, -59.4 );
setEffShake( spep_8-3 + 22, ctdogon, 40, 10 );
setEffMoveKey( spep_8-3 + 22, ctdogon, -22, -59.4 , 0 );
setEffMoveKey( spep_8-3 + 24, ctdogon, -13, -46 , 0 );
setEffMoveKey( spep_8-3 + 26, ctdogon, -4.9, -57 , 0 );
setEffMoveKey( spep_8-3 + 28, ctdogon, -14, -47.2 , 0 );
setEffMoveKey( spep_8-3 + 30, ctdogon, -2.9, -47.4 , 0 );
setEffMoveKey( spep_8-3 + 32, ctdogon, -13.5, -56.4 , 0 );
setEffMoveKey( spep_8-3 + 34, ctdogon, -4.5, -43.6 , 0 );
setEffMoveKey( spep_8-3 + 36, ctdogon, -8.9, -54.8 , 0 );
setEffMoveKey( spep_8-3 + 38, ctdogon, -10.4, -46.3 , 0 );
setEffMoveKey( spep_8-3 + 40, ctdogon, -12, -54.3 , 0 );
setEffMoveKey( spep_8-3 + 42, ctdogon, -5.4, -49.7 , 0 );
setEffMoveKey( spep_8-3 + 44, ctdogon, -12.9, -54.5 , 0 );
setEffMoveKey( spep_8-3 + 46, ctdogon, -7.9, -45.8 , 0 );
setEffMoveKey( spep_8-3 + 48, ctdogon, -11.7, -52.3 , 0 );
setEffMoveKey( spep_8-3 + 50, ctdogon, -9.8, -46.6 , 0 );
setEffMoveKey( spep_8-3 + 52, ctdogon, -10.8, -54.1 , 0 );
setEffMoveKey( spep_8-3 + 54, ctdogon, -6.6, -56.7 , 0 );
setEffMoveKey( spep_8-3 + 56, ctdogon, -13.3, -52.6 , 0 );
setEffMoveKey( spep_8-3 + 58, ctdogon, -18.2, -85.4 , 0 );
setEffMoveKey( spep_8-3 + 60, ctdogon, -38.9, -83.2 , 0 );
setEffMoveKey( spep_8-3 + 62, ctdogon, -47.1, -94.7 , 0 );

setEffScaleKey( spep_8-3 + 22, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_8-3 + 24, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_8-3 + 26, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_8-3 + 28, ctdogon, 2.92, 2.92 );
setEffScaleKey( spep_8-3 + 30, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_8-3 + 32, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_8-3 + 34, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_8-3 + 36, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_8-3 + 38, ctdogon, 3, 3 );
setEffScaleKey( spep_8-3 + 40, ctdogon, 3.01, 3.01 );
setEffScaleKey( spep_8-3 + 42, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_8-3 + 44, ctdogon, 3.05, 3.05 );
setEffScaleKey( spep_8-3 + 46, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_8-3 + 48, ctdogon, 3.08, 3.08 );
setEffScaleKey( spep_8-3 + 50, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_8-3 + 52, ctdogon, 3.12, 3.12 );
setEffScaleKey( spep_8-3 + 54, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_8-3 + 56, ctdogon, 3.57, 3.57 );
setEffScaleKey( spep_8-3 + 58, ctdogon, 4, 4 );
setEffScaleKey( spep_8-3 + 60, ctdogon, 4.42, 4.42 );
setEffScaleKey( spep_8-3 + 62, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_8-3 + 22, ctdogon, 24.1 );
setEffRotateKey( spep_8-3 + 24, ctdogon, 24.2 );
setEffRotateKey( spep_8-3 + 36, ctdogon, 24.2 );
setEffRotateKey( spep_8-3 + 38, ctdogon, 24.1 );
setEffRotateKey( spep_8-3 + 62, ctdogon, 24.1 );

setEffAlphaKey( spep_8-3 + 22, ctdogon, 255 );
setEffAlphaKey( spep_8-3 + 54, ctdogon, 255 );
setEffAlphaKey( spep_8-3 + 56, ctdogon, 191 );
setEffAlphaKey( spep_8-3 + 58, ctdogon, 128 );
setEffAlphaKey( spep_8-3 + 60, ctdogon, 64 );
setEffAlphaKey( spep_8-3 + 62, ctdogon, 0 );

--集中線
shuchusen7 = entryEffectLife( spep_8-3 + 16,  906, 62, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8-3 + 16, shuchusen7, 62, 20 );
setEffMoveKey( spep_8-3 + 16, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_8-3 + 78, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_8-3 + 16, shuchusen7, 1.1, 1.1 );
setEffScaleKey( spep_8-3 + 78, shuchusen7, 1.1, 1.1 );

setEffRotateKey( spep_8-3 + 16, shuchusen7, 0 );
setEffRotateKey( spep_8-3 + 78, shuchusen7, 0 );

setEffAlphaKey( spep_8-3 + 16, shuchusen7, 255 );
setEffAlphaKey( spep_8-3 + 78, shuchusen7, 255 );

--白フェード
entryFade( spep_8+16 , 0, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8+72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
setSeVolume( spep_8 + 33, 1168, 0 );
setSeVolume( spep_8 + 34, 1168, 50 );
setSeVolume( spep_8 + 35, 1168, 100 );
stopSe( spep_8 + 42, SE_1117, 0 );
playSe( spep_8 + 27, 1153 );
playSe( spep_8 + 30, 1110 );
setSeVolume( spep_8 + 30, 1110, 79 );
playSe( spep_8 + 33, 1009 );
setSeVolume( spep_8 + 33, 1009, 63 );


-- ** 次の準備 ** --
spep_9=spep_8+80;
------------------------------------------------------
-- ラストシーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 140, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 140, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 140, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 140, finish, 255 );

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 20 );
endPhase( spep_9 + 130 );

--SE
playSe( spep_9 + 27, 1024 );
setSeVolume( spep_9 + 27, 1024, 71 );
end
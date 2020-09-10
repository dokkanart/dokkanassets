--1018250:超サイヤ人ゴッド孫悟空_ドラゴンスマッシュ
--sp_effect_a1_00192

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
SP_01=	154296	;--	導入〜龍バック転
SP_02=	154297	;--	龍降下〜気溜め
SP_03=	154298	;--	横ダッシュ〜正面パンチ振りかぶり
SP_04=	154299	;--	パンチ命中〜フィニッシュ
SP_05=	154300	;--	パンチ命中〜フィニッシュ

--エフェクト(てき)
SP_01x=	154301	;--	導入〜龍バック転	(敵)
SP_02x=	154302	;--	龍降下〜気溜め	(敵)
SP_03x=	154303	;--	横ダッシュ〜正面パンチ振りかぶり	(敵)
SP_04x=	154304	;--	パンチ命中〜フィニッシュ	(敵)
SP_05x=	154305	;--	パンチ命中〜フィニッシュ	(敵)

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
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入〜龍バック転
------------------------------------------------------
--はじめの準備
spep_0 = 0;
-- ** エフェクト等 ** --
back = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, back, 0, 0 , 0 );
setEffMoveKey( spep_0 + 286, back, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, back, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, back, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, back, 0 );
setEffRotateKey( spep_0 + 286, back, 0 );
setEffAlphaKey( spep_0 + 0, back, 255 );
setEffAlphaKey( spep_0 + 286, back, 255 );

--SE
SE0 = playSe( spep_0 +0, 55 );  --気溜め
stopSe( spep_0 +73, SE0, 0 );

SE01 = playSe( spep_0 +56, 1176);  --ドラゴン出るところ
stopSe( spep_0 +286, SE01, 0 );

SE1 = playSe( spep_0 +56, 1146);  --気溜め
setSeVolume( spep_0 +56, 1146, 70 );
stopSe( spep_0 +78, SE1, 50 );

SE2 = playSe( spep_0 +72, 55);  --気溜め
setSeVolume( spep_0 +72, 55, 40 );
stopSe( spep_0 +290, SE2, 0 );

SE3 = playSe( spep_0 +170, 1116);  --気溜め
stopSe( spep_0 +198, SE3, 20 );

playSe( spep_0 +262, 1167);  --気溜め
setSeVolume( spep_0 +262, 1167, 60 );

--次の準備
spep_1 = spep_0+286;

------------------------------------------------------
-- 龍降下〜気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 160, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 160, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 160, tame, 255 );
setEffAlphaKey( spep_1 + 161, tame, 0 );
setEffAlphaKey( spep_1 + 162, tame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+60  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+60  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +72, 190006, 72, 0x100, -1, 0, -90, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_1 +72,  ctgogo,  -90,  510);
setEffMoveKey(  spep_1 +144,  ctgogo,  -90,  510);

setEffAlphaKey( spep_1 +72, ctgogo, 0 );
setEffAlphaKey( spep_1 + 73, ctgogo, 255 );
setEffAlphaKey( spep_1 + 74, ctgogo, 255 );
setEffAlphaKey( spep_1 + 136, ctgogo, 255 );
setEffAlphaKey( spep_1 + 138, ctgogo, 255 );
setEffAlphaKey( spep_1 + 140, ctgogo, 191 );
setEffAlphaKey( spep_1 + 142, ctgogo, 112 );
setEffAlphaKey( spep_1 + 144, ctgogo, 64 );

setEffRotateKey(  spep_1 +72,  ctgogo,  0);
setEffRotateKey(  spep_1 +144,  ctgogo,  0);

setEffScaleKey(  spep_1 +72,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +134,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +144,  ctgogo, 1.07, 1.07 );

--SE
SE4 = playSe( spep_1 +0, 55 );
stopSe( spep_1 +71, SE4, 0 );

SE5 = playSe( spep_1 +10, 55 );
stopSe( spep_1 +55, SE5, 0 );

SE6 = playSe( spep_1 +38, 1146 );
setSeVolume( spep_1 +38, 1146, 80 );
stopSe( spep_1 +60, SE6, 50 );

playSe( spep_1 +38, 1009 );
setSeVolume( spep_1 +38, 1146, 65 );

--[[
playSe( spep_1 +55, 51 );
setSeVolume( spep_1 +55, 51, 60 );
playSe( spep_1 +65, 51 );
setSeVolume( spep_1 +65, 51, 60 );
playSe( spep_1 +75, 51 );
setSeVolume( spep_1 +75, 51, 60 );
playSe( spep_1 +85, 51 );
setSeVolume( spep_1 +85, 51, 60 );
playSe( spep_1 +95, 51 );
setSeVolume( spep_1 +95, 51, 60 );
playSe( spep_1 +105, 51 );
setSeVolume( spep_1 +105, 51, 60 );
playSe( spep_1 +115, 51 );
setSeVolume( spep_1 +115, 51, 60 );
playSe( spep_1 +125, 51 );
setSeVolume( spep_1 +125, 51, 60 );
playSe( spep_1 +135, 51 );
setSeVolume( spep_1 +135, 51, 60 );
playSe( spep_1 +145, 51 );
setSeVolume( spep_1 +145, 51, 60 );
playSe( spep_1 +155, 51 );
setSeVolume( spep_1 +155, 51, 60 );
]]
--v4.11調整
SE001 = playSe( spep_1 +55, 51 );
setSeVolume( spep_1 +55, 51, 60 );
stopSe(spep_1 + 70,SE001,5);
SE002 = playSe( spep_1 +65, 51 );
setSeVolume( spep_1 +65, 51, 60 );
stopSe(spep_1 + 80,SE002,5);
SE003 = playSe( spep_1 +75, 51 );
setSeVolume( spep_1 +75, 51, 60 );
stopSe(spep_1 + 90,SE003,5);
SE004 = playSe( spep_1 +85, 51 );
setSeVolume( spep_1 +85, 51, 60 );
stopSe(spep_1 + 100,SE004,5);
SE005 = playSe( spep_1 +95, 51 );
setSeVolume( spep_1 +95, 51, 60 );
stopSe(spep_1 + 110,SE005,5);
SE006 = playSe( spep_1 +105, 51 );
setSeVolume( spep_1 +105, 51, 60 );
stopSe(spep_1 + 120,SE006,5);
SE007 = playSe( spep_1 +115, 51 );
setSeVolume( spep_1 +115, 51, 60 );
stopSe(spep_1 + 130,SE007,5);
SE008 = playSe( spep_1 +125, 51 );
setSeVolume( spep_1 +125, 51, 60 );
stopSe(spep_1 + 140,SE008,5);
SE009 = playSe( spep_1 +135, 51 );
setSeVolume( spep_1 +135, 51, 60 );
stopSe(spep_1 + 150,SE009,5);
SE010 = playSe( spep_1 +145, 51 );
setSeVolume( spep_1 +145, 51, 60 );
stopSe(spep_1 + 160,SE010,5);
SE011 = playSe( spep_1 +155, 51 );
setSeVolume( spep_1 +155, 51, 60 );


playSe( spep_1 +72, 1018 );  --ゴゴゴ

--白フェード
entryFade( spep_1 + 152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+160;

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
entryFade( spep_2 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 横ダッシュ〜正面パンチ振りかぶり
------------------------------------------------------
-- ** エフェクト等 ** --
punch = entryEffect( spep_3 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 244, punch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_3 + 244, punch, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch, 0 );
setEffRotateKey( spep_3 + 244, punch, 0 );
setEffAlphaKey( spep_3 + 0, punch, 255 );
setEffAlphaKey( spep_3 + 242, punch, 255 );
setEffAlphaKey( spep_3 + 243, punch, 255 );
setEffAlphaKey( spep_3 + 244, punch, 0 );

-- ** 音 ** --
SE9 = playSe( spep_3 + 0, 63 );
stopSe( spep_3 +53, SE9, 0 );

SE10 = playSe( spep_3 + 0, 1121 );
stopSe( spep_3 +245, SE10, 0 );

SE11 = playSe( spep_3 + 49, 1121 );
setSeVolume( spep_3 +49, 1121, 60 );
stopSe( spep_3 +90, SE11, 73 );

playSe( spep_3 + 49, 1109 );
setSeVolume( spep_3 +49, 1109, 60 );

SE12 = playSe( spep_3 + 49, 1050 );
setSeVolume( spep_3 +49, 1050, 80 );
stopSe( spep_3 +75, SE12, 0 );

playSe( spep_3 + 53, 1018 );
setSeVolume( spep_3 +53, 1018, 80 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--   stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
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

-- ** 音 ** --
SE13 = playSe( spep_3 + 87, 1121 );
stopSe( spep_3 +245, SE13, 0 );

SE14 = playSe( spep_3 + 141, 1019 );
stopSe( spep_3 +245, SE14, 0 );

playSe( spep_3 + 200, 1004 );
setSeVolume( spep_3 +200, 1004, 65 );

SE15 = playSe( spep_3 + 200, 1116 );
stopSe( spep_3 +228, SE15, 19 );

playSe( spep_3 + 242, 1123 );
setSeVolume( spep_3 +242, 1123, 80 );

--次の準備
spep_4 = spep_3+244;

------------------------------------------------------
-- パンチ命中〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 300, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 300, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 300, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 300, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 300, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 300, finish_b, 255 );


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 127, 1, 0 );

setShakeChara(spep_4,1,127,10);

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4  + 0, 1, 97.7, 7.8 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 101.6, 7.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 104.5, 7.8 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 106.7, 7.8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 108, 7.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 108.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 108.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 112.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 116.1, 7.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 119.6, 7.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 122.8, 7.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 125.8, 7.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 128.5, 7.8 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 131, 7.8 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 133.2, 7.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 135.1, 7.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 136.8, 7.8 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 138.2, 7.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 139.3, 7.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 140.2, 7.8 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 140.9, 7.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 141.3, 7.8 , 0 );
setMoveKey( spep_4 + 72, 1, 141.4, 7.8 , 0 );
setMoveKey( spep_4 + 122, 1, 131.4, 7.8 , 0 );
setMoveKey( spep_4 + 123, 1, 10.4, 7.8 , 0 );
setMoveKey( spep_4 + 127, 1, 10.4, 7.8 , 0 );


setScaleKey( spep_4 + 0, 1, 5.0, 5.0 );
setScaleKey( spep_4 + 20, 1, 5.0, 5.0 );
setScaleKey( spep_4 + 44, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 123, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 127, 1, 0.8, 0.8 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 127, 1, 0 );

--白フェード
entryFade( spep_4 + 126, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE16 = playSe( spep_4 + 0, 1145 );
setSeVolume( spep_4 +0, 1145, 60 );
stopSe( spep_4 +46, SE16, 43 );

playSe( spep_4 + 0, 1027 );
setSeVolume( spep_4 +0, 1027, 70 );

playSe( spep_4 + 0, 1055 );

SE17 = playSe( spep_4 + 21, 1157 );
setSeVolume( spep_4 +21, 1157, 80 );
stopSe( spep_4 +151, SE17, 0 );

SE18 = playSe( spep_4 + 21, 1124 );
setSeVolume( spep_4 +21, 1124, 20 );
stopSe( spep_4 +151, SE18, 0 );

SE19 = playSe( spep_4 + 151, 1159 );
stopSe( spep_4 +183, SE19, 56 );

SE20 = playSe( spep_4 + 151, 1173 );
stopSe( spep_4 +280, SE20, 0 );

SE21 = playSe( spep_4 + 151, 1174 );
stopSe( spep_4 +280, SE21, 0 );

SE22 = playSe( spep_4 + 151, 1175 );
setSeVolume( spep_4 +151, 1175, 30 );
stopSe( spep_4 +280, SE22, 0 );

-- ** ダメージ表示 ** --
dealDamage(spep_4 +136 );
endPhase( spep_4 + 290 );
else


------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入〜龍バック転
------------------------------------------------------
--はじめの準備
spep_0 = 0;
-- ** エフェクト等 ** --
back = entryEffect( spep_0 + 0, SP_01x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, back, 0, 0 , 0 );
setEffMoveKey( spep_0 + 286, back, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, back, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, back, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, back, 0 );
setEffRotateKey( spep_0 + 286, back, 0 );
setEffAlphaKey( spep_0 + 0, back, 255 );
setEffAlphaKey( spep_0 + 286, back, 255 );

--SE
SE0 = playSe( spep_0 +0, 55 );  --気溜め
stopSe( spep_0 +73, SE0, 0 );

SE01 = playSe( spep_0 +56, 1176);  --ドラゴン出るところ
stopSe( spep_0 +286, SE01, 0 );

SE1 = playSe( spep_0 +56, 1146);  --気溜め
setSeVolume( spep_0 +56, 1146, 70 );
stopSe( spep_0 +78, SE1, 50 );

SE2 = playSe( spep_0 +72, 55);  --気溜め
setSeVolume( spep_0 +72, 55, 40 );
stopSe( spep_0 +290, SE2, 0 );

SE3 = playSe( spep_0 +170, 1116);  --気溜め
stopSe( spep_0 +198, SE3, 20 );

playSe( spep_0 +262, 1167);  --気溜め
setSeVolume( spep_0 +262, 1167, 60 );

--次の準備
spep_1 = spep_0+286;

------------------------------------------------------
-- 龍降下〜気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 160, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 160, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 160, tame, 255 );
setEffAlphaKey( spep_1 + 161, tame, 0 );
setEffAlphaKey( spep_1 + 162, tame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+60  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+60  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +72, 190006, 72, 0x100, -1, 0, 70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_1 +72,  ctgogo,  70,  510);
setEffMoveKey(  spep_1 +144,  ctgogo,  70,  510);

setEffAlphaKey( spep_1 +72, ctgogo, 0 );
setEffAlphaKey( spep_1 + 73, ctgogo, 255 );
setEffAlphaKey( spep_1 + 74, ctgogo, 255 );
setEffAlphaKey( spep_1 + 136, ctgogo, 255 );
setEffAlphaKey( spep_1 + 138, ctgogo, 255 );
setEffAlphaKey( spep_1 + 140, ctgogo, 191 );
setEffAlphaKey( spep_1 + 142, ctgogo, 112 );
setEffAlphaKey( spep_1 + 144, ctgogo, 64 );

setEffRotateKey(  spep_1 +72,  ctgogo,  0);
setEffRotateKey(  spep_1 +144,  ctgogo,  0);

setEffScaleKey(  spep_1 +72,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +134,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +144,  ctgogo, -1.07, 1.07 );

--SE
SE4 = playSe( spep_1 +0, 55 );
stopSe( spep_1 +71, SE4, 0 );

SE5 = playSe( spep_1 +10, 55 );
stopSe( spep_1 +55, SE5, 0 );

SE6 = playSe( spep_1 +38, 1146 );
setSeVolume( spep_1 +38, 1146, 80 );
stopSe( spep_1 +60, SE6, 50 );

playSe( spep_1 +38, 1009 );
setSeVolume( spep_1 +38, 1146, 65 );

--[[
playSe( spep_1 +55, 51 );
setSeVolume( spep_1 +55, 51, 60 );
playSe( spep_1 +65, 51 );
setSeVolume( spep_1 +65, 51, 60 );
playSe( spep_1 +75, 51 );
setSeVolume( spep_1 +75, 51, 60 );
playSe( spep_1 +85, 51 );
setSeVolume( spep_1 +85, 51, 60 );
playSe( spep_1 +95, 51 );
setSeVolume( spep_1 +95, 51, 60 );
playSe( spep_1 +105, 51 );
setSeVolume( spep_1 +105, 51, 60 );
playSe( spep_1 +115, 51 );
setSeVolume( spep_1 +115, 51, 60 );
playSe( spep_1 +125, 51 );
setSeVolume( spep_1 +125, 51, 60 );
playSe( spep_1 +135, 51 );
setSeVolume( spep_1 +135, 51, 60 );
playSe( spep_1 +145, 51 );
setSeVolume( spep_1 +145, 51, 60 );
playSe( spep_1 +155, 51 );
setSeVolume( spep_1 +155, 51, 60 );
]]
--v4.11調整
SE001 = playSe( spep_1 +55, 51 );
setSeVolume( spep_1 +55, 51, 60 );
stopSe(spep_1 + 70,SE001,5);
SE002 = playSe( spep_1 +65, 51 );
setSeVolume( spep_1 +65, 51, 60 );
stopSe(spep_1 + 80,SE002,5);
SE003 = playSe( spep_1 +75, 51 );
setSeVolume( spep_1 +75, 51, 60 );
stopSe(spep_1 + 90,SE003,5);
SE004 = playSe( spep_1 +85, 51 );
setSeVolume( spep_1 +85, 51, 60 );
stopSe(spep_1 + 100,SE004,5);
SE005 = playSe( spep_1 +95, 51 );
setSeVolume( spep_1 +95, 51, 60 );
stopSe(spep_1 + 110,SE005,5);
SE006 = playSe( spep_1 +105, 51 );
setSeVolume( spep_1 +105, 51, 60 );
stopSe(spep_1 + 120,SE006,5);
SE007 = playSe( spep_1 +115, 51 );
setSeVolume( spep_1 +115, 51, 60 );
stopSe(spep_1 + 130,SE007,5);
SE008 = playSe( spep_1 +125, 51 );
setSeVolume( spep_1 +125, 51, 60 );
stopSe(spep_1 + 140,SE008,5);
SE009 = playSe( spep_1 +135, 51 );
setSeVolume( spep_1 +135, 51, 60 );
stopSe(spep_1 + 150,SE009,5);
SE010 = playSe( spep_1 +145, 51 );
setSeVolume( spep_1 +145, 51, 60 );
stopSe(spep_1 + 160,SE010,5);
SE011 = playSe( spep_1 +155, 51 );
setSeVolume( spep_1 +155, 51, 60 );

playSe( spep_1 +72, 1018 );  --ゴゴゴ

--白フェード
entryFade( spep_1 + 152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+160;

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
entryFade( spep_2 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 横ダッシュ〜正面パンチ振りかぶり
------------------------------------------------------
-- ** エフェクト等 ** --
punch = entryEffect( spep_3 + 0, SP_03x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 244, punch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_3 + 244, punch, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch, 0 );
setEffRotateKey( spep_3 + 244, punch, 0 );
setEffAlphaKey( spep_3 + 0, punch, 255 );
setEffAlphaKey( spep_3 + 242, punch, 255 );
setEffAlphaKey( spep_3 + 243, punch, 255 );
setEffAlphaKey( spep_3 + 244, punch, 0 );

-- ** 音 ** --
SE9 = playSe( spep_3 + 0, 63 );
stopSe( spep_3 +53, SE9, 0 );

SE10 = playSe( spep_3 + 0, 1121 );
stopSe( spep_3 +245, SE10, 0 );

SE11 = playSe( spep_3 + 49, 1121 );
setSeVolume( spep_3 +49, 1121, 60 );
stopSe( spep_3 +90, SE11, 73 );

playSe( spep_3 + 49, 1109 );
setSeVolume( spep_3 +49, 1109, 60 );

SE12 = playSe( spep_3 + 49, 1050 );
setSeVolume( spep_3 +49, 1050, 80 );
stopSe( spep_3 +75, SE12, 0 );

playSe( spep_3 + 53, 1018 );
setSeVolume( spep_3 +53, 1018, 80 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--   stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
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
-- ** 音 ** --
SE13 = playSe( spep_3 + 87, 1121 );
stopSe( spep_3 +245, SE13, 0 );

SE14 = playSe( spep_3 + 141, 1019 );
stopSe( spep_3 +245, SE14, 0 );

playSe( spep_3 + 200, 1004 );
setSeVolume( spep_3 +200, 1004, 65 );

SE15 = playSe( spep_3 + 200, 1116 );
stopSe( spep_3 +228, SE15, 19 );

playSe( spep_3 + 242, 1123 );
setSeVolume( spep_3 +242, 1123, 80 );

--次の準備
spep_4 = spep_3+244;

------------------------------------------------------
-- パンチ命中〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 300, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 300, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 300, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 300, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 300, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 300, finish_b, 255 );


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 127, 1, 0 );

setShakeChara(spep_4,1,127,10);

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4  + 0, 1, 97.7, 7.8 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 101.6, 7.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 104.5, 7.8 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 106.7, 7.8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 108, 7.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 108.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 108.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 112.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 116.1, 7.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 119.6, 7.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 122.8, 7.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 125.8, 7.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 128.5, 7.8 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 131, 7.8 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 133.2, 7.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 135.1, 7.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 136.8, 7.8 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 138.2, 7.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 139.3, 7.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 140.2, 7.8 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 140.9, 7.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 141.3, 7.8 , 0 );
setMoveKey( spep_4 + 72, 1, 141.4, 7.8 , 0 );
setMoveKey( spep_4 + 122, 1, 131.4, 7.8 , 0 );
setMoveKey( spep_4 + 123, 1, 10.4, 7.8 , 0 );
setMoveKey( spep_4 + 127, 1, 10.4, 7.8 , 0 );


setScaleKey( spep_4 + 0, 1, 5.0, 5.0 );
setScaleKey( spep_4 + 20, 1, 5.0, 5.0 );
setScaleKey( spep_4 + 44, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 123, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 127, 1, 0.8, 0.8 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 127, 1, 0 );

--白フェード
entryFade( spep_4 + 126, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE16 = playSe( spep_4 + 0, 1145 );
setSeVolume( spep_4 +0, 1145, 60 );
stopSe( spep_4 +46, SE16, 43 );

playSe( spep_4 + 0, 1027 );
setSeVolume( spep_4 +0, 1027, 70 );

playSe( spep_4 + 0, 1055 );

SE17 = playSe( spep_4 + 21, 1157 );
setSeVolume( spep_4 +21, 1157, 80 );
stopSe( spep_4 +151, SE17, 0 );

SE18 = playSe( spep_4 + 21, 1124 );
setSeVolume( spep_4 +21, 1124, 20 );
stopSe( spep_4 +151, SE18, 0 );

SE19 = playSe( spep_4 + 151, 1159 );
stopSe( spep_4 +183, SE19, 56 );

SE20 = playSe( spep_4 + 151, 1173 );
stopSe( spep_4 +280, SE20, 0 );

SE21 = playSe( spep_4 + 151, 1174 );
stopSe( spep_4 +280, SE21, 0 );

SE22 = playSe( spep_4 + 151, 1175 );
setSeVolume( spep_4 +151, 1175, 30 );
stopSe( spep_4 +280, SE22, 0 );

-- ** ダメージ表示 ** --
dealDamage(spep_4 +136 );
endPhase( spep_4 + 290 );

end

--1018460:超サイヤ人カンバー(大猿カンバー)_サヴェージタイラント
--sp_effect_a2_00122

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

--エフェクト
SP_01=	154371	;--	構え
SP_02=	154372	;--	煙から出る〜敵掴む〜溜め・手前
SP_03=	154373	;--	煙から出る〜敵掴む〜溜め・奥
SP_04=	154374	;--	放つ
SP_05=	154375	;--	迫る〜爆発・手前
SP_06=	154376	;--	迫る〜爆発・奥

--エフェクト(てき)
SP_01x=	154377	;--	構え	(敵)
SP_02x=	154378	;--	煙から出る〜敵掴む〜溜め・手前	(敵)
SP_03x=	154373	;--	煙から出る〜敵掴む〜溜め・奥	
SP_04x=	154379	;--	放つ	(敵)
SP_05x=	154375	;--	迫る〜爆発・手前	
SP_06x=	154376	;--	迫る〜爆発・奥	

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
-- 構え
------------------------------------------------------
--はじめの準備
spep_0 = 0

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 156, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 156, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 156, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 156, tame, 255 );
setEffAlphaKey( spep_0 + 157, tame, 0 );
setEffAlphaKey( spep_0 + 158, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 70,  906, 150, 0x100, -1, 0, 0, 1.4 );

setEffMoveKey( spep_0 -3 + 70, shuchusen1, 0, 1.4 , 0 );
setEffMoveKey( spep_0 -3 + 80, shuchusen1, 0, 1.4 , 0 );
setEffMoveKey( spep_0 -3 + 82, shuchusen1, 0, 1.1 , 0 );
setEffMoveKey( spep_0 -3 + 220, shuchusen1, 0, 1.1 , 0 );

setEffScaleKey( spep_0 -3 + 70, shuchusen1, 1.07, 1.37 );
setEffScaleKey( spep_0 -3 + 80, shuchusen1, 1.07, 1.37 );
setEffScaleKey( spep_0 -3 + 82, shuchusen1, 1.07, 1.73 );
setEffScaleKey( spep_0 -3 + 220, shuchusen1, 1.07, 1.73 );

setEffRotateKey( spep_0 -3 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 +220, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 70, shuchusen1, 160 );
setEffAlphaKey( spep_0 -3 + 82, shuchusen1, 160 );
setEffAlphaKey( spep_0 -3 + 84, shuchusen1, 158 );
setEffAlphaKey( spep_0 -3 + 86, shuchusen1, 155 );
setEffAlphaKey( spep_0 -3 + 88, shuchusen1, 152 );
setEffAlphaKey( spep_0 -3 + 90, shuchusen1, 149 );
setEffAlphaKey( spep_0 -3 + 92, shuchusen1, 146 );
setEffAlphaKey( spep_0 -3 + 94, shuchusen1, 143 );
setEffAlphaKey( spep_0 -3 + 96, shuchusen1, 141 );
setEffAlphaKey( spep_0 -3 + 200, shuchusen1, 141 );
setEffAlphaKey( spep_0 -3 + 202, shuchusen1, 126 );
setEffAlphaKey( spep_0 -3 + 204, shuchusen1, 112 );
setEffAlphaKey( spep_0 -3 + 206, shuchusen1, 98 );
setEffAlphaKey( spep_0 -3 + 208, shuchusen1, 84 );
setEffAlphaKey( spep_0 -3 + 210, shuchusen1, 70 );
setEffAlphaKey( spep_0 -3 + 212, shuchusen1, 56 );
setEffAlphaKey( spep_0 -3 + 214, shuchusen1, 42 );
setEffAlphaKey( spep_0 -3 + 216, shuchusen1, 28 );
setEffAlphaKey( spep_0 -3 + 218, shuchusen1, 14 );
setEffAlphaKey( spep_0 -3 + 220, shuchusen1, 0 );

--黒背景
entryFadeBg( spep_0, 0,156,0, 0, 0, 0, 200 );  --white fade

--SE
playSe( spep_0 + 0, 8 );
se_1116 = playSe( spep_0 + 64, 1116 );
setSeVolume( spep_0 + 64, 1116,63 );
playSe( spep_0 + 96, 1035 );
SE0=playSe( spep_0 + 104, 1176 );
setSeVolume( spep_0 + 104, 1176,32 );

stopSe( spep_0 + 88, se_1116, 14 );

--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次のの準備
spep_1 =spep_0+ 156

------------------------------------------------------
-- 煙から出る〜敵掴む〜溜め
------------------------------------------------------

-- ** エフェクト等 ** --
grat_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, grat_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 260, grat_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, grat_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 260, grat_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, grat_f, 0 );
setEffRotateKey( spep_1 + 260, grat_f, 0 );
setEffAlphaKey( spep_1 + 0, grat_f, 0 );
setEffAlphaKey( spep_1  + 64, grat_f, 0 );
setEffAlphaKey( spep_1  + 65, grat_f, 255 );
setEffAlphaKey( spep_1  + 66, grat_f, 255 );
setEffAlphaKey( spep_1 + 260, grat_f, 255 );

-- ** エフェクト等 ** --
grat_n = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, grat_n, 0, 0 , 0 );
setEffMoveKey( spep_1 + 260, grat_n, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, grat_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 260, grat_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, grat_n, 0 );
setEffRotateKey( spep_1 + 260, grat_n, 0 );
setEffAlphaKey( spep_1 + 0, grat_n, 255 );
setEffAlphaKey( spep_1  + 64, grat_n, 255 );
setEffAlphaKey( spep_1  + 65, grat_n, 0 );
setEffAlphaKey( spep_1  + 66, grat_n, 0 );
setEffAlphaKey( spep_1 + 260, grat_n, 0 );

-- ** エフェクト等 ** --
grat_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, grat_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 260, grat_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, grat_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 260, grat_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, grat_b, 0 );
setEffRotateKey( spep_1 + 260, grat_b, 0 );
setEffAlphaKey( spep_1 + 0, grat_b, 255 );
setEffAlphaKey( spep_1 + 260, grat_b, 255 );

--黒背景
entryFadeBg( spep_1, 0,260,0, 0, 0, 0, 200 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--集中線
shuchusen2 = entryEffectLife( spep_1 -1 +90,  906, 18, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -1  + 90, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -1  + 108, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -1  + 90, shuchusen2, 1.13, 1.28 );
setEffScaleKey( spep_1 -1  + 108, shuchusen2, 1.13, 1.28 );

setEffRotateKey( spep_1 -1  + 90, shuchusen2, 0 );
setEffRotateKey( spep_1 -1  + 108, shuchusen2, 0 );

setEffAlphaKey( spep_1 -1  + 90, shuchusen2, 141 );
setEffAlphaKey( spep_1 -1 + 100, shuchusen2, 141 );
setEffAlphaKey( spep_1 -1  + 102, shuchusen2, 94 );
setEffAlphaKey( spep_1 -1 + 106, shuchusen2, 47 );
setEffAlphaKey( spep_1 -1 + 108, shuchusen2, 0 );

--文字エントリー
ctga = entryEffectLife( spep_1 -1 + 90,  10005, 22, 0x100, -1, 0, 21.7, 393.8 );--ガッ

setEffMoveKey( spep_1 -1 + 90, ctga, 21.7, 393.8 , 0 );
setEffMoveKey( spep_1 -1 + 92, ctga, 21.8, 393.9 , 0 );
setEffMoveKey( spep_1 -1 + 94, ctga, 21.6, 393.9 , 0 );
setEffMoveKey( spep_1 -1 + 96, ctga, 21.6, 393.8 , 0 );
setEffMoveKey( spep_1 -1 + 98, ctga, 21.7, 393.9 , 0 );
setEffMoveKey( spep_1 -1 + 100, ctga, 21.6, 393.8 , 0 );
setEffMoveKey( spep_1 -1 + 102, ctga, 21.6, 393.7 , 0 );
setEffMoveKey( spep_1 -1 + 104, ctga, 21.6, 393.7 , 0 );
setEffMoveKey( spep_1 -1 + 106, ctga, 21.7, 393.7 , 0 );
setEffMoveKey( spep_1 -1 + 112, ctga, 21.7, 393.7 , 0 );

setEffScaleKey( spep_1 -1 + 90, ctga, 0.75, 0.75 );
setEffScaleKey( spep_1 -1 + 92, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 -1 + 94, ctga, 2.04, 2.04 );
setEffScaleKey( spep_1 -1 + 96, ctga, 1.94, 1.94 );
setEffScaleKey( spep_1 -1 + 98, ctga, 1.84, 1.84 );
setEffScaleKey( spep_1 -1 + 100, ctga, 1.74, 1.74 );
setEffScaleKey( spep_1 -1 + 102, ctga, 1.65, 1.65 );
setEffScaleKey( spep_1 -1 + 104, ctga, 1.65, 1.65 );
setEffScaleKey( spep_1 -1 + 106, ctga, 1.64, 1.64 );
setEffScaleKey( spep_1 -1 + 108, ctga, 1.63, 1.63 );
setEffScaleKey( spep_1 -1 + 110, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 -1 + 112, ctga, 1.6, 1.6 );

setEffRotateKey( spep_1 -1 + 90, ctga, -12.4 );
setEffRotateKey( spep_1 -1 + 92, ctga, -25.8 );
setEffRotateKey( spep_1 -1 + 94, ctga, -12.4 );
setEffRotateKey( spep_1 -1 + 96, ctga, -3.8 );
setEffRotateKey( spep_1 -1 + 98, ctga, -12.6 );
setEffRotateKey( spep_1 -1 + 100, ctga, -23.3 );
setEffRotateKey( spep_1 -1 + 102, ctga, -12.4 );
setEffRotateKey( spep_1 -1 + 104, ctga, -12.6 );
setEffRotateKey( spep_1 -1 + 106, ctga, -12.5 );
setEffRotateKey( spep_1 -1 + 108, ctga, -12.5 );
setEffRotateKey( spep_1 -1 + 110, ctga, -12.4 );
setEffRotateKey( spep_1 -1 + 112, ctga, -12.4 );

setEffAlphaKey( spep_1 -1 + 90, ctga, 255 );
setEffAlphaKey( spep_1 -1 + 104, ctga, 255 );
setEffAlphaKey( spep_1 -1 + 106, ctga, 191 );
setEffAlphaKey( spep_1 -1 + 108, ctga, 128 );
setEffAlphaKey( spep_1 -1 + 110, ctga, 64 );
setEffAlphaKey( spep_1 -1 + 112, ctga, 0 );

--集中線
shuchudsen3 = entryEffectLife( spep_1 + 152,  906, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 152, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 158, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 160, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 162, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258, shuchudsen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 152, shuchudsen3, 1.07, 1.73 );
setEffScaleKey( spep_1 + 258, shuchudsen3, 1.07, 1.73 );

setEffRotateKey( spep_1 + 152, shuchudsen3, 0 );
setEffRotateKey( spep_1 + 258, shuchudsen3, 0 );

setEffAlphaKey( spep_1 + 152, shuchudsen3, 0 );
setEffAlphaKey( spep_1 + 154, shuchudsen3, 28 );
setEffAlphaKey( spep_1 + 156, shuchudsen3, 56 );
setEffAlphaKey( spep_1 + 158, shuchudsen3, 84 );
setEffAlphaKey( spep_1 + 160, shuchudsen3, 112 );
setEffAlphaKey( spep_1 + 162, shuchudsen3, 141 );
setEffAlphaKey( spep_1 + 258, shuchudsen3, 141 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+164  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+164  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +176, 190006, 72, 0x100, -1, 0, 120, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_1 +176,  ctgogo,  120,  510);
setEffMoveKey(  spep_1 +248,  ctgogo,  120,  510);

setEffAlphaKey( spep_1 +176, ctgogo, 0 );
setEffAlphaKey( spep_1 + 177, ctgogo, 255 );
setEffAlphaKey( spep_1 + 178, ctgogo, 255 );
setEffAlphaKey( spep_1 + 240, ctgogo, 255 );
setEffAlphaKey( spep_1 + 242, ctgogo, 255 );
setEffAlphaKey( spep_1 + 244, ctgogo, 191 );
setEffAlphaKey( spep_1 + 246, ctgogo, 112 );
setEffAlphaKey( spep_1 + 248, ctgogo, 64 );

setEffRotateKey(  spep_1 +176,  ctgogo,  0);
setEffRotateKey(  spep_1 +248,  ctgogo,  0);

setEffScaleKey(  spep_1 +176,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +238,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +248,  ctgogo, 1.07, 1.07 );

--敵の動き
setDisp( spep_1  + 60, 1, 1 );
setDisp( spep_1  + 258, 1, 0 );

changeAnime( spep_1 -3  + 60, 1, 100 );
changeAnime( spep_1 -3  + 76, 1, 104 );
changeAnime( spep_1 -3  + 92, 1, 106 );

setMoveKey( spep_1 -3 + 60, 1, 2251.5, 1221.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 1734.6, 1044.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 1236.9, 844.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 759.6, 623.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 303.2, 381.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 289.9, 371.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 276.2, 362.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 262.7, 353 , 0 );

setMoveKey( spep_1 -3 + 76, 1, 259.7, 345.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 246.1, 336.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 232, 326.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 210.4, 305.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 188.8, 285 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 167.2, 264.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 145.6, 243.4 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 124, 222.6 , 0 );

setMoveKey( spep_1 -3 + 92, 1, 70.2, 187.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 52.6, 190.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 15, 165.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 30.3, 168.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 25.6, 152.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 28.9, 167.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 24.2, 150.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 27.5, 165.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 14.7, 160.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 26.1, 163.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 21.4, 150.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 24.6, 162.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 11.9, 157.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 23.2, 160.3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 18.5, 143.5 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 21.8, 158.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 21.1, 157.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 20.4, 156.9 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 19.6, 156 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 19, 155.2 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 19, 155.2 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 67.5, 186.8 , 0 );
setMoveKey( spep_1 -3 + 133, 1, 67.5, 186.8 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 116.1, 218.3 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 116.1, 218.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 164.7, 249.8 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 164.7, 249.8 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 213.3, 281.5 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 213.3, 281.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 261.8, 313 , 0 );
setMoveKey( spep_1 -3 + 141, 1, 261.8, 313 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 310.4, 344.5 , 0 );
setMoveKey( spep_1 -3 + 143, 1, 310.4, 344.5 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 358.9, 376.1 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 358.9, 376.1 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 407.4, 407.6 , 0 );
setMoveKey( spep_1 -3 + 147, 1, 407.4, 407.6 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 405.6, 408.1 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 405.6, 408.1 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 411.8, 408.5 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 413.9, 404.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 416, 409.3 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 414.2, 409.8 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 420.4, 410.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 422.5, 406.6 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 424.7, 411 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 418.9, 407.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 429, 411.8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 427.2, 404.3 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 433.3, 412.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 431.5, 409.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 437.6, 413.6 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 431.7, 410 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 442, 414.4 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 440.1, 406.8 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 446.3, 415.2 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 444.4, 411.7 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 450.6, 416.1 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 444.7, 412.5 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 454.8, 416.9 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 453, 409.3 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 459.2, 417.8 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 457.3, 414.2 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 463.5, 418.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 461.7, 419.1 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 467.8, 419.5 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 469.9, 415.9 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 472.1, 420.3 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 466.3, 416.7 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 476.4, 421.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 474.5, 413.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 480.8, 422 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 478.9, 418.4 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 485, 422.9 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 483.2, 419.2 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 489.3, 423.7 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 483.5, 420.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 493.6, 424.5 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 491.8, 416.9 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 498, 425.4 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 496.1, 421.8 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 502.3, 426.2 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 496.4, 422.6 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 506.6, 427.1 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 504.7, 419.5 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 510.9, 427.9 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 509.1, 424.3 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 515.2, 428.7 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 513.3, 425.2 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 519.5, 429.6 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 517.7, 422 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 523.8, 430.4 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 522, 426.8 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 528.1, 431.3 , 0 );

setScaleKey( spep_1 -3 + 60, 1, 5.26, 5.26 );
setScaleKey( spep_1 -3 + 62, 1, 4.2, 4.2 );
setScaleKey( spep_1 -3 + 64, 1, 3.15, 3.15 );
setScaleKey( spep_1 -3 + 66, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 68, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 70, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 72, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 74, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 75, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 76, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 78, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 80, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 91, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 92, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 94, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 130, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 132, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 134, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 136, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 138, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 139, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 140, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 141, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 142, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 143, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 144, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 145, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 146, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 154, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 155, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 156, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 166, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 168, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 176, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 178, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 188, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 190, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 198, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 200, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 210, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 212, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 220, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 222, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 232, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 234, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 242, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 244, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 254, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 256, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 258, 1, 1.32, 1.32 );

setRotateKey( spep_1 + 60, 1, 6.2 );
setRotateKey( spep_1 + 62, 1, 4.6 );
setRotateKey( spep_1 + 64, 1, 3.1 );
setRotateKey( spep_1 + 66, 1, 1.5 );
setRotateKey( spep_1 + 68, 1, 0 );
setRotateKey( spep_1 + 70, 1, -0.1 );
setRotateKey( spep_1 + 75, 1, -0.1 );
setRotateKey( spep_1 + 76, 1, -3.4 );
setRotateKey( spep_1 + 84, 1, -3.4 );
setRotateKey( spep_1 + 86, 1, -3.5 );
setRotateKey( spep_1 + 91, 1, -3.5 );
setRotateKey( spep_1 + 92, 1, -43.4 );
setRotateKey( spep_1 + 258, 1, -43.4 );

--SE
playSe( spep_1 + 62, 1003 );
se_1153 = playSe( spep_1 + 94, 1153 );
playSe( spep_1 + 98, 1009 );
setSeVolume( spep_1 + 98, 1009,63 );
se_1124 = playSe( spep_1 + 46, 1124 );
setSeVolume( spep_1 + 46, 1124,0 );
setSeVolume( spep_1 + 136, 1124,8 );
setSeVolume( spep_1 + 137, 1124,16 );
setSeVolume( spep_1 + 138, 1124,24 );
setSeVolume( spep_1 + 139, 1124,32 );
setSeVolume( spep_1 + 140, 1124,40 );
setSeVolume( spep_1 + 141, 1124,48 );
setSeVolume( spep_1 + 141, 1124,50 );
playSe( spep_1 + 136, 1157 );
setSeVolume( spep_1 + 136, 1157,79 );
playSe( spep_1 + 136, 1037 );
setSeVolume( spep_1 + 136, 1037,71 );
playSe( spep_1 + 164, 1018 );
SE1=playSe( spep_1 + 230, 1176 );
setSeVolume( spep_1 + 230, 1176,32 );

stopSe( spep_1 + 110, se_1153, 14 );
stopSe( spep_1 + 202, se_1124, 30 );
stopSe( spep_1+ 252, SE0, 6 );
stopSe( spep_1+ 252, SE1, 6 );
--白フェード
entryFade( spep_1 + 89, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_1 + 252, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次のの準備
spep_2 =spep_1+ 260

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
se_0044 = playSe( spep_2 + 90, 44 );

--白フェード
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 煙から出る〜敵掴む〜溜め
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, beam, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 106, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 106, beam, 255 );
setEffAlphaKey( spep_3 + 107, beam, 0 );
setEffAlphaKey( spep_3 + 108, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 30,  10012, 66, 0x100, -1, 0, -110.3, 242.4 );--ズオッ

setEffMoveKey( spep_3-3 + 30, ctzuo, -110.3, 242.4 , 0 );
setEffMoveKey( spep_3-3 + 32, ctzuo, -93.9, 278.3 , 0 );
setEffMoveKey( spep_3-3 + 34, ctzuo, -95.4, 322.5 , 0 );
setEffMoveKey( spep_3-3 + 36, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 38, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 40, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 80, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 82, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 84, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 86, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 88, ctzuo, -47.8, 363 , 0 );
setEffMoveKey( spep_3-3 + 90, ctzuo, -63.7, 377.5 , 0 );
setEffMoveKey( spep_3-3 + 92, ctzuo, -9.6, 373.4 , 0 );
setEffMoveKey( spep_3-3 + 94, ctzuo, -38.7, 391.5 , 0 );
setEffMoveKey( spep_3-3 + 96, ctzuo, -26.2, 398.6 , 0 );

setEffScaleKey( spep_3-3 + 30, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_3-3 + 32, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_3-3 + 34, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_3-3 + 36, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3-3 + 86, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3-3 + 88, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_3-3 + 90, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_3-3 + 92, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_3-3 + 94, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_3-3 + 96, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_3-3 + 30, ctzuo, 9.6 );
setEffRotateKey( spep_3-3 + 32, ctzuo, 5.4 );
setEffRotateKey( spep_3-3 + 34, ctzuo, 1.3 );
setEffRotateKey( spep_3-3 + 36, ctzuo, -2.8 );
setEffRotateKey( spep_3-3 + 96, ctzuo, -2.8 );

setEffAlphaKey( spep_3-3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 86, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 88, ctzuo, 204 );
setEffAlphaKey( spep_3-3 + 90, ctzuo, 153 );
setEffAlphaKey( spep_3-3 + 92, ctzuo, 102 );
setEffAlphaKey( spep_3-3 + 94, ctzuo, 51 );
setEffAlphaKey( spep_3-3 + 96, ctzuo, 0 );

--集中せん
shuchusen4 = entryEffectLife( spep_3  + 0,  906, 38-3, 0x100, -1, 0, 0, -15 );

setEffMoveKey( spep_3  + 0, shuchusen4, 0, -15 , 0 );
setEffMoveKey( spep_3 -3 + 38, shuchusen4, 0, -15 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.24, 1.72 );
setEffScaleKey( spep_3 -3 + 38, shuchusen4, 1.24, 1.72 );

setEffRotateKey( spep_3  + 0, shuchusen4, 180 )
setEffRotateKey( spep_3 -3 + 38, shuchusen4, 180 )

setEffAlphaKey( spep_3  + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 -3 + 30, shuchusen4, 255 );
setEffAlphaKey( spep_3 -3 + 32, shuchusen4, 191 );
setEffAlphaKey( spep_3 -3 + 34, shuchusen4, 128 );
setEffAlphaKey( spep_3 -3 + 36, shuchusen4, 64 );
setEffAlphaKey( spep_3 -3 + 38, shuchusen4, 0 );

--黒背景
entryFadeBg( spep_3, 0,106,0, 0, 0, 0, 200 );  --white fade


--SE
playSe( spep_3 + 18, 1022 );
se_1177 = playSe( spep_3 + 26, 1177 );
setSeVolume( spep_3 + 26, 1177,79 );
playSe( spep_3 + 100, 1021 );

stopSe( spep_3 + 22, se_0044, 0 );

--白フェード
entryFade( spep_3 + 27, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_3 + 98, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;

------------------------------------------------------
-- 迫る〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, explosion_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 220, explosion_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, explosion_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 220, explosion_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, explosion_f, 0 );
setEffRotateKey( spep_4 + 220, explosion_f, 0 );
setEffAlphaKey( spep_4 + 0, explosion_f, 255 );
setEffAlphaKey( spep_4 + 220, explosion_f, 255 );

-- ** エフェクト等 ** --
explosion_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, explosion_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 220, explosion_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, explosion_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 220, explosion_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, explosion_b, 0 );
setEffRotateKey( spep_4 + 220, explosion_b, 0 );
setEffAlphaKey( spep_4 + 0, explosion_b, 255 );
setEffAlphaKey( spep_4 + 220, explosion_b, 255 );

--敵の動き
setDisp( spep_4+ 0, 1, 1 );
setDisp( spep_4-3+ 58, 1, 0 );

changeAnime( spep_4-3 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 157.2, 291.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 153.7, 287.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 150.2, 282.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 146.6, 277.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 143.1, 272.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, 139.6, 267.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 136.1, 262.6 , 0 );
setMoveKey( spep_4-3 + 14, 1, 132.5, 257.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 129, 252.9 , 0 );
setMoveKey( spep_4-3 + 18, 1, 125.5, 248 , 0 );
setMoveKey( spep_4-3 + 20, 1, 122, 243.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, 118.4, 238.2 , 0 );
setMoveKey( spep_4-3 + 24, 1, 114.9, 233.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 111.4, 228.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 107.9, 223.6 , 0 );
setMoveKey( spep_4-3 + 30, 1, 104.3, 218.7 , 0 );
setMoveKey( spep_4-3 + 32, 1, 100.8, 213.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 94.7, 205.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 88.6, 196.4 , 0 );
setMoveKey( spep_4-3 + 38, 1, 82.5, 187.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 76.4, 178.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 70.3, 170.2 , 0 );
setMoveKey( spep_4-3 + 44, 1, 64.2, 161.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 58.1, 152.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 52, 144.1 , 0 );
setMoveKey( spep_4-3 + 50, 1, 45.8, 135.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 39.7, 126.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, 33.6, 117.9 , 0 );
setMoveKey( spep_4-3 + 56, 1, 27.5, 109.2 , 0 );
setMoveKey( spep_4-3 + 58, 1, 21.5, 100.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.58, 0.58 );
--setScaleKey( spep_4-3 + 2, 1, 0.58, 0.58 );
setScaleKey( spep_4-3 + 4, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 8, 1, 0.6, 0.6 );
setScaleKey( spep_4-3 + 10, 1, 0.6, 0.6 );
setScaleKey( spep_4-3 + 12, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 14, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_4-3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_4-3 + 20, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 22, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 24, 1, 0.64, 0.64 );
setScaleKey( spep_4-3 + 26, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 28, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 30, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 32, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 34, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 36, 1, 0.69, 0.69 );
setScaleKey( spep_4-3 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 42, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 44, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 46, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_4-3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_4-3 + 52, 1, 0.76, 0.76 );
setScaleKey( spep_4-3 + 54, 1, 0.77, 0.77 );
setScaleKey( spep_4-3 + 56, 1, 0.77, 0.77 );
setScaleKey( spep_4-3 + 58, 1, 0.78, 0.78 );

setRotateKey( spep_4 + 0, 1, -36.9 );
setRotateKey( spep_4-3 + 58, 1, -36.9 );

shuchusen5 = entryEffectLife( spep_4-3 + 64,  906, 156, 0x100, -1, 0, 0, -9.9 );

setEffMoveKey( spep_4-3 + 64, shuchusen5, 0, -9.9 , 0 );
setEffMoveKey( spep_4-3 + 220, shuchusen5, 0, -9.9 , 0 );

setEffScaleKey( spep_4-3 + 64, shuchusen5, 1.07, 1.92 );
setEffScaleKey( spep_4-3 + 220, shuchusen5, 1.07, 1.92 );

setEffRotateKey( spep_4-3 + 64, shuchusen5, 180 );
setEffRotateKey( spep_4-3 + 220, shuchusen5, 180 );

setEffAlphaKey( spep_4-3 + 64, shuchusen5, 191 );
setEffAlphaKey( spep_4-3 + 220, shuchusen5, 191 );

--文字エントリー
ctzudodo = entryEffectLife( spep_4 ,  10014, 56 , 0x100, -1, 0, -34.7, 347.1 );--ズドドドッ

setEffMoveKey( spep_4 , ctzudodo, -34.7, 347.1 , 0 );
setEffMoveKey( spep_4 -3 + 4, ctzudodo, -22.2, 321 , 0 );
setEffMoveKey( spep_4 -3 + 6, ctzudodo, -15.2, 342.1 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctzudodo, -15.9, 312.5 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctzudodo, -24.1, 344.3 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctzudodo, -28.5, 345.5 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctzudodo, -26.5, 328.2 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzudodo, -29.1, 349.3 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzudodo, -27, 331.5 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzudodo, -29.7, 353.2 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzudodo, -27.5, 334.8 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzudodo, -30.3, 357 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzudodo, -28, 338.1 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzudodo, -30.9, 360.9 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzudodo, -28.5, 341.4 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzudodo, -31.5, 364.8 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzudodo, -29.1, 344.6 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzudodo, -32.1, 368.6 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzudodo, -29.6, 347.9 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzudodo, -32.6, 372.5 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzudodo, -30.1, 351.2 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzudodo, -33.2, 376.3 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzudodo, -30.6, 354.5 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzudodo, -33.8, 380.2 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzudodo, -31.1, 357.8 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzudodo, -34.4, 384 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzudodo, -31.7, 361.1 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzudodo, -35, 387.9 , 0 );
setEffMoveKey( spep_4 -2 + 58, ctzudodo, -32.2, 364.3 , 0 );

setEffScaleKey( spep_4 , ctzudodo, 1.19, 1.19 );
setEffScaleKey( spep_4 -3 + 4, ctzudodo, 2.66, 2.66 );
setEffScaleKey( spep_4 -3 + 6, ctzudodo, 4.14, 4.14 );
setEffScaleKey( spep_4 -3 + 8, ctzudodo, 3.47, 3.47 );
setEffScaleKey( spep_4 -3 + 10, ctzudodo, 2.8, 2.8 );
setEffScaleKey( spep_4 -3 + 12, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_4 -3 + 14, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_4 -3 + 16, ctzudodo, 2.2, 2.2 );
setEffScaleKey( spep_4 -3 + 18, ctzudodo, 2.23, 2.23 );
setEffScaleKey( spep_4 -3 + 20, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_4 -3 + 22, ctzudodo, 2.29, 2.29 );
setEffScaleKey( spep_4 -3 + 24, ctzudodo, 2.33, 2.33 );
setEffScaleKey( spep_4 -3 + 26, ctzudodo, 2.36, 2.36 );
setEffScaleKey( spep_4 -3 + 28, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_4 -3 + 30, ctzudodo, 2.42, 2.42 );
setEffScaleKey( spep_4 -3 + 32, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_4 -3 + 34, ctzudodo, 2.49, 2.49 );
setEffScaleKey( spep_4 -3 + 36, ctzudodo, 2.52, 2.52 );
setEffScaleKey( spep_4 -3 + 38, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_4 -3 + 40, ctzudodo, 2.59, 2.59 );
setEffScaleKey( spep_4 -3 + 42, ctzudodo, 2.62, 2.62 );
setEffScaleKey( spep_4 -3 + 44, ctzudodo, 2.65, 2.65 );
setEffScaleKey( spep_4 -3 + 46, ctzudodo, 2.68, 2.68 );
setEffScaleKey( spep_4 -3 + 48, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_4 -3 + 50, ctzudodo, 2.75, 2.75 );
setEffScaleKey( spep_4 -3 + 52, ctzudodo, 2.78, 2.78 );
setEffScaleKey( spep_4 -3 + 54, ctzudodo, 2.81, 2.81 );
setEffScaleKey( spep_4 -3 + 56, ctzudodo, 2.84, 2.84 );
setEffScaleKey( spep_4 -2 + 58, ctzudodo, 2.88, 2.88 );

setEffRotateKey( spep_4 , ctzudodo, 10.1 );
setEffRotateKey( spep_4 -2 + 58, ctzudodo, 10.1 );

setEffAlphaKey( spep_4 , ctzudodo, 255 );
setEffAlphaKey( spep_4 -2 + 58, ctzudodo, 255 );

--SE
playSe( spep_4 + 56, 1024 );
setSeVolume( spep_4 + 56, 1159,56 );
playSe( spep_4 + 56, 1159 );

stopSe( spep_4 + 56, se_1177, 0 );
--黒背景
entryFadeBg( spep_4, 0,220,0, 0, 0, 0, 200 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 62 );
endPhase( spep_4 + 210 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
--はじめの準備
spep_0 = 0

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 156, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 156, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 156, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 156, tame, 255 );
setEffAlphaKey( spep_0 + 157, tame, 0 );
setEffAlphaKey( spep_0 + 158, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 70,  906, 150, 0x100, -1, 0, 0, 1.4 );

setEffMoveKey( spep_0 -3 + 70, shuchusen1, 0, 1.4 , 0 );
setEffMoveKey( spep_0 -3 + 80, shuchusen1, 0, 1.4 , 0 );
setEffMoveKey( spep_0 -3 + 82, shuchusen1, 0, 1.1 , 0 );
setEffMoveKey( spep_0 -3 + 220, shuchusen1, 0, 1.1 , 0 );

setEffScaleKey( spep_0 -3 + 70, shuchusen1, 1.07, 1.37 );
setEffScaleKey( spep_0 -3 + 80, shuchusen1, 1.07, 1.37 );
setEffScaleKey( spep_0 -3 + 82, shuchusen1, 1.07, 1.73 );
setEffScaleKey( spep_0 -3 + 220, shuchusen1, 1.07, 1.73 );

setEffRotateKey( spep_0 -3 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 +220, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 70, shuchusen1, 160 );
setEffAlphaKey( spep_0 -3 + 82, shuchusen1, 160 );
setEffAlphaKey( spep_0 -3 + 84, shuchusen1, 158 );
setEffAlphaKey( spep_0 -3 + 86, shuchusen1, 155 );
setEffAlphaKey( spep_0 -3 + 88, shuchusen1, 152 );
setEffAlphaKey( spep_0 -3 + 90, shuchusen1, 149 );
setEffAlphaKey( spep_0 -3 + 92, shuchusen1, 146 );
setEffAlphaKey( spep_0 -3 + 94, shuchusen1, 143 );
setEffAlphaKey( spep_0 -3 + 96, shuchusen1, 141 );
setEffAlphaKey( spep_0 -3 + 200, shuchusen1, 141 );
setEffAlphaKey( spep_0 -3 + 202, shuchusen1, 126 );
setEffAlphaKey( spep_0 -3 + 204, shuchusen1, 112 );
setEffAlphaKey( spep_0 -3 + 206, shuchusen1, 98 );
setEffAlphaKey( spep_0 -3 + 208, shuchusen1, 84 );
setEffAlphaKey( spep_0 -3 + 210, shuchusen1, 70 );
setEffAlphaKey( spep_0 -3 + 212, shuchusen1, 56 );
setEffAlphaKey( spep_0 -3 + 214, shuchusen1, 42 );
setEffAlphaKey( spep_0 -3 + 216, shuchusen1, 28 );
setEffAlphaKey( spep_0 -3 + 218, shuchusen1, 14 );
setEffAlphaKey( spep_0 -3 + 220, shuchusen1, 0 );

--黒背景
entryFadeBg( spep_0, 0,156,0, 0, 0, 0, 200 );  --white fade

--SE
playSe( spep_0 + 0, 8 );
se_1116 = playSe( spep_0 + 64, 1116 );
setSeVolume( spep_0 + 64, 1116,63 );
playSe( spep_0 + 96, 1035 );
SE0=playSe( spep_0 + 104, 1176 );
setSeVolume( spep_0 + 104, 1176,32 );

stopSe( spep_0 + 88, se_1116, 14 );

--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次のの準備
spep_1 =spep_0+ 156

------------------------------------------------------
-- 煙から出る〜敵掴む〜溜め
------------------------------------------------------

-- ** エフェクト等 ** --
grat_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, grat_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 260, grat_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, grat_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 260, grat_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, grat_f, 0 );
setEffRotateKey( spep_1 + 260, grat_f, 0 );
setEffAlphaKey( spep_1 + 0, grat_f, 0 );
setEffAlphaKey( spep_1  + 64, grat_f, 0 );
setEffAlphaKey( spep_1  + 65, grat_f, 255 );
setEffAlphaKey( spep_1  + 66, grat_f, 255 );
setEffAlphaKey( spep_1 + 260, grat_f, 255 );

-- ** エフェクト等 ** --
grat_n = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, grat_n, 0, 0 , 0 );
setEffMoveKey( spep_1 + 260, grat_n, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, grat_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 260, grat_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, grat_n, 0 );
setEffRotateKey( spep_1 + 260, grat_n, 0 );
setEffAlphaKey( spep_1 + 0, grat_n, 255 );
setEffAlphaKey( spep_1  + 64, grat_n, 255 );
setEffAlphaKey( spep_1  + 65, grat_n, 0 );
setEffAlphaKey( spep_1  + 66, grat_n, 0 );
setEffAlphaKey( spep_1 + 260, grat_n, 0 );

-- ** エフェクト等 ** --
grat_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, grat_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 260, grat_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, grat_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 260, grat_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, grat_b, 0 );
setEffRotateKey( spep_1 + 260, grat_b, 0 );
setEffAlphaKey( spep_1 + 0, grat_b, 255 );
setEffAlphaKey( spep_1 + 260, grat_b, 255 );

--黒背景
entryFadeBg( spep_1, 0,260,0, 0, 0, 0, 200 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--集中線
shuchusen2 = entryEffectLife( spep_1 -1 +90,  906, 18, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -1  + 90, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -1  + 108, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -1  + 90, shuchusen2, 1.13, 1.28 );
setEffScaleKey( spep_1 -1  + 108, shuchusen2, 1.13, 1.28 );

setEffRotateKey( spep_1 -1  + 90, shuchusen2, 0 );
setEffRotateKey( spep_1 -1  + 108, shuchusen2, 0 );

setEffAlphaKey( spep_1 -1  + 90, shuchusen2, 141 );
setEffAlphaKey( spep_1 -1 + 100, shuchusen2, 141 );
setEffAlphaKey( spep_1 -1  + 102, shuchusen2, 94 );
setEffAlphaKey( spep_1 -1 + 106, shuchusen2, 47 );
setEffAlphaKey( spep_1 -1 + 108, shuchusen2, 0 );

--文字エントリー
ctga = entryEffectLife( spep_1 -1 + 90,  10005, 22, 0x100, -1, 0, 21.7, 393.8 );--ガッ

setEffMoveKey( spep_1 -1 + 90, ctga, 21.7, 393.8 , 0 );
setEffMoveKey( spep_1 -1 + 92, ctga, 21.8, 393.9 , 0 );
setEffMoveKey( spep_1 -1 + 94, ctga, 21.6, 393.9 , 0 );
setEffMoveKey( spep_1 -1 + 96, ctga, 21.6, 393.8 , 0 );
setEffMoveKey( spep_1 -1 + 98, ctga, 21.7, 393.9 , 0 );
setEffMoveKey( spep_1 -1 + 100, ctga, 21.6, 393.8 , 0 );
setEffMoveKey( spep_1 -1 + 102, ctga, 21.6, 393.7 , 0 );
setEffMoveKey( spep_1 -1 + 104, ctga, 21.6, 393.7 , 0 );
setEffMoveKey( spep_1 -1 + 106, ctga, 21.7, 393.7 , 0 );
setEffMoveKey( spep_1 -1 + 112, ctga, 21.7, 393.7 , 0 );

setEffScaleKey( spep_1 -1 + 90, ctga, 0.75, 0.75 );
setEffScaleKey( spep_1 -1 + 92, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 -1 + 94, ctga, 2.04, 2.04 );
setEffScaleKey( spep_1 -1 + 96, ctga, 1.94, 1.94 );
setEffScaleKey( spep_1 -1 + 98, ctga, 1.84, 1.84 );
setEffScaleKey( spep_1 -1 + 100, ctga, 1.74, 1.74 );
setEffScaleKey( spep_1 -1 + 102, ctga, 1.65, 1.65 );
setEffScaleKey( spep_1 -1 + 104, ctga, 1.65, 1.65 );
setEffScaleKey( spep_1 -1 + 106, ctga, 1.64, 1.64 );
setEffScaleKey( spep_1 -1 + 108, ctga, 1.63, 1.63 );
setEffScaleKey( spep_1 -1 + 110, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 -1 + 112, ctga, 1.6, 1.6 );

setEffRotateKey( spep_1 -1 + 90, ctga, -12.4 );
setEffRotateKey( spep_1 -1 + 92, ctga, -25.8 );
setEffRotateKey( spep_1 -1 + 94, ctga, -12.4 );
setEffRotateKey( spep_1 -1 + 96, ctga, -3.8 );
setEffRotateKey( spep_1 -1 + 98, ctga, -12.6 );
setEffRotateKey( spep_1 -1 + 100, ctga, -23.3 );
setEffRotateKey( spep_1 -1 + 102, ctga, -12.4 );
setEffRotateKey( spep_1 -1 + 104, ctga, -12.6 );
setEffRotateKey( spep_1 -1 + 106, ctga, -12.5 );
setEffRotateKey( spep_1 -1 + 108, ctga, -12.5 );
setEffRotateKey( spep_1 -1 + 110, ctga, -12.4 );
setEffRotateKey( spep_1 -1 + 112, ctga, -12.4 );

setEffAlphaKey( spep_1 -1 + 90, ctga, 255 );
setEffAlphaKey( spep_1 -1 + 104, ctga, 255 );
setEffAlphaKey( spep_1 -1 + 106, ctga, 191 );
setEffAlphaKey( spep_1 -1 + 108, ctga, 128 );
setEffAlphaKey( spep_1 -1 + 110, ctga, 64 );
setEffAlphaKey( spep_1 -1 + 112, ctga, 0 );

--集中線
shuchudsen3 = entryEffectLife( spep_1 + 152,  906, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 152, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 158, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 160, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 162, shuchudsen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258, shuchudsen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 152, shuchudsen3, 1.07, 1.73 );
setEffScaleKey( spep_1 + 258, shuchudsen3, 1.07, 1.73 );

setEffRotateKey( spep_1 + 152, shuchudsen3, 0 );
setEffRotateKey( spep_1 + 258, shuchudsen3, 0 );

setEffAlphaKey( spep_1 + 152, shuchudsen3, 0 );
setEffAlphaKey( spep_1 + 154, shuchudsen3, 28 );
setEffAlphaKey( spep_1 + 156, shuchudsen3, 56 );
setEffAlphaKey( spep_1 + 158, shuchudsen3, 84 );
setEffAlphaKey( spep_1 + 160, shuchudsen3, 112 );
setEffAlphaKey( spep_1 + 162, shuchudsen3, 141 );
setEffAlphaKey( spep_1 + 258, shuchudsen3, 141 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+164  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+164  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +176, 190006, 72, 0x100, -1, 0, 70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_1 +176,  ctgogo,  70,  510);
setEffMoveKey(  spep_1 +248,  ctgogo,  70,  510);

setEffAlphaKey( spep_1 +176, ctgogo, 0 );
setEffAlphaKey( spep_1 + 177, ctgogo, 255 );
setEffAlphaKey( spep_1 + 178, ctgogo, 255 );
setEffAlphaKey( spep_1 + 240, ctgogo, 255 );
setEffAlphaKey( spep_1 + 242, ctgogo, 255 );
setEffAlphaKey( spep_1 + 244, ctgogo, 191 );
setEffAlphaKey( spep_1 + 246, ctgogo, 112 );
setEffAlphaKey( spep_1 + 248, ctgogo, 64 );

setEffRotateKey(  spep_1 +176,  ctgogo,  0);
setEffRotateKey(  spep_1 +248,  ctgogo,  0);

setEffScaleKey(  spep_1 +176,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +238,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +248,  ctgogo, -1.07, 1.07 );

--敵の動き
setDisp( spep_1  + 60, 1, 1 );
setDisp( spep_1  + 258, 1, 0 );

changeAnime( spep_1 -3  + 60, 1, 100 );
changeAnime( spep_1 -3  + 76, 1, 104 );
changeAnime( spep_1 -3  + 92, 1, 106 );

setMoveKey( spep_1 -3 + 60, 1, 2251.5, 1221.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 1734.6, 1044.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 1236.9, 844.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 759.6, 623.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 303.2, 381.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 289.9, 371.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 276.2, 362.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 262.7, 353 , 0 );

setMoveKey( spep_1 -3 + 76, 1, 259.7, 345.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 246.1, 336.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 232, 326.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 210.4, 305.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 188.8, 285 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 167.2, 264.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 145.6, 243.4 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 124, 222.6 , 0 );

setMoveKey( spep_1 -3 + 92, 1, 70.2, 187.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 52.6, 190.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 15, 165.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 30.3, 168.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 25.6, 152.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 28.9, 167.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 24.2, 150.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 27.5, 165.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 14.7, 160.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 26.1, 163.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 21.4, 150.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 24.6, 162.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 11.9, 157.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 23.2, 160.3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 18.5, 143.5 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 21.8, 158.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 21.1, 157.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 20.4, 156.9 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 19.6, 156 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 19, 155.2 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 19, 155.2 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 67.5, 186.8 , 0 );
setMoveKey( spep_1 -3 + 133, 1, 67.5, 186.8 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 116.1, 218.3 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 116.1, 218.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 164.7, 249.8 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 164.7, 249.8 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 213.3, 281.5 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 213.3, 281.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 261.8, 313 , 0 );
setMoveKey( spep_1 -3 + 141, 1, 261.8, 313 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 310.4, 344.5 , 0 );
setMoveKey( spep_1 -3 + 143, 1, 310.4, 344.5 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 358.9, 376.1 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 358.9, 376.1 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 407.4, 407.6 , 0 );
setMoveKey( spep_1 -3 + 147, 1, 407.4, 407.6 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 405.6, 408.1 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 405.6, 408.1 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 411.8, 408.5 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 413.9, 404.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 416, 409.3 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 414.2, 409.8 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 420.4, 410.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 422.5, 406.6 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 424.7, 411 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 418.9, 407.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 429, 411.8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 427.2, 404.3 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 433.3, 412.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 431.5, 409.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 437.6, 413.6 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 431.7, 410 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 442, 414.4 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 440.1, 406.8 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 446.3, 415.2 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 444.4, 411.7 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 450.6, 416.1 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 444.7, 412.5 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 454.8, 416.9 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 453, 409.3 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 459.2, 417.8 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 457.3, 414.2 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 463.5, 418.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 461.7, 419.1 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 467.8, 419.5 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 469.9, 415.9 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 472.1, 420.3 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 466.3, 416.7 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 476.4, 421.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 474.5, 413.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 480.8, 422 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 478.9, 418.4 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 485, 422.9 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 483.2, 419.2 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 489.3, 423.7 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 483.5, 420.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 493.6, 424.5 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 491.8, 416.9 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 498, 425.4 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 496.1, 421.8 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 502.3, 426.2 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 496.4, 422.6 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 506.6, 427.1 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 504.7, 419.5 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 510.9, 427.9 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 509.1, 424.3 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 515.2, 428.7 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 513.3, 425.2 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 519.5, 429.6 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 517.7, 422 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 523.8, 430.4 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 522, 426.8 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 528.1, 431.3 , 0 );

setScaleKey( spep_1 -3 + 60, 1, 5.26, 5.26 );
setScaleKey( spep_1 -3 + 62, 1, 4.2, 4.2 );
setScaleKey( spep_1 -3 + 64, 1, 3.15, 3.15 );
setScaleKey( spep_1 -3 + 66, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 68, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 70, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 72, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 74, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 75, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 76, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 78, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 80, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 91, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 92, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 94, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 130, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 132, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 134, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 136, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 138, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 139, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 140, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 141, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 142, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 143, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 144, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 145, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 146, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 154, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 155, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 156, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 166, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 168, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 176, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 178, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 188, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 190, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 198, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 200, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 210, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 212, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 220, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 222, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 232, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 234, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 242, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 244, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 254, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 256, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 258, 1, 1.32, 1.32 );

setRotateKey( spep_1 + 60, 1, 6.2 );
setRotateKey( spep_1 + 62, 1, 4.6 );
setRotateKey( spep_1 + 64, 1, 3.1 );
setRotateKey( spep_1 + 66, 1, 1.5 );
setRotateKey( spep_1 + 68, 1, 0 );
setRotateKey( spep_1 + 70, 1, -0.1 );
setRotateKey( spep_1 + 75, 1, -0.1 );
setRotateKey( spep_1 + 76, 1, -3.4 );
setRotateKey( spep_1 + 84, 1, -3.4 );
setRotateKey( spep_1 + 86, 1, -3.5 );
setRotateKey( spep_1 + 91, 1, -3.5 );
setRotateKey( spep_1 + 92, 1, -43.4 );
setRotateKey( spep_1 + 258, 1, -43.4 );

--SE
playSe( spep_1 + 62, 1003 );
se_1153 = playSe( spep_1 + 94, 1153 );
playSe( spep_1 + 98, 1009 );
setSeVolume( spep_1 + 98, 1009,63 );
se_1124 = playSe( spep_1 + 46, 1124 );
setSeVolume( spep_1 + 46, 1124,0 );
setSeVolume( spep_1 + 136, 1124,8 );
setSeVolume( spep_1 + 137, 1124,16 );
setSeVolume( spep_1 + 138, 1124,24 );
setSeVolume( spep_1 + 139, 1124,32 );
setSeVolume( spep_1 + 140, 1124,40 );
setSeVolume( spep_1 + 141, 1124,48 );
setSeVolume( spep_1 + 141, 1124,50 );
playSe( spep_1 + 136, 1157 );
setSeVolume( spep_1 + 136, 1157,79 );
playSe( spep_1 + 136, 1037 );
setSeVolume( spep_1 + 136, 1037,71 );
playSe( spep_1 + 164, 1018 );
SE1=playSe( spep_1 + 230, 1176 );
setSeVolume( spep_1 + 230, 1176,32 );

stopSe( spep_1 + 110, se_1153, 14 );
stopSe( spep_1 + 202, se_1124, 30 );
stopSe( spep_1+ 252, SE0, 6 );
stopSe( spep_1+ 252, SE1, 6 );
--白フェード
entryFade( spep_1 + 89, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_1 + 252, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次のの準備
spep_2 =spep_1+ 260

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
se_0044 = playSe( spep_2 + 90, 44 );

--白フェード
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 煙から出る〜敵掴む〜溜め
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, beam, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 106, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 106, beam, 255 );
setEffAlphaKey( spep_3 + 107, beam, 0 );
setEffAlphaKey( spep_3 + 108, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 30,  10012, 66, 0x100, -1, 0, -110.3, 242.4 );--ズオッ

setEffMoveKey( spep_3-3 + 30, ctzuo, -110.3, 242.4 , 0 );
setEffMoveKey( spep_3-3 + 32, ctzuo, -93.9, 278.3 , 0 );
setEffMoveKey( spep_3-3 + 34, ctzuo, -95.4, 322.5 , 0 );
setEffMoveKey( spep_3-3 + 36, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 38, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 40, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 80, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 82, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 84, ctzuo, -66.9, 357.7 , 0 );
setEffMoveKey( spep_3-3 + 86, ctzuo, -88.8, 363.6 , 0 );
setEffMoveKey( spep_3-3 + 88, ctzuo, -47.8, 363 , 0 );
setEffMoveKey( spep_3-3 + 90, ctzuo, -63.7, 377.5 , 0 );
setEffMoveKey( spep_3-3 + 92, ctzuo, -9.6, 373.4 , 0 );
setEffMoveKey( spep_3-3 + 94, ctzuo, -38.7, 391.5 , 0 );
setEffMoveKey( spep_3-3 + 96, ctzuo, -26.2, 398.6 , 0 );

setEffScaleKey( spep_3-3 + 30, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_3-3 + 32, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_3-3 + 34, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_3-3 + 36, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3-3 + 86, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3-3 + 88, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_3-3 + 90, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_3-3 + 92, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_3-3 + 94, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_3-3 + 96, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_3-3 + 30, ctzuo, 9.6 );
setEffRotateKey( spep_3-3 + 32, ctzuo, 5.4 );
setEffRotateKey( spep_3-3 + 34, ctzuo, 1.3 );
setEffRotateKey( spep_3-3 + 36, ctzuo, -2.8 );
setEffRotateKey( spep_3-3 + 96, ctzuo, -2.8 );

setEffAlphaKey( spep_3-3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 86, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 88, ctzuo, 204 );
setEffAlphaKey( spep_3-3 + 90, ctzuo, 153 );
setEffAlphaKey( spep_3-3 + 92, ctzuo, 102 );
setEffAlphaKey( spep_3-3 + 94, ctzuo, 51 );
setEffAlphaKey( spep_3-3 + 96, ctzuo, 0 );

--集中せん
shuchusen4 = entryEffectLife( spep_3  + 0,  906, 38-3, 0x100, -1, 0, 0, -15 );

setEffMoveKey( spep_3  + 0, shuchusen4, 0, -15 , 0 );
setEffMoveKey( spep_3 -3 + 38, shuchusen4, 0, -15 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.24, 1.72 );
setEffScaleKey( spep_3 -3 + 38, shuchusen4, 1.24, 1.72 );

setEffRotateKey( spep_3  + 0, shuchusen4, 180 )
setEffRotateKey( spep_3 -3 + 38, shuchusen4, 180 )

setEffAlphaKey( spep_3  + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 -3 + 30, shuchusen4, 255 );
setEffAlphaKey( spep_3 -3 + 32, shuchusen4, 191 );
setEffAlphaKey( spep_3 -3 + 34, shuchusen4, 128 );
setEffAlphaKey( spep_3 -3 + 36, shuchusen4, 64 );
setEffAlphaKey( spep_3 -3 + 38, shuchusen4, 0 );

--黒背景
entryFadeBg( spep_3, 0,106,0, 0, 0, 0, 200 );  --white fade


--SE
playSe( spep_3 + 18, 1022 );
se_1177 = playSe( spep_3 + 26, 1177 );
setSeVolume( spep_3 + 26, 1177,79 );
playSe( spep_3 + 100, 1021 );

stopSe( spep_3 + 22, se_0044, 0 );

--白フェード
entryFade( spep_3 + 27, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_3 + 98, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;

------------------------------------------------------
-- 迫る〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, explosion_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 220, explosion_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, explosion_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 220, explosion_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, explosion_f, 0 );
setEffRotateKey( spep_4 + 220, explosion_f, 0 );
setEffAlphaKey( spep_4 + 0, explosion_f, 255 );
setEffAlphaKey( spep_4 + 220, explosion_f, 255 );

-- ** エフェクト等 ** --
explosion_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, explosion_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 220, explosion_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, explosion_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 220, explosion_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, explosion_b, 0 );
setEffRotateKey( spep_4 + 220, explosion_b, 0 );
setEffAlphaKey( spep_4 + 0, explosion_b, 255 );
setEffAlphaKey( spep_4 + 220, explosion_b, 255 );

--敵の動き
setDisp( spep_4+ 0, 1, 1 );
setDisp( spep_4-3+ 58, 1, 0 );

changeAnime( spep_4-3 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 157.2, 291.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 153.7, 287.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 150.2, 282.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 146.6, 277.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 143.1, 272.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, 139.6, 267.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 136.1, 262.6 , 0 );
setMoveKey( spep_4-3 + 14, 1, 132.5, 257.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 129, 252.9 , 0 );
setMoveKey( spep_4-3 + 18, 1, 125.5, 248 , 0 );
setMoveKey( spep_4-3 + 20, 1, 122, 243.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, 118.4, 238.2 , 0 );
setMoveKey( spep_4-3 + 24, 1, 114.9, 233.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 111.4, 228.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 107.9, 223.6 , 0 );
setMoveKey( spep_4-3 + 30, 1, 104.3, 218.7 , 0 );
setMoveKey( spep_4-3 + 32, 1, 100.8, 213.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 94.7, 205.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 88.6, 196.4 , 0 );
setMoveKey( spep_4-3 + 38, 1, 82.5, 187.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 76.4, 178.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 70.3, 170.2 , 0 );
setMoveKey( spep_4-3 + 44, 1, 64.2, 161.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 58.1, 152.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 52, 144.1 , 0 );
setMoveKey( spep_4-3 + 50, 1, 45.8, 135.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 39.7, 126.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, 33.6, 117.9 , 0 );
setMoveKey( spep_4-3 + 56, 1, 27.5, 109.2 , 0 );
setMoveKey( spep_4-3 + 58, 1, 21.5, 100.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.58, 0.58 );
--setScaleKey( spep_4-3 + 2, 1, 0.58, 0.58 );
setScaleKey( spep_4-3 + 4, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 8, 1, 0.6, 0.6 );
setScaleKey( spep_4-3 + 10, 1, 0.6, 0.6 );
setScaleKey( spep_4-3 + 12, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 14, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_4-3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_4-3 + 20, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 22, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 24, 1, 0.64, 0.64 );
setScaleKey( spep_4-3 + 26, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 28, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 30, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 32, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 34, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 36, 1, 0.69, 0.69 );
setScaleKey( spep_4-3 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 42, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 44, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 46, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_4-3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_4-3 + 52, 1, 0.76, 0.76 );
setScaleKey( spep_4-3 + 54, 1, 0.77, 0.77 );
setScaleKey( spep_4-3 + 56, 1, 0.77, 0.77 );
setScaleKey( spep_4-3 + 58, 1, 0.78, 0.78 );

setRotateKey( spep_4 + 0, 1, -36.9 );
setRotateKey( spep_4-3 + 58, 1, -36.9 );

shuchusen5 = entryEffectLife( spep_4-3 + 64,  906, 156, 0x100, -1, 0, 0, -9.9 );

setEffMoveKey( spep_4-3 + 64, shuchusen5, 0, -9.9 , 0 );
setEffMoveKey( spep_4-3 + 220, shuchusen5, 0, -9.9 , 0 );

setEffScaleKey( spep_4-3 + 64, shuchusen5, 1.07, 1.92 );
setEffScaleKey( spep_4-3 + 220, shuchusen5, 1.07, 1.92 );

setEffRotateKey( spep_4-3 + 64, shuchusen5, 180 );
setEffRotateKey( spep_4-3 + 220, shuchusen5, 180 );

setEffAlphaKey( spep_4-3 + 64, shuchusen5, 191 );
setEffAlphaKey( spep_4-3 + 220, shuchusen5, 191 );

--文字エントリー
ctzudodo = entryEffectLife( spep_4 ,  10014, 56 , 0x100, -1, 0, -34.7, 347.1 );--ズドドドッ

setEffMoveKey( spep_4 , ctzudodo, -34.7, 347.1 , 0 );
setEffMoveKey( spep_4 -3 + 4, ctzudodo, -22.2, 321 , 0 );
setEffMoveKey( spep_4 -3 + 6, ctzudodo, -15.2, 342.1 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctzudodo, -15.9, 312.5 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctzudodo, -24.1, 344.3 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctzudodo, -28.5, 345.5 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctzudodo, -26.5, 328.2 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzudodo, -29.1, 349.3 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzudodo, -27, 331.5 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzudodo, -29.7, 353.2 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzudodo, -27.5, 334.8 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzudodo, -30.3, 357 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzudodo, -28, 338.1 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzudodo, -30.9, 360.9 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzudodo, -28.5, 341.4 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzudodo, -31.5, 364.8 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzudodo, -29.1, 344.6 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzudodo, -32.1, 368.6 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzudodo, -29.6, 347.9 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzudodo, -32.6, 372.5 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzudodo, -30.1, 351.2 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzudodo, -33.2, 376.3 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzudodo, -30.6, 354.5 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzudodo, -33.8, 380.2 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzudodo, -31.1, 357.8 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzudodo, -34.4, 384 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzudodo, -31.7, 361.1 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzudodo, -35, 387.9 , 0 );
setEffMoveKey( spep_4 -2 + 58, ctzudodo, -32.2, 364.3 , 0 );

setEffScaleKey( spep_4 , ctzudodo, 1.19, 1.19 );
setEffScaleKey( spep_4 -3 + 4, ctzudodo, 2.66, 2.66 );
setEffScaleKey( spep_4 -3 + 6, ctzudodo, 4.14, 4.14 );
setEffScaleKey( spep_4 -3 + 8, ctzudodo, 3.47, 3.47 );
setEffScaleKey( spep_4 -3 + 10, ctzudodo, 2.8, 2.8 );
setEffScaleKey( spep_4 -3 + 12, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_4 -3 + 14, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_4 -3 + 16, ctzudodo, 2.2, 2.2 );
setEffScaleKey( spep_4 -3 + 18, ctzudodo, 2.23, 2.23 );
setEffScaleKey( spep_4 -3 + 20, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_4 -3 + 22, ctzudodo, 2.29, 2.29 );
setEffScaleKey( spep_4 -3 + 24, ctzudodo, 2.33, 2.33 );
setEffScaleKey( spep_4 -3 + 26, ctzudodo, 2.36, 2.36 );
setEffScaleKey( spep_4 -3 + 28, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_4 -3 + 30, ctzudodo, 2.42, 2.42 );
setEffScaleKey( spep_4 -3 + 32, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_4 -3 + 34, ctzudodo, 2.49, 2.49 );
setEffScaleKey( spep_4 -3 + 36, ctzudodo, 2.52, 2.52 );
setEffScaleKey( spep_4 -3 + 38, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_4 -3 + 40, ctzudodo, 2.59, 2.59 );
setEffScaleKey( spep_4 -3 + 42, ctzudodo, 2.62, 2.62 );
setEffScaleKey( spep_4 -3 + 44, ctzudodo, 2.65, 2.65 );
setEffScaleKey( spep_4 -3 + 46, ctzudodo, 2.68, 2.68 );
setEffScaleKey( spep_4 -3 + 48, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_4 -3 + 50, ctzudodo, 2.75, 2.75 );
setEffScaleKey( spep_4 -3 + 52, ctzudodo, 2.78, 2.78 );
setEffScaleKey( spep_4 -3 + 54, ctzudodo, 2.81, 2.81 );
setEffScaleKey( spep_4 -3 + 56, ctzudodo, 2.84, 2.84 );
setEffScaleKey( spep_4 -2 + 58, ctzudodo, 2.88, 2.88 );

setEffRotateKey( spep_4 , ctzudodo, -60.1 );
setEffRotateKey( spep_4 -2 + 58, ctzudodo, -60.1 );

setEffAlphaKey( spep_4 , ctzudodo, 255 );
setEffAlphaKey( spep_4 -2 + 58, ctzudodo, 255 );

--SE
playSe( spep_4 + 56, 1024 );
setSeVolume( spep_4 + 56, 1159,56 );
playSe( spep_4 + 56, 1159 );

stopSe( spep_4 + 56, se_1177, 0 );
--黒背景
entryFadeBg( spep_4, 0,220,0, 0, 0, 0, 200 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 62 );
endPhase( spep_4 + 210 );


end
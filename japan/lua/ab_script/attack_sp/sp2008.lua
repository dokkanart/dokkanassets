--1019710:カリフラ_エネルギーブラスト
--sp_effect_a1_00238

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
SP_01=	155467	;--	画面外アウト→インパンチ：敵より前
SP_02=	155468	;--	画面外アウト→インパンチ：敵より後ろ
SP_03=	155469	;--	ラッシュ：敵より前
SP_04=	155470	;--	ラッシュ：敵より後ろ
SP_05=	155471	;--	セリフカットイン、気弾溜め
SP_06=	155472	;--	気弾発射
SP_07=	155473	;--	気弾着弾：敵より前
SP_08=	155474	;--	気弾着弾：敵より後ろ
SP_09=	155475	;--	ギャン

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

--[[
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
]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 画面外アウト→インパンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, panting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_f, 0 );
setEffRotateKey( spep_0 + 96, panting_f, 0 );
setEffAlphaKey( spep_0 + 0, panting_f, 255 );
setEffAlphaKey( spep_0 + 94, panting_f, 255 );
setEffAlphaKey( spep_0 + 95, panting_f, 255 );
setEffAlphaKey( spep_0 + 96, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, panting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_b, 0 );
setEffRotateKey( spep_0 + 96, panting_b, 0 );
setEffAlphaKey( spep_0 + 0, panting_b, 255 );
setEffAlphaKey( spep_0 + 94, panting_b, 255 );
setEffAlphaKey( spep_0 + 95, panting_b, 255 );
setEffAlphaKey( spep_0 + 96, panting_b, 0 );
--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0-3 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 212.5, 156 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 206.1, 151.9 , 0 );
setMoveKey( spep_0-3 + 4, 1, 199.8, 147.8 , 0 );
setMoveKey( spep_0-3 + 6, 1, 193.5, 143.7 , 0 );
setMoveKey( spep_0-3 + 8, 1, 187.2, 139.7 , 0 );
setMoveKey( spep_0-3 + 10, 1, 181, 135.6 , 0 );
setMoveKey( spep_0-3 + 12, 1, 174.8, 131.6 , 0 );
setMoveKey( spep_0-3 + 14, 1, 168.6, 127.6 , 0 );
setMoveKey( spep_0-3 + 16, 1, 162.5, 123.7 , 0 );
setMoveKey( spep_0-3 + 18, 1, 156.4, 119.7 , 0 );
setMoveKey( spep_0-3 + 20, 1, 150.4, 115.8 , 0 );
setMoveKey( spep_0-3 + 22, 1, 144.3, 111.9 , 0 );
setMoveKey( spep_0-3 + 24, 1, 138.4, 108 , 0 );
setMoveKey( spep_0-3 + 26, 1, 132.4, 104.2 , 0 );
setMoveKey( spep_0-3 + 28, 1, 126.5, 100.3 , 0 );
setMoveKey( spep_0-3 + 30, 1, 124.6, 98.7 , 0 );
setMoveKey( spep_0-3 + 32, 1, 122.7, 97.1 , 0 );
setMoveKey( spep_0-3 + 34, 1, 120.8, 95.4 , 0 );
setMoveKey( spep_0-3 + 36, 1, 118.9, 93.8 , 0 );
setMoveKey( spep_0-3 + 38, 1, 117, 92.2 , 0 );
setMoveKey( spep_0-3 + 40, 1, 115.1, 90.6 , 0 );
setMoveKey( spep_0-3 + 42, 1, 113.2, 89 , 0 );

setScaleKey( spep_0 + 0, 1, 0.54, 0.54 );
--setScaleKey( spep_0-3 + 2, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 6, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 10, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 12, 1, 0.73, 0.73 );
setScaleKey( spep_0-3 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 16, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 20, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 22, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 24, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_0-3 + 28, 1, 1.01, 1.01 );
setScaleKey( spep_0-3 + 30, 1, 1.03, 1.03 );
setScaleKey( spep_0-3 + 32, 1, 1.04, 1.04 );
setScaleKey( spep_0-3 + 34, 1, 1.06, 1.06 );
setScaleKey( spep_0-3 + 36, 1, 1.08, 1.08 );
setScaleKey( spep_0-3 + 38, 1, 1.1, 1.1 );
setScaleKey( spep_0-3 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_0-3 + 42, 1, 1.14, 1.14 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 40, 1, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 256, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE0, 0 );


    pauseAll( SP_dodge, 67 );
    
    --敵の動き
    setMoveKey( SP_dodge+9, 1, 113.2, 89 , 0 );
    setScaleKey( SP_dodge+9 + 42, 1, 1.14, 1.14 );
    setRotateKey( SP_dodge+9, 1, 0 );


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
changeAnime( spep_0-3 + 58, 1, 117 );
changeAnime( spep_0-3 + 70, 1, 108 );

setMoveKey( spep_0-3 + 44, 1, 111.3, 87.3 , 0 );
setMoveKey( spep_0-3 + 46, 1, 109.5, 85.7 , 0 );
setMoveKey( spep_0-3 + 48, 1, 107.6, 84.1 , 0 );
setMoveKey( spep_0-3 + 50, 1, 105.7, 82.5 , 0 );
setMoveKey( spep_0-3 + 52, 1, 103.8, 80.9 , 0 );
setMoveKey( spep_0-3 + 54, 1, 101.9, 79.3 , 0 );
setMoveKey( spep_0-3 + 57, 1, 99.9, 77.7 , 0 );
setMoveKey( spep_0-3 + 58, 1, 98, 76 , 0 );
setMoveKey( spep_0-3 + 60, 1, 96.1, 74.3 , 0 );
setMoveKey( spep_0-3 + 62, 1, 93, 72.1 , 0 );
setMoveKey( spep_0-3 + 64, 1, 89.9, 69.7 , 0 );
setMoveKey( spep_0-3 + 66, 1, 86.8, 67.4 , 0 );
setMoveKey( spep_0-3 + 69, 1, 83.6, 65 , 0 );
setMoveKey( spep_0-3 + 70, 1, 98.5, 107.8 , 0 );
setMoveKey( spep_0-3 + 72, 1, 142.8, 132.6 , 0 );
setMoveKey( spep_0-3 + 74, 1, 110.3, 142.1 , 0 );
setMoveKey( spep_0-3 + 76, 1, 145.4, 159.8 , 0 );
setMoveKey( spep_0-3 + 78, 1, 143.2, 158.6 , 0 );
setMoveKey( spep_0-3 + 80, 1, 149.6, 165.9 , 0 );
setMoveKey( spep_0-3 + 82, 1, 155.1, 172.1 , 0 );
setMoveKey( spep_0-3 + 84, 1, 159.8, 177.4 , 0 );
setMoveKey( spep_0-3 + 86, 1, 163.9, 182 , 0 );
setMoveKey( spep_0-3 + 88, 1, 167.4, 186.1 , 0 );
setMoveKey( spep_0-3 + 90, 1, 170.6, 189.7 , 0 );
setMoveKey( spep_0-3 + 92, 1, 173.4, 192.9 , 0 );
setMoveKey( spep_0-3 + 94, 1, 176, 195.8 , 0 );
setMoveKey( spep_0 + 95, 1, 178.3, 198.4 , 0 );
--setMoveKey( spep_0-3 + 98, 1, 180.5, 200.8 , 0 );

setScaleKey( spep_0-3 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 46, 1, 1.18, 1.18 );
setScaleKey( spep_0-3 + 48, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 50, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 52, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 54, 1, 1.32, 1.32 );
setScaleKey( spep_0-3 + 57, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 58, 1, 1.41, 1.41 );
setScaleKey( spep_0-3 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 62, 1, 1.52, 1.52 );
setScaleKey( spep_0-3 + 64, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 66, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 69, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 70, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 95, 1, 1.89, 1.89 );

setRotateKey( spep_0 + 95, 1, 0 );


--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 70,  906, 29, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 70, shuchusen1, 29, 20 );
setEffMoveKey( spep_0-3 + 70, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 70, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_0 + 96, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_0-3 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 + 96, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 94, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 95, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen1, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 70,  10005, 8, 0x100, -1, 0, -79.8, 307.5 );--ガッ
setEffShake( spep_0-3 + 70, ctga, 8, 10 );
setEffMoveKey( spep_0-3 + 70, ctga, -79.8, 307.5 , 0 );
setEffMoveKey( spep_0-3 + 72, ctga, -79.8, 307.4 , 0 );
setEffMoveKey( spep_0-3 + 76, ctga, -79.8, 307.4 , 0 );
setEffMoveKey( spep_0-3 + 78, ctga, -79.7, 307.3 , 0 );

a=0.8;

setEffScaleKey( spep_0-3 + 70, ctga, 0.59+a, 0.59+a );
setEffScaleKey( spep_0-3 + 72, ctga, 0.93+a, 0.93+a );
setEffScaleKey( spep_0-3 + 74, ctga, 1.26+a, 1.26+a );
setEffScaleKey( spep_0-3 + 76, ctga, 1.31+a, 1.31+a );
setEffScaleKey( spep_0-3 + 78, ctga, 1.37+a, 1.37+a );

setEffRotateKey( spep_0-3 + 70, ctga, 15.9 );
setEffRotateKey( spep_0-3 + 78, ctga, 15.9 );

setEffAlphaKey( spep_0-3 + 70, ctga, 255 );
setEffAlphaKey( spep_0-3 + 74, ctga, 255 );
setEffAlphaKey( spep_0-3 + 76, ctga, 128 );
setEffAlphaKey( spep_0-3 + 78, ctga, 0 );

--SE
se_1116 = playSe( spep_0 + 52, 1116 );
playSe( spep_0 + 56, 1003 );
playSe( spep_0 + 75, 1000 );
playSe( spep_0 + 77, 1012 );
playSe( spep_0 + 78, 1110 );

stopSe( spep_0 + 75, se_1116, 19 );

--白フェード
--entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+66 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+96;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fight_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fight_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fight_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fight_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fight_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fight_f, 0 );
setEffRotateKey( spep_1 + 160, fight_f, 0 );
setEffAlphaKey( spep_1 + 0, fight_f, 255 );
setEffAlphaKey( spep_1 + 122, fight_f, 255 );
setEffAlphaKey( spep_1 + 123, fight_f, 0 );
setEffAlphaKey( spep_1 + 124, fight_f, 0 );
setEffAlphaKey( spep_1 + 160, fight_f, 0 );

-- ** エフェクト等 ** --
fight_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fight_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fight_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fight_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fight_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fight_b, 0 );
setEffRotateKey( spep_1 + 160, fight_b, 0 );
setEffAlphaKey( spep_1 + 0, fight_b, 255 );
setEffAlphaKey( spep_1 + 160, fight_b, 255 );

-- ** エフェクト等 ** --
fight_n = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fight_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fight_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fight_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fight_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fight_n, 0 );
setEffRotateKey( spep_1 + 160, fight_n, 0 );
setEffAlphaKey( spep_1 + 0, fight_n, 0 );
setEffAlphaKey( spep_1 + 122, fight_n, 0 );
setEffAlphaKey( spep_1 + 123, fight_n, 255 );
setEffAlphaKey( spep_1 + 124, fight_n, 255 );
setEffAlphaKey( spep_1 + 160, fight_n, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 14,  906, 12, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 14, shuchusen2, 12, 20 );
setEffMoveKey( spep_1-3 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 26, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 14, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 26, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 14, shuchusen2, 0 );
setEffRotateKey( spep_1-3 + 26, shuchusen2, 0 );

setEffAlphaKey( spep_1-3 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 26, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 48,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 48, shuchusen3, 8, 20 );
setEffMoveKey( spep_1-3 + 48, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 56, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 48, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 56, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 48, shuchusen3, 0 );
setEffRotateKey( spep_1-3 + 56, shuchusen3, 0 );

setEffAlphaKey( spep_1-3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_1-3 + 56, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_1-3 + 68,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 68, shuchusen4, 8, 20 );
setEffMoveKey( spep_1-3 + 68, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 76, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 68, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 76, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 68, shuchusen4, 0 );
setEffRotateKey( spep_1-3 + 76, shuchusen4, 0 );

setEffAlphaKey( spep_1-3 + 68, shuchusen4, 255 );
setEffAlphaKey( spep_1-3 + 76, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_1-3 + 82,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 82, shuchusen5, 8, 20 );
setEffMoveKey( spep_1-3 + 82, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 90, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 82, shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 90, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 82, shuchusen5, 0 );
setEffRotateKey( spep_1-3 + 90, shuchusen5, 0 );

setEffAlphaKey( spep_1-3 + 82, shuchusen5, 255 );
setEffAlphaKey( spep_1-3 + 90, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_1-3 + 124,  906, 34, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 124, shuchusen6, 34, 20 );
setEffMoveKey( spep_1-3 + 124, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 158, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 124, shuchusen6, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 158, shuchusen6, 1.8, 1.8 );

setEffRotateKey( spep_1-3 + 124, shuchusen6, 0 );
setEffRotateKey( spep_1-3 + 158, shuchusen6, 0 );

setEffAlphaKey( spep_1-3 + 124, shuchusen6, 255 );
setEffAlphaKey( spep_1-3 + 158, shuchusen6, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 14,  10020, 12, 0x100, -1, 0, -31.9, 286.6 );
setEffShake( spep_1-3 + 14, ctbaki, 12, 10 );
setEffMoveKey( spep_1-3 + 14, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1-3 + 24, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbaki, -31.9, 286.6 , 0 );

setEffScaleKey( spep_1-3 + 14, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1-3 + 26, ctbaki, 1.73, 1.73 );

setEffRotateKey( spep_1-3 + 14, ctbaki, 15 );
setEffRotateKey( spep_1-3 + 26, ctbaki, 15 );

setEffAlphaKey( spep_1-3 + 14, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 26, ctbaki, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_1-3 + 48,  10005, 8, 0x100, -1, 0, 63.4, 307.5 );
setEffShake( spep_1-3 + 48, ctga2, 8, 10 );
setEffMoveKey( spep_1-3 + 48, ctga2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1-3 + 50, ctga2, 73.7, 312.6 , 0 );
setEffMoveKey( spep_1-3 + 52, ctga2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1-3 + 54, ctga2, 73.7, 312.6 , 0 );
setEffMoveKey( spep_1-3 + 56, ctga2, 63.4, 307.5 , 0 );

setEffScaleKey( spep_1-3 + 48, ctga2, 1.42, 1.42 );
setEffScaleKey( spep_1-3 + 56, ctga2, 1.42, 1.42 );

setEffRotateKey( spep_1-3 + 48, ctga2, 0 );
setEffRotateKey( spep_1-3 + 56, ctga2, 0 );

setEffAlphaKey( spep_1-3 + 48, ctga2, 255 );
setEffAlphaKey( spep_1-3 + 56, ctga2, 255 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_1-3 + 68,  10020, 8, 0x100, -1, 0, 6.6, 296.1 );
setEffShake( spep_1-3 + 68, ctbaki2, 8, 10 );
setEffMoveKey( spep_1-3 + 68, ctbaki2, 6.6, 296.1 , 0 );
setEffMoveKey( spep_1-3 + 70, ctbaki2, 18, 307.5 , 0 );
setEffMoveKey( spep_1-3 + 72, ctbaki2, 6.6, 296.1 , 0 );
setEffMoveKey( spep_1-3 + 74, ctbaki2, 18, 307.5 , 0 );
setEffMoveKey( spep_1-3 + 76, ctbaki2, 6.6, 296.1 , 0 );

setEffScaleKey( spep_1-3 + 68, ctbaki2, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 76, ctbaki2, 1.26, 1.26 );

setEffRotateKey( spep_1-3 + 68, ctbaki2, 0 );
setEffRotateKey( spep_1-3 + 76, ctbaki2, 0 );

setEffAlphaKey( spep_1-3 + 68, ctbaki2, 255 );
setEffAlphaKey( spep_1-3 + 76, ctbaki2, 255 );

--文字エントリー
ctga3 = entryEffectLife( spep_1-3 + 82,  10005, 8, 0x100, -1, 0, 127.6, 309.7 );
setEffShake( spep_1-3 + 82, ctga3, 8, 10 );
setEffMoveKey( spep_1-3 + 82, ctga3, 127.6, 309.7 , 0 );
setEffMoveKey( spep_1-3 + 84, ctga3, 138.8, 310.5 , 0 );
setEffMoveKey( spep_1-3 + 86, ctga3, 127.6, 309.7 , 0 );
setEffMoveKey( spep_1-3 + 88, ctga3, 138.8, 310.5 , 0 );
setEffMoveKey( spep_1-3 + 90, ctga3, 127.6, 309.7 , 0 );

setEffScaleKey( spep_1-3 + 82, ctga3, 1.41, 1.41 );
setEffScaleKey( spep_1-3 + 90, ctga3, 1.41, 1.41 );

setEffRotateKey( spep_1-3 + 82, ctga3, 23 );
setEffRotateKey( spep_1-3 + 90, ctga3, 23 );

setEffAlphaKey( spep_1-3 + 82, ctga3, 255 );
setEffAlphaKey( spep_1-3 + 90, ctga3, 255 );


--文字エントリー
ctdogon = entryEffectLife( spep_1 + 124,  10018, 32, 0x100, -1, 0, -79.5, 306.8 );
setEffShake( spep_1 + 124, ctdogon, 32, 10 );
setEffMoveKey( spep_1 + 124, ctdogon, -79.5, 306.8 , 0 );
setEffMoveKey( spep_1 + 126, ctdogon, -85, 363 , 0 );
setEffMoveKey( spep_1 + 128, ctdogon, -75.6, 410.1 , 0 );
setEffMoveKey( spep_1 + 130, ctdogon, -89.9, 412.2 , 0 );
setEffMoveKey( spep_1 + 132, ctdogon, -86.4, 423.7 , 0 );
setEffMoveKey( spep_1 + 134, ctdogon, -87.9, 414.8 , 0 );
setEffMoveKey( spep_1 + 136, ctdogon, -95, 431.8 , 0 );
setEffMoveKey( spep_1 + 138, ctdogon, -91.6, 426.1 , 0 );
setEffMoveKey( spep_1 + 140, ctdogon, -101.1, 433.1 , 0 );
setEffMoveKey( spep_1 + 142, ctdogon, -98.5, 431.2 , 0 );
setEffMoveKey( spep_1 + 144, ctdogon, -100.8, 442.2 , 0 );
setEffMoveKey( spep_1 + 146, ctdogon, -103.7, 437.6 , 0 );
setEffMoveKey( spep_1 + 148, ctdogon, -109.9, 449.7 , 0 );
setEffMoveKey( spep_1 + 150, ctdogon, -103.8, 448.6 , 0 );
setEffMoveKey( spep_1 + 152, ctdogon, -129, 472 , 0 );
setEffMoveKey( spep_1 + 154, ctdogon, -123.3, 475.5 , 0 );
setEffMoveKey( spep_1 + 156, ctdogon, -134.6, 488.9 , 0 );

setEffScaleKey( spep_1 + 124, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_1 + 126, ctdogon, 1.62, 1.62 );
setEffScaleKey( spep_1 + 128, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_1 + 130, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_1 + 132, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_1 + 134, ctdogon, 2.67, 2.67 );
setEffScaleKey( spep_1 + 136, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_1 + 138, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_1 + 140, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_1 + 142, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_1 + 144, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_1 + 146, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_1 + 148, ctdogon, 2.84, 2.84 );
setEffScaleKey( spep_1 + 150, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_1 + 152, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_1 + 154, ctdogon, 4.18, 4.18 );
setEffScaleKey( spep_1 + 156, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_1 + 124, ctdogon, -30 );
setEffRotateKey( spep_1 + 126, ctdogon, -29.9 );
setEffRotateKey( spep_1 + 128, ctdogon, -29.8 );
setEffRotateKey( spep_1 + 132, ctdogon, -29.8 );
setEffRotateKey( spep_1 + 134, ctdogon, -29.9 );
setEffRotateKey( spep_1 + 144, ctdogon, -29.9 );
setEffRotateKey( spep_1 + 146, ctdogon, -30 );
setEffRotateKey( spep_1 + 156, ctdogon, -30 );

setEffAlphaKey( spep_1 + 124, ctdogon, 255 );
setEffAlphaKey( spep_1 + 150, ctdogon, 255 );
setEffAlphaKey( spep_1 + 152, ctdogon, 170 );
setEffAlphaKey( spep_1 + 154, ctdogon, 85 );
setEffAlphaKey( spep_1 + 156, ctdogon, 0 );

--敵の動き
setDisp( spep_1-3 + 136, 1, 0 );

changeAnime( spep_1 + 0, 1, 108 );
changeAnime( spep_1-3 + 14, 1, 106 );
changeAnime( spep_1-3 + 48, 1, 108 );
changeAnime( spep_1-3 + 68, 1, 106 );
changeAnime( spep_1-3 + 82, 1, 108 );
changeAnime( spep_1-3 + 106, 1, 106 );
changeAnime( spep_1-3 + 126, 1, 107 );

setMoveKey( spep_1 + 0, 1, 177, 145.2 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 138.9, 128.3 , 0 );
setMoveKey( spep_1-3 + 4, 1, 100.6, 111.1 , 0 );
setMoveKey( spep_1-3 + 6, 1, 62.1, 93.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 23.4, 75.7 , 0 );
setMoveKey( spep_1-3 + 10, 1, -15.5, 57.5 , 0 );
setMoveKey( spep_1-3 + 13, 1, -54.6, 38.9 , 0 );
setMoveKey( spep_1-3 + 14, 1, -11, 69.2 , 0 );
setMoveKey( spep_1-3 + 15, 1, -11, 69.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, -85.7, 25.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, -124.1, 19.6 , 0 );
setMoveKey( spep_1-3 + 20, 1, -130.9, 11 , 0 );
setMoveKey( spep_1-3 + 22, 1, -117.7, 22.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, -134.4, 3.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, -111.2, 25.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, -117.9, 16.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, -114.7, 17.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, -111.5, 19.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, -108.2, 20.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, -105, 21.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, -101.7, 23.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, -98.5, 24.7 , 0 );
setMoveKey( spep_1-3 + 42, 1, -95.3, 26.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, -92, 27.4 , 0 );
setMoveKey( spep_1-3 + 47, 1, -88.8, 28.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, -55, 42 , 0 );
setMoveKey( spep_1-3 + 49, 1, -55, 42 , 0 );
setMoveKey( spep_1-3 + 50, 1, -40, 53.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, -54.9, 35.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, -29.9, 57.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, -34.9, 49.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, -29.9, 51 , 0 );
setMoveKey( spep_1-3 + 60, 1, -24.8, 52.8 , 0 );
setMoveKey( spep_1-3 + 62, 1, -19.8, 54.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, -14.8, 56.4 , 0 );
setMoveKey( spep_1-3 + 67, 1, -9.7, 58.2 , 0 );
setMoveKey( spep_1-3 + 68, 1, -31.8, 49.8 , 0 );
setMoveKey( spep_1-3 + 70, 1, -9.4, 63.6 , 0 );
setMoveKey( spep_1-3 + 72, 1, -17, 47.5 , 0 );
setMoveKey( spep_1-3 + 74, 1, 15.4, 71.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 17.9, 65.1 , 0 );
setMoveKey( spep_1-3 + 78, 1, 30.3, 69 , 0 );
setMoveKey( spep_1-3 + 81, 1, 42.7, 72.8 , 0 );
setMoveKey( spep_1-3 + 82, 1, 81, 89.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 71.7, 71.8 , 0 );
setMoveKey( spep_1-3 + 86, 1, 102.5, 94.4 , 0 );
setMoveKey( spep_1-3 + 88, 1, 103.3, 87 , 0 );
setMoveKey( spep_1-3 + 90, 1, 114.1, 89.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 124.8, 92.2 , 0 );
setMoveKey( spep_1-3 + 94, 1, 135.6, 94.8 , 0 );
setMoveKey( spep_1-3 + 96, 1, 143.7, 96.1 , 0 );
setMoveKey( spep_1-3 + 98, 1, 151.8, 97.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 159.8, 98.8 , 0 );
setMoveKey( spep_1-3 + 102, 1, 167.9, 100.1 , 0 );
setMoveKey( spep_1-3 + 105, 1, 175.9, 101.5 , 0 );
setMoveKey( spep_1-3 + 106, 1, 106.9, 99.5 , 0 );
setMoveKey( spep_1-3 + 108, 1, 107.3, 98.2 , 0 );
setMoveKey( spep_1-3 + 110, 1, 107.7, 96.9 , 0 );
setMoveKey( spep_1-3 + 112, 1, 108.1, 95.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, 108.5, 94.2 , 0 );
setMoveKey( spep_1-3 + 116, 1, 108.9, 92.9 , 0 );
setMoveKey( spep_1-3 + 118, 1, 109.4, 91.5 , 0 );
setMoveKey( spep_1-3 + 120, 1, 109.8, 90.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 110.2, 88.9 , 0 );
setMoveKey( spep_1-3 + 124, 1, 110.6, 87.6 , 0 );
setMoveKey( spep_1-3 + 125, 1, 110.6, 87.6 , 0 );
setMoveKey( spep_1-3 + 126, 1, 161.3, 83.3 , 0 );
setMoveKey( spep_1-3 + 128, 1, 197.9, 95.8 , 0 );
setMoveKey( spep_1-3 + 130, 1, 278, 151.2 , 0 );
setMoveKey( spep_1-3 + 132, 1, 331.8, 179.3 , 0 );
setMoveKey( spep_1-3 + 134, 1, 409.3, 230.4 , 0 );
setMoveKey( spep_1-3 + 136, 1, 460.3, 254.2 , 0 );

setScaleKey( spep_1 + 0, 1, 2.03, 2.03 );
--setScaleKey( spep_1-3 + 2, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 4, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 6, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 8, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 10, 1, 1.71, 1.7 );
setScaleKey( spep_1-3 + 13, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 14, 1, 1.52, 1.51 );
setScaleKey( spep_1-3 + 15, 1, 1.52, 1.51 );
setScaleKey( spep_1-3 + 16, 1, 1.46, 1.45 );
setScaleKey( spep_1-3 + 18, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 124, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 125, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 126, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 128, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 130, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 132, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 134, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 136, 1, 2.17, 2.17 );

setRotateKey( spep_1 + 0, 1, -20 );
--setRotateKey( spep_1-3 + 2, 1, -19.4 );
setRotateKey( spep_1-3 + 4, 1, -18.9 );
setRotateKey( spep_1-3 + 6, 1, -18.3 );
setRotateKey( spep_1-3 + 8, 1, -17.7 );
setRotateKey( spep_1-3 + 10, 1, -17.1 );
setRotateKey( spep_1-3 + 13, 1, -16.6 );
setRotateKey( spep_1-3 + 14, 1, -55.9 );
setRotateKey( spep_1-3 + 15, 1, -55.9 );
setRotateKey( spep_1-3 + 16, 1, -55.4 );
setRotateKey( spep_1-3 + 18, 1, -54.9 );
setRotateKey( spep_1-3 + 20, 1, -54.6 );
setRotateKey( spep_1-3 + 22, 1, -54.4 );
setRotateKey( spep_1-3 + 24, 1, -54.2 );
setRotateKey( spep_1-3 + 26, 1, -53.9 );
setRotateKey( spep_1-3 + 28, 1, -53.7 );
setRotateKey( spep_1-3 + 30, 1, -53.5 );
setRotateKey( spep_1-3 + 32, 1, -53.2 );
setRotateKey( spep_1-3 + 34, 1, -53 );
setRotateKey( spep_1-3 + 36, 1, -52.8 );
setRotateKey( spep_1-3 + 38, 1, -52.6 );
setRotateKey( spep_1-3 + 40, 1, -52.3 );
setRotateKey( spep_1-3 + 42, 1, -52.1 );
setRotateKey( spep_1-3 + 44, 1, -51.9 );
setRotateKey( spep_1-3 + 47, 1, -51.6 );
setRotateKey( spep_1-3 + 48, 1, -20 );
setRotateKey( spep_1-3 + 67, 1, -20 );
setRotateKey( spep_1-3 + 68, 1, -54.9 );
setRotateKey( spep_1-3 + 81, 1, -54.9 );
setRotateKey( spep_1-3 + 82, 1, -20 );
setRotateKey( spep_1-3 + 105, 1, -20 );
setRotateKey( spep_1-3 + 106, 1, -54.9 );
setRotateKey( spep_1-3 + 108, 1, -54.5 );
setRotateKey( spep_1-3 + 110, 1, -54.1 );
setRotateKey( spep_1-3 + 112, 1, -53.7 );
setRotateKey( spep_1-3 + 114, 1, -53.3 );
setRotateKey( spep_1-3 + 116, 1, -52.9 );
setRotateKey( spep_1-3 + 118, 1, -52.6 );
setRotateKey( spep_1-3 + 120, 1, -52.2 );
setRotateKey( spep_1-3 + 122, 1, -51.8 );
setRotateKey( spep_1-3 + 124, 1, -51.4 );
setRotateKey( spep_1-3 + 125, 1, -51.4 );
setRotateKey( spep_1-3 + 126, 1, -81.3 );
setRotateKey( spep_1-3 + 128, 1, -81.3 );
setRotateKey( spep_1-3 + 130, 1, -81.2 );
setRotateKey( spep_1-3 + 136, 1, -81.2 );

--SE
playSe( spep_1 + 9, 1189 );
playSe( spep_1 + 13, 1010 );
playSe( spep_1 + 13, 1001 );
playSe( spep_1 + 50, 1007 );
playSe( spep_1 + 51, 1110 );
playSe( spep_1 + 64, 1189 );
playSe( spep_1 + 68, 1012 );
playSe( spep_1 + 68, 1010 );
playSe( spep_1 + 86, 1013 );
setSeVolume( spep_1 + 86, 1013, 82 );
playSe( spep_1 + 88, 1000 );
playSe( spep_1 + 88, 1009 );
setSeVolume( spep_1 + 88, 1009, 58 );
playSe( spep_1 + 119, 1004 );
playSe( spep_1 + 123, 1120 );
se_1154 = playSe( spep_1 + 157, 1154 );
setSeVolume( spep_1 + 157, 1154, 0 );

--白フェード
entryFade( spep_1+120 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1+152 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+160;

------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_2,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2, shuchusen7, 98, 20 );
setEffMoveKey( spep_2, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_2, shuchusen7, 1, 1 );
setEffScaleKey( spep_2 + 98, shuchusen7, 1, 1 );

setEffRotateKey( spep_2, shuchusen7, 180 );
setEffRotateKey( spep_2 + 98, shuchusen7, 180 );

setEffAlphaKey( spep_2, shuchusen7, 0 );
setEffAlphaKey( spep_2-3 + 15, shuchusen7, 0 );
setEffAlphaKey( spep_2-3 + 16, shuchusen7, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen7, 255 );

--顔カットイン
speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_2 +12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 112 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey(  spep_2 +12,  ctgogo,  0);
setEffRotateKey(  spep_2 +84,  ctgogo,  0);

setEffScaleKey(  spep_2 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo, 1.07, 1.07 );

--白フェード
entryFade( spep_2+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 100, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 音 ** --
playSe( spep_2 + 5, 49 );
playSe( spep_2 + 12, 1018 );
se_1191 = playSe( spep_2 + 6, 1191 );
setSeVolume( spep_2 + 6, 1191, 178 );
se_1037 = playSe( spep_2 + 6, 1037 );
setSeVolume( spep_2 + 6, 1037, 69 );

stopSe( spep_2 + 52, se_1191, 23 );

setSeVolume( spep_2 + 6, 1154, 0 );
setSeVolume( spep_2 + 7, 1154, 100 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

stopSe( spep_3 , se_1154, 0 );
stopSe( spep_3 , se_1037, 0 );

--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 62, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 62, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 62, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 62, beam, 255 );
setEffAlphaKey( spep_4 + 63, beam, 255 );
setEffAlphaKey( spep_4 + 64, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-1 + 20,  10012, 42, 0x100, -1, 0, 8.4, 221.7 );
setEffShake( spep_4-1 + 20, ctzuo, 42, 10 );
setEffMoveKey( spep_4-1 + 20, ctzuo, 8.4, 221.7 , 0 );
setEffMoveKey( spep_4-1 + 22, ctzuo, -11.6, 262.5 , 0 );
setEffMoveKey( spep_4-1 + 24, ctzuo, -53.5, 313.5 , 0 );
setEffMoveKey( spep_4-1 + 26, ctzuo, 2.7, 305.5 , 0 );
setEffMoveKey( spep_4-1 + 28, ctzuo, -53, 316.6 , 0 );
setEffMoveKey( spep_4-1 + 30, ctzuo, 2.1, 308.6 , 0 );
setEffMoveKey( spep_4-1 + 32, ctzuo, -52.5, 319.9 , 0 );
setEffMoveKey( spep_4-1 + 34, ctzuo, 1.4, 311.9 , 0 );
setEffMoveKey( spep_4-1 + 36, ctzuo, -52, 323.2 , 0 );
setEffMoveKey( spep_4-1 + 38, ctzuo, 0.8, 315 , 0 );
setEffMoveKey( spep_4-1 + 40, ctzuo, -51.6, 326.4 , 0 );
setEffMoveKey( spep_4-1 + 42, ctzuo, 0.2, 318.2 , 0 );
setEffMoveKey( spep_4-1 + 44, ctzuo, -51, 329.7 , 0 );
setEffMoveKey( spep_4-1 + 46, ctzuo, -29.5, 321.4 , 0 );
setEffMoveKey( spep_4-1 + 48, ctzuo, -50.6, 333 , 0 );
setEffMoveKey( spep_4-1 + 50, ctzuo, -28.9, 324.6 , 0 );
setEffMoveKey( spep_4-1 + 52, ctzuo, -50.1, 336.2 , 0 );
setEffMoveKey( spep_4-1 + 54, ctzuo, -28.2, 327.8 , 0 );
setEffMoveKey( spep_4-1 + 56, ctzuo, -49.6, 339.5 , 0 );
setEffMoveKey( spep_4-1 + 58, ctzuo, -27.6, 331 , 0 );
setEffMoveKey( spep_4-1 + 60, ctzuo, -22.3, 385.9 , 0 );
setEffMoveKey( spep_4-1 + 62, ctzuo, 4.9, 430.6 , 0 );

setEffScaleKey( spep_4-1 + 20, ctzuo, 0.17, 0.17 );
setEffScaleKey( spep_4-1 + 22, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_4-1 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-1 + 26, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4-1 + 28, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_4-1 + 30, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4-1 + 32, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_4-1 + 34, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_4-1 + 36, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_4-1 + 38, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-1 + 40, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_4-1 + 42, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_4-1 + 44, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4-1 + 46, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_4-1 + 48, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_4-1 + 50, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_4-1 + 52, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4-1 + 54, ctzuo, 2.88, 2.88 );
setEffScaleKey( spep_4-1 + 56, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_4-1 + 58, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4-1 + 60, ctzuo, 4.86, 4.86 );
setEffScaleKey( spep_4-1 + 62, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4-1 + 20, ctzuo, 7.2 );
setEffRotateKey( spep_4-1 + 62, ctzuo, 7.2 );

setEffAlphaKey( spep_4-1 + 20, ctzuo, 255 );
setEffAlphaKey( spep_4-1 + 58, ctzuo, 255 );
setEffAlphaKey( spep_4-1 + 60, ctzuo, 128 );
setEffAlphaKey( spep_4-1 + 62, ctzuo, 0 );

--SE
playSe( spep_4 + 2, 49 );
playSe( spep_4 + 18, 1027 );
playSe( spep_4 + 19, 1022 );
setSeVolume( spep_4 + 19, 1022, 126 );
se_1212 = playSe( spep_4 + 20, 1212 );
setSeVolume( spep_4 + 20, 1212, 56 );

--白フェード
entryFade( spep_4+58 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 62, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 62;
------------------------------------------------------
-- 気弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 60, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 60, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 60, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 34, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, -399.8, -694.5 , 0 );
setMoveKey( spep_5 + 2, 1, -375.5, -658.7 , 0 );
setMoveKey( spep_5 + 4, 1, -349, -618.8 , 0 );
setMoveKey( spep_5 + 6, 1, -320.2, -574.7 , 0 );
setMoveKey( spep_5 + 8, 1, -289.3, -526.4 , 0 );
setMoveKey( spep_5 + 10, 1, -256.2, -474 , 0 );
setMoveKey( spep_5 + 12, 1, -220.9, -417.4 , 0 );
setMoveKey( spep_5 + 14, 1, -183.5, -356.6 , 0 );
setMoveKey( spep_5 + 16, 1, -144, -291.6 , 0 );
setMoveKey( spep_5 + 18, 1, -102.5, -222.3 , 0 );
setMoveKey( spep_5 + 20, 1, -59, -148.8 , 0 );
setMoveKey( spep_5 + 22, 1, -13.4, -71 , 0 );
setMoveKey( spep_5 + 24, 1, 34.2, 11.1 , 0 );
setMoveKey( spep_5 + 26, 1, 83.6, 97.5 , 0 );
setMoveKey( spep_5 + 28, 1, 135.1, 188.2 , 0 );
setMoveKey( spep_5 + 30, 1, 117.1, 159.2 , 0 );
setMoveKey( spep_5 + 32, 1, 155.2, 187.6 , 0 );
setMoveKey( spep_5 + 34, 1, 147, 206.4 , 0 );

setScaleKey( spep_5 + 0, 1, 5, 5 );
setScaleKey( spep_5 + 2, 1, 4.86, 4.86 );
setScaleKey( spep_5 + 4, 1, 4.7, 4.7 );
setScaleKey( spep_5 + 6, 1, 4.52, 4.52 );
setScaleKey( spep_5 + 8, 1, 4.32, 4.32 );
setScaleKey( spep_5 + 10, 1, 4.1, 4.1 );
setScaleKey( spep_5 + 12, 1, 3.86, 3.86 );
setScaleKey( spep_5 + 14, 1, 3.59, 3.59 );
setScaleKey( spep_5 + 16, 1, 3.31, 3.31 );
setScaleKey( spep_5 + 18, 1, 3.01, 3.01 );
setScaleKey( spep_5 + 20, 1, 2.68, 2.68 );
setScaleKey( spep_5 + 22, 1, 2.34, 2.34 );
setScaleKey( spep_5 + 24, 1, 1.97, 1.97 );
setScaleKey( spep_5 + 26, 1, 1.59, 1.59 );
setScaleKey( spep_5 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 30, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 32, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 34, 1, 0.26, 0.26 );

setRotateKey( spep_5 + 0, 1, 6 );
setRotateKey( spep_5 + 2, 1, 5.9 );
setRotateKey( spep_5 + 4, 1, 5.8 );
setRotateKey( spep_5 + 6, 1, 5.6 );
setRotateKey( spep_5 + 8, 1, 5.5 );
setRotateKey( spep_5 + 10, 1, 5.4 );
setRotateKey( spep_5 + 12, 1, 5.3 );
setRotateKey( spep_5 + 14, 1, 5.1 );
setRotateKey( spep_5 + 16, 1, 5 );
setRotateKey( spep_5 + 18, 1, 4.9 );
setRotateKey( spep_5 + 20, 1, 4.7 );
setRotateKey( spep_5 + 22, 1, 4.6 );
setRotateKey( spep_5 + 24, 1, 4.5 );
setRotateKey( spep_5 + 26, 1, 4.4 );
setRotateKey( spep_5 + 28, 1, 4.2 );
setRotateKey( spep_5 + 30, 1, 21 );
setRotateKey( spep_5 + 32, 1, 18.5 );
setRotateKey( spep_5 + 34, 1, 14.2 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 54, 0x100, -1, 0, -134.5, 359.9 );
setEffShake( spep_5 + 0, ctzudodo, 54, 10 );
setEffMoveKey( spep_5 + 0, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 2, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 4, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 6, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 8, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 10, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 12, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 14, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 16, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 18, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 20, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 22, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 24, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 26, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 28, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 30, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 32, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 34, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 36, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 38, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 40, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 42, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 44, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 46, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 48, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 50, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 52, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 54, ctzudodo, -138.6, 378.5 , 0 );

setEffScaleKey( spep_5 + 0, ctzudodo, 1.96, 1.96 );
setEffScaleKey( spep_5 + 54, ctzudodo, 1.96, 1.96 );

setEffRotateKey( spep_5 + 0, ctzudodo, -8.5 );
setEffRotateKey( spep_5 + 54, ctzudodo, -8.5 );

setEffAlphaKey( spep_5 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 54, ctzudodo, 255 );

--SE
se_1021 = playSe( spep_5 , 1021 );

--白フェード
entryFade( spep_5+52 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;
--------------------------------------
--ギャン
--------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 );


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffMoveKey( spep_6 + 0, ctgayn, 0, 400, 0 );
setEffMoveKey( spep_6 + 60, ctgayn, 0, 400, 0 );
setEffScaleKey( spep_6, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgayn, 4.0, 4.0);
setEffRotateKey( spep_6 + 0, ctgayn, 0 );
setEffRotateKey( spep_6 + 60, ctgayn, 0 );
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);
setEffShake( spep_6, ctgayn, 60, 10);

--SE
playSe( spep_6 , 1008 );
playSe( spep_6 , 1023 );
setSeVolume( spep_6 , 1008, 62 );

stopSe( spep_6 + 12, se_1212, 0 );
stopSe( spep_6 + 12, se_1021, 0 );

entryFade( spep_6+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );
setMoveKey( spep_7 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_7 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_7 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_7 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_7 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_7 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_7 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_7 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_7 + 0, 1, 0-z );
setRotateKey( spep_7 + 2, 1, 105-z );
setRotateKey( spep_7 + 4, 1, 240-z );
setRotateKey( spep_7 + 6, 1, 405-z );
setRotateKey( spep_7 + 8, 1, 600-z );
setRotateKey( spep_7 + 10, 1, 825-z );
setRotateKey( spep_7 + 12, 1, 1080-z );
setRotateKey( spep_7 + 110, 1, 1080-z );
--[[
-- ** エフェクト等 ** --
bg = entryEffect( spep_7 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_7 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bg, 0 );
setEffRotateKey( spep_7 + 100, bg, 0 );
setEffAlphaKey( spep_7 + 0, bg, 255 );
setEffAlphaKey( spep_7 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_7 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_7 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusenga, 0 );
setEffRotateKey( spep_7 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_7 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_7 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_7 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_7 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_7 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_7 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_7 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_7 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_7 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_7 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_7 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_7 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_7 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_7 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_7 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_7 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_7 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_7 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_7 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_7 + 2, hibiware, 0 );
setEffRotateKey( spep_7 + 100, hibiware, 0 );

setEffAlphaKey( spep_7 + 2, hibiware, 0 );
setEffAlphaKey( spep_7 + 13, hibiware, 0 );
setEffAlphaKey( spep_7 + 14, hibiware, 255 );
setEffAlphaKey( spep_7 + 100, hibiware, 255 );

--SE
playSe( spep_7 + 14, 1054 );
setSeVolume( spep_7 + 14, 1054, 126 );

--終わり
dealDamage( spep_7 +10 );
endPhase( spep_7 + 98 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 画面外アウト→インパンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, panting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_f, 0 );
setEffRotateKey( spep_0 + 96, panting_f, 0 );
setEffAlphaKey( spep_0 + 0, panting_f, 255 );
setEffAlphaKey( spep_0 + 94, panting_f, 255 );
setEffAlphaKey( spep_0 + 95, panting_f, 255 );
setEffAlphaKey( spep_0 + 96, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, panting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_b, 0 );
setEffRotateKey( spep_0 + 96, panting_b, 0 );
setEffAlphaKey( spep_0 + 0, panting_b, 255 );
setEffAlphaKey( spep_0 + 94, panting_b, 255 );
setEffAlphaKey( spep_0 + 95, panting_b, 255 );
setEffAlphaKey( spep_0 + 96, panting_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0-3 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 212.5, 156 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 206.1, 151.9 , 0 );
setMoveKey( spep_0-3 + 4, 1, 199.8, 147.8 , 0 );
setMoveKey( spep_0-3 + 6, 1, 193.5, 143.7 , 0 );
setMoveKey( spep_0-3 + 8, 1, 187.2, 139.7 , 0 );
setMoveKey( spep_0-3 + 10, 1, 181, 135.6 , 0 );
setMoveKey( spep_0-3 + 12, 1, 174.8, 131.6 , 0 );
setMoveKey( spep_0-3 + 14, 1, 168.6, 127.6 , 0 );
setMoveKey( spep_0-3 + 16, 1, 162.5, 123.7 , 0 );
setMoveKey( spep_0-3 + 18, 1, 156.4, 119.7 , 0 );
setMoveKey( spep_0-3 + 20, 1, 150.4, 115.8 , 0 );
setMoveKey( spep_0-3 + 22, 1, 144.3, 111.9 , 0 );
setMoveKey( spep_0-3 + 24, 1, 138.4, 108 , 0 );
setMoveKey( spep_0-3 + 26, 1, 132.4, 104.2 , 0 );
setMoveKey( spep_0-3 + 28, 1, 126.5, 100.3 , 0 );
setMoveKey( spep_0-3 + 30, 1, 124.6, 98.7 , 0 );
setMoveKey( spep_0-3 + 32, 1, 122.7, 97.1 , 0 );
setMoveKey( spep_0-3 + 34, 1, 120.8, 95.4 , 0 );
setMoveKey( spep_0-3 + 36, 1, 118.9, 93.8 , 0 );
setMoveKey( spep_0-3 + 38, 1, 117, 92.2 , 0 );
setMoveKey( spep_0-3 + 40, 1, 115.1, 90.6 , 0 );
setMoveKey( spep_0-3 + 42, 1, 113.2, 89 , 0 );

setScaleKey( spep_0 + 0, 1, 0.54, 0.54 );
--setScaleKey( spep_0-3 + 2, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 6, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 10, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 12, 1, 0.73, 0.73 );
setScaleKey( spep_0-3 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 16, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 20, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 22, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 24, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_0-3 + 28, 1, 1.01, 1.01 );
setScaleKey( spep_0-3 + 30, 1, 1.03, 1.03 );
setScaleKey( spep_0-3 + 32, 1, 1.04, 1.04 );
setScaleKey( spep_0-3 + 34, 1, 1.06, 1.06 );
setScaleKey( spep_0-3 + 36, 1, 1.08, 1.08 );
setScaleKey( spep_0-3 + 38, 1, 1.1, 1.1 );
setScaleKey( spep_0-3 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_0-3 + 42, 1, 1.14, 1.14 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 40, 1, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 256, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE0, 0 );


    pauseAll( SP_dodge, 67 );
    
    --敵の動き
    setMoveKey( SP_dodge+9, 1, 113.2, 89 , 0 );
    setScaleKey( SP_dodge+9 + 42, 1, 1.14, 1.14 );
    setRotateKey( SP_dodge+9, 1, 0 );


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
changeAnime( spep_0-3 + 58, 1, 117 );
changeAnime( spep_0-3 + 70, 1, 108 );

setMoveKey( spep_0-3 + 44, 1, 111.3, 87.3 , 0 );
setMoveKey( spep_0-3 + 46, 1, 109.5, 85.7 , 0 );
setMoveKey( spep_0-3 + 48, 1, 107.6, 84.1 , 0 );
setMoveKey( spep_0-3 + 50, 1, 105.7, 82.5 , 0 );
setMoveKey( spep_0-3 + 52, 1, 103.8, 80.9 , 0 );
setMoveKey( spep_0-3 + 54, 1, 101.9, 79.3 , 0 );
setMoveKey( spep_0-3 + 57, 1, 99.9, 77.7 , 0 );
setMoveKey( spep_0-3 + 58, 1, 98, 76 , 0 );
setMoveKey( spep_0-3 + 60, 1, 96.1, 74.3 , 0 );
setMoveKey( spep_0-3 + 62, 1, 93, 72.1 , 0 );
setMoveKey( spep_0-3 + 64, 1, 89.9, 69.7 , 0 );
setMoveKey( spep_0-3 + 66, 1, 86.8, 67.4 , 0 );
setMoveKey( spep_0-3 + 69, 1, 83.6, 65 , 0 );
setMoveKey( spep_0-3 + 70, 1, 98.5, 107.8 , 0 );
setMoveKey( spep_0-3 + 72, 1, 142.8, 132.6 , 0 );
setMoveKey( spep_0-3 + 74, 1, 110.3, 142.1 , 0 );
setMoveKey( spep_0-3 + 76, 1, 145.4, 159.8 , 0 );
setMoveKey( spep_0-3 + 78, 1, 143.2, 158.6 , 0 );
setMoveKey( spep_0-3 + 80, 1, 149.6, 165.9 , 0 );
setMoveKey( spep_0-3 + 82, 1, 155.1, 172.1 , 0 );
setMoveKey( spep_0-3 + 84, 1, 159.8, 177.4 , 0 );
setMoveKey( spep_0-3 + 86, 1, 163.9, 182 , 0 );
setMoveKey( spep_0-3 + 88, 1, 167.4, 186.1 , 0 );
setMoveKey( spep_0-3 + 90, 1, 170.6, 189.7 , 0 );
setMoveKey( spep_0-3 + 92, 1, 173.4, 192.9 , 0 );
setMoveKey( spep_0-3 + 94, 1, 176, 195.8 , 0 );
setMoveKey( spep_0 + 95, 1, 178.3, 198.4 , 0 );
--setMoveKey( spep_0-3 + 98, 1, 180.5, 200.8 , 0 );

setScaleKey( spep_0-3 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 46, 1, 1.18, 1.18 );
setScaleKey( spep_0-3 + 48, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 50, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 52, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 54, 1, 1.32, 1.32 );
setScaleKey( spep_0-3 + 57, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 58, 1, 1.41, 1.41 );
setScaleKey( spep_0-3 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 62, 1, 1.52, 1.52 );
setScaleKey( spep_0-3 + 64, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 66, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 69, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 70, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 95, 1, 1.89, 1.89 );

setRotateKey( spep_0 + 95, 1, 0 );


--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 70,  906, 29, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 70, shuchusen1, 29, 20 );
setEffMoveKey( spep_0-3 + 70, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 70, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_0 + 96, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_0-3 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 + 96, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 94, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 95, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen1, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 70,  10005, 8, 0x100, -1, 0, -79.8, 307.5 );--ガッ
setEffShake( spep_0-3 + 70, ctga, 8, 10 );
setEffMoveKey( spep_0-3 + 70, ctga, -79.8, 307.5 , 0 );
setEffMoveKey( spep_0-3 + 72, ctga, -79.8, 307.4 , 0 );
setEffMoveKey( spep_0-3 + 76, ctga, -79.8, 307.4 , 0 );
setEffMoveKey( spep_0-3 + 78, ctga, -79.7, 307.3 , 0 );

a=0.8;

setEffScaleKey( spep_0-3 + 70, ctga, 0.59+a, 0.59+a );
setEffScaleKey( spep_0-3 + 72, ctga, 0.93+a, 0.93+a );
setEffScaleKey( spep_0-3 + 74, ctga, 1.26+a, 1.26+a );
setEffScaleKey( spep_0-3 + 76, ctga, 1.31+a, 1.31+a );
setEffScaleKey( spep_0-3 + 78, ctga, 1.37+a, 1.37+a );

setEffRotateKey( spep_0-3 + 70, ctga, 15.9 );
setEffRotateKey( spep_0-3 + 78, ctga, 15.9 );

setEffAlphaKey( spep_0-3 + 70, ctga, 255 );
setEffAlphaKey( spep_0-3 + 74, ctga, 255 );
setEffAlphaKey( spep_0-3 + 76, ctga, 128 );
setEffAlphaKey( spep_0-3 + 78, ctga, 0 );

--SE
se_1116 = playSe( spep_0 + 52, 1116 );
playSe( spep_0 + 56, 1003 );
playSe( spep_0 + 75, 1000 );
playSe( spep_0 + 77, 1012 );
playSe( spep_0 + 78, 1110 );

stopSe( spep_0 + 75, se_1116, 19 );

--白フェード
--entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+66 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+96;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fight_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fight_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fight_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fight_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fight_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fight_f, 0 );
setEffRotateKey( spep_1 + 160, fight_f, 0 );
setEffAlphaKey( spep_1 + 0, fight_f, 255 );
setEffAlphaKey( spep_1 + 122, fight_f, 255 );
setEffAlphaKey( spep_1 + 123, fight_f, 0 );
setEffAlphaKey( spep_1 + 124, fight_f, 0 );
setEffAlphaKey( spep_1 + 160, fight_f, 0 );

-- ** エフェクト等 ** --
fight_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fight_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fight_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fight_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fight_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fight_b, 0 );
setEffRotateKey( spep_1 + 160, fight_b, 0 );
setEffAlphaKey( spep_1 + 0, fight_b, 255 );
setEffAlphaKey( spep_1 + 160, fight_b, 255 );

-- ** エフェクト等 ** --
fight_n = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fight_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, fight_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fight_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, fight_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fight_n, 0 );
setEffRotateKey( spep_1 + 160, fight_n, 0 );
setEffAlphaKey( spep_1 + 0, fight_n, 0 );
setEffAlphaKey( spep_1 + 122, fight_n, 0 );
setEffAlphaKey( spep_1 + 123, fight_n, 255 );
setEffAlphaKey( spep_1 + 124, fight_n, 255 );
setEffAlphaKey( spep_1 + 160, fight_n, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 14,  906, 12, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 14, shuchusen2, 12, 20 );
setEffMoveKey( spep_1-3 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 26, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 14, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 26, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 14, shuchusen2, 0 );
setEffRotateKey( spep_1-3 + 26, shuchusen2, 0 );

setEffAlphaKey( spep_1-3 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 26, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 48,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 48, shuchusen3, 8, 20 );
setEffMoveKey( spep_1-3 + 48, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 56, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 48, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 56, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 48, shuchusen3, 0 );
setEffRotateKey( spep_1-3 + 56, shuchusen3, 0 );

setEffAlphaKey( spep_1-3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_1-3 + 56, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_1-3 + 68,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 68, shuchusen4, 8, 20 );
setEffMoveKey( spep_1-3 + 68, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 76, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 68, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 76, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 68, shuchusen4, 0 );
setEffRotateKey( spep_1-3 + 76, shuchusen4, 0 );

setEffAlphaKey( spep_1-3 + 68, shuchusen4, 255 );
setEffAlphaKey( spep_1-3 + 76, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_1-3 + 82,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 82, shuchusen5, 8, 20 );
setEffMoveKey( spep_1-3 + 82, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 90, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 82, shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 90, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 82, shuchusen5, 0 );
setEffRotateKey( spep_1-3 + 90, shuchusen5, 0 );

setEffAlphaKey( spep_1-3 + 82, shuchusen5, 255 );
setEffAlphaKey( spep_1-3 + 90, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_1-3 + 124,  906, 34, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 124, shuchusen6, 34, 20 );
setEffMoveKey( spep_1-3 + 124, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 158, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 124, shuchusen6, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 158, shuchusen6, 1.8, 1.8 );

setEffRotateKey( spep_1-3 + 124, shuchusen6, 0 );
setEffRotateKey( spep_1-3 + 158, shuchusen6, 0 );

setEffAlphaKey( spep_1-3 + 124, shuchusen6, 255 );
setEffAlphaKey( spep_1-3 + 158, shuchusen6, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 14,  10020, 12, 0x100, -1, 0, -31.9, 286.6 );
setEffShake( spep_1-3 + 14, ctbaki, 12, 10 );
setEffMoveKey( spep_1-3 + 14, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1-3 + 24, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbaki, -31.9, 286.6 , 0 );

setEffScaleKey( spep_1-3 + 14, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1-3 + 26, ctbaki, 1.73, 1.73 );

setEffRotateKey( spep_1-3 + 14, ctbaki, 15 );
setEffRotateKey( spep_1-3 + 26, ctbaki, 15 );

setEffAlphaKey( spep_1-3 + 14, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 26, ctbaki, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_1-3 + 48,  10005, 8, 0x100, -1, 0, 63.4, 307.5 );
setEffShake( spep_1-3 + 48, ctga2, 8, 10 );
setEffMoveKey( spep_1-3 + 48, ctga2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1-3 + 50, ctga2, 73.7, 312.6 , 0 );
setEffMoveKey( spep_1-3 + 52, ctga2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1-3 + 54, ctga2, 73.7, 312.6 , 0 );
setEffMoveKey( spep_1-3 + 56, ctga2, 63.4, 307.5 , 0 );

setEffScaleKey( spep_1-3 + 48, ctga2, 1.42, 1.42 );
setEffScaleKey( spep_1-3 + 56, ctga2, 1.42, 1.42 );

setEffRotateKey( spep_1-3 + 48, ctga2, 0 );
setEffRotateKey( spep_1-3 + 56, ctga2, 0 );

setEffAlphaKey( spep_1-3 + 48, ctga2, 255 );
setEffAlphaKey( spep_1-3 + 56, ctga2, 255 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_1-3 + 68,  10020, 8, 0x100, -1, 0, 6.6, 296.1 );
setEffShake( spep_1-3 + 68, ctbaki2, 8, 10 );
setEffMoveKey( spep_1-3 + 68, ctbaki2, 6.6, 296.1 , 0 );
setEffMoveKey( spep_1-3 + 70, ctbaki2, 18, 307.5 , 0 );
setEffMoveKey( spep_1-3 + 72, ctbaki2, 6.6, 296.1 , 0 );
setEffMoveKey( spep_1-3 + 74, ctbaki2, 18, 307.5 , 0 );
setEffMoveKey( spep_1-3 + 76, ctbaki2, 6.6, 296.1 , 0 );

setEffScaleKey( spep_1-3 + 68, ctbaki2, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 76, ctbaki2, 1.26, 1.26 );

setEffRotateKey( spep_1-3 + 68, ctbaki2, 0 );
setEffRotateKey( spep_1-3 + 76, ctbaki2, 0 );

setEffAlphaKey( spep_1-3 + 68, ctbaki2, 255 );
setEffAlphaKey( spep_1-3 + 76, ctbaki2, 255 );

--文字エントリー
ctga3 = entryEffectLife( spep_1-3 + 82,  10005, 8, 0x100, -1, 0, 127.6, 309.7 );
setEffShake( spep_1-3 + 82, ctga3, 8, 10 );
setEffMoveKey( spep_1-3 + 82, ctga3, 127.6, 309.7 , 0 );
setEffMoveKey( spep_1-3 + 84, ctga3, 138.8, 310.5 , 0 );
setEffMoveKey( spep_1-3 + 86, ctga3, 127.6, 309.7 , 0 );
setEffMoveKey( spep_1-3 + 88, ctga3, 138.8, 310.5 , 0 );
setEffMoveKey( spep_1-3 + 90, ctga3, 127.6, 309.7 , 0 );

setEffScaleKey( spep_1-3 + 82, ctga3, 1.41, 1.41 );
setEffScaleKey( spep_1-3 + 90, ctga3, 1.41, 1.41 );

setEffRotateKey( spep_1-3 + 82, ctga3, 23 );
setEffRotateKey( spep_1-3 + 90, ctga3, 23 );

setEffAlphaKey( spep_1-3 + 82, ctga3, 255 );
setEffAlphaKey( spep_1-3 + 90, ctga3, 255 );


--文字エントリー
ctdogon = entryEffectLife( spep_1 + 124,  10018, 32, 0x100, -1, 0, -79.5, 306.8 );
setEffShake( spep_1 + 124, ctdogon, 32, 10 );
setEffMoveKey( spep_1 + 124, ctdogon, -79.5, 306.8 , 0 );
setEffMoveKey( spep_1 + 126, ctdogon, -85, 363 , 0 );
setEffMoveKey( spep_1 + 128, ctdogon, -75.6, 410.1 , 0 );
setEffMoveKey( spep_1 + 130, ctdogon, -89.9, 412.2 , 0 );
setEffMoveKey( spep_1 + 132, ctdogon, -86.4, 423.7 , 0 );
setEffMoveKey( spep_1 + 134, ctdogon, -87.9, 414.8 , 0 );
setEffMoveKey( spep_1 + 136, ctdogon, -95, 431.8 , 0 );
setEffMoveKey( spep_1 + 138, ctdogon, -91.6, 426.1 , 0 );
setEffMoveKey( spep_1 + 140, ctdogon, -101.1, 433.1 , 0 );
setEffMoveKey( spep_1 + 142, ctdogon, -98.5, 431.2 , 0 );
setEffMoveKey( spep_1 + 144, ctdogon, -100.8, 442.2 , 0 );
setEffMoveKey( spep_1 + 146, ctdogon, -103.7, 437.6 , 0 );
setEffMoveKey( spep_1 + 148, ctdogon, -109.9, 449.7 , 0 );
setEffMoveKey( spep_1 + 150, ctdogon, -103.8, 448.6 , 0 );
setEffMoveKey( spep_1 + 152, ctdogon, -129, 472 , 0 );
setEffMoveKey( spep_1 + 154, ctdogon, -123.3, 475.5 , 0 );
setEffMoveKey( spep_1 + 156, ctdogon, -134.6, 488.9 , 0 );

setEffScaleKey( spep_1 + 124, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_1 + 126, ctdogon, 1.62, 1.62 );
setEffScaleKey( spep_1 + 128, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_1 + 130, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_1 + 132, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_1 + 134, ctdogon, 2.67, 2.67 );
setEffScaleKey( spep_1 + 136, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_1 + 138, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_1 + 140, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_1 + 142, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_1 + 144, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_1 + 146, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_1 + 148, ctdogon, 2.84, 2.84 );
setEffScaleKey( spep_1 + 150, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_1 + 152, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_1 + 154, ctdogon, 4.18, 4.18 );
setEffScaleKey( spep_1 + 156, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_1 + 124, ctdogon, -30 );
setEffRotateKey( spep_1 + 126, ctdogon, -29.9 );
setEffRotateKey( spep_1 + 128, ctdogon, -29.8 );
setEffRotateKey( spep_1 + 132, ctdogon, -29.8 );
setEffRotateKey( spep_1 + 134, ctdogon, -29.9 );
setEffRotateKey( spep_1 + 144, ctdogon, -29.9 );
setEffRotateKey( spep_1 + 146, ctdogon, -30 );
setEffRotateKey( spep_1 + 156, ctdogon, -30 );

setEffAlphaKey( spep_1 + 124, ctdogon, 255 );
setEffAlphaKey( spep_1 + 150, ctdogon, 255 );
setEffAlphaKey( spep_1 + 152, ctdogon, 170 );
setEffAlphaKey( spep_1 + 154, ctdogon, 85 );
setEffAlphaKey( spep_1 + 156, ctdogon, 0 );

--敵の動き
setDisp( spep_1-3 + 136, 1, 0 );

changeAnime( spep_1 + 0, 1, 108 );
changeAnime( spep_1-3 + 14, 1, 106 );
changeAnime( spep_1-3 + 48, 1, 108 );
changeAnime( spep_1-3 + 68, 1, 106 );
changeAnime( spep_1-3 + 82, 1, 108 );
changeAnime( spep_1-3 + 106, 1, 106 );
changeAnime( spep_1-3 + 126, 1, 107 );

setMoveKey( spep_1 + 0, 1, 177, 145.2 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 138.9, 128.3 , 0 );
setMoveKey( spep_1-3 + 4, 1, 100.6, 111.1 , 0 );
setMoveKey( spep_1-3 + 6, 1, 62.1, 93.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 23.4, 75.7 , 0 );
setMoveKey( spep_1-3 + 10, 1, -15.5, 57.5 , 0 );
setMoveKey( spep_1-3 + 13, 1, -54.6, 38.9 , 0 );
setMoveKey( spep_1-3 + 14, 1, -11, 69.2 , 0 );
setMoveKey( spep_1-3 + 15, 1, -11, 69.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, -85.7, 25.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, -124.1, 19.6 , 0 );
setMoveKey( spep_1-3 + 20, 1, -130.9, 11 , 0 );
setMoveKey( spep_1-3 + 22, 1, -117.7, 22.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, -134.4, 3.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, -111.2, 25.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, -117.9, 16.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, -114.7, 17.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, -111.5, 19.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, -108.2, 20.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, -105, 21.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, -101.7, 23.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, -98.5, 24.7 , 0 );
setMoveKey( spep_1-3 + 42, 1, -95.3, 26.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, -92, 27.4 , 0 );
setMoveKey( spep_1-3 + 47, 1, -88.8, 28.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, -55, 42 , 0 );
setMoveKey( spep_1-3 + 49, 1, -55, 42 , 0 );
setMoveKey( spep_1-3 + 50, 1, -40, 53.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, -54.9, 35.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, -29.9, 57.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, -34.9, 49.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, -29.9, 51 , 0 );
setMoveKey( spep_1-3 + 60, 1, -24.8, 52.8 , 0 );
setMoveKey( spep_1-3 + 62, 1, -19.8, 54.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, -14.8, 56.4 , 0 );
setMoveKey( spep_1-3 + 67, 1, -9.7, 58.2 , 0 );
setMoveKey( spep_1-3 + 68, 1, -31.8, 49.8 , 0 );
setMoveKey( spep_1-3 + 70, 1, -9.4, 63.6 , 0 );
setMoveKey( spep_1-3 + 72, 1, -17, 47.5 , 0 );
setMoveKey( spep_1-3 + 74, 1, 15.4, 71.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 17.9, 65.1 , 0 );
setMoveKey( spep_1-3 + 78, 1, 30.3, 69 , 0 );
setMoveKey( spep_1-3 + 81, 1, 42.7, 72.8 , 0 );
setMoveKey( spep_1-3 + 82, 1, 81, 89.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 71.7, 71.8 , 0 );
setMoveKey( spep_1-3 + 86, 1, 102.5, 94.4 , 0 );
setMoveKey( spep_1-3 + 88, 1, 103.3, 87 , 0 );
setMoveKey( spep_1-3 + 90, 1, 114.1, 89.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 124.8, 92.2 , 0 );
setMoveKey( spep_1-3 + 94, 1, 135.6, 94.8 , 0 );
setMoveKey( spep_1-3 + 96, 1, 143.7, 96.1 , 0 );
setMoveKey( spep_1-3 + 98, 1, 151.8, 97.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 159.8, 98.8 , 0 );
setMoveKey( spep_1-3 + 102, 1, 167.9, 100.1 , 0 );
setMoveKey( spep_1-3 + 105, 1, 175.9, 101.5 , 0 );
setMoveKey( spep_1-3 + 106, 1, 106.9, 99.5 , 0 );
setMoveKey( spep_1-3 + 108, 1, 107.3, 98.2 , 0 );
setMoveKey( spep_1-3 + 110, 1, 107.7, 96.9 , 0 );
setMoveKey( spep_1-3 + 112, 1, 108.1, 95.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, 108.5, 94.2 , 0 );
setMoveKey( spep_1-3 + 116, 1, 108.9, 92.9 , 0 );
setMoveKey( spep_1-3 + 118, 1, 109.4, 91.5 , 0 );
setMoveKey( spep_1-3 + 120, 1, 109.8, 90.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 110.2, 88.9 , 0 );
setMoveKey( spep_1-3 + 124, 1, 110.6, 87.6 , 0 );
setMoveKey( spep_1-3 + 125, 1, 110.6, 87.6 , 0 );
setMoveKey( spep_1-3 + 126, 1, 161.3, 83.3 , 0 );
setMoveKey( spep_1-3 + 128, 1, 197.9, 95.8 , 0 );
setMoveKey( spep_1-3 + 130, 1, 278, 151.2 , 0 );
setMoveKey( spep_1-3 + 132, 1, 331.8, 179.3 , 0 );
setMoveKey( spep_1-3 + 134, 1, 409.3, 230.4 , 0 );
setMoveKey( spep_1-3 + 136, 1, 460.3, 254.2 , 0 );

setScaleKey( spep_1 + 0, 1, 2.03, 2.03 );
--setScaleKey( spep_1-3 + 2, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 4, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 6, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 8, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 10, 1, 1.71, 1.7 );
setScaleKey( spep_1-3 + 13, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 14, 1, 1.52, 1.51 );
setScaleKey( spep_1-3 + 15, 1, 1.52, 1.51 );
setScaleKey( spep_1-3 + 16, 1, 1.46, 1.45 );
setScaleKey( spep_1-3 + 18, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 124, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 125, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 126, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 128, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 130, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 132, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 134, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 136, 1, 2.17, 2.17 );

setRotateKey( spep_1 + 0, 1, -20 );
--setRotateKey( spep_1-3 + 2, 1, -19.4 );
setRotateKey( spep_1-3 + 4, 1, -18.9 );
setRotateKey( spep_1-3 + 6, 1, -18.3 );
setRotateKey( spep_1-3 + 8, 1, -17.7 );
setRotateKey( spep_1-3 + 10, 1, -17.1 );
setRotateKey( spep_1-3 + 13, 1, -16.6 );
setRotateKey( spep_1-3 + 14, 1, -55.9 );
setRotateKey( spep_1-3 + 15, 1, -55.9 );
setRotateKey( spep_1-3 + 16, 1, -55.4 );
setRotateKey( spep_1-3 + 18, 1, -54.9 );
setRotateKey( spep_1-3 + 20, 1, -54.6 );
setRotateKey( spep_1-3 + 22, 1, -54.4 );
setRotateKey( spep_1-3 + 24, 1, -54.2 );
setRotateKey( spep_1-3 + 26, 1, -53.9 );
setRotateKey( spep_1-3 + 28, 1, -53.7 );
setRotateKey( spep_1-3 + 30, 1, -53.5 );
setRotateKey( spep_1-3 + 32, 1, -53.2 );
setRotateKey( spep_1-3 + 34, 1, -53 );
setRotateKey( spep_1-3 + 36, 1, -52.8 );
setRotateKey( spep_1-3 + 38, 1, -52.6 );
setRotateKey( spep_1-3 + 40, 1, -52.3 );
setRotateKey( spep_1-3 + 42, 1, -52.1 );
setRotateKey( spep_1-3 + 44, 1, -51.9 );
setRotateKey( spep_1-3 + 47, 1, -51.6 );
setRotateKey( spep_1-3 + 48, 1, -20 );
setRotateKey( spep_1-3 + 67, 1, -20 );
setRotateKey( spep_1-3 + 68, 1, -54.9 );
setRotateKey( spep_1-3 + 81, 1, -54.9 );
setRotateKey( spep_1-3 + 82, 1, -20 );
setRotateKey( spep_1-3 + 105, 1, -20 );
setRotateKey( spep_1-3 + 106, 1, -54.9 );
setRotateKey( spep_1-3 + 108, 1, -54.5 );
setRotateKey( spep_1-3 + 110, 1, -54.1 );
setRotateKey( spep_1-3 + 112, 1, -53.7 );
setRotateKey( spep_1-3 + 114, 1, -53.3 );
setRotateKey( spep_1-3 + 116, 1, -52.9 );
setRotateKey( spep_1-3 + 118, 1, -52.6 );
setRotateKey( spep_1-3 + 120, 1, -52.2 );
setRotateKey( spep_1-3 + 122, 1, -51.8 );
setRotateKey( spep_1-3 + 124, 1, -51.4 );
setRotateKey( spep_1-3 + 125, 1, -51.4 );
setRotateKey( spep_1-3 + 126, 1, -81.3 );
setRotateKey( spep_1-3 + 128, 1, -81.3 );
setRotateKey( spep_1-3 + 130, 1, -81.2 );
setRotateKey( spep_1-3 + 136, 1, -81.2 );

--SE
playSe( spep_1 + 9, 1189 );
playSe( spep_1 + 13, 1010 );
playSe( spep_1 + 13, 1001 );
playSe( spep_1 + 50, 1007 );
playSe( spep_1 + 51, 1110 );
playSe( spep_1 + 64, 1189 );
playSe( spep_1 + 68, 1012 );
playSe( spep_1 + 68, 1010 );
playSe( spep_1 + 86, 1013 );
setSeVolume( spep_1 + 86, 1013, 82 );
playSe( spep_1 + 88, 1000 );
playSe( spep_1 + 88, 1009 );
setSeVolume( spep_1 + 88, 1009, 58 );
playSe( spep_1 + 119, 1004 );
playSe( spep_1 + 123, 1120 );
se_1154 = playSe( spep_1 + 157, 1154 );
setSeVolume( spep_1 + 157, 1154, 0 );

--白フェード
entryFade( spep_1+120 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1+152 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+160;

------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_2,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2, shuchusen7, 98, 20 );
setEffMoveKey( spep_2, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_2, shuchusen7, 1, 1 );
setEffScaleKey( spep_2 + 98, shuchusen7, 1, 1 );

setEffRotateKey( spep_2, shuchusen7, 180 );
setEffRotateKey( spep_2 + 98, shuchusen7, 180 );

setEffAlphaKey( spep_2, shuchusen7, 0 );
setEffAlphaKey( spep_2-3 + 15, shuchusen7, 0 );
setEffAlphaKey( spep_2-3 + 16, shuchusen7, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen7, 255 );

--顔カットイン
--speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_2 +12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 112 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey(  spep_2 +12,  ctgogo,  0);
setEffRotateKey(  spep_2 +84,  ctgogo,  0);

setEffScaleKey(  spep_2 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo, -1.07, 1.07 );

--白フェード
entryFade( spep_2+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 100, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 音 ** --
playSe( spep_2 + 5, 49 );
playSe( spep_2 + 12, 1018 );
se_1191 = playSe( spep_2 + 6, 1191 );
setSeVolume( spep_2 + 6, 1191, 178 );
se_1037 = playSe( spep_2 + 6, 1037 );
setSeVolume( spep_2 + 6, 1037, 69 );

stopSe( spep_2 + 52, se_1191, 23 );

setSeVolume( spep_2 + 6, 1154, 0 );
setSeVolume( spep_2 + 7, 1154, 100 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

stopSe( spep_3 , se_1154, 0 );
stopSe( spep_3 , se_1037, 0 );

--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 62, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 62, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 62, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 62, beam, 255 );
setEffAlphaKey( spep_4 + 63, beam, 255 );
setEffAlphaKey( spep_4 + 64, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-1 + 20,  10012, 42, 0x100, -1, 0, 8.4, 221.7 );
setEffShake( spep_4-1 + 20, ctzuo, 42, 10 );
setEffMoveKey( spep_4-1 + 20, ctzuo, 8.4, 221.7 , 0 );
setEffMoveKey( spep_4-1 + 22, ctzuo, -11.6, 262.5 , 0 );
setEffMoveKey( spep_4-1 + 24, ctzuo, -53.5, 313.5 , 0 );
setEffMoveKey( spep_4-1 + 26, ctzuo, -32.7, 305.5 , 0 );
setEffMoveKey( spep_4-1 + 28, ctzuo, -53, 316.6 , 0 );
setEffMoveKey( spep_4-1 + 30, ctzuo, -32.1, 308.6 , 0 );
setEffMoveKey( spep_4-1 + 32, ctzuo, -52.5, 319.9 , 0 );
setEffMoveKey( spep_4-1 + 34, ctzuo, -31.4, 311.9 , 0 );
setEffMoveKey( spep_4-1 + 36, ctzuo, -52, 323.2 , 0 );
setEffMoveKey( spep_4-1 + 38, ctzuo, -30.8, 315 , 0 );
setEffMoveKey( spep_4-1 + 40, ctzuo, -51.6, 326.4 , 0 );
setEffMoveKey( spep_4-1 + 42, ctzuo, -30.2, 318.2 , 0 );
setEffMoveKey( spep_4-1 + 44, ctzuo, -51, 329.7 , 0 );
setEffMoveKey( spep_4-1 + 46, ctzuo, -29.5, 321.4 , 0 );
setEffMoveKey( spep_4-1 + 48, ctzuo, -50.6, 333 , 0 );
setEffMoveKey( spep_4-1 + 50, ctzuo, -28.9, 324.6 , 0 );
setEffMoveKey( spep_4-1 + 52, ctzuo, -50.1, 336.2 , 0 );
setEffMoveKey( spep_4-1 + 54, ctzuo, -28.2, 327.8 , 0 );
setEffMoveKey( spep_4-1 + 56, ctzuo, -49.6, 339.5 , 0 );
setEffMoveKey( spep_4-1 + 58, ctzuo, -27.6, 331 , 0 );
setEffMoveKey( spep_4-1 + 60, ctzuo, -22.3, 385.9 , 0 );
setEffMoveKey( spep_4-1 + 62, ctzuo, 4.9, 430.6 , 0 );

setEffScaleKey( spep_4-1 + 20, ctzuo, 0.17, 0.17 );
setEffScaleKey( spep_4-1 + 22, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_4-1 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-1 + 26, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4-1 + 28, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_4-1 + 30, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4-1 + 32, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_4-1 + 34, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_4-1 + 36, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_4-1 + 38, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-1 + 40, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_4-1 + 42, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_4-1 + 44, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4-1 + 46, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_4-1 + 48, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_4-1 + 50, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_4-1 + 52, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4-1 + 54, ctzuo, 2.88, 2.88 );
setEffScaleKey( spep_4-1 + 56, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_4-1 + 58, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4-1 + 60, ctzuo, 4.86, 4.86 );
setEffScaleKey( spep_4-1 + 62, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4-1 + 20, ctzuo, 7.2 );
setEffRotateKey( spep_4-1 + 62, ctzuo, 7.2 );

setEffAlphaKey( spep_4-1 + 20, ctzuo, 255 );
setEffAlphaKey( spep_4-1 + 58, ctzuo, 255 );
setEffAlphaKey( spep_4-1 + 60, ctzuo, 128 );
setEffAlphaKey( spep_4-1 + 62, ctzuo, 0 );

--SE
playSe( spep_4 + 2, 49 );
playSe( spep_4 + 18, 1027 );
playSe( spep_4 + 19, 1022 );
setSeVolume( spep_4 + 19, 1022, 126 );
se_1212 = playSe( spep_4 + 20, 1212 );
setSeVolume( spep_4 + 20, 1212, 56 );

--白フェード
entryFade( spep_4+58 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 62, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 62;
------------------------------------------------------
-- 気弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 60, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 60, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 60, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 34, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, -399.8, -694.5 , 0 );
setMoveKey( spep_5 + 2, 1, -375.5, -658.7 , 0 );
setMoveKey( spep_5 + 4, 1, -349, -618.8 , 0 );
setMoveKey( spep_5 + 6, 1, -320.2, -574.7 , 0 );
setMoveKey( spep_5 + 8, 1, -289.3, -526.4 , 0 );
setMoveKey( spep_5 + 10, 1, -256.2, -474 , 0 );
setMoveKey( spep_5 + 12, 1, -220.9, -417.4 , 0 );
setMoveKey( spep_5 + 14, 1, -183.5, -356.6 , 0 );
setMoveKey( spep_5 + 16, 1, -144, -291.6 , 0 );
setMoveKey( spep_5 + 18, 1, -102.5, -222.3 , 0 );
setMoveKey( spep_5 + 20, 1, -59, -148.8 , 0 );
setMoveKey( spep_5 + 22, 1, -13.4, -71 , 0 );
setMoveKey( spep_5 + 24, 1, 34.2, 11.1 , 0 );
setMoveKey( spep_5 + 26, 1, 83.6, 97.5 , 0 );
setMoveKey( spep_5 + 28, 1, 135.1, 188.2 , 0 );
setMoveKey( spep_5 + 30, 1, 117.1, 159.2 , 0 );
setMoveKey( spep_5 + 32, 1, 155.2, 187.6 , 0 );
setMoveKey( spep_5 + 34, 1, 147, 206.4 , 0 );

setScaleKey( spep_5 + 0, 1, 5, 5 );
setScaleKey( spep_5 + 2, 1, 4.86, 4.86 );
setScaleKey( spep_5 + 4, 1, 4.7, 4.7 );
setScaleKey( spep_5 + 6, 1, 4.52, 4.52 );
setScaleKey( spep_5 + 8, 1, 4.32, 4.32 );
setScaleKey( spep_5 + 10, 1, 4.1, 4.1 );
setScaleKey( spep_5 + 12, 1, 3.86, 3.86 );
setScaleKey( spep_5 + 14, 1, 3.59, 3.59 );
setScaleKey( spep_5 + 16, 1, 3.31, 3.31 );
setScaleKey( spep_5 + 18, 1, 3.01, 3.01 );
setScaleKey( spep_5 + 20, 1, 2.68, 2.68 );
setScaleKey( spep_5 + 22, 1, 2.34, 2.34 );
setScaleKey( spep_5 + 24, 1, 1.97, 1.97 );
setScaleKey( spep_5 + 26, 1, 1.59, 1.59 );
setScaleKey( spep_5 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 30, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 32, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 34, 1, 0.26, 0.26 );

setRotateKey( spep_5 + 0, 1, 6 );
setRotateKey( spep_5 + 2, 1, 5.9 );
setRotateKey( spep_5 + 4, 1, 5.8 );
setRotateKey( spep_5 + 6, 1, 5.6 );
setRotateKey( spep_5 + 8, 1, 5.5 );
setRotateKey( spep_5 + 10, 1, 5.4 );
setRotateKey( spep_5 + 12, 1, 5.3 );
setRotateKey( spep_5 + 14, 1, 5.1 );
setRotateKey( spep_5 + 16, 1, 5 );
setRotateKey( spep_5 + 18, 1, 4.9 );
setRotateKey( spep_5 + 20, 1, 4.7 );
setRotateKey( spep_5 + 22, 1, 4.6 );
setRotateKey( spep_5 + 24, 1, 4.5 );
setRotateKey( spep_5 + 26, 1, 4.4 );
setRotateKey( spep_5 + 28, 1, 4.2 );
setRotateKey( spep_5 + 30, 1, 21 );
setRotateKey( spep_5 + 32, 1, 18.5 );
setRotateKey( spep_5 + 34, 1, 14.2 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 54, 0x100, -1, 0, -134.5, 359.9 );
setEffShake( spep_5 + 0, ctzudodo, 54, 10 );
setEffMoveKey( spep_5 + 0, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 2, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 4, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 6, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 8, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 10, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 12, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 14, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 16, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 18, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 20, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 22, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 24, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 26, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 28, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 30, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 32, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 34, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 36, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 38, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 40, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 42, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 44, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 46, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 48, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 50, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 + 52, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 + 54, ctzudodo, -138.6, 378.5 , 0 );

setEffScaleKey( spep_5 + 0, ctzudodo, 1.96, 1.96 );
setEffScaleKey( spep_5 + 54, ctzudodo, 1.96, 1.96 );

setEffRotateKey( spep_5 + 0, ctzudodo, -68.5 );
setEffRotateKey( spep_5 + 54, ctzudodo, -68.5 );

setEffAlphaKey( spep_5 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 54, ctzudodo, 255 );

--SE
se_1021 = playSe( spep_5 , 1021 );

--白フェード
entryFade( spep_5+52 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;
--------------------------------------
--ギャン
--------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 );


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffMoveKey( spep_6 + 0, ctgayn, 0, 400, 0 );
setEffMoveKey( spep_6 + 60, ctgayn, 0, 400, 0 );
setEffScaleKey( spep_6, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgayn, 4.0, 4.0);
setEffRotateKey( spep_6 + 0, ctgayn, 0 );
setEffRotateKey( spep_6 + 60, ctgayn, 0 );
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);
setEffShake( spep_6, ctgayn, 60, 10);

--SE
playSe( spep_6 , 1008 );
playSe( spep_6 , 1023 );
setSeVolume( spep_6 , 1008, 62 );

stopSe( spep_6 + 12, se_1212, 0 );
stopSe( spep_6 + 12, se_1021, 0 );

entryFade( spep_6+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );
setMoveKey( spep_7 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_7 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_7 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_7 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_7 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_7 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_7 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_7 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_7 + 0, 1, 0-z );
setRotateKey( spep_7 + 2, 1, 105-z );
setRotateKey( spep_7 + 4, 1, 240-z );
setRotateKey( spep_7 + 6, 1, 405-z );
setRotateKey( spep_7 + 8, 1, 600-z );
setRotateKey( spep_7 + 10, 1, 825-z );
setRotateKey( spep_7 + 12, 1, 1080-z );
setRotateKey( spep_7 + 110, 1, 1080-z );
--[[
-- ** エフェクト等 ** --
bg = entryEffect( spep_7 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_7 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bg, 0 );
setEffRotateKey( spep_7 + 100, bg, 0 );
setEffAlphaKey( spep_7 + 0, bg, 255 );
setEffAlphaKey( spep_7 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_7 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_7 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusenga, 0 );
setEffRotateKey( spep_7 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_7 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_7 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_7 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_7 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_7 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_7 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_7 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_7 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_7 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_7 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_7 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_7 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_7 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_7 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_7 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_7 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_7 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_7 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_7 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_7 + 2, hibiware, 0 );
setEffRotateKey( spep_7 + 100, hibiware, 0 );

setEffAlphaKey( spep_7 + 2, hibiware, 0 );
setEffAlphaKey( spep_7 + 13, hibiware, 0 );
setEffAlphaKey( spep_7 + 14, hibiware, 255 );
setEffAlphaKey( spep_7 + 100, hibiware, 255 );

--SE
playSe( spep_7 + 14, 1054 );
setSeVolume( spep_7 + 14, 1054, 126 );

--終わり
dealDamage( spep_7 +10 );
endPhase( spep_7 + 98 );
end
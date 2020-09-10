--1019300:ラディッツ_サタデークラッシュ
--sp_effect_a2_00131

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
SP_01=	155068	;--	立ち→移動
SP_02=	155069	;--	立ち→移動
SP_03=	155070	;--	格闘
SP_04=	155071	;--	格闘
SP_05=	155074	;--	溜め
SP_06=	155075	;--	放つ
SP_07=	155076	;--	気弾が敵に迫る
SP_08=	155077	;--	気弾が敵に迫る
SP_09=	155078	;--	爆発

--エフェクト(敵)
SP_01x=	155068	;--	立ち→移動	
SP_02x=	155069	;--	立ち→移動	
SP_03x=	155072	;--	格闘	(敵)
SP_04x=	155073	;--	格闘	(敵)
SP_05x=	155074	;--	溜め	
SP_06x=	155075	;--	放つ	
SP_07x=	155076	;--	気弾が敵に迫る	
SP_08x=	155077	;--	気弾が敵に迫る	
SP_09x=	155078	;--	爆発	

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
-- 立ち→移動
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
idou_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, idou_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, idou_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou_f, 0 );
setEffRotateKey( spep_0 + 80, idou_f, 0 );
setEffAlphaKey( spep_0 + 0, idou_f, 255 );
setEffAlphaKey( spep_0 + 80, idou_f, 255 );

-- ** エフェクト等 ** --
idou_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, idou_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, idou_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou_b, 0 );
setEffRotateKey( spep_0 + 80, idou_b, 0 );
setEffAlphaKey( spep_0 + 0, idou_b, 255 );
setEffAlphaKey( spep_0 + 80, idou_b, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

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

--SE
playSe( spep_0 + 59, 43 );

--白フェード
entryFade( spep_0 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 80;

------------------------------------------------------
-- 格闘
------------------------------------------------------

-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 180, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 180, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 180, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 180, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 180, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 180, fighting_b, 255 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 6,  10000, 10, 0x100, -1, 0, 149.8, 180.7 );--!!

setEffMoveKey( spep_1-3 + 6, ctbikkuri, 149.8, 180.7 , 0 );
setEffMoveKey( spep_1-3 + 8, ctbikkuri, 126.7, 153.5 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbikkuri, 119.7, 153.1 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbikkuri, 126.3, 160.5 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbikkuri, 126.7, 153.5 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbikkuri, 119.7, 153.1 , 0 );

setEffScaleKey( spep_1-3 + 6, ctbikkuri, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 8, ctbikkuri, 1.61, 1.61 );
setEffScaleKey( spep_1-3 + 16, ctbikkuri, 1.61, 1.61 );

setEffRotateKey( spep_1-3 + 6, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 8, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 16, ctbikkuri, 18 );

setEffAlphaKey( spep_1-3 + 6, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 16, ctbikkuri, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 106,  10020, 20, 0x100, -1, 0, -50.8, 273.3 );
setEffShake( spep_1-3 + 106, ctbaki, 20, 10 );
setEffMoveKey( spep_1-3 + 106, ctbaki, -50.8, 273.3 , 0 );
setEffMoveKey( spep_1-3 + 108, ctbaki, 20.1, 231.1 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbaki, -109.6, 275.6 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbaki, -51.5, 245.8 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbaki, -93.1, 242.2 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbaki, -50.8, 242.3 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbaki, -65.1, 256.7 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbaki, -64, 255.7 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbaki, -65.2, 254.6 , 0 );
setEffMoveKey( spep_1-3 + 124, ctbaki, -66.3, 253.6 , 0 );
setEffMoveKey( spep_1-3 + 126, ctbaki, -74.1, 259.1 , 0 );
--setEffMoveKey( spep_1-3 + 128, ctbaki, -74.6, 259.4 , 0 );

setEffScaleKey( spep_1-3 + 106, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_1-3 + 108, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-3 + 110, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1-3 + 112, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 114, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 116, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1-3 + 118, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 120, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1-3 + 122, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_1-3 + 124, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_1-3 + 126, ctbaki, 1.84, 1.84 );

setEffRotateKey( spep_1-3 + 106, ctbaki, 29.9 );
setEffRotateKey( spep_1-3 + 108, ctbaki, -4.7 );
setEffRotateKey( spep_1-3 + 110, ctbaki, 10.3 );
setEffRotateKey( spep_1-3 + 112, ctbaki, 5 );
setEffRotateKey( spep_1-3 + 114, ctbaki, 15.2 );
setEffRotateKey( spep_1-3 + 116, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 124, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 126, ctbaki, 7.5 );
--setEffRotateKey( spep_1-3 + 128, ctbaki, 7.6 );

setEffAlphaKey( spep_1-3 + 106, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 118, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 120, ctbaki, 198 );
setEffAlphaKey( spep_1-3 + 122, ctbaki, 142 );
setEffAlphaKey( spep_1-3 + 124, ctbaki, 85 );
setEffAlphaKey( spep_1-3 + 126, ctbaki, 0 );

--流線
ryusen1 = entryEffectLife( spep_1-3 + 60,  914, 44, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1-3 + 60, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 104, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 60, ryusen1, 7.53, 2.32 );
setEffScaleKey( spep_1-3 + 104, ryusen1, 7.53, 2.32 );

setEffRotateKey( spep_1-3 + 60, ryusen1, -24 );
setEffRotateKey( spep_1-3 + 104, ryusen1, -24 );

setEffAlphaKey( spep_1-3 + 60, ryusen1, 20 );
setEffAlphaKey( spep_1-3 + 62, ryusen1, 41 );
setEffAlphaKey( spep_1-3 + 64, ryusen1, 61 );
setEffAlphaKey( spep_1-3 + 66, ryusen1, 81 );
setEffAlphaKey( spep_1-3 + 68, ryusen1, 102 );
setEffAlphaKey( spep_1-3 + 104, ryusen1, 102 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 18,  906, 38, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 18, shuchusen1, 38, 20 );
setEffMoveKey( spep_1-3 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 56, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 18, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_1-3 + 56, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_1-3 + 18, shuchusen1, 180 );
setEffRotateKey( spep_1-3 + 56, shuchusen1, 180 );

setEffAlphaKey( spep_1-3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_1-3 + 56, shuchusen1, 255 );


--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 178, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 18, 1, 108 );
changeAnime( spep_1-3 + 68, 1, 106 );
changeAnime( spep_1-3 + 110, 1, 105 );

setMoveKey( spep_1 + 0, 1, 111.8, -13.5 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 111.7, -13.5 , 0 );
setMoveKey( spep_1-3 + 17, 1, 111.7, -13.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, 100.8, 17 , 0 );
setMoveKey( spep_1-3 + 20, 1, 133.1, 41.8 , 0 );
setMoveKey( spep_1-3 + 22, 1, 129.4, 30.8 , 0 );
setMoveKey( spep_1-3 + 24, 1, 157.5, 74.1 , 0 );
setMoveKey( spep_1-3 + 26, 1, 153.1, 53 , 0 );
setMoveKey( spep_1-3 + 28, 1, 163.7, 70.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 164.4, 65.4 , 0 );
setMoveKey( spep_1-3 + 32, 1, 168.9, 76.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 168.6, 72.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, 170, 81.1 , 0 );
setMoveKey( spep_1-3 + 38, 1, 172.5, 76.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 177, 83.4 , 0 );
setMoveKey( spep_1-3 + 42, 1, 180.2, 85.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, 183.1, 88 , 0 );
setMoveKey( spep_1-3 + 46, 1, 185.7, 89.9 , 0 );
setMoveKey( spep_1-3 + 48, 1, 188.1, 91.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 190.3, 93.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 192.3, 94.9 , 0 );
setMoveKey( spep_1-3 + 54, 1, 194.2, 96.3 , 0 );
setMoveKey( spep_1-3 + 56, 1, 195.9, 97.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 201.8, 104.9 , 0 );
setMoveKey( spep_1-3 + 60, 1, 198.2, 102.4 , 0 );
setMoveKey( spep_1-3 + 62, 1, 246.4, 120 , 0 );
setMoveKey( spep_1-3 + 64, 1, 281.4, 150.4 , 0 );
setMoveKey( spep_1-3 + 67, 1, 120.2, 20.2 , 0 );
setMoveKey( spep_1-3 + 68, 1, 135.4, 95.9 , 0 );
setMoveKey( spep_1-3 + 70, 1, 145.1, 129.7 , 0 );
setMoveKey( spep_1-3 + 72, 1, 123, 124 , 0 );
setMoveKey( spep_1-3 + 74, 1, 99.9, 115.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 72.6, 103.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 46.4, 92.3 , 0 );
setMoveKey( spep_1-3 + 80, 1, 24.5, 83 , 0 );
setMoveKey( spep_1-3 + 82, 1, 3.7, 74.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, -20.5, 60.4 , 0 );
setMoveKey( spep_1-3 + 86, 1, -43.8, 47 , 0 );
setMoveKey( spep_1-3 + 88, 1, -63.1, 40.3 , 0 );
setMoveKey( spep_1-3 + 90, 1, -81.6, 34.1 , 0 );
setMoveKey( spep_1-3 + 92, 1, -99.2, 27 , 0 );
setMoveKey( spep_1-3 + 94, 1, -116, 20.4 , 0 );
setMoveKey( spep_1-3 + 96, 1, -131.9, 14.4 , 0 );
setMoveKey( spep_1-3 + 98, 1, -146.6, 9.1 , 0 );
setMoveKey( spep_1-3 + 100, 1, -133, 22.6 , 0 );
setMoveKey( spep_1-3 + 102, 1, -119.8, 35.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, -107, 48.2 , 0 );
setMoveKey( spep_1-3 + 106, 1, -116.5, 38.5 , 0 );
setMoveKey( spep_1-3 + 109, 1, -73.3, 84.7 , 0 );
setMoveKey( spep_1-3 + 110, 1, -23.8, 72.6 , 0 );
setMoveKey( spep_1-3 + 112, 1, -79.5, 130.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, -74.7, 123.2 , 0 );
setMoveKey( spep_1-3 + 116, 1, -68.3, 113.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, -70.7, 127.1 , 0 );
setMoveKey( spep_1-3 + 120, 1, -72.2, 139.3 , 0 );
setMoveKey( spep_1-3 + 122, 1, -80.9, 144 , 0 );
setMoveKey( spep_1-3 + 124, 1, -89.1, 148.1 , 0 );
setMoveKey( spep_1-3 + 126, 1, -94.8, 154.7 , 0 );
setMoveKey( spep_1-3 + 128, 1, -100.1, 160.8 , 0 );
setMoveKey( spep_1-3 + 130, 1, -98.3, 167.5 , 0 );
setMoveKey( spep_1-3 + 132, 1, -96.2, 174 , 0 );
setMoveKey( spep_1-3 + 134, 1, -91.4, 169 , 0 );
setMoveKey( spep_1-3 + 136, 1, -86.4, 163.8 , 0 );
setMoveKey( spep_1-3 + 138, 1, -97.4, 163.9 , 0 );
setMoveKey( spep_1-3 + 140, 1, -108.2, 163.6 , 0 );
setMoveKey( spep_1-3 + 142, 1, -106.8, 171.1 , 0 );
setMoveKey( spep_1-3 + 144, 1, -105.3, 178.4 , 0 );
setMoveKey( spep_1-3 + 146, 1, -111.4, 173.8 , 0 );
setMoveKey( spep_1-3 + 148, 1, -117.6, 169.1 , 0 );
setMoveKey( spep_1-3 + 150, 1, -111.5, 175.8 , 0 );
setMoveKey( spep_1-3 + 152, 1, -105.4, 182.4 , 0 );
setMoveKey( spep_1-3 + 154, 1, -109.1, 177.4 , 0 );
setMoveKey( spep_1-3 + 156, 1, -112.6, 172.3 , 0 );
setMoveKey( spep_1-3 + 158, 1, -110.4, 178.1 , 0 );
setMoveKey( spep_1-3 + 160, 1, -108.1, 183.8 , 0 );
setMoveKey( spep_1-3 + 162, 1, -110.4, 177.5 , 0 );
setMoveKey( spep_1-3 + 164, 1, -112.4, 171 , 0 );
setMoveKey( spep_1-3 + 166, 1, -114.4, 164.2 , 0 );
setMoveKey( spep_1-3 + 168, 1, -106.1, 161 , 0 );
setMoveKey( spep_1-3 + 170, 1, -97.7, 157.6 , 0 );
setMoveKey( spep_1-3 + 172, 1, -88.9, 154 , 0 );
setMoveKey( spep_1-3 + 174, 1, -88.1, 155.8 , 0 );
setMoveKey( spep_1-3 + 176, 1, -87.1, 157.4 , 0 );
setMoveKey( spep_1 + 178, 1, -85.5, 158.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 18, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 22, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 24, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 26, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 28, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 30, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 32, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 36, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 109, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 110, 1, 1.1, 1.1 );
setScaleKey( spep_1-3 + 112, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 114, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 116, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 118, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 120, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 122, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 124, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 126, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 128, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 130, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 132, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 134, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 136, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 138, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 140, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 142, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 144, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 146, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 148, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 150, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 152, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 154, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 156, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 158, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 160, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 162, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 164, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 166, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 170, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 172, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 178, 1, 0.19, 0.19 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 17, 1, 0 );
setRotateKey( spep_1-3 + 18, 1, -23 );
setRotateKey( spep_1-3 + 22, 1, -23 );
setRotateKey( spep_1-3 + 24, 1, -20.6 );
setRotateKey( spep_1-3 + 26, 1, -18.6 );
setRotateKey( spep_1-3 + 28, 1, -17 );
setRotateKey( spep_1-3 + 30, 1, -15.6 );
setRotateKey( spep_1-3 + 32, 1, -14.4 );
setRotateKey( spep_1-3 + 34, 1, -13.3 );
setRotateKey( spep_1-3 + 36, 1, -12.4 );
setRotateKey( spep_1-3 + 38, 1, -11.5 );
setRotateKey( spep_1-3 + 40, 1, -10.8 );
setRotateKey( spep_1-3 + 42, 1, -10.1 );
setRotateKey( spep_1-3 + 44, 1, -9.5 );
setRotateKey( spep_1-3 + 46, 1, -8.9 );
setRotateKey( spep_1-3 + 48, 1, -8.4 );
setRotateKey( spep_1-3 + 50, 1, -7.9 );
setRotateKey( spep_1-3 + 52, 1, -7.5 );
setRotateKey( spep_1-3 + 54, 1, -7.1 );
setRotateKey( spep_1-3 + 56, 1, -6.7 );
setRotateKey( spep_1-3 + 58, 1, -6.3 );
setRotateKey( spep_1-3 + 60, 1, -6 );
setRotateKey( spep_1-3 + 62, 1, -9.7 );
setRotateKey( spep_1-3 + 64, 1, -13.3 );
setRotateKey( spep_1-3 + 67, 1, -17 );
setRotateKey( spep_1-3 + 68, 1, -47 );
setRotateKey( spep_1-3 + 70, 1, -44.2 );
setRotateKey( spep_1-3 + 72, 1, -43 );
setRotateKey( spep_1-3 + 74, 1, -42 );
setRotateKey( spep_1-3 + 76, 1, -41.2 );
setRotateKey( spep_1-3 + 78, 1, -40.5 );
setRotateKey( spep_1-3 + 80, 1, -39.8 );
setRotateKey( spep_1-3 + 82, 1, -39.1 );
setRotateKey( spep_1-3 + 84, 1, -38.5 );
setRotateKey( spep_1-3 + 86, 1, -38 );
setRotateKey( spep_1-3 + 88, 1, -37.4 );
setRotateKey( spep_1-3 + 90, 1, -36.9 );
setRotateKey( spep_1-3 + 92, 1, -36.4 );
setRotateKey( spep_1-3 + 94, 1, -35.9 );
setRotateKey( spep_1-3 + 96, 1, -35.5 );
setRotateKey( spep_1-3 + 98, 1, -35 );
setRotateKey( spep_1-3 + 100, 1, -34.6 );
setRotateKey( spep_1-3 + 102, 1, -34.2 );
setRotateKey( spep_1-3 + 104, 1, -33.8 );
setRotateKey( spep_1-3 + 106, 1, -33.4 );
setRotateKey( spep_1-3 + 109, 1, -33 );
setRotateKey( spep_1-3 + 110, 1, -46.9 );
setRotateKey( spep_1 + 178, 1, -46.9 );

--SE
playSe( spep_1 + 7, 43 );
playSe( spep_1 + 14, 1189 );
playSe( spep_1 + 21, 1010 );
playSe( spep_1 + 55, 1003 );
setSeVolume( spep_1 + 55, 1003, 63 );
playSe( spep_1 + 60, 1007 );
playSe( spep_1 + 62, 1009 );
playSe( spep_1 + 80, 43 );
playSe( spep_1 + 105, 1004 );
setSeVolume( spep_1 + 105, 1004, 63 );
playSe( spep_1 + 109, 1012 );
playSe( spep_1 + 110, 1009 );
setSeVolume( spep_1 + 110, 1009, 79 );
se_1120 = playSe( spep_1 + 111, 1120 );
setSeVolume( spep_1 + 111, 1120, 79 );
playSe( spep_1 + 119, 1110 );
setSeVolume( spep_1 + 119, 1110, 56 );
se_1183 = playSe( spep_1 + 119, 1183 );
setSeVolume( spep_1 + 119, 1183, 63 );


stopSe( spep_1 + 126, se_1120, 13 );

--白フェード
entryFade( spep_1 + 172, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 180;

------------------------------------------------------
-- ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 170, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 170, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 170, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 170, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2+62  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2+62  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusenx = entryEffectLife( spep_2-3 + 62,  906, 106, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 70, shuchusenx, 98, 20 );
setEffMoveKey( spep_2-3 + 62, shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 168, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 62, shuchusenx, 1.53, 1.53 );
setEffScaleKey( spep_2-3 + 168, shuchusenx, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 62, shuchusenx, 180 );
setEffRotateKey( spep_2-3 + 168, shuchusenx, 180 );

setEffAlphaKey( spep_2-3 + 62, shuchusenx, 0 );
setEffAlphaKey( spep_2-3 + 68, shuchusenx, 0 );
setEffAlphaKey( spep_2-3 + 69, shuchusenx, 0 );
setEffAlphaKey( spep_2-3 + 70, shuchusenx, 255 );
setEffAlphaKey( spep_2-3 + 168, shuchusenx, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +76, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +76,  ctgogo,  80,  510);
setEffMoveKey(  spep_2 +148,  ctgogo,  80,  510);

setEffAlphaKey( spep_2 +76, ctgogo, 0 );
setEffAlphaKey( spep_2 + 77, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 142, ctgogo, 255 );
setEffAlphaKey( spep_2 + 144, ctgogo, 191 );
setEffAlphaKey( spep_2 + 146, ctgogo, 112 );
setEffAlphaKey( spep_2 + 148, ctgogo, 64 );

setEffRotateKey(  spep_2 +76,  ctgogo,  0);
setEffRotateKey(  spep_2 +148,  ctgogo,  0);

setEffScaleKey(  spep_2 +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +138,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +148,  ctgogo, 1.07, 1.07 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 166, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_2 + 76, 1018 );
playSe( spep_2 + 8, 1003 );
playSe( spep_2 + 27, 1233 );
setSeVolume( spep_2 + 27, 1233, 89 );
playSe( spep_2 + 34, 1006 );
setSeVolume( spep_2 + 34, 1006, 79 );

stopSe( spep_2 + 18, se_1183, 0 );


--白フェード
entryFade( spep_2 + 162, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 170;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 78, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;

------------------------------------------------------
-- 放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 60, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 58, beam, 255 );
setEffAlphaKey( spep_4 + 59, beam, 255 );
setEffAlphaKey( spep_4 + 60, beam, 0 );

--SE
playSe( spep_4 + 0, 1004 );
setSeVolume( spep_4 + 0, 1004, 89 );
playSe( spep_4 + 6, 1016 );
playSe( spep_4 + 7, 1027 );
setSeVolume( spep_4 + 7, 1027, 50 );
playSe( spep_4 + 9, 1015 );
setSeVolume( spep_4 + 9, 1015, 63 );
se_1177 = playSe( spep_4 + 11, 1177 );
playSe( spep_4 + 28, 1022 );
setSeVolume( spep_4 + 28, 1022, 0 );
setSeVolume( spep_4 + 45, 1022, 0);
setSeVolume( spep_4 + 46, 1022, 8.32 );
setSeVolume( spep_4 + 47, 1022, 16.63 );
setSeVolume( spep_4 + 48, 1022, 24.95 );
setSeVolume( spep_4 + 49, 1022, 33.26 );
setSeVolume( spep_4 + 50, 1022, 41.58 );
setSeVolume( spep_4 + 51, 1022, 49.89 );
setSeVolume( spep_4 + 52, 1022, 58.21 );
setSeVolume( spep_4 + 53, 1022, 66.53 );
setSeVolume( spep_4 + 54, 1022, 74.84 );
setSeVolume( spep_4 + 55, 1022, 83.16 );
setSeVolume( spep_4 + 56, 1022, 91.47 );
setSeVolume( spep_4 + 57, 1022, 99.79 );
setSeVolume( spep_4 + 58, 1022, 108.11 );
setSeVolume( spep_4 + 59, 1022, 116.42 );
setSeVolume( spep_4 + 60, 1022, 124.74 );
setSeVolume( spep_4 + 61, 1022, 133.05 );
setSeVolume( spep_4 + 62, 1022, 141.37 );
setSeVolume( spep_4 + 63, 1022, 149.68 );
setSeVolume( spep_4 + 64, 1022, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 +60;

------------------------------------------------------
-- 気弾が敵に迫る
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
setDisp( spep_5 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 1.6, -1.7 , 0 );
setMoveKey( spep_5 + 2, 1, -2.1, -5.6 , 0 );
setMoveKey( spep_5 + 4, 1, 5.8, -1.7 , 0 );
setMoveKey( spep_5 + 6, 1, 2.2, 2.1 , 0 );
setMoveKey( spep_5 + 8, 1, 0.6, 2.1 , 0 );
setMoveKey( spep_5 + 10, 1, 6.7, -5.5 , 0 );
setMoveKey( spep_5 + 12, 1, 10.9, -9.4 , 0 );
setMoveKey( spep_5 + 14, 1, 19, -5.5 , 0 );
setMoveKey( spep_5 + 16, 1, 15.6, 2.2 , 0 );
setMoveKey( spep_5 + 18, 1, 16.1, -3.5 , 0 );
setMoveKey( spep_5 + 20, 1, 16.7, -1.6 , 0 );
setMoveKey( spep_5 + 22, 1, 19.3, -1.5 , 0 );
setMoveKey( spep_5 + 24, 1, 22, 6.2 , 0 );
setMoveKey( spep_5 + 26, 1, 20.9, 12 , 0 );
setMoveKey( spep_5 + 28, 1, 27.6, 10.1 , 0 );
setMoveKey( spep_5 + 30, 1, 24.8, 10.2 , 0 );
setMoveKey( spep_5 + 32, 1, 26.1, 6.4 , 0 );
setMoveKey( spep_5 + 34, 1, 31.3, 2.6 , 0 );
setMoveKey( spep_5 + 36, 1, 25.1, 2.7 , 0 );
setMoveKey( spep_5 + 38, 1, 23, 6.6 , 0 );
setMoveKey( spep_5 + 40, 1, 32.6, -1 , 0 );
setMoveKey( spep_5 + 42, 1, 27.1, -4.7 , 0 );
setMoveKey( spep_5 + 44, 1, 37.3, -12.3 , 0 );
setMoveKey( spep_5 + 46, 1, 32.4, -4.5 , 0 );
setMoveKey( spep_5 + 48, 1, 35.6, -12 , 0 );
setMoveKey( spep_5 + 50, 1, 39.3, -8 , 0 );
setMoveKey( spep_5 + 52, 1, 43.4, -7.8 , 0 );
setMoveKey( spep_5 + 54, 1, 44.3, -3.7 , 0 );
setMoveKey( spep_5 + 56, 1, 49.8, 0.4 , 0 );
setMoveKey( spep_5 + 58, 1, 60.2, -7.8 , 0 );

setScaleKey( spep_5 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 4, 1, 0.18, 0.18 );
setScaleKey( spep_5 + 6, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_5 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 12, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_5 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 20, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_5 + 24, 1, 0.38, 0.38 );
setScaleKey( spep_5 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 28, 1, 0.45, 0.45 );
setScaleKey( spep_5 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 32, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 34, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 36, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 42, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_5 + 46, 1, 1.14, 1.14 );
setScaleKey( spep_5 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 50, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 54, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 56, 1, 2.03, 2.03 );
setScaleKey( spep_5 + 58, 1, 2.29, 2.29 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 58, 1, 0 );

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 +60;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 200, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 200, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 200, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 200, finish, 255 );

--SE
playSe( spep_6 + 6, 1023 );
playSe( spep_6 + 8, 1008 );
setSeVolume( spep_6 + 8, 1008, 79 );
playSe( spep_6 + 36, 1159 );
setSeVolume( spep_6 + 36, 1159, 79 );
playSe( spep_6 + 45, 1024 );
setSeVolume( spep_6 + 45, 1024, 79 );

stopSe( spep_6 + 34, se_1177, 0 );

--終わり
dealDamage( spep_6+10  );
endPhase( spep_6 + 190 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 立ち→移動
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
idou_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, idou_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80, idou_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou_f, 0 );
setEffRotateKey( spep_0 + 80, idou_f, 0 );
setEffAlphaKey( spep_0 + 0, idou_f, 255 );
setEffAlphaKey( spep_0 + 80, idou_f, 255 );

-- ** エフェクト等 ** --
idou_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, idou_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80, idou_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou_b, 0 );
setEffRotateKey( spep_0 + 80, idou_b, 0 );
setEffAlphaKey( spep_0 + 0, idou_b, 255 );
setEffAlphaKey( spep_0 + 80, idou_b, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

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

--SE
playSe( spep_0 + 59, 43 );

--白フェード
entryFade( spep_0 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 80;

------------------------------------------------------
-- 格闘
------------------------------------------------------

-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 180, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 180, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 180, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 180, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 180, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 180, fighting_b, 255 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 6,  10000, 10, 0x100, -1, 0, 149.8, 180.7 );--!!

setEffMoveKey( spep_1-3 + 6, ctbikkuri, 149.8, 180.7 , 0 );
setEffMoveKey( spep_1-3 + 8, ctbikkuri, 126.7, 153.5 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbikkuri, 119.7, 153.1 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbikkuri, 126.3, 160.5 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbikkuri, 126.7, 153.5 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbikkuri, 119.7, 153.1 , 0 );

setEffScaleKey( spep_1-3 + 6, ctbikkuri, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 8, ctbikkuri, 1.61, 1.61 );
setEffScaleKey( spep_1-3 + 16, ctbikkuri, 1.61, 1.61 );

setEffRotateKey( spep_1-3 + 6, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 8, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 16, ctbikkuri, 18 );

setEffAlphaKey( spep_1-3 + 6, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 16, ctbikkuri, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 106,  10020, 20, 0x100, -1, 0, -50.8, 273.3 );
setEffShake( spep_1-3 + 106, ctbaki, 20, 10 );
setEffMoveKey( spep_1-3 + 106, ctbaki, -50.8, 273.3 , 0 );
setEffMoveKey( spep_1-3 + 108, ctbaki, 20.1, 231.1 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbaki, -109.6, 275.6 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbaki, -51.5, 245.8 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbaki, -93.1, 242.2 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbaki, -50.8, 242.3 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbaki, -65.1, 256.7 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbaki, -64, 255.7 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbaki, -65.2, 254.6 , 0 );
setEffMoveKey( spep_1-3 + 124, ctbaki, -66.3, 253.6 , 0 );
setEffMoveKey( spep_1-3 + 126, ctbaki, -74.1, 259.1 , 0 );
--setEffMoveKey( spep_1-3 + 128, ctbaki, -74.6, 259.4 , 0 );

setEffScaleKey( spep_1-3 + 106, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_1-3 + 108, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-3 + 110, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1-3 + 112, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 114, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 116, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1-3 + 118, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 120, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1-3 + 122, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_1-3 + 124, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_1-3 + 126, ctbaki, 1.84, 1.84 );

setEffRotateKey( spep_1-3 + 106, ctbaki, 29.9 );
setEffRotateKey( spep_1-3 + 108, ctbaki, -4.7 );
setEffRotateKey( spep_1-3 + 110, ctbaki, 10.3 );
setEffRotateKey( spep_1-3 + 112, ctbaki, 5 );
setEffRotateKey( spep_1-3 + 114, ctbaki, 15.2 );
setEffRotateKey( spep_1-3 + 116, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 124, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 126, ctbaki, 7.5 );
--setEffRotateKey( spep_1-3 + 128, ctbaki, 7.6 );

setEffAlphaKey( spep_1-3 + 106, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 118, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 120, ctbaki, 198 );
setEffAlphaKey( spep_1-3 + 122, ctbaki, 142 );
setEffAlphaKey( spep_1-3 + 124, ctbaki, 85 );
setEffAlphaKey( spep_1-3 + 126, ctbaki, 0 );

--流線
ryusen1 = entryEffectLife( spep_1-3 + 60,  914, 44, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1-3 + 60, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 104, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 60, ryusen1, 7.53, 2.32 );
setEffScaleKey( spep_1-3 + 104, ryusen1, 7.53, 2.32 );

setEffRotateKey( spep_1-3 + 60, ryusen1, -24 );
setEffRotateKey( spep_1-3 + 104, ryusen1, -24 );

setEffAlphaKey( spep_1-3 + 60, ryusen1, 20 );
setEffAlphaKey( spep_1-3 + 62, ryusen1, 41 );
setEffAlphaKey( spep_1-3 + 64, ryusen1, 61 );
setEffAlphaKey( spep_1-3 + 66, ryusen1, 81 );
setEffAlphaKey( spep_1-3 + 68, ryusen1, 102 );
setEffAlphaKey( spep_1-3 + 104, ryusen1, 102 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 18,  906, 38, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 18, shuchusen1, 38, 20 );
setEffMoveKey( spep_1-3 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 56, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 18, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_1-3 + 56, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_1-3 + 18, shuchusen1, 180 );
setEffRotateKey( spep_1-3 + 56, shuchusen1, 180 );

setEffAlphaKey( spep_1-3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_1-3 + 56, shuchusen1, 255 );


--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 178, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 18, 1, 108 );
changeAnime( spep_1-3 + 68, 1, 106 );
changeAnime( spep_1-3 + 110, 1, 5 );

setMoveKey( spep_1 + 0, 1, 111.8, -13.5 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 111.7, -13.5 , 0 );
setMoveKey( spep_1-3 + 17, 1, 111.7, -13.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, 100.8, 17 , 0 );
setMoveKey( spep_1-3 + 20, 1, 133.1, 41.8 , 0 );
setMoveKey( spep_1-3 + 22, 1, 129.4, 30.8 , 0 );
setMoveKey( spep_1-3 + 24, 1, 157.5, 74.1 , 0 );
setMoveKey( spep_1-3 + 26, 1, 153.1, 53 , 0 );
setMoveKey( spep_1-3 + 28, 1, 163.7, 70.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 164.4, 65.4 , 0 );
setMoveKey( spep_1-3 + 32, 1, 168.9, 76.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 168.6, 72.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, 170, 81.1 , 0 );
setMoveKey( spep_1-3 + 38, 1, 172.5, 76.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 177, 83.4 , 0 );
setMoveKey( spep_1-3 + 42, 1, 180.2, 85.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, 183.1, 88 , 0 );
setMoveKey( spep_1-3 + 46, 1, 185.7, 89.9 , 0 );
setMoveKey( spep_1-3 + 48, 1, 188.1, 91.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 190.3, 93.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 192.3, 94.9 , 0 );
setMoveKey( spep_1-3 + 54, 1, 194.2, 96.3 , 0 );
setMoveKey( spep_1-3 + 56, 1, 195.9, 97.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 201.8, 104.9 , 0 );
setMoveKey( spep_1-3 + 60, 1, 198.2, 102.4 , 0 );
setMoveKey( spep_1-3 + 62, 1, 246.4, 120 , 0 );
setMoveKey( spep_1-3 + 64, 1, 281.4, 150.4 , 0 );
setMoveKey( spep_1-3 + 67, 1, 120.2, 20.2 , 0 );
setMoveKey( spep_1-3 + 68, 1, 135.4, 95.9 , 0 );
setMoveKey( spep_1-3 + 70, 1, 145.1, 129.7 , 0 );
setMoveKey( spep_1-3 + 72, 1, 123, 124 , 0 );
setMoveKey( spep_1-3 + 74, 1, 99.9, 115.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 72.6, 103.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 46.4, 92.3 , 0 );
setMoveKey( spep_1-3 + 80, 1, 24.5, 83 , 0 );
setMoveKey( spep_1-3 + 82, 1, 3.7, 74.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, -20.5, 60.4 , 0 );
setMoveKey( spep_1-3 + 86, 1, -43.8, 47 , 0 );
setMoveKey( spep_1-3 + 88, 1, -63.1, 40.3 , 0 );
setMoveKey( spep_1-3 + 90, 1, -81.6, 34.1 , 0 );
setMoveKey( spep_1-3 + 92, 1, -99.2, 27 , 0 );
setMoveKey( spep_1-3 + 94, 1, -116, 20.4 , 0 );
setMoveKey( spep_1-3 + 96, 1, -131.9, 14.4 , 0 );
setMoveKey( spep_1-3 + 98, 1, -146.6, 9.1 , 0 );
--setMoveKey( spep_1-3 + 100, 1, -133, 22.6 , 0 );
--setMoveKey( spep_1-3 + 102, 1, -119.8, 35.6 , 0 );
--setMoveKey( spep_1-3 + 104, 1, -107, 48.2 , 0 );
--setMoveKey( spep_1-3 + 106, 1, -116.5, 38.5 , 0 );
setMoveKey( spep_1-3 + 109, 1, 73.3, 84.7 , 0 );
setMoveKey( spep_1-3 + 110, 1, 23.8, 72.6 , 0 );
setMoveKey( spep_1-3 + 112, 1, 79.5, 130.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 74.7, 123.2 , 0 );
setMoveKey( spep_1-3 + 116, 1, 68.3, 113.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 70.7, 127.1 , 0 );
setMoveKey( spep_1-3 + 120, 1, 72.2, 139.3 , 0 );
setMoveKey( spep_1-3 + 122, 1, 80.9, 144 , 0 );
setMoveKey( spep_1-3 + 124, 1, 89.1, 148.1 , 0 );
setMoveKey( spep_1-3 + 126, 1, 94.8, 154.7 , 0 );
setMoveKey( spep_1-3 + 128, 1, 100.1, 160.8 , 0 );
setMoveKey( spep_1-3 + 130, 1, 98.3, 167.5 , 0 );
setMoveKey( spep_1-3 + 132, 1, 96.2, 174 , 0 );
setMoveKey( spep_1-3 + 134, 1, 91.4, 169 , 0 );
setMoveKey( spep_1-3 + 136, 1, 86.4, 163.8 , 0 );
setMoveKey( spep_1-3 + 138, 1, 97.4, 163.9 , 0 );
setMoveKey( spep_1-3 + 140, 1, 108.2, 163.6 , 0 );
setMoveKey( spep_1-3 + 142, 1, 106.8, 171.1 , 0 );
setMoveKey( spep_1-3 + 144, 1, 105.3, 178.4 , 0 );
setMoveKey( spep_1-3 + 146, 1, 111.4, 173.8 , 0 );
setMoveKey( spep_1-3 + 148, 1, 117.6, 169.1 , 0 );
setMoveKey( spep_1-3 + 150, 1, 111.5, 175.8 , 0 );
setMoveKey( spep_1-3 + 152, 1, 105.4, 182.4 , 0 );
setMoveKey( spep_1-3 + 154, 1, 109.1, 177.4 , 0 );
setMoveKey( spep_1-3 + 156, 1, 112.6, 172.3 , 0 );
setMoveKey( spep_1-3 + 158, 1, 110.4, 178.1 , 0 );
setMoveKey( spep_1-3 + 160, 1, 108.1, 183.8 , 0 );
setMoveKey( spep_1-3 + 162, 1, 110.4, 177.5 , 0 );
setMoveKey( spep_1-3 + 164, 1, 112.4, 171 , 0 );
setMoveKey( spep_1-3 + 166, 1, 114.4, 164.2 , 0 );
setMoveKey( spep_1-3 + 168, 1, 106.1, 161 , 0 );
setMoveKey( spep_1-3 + 170, 1, 97.7, 157.6 , 0 );
setMoveKey( spep_1-3 + 172, 1, 88.9, 154 , 0 );
setMoveKey( spep_1-3 + 174, 1, 88.1, 155.8 , 0 );
setMoveKey( spep_1-3 + 176, 1, 87.1, 157.4 , 0 );
setMoveKey( spep_1 + 178, 1, 85.5, 158.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 18, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 22, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 24, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 26, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 28, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 30, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 32, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 36, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 109, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 110, 1, 1.1, 1.1 );
setScaleKey( spep_1-3 + 112, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 114, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 116, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 118, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 120, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 122, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 124, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 126, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 128, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 130, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 132, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 134, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 136, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 138, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 140, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 142, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 144, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 146, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 148, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 150, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 152, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 154, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 156, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 158, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 160, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 162, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 164, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 166, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 170, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 172, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 178, 1, 0.19, 0.19 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 17, 1, 0 );
setRotateKey( spep_1-3 + 18, 1, -23 );
setRotateKey( spep_1-3 + 22, 1, -23 );
setRotateKey( spep_1-3 + 24, 1, -20.6 );
setRotateKey( spep_1-3 + 26, 1, -18.6 );
setRotateKey( spep_1-3 + 28, 1, -17 );
setRotateKey( spep_1-3 + 30, 1, -15.6 );
setRotateKey( spep_1-3 + 32, 1, -14.4 );
setRotateKey( spep_1-3 + 34, 1, -13.3 );
setRotateKey( spep_1-3 + 36, 1, -12.4 );
setRotateKey( spep_1-3 + 38, 1, -11.5 );
setRotateKey( spep_1-3 + 40, 1, -10.8 );
setRotateKey( spep_1-3 + 42, 1, -10.1 );
setRotateKey( spep_1-3 + 44, 1, -9.5 );
setRotateKey( spep_1-3 + 46, 1, -8.9 );
setRotateKey( spep_1-3 + 48, 1, -8.4 );
setRotateKey( spep_1-3 + 50, 1, -7.9 );
setRotateKey( spep_1-3 + 52, 1, -7.5 );
setRotateKey( spep_1-3 + 54, 1, -7.1 );
setRotateKey( spep_1-3 + 56, 1, -6.7 );
setRotateKey( spep_1-3 + 58, 1, -6.3 );
setRotateKey( spep_1-3 + 60, 1, -6 );
setRotateKey( spep_1-3 + 62, 1, -9.7 );
setRotateKey( spep_1-3 + 64, 1, -13.3 );
setRotateKey( spep_1-3 + 67, 1, -17 );
setRotateKey( spep_1-3 + 68, 1, -47 );
setRotateKey( spep_1-3 + 70, 1, -44.2 );
setRotateKey( spep_1-3 + 72, 1, -43 );
setRotateKey( spep_1-3 + 74, 1, -42 );
setRotateKey( spep_1-3 + 76, 1, -41.2 );
setRotateKey( spep_1-3 + 78, 1, -40.5 );
setRotateKey( spep_1-3 + 80, 1, -39.8 );
setRotateKey( spep_1-3 + 82, 1, -39.1 );
setRotateKey( spep_1-3 + 84, 1, -38.5 );
setRotateKey( spep_1-3 + 86, 1, -38 );
setRotateKey( spep_1-3 + 88, 1, -37.4 );
setRotateKey( spep_1-3 + 90, 1, -36.9 );
setRotateKey( spep_1-3 + 92, 1, -36.4 );
setRotateKey( spep_1-3 + 94, 1, -35.9 );
setRotateKey( spep_1-3 + 96, 1, -35.5 );
setRotateKey( spep_1-3 + 98, 1, -35 );
setRotateKey( spep_1-3 + 100, 1, -34.6 );
setRotateKey( spep_1-3 + 102, 1, -34.2 );
setRotateKey( spep_1-3 + 104, 1, -33.8 );
setRotateKey( spep_1-3 + 106, 1, -33.4 );
setRotateKey( spep_1-3 + 109, 1, -33 );
setRotateKey( spep_1-3 + 110, 1, 46.9 );
setRotateKey( spep_1 + 178, 1, 46.9 );

--SE
playSe( spep_1 + 7, 43 );
playSe( spep_1 + 14, 1189 );
playSe( spep_1 + 21, 1010 );
playSe( spep_1 + 55, 1003 );
setSeVolume( spep_1 + 55, 1003, 63 );
playSe( spep_1 + 60, 1007 );
playSe( spep_1 + 62, 1009 );
playSe( spep_1 + 80, 43 );
playSe( spep_1 + 105, 1004 );
setSeVolume( spep_1 + 105, 1004, 63 );
playSe( spep_1 + 109, 1012 );
playSe( spep_1 + 110, 1009 );
setSeVolume( spep_1 + 110, 1009, 79 );
se_1120 = playSe( spep_1 + 111, 1120 );
setSeVolume( spep_1 + 111, 1120, 79 );
playSe( spep_1 + 119, 1110 );
setSeVolume( spep_1 + 119, 1110, 56 );
se_1183 = playSe( spep_1 + 119, 1183 );
setSeVolume( spep_1 + 119, 1183, 63 );


stopSe( spep_1 + 126, se_1120, 13 );

--白フェード
entryFade( spep_1 + 172, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 180;

------------------------------------------------------
-- ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 170, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 170, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 170, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 170, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2+62  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2+62  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusenx = entryEffectLife( spep_2-3 + 62,  906, 106, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 70, shuchusenx, 98, 20 );
setEffMoveKey( spep_2-3 + 62, shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 168, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 62, shuchusenx, 1.53, 1.53 );
setEffScaleKey( spep_2-3 + 168, shuchusenx, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 62, shuchusenx, 180 );
setEffRotateKey( spep_2-3 + 168, shuchusenx, 180 );

setEffAlphaKey( spep_2-3 + 62, shuchusenx, 0 );
setEffAlphaKey( spep_2-3 + 68, shuchusenx, 0 );
setEffAlphaKey( spep_2-3 + 69, shuchusenx, 0 );
setEffAlphaKey( spep_2-3 + 70, shuchusenx, 255 );
setEffAlphaKey( spep_2-3 + 168, shuchusenx, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +76, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +76,  ctgogo,  80,  510);
setEffMoveKey(  spep_2 +148,  ctgogo,  80,  510);

setEffAlphaKey( spep_2 +76, ctgogo, 0 );
setEffAlphaKey( spep_2 + 77, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 142, ctgogo, 255 );
setEffAlphaKey( spep_2 + 144, ctgogo, 191 );
setEffAlphaKey( spep_2 + 146, ctgogo, 112 );
setEffAlphaKey( spep_2 + 148, ctgogo, 64 );

setEffRotateKey(  spep_2 +76,  ctgogo,  0);
setEffRotateKey(  spep_2 +148,  ctgogo,  0);

setEffScaleKey(  spep_2 +76,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +138,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +148,  ctgogo, -1.07, 1.07 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 166, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_2 + 76, 1018 );
playSe( spep_2 + 8, 1003 );
playSe( spep_2 + 27, 1233 );
setSeVolume( spep_2 + 27, 1233, 89 );
playSe( spep_2 + 34, 1006 );
setSeVolume( spep_2 + 34, 1006, 79 );

stopSe( spep_2 + 18, se_1183, 0 );


--白フェード
entryFade( spep_2 + 162, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 170;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 78, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;

------------------------------------------------------
-- 放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 + 60, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 60, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 58, beam, 255 );
setEffAlphaKey( spep_4 + 59, beam, 255 );
setEffAlphaKey( spep_4 + 60, beam, 0 );

--SE
playSe( spep_4 + 0, 1004 );
setSeVolume( spep_4 + 0, 1004, 89 );
playSe( spep_4 + 6, 1016 );
playSe( spep_4 + 7, 1027 );
setSeVolume( spep_4 + 7, 1027, 50 );
playSe( spep_4 + 9, 1015 );
setSeVolume( spep_4 + 9, 1015, 63 );
se_1177 = playSe( spep_4 + 11, 1177 );
playSe( spep_4 + 28, 1022 );
setSeVolume( spep_4 + 28, 1022, 0 );
setSeVolume( spep_4 + 45, 1022, 0);
setSeVolume( spep_4 + 46, 1022, 8.32 );
setSeVolume( spep_4 + 47, 1022, 16.63 );
setSeVolume( spep_4 + 48, 1022, 24.95 );
setSeVolume( spep_4 + 49, 1022, 33.26 );
setSeVolume( spep_4 + 50, 1022, 41.58 );
setSeVolume( spep_4 + 51, 1022, 49.89 );
setSeVolume( spep_4 + 52, 1022, 58.21 );
setSeVolume( spep_4 + 53, 1022, 66.53 );
setSeVolume( spep_4 + 54, 1022, 74.84 );
setSeVolume( spep_4 + 55, 1022, 83.16 );
setSeVolume( spep_4 + 56, 1022, 91.47 );
setSeVolume( spep_4 + 57, 1022, 99.79 );
setSeVolume( spep_4 + 58, 1022, 108.11 );
setSeVolume( spep_4 + 59, 1022, 116.42 );
setSeVolume( spep_4 + 60, 1022, 124.74 );
setSeVolume( spep_4 + 61, 1022, 133.05 );
setSeVolume( spep_4 + 62, 1022, 141.37 );
setSeVolume( spep_4 + 63, 1022, 149.68 );
setSeVolume( spep_4 + 64, 1022, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 +60;

------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 60, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 60, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 60, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 5 );

setMoveKey( spep_5 + 0, 1, -1.6, -1.7 , 0 );
setMoveKey( spep_5 + 2, 1, 2.1, -5.6 , 0 );
setMoveKey( spep_5 + 4, 1, -5.8, -1.7 , 0 );
setMoveKey( spep_5 + 6, 1, -2.2, 2.1 , 0 );
setMoveKey( spep_5 + 8, 1, -0.6, 2.1 , 0 );
setMoveKey( spep_5 + 10, 1, -6.7, -5.5 , 0 );
setMoveKey( spep_5 + 12, 1, -10.9, -9.4 , 0 );
setMoveKey( spep_5 + 14, 1, -19, -5.5 , 0 );
setMoveKey( spep_5 + 16, 1, -15.6, 2.2 , 0 );
setMoveKey( spep_5 + 18, 1, -16.1, -3.5 , 0 );
setMoveKey( spep_5 + 20, 1, -16.7, -1.6 , 0 );
setMoveKey( spep_5 + 22, 1, -19.3, -1.5 , 0 );
setMoveKey( spep_5 + 24, 1, -22, 6.2 , 0 );
setMoveKey( spep_5 + 26, 1, -20.9, 12 , 0 );
setMoveKey( spep_5 + 28, 1, -27.6, 10.1 , 0 );
setMoveKey( spep_5 + 30, 1, -24.8, 10.2 , 0 );
setMoveKey( spep_5 + 32, 1, -26.1, 6.4 , 0 );
setMoveKey( spep_5 + 34, 1, -31.3, 2.6 , 0 );
setMoveKey( spep_5 + 36, 1, -25.1, 2.7 , 0 );
setMoveKey( spep_5 + 38, 1, -23, 6.6 , 0 );
setMoveKey( spep_5 + 40, 1, -32.6, -1 , 0 );
setMoveKey( spep_5 + 42, 1, -27.1, -4.7 , 0 );
setMoveKey( spep_5 + 44, 1, -37.3, -12.3 , 0 );
setMoveKey( spep_5 + 46, 1, -32.4, -4.5 , 0 );
setMoveKey( spep_5 + 48, 1, -35.6, -12 , 0 );
setMoveKey( spep_5 + 50, 1, -39.3, -8 , 0 );
setMoveKey( spep_5 + 52, 1, -43.4, -7.8 , 0 );
setMoveKey( spep_5 + 54, 1, -44.3, -3.7 , 0 );
setMoveKey( spep_5 + 56, 1, -49.8, 0.4 , 0 );
setMoveKey( spep_5 + 58, 1, -60.2, -7.8 , 0 );

setScaleKey( spep_5 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 4, 1, 0.18, 0.18 );
setScaleKey( spep_5 + 6, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_5 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 12, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_5 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 20, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_5 + 24, 1, 0.38, 0.38 );
setScaleKey( spep_5 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 28, 1, 0.45, 0.45 );
setScaleKey( spep_5 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 32, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 34, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 36, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 42, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_5 + 46, 1, 1.14, 1.14 );
setScaleKey( spep_5 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 50, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 54, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 56, 1, 2.03, 2.03 );
setScaleKey( spep_5 + 58, 1, 2.29, 2.29 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 58, 1, 0 );

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 +60;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 200, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 200, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 200, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 200, finish, 255 );

--SE
playSe( spep_6 + 6, 1023 );
playSe( spep_6 + 8, 1008 );
setSeVolume( spep_6 + 8, 1008, 79 );
playSe( spep_6 + 36, 1159 );
setSeVolume( spep_6 + 36, 1159, 79 );
playSe( spep_6 + 45, 1024 );
setSeVolume( spep_6 + 45, 1024, 79 );

stopSe( spep_6 + 34, se_1177, 0 );

--終わり
dealDamage( spep_6+10  );
endPhase( spep_6 + 190 );

end
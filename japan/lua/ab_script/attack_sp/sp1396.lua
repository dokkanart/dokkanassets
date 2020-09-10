--4018890:ゴクウブラック(超サイヤ人ロゼ)_憤怒の葬送曲
--sp_effect_b4_00133

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
SP_01=	154978	;--	手前突進
SP_02=	154979	;--	斬撃〜サマソ後まで・手前
SP_03=	154980	;--	斬撃〜サマソ後まで・奥
SP_04=	154981	;--	ナビ正面
SP_05=	154982	;--	飛びつき斬撃〜十字空間
SP_06=	154983	;--	KO演出

--敵側
SP_01x=	154978	;--	手前突進	
SP_02x=	154984	;--	斬撃〜サマソ後まで・手前	(敵)
SP_03x=	154985	;--	斬撃〜サマソ後まで・奥	(敵)
SP_04x=	154981	;--	ナビ正面	
SP_05x=	154982	;--	飛びつき斬撃〜十字空間	
SP_06x=	154983	;--	KO演出	

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
-- 手前突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_0 + 66, tossin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 66, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 66, tossin, 255 );
setEffAlphaKey( spep_0 + 67, tossin, 0 );
setEffAlphaKey( spep_0 + 68, tossin, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 ,  906, 66, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 66, 20 );
setEffMoveKey( spep_0 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusen1, 1.21, 1.44 );
setEffScaleKey( spep_0 + 66, shuchusen1, 1.21, 1.42 );


setEffRotateKey( spep_0 , shuchusen1, 180.3 );
setEffRotateKey( spep_0 + 66, shuchusen1, 180.3 );

setEffAlphaKey( spep_0 , shuchusen1, 27 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 55 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 82 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 109 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 137 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 164 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 191 );
setEffAlphaKey( spep_0 + 64, shuchusen1, 191 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 191 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 0 );

--SE
SE0=playSe( spep_0 + 0, 9 );
SE1=playSe( spep_0 + 0, 1182 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    stopSe( SP_dodge, SE0, 0 );
    stopSe( SP_dodge, SE1, 0 );

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

--次の準備
spep_1 = spep_0+66;

------------------------------------------------------
-- 斬撃〜サマソ後まで・手前
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, zangeki_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 536, zangeki_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, zangeki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 536, zangeki_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zangeki_f, 0 );
setEffRotateKey( spep_1 + 536, zangeki_f, 0 );
setEffAlphaKey( spep_1 + 0, zangeki_f, 255 );
setEffAlphaKey( spep_1 + 536, zangeki_f, 255 );
setEffAlphaKey( spep_1 + 537, zangeki_f, 0 );
setEffAlphaKey( spep_1 + 538, zangeki_f, 0 );

-- ** エフェクト等 ** --
zangeki_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, zangeki_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 536, zangeki_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, zangeki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 536, zangeki_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zangeki_b, 0 );
setEffRotateKey( spep_1 + 536, zangeki_b, 0 );
setEffAlphaKey( spep_1 + 0, zangeki_b, 255 );
setEffAlphaKey( spep_1 + 536, zangeki_b, 255 );
setEffAlphaKey( spep_1 + 537, zangeki_b, 0 );
setEffAlphaKey( spep_1 + 538, zangeki_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 494, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 12, 1, 106 );
changeAnime( spep_1-3 + 92, 1, 108 );
changeAnime( spep_1-3 + 200, 1, 105 );
changeAnime( spep_1-3 + 290, 1, 7 );
changeAnime( spep_1-3 + 386, 1, 105 );

setMoveKey( spep_1 + 0, 1, 1296.7, -74.1 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 1068, -62.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 839.3, -50.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 610.7, -38.3 , 0 );
setMoveKey( spep_1-3 + 8, 1, 382.1, -26.4 , 0 );
setMoveKey( spep_1-3 + 11, 1, 153.5, -14.4 , 0 );
setMoveKey( spep_1-3 + 12, 1, 76.9, -27.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 131, 18.4 , 0 );
setMoveKey( spep_1-3 + 16, 1, 122.1, 12.2 , 0 );
setMoveKey( spep_1-3 + 18, 1, 163.8, 20.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, 156.6, -5.2 , 0 );
setMoveKey( spep_1-3 + 22, 1, 179.5, 21.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, 171.9, 6.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 190.8, 21.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 182.8, 2.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 193.7, 22.2 , 0 );
setMoveKey( spep_1-3 + 32, 1, 188.2, 14.4 , 0 );
setMoveKey( spep_1-3 + 34, 1, 198, 22.7 , 0 );
setMoveKey( spep_1-3 + 36, 1, 199.6, 22.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, 202.3, 22.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 204.6, 23.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 206.8, 23.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 208.9, 23.3 , 0 );
setMoveKey( spep_1-3 + 46, 1, 210.4, 23.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 211.9, 23.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, 210.2, 23.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 208.4, 23.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, 206.6, 23.5 , 0 );
setMoveKey( spep_1-3 + 56, 1, 204.8, 23.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 203.1, 23.5 , 0 );
setMoveKey( spep_1-3 + 60, 1, 201.3, 23.5 , 0 );
setMoveKey( spep_1-3 + 62, 1, 199.5, 23.5 , 0 );
setMoveKey( spep_1-3 + 64, 1, 201, 23.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, 202.3, 23.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, 203.7, 23.5 , 0 );
setMoveKey( spep_1-3 + 70, 1, 205.1, 23.5 , 0 );
setMoveKey( spep_1-3 + 72, 1, 206.5, 23.5 , 0 );
setMoveKey( spep_1-3 + 74, 1, 207.8, 23.5 , 0 );
setMoveKey( spep_1-3 + 76, 1, 209.2, 23.5 , 0 );
setMoveKey( spep_1-3 + 78, 1, 193.4, 23.9 , 0 );
setMoveKey( spep_1-3 + 80, 1, 177.9, 24.3 , 0 );
setMoveKey( spep_1-3 + 82, 1, 162.9, 24.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 148.1, 25.1 , 0 );
setMoveKey( spep_1-3 + 86, 1, 133.8, 25.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, 119.8, 25.9 , 0 );
setMoveKey( spep_1-3 + 91, 1, 106.1, 26.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, 140.6, -97.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 156.7, -49.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 131.8, -64.3 , 0 );
setMoveKey( spep_1-3 + 98, 1, 164.3, -44.8 , 0 );
setMoveKey( spep_1-3 + 100, 1, 156.6, -66.1 , 0 );
setMoveKey( spep_1-3 + 102, 1, 179.1, -44.1 , 0 );
setMoveKey( spep_1-3 + 104, 1, 175, -58.9 , 0 );
setMoveKey( spep_1-3 + 106, 1, 193.1, -43.4 , 0 );
setMoveKey( spep_1-3 + 108, 1, 50.7, -32.9 , 0 );
setMoveKey( spep_1-3 + 110, 1, 3.7, -22.4 , 0 );
setMoveKey( spep_1-3 + 112, 1, 46, -11.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 171.4, -0.9 , 0 );
setMoveKey( spep_1-3 + 116, 1, 602.8, 7.4 , 0 );
setMoveKey( spep_1-3 + 118, 1, 1114, 15.9 , 0 );
setMoveKey( spep_1-3 + 120, 1, 1002.7, 23.9 , 0 );
setMoveKey( spep_1-3 + 122, 1, 891.3, 31.8 , 0 );
setMoveKey( spep_1-3 + 124, 1, 779.8, 39.9 , 0 );
setMoveKey( spep_1-3 + 126, 1, 668.3, 47.8 , 0 );
setMoveKey( spep_1-3 + 128, 1, 556.7, 55.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, 445.1, 63.8 , 0 );
setMoveKey( spep_1-3 + 132, 1, 333.5, 71.7 , 0 );
setMoveKey( spep_1-3 + 134, 1, 221.8, 79.7 , 0 );
setMoveKey( spep_1-3 + 136, 1, 110, 87.7 , 0 );
setMoveKey( spep_1-3 + 138, 1, -1.8, 95.7 , 0 );
setMoveKey( spep_1-3 + 140, 1, -10, 97.8 , 0 );
setMoveKey( spep_1-3 + 142, 1, -18.1, 99.9 , 0 );
setMoveKey( spep_1-3 + 144, 1, -26.3, 102 , 0 );
setMoveKey( spep_1-3 + 146, 1, -34.5, 104.1 , 0 );
setMoveKey( spep_1-3 + 148, 1, -42.7, 106.3 , 0 );
setMoveKey( spep_1-3 + 150, 1, -50.9, 108.4 , 0 );
setMoveKey( spep_1-3 + 152, 1, -59.1, 110.5 , 0 );
setMoveKey( spep_1-3 + 154, 1, -67.2, 112.7 , 0 );
setMoveKey( spep_1-3 + 156, 1, -75.4, 114.8 , 0 );
setMoveKey( spep_1-3 + 158, 1, -83.6, 116.9 , 0 );
setMoveKey( spep_1-3 + 160, 1, -91.8, 119.1 , 0 );
setMoveKey( spep_1-3 + 162, 1, -100, 121.2 , 0 );
setMoveKey( spep_1-3 + 164, 1, -98.6, 121.2 , 0 );
setMoveKey( spep_1-3 + 166, 1, -94.1, 121.2 , 0 );
setMoveKey( spep_1-3 + 168, 1, -89.6, 121.2 , 0 );
setMoveKey( spep_1-3 + 170, 1, -85.1, 121.2 , 0 );
setMoveKey( spep_1-3 + 172, 1, -80.7, 121.2 , 0 );
setMoveKey( spep_1-3 + 174, 1, -76.2, 121.2 , 0 );
setMoveKey( spep_1-3 + 176, 1, -71.7, 121.2 , 0 );
setMoveKey( spep_1-3 + 178, 1, -67.2, 121.2 , 0 );
setMoveKey( spep_1-3 + 180, 1, -62.8, 121.3 , 0 );
setMoveKey( spep_1-3 + 182, 1, -58.3, 121.3 , 0 );
setMoveKey( spep_1-3 + 184, 1, -53.8, 121.3 , 0 );
setMoveKey( spep_1-3 + 186, 1, -49.3, 121.3 , 0 );
setMoveKey( spep_1-3 + 188, 1, -44.9, 121.3 , 0 );
setMoveKey( spep_1-3 + 190, 1, -40.4, 121.3 , 0 );
setMoveKey( spep_1-3 + 192, 1, -35.9, 121.3 , 0 );
setMoveKey( spep_1-3 + 194, 1, -31.4, 121.3 , 0 );
setMoveKey( spep_1-3 + 196, 1, -26.9, 121.3 , 0 );
setMoveKey( spep_1-3 + 199, 1, -22.5, 121.3 , 0 );
setMoveKey( spep_1-3 + 200, 1, -43, 91.6 , 0 );
setMoveKey( spep_1-3 + 202, 1, -17.7, 123.2 , 0 );
setMoveKey( spep_1-3 + 204, 1, -45.2, 111.6 , 0 );
setMoveKey( spep_1-3 + 206, 1, -21.6, 130.5 , 0 );
setMoveKey( spep_1-3 + 208, 1, -42.7, 108.5 , 0 );
setMoveKey( spep_1-3 + 210, 1, -25.5, 137.9 , 0 );
setMoveKey( spep_1-3 + 212, 1, -57, 126.3 , 0 );
setMoveKey( spep_1-3 + 214, 1, -29.4, 145.2 , 0 );
setMoveKey( spep_1-3 + 216, 1, -46.6, 122.5 , 0 );
setMoveKey( spep_1-3 + 218, 1, -33.4, 152.6 , 0 );
setMoveKey( spep_1-3 + 220, 1, -43.7, 127.3 , 0 );
setMoveKey( spep_1-3 + 222, 1, -30.2, 129.2 , 0 );
setMoveKey( spep_1-3 + 224, 1, -28.7, 119.1 , 0 );
setMoveKey( spep_1-3 + 226, 1, -27.2, 109 , 0 );
setMoveKey( spep_1-3 + 228, 1, -25.8, 98.8 , 0 );
setMoveKey( spep_1-3 + 230, 1, -24.3, 88.6 , 0 );
setMoveKey( spep_1-3 + 232, 1, -22.8, 78.3 , 0 );
setMoveKey( spep_1-3 + 234, 1, -21.2, 67.9 , 0 );
setMoveKey( spep_1-3 + 236, 1, -19.8, 57.6 , 0 );
setMoveKey( spep_1-3 + 238, 1, -18.2, 47.2 , 0 );
setMoveKey( spep_1-3 + 240, 1, -16.6, 36.7 , 0 );
setMoveKey( spep_1-3 + 242, 1, -15.1, 26.2 , 0 );
setMoveKey( spep_1-3 + 244, 1, -13.6, 15.7 , 0 );
setMoveKey( spep_1-3 + 246, 1, -12, 5.1 , 0 );
setMoveKey( spep_1-3 + 248, 1, -10.4, -5.5 , 0 );
setMoveKey( spep_1-3 + 250, 1, -8.8, -16.2 , 0 );
setMoveKey( spep_1-3 + 252, 1, -7.2, -27 , 0 );
setMoveKey( spep_1-3 + 254, 1, -5.6, -39.4 , 0 );
setMoveKey( spep_1-3 + 256, 1, -4.3, -40 , 0 );
setMoveKey( spep_1-3 + 258, 1, -3, -40.5 , 0 );
setMoveKey( spep_1-3 + 260, 1, -1.8, -40.9 , 0 );
setMoveKey( spep_1-3 + 262, 1, -0.5, -41.3 , 0 );
setMoveKey( spep_1-3 + 264, 1, 0.7, -41.5 , 0 );
setMoveKey( spep_1-3 + 266, 1, 1.9, -41.7 , 0 );
setMoveKey( spep_1-3 + 268, 1, 3.1, -42 , 0 );
setMoveKey( spep_1-3 + 270, 1, 4.2, -42 , 0 );
setMoveKey( spep_1-3 + 272, 1, 5.3, -42 , 0 );
setMoveKey( spep_1-3 + 274, 1, 6.4, -42 , 0 );
setMoveKey( spep_1-3 + 276, 1, 7.5, -41.9 , 0 );
setMoveKey( spep_1-3 + 278, 1, 8.5, -41.7 , 0 );
setMoveKey( spep_1-3 + 280, 1, 9.5, -41.4 , 0 );
setMoveKey( spep_1-3 + 282, 1, 10.6, -41 , 0 );
setMoveKey( spep_1-3 + 284, 1, 11.6, -40.7 , 0 );
setMoveKey( spep_1-3 + 286, 1, 12.6, -40.2 , 0 );
setMoveKey( spep_1-3 + 289, 1, -9.4, -55.6 , 0 );
setMoveKey( spep_1-3 + 290, 1, -27.3, -82.6 , 0 );
setMoveKey( spep_1-3 + 292, 1, 2.8, -44.5 , 0 );
setMoveKey( spep_1-3 + 294, 1, -21.2, -66.9 , 0 );
setMoveKey( spep_1-3 + 296, 1, 6.3, -44 , 0 );
setMoveKey( spep_1-3 + 298, 1, 1, -54.7 , 0 );
setMoveKey( spep_1-3 + 300, 1, 8.4, -33.5 , 0 );
setMoveKey( spep_1-3 + 302, 1, -9.8, -50.7 , 0 );
setMoveKey( spep_1-3 + 304, 1, 10.4, -23.1 , 0 );
setMoveKey( spep_1-3 + 306, 1, -4.7, -50 , 0 );
setMoveKey( spep_1-3 + 308, 1, 12.2, -12.9 , 0 );
setMoveKey( spep_1-3 + 310, 1, 11.8, -9.4 , 0 );
setMoveKey( spep_1-3 + 312, 1, 12.9, 3 , 0 );
setMoveKey( spep_1-3 + 314, 1, 14, 15.4 , 0 );
setMoveKey( spep_1-3 + 316, 1, 15.1, 27.4 , 0 );
setMoveKey( spep_1-3 + 318, 1, 16.2, 39.5 , 0 );
setMoveKey( spep_1-3 + 320, 1, 17.2, 51.5 , 0 );
setMoveKey( spep_1-3 + 322, 1, 18.4, 63.4 , 0 );
setMoveKey( spep_1-3 + 324, 1, 19.6, 70.5 , 0 );
setMoveKey( spep_1-3 + 326, 1, 20.7, 77.6 , 0 );
setMoveKey( spep_1-3 + 328, 1, 21.9, 84.7 , 0 );
setMoveKey( spep_1-3 + 330, 1, 23.1, 91.5 , 0 );
setMoveKey( spep_1-3 + 332, 1, 24.2, 98.6 , 0 );
setMoveKey( spep_1-3 + 334, 1, 25.4, 105.5 , 0 );
setMoveKey( spep_1-3 + 336, 1, 26.6, 112.4 , 0 );
setMoveKey( spep_1-3 + 338, 1, 27.8, 119.1 , 0 );
setMoveKey( spep_1-3 + 340, 1, 29, 125.9 , 0 );
setMoveKey( spep_1-3 + 342, 1, 30.2, 132.7 , 0 );
setMoveKey( spep_1-3 + 344, 1, 31.3, 139.3 , 0 );
setMoveKey( spep_1-3 + 346, 1, 32.5, 146 , 0 );
setMoveKey( spep_1-3 + 348, 1, 33.9, 151.7 , 0 );
setMoveKey( spep_1-3 + 350, 1, 35.3, 157.3 , 0 );
setMoveKey( spep_1-3 + 352, 1, 36.8, 162.9 , 0 );
setMoveKey( spep_1-3 + 354, 1, 38.2, 168.5 , 0 );
setMoveKey( spep_1-3 + 356, 1, 39.6, 174 , 0 );
setMoveKey( spep_1-3 + 358, 1, 41.1, 179.4 , 0 );
setMoveKey( spep_1-3 + 360, 1, 42.5, 185 , 0 );
setMoveKey( spep_1-3 + 362, 1, 43.9, 190.4 , 0 );
setMoveKey( spep_1-3 + 364, 1, 45.3, 195.8 , 0 );
setMoveKey( spep_1-3 + 366, 1, 42.5, 186.2 , 0 );
setMoveKey( spep_1-3 + 368, 1, 39.5, 176.6 , 0 );
setMoveKey( spep_1-3 + 370, 1, 36.6, 167 , 0 );
setMoveKey( spep_1-3 + 372, 1, 33.7, 157.6 , 0 );
setMoveKey( spep_1-3 + 374, 1, 30.8, 148.3 , 0 );
setMoveKey( spep_1-3 + 376, 1, 28, 138.9 , 0 );
setMoveKey( spep_1-3 + 378, 1, 25.1, 129.7 , 0 );
setMoveKey( spep_1-3 + 380, 1, 22.3, 120.5 , 0 );
setMoveKey( spep_1-3 + 382, 1, 19.5, 111.4 , 0 );
setMoveKey( spep_1-3 + 385, 1, 16.7, 102.4 , 0 );
setMoveKey( spep_1-3 + 386, 1, 50.2, 146.6 , 0 );
setMoveKey( spep_1-3 + 388, 1, 52.7, 163 , 0 );
setMoveKey( spep_1-3 + 390, 1, 32.9, 143 , 0 );
setMoveKey( spep_1-3 + 392, 1, 45.4, 154.6 , 0 );
setMoveKey( spep_1-3 + 394, 1, 38.7, 131.8 , 0 );
setMoveKey( spep_1-3 + 396, 1, 45, 147.5 , 0 );
setMoveKey( spep_1-3 + 398, 1, 25.5, 127.9 , 0 );
setMoveKey( spep_1-3 + 400, 1, 44.5, 140.5 , 0 );
setMoveKey( spep_1-3 + 402, 1, 37.9, 111.5 , 0 );
setMoveKey( spep_1-3 + 404, 1, 44.1, 133.8 , 0 );
setMoveKey( spep_1-3 + 406, 1, 21.4, 111.1 , 0 );
setMoveKey( spep_1-3 + 408, 1, 56.1, 40.9 , 0 );
setMoveKey( spep_1-3 + 410, 1, 66.6, -37.2 , 0 );
setMoveKey( spep_1-3 + 412, 1, 75.6, -103.9 , 0 );
setMoveKey( spep_1-3 + 414, 1, 83, -159 , 0 );
setMoveKey( spep_1-3 + 416, 1, 88.8, -202.5 , 0 );
setMoveKey( spep_1-3 + 418, 1, 93.1, -234.3 , 0 );
setMoveKey( spep_1-3 + 420, 1, 95.8, -254.4 , 0 );
setMoveKey( spep_1-3 + 422, 1, 94.8, -250 , 0 );
setMoveKey( spep_1-3 + 424, 1, 93.6, -245.2 , 0 );
setMoveKey( spep_1-3 + 426, 1, 92.4, -240 , 0 );
setMoveKey( spep_1-3 + 428, 1, 91.1, -234.6 , 0 );
setMoveKey( spep_1-3 + 430, 1, 89.7, -228.8 , 0 );
setMoveKey( spep_1-3 + 432, 1, 88.2, -222.6 , 0 );
setMoveKey( spep_1-3 + 434, 1, 86.7, -216.2 , 0 );
setMoveKey( spep_1-3 + 436, 1, 85.1, -209.3 , 0 );
setMoveKey( spep_1-3 + 438, 1, 83.4, -202.2 , 0 );
setMoveKey( spep_1-3 + 440, 1, 81.6, -194.6 , 0 );
setMoveKey( spep_1-3 + 442, 1, 79.6, -186.7 , 0 );
setMoveKey( spep_1-3 + 444, 1, 77.7, -178.4 , 0 );
setMoveKey( spep_1-3 + 446, 1, 75.6, -169.7 , 0 );
setMoveKey( spep_1-3 + 448, 1, 73.4, -160.9 , 0 );
setMoveKey( spep_1-3 + 450, 1, 71.2, -151.5 , 0 );
setMoveKey( spep_1-3 + 452, 1, 68.9, -141.7 , 0 );
setMoveKey( spep_1-3 + 454, 1, 66.5, -131.7 , 0 );
setMoveKey( spep_1-3 + 456, 1, 64, -121.4 , 0 );
setMoveKey( spep_1-3 + 458, 1, 61.4, -110.5 , 0 );
setMoveKey( spep_1-3 + 460, 1, 58.6, -99.4 , 0 );
setMoveKey( spep_1-3 + 462, 1, 55.8, -87.8 , 0 );
setMoveKey( spep_1-3 + 464, 1, 53, -75.8 , 0 );
setMoveKey( spep_1-3 + 466, 1, 50, -63.7 , 0 );
setMoveKey( spep_1-3 + 468, 1, 46.9, -51 , 0 );
setMoveKey( spep_1-3 + 470, 1, 43.8, -37.9 , 0 );
setMoveKey( spep_1-3 + 472, 1, 40.5, -24.5 , 0 );
setMoveKey( spep_1-3 + 474, 1, 37.2, -10.7 , 0 );
setMoveKey( spep_1-3 + 476, 1, 33.7, 3.5 , 0 );
setMoveKey( spep_1-3 + 478, 1, 30.2, 18 , 0 );
setMoveKey( spep_1-3 + 480, 1, 47.1, -120.7 , 0 );
setMoveKey( spep_1-3 + 482, 1, 67.3, -285.4 , 0 );
setMoveKey( spep_1-3 + 484, 1, 90.8, -474.8 , 0 );
setMoveKey( spep_1-3 + 486, 1, 117.4, -687.8 , 0 );
setMoveKey( spep_1-3 + 488, 1, 146.9, -923.5 , 0 );
setMoveKey( spep_1-3 + 490, 1, 179.4, -1180.6 , 0 );
setMoveKey( spep_1-3 + 492, 1, 214.5, -1458.2 , 0 );
setMoveKey( spep_1-3 + 494, 1, 252.3, -1755.2 , 0 );

setScaleKey( spep_1 + 0, 1, 4.25, 4.25 );
--setScaleKey( spep_1-3 + 2, 1, 3.77, 3.77 );
setScaleKey( spep_1-3 + 4, 1, 3.28, 3.28 );
setScaleKey( spep_1-3 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_1-3 + 8, 1, 2.31, 2.31 );
setScaleKey( spep_1-3 + 11, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 12, 1, 2.32, 2.32 );
setScaleKey( spep_1-3 + 14, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 16, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 18, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 20, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 22, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 24, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 26, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 30, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 34, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 36, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 38, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 40, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 42, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 48, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 58, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 60, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 76, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 78, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 80, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 82, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 84, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 86, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 88, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 91, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 92, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 94, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 96, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 98, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 100, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 102, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 104, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 106, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 108, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 110, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 112, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 114, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 116, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 118, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 120, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 122, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 124, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 126, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 128, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 130, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 132, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 134, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 136, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 138, 1, 1.13, 1.13 );
setScaleKey( spep_1-3 + 199, 1, 1.13, 1.13 );
setScaleKey( spep_1-3 + 200, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 202, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 204, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 206, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 208, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 210, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 212, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 214, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 216, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 218, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 220, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 222, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 224, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 226, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 228, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 230, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 232, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 234, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 236, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 238, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 240, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 242, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 244, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 246, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 248, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 250, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 252, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 254, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 256, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 258, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 260, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 262, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 264, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 266, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 268, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 270, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 272, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 274, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 276, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 278, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 280, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 282, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 284, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 286, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 289, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 290, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 292, 1, 0.6, 0.61 );
setScaleKey( spep_1-3 + 294, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 296, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 298, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 300, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 302, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 304, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 306, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 308, 1, 0.77, 0.77 );
setScaleKey( spep_1-3 + 310, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 312, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 314, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 316, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 318, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 320, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 322, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 324, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 326, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 328, 1, 0.54, 0.54 );
setScaleKey( spep_1-3 + 330, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 332, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 334, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 336, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 338, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 340, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 342, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 344, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 346, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 356, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 358, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 364, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 366, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 368, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 370, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 372, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 374, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 376, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 378, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 380, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 382, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 385, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 386, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 388, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 390, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 392, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 394, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 400, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 402, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 406, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 408, 1, 1.88, 1.88 );
setScaleKey( spep_1-3 + 410, 1, 2.47, 2.47 );
setScaleKey( spep_1-3 + 412, 1, 2.97, 2.97 );
setScaleKey( spep_1-3 + 414, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 416, 1, 3.71, 3.71 );
setScaleKey( spep_1-3 + 418, 1, 3.96, 3.96 );
setScaleKey( spep_1-3 + 420, 1, 4.11, 4.11 );
setScaleKey( spep_1-3 + 422, 1, 4.07, 4.07 );
setScaleKey( spep_1-3 + 424, 1, 4.03, 4.03 );
setScaleKey( spep_1-3 + 426, 1, 3.99, 3.99 );
setScaleKey( spep_1-3 + 428, 1, 3.94, 3.94 );
setScaleKey( spep_1-3 + 430, 1, 3.89, 3.89 );
setScaleKey( spep_1-3 + 432, 1, 3.84, 3.84 );
setScaleKey( spep_1-3 + 434, 1, 3.79, 3.79 );
setScaleKey( spep_1-3 + 436, 1, 3.73, 3.73 );
setScaleKey( spep_1-3 + 438, 1, 3.66, 3.66 );
setScaleKey( spep_1-3 + 440, 1, 3.6, 3.6 );
setScaleKey( spep_1-3 + 442, 1, 3.53, 3.53 );
setScaleKey( spep_1-3 + 444, 1, 3.46, 3.46 );
setScaleKey( spep_1-3 + 446, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 448, 1, 3.3, 3.3 );
setScaleKey( spep_1-3 + 450, 1, 3.22, 3.22 );
setScaleKey( spep_1-3 + 452, 1, 3.13, 3.13 );
setScaleKey( spep_1-3 + 454, 1, 3.04, 3.04 );
setScaleKey( spep_1-3 + 456, 1, 2.95, 2.95 );
setScaleKey( spep_1-3 + 458, 1, 2.85, 2.85 );
setScaleKey( spep_1-3 + 460, 1, 2.75, 2.75 );
setScaleKey( spep_1-3 + 462, 1, 2.65, 2.65 );
setScaleKey( spep_1-3 + 464, 1, 2.54, 2.54 );
setScaleKey( spep_1-3 + 466, 1, 2.43, 2.43 );
setScaleKey( spep_1-3 + 468, 1, 2.32, 2.32 );
setScaleKey( spep_1-3 + 470, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 472, 1, 2.08, 2.08 );
setScaleKey( spep_1-3 + 474, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 476, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 478, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 480, 1, 3.64, 3.64 );
setScaleKey( spep_1-3 + 482, 1, 5.96, 5.96 );
setScaleKey( spep_1-3 + 484, 1, 8.65, 8.65 );
setScaleKey( spep_1-3 + 486, 1, 11.68, 11.68 );
setScaleKey( spep_1-3 + 488, 1, 15.04, 15.04 );
setScaleKey( spep_1-3 + 490, 1, 18.71, 18.71 );
setScaleKey( spep_1-3 + 492, 1, 22.67, 22.67 );
setScaleKey( spep_1-3 + 494, 1, 26.92, 26.92 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 11, 1, 0 );
setRotateKey( spep_1-3 + 12, 1, -11.5 );
setRotateKey( spep_1-3 + 14, 1, -11.4 );
setRotateKey( spep_1-3 + 20, 1, -11.4 );
setRotateKey( spep_1-3 + 22, 1, -11.3 );
setRotateKey( spep_1-3 + 28, 1, -11.3 );
setRotateKey( spep_1-3 + 30, 1, -11.1 );
setRotateKey( spep_1-3 + 32, 1, -10.9 );
setRotateKey( spep_1-3 + 34, 1, -10.6 );
setRotateKey( spep_1-3 + 36, 1, -10.4 );
setRotateKey( spep_1-3 + 38, 1, -10.2 );
setRotateKey( spep_1-3 + 40, 1, -9.9 );
setRotateKey( spep_1-3 + 42, 1, -9.7 );
setRotateKey( spep_1-3 + 44, 1, -9.5 );
setRotateKey( spep_1-3 + 46, 1, -9.3 );
setRotateKey( spep_1-3 + 48, 1, -9 );
setRotateKey( spep_1-3 + 50, 1, -8.8 );
setRotateKey( spep_1-3 + 52, 1, -8.6 );
setRotateKey( spep_1-3 + 54, 1, -8.3 );
setRotateKey( spep_1-3 + 56, 1, -8.1 );
setRotateKey( spep_1-3 + 58, 1, -7.9 );
setRotateKey( spep_1-3 + 60, 1, -7.7 );
setRotateKey( spep_1-3 + 62, 1, -7.4 );
setRotateKey( spep_1-3 + 64, 1, -7.2 );
setRotateKey( spep_1-3 + 66, 1, -7 );
setRotateKey( spep_1-3 + 68, 1, -6.7 );
setRotateKey( spep_1-3 + 70, 1, -6.5 );
setRotateKey( spep_1-3 + 72, 1, -6.3 );
setRotateKey( spep_1-3 + 74, 1, -6.1 );
setRotateKey( spep_1-3 + 76, 1, -5.8 );
setRotateKey( spep_1-3 + 78, 1, -5.6 );
setRotateKey( spep_1-3 + 80, 1, -5.4 );
setRotateKey( spep_1-3 + 82, 1, -5.1 );
setRotateKey( spep_1-3 + 84, 1, -4.9 );
setRotateKey( spep_1-3 + 86, 1, -4.7 );
setRotateKey( spep_1-3 + 88, 1, -4.5 );
setRotateKey( spep_1-3 + 91, 1, -4.2 );
setRotateKey( spep_1-3 + 92, 1, 2.2 );
setRotateKey( spep_1-3 + 136, 1, 2.2 );
setRotateKey( spep_1-3 + 138, 1, 2.1 );
setRotateKey( spep_1-3 + 184, 1, 2.1 );
setRotateKey( spep_1-3 + 186, 1, 2.2 );
setRotateKey( spep_1-3 + 199, 1, 2.2 );
setRotateKey( spep_1-3 + 200, 1, -40.2 );
setRotateKey( spep_1-3 + 202, 1, -39.9 );
setRotateKey( spep_1-3 + 204, 1, -39.7 );
setRotateKey( spep_1-3 + 206, 1, -39.5 );
setRotateKey( spep_1-3 + 208, 1, -39.3 );
setRotateKey( spep_1-3 + 210, 1, -39 );
setRotateKey( spep_1-3 + 212, 1, -38.8 );
setRotateKey( spep_1-3 + 214, 1, -38.6 );
setRotateKey( spep_1-3 + 216, 1, -38.4 );
setRotateKey( spep_1-3 + 218, 1, -38.2 );
setRotateKey( spep_1-3 + 220, 1, -37.9 );
setRotateKey( spep_1-3 + 289, 1, -37.9 );
setRotateKey( spep_1-3 + 290, 1, 0 );
setRotateKey( spep_1-3 + 494, 1, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_1-3 + 12,  10010, 26, 0x100, -1, 0, 39.6, 314.3 );--ザンッ
setEffShake( spep_1-3 + 12, ctzan, 25, 10 );
setEffMoveKey( spep_1-3 + 12, ctzan, 39.6, 314.3 , 0 );
setEffMoveKey( spep_1-3 + 14, ctzan, 24.3, 335.2 , 0 );
setEffMoveKey( spep_1-3 + 16, ctzan, 39.7, 313.5 , 0 );
setEffMoveKey( spep_1-3 + 18, ctzan, 39.6, 314.2 , 0 );
setEffMoveKey( spep_1-3 + 20, ctzan, 25.5, 333.9 , 0 );
setEffMoveKey( spep_1-3 + 22, ctzan, 39.6, 314.3 , 0 );
setEffMoveKey( spep_1-3 + 24, ctzan, 25.6, 333.7 , 0 );
setEffMoveKey( spep_1-3 + 26, ctzan, 39.5, 314.3 , 0 );
setEffMoveKey( spep_1-3 + 28, ctzan, 25.7, 333.5 , 0 );
setEffMoveKey( spep_1-3 + 30, ctzan, 39.5, 314.4 , 0 );
setEffMoveKey( spep_1-3 + 32, ctzan, 25.8, 333.3 , 0 );
setEffMoveKey( spep_1-3 + 34, ctzan, 39.5, 314.3 , 0 );
setEffMoveKey( spep_1-3 + 36, ctzan, 25.9, 333.1 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzan, 26, 333 , 0 );

setEffScaleKey( spep_1-3 + 12, ctzan, 2.06, 2.06 );
setEffScaleKey( spep_1-3 + 14, ctzan, 3.36, 3.36 );
setEffScaleKey( spep_1-3 + 16, ctzan, 4.67, 4.67 );
setEffScaleKey( spep_1-3 + 18, ctzan, 3.12, 3.12 );
setEffScaleKey( spep_1-3 + 20, ctzan, 3.1, 3.1 );
setEffScaleKey( spep_1-3 + 22, ctzan, 3.08, 3.08 );
setEffScaleKey( spep_1-3 + 24, ctzan, 3.06, 3.06 );
setEffScaleKey( spep_1-3 + 26, ctzan, 3.04, 3.04 );
setEffScaleKey( spep_1-3 + 28, ctzan, 3.02, 3.02 );
setEffScaleKey( spep_1-3 + 30, ctzan, 3, 3 );
setEffScaleKey( spep_1-3 + 32, ctzan, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 34, ctzan, 2.97, 2.97 );
setEffScaleKey( spep_1-3 + 36, ctzan, 2.96, 2.96 );
setEffScaleKey( spep_1-3 + 38, ctzan, 2.95, 2.95 );

setEffRotateKey( spep_1-3 + 12, ctzan, 14.5 );
setEffRotateKey( spep_1-3 + 20, ctzan, 14.5 );
setEffRotateKey( spep_1-3 + 22, ctzan, 14.4 );
setEffRotateKey( spep_1-3 + 28, ctzan, 14.4 );
setEffRotateKey( spep_1-3 + 30, ctzan, 14.3 );
setEffRotateKey( spep_1-3 + 32, ctzan, 14.4 );
setEffRotateKey( spep_1-3 + 34, ctzan, 14.4 );
setEffRotateKey( spep_1-3 + 36, ctzan, 14.5 );
setEffRotateKey( spep_1-3 + 38, ctzan, 14.5 );

setEffAlphaKey( spep_1-3 + 12, ctzan, 255 );
setEffAlphaKey( spep_1-3 + 30, ctzan, 255 );
setEffAlphaKey( spep_1-3 + 32, ctzan, 191 );
setEffAlphaKey( spep_1-3 + 34, ctzan, 128 );
setEffAlphaKey( spep_1-3 + 36, ctzan, 64 );
setEffAlphaKey( spep_1-3 + 38, ctzan, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_1-3 + 92,  10016, 16, 0x100, -1, 0, 116.8, 362.4 );--ズンッ

setEffMoveKey( spep_1-3 + 92, ctzun, 116.8, 362.4 , 0 );
setEffMoveKey( spep_1-3 + 94, ctzun, 116.8, 362.4 , 0 );
setEffMoveKey( spep_1-3 + 96, ctzun, 112.2, 369.7 , 0 );
setEffMoveKey( spep_1-3 + 98, ctzun, 116.9, 362.3 , 0 );
setEffMoveKey( spep_1-3 + 100, ctzun, 116.9, 362.3 , 0 );
setEffMoveKey( spep_1-3 + 102, ctzun, 112.9, 368.4 , 0 );
setEffMoveKey( spep_1-3 + 104, ctzun, 113, 367.9 , 0 );
setEffMoveKey( spep_1-3 + 106, ctzun, 116.7, 362.4 , 0 );
setEffMoveKey( spep_1-3 + 108, ctzun, 116.7, 362.5 , 0 );

setEffScaleKey( spep_1-3 + 92, ctzun, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 94, ctzun, 3.07, 3.07 );
setEffScaleKey( spep_1-3 + 96, ctzun, 2.91, 2.91 );
setEffScaleKey( spep_1-3 + 98, ctzun, 2.75, 2.75 );
setEffScaleKey( spep_1-3 + 100, ctzun, 2.59, 2.59 );
setEffScaleKey( spep_1-3 + 102, ctzun, 2.42, 2.42 );
setEffScaleKey( spep_1-3 + 104, ctzun, 2.25, 2.25 );
setEffScaleKey( spep_1-3 + 106, ctzun, 2.03, 2.03 );
setEffScaleKey( spep_1-3 + 108, ctzun, 1.82, 1.82 );

setEffRotateKey( spep_1-3 + 92, ctzun, 15.2 );
setEffRotateKey( spep_1-3 + 100, ctzun, 15.2 );
setEffRotateKey( spep_1-3 + 102, ctzun, 15.1 );
setEffRotateKey( spep_1-3 + 104, ctzun, 15 );
setEffRotateKey( spep_1-3 + 106, ctzun, 15.1 );
setEffRotateKey( spep_1-3 + 108, ctzun, 15.2 );

setEffAlphaKey( spep_1-3 + 92, ctzun, 255 );
setEffAlphaKey( spep_1-3 + 100, ctzun, 255 );
setEffAlphaKey( spep_1-3 + 102, ctzun, 223 );
setEffAlphaKey( spep_1-3 + 104, ctzun, 191 );
setEffAlphaKey( spep_1-3 + 106, ctzun, 102 );
setEffAlphaKey( spep_1-3 + 108, ctzun, 13 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 200,  10005, 22, 0x100, -1, 0, 57.7, 343.2 );--ガッ

setEffMoveKey( spep_1-3 + 200, ctga, 57.7, 343.2 , 0 );
setEffMoveKey( spep_1-3 + 202, ctga, 58, 343.3 , 0 );
setEffMoveKey( spep_1-3 + 204, ctga, 57.8, 343.6 , 0 );
setEffMoveKey( spep_1-3 + 206, ctga, 57.8, 343.4 , 0 );
setEffMoveKey( spep_1-3 + 208, ctga, 57.9, 343.5 , 0 );
setEffMoveKey( spep_1-3 + 210, ctga, 57.8, 343.5 , 0 );
setEffMoveKey( spep_1-3 + 212, ctga, 57.8, 343.3 , 0 );
setEffMoveKey( spep_1-3 + 216, ctga, 57.8, 343.3 , 0 );
setEffMoveKey( spep_1-3 + 218, ctga, 57.9, 343.3 , 0 );
setEffMoveKey( spep_1-3 + 222, ctga, 57.9, 343.3 , 0 );

setEffScaleKey( spep_1-3 + 200, ctga, 0.98, 0.98 );
setEffScaleKey( spep_1-3 + 202, ctga, 2.1, 2.1 );
setEffScaleKey( spep_1-3 + 204, ctga, 2.66, 2.66 );
setEffScaleKey( spep_1-3 + 206, ctga, 2.53, 2.53 );
setEffScaleKey( spep_1-3 + 208, ctga, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 210, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 212, ctga, 2.16, 2.16 );
setEffScaleKey( spep_1-3 + 214, ctga, 2.15, 2.15 );
setEffScaleKey( spep_1-3 + 216, ctga, 2.14, 2.14 );
setEffScaleKey( spep_1-3 + 218, ctga, 2.12, 2.12 );
setEffScaleKey( spep_1-3 + 220, ctga, 2.1, 2.1 );
setEffScaleKey( spep_1-3 + 222, ctga, 2.09, 2.09 );

setEffRotateKey( spep_1-3 + 200, ctga, 16 );
setEffRotateKey( spep_1-3 + 202, ctga, 2.7 );
setEffRotateKey( spep_1-3 + 204, ctga, 16 );
setEffRotateKey( spep_1-3 + 206, ctga, 24.6 );
setEffRotateKey( spep_1-3 + 208, ctga, 15.8 );
setEffRotateKey( spep_1-3 + 210, ctga, 5.1 );
setEffRotateKey( spep_1-3 + 212, ctga, 16 );
setEffRotateKey( spep_1-3 + 214, ctga, 15.9 );
setEffRotateKey( spep_1-3 + 218, ctga, 15.9 );
setEffRotateKey( spep_1-3 + 220, ctga, 16 );
setEffRotateKey( spep_1-3 + 222, ctga, 16 );

setEffAlphaKey( spep_1-3 + 200, ctga, 255 );
setEffAlphaKey( spep_1-3 + 214, ctga, 255 );
setEffAlphaKey( spep_1-3 + 216, ctga, 191 );
setEffAlphaKey( spep_1-3 + 218, ctga, 128 );
setEffAlphaKey( spep_1-3 + 220, ctga, 64 );
setEffAlphaKey( spep_1-3 + 222, ctga, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 12,  906, 22, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 12, shuchusen2, 22, 20 );
setEffMoveKey( spep_1-3 + 12, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 34, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 12, shuchusen2, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 34, shuchusen2, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 12, shuchusen2, 0.3 );
setEffRotateKey( spep_1-3 + 12, shuchusen2, 0.3 );

setEffAlphaKey( spep_1-3 + 12, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 26, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 28, shuchusen2, 143 );
setEffAlphaKey( spep_1-3 + 30, shuchusen2, 96 );
setEffAlphaKey( spep_1-3 + 32, shuchusen2, 48 );
setEffAlphaKey( spep_1-3 + 34, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 92,  906, 20, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 92, shuchusen3, 20, 20 );
setEffMoveKey( spep_1-3 + 92, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 112, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 92, shuchusen3, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 112, shuchusen3, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 92, shuchusen3, 0.3 );
setEffRotateKey( spep_1-3 + 112, shuchusen3, 0.3 );

setEffAlphaKey( spep_1-3 + 92, shuchusen3, 191 );
setEffAlphaKey( spep_1-3 + 106, shuchusen3, 191 );
setEffAlphaKey( spep_1-3 + 108, shuchusen3, 128 );
setEffAlphaKey( spep_1-3 + 110, shuchusen3, 64 );
setEffAlphaKey( spep_1-3 + 112, shuchusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_1-3 + 200,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 200, shuchusen4, 24, 20 );
setEffMoveKey( spep_1-3 + 200, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 224, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 200, shuchusen4, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 224, shuchusen4, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 200, shuchusen4, 0.3 );
setEffRotateKey( spep_1-3 + 224, shuchusen4, 0.3 );

setEffAlphaKey( spep_1-3 + 200, shuchusen4, 191 );
setEffAlphaKey( spep_1-3 + 216, shuchusen4, 191 );
setEffAlphaKey( spep_1-3 + 218, shuchusen4, 143 );
setEffAlphaKey( spep_1-3 + 220, shuchusen4, 96 );
setEffAlphaKey( spep_1-3 + 222, shuchusen4, 48 );
setEffAlphaKey( spep_1-3 + 224, shuchusen4, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_1-3 + 290,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 290, shuchusen5, 24, 20 );
setEffMoveKey( spep_1-3 + 290, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 314, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 290, shuchusen5, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 314, shuchusen5, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 290, shuchusen5, 0.3 );
setEffRotateKey( spep_1-3 + 314, shuchusen5, 0.3 );

setEffAlphaKey( spep_1-3 + 290, shuchusen5, 191 );
setEffAlphaKey( spep_1-3 + 304, shuchusen5, 191 );
setEffAlphaKey( spep_1-3 + 306, shuchusen5, 153 );
setEffAlphaKey( spep_1-3 + 308, shuchusen5, 115 );
setEffAlphaKey( spep_1-3 + 310, shuchusen5, 77 );
setEffAlphaKey( spep_1-3 + 312, shuchusen5, 38 );
setEffAlphaKey( spep_1-3 + 314, shuchusen5, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_1-3 + 386,  906, 28, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 386, shuchusen6, 28, 20 );
setEffMoveKey( spep_1-3 + 386, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 414, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 386, shuchusen6, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 414, shuchusen6, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 386, shuchusen6, 0.3 );
setEffRotateKey( spep_1-3 + 414, shuchusen6, 0.3 );

setEffAlphaKey( spep_1-3 + 386, shuchusen6, 191 );
setEffAlphaKey( spep_1-3 + 406, shuchusen6, 191 );
setEffAlphaKey( spep_1-3 + 408, shuchusen6, 143 );
setEffAlphaKey( spep_1-3 + 410, shuchusen6, 96 );
setEffAlphaKey( spep_1-3 + 412, shuchusen6, 48 );
setEffAlphaKey( spep_1-3 + 414, shuchusen6, 0 );

--集中線
shuchusenj7 = entryEffectLife( spep_1-3 + 504,  906, 52, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 504, shuchusenj7, 52, 20 );
setEffMoveKey( spep_1-3 + 504, shuchusenj7, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 556, shuchusenj7, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 504, shuchusenj7, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 556, shuchusenj7, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 504, shuchusenj7, 0.3 );
setEffRotateKey( spep_1-3 + 556, shuchusenj7, 0.3 );

setEffAlphaKey( spep_1-3 + 504, shuchusenj7, 44 );
setEffAlphaKey( spep_1-3 + 506, shuchusenj7, 54 );
setEffAlphaKey( spep_1-3 + 508, shuchusenj7, 65 );
setEffAlphaKey( spep_1-3 + 510, shuchusenj7, 75 );
setEffAlphaKey( spep_1-3 + 512, shuchusenj7, 86 );
setEffAlphaKey( spep_1-3 + 514, shuchusenj7, 96 );
setEffAlphaKey( spep_1-3 + 516, shuchusenj7, 107 );
setEffAlphaKey( spep_1-3 + 518, shuchusenj7, 117 );
setEffAlphaKey( spep_1-3 + 520, shuchusenj7, 128 );
setEffAlphaKey( spep_1-3 + 522, shuchusenj7, 138 );
setEffAlphaKey( spep_1-3 + 524, shuchusenj7, 149 );
setEffAlphaKey( spep_1-3 + 526, shuchusenj7, 159 );
setEffAlphaKey( spep_1-3 + 528, shuchusenj7, 170 );
setEffAlphaKey( spep_1-3 + 530, shuchusenj7, 180 );
setEffAlphaKey( spep_1-3 + 532, shuchusenj7, 191 );
setEffAlphaKey( spep_1-3 + 534, shuchusenj7, 201 );
setEffAlphaKey( spep_1-3 + 536, shuchusenj7, 212 );
setEffAlphaKey( spep_1-3 + 556, shuchusenj7, 222 );


--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 290,  10020, 18, 0x100, -1, 0, 78.6, 358.9 );--バキッ
setEffShake( spep_1-3 + 290, ctbaki, 18, 10 );
setEffMoveKey( spep_1-3 + 290, ctbaki, 78.6, 358.9 , 0 );
setEffMoveKey( spep_1-3 + 292, ctbaki, 72.4, 382.9 , 0 );
setEffMoveKey( spep_1-3 + 294, ctbaki, 78.7, 359 , 0 );
setEffMoveKey( spep_1-3 + 296, ctbaki, 78.8, 358.9 , 0 );
setEffMoveKey( spep_1-3 + 298, ctbaki, 74.7, 374.5 , 0 );
setEffMoveKey( spep_1-3 + 300, ctbaki, 78.8, 358.8 , 0 );
setEffMoveKey( spep_1-3 + 302, ctbaki, 75, 373.6 , 0 );
setEffMoveKey( spep_1-3 + 304, ctbaki, 78.8, 358.7 , 0 );
setEffMoveKey( spep_1-3 + 306, ctbaki, 75, 373.2 , 0 );
setEffMoveKey( spep_1-3 + 308, ctbaki, 78.7, 358.8 , 0 );

setEffScaleKey( spep_1-3 + 290, ctbaki, 1.62, 1.62 );
setEffScaleKey( spep_1-3 + 292, ctbaki, 2.91, 2.91 );
setEffScaleKey( spep_1-3 + 294, ctbaki, 2.43, 2.43 );
setEffScaleKey( spep_1-3 + 296, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_1-3 + 298, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_1-3 + 300, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 302, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 304, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1-3 + 306, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1-3 + 308, ctbaki, 1.77, 1.77 );

setEffRotateKey( spep_1-3 + 290, ctbaki, 30.5 );
setEffRotateKey( spep_1-3 + 308, ctbaki, 30.5 );

setEffAlphaKey( spep_1-3 + 290, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 304, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 306, ctbaki, 134 );
setEffAlphaKey( spep_1-3 + 308, ctbaki, 13 );

--文字エントリー
ctbako = entryEffectLife( spep_1-3 + 386,  10021, 24, 0x100, -1, 0, 7.7, 417.2 );--バゴォッ
setEffShake( spep_1-3 + 386, ctbako, 24, 10 );
setEffMoveKey( spep_1-3 + 386, ctbako, 7.7, 417.2 , 0 );
setEffMoveKey( spep_1-3 + 388, ctbako, 7.4, 416.3 , 0 );
setEffMoveKey( spep_1-3 + 390, ctbako, 7.7, 417 , 0 );
setEffMoveKey( spep_1-3 + 392, ctbako, -12.5, 434 , 0 );
setEffMoveKey( spep_1-3 + 394, ctbako, 7.7, 417.1 , 0 );
setEffMoveKey( spep_1-3 + 396, ctbako, -11.6, 433.4 , 0 );
setEffMoveKey( spep_1-3 + 398, ctbako, 7.7, 417.2 , 0 );
setEffMoveKey( spep_1-3 + 400, ctbako, 7.7, 417.3 , 0 );
setEffMoveKey( spep_1-3 + 402, ctbako, -9.8, 432.1 , 0 );
setEffMoveKey( spep_1-3 + 404, ctbako, 7.7, 417.4 , 0 );
setEffMoveKey( spep_1-3 + 406, ctbako, -8.2, 430.8 , 0 );
setEffMoveKey( spep_1-3 + 408, ctbako, 7.7, 417.5 , 0 );
setEffMoveKey( spep_1-3 + 410, ctbako, 7.7, 417.6 , 0 );

setEffScaleKey( spep_1-3 + 386, ctbako, 1.51, 1.51 );
setEffScaleKey( spep_1-3 + 388, ctbako, 4.19, 4.19 );
setEffScaleKey( spep_1-3 + 390, ctbako, 3.13, 3.13 );
setEffScaleKey( spep_1-3 + 392, ctbako, 3.06, 3.06 );
setEffScaleKey( spep_1-3 + 394, ctbako, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 396, ctbako, 2.92, 2.92 );
setEffScaleKey( spep_1-3 + 398, ctbako, 2.85, 2.85 );
setEffScaleKey( spep_1-3 + 400, ctbako, 2.78, 2.78 );
setEffScaleKey( spep_1-3 + 402, ctbako, 2.66, 2.66 );
setEffScaleKey( spep_1-3 + 404, ctbako, 2.53, 2.53 );
setEffScaleKey( spep_1-3 + 406, ctbako, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 408, ctbako, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 410, ctbako, 2.15, 2.15 );

setEffRotateKey( spep_1-3 + 386, ctbako, -14.4 );
setEffRotateKey( spep_1-3 + 410, ctbako, -14.4 );

setEffAlphaKey( spep_1-3 + 386, ctbako, 255 );
setEffAlphaKey( spep_1-3 + 400, ctbako, 255 );
setEffAlphaKey( spep_1-3 + 402, ctbako, 204 );
setEffAlphaKey( spep_1-3 + 404, ctbako, 153 );
setEffAlphaKey( spep_1-3 + 406, ctbako, 102 );
setEffAlphaKey( spep_1-3 + 408, ctbako, 51 );
setEffAlphaKey( spep_1-3 + 410, ctbako, 0 );

--SE
playSe( spep_1 + 12, 1003 );
playSe( spep_1 + 16, 8 );
setSeVolume( spep_1 + 16, 8, 71 );
playSe( spep_1 + 16, 1141 );
setSeVolume( spep_1 + 16, 1141, 63 );
se_1172 = playSe( spep_1 + 16, 1172 );
setSeVolume( spep_1 + 16, 1172, 25 );
playSe( spep_1 + 20, 1032 );
setSeVolume( spep_1 + 20, 1032, 71 );
playSe( spep_1 + 51, 1235 );
setSeVolume( spep_1 + 51, 1235, 71 );
playSe( spep_1 + 55, 1112 );
setSeVolume( spep_1 + 55, 1112, 63 );
playSe( spep_1 + 91, 1003 );
playSe( spep_1 + 97, 1010 );
playSe( spep_1 + 103, 1110 );
se_1183 = playSe( spep_1 + 131, 1183 );
setSeVolume( spep_1 + 131, 1183, 79 );
se_1121 = playSe( spep_1 + 131, 1121 );
setSeVolume( spep_1 + 131, 1121, 63 );
playSe( spep_1 + 168, 1235 );
setSeVolume( spep_1 + 168, 1235, 71 );
playSe( spep_1 + 172, 1112 );
setSeVolume( spep_1 + 172, 1112, 63 );
playSe( spep_1 + 198, 1189 );
playSe( spep_1 + 204, 1009 );
playSe( spep_1 + 224, 8 )
setSeVolume( spep_1 + 224, 8, 79 );
playSe( spep_1 + 260, 1235 );
setSeVolume( spep_1 + 260, 1235, 71 );
playSe( spep_1 + 264, 1112 );
setSeVolume( spep_1 + 264, 1112, 63 );
playSe( spep_1 + 290, 1004 );
playSe( spep_1 + 296, 1012 );
playSe( spep_1 + 299, 1110 );
playSe( spep_1 + 299, 1072 );
playSe( spep_1 + 302, 1001 );
setSeVolume( spep_1 + 302, 1001, 79 );
playSe( spep_1 + 335, 1235 );
setSeVolume( spep_1 + 335, 1235, 71 );
playSe( spep_1 + 339, 1112 );
setSeVolume( spep_1 + 339, 1112, 63 );
playSe( spep_1 + 382, 1003 );
playSe( spep_1 + 396, 1120 );
playSe( spep_1 + 410, 1183 );
setSeVolume( spep_1 + 410, 1183, 79 );
playSe( spep_1 + 465, 1072 );
playSe( spep_1 + 491, 1182 );
setSeVolume( spep_1 + 491, 1182, 0 );
setSeVolume( spep_1 + 497, 1182, 8.3 );
setSeVolume( spep_1 + 498, 1182, 16.6 );
setSeVolume( spep_1 + 499, 1182, 24.9 );
setSeVolume( spep_1 + 500, 1182, 33.2 );
setSeVolume( spep_1 + 501, 1182, 41.5 );
setSeVolume( spep_1 + 502, 1182, 49.8 );
setSeVolume( spep_1 + 503, 1182, 58.1 );
setSeVolume( spep_1 + 504, 1182, 66.4 );
setSeVolume( spep_1 + 505, 1182, 74.7 );
setSeVolume( spep_1 + 506, 1182, 83 );
setSeVolume( spep_1 + 507, 1182, 91.3 );
setSeVolume( spep_1 + 508, 1182, 100 );

stopSe( spep_1 + 37, se_1172, 49 );
stopSe( spep_1 + 272, se_1183, 0 );
stopSe( spep_1 + 202, se_1121, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 538, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2 = spep_1+536;

------------------------------------------------------
-- ナビ正面
------------------------------------------------------
-- ** エフェクト等 ** --
nabi = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, nabi, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, nabi, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, nabi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, nabi, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, nabi, 0 );
setEffRotateKey( spep_2 + 100, nabi, 0 );
setEffAlphaKey( spep_2 + 0, nabi, 255 );
setEffAlphaKey( spep_2 + 100, nabi, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2   , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_2 + 12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 102, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+100;

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
entryFade( spep_3 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 飛びつき斬撃〜十字空間
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 210, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 210, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 210, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 210, finish, 255 );


ko = entryEffect(  spep_4+198,  SP_06,    0x100,  -1, 0, 0, 0);

setEffMoveKey(  spep_4+198,  ko,  0,  0);
setEffMoveKey(  spep_4+368,  ko,  0,  0);
setEffScaleKey(  spep_4+198,  ko,  1.0,  1.0);
setEffScaleKey(  spep_4+368,  ko,  1.0,  1.0);
setEffRotateKey(  spep_4+198,  ko,  0);
setEffRotateKey(  spep_4+368,  ko,  0);
setEffAlphaKey(  spep_4+198,  ko,  255);
setEffAlphaKey(  spep_4+368,  ko,  255);

--SE
playSe( spep_4 + 2, 1014 );
playSe( spep_4 + 2, 1003 );
playSe( spep_4 + 7, 1182 );
se_1180 = playSe( spep_4 + 7, 1180 );
se_1116 = playSe( spep_4 + 30, 1116 );
playSe( spep_4 + 65, 1142 );
playSe( spep_4 + 65, 1061 );
setSeVolume( spep_4 + 65, 1061, 63 );
playSe( spep_4 + 65, 1046 );
setSeVolume( spep_4 + 65, 1046, 56 );
playSe( spep_4 + 65, 1068 );
setSeVolume( spep_4 + 65, 1068, 56 );
playSe( spep_4 + 68, 1172 );
setSeVolume( spep_4 + 68, 1172, 18 );
playSe( spep_4 + 77, 1032 );
playSe( spep_4 + 89, 1031 );
setSeVolume( spep_4 + 89, 1031, 63 );
playSe( spep_4 + 127, 1175 );
setSeVolume( spep_4 + 127, 1175, 71 );
playSe( spep_4 + 127, 1044 );
setSeVolume( spep_4 + 127, 1044, 25 );
playSe( spep_4 + 127, 1176 );
setSeVolume( spep_4 + 127, 1176, 79 );
se_1173 = playSe( spep_4 + 127, 1173 );


stopSe( spep_4 + 27, se_1180, 14 );
stopSe( spep_4 + 53, se_1116, 17 );
stopSe( spep_4 + 166, se_1173, 35 );

--終わり
hideKoScreen();  --黒フィルター削除
dealDamage( spep_4 + 66 );
entryFade( spep_4 +196, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_4 + 200 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手前突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_0 + 66, tossin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, tossin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 66, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 66, tossin, 255 );
setEffAlphaKey( spep_0 + 67, tossin, 0 );
setEffAlphaKey( spep_0 + 68, tossin, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 ,  906, 66, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 66, 20 );
setEffMoveKey( spep_0 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusen1, 1.21, 1.44 );
setEffScaleKey( spep_0 + 66, shuchusen1, 1.21, 1.42 );


setEffRotateKey( spep_0 , shuchusen1, 180.3 );
setEffRotateKey( spep_0 + 66, shuchusen1, 180.3 );

setEffAlphaKey( spep_0 , shuchusen1, 27 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 55 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 82 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 109 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 137 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 164 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 191 );
setEffAlphaKey( spep_0 + 64, shuchusen1, 191 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 191 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 0 );

--SE
SE0=playSe( spep_0 + 0, 9 );
SE1=playSe( spep_0 + 0, 1182 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    stopSe( SP_dodge, SE0, 0 );
    stopSe( SP_dodge, SE1, 0 );

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

--次の準備
spep_1 = spep_0+66;
------------------------------------------------------
-- 斬撃〜サマソ後まで・手前
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, zangeki_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 536, zangeki_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, zangeki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 536, zangeki_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zangeki_f, 0 );
setEffRotateKey( spep_1 + 536, zangeki_f, 0 );
setEffAlphaKey( spep_1 + 0, zangeki_f, 255 );
setEffAlphaKey( spep_1 + 536, zangeki_f, 255 );
setEffAlphaKey( spep_1 + 537, zangeki_f, 0 );
setEffAlphaKey( spep_1 + 538, zangeki_f, 0 );

-- ** エフェクト等 ** --
zangeki_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, zangeki_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 536, zangeki_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, zangeki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 536, zangeki_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zangeki_b, 0 );
setEffRotateKey( spep_1 + 536, zangeki_b, 0 );
setEffAlphaKey( spep_1 + 0, zangeki_b, 255 );
setEffAlphaKey( spep_1 + 536, zangeki_b, 255 );
setEffAlphaKey( spep_1 + 537, zangeki_b, 0 );
setEffAlphaKey( spep_1 + 538, zangeki_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 494, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 12, 1, 106 );
changeAnime( spep_1-3 + 92, 1, 108 );
changeAnime( spep_1-3 + 200, 1, 105 );
changeAnime( spep_1-3 + 290, 1, 7 );
changeAnime( spep_1-3 + 386, 1, 105 );

setMoveKey( spep_1 + 0, 1, 1296.7, -74.1 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 1068, -62.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 839.3, -50.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 610.7, -38.3 , 0 );
setMoveKey( spep_1-3 + 8, 1, 382.1, -26.4 , 0 );
setMoveKey( spep_1-3 + 11, 1, 153.5, -14.4 , 0 );
setMoveKey( spep_1-3 + 12, 1, 76.9, -27.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 131, 18.4 , 0 );
setMoveKey( spep_1-3 + 16, 1, 122.1, 12.2 , 0 );
setMoveKey( spep_1-3 + 18, 1, 163.8, 20.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, 156.6, -5.2 , 0 );
setMoveKey( spep_1-3 + 22, 1, 179.5, 21.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, 171.9, 6.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 190.8, 21.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 182.8, 2.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 193.7, 22.2 , 0 );
setMoveKey( spep_1-3 + 32, 1, 188.2, 14.4 , 0 );
setMoveKey( spep_1-3 + 34, 1, 198, 22.7 , 0 );
setMoveKey( spep_1-3 + 36, 1, 199.6, 22.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, 202.3, 22.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 204.6, 23.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 206.8, 23.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 208.9, 23.3 , 0 );
setMoveKey( spep_1-3 + 46, 1, 210.4, 23.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 211.9, 23.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, 210.2, 23.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 208.4, 23.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, 206.6, 23.5 , 0 );
setMoveKey( spep_1-3 + 56, 1, 204.8, 23.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 203.1, 23.5 , 0 );
setMoveKey( spep_1-3 + 60, 1, 201.3, 23.5 , 0 );
setMoveKey( spep_1-3 + 62, 1, 199.5, 23.5 , 0 );
setMoveKey( spep_1-3 + 64, 1, 201, 23.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, 202.3, 23.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, 203.7, 23.5 , 0 );
setMoveKey( spep_1-3 + 70, 1, 205.1, 23.5 , 0 );
setMoveKey( spep_1-3 + 72, 1, 206.5, 23.5 , 0 );
setMoveKey( spep_1-3 + 74, 1, 207.8, 23.5 , 0 );
setMoveKey( spep_1-3 + 76, 1, 209.2, 23.5 , 0 );
setMoveKey( spep_1-3 + 78, 1, 193.4, 23.9 , 0 );
setMoveKey( spep_1-3 + 80, 1, 177.9, 24.3 , 0 );
setMoveKey( spep_1-3 + 82, 1, 162.9, 24.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 148.1, 25.1 , 0 );
setMoveKey( spep_1-3 + 86, 1, 133.8, 25.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, 119.8, 25.9 , 0 );
setMoveKey( spep_1-3 + 91, 1, 106.1, 26.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, 140.6, -97.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 156.7, -49.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 131.8, -64.3 , 0 );
setMoveKey( spep_1-3 + 98, 1, 164.3, -44.8 , 0 );
setMoveKey( spep_1-3 + 100, 1, 156.6, -66.1 , 0 );
setMoveKey( spep_1-3 + 102, 1, 179.1, -44.1 , 0 );
setMoveKey( spep_1-3 + 104, 1, 175, -58.9 , 0 );
setMoveKey( spep_1-3 + 106, 1, 193.1, -43.4 , 0 );
setMoveKey( spep_1-3 + 108, 1, 50.7, -32.9 , 0 );
setMoveKey( spep_1-3 + 110, 1, 3.7, -22.4 , 0 );
setMoveKey( spep_1-3 + 112, 1, 46, -11.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 171.4, -0.9 , 0 );
setMoveKey( spep_1-3 + 116, 1, 602.8, 7.4 , 0 );
setMoveKey( spep_1-3 + 118, 1, 1114, 15.9 , 0 );
setMoveKey( spep_1-3 + 120, 1, 1002.7, 23.9 , 0 );
setMoveKey( spep_1-3 + 122, 1, 891.3, 31.8 , 0 );
setMoveKey( spep_1-3 + 124, 1, 779.8, 39.9 , 0 );
setMoveKey( spep_1-3 + 126, 1, 668.3, 47.8 , 0 );
setMoveKey( spep_1-3 + 128, 1, 556.7, 55.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, 445.1, 63.8 , 0 );
setMoveKey( spep_1-3 + 132, 1, 333.5, 71.7 , 0 );
setMoveKey( spep_1-3 + 134, 1, 221.8, 79.7 , 0 );
setMoveKey( spep_1-3 + 136, 1, 110, 87.7 , 0 );
setMoveKey( spep_1-3 + 138, 1, -1.8, 95.7 , 0 );
setMoveKey( spep_1-3 + 140, 1, -10, 97.8 , 0 );
setMoveKey( spep_1-3 + 142, 1, -18.1, 99.9 , 0 );
setMoveKey( spep_1-3 + 144, 1, -26.3, 102 , 0 );
setMoveKey( spep_1-3 + 146, 1, -34.5, 104.1 , 0 );
setMoveKey( spep_1-3 + 148, 1, -42.7, 106.3 , 0 );
setMoveKey( spep_1-3 + 150, 1, -50.9, 108.4 , 0 );
setMoveKey( spep_1-3 + 152, 1, -59.1, 110.5 , 0 );
setMoveKey( spep_1-3 + 154, 1, -67.2, 112.7 , 0 );
setMoveKey( spep_1-3 + 156, 1, -75.4, 114.8 , 0 );
setMoveKey( spep_1-3 + 158, 1, -83.6, 116.9 , 0 );
setMoveKey( spep_1-3 + 160, 1, -91.8, 119.1 , 0 );
setMoveKey( spep_1-3 + 162, 1, -100, 121.2 , 0 );
setMoveKey( spep_1-3 + 164, 1, -98.6, 121.2 , 0 );
setMoveKey( spep_1-3 + 166, 1, -94.1, 121.2 , 0 );
setMoveKey( spep_1-3 + 168, 1, -89.6, 121.2 , 0 );
setMoveKey( spep_1-3 + 170, 1, -85.1, 121.2 , 0 );
setMoveKey( spep_1-3 + 172, 1, -80.7, 121.2 , 0 );
setMoveKey( spep_1-3 + 174, 1, -76.2, 121.2 , 0 );
setMoveKey( spep_1-3 + 176, 1, -71.7, 121.2 , 0 );
setMoveKey( spep_1-3 + 178, 1, -67.2, 121.2 , 0 );
setMoveKey( spep_1-3 + 180, 1, -62.8, 121.3 , 0 );
setMoveKey( spep_1-3 + 182, 1, -58.3, 121.3 , 0 );
setMoveKey( spep_1-3 + 184, 1, -53.8, 121.3 , 0 );
setMoveKey( spep_1-3 + 186, 1, -49.3, 121.3 , 0 );
setMoveKey( spep_1-3 + 188, 1, -44.9, 121.3 , 0 );
setMoveKey( spep_1-3 + 190, 1, -40.4, 121.3 , 0 );
setMoveKey( spep_1-3 + 192, 1, -35.9, 121.3 , 0 );
setMoveKey( spep_1-3 + 194, 1, -31.4, 121.3 , 0 );
setMoveKey( spep_1-3 + 196, 1, -26.9, 121.3 , 0 );
setMoveKey( spep_1-3 + 199, 1, -22.5, 121.3 , 0 );
setMoveKey( spep_1-3 + 200, 1, -43, 91.6 , 0 );
setMoveKey( spep_1-3 + 202, 1, -17.7, 123.2 , 0 );
setMoveKey( spep_1-3 + 204, 1, -45.2, 111.6 , 0 );
setMoveKey( spep_1-3 + 206, 1, -21.6, 130.5 , 0 );
setMoveKey( spep_1-3 + 208, 1, -42.7, 108.5 , 0 );
setMoveKey( spep_1-3 + 210, 1, -25.5, 137.9 , 0 );
setMoveKey( spep_1-3 + 212, 1, -57, 126.3 , 0 );
setMoveKey( spep_1-3 + 214, 1, -29.4, 145.2 , 0 );
setMoveKey( spep_1-3 + 216, 1, -46.6, 122.5 , 0 );
setMoveKey( spep_1-3 + 218, 1, -33.4, 152.6 , 0 );
setMoveKey( spep_1-3 + 220, 1, -43.7, 127.3 , 0 );
setMoveKey( spep_1-3 + 222, 1, -30.2, 129.2 , 0 );
setMoveKey( spep_1-3 + 224, 1, -28.7, 119.1 , 0 );
setMoveKey( spep_1-3 + 226, 1, -27.2, 109 , 0 );
setMoveKey( spep_1-3 + 228, 1, -25.8, 98.8 , 0 );
setMoveKey( spep_1-3 + 230, 1, -24.3, 88.6 , 0 );
setMoveKey( spep_1-3 + 232, 1, -22.8, 78.3 , 0 );
setMoveKey( spep_1-3 + 234, 1, -21.2, 67.9 , 0 );
setMoveKey( spep_1-3 + 236, 1, -19.8, 57.6 , 0 );
setMoveKey( spep_1-3 + 238, 1, -18.2, 47.2 , 0 );
setMoveKey( spep_1-3 + 240, 1, -16.6, 36.7 , 0 );
setMoveKey( spep_1-3 + 242, 1, -15.1, 26.2 , 0 );
setMoveKey( spep_1-3 + 244, 1, -13.6, 15.7 , 0 );
setMoveKey( spep_1-3 + 246, 1, -12, 5.1 , 0 );
setMoveKey( spep_1-3 + 248, 1, -10.4, -5.5 , 0 );
setMoveKey( spep_1-3 + 250, 1, -8.8, -16.2 , 0 );
setMoveKey( spep_1-3 + 252, 1, -7.2, -27 , 0 );
setMoveKey( spep_1-3 + 254, 1, -5.6, -39.4 , 0 );
setMoveKey( spep_1-3 + 256, 1, -4.3, -40 , 0 );
setMoveKey( spep_1-3 + 258, 1, -3, -40.5 , 0 );
setMoveKey( spep_1-3 + 260, 1, -1.8, -40.9 , 0 );
setMoveKey( spep_1-3 + 262, 1, -0.5, -41.3 , 0 );
setMoveKey( spep_1-3 + 264, 1, 0.7, -41.5 , 0 );
setMoveKey( spep_1-3 + 266, 1, 1.9, -41.7 , 0 );
setMoveKey( spep_1-3 + 268, 1, 3.1, -42 , 0 );
setMoveKey( spep_1-3 + 270, 1, 4.2, -42 , 0 );
setMoveKey( spep_1-3 + 272, 1, 5.3, -42 , 0 );
setMoveKey( spep_1-3 + 274, 1, 6.4, -42 , 0 );
setMoveKey( spep_1-3 + 276, 1, 7.5, -41.9 , 0 );
setMoveKey( spep_1-3 + 278, 1, 8.5, -41.7 , 0 );
setMoveKey( spep_1-3 + 280, 1, 9.5, -41.4 , 0 );
setMoveKey( spep_1-3 + 282, 1, 10.6, -41 , 0 );
setMoveKey( spep_1-3 + 284, 1, 11.6, -40.7 , 0 );
setMoveKey( spep_1-3 + 286, 1, 12.6, -40.2 , 0 );
setMoveKey( spep_1-3 + 289, 1, -9.4, -55.6 , 0 );
setMoveKey( spep_1-3 + 290, 1, -27.3, -82.6 , 0 );
setMoveKey( spep_1-3 + 292, 1, 2.8, -44.5 , 0 );
setMoveKey( spep_1-3 + 294, 1, -21.2, -66.9 , 0 );
setMoveKey( spep_1-3 + 296, 1, 6.3, -44 , 0 );
setMoveKey( spep_1-3 + 298, 1, 1, -54.7 , 0 );
setMoveKey( spep_1-3 + 300, 1, 8.4, -33.5 , 0 );
setMoveKey( spep_1-3 + 302, 1, -9.8, -50.7 , 0 );
setMoveKey( spep_1-3 + 304, 1, 10.4, -23.1 , 0 );
setMoveKey( spep_1-3 + 306, 1, -4.7, -50 , 0 );
setMoveKey( spep_1-3 + 308, 1, 12.2, -12.9 , 0 );
setMoveKey( spep_1-3 + 310, 1, 11.8, -9.4 , 0 );
setMoveKey( spep_1-3 + 312, 1, 12.9, 3 , 0 );
setMoveKey( spep_1-3 + 314, 1, 14, 15.4 , 0 );
setMoveKey( spep_1-3 + 316, 1, 15.1, 27.4 , 0 );
setMoveKey( spep_1-3 + 318, 1, 16.2, 39.5 , 0 );
setMoveKey( spep_1-3 + 320, 1, 17.2, 51.5 , 0 );
setMoveKey( spep_1-3 + 322, 1, 18.4, 63.4 , 0 );
setMoveKey( spep_1-3 + 324, 1, 19.6, 70.5 , 0 );
setMoveKey( spep_1-3 + 326, 1, 20.7, 77.6 , 0 );
setMoveKey( spep_1-3 + 328, 1, 21.9, 84.7 , 0 );
setMoveKey( spep_1-3 + 330, 1, 23.1, 91.5 , 0 );
setMoveKey( spep_1-3 + 332, 1, 24.2, 98.6 , 0 );
setMoveKey( spep_1-3 + 334, 1, 25.4, 105.5 , 0 );
setMoveKey( spep_1-3 + 336, 1, 26.6, 112.4 , 0 );
setMoveKey( spep_1-3 + 338, 1, 27.8, 119.1 , 0 );
setMoveKey( spep_1-3 + 340, 1, 29, 125.9 , 0 );
setMoveKey( spep_1-3 + 342, 1, 30.2, 132.7 , 0 );
setMoveKey( spep_1-3 + 344, 1, 31.3, 139.3 , 0 );
setMoveKey( spep_1-3 + 346, 1, 32.5, 146 , 0 );
setMoveKey( spep_1-3 + 348, 1, 33.9, 151.7 , 0 );
setMoveKey( spep_1-3 + 350, 1, 35.3, 157.3 , 0 );
setMoveKey( spep_1-3 + 352, 1, 36.8, 162.9 , 0 );
setMoveKey( spep_1-3 + 354, 1, 38.2, 168.5 , 0 );
setMoveKey( spep_1-3 + 356, 1, 39.6, 174 , 0 );
setMoveKey( spep_1-3 + 358, 1, 41.1, 179.4 , 0 );
setMoveKey( spep_1-3 + 360, 1, 42.5, 185 , 0 );
setMoveKey( spep_1-3 + 362, 1, 43.9, 190.4 , 0 );
setMoveKey( spep_1-3 + 364, 1, 45.3, 195.8 , 0 );
setMoveKey( spep_1-3 + 366, 1, 42.5, 186.2 , 0 );
setMoveKey( spep_1-3 + 368, 1, 39.5, 176.6 , 0 );
setMoveKey( spep_1-3 + 370, 1, 36.6, 167 , 0 );
setMoveKey( spep_1-3 + 372, 1, 33.7, 157.6 , 0 );
setMoveKey( spep_1-3 + 374, 1, 30.8, 148.3 , 0 );
setMoveKey( spep_1-3 + 376, 1, 28, 138.9 , 0 );
setMoveKey( spep_1-3 + 378, 1, 25.1, 129.7 , 0 );
setMoveKey( spep_1-3 + 380, 1, 22.3, 120.5 , 0 );
setMoveKey( spep_1-3 + 382, 1, 19.5, 111.4 , 0 );
setMoveKey( spep_1-3 + 385, 1, 16.7, 102.4 , 0 );
setMoveKey( spep_1-3 + 386, 1, 50.2, 146.6 , 0 );
setMoveKey( spep_1-3 + 388, 1, 52.7, 163 , 0 );
setMoveKey( spep_1-3 + 390, 1, 32.9, 143 , 0 );
setMoveKey( spep_1-3 + 392, 1, 45.4, 154.6 , 0 );
setMoveKey( spep_1-3 + 394, 1, 38.7, 131.8 , 0 );
setMoveKey( spep_1-3 + 396, 1, 45, 147.5 , 0 );
setMoveKey( spep_1-3 + 398, 1, 25.5, 127.9 , 0 );
setMoveKey( spep_1-3 + 400, 1, 44.5, 140.5 , 0 );
setMoveKey( spep_1-3 + 402, 1, 37.9, 111.5 , 0 );
setMoveKey( spep_1-3 + 404, 1, 44.1, 133.8 , 0 );
setMoveKey( spep_1-3 + 406, 1, 21.4, 111.1 , 0 );
setMoveKey( spep_1-3 + 408, 1, 56.1, 40.9 , 0 );
setMoveKey( spep_1-3 + 410, 1, 66.6, -37.2 , 0 );
setMoveKey( spep_1-3 + 412, 1, 75.6, -103.9 , 0 );
setMoveKey( spep_1-3 + 414, 1, 83, -159 , 0 );
setMoveKey( spep_1-3 + 416, 1, 88.8, -202.5 , 0 );
setMoveKey( spep_1-3 + 418, 1, 93.1, -234.3 , 0 );
setMoveKey( spep_1-3 + 420, 1, 95.8, -254.4 , 0 );
setMoveKey( spep_1-3 + 422, 1, 94.8, -250 , 0 );
setMoveKey( spep_1-3 + 424, 1, 93.6, -245.2 , 0 );
setMoveKey( spep_1-3 + 426, 1, 92.4, -240 , 0 );
setMoveKey( spep_1-3 + 428, 1, 91.1, -234.6 , 0 );
setMoveKey( spep_1-3 + 430, 1, 89.7, -228.8 , 0 );
setMoveKey( spep_1-3 + 432, 1, 88.2, -222.6 , 0 );
setMoveKey( spep_1-3 + 434, 1, 86.7, -216.2 , 0 );
setMoveKey( spep_1-3 + 436, 1, 85.1, -209.3 , 0 );
setMoveKey( spep_1-3 + 438, 1, 83.4, -202.2 , 0 );
setMoveKey( spep_1-3 + 440, 1, 81.6, -194.6 , 0 );
setMoveKey( spep_1-3 + 442, 1, 79.6, -186.7 , 0 );
setMoveKey( spep_1-3 + 444, 1, 77.7, -178.4 , 0 );
setMoveKey( spep_1-3 + 446, 1, 75.6, -169.7 , 0 );
setMoveKey( spep_1-3 + 448, 1, 73.4, -160.9 , 0 );
setMoveKey( spep_1-3 + 450, 1, 71.2, -151.5 , 0 );
setMoveKey( spep_1-3 + 452, 1, 68.9, -141.7 , 0 );
setMoveKey( spep_1-3 + 454, 1, 66.5, -131.7 , 0 );
setMoveKey( spep_1-3 + 456, 1, 64, -121.4 , 0 );
setMoveKey( spep_1-3 + 458, 1, 61.4, -110.5 , 0 );
setMoveKey( spep_1-3 + 460, 1, 58.6, -99.4 , 0 );
setMoveKey( spep_1-3 + 462, 1, 55.8, -87.8 , 0 );
setMoveKey( spep_1-3 + 464, 1, 53, -75.8 , 0 );
setMoveKey( spep_1-3 + 466, 1, 50, -63.7 , 0 );
setMoveKey( spep_1-3 + 468, 1, 46.9, -51 , 0 );
setMoveKey( spep_1-3 + 470, 1, 43.8, -37.9 , 0 );
setMoveKey( spep_1-3 + 472, 1, 40.5, -24.5 , 0 );
setMoveKey( spep_1-3 + 474, 1, 37.2, -10.7 , 0 );
setMoveKey( spep_1-3 + 476, 1, 33.7, 3.5 , 0 );
setMoveKey( spep_1-3 + 478, 1, 30.2, 18 , 0 );
setMoveKey( spep_1-3 + 480, 1, 47.1, -120.7 , 0 );
setMoveKey( spep_1-3 + 482, 1, 67.3, -285.4 , 0 );
setMoveKey( spep_1-3 + 484, 1, 90.8, -474.8 , 0 );
setMoveKey( spep_1-3 + 486, 1, 117.4, -687.8 , 0 );
setMoveKey( spep_1-3 + 488, 1, 146.9, -923.5 , 0 );
setMoveKey( spep_1-3 + 490, 1, 179.4, -1180.6 , 0 );
setMoveKey( spep_1-3 + 492, 1, 214.5, -1458.2 , 0 );
setMoveKey( spep_1-3 + 494, 1, 252.3, -1755.2 , 0 );

setScaleKey( spep_1 + 0, 1, 4.25, 4.25 );
--setScaleKey( spep_1-3 + 2, 1, 3.77, 3.77 );
setScaleKey( spep_1-3 + 4, 1, 3.28, 3.28 );
setScaleKey( spep_1-3 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_1-3 + 8, 1, 2.31, 2.31 );
setScaleKey( spep_1-3 + 11, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 12, 1, 2.32, 2.32 );
setScaleKey( spep_1-3 + 14, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 16, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 18, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 20, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 22, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 24, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 26, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 30, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 34, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 36, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 38, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 40, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 42, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 48, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 58, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 60, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 76, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 78, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 80, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 82, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 84, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 86, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 88, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 91, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 92, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 94, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 96, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 98, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 100, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 102, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 104, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 106, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 108, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 110, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 112, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 114, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 116, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 118, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 120, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 122, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 124, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 126, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 128, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 130, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 132, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 134, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 136, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 138, 1, 1.13, 1.13 );
setScaleKey( spep_1-3 + 199, 1, 1.13, 1.13 );
setScaleKey( spep_1-3 + 200, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 202, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 204, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 206, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 208, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 210, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 212, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 214, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 216, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 218, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 220, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 222, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 224, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 226, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 228, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 230, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 232, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 234, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 236, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 238, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 240, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 242, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 244, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 246, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 248, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 250, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 252, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 254, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 256, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 258, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 260, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 262, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 264, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 266, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 268, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 270, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 272, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 274, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 276, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 278, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 280, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 282, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 284, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 286, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 289, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 290, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 292, 1, 0.6, 0.61 );
setScaleKey( spep_1-3 + 294, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 296, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 298, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 300, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 302, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 304, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 306, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 308, 1, 0.77, 0.77 );
setScaleKey( spep_1-3 + 310, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 312, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 314, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 316, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 318, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 320, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 322, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 324, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 326, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 328, 1, 0.54, 0.54 );
setScaleKey( spep_1-3 + 330, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 332, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 334, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 336, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 338, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 340, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 342, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 344, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 346, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 356, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 358, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 364, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 366, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 368, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 370, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 372, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 374, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 376, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 378, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 380, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 382, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 385, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 386, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 388, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 390, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 392, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 394, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 400, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 402, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 406, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 408, 1, 1.88, 1.88 );
setScaleKey( spep_1-3 + 410, 1, 2.47, 2.47 );
setScaleKey( spep_1-3 + 412, 1, 2.97, 2.97 );
setScaleKey( spep_1-3 + 414, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 416, 1, 3.71, 3.71 );
setScaleKey( spep_1-3 + 418, 1, 3.96, 3.96 );
setScaleKey( spep_1-3 + 420, 1, 4.11, 4.11 );
setScaleKey( spep_1-3 + 422, 1, 4.07, 4.07 );
setScaleKey( spep_1-3 + 424, 1, 4.03, 4.03 );
setScaleKey( spep_1-3 + 426, 1, 3.99, 3.99 );
setScaleKey( spep_1-3 + 428, 1, 3.94, 3.94 );
setScaleKey( spep_1-3 + 430, 1, 3.89, 3.89 );
setScaleKey( spep_1-3 + 432, 1, 3.84, 3.84 );
setScaleKey( spep_1-3 + 434, 1, 3.79, 3.79 );
setScaleKey( spep_1-3 + 436, 1, 3.73, 3.73 );
setScaleKey( spep_1-3 + 438, 1, 3.66, 3.66 );
setScaleKey( spep_1-3 + 440, 1, 3.6, 3.6 );
setScaleKey( spep_1-3 + 442, 1, 3.53, 3.53 );
setScaleKey( spep_1-3 + 444, 1, 3.46, 3.46 );
setScaleKey( spep_1-3 + 446, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 448, 1, 3.3, 3.3 );
setScaleKey( spep_1-3 + 450, 1, 3.22, 3.22 );
setScaleKey( spep_1-3 + 452, 1, 3.13, 3.13 );
setScaleKey( spep_1-3 + 454, 1, 3.04, 3.04 );
setScaleKey( spep_1-3 + 456, 1, 2.95, 2.95 );
setScaleKey( spep_1-3 + 458, 1, 2.85, 2.85 );
setScaleKey( spep_1-3 + 460, 1, 2.75, 2.75 );
setScaleKey( spep_1-3 + 462, 1, 2.65, 2.65 );
setScaleKey( spep_1-3 + 464, 1, 2.54, 2.54 );
setScaleKey( spep_1-3 + 466, 1, 2.43, 2.43 );
setScaleKey( spep_1-3 + 468, 1, 2.32, 2.32 );
setScaleKey( spep_1-3 + 470, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 472, 1, 2.08, 2.08 );
setScaleKey( spep_1-3 + 474, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 476, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 478, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 480, 1, 3.64, 3.64 );
setScaleKey( spep_1-3 + 482, 1, 5.96, 5.96 );
setScaleKey( spep_1-3 + 484, 1, 8.65, 8.65 );
setScaleKey( spep_1-3 + 486, 1, 11.68, 11.68 );
setScaleKey( spep_1-3 + 488, 1, 15.04, 15.04 );
setScaleKey( spep_1-3 + 490, 1, 18.71, 18.71 );
setScaleKey( spep_1-3 + 492, 1, 22.67, 22.67 );
setScaleKey( spep_1-3 + 494, 1, 26.92, 26.92 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 11, 1, 0 );
setRotateKey( spep_1-3 + 12, 1, -11.5 );
setRotateKey( spep_1-3 + 14, 1, -11.4 );
setRotateKey( spep_1-3 + 20, 1, -11.4 );
setRotateKey( spep_1-3 + 22, 1, -11.3 );
setRotateKey( spep_1-3 + 28, 1, -11.3 );
setRotateKey( spep_1-3 + 30, 1, -11.1 );
setRotateKey( spep_1-3 + 32, 1, -10.9 );
setRotateKey( spep_1-3 + 34, 1, -10.6 );
setRotateKey( spep_1-3 + 36, 1, -10.4 );
setRotateKey( spep_1-3 + 38, 1, -10.2 );
setRotateKey( spep_1-3 + 40, 1, -9.9 );
setRotateKey( spep_1-3 + 42, 1, -9.7 );
setRotateKey( spep_1-3 + 44, 1, -9.5 );
setRotateKey( spep_1-3 + 46, 1, -9.3 );
setRotateKey( spep_1-3 + 48, 1, -9 );
setRotateKey( spep_1-3 + 50, 1, -8.8 );
setRotateKey( spep_1-3 + 52, 1, -8.6 );
setRotateKey( spep_1-3 + 54, 1, -8.3 );
setRotateKey( spep_1-3 + 56, 1, -8.1 );
setRotateKey( spep_1-3 + 58, 1, -7.9 );
setRotateKey( spep_1-3 + 60, 1, -7.7 );
setRotateKey( spep_1-3 + 62, 1, -7.4 );
setRotateKey( spep_1-3 + 64, 1, -7.2 );
setRotateKey( spep_1-3 + 66, 1, -7 );
setRotateKey( spep_1-3 + 68, 1, -6.7 );
setRotateKey( spep_1-3 + 70, 1, -6.5 );
setRotateKey( spep_1-3 + 72, 1, -6.3 );
setRotateKey( spep_1-3 + 74, 1, -6.1 );
setRotateKey( spep_1-3 + 76, 1, -5.8 );
setRotateKey( spep_1-3 + 78, 1, -5.6 );
setRotateKey( spep_1-3 + 80, 1, -5.4 );
setRotateKey( spep_1-3 + 82, 1, -5.1 );
setRotateKey( spep_1-3 + 84, 1, -4.9 );
setRotateKey( spep_1-3 + 86, 1, -4.7 );
setRotateKey( spep_1-3 + 88, 1, -4.5 );
setRotateKey( spep_1-3 + 91, 1, -4.2 );
setRotateKey( spep_1-3 + 92, 1, 2.2 );
setRotateKey( spep_1-3 + 136, 1, 2.2 );
setRotateKey( spep_1-3 + 138, 1, 2.1 );
setRotateKey( spep_1-3 + 184, 1, 2.1 );
setRotateKey( spep_1-3 + 186, 1, 2.2 );
setRotateKey( spep_1-3 + 199, 1, 2.2 );
setRotateKey( spep_1-3 + 200, 1, -40.2 );
setRotateKey( spep_1-3 + 202, 1, -39.9 );
setRotateKey( spep_1-3 + 204, 1, -39.7 );
setRotateKey( spep_1-3 + 206, 1, -39.5 );
setRotateKey( spep_1-3 + 208, 1, -39.3 );
setRotateKey( spep_1-3 + 210, 1, -39 );
setRotateKey( spep_1-3 + 212, 1, -38.8 );
setRotateKey( spep_1-3 + 214, 1, -38.6 );
setRotateKey( spep_1-3 + 216, 1, -38.4 );
setRotateKey( spep_1-3 + 218, 1, -38.2 );
setRotateKey( spep_1-3 + 220, 1, -37.9 );
setRotateKey( spep_1-3 + 289, 1, -37.9 );
setRotateKey( spep_1-3 + 290, 1, 0 );
setRotateKey( spep_1-3 + 494, 1, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_1-3 + 12,  10010, 26, 0x100, -1, 0, 39.6, 314.3 );--ザンッ
setEffShake( spep_1-3 + 12, ctzan, 25, 10 );
setEffMoveKey( spep_1-3 + 12, ctzan, 39.6, 314.3 , 0 );
setEffMoveKey( spep_1-3 + 14, ctzan, 24.3, 335.2 , 0 );
setEffMoveKey( spep_1-3 + 16, ctzan, 39.7, 313.5 , 0 );
setEffMoveKey( spep_1-3 + 18, ctzan, 39.6, 314.2 , 0 );
setEffMoveKey( spep_1-3 + 20, ctzan, 25.5, 333.9 , 0 );
setEffMoveKey( spep_1-3 + 22, ctzan, 39.6, 314.3 , 0 );
setEffMoveKey( spep_1-3 + 24, ctzan, 25.6, 333.7 , 0 );
setEffMoveKey( spep_1-3 + 26, ctzan, 39.5, 314.3 , 0 );
setEffMoveKey( spep_1-3 + 28, ctzan, 25.7, 333.5 , 0 );
setEffMoveKey( spep_1-3 + 30, ctzan, 39.5, 314.4 , 0 );
setEffMoveKey( spep_1-3 + 32, ctzan, 25.8, 333.3 , 0 );
setEffMoveKey( spep_1-3 + 34, ctzan, 39.5, 314.3 , 0 );
setEffMoveKey( spep_1-3 + 36, ctzan, 25.9, 333.1 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzan, 26, 333 , 0 );

setEffScaleKey( spep_1-3 + 12, ctzan, 2.06, 2.06 );
setEffScaleKey( spep_1-3 + 14, ctzan, 3.36, 3.36 );
setEffScaleKey( spep_1-3 + 16, ctzan, 4.67, 4.67 );
setEffScaleKey( spep_1-3 + 18, ctzan, 3.12, 3.12 );
setEffScaleKey( spep_1-3 + 20, ctzan, 3.1, 3.1 );
setEffScaleKey( spep_1-3 + 22, ctzan, 3.08, 3.08 );
setEffScaleKey( spep_1-3 + 24, ctzan, 3.06, 3.06 );
setEffScaleKey( spep_1-3 + 26, ctzan, 3.04, 3.04 );
setEffScaleKey( spep_1-3 + 28, ctzan, 3.02, 3.02 );
setEffScaleKey( spep_1-3 + 30, ctzan, 3, 3 );
setEffScaleKey( spep_1-3 + 32, ctzan, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 34, ctzan, 2.97, 2.97 );
setEffScaleKey( spep_1-3 + 36, ctzan, 2.96, 2.96 );
setEffScaleKey( spep_1-3 + 38, ctzan, 2.95, 2.95 );

setEffRotateKey( spep_1-3 + 12, ctzan, 14.5 );
setEffRotateKey( spep_1-3 + 20, ctzan, 14.5 );
setEffRotateKey( spep_1-3 + 22, ctzan, 14.4 );
setEffRotateKey( spep_1-3 + 28, ctzan, 14.4 );
setEffRotateKey( spep_1-3 + 30, ctzan, 14.3 );
setEffRotateKey( spep_1-3 + 32, ctzan, 14.4 );
setEffRotateKey( spep_1-3 + 34, ctzan, 14.4 );
setEffRotateKey( spep_1-3 + 36, ctzan, 14.5 );
setEffRotateKey( spep_1-3 + 38, ctzan, 14.5 );

setEffAlphaKey( spep_1-3 + 12, ctzan, 255 );
setEffAlphaKey( spep_1-3 + 30, ctzan, 255 );
setEffAlphaKey( spep_1-3 + 32, ctzan, 191 );
setEffAlphaKey( spep_1-3 + 34, ctzan, 128 );
setEffAlphaKey( spep_1-3 + 36, ctzan, 64 );
setEffAlphaKey( spep_1-3 + 38, ctzan, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_1-3 + 92,  10016, 16, 0x100, -1, 0, 116.8, 362.4 );--ズンッ

setEffMoveKey( spep_1-3 + 92, ctzun, 116.8, 362.4 , 0 );
setEffMoveKey( spep_1-3 + 94, ctzun, 116.8, 362.4 , 0 );
setEffMoveKey( spep_1-3 + 96, ctzun, 112.2, 369.7 , 0 );
setEffMoveKey( spep_1-3 + 98, ctzun, 116.9, 362.3 , 0 );
setEffMoveKey( spep_1-3 + 100, ctzun, 116.9, 362.3 , 0 );
setEffMoveKey( spep_1-3 + 102, ctzun, 112.9, 368.4 , 0 );
setEffMoveKey( spep_1-3 + 104, ctzun, 113, 367.9 , 0 );
setEffMoveKey( spep_1-3 + 106, ctzun, 116.7, 362.4 , 0 );
setEffMoveKey( spep_1-3 + 108, ctzun, 116.7, 362.5 , 0 );

setEffScaleKey( spep_1-3 + 92, ctzun, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 94, ctzun, 3.07, 3.07 );
setEffScaleKey( spep_1-3 + 96, ctzun, 2.91, 2.91 );
setEffScaleKey( spep_1-3 + 98, ctzun, 2.75, 2.75 );
setEffScaleKey( spep_1-3 + 100, ctzun, 2.59, 2.59 );
setEffScaleKey( spep_1-3 + 102, ctzun, 2.42, 2.42 );
setEffScaleKey( spep_1-3 + 104, ctzun, 2.25, 2.25 );
setEffScaleKey( spep_1-3 + 106, ctzun, 2.03, 2.03 );
setEffScaleKey( spep_1-3 + 108, ctzun, 1.82, 1.82 );

setEffRotateKey( spep_1-3 + 92, ctzun, 15.2 );
setEffRotateKey( spep_1-3 + 100, ctzun, 15.2 );
setEffRotateKey( spep_1-3 + 102, ctzun, 15.1 );
setEffRotateKey( spep_1-3 + 104, ctzun, 15 );
setEffRotateKey( spep_1-3 + 106, ctzun, 15.1 );
setEffRotateKey( spep_1-3 + 108, ctzun, 15.2 );

setEffAlphaKey( spep_1-3 + 92, ctzun, 255 );
setEffAlphaKey( spep_1-3 + 100, ctzun, 255 );
setEffAlphaKey( spep_1-3 + 102, ctzun, 223 );
setEffAlphaKey( spep_1-3 + 104, ctzun, 191 );
setEffAlphaKey( spep_1-3 + 106, ctzun, 102 );
setEffAlphaKey( spep_1-3 + 108, ctzun, 13 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 200,  10005, 22, 0x100, -1, 0, 57.7, 343.2 );--ガッ

setEffMoveKey( spep_1-3 + 200, ctga, 57.7, 343.2 , 0 );
setEffMoveKey( spep_1-3 + 202, ctga, 58, 343.3 , 0 );
setEffMoveKey( spep_1-3 + 204, ctga, 57.8, 343.6 , 0 );
setEffMoveKey( spep_1-3 + 206, ctga, 57.8, 343.4 , 0 );
setEffMoveKey( spep_1-3 + 208, ctga, 57.9, 343.5 , 0 );
setEffMoveKey( spep_1-3 + 210, ctga, 57.8, 343.5 , 0 );
setEffMoveKey( spep_1-3 + 212, ctga, 57.8, 343.3 , 0 );
setEffMoveKey( spep_1-3 + 216, ctga, 57.8, 343.3 , 0 );
setEffMoveKey( spep_1-3 + 218, ctga, 57.9, 343.3 , 0 );
setEffMoveKey( spep_1-3 + 222, ctga, 57.9, 343.3 , 0 );

setEffScaleKey( spep_1-3 + 200, ctga, 0.98, 0.98 );
setEffScaleKey( spep_1-3 + 202, ctga, 2.1, 2.1 );
setEffScaleKey( spep_1-3 + 204, ctga, 2.66, 2.66 );
setEffScaleKey( spep_1-3 + 206, ctga, 2.53, 2.53 );
setEffScaleKey( spep_1-3 + 208, ctga, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 210, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 212, ctga, 2.16, 2.16 );
setEffScaleKey( spep_1-3 + 214, ctga, 2.15, 2.15 );
setEffScaleKey( spep_1-3 + 216, ctga, 2.14, 2.14 );
setEffScaleKey( spep_1-3 + 218, ctga, 2.12, 2.12 );
setEffScaleKey( spep_1-3 + 220, ctga, 2.1, 2.1 );
setEffScaleKey( spep_1-3 + 222, ctga, 2.09, 2.09 );

setEffRotateKey( spep_1-3 + 200, ctga, 16 );
setEffRotateKey( spep_1-3 + 202, ctga, 2.7 );
setEffRotateKey( spep_1-3 + 204, ctga, 16 );
setEffRotateKey( spep_1-3 + 206, ctga, 24.6 );
setEffRotateKey( spep_1-3 + 208, ctga, 15.8 );
setEffRotateKey( spep_1-3 + 210, ctga, 5.1 );
setEffRotateKey( spep_1-3 + 212, ctga, 16 );
setEffRotateKey( spep_1-3 + 214, ctga, 15.9 );
setEffRotateKey( spep_1-3 + 218, ctga, 15.9 );
setEffRotateKey( spep_1-3 + 220, ctga, 16 );
setEffRotateKey( spep_1-3 + 222, ctga, 16 );

setEffAlphaKey( spep_1-3 + 200, ctga, 255 );
setEffAlphaKey( spep_1-3 + 214, ctga, 255 );
setEffAlphaKey( spep_1-3 + 216, ctga, 191 );
setEffAlphaKey( spep_1-3 + 218, ctga, 128 );
setEffAlphaKey( spep_1-3 + 220, ctga, 64 );
setEffAlphaKey( spep_1-3 + 222, ctga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 290,  10020, 18, 0x100, -1, 0, 78.6, 358.9 );--バキッ
setEffShake( spep_1-3 + 290, ctbaki, 18, 10 );
setEffMoveKey( spep_1-3 + 290, ctbaki, 78.6, 358.9 , 0 );
setEffMoveKey( spep_1-3 + 292, ctbaki, 72.4, 382.9 , 0 );
setEffMoveKey( spep_1-3 + 294, ctbaki, 78.7, 359 , 0 );
setEffMoveKey( spep_1-3 + 296, ctbaki, 78.8, 358.9 , 0 );
setEffMoveKey( spep_1-3 + 298, ctbaki, 74.7, 374.5 , 0 );
setEffMoveKey( spep_1-3 + 300, ctbaki, 78.8, 358.8 , 0 );
setEffMoveKey( spep_1-3 + 302, ctbaki, 75, 373.6 , 0 );
setEffMoveKey( spep_1-3 + 304, ctbaki, 78.8, 358.7 , 0 );
setEffMoveKey( spep_1-3 + 306, ctbaki, 75, 373.2 , 0 );
setEffMoveKey( spep_1-3 + 308, ctbaki, 78.7, 358.8 , 0 );

setEffScaleKey( spep_1-3 + 290, ctbaki, 1.62, 1.62 );
setEffScaleKey( spep_1-3 + 292, ctbaki, 2.91, 2.91 );
setEffScaleKey( spep_1-3 + 294, ctbaki, 2.43, 2.43 );
setEffScaleKey( spep_1-3 + 296, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_1-3 + 298, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_1-3 + 300, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 302, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 304, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1-3 + 306, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1-3 + 308, ctbaki, 1.77, 1.77 );

setEffRotateKey( spep_1-3 + 290, ctbaki, -40.5 );
setEffRotateKey( spep_1-3 + 308, ctbaki, -40.5 );

setEffAlphaKey( spep_1-3 + 290, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 304, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 306, ctbaki, 134 );
setEffAlphaKey( spep_1-3 + 308, ctbaki, 13 );

--文字エントリー
ctbako = entryEffectLife( spep_1-3 + 386,  10021, 24, 0x100, -1, 0, 7.7, 417.2 );--バゴォッ
setEffShake( spep_1-3 + 386, ctbako, 24, 10 );
setEffMoveKey( spep_1-3 + 386, ctbako, 7.7, 417.2 , 0 );
setEffMoveKey( spep_1-3 + 388, ctbako, 7.4, 416.3 , 0 );
setEffMoveKey( spep_1-3 + 390, ctbako, 7.7, 417 , 0 );
setEffMoveKey( spep_1-3 + 392, ctbako, -12.5, 434 , 0 );
setEffMoveKey( spep_1-3 + 394, ctbako, 7.7, 417.1 , 0 );
setEffMoveKey( spep_1-3 + 396, ctbako, -11.6, 433.4 , 0 );
setEffMoveKey( spep_1-3 + 398, ctbako, 7.7, 417.2 , 0 );
setEffMoveKey( spep_1-3 + 400, ctbako, 7.7, 417.3 , 0 );
setEffMoveKey( spep_1-3 + 402, ctbako, -9.8, 432.1 , 0 );
setEffMoveKey( spep_1-3 + 404, ctbako, 7.7, 417.4 , 0 );
setEffMoveKey( spep_1-3 + 406, ctbako, -8.2, 430.8 , 0 );
setEffMoveKey( spep_1-3 + 408, ctbako, 7.7, 417.5 , 0 );
setEffMoveKey( spep_1-3 + 410, ctbako, 7.7, 417.6 , 0 );

setEffScaleKey( spep_1-3 + 386, ctbako, 1.51, 1.51 );
setEffScaleKey( spep_1-3 + 388, ctbako, 4.19, 4.19 );
setEffScaleKey( spep_1-3 + 390, ctbako, 3.13, 3.13 );
setEffScaleKey( spep_1-3 + 392, ctbako, 3.06, 3.06 );
setEffScaleKey( spep_1-3 + 394, ctbako, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 396, ctbako, 2.92, 2.92 );
setEffScaleKey( spep_1-3 + 398, ctbako, 2.85, 2.85 );
setEffScaleKey( spep_1-3 + 400, ctbako, 2.78, 2.78 );
setEffScaleKey( spep_1-3 + 402, ctbako, 2.66, 2.66 );
setEffScaleKey( spep_1-3 + 404, ctbako, 2.53, 2.53 );
setEffScaleKey( spep_1-3 + 406, ctbako, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 408, ctbako, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 410, ctbako, 2.15, 2.15 );

setEffRotateKey( spep_1-3 + 386, ctbako, 14.4 );
setEffRotateKey( spep_1-3 + 410, ctbako, 14.4 );

setEffAlphaKey( spep_1-3 + 386, ctbako, 255 );
setEffAlphaKey( spep_1-3 + 400, ctbako, 255 );
setEffAlphaKey( spep_1-3 + 402, ctbako, 204 );
setEffAlphaKey( spep_1-3 + 404, ctbako, 153 );
setEffAlphaKey( spep_1-3 + 406, ctbako, 102 );
setEffAlphaKey( spep_1-3 + 408, ctbako, 51 );
setEffAlphaKey( spep_1-3 + 410, ctbako, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 12,  906, 22, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 12, shuchusen2, 22, 20 );
setEffMoveKey( spep_1-3 + 12, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 34, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 12, shuchusen2, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 34, shuchusen2, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 12, shuchusen2, 0.3 );
setEffRotateKey( spep_1-3 + 12, shuchusen2, 0.3 );

setEffAlphaKey( spep_1-3 + 12, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 26, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 28, shuchusen2, 143 );
setEffAlphaKey( spep_1-3 + 30, shuchusen2, 96 );
setEffAlphaKey( spep_1-3 + 32, shuchusen2, 48 );
setEffAlphaKey( spep_1-3 + 34, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 92,  906, 20, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 92, shuchusen3, 20, 20 );
setEffMoveKey( spep_1-3 + 92, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 112, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 92, shuchusen3, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 112, shuchusen3, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 92, shuchusen3, 0.3 );
setEffRotateKey( spep_1-3 + 112, shuchusen3, 0.3 );

setEffAlphaKey( spep_1-3 + 92, shuchusen3, 191 );
setEffAlphaKey( spep_1-3 + 106, shuchusen3, 191 );
setEffAlphaKey( spep_1-3 + 108, shuchusen3, 128 );
setEffAlphaKey( spep_1-3 + 110, shuchusen3, 64 );
setEffAlphaKey( spep_1-3 + 112, shuchusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_1-3 + 200,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 200, shuchusen4, 24, 20 );
setEffMoveKey( spep_1-3 + 200, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 224, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 200, shuchusen4, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 224, shuchusen4, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 200, shuchusen4, 0.3 );
setEffRotateKey( spep_1-3 + 224, shuchusen4, 0.3 );

setEffAlphaKey( spep_1-3 + 200, shuchusen4, 191 );
setEffAlphaKey( spep_1-3 + 216, shuchusen4, 191 );
setEffAlphaKey( spep_1-3 + 218, shuchusen4, 143 );
setEffAlphaKey( spep_1-3 + 220, shuchusen4, 96 );
setEffAlphaKey( spep_1-3 + 222, shuchusen4, 48 );
setEffAlphaKey( spep_1-3 + 224, shuchusen4, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_1-3 + 290,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 290, shuchusen5, 24, 20 );
setEffMoveKey( spep_1-3 + 290, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 314, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 290, shuchusen5, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 314, shuchusen5, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 290, shuchusen5, 0.3 );
setEffRotateKey( spep_1-3 + 314, shuchusen5, 0.3 );

setEffAlphaKey( spep_1-3 + 290, shuchusen5, 191 );
setEffAlphaKey( spep_1-3 + 304, shuchusen5, 191 );
setEffAlphaKey( spep_1-3 + 306, shuchusen5, 153 );
setEffAlphaKey( spep_1-3 + 308, shuchusen5, 115 );
setEffAlphaKey( spep_1-3 + 310, shuchusen5, 77 );
setEffAlphaKey( spep_1-3 + 312, shuchusen5, 38 );
setEffAlphaKey( spep_1-3 + 314, shuchusen5, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_1-3 + 386,  906, 28, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 386, shuchusen6, 28, 20 );
setEffMoveKey( spep_1-3 + 386, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 414, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 386, shuchusen6, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 414, shuchusen6, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 386, shuchusen6, 0.3 );
setEffRotateKey( spep_1-3 + 414, shuchusen6, 0.3 );

setEffAlphaKey( spep_1-3 + 386, shuchusen6, 191 );
setEffAlphaKey( spep_1-3 + 406, shuchusen6, 191 );
setEffAlphaKey( spep_1-3 + 408, shuchusen6, 143 );
setEffAlphaKey( spep_1-3 + 410, shuchusen6, 96 );
setEffAlphaKey( spep_1-3 + 412, shuchusen6, 48 );
setEffAlphaKey( spep_1-3 + 414, shuchusen6, 0 );

--集中線
shuchusenj7 = entryEffectLife( spep_1-3 + 504,  906, 52, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 504, shuchusenj7, 52, 20 );
setEffMoveKey( spep_1-3 + 504, shuchusenj7, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 556, shuchusenj7, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 504, shuchusenj7, 1.21, 1.42 );
setEffScaleKey( spep_1-3 + 556, shuchusenj7, 1.21, 1.42 );

setEffRotateKey( spep_1-3 + 504, shuchusenj7, 0.3 );
setEffRotateKey( spep_1-3 + 556, shuchusenj7, 0.3 );

setEffAlphaKey( spep_1-3 + 504, shuchusenj7, 44 );
setEffAlphaKey( spep_1-3 + 506, shuchusenj7, 54 );
setEffAlphaKey( spep_1-3 + 508, shuchusenj7, 65 );
setEffAlphaKey( spep_1-3 + 510, shuchusenj7, 75 );
setEffAlphaKey( spep_1-3 + 512, shuchusenj7, 86 );
setEffAlphaKey( spep_1-3 + 514, shuchusenj7, 96 );
setEffAlphaKey( spep_1-3 + 516, shuchusenj7, 107 );
setEffAlphaKey( spep_1-3 + 518, shuchusenj7, 117 );
setEffAlphaKey( spep_1-3 + 520, shuchusenj7, 128 );
setEffAlphaKey( spep_1-3 + 522, shuchusenj7, 138 );
setEffAlphaKey( spep_1-3 + 524, shuchusenj7, 149 );
setEffAlphaKey( spep_1-3 + 526, shuchusenj7, 159 );
setEffAlphaKey( spep_1-3 + 528, shuchusenj7, 170 );
setEffAlphaKey( spep_1-3 + 530, shuchusenj7, 180 );
setEffAlphaKey( spep_1-3 + 532, shuchusenj7, 191 );
setEffAlphaKey( spep_1-3 + 534, shuchusenj7, 201 );
setEffAlphaKey( spep_1-3 + 536, shuchusenj7, 212 );
setEffAlphaKey( spep_1-3 + 556, shuchusenj7, 222 );

--SE
playSe( spep_1 + 12, 1003 );
playSe( spep_1 + 16, 8 );
setSeVolume( spep_1 + 16, 8, 71 );
playSe( spep_1 + 16, 1141 );
setSeVolume( spep_1 + 16, 1141, 63 );
se_1172 = playSe( spep_1 + 16, 1172 );
setSeVolume( spep_1 + 16, 1172, 25 );
playSe( spep_1 + 20, 1032 );
setSeVolume( spep_1 + 20, 1032, 71 );
playSe( spep_1 + 51, 1235 );
setSeVolume( spep_1 + 51, 1235, 71 );
playSe( spep_1 + 55, 1112 );
setSeVolume( spep_1 + 55, 1112, 63 );
playSe( spep_1 + 91, 1003 );
playSe( spep_1 + 97, 1010 );
playSe( spep_1 + 103, 1110 );
se_1183 = playSe( spep_1 + 131, 1183 );
setSeVolume( spep_1 + 131, 1183, 79 );
se_1121 = playSe( spep_1 + 131, 1121 );
setSeVolume( spep_1 + 131, 1121, 63 );
playSe( spep_1 + 168, 1235 );
setSeVolume( spep_1 + 168, 1235, 71 );
playSe( spep_1 + 172, 1112 );
setSeVolume( spep_1 + 172, 1112, 63 );
playSe( spep_1 + 198, 1189 );
playSe( spep_1 + 204, 1009 );
playSe( spep_1 + 224, 8 )
setSeVolume( spep_1 + 224, 8, 79 );
playSe( spep_1 + 260, 1235 );
setSeVolume( spep_1 + 260, 1235, 71 );
playSe( spep_1 + 264, 1112 );
setSeVolume( spep_1 + 264, 1112, 63 );
playSe( spep_1 + 290, 1004 );
playSe( spep_1 + 296, 1012 );
playSe( spep_1 + 299, 1110 );
playSe( spep_1 + 299, 1072 );
playSe( spep_1 + 302, 1001 );
setSeVolume( spep_1 + 302, 1001, 79 );
playSe( spep_1 + 335, 1235 );
setSeVolume( spep_1 + 335, 1235, 71 );
playSe( spep_1 + 339, 1112 );
setSeVolume( spep_1 + 339, 1112, 63 );
playSe( spep_1 + 382, 1003 );
playSe( spep_1 + 396, 1120 );
playSe( spep_1 + 410, 1183 );
setSeVolume( spep_1 + 410, 1183, 79 );
playSe( spep_1 + 465, 1072 );
playSe( spep_1 + 491, 1182 );
setSeVolume( spep_1 + 491, 1182, 0 );
setSeVolume( spep_1 + 497, 1182, 8.3 );
setSeVolume( spep_1 + 498, 1182, 16.6 );
setSeVolume( spep_1 + 499, 1182, 24.9 );
setSeVolume( spep_1 + 500, 1182, 33.2 );
setSeVolume( spep_1 + 501, 1182, 41.5 );
setSeVolume( spep_1 + 502, 1182, 49.8 );
setSeVolume( spep_1 + 503, 1182, 58.1 );
setSeVolume( spep_1 + 504, 1182, 66.4 );
setSeVolume( spep_1 + 505, 1182, 74.7 );
setSeVolume( spep_1 + 506, 1182, 83 );
setSeVolume( spep_1 + 507, 1182, 91.3 );
setSeVolume( spep_1 + 508, 1182, 100 );

stopSe( spep_1 + 37, se_1172, 49 );
stopSe( spep_1 + 272, se_1183, 0 );
stopSe( spep_1 + 202, se_1121, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 538, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2 = spep_1+536;

------------------------------------------------------
-- ナビ正面
------------------------------------------------------
-- ** エフェクト等 ** --
nabi = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, nabi, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, nabi, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, nabi, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, nabi, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, nabi, 0 );
setEffRotateKey( spep_2 + 100, nabi, 0 );
setEffAlphaKey( spep_2 + 0, nabi, 255 );
setEffAlphaKey( spep_2 + 100, nabi, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2   , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_2 + 12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 102, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+100;

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
entryFade( spep_3 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 飛びつき斬撃〜十字空間
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 210, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_4 + 210, finish, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 210, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 210, finish, 255 );


ko = entryEffect(  spep_4+198,  SP_06x,    0x100,  -1, 0, 0, 0);

setEffMoveKey(  spep_4+198,  ko,  0,  0);
setEffMoveKey(  spep_4+368,  ko,  0,  0);
setEffScaleKey(  spep_4+198,  ko,  -1.0,  1.0);
setEffScaleKey(  spep_4+368,  ko,  -1.0,  1.0);
setEffRotateKey(  spep_4+198,  ko,  0);
setEffRotateKey(  spep_4+368,  ko,  0);
setEffAlphaKey(  spep_4+198,  ko,  255);
setEffAlphaKey(  spep_4+368,  ko,  255);

--SE
playSe( spep_4 + 2, 1014 );
playSe( spep_4 + 2, 1003 );
playSe( spep_4 + 7, 1182 );
se_1180 = playSe( spep_4 + 7, 1180 );
se_1116 = playSe( spep_4 + 30, 1116 );
playSe( spep_4 + 65, 1142 );
playSe( spep_4 + 65, 1061 );
setSeVolume( spep_4 + 65, 1061, 63 );
playSe( spep_4 + 65, 1046 );
setSeVolume( spep_4 + 65, 1046, 56 );
playSe( spep_4 + 65, 1068 );
setSeVolume( spep_4 + 65, 1068, 56 );
playSe( spep_4 + 68, 1172 );
setSeVolume( spep_4 + 68, 1172, 18 );
playSe( spep_4 + 77, 1032 );
playSe( spep_4 + 89, 1031 );
setSeVolume( spep_4 + 89, 1031, 63 );
playSe( spep_4 + 127, 1175 );
setSeVolume( spep_4 + 127, 1175, 71 );
playSe( spep_4 + 127, 1044 );
setSeVolume( spep_4 + 127, 1044, 25 );
playSe( spep_4 + 127, 1176 );
setSeVolume( spep_4 + 127, 1176, 79 );
se_1173 = playSe( spep_4 + 127, 1173 );


stopSe( spep_4 + 27, se_1180, 14 );
stopSe( spep_4 + 53, se_1116, 17 );
stopSe( spep_4 + 166, se_1173, 35 );

--終わり
hideKoScreen();  --黒フィルター削除
dealDamage( spep_4 + 66 );
entryFade( spep_4 +196, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_4 + 200 );
end
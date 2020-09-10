--1017930:人造人間17号(未来)_パワーブリッツ
--sp_effect_b4_00111

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
SP_01=	154151	;--	突進
SP_02=	154152	;--	格闘
SP_03=	154154	;--	気弾発動
SP_04=	154155	;--	気弾移動
SP_05=	154156	;--	背景
SP_06=	154157	;--	背景
SP_07=	154158	;--	爆発

--エフェクト(てき)
SP_01x=	154151	;--	突進	
SP_02x=	154153	;--	格闘	(敵)
SP_03x=	154154	;--	気弾発動	
SP_04x=	154155	;--	気弾移動	
SP_05x=	154156	;--	背景	
SP_06x=	154157	;--	背景	
SP_07x=	154158	;--	爆発	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
-- 気弾移動
------------------------------------------------------
--はじめの準備
spep_0 = 0;


-- ** エフェクト等 ** --
dash = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, dash, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 80, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 80, dash, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 78, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 255 );

-- ** 音 ** --
SE0 = playSe( spep_0 + 0, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
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

--白フェード
entryFade( spep_0 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+80;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, fighting, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting, 1.0, 1.0 );
setEffScaleKey( spep_1 + 250, fighting, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting, 0 );
setEffRotateKey( spep_1 + 250, fighting, 0 );
setEffAlphaKey( spep_1 + 0, fighting, 255 );
setEffAlphaKey( spep_1 + 250, fighting, 255 );

-- ** エフェクト等 ** --
fighting_bg = entryEffect( spep_1 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_bg, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, fighting_bg, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 250, fighting_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_bg, 0 );
setEffRotateKey( spep_1 + 250, fighting_bg, 0 );
setEffAlphaKey( spep_1 + 0, fighting_bg, 255 );
setEffAlphaKey( spep_1 + 250, fighting_bg, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 238, 1, 0 );

changeAnime( spep_1  + 0, 1, 104 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 105 );
changeAnime( spep_1 -3 + 192, 1, 107 );

setMoveKey( spep_1  + 0, 1, 192.7, -11.9 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 158.4, -13.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 136.8, -14.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 119.1, -15.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 103.7, -16 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 90.2, -16.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 78.2, -17.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 67.6, -17.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 58.8, -18.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 51.9, -18.4 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 48.2, -18.6 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 51.9, -18.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 105.3, -73.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 46.2, -14.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 117.6, 18.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -4, -44.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 14.7, 8.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 21.4, 0.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -21.5, -34.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 7.4, -17.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 14.1, -16.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 14.2, -19.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 16.8, -17.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 21.3, -17.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 25.4, -17.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 29.6, -17.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 33.5, -17.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 37.5, -17 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 41.2, -17 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 44.8, -16.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 48.3, -17 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 51.8, -16.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 55.1, -16.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 58.3, -16.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 61.4, -16.7 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 64.4, -16.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 67.3, -16.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 70.2, -16.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 72.9, -16.6 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 75.6, -16.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 78.1, -16.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 80.6, -16.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 82.9, -16.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 85.3, -16.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 87.5, -16.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 89.6, -16.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 91.6, -16.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 93.7, -16.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 95.5, -16.4 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 97.4, -16.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 99.2, -16.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 100.8, -16.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 102.4, -16.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 103.8, -16.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 105.3, -16.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 106.7, -16.3 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 108.1, -16.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 78.9, -7.3 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 54.3, 34 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 102.5, -30.5 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 75.9, -20.5 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 104.4, 14 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 86.1, -7.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 83.5, 10.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 50, 24.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 49.7, 41.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 64.9, 66.5 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 70.7, 81.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 78.3, 97.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 84.2, 109.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 88.5, 120.1 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 95.1, 131.8 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 99.5, 141.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 101.1, 147 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 107.6, 157.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 107.9, 161.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 113.3, 169.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 112.8, 172.1 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 117.4, 179.7 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 117.6, 182.3 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 120.1, 187.1 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 123.9, 193.2 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 121.8, 192.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 125.1, 197.9 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 128, 202.7 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 125, 200.9 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 127.8, 205.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 130.2, 209.1 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 132.5, 212.5 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 128.8, 209.6 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 130.8, 212.7 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 132.6, 215.5 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 134.2, 217.9 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 130, 214 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 131.4, 216.1 , 0 );
setMoveKey( spep_1 -3 + 191, 1, 132.2, 217.7 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 35, 220.6 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 35, 220.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 10.5, 262 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 58.7, 197.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 32.2, 207.7 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 60.7, 242.2 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 34.7, 183.6 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 76.9, 253.7 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 71, 247.1 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 55, 235 , 0 );
setMoveKey( spep_1 -3 + 212, 1, -149.7, 11.3 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -325.8, -173.5 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -450.8, -305.3 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -561.7, -426.5 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -649.5, -523.3 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -725.7, -606.9 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -790.9, -679.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -846.6, -741.2 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -894.7, -794.9 , 0 );
setMoveKey( spep_1 -3 + 230, 1, -935.8, -841.2 , 0 );
setMoveKey( spep_1 -3 + 232, 1, -970.8, -880.8 , 0 );
setMoveKey( spep_1 -3 + 234, 1, -1000.4, -914.2 , 0 );
setMoveKey( spep_1 -3 + 236, 1, -1024.9, -942.2 , 0 );
setMoveKey( spep_1  + 238, 1, -1044.8, -965 , 0 );

setScaleKey( spep_1  + 0, 1, 1.05, 1.05 );
--setScaleKey( spep_1 -3 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 4, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 6, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 8, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 10, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 18, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 21, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 22, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 28, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 30, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 34, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 40, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 42, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 44, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 48, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 50, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 52, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 54, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 58, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 60, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 62, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 64, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 68, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 70, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 72, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 74, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 80, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 82, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 88, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 90, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 100, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 124, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 126, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 128, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 130, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 132, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 134, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 136, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 138, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 140, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 142, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 144, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 146, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 148, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 150, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 152, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 154, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 156, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 158, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 160, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 162, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 164, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 166, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 168, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 170, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 172, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 174, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 176, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 178, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 180, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 182, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 184, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 188, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 191, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 192, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 + 204, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 + 206, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 210, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 212, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 214, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 216, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 218, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 220, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 222, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 224, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 226, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 228, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 230, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 232, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 234, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 236, 1, 1.81, 1.81 );
setScaleKey( spep_1  + 238, 1, 1.83, 1.83 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 126, 1, 0 );
setRotateKey( spep_1 -3 + 128, 1, 1 );
setRotateKey( spep_1 -3 + 130, 1, 1.5 );
setRotateKey( spep_1 -3 + 132, 1, 1.9 );
setRotateKey( spep_1 -3 + 134, 1, 2.2 );
setRotateKey( spep_1 -3 + 136, 1, 2.5 );
setRotateKey( spep_1 -3 + 138, 1, 2.7 );
setRotateKey( spep_1 -3 + 140, 1, 2.9 );
setRotateKey( spep_1 -3 + 142, 1, 3.1 );
setRotateKey( spep_1 -3 + 144, 1, 3.3 );
setRotateKey( spep_1 -3 + 146, 1, 3.4 );
setRotateKey( spep_1 -3 + 148, 1, 3.5 );
setRotateKey( spep_1 -3 + 150, 1, 3.7 );
setRotateKey( spep_1 -3 + 152, 1, 3.8 );
setRotateKey( spep_1 -3 + 154, 1, 3.9 );
setRotateKey( spep_1 -3 + 156, 1, 4 );
setRotateKey( spep_1 -3 + 158, 1, 4.1 );
setRotateKey( spep_1 -3 + 160, 1, 4.2 );
setRotateKey( spep_1 -3 + 162, 1, 4.2 );
setRotateKey( spep_1 -3 + 164, 1, 4.3 );
setRotateKey( spep_1 -3 + 166, 1, 4.4 );
setRotateKey( spep_1 -3 + 168, 1, 4.4 );
setRotateKey( spep_1 -3 + 170, 1, 4.5 );
setRotateKey( spep_1 -3 + 172, 1, 4.5 );
setRotateKey( spep_1 -3 + 174, 1, 4.6 );
setRotateKey( spep_1 -3 + 176, 1, 4.6 );
setRotateKey( spep_1 -3 + 178, 1, 4.7 );
setRotateKey( spep_1 -3 + 184, 1, 4.7 );
setRotateKey( spep_1 -3 + 186, 1, 4.8 );
setRotateKey( spep_1 -3 + 191, 1, 4.8 );
setRotateKey( spep_1 -3 + 192, 1, 82.2 );
setRotateKey( spep_1 -3 + 210, 1, 82.2 );
setRotateKey( spep_1 -3 + 212, 1, 74.5 );
setRotateKey( spep_1 -3 + 214, 1, 68.8 );
setRotateKey( spep_1 -3 + 216, 1, 64.3 );
setRotateKey( spep_1 -3 + 218, 1, 60.5 );
setRotateKey( spep_1 -3 + 220, 1, 57.4 );
setRotateKey( spep_1 -3 + 222, 1, 54.8 );
setRotateKey( spep_1 -3 + 224, 1, 52.5 );
setRotateKey( spep_1 -3 + 226, 1, 50.5 );
setRotateKey( spep_1 -3 + 228, 1, 48.9 );
setRotateKey( spep_1 -3 + 230, 1, 47.4 );
setRotateKey( spep_1 -3 + 232, 1, 46.2 );
setRotateKey( spep_1 -3 + 234, 1, 45.2 );
setRotateKey( spep_1 -3 + 236, 1, 44.3 );
setRotateKey( spep_1  + 238, 1, 43.6 );


--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 22,  10019, 12, 0x100, -1, 0, 52.7, 149.7 );--ドンッ

setEffMoveKey( spep_1 -3 + 22, ctdon, 52.7, 149.7 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdon, 86.5, 178.6 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdon, 130.8, 201.7 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdon, 145.4, 210.4 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdon, 162.1, 205.5 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdon, 166.5, 222.2 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdon, 164.7, 235.1 , 0 );

setEffScaleKey( spep_1 -3 + 22, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 24, ctdon, 0.83, 0.83 );
setEffScaleKey( spep_1 -3 + 26, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 28, ctdon, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 30, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 32, ctdon, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 34, ctdon, 1.9, 1.9 );

setEffRotateKey( spep_1 -3 + 22, ctdon, 20 );
setEffRotateKey( spep_1 -3 + 34, ctdon, 20 );

setEffAlphaKey( spep_1 -3 + 22, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 32, ctdon, 128 );
setEffAlphaKey( spep_1 -3 + 34, ctdon, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 114,  10020, 12, 0x100, -1, 0, -39.3, 138.3 );--バキッ

setEffMoveKey( spep_1-3 + 114, ctbaki, -39.3, 138.3 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbaki, -40.1, 193.2 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbaki, -23.1, 197 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbaki, -31, 208 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbaki, -25, 226 , 0 );
setEffMoveKey( spep_1-3 + 124, ctbaki, 34.7, 278.1 , 0 );
setEffMoveKey( spep_1-3 + 126, ctbaki, 95.8, 339.7 , 0 );

setEffScaleKey( spep_1-3 + 114, ctbaki, 0.2, 0.2 );
setEffScaleKey( spep_1-3 + 116, ctbaki, 2, 2 );
setEffScaleKey( spep_1-3 + 118, ctbaki, 2.07, 2.07 );
setEffScaleKey( spep_1-3 + 120, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_1-3 + 122, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_1-3 + 124, ctbaki, 2.95, 2.95 );
setEffScaleKey( spep_1-3 + 126, ctbaki, 3.7, 3.7 );

setEffRotateKey( spep_1-3 + 114, ctbaki, 0 );
setEffRotateKey( spep_1-3 + 126, ctbaki, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1-3 + 192,  10018, 18, 0x100, -1, 0, -10.4, 297.8 );--ドゴォンッ

setEffMoveKey( spep_1-3 + 192, ctdogon, -10.4, 297.8 , 0 );
setEffMoveKey( spep_1-3 + 194, ctdogon, 12.6, 307.6 , 0 );
setEffMoveKey( spep_1-3 + 196, ctdogon, 46.1, 317.2 , 0 );
setEffMoveKey( spep_1-3 + 198, ctdogon, 17.4, 315.7 , 0 );
setEffMoveKey( spep_1-3 + 200, ctdogon, 9.3, 305.5 , 0 );
setEffMoveKey( spep_1-3 + 202, ctdogon, -20.9, 296.3 , 0 );
setEffMoveKey( spep_1-3 + 204, ctdogon, -40.9, 290.2 , 0 );
setEffMoveKey( spep_1-3 + 206, ctdogon, -36.8, 298.5 , 0 );
setEffMoveKey( spep_1-3 + 208, ctdogon, -34, 287.3 , 0 );
setEffMoveKey( spep_1-3 + 210, ctdogon, -40.9, 290.2 , 0 );

setEffScaleKey( spep_1-3 + 192, ctdogon, 0.07, 0.07 );
setEffScaleKey( spep_1-3 + 194, ctdogon, 1.07, 1.07 );
setEffScaleKey( spep_1-3 + 196, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_1-3 + 198, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_1-3 + 200, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 202, ctdogon, 2.37, 2.37 );
setEffScaleKey( spep_1-3 + 204, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_1-3 + 210, ctdogon, 2.47, 2.47 );

setEffRotateKey( spep_1-3 + 192, ctdogon, -7 );
setEffRotateKey( spep_1-3 + 194, ctdogon, -23.5 );
setEffRotateKey( spep_1-3 + 196, ctdogon, -40 );
setEffRotateKey( spep_1-3 + 210, ctdogon, -40 );

setEffAlphaKey( spep_1-3 + 192, ctdogon, 255 );
setEffAlphaKey( spep_1-3 + 210, ctdogon, 255 );

--流線
ryusen1 = entryEffectLife( spep_1  + 0,  921, 112 -3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 112, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 1.1, 1.1 );
setEffScaleKey( spep_1 -3 + 112, ryusen1, 1.1, 1.1 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 112, ryusen1, 0 );

setEffAlphaKey( spep_1  + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 -3 + 74, ryusen1, 255 );
setEffAlphaKey( spep_1 -3 + 76, ryusen1, 242 );
setEffAlphaKey( spep_1 -3 + 78, ryusen1, 228 );
setEffAlphaKey( spep_1 -3 + 80, ryusen1, 215 );
setEffAlphaKey( spep_1 -3 + 82, ryusen1, 201 );
setEffAlphaKey( spep_1 -3 + 84, ryusen1, 188 );
setEffAlphaKey( spep_1 -3 + 86, ryusen1, 174 );
setEffAlphaKey( spep_1 -3 + 88, ryusen1, 161 );
setEffAlphaKey( spep_1 -3 + 90, ryusen1, 148 );
setEffAlphaKey( spep_1 -3 + 92, ryusen1, 134 );
setEffAlphaKey( spep_1 -3 + 94, ryusen1, 121 );
setEffAlphaKey( spep_1 -3 + 96, ryusen1, 107 );
setEffAlphaKey( spep_1 -3 + 98, ryusen1, 94 );
setEffAlphaKey( spep_1 -3 + 100, ryusen1, 81 );
setEffAlphaKey( spep_1 -3 + 102, ryusen1, 67 );
setEffAlphaKey( spep_1 -3 + 104, ryusen1, 54 );
setEffAlphaKey( spep_1 -3 + 106, ryusen1, 40 );
setEffAlphaKey( spep_1 -3 + 108, ryusen1, 27 );
setEffAlphaKey( spep_1 -3 + 110, ryusen1, 13 );
setEffAlphaKey( spep_1 -3 + 112, ryusen1, 0 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 192,  921, 56, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 192, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 248, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 192, ryusen2, 1.93, 1.93 );
setEffScaleKey( spep_1 -3 + 248, ryusen2, 1.93, 1.93 );

setEffRotateKey( spep_1 -3 + 192, ryusen2, -59 );
setEffRotateKey( spep_1 -3 + 248, ryusen2, -59 );

setEffAlphaKey( spep_1 -3 + 192, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 248, ryusen2, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 22,  906, 15, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 22, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 37, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 22, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 37, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 22, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 37, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 22, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 37, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1 -3 + 114,  906, 76, 0x100, -1, 0, 234.3 -234.3, 0 );

setEffMoveKey( spep_1 -3 + 114, shuchusen3, 234.3 -234.3, 0 , 0 );
setEffMoveKey( spep_1 -3 + 128, shuchusen3, 234.3 -234.3, 0 , 0 );
setEffMoveKey( spep_1 -3 + 130, shuchusen3, 444.2 -234.3, 129.6 , 0 );
setEffMoveKey( spep_1 -3 + 190, shuchusen3, 444.2 -234.3, 129.6 , 0 );

setEffScaleKey( spep_1 -3 + 114, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_1 -3 + 128, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_1 -3 + 130, shuchusen3, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 190, shuchusen3, 1.47, 1.47 );

setEffRotateKey( spep_1 -3 + 114, shuchusen3, 180 );
setEffRotateKey( spep_1 -3 + 190, shuchusen3, 180 );

setEffAlphaKey( spep_1 -3 + 114, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 130, shuchusen3, 0 );
setEffAlphaKey( spep_1 -3 + 132, shuchusen3, 43 );
setEffAlphaKey( spep_1 -3 + 134, shuchusen3, 85 );
setEffAlphaKey( spep_1 -3 + 136, shuchusen3, 128 );
setEffAlphaKey( spep_1 -3 + 138, shuchusen3, 170 );
setEffAlphaKey( spep_1 -3 + 140, shuchusen3, 213 );
setEffAlphaKey( spep_1 -3 + 142, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 190, shuchusen3, 255 );

--白フェード
entryFade( spep_1 + 18, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 110, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 188, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 242, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 0, 8 );
playSe( spep_1 -3 + 22, 1010 );  --ドン
setSeVolume( spep_1 -3 + 22, 1010, 110 );
playSe( spep_1 + 66, 43 );  --瞬間移動
setSeVolume( spep_1 + 66, 43, 80 );
playSe( spep_1 + 92, 4 );  --瞬間移動・出
playSe( spep_1 + 92, 43 );  --瞬間移動・出
setSeVolume( spep_1 + 92, 4, 110 );
playSe( spep_1 -3 + 114, 1009 );  --バキ
playSe( spep_1 + 144, 43 );  --瞬間移動
setSeVolume( spep_1 + 144, 43, 90 );
playSe( spep_1 + 168, 1109 );  --瞬間移動・出
setSeVolume( spep_1 + 168, 1109, 90 );
playSe( spep_1 -3 + 192, 1011 );  --ドゴン
setSeVolume( spep_1 -3 + 192, 1011, 110 );

--次の準備
spep_2 = spep_1+250;

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
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 気弾発動
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 166, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 166, tame, 255 );
setEffAlphaKey( spep_3 + 167, tame, 0 );
setEffAlphaKey( spep_3 + 168, tame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3+22  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3+22  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3 + 100, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen4, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +34, 190006, 72, 0x100, -1, 0, 150, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +34,  ctgogo,  150,  510);
setEffMoveKey(  spep_3 +106,  ctgogo,  150,  510);

setEffAlphaKey( spep_3 +34, ctgogo, 0 );
setEffAlphaKey( spep_3 + 35, ctgogo, 255 );
setEffAlphaKey( spep_3 + 36, ctgogo, 255 );
setEffAlphaKey( spep_3 + 98, ctgogo, 255 );
setEffAlphaKey( spep_3 + 100, ctgogo, 255 );
setEffAlphaKey( spep_3 + 102, ctgogo, 191 );
setEffAlphaKey( spep_3 + 104, ctgogo, 128 );
setEffAlphaKey( spep_3 + 106, ctgogo, 64 );

setEffRotateKey(  spep_3 +34,  ctgogo,  0);
setEffRotateKey(  spep_3 +106,  ctgogo,  0);

setEffScaleKey(  spep_3 +34,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +96,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +106,  ctgogo, 1.07, 1.07 );

--白フェード
entryFade( spep_3 + 158, 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 +0 -10, 1072 );  --カットイン前
playSe( spep_3 +34, 1018 );  --ゴゴゴ
playSe( spep_3 +34, 1154 );  --溜める
SE1 = playSe( spep_3 +100, 15 );  --気弾大きくなる
setSeVolume( spep_3 +100, 15, 120 );
stopSe( spep_3 +140, SE1, 20);
playSe( spep_3 +114 +20, 1022 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 166;

------------------------------------------------------
-- 気弾移動
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, hit, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 70, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 70, hit, 255 );

-- ** エフェクト等 ** --
hit_bg = entryEffect( spep_4 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, hit_bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_bg, 1.3, 1.3 );
setEffScaleKey( spep_4 + 70, hit_bg, 1.3, 1.3 );
setEffRotateKey( spep_4 + 0, hit_bg, 0 );
setEffRotateKey( spep_4 + 70, hit_bg, 0 );
setEffAlphaKey( spep_4 + 0, hit_bg, 255 );
setEffAlphaKey( spep_4 + 70, hit_bg, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 68, 1, 0 );


changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 244.6, 495.6 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 211.9, 454.4 , 0 );
setMoveKey( spep_4-3 + 4, 1, 183.1, 418.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 157.3, 385.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 133.9, 356.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 115.3, 333 , 0 );
setMoveKey( spep_4-3 + 12, 1, 95.2, 307.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, 76.3, 284.2 , 0 );
setMoveKey( spep_4-3 + 16, 1, 58.7, 262.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 42.1, 241.3 , 0 );
setMoveKey( spep_4-3 + 20, 1, 26.3, 221.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, 11.5, 203.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, -2.7, 185.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, -16, 168.8 , 0 );
setMoveKey( spep_4-3 + 28, 1, -27.4, 154.5 , 0 );
setMoveKey( spep_4-3 + 30, 1, -39.7, 139.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, -51.5, 124.4 , 0 );
setMoveKey( spep_4-3 + 34, 1, -62.8, 110.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, -73.5, 97 , 0 );
setMoveKey( spep_4-3 + 38, 1, -83.8, 84.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, -93.7, 71.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, -103.2, 60.2 , 0 );
setMoveKey( spep_4-3 + 44, 1, -111.5, 49.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, -120.2, 38.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, -128.4, 28.4 , 0 );
setMoveKey( spep_4-3 + 50, 1, -136.5, 18.7 , 0 );
setMoveKey( spep_4-3 + 52, 1, -144.1, 9.3 , 0 );
setMoveKey( spep_4-3 + 54, 1, -151.1, 0.6 , 0 );
setMoveKey( spep_4-3 + 56, 1, -157.9, -7.8 , 0 );
setMoveKey( spep_4-3 + 58, 1, -164.2, -15.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, -170, -22.7 , 0 );
setMoveKey( spep_4-3 + 62, 1, -175.2, -29.5 , 0 );
setMoveKey( spep_4-3 + 64, 1, -180, -35.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, -183.8, -39.8 , 0 );
setMoveKey( spep_4 + 68, 1, -185.3, -42.2 , 0 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
--setScaleKey( spep_4-3 + 2, 1, 0.27, 0.27 );
setScaleKey( spep_4-3 + 4, 1, 0.34, 0.34 );
setScaleKey( spep_4-3 + 6, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 8, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 10, 1, 0.51, 0.51 );
setScaleKey( spep_4-3 + 12, 1, 0.55, 0.55 );
setScaleKey( spep_4-3 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 16, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 20, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 24, 1, 0.77, 0.77 );
setScaleKey( spep_4-3 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 28, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 30, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 32, 1, 0.89, 0.89 );
setScaleKey( spep_4-3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 36, 1, 0.93, 0.93 );
setScaleKey( spep_4-3 + 38, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_4-3 + 42, 1, 1, 1 );
setScaleKey( spep_4-3 + 44, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_4-3 + 48, 1, 1.07, 1.07 );
setScaleKey( spep_4-3 + 50, 1, 1.08, 1.08 );
setScaleKey( spep_4-3 + 52, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 54, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 56, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 58, 1, 1.14, 1.14 );
setScaleKey( spep_4-3 + 60, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 62, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 66, 1, 1.21, 1.21 );

setRotateKey( spep_4 + 0, 1, 90 );
setRotateKey( spep_4 + 0, 1, 90 );

--流線
ryusen3 = entryEffectLife( spep_4 + 0,  921, 68, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1.93, 1.31 );
setEffScaleKey( spep_4 + 68, ryusen3, 1.93, 1.31 );

setEffRotateKey( spep_4 + 0, ryusen3, -58.9 );
setEffRotateKey( spep_4 + 68, ryusen3, -58.9 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 68, ryusen3, 255 );

--白フェード
entryFade( spep_4 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 +26, 1021 );  --気弾迫る

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, 190003,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, gyan, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 60, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 7.1, 306.8 , 0 );

z=2.7;

setEffScaleKey( spep_5 + 0, ctgyan, 0.6 + z, 0.6 + z );
setEffScaleKey( spep_5 + 2, ctgyan, 0.7 + z, 0.7 + z );
setEffScaleKey( spep_5 + 4, ctgyan, 0.8 + z, 0.8 + z );
setEffScaleKey( spep_5 + 6, ctgyan, 0.9 + z, 0.9 + z );
setEffScaleKey( spep_5 + 8, ctgyan, 1 + z, 1 + z );
setEffScaleKey( spep_5 + 10, ctgyan, 1.01 + z, 1.01 + z );
setEffScaleKey( spep_5 + 12, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_5 + 14, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_5 + 16, ctgyan, 1.03 + z, 1.03 + z );
setEffScaleKey( spep_5 + 18, ctgyan, 1.04 + z, 1.04 + z );
setEffScaleKey( spep_5 + 20, ctgyan, 1.05 + z, 1.05 + z );
setEffScaleKey( spep_5 + 22, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_5 + 24, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_5 + 26, ctgyan, 1.07 + z, 1.07 + z );
setEffScaleKey( spep_5 + 28, ctgyan, 1.08 + z, 1.08 + z );
setEffScaleKey( spep_5 + 30, ctgyan, 1.09 + z, 1.09 + z );
setEffScaleKey( spep_5 + 32, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_5 + 34, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_5 + 36, ctgyan, 1.11 + z, 1.11 + z );
setEffScaleKey( spep_5 + 38, ctgyan, 1.12 + z, 1.12 + z );
setEffScaleKey( spep_5 + 40, ctgyan, 1.13 + z, 1.13 + z );
setEffScaleKey( spep_5 + 42, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_5 + 44, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_5 + 46, ctgyan, 1.15 + z, 1.15 + z );
setEffScaleKey( spep_5 + 48, ctgyan, 1.16 + z, 1.16 + z );
setEffScaleKey( spep_5 + 50, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_5 + 52, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_5 + 54, ctgyan, 1.18 + z, 1.18 + z );
setEffScaleKey( spep_5 + 56, ctgyan, 1.19 + z, 1.19 + z );
setEffScaleKey( spep_5 + 58, ctgyan, 1.2 + z, 1.2 + z );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** おと ** --
playSe( spep_5, 1023 ); --爆発

--次の準備
spep_6 =spep_5+60;

------------------------------------------------------
-- おわり
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 284, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.2, 1.2 );
setEffScaleKey( spep_6 + 284, finish, 1.2, 1.2 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 284, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 284, finish, 255 );

-- ** おと ** --
playSe( spep_6, 1157 ); --雲光る
setSeVolume( spep_6, 1157, 90 );
setSeVolume( spep_6 + 78, 1157, 60 );
setSeVolume( spep_6 + 80, 1157, 55 );
setSeVolume( spep_6 + 82, 1157, 20 );
playSe( spep_6 + 82, 1067 ); --爆発
setSeVolume( spep_6, 1157, 120 );

-- ** ダメージ表示 ** --
dealDamage(spep_6 +80 );
endPhase( spep_6 + 278 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気弾移動
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
dash = entryEffect( spep_0 + 0, SP_01x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, dash, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80, dash, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 80, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 80, dash, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 78, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 255 );

-- ** 音 ** --
SE0 = playSe( spep_0 + 0, 9 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
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

--白フェード
entryFade( spep_0 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+80;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting = entryEffect( spep_1 + 0, SP_02x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, fighting, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting, 1.0, 1.0 );
setEffScaleKey( spep_1 + 250, fighting, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting, 0 );
setEffRotateKey( spep_1 + 250, fighting, 0 );
setEffAlphaKey( spep_1 + 0, fighting, 255 );
setEffAlphaKey( spep_1 + 250, fighting, 255 );

-- ** エフェクト等 ** --
fighting_bg = entryEffect( spep_1 + 0, SP_05x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_bg, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, fighting_bg, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 250, fighting_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_bg, 0 );
setEffRotateKey( spep_1 + 250, fighting_bg, 0 );
setEffAlphaKey( spep_1 + 0, fighting_bg, 255 );
setEffAlphaKey( spep_1 + 250, fighting_bg, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 238, 1, 0 );

changeAnime( spep_1  + 0, 1, 104 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 105 );
changeAnime( spep_1 -3 + 192, 1, 107 );

setMoveKey( spep_1  + 0, 1, 192.7, -11.9 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 158.4, -13.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 136.8, -14.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 119.1, -15.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 103.7, -16 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 90.2, -16.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 78.2, -17.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 67.6, -17.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 58.8, -18.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 51.9, -18.4 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 48.2, -18.6 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 51.9, -18.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 105.3, -73.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 46.2, -14.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 117.6, 18.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -4, -44.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 14.7, 8.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 21.4, 0.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -21.5, -34.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 7.4, -17.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 14.1, -16.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 14.2, -19.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 16.8, -17.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 21.3, -17.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 25.4, -17.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 29.6, -17.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 33.5, -17.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 37.5, -17 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 41.2, -17 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 44.8, -16.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 48.3, -17 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 51.8, -16.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 55.1, -16.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 58.3, -16.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 61.4, -16.7 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 64.4, -16.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 67.3, -16.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 70.2, -16.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 72.9, -16.6 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 75.6, -16.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 78.1, -16.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 80.6, -16.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 82.9, -16.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 85.3, -16.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 87.5, -16.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 89.6, -16.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 91.6, -16.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 93.7, -16.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 95.5, -16.4 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 97.4, -16.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 99.2, -16.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 100.8, -16.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 102.4, -16.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 103.8, -16.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 105.3, -16.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 106.7, -16.3 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 108.1, -16.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 78.9, -7.3 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 54.3, 34 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 102.5, -30.5 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 75.9, -20.5 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 104.4, 14 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 86.1, -7.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 83.5, 10.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 50, 24.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 49.7, 41.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 64.9, 66.5 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 70.7, 81.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 78.3, 97.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 84.2, 109.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 88.5, 120.1 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 95.1, 131.8 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 99.5, 141.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 101.1, 147 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 107.6, 157.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 107.9, 161.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 113.3, 169.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 112.8, 172.1 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 117.4, 179.7 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 117.6, 182.3 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 120.1, 187.1 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 123.9, 193.2 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 121.8, 192.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 125.1, 197.9 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 128, 202.7 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 125, 200.9 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 127.8, 205.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 130.2, 209.1 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 132.5, 212.5 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 128.8, 209.6 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 130.8, 212.7 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 132.6, 215.5 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 134.2, 217.9 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 130, 214 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 131.4, 216.1 , 0 );
setMoveKey( spep_1 -3 + 191, 1, 132.2, 217.7 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 35, 220.6 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 35, 220.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 10.5, 262 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 58.7, 197.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 32.2, 207.7 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 60.7, 242.2 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 34.7, 183.6 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 76.9, 253.7 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 71, 247.1 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 55, 235 , 0 );
setMoveKey( spep_1 -3 + 212, 1, -149.7, 11.3 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -325.8, -173.5 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -450.8, -305.3 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -561.7, -426.5 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -649.5, -523.3 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -725.7, -606.9 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -790.9, -679.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -846.6, -741.2 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -894.7, -794.9 , 0 );
setMoveKey( spep_1 -3 + 230, 1, -935.8, -841.2 , 0 );
setMoveKey( spep_1 -3 + 232, 1, -970.8, -880.8 , 0 );
setMoveKey( spep_1 -3 + 234, 1, -1000.4, -914.2 , 0 );
setMoveKey( spep_1 -3 + 236, 1, -1024.9, -942.2 , 0 );
setMoveKey( spep_1  + 238, 1, -1044.8, -965 , 0 );

setScaleKey( spep_1  + 0, 1, 1.05, 1.05 );
--setScaleKey( spep_1 -3 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 4, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 6, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 8, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 10, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 18, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 21, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 22, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 28, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 30, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 34, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 40, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 42, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 44, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 48, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 50, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 52, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 54, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 58, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 60, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 62, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 64, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 68, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 70, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 72, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 74, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 80, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 82, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 88, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 90, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 100, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 124, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 126, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 128, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 130, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 132, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 134, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 136, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 138, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 140, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 142, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 144, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 146, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 148, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 150, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 152, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 154, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 156, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 158, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 160, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 162, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 164, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 166, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 168, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 170, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 172, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 174, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 176, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 178, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 180, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 182, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 184, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 188, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 191, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 192, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 + 204, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 + 206, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 210, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 212, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 214, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 216, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 218, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 220, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 222, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 224, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 226, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 228, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 230, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 232, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 234, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 236, 1, 1.81, 1.81 );
setScaleKey( spep_1  + 238, 1, 1.83, 1.83 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 126, 1, 0 );
setRotateKey( spep_1 -3 + 128, 1, 1 );
setRotateKey( spep_1 -3 + 130, 1, 1.5 );
setRotateKey( spep_1 -3 + 132, 1, 1.9 );
setRotateKey( spep_1 -3 + 134, 1, 2.2 );
setRotateKey( spep_1 -3 + 136, 1, 2.5 );
setRotateKey( spep_1 -3 + 138, 1, 2.7 );
setRotateKey( spep_1 -3 + 140, 1, 2.9 );
setRotateKey( spep_1 -3 + 142, 1, 3.1 );
setRotateKey( spep_1 -3 + 144, 1, 3.3 );
setRotateKey( spep_1 -3 + 146, 1, 3.4 );
setRotateKey( spep_1 -3 + 148, 1, 3.5 );
setRotateKey( spep_1 -3 + 150, 1, 3.7 );
setRotateKey( spep_1 -3 + 152, 1, 3.8 );
setRotateKey( spep_1 -3 + 154, 1, 3.9 );
setRotateKey( spep_1 -3 + 156, 1, 4 );
setRotateKey( spep_1 -3 + 158, 1, 4.1 );
setRotateKey( spep_1 -3 + 160, 1, 4.2 );
setRotateKey( spep_1 -3 + 162, 1, 4.2 );
setRotateKey( spep_1 -3 + 164, 1, 4.3 );
setRotateKey( spep_1 -3 + 166, 1, 4.4 );
setRotateKey( spep_1 -3 + 168, 1, 4.4 );
setRotateKey( spep_1 -3 + 170, 1, 4.5 );
setRotateKey( spep_1 -3 + 172, 1, 4.5 );
setRotateKey( spep_1 -3 + 174, 1, 4.6 );
setRotateKey( spep_1 -3 + 176, 1, 4.6 );
setRotateKey( spep_1 -3 + 178, 1, 4.7 );
setRotateKey( spep_1 -3 + 184, 1, 4.7 );
setRotateKey( spep_1 -3 + 186, 1, 4.8 );
setRotateKey( spep_1 -3 + 191, 1, 4.8 );
setRotateKey( spep_1 -3 + 192, 1, 82.2 );
setRotateKey( spep_1 -3 + 210, 1, 82.2 );
setRotateKey( spep_1 -3 + 212, 1, 74.5 );
setRotateKey( spep_1 -3 + 214, 1, 68.8 );
setRotateKey( spep_1 -3 + 216, 1, 64.3 );
setRotateKey( spep_1 -3 + 218, 1, 60.5 );
setRotateKey( spep_1 -3 + 220, 1, 57.4 );
setRotateKey( spep_1 -3 + 222, 1, 54.8 );
setRotateKey( spep_1 -3 + 224, 1, 52.5 );
setRotateKey( spep_1 -3 + 226, 1, 50.5 );
setRotateKey( spep_1 -3 + 228, 1, 48.9 );
setRotateKey( spep_1 -3 + 230, 1, 47.4 );
setRotateKey( spep_1 -3 + 232, 1, 46.2 );
setRotateKey( spep_1 -3 + 234, 1, 45.2 );
setRotateKey( spep_1 -3 + 236, 1, 44.3 );
setRotateKey( spep_1  + 238, 1, 43.6 );


--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 22,  10019, 12, 0x100, -1, 0, 52.7, 149.7 );--ドンッ

setEffMoveKey( spep_1 -3 + 22, ctdon, 52.7, 149.7 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdon, 86.5, 178.6 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdon, 130.8, 201.7 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdon, 145.4, 210.4 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdon, 162.1, 205.5 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdon, 166.5, 222.2 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdon, 164.7, 235.1 , 0 );

setEffScaleKey( spep_1 -3 + 22, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 24, ctdon, 0.83, 0.83 );
setEffScaleKey( spep_1 -3 + 26, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 28, ctdon, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 30, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 32, ctdon, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 34, ctdon, 1.9, 1.9 );

setEffRotateKey( spep_1 -3 + 22, ctdon, 20 );
setEffRotateKey( spep_1 -3 + 34, ctdon, 20 );

setEffAlphaKey( spep_1 -3 + 22, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 32, ctdon, 128 );
setEffAlphaKey( spep_1 -3 + 34, ctdon, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 114,  10020, 12, 0x100, -1, 0, -39.3, 138.3 );--バキッ

setEffMoveKey( spep_1-3 + 114, ctbaki, -39.3, 138.3 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbaki, -40.1, 193.2 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbaki, -23.1, 197 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbaki, -31, 208 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbaki, -25, 226 , 0 );
setEffMoveKey( spep_1-3 + 124, ctbaki, 34.7, 278.1 , 0 );
setEffMoveKey( spep_1-3 + 126, ctbaki, 95.8, 339.7 , 0 );

setEffScaleKey( spep_1-3 + 114, ctbaki, 0.2, 0.2 );
setEffScaleKey( spep_1-3 + 116, ctbaki, 2, 2 );
setEffScaleKey( spep_1-3 + 118, ctbaki, 2.07, 2.07 );
setEffScaleKey( spep_1-3 + 120, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_1-3 + 122, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_1-3 + 124, ctbaki, 2.95, 2.95 );
setEffScaleKey( spep_1-3 + 126, ctbaki, 3.7, 3.7 );

setEffRotateKey( spep_1-3 + 114, ctbaki, 0 );
setEffRotateKey( spep_1-3 + 126, ctbaki, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1-3 + 192,  10018, 18, 0x100, -1, 0, -10.4, 297.8 );--ドゴォンッ

setEffMoveKey( spep_1-3 + 192, ctdogon, -10.4, 297.8 , 0 );
setEffMoveKey( spep_1-3 + 194, ctdogon, 12.6, 307.6 , 0 );
setEffMoveKey( spep_1-3 + 196, ctdogon, 46.1, 317.2 , 0 );
setEffMoveKey( spep_1-3 + 198, ctdogon, 17.4, 315.7 , 0 );
setEffMoveKey( spep_1-3 + 200, ctdogon, 9.3, 305.5 , 0 );
setEffMoveKey( spep_1-3 + 202, ctdogon, -20.9, 296.3 , 0 );
setEffMoveKey( spep_1-3 + 204, ctdogon, -40.9, 290.2 , 0 );
setEffMoveKey( spep_1-3 + 206, ctdogon, -36.8, 298.5 , 0 );
setEffMoveKey( spep_1-3 + 208, ctdogon, -34, 287.3 , 0 );
setEffMoveKey( spep_1-3 + 210, ctdogon, -40.9, 290.2 , 0 );

setEffScaleKey( spep_1-3 + 192, ctdogon, 0.07, 0.07 );
setEffScaleKey( spep_1-3 + 194, ctdogon, 1.07, 1.07 );
setEffScaleKey( spep_1-3 + 196, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_1-3 + 198, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_1-3 + 200, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 202, ctdogon, 2.37, 2.37 );
setEffScaleKey( spep_1-3 + 204, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_1-3 + 210, ctdogon, 2.47, 2.47 );

setEffRotateKey( spep_1-3 + 192, ctdogon, -7 );
setEffRotateKey( spep_1-3 + 194, ctdogon, -23.5 );
setEffRotateKey( spep_1-3 + 196, ctdogon, -40 );
setEffRotateKey( spep_1-3 + 210, ctdogon, -40 );

setEffAlphaKey( spep_1-3 + 192, ctdogon, 255 );
setEffAlphaKey( spep_1-3 + 210, ctdogon, 255 );

--流線
ryusen1 = entryEffectLife( spep_1  + 0,  921, 112 -3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 112, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 1.1, 1.1 );
setEffScaleKey( spep_1 -3 + 112, ryusen1, 1.1, 1.1 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 112, ryusen1, 0 );

setEffAlphaKey( spep_1  + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 -3 + 74, ryusen1, 255 );
setEffAlphaKey( spep_1 -3 + 76, ryusen1, 242 );
setEffAlphaKey( spep_1 -3 + 78, ryusen1, 228 );
setEffAlphaKey( spep_1 -3 + 80, ryusen1, 215 );
setEffAlphaKey( spep_1 -3 + 82, ryusen1, 201 );
setEffAlphaKey( spep_1 -3 + 84, ryusen1, 188 );
setEffAlphaKey( spep_1 -3 + 86, ryusen1, 174 );
setEffAlphaKey( spep_1 -3 + 88, ryusen1, 161 );
setEffAlphaKey( spep_1 -3 + 90, ryusen1, 148 );
setEffAlphaKey( spep_1 -3 + 92, ryusen1, 134 );
setEffAlphaKey( spep_1 -3 + 94, ryusen1, 121 );
setEffAlphaKey( spep_1 -3 + 96, ryusen1, 107 );
setEffAlphaKey( spep_1 -3 + 98, ryusen1, 94 );
setEffAlphaKey( spep_1 -3 + 100, ryusen1, 81 );
setEffAlphaKey( spep_1 -3 + 102, ryusen1, 67 );
setEffAlphaKey( spep_1 -3 + 104, ryusen1, 54 );
setEffAlphaKey( spep_1 -3 + 106, ryusen1, 40 );
setEffAlphaKey( spep_1 -3 + 108, ryusen1, 27 );
setEffAlphaKey( spep_1 -3 + 110, ryusen1, 13 );
setEffAlphaKey( spep_1 -3 + 112, ryusen1, 0 );


--流線
ryusen2 = entryEffectLife( spep_1 -3 + 192,  921, 56, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 192, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 248, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 192, ryusen2, 1.93, 1.93 );
setEffScaleKey( spep_1 -3 + 248, ryusen2, 1.93, 1.93 );

setEffRotateKey( spep_1 -3 + 192, ryusen2, -59 );
setEffRotateKey( spep_1 -3 + 248, ryusen2, -59 );

setEffAlphaKey( spep_1 -3 + 192, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 248, ryusen2, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 22,  906, 15, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 22, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 37, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 22, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 37, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 22, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 37, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 22, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 37, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1 -3 + 114,  906, 76, 0x100, -1, 0, 234.3 -234.3, 0 );

setEffMoveKey( spep_1 -3 + 114, shuchusen3, 234.3 -234.3, 0 , 0 );
setEffMoveKey( spep_1 -3 + 128, shuchusen3, 234.3 -234.3, 0 , 0 );
setEffMoveKey( spep_1 -3 + 130, shuchusen3, 444.2 -234.3, 129.6 , 0 );
setEffMoveKey( spep_1 -3 + 190, shuchusen3, 444.2 -234.3, 129.6 , 0 );

setEffScaleKey( spep_1 -3 + 114, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_1 -3 + 128, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_1 -3 + 130, shuchusen3, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 190, shuchusen3, 1.47, 1.47 );

setEffRotateKey( spep_1 -3 + 114, shuchusen3, 180 );
setEffRotateKey( spep_1 -3 + 190, shuchusen3, 180 );

setEffAlphaKey( spep_1 -3 + 114, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 130, shuchusen3, 0 );
setEffAlphaKey( spep_1 -3 + 132, shuchusen3, 43 );
setEffAlphaKey( spep_1 -3 + 134, shuchusen3, 85 );
setEffAlphaKey( spep_1 -3 + 136, shuchusen3, 128 );
setEffAlphaKey( spep_1 -3 + 138, shuchusen3, 170 );
setEffAlphaKey( spep_1 -3 + 140, shuchusen3, 213 );
setEffAlphaKey( spep_1 -3 + 142, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 190, shuchusen3, 255 );

--白フェード
entryFade( spep_1 + 18, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 110, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 188, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 242, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 0, 8 );
playSe( spep_1 -3 + 22, 1010 );  --ドン
setSeVolume( spep_1 -3 + 22, 1010, 110 );
playSe( spep_1 + 66, 43 );  --瞬間移動
setSeVolume( spep_1 + 66, 43, 80 );
playSe( spep_1 + 92, 4 );  --瞬間移動・出
playSe( spep_1 + 92, 43 );  --瞬間移動・出
setSeVolume( spep_1 + 92, 4, 110 );
playSe( spep_1 -3 + 114, 1009 );  --バキ
playSe( spep_1 + 144, 43 );  --瞬間移動
setSeVolume( spep_1 + 144, 43, 90 );
playSe( spep_1 + 168, 1109 );  --瞬間移動・出
setSeVolume( spep_1 + 168, 1109, 90 );
playSe( spep_1 -3 + 192, 1011 );  --ドゴン
setSeVolume( spep_1 -3 + 192, 1011, 110 );

--次の準備
spep_2 = spep_1+250;

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
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 気弾発動
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_03x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 166, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 166, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 166, tame, 255 );
setEffAlphaKey( spep_3 + 167, tame, 0 );
setEffAlphaKey( spep_3 + 168, tame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3+22  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3+22  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3 + 100, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen4, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +34, 190006, 72, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +34,  ctgogo,  0,  510);
setEffMoveKey(  spep_3 +106,  ctgogo,  0,  510);

setEffAlphaKey( spep_3 +34, ctgogo, 0 );
setEffAlphaKey( spep_3 + 35, ctgogo, 255 );
setEffAlphaKey( spep_3 + 36, ctgogo, 255 );
setEffAlphaKey( spep_3 + 98, ctgogo, 255 );
setEffAlphaKey( spep_3 + 100, ctgogo, 255 );
setEffAlphaKey( spep_3 + 102, ctgogo, 191 );
setEffAlphaKey( spep_3 + 104, ctgogo, 128 );
setEffAlphaKey( spep_3 + 106, ctgogo, 64 );

setEffRotateKey(  spep_3 +34,  ctgogo,  0);
setEffRotateKey(  spep_3 +106,  ctgogo,  0);

setEffScaleKey(  spep_3 +34,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +96,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +106,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_3 +0 -10, 1072 );  --カットイン前
playSe( spep_3 +34, 1018 );  --ゴゴゴ
playSe( spep_3 +34, 1154 );  --溜める
SE1 = playSe( spep_3 +100, 15 );  --気弾大きくなる
setSeVolume( spep_3 +100, 15, 120 );
stopSe( spep_3 +140, SE1, 20);
playSe( spep_3 +114 +20, 1022 );  --発射

--白フェード
entryFade( spep_3 + 158, 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 166;

------------------------------------------------------
-- 気弾移動
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_04x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, hit, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 70, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 70, hit, 255 );

-- ** エフェクト等 ** --
hit_bg = entryEffect( spep_4 + 0, SP_06x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, hit_bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_bg, 1.3, 1.3 );
setEffScaleKey( spep_4 + 70, hit_bg, 1.3, 1.3 );
setEffRotateKey( spep_4 + 0, hit_bg, 0 );
setEffRotateKey( spep_4 + 70, hit_bg, 0 );
setEffAlphaKey( spep_4 + 0, hit_bg, 255 );
setEffAlphaKey( spep_4 + 70, hit_bg, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 68, 1, 0 );


changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 244.6, 495.6 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 211.9, 454.4 , 0 );
setMoveKey( spep_4-3 + 4, 1, 183.1, 418.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 157.3, 385.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 133.9, 356.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 115.3, 333 , 0 );
setMoveKey( spep_4-3 + 12, 1, 95.2, 307.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, 76.3, 284.2 , 0 );
setMoveKey( spep_4-3 + 16, 1, 58.7, 262.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 42.1, 241.3 , 0 );
setMoveKey( spep_4-3 + 20, 1, 26.3, 221.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, 11.5, 203.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, -2.7, 185.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, -16, 168.8 , 0 );
setMoveKey( spep_4-3 + 28, 1, -27.4, 154.5 , 0 );
setMoveKey( spep_4-3 + 30, 1, -39.7, 139.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, -51.5, 124.4 , 0 );
setMoveKey( spep_4-3 + 34, 1, -62.8, 110.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, -73.5, 97 , 0 );
setMoveKey( spep_4-3 + 38, 1, -83.8, 84.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, -93.7, 71.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, -103.2, 60.2 , 0 );
setMoveKey( spep_4-3 + 44, 1, -111.5, 49.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, -120.2, 38.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, -128.4, 28.4 , 0 );
setMoveKey( spep_4-3 + 50, 1, -136.5, 18.7 , 0 );
setMoveKey( spep_4-3 + 52, 1, -144.1, 9.3 , 0 );
setMoveKey( spep_4-3 + 54, 1, -151.1, 0.6 , 0 );
setMoveKey( spep_4-3 + 56, 1, -157.9, -7.8 , 0 );
setMoveKey( spep_4-3 + 58, 1, -164.2, -15.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, -170, -22.7 , 0 );
setMoveKey( spep_4-3 + 62, 1, -175.2, -29.5 , 0 );
setMoveKey( spep_4-3 + 64, 1, -180, -35.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, -183.8, -39.8 , 0 );
setMoveKey( spep_4 + 68, 1, -185.3, -42.2 , 0 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
--setScaleKey( spep_4-3 + 2, 1, 0.27, 0.27 );
setScaleKey( spep_4-3 + 4, 1, 0.34, 0.34 );
setScaleKey( spep_4-3 + 6, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 8, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 10, 1, 0.51, 0.51 );
setScaleKey( spep_4-3 + 12, 1, 0.55, 0.55 );
setScaleKey( spep_4-3 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 16, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 20, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 24, 1, 0.77, 0.77 );
setScaleKey( spep_4-3 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 28, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 30, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 32, 1, 0.89, 0.89 );
setScaleKey( spep_4-3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 36, 1, 0.93, 0.93 );
setScaleKey( spep_4-3 + 38, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_4-3 + 42, 1, 1, 1 );
setScaleKey( spep_4-3 + 44, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_4-3 + 48, 1, 1.07, 1.07 );
setScaleKey( spep_4-3 + 50, 1, 1.08, 1.08 );
setScaleKey( spep_4-3 + 52, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 54, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 56, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 58, 1, 1.14, 1.14 );
setScaleKey( spep_4-3 + 60, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 62, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 66, 1, 1.21, 1.21 );

setRotateKey( spep_4 + 0, 1, 90 );
setRotateKey( spep_4 + 0, 1, 90 );

--流線
ryusen3 = entryEffectLife( spep_4 + 0,  921, 68, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1.93, 1.31 );
setEffScaleKey( spep_4 + 68, ryusen3, 1.93, 1.31 );

setEffRotateKey( spep_4 + 0, ryusen3, -58.9 );
setEffRotateKey( spep_4 + 68, ryusen3, -58.9 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 68, ryusen3, 255 );


-- ** 音 ** --
playSe( spep_4 +26, 1021 );  --気弾迫る

--白フェード
entryFade( spep_4 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, 190003,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 60, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 7.1, 306.8 , 0 );

z=2.7;

setEffScaleKey( spep_5 + 0, ctgyan, 0.6 + z, 0.6 + z );
setEffScaleKey( spep_5 + 2, ctgyan, 0.7 + z, 0.7 + z );
setEffScaleKey( spep_5 + 4, ctgyan, 0.8 + z, 0.8 + z );
setEffScaleKey( spep_5 + 6, ctgyan, 0.9 + z, 0.9 + z );
setEffScaleKey( spep_5 + 8, ctgyan, 1 + z, 1 + z );
setEffScaleKey( spep_5 + 10, ctgyan, 1.01 + z, 1.01 + z );
setEffScaleKey( spep_5 + 12, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_5 + 14, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_5 + 16, ctgyan, 1.03 + z, 1.03 + z );
setEffScaleKey( spep_5 + 18, ctgyan, 1.04 + z, 1.04 + z );
setEffScaleKey( spep_5 + 20, ctgyan, 1.05 + z, 1.05 + z );
setEffScaleKey( spep_5 + 22, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_5 + 24, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_5 + 26, ctgyan, 1.07 + z, 1.07 + z );
setEffScaleKey( spep_5 + 28, ctgyan, 1.08 + z, 1.08 + z );
setEffScaleKey( spep_5 + 30, ctgyan, 1.09 + z, 1.09 + z );
setEffScaleKey( spep_5 + 32, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_5 + 34, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_5 + 36, ctgyan, 1.11 + z, 1.11 + z );
setEffScaleKey( spep_5 + 38, ctgyan, 1.12 + z, 1.12 + z );
setEffScaleKey( spep_5 + 40, ctgyan, 1.13 + z, 1.13 + z );
setEffScaleKey( spep_5 + 42, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_5 + 44, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_5 + 46, ctgyan, 1.15 + z, 1.15 + z );
setEffScaleKey( spep_5 + 48, ctgyan, 1.16 + z, 1.16 + z );
setEffScaleKey( spep_5 + 50, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_5 + 52, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_5 + 54, ctgyan, 1.18 + z, 1.18 + z );
setEffScaleKey( spep_5 + 56, ctgyan, 1.19 + z, 1.19 + z );
setEffScaleKey( spep_5 + 58, ctgyan, 1.2 + z, 1.2 + z );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** おと ** --
playSe( spep_5, 1023 ); --爆発

--次の準備
spep_6 =spep_5+60;

------------------------------------------------------
-- おわり
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 284, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, -1.2, 1.2 );
setEffScaleKey( spep_6 + 284, finish, -1.2, 1.2 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 284, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 284, finish, 255 );

-- ** おと ** --
playSe( spep_6, 1157 ); --雲光る
setSeVolume( spep_6, 1157, 90 );
setSeVolume( spep_6 + 78, 1157, 60 );
setSeVolume( spep_6 + 80, 1157, 55 );
setSeVolume( spep_6 + 82, 1157, 20 );
playSe( spep_6 + 82, 1067 ); --爆発
setSeVolume( spep_6, 1157, 120 );

-- ** ダメージ表示 ** --
dealDamage(spep_6 +80 );
endPhase( spep_6 + 278 );

end
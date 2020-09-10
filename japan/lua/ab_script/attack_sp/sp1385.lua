--4017980:超サイヤ人ゴッドSSベジット_オメガフィニッシュブロー
--sp_effect_b1_00096

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
SP_01=	154823	;--	突進〜連撃遠景・手前
SP_02=	154824	;--	突進〜連撃遠景・奥
SP_03=	154825	;--	連撃近景〜吹っ飛び・手前
SP_04=	154826	;--	連撃近景〜吹っ飛び・奥
SP_05=	154827	;--	瞬間移動〜打ち下ろし・手前
SP_06=	154828	;--	瞬間移動〜打ち下ろし・奥
SP_07=	154829	;--	爆発

--エフェクト(敵)
SP_01x=	154830	;--	突進〜連撃遠景・手前	(敵)
SP_02x=	154824	;--	突進〜連撃遠景・奥	
SP_03x=	154825	;--	連撃近景〜吹っ飛び・手前	
SP_04x=	154826	;--	連撃近景〜吹っ飛び・奥	
SP_05x=	154827	;--	瞬間移動〜打ち下ろし・手前	
SP_06x=	154828	;--	瞬間移動〜打ち下ろし・奥	
SP_07x=	154829	;--	爆発	

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
-- 突進〜連撃遠景・手前
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tossin_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, tossin_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, tossin_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin_f, 0 );
setEffRotateKey( spep_0 + 158, tossin_f, 0 );
setEffAlphaKey( spep_0 + 0, tossin_f, 255 );
setEffAlphaKey( spep_0 + 156, tossin_f, 255 );
setEffAlphaKey( spep_0 + 157, tossin_f, 255 );
setEffAlphaKey( spep_0 + 158, tossin_f, 0 );

-- ** エフェクト等 ** --
tossin_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, tossin_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, tossin_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin_b, 0 );
setEffRotateKey( spep_0 + 158, tossin_b, 0 );
setEffAlphaKey( spep_0 + 0, tossin_b, 255 );
setEffAlphaKey( spep_0 + 156, tossin_b, 255 );
setEffAlphaKey( spep_0 + 157, tossin_b, 255 );
setEffAlphaKey( spep_0 + 158, tossin_b, 0 );

--SE
SE0=playSe( spep_0 + 0, 1042 );
SE1=playSe( spep_0 + 27, 1182 );
setSeVolume( spep_0 + 27, 1182, 188 );
setSeVolume( spep_0 + 31, 1182, 188 );
setSeVolume( spep_0 + 32, 1182, 158 );
setSeVolume( spep_0 + 33, 1182, 129 );
setSeVolume( spep_0 + 34, 1182, 100 );
se_1183 = playSe( spep_0 + 27, 1183 );
setSeVolume( spep_0 + 27, 1183, 141 );
setSeVolume( spep_0 +43 ,1183, 141);
setSeVolume( spep_0 +44,1183,146.8);
setSeVolume( spep_0 +45,1183,152.6);
setSeVolume( spep_0 +46,1183,158.4);
setSeVolume( spep_0 +47,1183,164.2);
setSeVolume( spep_0 +48,1183,170);
setSeVolume( spep_0 +49,1183,175.8);
setSeVolume( spep_0 +50,1183,181.6);
setSeVolume( spep_0 +51,1183,187.4);
setSeVolume( spep_0 +52,1183,193.2);
setSeVolume( spep_0 +53,1183,199);
setSeVolume( spep_0 +54,1183,204.8);
setSeVolume( spep_0 +55,1183,210.6);
setSeVolume( spep_0 +56,1183,216.4);
setSeVolume( spep_0 +57,1183,222.2);
setSeVolume( spep_0 +58,1183,228);
setSeVolume( spep_0 +59,1183,233.8);
setSeVolume( spep_0 +60,1183,239.6);
setSeVolume( spep_0 +61,1183,245.4);
setSeVolume( spep_0 +62,1183,251.2);
setSeVolume( spep_0 +63,1183,257);
setSeVolume( spep_0 +64,1183,262.8);
setSeVolume( spep_0 +65,1183,268.6);
setSeVolume( spep_0 +66,1183,274.4);
setSeVolume( spep_0 +67,1183,280.2);
setSeVolume( spep_0 +68,1183,286);
setSeVolume( spep_0 +69,1183,291.8);
setSeVolume( spep_0 +70,1183,297.6);
setSeVolume( spep_0 +71,1183,303.4);
setSeVolume( spep_0 +72,1183,309.2);
setSeVolume( spep_0 +73,1183,315);
setSeVolume( spep_0 +74,1183,320.8);
setSeVolume( spep_0 +75,1183,326.6);
setSeVolume( spep_0 +76,1183,332.4);
setSeVolume( spep_0 +77,1183,338.2);
setSeVolume( spep_0 +78,1183,344);
setSeVolume( spep_0 +79,1183,349.8);
setSeVolume( spep_0 +80,1183,355.6);
setSeVolume( spep_0 +81,1183,361.4);
setSeVolume( spep_0 +82,1183,367.2);
setSeVolume( spep_0 +83,1183,373);
setSeVolume( spep_0 +84,1183,378.8);
setSeVolume( spep_0 +85,1183,385);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 160, 0, 0, 0, 0, 255 ); --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_1183, 0 );
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

-- ** 文字エントリー ** --
ctgagaga = entryEffect( spep_0 + 0, 154831, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ctgagaga, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, ctgagaga, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ctgagaga, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, ctgagaga, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ctgagaga, 0 );
setEffRotateKey( spep_0 + 158, ctgagaga, 0 );
setEffAlphaKey( spep_0 + 0, ctgagaga, 255 );
setEffAlphaKey( spep_0 + 156, ctgagaga, 255 );
setEffAlphaKey( spep_0 + 157, ctgagaga, 255 );
setEffAlphaKey( spep_0 + 158, ctgagaga, 0 );

--敵の動き
setDisp( spep_0 -3 + 104, 1, 1 );
setDisp( spep_0 -2 + 160, 1, 0 );

changeAnime( spep_0 -3 + 104, 1, 101 );
changeAnime( spep_0 -3 + 110, 1, 104 );
changeAnime( spep_0 -3 + 118, 1, 108 );
changeAnime( spep_0 -3 + 122, 1, 106 );
changeAnime( spep_0 -3 + 128, 1, 108 );
changeAnime( spep_0 -3 + 132, 1, 106 );
changeAnime( spep_0 -3 + 138, 1, 108 );
changeAnime( spep_0 -3 + 142, 1, 106 );
changeAnime( spep_0 -3 + 148, 1, 108 );
changeAnime( spep_0 -3 + 152, 1, 106 );
changeAnime( spep_0 -3 + 158, 1, 108 );
changeAnime( spep_0 -3 + 162, 1, 106 );

setMoveKey( spep_0 -3 + 104, 1, 9.1, 21.4 , 0 );
setMoveKey( spep_0 -3 + 109, 1, 9.1, 21.4 , 0 );

setMoveKey( spep_0 -3 + 110, 1, 9.1, 21.4 , 0 );
setMoveKey( spep_0 -3 + 117, 1, 9.1, 21.4 , 0 );

setMoveKey( spep_0 -3 + 118, 1, 22.1, 21.4 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 19.9, 21.4 , 0 );
setMoveKey( spep_0 -3 + 121, 1, 19.9, 21.4 , 0 );

setMoveKey( spep_0 -3 + 122, 1, 6.4, 33.2 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 3, 31 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 7.1, 31.8 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 7.1, 31.8 , 0 );

setMoveKey( spep_0 -3 + 128, 1, 20.1, 23.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 23.9, 21.8 , 0 );
setMoveKey( spep_0 -3 + 131, 1, 23.9, 21.8 , 0 );

setMoveKey( spep_0 -3 + 132, 1, 3.6, 32.1 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 7, 32.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 3.9, 34.7 , 0 );
setMoveKey( spep_0 -3 + 137, 1, 3.9, 34.7 , 0 );

setMoveKey( spep_0 -3 + 138, 1, 23.7, 19.4 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 21.4, 23.6 , 0 );
setMoveKey( spep_0 -3 + 141, 1, 21.4, 23.6 , 0 );

setMoveKey( spep_0 -3 + 142, 1, 6.7, 31.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 3.3, 31.1 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 7.9, 32.2 , 0 );
setMoveKey( spep_0 -3 + 147, 1, 7.9, 32.2 , 0 );

setMoveKey( spep_0 -3 + 148, 1, 20.9, 21.2 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 23.1, 23.8 , 0 );
setMoveKey( spep_0 -3 + 151, 1, 23.1, 23.8 , 0 );

setMoveKey( spep_0 -3 + 152, 1, 3, 31.9 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 7.4, 32.8 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 3.9, 31.8 , 0 );
setMoveKey( spep_0 -3 + 157, 1, 3.9, 31.8 , 0 );

setMoveKey( spep_0 -3 + 158, 1, 23.2, 23.2 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 20.2, 19.9 , 0 );
setMoveKey( spep_0 -3 + 161, 1, 20.2, 19.9 , 0 );

--setMoveKey( spep_0 -3 + 162, 1, 6.8, 34 , 0 );
--setMoveKey( spep_0 -3 + 166, 1, 6.8, 34 , 0 );

setScaleKey( spep_0 -3 + 104, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 109, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 110, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 117, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 118, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 120, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 121, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 122, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 127, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 128, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 131, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 132, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 137, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 138, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 141, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 142, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 147, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 148, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 151, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 152, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 157, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 158, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 161, 1, 0.3, 0.3 );

--setScaleKey( spep_0 -3 + 162, 1, 0.3, 0.3 );
--setScaleKey( spep_0 -3 + 166, 1, 0.3, 0.3 );

setRotateKey( spep_0 -3 + 104, 1, 0 );

setRotateKey( spep_0 -3 + 117, 1, 0 );

setRotateKey( spep_0 -3 + 118, 1, 7.5 );
setRotateKey( spep_0 -3 + 121, 1, 7.5 );

setRotateKey( spep_0 -3 + 122, 1, -45 );
setRotateKey( spep_0 -3 + 127, 1, -45 );

setRotateKey( spep_0 -3 + 128, 1, 7.5 );
setRotateKey( spep_0 -3 + 131, 1, 7.5 );

setRotateKey( spep_0 -3 + 132, 1, -45 );
setRotateKey( spep_0 -3 + 137, 1, -45 );

setRotateKey( spep_0 -3 + 138, 1, 7.5 );
setRotateKey( spep_0 -3 + 141, 1, 7.5 );

setRotateKey( spep_0 -3 + 142, 1, -45 );
setRotateKey( spep_0 -3 + 147, 1, -45 );

setRotateKey( spep_0 -3 + 148, 1, 7.5 );
setRotateKey( spep_0 -3 + 151, 1, 7.5 );

setRotateKey( spep_0 -3 + 152, 1, -45 );
setRotateKey( spep_0 -3 + 157, 1, -45 );

setRotateKey( spep_0 -3 + 158, 1, 7.5 );
setRotateKey( spep_0 -3 + 161, 1, 7.5 );

--setRotateKey( spep_0 -3 + 162, 1, -45 );
--setRotateKey( spep_0 -3 + 166, 1, -45 );

--SE
playSe( spep_0 + 64, 1072 );
setSeVolume( spep_0 + 64, 1072, 100 );
setSeVolume( spep_0 +91 ,1072, 100);
setSeVolume( spep_0 +92 ,1072, 123.2);
setSeVolume( spep_0 +93 ,1072, 146.4);
setSeVolume( spep_0 +94 ,1072, 169.6);
setSeVolume( spep_0 +95 ,1072, 192.8);
setSeVolume( spep_0 +96 ,1072, 216);
setSeVolume( spep_0 +97 ,1072, 239.2);
setSeVolume( spep_0 +98 ,1072, 263);
setSeVolume( spep_0 +99 ,1072, 263);
setSeVolume( spep_0 +100 ,1072, 239);
setSeVolume( spep_0 +101 ,1072, 216);
setSeVolume( spep_0 +102 ,1072, 193);
setSeVolume( spep_0 +103 ,1072, 146);
setSeVolume( spep_0 +104 ,1072, 123);
setSeVolume( spep_0 +105 ,1072, 100);
playSe( spep_0 + 111, 1110 );
playSe( spep_0 + 121, 1009 );
playSe( spep_0 + 122, 1110 );
setSeVolume( spep_0 + 122, 1110, 79 );
playSe( spep_0 + 132, 1009 );
setSeVolume( spep_0 + 132, 1009, 79 );
playSe( spep_0 + 133, 1009 );
playSe( spep_0 + 142, 1012 );
setSeVolume( spep_0 + 142, 1012, 71 );
playSe( spep_0 + 143, 1110 );
setSeVolume( spep_0 + 143, 1110, 71 );
playSe( spep_0 + 153, 1009 );
setSeVolume( spep_0 + 153, 1009, 112 );
playSe( spep_0 + 153, 1010 );


stopSe( spep_0 + 111, se_1183, 0 );

-- ** 次の準備
spep_1 = spep_0+158;

------------------------------------------------------
-- 連撃近景〜吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 246, punching_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punching_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 246, punching_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punching_f, 0 );
setEffRotateKey( spep_1 + 246, punching_f, 0 );
setEffAlphaKey( spep_1 + 0, punching_f, 255 );
setEffAlphaKey( spep_1 + 246, punching_f, 255 );


-- ** エフェクト等 ** --
punching_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 246, punching_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punching_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 246, punching_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punching_b, 0 );
setEffRotateKey( spep_1 + 246, punching_b, 0 );
setEffAlphaKey( spep_1 + 0, punching_b, 255 );
setEffAlphaKey( spep_1 + 246, punching_b, 255 );

-- ** エフェクト等 ** --
ctdoga = entryEffect( spep_1 + 3, 154832, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 3, ctdoga, 0, 0, 0 );
setEffMoveKey( spep_1 + 246, ctdoga, 0, 0, 0 );
setEffScaleKey( spep_1 + 3, ctdoga, 1.0, 1.0 );
setEffScaleKey( spep_1 + 246, ctdoga, 1.0, 1.0 );
setEffRotateKey( spep_1 + 3, ctdoga, 0 );
setEffRotateKey( spep_1 + 246, ctdoga, 0 );
setEffAlphaKey( spep_1 + 3, ctdoga, 255 );
setEffAlphaKey( spep_1 + 246, ctdoga, 255 );

--敵の動き
setDisp( spep_1 +1 + 88, 1, 1 );
setDisp( spep_1 +1 + 244, 1, 0 );

changeAnime( spep_1 +1 + 88, 1, 7 );
changeAnime( spep_1 +1 + 90, 1, 106 );
changeAnime( spep_1 +1 + 186, 1, 7 );
changeAnime( spep_1 +1 + 116, 1, 108 );
changeAnime( spep_1 +1 + 192, 1, 108 );
changeAnime( spep_1 +1 + 198, 1, 5 );


setMoveKey( spep_1+1 + 88, 1, 196.6, -665.2 , 0 );
setMoveKey( spep_1+1 + 89, 1, 196.6, -665.2 , 0 );

setMoveKey( spep_1+1 + 90, 1, -102.8, -528.6 , 0 );
setMoveKey( spep_1+1 + 92, 1, -122.3, -467.4 , 0 );
setMoveKey( spep_1+1 + 94, 1, -140.3, -420.1 , 0 );
setMoveKey( spep_1+1 + 96, 1, -144.8, -408.1 , 0 );
setMoveKey( spep_1+1 + 98, 1, -172.7, -419.8 , 0 );
setMoveKey( spep_1+1 + 100, 1, -175.7, -395.7 , 0 );
setMoveKey( spep_1+1 + 102, 1, -175, -388.7 , 0 );
setMoveKey( spep_1+1 + 104, 1, -175.1, -379.8 , 0 );
setMoveKey( spep_1+1 + 106, 1, -179.3, -360 , 0 );
setMoveKey( spep_1+1 + 108, 1, -214.4, -259.7 , 0 );
setMoveKey( spep_1+1 + 110, 1, -225.4, -222.3 , 0 );
setMoveKey( spep_1+1 + 112, 1, -228.8, -204.6 , 0 );
setMoveKey( spep_1+1 + 114, 1, -227.9, -197.8 , 0 );
setMoveKey( spep_1+1 + 115, 1, -227.9, -197.8 , 0 );

setMoveKey( spep_1+1 + 116, 1, 44.1, -18.5 , 0 );
setMoveKey( spep_1+1 + 118, 1, 36.7, -16.1 , 0 );
setMoveKey( spep_1+1 + 120, 1, 45.5, -22.2 , 0 );
setMoveKey( spep_1+1 + 122, 1, 43, -11.3 , 0 );
setMoveKey( spep_1+1 + 124, 1, 39.2, -22.4 , 0 );
setMoveKey( spep_1+1 + 126, 1, 44.1, -17.9 , 0 );
setMoveKey( spep_1+1 + 128, 1, -0.7, -80.8 , 0 );
setMoveKey( spep_1+1 + 130, 1, 44.1, -17.3 , 0 );
setMoveKey( spep_1+1 + 132, 1, 44.2, -17 , 0 );
setMoveKey( spep_1+1 + 134, 1, 68.9, -73.5 , 0 );
setMoveKey( spep_1+1 + 136, 1, -15.6, 58.2 , 0 );
setMoveKey( spep_1+1 + 138, 1, 65.7, -44 , 0 );
setMoveKey( spep_1+1 + 140, 1, 93.8, -1.7 , 0 );
setMoveKey( spep_1+1 + 142, 1, 66.5, -18.3 , 0 );
setMoveKey( spep_1+1 + 144, 1, 66.5, -17.6 , 0 );
setMoveKey( spep_1+1 + 146, 1, 88, 12.9 , 0 );
setMoveKey( spep_1+1 + 148, 1, 102.2, -2.8 , 0 );
setMoveKey( spep_1+1 + 150, 1, 99.9, 16.9 , 0 );
setMoveKey( spep_1+1 + 152, 1, 95.3, -1 , 0 );
setMoveKey( spep_1+1 + 154, 1, 104.8, 18.9 , 0 );
setMoveKey( spep_1+1 + 156, 1, 104.8, 20 , 0 );
setMoveKey( spep_1+1 + 158, 1, 93.1, 4.9 , 0 );
setMoveKey( spep_1+1 + 160, 1, 81.5, 18.2 , 0 );
setMoveKey( spep_1+1 + 162, 1, 91, 8.2 , 0 );
setMoveKey( spep_1+1 + 164, 1, 91.2, 26.6 , 0 );
setMoveKey( spep_1+1 + 166, 1, 91.3, 28.9 , 0 );
setMoveKey( spep_1+1 + 168, 1, 91.6, 31.6 , 0 );
setMoveKey( spep_1+1 + 170, 1, 77.7, 48.9 , 0 );
setMoveKey( spep_1+1 + 172, 1, 87.4, 45.6 , 0 );
setMoveKey( spep_1+1 + 174, 1, 87.7, 59.3 , 0 );
setMoveKey( spep_1+1 + 176, 1, 88, 63.6 , 0 );
setMoveKey( spep_1+1 + 178, 1, 88.3, 57.6 , 0 );
setMoveKey( spep_1+1 + 180, 1, 88.4, 59.8 , 0 );
setMoveKey( spep_1+1 + 182, 1, 88.5, 60.9 , 0 );
setMoveKey( spep_1+1 + 184, 1, 88.5, 61.4 , 0 );
setMoveKey( spep_1+1 + 185, 1, 88.5, 61.4 , 0 );

setMoveKey( spep_1+1 + 186, 1, -90.8, -836.9 , 0 );
setMoveKey( spep_1+1 + 188, 1, -98.6, -907.3 , 0 );
setMoveKey( spep_1+1 + 190, 1, -51.6, -907.3 , 0 );
setMoveKey( spep_1+1 + 191, 1, -51.6, -907.3 , 0 );

setMoveKey( spep_1+1 + 192, 1, 85.7, -187.7 , 0 );
setMoveKey( spep_1+1 + 194, 1, 89.9, -165.4 , 0 );
setMoveKey( spep_1+1 + 196, 1, 99.5, -114.5 , 0 );
setMoveKey( spep_1+1 + 197, 1, 99.5, -114.5 , 0 );

setMoveKey( spep_1+1 + 198, 1, 108.2, 11.6 , 0 );
setMoveKey( spep_1+1 + 200, 1, 118.3, 41.3 , 0 );
setMoveKey( spep_1+1 + 202, 1, 135.7, 54.5 , 0 );
setMoveKey( spep_1+1 + 204, 1, 131.8, 70.8 , 0 );
setMoveKey( spep_1+1 + 206, 1, 134.7, 64.7 , 0 );
setMoveKey( spep_1+1 + 208, 1, 136.2, 68.4 , 0 );
setMoveKey( spep_1+1 + 210, 1, 137.3, 71.2 , 0 );
setMoveKey( spep_1+1 + 212, 1, 138.2, 73.4 , 0 );
setMoveKey( spep_1+1 + 214, 1, 139, 75.1 , 0 );
setMoveKey( spep_1+1 + 216, 1, 139.5, 76.5 , 0 );
setMoveKey( spep_1+1 + 218, 1, 140, 77.7 , 0 );
setMoveKey( spep_1+1 + 220, 1, 140.4, 78.7 , 0 );
setMoveKey( spep_1+1 + 222, 1, 140.7, 79.5 , 0 );
setMoveKey( spep_1+1 + 224, 1, 141, 80.3 , 0 );
setMoveKey( spep_1+1 + 226, 1, 141.3, 80.9 , 0 );
setMoveKey( spep_1+1 + 228, 1, 141.6, 81.5 , 0 );
setMoveKey( spep_1+1 + 230, 1, 141.7, 82.1 , 0 );
setMoveKey( spep_1+1 + 232, 1, 141.9, 82.6 , 0 );
setMoveKey( spep_1+1 + 234, 1, 142.2, 83.1 , 0 );
setMoveKey( spep_1+1 + 236, 1, 142.3, 83.6 , 0 );
setMoveKey( spep_1+1 + 238, 1, 142.6, 84 , 0 );
setMoveKey( spep_1+1 + 240, 1, 142.7, 84.4 , 0 );
setMoveKey( spep_1+1 + 242, 1, 142.9, 84.9 , 0 );
setMoveKey( spep_1+1 + 244, 1, 143, 85.3 , 0 );


setScaleKey( spep_1+1 + 88, 1, 4, 4 );
setScaleKey( spep_1+1 + 89, 1, 4, 4 );

setScaleKey( spep_1+1 + 90, 1, 10, 10 );
setScaleKey( spep_1+1 + 92, 1, 8.74, 8.74 );
setScaleKey( spep_1+1 + 94, 1, 8.14, 8.14 );
setScaleKey( spep_1+1 + 96, 1, 7.79, 7.79 );
setScaleKey( spep_1+1 + 98, 1, 7.58, 7.58 );
setScaleKey( spep_1+1 + 100, 1, 7.45, 7.45 );
setScaleKey( spep_1+1 + 102, 1, 7.34, 7.34 );
setScaleKey( spep_1+1 + 104, 1, 7.19, 7.19 );
setScaleKey( spep_1+1 + 106, 1, 6.85, 6.85 );
setScaleKey( spep_1+1 + 108, 1, 5.07, 5.07 );
setScaleKey( spep_1+1 + 110, 1, 4.41, 4.41 );
setScaleKey( spep_1+1 + 112, 1, 4.11, 4.11 );
setScaleKey( spep_1+1 + 114, 1, 4, 4 );
setScaleKey( spep_1+1 + 115, 1, 4, 4 );

setScaleKey( spep_1+1 + 116, 1, 1.42, 1.42 );
setScaleKey( spep_1+1 + 126, 1, 1.42, 1.42 );
setScaleKey( spep_1+1 + 128, 1, 1.57, 1.57 );
setScaleKey( spep_1+1 + 130, 1, 1.42, 1.42 );
setScaleKey( spep_1+1 + 132, 1, 1.42, 1.42 );
setScaleKey( spep_1+1 + 134, 1, 1.56, 1.56 );
setScaleKey( spep_1+1 + 136, 1, 1.24, 1.24 );
setScaleKey( spep_1+1 + 138, 1, 1.35, 1.35 );
setScaleKey( spep_1+1 + 140, 1, 1.18, 1.18 );
setScaleKey( spep_1+1 + 142, 1, 1.27, 1.27 );
setScaleKey( spep_1+1 + 144, 1, 1.27, 1.27 );
setScaleKey( spep_1+1 + 146, 1, 1.2, 1.2 );
setScaleKey( spep_1+1 + 185, 1, 1.2, 1.2 );

setScaleKey( spep_1+1 + 186, 1, 5.53, 5.53 );
setScaleKey( spep_1+1 + 188, 1, 6, 6 );
setScaleKey( spep_1+1 + 191, 1, 6, 6 );

setScaleKey( spep_1+1 + 192, 1, 6, 6 );
setScaleKey( spep_1+1 + 194, 1, 5.53, 5.53 );
setScaleKey( spep_1+1 + 196, 1, 4.46, 4.46 );
setScaleKey( spep_1+1 + 197, 1, 4.46, 4.46 );

setScaleKey( spep_1+1 + 198, 1, 2.5, 2.5 );
setScaleKey( spep_1+1 + 200, 1, 1.46, 1.46 );
setScaleKey( spep_1+1 + 202, 1, 1.07, 1.07 );
setScaleKey( spep_1+1 + 204, 1, 0.84, 0.84 );
setScaleKey( spep_1+1 + 206, 1, 0.69, 0.69 );
setScaleKey( spep_1+1 + 208, 1, 0.58, 0.58 );
setScaleKey( spep_1+1 + 210, 1, 0.5, 0.5 );
setScaleKey( spep_1+1 + 212, 1, 0.44, 0.44 );
setScaleKey( spep_1+1 + 214, 1, 0.39, 0.39 );
setScaleKey( spep_1+1 + 216, 1, 0.35, 0.35 );
setScaleKey( spep_1+1 + 218, 1, 0.32, 0.32 );
setScaleKey( spep_1+1 + 220, 1, 0.29, 0.29 );
setScaleKey( spep_1+1 + 222, 1, 0.26, 0.26 );
setScaleKey( spep_1+1 + 224, 1, 0.24, 0.24 );
setScaleKey( spep_1+1 + 226, 1, 0.22, 0.22 );
setScaleKey( spep_1+1 + 228, 1, 0.21, 0.21 );
setScaleKey( spep_1+1 + 230, 1, 0.19, 0.19 );
setScaleKey( spep_1+1 + 232, 1, 0.18, 0.18 );
setScaleKey( spep_1+1 + 234, 1, 0.16, 0.16 );
setScaleKey( spep_1+1 + 236, 1, 0.15, 0.15 );
setScaleKey( spep_1+1 + 238, 1, 0.14, 0.14 );
setScaleKey( spep_1+1 + 240, 1, 0.12, 0.12 );
setScaleKey( spep_1+1 + 242, 1, 0.11, 0.11 );
setScaleKey( spep_1+1 + 244, 1, 0.1, 0.1 );


setRotateKey( spep_1+1 + 88, 1, 120 );
setRotateKey( spep_1+1 + 89, 1, 120 );

setRotateKey( spep_1+1 + 90, 1, -60 );
setRotateKey( spep_1+1 + 92, 1, -63.2 );
setRotateKey( spep_1+1 + 94, 1, -64.6 );
setRotateKey( spep_1+1 + 96, 1, -65.5 );
setRotateKey( spep_1+1 + 98, 1, -66 );
setRotateKey( spep_1+1 + 100, 1, -66.4 );
setRotateKey( spep_1+1 + 102, 1, -66.7 );
setRotateKey( spep_1+1 + 104, 1, -67 );
setRotateKey( spep_1+1 + 106, 1, -67.9 );
setRotateKey( spep_1+1 + 108, 1, -72.3 );
setRotateKey( spep_1+1 + 110, 1, -74 );
setRotateKey( spep_1+1 + 112, 1, -74.7 );
setRotateKey( spep_1+1 + 114, 1, -75 );
setRotateKey( spep_1+1 + 115, 1, -75 );

setRotateKey( spep_1+1 + 116, 1, -5 );
setRotateKey( spep_1+1 + 128, 1, -5 );
setRotateKey( spep_1+1 + 130, 1, -5.1 );
setRotateKey( spep_1+1 + 136, 1, -5.1 );
setRotateKey( spep_1+1 + 138, 1, -5.2 );
setRotateKey( spep_1+1 + 142, 1, -5.2 );
setRotateKey( spep_1+1 + 144, 1, -5.3 );
setRotateKey( spep_1+1 + 148, 1, -5.3 );
setRotateKey( spep_1+1 + 150, 1, -5.4 );
setRotateKey( spep_1+1 + 152, 1, -5.5 );
setRotateKey( spep_1+1 + 154, 1, -5.5 );
setRotateKey( spep_1+1 + 156, 1, -5.6 );
setRotateKey( spep_1+1 + 158, 1, -5.7 );
setRotateKey( spep_1+1 + 160, 1, -5.8 );
setRotateKey( spep_1+1 + 162, 1, -5.9 );
setRotateKey( spep_1+1 + 164, 1, -6 );
setRotateKey( spep_1+1 + 166, 1, -6.2 );
setRotateKey( spep_1+1 + 168, 1, -6.3 );
setRotateKey( spep_1+1 + 170, 1, -6.5 );
setRotateKey( spep_1+1 + 172, 1, -6.8 );
setRotateKey( spep_1+1 + 174, 1, -7 );
setRotateKey( spep_1+1 + 176, 1, -7.3 );
setRotateKey( spep_1+1 + 178, 1, -7.5 );
setRotateKey( spep_1+1 + 180, 1, -7.7 );
setRotateKey( spep_1+1 + 182, 1, -7.7 );
setRotateKey( spep_1+1 + 184, 1, -7.8 );
setRotateKey( spep_1+1 + 185, 1, -7.8 );

setRotateKey( spep_1+1 + 186, 1, 130 );
setRotateKey( spep_1+1 + 191, 1, 130 );

setRotateKey( spep_1+1 + 192, 1, -13.3 );
setRotateKey( spep_1+1 + 194, 1, -15.3 );
setRotateKey( spep_1+1 + 196, 1, -19.8 );
setRotateKey( spep_1+1 + 197, 1, -19.8 );

setRotateKey( spep_1+1 + 198, 1, -9.1 );
setRotateKey( spep_1+1 + 200, 1, -13.5 );
setRotateKey( spep_1+1 + 202, 1, -15.1 );
setRotateKey( spep_1+1 + 204, 1, -16.1 );
setRotateKey( spep_1+1 + 206, 1, -16.8 );
setRotateKey( spep_1+1 + 208, 1, -17.2 );
setRotateKey( spep_1+1 + 210, 1, -17.6 );
setRotateKey( spep_1+1 + 212, 1, -17.8 );
setRotateKey( spep_1+1 + 214, 1, -18 );
setRotateKey( spep_1+1 + 216, 1, -18.2 );
setRotateKey( spep_1+1 + 218, 1, -18.3 );
setRotateKey( spep_1+1 + 220, 1, -18.5 );
setRotateKey( spep_1+1 + 222, 1, -18.6 );
setRotateKey( spep_1+1 + 224, 1, -18.6 );
setRotateKey( spep_1+1 + 226, 1, -18.7 );
setRotateKey( spep_1+1 + 228, 1, -18.8 );
setRotateKey( spep_1+1 + 230, 1, -18.9 );
setRotateKey( spep_1+1 + 232, 1, -18.9 );
setRotateKey( spep_1+1 + 234, 1, -19 );
setRotateKey( spep_1+1 + 236, 1, -19 );
setRotateKey( spep_1+1 + 238, 1, -19.1 );
setRotateKey( spep_1+1 + 240, 1, -19.1 );
setRotateKey( spep_1+1 + 242, 1, -19.2 );
setRotateKey( spep_1+1 + 244, 1, -19.3 );

--SE
playSe( spep_1 + 5, 1001 );
setSeVolume( spep_1 + 5, 1001, 79 );
playSe( spep_1 + 7, 1110 );
setSeVolume( spep_1 + 7, 1110, 56 );
playSe( spep_1 + 16, 1009 );
setSeVolume( spep_1 + 16, 1009, 79 );
playSe( spep_1 + 17, 1110 );
setSeVolume( spep_1 + 17, 1110, 112 );
playSe( spep_1 + 27, 1009 );
setSeVolume( spep_1 + 27, 1009, 112 );
se_1009 = playSe( spep_1 + 38, 1009 );
setSeVolume( spep_1 + 38, 1009, 89 );
playSe( spep_1 + 39, 1110 );
setSeVolume( spep_1 + 39, 1110, 79 );
playSe( spep_1 + 47, 1010 );
se_10091 = playSe( spep_1 + 55, 1009 );
setSeVolume( spep_1 + 55, 1009, 89 );
playSe( spep_1 + 56, 1110 );
playSe( spep_1 + 67, 1000 );
setSeVolume( spep_1 + 67, 1000, 79 );
playSe( spep_1 + 67, 1110 );
setSeVolume( spep_1 + 67, 1110, 63 );
playSe( spep_1 + 77, 1009 );
setSeVolume( spep_1 + 77, 1009, 79 );
playSe( spep_1 + 78, 1110 );
setSeVolume( spep_1 + 78, 1110, 79 );
playSe( spep_1 + 86, 1182 );
setSeVolume( spep_1 + 86, 1182, 0 );
setSeVolume( spep_1 + 95, 1182, 0 );
setSeVolume( spep_1 + 96, 1182, 18.00 );
setSeVolume( spep_1 + 97, 1182, 36.00 );
setSeVolume( spep_1 + 98, 1182, 54.00 );
setSeVolume( spep_1 + 99, 1182, 72.00 );
setSeVolume( spep_1 + 100, 1182, 90.00 );
setSeVolume( spep_1 + 101, 1182, 108.00 );
setSeVolume( spep_1 + 102, 1182, 126.00 );
playSe( spep_1 + 94, 1004 );
playSe( spep_1 + 115, 1126 );
setSeVolume( spep_1 + 115, 1126, 0 );
setSeVolume( spep_1 + 144, 1126, 0.00 );
setSeVolume( spep_1 + 145, 1126, 18.00 );
setSeVolume( spep_1 + 146, 1126, 36.00 );
setSeVolume( spep_1 + 147, 1126, 54.00 );
setSeVolume( spep_1 + 148, 1126, 72.00 );
setSeVolume( spep_1 + 149, 1126, 90.00 );
setSeVolume( spep_1 + 150, 1126, 108.00 );
setSeVolume( spep_1 + 151, 1126, 126.00 );
playSe( spep_1 + 125, 1123 );
playSe( spep_1 + 125, 1187 );
setSeVolume( spep_1 + 125, 1187, 79 );
playSe( spep_1 + 173, 1072 );
se_1121 = playSe( spep_1 + 198, 1121 );
se_1183 = playSe( spep_1 + 198, 1183 );

stopSe( spep_1 + 47, se_1009, 0 );
stopSe( spep_1 + 67, se_10091, 0 );

--白フェード
entryFade( spep_1 +240, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 248, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 次の準備
spep_2 = spep_1+246;

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
stopSe( spep_2 + 11, se_1121, 0 );
stopSe( spep_2 + 11, se_1183, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 瞬間移動〜打ち下ろし
------------------------------------------------------

-- ** エフェクト等 ** --
otosu_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, otosu_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, otosu_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, otosu_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, otosu_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, otosu_f, 0 );
setEffRotateKey( spep_3 + 270, otosu_f, 0 );
setEffAlphaKey( spep_3 + 0, otosu_f, 255 );
setEffAlphaKey( spep_3 + 270, otosu_f, 255 );
setEffAlphaKey( spep_3 + 271, otosu_f, 0 );
setEffAlphaKey( spep_3 + 272, otosu_f, 0 );


-- ** エフェクト等 ** --
otosu_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, otosu_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, otosu_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, otosu_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, otosu_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, otosu_b, 0 );
setEffRotateKey( spep_3 + 270, otosu_b, 0 );
setEffAlphaKey( spep_3 + 0, otosu_b, 255 );
setEffAlphaKey( spep_3 + 270, otosu_b, 255 );
setEffAlphaKey( spep_3 + 271, otosu_b, 0 );
setEffAlphaKey( spep_3 + 272, otosu_b, 0 );

--敵の動き
setDisp( spep_3 -3 + 34, 1, 1 );
setDisp( spep_3 -1 + 74, 1, 0 );

changeAnime( spep_3 -3 + 34, 1, 106);

setMoveKey( spep_3-3 + 34, 1, -28.6, -98.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, -25.2, -97 , 0 );
setMoveKey( spep_3-3 + 38, 1, -22, -95.7 , 0 );
setMoveKey( spep_3-3 + 40, 1, -18.8, -94.4 , 0 );
setMoveKey( spep_3-3 + 42, 1, -15.8, -93.2 , 0 );
setMoveKey( spep_3-3 + 44, 1, -12.8, -92.1 , 0 );
setMoveKey( spep_3-3 + 46, 1, -10, -90.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, -7.3, -89.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -4.8, -88.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, -2.3, -87.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 0.1, -87 , 0 );
setMoveKey( spep_3-3 + 56, 1, 2.3, -86.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, 4.4, -85.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, 6.4, -84.4 , 0 );
setMoveKey( spep_3-3 + 62, 1, 8.3, -83.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, 10.1, -83 , 0 );
setMoveKey( spep_3-3 + 66, 1, 11.7, -82.3 , 0 );
setMoveKey( spep_3-3 + 68, 1, 13.3, -81.7 , 0 );
setMoveKey( spep_3-3 + 70, 1, 14.7, -81.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, 16, -80.6 , 0 );
setMoveKey( spep_3-1 + 74, 1, 17.3, -80.1 , 0 );

setScaleKey( spep_3-3 + 34, 1, 2, 2 );
setScaleKey( spep_3-1 + 74, 1, 2, 2 );

setRotateKey( spep_3-3 + 34, 1, -30 );
setRotateKey( spep_3-1 + 74, 1, -30 );

--敵の動き
setDisp( spep_3 -3 + 198, 1, 1 );
setDisp( spep_3 -1 + 222, 1, 0 );

changeAnime( spep_3 -3 + 198, 1, 107);

setMoveKey( spep_3-3 + 198, 1, -237.3, 241.2 , 0 );
setMoveKey( spep_3-3 + 199, 1, -237.3, 241.2 , 0 );
setMoveKey( spep_3-3 + 200, 1, -237.8, 236.9 , 0 );
setMoveKey( spep_3-3 + 201, 1, -237.8, 236.9 , 0 );
setMoveKey( spep_3-3 + 202, 1, -352, 281.7 , 0 );
setMoveKey( spep_3-3 + 203, 1, -352, 281.7 , 0 );
setMoveKey( spep_3-3 + 204, 1, -234.6, 245.3 , 0 );
setMoveKey( spep_3-3 + 205, 1, -234.6, 245.3 , 0 );
setMoveKey( spep_3-3 + 206, 1, -286, 156.5 , 0 );
setMoveKey( spep_3-3 + 207, 1, -286, 156.5 , 0 );
setMoveKey( spep_3-3 + 208, 1, -238.2, 222 , 0 );
setMoveKey( spep_3-3 + 209, 1, -238.2, 222 , 0 );
setMoveKey( spep_3-3 + 210, 1, -266.3, 151 , 0 );
setMoveKey( spep_3-3 + 211, 1, -266.3, 151 , 0 );
setMoveKey( spep_3-3 + 212, 1, -238.4, 199.5 , 0 );
setMoveKey( spep_3-3 + 213, 1, -238.4, 199.5 , 0 );
setMoveKey( spep_3-3 + 214, 1, -274.5, 151.4 , 0 );
setMoveKey( spep_3-3 + 215, 1, -274.5, 151.4 , 0 );
setMoveKey( spep_3-3 + 216, 1, -238.6, 182.8 , 0 );
setMoveKey( spep_3-3 + 217, 1, -238.6, 182.8 , 0 );
setMoveKey( spep_3-3 + 218, 1, -258.7, 121.7 , 0 );
setMoveKey( spep_3-3 + 219, 1, -258.7, 121.7 , 0 );
setMoveKey( spep_3-3 + 220, 1, -238.8, 164 , 0 );
setMoveKey( spep_3-3 + 221, 1, -238.8, 164 , 0 );
setMoveKey( spep_3-1 + 222, 1, -270.9, 93.8 , 0 );

setScaleKey( spep_3-3 + 198, 1, 2.5, 2.5 );
setScaleKey( spep_3-3 + 200, 1, 2.5, 2.5 );
setScaleKey( spep_3-3 + 201, 1, 2.5, 2.5 );
setScaleKey( spep_3-3 + 202, 1, 3.37, 3.37 );
setScaleKey( spep_3-3 + 203, 1, 3.37, 3.37 );
setScaleKey( spep_3-3 + 204, 1, 2.58, 2.58 );
setScaleKey( spep_3-3 + 205, 1, 2.58, 2.58 );
setScaleKey( spep_3-3 + 206, 1, 2.5, 2.5 );
setScaleKey( spep_3-1 + 222, 1, 2.5, 2.5 );

setRotateKey( spep_3-3 + 198, 1, 25 );
setRotateKey( spep_3-3 + 200, 1, 25 );
setRotateKey( spep_3-3 + 201, 1, 25 );
setRotateKey( spep_3-3 + 202, 1, 22.3 );
setRotateKey( spep_3-3 + 203, 1, 22.3 );
setRotateKey( spep_3-3 + 204, 1, 27.7 );
setRotateKey( spep_3-3 + 206, 1, 27.7 );
setRotateKey( spep_3-3 + 206, 1, 25 );
setRotateKey( spep_3-1 + 222, 1, 25 );

--敵の動き
setDisp( spep_3 -3 + 258, 1, 1 );
setDisp( spep_3  + 270, 1, 0 );

changeAnime( spep_3 -3 + 258, 1, 106);

setMoveKey( spep_3-3 + 258, 1, -50.3, 305.4 , 0 );
setMoveKey( spep_3-3 + 259, 1, -50.3, 305.4 , 0 );
setMoveKey( spep_3-3 + 260, 1, -50.5, 230.4 , 0 );
setMoveKey( spep_3-3 + 261, 1, -50.5, 230.4 , 0 );
setMoveKey( spep_3-3 + 262, 1, -50.8, 155.4 , 0 );
setMoveKey( spep_3-3 + 263, 1, -50.8, 155.4 , 0 );
setMoveKey( spep_3-3 + 264, 1, -51, 80.4 , 0 );
setMoveKey( spep_3-3 + 265, 1, -51, 80.4 , 0 );
setMoveKey( spep_3-3 + 266, 1, -51.3, 5.4 , 0 );
setMoveKey( spep_3-3 + 267, 1, -51.3, 5.4 , 0 );
setMoveKey( spep_3-3 + 268, 1, -51.5, -69.6 , 0 );
setMoveKey( spep_3-3 + 269, 1, -51.5, -69.6 , 0 );
setMoveKey( spep_3-3 + 270, 1, -51.8, -144.6 , 0 );
setMoveKey( spep_3-3 + 271, 1, -51.8, -144.6 , 0 );
setMoveKey( spep_3-3 + 272, 1, -52, -219.6 , 0 );
setMoveKey( spep_3-3 + 273, 1, -52, -219.6 , 0 );
--setMoveKey( spep_3-1 + 274, 1, -52.3, -294.6 , 0 );

setScaleKey( spep_3-3 + 258, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 270, 1, 1.55, 1.55 );

setRotateKey( spep_3-3 + 258, 1, 82.5 );
setRotateKey( spep_3 + 270, 1, 82.5 );

-- ** 文字エントリー ** --
ctsyun = entryEffect( spep_3 + 0, 154833, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ctsyun, 0, 0, 0 );
setEffMoveKey( spep_3 + 74, ctsyun, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, ctsyun, 1.0, 1.0 );
setEffScaleKey( spep_3 + 74, ctsyun, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctsyun, 0 );
setEffRotateKey( spep_3 + 74, ctsyun, 0 );
setEffAlphaKey( spep_3 + 0, ctsyun, 255 );
setEffAlphaKey( spep_3 + 74, ctsyun, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 72  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_3 + 17, 1109 );
playSe( spep_3 + 44, 1109 );
se_1122 = playSe( spep_3 + 75, 1122 );
setSeVolume( spep_3 + 75, 1122, 0.00 );
setSeVolume( spep_3 + 76, 1122, 1.80 );
setSeVolume( spep_3 + 77, 1122, 3.59 );
setSeVolume( spep_3 + 78, 1122, 5.39 );
setSeVolume( spep_3 + 79, 1122, 7.18 );
setSeVolume( spep_3 + 80, 1122, 8.98 );
setSeVolume( spep_3 + 81, 1122, 10.77 );
setSeVolume( spep_3 + 82, 1122, 12.57 );
setSeVolume( spep_3 + 83, 1122, 14.36 );
setSeVolume( spep_3 + 84, 1122, 16.16 );
setSeVolume( spep_3 + 85, 1122, 17.95 );
setSeVolume( spep_3 + 86, 1122, 19.75 );
setSeVolume( spep_3 + 87, 1122, 21.55 );
setSeVolume( spep_3 + 88, 1122, 23.34 );
setSeVolume( spep_3 + 89, 1122, 25.14 );
setSeVolume( spep_3 + 90, 1122, 26.93 );
setSeVolume( spep_3 + 91, 1122, 28.73 );
setSeVolume( spep_3 + 92, 1122, 30.52 );
setSeVolume( spep_3 + 93, 1122, 32.32 );
setSeVolume( spep_3 + 94, 1122, 34.11 );
setSeVolume( spep_3 + 95, 1122, 35.91 );
setSeVolume( spep_3 + 96, 1122, 37.70 );
setSeVolume( spep_3 + 97, 1122, 39.50 );
setSeVolume( spep_3 + 98, 1122, 41.30 );
setSeVolume( spep_3 + 99, 1122, 43.09 );
setSeVolume( spep_3 + 100, 1122, 44.89 );
setSeVolume( spep_3 + 101, 1122, 46.68 );
setSeVolume( spep_3 + 102, 1122, 48.48 );
setSeVolume( spep_3 + 103, 1122, 50.27 );
setSeVolume( spep_3 + 104, 1122, 52.07 );
setSeVolume( spep_3 + 105, 1122, 53.86 );
setSeVolume( spep_3 + 106, 1122, 55.66 );
setSeVolume( spep_3 + 107, 1122, 57.45 );
setSeVolume( spep_3 + 108, 1122, 59.25 );
setSeVolume( spep_3 + 109, 1122, 61.05 );
setSeVolume( spep_3 + 110, 1122, 62.84 );
setSeVolume( spep_3 + 111, 1122, 64.64 );
setSeVolume( spep_3 + 112, 1122, 66.43 );
setSeVolume( spep_3 + 113, 1122, 68.23 );
setSeVolume( spep_3 + 114, 1122, 70.02 );
setSeVolume( spep_3 + 115, 1122, 71.82 );
setSeVolume( spep_3 + 116, 1122, 73.61 );
setSeVolume( spep_3 + 117, 1122, 75.41 );
setSeVolume( spep_3 + 118, 1122, 77.20 );
setSeVolume( spep_3 + 119, 1122, 79.00 );
se_1211 = playSe( spep_3 + 78, 1211 );
setSeVolume( spep_3 + 78, 1211, 79 );
playSe( spep_3 + 78, 1020 );
setSeVolume( spep_3 + 78, 1020, 79 );
playSe( spep_3 + 99, 1020 );
setSeVolume( spep_3 + 99, 1020, 79 );
se_1157 = playSe( spep_3 + 115, 1157 );
playSe( spep_3 + 120, 1020 );
setSeVolume( spep_3 + 120, 1020, 79 );
playSe( spep_3 + 141, 1020 );
setSeVolume( spep_3 + 141, 1020, 79 );
playSe( spep_3 + 142, 1003 );
setSeVolume( spep_3 + 142, 1003, 63 );
playSe( spep_3 + 162, 1020 );
setSeVolume( spep_3 + 162, 1020, 79 );
playSe( spep_3 + 183, 1020 );
setSeVolume( spep_3 + 183, 1020, 79 );
playSe( spep_3 + 204, 1187 );
playSe( spep_3 + 204, 1008 );
se_1072 = playSe( spep_3 + 223, 1072 );
setSeVolume( spep_3 + 223, 1072, 0.00 );
setSeVolume( spep_3 + 248, 1072, 0.00 );
setSeVolume( spep_3 + 249, 1072, 50.00 );
setSeVolume( spep_3 + 251, 1072, 100.00 );
se_0044 = playSe( spep_3 + 251, 44 );
se_1004 = playSe( spep_3 + 255, 1004 );
se_1003 = playSe( spep_3 + 255, 1003 );
se_0009 = playSe( spep_3 + 255, 9 );
se_1167 = playSe( spep_3 + 257, 1167 );
setSeVolume( spep_3 + 257, 1167, 56 );
se_1004 = playSe( spep_3 + 263, 1004 );
se_1003 = playSe( spep_3 + 263, 1003 );
se_0009 = playSe( spep_3 + 263, 9 );
se_1004 = playSe( spep_3 + 268, 1004 );
se_1003 = playSe( spep_3 + 268, 1003 );
se_0009 = playSe( spep_3 + 268, 9 );
playSe( spep_3 + 84, 1018 );

stopSe( spep_3 + 119, se_1122, 95 );
stopSe( spep_3 + 225, se_1211, 0 );
stopSe( spep_3 + 225, se_1157, 0 );
stopSe( spep_3 + 269, se_1072, 0 );
stopSe( spep_3 + 263, se_1004, 0 );
stopSe( spep_3 + 263, se_1003, 0 );
stopSe( spep_3 + 263, se_0009, 0 );


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 272, 0, 86, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 次の準備
spep_4 = spep_3+270;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 214, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 214, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 214, finish, 255 );

-- ** エフェクト等 ** --
ctzua = entryEffect( spep_4 + 0, 154834, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, ctzua, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, ctzua, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, ctzua, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, ctzua, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ctzua, 0 );
setEffRotateKey( spep_4 + 100, ctzua, 0 );
setEffAlphaKey( spep_4 + 0, ctzua, 255 );
setEffAlphaKey( spep_4 + 100, ctzua, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 214, 0, 0, 0, 0, 255 ); --黒　背景

--SE
se_1004 = playSe( spep_4 + 4, 1004 );
se_1003 = playSe( spep_4 + 4, 1003 );
se_0009 = playSe( spep_4 + 4, 9 );
playSe( spep_4 + 9, 1109 );
setSeVolume( spep_4 + 9, 1109, 0 );
setSeVolume( spep_4 + 16, 1109, 0 );
setSeVolume( spep_4 + 17, 1109, 0.00 );
setSeVolume( spep_4 + 18, 1109, 70.50 );
setSeVolume( spep_4 + 19, 1109, 141.00 );
playSe( spep_4 + 21, 1048 );
setSeVolume( spep_4 + 21, 1048, 79 );
playSe( spep_4 + 27, 1011 );
setSeVolume( spep_4 + 27, 1011, 79 );
playSe( spep_4 + 27, 1068 );
setSeVolume( spep_4 + 27, 1068, 89 );
se_1044 = playSe( spep_4 + 48, 1044 );
setSeVolume( spep_4 + 48, 1044, 79 );
playSe( spep_4 + 62, 1190 );
setSeVolume( spep_4 + 62, 1190, 0 );
setSeVolume( spep_4 + 63, 1190, 0 );
setSeVolume( spep_4 + 64, 1190, 0.00 );
setSeVolume( spep_4 + 65, 1190, 11.75 );
setSeVolume( spep_4 + 66, 1190, 23.50 );
setSeVolume( spep_4 + 67, 1190, 35.25 );
setSeVolume( spep_4 + 68, 1190, 47.00 );
setSeVolume( spep_4 + 69, 1190, 58.75 );
setSeVolume( spep_4 + 70, 1190, 70.50 );
setSeVolume( spep_4 + 71, 1190, 82.25 );
setSeVolume( spep_4 + 72, 1190, 94.00 );
setSeVolume( spep_4 + 73, 1190, 105.75 );
setSeVolume( spep_4 + 74, 1190, 117.50 );
setSeVolume( spep_4 + 75, 1190, 129.25 );
setSeVolume( spep_4 + 76, 1190, 141.00 );
playSe( spep_4 + 81, 1182 );
setSeVolume( spep_4 + 81, 1182, 0.00 );
setSeVolume( spep_4 + 82, 1182, 10.85 );
setSeVolume( spep_4 + 83, 1182, 21.69 );
setSeVolume( spep_4 + 84, 1182, 32.54 );
setSeVolume( spep_4 + 85, 1182, 43.38 );
setSeVolume( spep_4 + 86, 1182, 54.23 );
setSeVolume( spep_4 + 87, 1182, 65.08 );
setSeVolume( spep_4 + 88, 1182, 75.92 );
setSeVolume( spep_4 + 89, 1182, 86.77 );
setSeVolume( spep_4 + 90, 1182, 97.62 );
setSeVolume( spep_4 + 91, 1182, 108.46 );
setSeVolume( spep_4 + 92, 1182, 119.31 );
setSeVolume( spep_4 + 93, 1182, 130.15 );
setSeVolume( spep_4 + 94, 1182, 141.00 );
playSe( spep_4 + 122, 1159 );
playSe( spep_4 + 122, 1067 );


stopSe( spep_4 + 0, se_0044, 27 );
stopSe( spep_4 + 19, se_1167, 0 );
stopSe( spep_4 + 1, se_1004, 0 );
stopSe( spep_4 + 1, se_1003, 0 );
stopSe( spep_4 + 1, se_0009, 0 );
stopSe( spep_4 + 6, se_1004, 0 );
stopSe( spep_4 + 6, se_1003, 0 );
stopSe( spep_4 + 6, se_0009, 0 );
stopSe( spep_4 + 12, se_1004, 0 );
stopSe( spep_4 + 14, se_1003, 0 );
stopSe( spep_4 + 18, se_0009, 0 );
stopSe( spep_4 + 167, se_1044, 0 );
-- ** ダメージ表示 ** --
dealDamage( spep_4 + 62 );
endPhase( spep_4 + 200 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進〜連撃遠景・手前
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tossin_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, tossin_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, tossin_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin_f, 0 );
setEffRotateKey( spep_0 + 158, tossin_f, 0 );
setEffAlphaKey( spep_0 + 0, tossin_f, 255 );
setEffAlphaKey( spep_0 + 156, tossin_f, 255 );
setEffAlphaKey( spep_0 + 157, tossin_f, 255 );
setEffAlphaKey( spep_0 + 158, tossin_f, 0 );

-- ** エフェクト等 ** --
tossin_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, tossin_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, tossin_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin_b, 0 );
setEffRotateKey( spep_0 + 158, tossin_b, 0 );
setEffAlphaKey( spep_0 + 0, tossin_b, 255 );
setEffAlphaKey( spep_0 + 156, tossin_b, 255 );
setEffAlphaKey( spep_0 + 157, tossin_b, 255 );
setEffAlphaKey( spep_0 + 158, tossin_b, 0 );

--SE
SE0=playSe( spep_0 + 0, 1042 );
SE1=playSe( spep_0 + 27, 1182 );
setSeVolume( spep_0 + 27, 1182, 188 );
setSeVolume( spep_0 + 31, 1182, 188 );
setSeVolume( spep_0 + 32, 1182, 158 );
setSeVolume( spep_0 + 33, 1182, 129 );
setSeVolume( spep_0 + 34, 1182, 100 );
se_1183 = playSe( spep_0 + 27, 1183 );
setSeVolume( spep_0 + 27, 1183, 141 );
setSeVolume( spep_0 +43 ,1183, 141);
setSeVolume( spep_0 +44,1183,146.8);
setSeVolume( spep_0 +45,1183,152.6);
setSeVolume( spep_0 +46,1183,158.4);
setSeVolume( spep_0 +47,1183,164.2);
setSeVolume( spep_0 +48,1183,170);
setSeVolume( spep_0 +49,1183,175.8);
setSeVolume( spep_0 +50,1183,181.6);
setSeVolume( spep_0 +51,1183,187.4);
setSeVolume( spep_0 +52,1183,193.2);
setSeVolume( spep_0 +53,1183,199);
setSeVolume( spep_0 +54,1183,204.8);
setSeVolume( spep_0 +55,1183,210.6);
setSeVolume( spep_0 +56,1183,216.4);
setSeVolume( spep_0 +57,1183,222.2);
setSeVolume( spep_0 +58,1183,228);
setSeVolume( spep_0 +59,1183,233.8);
setSeVolume( spep_0 +60,1183,239.6);
setSeVolume( spep_0 +61,1183,245.4);
setSeVolume( spep_0 +62,1183,251.2);
setSeVolume( spep_0 +63,1183,257);
setSeVolume( spep_0 +64,1183,262.8);
setSeVolume( spep_0 +65,1183,268.6);
setSeVolume( spep_0 +66,1183,274.4);
setSeVolume( spep_0 +67,1183,280.2);
setSeVolume( spep_0 +68,1183,286);
setSeVolume( spep_0 +69,1183,291.8);
setSeVolume( spep_0 +70,1183,297.6);
setSeVolume( spep_0 +71,1183,303.4);
setSeVolume( spep_0 +72,1183,309.2);
setSeVolume( spep_0 +73,1183,315);
setSeVolume( spep_0 +74,1183,320.8);
setSeVolume( spep_0 +75,1183,326.6);
setSeVolume( spep_0 +76,1183,332.4);
setSeVolume( spep_0 +77,1183,338.2);
setSeVolume( spep_0 +78,1183,344);
setSeVolume( spep_0 +79,1183,349.8);
setSeVolume( spep_0 +80,1183,355.6);
setSeVolume( spep_0 +81,1183,361.4);
setSeVolume( spep_0 +82,1183,367.2);
setSeVolume( spep_0 +83,1183,373);
setSeVolume( spep_0 +84,1183,378.8);
setSeVolume( spep_0 +85,1183,385);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 160, 0, 0, 0, 0, 255 ); --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_1183, 0 );
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

-- ** 文字エントリー ** --
ctgagaga = entryEffect( spep_0 + 0, 154831, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ctgagaga, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, ctgagaga, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ctgagaga, -1.0, 1.0 );
setEffScaleKey( spep_0 + 158, ctgagaga, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ctgagaga, 0 );
setEffRotateKey( spep_0 + 158, ctgagaga, 0 );
setEffAlphaKey( spep_0 + 0, ctgagaga, 255 );
setEffAlphaKey( spep_0 + 156, ctgagaga, 255 );
setEffAlphaKey( spep_0 + 157, ctgagaga, 255 );
setEffAlphaKey( spep_0 + 158, ctgagaga, 0 );

--敵の動き
setDisp( spep_0 -3 + 104, 1, 1 );
setDisp( spep_0 -2 + 160, 1, 0 );

changeAnime( spep_0 -3 + 104, 1, 101 );
changeAnime( spep_0 -3 + 110, 1, 104 );
changeAnime( spep_0 -3 + 118, 1, 108 );
changeAnime( spep_0 -3 + 122, 1, 106 );
changeAnime( spep_0 -3 + 128, 1, 108 );
changeAnime( spep_0 -3 + 132, 1, 106 );
changeAnime( spep_0 -3 + 138, 1, 108 );
changeAnime( spep_0 -3 + 142, 1, 106 );
changeAnime( spep_0 -3 + 148, 1, 108 );
changeAnime( spep_0 -3 + 152, 1, 106 );
changeAnime( spep_0 -3 + 158, 1, 108 );
changeAnime( spep_0 -3 + 162, 1, 106 );

setMoveKey( spep_0 -3 + 104, 1, 9.1, 21.4 , 0 );
setMoveKey( spep_0 -3 + 109, 1, 9.1, 21.4 , 0 );

setMoveKey( spep_0 -3 + 110, 1, 9.1, 21.4 , 0 );
setMoveKey( spep_0 -3 + 117, 1, 9.1, 21.4 , 0 );

setMoveKey( spep_0 -3 + 118, 1, 22.1, 21.4 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 19.9, 21.4 , 0 );
setMoveKey( spep_0 -3 + 121, 1, 19.9, 21.4 , 0 );

setMoveKey( spep_0 -3 + 122, 1, 6.4, 33.2 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 3, 31 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 7.1, 31.8 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 7.1, 31.8 , 0 );

setMoveKey( spep_0 -3 + 128, 1, 20.1, 23.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 23.9, 21.8 , 0 );
setMoveKey( spep_0 -3 + 131, 1, 23.9, 21.8 , 0 );

setMoveKey( spep_0 -3 + 132, 1, 3.6, 32.1 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 7, 32.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 3.9, 34.7 , 0 );
setMoveKey( spep_0 -3 + 137, 1, 3.9, 34.7 , 0 );

setMoveKey( spep_0 -3 + 138, 1, 23.7, 19.4 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 21.4, 23.6 , 0 );
setMoveKey( spep_0 -3 + 141, 1, 21.4, 23.6 , 0 );

setMoveKey( spep_0 -3 + 142, 1, 6.7, 31.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 3.3, 31.1 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 7.9, 32.2 , 0 );
setMoveKey( spep_0 -3 + 147, 1, 7.9, 32.2 , 0 );

setMoveKey( spep_0 -3 + 148, 1, 20.9, 21.2 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 23.1, 23.8 , 0 );
setMoveKey( spep_0 -3 + 151, 1, 23.1, 23.8 , 0 );

setMoveKey( spep_0 -3 + 152, 1, 3, 31.9 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 7.4, 32.8 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 3.9, 31.8 , 0 );
setMoveKey( spep_0 -3 + 157, 1, 3.9, 31.8 , 0 );

setMoveKey( spep_0 -3 + 158, 1, 23.2, 23.2 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 20.2, 19.9 , 0 );
setMoveKey( spep_0 -3 + 161, 1, 20.2, 19.9 , 0 );

--setMoveKey( spep_0 -3 + 162, 1, 6.8, 34 , 0 );
--setMoveKey( spep_0 -3 + 166, 1, 6.8, 34 , 0 );

setScaleKey( spep_0 -3 + 104, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 109, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 110, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 117, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 118, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 120, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 121, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 122, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 127, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 128, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 131, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 132, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 137, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 138, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 141, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 142, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 147, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 148, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 151, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 152, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 157, 1, 0.3, 0.3 );

setScaleKey( spep_0 -3 + 158, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 161, 1, 0.3, 0.3 );

--setScaleKey( spep_0 -3 + 162, 1, 0.3, 0.3 );
--setScaleKey( spep_0 -3 + 166, 1, 0.3, 0.3 );

setRotateKey( spep_0 -3 + 104, 1, 0 );

setRotateKey( spep_0 -3 + 117, 1, 0 );

setRotateKey( spep_0 -3 + 118, 1, 7.5 );
setRotateKey( spep_0 -3 + 121, 1, 7.5 );

setRotateKey( spep_0 -3 + 122, 1, -45 );
setRotateKey( spep_0 -3 + 127, 1, -45 );

setRotateKey( spep_0 -3 + 128, 1, 7.5 );
setRotateKey( spep_0 -3 + 131, 1, 7.5 );

setRotateKey( spep_0 -3 + 132, 1, -45 );
setRotateKey( spep_0 -3 + 137, 1, -45 );

setRotateKey( spep_0 -3 + 138, 1, 7.5 );
setRotateKey( spep_0 -3 + 141, 1, 7.5 );

setRotateKey( spep_0 -3 + 142, 1, -45 );
setRotateKey( spep_0 -3 + 147, 1, -45 );

setRotateKey( spep_0 -3 + 148, 1, 7.5 );
setRotateKey( spep_0 -3 + 151, 1, 7.5 );

setRotateKey( spep_0 -3 + 152, 1, -45 );
setRotateKey( spep_0 -3 + 157, 1, -45 );

setRotateKey( spep_0 -3 + 158, 1, 7.5 );
setRotateKey( spep_0 -3 + 161, 1, 7.5 );

--setRotateKey( spep_0 -3 + 162, 1, -45 );
--setRotateKey( spep_0 -3 + 166, 1, -45 );

--SE
playSe( spep_0 + 64, 1072 );
setSeVolume( spep_0 + 64, 1072, 100 );
setSeVolume( spep_0 +91 ,1072, 100);
setSeVolume( spep_0 +92 ,1072, 123.2);
setSeVolume( spep_0 +93 ,1072, 146.4);
setSeVolume( spep_0 +94 ,1072, 169.6);
setSeVolume( spep_0 +95 ,1072, 192.8);
setSeVolume( spep_0 +96 ,1072, 216);
setSeVolume( spep_0 +97 ,1072, 239.2);
setSeVolume( spep_0 +98 ,1072, 263);
setSeVolume( spep_0 +99 ,1072, 263);
setSeVolume( spep_0 +100 ,1072, 239);
setSeVolume( spep_0 +101 ,1072, 216);
setSeVolume( spep_0 +102 ,1072, 193);
setSeVolume( spep_0 +103 ,1072, 146);
setSeVolume( spep_0 +104 ,1072, 123);
setSeVolume( spep_0 +105 ,1072, 100);
playSe( spep_0 + 111, 1110 );
playSe( spep_0 + 121, 1009 );
playSe( spep_0 + 122, 1110 );
setSeVolume( spep_0 + 122, 1110, 79 );
playSe( spep_0 + 132, 1009 );
setSeVolume( spep_0 + 132, 1009, 79 );
playSe( spep_0 + 133, 1009 );
playSe( spep_0 + 142, 1012 );
setSeVolume( spep_0 + 142, 1012, 71 );
playSe( spep_0 + 143, 1110 );
setSeVolume( spep_0 + 143, 1110, 71 );
playSe( spep_0 + 153, 1009 );
setSeVolume( spep_0 + 153, 1009, 112 );
playSe( spep_0 + 153, 1010 );


stopSe( spep_0 + 111, se_1183, 0 );

-- ** 次の準備
spep_1 = spep_0+158;

------------------------------------------------------
-- 連撃近景〜吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 246, punching_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punching_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 246, punching_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punching_f, 0 );
setEffRotateKey( spep_1 + 246, punching_f, 0 );
setEffAlphaKey( spep_1 + 0, punching_f, 255 );
setEffAlphaKey( spep_1 + 246, punching_f, 255 );


-- ** エフェクト等 ** --
punching_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 246, punching_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punching_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 246, punching_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punching_b, 0 );
setEffRotateKey( spep_1 + 246, punching_b, 0 );
setEffAlphaKey( spep_1 + 0, punching_b, 255 );
setEffAlphaKey( spep_1 + 246, punching_b, 255 );

-- ** エフェクト等 ** --
ctdoga = entryEffect( spep_1 + 3, 154832, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 3, ctdoga, 0, 0, 0 );
setEffMoveKey( spep_1 + 246, ctdoga, 0, 0, 0 );
setEffScaleKey( spep_1 + 3, ctdoga, -1.0, 1.0 );
setEffScaleKey( spep_1 + 246, ctdoga, -1.0, 1.0 );
setEffRotateKey( spep_1 + 3, ctdoga, 0 );
setEffRotateKey( spep_1 + 246, ctdoga, 0 );
setEffAlphaKey( spep_1 + 3, ctdoga, 255 );
setEffAlphaKey( spep_1 + 246, ctdoga, 255 );

--敵の動き
setDisp( spep_1 +1 + 88, 1, 1 );
setDisp( spep_1 +1 + 244, 1, 0 );

changeAnime( spep_1 +1 + 88, 1, 107 );
changeAnime( spep_1 +1 + 90, 1, 6 );
changeAnime( spep_1 +1 + 186, 1, 107 );
changeAnime( spep_1 +1 + 116, 1, 8 );
changeAnime( spep_1 +1 + 192, 1, 8 );
changeAnime( spep_1 +1 + 198, 1, 105 );


setMoveKey( spep_1+1 + 88, 1, -196.6, -665.2 , 0 );
setMoveKey( spep_1+1 + 89, 1, -196.6, -665.2 , 0 );

setMoveKey( spep_1+1 + 90, 1, 102.8, -528.6 , 0 );
setMoveKey( spep_1+1 + 92, 1, 122.3, -467.4 , 0 );
setMoveKey( spep_1+1 + 94, 1, 140.3, -420.1 , 0 );
setMoveKey( spep_1+1 + 96, 1, 144.8, -408.1 , 0 );
setMoveKey( spep_1+1 + 98, 1, 172.7, -419.8 , 0 );
setMoveKey( spep_1+1 + 100, 1, 175.7, -395.7 , 0 );
setMoveKey( spep_1+1 + 102, 1, 175, -388.7 , 0 );
setMoveKey( spep_1+1 + 104, 1, 175.1, -379.8 , 0 );
setMoveKey( spep_1+1 + 106, 1, 179.3, -360 , 0 );
setMoveKey( spep_1+1 + 108, 1, 214.4, -259.7 , 0 );
setMoveKey( spep_1+1 + 110, 1, 225.4, -222.3 , 0 );
setMoveKey( spep_1+1 + 112, 1, 228.8, -204.6 , 0 );
setMoveKey( spep_1+1 + 114, 1, 227.9, -197.8 , 0 );
setMoveKey( spep_1+1 + 115, 1, 227.9, -197.8 , 0 );

setMoveKey( spep_1+1 + 116, 1, -44.1, -18.5 , 0 );
setMoveKey( spep_1+1 + 118, 1, -36.7, -16.1 , 0 );
setMoveKey( spep_1+1 + 120, 1, -45.5, -22.2 , 0 );
setMoveKey( spep_1+1 + 122, 1, -43, -11.3 , 0 );
setMoveKey( spep_1+1 + 124, 1, -39.2, -22.4 , 0 );
setMoveKey( spep_1+1 + 126, 1, -44.1, -17.9 , 0 );
setMoveKey( spep_1+1 + 128, 1, 0.7, -80.8 , 0 );
setMoveKey( spep_1+1 + 130, 1, -44.1, -17.3 , 0 );
setMoveKey( spep_1+1 + 132, 1, -44.2, -17 , 0 );
setMoveKey( spep_1+1 + 134, 1, -68.9, -73.5 , 0 );
setMoveKey( spep_1+1 + 136, 1, 15.6, 58.2 , 0 );
setMoveKey( spep_1+1 + 138, 1, -65.7, -44 , 0 );
setMoveKey( spep_1+1 + 140, 1, -93.8, -1.7 , 0 );
setMoveKey( spep_1+1 + 142, 1, -66.5, -18.3 , 0 );
setMoveKey( spep_1+1 + 144, 1, -66.5, -17.6 , 0 );
setMoveKey( spep_1+1 + 146, 1, -88, 12.9 , 0 );
setMoveKey( spep_1+1 + 148, 1, -102.2, -2.8 , 0 );
setMoveKey( spep_1+1 + 150, 1, -99.9, 16.9 , 0 );
setMoveKey( spep_1+1 + 152, 1, -95.3, -1 , 0 );
setMoveKey( spep_1+1 + 154, 1, -104.8, 18.9 , 0 );
setMoveKey( spep_1+1 + 156, 1, -104.8, 20 , 0 );
setMoveKey( spep_1+1 + 158, 1, -93.1, 4.9 , 0 );
setMoveKey( spep_1+1 + 160, 1, -81.5, 18.2 , 0 );
setMoveKey( spep_1+1 + 162, 1, -91, 8.2 , 0 );
setMoveKey( spep_1+1 + 164, 1, -91.2, 26.6 , 0 );
setMoveKey( spep_1+1 + 166, 1, -91.3, 28.9 , 0 );
setMoveKey( spep_1+1 + 168, 1, -91.6, 31.6 , 0 );
setMoveKey( spep_1+1 + 170, 1, -77.7, 48.9 , 0 );
setMoveKey( spep_1+1 + 172, 1, -87.4, 45.6 , 0 );
setMoveKey( spep_1+1 + 174, 1, -87.7, 59.3 , 0 );
setMoveKey( spep_1+1 + 176, 1, -88, 63.6 , 0 );
setMoveKey( spep_1+1 + 178, 1, -88.3, 57.6 , 0 );
setMoveKey( spep_1+1 + 180, 1, -88.4, 59.8 , 0 );
setMoveKey( spep_1+1 + 182, 1, -88.5, 60.9 , 0 );
setMoveKey( spep_1+1 + 184, 1, -88.5, 61.4 , 0 );
setMoveKey( spep_1+1 + 185, 1, -88.5, 61.4 , 0 );

setMoveKey( spep_1+1 + 186, 1, 90.8, -836.9 , 0 );
setMoveKey( spep_1+1 + 188, 1, 98.6, -907.3 , 0 );
setMoveKey( spep_1+1 + 190, 1, 51.6, -907.3 , 0 );
setMoveKey( spep_1+1 + 191, 1, 51.6, -907.3 , 0 );

setMoveKey( spep_1+1 + 192, 1, -85.7, -187.7 , 0 );
setMoveKey( spep_1+1 + 194, 1, -89.9, -165.4 , 0 );
setMoveKey( spep_1+1 + 196, 1, -99.5, -114.5 , 0 );
setMoveKey( spep_1+1 + 197, 1, -99.5, -114.5 , 0 );

setMoveKey( spep_1+1 + 198, 1, -108.2, 11.6 , 0 );
setMoveKey( spep_1+1 + 200, 1, -118.3, 41.3 , 0 );
setMoveKey( spep_1+1 + 202, 1, -135.7, 54.5 , 0 );
setMoveKey( spep_1+1 + 204, 1, -131.8, 70.8 , 0 );
setMoveKey( spep_1+1 + 206, 1, -134.7, 64.7 , 0 );
setMoveKey( spep_1+1 + 208, 1, -136.2, 68.4 , 0 );
setMoveKey( spep_1+1 + 210, 1, -137.3, 71.2 , 0 );
setMoveKey( spep_1+1 + 212, 1, -138.2, 73.4 , 0 );
setMoveKey( spep_1+1 + 214, 1, -139, 75.1 , 0 );
setMoveKey( spep_1+1 + 216, 1, -139.5, 76.5 , 0 );
setMoveKey( spep_1+1 + 218, 1, -140, 77.7 , 0 );
setMoveKey( spep_1+1 + 220, 1, -140.4, 78.7 , 0 );
setMoveKey( spep_1+1 + 222, 1, -140.7, 79.5 , 0 );
setMoveKey( spep_1+1 + 224, 1, -141, 80.3 , 0 );
setMoveKey( spep_1+1 + 226, 1, -141.3, 80.9 , 0 );
setMoveKey( spep_1+1 + 228, 1, -141.6, 81.5 , 0 );
setMoveKey( spep_1+1 + 230, 1, -141.7, 82.1 , 0 );
setMoveKey( spep_1+1 + 232, 1, -141.9, 82.6 , 0 );
setMoveKey( spep_1+1 + 234, 1, -142.2, 83.1 , 0 );
setMoveKey( spep_1+1 + 236, 1, -142.3, 83.6 , 0 );
setMoveKey( spep_1+1 + 238, 1, -142.6, 84 , 0 );
setMoveKey( spep_1+1 + 240, 1, -142.7, 84.4 , 0 );
setMoveKey( spep_1+1 + 242, 1, -142.9, 84.9 , 0 );
setMoveKey( spep_1+1 + 244, 1, -143, 85.3 , 0 );


setScaleKey( spep_1+1 + 88, 1, 4, 4 );
setScaleKey( spep_1+1 + 89, 1, 4, 4 );

setScaleKey( spep_1+1 + 90, 1, 10, 10 );
setScaleKey( spep_1+1 + 92, 1, 8.74, 8.74 );
setScaleKey( spep_1+1 + 94, 1, 8.14, 8.14 );
setScaleKey( spep_1+1 + 96, 1, 7.79, 7.79 );
setScaleKey( spep_1+1 + 98, 1, 7.58, 7.58 );
setScaleKey( spep_1+1 + 100, 1, 7.45, 7.45 );
setScaleKey( spep_1+1 + 102, 1, 7.34, 7.34 );
setScaleKey( spep_1+1 + 104, 1, 7.19, 7.19 );
setScaleKey( spep_1+1 + 106, 1, 6.85, 6.85 );
setScaleKey( spep_1+1 + 108, 1, 5.07, 5.07 );
setScaleKey( spep_1+1 + 110, 1, 4.41, 4.41 );
setScaleKey( spep_1+1 + 112, 1, 4.11, 4.11 );
setScaleKey( spep_1+1 + 114, 1, 4, 4 );
setScaleKey( spep_1+1 + 115, 1, 4, 4 );

setScaleKey( spep_1+1 + 116, 1, 1.42, 1.42 );
setScaleKey( spep_1+1 + 126, 1, 1.42, 1.42 );
setScaleKey( spep_1+1 + 128, 1, 1.57, 1.57 );
setScaleKey( spep_1+1 + 130, 1, 1.42, 1.42 );
setScaleKey( spep_1+1 + 132, 1, 1.42, 1.42 );
setScaleKey( spep_1+1 + 134, 1, 1.56, 1.56 );
setScaleKey( spep_1+1 + 136, 1, 1.24, 1.24 );
setScaleKey( spep_1+1 + 138, 1, 1.35, 1.35 );
setScaleKey( spep_1+1 + 140, 1, 1.18, 1.18 );
setScaleKey( spep_1+1 + 142, 1, 1.27, 1.27 );
setScaleKey( spep_1+1 + 144, 1, 1.27, 1.27 );
setScaleKey( spep_1+1 + 146, 1, 1.2, 1.2 );
setScaleKey( spep_1+1 + 185, 1, 1.2, 1.2 );

setScaleKey( spep_1+1 + 186, 1, 5.53, 5.53 );
setScaleKey( spep_1+1 + 188, 1, 6, 6 );
setScaleKey( spep_1+1 + 191, 1, 6, 6 );

setScaleKey( spep_1+1 + 192, 1, 6, 6 );
setScaleKey( spep_1+1 + 194, 1, 5.53, 5.53 );
setScaleKey( spep_1+1 + 196, 1, 4.46, 4.46 );
setScaleKey( spep_1+1 + 197, 1, 4.46, 4.46 );

setScaleKey( spep_1+1 + 198, 1, 2.5, 2.5 );
setScaleKey( spep_1+1 + 200, 1, 1.46, 1.46 );
setScaleKey( spep_1+1 + 202, 1, 1.07, 1.07 );
setScaleKey( spep_1+1 + 204, 1, 0.84, 0.84 );
setScaleKey( spep_1+1 + 206, 1, 0.69, 0.69 );
setScaleKey( spep_1+1 + 208, 1, 0.58, 0.58 );
setScaleKey( spep_1+1 + 210, 1, 0.5, 0.5 );
setScaleKey( spep_1+1 + 212, 1, 0.44, 0.44 );
setScaleKey( spep_1+1 + 214, 1, 0.39, 0.39 );
setScaleKey( spep_1+1 + 216, 1, 0.35, 0.35 );
setScaleKey( spep_1+1 + 218, 1, 0.32, 0.32 );
setScaleKey( spep_1+1 + 220, 1, 0.29, 0.29 );
setScaleKey( spep_1+1 + 222, 1, 0.26, 0.26 );
setScaleKey( spep_1+1 + 224, 1, 0.24, 0.24 );
setScaleKey( spep_1+1 + 226, 1, 0.22, 0.22 );
setScaleKey( spep_1+1 + 228, 1, 0.21, 0.21 );
setScaleKey( spep_1+1 + 230, 1, 0.19, 0.19 );
setScaleKey( spep_1+1 + 232, 1, 0.18, 0.18 );
setScaleKey( spep_1+1 + 234, 1, 0.16, 0.16 );
setScaleKey( spep_1+1 + 236, 1, 0.15, 0.15 );
setScaleKey( spep_1+1 + 238, 1, 0.14, 0.14 );
setScaleKey( spep_1+1 + 240, 1, 0.12, 0.12 );
setScaleKey( spep_1+1 + 242, 1, 0.11, 0.11 );
setScaleKey( spep_1+1 + 244, 1, 0.1, 0.1 );


setRotateKey( spep_1+1 + 88, 1, -120 );
setRotateKey( spep_1+1 + 89, 1, -120 );

setRotateKey( spep_1+1 + 90, 1, 60 );
setRotateKey( spep_1+1 + 92, 1, 63.2 );
setRotateKey( spep_1+1 + 94, 1, 64.6 );
setRotateKey( spep_1+1 + 96, 1, 65.5 );
setRotateKey( spep_1+1 + 98, 1, 66 );
setRotateKey( spep_1+1 + 100, 1, 66.4 );
setRotateKey( spep_1+1 + 102, 1, 66.7 );
setRotateKey( spep_1+1 + 104, 1, 67 );
setRotateKey( spep_1+1 + 106, 1, 67.9 );
setRotateKey( spep_1+1 + 108, 1, 72.3 );
setRotateKey( spep_1+1 + 110, 1, 74 );
setRotateKey( spep_1+1 + 112, 1, 74.7 );
setRotateKey( spep_1+1 + 114, 1, 75 );
setRotateKey( spep_1+1 + 115, 1, 75 );

setRotateKey( spep_1+1 + 116, 1, 5 );
setRotateKey( spep_1+1 + 128, 1, 5 );
setRotateKey( spep_1+1 + 130, 1, 5.1 );
setRotateKey( spep_1+1 + 136, 1, 5.1 );
setRotateKey( spep_1+1 + 138, 1, 5.2 );
setRotateKey( spep_1+1 + 142, 1, 5.2 );
setRotateKey( spep_1+1 + 144, 1, 5.3 );
setRotateKey( spep_1+1 + 148, 1, 5.3 );
setRotateKey( spep_1+1 + 150, 1, 5.4 );
setRotateKey( spep_1+1 + 152, 1, 5.5 );
setRotateKey( spep_1+1 + 154, 1, 5.5 );
setRotateKey( spep_1+1 + 156, 1, 5.6 );
setRotateKey( spep_1+1 + 158, 1, 5.7 );
setRotateKey( spep_1+1 + 160, 1, 5.8 );
setRotateKey( spep_1+1 + 162, 1, 5.9 );
setRotateKey( spep_1+1 + 164, 1, 6 );
setRotateKey( spep_1+1 + 166, 1, 6.2 );
setRotateKey( spep_1+1 + 168, 1, 6.3 );
setRotateKey( spep_1+1 + 170, 1, 6.5 );
setRotateKey( spep_1+1 + 172, 1, 6.8 );
setRotateKey( spep_1+1 + 174, 1, 7 );
setRotateKey( spep_1+1 + 176, 1, 7.3 );
setRotateKey( spep_1+1 + 178, 1, 7.5 );
setRotateKey( spep_1+1 + 180, 1, 7.7 );
setRotateKey( spep_1+1 + 182, 1, 7.7 );
setRotateKey( spep_1+1 + 184, 1, 7.8 );
setRotateKey( spep_1+1 + 185, 1, 7.8 );

setRotateKey( spep_1+1 + 186, 1, -130 );
setRotateKey( spep_1+1 + 191, 1, -130 );

setRotateKey( spep_1+1 + 192, 1, 13.3 );
setRotateKey( spep_1+1 + 194, 1, 15.3 );
setRotateKey( spep_1+1 + 196, 1, 19.8 );
setRotateKey( spep_1+1 + 197, 1, 19.8 );

setRotateKey( spep_1+1 + 198, 1, 9.1 );
setRotateKey( spep_1+1 + 200, 1, 13.5 );
setRotateKey( spep_1+1 + 202, 1, 15.1 );
setRotateKey( spep_1+1 + 204, 1, 16.1 );
setRotateKey( spep_1+1 + 206, 1, 16.8 );
setRotateKey( spep_1+1 + 208, 1, 17.2 );
setRotateKey( spep_1+1 + 210, 1, 17.6 );
setRotateKey( spep_1+1 + 212, 1, 17.8 );
setRotateKey( spep_1+1 + 214, 1, 18 );
setRotateKey( spep_1+1 + 216, 1, 18.2 );
setRotateKey( spep_1+1 + 218, 1, 18.3 );
setRotateKey( spep_1+1 + 220, 1, 18.5 );
setRotateKey( spep_1+1 + 222, 1, 18.6 );
setRotateKey( spep_1+1 + 224, 1, 18.6 );
setRotateKey( spep_1+1 + 226, 1, 18.7 );
setRotateKey( spep_1+1 + 228, 1, 18.8 );
setRotateKey( spep_1+1 + 230, 1, 18.9 );
setRotateKey( spep_1+1 + 232, 1, 18.9 );
setRotateKey( spep_1+1 + 234, 1, 19 );
setRotateKey( spep_1+1 + 236, 1, 19 );
setRotateKey( spep_1+1 + 238, 1, 19.1 );
setRotateKey( spep_1+1 + 240, 1, 19.1 );
setRotateKey( spep_1+1 + 242, 1, 19.2 );
setRotateKey( spep_1+1 + 244, 1, 19.3 );

--SE
playSe( spep_1 + 5, 1001 );
setSeVolume( spep_1 + 5, 1001, 79 );
playSe( spep_1 + 7, 1110 );
setSeVolume( spep_1 + 7, 1110, 56 );
playSe( spep_1 + 16, 1009 );
setSeVolume( spep_1 + 16, 1009, 79 );
playSe( spep_1 + 17, 1110 );
setSeVolume( spep_1 + 17, 1110, 112 );
playSe( spep_1 + 27, 1009 );
setSeVolume( spep_1 + 27, 1009, 112 );
se_1009 = playSe( spep_1 + 38, 1009 );
setSeVolume( spep_1 + 38, 1009, 89 );
playSe( spep_1 + 39, 1110 );
setSeVolume( spep_1 + 39, 1110, 79 );
playSe( spep_1 + 47, 1010 );
se_10091 = playSe( spep_1 + 55, 1009 );
setSeVolume( spep_1 + 55, 1009, 89 );
playSe( spep_1 + 56, 1110 );
playSe( spep_1 + 67, 1000 );
setSeVolume( spep_1 + 67, 1000, 79 );
playSe( spep_1 + 67, 1110 );
setSeVolume( spep_1 + 67, 1110, 63 );
playSe( spep_1 + 77, 1009 );
setSeVolume( spep_1 + 77, 1009, 79 );
playSe( spep_1 + 78, 1110 );
setSeVolume( spep_1 + 78, 1110, 79 );
playSe( spep_1 + 86, 1182 );
setSeVolume( spep_1 + 86, 1182, 0 );
setSeVolume( spep_1 + 95, 1182, 0 );
setSeVolume( spep_1 + 96, 1182, 18.00 );
setSeVolume( spep_1 + 97, 1182, 36.00 );
setSeVolume( spep_1 + 98, 1182, 54.00 );
setSeVolume( spep_1 + 99, 1182, 72.00 );
setSeVolume( spep_1 + 100, 1182, 90.00 );
setSeVolume( spep_1 + 101, 1182, 108.00 );
setSeVolume( spep_1 + 102, 1182, 126.00 );
playSe( spep_1 + 94, 1004 );
playSe( spep_1 + 115, 1126 );
setSeVolume( spep_1 + 115, 1126, 0 );
setSeVolume( spep_1 + 144, 1126, 0.00 );
setSeVolume( spep_1 + 145, 1126, 18.00 );
setSeVolume( spep_1 + 146, 1126, 36.00 );
setSeVolume( spep_1 + 147, 1126, 54.00 );
setSeVolume( spep_1 + 148, 1126, 72.00 );
setSeVolume( spep_1 + 149, 1126, 90.00 );
setSeVolume( spep_1 + 150, 1126, 108.00 );
setSeVolume( spep_1 + 151, 1126, 126.00 );
playSe( spep_1 + 125, 1123 );
playSe( spep_1 + 125, 1187 );
setSeVolume( spep_1 + 125, 1187, 79 );
playSe( spep_1 + 173, 1072 );
se_1121 = playSe( spep_1 + 198, 1121 );
se_1183 = playSe( spep_1 + 198, 1183 );

stopSe( spep_1 + 47, se_1009, 0 );
stopSe( spep_1 + 67, se_10091, 0 );

--白フェード
entryFade( spep_1 +240, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 248, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 次の準備
spep_2 = spep_1+246;

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
stopSe( spep_2 + 11, se_1121, 0 );
stopSe( spep_2 + 11, se_1183, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 瞬間移動〜打ち下ろし
------------------------------------------------------

-- ** エフェクト等 ** --
otosu_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, otosu_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, otosu_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, otosu_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 270, otosu_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, otosu_f, 0 );
setEffRotateKey( spep_3 + 270, otosu_f, 0 );
setEffAlphaKey( spep_3 + 0, otosu_f, 255 );
setEffAlphaKey( spep_3 + 270, otosu_f, 255 );
setEffAlphaKey( spep_3 + 271, otosu_f, 0 );
setEffAlphaKey( spep_3 + 272, otosu_f, 0 );


-- ** エフェクト等 ** --
otosu_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, otosu_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, otosu_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, otosu_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 270, otosu_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, otosu_b, 0 );
setEffRotateKey( spep_3 + 270, otosu_b, 0 );
setEffAlphaKey( spep_3 + 0, otosu_b, 255 );
setEffAlphaKey( spep_3 + 270, otosu_b, 255 );
setEffAlphaKey( spep_3 + 271, otosu_b, 0 );
setEffAlphaKey( spep_3 + 272, otosu_b, 0 );

--敵の動き
setDisp( spep_3 -3 + 34, 1, 1 );
setDisp( spep_3 -1 + 74, 1, 0 );

changeAnime( spep_3 -3 + 34, 1, 6);

setMoveKey( spep_3-3 + 34, 1, 28.6, -98.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 25.2, -97 , 0 );
setMoveKey( spep_3-3 + 38, 1, 22, -95.7 , 0 );
setMoveKey( spep_3-3 + 40, 1, 18.8, -94.4 , 0 );
setMoveKey( spep_3-3 + 42, 1, 15.8, -93.2 , 0 );
setMoveKey( spep_3-3 + 44, 1, 12.8, -92.1 , 0 );
setMoveKey( spep_3-3 + 46, 1, 10, -90.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 7.3, -89.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, 4.8, -88.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 2.3, -87.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, -0.1, -87 , 0 );
setMoveKey( spep_3-3 + 56, 1, -2.3, -86.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, -4.4, -85.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, -6.4, -84.4 , 0 );
setMoveKey( spep_3-3 + 62, 1, -8.3, -83.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, -10.1, -83 , 0 );
setMoveKey( spep_3-3 + 66, 1, -11.7, -82.3 , 0 );
setMoveKey( spep_3-3 + 68, 1, -13.3, -81.7 , 0 );
setMoveKey( spep_3-3 + 70, 1, -14.7, -81.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, -16, -80.6 , 0 );
setMoveKey( spep_3-1 + 74, 1, -17.3, -80.1 , 0 );

setScaleKey( spep_3-3 + 34, 1, 2, 2 );
setScaleKey( spep_3-1 + 74, 1, 2, 2 );

setRotateKey( spep_3-3 + 34, 1, 30 );
setRotateKey( spep_3-1 + 74, 1, 30 );

--敵の動き
setDisp( spep_3 -3 + 198, 1, 1 );
setDisp( spep_3 -1 + 222, 1, 0 );

changeAnime( spep_3 -3 + 198, 1, 7);

setMoveKey( spep_3-3 + 198, 1, 237.3, 241.2 , 0 );
setMoveKey( spep_3-3 + 199, 1, 237.3, 241.2 , 0 );
setMoveKey( spep_3-3 + 200, 1, 237.8, 236.9 , 0 );
setMoveKey( spep_3-3 + 201, 1, 237.8, 236.9 , 0 );
setMoveKey( spep_3-3 + 202, 1, 352, 281.7 , 0 );
setMoveKey( spep_3-3 + 203, 1, 352, 281.7 , 0 );
setMoveKey( spep_3-3 + 204, 1, 234.6, 245.3 , 0 );
setMoveKey( spep_3-3 + 205, 1, 234.6, 245.3 , 0 );
setMoveKey( spep_3-3 + 206, 1, 286, 156.5 , 0 );
setMoveKey( spep_3-3 + 207, 1, 286, 156.5 , 0 );
setMoveKey( spep_3-3 + 208, 1, 238.2, 222 , 0 );
setMoveKey( spep_3-3 + 209, 1, 238.2, 222 , 0 );
setMoveKey( spep_3-3 + 210, 1, 266.3, 151 , 0 );
setMoveKey( spep_3-3 + 211, 1, 266.3, 151 , 0 );
setMoveKey( spep_3-3 + 212, 1, 238.4, 199.5 , 0 );
setMoveKey( spep_3-3 + 213, 1, 238.4, 199.5 , 0 );
setMoveKey( spep_3-3 + 214, 1, 274.5, 151.4 , 0 );
setMoveKey( spep_3-3 + 215, 1, 274.5, 151.4 , 0 );
setMoveKey( spep_3-3 + 216, 1, 238.6, 182.8 , 0 );
setMoveKey( spep_3-3 + 217, 1, 238.6, 182.8 , 0 );
setMoveKey( spep_3-3 + 218, 1, 258.7, 121.7 , 0 );
setMoveKey( spep_3-3 + 219, 1, 258.7, 121.7 , 0 );
setMoveKey( spep_3-3 + 220, 1, 238.8, 164 , 0 );
setMoveKey( spep_3-3 + 221, 1, 238.8, 164 , 0 );
setMoveKey( spep_3-1 + 222, 1, 270.9, 93.8 , 0 );

setScaleKey( spep_3-3 + 198, 1, 2.5, 2.5 );
setScaleKey( spep_3-3 + 200, 1, 2.5, 2.5 );
setScaleKey( spep_3-3 + 201, 1, 2.5, 2.5 );
setScaleKey( spep_3-3 + 202, 1, 3.37, 3.37 );
setScaleKey( spep_3-3 + 203, 1, 3.37, 3.37 );
setScaleKey( spep_3-3 + 204, 1, 2.58, 2.58 );
setScaleKey( spep_3-3 + 205, 1, 2.58, 2.58 );
setScaleKey( spep_3-3 + 206, 1, 2.5, 2.5 );
setScaleKey( spep_3-1 + 222, 1, 2.5, 2.5 );

setRotateKey( spep_3-3 + 198, 1, -25 );
setRotateKey( spep_3-3 + 200, 1, -25 );
setRotateKey( spep_3-3 + 201, 1, -25 );
setRotateKey( spep_3-3 + 202, 1, -22.3 );
setRotateKey( spep_3-3 + 203, 1, -22.3 );
setRotateKey( spep_3-3 + 204, 1, -27.7 );
setRotateKey( spep_3-3 + 206, 1, -27.7 );
setRotateKey( spep_3-3 + 206, 1, -25 );
setRotateKey( spep_3-1 + 222, 1, -25 );

--敵の動き
setDisp( spep_3 -3 + 258, 1, 1 );
setDisp( spep_3  + 270, 1, 0 );

changeAnime( spep_3 -3 + 258, 1, 6);

setMoveKey( spep_3-3 + 258, 1, 50.3, 305.4 , 0 );
setMoveKey( spep_3-3 + 259, 1, 50.3, 305.4 , 0 );
setMoveKey( spep_3-3 + 260, 1, 50.5, 230.4 , 0 );
setMoveKey( spep_3-3 + 261, 1, 50.5, 230.4 , 0 );
setMoveKey( spep_3-3 + 262, 1, 50.8, 155.4 , 0 );
setMoveKey( spep_3-3 + 263, 1, 50.8, 155.4 , 0 );
setMoveKey( spep_3-3 + 264, 1, 51, 80.4 , 0 );
setMoveKey( spep_3-3 + 265, 1, 51, 80.4 , 0 );
setMoveKey( spep_3-3 + 266, 1, 51.3, 5.4 , 0 );
setMoveKey( spep_3-3 + 267, 1, 51.3, 5.4 , 0 );
setMoveKey( spep_3-3 + 268, 1, 51.5, -69.6 , 0 );
setMoveKey( spep_3-3 + 269, 1, 51.5, -69.6 , 0 );
setMoveKey( spep_3-3 + 270, 1, 51.8, -144.6 , 0 );
setMoveKey( spep_3-3 + 271, 1, 51.8, -144.6 , 0 );
setMoveKey( spep_3-3 + 272, 1, 52, -219.6 , 0 );
setMoveKey( spep_3-3 + 273, 1, 52, -219.6 , 0 );
--setMoveKey( spep_3-1 + 274, 1, 52.3, -294.6 , 0 );

setScaleKey( spep_3-3 + 258, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 270, 1, 1.55, 1.55 );

setRotateKey( spep_3-3 + 258, 1, -82.5 );
setRotateKey( spep_3 + 270, 1, -82.5 );

-- ** 文字エントリー ** --
ctsyun = entryEffect( spep_3 + 0, 154833, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ctsyun, 0, 0, 0 );
setEffMoveKey( spep_3 + 74, ctsyun, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, ctsyun, -1.0, 1.0 );
setEffScaleKey( spep_3 + 74, ctsyun, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctsyun, 0 );
setEffRotateKey( spep_3 + 74, ctsyun, 0 );
setEffAlphaKey( spep_3 + 0, ctsyun, 255 );
setEffAlphaKey( spep_3 + 74, ctsyun, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 72  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_3 + 17, 1109 );
playSe( spep_3 + 44, 1109 );
se_1122 = playSe( spep_3 + 75, 1122 );
setSeVolume( spep_3 + 75, 1122, 0.00 );
setSeVolume( spep_3 + 76, 1122, 1.80 );
setSeVolume( spep_3 + 77, 1122, 3.59 );
setSeVolume( spep_3 + 78, 1122, 5.39 );
setSeVolume( spep_3 + 79, 1122, 7.18 );
setSeVolume( spep_3 + 80, 1122, 8.98 );
setSeVolume( spep_3 + 81, 1122, 10.77 );
setSeVolume( spep_3 + 82, 1122, 12.57 );
setSeVolume( spep_3 + 83, 1122, 14.36 );
setSeVolume( spep_3 + 84, 1122, 16.16 );
setSeVolume( spep_3 + 85, 1122, 17.95 );
setSeVolume( spep_3 + 86, 1122, 19.75 );
setSeVolume( spep_3 + 87, 1122, 21.55 );
setSeVolume( spep_3 + 88, 1122, 23.34 );
setSeVolume( spep_3 + 89, 1122, 25.14 );
setSeVolume( spep_3 + 90, 1122, 26.93 );
setSeVolume( spep_3 + 91, 1122, 28.73 );
setSeVolume( spep_3 + 92, 1122, 30.52 );
setSeVolume( spep_3 + 93, 1122, 32.32 );
setSeVolume( spep_3 + 94, 1122, 34.11 );
setSeVolume( spep_3 + 95, 1122, 35.91 );
setSeVolume( spep_3 + 96, 1122, 37.70 );
setSeVolume( spep_3 + 97, 1122, 39.50 );
setSeVolume( spep_3 + 98, 1122, 41.30 );
setSeVolume( spep_3 + 99, 1122, 43.09 );
setSeVolume( spep_3 + 100, 1122, 44.89 );
setSeVolume( spep_3 + 101, 1122, 46.68 );
setSeVolume( spep_3 + 102, 1122, 48.48 );
setSeVolume( spep_3 + 103, 1122, 50.27 );
setSeVolume( spep_3 + 104, 1122, 52.07 );
setSeVolume( spep_3 + 105, 1122, 53.86 );
setSeVolume( spep_3 + 106, 1122, 55.66 );
setSeVolume( spep_3 + 107, 1122, 57.45 );
setSeVolume( spep_3 + 108, 1122, 59.25 );
setSeVolume( spep_3 + 109, 1122, 61.05 );
setSeVolume( spep_3 + 110, 1122, 62.84 );
setSeVolume( spep_3 + 111, 1122, 64.64 );
setSeVolume( spep_3 + 112, 1122, 66.43 );
setSeVolume( spep_3 + 113, 1122, 68.23 );
setSeVolume( spep_3 + 114, 1122, 70.02 );
setSeVolume( spep_3 + 115, 1122, 71.82 );
setSeVolume( spep_3 + 116, 1122, 73.61 );
setSeVolume( spep_3 + 117, 1122, 75.41 );
setSeVolume( spep_3 + 118, 1122, 77.20 );
setSeVolume( spep_3 + 119, 1122, 79.00 );
se_1211 = playSe( spep_3 + 78, 1211 );
setSeVolume( spep_3 + 78, 1211, 79 );
playSe( spep_3 + 78, 1020 );
setSeVolume( spep_3 + 78, 1020, 79 );
playSe( spep_3 + 99, 1020 );
setSeVolume( spep_3 + 99, 1020, 79 );
se_1157 = playSe( spep_3 + 115, 1157 );
playSe( spep_3 + 120, 1020 );
setSeVolume( spep_3 + 120, 1020, 79 );
playSe( spep_3 + 141, 1020 );
setSeVolume( spep_3 + 141, 1020, 79 );
playSe( spep_3 + 142, 1003 );
setSeVolume( spep_3 + 142, 1003, 63 );
playSe( spep_3 + 162, 1020 );
setSeVolume( spep_3 + 162, 1020, 79 );
playSe( spep_3 + 183, 1020 );
setSeVolume( spep_3 + 183, 1020, 79 );
playSe( spep_3 + 204, 1187 );
playSe( spep_3 + 204, 1008 );
se_1072 = playSe( spep_3 + 223, 1072 );
setSeVolume( spep_3 + 223, 1072, 0.00 );
setSeVolume( spep_3 + 248, 1072, 0.00 );
setSeVolume( spep_3 + 249, 1072, 50.00 );
setSeVolume( spep_3 + 251, 1072, 100.00 );
se_0044 = playSe( spep_3 + 251, 44 );
se_1004 = playSe( spep_3 + 255, 1004 );
se_1003 = playSe( spep_3 + 255, 1003 );
se_0009 = playSe( spep_3 + 255, 9 );
se_1167 = playSe( spep_3 + 257, 1167 );
setSeVolume( spep_3 + 257, 1167, 56 );
se_1004 = playSe( spep_3 + 263, 1004 );
se_1003 = playSe( spep_3 + 263, 1003 );
se_0009 = playSe( spep_3 + 263, 9 );
se_1004 = playSe( spep_3 + 268, 1004 );
se_1003 = playSe( spep_3 + 268, 1003 );
se_0009 = playSe( spep_3 + 268, 9 );
playSe( spep_3 + 84, 1018 );

stopSe( spep_3 + 119, se_1122, 95 );
stopSe( spep_3 + 225, se_1211, 0 );
stopSe( spep_3 + 225, se_1157, 0 );
stopSe( spep_3 + 269, se_1072, 0 );
stopSe( spep_3 + 263, se_1004, 0 );
stopSe( spep_3 + 263, se_1003, 0 );
stopSe( spep_3 + 263, se_0009, 0 );


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 272, 0, 86, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 次の準備
spep_4 = spep_3+270;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 214, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 214, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 214, finish, 255 );

-- ** エフェクト等 ** --
ctzua = entryEffect( spep_4 + 0, 154834, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, ctzua, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, ctzua, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, ctzua, -1.0, 1.0 );
setEffScaleKey( spep_4 + 100, ctzua, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ctzua, 0 );
setEffRotateKey( spep_4 + 100, ctzua, 0 );
setEffAlphaKey( spep_4 + 0, ctzua, 255 );
setEffAlphaKey( spep_4 + 100, ctzua, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 214, 0, 0, 0, 0, 255 ); --黒　背景

--SE
se_1004 = playSe( spep_4 + 4, 1004 );
se_1003 = playSe( spep_4 + 4, 1003 );
se_0009 = playSe( spep_4 + 4, 9 );
playSe( spep_4 + 9, 1109 );
setSeVolume( spep_4 + 9, 1109, 0 );
setSeVolume( spep_4 + 16, 1109, 0 );
setSeVolume( spep_4 + 17, 1109, 0.00 );
setSeVolume( spep_4 + 18, 1109, 70.50 );
setSeVolume( spep_4 + 19, 1109, 141.00 );
playSe( spep_4 + 21, 1048 );
setSeVolume( spep_4 + 21, 1048, 79 );
playSe( spep_4 + 27, 1011 );
setSeVolume( spep_4 + 27, 1011, 79 );
playSe( spep_4 + 27, 1068 );
setSeVolume( spep_4 + 27, 1068, 89 );
se_1044 = playSe( spep_4 + 48, 1044 );
setSeVolume( spep_4 + 48, 1044, 79 );
playSe( spep_4 + 62, 1190 );
setSeVolume( spep_4 + 62, 1190, 0 );
setSeVolume( spep_4 + 63, 1190, 0 );
setSeVolume( spep_4 + 64, 1190, 0.00 );
setSeVolume( spep_4 + 65, 1190, 11.75 );
setSeVolume( spep_4 + 66, 1190, 23.50 );
setSeVolume( spep_4 + 67, 1190, 35.25 );
setSeVolume( spep_4 + 68, 1190, 47.00 );
setSeVolume( spep_4 + 69, 1190, 58.75 );
setSeVolume( spep_4 + 70, 1190, 70.50 );
setSeVolume( spep_4 + 71, 1190, 82.25 );
setSeVolume( spep_4 + 72, 1190, 94.00 );
setSeVolume( spep_4 + 73, 1190, 105.75 );
setSeVolume( spep_4 + 74, 1190, 117.50 );
setSeVolume( spep_4 + 75, 1190, 129.25 );
setSeVolume( spep_4 + 76, 1190, 141.00 );
playSe( spep_4 + 81, 1182 );
setSeVolume( spep_4 + 81, 1182, 0.00 );
setSeVolume( spep_4 + 82, 1182, 10.85 );
setSeVolume( spep_4 + 83, 1182, 21.69 );
setSeVolume( spep_4 + 84, 1182, 32.54 );
setSeVolume( spep_4 + 85, 1182, 43.38 );
setSeVolume( spep_4 + 86, 1182, 54.23 );
setSeVolume( spep_4 + 87, 1182, 65.08 );
setSeVolume( spep_4 + 88, 1182, 75.92 );
setSeVolume( spep_4 + 89, 1182, 86.77 );
setSeVolume( spep_4 + 90, 1182, 97.62 );
setSeVolume( spep_4 + 91, 1182, 108.46 );
setSeVolume( spep_4 + 92, 1182, 119.31 );
setSeVolume( spep_4 + 93, 1182, 130.15 );
setSeVolume( spep_4 + 94, 1182, 141.00 );
playSe( spep_4 + 122, 1159 );
playSe( spep_4 + 122, 1067 );


stopSe( spep_4 + 0, se_0044, 27 );
stopSe( spep_4 + 19, se_1167, 0 );
stopSe( spep_4 + 1, se_1004, 0 );
stopSe( spep_4 + 1, se_1003, 0 );
stopSe( spep_4 + 1, se_0009, 0 );
stopSe( spep_4 + 6, se_1004, 0 );
stopSe( spep_4 + 6, se_1003, 0 );
stopSe( spep_4 + 6, se_0009, 0 );
stopSe( spep_4 + 12, se_1004, 0 );
stopSe( spep_4 + 14, se_1003, 0 );
stopSe( spep_4 + 18, se_0009, 0 );
stopSe( spep_4 + 167, se_1044, 0 );
-- ** ダメージ表示 ** --
dealDamage( spep_4 + 62 );
endPhase( spep_4 + 200 );


end
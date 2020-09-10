--4019500:グレートサイヤマン1号_ジャスティスラッシュ
--sp_effect_a1_00243

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
SP_01=	155568	;--	構え
SP_02=	155570	;--	格闘：敵前
SP_03=	155572	;--	格闘：敵後
SP_04=	155574	;--	格闘：背景
SP_05=	155575	;--	敵が地面に落下
SP_06=	155576	;--	ジャンプして気溜め
SP_07=	155577	;--	発射
SP_08=	155578	;--	爆発

--エフェクト(てき)
SP_01x=	155569	;--	構え	(敵)
SP_02x=	155571	;--	格闘：敵前	(敵)
SP_03x=	155573	;--	格闘：敵後	(敵)
SP_04x=	155574	;--	格闘：背景	
SP_05x=	155575	;--	敵が地面に落下	
SP_06x=	155576	;--	ジャンプして気溜め	
SP_07x=	155577	;--	発射	
SP_08x=	155578	;--	爆発	

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
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
style = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, style, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, style, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, style, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, style, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, style, 0 );
setEffRotateKey( spep_0 + 50, style, 0 );
setEffAlphaKey( spep_0 + 0, style, 255 );
setEffAlphaKey( spep_0 + 50, style, 255 );

--SE
SE0=playSe( spep_0 + 0, 4 );
SE1=playSe( spep_0 + 1, 1048 );
setSeVolume( spep_0 + 1, 1048, 58 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );


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

--SE
playSe( spep_0 + 36, 1109 );

-- ** 次の準備 ** --
spep_1=spep_0+50;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 116, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 116, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 114, fighting_f, 255 );
setEffAlphaKey( spep_1 + 115, fighting_f, 255 );
setEffAlphaKey( spep_1 + 116, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 116, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 116, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 116, fighting_b, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 116, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_n, 0 );
setEffRotateKey( spep_1 + 116, fighting_n, 0 );
setEffAlphaKey( spep_1 + 0, fighting_n, 255 );
setEffAlphaKey( spep_1 + 116, fighting_n, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 90, 1, 0 );

changeAnime( spep_1-3 + 0, 1, 101 );
changeAnime( spep_1-3 + 18, 1, 104 );
changeAnime( spep_1-3 + 32, 1, 108 );
changeAnime( spep_1-3 + 72, 1, 7 );

setMoveKey( spep_1 + 0, 1, 86.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 17, 1, 86.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 18, 1, 66.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 31, 1, 66.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 32, 1, 57.4, -17.3 , 0 );
setMoveKey( spep_1-3 + 34, 1, 76.6, -18 , 0 );
setMoveKey( spep_1-3 + 36, 1, 74.6, -18 , 0 );
setMoveKey( spep_1-3 + 38, 1, 82.1, -24.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 89.2, -18.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 89.8, -24 , 0 );
setMoveKey( spep_1-3 + 44, 1, 93.9, -21.8 , 0 );
setMoveKey( spep_1-3 + 46, 1, 96.1, -22 , 0 );
setMoveKey( spep_1-3 + 48, 1, 98, -22.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 99.6, -22.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 101.1, -22.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, 102.4, -22.8 , 0 );
setMoveKey( spep_1-3 + 56, 1, 103.6, -22.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 104.6, -23 , 0 );
setMoveKey( spep_1-3 + 60, 1, 105.6, -23.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 106.6, -23.3 , 0 );
setMoveKey( spep_1-3 + 64, 1, 107.5, -23.4 , 0 );
setMoveKey( spep_1-3 + 66, 1, 108.4, -23.4 , 0 );
setMoveKey( spep_1-3 + 68, 1, 109.2, -23.5 , 0 );
setMoveKey( spep_1-3 + 70, 1, 110.1, -23.7 , 0 );
setMoveKey( spep_1-3 + 71, 1, 110.1, -23.7 , 0 );
setMoveKey( spep_1-3 + 72, 1, -19.7, -58.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, -26.8, -81.8 , 0 );
setMoveKey( spep_1-3 + 76, 1, -28.5, -97.7 , 0 );
setMoveKey( spep_1-3 + 78, 1, -34.5, -151.7 , 0 );
setMoveKey( spep_1-3 + 80, 1, -33.8, -200.3 , 0 );
setMoveKey( spep_1-3 + 82, 1, -47.9, -270.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, -51, -346.2 , 0 );
setMoveKey( spep_1-3 + 86, 1, -54.9, -430 , 0 );
setMoveKey( spep_1-3 + 88, 1, -66.3, -518.2 , 0 );
setMoveKey( spep_1-3 + 90, 1, -74.1, -621.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 71, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 72, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 74, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 76, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 78, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 80, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 82, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 84, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 86, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 88, 1, 2.55, 2.55 );
setScaleKey( spep_1-3 + 90, 1, 3, 3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 31, 1, 0 );
setRotateKey( spep_1-3 + 32, 1, 11.8 );
setRotateKey( spep_1-3 + 34, 1, 15.4 );
setRotateKey( spep_1-3 + 36, 1, 17.4 );
setRotateKey( spep_1-3 + 38, 1, 18.9 );
setRotateKey( spep_1-3 + 40, 1, 19.9 );
setRotateKey( spep_1-3 + 42, 1, 20.8 );
setRotateKey( spep_1-3 + 44, 1, 21.5 );
setRotateKey( spep_1-3 + 46, 1, 22.1 );
setRotateKey( spep_1-3 + 48, 1, 22.6 );
setRotateKey( spep_1-3 + 50, 1, 23 );
setRotateKey( spep_1-3 + 52, 1, 23.4 );
setRotateKey( spep_1-3 + 54, 1, 23.8 );
setRotateKey( spep_1-3 + 56, 1, 24.1 );
setRotateKey( spep_1-3 + 58, 1, 24.4 );
setRotateKey( spep_1-3 + 60, 1, 24.6 );
setRotateKey( spep_1-3 + 62, 1, 24.9 );
setRotateKey( spep_1-3 + 64, 1, 25.1 );
setRotateKey( spep_1-3 + 66, 1, 25.4 );
setRotateKey( spep_1-3 + 68, 1, 25.6 );
setRotateKey( spep_1-3 + 70, 1, 25.8 );
setRotateKey( spep_1-3 + 71, 1, 25.8 );
setRotateKey( spep_1-3 + 72, 1, 166.2 );
setRotateKey( spep_1-3 + 74, 1, 166.5 );
setRotateKey( spep_1-3 + 76, 1, 167.2 );
setRotateKey( spep_1-3 + 78, 1, 168.3 );
setRotateKey( spep_1-3 + 80, 1, 169.7 );
setRotateKey( spep_1-3 + 82, 1, 171.3 );
setRotateKey( spep_1-3 + 84, 1, 173.2 );
setRotateKey( spep_1-3 + 86, 1, 175.2 );
setRotateKey( spep_1-3 + 88, 1, 177.5 );
setRotateKey( spep_1-3 + 90, 1, 180 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 8,  10000, 16, 0x100, -1, 0, 176.9, 209.1 );
setEffShake( spep_1-3 + 8, ctbikkuri, 16, 10 )
setEffMoveKey( spep_1-3 + 8, ctbikkuri, 176.9, 209.1 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbikkuri, 158.7, 184 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbikkuri, 151.7, 183.6 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbikkuri, 158.2, 191 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbikkuri, 158.7, 184 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbikkuri, 151.7, 183.6 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbikkuri, 158.2, 191 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbikkuri, 158.7, 184 , 0 );
setEffMoveKey( spep_1-3 + 24, ctbikkuri, 151.7, 183.6 , 0 );

setEffScaleKey( spep_1-3 + 8, ctbikkuri, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 10, ctbikkuri, 1.61, 1.61 );
setEffScaleKey( spep_1-3 + 24, ctbikkuri, 1.61, 1.61 );

setEffRotateKey( spep_1-3 + 8, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 24, ctbikkuri, 18 );

setEffAlphaKey( spep_1-3 + 8, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 24, ctbikkuri, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 74,  10020, 22, 0x100, -1, 0, 139.8, 169.3 );
setEffShake( spep_1-3 + 74, ctbaki, 22, 10 );
setEffMoveKey( spep_1-3 + 74, ctbaki, 139.8, 169.3 , 0 );
setEffMoveKey( spep_1-3 + 76, ctbaki, 106.3, 141.3 , 0 );
setEffMoveKey( spep_1-3 + 78, ctbaki, 102.1, 180.4 , 0 );
setEffMoveKey( spep_1-3 + 80, ctbaki, 117, 156.9 , 0 );
setEffMoveKey( spep_1-3 + 82, ctbaki, 112.8, 181.7 , 0 );
setEffMoveKey( spep_1-3 + 84, ctbaki, 121.8, 164.9 , 0 );
setEffMoveKey( spep_1-3 + 86, ctbaki, 110.9, 179.8 , 0 );
setEffMoveKey( spep_1-3 + 88, ctbaki, 109.4, 166.7 , 0 );
setEffMoveKey( spep_1-3 + 90, ctbaki, 109.7, 167.7 , 0 );
setEffMoveKey( spep_1-3 + 92, ctbaki, 110, 168.7 , 0 );
setEffMoveKey( spep_1-3 + 94, ctbaki, 110.4, 169.7 , 0 );
setEffMoveKey( spep_1-3 + 96, ctbaki, 110.7, 170.7 , 0 );

setEffScaleKey( spep_1-3 + 74, ctbaki, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 76, ctbaki, 1.04, 1.04 );
setEffScaleKey( spep_1-3 + 78, ctbaki, 1.44, 1.44 );
setEffScaleKey( spep_1-3 + 80, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 82, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 84, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_1-3 + 86, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 88, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 90, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_1-3 + 94, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_1-3 + 96, ctbaki, 1.28, 1.28 );

setEffRotateKey( spep_1-3 + 74, ctbaki, 45.9 );
setEffRotateKey( spep_1-3 + 76, ctbaki, 11.3 );
setEffRotateKey( spep_1-3 + 78, ctbaki, 26.3 );
setEffRotateKey( spep_1-3 + 80, ctbaki, 21 );
setEffRotateKey( spep_1-3 + 82, ctbaki, 31.2 );
setEffRotateKey( spep_1-3 + 84, ctbaki, 23.6 );
setEffRotateKey( spep_1-3 + 96, ctbaki, 23.6 );

setEffAlphaKey( spep_1-3 + 74, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 86, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 88, ctbaki, 221 );
setEffAlphaKey( spep_1-3 + 90, ctbaki, 187 );
setEffAlphaKey( spep_1-3 + 92, ctbaki, 153 );
setEffAlphaKey( spep_1-3 + 94, ctbaki, 119 );
setEffAlphaKey( spep_1-3 + 96, ctbaki, 85 );

--SE
playSe( spep_1 + 22, 1189 );
playSe( spep_1 + 26, 1000 );
playSe( spep_1 + 28, 1009 );
playSe( spep_1 + 52, 1109 );
playSe( spep_1 + 70, 1010 );
playSe( spep_1 + 72, 1110 );
se_1183 = playSe( spep_1 + 106, 1183 );
setSeVolume( spep_1 + 106, 1183, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+110 , 4, 2, 0, fcolor_r, fcolor_g, fcolor_b,118 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+116;
------------------------------------------------------
-- 敵が地面に落下
------------------------------------------------------
-- ** エフェクト等 ** --
falling = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, falling, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, falling, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, falling, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, falling, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, falling, 0 );
setEffRotateKey( spep_2 + 76, falling, 0 );
setEffAlphaKey( spep_2 + 0, falling, 255 );
setEffAlphaKey( spep_2 + 76, falling, 255 );

--集中線
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 20, 1, 0 );

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, 31.4, 301.5 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 21.1, 204.3 , 0 );
setMoveKey( spep_2-3 + 4, 1, 15.3, 149.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 11.2, 110.1 , 0 );
setMoveKey( spep_2-3 + 8, 1, 8, 80.5 , 0 );
setMoveKey( spep_2-3 + 10, 1, 5.6, 57.3 , 0 );
setMoveKey( spep_2-3 + 12, 1, 3.6, 38.9 , 0 );
setMoveKey( spep_2-3 + 14, 1, 2.1, 24.2 , 0 );
setMoveKey( spep_2-3 + 16, 1, 0.9, 12.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 0, 3.6 , 0 );
setMoveKey( spep_2-1 + 20, 1, -0.6, -2.9 , 0 );

setScaleKey( spep_2 + 0, 1, 5.84, 5.84 );
--setScaleKey( spep_2-3 + 2, 1, 4.07, 4.07 );
setScaleKey( spep_2-3 + 4, 1, 3.07, 3.07 );
setScaleKey( spep_2-3 + 6, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 8, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 10, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 12, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 14, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 16, 1, 0.58, 0.58 );
setScaleKey( spep_2-3 + 18, 1, 0.41, 0.41 );
setScaleKey( spep_2-1 + 20, 1, 0.29, 0.29 );

setRotateKey( spep_2 + 0, 1, -150 );
setRotateKey( spep_2-1 + 20, 1, -150 );

--SE
se_1159 = playSe( spep_2 + 26, 1159 );
setSeVolume( spep_2 + 26, 1159, 79 );

stopSe( spep_2 + 26, se_1183, 0 );

-- ** 次の準備 ** --
spep_3=spep_2+76;
------------------------------------------------------
-- ジャンプして気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 110, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 110, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_3,  906, 108-3, 0x100, -1, 0,0, 0 );
setEffShake( spep_3 + 0, shuchusen1, 108-3, 20 );
setEffMoveKey( spep_3, shuchusen1,0, 0 , 0 );
setEffMoveKey( spep_3-3 + 108, shuchusen1,0, 0 , 0 );

setEffScaleKey( spep_3, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_3-3 + 108, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_3, shuchusen1, 0 );
setEffRotateKey( spep_3-3 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_3, shuchusen1, 0 );
setEffAlphaKey( spep_3-3 + 27, shuchusen1, 0 );
setEffAlphaKey( spep_3-3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_3-3 + 108, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3+16  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3+16  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +28, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_3 +28,  ctgogo,  100,  510);
setEffMoveKey(  spep_3 +100,  ctgogo,  100,  510);

setEffAlphaKey( spep_3 +28, ctgogo, 0 );
setEffAlphaKey( spep_3 + 29, ctgogo, 255 );
setEffAlphaKey( spep_3 + 30, ctgogo, 255 );
setEffAlphaKey( spep_3 + 94, ctgogo, 255 );
setEffAlphaKey( spep_3 + 96, ctgogo, 191 );
setEffAlphaKey( spep_3 + 98, ctgogo, 112 );
setEffAlphaKey( spep_3 + 100, ctgogo, 64 );

setEffRotateKey(  spep_3 +28,  ctgogo,  0);
setEffRotateKey(  spep_3 +100,  ctgogo,  0);

setEffScaleKey(  spep_3 +28,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +100,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_3 + 2, 44 );
playSe( spep_3 + 28, 1018 );--顔カットイン
se_1154 = playSe( spep_3 + 32, 1154 );
setSeVolume( spep_3 + 32, 1154, 0 );
setSeVolume( spep_3 + 41, 1154, 0 );
setSeVolume( spep_3 + 42, 1154, 23.67 );
setSeVolume( spep_3 + 43, 1154, 47.33 );
setSeVolume( spep_3 + 44, 1154, 71 );
se_1262 = playSe( spep_3 + 34, 1262 );
setSeVolume( spep_3 + 34, 1262, 158 );

setSeVolume( spep_3+13, 1159,79);
setSeVolume( spep_3+14, 1159,76.68);
setSeVolume( spep_3+15, 1159,74.36);
setSeVolume( spep_3+16, 1159,72.04);
setSeVolume( spep_3+17, 1159,69.72);
setSeVolume( spep_3+18, 1159,67.4);
setSeVolume( spep_3+19, 1159,65.08);
setSeVolume( spep_3+20, 1159,62.76);
setSeVolume( spep_3+21, 1159,60.44);
setSeVolume( spep_3+22, 1159,58.12);
setSeVolume( spep_3+23, 1159,55.8);
setSeVolume( spep_3+24, 1159,53.48);
setSeVolume( spep_3+25, 1159,51.16);
setSeVolume( spep_3+26, 1159,48.84);
setSeVolume( spep_3+27, 1159,46.52);
setSeVolume( spep_3+28, 1159,44.2);
setSeVolume( spep_3+29, 1159,41.88);
setSeVolume( spep_3+30, 1159,39.56);
setSeVolume( spep_3+31, 1159,37.24);
setSeVolume( spep_3+32, 1159,34.92);
setSeVolume( spep_3+33, 1159,32.6);
setSeVolume( spep_3+34, 1159,30.28);
setSeVolume( spep_3+35, 1159,27.96);
setSeVolume( spep_3+36, 1159,25.64);
setSeVolume( spep_3+37, 1159,23.32);
setSeVolume( spep_3+38, 1159,21);
setSeVolume( spep_3+39, 1159,18.68);
setSeVolume( spep_3+40, 1159,16.36);
setSeVolume( spep_3+41, 1159,14.04);
setSeVolume( spep_3+42, 1159,11.72);
setSeVolume( spep_3+43, 1159,9.4);
setSeVolume( spep_3+44, 1159,7.08);
setSeVolume( spep_3+45, 1159,4.76);
setSeVolume( spep_3+46, 1159,2.44);
setSeVolume( spep_3+47, 1159,0);

--白フェード
entryFade( spep_3+102 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4=spep_3+110;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );
stopSe( spep_4 + 0, se_1154, 0 );
stopSe( spep_4 + 0, se_1262, 0 );


--白フェード
entryFade( spep_4 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
--------------------------------------
--発射
--------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 66, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 66, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 66, beam, 255 );
setEffAlphaKey( spep_5 + 67, beam, 0 );
setEffAlphaKey( spep_5 + 68, beam, 0 );

--SE
playSe( spep_5 + 4, 1016 );

se_1027=playSe( spep_5 + 4, 1027 );
setSeVolume( spep_5 + 4, 1027, 56 );
setSeVolume( spep_5 + 14, 1027, 56 );
setSeVolume( spep_5+15, 1027,56);
setSeVolume( spep_5+16, 1027,53.58);
setSeVolume( spep_5+17, 1027,51.16);
setSeVolume( spep_5+18, 1027,48.74);
setSeVolume( spep_5+19, 1027,46.32);
setSeVolume( spep_5+20, 1027,43.9);
setSeVolume( spep_5+21, 1027,41.48);
setSeVolume( spep_5+22, 1027,39.06);
setSeVolume( spep_5+23, 1027,36.64);
setSeVolume( spep_5+24, 1027,34.22);
setSeVolume( spep_5+25, 1027,31.8);
setSeVolume( spep_5+26, 1027,29.38);
setSeVolume( spep_5+27, 1027,26.96);
setSeVolume( spep_5+28, 1027,24.54);
setSeVolume( spep_5+29, 1027,22.12);
setSeVolume( spep_5+30, 1027,19.7);
setSeVolume( spep_5+31, 1027,17.28);
setSeVolume( spep_5+32, 1027,14.86);
setSeVolume( spep_5+33, 1027,12.44);
setSeVolume( spep_5+34, 1027,10.02);
setSeVolume( spep_5+35, 1027,7.59);
setSeVolume( spep_5+36, 1027,5.17);
setSeVolume( spep_5+37, 1027,2.75);
setSeVolume( spep_5+38, 1027,0);

playSe( spep_5 + 6, 1015 );
setSeVolume( spep_5 + 6, 1015, 71 );
se_1021 = playSe( spep_5 + 6, 1021 );
setSeVolume( spep_5 + 6, 1021, 56 );
playSe( spep_5 + 8, 1155 );
playSe( spep_5 + 40, 1016 );
se_10271=playSe( spep_5 + 40, 1027 );
setSeVolume( spep_5 + 40, 1027, 54 );
setSeVolume( spep_5+40, 1027,54);
setSeVolume( spep_5+51, 1027,54);
setSeVolume( spep_5+52, 1027,51.17);
setSeVolume( spep_5+53, 1027,48.34);
setSeVolume( spep_5+54, 1027,45.51);
setSeVolume( spep_5+55, 1027,42.68);
setSeVolume( spep_5+56, 1027,39.85);
setSeVolume( spep_5+57, 1027,37.02);
setSeVolume( spep_5+58, 1027,34.19);
setSeVolume( spep_5+59, 1027,31.36);
setSeVolume( spep_5+60, 1027,28.53);
setSeVolume( spep_5+61, 1027,25.7);
setSeVolume( spep_5+62, 1027,22.87);
setSeVolume( spep_5+63, 1027,20.04);
setSeVolume( spep_5+64, 1027,17.21);
setSeVolume( spep_5+65, 1027,14.38);
setSeVolume( spep_5+66, 1027,11.55);
setSeVolume( spep_5+67, 1027,8.72);
setSeVolume( spep_5+68, 1027,5.89);
setSeVolume( spep_5+69, 1027,3.06);
setSeVolume( spep_5+70, 1027,0);

playSe( spep_5 + 42, 1015 );
setSeVolume( spep_5 + 42, 1015, 71 );
playSe( spep_5 + 42, 1021 );
setSeVolume( spep_5 + 42, 1021, 55 );
playSe( spep_5 + 44, 1155 );

stopSe( spep_5 + 38, se_1027, 0 );
stopSe( spep_5 + 41, se_1021, 0 );
stopSe( spep_5 + 70, se_10271, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 66;
--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 140, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 140, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 140, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 140, finish, 255 );

--SE
playSe( spep_6 + 4, 1016 );
playSe( spep_6 + 6, 1179 );
setSeVolume( spep_6 + 6, 1179, 79 );
playSe( spep_6 + 8, 1023 );
setSeVolume( spep_6 + 8, 1023, 112 );
playSe( spep_6 + 20, 1016 );
setSeVolume( spep_6 + 20, 1016, 82 );
playSe( spep_6 + 30, 1159 );
setSeVolume( spep_6 + 30, 1159, 69 );
playSe( spep_6 + 40, 1016 );
playSe( spep_6 + 50, 1024 );
setSeVolume( spep_6 + 50, 1024, 63 );
playSe( spep_6 + 52, 1016 );
setSeVolume( spep_6 + 52, 1016, 74 );
playSe( spep_6 + 70, 1016 );
setSeVolume( spep_6 + 70, 1016, 89 );
playSe( spep_6 + 90, 1016 );
setSeVolume( spep_6 + 90, 1016, 84 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 20 );
endPhase( spep_6 + 130 );
else 

    ------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
style = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, style, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, style, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, style, -1.0, 1.0 );
setEffScaleKey( spep_0 + 50, style, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, style, 0 );
setEffRotateKey( spep_0 + 50, style, 0 );
setEffAlphaKey( spep_0 + 0, style, 255 );
setEffAlphaKey( spep_0 + 50, style, 255 );

--SE
SE0=playSe( spep_0 + 0, 4 );
SE1=playSe( spep_0 + 1, 1048 );
setSeVolume( spep_0 + 1, 1048, 58 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );


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

--SE
playSe( spep_0 + 36, 1109 );

-- ** 次の準備 ** --
spep_1=spep_0+50;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 116, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 116, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 116, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 114, fighting_f, 255 );
setEffAlphaKey( spep_1 + 115, fighting_f, 255 );
setEffAlphaKey( spep_1 + 116, fighting_f, 0 );


-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 116, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 116, fighting_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 116, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 116, fighting_b, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 116, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_n, -1.0, 1.0 );
setEffScaleKey( spep_1 + 116, fighting_n, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_n, 0 );
setEffRotateKey( spep_1 + 116, fighting_n, 0 );
setEffAlphaKey( spep_1 + 0, fighting_n, 255 );
setEffAlphaKey( spep_1 + 116, fighting_n, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 90, 1, 0 );

changeAnime( spep_1-3 + 0, 1, 101 );
changeAnime( spep_1-3 + 18, 1, 104 );
changeAnime( spep_1-3 + 32, 1, 108 );
changeAnime( spep_1-3 + 72, 1, 7 );

setMoveKey( spep_1 + 0, 1, 86.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 17, 1, 86.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 18, 1, 66.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 31, 1, 66.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 32, 1, 57.4, -17.3 , 0 );
setMoveKey( spep_1-3 + 34, 1, 76.6, -18 , 0 );
setMoveKey( spep_1-3 + 36, 1, 74.6, -18 , 0 );
setMoveKey( spep_1-3 + 38, 1, 82.1, -24.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 89.2, -18.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 89.8, -24 , 0 );
setMoveKey( spep_1-3 + 44, 1, 93.9, -21.8 , 0 );
setMoveKey( spep_1-3 + 46, 1, 96.1, -22 , 0 );
setMoveKey( spep_1-3 + 48, 1, 98, -22.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 99.6, -22.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 101.1, -22.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, 102.4, -22.8 , 0 );
setMoveKey( spep_1-3 + 56, 1, 103.6, -22.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 104.6, -23 , 0 );
setMoveKey( spep_1-3 + 60, 1, 105.6, -23.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 106.6, -23.3 , 0 );
setMoveKey( spep_1-3 + 64, 1, 107.5, -23.4 , 0 );
setMoveKey( spep_1-3 + 66, 1, 108.4, -23.4 , 0 );
setMoveKey( spep_1-3 + 68, 1, 109.2, -23.5 , 0 );
setMoveKey( spep_1-3 + 70, 1, 110.1, -23.7 , 0 );
setMoveKey( spep_1-3 + 71, 1, 110.1, -23.7 , 0 );
setMoveKey( spep_1-3 + 72, 1, -19.7, -58.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, -26.8, -81.8 , 0 );
setMoveKey( spep_1-3 + 76, 1, -28.5, -97.7 , 0 );
setMoveKey( spep_1-3 + 78, 1, -34.5, -151.7 , 0 );
setMoveKey( spep_1-3 + 80, 1, -33.8, -200.3 , 0 );
setMoveKey( spep_1-3 + 82, 1, -47.9, -270.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, -51, -346.2 , 0 );
setMoveKey( spep_1-3 + 86, 1, -54.9, -430 , 0 );
setMoveKey( spep_1-3 + 88, 1, -66.3, -518.2 , 0 );
setMoveKey( spep_1-3 + 90, 1, -74.1, -621.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 71, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 72, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 74, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 76, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 78, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 80, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 82, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 84, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 86, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 88, 1, 2.55, 2.55 );
setScaleKey( spep_1-3 + 90, 1, 3, 3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 31, 1, 0 );
setRotateKey( spep_1-3 + 32, 1, 11.8 );
setRotateKey( spep_1-3 + 34, 1, 15.4 );
setRotateKey( spep_1-3 + 36, 1, 17.4 );
setRotateKey( spep_1-3 + 38, 1, 18.9 );
setRotateKey( spep_1-3 + 40, 1, 19.9 );
setRotateKey( spep_1-3 + 42, 1, 20.8 );
setRotateKey( spep_1-3 + 44, 1, 21.5 );
setRotateKey( spep_1-3 + 46, 1, 22.1 );
setRotateKey( spep_1-3 + 48, 1, 22.6 );
setRotateKey( spep_1-3 + 50, 1, 23 );
setRotateKey( spep_1-3 + 52, 1, 23.4 );
setRotateKey( spep_1-3 + 54, 1, 23.8 );
setRotateKey( spep_1-3 + 56, 1, 24.1 );
setRotateKey( spep_1-3 + 58, 1, 24.4 );
setRotateKey( spep_1-3 + 60, 1, 24.6 );
setRotateKey( spep_1-3 + 62, 1, 24.9 );
setRotateKey( spep_1-3 + 64, 1, 25.1 );
setRotateKey( spep_1-3 + 66, 1, 25.4 );
setRotateKey( spep_1-3 + 68, 1, 25.6 );
setRotateKey( spep_1-3 + 70, 1, 25.8 );
setRotateKey( spep_1-3 + 71, 1, 25.8 );
setRotateKey( spep_1-3 + 72, 1, 166.2 );
setRotateKey( spep_1-3 + 74, 1, 166.5 );
setRotateKey( spep_1-3 + 76, 1, 167.2 );
setRotateKey( spep_1-3 + 78, 1, 168.3 );
setRotateKey( spep_1-3 + 80, 1, 169.7 );
setRotateKey( spep_1-3 + 82, 1, 171.3 );
setRotateKey( spep_1-3 + 84, 1, 173.2 );
setRotateKey( spep_1-3 + 86, 1, 175.2 );
setRotateKey( spep_1-3 + 88, 1, 177.5 );
setRotateKey( spep_1-3 + 90, 1, 180 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 8,  10000, 16, 0x100, -1, 0, 176.9, 209.1 );
setEffShake( spep_1-3 + 8, ctbikkuri, 16, 10 )
setEffMoveKey( spep_1-3 + 8, ctbikkuri, 176.9, 209.1 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbikkuri, 158.7, 184 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbikkuri, 151.7, 183.6 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbikkuri, 158.2, 191 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbikkuri, 158.7, 184 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbikkuri, 151.7, 183.6 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbikkuri, 158.2, 191 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbikkuri, 158.7, 184 , 0 );
setEffMoveKey( spep_1-3 + 24, ctbikkuri, 151.7, 183.6 , 0 );

setEffScaleKey( spep_1-3 + 8, ctbikkuri, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 10, ctbikkuri, 1.61, 1.61 );
setEffScaleKey( spep_1-3 + 24, ctbikkuri, 1.61, 1.61 );

setEffRotateKey( spep_1-3 + 8, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 24, ctbikkuri, 18 );

setEffAlphaKey( spep_1-3 + 8, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 24, ctbikkuri, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 74,  10020, 22, 0x100, -1, 0, 139.8, 169.3 );
setEffShake( spep_1-3 + 74, ctbaki, 22, 10 );
setEffMoveKey( spep_1-3 + 74, ctbaki, 139.8, 169.3 , 0 );
setEffMoveKey( spep_1-3 + 76, ctbaki, 106.3, 141.3 , 0 );
setEffMoveKey( spep_1-3 + 78, ctbaki, 102.1, 180.4 , 0 );
setEffMoveKey( spep_1-3 + 80, ctbaki, 117, 156.9 , 0 );
setEffMoveKey( spep_1-3 + 82, ctbaki, 112.8, 181.7 , 0 );
setEffMoveKey( spep_1-3 + 84, ctbaki, 121.8, 164.9 , 0 );
setEffMoveKey( spep_1-3 + 86, ctbaki, 110.9, 179.8 , 0 );
setEffMoveKey( spep_1-3 + 88, ctbaki, 109.4, 166.7 , 0 );
setEffMoveKey( spep_1-3 + 90, ctbaki, 109.7, 167.7 , 0 );
setEffMoveKey( spep_1-3 + 92, ctbaki, 110, 168.7 , 0 );
setEffMoveKey( spep_1-3 + 94, ctbaki, 110.4, 169.7 , 0 );
setEffMoveKey( spep_1-3 + 96, ctbaki, 110.7, 170.7 , 0 );

setEffScaleKey( spep_1-3 + 74, ctbaki, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 76, ctbaki, 1.04, 1.04 );
setEffScaleKey( spep_1-3 + 78, ctbaki, 1.44, 1.44 );
setEffScaleKey( spep_1-3 + 80, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 82, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 84, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_1-3 + 86, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 88, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_1-3 + 90, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_1-3 + 94, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_1-3 + 96, ctbaki, 1.28, 1.28 );

setEffRotateKey( spep_1-3 + 74, ctbaki, 45.9 );
setEffRotateKey( spep_1-3 + 76, ctbaki, 11.3 );
setEffRotateKey( spep_1-3 + 78, ctbaki, 26.3 );
setEffRotateKey( spep_1-3 + 80, ctbaki, 21 );
setEffRotateKey( spep_1-3 + 82, ctbaki, 31.2 );
setEffRotateKey( spep_1-3 + 84, ctbaki, 23.6 );
setEffRotateKey( spep_1-3 + 96, ctbaki, 23.6 );

setEffAlphaKey( spep_1-3 + 74, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 86, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 88, ctbaki, 221 );
setEffAlphaKey( spep_1-3 + 90, ctbaki, 187 );
setEffAlphaKey( spep_1-3 + 92, ctbaki, 153 );
setEffAlphaKey( spep_1-3 + 94, ctbaki, 119 );
setEffAlphaKey( spep_1-3 + 96, ctbaki, 85 );

--SE
playSe( spep_1 + 22, 1189 );
playSe( spep_1 + 26, 1000 );
playSe( spep_1 + 28, 1009 );
playSe( spep_1 + 52, 1109 );
playSe( spep_1 + 70, 1010 );
playSe( spep_1 + 72, 1110 );
se_1183 = playSe( spep_1 + 106, 1183 );
setSeVolume( spep_1 + 106, 1183, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+110 , 4, 2, 0, fcolor_r, fcolor_g, fcolor_b,118 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+116;
------------------------------------------------------
-- 敵が地面に落下
------------------------------------------------------
-- ** エフェクト等 ** --
falling = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, falling, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, falling, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, falling, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, falling, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, falling, 0 );
setEffRotateKey( spep_2 + 76, falling, 0 );
setEffAlphaKey( spep_2 + 0, falling, 255 );
setEffAlphaKey( spep_2 + 76, falling, 255 );

--集中線
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 20, 1, 0 );

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, 31.4, 301.5 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 21.1, 204.3 , 0 );
setMoveKey( spep_2-3 + 4, 1, 15.3, 149.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 11.2, 110.1 , 0 );
setMoveKey( spep_2-3 + 8, 1, 8, 80.5 , 0 );
setMoveKey( spep_2-3 + 10, 1, 5.6, 57.3 , 0 );
setMoveKey( spep_2-3 + 12, 1, 3.6, 38.9 , 0 );
setMoveKey( spep_2-3 + 14, 1, 2.1, 24.2 , 0 );
setMoveKey( spep_2-3 + 16, 1, 0.9, 12.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 0, 3.6 , 0 );
setMoveKey( spep_2-1 + 20, 1, -0.6, -2.9 , 0 );

setScaleKey( spep_2 + 0, 1, 5.84, 5.84 );
--setScaleKey( spep_2-3 + 2, 1, 4.07, 4.07 );
setScaleKey( spep_2-3 + 4, 1, 3.07, 3.07 );
setScaleKey( spep_2-3 + 6, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 8, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 10, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 12, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 14, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 16, 1, 0.58, 0.58 );
setScaleKey( spep_2-3 + 18, 1, 0.41, 0.41 );
setScaleKey( spep_2-1 + 20, 1, 0.29, 0.29 );

setRotateKey( spep_2 + 0, 1, -150 );
setRotateKey( spep_2-1 + 20, 1, -150 );

--SE
se_1159 = playSe( spep_2 + 26, 1159 );
setSeVolume( spep_2 + 26, 1159, 79 );

stopSe( spep_2 + 26, se_1183, 0 );

-- ** 次の準備 ** --
spep_3=spep_2+76;
------------------------------------------------------
-- ジャンプして気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 110, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 110, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_3,  906, 108-3, 0x100, -1, 0,0, 0 );
setEffShake( spep_3 + 0, shuchusen1, 108-3, 20 );
setEffMoveKey( spep_3, shuchusen1,0, 0 , 0 );
setEffMoveKey( spep_3-3 + 108, shuchusen1,0, 0 , 0 );

setEffScaleKey( spep_3, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_3-3 + 108, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_3, shuchusen1, 0 );
setEffRotateKey( spep_3-3 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_3, shuchusen1, 0 );
setEffAlphaKey( spep_3-3 + 27, shuchusen1, 0 );
setEffAlphaKey( spep_3-3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_3-3 + 108, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3+16  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3+16  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +28, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_3 +28,  ctgogo,  100,  510);
setEffMoveKey(  spep_3 +100,  ctgogo,  100,  510);

setEffAlphaKey( spep_3 +28, ctgogo, 0 );
setEffAlphaKey( spep_3 + 29, ctgogo, 255 );
setEffAlphaKey( spep_3 + 30, ctgogo, 255 );
setEffAlphaKey( spep_3 + 94, ctgogo, 255 );
setEffAlphaKey( spep_3 + 96, ctgogo, 191 );
setEffAlphaKey( spep_3 + 98, ctgogo, 112 );
setEffAlphaKey( spep_3 + 100, ctgogo, 64 );

setEffRotateKey(  spep_3 +28,  ctgogo,  0);
setEffRotateKey(  spep_3 +100,  ctgogo,  0);

setEffScaleKey(  spep_3 +28,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +100,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_3 + 2, 44 );
playSe( spep_3 + 28, 1018 );--顔カットイン
se_1154 = playSe( spep_3 + 32, 1154 );
setSeVolume( spep_3 + 32, 1154, 0 );
setSeVolume( spep_3 + 41, 1154, 0 );
setSeVolume( spep_3 + 42, 1154, 23.67 );
setSeVolume( spep_3 + 43, 1154, 47.33 );
setSeVolume( spep_3 + 44, 1154, 71 );
se_1262 = playSe( spep_3 + 34, 1262 );
setSeVolume( spep_3 + 34, 1262, 158 );

setSeVolume( spep_3+13, 1159,79);
setSeVolume( spep_3+14, 1159,76.68);
setSeVolume( spep_3+15, 1159,74.36);
setSeVolume( spep_3+16, 1159,72.04);
setSeVolume( spep_3+17, 1159,69.72);
setSeVolume( spep_3+18, 1159,67.4);
setSeVolume( spep_3+19, 1159,65.08);
setSeVolume( spep_3+20, 1159,62.76);
setSeVolume( spep_3+21, 1159,60.44);
setSeVolume( spep_3+22, 1159,58.12);
setSeVolume( spep_3+23, 1159,55.8);
setSeVolume( spep_3+24, 1159,53.48);
setSeVolume( spep_3+25, 1159,51.16);
setSeVolume( spep_3+26, 1159,48.84);
setSeVolume( spep_3+27, 1159,46.52);
setSeVolume( spep_3+28, 1159,44.2);
setSeVolume( spep_3+29, 1159,41.88);
setSeVolume( spep_3+30, 1159,39.56);
setSeVolume( spep_3+31, 1159,37.24);
setSeVolume( spep_3+32, 1159,34.92);
setSeVolume( spep_3+33, 1159,32.6);
setSeVolume( spep_3+34, 1159,30.28);
setSeVolume( spep_3+35, 1159,27.96);
setSeVolume( spep_3+36, 1159,25.64);
setSeVolume( spep_3+37, 1159,23.32);
setSeVolume( spep_3+38, 1159,21);
setSeVolume( spep_3+39, 1159,18.68);
setSeVolume( spep_3+40, 1159,16.36);
setSeVolume( spep_3+41, 1159,14.04);
setSeVolume( spep_3+42, 1159,11.72);
setSeVolume( spep_3+43, 1159,9.4);
setSeVolume( spep_3+44, 1159,7.08);
setSeVolume( spep_3+45, 1159,4.76);
setSeVolume( spep_3+46, 1159,2.44);
setSeVolume( spep_3+47, 1159,0);

--白フェード
entryFade( spep_3+102 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4=spep_3+110;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );
stopSe( spep_4 + 0, se_1154, 0 );
stopSe( spep_4 + 0, se_1262, 0 );


--白フェード
entryFade( spep_4 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
--------------------------------------
--発射
--------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_5 + 66, beam, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 66, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 66, beam, 255 );
setEffAlphaKey( spep_5 + 67, beam, 0 );
setEffAlphaKey( spep_5 + 68, beam, 0 );

--SE
playSe( spep_5 + 4, 1016 );

se_1027=playSe( spep_5 + 4, 1027 );
setSeVolume( spep_5 + 4, 1027, 56 );
setSeVolume( spep_5 + 14, 1027, 56 );
setSeVolume( spep_5+15, 1027,56);
setSeVolume( spep_5+16, 1027,53.58);
setSeVolume( spep_5+17, 1027,51.16);
setSeVolume( spep_5+18, 1027,48.74);
setSeVolume( spep_5+19, 1027,46.32);
setSeVolume( spep_5+20, 1027,43.9);
setSeVolume( spep_5+21, 1027,41.48);
setSeVolume( spep_5+22, 1027,39.06);
setSeVolume( spep_5+23, 1027,36.64);
setSeVolume( spep_5+24, 1027,34.22);
setSeVolume( spep_5+25, 1027,31.8);
setSeVolume( spep_5+26, 1027,29.38);
setSeVolume( spep_5+27, 1027,26.96);
setSeVolume( spep_5+28, 1027,24.54);
setSeVolume( spep_5+29, 1027,22.12);
setSeVolume( spep_5+30, 1027,19.7);
setSeVolume( spep_5+31, 1027,17.28);
setSeVolume( spep_5+32, 1027,14.86);
setSeVolume( spep_5+33, 1027,12.44);
setSeVolume( spep_5+34, 1027,10.02);
setSeVolume( spep_5+35, 1027,7.59);
setSeVolume( spep_5+36, 1027,5.17);
setSeVolume( spep_5+37, 1027,2.75);
setSeVolume( spep_5+38, 1027,0);

playSe( spep_5 + 6, 1015 );
setSeVolume( spep_5 + 6, 1015, 71 );
se_1021 = playSe( spep_5 + 6, 1021 );
setSeVolume( spep_5 + 6, 1021, 56 );
playSe( spep_5 + 8, 1155 );
playSe( spep_5 + 40, 1016 );
se_10271=playSe( spep_5 + 40, 1027 );
setSeVolume( spep_5 + 40, 1027, 54 );
setSeVolume( spep_5+40, 1027,54);
setSeVolume( spep_5+51, 1027,54);
setSeVolume( spep_5+52, 1027,51.17);
setSeVolume( spep_5+53, 1027,48.34);
setSeVolume( spep_5+54, 1027,45.51);
setSeVolume( spep_5+55, 1027,42.68);
setSeVolume( spep_5+56, 1027,39.85);
setSeVolume( spep_5+57, 1027,37.02);
setSeVolume( spep_5+58, 1027,34.19);
setSeVolume( spep_5+59, 1027,31.36);
setSeVolume( spep_5+60, 1027,28.53);
setSeVolume( spep_5+61, 1027,25.7);
setSeVolume( spep_5+62, 1027,22.87);
setSeVolume( spep_5+63, 1027,20.04);
setSeVolume( spep_5+64, 1027,17.21);
setSeVolume( spep_5+65, 1027,14.38);
setSeVolume( spep_5+66, 1027,11.55);
setSeVolume( spep_5+67, 1027,8.72);
setSeVolume( spep_5+68, 1027,5.89);
setSeVolume( spep_5+69, 1027,3.06);
setSeVolume( spep_5+70, 1027,0);

playSe( spep_5 + 42, 1015 );
setSeVolume( spep_5 + 42, 1015, 71 );
playSe( spep_5 + 42, 1021 );
setSeVolume( spep_5 + 42, 1021, 55 );
playSe( spep_5 + 44, 1155 );

stopSe( spep_5 + 38, se_1027, 0 );
stopSe( spep_5 + 41, se_1021, 0 );
stopSe( spep_5 + 70, se_10271, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 66;
--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 140, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 140, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 140, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 140, finish, 255 );

--SE
playSe( spep_6 + 4, 1016 );
playSe( spep_6 + 6, 1179 );
setSeVolume( spep_6 + 6, 1179, 79 );
playSe( spep_6 + 8, 1023 );
setSeVolume( spep_6 + 8, 1023, 112 );
playSe( spep_6 + 20, 1016 );
setSeVolume( spep_6 + 20, 1016, 82 );
playSe( spep_6 + 30, 1159 );
setSeVolume( spep_6 + 30, 1159, 69 );
playSe( spep_6 + 40, 1016 );
playSe( spep_6 + 50, 1024 );
setSeVolume( spep_6 + 50, 1024, 63 );
playSe( spep_6 + 52, 1016 );
setSeVolume( spep_6 + 52, 1016, 74 );
playSe( spep_6 + 70, 1016 );
setSeVolume( spep_6 + 70, 1016, 89 );
playSe( spep_6 + 90, 1016 );
setSeVolume( spep_6 + 90, 1016, 84 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 20 );
endPhase( spep_6 + 130 );

end
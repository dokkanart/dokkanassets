--1018100:トランクス(青年期)_フラッシュブレード(ドッカン後)
--sp_effect_b2_00029

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
SP_01=	154513	;--	手前突進
SP_02=	154515	;--	ラッシュ
SP_03=	154516	;--	ラッシュ
SP_04=	154519	;--	抜刀
SP_05=	154520	;--	超サイヤ人になって手前突進
SP_06=	154521	;--	フィニッシュ
SP_07=	154522	;--	フィニッシュ

--敵側
SP_01x=	154513	;--	手前突進	
SP_02x=	154517	;--	ラッシュ	(敵)
SP_03x=	154518	;--	ラッシュ	(敵)
SP_04x=	154519	;--	抜刀	
SP_05x=	154520	;--	超サイヤ人になって手前突進	
SP_06x=	154523	;--	フィニッシュ	(敵)
SP_07x=	154524	;--	フィニッシュ	(敵)
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
setDisp( 0, 0, 0);


setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);


-- 敵
setDisp( 0, 1, 0);

changeAnime( 0, 1, 101);                       -- 立ち
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--手前突進
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
ros = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, ros, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, ros, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ros, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, ros, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ros, 0 );
setEffRotateKey( spep_0 + 56, ros, 0 );
setEffAlphaKey( spep_0 + 0, ros, 255 );
setEffAlphaKey( spep_0 + 56, ros, 255 );

--SE
SE0=playSe( spep_0 + 0, 1182 );
SE1=playSe( spep_0 + 0, 9 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
--ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 186, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 186, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 186, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 186, fighting_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 184, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 18, 1, 104 );
changeAnime( spep_1-3 + 22, 1, 108 );
changeAnime( spep_1-3 + 28, 1, 106 );
changeAnime( spep_1-3 + 38, 1, 108 );
changeAnime( spep_1-3 + 50, 1, 106 );
changeAnime( spep_1-3 + 60, 1, 108 );
changeAnime( spep_1-3 + 70, 1, 106 );
changeAnime( spep_1-3 + 80, 1, 108 );
changeAnime( spep_1-3 + 90, 1, 106 );
changeAnime( spep_1-3 + 100, 1, 108 );
changeAnime( spep_1-3 + 110, 1, 106 );
changeAnime( spep_1-3 + 120, 1, 108 );
changeAnime( spep_1-3 + 130, 1, 106 );
changeAnime( spep_1-3 + 134, 1, 108 );
changeAnime( spep_1-3 + 162, 1, 106 );

setMoveKey( spep_1 + 0, 1, 595.4, -39.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 496.2, -35.7 , 0 );
setMoveKey( spep_1-3 + 4, 1, 408.6, -32 , 0 );
setMoveKey( spep_1-3 + 6, 1, 332.7, -28.8 , 0 );
setMoveKey( spep_1-3 + 8, 1, 268.4, -26.1 , 0 );
setMoveKey( spep_1-3 + 10, 1, 215.9, -23.9 , 0 );
setMoveKey( spep_1-3 + 12, 1, 175, -22.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 145.8, -20.9 , 0 );
setMoveKey( spep_1-3 + 17, 1, 128.3, -20.2 , 0 );
setMoveKey( spep_1-3 + 18, 1, 122.4, -19.9 , 0 );
setMoveKey( spep_1-3 + 21, 1, 122.4, -19.9 , 0 );
setMoveKey( spep_1-3 + 22, 1, 157.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 187.6, 41.6 , 0 );
setMoveKey( spep_1-3 + 27, 1, 145.6, -41.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, 123.9, 8.3 , 0 );
setMoveKey( spep_1-3 + 30, 1, 164.4, -25.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 180.9, 13.7 , 0 );
setMoveKey( spep_1-3 + 34, 1, 175.6, -8.3 , 0 );
setMoveKey( spep_1-3 + 37, 1, 177.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 38, 1, 173.3, 17 , 0 );
setMoveKey( spep_1-3 + 40, 1, 208.2, 10.6 , 0 );
setMoveKey( spep_1-3 + 42, 1, 236.2, 17.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 270.5, 6.6 , 0 );
setMoveKey( spep_1-3 + 46, 1, 270.4, 15.7 , 0 );
setMoveKey( spep_1-3 + 49, 1, 269.5, 17.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 154.2, 1.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 157.6, -0.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, 150.8, 7.6 , 0 );
setMoveKey( spep_1-3 + 56, 1, 152.8, 0.5 , 0 );
setMoveKey( spep_1-3 + 59, 1, 159.3, -2.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 187.1, 11.5 , 0 );
setMoveKey( spep_1-3 + 62, 1, 191.6, 20 , 0 );
setMoveKey( spep_1-3 + 64, 1, 207.3, 20.3 , 0 );
setMoveKey( spep_1-3 + 66, 1, 222.9, 17.5 , 0 );
setMoveKey( spep_1-3 + 69, 1, 212.7, 24.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 166.1, 6.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 161.7, 1.1 , 0 );
setMoveKey( spep_1-3 + 74, 1, 174.3, -1.6 , 0 );
setMoveKey( spep_1-3 + 76, 1, 178.5, 0.9 , 0 );
setMoveKey( spep_1-3 + 79, 1, 170.8, -1.1 , 0 );
setMoveKey( spep_1-3 + 80, 1, 176.8, 19.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 203.2, 16.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 228.2, 19.1 , 0 );
setMoveKey( spep_1-3 + 86, 1, 233.7, 15.5 , 0 );
setMoveKey( spep_1-3 + 89, 1, 233.3, 13.2 , 0 );
setMoveKey( spep_1-3 + 90, 1, 154.5, 1.1 , 0 );
setMoveKey( spep_1-3 + 92, 1, 180.9, 3.7 , 0 );
setMoveKey( spep_1-3 + 94, 1, 196.5, -0.8 , 0 );
setMoveKey( spep_1-3 + 96, 1, 195.1, -1.5 , 0 );
setMoveKey( spep_1-3 + 99, 1, 197.3, 0.2 , 0 );
setMoveKey( spep_1-3 + 100, 1, 172.8, 16 , 0 );
setMoveKey( spep_1-3 + 102, 1, 199.7, 16.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, 233, 16.6 , 0 );
setMoveKey( spep_1-3 + 106, 1, 228.9, 14.4 , 0 );
setMoveKey( spep_1-3 + 109, 1, 228.5, 9.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 165.9, 10.7 , 0 );
setMoveKey( spep_1-3 + 112, 1, 165.1, 10.2 , 0 );
setMoveKey( spep_1-3 + 114, 1, 179.2, -1.9 , 0 );
setMoveKey( spep_1-3 + 116, 1, 169.3, 12.9 , 0 );
setMoveKey( spep_1-3 + 119, 1, 177.3, 0 , 0 );
setMoveKey( spep_1-3 + 120, 1, 177.7, 13.1 , 0 );
setMoveKey( spep_1-3 + 122, 1, 187.5, 17 , 0 );
setMoveKey( spep_1-3 + 124, 1, 216.7, 15.6 , 0 );
setMoveKey( spep_1-3 + 126, 1, 203.4, 13.8 , 0 );
setMoveKey( spep_1-3 + 129, 1, 213.9, 13.5 , 0 );
setMoveKey( spep_1-3 + 130, 1, 160.7, 8.1 , 0 );
setMoveKey( spep_1-3 + 133, 1, 218.9, -1.1 , 0 );
setMoveKey( spep_1-3 + 134, 1, 255.5, -2.9 , 0 );
setMoveKey( spep_1-3 + 136, 1, 262.8, -3.1 , 0 );
setMoveKey( spep_1-3 + 138, 1, 279.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 140, 1, 285.9, 0.2 , 0 );
setMoveKey( spep_1-3 + 142, 1, 290.4, 0.2 , 0 );
setMoveKey( spep_1-3 + 144, 1, 293.4, 0.2 , 0 );
setMoveKey( spep_1-3 + 146, 1, 295.3, 0.2 , 0 );
setMoveKey( spep_1-3 + 148, 1, 296.4, 0.2 , 0 );
setMoveKey( spep_1-3 + 150, 1, 297, 0.2 , 0 );
setMoveKey( spep_1-3 + 152, 1, 297.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 154, 1, 295.4, 0.2 , 0 );
setMoveKey( spep_1-3 + 156, 1, 282.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 158, 1, 246.6, 0.2 , 0 );
setMoveKey( spep_1-3 + 161, 1, 177.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 162, 1, 136.3, 19.2 , 0 );
setMoveKey( spep_1-3 + 164, 1, 167.7, 64.4 , 0 );
setMoveKey( spep_1-3 + 166, 1, 172.5, 56.8 , 0 );
setMoveKey( spep_1-3 + 168, 1, 122.2, 38 , 0 );
setMoveKey( spep_1-3 + 170, 1, 262.3, 50.5 , 0 );
setMoveKey( spep_1-3 + 172, 1, 445, 25.5 , 0 );
setMoveKey( spep_1-3 + 174, 1, 999.3, -31.4 , 0 );
setMoveKey( spep_1-3 + 176, 1, 969.2, -45.8 , 0 );
setMoveKey( spep_1-3 + 178, 1, 951.4, -18.4 , 0 );
setMoveKey( spep_1-3 + 180, 1, 964.3, -34.1 , 0 );
setMoveKey( spep_1-3 + 182, 1, 966.4, -12.1 , 0 );
setMoveKey( spep_1-3 + 184, 1, 974.1, -24.9 , 0 );

setScaleKey( spep_1 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 184, 1, 1.7, 1.7 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 21, 1, 0 );
setRotateKey( spep_1-3 + 22, 1, -4 );
setRotateKey( spep_1-3 + 27, 1, -4 );
setRotateKey( spep_1-3 + 28, 1, -43.7 );
setRotateKey( spep_1-3 + 30, 1, -39.5 );
setRotateKey( spep_1-3 + 32, 1, -35.2 );
setRotateKey( spep_1-3 + 34, 1, -31 );
setRotateKey( spep_1-3 + 37, 1, -31 );
setRotateKey( spep_1-3 + 38, 1, -4 );
setRotateKey( spep_1-3 + 49, 1, -4 );
setRotateKey( spep_1-3 + 50, 1, -43.7 );
setRotateKey( spep_1-3 + 59, 1, -43.7 );
setRotateKey( spep_1-3 + 60, 1, -4 );
setRotateKey( spep_1-3 + 69, 1, -4 );
setRotateKey( spep_1-3 + 70, 1, -43.7 );
setRotateKey( spep_1-3 + 72, 1, -32.9 );
setRotateKey( spep_1-3 + 74, 1, -22.2 );
setRotateKey( spep_1-3 + 79, 1, -22.2 );
setRotateKey( spep_1-3 + 80, 1, -4 );
setRotateKey( spep_1-3 + 89, 1, -4 );
setRotateKey( spep_1-3 + 90, 1, -43.7 );
setRotateKey( spep_1-3 + 92, 1, -32.2 );
setRotateKey( spep_1-3 + 94, 1, -20.7 );
setRotateKey( spep_1-3 + 99, 1, -20.7 );
setRotateKey( spep_1-3 + 100, 1, -4 );
setRotateKey( spep_1-3 + 109, 1, -4 );
setRotateKey( spep_1-3 + 110, 1, -43.7 );
setRotateKey( spep_1-3 + 112, 1, -37.2 );
setRotateKey( spep_1-3 + 114, 1, -30.7 );
setRotateKey( spep_1-3 + 119, 1, -30.7 );
setRotateKey( spep_1-3 + 120, 1, -4 );
setRotateKey( spep_1-3 + 129, 1, -4 );
setRotateKey( spep_1-3 + 130, 1, -31.8 );
setRotateKey( spep_1-3 + 133, 1, -35.9 );
setRotateKey( spep_1-3 + 134, 1, 1.3 );
setRotateKey( spep_1-3 + 136, 1, -0.6 );
setRotateKey( spep_1-3 + 138, 1, -1.8 );
setRotateKey( spep_1-3 + 140, 1, -2.6 );
setRotateKey( spep_1-3 + 142, 1, -3.2 );
setRotateKey( spep_1-3 + 144, 1, -3.5 );
setRotateKey( spep_1-3 + 146, 1, -3.8 );
setRotateKey( spep_1-3 + 148, 1, -3.9 );
setRotateKey( spep_1-3 + 150, 1, -4 );
setRotateKey( spep_1-3 + 161, 1, -4 );
setRotateKey( spep_1-3 + 162, 1, -20.3 );
setRotateKey( spep_1-3 + 164, 1, -20.3 );
setRotateKey( spep_1-3 + 166, 1, -20.1 );
setRotateKey( spep_1-3 + 168, 1, -18.8 );
setRotateKey( spep_1-3 + 170, 1, -14.1 );
setRotateKey( spep_1-3 + 172, 1, -1.4 );
setRotateKey( spep_1-3 + 174, 1, 26.8 );
setRotateKey( spep_1-3 + 184, 1, 26.8 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  914, 184, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 184, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 7.13, 1.72 );
setEffScaleKey( spep_1 + 184, ryusen1, 7.13, 1.72 );

setEffRotateKey( spep_1 + 0, ryusen1, 180 );
setEffRotateKey( spep_1 + 184, ryusen1, 180 );

setEffAlphaKey( spep_1 + 0, ryusen1, 128 );
setEffAlphaKey( spep_1 + 184, ryusen1, 128 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 24,  10005, 10, 0x100, -1, 0, 106.9, 190.6 );--ガッ

setEffShake( spep_1-3 + 24, ctga, 10, 20 );

setEffMoveKey( spep_1-3 + 24, ctga, 106.9, 190.6 , 0 );
setEffMoveKey( spep_1-3 + 26, ctga, 140.2, 233.7 , 0 );
setEffMoveKey( spep_1-3 + 28, ctga, 152.9, 241.3 , 0 );
setEffMoveKey( spep_1-3 + 30, ctga, 150.4, 250.1 , 0 );
setEffMoveKey( spep_1-3 + 32, ctga, 163.6, 254.9 , 0 );
setEffMoveKey( spep_1-3 + 34, ctga, 164.4, 256.9 , 0 );

setEffScaleKey( spep_1-3 + 24, ctga, 1.03, 1.03 );
setEffScaleKey( spep_1-3 + 26, ctga, 1.55, 1.54 );
setEffScaleKey( spep_1-3 + 28, ctga, 1.66, 1.64 );
setEffScaleKey( spep_1-3 + 30, ctga, 1.73, 1.71 );
setEffScaleKey( spep_1-3 + 32, ctga, 1.77, 1.75 );
setEffScaleKey( spep_1-3 + 34, ctga, 1.78, 1.76 );

setEffRotateKey( spep_1-3 + 24, ctga, 5 );
setEffRotateKey( spep_1-3 + 34, ctga, 5 );

setEffAlphaKey( spep_1-3 + 24, ctga, 255 );
setEffAlphaKey( spep_1-3 + 28, ctga, 255 );
setEffAlphaKey( spep_1-3 + 30, ctga, 113 );
setEffAlphaKey( spep_1-3 + 32, ctga, 28 );
setEffAlphaKey( spep_1-3 + 34, ctga, 0 );


--文字エントリー
ctgagaga = entryEffectLife( spep_1-3 + 40,  10017, 110, 0x100, -1, 0, 64.5, 202.8 );

setEffShake( spep_1-3 + 40, ctgagaga, 110, 20 );

setEffMoveKey( spep_1-3 + 40, ctgagaga, 64.5, 202.8 , 0 );
setEffMoveKey( spep_1-3 + 42, ctgagaga, -2.4, 295 , 0 );
setEffMoveKey( spep_1-3 + 44, ctgagaga, -5.7, 320.2 , 0 );
setEffMoveKey( spep_1-3 + 46, ctgagaga, -15.1, 297.6 , 0 );
setEffMoveKey( spep_1-3 + 48, ctgagaga, 1.5, 315.2 , 0 );
setEffMoveKey( spep_1-3 + 50, ctgagaga, -20.2, 305.5 , 0 );
setEffMoveKey( spep_1-3 + 52, ctgagaga, 1.1, 310.5 , 0 );
setEffMoveKey( spep_1-3 + 54, ctgagaga, -16.7, 310.7 , 0 );
setEffMoveKey( spep_1-3 + 56, ctgagaga, -4.8, 303.3 , 0 );
setEffMoveKey( spep_1-3 + 58, ctgagaga, -8.8, 311.1 , 0 );
setEffMoveKey( spep_1-3 + 60, ctgagaga, -15.2, 313 , 0 );
setEffMoveKey( spep_1-3 + 62, ctgagaga, 3.3, 317.8 , 0 );
setEffMoveKey( spep_1-3 + 64, ctgagaga, -16.2, 309.6 , 0 );
setEffMoveKey( spep_1-3 + 66, ctgagaga, -4.2, 304.2 , 0 );
setEffMoveKey( spep_1-3 + 68, ctgagaga, -21.2, 309.7 , 0 );
setEffMoveKey( spep_1-3 + 70, ctgagaga, -0.3, 301.1 , 0 );
setEffMoveKey( spep_1-3 + 72, ctgagaga, -17.2, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 74, ctgagaga, -1.7, 311.6 , 0 );
setEffMoveKey( spep_1-3 + 76, ctgagaga, -14.6, 316 , 0 );
setEffMoveKey( spep_1-3 + 78, ctgagaga, -3.3, 306.4 , 0 );
setEffMoveKey( spep_1-3 + 80, ctgagaga, -6.6, 319.2 , 0 );
setEffMoveKey( spep_1-3 + 82, ctgagaga, -9.3, 303.2 , 0 );
setEffMoveKey( spep_1-3 + 84, ctgagaga, -8, 320.2 , 0 );
setEffMoveKey( spep_1-3 + 86, ctgagaga, -17.3, 299.3 , 0 );
setEffMoveKey( spep_1-3 + 88, ctgagaga, 0.4, 316.8 , 0 );
setEffMoveKey( spep_1-3 + 90, ctgagaga, -15.7, 305.4 , 0 );
setEffMoveKey( spep_1-3 + 92, ctgagaga, -1, 316.3 , 0 );
setEffMoveKey( spep_1-3 + 94, ctgagaga, -10.2, 299.8 , 0 );
setEffMoveKey( spep_1-3 + 96, ctgagaga, -1, 316.3 , 0 );
setEffMoveKey( spep_1-3 + 98, ctgagaga, -18.8, 306.1 , 0 );
setEffMoveKey( spep_1-3 + 100, ctgagaga, -3.5, 316.8 , 0 );
setEffMoveKey( spep_1-3 + 102, ctgagaga, -10.5, 300.1 , 0 );
setEffMoveKey( spep_1-3 + 104, ctgagaga, -5.7, 320.2 , 0 );
setEffMoveKey( spep_1-3 + 106, ctgagaga, -15.1, 297.6 , 0 );
setEffMoveKey( spep_1-3 + 108, ctgagaga, 1.5, 315.2 , 0 );
setEffMoveKey( spep_1-3 + 110, ctgagaga, -20.2, 305.5 , 0 );
setEffMoveKey( spep_1-3 + 112, ctgagaga, 1.1, 310.5 , 0 );
setEffMoveKey( spep_1-3 + 114, ctgagaga, -16.7, 310.7 , 0 );
setEffMoveKey( spep_1-3 + 116, ctgagaga, -4.8, 303.3 , 0 );
setEffMoveKey( spep_1-3 + 118, ctgagaga, -8.8, 311.1 , 0 );
setEffMoveKey( spep_1-3 + 120, ctgagaga, -15.2, 313 , 0 );
setEffMoveKey( spep_1-3 + 122, ctgagaga, 3.3, 317.8 , 0 );
setEffMoveKey( spep_1-3 + 124, ctgagaga, -16.2, 309.6 , 0 );
setEffMoveKey( spep_1-3 + 126, ctgagaga, -4.2, 304.2 , 0 );
setEffMoveKey( spep_1-3 + 128, ctgagaga, -21.2, 309.7 , 0 );
setEffMoveKey( spep_1-3 + 130, ctgagaga, -0.3, 301.1 , 0 );
setEffMoveKey( spep_1-3 + 132, ctgagaga, -17.2, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 134, ctgagaga, -1.7, 311.6 , 0 );
setEffMoveKey( spep_1-3 + 136, ctgagaga, -14.6, 316 , 0 );
setEffMoveKey( spep_1-3 + 138, ctgagaga, -3.3, 306.4 , 0 );
setEffMoveKey( spep_1-3 + 140, ctgagaga, -6.6, 319.2 , 0 );
setEffMoveKey( spep_1-3 + 142, ctgagaga, -9.3, 303.2 , 0 );
setEffMoveKey( spep_1-3 + 144, ctgagaga, -8, 320.2 , 0 );
setEffMoveKey( spep_1-3 + 146, ctgagaga, -15, 337.1 , 0 );
setEffMoveKey( spep_1-3 + 148, ctgagaga, -12.1, 364.3 , 0 );
setEffMoveKey( spep_1-3 + 150, ctgagaga, -31.4, 383.8 , 0 );

setEffScaleKey( spep_1-3 + 40, ctgagaga, 1.92, 1.94 );
setEffScaleKey( spep_1-3 + 42, ctgagaga, 2.71, 2.75 );
setEffScaleKey( spep_1-3 + 44, ctgagaga, 2.87, 2.91 );
setEffScaleKey( spep_1-3 + 144, ctgagaga, 2.87, 2.91 );
setEffScaleKey( spep_1-3 + 146, ctgagaga, 3.04, 3.1 );
setEffScaleKey( spep_1-3 + 148, ctgagaga, 3.21, 3.28 );
setEffScaleKey( spep_1-3 + 150, ctgagaga, 3.38, 3.46 );

setEffRotateKey( spep_1-3 + 40, ctgagaga, -10 );
setEffRotateKey( spep_1-3 + 150, ctgagaga, -10 );

setEffAlphaKey( spep_1-3 + 40, ctgagaga, 255 );
setEffAlphaKey( spep_1-3 + 146, ctgagaga, 255 );
setEffAlphaKey( spep_1-3 + 148, ctgagaga, 128 );
setEffAlphaKey( spep_1-3 + 150, ctgagaga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 164,  10020, 13, 0x100, -1, 0, 202.8, 203.2 );

setEffShake( spep_1-3 + 164, ctbaki, 110, 20 );

setEffMoveKey( spep_1-3 + 164, ctbaki, 202.8, 203.2 , 0 );
setEffMoveKey( spep_1-3 + 166, ctbaki, 167.1, 252.2 , 0 );
setEffMoveKey( spep_1-3 + 168, ctbaki, 146.2, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 170, ctbaki, 135.7, 308.1 , 0 );
setEffMoveKey( spep_1-3 + 172, ctbaki, 148.4, 320.6 , 0 );
setEffMoveKey( spep_1-3 + 174, ctbaki, 137.3, 316.8 , 0 );
setEffMoveKey( spep_1-3 + 176, ctbaki, 138.1, 321.1 , 0 );

setEffScaleKey( spep_1-3 + 164, ctbaki, 1, 1 );
setEffScaleKey( spep_1-3 + 166, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1-3 + 168, ctbaki, 3.07, 3.07 );
setEffScaleKey( spep_1-3 + 170, ctbaki, 3.15, 3.15 );
setEffScaleKey( spep_1-3 + 172, ctbaki, 3.24, 3.24 );
setEffScaleKey( spep_1-3 + 174, ctbaki, 3.32, 3.32 );
setEffScaleKey( spep_1-3 + 176, ctbaki, 3.4, 3.4 );

setEffRotateKey( spep_1-3 + 164, ctbaki, 28.9 );
setEffRotateKey( spep_1-3 + 176, ctbaki, 28.9 );

setEffAlphaKey( spep_1-3 + 164, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 168, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 170, ctbaki, 191 );
setEffAlphaKey( spep_1-3 + 172, ctbaki, 128 );
setEffAlphaKey( spep_1-3 + 174, ctbaki, 64 );
setEffAlphaKey( spep_1-3 + 176, ctbaki, 0 );

--SE
playSe( spep_1 + 18, 1003 );
playSe( spep_1 + 20, 1189 );
playSe( spep_1 + 24, 1189 );
playSe( spep_1 + 26, 1000 );
playSe( spep_1 + 31, 1000 );
playSe( spep_1 + 37, 1189 );
playSe( spep_1 + 39, 1006 );
playSe( spep_1 + 45, 1009 );
playSe( spep_1 + 48, 1189 );
playSe( spep_1 + 55, 1000 );
playSe( spep_1 + 60, 1189 );
playSe( spep_1 + 67, 1000 );
playSe( spep_1 + 73, 1189 );
playSe( spep_1 + 75, 1006 );
playSe( spep_1 + 85, 1000 );
playSe( spep_1 + 89, 1189 );
playSe( spep_1 + 94, 1009 );
playSe( spep_1 + 105, 1189 );
playSe( spep_1 + 112, 1000 );
playSe( spep_1 + 124, 1006 );
playSe( spep_1 + 128, 1189 );
playSe( spep_1 + 134, 1000 );
playSe( spep_1 + 166, 1120 );

setSeVolume( spep_1 + 39, 1006, 79 );
setSeVolume( spep_1 + 45, 1009, 63 );
setSeVolume( spep_1 + 55, 1000, 89 );
setSeVolume( spep_1 + 67, 1000, 71 );
setSeVolume( spep_1 + 85, 1000, 126 );
setSeVolume( spep_1 + 112, 1000, 79 );

--集中線
entryFade( spep_1 + 178, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 186;

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
--抜刀
------------------------------------------------------
-- ** エフェクト等 ** --
espada = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, espada, 0, 0 , 0 );
setEffMoveKey( spep_3 + 102, espada, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, espada, 1.0, 1.0 );
setEffScaleKey( spep_3 + 102, espada, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, espada, 0 );
setEffRotateKey( spep_3 + 102, espada, 0 );
setEffAlphaKey( spep_3 + 0, espada, 255 );
setEffAlphaKey( spep_3 + 102, espada, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +12, 190006, 72, 0x100, -1, 0, -80, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +12,  ctgogo,  -80,  510,0);
setEffMoveKey(  spep_3 +84,  ctgogo,  -80,  510,0);

setEffAlphaKey( spep_3 +12, ctgogo, 0 );
setEffAlphaKey( spep_3 + 13, ctgogo, 255 );
setEffAlphaKey( spep_3 + 14, ctgogo, 255 );
setEffAlphaKey( spep_3 + 76, ctgogo, 255 );
setEffAlphaKey( spep_3 + 78, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 191 );
setEffAlphaKey( spep_3 + 82, ctgogo, 112 );
setEffAlphaKey( spep_3 + 84, ctgogo, 64 );

setEffRotateKey(  spep_3 +12,  ctgogo,  0);
setEffRotateKey(  spep_3 +84,  ctgogo,  0);

setEffScaleKey(  spep_3 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +72,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +84,  ctgogo, 1.07, 1.07 );

--集中線
entryFade( spep_3 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--SE
playSe( spep_3 + 10, 1061 );
playSe( spep_3 + 12, 1018 );
playSe( spep_3 + 25, 1048 );
playSe( spep_3 + 81, 1108 );
playSe( spep_3 + 82, 1107 );
playSe( spep_3 + 82, 1003 );
playSe( spep_3 + 97, 1035 );

setSeVolume( spep_3 + 82, 1003, 50 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 102;

------------------------------------------------------
--抜刀超サイヤ人になって手前突進
------------------------------------------------------
-- ** エフェクト等 ** --
ros2 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, ros2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, ros2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ros2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, ros2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ros2, 0 );
setEffRotateKey( spep_4 + 80, ros2, 0 );
setEffAlphaKey( spep_4 + 0, ros2, 255 );
setEffAlphaKey( spep_4 + 80, ros2, 255 );

se_1109 = playSe( spep_4 + 34, 1109 );
setSeVolume( spep_4 + 34, 1109, 0 );
setSeVolume( spep_4 + 44, 1109, 16 );
setSeVolume( spep_4 + 45, 1109, 32 );
setSeVolume( spep_4 + 46, 1109, 48 );
setSeVolume( spep_4 + 47, 1109, 64 );
setSeVolume( spep_4 + 48, 1109, 80 );
setSeVolume( spep_4 + 49, 1109, 100 );
se_0008 = playSe( spep_4 + 34, 8 );
playSe( spep_4 + 67, 1032 );
playSe( spep_4 + 67, 1141 );

stopSe( spep_4 + 44, se_1109, 5 );
stopSe( spep_4 + 73, se_0008, 0 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;


------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 200, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 200, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 200, finish_f, 255);

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 200, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 200, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 200, finish_b, 255);


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 59, 1, 0 );

changeAnime( spep_5 + 0, 1, 18 );

setMoveKey( spep_5 + 0, 1, 220.9, 27.9 , 0 );
setMoveKey( spep_5 + 60, 1, 220.9, 27.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 60, 1, 1.03, 1.03 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 60, 1, 0 );

--SE
playSe( spep_5 + 62, 1023 );
playSe( spep_5 + 62, 1159 );

setSeVolume( spep_5 + 62, 1159, 50 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 68 );

endPhase( spep_5 + 180 );

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--手前突進
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
ros = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, ros, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, ros, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ros, -1.0, 1.0 );
setEffScaleKey( spep_0 + 56, ros, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ros, 0 );
setEffRotateKey( spep_0 + 56, ros, 0 );
setEffAlphaKey( spep_0 + 0, ros, 255 );
setEffAlphaKey( spep_0 + 56, ros, 255 );

--SE
SE0=playSe( spep_0 + 0, 1182 );
SE1=playSe( spep_0 + 0, 9 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
--ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 186, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 186, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 186, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 186, fighting_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 184, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 18, 1, 104 );
changeAnime( spep_1-3 + 22, 1, 108 );
changeAnime( spep_1-3 + 28, 1, 106 );
changeAnime( spep_1-3 + 38, 1, 108 );
changeAnime( spep_1-3 + 50, 1, 106 );
changeAnime( spep_1-3 + 60, 1, 108 );
changeAnime( spep_1-3 + 70, 1, 106 );
changeAnime( spep_1-3 + 80, 1, 108 );
changeAnime( spep_1-3 + 90, 1, 106 );
changeAnime( spep_1-3 + 100, 1, 108 );
changeAnime( spep_1-3 + 110, 1, 106 );
changeAnime( spep_1-3 + 120, 1, 108 );
changeAnime( spep_1-3 + 130, 1, 106 );
changeAnime( spep_1-3 + 134, 1, 108 );
changeAnime( spep_1-3 + 162, 1, 106 );

setMoveKey( spep_1 + 0, 1, 595.4, -39.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 496.2, -35.7 , 0 );
setMoveKey( spep_1-3 + 4, 1, 408.6, -32 , 0 );
setMoveKey( spep_1-3 + 6, 1, 332.7, -28.8 , 0 );
setMoveKey( spep_1-3 + 8, 1, 268.4, -26.1 , 0 );
setMoveKey( spep_1-3 + 10, 1, 215.9, -23.9 , 0 );
setMoveKey( spep_1-3 + 12, 1, 175, -22.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 145.8, -20.9 , 0 );
setMoveKey( spep_1-3 + 17, 1, 128.3, -20.2 , 0 );
setMoveKey( spep_1-3 + 18, 1, 122.4, -19.9 , 0 );
setMoveKey( spep_1-3 + 21, 1, 122.4, -19.9 , 0 );
setMoveKey( spep_1-3 + 22, 1, 157.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 187.6, 41.6 , 0 );
setMoveKey( spep_1-3 + 27, 1, 145.6, -41.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, 123.9, 8.3 , 0 );
setMoveKey( spep_1-3 + 30, 1, 164.4, -25.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 180.9, 13.7 , 0 );
setMoveKey( spep_1-3 + 34, 1, 175.6, -8.3 , 0 );
setMoveKey( spep_1-3 + 37, 1, 177.3, 0.1 , 0 );
setMoveKey( spep_1-3 + 38, 1, 173.3, 17 , 0 );
setMoveKey( spep_1-3 + 40, 1, 208.2, 10.6 , 0 );
setMoveKey( spep_1-3 + 42, 1, 236.2, 17.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 270.5, 6.6 , 0 );
setMoveKey( spep_1-3 + 46, 1, 270.4, 15.7 , 0 );
setMoveKey( spep_1-3 + 49, 1, 269.5, 17.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 154.2, 1.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 157.6, -0.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, 150.8, 7.6 , 0 );
setMoveKey( spep_1-3 + 56, 1, 152.8, 0.5 , 0 );
setMoveKey( spep_1-3 + 59, 1, 159.3, -2.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 187.1, 11.5 , 0 );
setMoveKey( spep_1-3 + 62, 1, 191.6, 20 , 0 );
setMoveKey( spep_1-3 + 64, 1, 207.3, 20.3 , 0 );
setMoveKey( spep_1-3 + 66, 1, 222.9, 17.5 , 0 );
setMoveKey( spep_1-3 + 69, 1, 212.7, 24.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 166.1, 6.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 161.7, 1.1 , 0 );
setMoveKey( spep_1-3 + 74, 1, 174.3, -1.6 , 0 );
setMoveKey( spep_1-3 + 76, 1, 178.5, 0.9 , 0 );
setMoveKey( spep_1-3 + 79, 1, 170.8, -1.1 , 0 );
setMoveKey( spep_1-3 + 80, 1, 176.8, 19.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 203.2, 16.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 228.2, 19.1 , 0 );
setMoveKey( spep_1-3 + 86, 1, 233.7, 15.5 , 0 );
setMoveKey( spep_1-3 + 89, 1, 233.3, 13.2 , 0 );
setMoveKey( spep_1-3 + 90, 1, 154.5, 1.1 , 0 );
setMoveKey( spep_1-3 + 92, 1, 180.9, 3.7 , 0 );
setMoveKey( spep_1-3 + 94, 1, 196.5, -0.8 , 0 );
setMoveKey( spep_1-3 + 96, 1, 195.1, -1.5 , 0 );
setMoveKey( spep_1-3 + 99, 1, 197.3, 0.2 , 0 );
setMoveKey( spep_1-3 + 100, 1, 172.8, 16 , 0 );
setMoveKey( spep_1-3 + 102, 1, 199.7, 16.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, 233, 16.6 , 0 );
setMoveKey( spep_1-3 + 106, 1, 228.9, 14.4 , 0 );
setMoveKey( spep_1-3 + 109, 1, 228.5, 9.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 165.9, 10.7 , 0 );
setMoveKey( spep_1-3 + 112, 1, 165.1, 10.2 , 0 );
setMoveKey( spep_1-3 + 114, 1, 179.2, -1.9 , 0 );
setMoveKey( spep_1-3 + 116, 1, 169.3, 12.9 , 0 );
setMoveKey( spep_1-3 + 119, 1, 177.3, 0 , 0 );
setMoveKey( spep_1-3 + 120, 1, 177.7, 13.1 , 0 );
setMoveKey( spep_1-3 + 122, 1, 187.5, 17 , 0 );
setMoveKey( spep_1-3 + 124, 1, 216.7, 15.6 , 0 );
setMoveKey( spep_1-3 + 126, 1, 203.4, 13.8 , 0 );
setMoveKey( spep_1-3 + 129, 1, 213.9, 13.5 , 0 );
setMoveKey( spep_1-3 + 130, 1, 160.7, 8.1 , 0 );
setMoveKey( spep_1-3 + 133, 1, 218.9, -1.1 , 0 );
setMoveKey( spep_1-3 + 134, 1, 255.5, -2.9 , 0 );
setMoveKey( spep_1-3 + 136, 1, 262.8, -3.1 , 0 );
setMoveKey( spep_1-3 + 138, 1, 279.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 140, 1, 285.9, 0.2 , 0 );
setMoveKey( spep_1-3 + 142, 1, 290.4, 0.2 , 0 );
setMoveKey( spep_1-3 + 144, 1, 293.4, 0.2 , 0 );
setMoveKey( spep_1-3 + 146, 1, 295.3, 0.2 , 0 );
setMoveKey( spep_1-3 + 148, 1, 296.4, 0.2 , 0 );
setMoveKey( spep_1-3 + 150, 1, 297, 0.2 , 0 );
setMoveKey( spep_1-3 + 152, 1, 297.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 154, 1, 295.4, 0.2 , 0 );
setMoveKey( spep_1-3 + 156, 1, 282.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 158, 1, 246.6, 0.2 , 0 );
setMoveKey( spep_1-3 + 161, 1, 177.2, 0.2 , 0 );
setMoveKey( spep_1-3 + 162, 1, 136.3, 19.2 , 0 );
setMoveKey( spep_1-3 + 164, 1, 167.7, 64.4 , 0 );
setMoveKey( spep_1-3 + 166, 1, 172.5, 56.8 , 0 );
setMoveKey( spep_1-3 + 168, 1, 122.2, 38 , 0 );
setMoveKey( spep_1-3 + 170, 1, 262.3, 50.5 , 0 );
setMoveKey( spep_1-3 + 172, 1, 445, 25.5 , 0 );
setMoveKey( spep_1-3 + 174, 1, 999.3, -31.4 , 0 );
setMoveKey( spep_1-3 + 176, 1, 969.2, -45.8 , 0 );
setMoveKey( spep_1-3 + 178, 1, 951.4, -18.4 , 0 );
setMoveKey( spep_1-3 + 180, 1, 964.3, -34.1 , 0 );
setMoveKey( spep_1-3 + 182, 1, 966.4, -12.1 , 0 );
setMoveKey( spep_1-3 + 184, 1, 974.1, -24.9 , 0 );

setScaleKey( spep_1 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 184, 1, 1.7, 1.7 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 21, 1, 0 );
setRotateKey( spep_1-3 + 22, 1, -4 );
setRotateKey( spep_1-3 + 27, 1, -4 );
setRotateKey( spep_1-3 + 28, 1, -43.7 );
setRotateKey( spep_1-3 + 30, 1, -39.5 );
setRotateKey( spep_1-3 + 32, 1, -35.2 );
setRotateKey( spep_1-3 + 34, 1, -31 );
setRotateKey( spep_1-3 + 37, 1, -31 );
setRotateKey( spep_1-3 + 38, 1, -4 );
setRotateKey( spep_1-3 + 49, 1, -4 );
setRotateKey( spep_1-3 + 50, 1, -43.7 );
setRotateKey( spep_1-3 + 59, 1, -43.7 );
setRotateKey( spep_1-3 + 60, 1, -4 );
setRotateKey( spep_1-3 + 69, 1, -4 );
setRotateKey( spep_1-3 + 70, 1, -43.7 );
setRotateKey( spep_1-3 + 72, 1, -32.9 );
setRotateKey( spep_1-3 + 74, 1, -22.2 );
setRotateKey( spep_1-3 + 79, 1, -22.2 );
setRotateKey( spep_1-3 + 80, 1, -4 );
setRotateKey( spep_1-3 + 89, 1, -4 );
setRotateKey( spep_1-3 + 90, 1, -43.7 );
setRotateKey( spep_1-3 + 92, 1, -32.2 );
setRotateKey( spep_1-3 + 94, 1, -20.7 );
setRotateKey( spep_1-3 + 99, 1, -20.7 );
setRotateKey( spep_1-3 + 100, 1, -4 );
setRotateKey( spep_1-3 + 109, 1, -4 );
setRotateKey( spep_1-3 + 110, 1, -43.7 );
setRotateKey( spep_1-3 + 112, 1, -37.2 );
setRotateKey( spep_1-3 + 114, 1, -30.7 );
setRotateKey( spep_1-3 + 119, 1, -30.7 );
setRotateKey( spep_1-3 + 120, 1, -4 );
setRotateKey( spep_1-3 + 129, 1, -4 );
setRotateKey( spep_1-3 + 130, 1, -31.8 );
setRotateKey( spep_1-3 + 133, 1, -35.9 );
setRotateKey( spep_1-3 + 134, 1, 1.3 );
setRotateKey( spep_1-3 + 136, 1, -0.6 );
setRotateKey( spep_1-3 + 138, 1, -1.8 );
setRotateKey( spep_1-3 + 140, 1, -2.6 );
setRotateKey( spep_1-3 + 142, 1, -3.2 );
setRotateKey( spep_1-3 + 144, 1, -3.5 );
setRotateKey( spep_1-3 + 146, 1, -3.8 );
setRotateKey( spep_1-3 + 148, 1, -3.9 );
setRotateKey( spep_1-3 + 150, 1, -4 );
setRotateKey( spep_1-3 + 161, 1, -4 );
setRotateKey( spep_1-3 + 162, 1, -20.3 );
setRotateKey( spep_1-3 + 164, 1, -20.3 );
setRotateKey( spep_1-3 + 166, 1, -20.1 );
setRotateKey( spep_1-3 + 168, 1, -18.8 );
setRotateKey( spep_1-3 + 170, 1, -14.1 );
setRotateKey( spep_1-3 + 172, 1, -1.4 );
setRotateKey( spep_1-3 + 174, 1, 26.8 );
setRotateKey( spep_1-3 + 184, 1, 26.8 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  914, 184, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 184, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 7.13, 1.72 );
setEffScaleKey( spep_1 + 184, ryusen1, 7.13, 1.72 );

setEffRotateKey( spep_1 + 0, ryusen1, 180 );
setEffRotateKey( spep_1 + 184, ryusen1, 180 );

setEffAlphaKey( spep_1 + 0, ryusen1, 128 );
setEffAlphaKey( spep_1 + 184, ryusen1, 128 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 24,  10005, 10, 0x100, -1, 0, 106.9, 190.6 );--ガッ

setEffShake( spep_1-3 + 24, ctga, 10, 20 );

setEffMoveKey( spep_1-3 + 24, ctga, 106.9, 190.6 , 0 );
setEffMoveKey( spep_1-3 + 26, ctga, 140.2, 233.7 , 0 );
setEffMoveKey( spep_1-3 + 28, ctga, 152.9, 241.3 , 0 );
setEffMoveKey( spep_1-3 + 30, ctga, 150.4, 250.1 , 0 );
setEffMoveKey( spep_1-3 + 32, ctga, 163.6, 254.9 , 0 );
setEffMoveKey( spep_1-3 + 34, ctga, 164.4, 256.9 , 0 );

setEffScaleKey( spep_1-3 + 24, ctga, 1.03, 1.03 );
setEffScaleKey( spep_1-3 + 26, ctga, 1.55, 1.54 );
setEffScaleKey( spep_1-3 + 28, ctga, 1.66, 1.64 );
setEffScaleKey( spep_1-3 + 30, ctga, 1.73, 1.71 );
setEffScaleKey( spep_1-3 + 32, ctga, 1.77, 1.75 );
setEffScaleKey( spep_1-3 + 34, ctga, 1.78, 1.76 );

setEffRotateKey( spep_1-3 + 24, ctga, 5 );
setEffRotateKey( spep_1-3 + 34, ctga, 5 );

setEffAlphaKey( spep_1-3 + 24, ctga, 255 );
setEffAlphaKey( spep_1-3 + 28, ctga, 255 );
setEffAlphaKey( spep_1-3 + 30, ctga, 113 );
setEffAlphaKey( spep_1-3 + 32, ctga, 28 );
setEffAlphaKey( spep_1-3 + 34, ctga, 0 );


--文字エントリー
ctgagaga = entryEffectLife( spep_1-3 + 40,  10017, 110, 0x100, -1, 0, 64.5, 202.8 );

setEffShake( spep_1-3 + 40, ctgagaga, 110, 20 );

setEffMoveKey( spep_1-3 + 40, ctgagaga, 64.5, 202.8 , 0 );
setEffMoveKey( spep_1-3 + 42, ctgagaga, -2.4, 295 , 0 );
setEffMoveKey( spep_1-3 + 44, ctgagaga, -5.7, 320.2 , 0 );
setEffMoveKey( spep_1-3 + 46, ctgagaga, -15.1, 297.6 , 0 );
setEffMoveKey( spep_1-3 + 48, ctgagaga, 1.5, 315.2 , 0 );
setEffMoveKey( spep_1-3 + 50, ctgagaga, -20.2, 305.5 , 0 );
setEffMoveKey( spep_1-3 + 52, ctgagaga, 1.1, 310.5 , 0 );
setEffMoveKey( spep_1-3 + 54, ctgagaga, -16.7, 310.7 , 0 );
setEffMoveKey( spep_1-3 + 56, ctgagaga, -4.8, 303.3 , 0 );
setEffMoveKey( spep_1-3 + 58, ctgagaga, -8.8, 311.1 , 0 );
setEffMoveKey( spep_1-3 + 60, ctgagaga, -15.2, 313 , 0 );
setEffMoveKey( spep_1-3 + 62, ctgagaga, 3.3, 317.8 , 0 );
setEffMoveKey( spep_1-3 + 64, ctgagaga, -16.2, 309.6 , 0 );
setEffMoveKey( spep_1-3 + 66, ctgagaga, -4.2, 304.2 , 0 );
setEffMoveKey( spep_1-3 + 68, ctgagaga, -21.2, 309.7 , 0 );
setEffMoveKey( spep_1-3 + 70, ctgagaga, -0.3, 301.1 , 0 );
setEffMoveKey( spep_1-3 + 72, ctgagaga, -17.2, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 74, ctgagaga, -1.7, 311.6 , 0 );
setEffMoveKey( spep_1-3 + 76, ctgagaga, -14.6, 316 , 0 );
setEffMoveKey( spep_1-3 + 78, ctgagaga, -3.3, 306.4 , 0 );
setEffMoveKey( spep_1-3 + 80, ctgagaga, -6.6, 319.2 , 0 );
setEffMoveKey( spep_1-3 + 82, ctgagaga, -9.3, 303.2 , 0 );
setEffMoveKey( spep_1-3 + 84, ctgagaga, -8, 320.2 , 0 );
setEffMoveKey( spep_1-3 + 86, ctgagaga, -17.3, 299.3 , 0 );
setEffMoveKey( spep_1-3 + 88, ctgagaga, 0.4, 316.8 , 0 );
setEffMoveKey( spep_1-3 + 90, ctgagaga, -15.7, 305.4 , 0 );
setEffMoveKey( spep_1-3 + 92, ctgagaga, -1, 316.3 , 0 );
setEffMoveKey( spep_1-3 + 94, ctgagaga, -10.2, 299.8 , 0 );
setEffMoveKey( spep_1-3 + 96, ctgagaga, -1, 316.3 , 0 );
setEffMoveKey( spep_1-3 + 98, ctgagaga, -18.8, 306.1 , 0 );
setEffMoveKey( spep_1-3 + 100, ctgagaga, -3.5, 316.8 , 0 );
setEffMoveKey( spep_1-3 + 102, ctgagaga, -10.5, 300.1 , 0 );
setEffMoveKey( spep_1-3 + 104, ctgagaga, -5.7, 320.2 , 0 );
setEffMoveKey( spep_1-3 + 106, ctgagaga, -15.1, 297.6 , 0 );
setEffMoveKey( spep_1-3 + 108, ctgagaga, 1.5, 315.2 , 0 );
setEffMoveKey( spep_1-3 + 110, ctgagaga, -20.2, 305.5 , 0 );
setEffMoveKey( spep_1-3 + 112, ctgagaga, 1.1, 310.5 , 0 );
setEffMoveKey( spep_1-3 + 114, ctgagaga, -16.7, 310.7 , 0 );
setEffMoveKey( spep_1-3 + 116, ctgagaga, -4.8, 303.3 , 0 );
setEffMoveKey( spep_1-3 + 118, ctgagaga, -8.8, 311.1 , 0 );
setEffMoveKey( spep_1-3 + 120, ctgagaga, -15.2, 313 , 0 );
setEffMoveKey( spep_1-3 + 122, ctgagaga, 3.3, 317.8 , 0 );
setEffMoveKey( spep_1-3 + 124, ctgagaga, -16.2, 309.6 , 0 );
setEffMoveKey( spep_1-3 + 126, ctgagaga, -4.2, 304.2 , 0 );
setEffMoveKey( spep_1-3 + 128, ctgagaga, -21.2, 309.7 , 0 );
setEffMoveKey( spep_1-3 + 130, ctgagaga, -0.3, 301.1 , 0 );
setEffMoveKey( spep_1-3 + 132, ctgagaga, -17.2, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 134, ctgagaga, -1.7, 311.6 , 0 );
setEffMoveKey( spep_1-3 + 136, ctgagaga, -14.6, 316 , 0 );
setEffMoveKey( spep_1-3 + 138, ctgagaga, -3.3, 306.4 , 0 );
setEffMoveKey( spep_1-3 + 140, ctgagaga, -6.6, 319.2 , 0 );
setEffMoveKey( spep_1-3 + 142, ctgagaga, -9.3, 303.2 , 0 );
setEffMoveKey( spep_1-3 + 144, ctgagaga, -8, 320.2 , 0 );
setEffMoveKey( spep_1-3 + 146, ctgagaga, -15, 337.1 , 0 );
setEffMoveKey( spep_1-3 + 148, ctgagaga, -12.1, 364.3 , 0 );
setEffMoveKey( spep_1-3 + 150, ctgagaga, -31.4, 383.8 , 0 );

setEffScaleKey( spep_1-3 + 40, ctgagaga, 1.92, 1.94 );
setEffScaleKey( spep_1-3 + 42, ctgagaga, 2.71, 2.75 );
setEffScaleKey( spep_1-3 + 44, ctgagaga, 2.87, 2.91 );
setEffScaleKey( spep_1-3 + 144, ctgagaga, 2.87, 2.91 );
setEffScaleKey( spep_1-3 + 146, ctgagaga, 3.04, 3.1 );
setEffScaleKey( spep_1-3 + 148, ctgagaga, 3.21, 3.28 );
setEffScaleKey( spep_1-3 + 150, ctgagaga, 3.38, 3.46 );

setEffRotateKey( spep_1-3 + 40, ctgagaga, 10 );
setEffRotateKey( spep_1-3 + 150, ctgagaga, 10 );

setEffAlphaKey( spep_1-3 + 40, ctgagaga, 255 );
setEffAlphaKey( spep_1-3 + 146, ctgagaga, 255 );
setEffAlphaKey( spep_1-3 + 148, ctgagaga, 128 );
setEffAlphaKey( spep_1-3 + 150, ctgagaga, 0 );


--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 164,  10020, 13, 0x100, -1, 0, 202.8, 203.2 );

setEffShake( spep_1-3 + 164, ctbaki, 110, 20 );

setEffMoveKey( spep_1-3 + 164, ctbaki, 202.8, 203.2 , 0 );
setEffMoveKey( spep_1-3 + 166, ctbaki, 167.1, 252.2 , 0 );
setEffMoveKey( spep_1-3 + 168, ctbaki, 146.2, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 170, ctbaki, 135.7, 308.1 , 0 );
setEffMoveKey( spep_1-3 + 172, ctbaki, 148.4, 320.6 , 0 );
setEffMoveKey( spep_1-3 + 174, ctbaki, 137.3, 316.8 , 0 );
setEffMoveKey( spep_1-3 + 176, ctbaki, 138.1, 321.1 , 0 );

setEffScaleKey( spep_1-3 + 164, ctbaki, 1, 1 );
setEffScaleKey( spep_1-3 + 166, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1-3 + 168, ctbaki, 3.07, 3.07 );
setEffScaleKey( spep_1-3 + 170, ctbaki, 3.15, 3.15 );
setEffScaleKey( spep_1-3 + 172, ctbaki, 3.24, 3.24 );
setEffScaleKey( spep_1-3 + 174, ctbaki, 3.32, 3.32 );
setEffScaleKey( spep_1-3 + 176, ctbaki, 3.4, 3.4 );

setEffRotateKey( spep_1-3 + 164, ctbaki, -28.9 );
setEffRotateKey( spep_1-3 + 176, ctbaki, -28.9 );

setEffAlphaKey( spep_1-3 + 164, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 168, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 170, ctbaki, 191 );
setEffAlphaKey( spep_1-3 + 172, ctbaki, 128 );
setEffAlphaKey( spep_1-3 + 174, ctbaki, 64 );
setEffAlphaKey( spep_1-3 + 176, ctbaki, 0 );

--SE
playSe( spep_1 + 18, 1003 );
playSe( spep_1 + 20, 1189 );
playSe( spep_1 + 24, 1189 );
playSe( spep_1 + 26, 1000 );
playSe( spep_1 + 31, 1000 );
playSe( spep_1 + 37, 1189 );
playSe( spep_1 + 39, 1006 );
playSe( spep_1 + 45, 1009 );
playSe( spep_1 + 48, 1189 );
playSe( spep_1 + 55, 1000 );
playSe( spep_1 + 60, 1189 );
playSe( spep_1 + 67, 1000 );
playSe( spep_1 + 73, 1189 );
playSe( spep_1 + 75, 1006 );
playSe( spep_1 + 85, 1000 );
playSe( spep_1 + 89, 1189 );
playSe( spep_1 + 94, 1009 );
playSe( spep_1 + 105, 1189 );
playSe( spep_1 + 112, 1000 );
playSe( spep_1 + 124, 1006 );
playSe( spep_1 + 128, 1189 );
playSe( spep_1 + 134, 1000 );
playSe( spep_1 + 166, 1120 );

setSeVolume( spep_1 + 39, 1006, 79 );
setSeVolume( spep_1 + 45, 1009, 63 );
setSeVolume( spep_1 + 55, 1000, 89 );
setSeVolume( spep_1 + 67, 1000, 71 );
setSeVolume( spep_1 + 85, 1000, 126 );
setSeVolume( spep_1 + 112, 1000, 79 );

--集中線
entryFade( spep_1 + 178, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 186;

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
--抜刀
------------------------------------------------------
-- ** エフェクト等 ** --
espada = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, espada, 0, 0 , 0 );
setEffMoveKey( spep_3 + 102, espada, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, espada, -1.0, 1.0 );
setEffScaleKey( spep_3 + 102, espada, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, espada, 0 );
setEffRotateKey( spep_3 + 102, espada, 0 );
setEffAlphaKey( spep_3 + 0, espada, 255 );
setEffAlphaKey( spep_3 + 102, espada, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +12, 190006, 72, 0x100, -1, 0, 120, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +12,  ctgogo,  120,  510,0);
setEffMoveKey(  spep_3 +84,  ctgogo,  120,  510,0);

setEffAlphaKey( spep_3 +12, ctgogo, 0 );
setEffAlphaKey( spep_3 + 13, ctgogo, 255 );
setEffAlphaKey( spep_3 + 14, ctgogo, 255 );
setEffAlphaKey( spep_3 + 76, ctgogo, 255 );
setEffAlphaKey( spep_3 + 78, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 191 );
setEffAlphaKey( spep_3 + 82, ctgogo, 112 );
setEffAlphaKey( spep_3 + 84, ctgogo, 64 );

setEffRotateKey(  spep_3 +12,  ctgogo,  0);
setEffRotateKey(  spep_3 +84,  ctgogo,  0);

setEffScaleKey(  spep_3 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +72,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +84,  ctgogo, -1.07, 1.07 );

--集中線
entryFade( spep_3 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--SE
playSe( spep_3 + 10, 1061 );
playSe( spep_3 + 12, 1018 );
playSe( spep_3 + 25, 1048 );
playSe( spep_3 + 81, 1108 );
playSe( spep_3 + 82, 1107 );
playSe( spep_3 + 82, 1003 );
playSe( spep_3 + 97, 1035 );

setSeVolume( spep_3 + 82, 1003, 50 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 102;

------------------------------------------------------
--抜刀超サイヤ人になって手前突進
------------------------------------------------------
-- ** エフェクト等 ** --
ros2 = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, ros2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, ros2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ros2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 80, ros2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ros2, 0 );
setEffRotateKey( spep_4 + 80, ros2, 0 );
setEffAlphaKey( spep_4 + 0, ros2, 255 );
setEffAlphaKey( spep_4 + 80, ros2, 255 );

se_1109 = playSe( spep_4 + 34, 1109 );
setSeVolume( spep_4 + 34, 1109, 0 );
setSeVolume( spep_4 + 44, 1109, 16 );
setSeVolume( spep_4 + 45, 1109, 32 );
setSeVolume( spep_4 + 46, 1109, 48 );
setSeVolume( spep_4 + 47, 1109, 64 );
setSeVolume( spep_4 + 48, 1109, 80 );
setSeVolume( spep_4 + 49, 1109, 100 );
se_0008 = playSe( spep_4 + 34, 8 );
playSe( spep_4 + 67, 1032 );
playSe( spep_4 + 67, 1141 );

stopSe( spep_4 + 44, se_1109, 5 );
stopSe( spep_4 + 73, se_0008, 0 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;


------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 200, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 200, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 200, finish_f, 255);

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 200, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 200, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 200, finish_b, 255);


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 59, 1, 0 );

changeAnime( spep_5 + 0, 1, 118 );

setMoveKey( spep_5 + 0, 1, -220.9, 27.9 , 0 );
setMoveKey( spep_5 + 60, 1, -220.9, 27.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 60, 1, 1.03, 1.03 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 60, 1, 0 );

--SE
playSe( spep_5 + 62, 1023 );
playSe( spep_5 + 62, 1159 );

setSeVolume( spep_5 + 62, 1159, 50 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 68 );

endPhase( spep_5 + 180 );

end
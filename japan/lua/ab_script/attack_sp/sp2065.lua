--1020590:フリーザ(最終形態)(天使)_デスビーム
--sp_effect_a3_00071

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
SP_01=	156079	;--	見上げてからジャンプ。敵より手前
SP_02=	156080	;--	見上げてからジャンプ。敵より奥
SP_03=	156081	;--	連打攻撃。敵より手前
SP_04=	156082	;--	連打攻撃。敵より奥
SP_05=	156083	;--	指先に溜め、セリフカットイン
SP_06=	156084	;--	指先からビーム発射
SP_07=	156085	;--	敵にビームが迫る。敵より手前
SP_08=	156086	;--	敵にビームが迫る。敵より奥
SP_09=	156087	;--	爆破
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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 見上げてからジャンプ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
jump_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 46, jump_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump_f, 0 );
setEffRotateKey( spep_0 + 46, jump_f, 0 );
setEffAlphaKey( spep_0 + 0, jump_f, 255 );
setEffAlphaKey( spep_0 + 44, jump_f, 255 );
setEffAlphaKey( spep_0 + 45, jump_f, 255 );
setEffAlphaKey( spep_0 + 46, jump_f, 0 );

-- ** エフェクト等 ** --
jump_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 46, jump_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump_b, 0 );
setEffRotateKey( spep_0 + 46, jump_b, 0 );
setEffAlphaKey( spep_0 + 0, jump_b, 255 );
setEffAlphaKey( spep_0 + 44, jump_b, 255 );
setEffAlphaKey( spep_0 + 45, jump_b, 255 );
setEffAlphaKey( spep_0 + 46, jump_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 1, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 2, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 3, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 4, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 5, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 6, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0-3 + 8, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0-3 + 10, 1, 222.3, 316.6 , 0 );
setMoveKey( spep_0-3 + 12, 1, 222.9, 317.4 , 0 );
setMoveKey( spep_0-3 + 14, 1, 223.4, 318.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, 224, 319 , 0 );
setMoveKey( spep_0-3 + 18, 1, 224.5, 319.8 , 0 );
setMoveKey( spep_0-3 + 20, 1, 225.1, 320.6 , 0 );
setMoveKey( spep_0-3 + 22, 1, 225.6, 321.4 , 0 );
setMoveKey( spep_0-3 + 24, 1, 226.2, 322.2 , 0 );
setMoveKey( spep_0-3 + 26, 1, 226.8, 323 , 0 );
setMoveKey( spep_0-3 + 28, 1, 226.8, 306.9 , 0 );
setMoveKey( spep_0-3 + 30, 1, 220.9, 333.5 , 0 );
setMoveKey( spep_0-3 + 32, 1, 193.5, 301.2 , 0 );


a=0.15;

setScaleKey( spep_0 + 0, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 1, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 2, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 3, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 4, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 5, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 6, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 30, 1, 0.22+a, 0.22+a );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );

--SE
--ジャンプ
SE001 =playSe( spep_0 + 12 , 1170 );
setSeVolumeByWorkId( spep_0 + 12 , SE001 , 43 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 48, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
   
    pauseAll( SP_dodge, 67 );

    --敵の動き
    setMoveKey( SP_dodge + 8, 1, 193.5, 301.2 , 0 );
    setScaleKey( SP_dodge + 8, 1, 0.22+a, 0.22+a );
    setRotateKey( SP_dodge + 8, 1, 0 );

    setMoveKey( SP_dodge + 9, 1, 193.5, 301.2 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.22+a, 0.22+a );
    setRotateKey( SP_dodge + 9, 1, 0 );


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
--敵の動き
setDisp( spep_0 + 46, 1, 0 );

setMoveKey( spep_0-3 + 34, 1, 209, 290.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 203.1, 279.5 , 0 );
setMoveKey( spep_0-3 + 38, 1, 197.2, 268.6 , 0 );
setMoveKey( spep_0-3 + 40, 1, 191.3, 257.7 , 0 );
setMoveKey( spep_0-3 + 42, 1, 185.4, 246.9 , 0 );
setMoveKey( spep_0-3 + 44, 1, 179.5, 236 , 0 );
setMoveKey( spep_0-3 + 46, 1, 173.6, 225.1 , 0 );
setMoveKey( spep_0-3 + 48, 1, 167.7, 214.3 , 0 );

setScaleKey( spep_0-3 + 36, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0-3 + 38, 1, 0.21+a, 0.21+a );
setScaleKey( spep_0 + 46, 1, 0.21+a, 0.21+a );
--setScaleKey( spep_0 + 46, 1, 0.2+a, 0.2+a );

setRotateKey( spep_0 + 46, 1, 0 );

--SE
--ジャンプ
stopSe( spep_0 + 24, SE001, 10);
SE002 =playSe( spep_0 + 26 , 9 );

--次の準備
spep_1=spep_0+46;
------------------------------------------------------
-- 連打攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, panting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_f, 0 );
setEffRotateKey( spep_1 + 160, panting_f, 0 );
setEffAlphaKey( spep_1 + 0, panting_f, 255 );
setEffAlphaKey( spep_1 + 160, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, panting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_b, 0 );
setEffRotateKey( spep_1 + 160, panting_b, 0 );
setEffAlphaKey( spep_1 + 0, panting_b, 255 );
setEffAlphaKey( spep_1 + 160, panting_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 132, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 30, 1, 108 );
changeAnime( spep_1-3 + 44, 1, 106 );
changeAnime( spep_1-3 + 50, 1, 108 );
changeAnime( spep_1-3 + 60, 1, 106 );
changeAnime( spep_1-3 + 70, 1, 108 );
changeAnime( spep_1-3 + 78, 1, 106 );
changeAnime( spep_1-3 + 84, 1, 108 );
changeAnime( spep_1-3 + 118, 1, 107 );

b=40;
c=60;
d=70;
setMoveKey( spep_1 + 0, 1, 599.2+b, 625 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 567.7, 593.5 , 0 );
setMoveKey( spep_1-3 + 4, 1, 536+b, 561.8 , 0 );
setMoveKey( spep_1-3 + 6, 1, 503.9+b, 529.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 471.7+b, 497.3 , 0 );
setMoveKey( spep_1-3 + 10, 1, 439.3+b, 464.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, 407.1+b, 432.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 375+b, 399.5 , 0 );
setMoveKey( spep_1-3 + 16, 1, 343+b, 366.9 , 0 );
setMoveKey( spep_1-3 + 18, 1, 311.2+b, 334.4 , 0 );
setMoveKey( spep_1-3 + 20, 1, 279.9+b, 302 , 0 );
setMoveKey( spep_1-3 + 22, 1, 248.9+b, 269.8 , 0 );
setMoveKey( spep_1-3 + 24, 1, 218.3+b, 237.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 188.1+b, 205.9 , 0 );
setMoveKey( spep_1-3 + 29, 1, 158.4+b, 174.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 106.4+b, 175.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 79.4+b, 145.6 , 0 );
setMoveKey( spep_1-3 + 34, 1, 53.6+b, 126.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, 33.1+b, 111.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, 12.5+b, 91.2 , 0 );
setMoveKey( spep_1-3 + 40, 1, 13+b, 91.8 , 0 );
setMoveKey( spep_1-3 + 43, 1, 13.5+b, 92.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 85-c, 78.4+d , 0 );
setMoveKey( spep_1-3 + 46, 1, 77-c, 74.6+d , 0 );
setMoveKey( spep_1-3 + 49, 1, 77.5-c, 74.9+d , 0 );
setMoveKey( spep_1-3 + 50, 1, 20.3+b, 89.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 17.5+b, 83.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, 14.6+b, 87 , 0 );
setMoveKey( spep_1-3 + 56, 1, 15.9+b, 94.6 , 0 );
setMoveKey( spep_1-3 + 59, 1, 16.2+b, 94.9 , 0 );
setMoveKey( spep_1-3 + 60, 1, 85.5-c, 81.7+d , 0 );
setMoveKey( spep_1-3 + 62, 1, 85.9-c, 87.2+d , 0 );
setMoveKey( spep_1-3 + 64, 1, 85.6-c, 77.9+d , 0 );
setMoveKey( spep_1-3 + 66, 1, 81.8-c, 82.6+d , 0 );
setMoveKey( spep_1-3 + 69, 1, 85.9-c, 78.3+d , 0 );
setMoveKey( spep_1-3 + 70, 1, 22.1+b, 92.1 , 0 );
setMoveKey( spep_1-3 + 72, 1, 19.9+b, 85.6 , 0 );
setMoveKey( spep_1-3 + 74, 1, 16.5+b, 88.5 , 0 );
setMoveKey( spep_1-3 + 77, 1, 19.7+b, 88.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 86.7-c, 83.3+d , 0 );
setMoveKey( spep_1-3 + 80, 1, 86.2-c, 88.5+d , 0 );
setMoveKey( spep_1-3 + 83, 1, 87.3-c, 79.4+d , 0 );
setMoveKey( spep_1-3 + 84, 1, 18.5+b, 83.8 , 0 );
setMoveKey( spep_1-3 + 86, 1, 15.2+b, 84.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 20.7+b, 81.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, 15.7+b, 87.4 , 0 );
setMoveKey( spep_1-3 + 92, 1, 15+b, 85 , 0 );
setMoveKey( spep_1-3 + 94, 1, 14.3+b, 82.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 13.7+b, 80.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, 13.1+b, 77.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 12.5+b, 74.7 , 0 );
setMoveKey( spep_1-3 + 102, 1, 12.1+b, 71.5 , 0 );
setMoveKey( spep_1-3 + 104, 1, 11.8+b, 68 , 0 );
setMoveKey( spep_1-3 + 106, 1, 11.7+b, 64 , 0 );
setMoveKey( spep_1-3 + 108, 1, 11.7+b, 59.5 , 0 );
setMoveKey( spep_1-3 + 110, 1, 11.9+b, 54.3 , 0 );
setMoveKey( spep_1-3 + 112, 1, 12.4+b, 48.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, 13.1+b, 41.9 , 0 );
setMoveKey( spep_1-3 + 117, 1, 14.1+b, 34.5 , 0 );
setMoveKey( spep_1-3 + 118, 1, 108.3+b, -121.3 , 0 );
setMoveKey( spep_1-3 + 120, 1, 518.5+b, -714.6 , 0 );
setMoveKey( spep_1-3 + 122, 1, 610.8+b, -873.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 713+b, -1015.7 , 0 );
setMoveKey( spep_1-3 + 126, 1, 765.7+b, -1075.2 , 0 );
setMoveKey( spep_1-3 + 128, 1, 806.4+b, -1137.2 , 0 );
setMoveKey( spep_1-3 + 130, 1, 814.7+b, -1167.2 , 0 );
setMoveKey( spep_1-3 + 132, 1, 827.1+b, -1177 , 0 );

e=1.1;
g=0.2;

setScaleKey( spep_1 + 0, 1, 1+e, 1+e );
setScaleKey( spep_1 + 2, 1, 1+e, 1+e );
setScaleKey( spep_1-3 + 117, 1, 1+e, 1+e );
setScaleKey( spep_1-3 + 118, 1, 0.8, 0.8 );
--setScaleKey( spep_1-3 + 120, 1, 1.98, 1.98 );
--setScaleKey( spep_1-3 + 122, 1, 2.33, 2.33 );
setScaleKey( spep_1-3 + 124, 1, 2.56+g, 2.56+g );
setScaleKey( spep_1-3 + 126, 1, 2.72+g, 2.72+g );
setScaleKey( spep_1-3 + 128, 1, 2.82+g, 2.82+g );
setScaleKey( spep_1-3 + 130, 1, 2.88+g, 2.88+g );
setScaleKey( spep_1-3 + 132, 1, 2.9+g, 2.9+g );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 43, 1, 0 );
setRotateKey( spep_1-3 + 44, 1, -39.7 );
setRotateKey( spep_1-3 + 49, 1, -39.7 );
setRotateKey( spep_1-3 + 50, 1, 0 );
setRotateKey( spep_1-3 + 59, 1, 0 );
setRotateKey( spep_1-3 + 60, 1, -36.7 );
setRotateKey( spep_1-3 + 69, 1, -36.7 );
setRotateKey( spep_1-3 + 70, 1, -6.7 );
setRotateKey( spep_1-3 + 77, 1, -6.7 );
setRotateKey( spep_1-3 + 78, 1, -44.9 );
setRotateKey( spep_1-3 + 83, 1, -44.9 );
setRotateKey( spep_1-3 + 84, 1, 7.2 );
setRotateKey( spep_1-3 + 117, 1, 7.2 );
setRotateKey( spep_1-3 + 118, 1, 0 );
setRotateKey( spep_1-3 + 132, 1, 0 );

--SE
--ラッシュ
SE003 =playSe( spep_1 + 28 , 1189 );
SE004 =playSe( spep_1 + 32 , 1000 );
SE005 =playSe( spep_1 + 32 , 1110 );
SE006 =playSe( spep_1 + 48 , 1110 );
SE007 =playSe( spep_1 + 48 , 1010 );
setSeVolumeByWorkId( spep_1 + 48 , SE007 , 62 );
SE008 =playSe( spep_1 + 58 , 1110 );
setSeVolumeByWorkId( spep_1 + 58 , SE008 , 75 );
SE009 =playSe( spep_1 + 66 , 1009 );
setSeVolumeByWorkId( spep_1 + 66 , SE009 , 53 );
SE010 =playSe( spep_1 + 66 , 1110 );
setSeVolumeByWorkId( spep_1 + 66 , SE010 , 87 );
SE011 =playSe( spep_1 + 74 , 1110 );
setSeVolumeByWorkId( spep_1 + 74 , SE011 , 97 );
SE012 =playSe( spep_1 + 76 , 1012 );
setSeVolumeByWorkId( spep_1 + 76 , SE012 , 60 );
SE013 =playSe( spep_1 + 84 , 1110 );
setSeVolumeByWorkId( spep_1 + 84 , SE013 , 86 );

--くるっ
SE014 =playSe( spep_1 + 88 , 1151 );
SE015 =playSe( spep_1 + 92 , 1117 );
stopSe( spep_1 + 104, SE015, 8);

--蹴り
SE016 =playSe( spep_1 + 112 , 1003 );
setSeVolumeByWorkId( spep_1 + 112 , SE016 , 68 );
SE017 =playSe( spep_1 + 118 , 1187 );
setSeVolumeByWorkId( spep_1 + 118 , SE017 , 77 );
SE018 =playSe( spep_1 + 120 , 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 162, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+154 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+158;
------------------------------------------------------
-- 指先に溜め、セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 86, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 86, tame, 255 );
setEffAlphaKey( spep_2 + 87, tame, 0 );
setEffAlphaKey( spep_2 + 88, tame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 ,1000);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0 ,1000);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x102, -1, 0, 180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,   180,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,   180,  510);

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
setEffScaleKey(  spep_2 +84,  ctgogo, 1.07, 1.07 )

--SE
--気弾溜め
SE019 =playSe( spep_2 + 0 , 1144 );
setSeVolumeByWorkId( spep_2 + 0 , SE019 , 73 );
setTimeStretch( SE019, 0.72, 10, 1 );
SE020 =playSe( spep_2 + 0 , 1262 );
setSeVolumeByWorkId( spep_2 + 0 , SE020 , 135 );
setTimeStretch( SE020, 1.25, 10, 1 );

--顔カットイン
SE021 =playSe( spep_2 + 12 , 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2+80 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+86;
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

--白フェード
entryFade( spep_3 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 指先からビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 30, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 30, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 30, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 30, beam, 255 )
setEffAlphaKey( spep_4 + 31, beam, 0 )
setEffAlphaKey( spep_4 + 32, beam, 0 );

--SE
--気弾発射
SE023 =playSe( spep_4 + 18 , 1027 );
setSeVolumeByWorkId( spep_4 + 18 , SE023 , 66 );
SE024 =playSe( spep_4 + 18 , 1021 );
setSeVolumeByWorkId( spep_4 + 18 , SE024 , 68 );
SE025 =playSe( spep_4 + 18 , 1177 );
setSeVolumeByWorkId( spep_4 + 18 , SE025 , 97 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 32, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 30;
------------------------------------------------------
-- 敵にビームが迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 46, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 46, hit_f, 255 )

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 46, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 46, hit_b, 255 )

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 46, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 78.6, 128.8 , 0 );
setMoveKey( spep_5 + 2, 1, 83.2, 133.7 , 0 );
setMoveKey( spep_5 + 4, 1, 87.9, 138.6 , 0 );
setMoveKey( spep_5 + 6, 1, 92.5, 143.4 , 0 );
setMoveKey( spep_5 + 8, 1, 97.2, 148.3 , 0 );
setMoveKey( spep_5 + 10, 1, 101.8, 153.1 , 0 );
setMoveKey( spep_5 + 12, 1, 106.5, 158 , 0 );
setMoveKey( spep_5 + 14, 1, 111.1, 162.8 , 0 );
setMoveKey( spep_5 + 16, 1, 115.8, 167.7 , 0 );
setMoveKey( spep_5 + 18, 1, 120.4, 172.5 , 0 );
setMoveKey( spep_5 + 20, 1, 125.1, 177.4 , 0 );
setMoveKey( spep_5 + 22, 1, 129.8, 182.3 , 0 );
setMoveKey( spep_5 + 24, 1, 134.4, 187.1 , 0 );
setMoveKey( spep_5 + 26, 1, 139.1, 192 , 0 );
setMoveKey( spep_5 + 28, 1, 143.7, 196.8 , 0 );
setMoveKey( spep_5 + 30, 1, 148.4, 201.7 , 0 );
setMoveKey( spep_5 + 32, 1, 153, 206.5 , 0 );
setMoveKey( spep_5 + 34, 1, 157.7, 211.4 , 0 );
setMoveKey( spep_5 + 36, 1, 162.4, 216.3 , 0 );
setMoveKey( spep_5 + 38, 1, 158.5, 212.4 , 0 );
setMoveKey( spep_5 + 40, 1, 154.6, 208.5 , 0 );
setMoveKey( spep_5 + 42, 1, 150.7, 204.6 , 0 );
setMoveKey( spep_5 + 44, 1, 146.8, 200.7 , 0 );
setMoveKey( spep_5 + 46, 1, 142.9, 196.8 , 0 );

f=0.8;

setScaleKey( spep_5 + 0, 1, 0.92+f, 0.92+f );
setScaleKey( spep_5 + 2, 1, 0.89+f, 0.89+f );
setScaleKey( spep_5 + 4, 1, 0.86+f, 0.86+f );
setScaleKey( spep_5 + 6, 1, 0.83+f, 0.83+f );
setScaleKey( spep_5 + 8, 1, 0.8+f, 0.8+f );
setScaleKey( spep_5 + 10, 1, 0.77+f, 0.77+f );
setScaleKey( spep_5 + 12, 1, 0.74+f, 0.74+f );
setScaleKey( spep_5 + 14, 1, 0.71+f, 0.71+f );
setScaleKey( spep_5 + 16, 1, 0.68+f, 0.68+f );
--setScaleKey( spep_5 + 18, 1, 0.65+f, 0.65+f );
--setScaleKey( spep_5 + 20, 1, 0.61+f, 0.61+f );
--setScaleKey( spep_5 + 22, 1, 0.58+f, 0.58+f );
--setScaleKey( spep_5 + 24, 1, 0.55+f, 0.55+f );
--setScaleKey( spep_5 + 26, 1, 0.52+f, 0.52+f );
--setScaleKey( spep_5 + 28, 1, 0.66, 0.66 );
--setScaleKey( spep_5 + 30, 1, 0.63, 0.63 );
--setScaleKey( spep_5 + 32, 1, 0.6, 0.6 );
--setScaleKey( spep_5 + 34, 1, 0.4+f, 0.4+f );
setScaleKey( spep_5 + 36, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 46, 1, 0.77, 0.77 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 46, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 46;
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, 190002, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 )

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
setEffMoveKey( spep_6 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_6 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

--SE
--ギャン
SE026 =playSe( spep_6 + 0 , 1023 );

--気弾発射
stopSe( spep_6 + 2, SE025, 20);

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6+ 54, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;
------------------------------------------------------
-- 爆破
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 130, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 130, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 130, finish, 255 )

--SE
SE027 =playSe( spep_7 + 0 , 1159 );
setSeVolumeByWorkId( spep_7 + 0 , SE027 , 76 );
SE028 =playSe( spep_7 + 0 , 1024 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 110 );
else
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 見上げてからジャンプ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
jump_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 46, jump_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump_f, 0 );
setEffRotateKey( spep_0 + 46, jump_f, 0 );
setEffAlphaKey( spep_0 + 0, jump_f, 255 );
setEffAlphaKey( spep_0 + 44, jump_f, 255 );
setEffAlphaKey( spep_0 + 45, jump_f, 255 );
setEffAlphaKey( spep_0 + 46, jump_f, 0 );

-- ** エフェクト等 ** --
jump_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 46, jump_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump_b, 0 );
setEffRotateKey( spep_0 + 46, jump_b, 0 );
setEffAlphaKey( spep_0 + 0, jump_b, 255 );
setEffAlphaKey( spep_0 + 44, jump_b, 255 );
setEffAlphaKey( spep_0 + 45, jump_b, 255 );
setEffAlphaKey( spep_0 + 46, jump_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 1, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 2, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 3, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 4, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 5, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0 + 6, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0-3 + 8, 1, 221.8, 315.8 , 0 );
setMoveKey( spep_0-3 + 10, 1, 222.3, 316.6 , 0 );
setMoveKey( spep_0-3 + 12, 1, 222.9, 317.4 , 0 );
setMoveKey( spep_0-3 + 14, 1, 223.4, 318.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, 224, 319 , 0 );
setMoveKey( spep_0-3 + 18, 1, 224.5, 319.8 , 0 );
setMoveKey( spep_0-3 + 20, 1, 225.1, 320.6 , 0 );
setMoveKey( spep_0-3 + 22, 1, 225.6, 321.4 , 0 );
setMoveKey( spep_0-3 + 24, 1, 226.2, 322.2 , 0 );
setMoveKey( spep_0-3 + 26, 1, 226.8, 323 , 0 );
setMoveKey( spep_0-3 + 28, 1, 226.8, 306.9 , 0 );
setMoveKey( spep_0-3 + 30, 1, 220.9, 333.5 , 0 );
setMoveKey( spep_0-3 + 32, 1, 193.5, 301.2 , 0 );


a=0.15;

setScaleKey( spep_0 + 0, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 1, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 2, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 3, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 4, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 5, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 6, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0 + 30, 1, 0.22+a, 0.22+a );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );

--SE
--ジャンプ
SE001 =playSe( spep_0 + 12 , 1170 );
setSeVolumeByWorkId( spep_0 + 12 , SE001 , 43 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 48, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
   
    pauseAll( SP_dodge, 67 );

    --敵の動き
    setMoveKey( SP_dodge + 8, 1, 193.5, 301.2 , 0 );
    setScaleKey( SP_dodge + 8, 1, 0.22+a, 0.22+a );
    setRotateKey( SP_dodge + 8, 1, 0 );

    setMoveKey( SP_dodge + 9, 1, 193.5, 301.2 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.22+a, 0.22+a );
    setRotateKey( SP_dodge + 9, 1, 0 );


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
--敵の動き
setDisp( spep_0 + 46, 1, 0 );

setMoveKey( spep_0-3 + 34, 1, 209, 290.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 203.1, 279.5 , 0 );
setMoveKey( spep_0-3 + 38, 1, 197.2, 268.6 , 0 );
setMoveKey( spep_0-3 + 40, 1, 191.3, 257.7 , 0 );
setMoveKey( spep_0-3 + 42, 1, 185.4, 246.9 , 0 );
setMoveKey( spep_0-3 + 44, 1, 179.5, 236 , 0 );
setMoveKey( spep_0-3 + 46, 1, 173.6, 225.1 , 0 );
setMoveKey( spep_0-3 + 48, 1, 167.7, 214.3 , 0 );

setScaleKey( spep_0-3 + 36, 1, 0.22+a, 0.22+a );
setScaleKey( spep_0-3 + 38, 1, 0.21+a, 0.21+a );
setScaleKey( spep_0 + 46, 1, 0.21+a, 0.21+a );
--setScaleKey( spep_0 + 46, 1, 0.2+a, 0.2+a );

setRotateKey( spep_0 + 46, 1, 0 );

--SE
--ジャンプ
stopSe( spep_0 + 24, SE001, 10);
SE002 =playSe( spep_0 + 26 , 9 );

--次の準備
spep_1=spep_0+46;
------------------------------------------------------
-- 連打攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, panting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_f, 0 );
setEffRotateKey( spep_1 + 160, panting_f, 0 );
setEffAlphaKey( spep_1 + 0, panting_f, 255 );
setEffAlphaKey( spep_1 + 160, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, panting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_b, 0 );
setEffRotateKey( spep_1 + 160, panting_b, 0 );
setEffAlphaKey( spep_1 + 0, panting_b, 255 );
setEffAlphaKey( spep_1 + 160, panting_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 132, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 30, 1, 108 );
changeAnime( spep_1-3 + 44, 1, 106 );
changeAnime( spep_1-3 + 50, 1, 108 );
changeAnime( spep_1-3 + 60, 1, 106 );
changeAnime( spep_1-3 + 70, 1, 108 );
changeAnime( spep_1-3 + 78, 1, 106 );
changeAnime( spep_1-3 + 84, 1, 108 );
changeAnime( spep_1-3 + 118, 1, 107 );

b=40;
c=60;
d=70;
setMoveKey( spep_1 + 0, 1, 599.2+b, 625 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 567.7, 593.5 , 0 );
setMoveKey( spep_1-3 + 4, 1, 536+b, 561.8 , 0 );
setMoveKey( spep_1-3 + 6, 1, 503.9+b, 529.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 471.7+b, 497.3 , 0 );
setMoveKey( spep_1-3 + 10, 1, 439.3+b, 464.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, 407.1+b, 432.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 375+b, 399.5 , 0 );
setMoveKey( spep_1-3 + 16, 1, 343+b, 366.9 , 0 );
setMoveKey( spep_1-3 + 18, 1, 311.2+b, 334.4 , 0 );
setMoveKey( spep_1-3 + 20, 1, 279.9+b, 302 , 0 );
setMoveKey( spep_1-3 + 22, 1, 248.9+b, 269.8 , 0 );
setMoveKey( spep_1-3 + 24, 1, 218.3+b, 237.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 188.1+b, 205.9 , 0 );
setMoveKey( spep_1-3 + 29, 1, 158.4+b, 174.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 106.4+b, 175.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 79.4+b, 145.6 , 0 );
setMoveKey( spep_1-3 + 34, 1, 53.6+b, 126.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, 33.1+b, 111.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, 12.5+b, 91.2 , 0 );
setMoveKey( spep_1-3 + 40, 1, 13+b, 91.8 , 0 );
setMoveKey( spep_1-3 + 43, 1, 13.5+b, 92.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 85-c, 78.4+d , 0 );
setMoveKey( spep_1-3 + 46, 1, 77-c, 74.6+d , 0 );
setMoveKey( spep_1-3 + 49, 1, 77.5-c, 74.9+d , 0 );
setMoveKey( spep_1-3 + 50, 1, 20.3+b, 89.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 17.5+b, 83.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, 14.6+b, 87 , 0 );
setMoveKey( spep_1-3 + 56, 1, 15.9+b, 94.6 , 0 );
setMoveKey( spep_1-3 + 59, 1, 16.2+b, 94.9 , 0 );
setMoveKey( spep_1-3 + 60, 1, 85.5-c, 81.7+d , 0 );
setMoveKey( spep_1-3 + 62, 1, 85.9-c, 87.2+d , 0 );
setMoveKey( spep_1-3 + 64, 1, 85.6-c, 77.9+d , 0 );
setMoveKey( spep_1-3 + 66, 1, 81.8-c, 82.6+d , 0 );
setMoveKey( spep_1-3 + 69, 1, 85.9-c, 78.3+d , 0 );
setMoveKey( spep_1-3 + 70, 1, 22.1+b, 92.1 , 0 );
setMoveKey( spep_1-3 + 72, 1, 19.9+b, 85.6 , 0 );
setMoveKey( spep_1-3 + 74, 1, 16.5+b, 88.5 , 0 );
setMoveKey( spep_1-3 + 77, 1, 19.7+b, 88.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 86.7-c, 83.3+d , 0 );
setMoveKey( spep_1-3 + 80, 1, 86.2-c, 88.5+d , 0 );
setMoveKey( spep_1-3 + 83, 1, 87.3-c, 79.4+d , 0 );
setMoveKey( spep_1-3 + 84, 1, 18.5+b, 83.8 , 0 );
setMoveKey( spep_1-3 + 86, 1, 15.2+b, 84.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 20.7+b, 81.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, 15.7+b, 87.4 , 0 );
setMoveKey( spep_1-3 + 92, 1, 15+b, 85 , 0 );
setMoveKey( spep_1-3 + 94, 1, 14.3+b, 82.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 13.7+b, 80.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, 13.1+b, 77.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 12.5+b, 74.7 , 0 );
setMoveKey( spep_1-3 + 102, 1, 12.1+b, 71.5 , 0 );
setMoveKey( spep_1-3 + 104, 1, 11.8+b, 68 , 0 );
setMoveKey( spep_1-3 + 106, 1, 11.7+b, 64 , 0 );
setMoveKey( spep_1-3 + 108, 1, 11.7+b, 59.5 , 0 );
setMoveKey( spep_1-3 + 110, 1, 11.9+b, 54.3 , 0 );
setMoveKey( spep_1-3 + 112, 1, 12.4+b, 48.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, 13.1+b, 41.9 , 0 );
setMoveKey( spep_1-3 + 117, 1, 14.1+b, 34.5 , 0 );
setMoveKey( spep_1-3 + 118, 1, 108.3+b, -121.3 , 0 );
setMoveKey( spep_1-3 + 120, 1, 518.5+b, -714.6 , 0 );
setMoveKey( spep_1-3 + 122, 1, 610.8+b, -873.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 713+b, -1015.7 , 0 );
setMoveKey( spep_1-3 + 126, 1, 765.7+b, -1075.2 , 0 );
setMoveKey( spep_1-3 + 128, 1, 806.4+b, -1137.2 , 0 );
setMoveKey( spep_1-3 + 130, 1, 814.7+b, -1167.2 , 0 );
setMoveKey( spep_1-3 + 132, 1, 827.1+b, -1177 , 0 );

e=1.1;
g=0.2;

setScaleKey( spep_1 + 0, 1, 1+e, 1+e );
setScaleKey( spep_1 + 2, 1, 1+e, 1+e );
setScaleKey( spep_1-3 + 117, 1, 1+e, 1+e );
setScaleKey( spep_1-3 + 118, 1, 0.8, 0.8 );
--setScaleKey( spep_1-3 + 120, 1, 1.98, 1.98 );
--setScaleKey( spep_1-3 + 122, 1, 2.33, 2.33 );
setScaleKey( spep_1-3 + 124, 1, 2.56+g, 2.56+g );
setScaleKey( spep_1-3 + 126, 1, 2.72+g, 2.72+g );
setScaleKey( spep_1-3 + 128, 1, 2.82+g, 2.82+g );
setScaleKey( spep_1-3 + 130, 1, 2.88+g, 2.88+g );
setScaleKey( spep_1-3 + 132, 1, 2.9+g, 2.9+g );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 43, 1, 0 );
setRotateKey( spep_1-3 + 44, 1, -39.7 );
setRotateKey( spep_1-3 + 49, 1, -39.7 );
setRotateKey( spep_1-3 + 50, 1, 0 );
setRotateKey( spep_1-3 + 59, 1, 0 );
setRotateKey( spep_1-3 + 60, 1, -36.7 );
setRotateKey( spep_1-3 + 69, 1, -36.7 );
setRotateKey( spep_1-3 + 70, 1, -6.7 );
setRotateKey( spep_1-3 + 77, 1, -6.7 );
setRotateKey( spep_1-3 + 78, 1, -44.9 );
setRotateKey( spep_1-3 + 83, 1, -44.9 );
setRotateKey( spep_1-3 + 84, 1, 7.2 );
setRotateKey( spep_1-3 + 117, 1, 7.2 );
setRotateKey( spep_1-3 + 118, 1, 0 );
setRotateKey( spep_1-3 + 132, 1, 0 );

--SE
--ラッシュ
SE003 =playSe( spep_1 + 28 , 1189 );
SE004 =playSe( spep_1 + 32 , 1000 );
SE005 =playSe( spep_1 + 32 , 1110 );
SE006 =playSe( spep_1 + 48 , 1110 );
SE007 =playSe( spep_1 + 48 , 1010 );
setSeVolumeByWorkId( spep_1 + 48 , SE007 , 62 );
SE008 =playSe( spep_1 + 58 , 1110 );
setSeVolumeByWorkId( spep_1 + 58 , SE008 , 75 );
SE009 =playSe( spep_1 + 66 , 1009 );
setSeVolumeByWorkId( spep_1 + 66 , SE009 , 53 );
SE010 =playSe( spep_1 + 66 , 1110 );
setSeVolumeByWorkId( spep_1 + 66 , SE010 , 87 );
SE011 =playSe( spep_1 + 74 , 1110 );
setSeVolumeByWorkId( spep_1 + 74 , SE011 , 97 );
SE012 =playSe( spep_1 + 76 , 1012 );
setSeVolumeByWorkId( spep_1 + 76 , SE012 , 60 );
SE013 =playSe( spep_1 + 84 , 1110 );
setSeVolumeByWorkId( spep_1 + 84 , SE013 , 86 );

--くるっ
SE014 =playSe( spep_1 + 88 , 1151 );
SE015 =playSe( spep_1 + 92 , 1117 );
stopSe( spep_1 + 104, SE015, 8);

--蹴り
SE016 =playSe( spep_1 + 112 , 1003 );
setSeVolumeByWorkId( spep_1 + 112 , SE016 , 68 );
SE017 =playSe( spep_1 + 118 , 1187 );
setSeVolumeByWorkId( spep_1 + 118 , SE017 , 77 );
SE018 =playSe( spep_1 + 120 , 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 162, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+154 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+158;
------------------------------------------------------
-- 指先に溜め、セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 86, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 86, tame, 255 );
setEffAlphaKey( spep_2 + 87, tame, 0 );
setEffAlphaKey( spep_2 + 88, tame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x102, -1, 0, 180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,   180,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,   180,  510);

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
setEffScaleKey(  spep_2 +84,  ctgogo, -1.07, 1.07 )

--SE
--気弾溜め
SE019 =playSe( spep_2 + 0 , 1144 );
setSeVolumeByWorkId( spep_2 + 0 , SE019 , 73 );
setTimeStretch( SE019, 0.72, 10, 1 );
SE020 =playSe( spep_2 + 0 , 1262 );
setSeVolumeByWorkId( spep_2 + 0 , SE020 , 135 );
setTimeStretch( SE020, 1.25, 10, 1 );

--顔カットイン
SE021 =playSe( spep_2 + 12 , 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2+80 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+86;
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

--白フェード
entryFade( spep_3 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 指先からビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 30, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 + 30, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 30, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 30, beam, 255 )
setEffAlphaKey( spep_4 + 31, beam, 0 )
setEffAlphaKey( spep_4 + 32, beam, 0 );

--SE
--気弾発射
SE023 =playSe( spep_4 + 18 , 1027 );
setSeVolumeByWorkId( spep_4 + 18 , SE023 , 66 );
SE024 =playSe( spep_4 + 18 , 1021 );
setSeVolumeByWorkId( spep_4 + 18 , SE024 , 68 );
SE025 =playSe( spep_4 + 18 , 1177 );
setSeVolumeByWorkId( spep_4 + 18 , SE025 , 97 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 32, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 30;
------------------------------------------------------
-- 敵にビームが迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 46, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 46, hit_f, 255 )

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 46, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 46, hit_b, 255 )

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 46, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 78.6, 128.8 , 0 );
setMoveKey( spep_5 + 2, 1, 83.2, 133.7 , 0 );
setMoveKey( spep_5 + 4, 1, 87.9, 138.6 , 0 );
setMoveKey( spep_5 + 6, 1, 92.5, 143.4 , 0 );
setMoveKey( spep_5 + 8, 1, 97.2, 148.3 , 0 );
setMoveKey( spep_5 + 10, 1, 101.8, 153.1 , 0 );
setMoveKey( spep_5 + 12, 1, 106.5, 158 , 0 );
setMoveKey( spep_5 + 14, 1, 111.1, 162.8 , 0 );
setMoveKey( spep_5 + 16, 1, 115.8, 167.7 , 0 );
setMoveKey( spep_5 + 18, 1, 120.4, 172.5 , 0 );
setMoveKey( spep_5 + 20, 1, 125.1, 177.4 , 0 );
setMoveKey( spep_5 + 22, 1, 129.8, 182.3 , 0 );
setMoveKey( spep_5 + 24, 1, 134.4, 187.1 , 0 );
setMoveKey( spep_5 + 26, 1, 139.1, 192 , 0 );
setMoveKey( spep_5 + 28, 1, 143.7, 196.8 , 0 );
setMoveKey( spep_5 + 30, 1, 148.4, 201.7 , 0 );
setMoveKey( spep_5 + 32, 1, 153, 206.5 , 0 );
setMoveKey( spep_5 + 34, 1, 157.7, 211.4 , 0 );
setMoveKey( spep_5 + 36, 1, 162.4, 216.3 , 0 );
setMoveKey( spep_5 + 38, 1, 158.5, 212.4 , 0 );
setMoveKey( spep_5 + 40, 1, 154.6, 208.5 , 0 );
setMoveKey( spep_5 + 42, 1, 150.7, 204.6 , 0 );
setMoveKey( spep_5 + 44, 1, 146.8, 200.7 , 0 );
setMoveKey( spep_5 + 46, 1, 142.9, 196.8 , 0 );

f=0.8;

setScaleKey( spep_5 + 0, 1, 0.92+f, 0.92+f );
setScaleKey( spep_5 + 2, 1, 0.89+f, 0.89+f );
setScaleKey( spep_5 + 4, 1, 0.86+f, 0.86+f );
setScaleKey( spep_5 + 6, 1, 0.83+f, 0.83+f );
setScaleKey( spep_5 + 8, 1, 0.8+f, 0.8+f );
setScaleKey( spep_5 + 10, 1, 0.77+f, 0.77+f );
setScaleKey( spep_5 + 12, 1, 0.74+f, 0.74+f );
setScaleKey( spep_5 + 14, 1, 0.71+f, 0.71+f );
setScaleKey( spep_5 + 16, 1, 0.68+f, 0.68+f );
--setScaleKey( spep_5 + 18, 1, 0.65+f, 0.65+f );
--setScaleKey( spep_5 + 20, 1, 0.61+f, 0.61+f );
--setScaleKey( spep_5 + 22, 1, 0.58+f, 0.58+f );
--setScaleKey( spep_5 + 24, 1, 0.55+f, 0.55+f );
--setScaleKey( spep_5 + 26, 1, 0.52+f, 0.52+f );
--setScaleKey( spep_5 + 28, 1, 0.66, 0.66 );
--setScaleKey( spep_5 + 30, 1, 0.63, 0.63 );
--setScaleKey( spep_5 + 32, 1, 0.6, 0.6 );
--setScaleKey( spep_5 + 34, 1, 0.4+f, 0.4+f );
setScaleKey( spep_5 + 36, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 46, 1, 0.77, 0.77 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 46, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 46;
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, 190002, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 )

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
setEffMoveKey( spep_6 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_6 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

--SE
--ギャン
SE026 =playSe( spep_6 + 0 , 1023 );

--気弾発射
stopSe( spep_6 + 2, SE025, 20);

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6+ 54, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;
------------------------------------------------------
-- 爆破
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 130, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 130, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 130, finish, 255 )

--SE
SE027 =playSe( spep_7 + 0 , 1159 );
setSeVolumeByWorkId( spep_7 + 0 , SE027 , 76 );
SE028 =playSe( spep_7 + 0 , 1024 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 110 );
end
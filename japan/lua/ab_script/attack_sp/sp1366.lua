--1017000:カリフラ_エネルギーブラスト
--sp_effect_a1_00196

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
SP_01=	154590	;--	瞬間移動〜エネルギー波タメ
SP_02=	154591	;--	瞬間移動〜エネルギー波タメ
SP_03=	154592	;--	エネルギー波発射〜フィニッシュ
SP_04=	154593	;--	エネルギー波発射〜フィニッシュ

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
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- エネルギー波発射〜フィニッシュ
------------------------------------------------------
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 380, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 380, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 380, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 380, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 380, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 380, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 380, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 380, tame_b, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
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

--敵の動き
setDisp( spep_0 -3  + 60, 1, 1 );
setDisp( spep_0 -3 + 150, 1, 0 );
setDisp( spep_0 -3  + 222, 1, 1 );
setDisp( spep_0 -1 + 270, 1, 0 );

changeAnime( spep_0 -3  + 60, 1, 100 );
changeAnime( spep_0 -3  + 86, 1, 106 );
changeAnime( spep_0 -3  + 232, 1, 108 );

setMoveKey( spep_0 -3 + 60, 1, -12.7, -35 , 0 );
setMoveKey( spep_0 -3 + 85, 1, -12.7, -35 , 0 );

setMoveKey( spep_0 -3 + 86, 1, -164.3, -56 , 0 );
setMoveKey( spep_0 -3 + 88, 1, -111.6, -44.6 , 0 );
setMoveKey( spep_0 -3 + 90, 1, -131.2, -57.3 , 0 );
setMoveKey( spep_0 -3 + 92, 1, -135.6, -56 , 0 );
setMoveKey( spep_0 -3 + 94, 1, -143.8, -62.6 , 0 );
setMoveKey( spep_0 -3 + 96, 1, -145, -63 , 0 );
setMoveKey( spep_0 -3 + 98, 1, -153.2, -65.3 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -157.4, -67.3 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -161.1, -69.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -164.4, -70.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -167.1, -72.1 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -169.5, -73.2 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -171.5, -74.2 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -173, -74.9 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -174.1, -75.5 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -174.8, -75.8 , 0 );
setMoveKey( spep_0 -3 + 118, 1, -175, -75.9 , 0 );
setMoveKey( spep_0 -3 + 120, 1, -166.3, -67.5 , 0 );
setMoveKey( spep_0 -3 + 122, 1, -140.2, -42.5 , 0 );
setMoveKey( spep_0 -3 + 124, 1, -96.9, -0.6 , 0 );
setMoveKey( spep_0 -3 + 126, 1, -36.2, 58.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 41.9, 133.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 137.3, 225.7 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 250, 334.7 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 380, 460.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 527.5, 602.9 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 692.3, 762.1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 692.3, 762.1 , 0 );

setMoveKey( spep_0 -3 + 222, 1, 264.4, 271.8 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 232.6, 237 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 200.8, 202.2 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 169, 167.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 137.3, 132.7 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 137.3, 132.7 , 0 );

setMoveKey( spep_0 -3 + 232, 1, 105.4, 98 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 156.8, 151.5 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 102.1, 67 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 104.5, 130.6 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 122, 96.3 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 159, 145.9 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 147.6, 145.6 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 176.7, 165.9 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 185.9, 179.8 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 199.8, 193.4 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 212.3, 205.7 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 223.4, 216.7 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 233.4, 226.4 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 242, 234.9 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 249.4, 242.1 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 255.3, 247.9 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 260, 252.5 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 263.4, 255.7 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 265.4, 257.8 , 0 );
setMoveKey( spep_0 -1 + 270, 1, 266.1, 258.4 , 0 );

setScaleKey( spep_0 -3 + 60, 1, 2, 2 );
setScaleKey( spep_0 -3 + 85, 1, 2, 2 );

setScaleKey( spep_0 -3 + 86, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 88, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 90, 1, 2, 2 );
setScaleKey( spep_0 -3 + 150, 1, 2, 2 );

setScaleKey( spep_0 -3 + 222, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 224, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 226, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 228, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 230, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 231, 1, 1.9, 1.9 );

setScaleKey( spep_0 -3 + 232, 1, 2, 2 );
setScaleKey( spep_0 -3 + 234, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 236, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 238, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 240, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 242, 1, 1.97, 1.97 );
setScaleKey( spep_0 -3 + 244, 1, 1.52, 1.52 );
setScaleKey( spep_0 -3 + 246, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 248, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 250, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 252, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 254, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 256, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 258, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 260, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 262, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 264, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 266, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 268, 1, 0.41, 0.41 );
setScaleKey( spep_0 -1 + 270, 1, 0.4, 0.4 );


setRotateKey( spep_0 -3 + 60, 1, 0 );
setRotateKey( spep_0 -3 + 85, 1, 0 );

setRotateKey( spep_0 -3 + 86, 1, -52 );
setRotateKey( spep_0 -3 + 88, 1, -61.2 );
setRotateKey( spep_0 -3 + 90, 1, -62.3 );
setRotateKey( spep_0 -3 + 92, 1, -63.4 );
setRotateKey( spep_0 -3 + 94, 1, -64.4 );
setRotateKey( spep_0 -3 + 96, 1, -65.3 );
setRotateKey( spep_0 -3 + 98, 1, -66.1 );
setRotateKey( spep_0 -3 + 100, 1, -66.8 );
setRotateKey( spep_0 -3 + 102, 1, -67.5 );
setRotateKey( spep_0 -3 + 104, 1, -68.1 );
setRotateKey( spep_0 -3 + 106, 1, -68.6 );
setRotateKey( spep_0 -3 + 108, 1, -69 );
setRotateKey( spep_0 -3 + 110, 1, -69.4 );
setRotateKey( spep_0 -3 + 112, 1, -69.6 );
setRotateKey( spep_0 -3 + 114, 1, -69.8 );
setRotateKey( spep_0 -3 + 116, 1, -70 );
setRotateKey( spep_0 -3 + 118, 1, -70 );
setRotateKey( spep_0 -3 + 120, 1, -69.5 );
setRotateKey( spep_0 -3 + 122, 1, -68.1 );
setRotateKey( spep_0 -3 + 124, 1, -65.8 );
setRotateKey( spep_0 -3 + 126, 1, -62.6 );
setRotateKey( spep_0 -3 + 128, 1, -58.4 );
setRotateKey( spep_0 -3 + 130, 1, -53.3 );
setRotateKey( spep_0 -3 + 132, 1, -47.2 );
setRotateKey( spep_0 -3 + 134, 1, -40.2 );
setRotateKey( spep_0 -3 + 136, 1, -32.3 );
setRotateKey( spep_0 -3 + 138, 1, -23.5 );
setRotateKey( spep_0 -3 + 150, 1, -23.5 );

setRotateKey( spep_0 -3 + 222, 1, -50 );
setRotateKey( spep_0 -3 + 231, 1, -50 );

setRotateKey( spep_0 -3 + 232, 1, -10 );
setRotateKey( spep_0 -1 + 270, 1, -10 );

--書き文字
ctsyun = entryEffectLife( spep_0-3 + 32,  10011, 12, 0x100, -1, 0, 155.1, 271.1 );--シュンッ

setEffMoveKey( spep_0-3 + 32, ctsyun, 155.1, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 34, ctsyun, 155.4, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 38, ctsyun, 155.4, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 40, ctsyun, 155.3, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 42, ctsyun, 155.3, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 44, ctsyun, 155.2, 271.1 , 0 );

setEffScaleKey( spep_0-3 + 32, ctsyun, 1.05, 1.05 );
setEffScaleKey( spep_0-3 + 34, ctsyun, 2.02, 2.02 );
setEffScaleKey( spep_0-3 + 36, ctsyun, 1.98, 1.98 );
setEffScaleKey( spep_0-3 + 38, ctsyun, 1.84, 1.84 );
setEffScaleKey( spep_0-3 + 40, ctsyun, 1.62, 1.62 );
setEffScaleKey( spep_0-3 + 42, ctsyun, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 44, ctsyun, 0.9, 0.9 );

setEffRotateKey( spep_0-3 + 32, ctsyun, 29.7 );
setEffRotateKey( spep_0-3 + 40, ctsyun, 29.7 );
setEffRotateKey( spep_0-3 + 42, ctsyun, 29.6 );
setEffRotateKey( spep_0-3 + 44, ctsyun, 29.6 );

setEffAlphaKey( spep_0-3 + 32, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 34, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 36, ctsyun, 245 );
setEffAlphaKey( spep_0-3 + 38, ctsyun, 214 );
setEffAlphaKey( spep_0-3 + 40, ctsyun, 163 );
setEffAlphaKey( spep_0-3 + 42, ctsyun, 92 );
setEffAlphaKey( spep_0-3 + 44, ctsyun, 0 );


--書き文字
ctga = entryEffectLife( spep_0-3 + 88,  10005, 12, 0x100, -1, 0, 158.2, 338 );--ガッ

setEffMoveKey( spep_0-3 + 88, ctga, 158.2, 338 , 0 );
setEffMoveKey( spep_0-3 + 90, ctga, 158.1, 338.1 , 0 );
setEffMoveKey( spep_0-3 + 92, ctga, 158.2, 338 , 0 );
setEffMoveKey( spep_0-3 + 94, ctga, 158.1, 338 , 0 );
setEffMoveKey( spep_0-3 + 100, ctga, 158.1, 338 , 0 );

setEffScaleKey( spep_0-3 + 88, ctga, 2.25, 2.25 );
setEffScaleKey( spep_0-3 + 100, ctga, 2.25, 2.25 );

setEffRotateKey( spep_0-3 + 88, ctga, 14.9 );
setEffRotateKey( spep_0-3 + 90, ctga, 21.4 );
setEffRotateKey( spep_0-3 + 92, ctga, 16.5 );
setEffRotateKey( spep_0-3 + 94, ctga, 21.2 );
setEffRotateKey( spep_0-3 + 100, ctga, 21.2 );

setEffAlphaKey( spep_0-3 + 88, ctga, 255 );
setEffAlphaKey( spep_0-3 + 94, ctga, 255 );
setEffAlphaKey( spep_0-3 + 96, ctga, 170 );
setEffAlphaKey( spep_0-3 + 98, ctga, 85 );
setEffAlphaKey( spep_0-3 + 100, ctga, 0 );

--書き文字
ctbaki = entryEffectLife( spep_0-3 + 234,  10020, 24, 0x100, -1, 0, -56.6, 316.5 );--バキッ

setEffMoveKey( spep_0-3 + 234, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_0-3 + 236, ctbaki, -74.8, 332.9 , 0 );
setEffMoveKey( spep_0-3 + 238, ctbaki, -56.7, 316.5 , 0 );
setEffMoveKey( spep_0-3 + 240, ctbaki, -74.7, 332.9 , 0 );
setEffMoveKey( spep_0-3 + 242, ctbaki, -56.8, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 244, ctbaki, -74.1, 332.3 , 0 );
setEffMoveKey( spep_0-3 + 246, ctbaki, -56.7, 316.5 , 0 );
setEffMoveKey( spep_0-3 + 248, ctbaki, -73, 331.4 , 0 );
setEffMoveKey( spep_0-3 + 250, ctbaki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 252, ctbaki, -71.2, 329.8 , 0 );
setEffMoveKey( spep_0-3 + 254, ctbaki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 256, ctbaki, -67.7, 326.6 , 0 );
setEffMoveKey( spep_0-3 + 258, ctbaki, -56.3, 316.3 , 0 );

setEffScaleKey( spep_0-3 + 234, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_0-3 + 236, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 238, ctbaki, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 240, ctbaki, 2.86, 2.86 );
setEffScaleKey( spep_0-3 + 242, ctbaki, 2.82, 2.82 );
setEffScaleKey( spep_0-3 + 244, ctbaki, 2.78, 2.78 );
setEffScaleKey( spep_0-3 + 246, ctbaki, 2.71, 2.71 );
setEffScaleKey( spep_0-3 + 248, ctbaki, 2.61, 2.61 );
setEffScaleKey( spep_0-3 + 250, ctbaki, 2.49, 2.49 );
setEffScaleKey( spep_0-3 + 252, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_0-3 + 254, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_0-3 + 256, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_0-3 + 258, ctbaki, 1.29, 1.29 );

setEffRotateKey( spep_0-3 + 234, ctbaki, -2.7 );
setEffRotateKey( spep_0-3 + 258, ctbaki, -2.7 );

setEffAlphaKey( spep_0-3 + 234, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 236, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 238, ctbaki, 254 );
setEffAlphaKey( spep_0-3 + 240, ctbaki, 251 );
setEffAlphaKey( spep_0-3 + 242, ctbaki, 246 );
setEffAlphaKey( spep_0-3 + 244, ctbaki, 239 );
setEffAlphaKey( spep_0-3 + 246, ctbaki, 228 );
setEffAlphaKey( spep_0-3 + 248, ctbaki, 215 );
setEffAlphaKey( spep_0-3 + 250, ctbaki, 196 );
setEffAlphaKey( spep_0-3 + 252, ctbaki, 172 );
setEffAlphaKey( spep_0-3 + 254, ctbaki, 138 );
setEffAlphaKey( spep_0-3 + 256, ctbaki, 91 );
setEffAlphaKey( spep_0-3 + 258, ctbaki, 13 );

--流線
ryusen1 = entryEffectLife( spep_0-3 + 86,  904, 4, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 86, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 90, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 86, ryusen1, 4.29, 1.69 );
setEffScaleKey( spep_0-3 + 90, ryusen1, 4.29, 1.69 );

setEffRotateKey( spep_0-3 + 86, ryusen1, -45 );
setEffRotateKey( spep_0-3 + 90, ryusen1, -45 );

setEffAlphaKey( spep_0-3 + 86, ryusen1, 118 );
setEffAlphaKey( spep_0-3 + 90, ryusen1, 118 );

--流線
ryusen2 = entryEffectLife( spep_0-3 + 128,  904, 23, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 128, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 148, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 128, ryusen2, 5.64, 1.69 );
setEffScaleKey( spep_0-3 + 130, ryusen2, 5.69, 1.69 );
setEffScaleKey( spep_0-3 + 132, ryusen2, 5.74, 1.69 );
setEffScaleKey( spep_0-3 + 134, ryusen2, 5.79, 1.69 );
setEffScaleKey( spep_0-3 + 136, ryusen2, 5.84, 1.69 );
setEffScaleKey( spep_0-3 + 138, ryusen2, 5.89, 1.69 );
setEffScaleKey( spep_0-3 + 140, ryusen2, 5.94, 1.69 );
setEffScaleKey( spep_0-3 + 142, ryusen2, 5.99, 1.69 );
setEffScaleKey( spep_0-3 + 144, ryusen2, 6.04, 1.69 );
setEffScaleKey( spep_0-3 + 146, ryusen2, 6.09, 1.69 );
setEffScaleKey( spep_0 + 148, ryusen2, 6.14, 1.69 );

setEffRotateKey( spep_0-3 + 128, ryusen2, 135 );
setEffRotateKey( spep_0 + 148, ryusen2, 135 );

setEffAlphaKey( spep_0-3 + 128, ryusen2, 0 );
setEffAlphaKey( spep_0-3 + 130, ryusen2, 12 );
setEffAlphaKey( spep_0-3 + 132, ryusen2, 24 );
setEffAlphaKey( spep_0-3 + 134, ryusen2, 35 );
setEffAlphaKey( spep_0-3 + 136, ryusen2, 47 );
setEffAlphaKey( spep_0-3 + 138, ryusen2, 59 );
setEffAlphaKey( spep_0-3 + 140, ryusen2, 71 );
setEffAlphaKey( spep_0-3 + 142, ryusen2, 82 );
setEffAlphaKey( spep_0-3 + 144, ryusen2, 94 );
setEffAlphaKey( spep_0-3 + 146, ryusen2, 106 );
setEffAlphaKey( spep_0 + 148, ryusen2, 118 );

--流線
ryusen3 = entryEffectLife( spep_0-3 + 160,  904, 60, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 160, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 220, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 160, ryusen3, 5.01, 1.69 );
setEffScaleKey( spep_0-3 + 220, ryusen3, 5.01, 1.69 );

setEffRotateKey( spep_0-3 + 160, ryusen3, 98 );
setEffRotateKey( spep_0-3 + 178, ryusen3, 98 );
setEffRotateKey( spep_0-3 + 180, ryusen3, 97.9 );
setEffRotateKey( spep_0-3 + 198, ryusen3, 97.9 );
setEffRotateKey( spep_0-3 + 200, ryusen3, 97.8 );
setEffRotateKey( spep_0-3 + 206, ryusen3, 97.8 );
setEffRotateKey( spep_0-3 + 208, ryusen3, 97.7 );
setEffRotateKey( spep_0-3 + 210, ryusen3, 97.7 );
setEffRotateKey( spep_0-3 + 212, ryusen3, 97.6 );
setEffRotateKey( spep_0-3 + 214, ryusen3, 97.5 );
setEffRotateKey( spep_0-3 + 216, ryusen3, 97.4 );
setEffRotateKey( spep_0-3 + 218, ryusen3, 97.3 );
setEffRotateKey( spep_0-3 + 220, ryusen3, 97 );

setEffAlphaKey( spep_0-3 + 160, ryusen3, 118 );
setEffAlphaKey( spep_0-3 + 220, ryusen3, 118 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 270, 906, 110, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 270, shuchusen1, 110, 20 );

setEffMoveKey( spep_0 + 270, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 380, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 270, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 380, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 270, shuchusen1, 0 );
setEffRotateKey( spep_0 + 380, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 270, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 280, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 281, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 282, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 380, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 270, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 270, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +282, 190006, 72, 0x100, -1, 0, -120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +282,  ctgogo,  -120,  510);
setEffMoveKey(  spep_0 +352,  ctgogo,  -120,  510);

setEffAlphaKey( spep_0 +282, ctgogo, 0 );
setEffAlphaKey( spep_0 + 283, ctgogo, 255 );
setEffAlphaKey( spep_0 + 284, ctgogo, 255 );
setEffAlphaKey( spep_0 + 348, ctgogo, 255 );
setEffAlphaKey( spep_0 + 350, ctgogo, 191 );
setEffAlphaKey( spep_0 + 352, ctgogo, 112 );
setEffAlphaKey( spep_0 + 354, ctgogo, 64 );

setEffRotateKey(  spep_0 +282,  ctgogo,  0);
setEffRotateKey(  spep_0 +354,  ctgogo,  0);

setEffScaleKey(  spep_0 +282,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +344,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +354,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 30, 43 );
playSe( spep_0 + 80, 1003 );
playSe( spep_0 + 95, 1001 );
playSe( spep_0 + 97, 1010 );
se_1116 = playSe( spep_0 + 121, 1116 );
playSe( spep_0 + 152, 1108 );
setSeVolume( spep_0 + 152, 1108, 178 );
playSe( spep_0 + 153, 1106 );
setSeVolume( spep_0 + 153, 1106, 178 );
se_0008 = playSe( spep_0 + 162, 8 );
setSeVolume( spep_0 + 190, 8, 235 );
setSeVolume( spep_0 + 228, 8, 562 );
se_0063 = playSe( spep_0 + 163, 63 );
setSeVolume( spep_0 + 163, 63, 71 );
playSe( spep_0 + 163, 1003 );
se_1190 = playSe( spep_0 + 232, 1190 );
playSe( spep_0 + 232, 1110 );
playSe( spep_0 + 232, 1009 );
se_1037 = playSe( spep_0 + 283, 1037 );
playSe( spep_0 + 282, 1018 );

stopSe( spep_0 + 163, se_1116, 0 );
stopSe( spep_0 + 235, se_0008, 0 );
stopSe( spep_0 + 232, se_0063, 0 );
stopSe( spep_0 + 254, se_1190, 31 );
stopSe( spep_0 + 377, se_1037, 0 );


--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_0+46 , 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 372, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

spep_1=spep_0+380;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- エネルギー波発射〜フィニッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 314, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 314, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 314, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 314, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 314, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 314, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 314, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 314, finish_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 176,  906, 136, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_2-3 + 176, shuchusen2, 136, 20 );
setEffMoveKey( spep_2-3 + 176, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 312, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 176, shuchusen2, 1.34, 1.44 );
setEffScaleKey( spep_2-3 + 310, shuchusen2, 1.34, 1.44 );
setEffScaleKey( spep_2-3 + 312, shuchusen2, 1.47, 1.51 );

setEffRotateKey( spep_2-3 + 176, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 312, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 176, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 176, shuchusen2, 255 );

--敵の動き
setDisp( spep_2 -3  + 100, 1, 1 );
setDisp( spep_2 -3 + 178, 1, 0 );

changeAnime( spep_2 -3  + 100, 1, 108 );
changeAnime( spep_2 -3  + 108, 1, 105 );

setMoveKey( spep_2-3 + 100, 1, -55.7, 60.2 , 0 );
setMoveKey( spep_2-3 + 102, 1, -35.7, 66.9 , 0 );
setMoveKey( spep_2-3 + 104, 1, -15.7, 73.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 4.3, 80.2 , 0 );
setMoveKey( spep_2-3 + 107, 1, 4.3, 80.2 , 0 );

setMoveKey( spep_2-3 + 108, 1, 53.2, 96.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, 84.6, 53.6 , 0 );
setMoveKey( spep_2-3 + 112, 1, 147.4, 61.9 , 0 );
setMoveKey( spep_2-3 + 114, 1, 139.9, 63.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, 169, 54.8 , 0 );
setMoveKey( spep_2-3 + 118, 1, 180.7, 64.2 , 0 );
setMoveKey( spep_2-3 + 120, 1, 200.2, 48.6 , 0 );
setMoveKey( spep_2-3 + 122, 1, 204.3, 50.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, 208.8, 69.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 221.7, 80.9 , 0 );
setMoveKey( spep_2-3 + 128, 1, 226.1, 87.5 , 0 );
setMoveKey( spep_2-3 + 130, 1, 225.6, 100.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 237.7, 114 , 0 );
setMoveKey( spep_2-3 + 134, 1, 233.5, 141.5 , 0 );
setMoveKey( spep_2-3 + 136, 1, 245.5, 139.8 , 0 );
setMoveKey( spep_2-3 + 138, 1, 243.2, 159.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 243.1, 154.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 242.4, 144.6 , 0 );
setMoveKey( spep_2-3 + 144, 1, 242.4, 135.5 , 0 );
setMoveKey( spep_2-3 + 146, 1, 239.2, 133 , 0 );
setMoveKey( spep_2-3 + 148, 1, 250.9, 125.8 , 0 );
setMoveKey( spep_2-3 + 150, 1, 238.5, 125.1 , 0 );
setMoveKey( spep_2-3 + 152, 1, 239.8, 114.7 , 0 );
setMoveKey( spep_2-3 + 154, 1, 240, 110.3 , 0 );
setMoveKey( spep_2-3 + 156, 1, 228.2, 108.4 , 0 );
setMoveKey( spep_2-3 + 158, 1, 230.3, 103 , 0 );
setMoveKey( spep_2-3 + 160, 1, 225.1, 97.6 , 0 );
setMoveKey( spep_2-3 + 162, 1, 223.6, 93.8 , 0 );
setMoveKey( spep_2-3 + 164, 1, 217.9, 94.6 , 0 );
setMoveKey( spep_2-3 + 166, 1, 220.9, 85.2 , 0 );
setMoveKey( spep_2-3 + 168, 1, 219.8, 81 , 0 );
setMoveKey( spep_2-3 + 170, 1, 227.1, 33.7 , 0 );
setMoveKey( spep_2-3 + 172, 1, 241.2, -25.5 , 0 );
setMoveKey( spep_2-3 + 174, 1, 223.2, -56.3 , 0 );
setMoveKey( spep_2-3 + 176, 1, 138.8, -81.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 202.7, -205.7 , 0 );

setScaleKey( spep_2-3 + 100, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 107, 1, 1.5, 1.5 );

setScaleKey( spep_2-3 + 108, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 110, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 112, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 114, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 116, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 118, 1, 1.22, 1.22 );
setScaleKey( spep_2-3 + 120, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 122, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 124, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 126, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 128, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 130, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 132, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 134, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 136, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 138, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 140, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 142, 1, 0.5, 0.5 );
setScaleKey( spep_2-3 + 144, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 146, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 148, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 150, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 152, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 154, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 156, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 158, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 160, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 162, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 164, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 166, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 168, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 170, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 172, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 174, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 176, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 178, 1, 0.24, 0.24 );

setRotateKey( spep_2-3 + 100, 1, 0 );
setRotateKey( spep_2-3 + 107, 1, 0 );

setRotateKey( spep_2-3 + 108, 1, 25 );
setRotateKey( spep_2-3 + 110, 1, 27 );
setRotateKey( spep_2-3 + 112, 1, 32.5 );
setRotateKey( spep_2-3 + 114, 1, 40.5 );
setRotateKey( spep_2-3 + 116, 1, 48.8 );
setRotateKey( spep_2-3 + 118, 1, 56.1 );
setRotateKey( spep_2-3 + 120, 1, 62.1 );
setRotateKey( spep_2-3 + 122, 1, 67.1 );
setRotateKey( spep_2-3 + 124, 1, 71.1 );
setRotateKey( spep_2-3 + 126, 1, 74.4 );
setRotateKey( spep_2-3 + 128, 1, 77.1 );
setRotateKey( spep_2-3 + 130, 1, 79.4 );
setRotateKey( spep_2-3 + 132, 1, 81.1 );
setRotateKey( spep_2-3 + 134, 1, 82.4 );
setRotateKey( spep_2-3 + 136, 1, 83.4 );
setRotateKey( spep_2-3 + 138, 1, 84.2 );
setRotateKey( spep_2-3 + 140, 1, 84.7 );
setRotateKey( spep_2-3 + 142, 1, 85 );
setRotateKey( spep_2-3 + 144, 1, 85.4 );
setRotateKey( spep_2-3 + 146, 1, 85.9 );
setRotateKey( spep_2-3 + 148, 1, 86.5 );
setRotateKey( spep_2-3 + 150, 1, 87.2 );
setRotateKey( spep_2-3 + 152, 1, 87.9 );
setRotateKey( spep_2-3 + 154, 1, 88.9 );
setRotateKey( spep_2-3 + 156, 1, 89.9 );
setRotateKey( spep_2-3 + 158, 1, 91 );
setRotateKey( spep_2-3 + 160, 1, 92.4 );
setRotateKey( spep_2-3 + 162, 1, 94 );
setRotateKey( spep_2-3 + 164, 1, 95.9 );
setRotateKey( spep_2-3 + 166, 1, 98.2 );
setRotateKey( spep_2-3 + 168, 1, 100.9 );
setRotateKey( spep_2-3 + 170, 1, 104.2 );
setRotateKey( spep_2-3 + 172, 1, 108.7 );
setRotateKey( spep_2-3 + 174, 1, 115 );
setRotateKey( spep_2-3 + 176, 1, 115 );
setRotateKey( spep_2-3 + 178, 1, 92.5 );
--SE
playSe( spep_2 + 2, 1022 );
se_1212 = playSe( spep_2 + 22, 1212 );
setSeVolume( spep_2 + 22, 1212, 40 );
playSe( spep_2 + 51, 1027 );
playSe( spep_2 + 98, 1025 );
playSe( spep_2 + 165, 1023 );
playSe( spep_2 + 165, 1159 );
setSeVolume( spep_2 + 165, 1159, 56 );

stopSe( spep_2 + 165, se_1212, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 172 );
endPhase( spep_2 + 300 );

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- エネルギー波発射〜フィニッシュ
------------------------------------------------------
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 380, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 380, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 380, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 380, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 380, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 380, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 380, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 380, tame_b, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
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

--敵の動き
setDisp( spep_0 -3  + 60, 1, 1 );
setDisp( spep_0 -3 + 150, 1, 0 );
setDisp( spep_0 -3  + 222, 1, 1 );
setDisp( spep_0 -1 + 270, 1, 0 );

changeAnime( spep_0 -3  + 60, 1, 100 );
changeAnime( spep_0 -3  + 86, 1, 106 );
changeAnime( spep_0 -3  + 232, 1, 108 );

setMoveKey( spep_0 -3 + 60, 1, -12.7, -35 , 0 );
setMoveKey( spep_0 -3 + 85, 1, -12.7, -35 , 0 );

setMoveKey( spep_0 -3 + 86, 1, -164.3, -56 , 0 );
setMoveKey( spep_0 -3 + 88, 1, -111.6, -44.6 , 0 );
setMoveKey( spep_0 -3 + 90, 1, -131.2, -57.3 , 0 );
setMoveKey( spep_0 -3 + 92, 1, -135.6, -56 , 0 );
setMoveKey( spep_0 -3 + 94, 1, -143.8, -62.6 , 0 );
setMoveKey( spep_0 -3 + 96, 1, -145, -63 , 0 );
setMoveKey( spep_0 -3 + 98, 1, -153.2, -65.3 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -157.4, -67.3 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -161.1, -69.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -164.4, -70.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -167.1, -72.1 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -169.5, -73.2 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -171.5, -74.2 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -173, -74.9 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -174.1, -75.5 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -174.8, -75.8 , 0 );
setMoveKey( spep_0 -3 + 118, 1, -175, -75.9 , 0 );
setMoveKey( spep_0 -3 + 120, 1, -166.3, -67.5 , 0 );
setMoveKey( spep_0 -3 + 122, 1, -140.2, -42.5 , 0 );
setMoveKey( spep_0 -3 + 124, 1, -96.9, -0.6 , 0 );
setMoveKey( spep_0 -3 + 126, 1, -36.2, 58.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 41.9, 133.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 137.3, 225.7 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 250, 334.7 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 380, 460.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 527.5, 602.9 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 692.3, 762.1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 692.3, 762.1 , 0 );

setMoveKey( spep_0 -3 + 222, 1, 264.4, 271.8 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 232.6, 237 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 200.8, 202.2 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 169, 167.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 137.3, 132.7 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 137.3, 132.7 , 0 );

setMoveKey( spep_0 -3 + 232, 1, 105.4, 98 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 156.8, 151.5 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 102.1, 67 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 104.5, 130.6 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 122, 96.3 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 159, 145.9 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 147.6, 145.6 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 176.7, 165.9 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 185.9, 179.8 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 199.8, 193.4 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 212.3, 205.7 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 223.4, 216.7 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 233.4, 226.4 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 242, 234.9 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 249.4, 242.1 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 255.3, 247.9 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 260, 252.5 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 263.4, 255.7 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 265.4, 257.8 , 0 );
setMoveKey( spep_0 -1 + 270, 1, 266.1, 258.4 , 0 );

setScaleKey( spep_0 -3 + 60, 1, 2, 2 );
setScaleKey( spep_0 -3 + 85, 1, 2, 2 );

setScaleKey( spep_0 -3 + 86, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 88, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 90, 1, 2, 2 );
setScaleKey( spep_0 -3 + 150, 1, 2, 2 );

setScaleKey( spep_0 -3 + 222, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 224, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 226, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 228, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 230, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 231, 1, 1.9, 1.9 );

setScaleKey( spep_0 -3 + 232, 1, 2, 2 );
setScaleKey( spep_0 -3 + 234, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 236, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 238, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 240, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 242, 1, 1.97, 1.97 );
setScaleKey( spep_0 -3 + 244, 1, 1.52, 1.52 );
setScaleKey( spep_0 -3 + 246, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 248, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 250, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 252, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 254, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 256, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 258, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 260, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 262, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 264, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 266, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 268, 1, 0.41, 0.41 );
setScaleKey( spep_0 -1 + 270, 1, 0.4, 0.4 );


setRotateKey( spep_0 -3 + 60, 1, 0 );
setRotateKey( spep_0 -3 + 85, 1, 0 );

setRotateKey( spep_0 -3 + 86, 1, -52 );
setRotateKey( spep_0 -3 + 88, 1, -61.2 );
setRotateKey( spep_0 -3 + 90, 1, -62.3 );
setRotateKey( spep_0 -3 + 92, 1, -63.4 );
setRotateKey( spep_0 -3 + 94, 1, -64.4 );
setRotateKey( spep_0 -3 + 96, 1, -65.3 );
setRotateKey( spep_0 -3 + 98, 1, -66.1 );
setRotateKey( spep_0 -3 + 100, 1, -66.8 );
setRotateKey( spep_0 -3 + 102, 1, -67.5 );
setRotateKey( spep_0 -3 + 104, 1, -68.1 );
setRotateKey( spep_0 -3 + 106, 1, -68.6 );
setRotateKey( spep_0 -3 + 108, 1, -69 );
setRotateKey( spep_0 -3 + 110, 1, -69.4 );
setRotateKey( spep_0 -3 + 112, 1, -69.6 );
setRotateKey( spep_0 -3 + 114, 1, -69.8 );
setRotateKey( spep_0 -3 + 116, 1, -70 );
setRotateKey( spep_0 -3 + 118, 1, -70 );
setRotateKey( spep_0 -3 + 120, 1, -69.5 );
setRotateKey( spep_0 -3 + 122, 1, -68.1 );
setRotateKey( spep_0 -3 + 124, 1, -65.8 );
setRotateKey( spep_0 -3 + 126, 1, -62.6 );
setRotateKey( spep_0 -3 + 128, 1, -58.4 );
setRotateKey( spep_0 -3 + 130, 1, -53.3 );
setRotateKey( spep_0 -3 + 132, 1, -47.2 );
setRotateKey( spep_0 -3 + 134, 1, -40.2 );
setRotateKey( spep_0 -3 + 136, 1, -32.3 );
setRotateKey( spep_0 -3 + 138, 1, -23.5 );
setRotateKey( spep_0 -3 + 150, 1, -23.5 );

setRotateKey( spep_0 -3 + 222, 1, -50 );
setRotateKey( spep_0 -3 + 231, 1, -50 );

setRotateKey( spep_0 -3 + 232, 1, -10 );
setRotateKey( spep_0 -1 + 270, 1, -10 );

--書き文字
ctsyun = entryEffectLife( spep_0-3 + 32,  10011, 12, 0x100, -1, 0, 155.1, 271.1 );--シュンッ

setEffMoveKey( spep_0-3 + 32, ctsyun, 155.1, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 34, ctsyun, 155.4, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 38, ctsyun, 155.4, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 40, ctsyun, 155.3, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 42, ctsyun, 155.3, 271.1 , 0 );
setEffMoveKey( spep_0-3 + 44, ctsyun, 155.2, 271.1 , 0 );

setEffScaleKey( spep_0-3 + 32, ctsyun, 1.05, 1.05 );
setEffScaleKey( spep_0-3 + 34, ctsyun, 2.02, 2.02 );
setEffScaleKey( spep_0-3 + 36, ctsyun, 1.98, 1.98 );
setEffScaleKey( spep_0-3 + 38, ctsyun, 1.84, 1.84 );
setEffScaleKey( spep_0-3 + 40, ctsyun, 1.62, 1.62 );
setEffScaleKey( spep_0-3 + 42, ctsyun, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 44, ctsyun, 0.9, 0.9 );

setEffRotateKey( spep_0-3 + 32, ctsyun, 29.7 );
setEffRotateKey( spep_0-3 + 40, ctsyun, 29.7 );
setEffRotateKey( spep_0-3 + 42, ctsyun, 29.6 );
setEffRotateKey( spep_0-3 + 44, ctsyun, 29.6 );

setEffAlphaKey( spep_0-3 + 32, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 34, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 36, ctsyun, 245 );
setEffAlphaKey( spep_0-3 + 38, ctsyun, 214 );
setEffAlphaKey( spep_0-3 + 40, ctsyun, 163 );
setEffAlphaKey( spep_0-3 + 42, ctsyun, 92 );
setEffAlphaKey( spep_0-3 + 44, ctsyun, 0 );


--書き文字
ctga = entryEffectLife( spep_0-3 + 88,  10005, 12, 0x100, -1, 0, 158.2, 338 );--ガッ

setEffMoveKey( spep_0-3 + 88, ctga, 158.2, 338 , 0 );
setEffMoveKey( spep_0-3 + 90, ctga, 158.1, 338.1 , 0 );
setEffMoveKey( spep_0-3 + 92, ctga, 158.2, 338 , 0 );
setEffMoveKey( spep_0-3 + 94, ctga, 158.1, 338 , 0 );
setEffMoveKey( spep_0-3 + 100, ctga, 158.1, 338 , 0 );

setEffScaleKey( spep_0-3 + 88, ctga, 2.25, 2.25 );
setEffScaleKey( spep_0-3 + 100, ctga, 2.25, 2.25 );

setEffRotateKey( spep_0-3 + 88, ctga, 14.9 );
setEffRotateKey( spep_0-3 + 90, ctga, 21.4 );
setEffRotateKey( spep_0-3 + 92, ctga, 16.5 );
setEffRotateKey( spep_0-3 + 94, ctga, 21.2 );
setEffRotateKey( spep_0-3 + 100, ctga, 21.2 );

setEffAlphaKey( spep_0-3 + 88, ctga, 255 );
setEffAlphaKey( spep_0-3 + 94, ctga, 255 );
setEffAlphaKey( spep_0-3 + 96, ctga, 170 );
setEffAlphaKey( spep_0-3 + 98, ctga, 85 );
setEffAlphaKey( spep_0-3 + 100, ctga, 0 );

--書き文字
ctbaki = entryEffectLife( spep_0-3 + 234,  10020, 24, 0x100, -1, 0, -56.6, 316.5 );--バキッ

setEffMoveKey( spep_0-3 + 234, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_0-3 + 236, ctbaki, -74.8, 332.9 , 0 );
setEffMoveKey( spep_0-3 + 238, ctbaki, -56.7, 316.5 , 0 );
setEffMoveKey( spep_0-3 + 240, ctbaki, -74.7, 332.9 , 0 );
setEffMoveKey( spep_0-3 + 242, ctbaki, -56.8, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 244, ctbaki, -74.1, 332.3 , 0 );
setEffMoveKey( spep_0-3 + 246, ctbaki, -56.7, 316.5 , 0 );
setEffMoveKey( spep_0-3 + 248, ctbaki, -73, 331.4 , 0 );
setEffMoveKey( spep_0-3 + 250, ctbaki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 252, ctbaki, -71.2, 329.8 , 0 );
setEffMoveKey( spep_0-3 + 254, ctbaki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 256, ctbaki, -67.7, 326.6 , 0 );
setEffMoveKey( spep_0-3 + 258, ctbaki, -56.3, 316.3 , 0 );

setEffScaleKey( spep_0-3 + 234, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_0-3 + 236, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 238, ctbaki, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 240, ctbaki, 2.86, 2.86 );
setEffScaleKey( spep_0-3 + 242, ctbaki, 2.82, 2.82 );
setEffScaleKey( spep_0-3 + 244, ctbaki, 2.78, 2.78 );
setEffScaleKey( spep_0-3 + 246, ctbaki, 2.71, 2.71 );
setEffScaleKey( spep_0-3 + 248, ctbaki, 2.61, 2.61 );
setEffScaleKey( spep_0-3 + 250, ctbaki, 2.49, 2.49 );
setEffScaleKey( spep_0-3 + 252, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_0-3 + 254, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_0-3 + 256, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_0-3 + 258, ctbaki, 1.29, 1.29 );

setEffRotateKey( spep_0-3 + 234, ctbaki, -2.7 );
setEffRotateKey( spep_0-3 + 258, ctbaki, -2.7 );

setEffAlphaKey( spep_0-3 + 234, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 236, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 238, ctbaki, 254 );
setEffAlphaKey( spep_0-3 + 240, ctbaki, 251 );
setEffAlphaKey( spep_0-3 + 242, ctbaki, 246 );
setEffAlphaKey( spep_0-3 + 244, ctbaki, 239 );
setEffAlphaKey( spep_0-3 + 246, ctbaki, 228 );
setEffAlphaKey( spep_0-3 + 248, ctbaki, 215 );
setEffAlphaKey( spep_0-3 + 250, ctbaki, 196 );
setEffAlphaKey( spep_0-3 + 252, ctbaki, 172 );
setEffAlphaKey( spep_0-3 + 254, ctbaki, 138 );
setEffAlphaKey( spep_0-3 + 256, ctbaki, 91 );
setEffAlphaKey( spep_0-3 + 258, ctbaki, 13 );

--流線
ryusen1 = entryEffectLife( spep_0-3 + 86,  904, 4, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 86, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 90, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 86, ryusen1, 4.29, 1.69 );
setEffScaleKey( spep_0-3 + 90, ryusen1, 4.29, 1.69 );

setEffRotateKey( spep_0-3 + 86, ryusen1, -45 );
setEffRotateKey( spep_0-3 + 90, ryusen1, -45 );

setEffAlphaKey( spep_0-3 + 86, ryusen1, 118 );
setEffAlphaKey( spep_0-3 + 90, ryusen1, 118 );

--流線
ryusen2 = entryEffectLife( spep_0-3 + 128,  904, 23, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 128, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 148, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 128, ryusen2, 5.64, 1.69 );
setEffScaleKey( spep_0-3 + 130, ryusen2, 5.69, 1.69 );
setEffScaleKey( spep_0-3 + 132, ryusen2, 5.74, 1.69 );
setEffScaleKey( spep_0-3 + 134, ryusen2, 5.79, 1.69 );
setEffScaleKey( spep_0-3 + 136, ryusen2, 5.84, 1.69 );
setEffScaleKey( spep_0-3 + 138, ryusen2, 5.89, 1.69 );
setEffScaleKey( spep_0-3 + 140, ryusen2, 5.94, 1.69 );
setEffScaleKey( spep_0-3 + 142, ryusen2, 5.99, 1.69 );
setEffScaleKey( spep_0-3 + 144, ryusen2, 6.04, 1.69 );
setEffScaleKey( spep_0-3 + 146, ryusen2, 6.09, 1.69 );
setEffScaleKey( spep_0 + 148, ryusen2, 6.14, 1.69 );

setEffRotateKey( spep_0-3 + 128, ryusen2, 135 );
setEffRotateKey( spep_0 + 148, ryusen2, 135 );

setEffAlphaKey( spep_0-3 + 128, ryusen2, 0 );
setEffAlphaKey( spep_0-3 + 130, ryusen2, 12 );
setEffAlphaKey( spep_0-3 + 132, ryusen2, 24 );
setEffAlphaKey( spep_0-3 + 134, ryusen2, 35 );
setEffAlphaKey( spep_0-3 + 136, ryusen2, 47 );
setEffAlphaKey( spep_0-3 + 138, ryusen2, 59 );
setEffAlphaKey( spep_0-3 + 140, ryusen2, 71 );
setEffAlphaKey( spep_0-3 + 142, ryusen2, 82 );
setEffAlphaKey( spep_0-3 + 144, ryusen2, 94 );
setEffAlphaKey( spep_0-3 + 146, ryusen2, 106 );
setEffAlphaKey( spep_0 + 148, ryusen2, 118 );

--流線
ryusen3 = entryEffectLife( spep_0-3 + 160,  904, 60, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 160, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 220, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 160, ryusen3, 5.01, 1.69 );
setEffScaleKey( spep_0-3 + 220, ryusen3, 5.01, 1.69 );

setEffRotateKey( spep_0-3 + 160, ryusen3, 98 );
setEffRotateKey( spep_0-3 + 178, ryusen3, 98 );
setEffRotateKey( spep_0-3 + 180, ryusen3, 97.9 );
setEffRotateKey( spep_0-3 + 198, ryusen3, 97.9 );
setEffRotateKey( spep_0-3 + 200, ryusen3, 97.8 );
setEffRotateKey( spep_0-3 + 206, ryusen3, 97.8 );
setEffRotateKey( spep_0-3 + 208, ryusen3, 97.7 );
setEffRotateKey( spep_0-3 + 210, ryusen3, 97.7 );
setEffRotateKey( spep_0-3 + 212, ryusen3, 97.6 );
setEffRotateKey( spep_0-3 + 214, ryusen3, 97.5 );
setEffRotateKey( spep_0-3 + 216, ryusen3, 97.4 );
setEffRotateKey( spep_0-3 + 218, ryusen3, 97.3 );
setEffRotateKey( spep_0-3 + 220, ryusen3, 97 );

setEffAlphaKey( spep_0-3 + 160, ryusen3, 118 );
setEffAlphaKey( spep_0-3 + 220, ryusen3, 118 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 270, 906, 110, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 270, shuchusen1, 110, 20 );

setEffMoveKey( spep_0 + 270, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 380, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 270, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 380, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 270, shuchusen1, 0 );
setEffRotateKey( spep_0 + 380, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 270, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 280, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 281, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 282, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 380, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 270, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 270, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +282, 190006, 72, 0x100, -1, 0, 120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +282,  ctgogo,  120,  510);
setEffMoveKey(  spep_0 +352,  ctgogo,  120,  510);

setEffAlphaKey( spep_0 +282, ctgogo, 0 );
setEffAlphaKey( spep_0 + 283, ctgogo, 255 );
setEffAlphaKey( spep_0 + 284, ctgogo, 255 );
setEffAlphaKey( spep_0 + 348, ctgogo, 255 );
setEffAlphaKey( spep_0 + 350, ctgogo, 191 );
setEffAlphaKey( spep_0 + 352, ctgogo, 112 );
setEffAlphaKey( spep_0 + 354, ctgogo, 64 );

setEffRotateKey(  spep_0 +282,  ctgogo,  0);
setEffRotateKey(  spep_0 +354,  ctgogo,  0);

setEffScaleKey(  spep_0 +282,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +344,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +354,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 30, 43 );
playSe( spep_0 + 80, 1003 );
playSe( spep_0 + 95, 1001 );
playSe( spep_0 + 97, 1010 );
se_1116 = playSe( spep_0 + 121, 1116 );
playSe( spep_0 + 152, 1108 );
setSeVolume( spep_0 + 152, 1108, 178 );
playSe( spep_0 + 153, 1106 );
setSeVolume( spep_0 + 153, 1106, 178 );
se_0008 = playSe( spep_0 + 162, 8 );
setSeVolume( spep_0 + 190, 8, 235 );
setSeVolume( spep_0 + 228, 8, 562 );
se_0063 = playSe( spep_0 + 163, 63 );
setSeVolume( spep_0 + 163, 63, 71 );
playSe( spep_0 + 163, 1003 );
se_1190 = playSe( spep_0 + 232, 1190 );
playSe( spep_0 + 232, 1110 );
playSe( spep_0 + 232, 1009 );
se_1037 = playSe( spep_0 + 283, 1037 );
playSe( spep_0 + 282, 1018 );

stopSe( spep_0 + 163, se_1116, 0 );
stopSe( spep_0 + 235, se_0008, 0 );
stopSe( spep_0 + 232, se_0063, 0 );
stopSe( spep_0 + 254, se_1190, 31 );
stopSe( spep_0 + 377, se_1037, 0 );


--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_0+46 , 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 372, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

spep_1=spep_0+380;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- エネルギー波発射〜フィニッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 314, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 314, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 314, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 314, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 314, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 314, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 314, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 314, finish_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 176,  906, 136, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_2-3 + 176, shuchusen2, 136, 20 );
setEffMoveKey( spep_2-3 + 176, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 312, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 176, shuchusen2, 1.34, 1.44 );
setEffScaleKey( spep_2-3 + 310, shuchusen2, 1.34, 1.44 );
setEffScaleKey( spep_2-3 + 312, shuchusen2, 1.47, 1.51 );

setEffRotateKey( spep_2-3 + 176, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 312, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 176, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 176, shuchusen2, 255 );

--敵の動き
setDisp( spep_2 -3  + 100, 1, 1 );
setDisp( spep_2 -3 + 178, 1, 0 );

changeAnime( spep_2 -3  + 100, 1, 108 );
changeAnime( spep_2 -3  + 108, 1, 105 );

setMoveKey( spep_2-3 + 100, 1, -55.7, 60.2 , 0 );
setMoveKey( spep_2-3 + 102, 1, -35.7, 66.9 , 0 );
setMoveKey( spep_2-3 + 104, 1, -15.7, 73.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 4.3, 80.2 , 0 );
setMoveKey( spep_2-3 + 107, 1, 4.3, 80.2 , 0 );

setMoveKey( spep_2-3 + 108, 1, 53.2, 96.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, 84.6, 53.6 , 0 );
setMoveKey( spep_2-3 + 112, 1, 147.4, 61.9 , 0 );
setMoveKey( spep_2-3 + 114, 1, 139.9, 63.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, 169, 54.8 , 0 );
setMoveKey( spep_2-3 + 118, 1, 180.7, 64.2 , 0 );
setMoveKey( spep_2-3 + 120, 1, 200.2, 48.6 , 0 );
setMoveKey( spep_2-3 + 122, 1, 204.3, 50.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, 208.8, 69.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 221.7, 80.9 , 0 );
setMoveKey( spep_2-3 + 128, 1, 226.1, 87.5 , 0 );
setMoveKey( spep_2-3 + 130, 1, 225.6, 100.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 237.7, 114 , 0 );
setMoveKey( spep_2-3 + 134, 1, 233.5, 141.5 , 0 );
setMoveKey( spep_2-3 + 136, 1, 245.5, 139.8 , 0 );
setMoveKey( spep_2-3 + 138, 1, 243.2, 159.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 243.1, 154.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 242.4, 144.6 , 0 );
setMoveKey( spep_2-3 + 144, 1, 242.4, 135.5 , 0 );
setMoveKey( spep_2-3 + 146, 1, 239.2, 133 , 0 );
setMoveKey( spep_2-3 + 148, 1, 250.9, 125.8 , 0 );
setMoveKey( spep_2-3 + 150, 1, 238.5, 125.1 , 0 );
setMoveKey( spep_2-3 + 152, 1, 239.8, 114.7 , 0 );
setMoveKey( spep_2-3 + 154, 1, 240, 110.3 , 0 );
setMoveKey( spep_2-3 + 156, 1, 228.2, 108.4 , 0 );
setMoveKey( spep_2-3 + 158, 1, 230.3, 103 , 0 );
setMoveKey( spep_2-3 + 160, 1, 225.1, 97.6 , 0 );
setMoveKey( spep_2-3 + 162, 1, 223.6, 93.8 , 0 );
setMoveKey( spep_2-3 + 164, 1, 217.9, 94.6 , 0 );
setMoveKey( spep_2-3 + 166, 1, 220.9, 85.2 , 0 );
setMoveKey( spep_2-3 + 168, 1, 219.8, 81 , 0 );
setMoveKey( spep_2-3 + 170, 1, 227.1, 33.7 , 0 );
setMoveKey( spep_2-3 + 172, 1, 241.2, -25.5 , 0 );
setMoveKey( spep_2-3 + 174, 1, 223.2, -56.3 , 0 );
setMoveKey( spep_2-3 + 176, 1, 138.8, -81.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 202.7, -205.7 , 0 );

setScaleKey( spep_2-3 + 100, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 107, 1, 1.5, 1.5 );

setScaleKey( spep_2-3 + 108, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 110, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 112, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 114, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 116, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 118, 1, 1.22, 1.22 );
setScaleKey( spep_2-3 + 120, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 122, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 124, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 126, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 128, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 130, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 132, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 134, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 136, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 138, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 140, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 142, 1, 0.5, 0.5 );
setScaleKey( spep_2-3 + 144, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 146, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 148, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 150, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 152, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 154, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 156, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 158, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 160, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 162, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 164, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 166, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 168, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 170, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 172, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 174, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 176, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 178, 1, 0.24, 0.24 );

setRotateKey( spep_2-3 + 100, 1, 0 );
setRotateKey( spep_2-3 + 107, 1, 0 );

setRotateKey( spep_2-3 + 108, 1, 25 );
setRotateKey( spep_2-3 + 110, 1, 27 );
setRotateKey( spep_2-3 + 112, 1, 32.5 );
setRotateKey( spep_2-3 + 114, 1, 40.5 );
setRotateKey( spep_2-3 + 116, 1, 48.8 );
setRotateKey( spep_2-3 + 118, 1, 56.1 );
setRotateKey( spep_2-3 + 120, 1, 62.1 );
setRotateKey( spep_2-3 + 122, 1, 67.1 );
setRotateKey( spep_2-3 + 124, 1, 71.1 );
setRotateKey( spep_2-3 + 126, 1, 74.4 );
setRotateKey( spep_2-3 + 128, 1, 77.1 );
setRotateKey( spep_2-3 + 130, 1, 79.4 );
setRotateKey( spep_2-3 + 132, 1, 81.1 );
setRotateKey( spep_2-3 + 134, 1, 82.4 );
setRotateKey( spep_2-3 + 136, 1, 83.4 );
setRotateKey( spep_2-3 + 138, 1, 84.2 );
setRotateKey( spep_2-3 + 140, 1, 84.7 );
setRotateKey( spep_2-3 + 142, 1, 85 );
setRotateKey( spep_2-3 + 144, 1, 85.4 );
setRotateKey( spep_2-3 + 146, 1, 85.9 );
setRotateKey( spep_2-3 + 148, 1, 86.5 );
setRotateKey( spep_2-3 + 150, 1, 87.2 );
setRotateKey( spep_2-3 + 152, 1, 87.9 );
setRotateKey( spep_2-3 + 154, 1, 88.9 );
setRotateKey( spep_2-3 + 156, 1, 89.9 );
setRotateKey( spep_2-3 + 158, 1, 91 );
setRotateKey( spep_2-3 + 160, 1, 92.4 );
setRotateKey( spep_2-3 + 162, 1, 94 );
setRotateKey( spep_2-3 + 164, 1, 95.9 );
setRotateKey( spep_2-3 + 166, 1, 98.2 );
setRotateKey( spep_2-3 + 168, 1, 100.9 );
setRotateKey( spep_2-3 + 170, 1, 104.2 );
setRotateKey( spep_2-3 + 172, 1, 108.7 );
setRotateKey( spep_2-3 + 174, 1, 115 );
setRotateKey( spep_2-3 + 176, 1, 115 );
setRotateKey( spep_2-3 + 178, 1, 92.5 );

--SE
playSe( spep_2 + 2, 1022 );
se_1212 = playSe( spep_2 + 22, 1212 );
setSeVolume( spep_2 + 22, 1212, 40 );
playSe( spep_2 + 51, 1027 );
playSe( spep_2 + 98, 1025 );
playSe( spep_2 + 165, 1023 );
playSe( spep_2 + 165, 1159 );
setSeVolume( spep_2 + 165, 1159, 56 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 172 );
endPhase( spep_2 + 300 );
end
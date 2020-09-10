--4019610:魔人ブウ(悪)_イルフラッシュ
--sp_effect_b4_00141

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
SP_01=	155351	;--	突進〜打撃〜口に気溜め
SP_02=	155352	;--	突進〜打撃〜口に気溜め
SP_03=	155353	;--	口から気功波〜フィニッシュ

--エフェクト(てき)
SP_01x=	155354	;--	突進〜打撃〜口に気溜め	(敵)
SP_02x=	155355	;--	突進〜打撃〜口に気溜め	(敵)
SP_03x=	155398	;--	口から気功波〜フィニッシュ	

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
-- 突進〜打撃〜口に気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 670, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 670, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 670, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 670, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 670, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 670, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 670, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 670, tame_b, 255 );

--SE
se_1183 = playSe( spep_0 + 0, 1183 );
SE1=playSe( spep_0 + 0, 1167 );
setSeVolume( spep_0 + 0, 1167, 25 );
SE2=playSe( spep_0 + 0, 9 );
SE3=playSe( spep_0 + 0, 1182 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 680, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    stopSe( SP_dodge - 12, se_1183, 0 );

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

--敵の動き
setDisp( spep_0-3 + 80, 1, 1);
setDisp( spep_0-1 + 550, 1, 0);

changeAnime( spep_0-3 + 80, 1, 105);
changeAnime( spep_0-3 + 174, 1, 106);
changeAnime( spep_0-3 + 230, 1, 105);
changeAnime( spep_0-3 + 246, 1, 6);
changeAnime( spep_0-3 + 484, 1, 106);
changeAnime( spep_0-3 + 518, 1, 5);

setMoveKey( spep_0-3 + 80, 1, 71.1, 72.2 , 0 );
setMoveKey( spep_0-3 + 82, 1, 77.4, 73.5 , 0 );
setMoveKey( spep_0-3 + 84, 1, 72.4, 65.4 , 0 );
setMoveKey( spep_0-3 + 86, 1, 79.8, 79.5 , 0 );
setMoveKey( spep_0-3 + 88, 1, 102.8, 114.2 , 0 );
setMoveKey( spep_0-3 + 90, 1, 145.3, 182.1 , 0 );
setMoveKey( spep_0-3 + 92, 1, 187.9, 244.4 , 0 );
setMoveKey( spep_0-3 + 94, 1, 201.8, 272.8 , 0 );
setMoveKey( spep_0-3 + 96, 1, 201.7, 266.9 , 0 );
setMoveKey( spep_0-3 + 98, 1, 174.3, 230.4 , 0 );
setMoveKey( spep_0-3 + 100, 1, 166.3, 213.6 , 0 );
setMoveKey( spep_0-3 + 102, 1, 158.9, 205.9 , 0 );
setMoveKey( spep_0-3 + 104, 1, 152.4, 195.9 , 0 );
setMoveKey( spep_0-3 + 106, 1, 146.3, 188.8 , 0 );
setMoveKey( spep_0-3 + 108, 1, 141.3, 183.4 , 0 );
setMoveKey( spep_0-3 + 110, 1, 137.1, 179.4 , 0 );
setMoveKey( spep_0-3 + 112, 1, 133.5, 176.1 , 0 );
setMoveKey( spep_0-3 + 114, 1, 130.4, 173.7 , 0 );
setMoveKey( spep_0-3 + 116, 1, 127.6, 172 , 0 );
setMoveKey( spep_0-3 + 118, 1, 125.2, 170.8 , 0 );
setMoveKey( spep_0-3 + 120, 1, 123.1, 170 , 0 );
setMoveKey( spep_0-3 + 122, 1, 121.3, 169.6 , 0 );
setMoveKey( spep_0-3 + 124, 1, 119.6, 169.7 , 0 );
setMoveKey( spep_0-3 + 126, 1, 118.2, 170 , 0 );
setMoveKey( spep_0-3 + 128, 1, 116.9, 170.6 , 0 );
setMoveKey( spep_0-3 + 130, 1, 115.9, 171.5 , 0 );
setMoveKey( spep_0-3 + 132, 1, 115, 172.6 , 0 );
setMoveKey( spep_0-3 + 134, 1, 114.2, 174 , 0 );
setMoveKey( spep_0-3 + 136, 1, 113.6, 175.5 , 0 );
setMoveKey( spep_0-3 + 138, 1, 113, 177.3 , 0 );
setMoveKey( spep_0-3 + 140, 1, 112.7, 179.2 , 0 );
setMoveKey( spep_0-3 + 142, 1, 112.5, 181.4 , 0 );
setMoveKey( spep_0-3 + 144, 1, 112.4, 183.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 112.4, 186.3 , 0 );
setMoveKey( spep_0-3 + 148, 1, 112.8, 189.2 , 0 );
setMoveKey( spep_0-3 + 150, 1, 113.1, 192.2 , 0 );
setMoveKey( spep_0-3 + 152, 1, 113.5, 195.2 , 0 );
setMoveKey( spep_0-3 + 154, 1, 113.8, 198.2 , 0 );
setMoveKey( spep_0-3 + 156, 1, 114.2, 201.1 , 0 );
setMoveKey( spep_0-3 + 158, 1, 114.5, 204.1 , 0 );
setMoveKey( spep_0-3 + 160, 1, 113.6, 205.3 , 0 );
setMoveKey( spep_0-3 + 162, 1, 117.5, 211 , 0 );
setMoveKey( spep_0-3 + 164, 1, 113.1, 212.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, 116.6, 217.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 115.7, 217.4 , 0 );
setMoveKey( spep_0-3 + 170, 1, 116, 220.4 , 0 );
setMoveKey( spep_0-3 + 172, 1, 116.4, 223.4 , 0 );
setMoveKey( spep_0-3 + 173, 1, 116.4, 223.4 , 0 );

setMoveKey( spep_0-3 + 174, 1, 14.5, 87.1 , 0 );
setMoveKey( spep_0-3 + 176, 1, 12.2, 85.8 , 0 );
setMoveKey( spep_0-3 + 178, 1, 15.5, 85.7 , 0 );
setMoveKey( spep_0-3 + 180, 1, 9.7, 87.2 , 0 );
setMoveKey( spep_0-3 + 182, 1, 11.2, 83.5 , 0 );
setMoveKey( spep_0-3 + 184, 1, 5.9, 84.3 , 0 );
setMoveKey( spep_0-3 + 186, 1, 2.7, 81 , 0 );
setMoveKey( spep_0-3 + 188, 1, -21.9, 70.7 , 0 );
setMoveKey( spep_0-3 + 190, 1, -76.1, 38.2 , 0 );
setMoveKey( spep_0-3 + 192, 1, -100.6, 29.2 , 0 );
setMoveKey( spep_0-3 + 194, 1, -114.2, 18.4 , 0 );
setMoveKey( spep_0-3 + 196, 1, -129, 14 , 0 );
setMoveKey( spep_0-3 + 198, 1, -134.2, 9.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, -144.5, 4 , 0 );
setMoveKey( spep_0-3 + 202, 1, -146.8, 3.6 , 0 );
setMoveKey( spep_0-3 + 204, 1, -155.6, 0.8 , 0 );
setMoveKey( spep_0-3 + 206, 1, -154.3, -3.4 , 0 );
setMoveKey( spep_0-3 + 208, 1, -159, -0.3 , 0 );
setMoveKey( spep_0-3 + 210, 1, -159, -4.5 , 0 );
setMoveKey( spep_0-3 + 212, 1, -160, -1.8 , 0 );
setMoveKey( spep_0-3 + 214, 1, -159.4, -5.3 , 0 );
setMoveKey( spep_0-3 + 216, 1, -161.7, -1.5 , 0 );
setMoveKey( spep_0-3 + 218, 1, -162.5, -5.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, -158, -3.2 , 0 );
setMoveKey( spep_0-3 + 222, 1, -162.4, -5.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, -159.6, -0.4 , 0 );
setMoveKey( spep_0-3 + 226, 1, -159.8, -5.5 , 0 );
setMoveKey( spep_0-3 + 228, 1, -161.2, -1.1 , 0 );
setMoveKey( spep_0-3 + 229, 1, -161.2, -1.1 , 0 );

setMoveKey( spep_0-3 + 230, 1, -211.3, -290.2 , 0 );
setMoveKey( spep_0-3 + 232, 1, -233.2, -242.5 , 0 );
setMoveKey( spep_0-3 + 234, 1, -224.4, -286.6 , 0 );
setMoveKey( spep_0-3 + 236, 1, -220.9, -269.2 , 0 );
setMoveKey( spep_0-3 + 238, 1, -211.3, -305.5 , 0 );
setMoveKey( spep_0-3 + 240, 1, -208.2, -350.3 , 0 );
setMoveKey( spep_0-3 + 242, 1, -201.6, -395.9 , 0 );
setMoveKey( spep_0-3 + 244, 1, -200.9, -495.2 , 0 );
setMoveKey( spep_0-3 + 245, 1, -200.9, -495.2 , 0 );

setMoveKey( spep_0-3 + 246, 1, -171.5, -727.2 , 0 );
setMoveKey( spep_0-3 + 248, 1, -129.2, -1137.3 , 0 );
setMoveKey( spep_0-3 + 250, 1, -119.1, -1322.8 , 0 );
setMoveKey( spep_0-3 + 252, 1, -98.8, -1403.9 , 0 );
setMoveKey( spep_0-3 + 254, 1, -103.7, -1448.7 , 0 );
setMoveKey( spep_0-3 + 256, 1, -97.5, -1474.8 , 0 );
setMoveKey( spep_0-3 + 258, 1, -97.2, -1485.8 , 0 );
setMoveKey( spep_0-3 + 259, 1, -97.2, -1485.8 , 0 );

setMoveKey( spep_0-3 + 260, 1, -12.5, 815.1 , 0 );
setMoveKey( spep_0-3 + 262, 1, -14.1, 760.8 , 0 );
setMoveKey( spep_0-3 + 264, 1, -10.8, 603.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, -14.6, 339.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, -12.6, -29.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, -14.1, -35.3 , 0 );
setMoveKey( spep_0-3 + 272, 1, -10.9, -38.4 , 0 );
setMoveKey( spep_0-3 + 274, 1, -14.7, -43.3 , 0 );
setMoveKey( spep_0-3 + 276, 1, -10.5, -45.1 , 0 );
setMoveKey( spep_0-3 + 278, 1, -14.5, -49.9 , 0 );
setMoveKey( spep_0-3 + 280, 1, -11, -54.1 , 0 );
setMoveKey( spep_0-3 + 282, 1, -15.6, -57.7 , 0 );
setMoveKey( spep_0-3 + 284, 1, -11.1, -58.8 , 0 );
setMoveKey( spep_0-3 + 286, 1, -13.2, -66.4 , 0 );
setMoveKey( spep_0-3 + 288, 1, -11, -65.1 , 0 );
setMoveKey( spep_0-3 + 290, 1, -12.2, -72.1 , 0 );
setMoveKey( spep_0-3 + 292, 1, -14.3, -70.4 , 0 );
setMoveKey( spep_0-3 + 294, 1, -13, -77.4 , 0 );

setMoveKey( spep_0-3 + 352, 1, -12.8, -28.2 , 0 );
setMoveKey( spep_0-3 + 354, 1, -15, -28.8 , 0 );
setMoveKey( spep_0-3 + 356, 1, -10.5, -28 , 0 );
setMoveKey( spep_0-3 + 358, 1, -15.5, -27.6 , 0 );
setMoveKey( spep_0-3 + 360, 1, -11.8, -29.2 , 0 );
setMoveKey( spep_0-3 + 362, 1, -15.4, -26.9 , 0 );
setMoveKey( spep_0-3 + 364, 1, -10.8, -26.9 , 0 );
setMoveKey( spep_0-3 + 366, 1, -13.4, -30.1 , 0 );
setMoveKey( spep_0-3 + 368, 1, -11, -27 , 0 );
setMoveKey( spep_0-3 + 370, 1, -15, -29.3 , 0 );
setMoveKey( spep_0-3 + 372, 1, -11.7, -26.9 , 0 );
setMoveKey( spep_0-3 + 374, 1, -11.5, -30.1 , 0 );
setMoveKey( spep_0-3 + 376, 1, 2.7, -26.5 , 0 );
setMoveKey( spep_0-3 + 378, 1, 14.2, -27.5 , 0 );
setMoveKey( spep_0-3 + 380, 1, 35.8, -29.5 , 0 );
setMoveKey( spep_0-3 + 382, 1, 43.3, -25.8 , 0 );
setMoveKey( spep_0-3 + 384, 1, 45.3, -29.8 , 0 );
setMoveKey( spep_0-3 + 386, 1, 48.4, -27.9 , 0 );

setMoveKey( spep_0-3 + 484, 1, -738.1, 34.6 , 0 );
setMoveKey( spep_0-3 + 486, 1, -98.8, 38.5 , 0 );
setMoveKey( spep_0-3 + 488, 1, -39.5, 33.5 , 0 );
setMoveKey( spep_0-3 + 490, 1, -11.5, 38.7 , 0 );
setMoveKey( spep_0-3 + 492, 1, 2.3, 32.2 , 0 );
setMoveKey( spep_0-3 + 494, 1, 14.4, 39.2 , 0 );
setMoveKey( spep_0-3 + 496, 1, 23.2, 33.4 , 0 );
setMoveKey( spep_0-3 + 498, 1, 30.4, 38.9 , 0 );
setMoveKey( spep_0-3 + 500, 1, 36.5, 32.9 , 0 );
setMoveKey( spep_0-3 + 502, 1, 45.9, 37.6 , 0 );
setMoveKey( spep_0-3 + 504, 1, 49.6, 34 , 0 );
setMoveKey( spep_0-3 + 506, 1, 59.6, 34 , 0 );
setMoveKey( spep_0-3 + 508, 1, 80.8, 34.1 , 0 );
setMoveKey( spep_0-3 + 510, 1, 119, 34.1 , 0 );
setMoveKey( spep_0-3 + 512, 1, 186.3, 34.2 , 0 );
setMoveKey( spep_0-3 + 514, 1, 318.4, 34.2 , 0 );
setMoveKey( spep_0-3 + 516, 1, 611.8, 34.3 , 0 );
setMoveKey( spep_0-3 + 517, 1, 611.8, 34.3 , 0 );

setMoveKey( spep_0-3 + 518, 1, 132.1, 91.2 , 0 );
setMoveKey( spep_0-3 + 520, 1, 165, 95.1 , 0 );
setMoveKey( spep_0-3 + 522, 1, 179, 96.6 , 0 );
setMoveKey( spep_0-3 + 524, 1, 189, 97.5 , 0 );
setMoveKey( spep_0-3 + 526, 1, 196.8, 98.3 , 0 );
setMoveKey( spep_0-3 + 528, 1, 203.2, 99 , 0 );
setMoveKey( spep_0-3 + 530, 1, 208.5, 99.5 , 0 );
setMoveKey( spep_0-3 + 532, 1, 213.1, 99.9 , 0 );
setMoveKey( spep_0-3 + 534, 1, 216.9, 100.3 , 0 );
setMoveKey( spep_0-3 + 536, 1, 220.3, 100.6 , 0 );
setMoveKey( spep_0-3 + 538, 1, 223.2, 100.9 , 0 );
setMoveKey( spep_0-3 + 540, 1, 225.6, 101.2 , 0 );
setMoveKey( spep_0-3 + 542, 1, 227.6, 101.4 , 0 );
setMoveKey( spep_0-3 + 544, 1, 229.4, 101.6 , 0 );
setMoveKey( spep_0-3 + 546, 1, 230.7, 101.7 , 0 );
setMoveKey( spep_0-3 + 548, 1, 231.8, 101.9 , 0 );
setMoveKey( spep_0-1 + 550, 1, 232.5, 102 , 0 );

setScaleKey( spep_0-3 + 80, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 82, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 84, 1, 1.88, 1.88 );
setScaleKey( spep_0-3 + 86, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 88, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 90, 1, 1.24, 1.24 );
setScaleKey( spep_0-3 + 92, 1, 0.82, 0.82 );
setScaleKey( spep_0-3 + 94, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 96, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 98, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 100, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 102, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 104, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 124, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 126, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 132, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 134, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 140, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 142, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 148, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 150, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 154, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 156, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 160, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 162, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 168, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 170, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 173, 1, 0.1, 0.1 );

setScaleKey( spep_0-3 + 174, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 180, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 182, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 184, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 186, 1, 3.28, 3.28 );
setScaleKey( spep_0-3 + 188, 1, 3.24, 3.24 );
setScaleKey( spep_0-3 + 190, 1, 3.15, 3.15 );
setScaleKey( spep_0-3 + 192, 1, 3.1, 3.1 );
setScaleKey( spep_0-3 + 194, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 196, 1, 3.06, 3.06 );
setScaleKey( spep_0-3 + 198, 1, 3.04, 3.04 );
setScaleKey( spep_0-3 + 200, 1, 3.03, 3.03 );
setScaleKey( spep_0-3 + 202, 1, 3.02, 3.02 );
setScaleKey( spep_0-3 + 204, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 206, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 208, 1, 3, 3 );
setScaleKey( spep_0-3 + 228, 1, 3, 3 );
setScaleKey( spep_0-3 + 229, 1, 3, 3 );

setScaleKey( spep_0-3 + 230, 1, 3.15, 3.15 );
setScaleKey( spep_0-3 + 232, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 234, 1, 3.09, 3.09 );
setScaleKey( spep_0-3 + 236, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 238, 1, 3, 3 );

setScaleKey( spep_0-3 + 246, 1, 3, 3 );
setScaleKey( spep_0-3 + 259, 1, 3, 3 );

setScaleKey( spep_0-3 + 260, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 294, 1, 2.2, 2.2 );

setScaleKey( spep_0-3 + 352, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 386, 1, 2.2, 2.2 );

setScaleKey( spep_0-3 + 484, 1, 2, 2 );
setScaleKey( spep_0-3 + 517, 1, 2, 2 );

setScaleKey( spep_0-3 + 518, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 520, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 522, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 524, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 526, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 528, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 530, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 532, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 534, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 536, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 538, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 540, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 542, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 544, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 546, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 548, 1, 0.1, 0.1 );
setScaleKey( spep_0-1 + 550, 1, 0.1, 0.1 );

setRotateKey( spep_0-3 + 80, 1, 0 );
setRotateKey( spep_0-3 + 229, 1, 0 );

setRotateKey( spep_0-3 + 230, 1, -68.3 );
setRotateKey( spep_0-3 + 232, 1, -68.6 );
setRotateKey( spep_0-3 + 234, 1, -69.7 );
setRotateKey( spep_0-3 + 236, 1, -71.7 );
setRotateKey( spep_0-3 + 238, 1, -75.1 );
setRotateKey( spep_0-3 + 240, 1, -80.2 );
setRotateKey( spep_0-3 + 242, 1, -88 );
setRotateKey( spep_0-3 + 244, 1, -101 );
setRotateKey( spep_0-3 + 245, 1, -101 );

setRotateKey( spep_0-3 + 246, 1, -31.3 );
setRotateKey( spep_0-3 + 248, 1, -84.5 );
setRotateKey( spep_0-3 + 250, 1, -108.4 );
setRotateKey( spep_0-3 + 252, 1, -120.2 );
setRotateKey( spep_0-3 + 254, 1, -126.3 );
setRotateKey( spep_0-3 + 256, 1, -129.2 );
setRotateKey( spep_0-3 + 258, 1, -130 );
setRotateKey( spep_0-3 + 259, 1, -130 );

setRotateKey( spep_0-3 + 260, 1, -120 );
setRotateKey( spep_0-3 + 386, 1, -120 );

setRotateKey( spep_0-3 + 484, 1, -18.5 );
setRotateKey( spep_0-3 + 486, 1, 20.9 );
setRotateKey( spep_0-3 + 488, 1, 24.5 );
setRotateKey( spep_0-3 + 490, 1, 26.1 );
setRotateKey( spep_0-3 + 492, 1, 27 );
setRotateKey( spep_0-3 + 494, 1, 27.7 );
setRotateKey( spep_0-3 + 496, 1, 28.2 );
setRotateKey( spep_0-3 + 498, 1, 28.6 );
setRotateKey( spep_0-3 + 500, 1, 29.1 );
setRotateKey( spep_0-3 + 502, 1, 29.5 );
setRotateKey( spep_0-3 + 504, 1, 30 );
setRotateKey( spep_0-3 + 517, 1, 30 );

setRotateKey( spep_0-3 + 518, 1, 45 );
setRotateKey( spep_0-1 + 550, 1, 45 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+568  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+568  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +580, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +580,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +652,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +580, ctgogo, 0 );
setEffAlphaKey( spep_0 + 581, ctgogo, 255 );
setEffAlphaKey( spep_0 + 582, ctgogo, 255 );
setEffAlphaKey( spep_0 + 646, ctgogo, 255 );
setEffAlphaKey( spep_0 + 648, ctgogo, 191 );
setEffAlphaKey( spep_0 + 650, ctgogo, 112 );
setEffAlphaKey( spep_0 + 652, ctgogo, 64 );

setEffRotateKey(  spep_0 +580,  ctgogo,  0);
setEffRotateKey(  spep_0 +652,  ctgogo,  0);

setEffScaleKey(  spep_0 +580,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +642,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +652,  ctgogo, 1.07, 1.07 );

-- ** 音 ** --
playSe( spep_0 + 580, 1018 );

playSe( spep_0 + 68, 1004 );
playSe( spep_0 + 77, 1153 );
setSeVolume( spep_0 + 77, 1153, 79 );
playSe( spep_0 + 80, 1010 );
playSe( spep_0 + 82, 1110 );
setSeVolume( spep_0 + 82, 1110, 79 );
playSe( spep_0 + 90, 1183 );
se_1116 = playSe( spep_0 + 93, 1116 );
setSeVolume( spep_0 + 93, 1116, 63 );
playSe( spep_0 + 154, 1207 );
setSeVolume( spep_0 + 154, 1207, 40 );
playSe( spep_0 + 154, 44 );
setSeVolume( spep_0 + 154, 44, 126 );
se_11161 = playSe( spep_0 + 210, 1116 );
setSeVolume( spep_0 + 210, 1116, 112 );
playSe( spep_0 + 216, 1003 );
playSe( spep_0 + 218, 1232 );
playSe( spep_0 + 232, 1123 );
playSe( spep_0 + 266, 1183 );
setSeVolume( spep_0 + 266, 1183, 100 );
setSeVolume( spep_0 + 300, 1183, 100 );
setSeVolume( spep_0 + 301, 1183, 100 );
setSeVolume( spep_0 + 302, 1183, 75 );
setSeVolume( spep_0 + 303, 1183, 59 );
playSe( spep_0 + 267, 1121 );
setSeVolume( spep_0 + 267, 1121, 56 );
setSeVolume( spep_0 + 391, 1121, 56 );
setSeVolume( spep_0 + 392, 1121, 60.1 );
setSeVolume( spep_0 + 393, 1121, 64.2 );
setSeVolume( spep_0 + 394, 1121, 68.3 );
setSeVolume( spep_0 + 395, 1121, 72.4 );
setSeVolume( spep_0 + 396, 1121, 76.5 );
setSeVolume( spep_0 + 397, 1121, 80.6 );
setSeVolume( spep_0 + 398, 1121, 84.7 );
setSeVolume( spep_0 + 399, 1121, 89 );
setSeVolume( spep_0 + 440, 1121, 89 );
setSeVolume( spep_0 + 441, 1121, 77 );
setSeVolume( spep_0 + 442, 1121, 65 );
setSeVolume( spep_0 + 443, 1121, 53 );
setSeVolume( spep_0 + 440, 1121, 41 );
playSe( spep_0 + 307, 1232 );
playSe( spep_0 + 338, 1182 );
se_1109 = playSe( spep_0 + 338, 1109 );
playSe( spep_0 + 338, 1183 );
playSe( spep_0 + 338, 44 );
playSe( spep_0 + 387, 37 );
playSe( spep_0 + 387, 4 );
setSeVolume( spep_0 + 387, 4, 126 );
playSe( spep_0 + 413, 1004 );
se_11162 = playSe( spep_0 + 413, 1116 );
playSe( spep_0 + 453, 1182 );
setSeVolume( spep_0 + 453, 1182, 0 );
setSeVolume( spep_0 + 458, 1182, 0 );
setSeVolume( spep_0 + 459, 1182, 5.07 );
setSeVolume( spep_0 + 460, 1182, 10.14 );
setSeVolume( spep_0 + 461, 1182, 15.21 );
setSeVolume( spep_0 + 462, 1182, 20.29 );
setSeVolume( spep_0 + 463, 1182, 25.36 );
setSeVolume( spep_0 + 464, 1182, 30.43 );
setSeVolume( spep_0 + 465, 1182, 35.5 );
setSeVolume( spep_0 + 466, 1182, 40.57 );
setSeVolume( spep_0 + 467, 1182, 45.64 );
setSeVolume( spep_0 + 468, 1182, 50.71 );
setSeVolume( spep_0 + 469, 1182, 55.79 );
setSeVolume( spep_0 + 470, 1182, 60.86 );
setSeVolume( spep_0 + 471, 1182, 65.93 );
setSeVolume( spep_0 + 472, 1182, 71 );
playSe( spep_0 + 478, 1003 );
playSe( spep_0 + 484, 1120 );
playSe( spep_0 + 501, 1072 );
se_0009 = playSe( spep_0 + 513, 9 );
setSeVolume( spep_0 + 513, 9, 0 );
setSeVolume( spep_0 + 513, 9, 0 );
setSeVolume( spep_0 + 514, 9, 2.54 );
setSeVolume( spep_0 + 515, 9, 5.07 );
setSeVolume( spep_0 + 516, 9, 7.61 );
setSeVolume( spep_0 + 517, 9, 10.14 );
setSeVolume( spep_0 + 518, 9, 12.68 );
setSeVolume( spep_0 + 519, 9, 15.21 );
setSeVolume( spep_0 + 520, 9, 17.75 );
setSeVolume( spep_0 + 521, 9, 20.29 );
setSeVolume( spep_0 + 522, 9, 22.82 );
setSeVolume( spep_0 + 523, 9, 25.36 );
setSeVolume( spep_0 + 524, 9, 27.89 );
setSeVolume( spep_0 + 525, 9, 30.43 );
setSeVolume( spep_0 + 526, 9, 32.96 );
setSeVolume( spep_0 + 527, 9, 35.5 );
setSeVolume( spep_0 + 528, 9, 38.04 );
setSeVolume( spep_0 + 529, 9, 40.57 );
setSeVolume( spep_0 + 530, 9, 43.11 );
setSeVolume( spep_0 + 531, 9, 45.64 );
setSeVolume( spep_0 + 532, 9, 48.18 );
setSeVolume( spep_0 + 533, 9, 50.71 );
setSeVolume( spep_0 + 534, 9, 53.25 );
setSeVolume( spep_0 + 535, 9, 55.79 );
setSeVolume( spep_0 + 536, 9, 58.32 );
setSeVolume( spep_0 + 537, 9, 60.86 );
setSeVolume( spep_0 + 538, 9, 63.39 );
setSeVolume( spep_0 + 539, 9, 65.93 );
setSeVolume( spep_0 + 540, 9, 68.46 );
setSeVolume( spep_0 + 541, 9, 71 );
se_1191 = playSe( spep_0 + 604, 1191 );
setSeVolume( spep_0 + 604, 1191, 200 );
SE0=playSe( spep_0 + 606, 1144 );
setSeVolume( spep_0 + 606, 1144, 63 );

stopSe( spep_0 + 46, se_1183, 19 );
stopSe( spep_0 + 112, se_1116, 16 );
stopSe( spep_0 + 234, se_11161, 10 );
stopSe( spep_0 + 349, se_1109, 12 );
stopSe( spep_0 + 438, se_11162, 22 );
stopSe( spep_0 + 549, se_0009, 64 );
stopSe( spep_0 + 650, se_1191, 15 );

--白フェード
entryFade( spep_0+662 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+670;

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
stopSe( spep_1 + 0, SE0, 0 );


--白フェード
entryFade( spep_1 + 80, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 口から気功波〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 218, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 218, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 218, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 218, finish, 255 );

--SE
playSe( spep_2 + 0, 1027 );
setSeVolume( spep_2 + 0, 1027, 71 );
playSe( spep_2 + 2, 1213 );
setSeVolume( spep_2 + 2, 1213, 71 );
playSe( spep_2 + 7, 1124 );
setSeVolume( spep_2 + 7, 1124, 40 );
playSe( spep_2 + 7, 1215 );
setSeVolume( spep_2 + 7, 1215, 71 );
playSe( spep_2 + 94, 1160 );
setSeVolume( spep_2 + 94, 1160, 89 );
playSe( spep_2 + 99, 1145 );
setSeVolume( spep_2 + 99, 1145, 71 );
playSe( spep_2 + 99, 1159 );
setSeVolume( spep_2 + 99, 1159, 71 );
playSe( spep_2 + 99, 1024 );
setSeVolume( spep_2 + 99, 1024, 79 );
-- ** ダメージ表示 ** --
dealDamage( spep_2 + 90 );
endPhase( spep_2 + 200 );
else 
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進〜打撃〜口に気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 670, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 670, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 670, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 670, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 670, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 670, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 670, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 670, tame_b, 255 );

--SE
se_1183 = playSe( spep_0 + 0, 1183 );
SE1=playSe( spep_0 + 0, 1167 );
setSeVolume( spep_0 + 0, 1167, 25 );
SE2=playSe( spep_0 + 0, 9 );
SE3=playSe( spep_0 + 0, 1182 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 680, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    stopSe( SP_dodge - 12, se_1183, 0 );

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


--敵の動き
setDisp( spep_0-3 + 80, 1, 1);
setDisp( spep_0-1 + 550, 1, 0);

changeAnime( spep_0-3 + 80, 1, 105);
changeAnime( spep_0-3 + 174, 1, 106);
changeAnime( spep_0-3 + 230, 1, 105);
changeAnime( spep_0-3 + 246, 1, 6);
changeAnime( spep_0-3 + 484, 1, 106);
changeAnime( spep_0-3 + 518, 1, 5);

setMoveKey( spep_0-3 + 80, 1, 71.1, 72.2 , 0 );
setMoveKey( spep_0-3 + 82, 1, 77.4, 73.5 , 0 );
setMoveKey( spep_0-3 + 84, 1, 72.4, 65.4 , 0 );
setMoveKey( spep_0-3 + 86, 1, 79.8, 79.5 , 0 );
setMoveKey( spep_0-3 + 88, 1, 102.8, 114.2 , 0 );
setMoveKey( spep_0-3 + 90, 1, 145.3, 182.1 , 0 );
setMoveKey( spep_0-3 + 92, 1, 187.9, 244.4 , 0 );
setMoveKey( spep_0-3 + 94, 1, 201.8, 272.8 , 0 );
setMoveKey( spep_0-3 + 96, 1, 201.7, 266.9 , 0 );
setMoveKey( spep_0-3 + 98, 1, 174.3, 230.4 , 0 );
setMoveKey( spep_0-3 + 100, 1, 166.3, 213.6 , 0 );
setMoveKey( spep_0-3 + 102, 1, 158.9, 205.9 , 0 );
setMoveKey( spep_0-3 + 104, 1, 152.4, 195.9 , 0 );
setMoveKey( spep_0-3 + 106, 1, 146.3, 188.8 , 0 );
setMoveKey( spep_0-3 + 108, 1, 141.3, 183.4 , 0 );
setMoveKey( spep_0-3 + 110, 1, 137.1, 179.4 , 0 );
setMoveKey( spep_0-3 + 112, 1, 133.5, 176.1 , 0 );
setMoveKey( spep_0-3 + 114, 1, 130.4, 173.7 , 0 );
setMoveKey( spep_0-3 + 116, 1, 127.6, 172 , 0 );
setMoveKey( spep_0-3 + 118, 1, 125.2, 170.8 , 0 );
setMoveKey( spep_0-3 + 120, 1, 123.1, 170 , 0 );
setMoveKey( spep_0-3 + 122, 1, 121.3, 169.6 , 0 );
setMoveKey( spep_0-3 + 124, 1, 119.6, 169.7 , 0 );
setMoveKey( spep_0-3 + 126, 1, 118.2, 170 , 0 );
setMoveKey( spep_0-3 + 128, 1, 116.9, 170.6 , 0 );
setMoveKey( spep_0-3 + 130, 1, 115.9, 171.5 , 0 );
setMoveKey( spep_0-3 + 132, 1, 115, 172.6 , 0 );
setMoveKey( spep_0-3 + 134, 1, 114.2, 174 , 0 );
setMoveKey( spep_0-3 + 136, 1, 113.6, 175.5 , 0 );
setMoveKey( spep_0-3 + 138, 1, 113, 177.3 , 0 );
setMoveKey( spep_0-3 + 140, 1, 112.7, 179.2 , 0 );
setMoveKey( spep_0-3 + 142, 1, 112.5, 181.4 , 0 );
setMoveKey( spep_0-3 + 144, 1, 112.4, 183.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 112.4, 186.3 , 0 );
setMoveKey( spep_0-3 + 148, 1, 112.8, 189.2 , 0 );
setMoveKey( spep_0-3 + 150, 1, 113.1, 192.2 , 0 );
setMoveKey( spep_0-3 + 152, 1, 113.5, 195.2 , 0 );
setMoveKey( spep_0-3 + 154, 1, 113.8, 198.2 , 0 );
setMoveKey( spep_0-3 + 156, 1, 114.2, 201.1 , 0 );
setMoveKey( spep_0-3 + 158, 1, 114.5, 204.1 , 0 );
setMoveKey( spep_0-3 + 160, 1, 113.6, 205.3 , 0 );
setMoveKey( spep_0-3 + 162, 1, 117.5, 211 , 0 );
setMoveKey( spep_0-3 + 164, 1, 113.1, 212.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, 116.6, 217.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 115.7, 217.4 , 0 );
setMoveKey( spep_0-3 + 170, 1, 116, 220.4 , 0 );
setMoveKey( spep_0-3 + 172, 1, 116.4, 223.4 , 0 );
setMoveKey( spep_0-3 + 173, 1, 116.4, 223.4 , 0 );

setMoveKey( spep_0-3 + 174, 1, 14.5, 87.1 , 0 );
setMoveKey( spep_0-3 + 176, 1, 12.2, 85.8 , 0 );
setMoveKey( spep_0-3 + 178, 1, 15.5, 85.7 , 0 );
setMoveKey( spep_0-3 + 180, 1, 9.7, 87.2 , 0 );
setMoveKey( spep_0-3 + 182, 1, 11.2, 83.5 , 0 );
setMoveKey( spep_0-3 + 184, 1, 5.9, 84.3 , 0 );
setMoveKey( spep_0-3 + 186, 1, 2.7, 81 , 0 );
setMoveKey( spep_0-3 + 188, 1, -21.9, 70.7 , 0 );
setMoveKey( spep_0-3 + 190, 1, -76.1, 38.2 , 0 );
setMoveKey( spep_0-3 + 192, 1, -100.6, 29.2 , 0 );
setMoveKey( spep_0-3 + 194, 1, -114.2, 18.4 , 0 );
setMoveKey( spep_0-3 + 196, 1, -129, 14 , 0 );
setMoveKey( spep_0-3 + 198, 1, -134.2, 9.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, -144.5, 4 , 0 );
setMoveKey( spep_0-3 + 202, 1, -146.8, 3.6 , 0 );
setMoveKey( spep_0-3 + 204, 1, -155.6, 0.8 , 0 );
setMoveKey( spep_0-3 + 206, 1, -154.3, -3.4 , 0 );
setMoveKey( spep_0-3 + 208, 1, -159, -0.3 , 0 );
setMoveKey( spep_0-3 + 210, 1, -159, -4.5 , 0 );
setMoveKey( spep_0-3 + 212, 1, -160, -1.8 , 0 );
setMoveKey( spep_0-3 + 214, 1, -159.4, -5.3 , 0 );
setMoveKey( spep_0-3 + 216, 1, -161.7, -1.5 , 0 );
setMoveKey( spep_0-3 + 218, 1, -162.5, -5.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, -158, -3.2 , 0 );
setMoveKey( spep_0-3 + 222, 1, -162.4, -5.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, -159.6, -0.4 , 0 );
setMoveKey( spep_0-3 + 226, 1, -159.8, -5.5 , 0 );
setMoveKey( spep_0-3 + 228, 1, -161.2, -1.1 , 0 );
setMoveKey( spep_0-3 + 229, 1, -161.2, -1.1 , 0 );

setMoveKey( spep_0-3 + 230, 1, -211.3, -290.2 , 0 );
setMoveKey( spep_0-3 + 232, 1, -233.2, -242.5 , 0 );
setMoveKey( spep_0-3 + 234, 1, -224.4, -286.6 , 0 );
setMoveKey( spep_0-3 + 236, 1, -220.9, -269.2 , 0 );
setMoveKey( spep_0-3 + 238, 1, -211.3, -305.5 , 0 );
setMoveKey( spep_0-3 + 240, 1, -208.2, -350.3 , 0 );
setMoveKey( spep_0-3 + 242, 1, -201.6, -395.9 , 0 );
setMoveKey( spep_0-3 + 244, 1, -200.9, -495.2 , 0 );
setMoveKey( spep_0-3 + 245, 1, -200.9, -495.2 , 0 );

setMoveKey( spep_0-3 + 246, 1, -171.5, -727.2 , 0 );
setMoveKey( spep_0-3 + 248, 1, -129.2, -1137.3 , 0 );
setMoveKey( spep_0-3 + 250, 1, -119.1, -1322.8 , 0 );
setMoveKey( spep_0-3 + 252, 1, -98.8, -1403.9 , 0 );
setMoveKey( spep_0-3 + 254, 1, -103.7, -1448.7 , 0 );
setMoveKey( spep_0-3 + 256, 1, -97.5, -1474.8 , 0 );
setMoveKey( spep_0-3 + 258, 1, -97.2, -1485.8 , 0 );
setMoveKey( spep_0-3 + 259, 1, -97.2, -1485.8 , 0 );

setMoveKey( spep_0-3 + 260, 1, -12.5, 815.1 , 0 );
setMoveKey( spep_0-3 + 262, 1, -14.1, 760.8 , 0 );
setMoveKey( spep_0-3 + 264, 1, -10.8, 603.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, -14.6, 339.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, -12.6, -29.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, -14.1, -35.3 , 0 );
setMoveKey( spep_0-3 + 272, 1, -10.9, -38.4 , 0 );
setMoveKey( spep_0-3 + 274, 1, -14.7, -43.3 , 0 );
setMoveKey( spep_0-3 + 276, 1, -10.5, -45.1 , 0 );
setMoveKey( spep_0-3 + 278, 1, -14.5, -49.9 , 0 );
setMoveKey( spep_0-3 + 280, 1, -11, -54.1 , 0 );
setMoveKey( spep_0-3 + 282, 1, -15.6, -57.7 , 0 );
setMoveKey( spep_0-3 + 284, 1, -11.1, -58.8 , 0 );
setMoveKey( spep_0-3 + 286, 1, -13.2, -66.4 , 0 );
setMoveKey( spep_0-3 + 288, 1, -11, -65.1 , 0 );
setMoveKey( spep_0-3 + 290, 1, -12.2, -72.1 , 0 );
setMoveKey( spep_0-3 + 292, 1, -14.3, -70.4 , 0 );
setMoveKey( spep_0-3 + 294, 1, -13, -77.4 , 0 );

setMoveKey( spep_0-3 + 352, 1, -12.8, -28.2 , 0 );
setMoveKey( spep_0-3 + 354, 1, -15, -28.8 , 0 );
setMoveKey( spep_0-3 + 356, 1, -10.5, -28 , 0 );
setMoveKey( spep_0-3 + 358, 1, -15.5, -27.6 , 0 );
setMoveKey( spep_0-3 + 360, 1, -11.8, -29.2 , 0 );
setMoveKey( spep_0-3 + 362, 1, -15.4, -26.9 , 0 );
setMoveKey( spep_0-3 + 364, 1, -10.8, -26.9 , 0 );
setMoveKey( spep_0-3 + 366, 1, -13.4, -30.1 , 0 );
setMoveKey( spep_0-3 + 368, 1, -11, -27 , 0 );
setMoveKey( spep_0-3 + 370, 1, -15, -29.3 , 0 );
setMoveKey( spep_0-3 + 372, 1, -11.7, -26.9 , 0 );
setMoveKey( spep_0-3 + 374, 1, -11.5, -30.1 , 0 );
setMoveKey( spep_0-3 + 376, 1, 2.7, -26.5 , 0 );
setMoveKey( spep_0-3 + 378, 1, 14.2, -27.5 , 0 );
setMoveKey( spep_0-3 + 380, 1, 35.8, -29.5 , 0 );
setMoveKey( spep_0-3 + 382, 1, 43.3, -25.8 , 0 );
setMoveKey( spep_0-3 + 384, 1, 45.3, -29.8 , 0 );
setMoveKey( spep_0-3 + 386, 1, 48.4, -27.9 , 0 );

setMoveKey( spep_0-3 + 484, 1, -738.1, 34.6 , 0 );
setMoveKey( spep_0-3 + 486, 1, -98.8, 38.5 , 0 );
setMoveKey( spep_0-3 + 488, 1, -39.5, 33.5 , 0 );
setMoveKey( spep_0-3 + 490, 1, -11.5, 38.7 , 0 );
setMoveKey( spep_0-3 + 492, 1, 2.3, 32.2 , 0 );
setMoveKey( spep_0-3 + 494, 1, 14.4, 39.2 , 0 );
setMoveKey( spep_0-3 + 496, 1, 23.2, 33.4 , 0 );
setMoveKey( spep_0-3 + 498, 1, 30.4, 38.9 , 0 );
setMoveKey( spep_0-3 + 500, 1, 36.5, 32.9 , 0 );
setMoveKey( spep_0-3 + 502, 1, 45.9, 37.6 , 0 );
setMoveKey( spep_0-3 + 504, 1, 49.6, 34 , 0 );
setMoveKey( spep_0-3 + 506, 1, 59.6, 34 , 0 );
setMoveKey( spep_0-3 + 508, 1, 80.8, 34.1 , 0 );
setMoveKey( spep_0-3 + 510, 1, 119, 34.1 , 0 );
setMoveKey( spep_0-3 + 512, 1, 186.3, 34.2 , 0 );
setMoveKey( spep_0-3 + 514, 1, 318.4, 34.2 , 0 );
setMoveKey( spep_0-3 + 516, 1, 611.8, 34.3 , 0 );
setMoveKey( spep_0-3 + 517, 1, 611.8, 34.3 , 0 );

setMoveKey( spep_0-3 + 518, 1, 132.1, 91.2 , 0 );
setMoveKey( spep_0-3 + 520, 1, 165, 95.1 , 0 );
setMoveKey( spep_0-3 + 522, 1, 179, 96.6 , 0 );
setMoveKey( spep_0-3 + 524, 1, 189, 97.5 , 0 );
setMoveKey( spep_0-3 + 526, 1, 196.8, 98.3 , 0 );
setMoveKey( spep_0-3 + 528, 1, 203.2, 99 , 0 );
setMoveKey( spep_0-3 + 530, 1, 208.5, 99.5 , 0 );
setMoveKey( spep_0-3 + 532, 1, 213.1, 99.9 , 0 );
setMoveKey( spep_0-3 + 534, 1, 216.9, 100.3 , 0 );
setMoveKey( spep_0-3 + 536, 1, 220.3, 100.6 , 0 );
setMoveKey( spep_0-3 + 538, 1, 223.2, 100.9 , 0 );
setMoveKey( spep_0-3 + 540, 1, 225.6, 101.2 , 0 );
setMoveKey( spep_0-3 + 542, 1, 227.6, 101.4 , 0 );
setMoveKey( spep_0-3 + 544, 1, 229.4, 101.6 , 0 );
setMoveKey( spep_0-3 + 546, 1, 230.7, 101.7 , 0 );
setMoveKey( spep_0-3 + 548, 1, 231.8, 101.9 , 0 );
setMoveKey( spep_0-1 + 550, 1, 232.5, 102 , 0 );

setScaleKey( spep_0-3 + 80, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 82, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 84, 1, 1.88, 1.88 );
setScaleKey( spep_0-3 + 86, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 88, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 90, 1, 1.24, 1.24 );
setScaleKey( spep_0-3 + 92, 1, 0.82, 0.82 );
setScaleKey( spep_0-3 + 94, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 96, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 98, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 100, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 102, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 104, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 124, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 126, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 132, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 134, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 140, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 142, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 148, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 150, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 154, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 156, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 160, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 162, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 168, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 170, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 173, 1, 0.1, 0.1 );

setScaleKey( spep_0-3 + 174, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 180, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 182, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 184, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 186, 1, 3.28, 3.28 );
setScaleKey( spep_0-3 + 188, 1, 3.24, 3.24 );
setScaleKey( spep_0-3 + 190, 1, 3.15, 3.15 );
setScaleKey( spep_0-3 + 192, 1, 3.1, 3.1 );
setScaleKey( spep_0-3 + 194, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 196, 1, 3.06, 3.06 );
setScaleKey( spep_0-3 + 198, 1, 3.04, 3.04 );
setScaleKey( spep_0-3 + 200, 1, 3.03, 3.03 );
setScaleKey( spep_0-3 + 202, 1, 3.02, 3.02 );
setScaleKey( spep_0-3 + 204, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 206, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 208, 1, 3, 3 );
setScaleKey( spep_0-3 + 228, 1, 3, 3 );
setScaleKey( spep_0-3 + 229, 1, 3, 3 );

setScaleKey( spep_0-3 + 230, 1, 3.15, 3.15 );
setScaleKey( spep_0-3 + 232, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 234, 1, 3.09, 3.09 );
setScaleKey( spep_0-3 + 236, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 238, 1, 3, 3 );

setScaleKey( spep_0-3 + 246, 1, 3, 3 );
setScaleKey( spep_0-3 + 259, 1, 3, 3 );

setScaleKey( spep_0-3 + 260, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 294, 1, 2.2, 2.2 );

setScaleKey( spep_0-3 + 352, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 386, 1, 2.2, 2.2 );

setScaleKey( spep_0-3 + 484, 1, 2, 2 );
setScaleKey( spep_0-3 + 517, 1, 2, 2 );

setScaleKey( spep_0-3 + 518, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 520, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 522, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 524, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 526, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 528, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 530, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 532, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 534, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 536, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 538, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 540, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 542, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 544, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 546, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 548, 1, 0.1, 0.1 );
setScaleKey( spep_0-1 + 550, 1, 0.1, 0.1 );

setRotateKey( spep_0-3 + 80, 1, 0 );
setRotateKey( spep_0-3 + 229, 1, 0 );

setRotateKey( spep_0-3 + 230, 1, -68.3 );
setRotateKey( spep_0-3 + 232, 1, -68.6 );
setRotateKey( spep_0-3 + 234, 1, -69.7 );
setRotateKey( spep_0-3 + 236, 1, -71.7 );
setRotateKey( spep_0-3 + 238, 1, -75.1 );
setRotateKey( spep_0-3 + 240, 1, -80.2 );
setRotateKey( spep_0-3 + 242, 1, -88 );
setRotateKey( spep_0-3 + 244, 1, -101 );
setRotateKey( spep_0-3 + 245, 1, -101 );

setRotateKey( spep_0-3 + 246, 1, -31.3 );
setRotateKey( spep_0-3 + 248, 1, -84.5 );
setRotateKey( spep_0-3 + 250, 1, -108.4 );
setRotateKey( spep_0-3 + 252, 1, -120.2 );
setRotateKey( spep_0-3 + 254, 1, -126.3 );
setRotateKey( spep_0-3 + 256, 1, -129.2 );
setRotateKey( spep_0-3 + 258, 1, -130 );
setRotateKey( spep_0-3 + 259, 1, -130 );

setRotateKey( spep_0-3 + 260, 1, -120 );
setRotateKey( spep_0-3 + 386, 1, -120 );

setRotateKey( spep_0-3 + 484, 1, -18.5 );
setRotateKey( spep_0-3 + 486, 1, 20.9 );
setRotateKey( spep_0-3 + 488, 1, 24.5 );
setRotateKey( spep_0-3 + 490, 1, 26.1 );
setRotateKey( spep_0-3 + 492, 1, 27 );
setRotateKey( spep_0-3 + 494, 1, 27.7 );
setRotateKey( spep_0-3 + 496, 1, 28.2 );
setRotateKey( spep_0-3 + 498, 1, 28.6 );
setRotateKey( spep_0-3 + 500, 1, 29.1 );
setRotateKey( spep_0-3 + 502, 1, 29.5 );
setRotateKey( spep_0-3 + 504, 1, 30 );
setRotateKey( spep_0-3 + 517, 1, 30 );

setRotateKey( spep_0-3 + 518, 1, 45 );
setRotateKey( spep_0-1 + 550, 1, 45 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+568  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+568  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +580, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +580,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +652,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +580, ctgogo, 0 );
setEffAlphaKey( spep_0 + 581, ctgogo, 255 );
setEffAlphaKey( spep_0 + 582, ctgogo, 255 );
setEffAlphaKey( spep_0 + 646, ctgogo, 255 );
setEffAlphaKey( spep_0 + 648, ctgogo, 191 );
setEffAlphaKey( spep_0 + 650, ctgogo, 112 );
setEffAlphaKey( spep_0 + 652, ctgogo, 64 );

setEffRotateKey(  spep_0 +580,  ctgogo,  0);
setEffRotateKey(  spep_0 +652,  ctgogo,  0);

setEffScaleKey(  spep_0 +580,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +642,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +652,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_0 + 580, 1018 );

playSe( spep_0 + 68, 1004 );
playSe( spep_0 + 77, 1153 );
setSeVolume( spep_0 + 77, 1153, 79 );
playSe( spep_0 + 80, 1010 );
playSe( spep_0 + 82, 1110 );
setSeVolume( spep_0 + 82, 1110, 79 );
playSe( spep_0 + 90, 1183 );
se_1116 = playSe( spep_0 + 93, 1116 );
setSeVolume( spep_0 + 93, 1116, 63 );
playSe( spep_0 + 154, 1207 );
setSeVolume( spep_0 + 154, 1207, 40 );
playSe( spep_0 + 154, 44 );
setSeVolume( spep_0 + 154, 44, 126 );
se_11161 = playSe( spep_0 + 210, 1116 );
setSeVolume( spep_0 + 210, 1116, 112 );
playSe( spep_0 + 216, 1003 );
playSe( spep_0 + 218, 1232 );
playSe( spep_0 + 232, 1123 );
playSe( spep_0 + 266, 1183 );
setSeVolume( spep_0 + 266, 1183, 100 );
setSeVolume( spep_0 + 300, 1183, 100 );
setSeVolume( spep_0 + 301, 1183, 100 );
setSeVolume( spep_0 + 302, 1183, 75 );
setSeVolume( spep_0 + 303, 1183, 59 );
playSe( spep_0 + 267, 1121 );
setSeVolume( spep_0 + 267, 1121, 56 );
setSeVolume( spep_0 + 391, 1121, 56 );
setSeVolume( spep_0 + 392, 1121, 60.1 );
setSeVolume( spep_0 + 393, 1121, 64.2 );
setSeVolume( spep_0 + 394, 1121, 68.3 );
setSeVolume( spep_0 + 395, 1121, 72.4 );
setSeVolume( spep_0 + 396, 1121, 76.5 );
setSeVolume( spep_0 + 397, 1121, 80.6 );
setSeVolume( spep_0 + 398, 1121, 84.7 );
setSeVolume( spep_0 + 399, 1121, 89 );
setSeVolume( spep_0 + 440, 1121, 89 );
setSeVolume( spep_0 + 441, 1121, 77 );
setSeVolume( spep_0 + 442, 1121, 65 );
setSeVolume( spep_0 + 443, 1121, 53 );
setSeVolume( spep_0 + 440, 1121, 41 );
playSe( spep_0 + 307, 1232 );
playSe( spep_0 + 338, 1182 );
se_1109 = playSe( spep_0 + 338, 1109 );
playSe( spep_0 + 338, 1183 );
playSe( spep_0 + 338, 44 );
playSe( spep_0 + 387, 37 );
playSe( spep_0 + 387, 4 );
setSeVolume( spep_0 + 387, 4, 126 );
playSe( spep_0 + 413, 1004 );
se_11162 = playSe( spep_0 + 413, 1116 );
playSe( spep_0 + 453, 1182 );
setSeVolume( spep_0 + 453, 1182, 0 );
setSeVolume( spep_0 + 458, 1182, 0 );
setSeVolume( spep_0 + 459, 1182, 5.07 );
setSeVolume( spep_0 + 460, 1182, 10.14 );
setSeVolume( spep_0 + 461, 1182, 15.21 );
setSeVolume( spep_0 + 462, 1182, 20.29 );
setSeVolume( spep_0 + 463, 1182, 25.36 );
setSeVolume( spep_0 + 464, 1182, 30.43 );
setSeVolume( spep_0 + 465, 1182, 35.5 );
setSeVolume( spep_0 + 466, 1182, 40.57 );
setSeVolume( spep_0 + 467, 1182, 45.64 );
setSeVolume( spep_0 + 468, 1182, 50.71 );
setSeVolume( spep_0 + 469, 1182, 55.79 );
setSeVolume( spep_0 + 470, 1182, 60.86 );
setSeVolume( spep_0 + 471, 1182, 65.93 );
setSeVolume( spep_0 + 472, 1182, 71 );
playSe( spep_0 + 478, 1003 );
playSe( spep_0 + 484, 1120 );
playSe( spep_0 + 501, 1072 );
se_0009 = playSe( spep_0 + 513, 9 );
setSeVolume( spep_0 + 513, 9, 0 );
setSeVolume( spep_0 + 513, 9, 0 );
setSeVolume( spep_0 + 514, 9, 2.54 );
setSeVolume( spep_0 + 515, 9, 5.07 );
setSeVolume( spep_0 + 516, 9, 7.61 );
setSeVolume( spep_0 + 517, 9, 10.14 );
setSeVolume( spep_0 + 518, 9, 12.68 );
setSeVolume( spep_0 + 519, 9, 15.21 );
setSeVolume( spep_0 + 520, 9, 17.75 );
setSeVolume( spep_0 + 521, 9, 20.29 );
setSeVolume( spep_0 + 522, 9, 22.82 );
setSeVolume( spep_0 + 523, 9, 25.36 );
setSeVolume( spep_0 + 524, 9, 27.89 );
setSeVolume( spep_0 + 525, 9, 30.43 );
setSeVolume( spep_0 + 526, 9, 32.96 );
setSeVolume( spep_0 + 527, 9, 35.5 );
setSeVolume( spep_0 + 528, 9, 38.04 );
setSeVolume( spep_0 + 529, 9, 40.57 );
setSeVolume( spep_0 + 530, 9, 43.11 );
setSeVolume( spep_0 + 531, 9, 45.64 );
setSeVolume( spep_0 + 532, 9, 48.18 );
setSeVolume( spep_0 + 533, 9, 50.71 );
setSeVolume( spep_0 + 534, 9, 53.25 );
setSeVolume( spep_0 + 535, 9, 55.79 );
setSeVolume( spep_0 + 536, 9, 58.32 );
setSeVolume( spep_0 + 537, 9, 60.86 );
setSeVolume( spep_0 + 538, 9, 63.39 );
setSeVolume( spep_0 + 539, 9, 65.93 );
setSeVolume( spep_0 + 540, 9, 68.46 );
setSeVolume( spep_0 + 541, 9, 71 );
se_1191 = playSe( spep_0 + 604, 1191 );
setSeVolume( spep_0 + 604, 1191, 200 );
SE0=playSe( spep_0 + 606, 1144 );
setSeVolume( spep_0 + 606, 1144, 63 );

stopSe( spep_0 + 46, se_1183, 19 );
stopSe( spep_0 + 112, se_1116, 16 );
stopSe( spep_0 + 234, se_11161, 10 );
stopSe( spep_0 + 349, se_1109, 12 );
stopSe( spep_0 + 438, se_11162, 22 );
stopSe( spep_0 + 549, se_0009, 64 );
stopSe( spep_0 + 650, se_1191, 15 );

--白フェード
entryFade( spep_0+662 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+670;

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
stopSe( spep_1 + 0, SE0, 0 );


--白フェード
entryFade( spep_1 + 80, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 口から気功波〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 218, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 218, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 218, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 218, finish, 255 );

--SE
playSe( spep_2 + 0, 1027 );
setSeVolume( spep_2 + 0, 1027, 71 );
playSe( spep_2 + 2, 1213 );
setSeVolume( spep_2 + 2, 1213, 71 );
playSe( spep_2 + 7, 1124 );
setSeVolume( spep_2 + 7, 1124, 40 );
playSe( spep_2 + 7, 1215 );
setSeVolume( spep_2 + 7, 1215, 71 );
playSe( spep_2 + 94, 1160 );
setSeVolume( spep_2 + 94, 1160, 89 );
playSe( spep_2 + 99, 1145 );
setSeVolume( spep_2 + 99, 1145, 71 );
playSe( spep_2 + 99, 1159 );
setSeVolume( spep_2 + 99, 1159, 71 );
playSe( spep_2 + 99, 1024 );
setSeVolume( spep_2 + 99, 1024, 79 );
-- ** ダメージ表示 ** --
dealDamage( spep_2 + 90 );
endPhase( spep_2 + 200 );
end
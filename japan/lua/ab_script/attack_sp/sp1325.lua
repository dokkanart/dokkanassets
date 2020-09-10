--1017900:セル(完全体)_かめはめ波
--sp_effect_b4_00105

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

--味方エフェクト
SP_01=	153915	;--	手前突進
SP_02=	153916	;--	連撃・手前
SP_03=	153917	;--	連撃・奥
SP_04=	153918	;--	構え・手前
SP_05=	153919	;--	構え・奥
SP_06=	153920	;--	発射
SP_07=	153921	;--	着弾〜ラスト・手前
SP_08=	153922	;--	着弾〜ラスト・奥

CT_01=	153959	;--	ブンッ
CT_02=	153960	;--	ガッ1
CT_03=	153961	;--	ガッ2
CT_04=	153962	;--	ドカカカ・・
CT_05=	153963	;--	ガッ3
CT_06=	153964	;--	ズッ
CT_07=	153965	;--	ギャオ
CT_08=	153966	;--	オオオ
CT_09=	153967	;--	ギュンッ

--てきエフェクト
SP_01x=	153915	;--	手前突進	
SP_02x=	153916	;--	連撃・手前	
SP_03x=	153917	;--	連撃・奥	
SP_04x=	153923	;--	構え・手前	(敵)
SP_05x=	153919	;--	構え・奥	
SP_06x=	153924	;--	発射	(敵)
SP_07x=	153921	;--	着弾〜ラスト・手前	
SP_08x=	153922	;--	着弾〜ラスト・奥	

CT_01x=	153959	;--	ブンッ	
CT_02x=	153968	;--	ガッ1	(敵)
CT_03x=	153969	;--	ガッ2	(敵)
CT_04x=	153970	;--	ドカカカ・・	(敵)
CT_05x=	153971	;--	ガッ3	(敵)
CT_06x=	153972	;--	ズッ	(敵)
CT_07x=	153973	;--	ギャオ	(敵)
CT_08x=	153974	;--	オオオ	(敵)
CT_09x=	153975	;--	ギュンッ	(敵)

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
-- 手前突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
lush = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, lush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, lush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, lush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, lush, 0 );
setEffRotateKey( spep_0 + 86, lush, 0 );
setEffAlphaKey( spep_0 + 0, lush, 255 );
setEffAlphaKey( spep_0 + 86, lush, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 ,  906, 65, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 - 3 + 68, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusen1, 1.17, 1.27 );
setEffScaleKey( spep_0 - 3 + 68, shuchusen1, 1.17, 1.27 );

setEffRotateKey( spep_0 , shuchusen1, 180 );
setEffRotateKey( spep_0 - 3 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_0 , shuchusen1, 0 );
setEffAlphaKey( spep_0 - 3 + 29, shuchusen1, 0);
setEffAlphaKey( spep_0 - 3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0 - 3 + 68, shuchusen1, 255 );

-- ** エフェクト等 ** --
ctbun = entryEffect( spep_0 + 0, CT_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ctbun, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, ctbun, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ctbun, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, ctbun, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ctbun, 0 );
setEffRotateKey( spep_0 + 86, ctbun, 0 );
setEffAlphaKey( spep_0 + 0, ctbun, 255 );
setEffAlphaKey( spep_0 + 86, ctbun, 255 );

-- ** 音 ** --
SE0=playSe( spep_0 + 24, 9 );  --ダッシュ

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
playSe( spep_0 + 40, 1072 );  --ダッシュ
--次の準備
spep_1 = spep_0+86;

------------------------------------------------------
-- 連撃
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 306, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 306, fighting_f, 255 );
setEffAlphaKey( spep_1 + 307, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 306, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 306, fighting_b, 255 );

--[[
--流線
ryusen1 = entryEffectLife( spep_1  + 0,  914, 84 - 3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 84, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 5.5, 1.23 );
setEffScaleKey( spep_1 -3 + 84, ryusen1, 5.5, 1.23 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 84, ryusen1, 0 );

setEffAlphaKey( spep_1  + 0, ryusen1, 128 );
setEffAlphaKey( spep_1 -3 + 80, ryusen1, 128 );
setEffAlphaKey( spep_1 -3 + 82, ryusen1, 64 );
setEffAlphaKey( spep_1 -3 + 84, ryusen1, 0 );
]]--
--敵の動き
setDisp( spep_1    + 0, 1, 1 );
setDisp( spep_1   -1 + 154, 1, 0 );
setDisp( spep_1 -3   + 250, 1, 1 );
setDisp( spep_1 -3   + 290, 1, 0 );

changeAnime( spep_1    + 0, 1, 100 );
changeAnime( spep_1 -3   + 10, 1, 108 );
changeAnime( spep_1 -3   + 42, 1, 106 );
changeAnime( spep_1 -3   + 78, 1, 107 );
changeAnime( spep_1 -3   + 106, 1, 105 );
changeAnime( spep_1 -3   + 250, 1, 108 );
changeAnime( spep_1 -3   + 260, 1, 106 );

setMoveKey( spep_1  , 1, 976.4, -36.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 683.1, -36.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 389.8, -36.5 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 96.4, -36.5 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 96.4, -36.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 124.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 133.4, -44.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 142.6, -44.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 151.8, -44.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 161, -44.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 170.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 179.4, -44.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 188.6, -44.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 197.8, -44.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 207, -44.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 216.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 472.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 728.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 984.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 1240.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 1496.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 1496.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -804.3, 99.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -666.6, 99.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -543.8, 99.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -435.9, 99.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -342.9, 99.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -264.9, 99.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -228.2, 99.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -193.3, 99.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -160.2, 99.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -128.9, 99.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -99.4, 99.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -71.7, 99.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -60.3, 99.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -49.2, 99.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -38.2, 99.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -27.3, 99.3 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -16.6, 99.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -6.1, 99.4 , 0 );
setMoveKey( spep_1 -3 + 77, 1, -6.1, 99.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -36, 22.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -22.7, -0.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -9.3, -23.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 16.1, -130.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 41.6, -238.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 67.1, -345.9 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 92.6, -453.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 118.2, -561.3 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 143.8, -669 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 169.4, -776.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 195.1, -884.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 220.7, -992.5 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 246.4, -1100.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 272.2, -1208.2 , 0 );
setMoveKey( spep_1 -3 + 105, 1, 272.2, -1208.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 219.5, -240.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 198.7, -207.3 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 198.7, -207.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 178, -174.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 157.3, -141.3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 136.7, -108.2 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 116.1, -75.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 95.6, -42.1 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 75.1, -9 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 54.7, 24.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 54.4, 23 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 54.2, 21.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 53.9, 20.4 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 53.6, 18.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 53.2, 17.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 52.9, 15.5 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 52.5, 13.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 52.1, 11.7 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 51.6, 9.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 51.2, 7.2 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 50.7, 4.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 50.2, 2.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 49.6, -0.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 49, -3.1 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 48.5, -6.1 , 0 );
setMoveKey( spep_1  + 154, 1, 47.8, -9.1 , 0 );

setMoveKey( spep_1 -3 + 250, 1, 854.5, 142.7 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 200.5, 95.7 , 0 );
setMoveKey( spep_1 -3 + 259, 1, 200.5, 95.7 , 0 );

setMoveKey( spep_1 -3 + 260, 1, 153.6, 303.9 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 160.6, 311.7 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 167.6, 319.5 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 174.7, 327.4 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 181.7, 335.3 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 188.7, 343.2 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 195.8, 351 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 202.8, 358.9 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 209.8, 366.8 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 216.8, 374.6 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 441.9, 665.8 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 667, 956.9 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 892.2, 1248.1 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 1117.3, 1539.2 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 1342.4, 1830.4 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 1567.5, 2121.5 , 0 );

setScaleKey( spep_1  , 1, 2.7, 2.7 );
setScaleKey( spep_1 -3 + 8, 1, 2.7, 2.7 );
setScaleKey( spep_1 -3 + 9, 1, 2.7, 2.7 );
setScaleKey( spep_1 -3 + 10, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 40, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 42, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 76, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 77, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 78, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 80, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 82, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 84, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 86, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 88, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 90, 1, 3.57, 3.57 );
setScaleKey( spep_1 -3 + 92, 1, 4.26, 4.26 );
setScaleKey( spep_1 -3 + 94, 1, 4.94, 4.94 );
setScaleKey( spep_1 -3 + 96, 1, 5.63, 5.63 );
setScaleKey( spep_1 -3 + 98, 1, 6.31, 6.31 );
setScaleKey( spep_1 -3 + 100, 1, 7, 7 );
setScaleKey( spep_1 -3 + 102, 1, 7.68, 7.68 );
setScaleKey( spep_1 -3 + 104, 1, 8.37, 8.37 );
setScaleKey( spep_1 -3 + 105, 1, 8.37, 8.37 );
setScaleKey( spep_1 -3 + 106, 1, 11.99, 11.99 );
setScaleKey( spep_1 -3 + 108, 1, 10.88, 10.88 );
setScaleKey( spep_1 -3 + 110, 1, 9.77, 9.77 );
setScaleKey( spep_1 -3 + 112, 1, 8.65, 8.65 );
setScaleKey( spep_1 -3 + 114, 1, 7.54, 7.54 );
setScaleKey( spep_1 -3 + 116, 1, 6.43, 6.43 );
setScaleKey( spep_1 -3 + 118, 1, 5.32, 5.32 );
setScaleKey( spep_1 -3 + 120, 1, 4.21, 4.21 );
setScaleKey( spep_1 -3 + 122, 1, 3.1, 3.1 );
setScaleKey( spep_1 -3 + 124, 1, 3.08, 3.08 );
setScaleKey( spep_1 -3 + 126, 1, 3.05, 3.05 );
setScaleKey( spep_1 -3 + 128, 1, 3.03, 3.03 );
setScaleKey( spep_1 -3 + 130, 1, 3, 3 );
setScaleKey( spep_1 -3 + 132, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 134, 1, 2.93, 2.93 );
setScaleKey( spep_1 -3 + 136, 1, 2.9, 2.9 );
setScaleKey( spep_1 -3 + 138, 1, 2.86, 2.86 );
setScaleKey( spep_1 -3 + 140, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 142, 1, 2.77, 2.77 );
setScaleKey( spep_1 -3 + 144, 1, 2.72, 2.72 );
setScaleKey( spep_1 -3 + 146, 1, 2.67, 2.67 );
setScaleKey( spep_1 -3 + 148, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 150, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 152, 1, 2.51, 2.51 );
setScaleKey( spep_1  + 154, 1, 2.45, 2.45 );

setScaleKey( spep_1 -3 + 250, 1, 5.18, 5.18 );
setScaleKey( spep_1 -3 + 258, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 259, 1, 2.18, 2.18 );

a=2;

setScaleKey( spep_1 -3 + 260, 1, 2.44 +a, 2.44+a );
--setScaleKey( spep_1 -3 + 262, 1, 2.42+a, 2.42+a );
--setScaleKey( spep_1 -3 + 264, 1, 2.4+a, 2.4+a );
--setScaleKey( spep_1 -3 + 266, 1, 2.39, 2.39 );
--setScaleKey( spep_1 -3 + 268, 1, 2.38, 2.38 );
--setScaleKey( spep_1 -3 + 270, 1, 2.36, 2.36 );
--setScaleKey( spep_1 -3 + 272, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 274, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 276, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 278, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 290, 1, 2.3, 2.3 );

setRotateKey( spep_1  , 1, 0 );
setRotateKey( spep_1 -3 + 8, 1, 0 );
setRotateKey( spep_1 -3 + 9, 1, 0 );
setRotateKey( spep_1 -3 + 10, 1, 2.5 );
setRotateKey( spep_1 -3 + 40, 1, 2.5 );
setRotateKey( spep_1 -3 + 42, 1, 4.8 );
setRotateKey( spep_1 -3 + 76, 1, 4.8 );
setRotateKey( spep_1 -3 + 77, 1, 4.8 );
setRotateKey( spep_1 -3 + 78, 1, -4.3 );
setRotateKey( spep_1 -3 + 80, 1, 0 );
setRotateKey( spep_1 -3 + 82, 1, 4.2 );
setRotateKey( spep_1 -3 + 84, 1, 4.7 );
setRotateKey( spep_1 -3 + 86, 1, 5.1 );
setRotateKey( spep_1 -3 + 88, 1, 5.6 );
setRotateKey( spep_1 -3 + 90, 1, 6.1 );
setRotateKey( spep_1 -3 + 92, 1, 6.6 );
setRotateKey( spep_1 -3 + 94, 1, 7 );
setRotateKey( spep_1 -3 + 96, 1, 7.5 );
setRotateKey( spep_1 -3 + 98, 1, 8 );
setRotateKey( spep_1 -3 + 100, 1, 8.5 );
setRotateKey( spep_1 -3 + 102, 1, 8.9 );
setRotateKey( spep_1 -3 + 104, 1, 9.4 );
setRotateKey( spep_1 -3 + 105, 1, 9.4 );
setRotateKey( spep_1 -3 + 106, 1, -17 );
setRotateKey( spep_1  + 154, 1, -17 );

setRotateKey( spep_1 -3 + 250, 1, 0 );
setRotateKey( spep_1 -3 + 258, 1, 0 );
setRotateKey( spep_1 -3 + 259, 1, 0 );
setRotateKey( spep_1 -3 + 260, 1, -29.4 );
setRotateKey( spep_1 -3 + 262, 1, -29.3 );
setRotateKey( spep_1 -3 + 272, 1, -29.3 );
setRotateKey( spep_1 -3 + 274, 1, -29.4 );
setRotateKey( spep_1 -3 + 290, 1, -29.4 );

-- 文字エントリー
ctga1 = entryEffect( spep_1 + 0, CT_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ctga1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, ctga1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctga1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, ctga1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctga1, 0 );
setEffRotateKey( spep_1 + 306, ctga1, 0 );
setEffAlphaKey( spep_1 + 0, ctga1, 255 );
setEffAlphaKey( spep_1 + 306, ctga1, 255 );

-- 文字エントリー
ctga2 = entryEffect( spep_1 -2 + 0, CT_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 -2 + 0, ctga2, 0, 0 , 0 );
setEffMoveKey( spep_1 -2 + 306, ctga2, 0, 0 , 0 );
setEffScaleKey( spep_1 -2 + 0, ctga2, 1.0, 1.0 );
setEffScaleKey( spep_1 -2 + 306, ctga2, 1.0, 1.0 );
setEffRotateKey( spep_1 -2 + 0, ctga2, 0 );
setEffRotateKey( spep_1 -2 + 306, ctga2, 0 );
setEffAlphaKey( spep_1 -2 + 0, ctga2, 255 );
setEffAlphaKey( spep_1 -2 + 306, ctga2, 255 );

-- 文字エントリー
ctdogagaga = entryEffect( spep_1 + 0, CT_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ctdogagaga, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, ctdogagaga, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctdogagaga, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, ctdogagaga, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctdogagaga, 0 );
setEffRotateKey( spep_1 + 306, ctdogagaga, 0 );
setEffAlphaKey( spep_1 + 0, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 306, ctdogagaga, 255 );

-- 文字エントリー
ctga3 = entryEffect( spep_1 + 0, CT_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ctga3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, ctga3, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctga3, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, ctga3, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctga3, 0 );
setEffRotateKey( spep_1 + 306, ctga3, 0 );
setEffAlphaKey( spep_1 + 0, ctga3, 255 );
setEffAlphaKey( spep_1 + 306, ctga3, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -2 ,  906, 307, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -1 + 305, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -2, shuchusen2, 1.17, 1.27 );
setEffScaleKey( spep_1 -3 + 106, shuchusen2, 1.17, 1.27 );
setEffScaleKey( spep_1 -3 + 126, shuchusen2, 1.17, 1.27 );
setEffScaleKey( spep_1 -3 + 128, shuchusen2, 1.23, 1.51 );
setEffScaleKey( spep_1 -3 + 156, shuchusen2, 1.23, 1.51 );
setEffScaleKey( spep_1 -3 + 166, shuchusen2, 1.23, 1.51 );
setEffScaleKey( spep_1 -1 + 168, shuchusen2, 1.44, 1.32 );
setEffScaleKey( spep_1 -1 + 210, shuchusen2, 1.44, 1.32 );
setEffScaleKey( spep_1 -1 + 212, shuchusen2, 1.11, 1.27 );
setEffScaleKey( spep_1 -1 + 248, shuchusen2, 1.11, 1.27 );
setEffScaleKey( spep_1 -1 + 256, shuchusen2, 1.11, 1.27 );
setEffScaleKey( spep_1 -1 + 258, shuchusen2, 1.11, 1.27 );
setEffScaleKey( spep_1 -1 + 306, shuchusen2, 1.11, 1.27 );

setEffRotateKey( spep_1 -2, shuchusen2, 180 );
setEffRotateKey( spep_1 -1 + 305, shuchusen2, 180 );

setEffAlphaKey( spep_1 -2, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 77, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 78, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 94, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 96, shuchusen2, 213 );
setEffAlphaKey( spep_1 -3 + 98, shuchusen2, 170 );
setEffAlphaKey( spep_1 -3 + 100, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 102, shuchusen2, 85 );
setEffAlphaKey( spep_1 -3 + 104, shuchusen2, 42 );
setEffAlphaKey( spep_1 -3 + 110, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 127, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 38 );
setEffAlphaKey( spep_1 -3 + 130, shuchusen2, 110 );
setEffAlphaKey( spep_1 -3 + 132, shuchusen2, 183 );
setEffAlphaKey( spep_1 -3 + 134, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 155, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 156, shuchusen2, 0 );
setEffAlphaKey( spep_1 -1 + 167, shuchusen2, 0 );
setEffAlphaKey( spep_1 -1 + 168, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 210, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 212, shuchusen2, 128 );
setEffAlphaKey( spep_1 -1 + 214, shuchusen2, 146 );
setEffAlphaKey( spep_1 -1 + 216, shuchusen2, 164 );
setEffAlphaKey( spep_1 -1 + 218, shuchusen2, 182 );
setEffAlphaKey( spep_1 -1 + 220, shuchusen2, 200 );
setEffAlphaKey( spep_1 -1 + 222, shuchusen2, 219 );
setEffAlphaKey( spep_1 -1 + 224, shuchusen2, 237 );
setEffAlphaKey( spep_1 -1 + 226, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 248, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 249, shuchusen2, 0 );
setEffAlphaKey( spep_1 -1 + 257, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 258, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 306, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1+ 8, 1011 );  --タックル
playSe( spep_1+ 58, 1109 );  --瞬間移動
playSe( spep_1+ 76, 1010 );  --ひじ
playSe( spep_1+ 114, 43 );  --瞬間移動
playSe( spep_1+ 170, 1000 );  --たくさん殴る
playSe( spep_1+ 176, 1001 );  --たくさん殴る
playSe( spep_1+ 184, 1000 );  --たくさん殴る
playSe( spep_1+ 192, 1001);  --たくさん殴る
playSe( spep_1+ 194, 1009);  --たくさん殴る
playSe( spep_1+ 202, 1001);  --たくさん殴る
playSe( spep_1+ 218, 1007);  --グッと握る
playSe( spep_1+ 258, 1120);  --たくさん殴る

--白フェード
entryFade( spep_1+ 7, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_1+ 75, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_1+ 257, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade

--次の準備
spep_2 = spep_1+306;


------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_2 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 160, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_f, 0 );
setEffRotateKey( spep_2 + 160, tame_f, 0 );
setEffAlphaKey( spep_2 + 0, tame_f, 255 );
setEffAlphaKey( spep_2 + 160, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_2 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 160, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_b, 0 );
setEffRotateKey( spep_2 + 160, tame_b, 0 );
setEffAlphaKey( spep_2 + 0, tame_b, 255 );
setEffAlphaKey( spep_2 + 160, tame_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 -3 + 38,  906, 120, 0x100, -1, -160, -100, 0 );

setEffMoveKey( spep_2 -3 + 38, shuchusen3, -160, -100 , 0 );
setEffMoveKey( spep_2 -3 + 158, shuchusen3, -160, -100 , 0 );

setEffScaleKey( spep_2 -3 + 38, shuchusen3, 1.33, 1.38 );
setEffScaleKey( spep_2 -3 + 158, shuchusen3, 1.33, 1.38 );

setEffRotateKey( spep_2 -3 + 38, shuchusen3, 180 );
setEffRotateKey( spep_2 -3 + 158, shuchusen3, 180 );

setEffAlphaKey( spep_2 -3 + 38, shuchusen3, 21 );
setEffAlphaKey( spep_2 -3 + 40, shuchusen3, 43 );
setEffAlphaKey( spep_2 -3 + 42, shuchusen3, 64 );
setEffAlphaKey( spep_2 -3 + 44, shuchusen3, 85 );
setEffAlphaKey( spep_2 -3 + 46, shuchusen3, 106 );
setEffAlphaKey( spep_2 -3 + 48, shuchusen3, 128 );
setEffAlphaKey( spep_2 -3 + 158, shuchusen3, 128 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 158, 1, 0 );

changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, -127.1, -419.1 , 0 );
setMoveKey( spep_2 + 2, 1, -68, -322.5 , 0 );
setMoveKey( spep_2 + 4, 1, -8.8, -225.8 , 0 );
setMoveKey( spep_2 + 6, 1, 50.4, -129 , 0 );
setMoveKey( spep_2 + 8, 1, 109.6, -32.3 , 0 );
setMoveKey( spep_2 + 10, 1, 168.9, 64.5 , 0 );
setMoveKey( spep_2 + 12, 1, 228.2, 161.4 , 0 );
setMoveKey( spep_2 + 14, 1, 287.5, 258.3 , 0 );
setMoveKey( spep_2 + 16, 1, 288.1, 258.9 , 0 );
setMoveKey( spep_2 + 18, 1, 288.8, 259.6 , 0 );
setMoveKey( spep_2 + 20, 1, 289.4, 260.2 , 0 );
setMoveKey( spep_2 + 22, 1, 290, 260.8 , 0 );
setMoveKey( spep_2 + 24, 1, 290.6, 261.5 , 0 );
setMoveKey( spep_2 + 26, 1, 291.3, 262.1 , 0 );
setMoveKey( spep_2 + 28, 1, 291.9, 262.7 , 0 );
setMoveKey( spep_2 + 30, 1, 292.5, 263.4 , 0 );
setMoveKey( spep_2 + 32, 1, 293.1, 264 , 0 );
setMoveKey( spep_2 + 34, 1, 293.8, 264.7 , 0 );
setMoveKey( spep_2 + 36, 1, 294.4, 265.3 , 0 );
setMoveKey( spep_2 + 38, 1, 295, 265.9 , 0 );
setMoveKey( spep_2 + 40, 1, 295.7, 266.6 , 0 );
setMoveKey( spep_2 + 42, 1, 296.3, 267.2 , 0 );
setMoveKey( spep_2 + 44, 1, 296.9, 267.8 , 0 );
setMoveKey( spep_2 + 46, 1, 297.6, 268.5 , 0 );
setMoveKey( spep_2 + 48, 1, 298.2, 269.1 , 0 );
setMoveKey( spep_2 + 50, 1, 298.8, 269.8 , 0 );
setMoveKey( spep_2 + 52, 1, 299.4, 270.4 , 0 );
setMoveKey( spep_2 + 54, 1, 300.1, 271 , 0 );
setMoveKey( spep_2 + 56, 1, 300.7, 271.7 , 0 );
setMoveKey( spep_2 + 58, 1, 301.3, 272.3 , 0 );
setMoveKey( spep_2 + 60, 1, 301.9, 272.9 , 0 );
setMoveKey( spep_2 + 62, 1, 302.6, 273.6 , 0 );
setMoveKey( spep_2 + 64, 1, 303.2, 274.2 , 0 );
setMoveKey( spep_2 + 66, 1, 303.8, 274.9 , 0 );
setMoveKey( spep_2 + 68, 1, 304.4, 275.5 , 0 );
setMoveKey( spep_2 + 70, 1, 305.1, 276.1 , 0 );
setMoveKey( spep_2 + 72, 1, 305.7, 276.8 , 0 );
setMoveKey( spep_2 + 74, 1, 306.3, 277.4 , 0 );
setMoveKey( spep_2 + 76, 1, 306.9, 278.1 , 0 );
setMoveKey( spep_2 + 78, 1, 307.6, 278.7 , 0 );
setMoveKey( spep_2 + 80, 1, 308.2, 279.3 , 0 );
setMoveKey( spep_2 + 82, 1, 308.8, 280 , 0 );
setMoveKey( spep_2 + 84, 1, 309.4, 280.6 , 0 );
setMoveKey( spep_2 + 86, 1, 310.1, 281.3 , 0 );
setMoveKey( spep_2 + 88, 1, 310.7, 281.9 , 0 );
setMoveKey( spep_2 + 90, 1, 311.3, 282.5 , 0 );
setMoveKey( spep_2 + 92, 1, 311.9, 283.2 , 0 );
setMoveKey( spep_2 + 94, 1, 312.6, 283.8 , 0 );
setMoveKey( spep_2 + 96, 1, 313.2, 284.5 , 0 );
setMoveKey( spep_2 + 98, 1, 313.8, 285.1 , 0 );
setMoveKey( spep_2 + 100, 1, 314.4, 285.7 , 0 );
setMoveKey( spep_2 + 102, 1, 315.1, 286.4 , 0 );
setMoveKey( spep_2 + 104, 1, 315.7, 287 , 0 );
setMoveKey( spep_2 + 106, 1, 316.3, 287.7 , 0 );
setMoveKey( spep_2 + 108, 1, 316.9, 288.3 , 0 );
setMoveKey( spep_2 + 110, 1, 317.6, 288.9 , 0 );
setMoveKey( spep_2 + 112, 1, 318.2, 289.6 , 0 );
setMoveKey( spep_2 + 114, 1, 318.8, 290.2 , 0 );
setMoveKey( spep_2 + 116, 1, 319.4, 290.9 , 0 );
setMoveKey( spep_2 + 118, 1, 320.1, 291.5 , 0 );
setMoveKey( spep_2 + 120, 1, 320.7, 292.1 , 0 );
setMoveKey( spep_2 + 122, 1, 321.3, 292.8 , 0 );
setMoveKey( spep_2 + 124, 1, 321.9, 293.4 , 0 );
setMoveKey( spep_2 + 126, 1, 322.6, 294.1 , 0 );
setMoveKey( spep_2 + 128, 1, 323.2, 294.7 , 0 );
setMoveKey( spep_2 + 130, 1, 323.8, 295.3 , 0 );
setMoveKey( spep_2 + 132, 1, 324.4, 296 , 0 );
setMoveKey( spep_2 + 134, 1, 325, 296.6 , 0 );
setMoveKey( spep_2 + 136, 1, 325.7, 297.3 , 0 );
setMoveKey( spep_2 + 138, 1, 326.3, 297.9 , 0 );
setMoveKey( spep_2 + 140, 1, 326.9, 298.5 , 0 );
setMoveKey( spep_2 + 142, 1, 327.5, 299.2 , 0 );
setMoveKey( spep_2 + 144, 1, 328.2, 299.8 , 0 );
setMoveKey( spep_2 + 146, 1, 328.8, 300.5 , 0 );
setMoveKey( spep_2 + 148, 1, 329.4, 301.1 , 0 );
setMoveKey( spep_2 + 150, 1, 330, 301.7 , 0 );
setMoveKey( spep_2 + 152, 1, 330.7, 302.4 , 0 );
setMoveKey( spep_2 + 154, 1, 331.3, 303 , 0 );
setMoveKey( spep_2 + 156, 1, 331.9, 303.7 , 0 );
setMoveKey( spep_2 + 158, 1, 332.5, 304.3 , 0 );

setScaleKey( spep_2 + 0, 1, 6.12, 6.12 );
setScaleKey( spep_2 + 2, 1, 5.31, 5.31 );
setScaleKey( spep_2 + 4, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 6, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 8, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 12, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 14, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 16, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 18, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 20, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 22, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 24, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 26, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 28, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 30, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 32, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 34, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 44, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 46, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 48, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 54, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 56, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 68, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 70, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 82, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 84, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 96, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 98, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 108, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 110, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 122, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 124, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 136, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 138, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 150, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 152, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 158, 1, 0.14, 0.14 );

setRotateKey( spep_2 + 0, 1, 17 );
setRotateKey( spep_2 + 22, 1, 17 );
setRotateKey( spep_2 + 24, 1, 16.9 );
setRotateKey( spep_2 + 38, 1, 16.9 );
setRotateKey( spep_2 + 40, 1, 16.8 );
setRotateKey( spep_2 + 74, 1, 16.8 );
setRotateKey( spep_2 + 76, 1, 16.9 );
setRotateKey( spep_2 + 130, 1, 16.9 );
setRotateKey( spep_2 + 132, 1, 17 );
setRotateKey( spep_2 + 158, 1, 17 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 +70 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 +70 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +82, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +82,  ctgogo,  0,  540);
setEffMoveKey(  spep_2 +154,  ctgogo,  0,  540);

setEffAlphaKey( spep_2 +82, ctgogo, 0 );
setEffAlphaKey( spep_2 + 83, ctgogo, 255 );
setEffAlphaKey( spep_2 + 142, ctgogo, 255 );
setEffAlphaKey( spep_2 + 144, ctgogo, 255 );
setEffAlphaKey( spep_2 + 146, ctgogo, 255 );
setEffAlphaKey( spep_2 + 148, ctgogo, 191 );
setEffAlphaKey( spep_2 + 150, ctgogo, 128 );
setEffAlphaKey( spep_2 + 152, ctgogo, 64 );
setEffAlphaKey( spep_2 + 154, ctgogo, 0 );

setEffRotateKey(  spep_2 +82,  ctgogo,  0);
setEffRotateKey(  spep_2 +154,  ctgogo,  0);

setEffScaleKey(  spep_2 +82,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +146,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +154,  ctgogo, 1.07, 1.07 );

--SE
SE2=playSe( spep_2, 44);--飛んでいくおと
--stopSe( spep_2 + 80, SE2, 10 );

--SE1=playSe( spep_2 + 36,55);--飛んでいくおと
--stopSe( spep_2 + 80, SE1, 10 );
playSe( spep_2+38, 1131);--放つ時
playSe( spep_2+82, 1018);--ごごご

--白フェード
entryFade( spep_2+ 148, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2+160;

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
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 170, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 170, beam, 255 );

--文字エントリー
ctzu = entryEffect( spep_4 + 0, CT_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, ctzu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, ctzu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ctzu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, ctzu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ctzu, 0 );
setEffRotateKey( spep_4 + 170, ctzu, 0 );
setEffAlphaKey( spep_4 + 0, ctzu, 255 );
setEffAlphaKey( spep_4 + 170, ctzu, 255 );

-- ** エフェクト等 ** --
ctgyao = entryEffect( spep_4 + 0, CT_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, ctgyao, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, ctgyao, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ctgyao, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, ctgyao, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ctgyao, 0 );
setEffRotateKey( spep_4 + 170, ctgyao, 0 );
setEffAlphaKey( spep_4 + 0, ctgyao, 255 );
setEffAlphaKey( spep_4 + 170, ctgyao, 255 );


--SE
--playSe( spep_4, 1131);--放つ時
playSe( spep_4 ,8);--飛んでいくおと
--SE1=playSe( spep_4 ,55);--飛んでいくおと
--stopSe( spep_4 + 48, SE1, 10 );
playSe( spep_4+48, 1146);--放つ時

--白フェード
entryFade( spep_4 + 162, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 170;

------------------------------------------------------
-- 終わり
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 220, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 34, finish_f, 255 );
setEffAlphaKey( spep_5 + 35, finish_f, 0 );
setEffAlphaKey( spep_5 + 220, finish_f, 0 );

-- ** エフェクト等 ** --
finish_f2 = entryEffect( spep_5  + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5  + 0, finish_f2, 0, 0 , 0 );
setEffMoveKey( spep_5  + 220, finish_f2, 0, 0 , 0 );
setEffScaleKey( spep_5  + 0, finish_f2, 1.0, 1.0 );
setEffScaleKey( spep_5  + 220, finish_f2, 1.0, 1.0 );
setEffRotateKey( spep_5  + 0, finish_f2, 0 );
setEffRotateKey( spep_5  + 220, finish_f2, 0 );
setEffAlphaKey( spep_5  + 0, finish_f2, 0 );
setEffAlphaKey( spep_5  + 34, finish_f2, 0 );
setEffAlphaKey( spep_5  + 35, finish_f2, 255 );
setEffAlphaKey( spep_5  + 220, finish_f2, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_07,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 220, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 34, finish_b, 255 );
setEffAlphaKey( spep_5 + 35, finish_b, 0 );
setEffAlphaKey( spep_5 + 220, finish_b, 0 );

-- ** エフェクト等 ** --
finish_b2 = entryEffect( spep_5  + 0, SP_08,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5  + 0, finish_b2, 0, 0 , 0 );
setEffMoveKey( spep_5  + 220, finish_b2, 0, 0 , 0 );
setEffScaleKey( spep_5  + 0, finish_b2, 1.0, 1.0 );
setEffScaleKey( spep_5  + 220, finish_b2, 1.0, 1.0 );
setEffRotateKey( spep_5  + 0, finish_b2, 0 );
setEffRotateKey( spep_5  + 220, finish_b2, 0 );
setEffAlphaKey( spep_5  + 0, finish_b2, 0 );
setEffAlphaKey( spep_5  + 34, finish_b2, 0 );
setEffAlphaKey( spep_5  + 35, finish_b2, 255 );
setEffAlphaKey( spep_5  + 220, finish_b2, 255 );

--文字エントリー
ctooo = entryEffect( spep_5 + 0, CT_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ctooo, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, ctooo, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ctooo, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, ctooo, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ctooo, 0 );
setEffRotateKey( spep_5 + 220, ctooo, 0 );
setEffAlphaKey( spep_5 + 0, ctooo, 255 );
setEffAlphaKey( spep_5 + 220, ctooo, 255 );

--文字エントリー
ctgyun = entryEffect( spep_5 + 0, CT_09,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ctgyun, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, ctgyun, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ctgyun, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, ctgyun, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ctgyun, 0 );
setEffRotateKey( spep_5 + 220, ctgyun, 0 );
setEffAlphaKey( spep_5 + 0, ctgyun, 255 );
setEffAlphaKey( spep_5 + 220, ctgyun, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5 -3 + 64, 1, 0 );
changeAnime( spep_5  + 0, 1, 107 );
changeAnime( spep_5  -3 + 38, 1, 106 );

setMoveKey( spep_5  + 0, 1, -11.9, -2.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -11.9, -2.2 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -12, -2.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -12, -2.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -11.9, -2.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -11.9, -2.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -11.8, -2.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -11.8, -2.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -11.7, -2.2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -11.7, -2.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -11.6, -2.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -11.6, -2.2 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -11.5, -2.2 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -11.5, -2.2 , 0 );
setMoveKey( spep_5 -3 + 37, 1, -11.5, -2.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -8.4, 10.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 5.9, 34.7 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 20.1, 59.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 34.4, 83.9 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 48.7, 108.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 62.9, 133 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 77.2, 157.6 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 91.5, 182.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 105.7, 206.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 120, 231.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 134.3, 255.9 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 148.6, 280.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 162.8, 305 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 177.1, 329.6 , 0 );


setScaleKey( spep_5  + 0, 1, 0.46, 0.46 );
--setScaleKey( spep_5 -3 + 2, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 4, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 8, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 10, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 12, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_5 -3 + 16, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 18, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 20, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 26, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_5 -3 + 30, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_5 -3 + 34, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 36, 1, 0.95, 0.95 );
setScaleKey( spep_5 -3 + 37, 1, 0.95, 0.95 );
setScaleKey( spep_5 -3 + 38, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 40, 1, 2.19, 2.19 );
setScaleKey( spep_5 -3 + 42, 1, 2.17, 2.17 );
setScaleKey( spep_5 -3 + 44, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 46, 1, 2.13, 2.13 );
setScaleKey( spep_5 -3 + 48, 1, 2.11, 2.11 );
setScaleKey( spep_5 -3 + 50, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 52, 1, 2.08, 2.08 );
setScaleKey( spep_5 -3 + 54, 1, 2.06, 2.06 );
setScaleKey( spep_5 -3 + 56, 1, 2.04, 2.04 );
setScaleKey( spep_5 -3 + 58, 1, 2.02, 2.02 );
setScaleKey( spep_5 -3 + 60, 1, 2.01, 2.01 );
setScaleKey( spep_5 -3 + 62, 1, 1.99, 1.99 );
setScaleKey( spep_5 -3 + 64, 1, 1.97, 1.97 );


setRotateKey( spep_5  + 0, 1, -22.2 );
setRotateKey( spep_5 -3 + 6, 1, -22.2 );
setRotateKey( spep_5 -3 + 8, 1, -22.1 );
setRotateKey( spep_5 -3 + 24, 1, -22.1 );
setRotateKey( spep_5 -3 + 26, 1, -22.2 );
setRotateKey( spep_5 -3 + 36, 1, -22.2 );
setRotateKey( spep_5 -3 + 37, 1, -22.2 );
setRotateKey( spep_5 -3 + 38, 1, -19.1 );
setRotateKey( spep_5 -3 + 50, 1, -19.1 );
setRotateKey( spep_5 -3 + 52, 1, -19.2 );
setRotateKey( spep_5 -3 + 64, 1, -19.2 );

-- ** 音 ** --
playSe( spep_5, 1021 );  --ビームの音
playSe( spep_5 + 64, 1022 );  --ビームの音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 96 );
endPhase( spep_5 + 210 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手前突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
lush = entryEffect( spep_0 + 0, SP_01x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, lush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, lush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, lush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, lush, 0 );
setEffRotateKey( spep_0 + 86, lush, 0 );
setEffAlphaKey( spep_0 + 0, lush, 255 );
setEffAlphaKey( spep_0 + 86, lush, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 ,  906, 65, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 - 3 + 68, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusen1, 1.17, 1.27 );
setEffScaleKey( spep_0 - 3 + 68, shuchusen1, 1.17, 1.27 );

setEffRotateKey( spep_0 , shuchusen1, 180 );
setEffRotateKey( spep_0 - 3 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_0 , shuchusen1, 0 );
setEffAlphaKey( spep_0 - 3 + 29, shuchusen1, 0);
setEffAlphaKey( spep_0 - 3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0 - 3 + 68, shuchusen1, 255 );

-- ** エフェクト等 ** --
ctbun = entryEffect( spep_0 + 0, CT_01x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ctbun, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, ctbun, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ctbun, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, ctbun, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ctbun, 0 );
setEffRotateKey( spep_0 + 86, ctbun, 0 );
setEffAlphaKey( spep_0 + 0, ctbun, 255 );
setEffAlphaKey( spep_0 + 86, ctbun, 255 );

-- ** 音 ** --
SE0=playSe( spep_0 + 24, 9 );  --ダッシュ

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
playSe( spep_0 + 40, 1072 );  --ダッシュ
--次の準備
spep_1 = spep_0+86;

------------------------------------------------------
-- 連撃
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 306, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 306, fighting_f, 255 );
setEffAlphaKey( spep_1 + 307, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 306, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 306, fighting_b, 255 );

--[[
--流線
ryusen1 = entryEffectLife( spep_1  + 0,  914, 84 - 3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 84, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 5.5, 1.23 );
setEffScaleKey( spep_1 -3 + 84, ryusen1, 5.5, 1.23 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 84, ryusen1, 0 );

setEffAlphaKey( spep_1  + 0, ryusen1, 128 );
setEffAlphaKey( spep_1 -3 + 80, ryusen1, 128 );
setEffAlphaKey( spep_1 -3 + 82, ryusen1, 64 );
setEffAlphaKey( spep_1 -3 + 84, ryusen1, 0 );
]]

--敵の動き
setDisp( spep_1    + 0, 1, 1 );
setDisp( spep_1   -1 + 154, 1, 0 );
setDisp( spep_1 -3   + 250, 1, 1 );
setDisp( spep_1 -3   + 290, 1, 0 );

changeAnime( spep_1    + 0, 1, 100 );
changeAnime( spep_1 -3   + 10, 1, 108 );
changeAnime( spep_1 -3   + 42, 1, 106 );
changeAnime( spep_1 -3   + 78, 1, 107 );
changeAnime( spep_1 -3   + 106, 1, 105 );
changeAnime( spep_1 -3   + 250, 1, 108 );
changeAnime( spep_1 -3   + 260, 1, 106 );

setMoveKey( spep_1  , 1, 976.4, -36.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 683.1, -36.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 389.8, -36.5 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 96.4, -36.5 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 96.4, -36.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 124.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 133.4, -44.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 142.6, -44.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 151.8, -44.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 161, -44.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 170.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 179.4, -44.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 188.6, -44.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 197.8, -44.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 207, -44.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 216.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 472.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 728.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 984.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 1240.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 1496.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 1496.2, -44.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -804.3, 99.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -666.6, 99.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -543.8, 99.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -435.9, 99.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -342.9, 99.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -264.9, 99.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -228.2, 99.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -193.3, 99.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -160.2, 99.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -128.9, 99.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -99.4, 99.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -71.7, 99.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -60.3, 99.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -49.2, 99.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -38.2, 99.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -27.3, 99.3 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -16.6, 99.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -6.1, 99.4 , 0 );
setMoveKey( spep_1 -3 + 77, 1, -6.1, 99.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -36, 22.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -22.7, -0.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -9.3, -23.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 16.1, -130.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 41.6, -238.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 67.1, -345.9 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 92.6, -453.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 118.2, -561.3 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 143.8, -669 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 169.4, -776.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 195.1, -884.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 220.7, -992.5 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 246.4, -1100.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 272.2, -1208.2 , 0 );
setMoveKey( spep_1 -3 + 105, 1, 272.2, -1208.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 219.5, -240.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 198.7, -207.3 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 198.7, -207.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 178, -174.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 157.3, -141.3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 136.7, -108.2 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 116.1, -75.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 95.6, -42.1 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 75.1, -9 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 54.7, 24.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 54.4, 23 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 54.2, 21.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 53.9, 20.4 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 53.6, 18.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 53.2, 17.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 52.9, 15.5 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 52.5, 13.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 52.1, 11.7 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 51.6, 9.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 51.2, 7.2 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 50.7, 4.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 50.2, 2.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 49.6, -0.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 49, -3.1 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 48.5, -6.1 , 0 );
setMoveKey( spep_1  + 154, 1, 47.8, -9.1 , 0 );

setMoveKey( spep_1 -3 + 250, 1, 854.5, 142.7 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 200.5, 95.7 , 0 );
setMoveKey( spep_1 -3 + 259, 1, 200.5, 95.7 , 0 );

setMoveKey( spep_1 -3 + 260, 1, 153.6, 303.9 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 160.6, 311.7 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 167.6, 319.5 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 174.7, 327.4 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 181.7, 335.3 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 188.7, 343.2 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 195.8, 351 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 202.8, 358.9 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 209.8, 366.8 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 216.8, 374.6 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 441.9, 665.8 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 667, 956.9 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 892.2, 1248.1 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 1117.3, 1539.2 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 1342.4, 1830.4 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 1567.5, 2121.5 , 0 );

setScaleKey( spep_1  , 1, 2.7, 2.7 );
setScaleKey( spep_1 -3 + 8, 1, 2.7, 2.7 );
setScaleKey( spep_1 -3 + 9, 1, 2.7, 2.7 );
setScaleKey( spep_1 -3 + 10, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 40, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 42, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 76, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 77, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 78, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 80, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 82, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 84, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 86, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 88, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 90, 1, 3.57, 3.57 );
setScaleKey( spep_1 -3 + 92, 1, 4.26, 4.26 );
setScaleKey( spep_1 -3 + 94, 1, 4.94, 4.94 );
setScaleKey( spep_1 -3 + 96, 1, 5.63, 5.63 );
setScaleKey( spep_1 -3 + 98, 1, 6.31, 6.31 );
setScaleKey( spep_1 -3 + 100, 1, 7, 7 );
setScaleKey( spep_1 -3 + 102, 1, 7.68, 7.68 );
setScaleKey( spep_1 -3 + 104, 1, 8.37, 8.37 );
setScaleKey( spep_1 -3 + 105, 1, 8.37, 8.37 );
setScaleKey( spep_1 -3 + 106, 1, 11.99, 11.99 );
setScaleKey( spep_1 -3 + 108, 1, 10.88, 10.88 );
setScaleKey( spep_1 -3 + 110, 1, 9.77, 9.77 );
setScaleKey( spep_1 -3 + 112, 1, 8.65, 8.65 );
setScaleKey( spep_1 -3 + 114, 1, 7.54, 7.54 );
setScaleKey( spep_1 -3 + 116, 1, 6.43, 6.43 );
setScaleKey( spep_1 -3 + 118, 1, 5.32, 5.32 );
setScaleKey( spep_1 -3 + 120, 1, 4.21, 4.21 );
setScaleKey( spep_1 -3 + 122, 1, 3.1, 3.1 );
setScaleKey( spep_1 -3 + 124, 1, 3.08, 3.08 );
setScaleKey( spep_1 -3 + 126, 1, 3.05, 3.05 );
setScaleKey( spep_1 -3 + 128, 1, 3.03, 3.03 );
setScaleKey( spep_1 -3 + 130, 1, 3, 3 );
setScaleKey( spep_1 -3 + 132, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 134, 1, 2.93, 2.93 );
setScaleKey( spep_1 -3 + 136, 1, 2.9, 2.9 );
setScaleKey( spep_1 -3 + 138, 1, 2.86, 2.86 );
setScaleKey( spep_1 -3 + 140, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 142, 1, 2.77, 2.77 );
setScaleKey( spep_1 -3 + 144, 1, 2.72, 2.72 );
setScaleKey( spep_1 -3 + 146, 1, 2.67, 2.67 );
setScaleKey( spep_1 -3 + 148, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 150, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 152, 1, 2.51, 2.51 );
setScaleKey( spep_1  + 154, 1, 2.45, 2.45 );

setScaleKey( spep_1 -3 + 250, 1, 5.18, 5.18 );
setScaleKey( spep_1 -3 + 258, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 259, 1, 2.18, 2.18 );

a=2;

setScaleKey( spep_1 -3 + 260, 1, 2.44 +a, 2.44+a );
--setScaleKey( spep_1 -3 + 262, 1, 2.42+a, 2.42+a );
--setScaleKey( spep_1 -3 + 264, 1, 2.4+a, 2.4+a );
--setScaleKey( spep_1 -3 + 266, 1, 2.39, 2.39 );
--setScaleKey( spep_1 -3 + 268, 1, 2.38, 2.38 );
--setScaleKey( spep_1 -3 + 270, 1, 2.36, 2.36 );
--setScaleKey( spep_1 -3 + 272, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 274, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 276, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 278, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 290, 1, 2.3, 2.3 );

setRotateKey( spep_1  , 1, 0 );
setRotateKey( spep_1 -3 + 8, 1, 0 );
setRotateKey( spep_1 -3 + 9, 1, 0 );
setRotateKey( spep_1 -3 + 10, 1, 2.5 );
setRotateKey( spep_1 -3 + 40, 1, 2.5 );
setRotateKey( spep_1 -3 + 42, 1, 4.8 );
setRotateKey( spep_1 -3 + 76, 1, 4.8 );
setRotateKey( spep_1 -3 + 77, 1, 4.8 );
setRotateKey( spep_1 -3 + 78, 1, -4.3 );
setRotateKey( spep_1 -3 + 80, 1, 0 );
setRotateKey( spep_1 -3 + 82, 1, 4.2 );
setRotateKey( spep_1 -3 + 84, 1, 4.7 );
setRotateKey( spep_1 -3 + 86, 1, 5.1 );
setRotateKey( spep_1 -3 + 88, 1, 5.6 );
setRotateKey( spep_1 -3 + 90, 1, 6.1 );
setRotateKey( spep_1 -3 + 92, 1, 6.6 );
setRotateKey( spep_1 -3 + 94, 1, 7 );
setRotateKey( spep_1 -3 + 96, 1, 7.5 );
setRotateKey( spep_1 -3 + 98, 1, 8 );
setRotateKey( spep_1 -3 + 100, 1, 8.5 );
setRotateKey( spep_1 -3 + 102, 1, 8.9 );
setRotateKey( spep_1 -3 + 104, 1, 9.4 );
setRotateKey( spep_1 -3 + 105, 1, 9.4 );
setRotateKey( spep_1 -3 + 106, 1, -17 );
setRotateKey( spep_1  + 154, 1, -17 );

setRotateKey( spep_1 -3 + 250, 1, 0 );
setRotateKey( spep_1 -3 + 258, 1, 0 );
setRotateKey( spep_1 -3 + 259, 1, 0 );
setRotateKey( spep_1 -3 + 260, 1, -29.4 );
setRotateKey( spep_1 -3 + 262, 1, -29.3 );
setRotateKey( spep_1 -3 + 272, 1, -29.3 );
setRotateKey( spep_1 -3 + 274, 1, -29.4 );
setRotateKey( spep_1 -3 + 290, 1, -29.4 );

-- 文字エントリー
ctga1 = entryEffect( spep_1 + 0, CT_02x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ctga1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, ctga1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctga1, -1.0, 1.0 );
setEffScaleKey( spep_1 + 306, ctga1, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctga1, 0 );
setEffRotateKey( spep_1 + 306, ctga1, 0 );
setEffAlphaKey( spep_1 + 0, ctga1, 255 );
setEffAlphaKey( spep_1 + 306, ctga1, 255 );

-- 文字エントリー
ctga2 = entryEffect( spep_1 -2 + 0, CT_03x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 -2 + 0, ctga2, 0, 0 , 0 );
setEffMoveKey( spep_1 -2 + 306, ctga2, 0, 0 , 0 );
setEffScaleKey( spep_1 -2 + 0, ctga2, -1.0, 1.0 );
setEffScaleKey( spep_1 -2 + 306, ctga2, -1.0, 1.0 );
setEffRotateKey( spep_1 -2 + 0, ctga2, 0 );
setEffRotateKey( spep_1 -2 + 306, ctga2, 0 );
setEffAlphaKey( spep_1 -2 + 0, ctga2, 255 );
setEffAlphaKey( spep_1 -2 + 306, ctga2, 255 );

-- 文字エントリー
ctdogagaga = entryEffect( spep_1 + 0, CT_04x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ctdogagaga, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, ctdogagaga, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctdogagaga, -1.0, 1.0 );
setEffScaleKey( spep_1 + 306, ctdogagaga, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctdogagaga, 0 );
setEffRotateKey( spep_1 + 306, ctdogagaga, 0 );
setEffAlphaKey( spep_1 + 0, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 306, ctdogagaga, 255 );

-- 文字エントリー
ctga3 = entryEffect( spep_1 + 0, CT_05x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ctga3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, ctga3, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctga3, -1.0, 1.0 );
setEffScaleKey( spep_1 + 306, ctga3, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctga3, 0 );
setEffRotateKey( spep_1 + 306, ctga3, 0 );
setEffAlphaKey( spep_1 + 0, ctga3, 255 );
setEffAlphaKey( spep_1 + 306, ctga3, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -2 ,  906, 307, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -1 + 305, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -2, shuchusen2, 1.17, 1.27 );
setEffScaleKey( spep_1 -3 + 106, shuchusen2, 1.17, 1.27 );
setEffScaleKey( spep_1 -3 + 126, shuchusen2, 1.17, 1.27 );
setEffScaleKey( spep_1 -3 + 128, shuchusen2, 1.23, 1.51 );
setEffScaleKey( spep_1 -3 + 156, shuchusen2, 1.23, 1.51 );
setEffScaleKey( spep_1 -3 + 166, shuchusen2, 1.23, 1.51 );
setEffScaleKey( spep_1 -1 + 168, shuchusen2, 1.44, 1.32 );
setEffScaleKey( spep_1 -1 + 210, shuchusen2, 1.44, 1.32 );
setEffScaleKey( spep_1 -1 + 212, shuchusen2, 1.11, 1.27 );
setEffScaleKey( spep_1 -1 + 248, shuchusen2, 1.11, 1.27 );
setEffScaleKey( spep_1 -1 + 256, shuchusen2, 1.11, 1.27 );
setEffScaleKey( spep_1 -1 + 258, shuchusen2, 1.11, 1.27 );
setEffScaleKey( spep_1 -1 + 306, shuchusen2, 1.11, 1.27 );

setEffRotateKey( spep_1 -2, shuchusen2, 180 );
setEffRotateKey( spep_1 -1 + 305, shuchusen2, 180 );

setEffAlphaKey( spep_1 -2, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 77, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 78, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 94, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 96, shuchusen2, 213 );
setEffAlphaKey( spep_1 -3 + 98, shuchusen2, 170 );
setEffAlphaKey( spep_1 -3 + 100, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 102, shuchusen2, 85 );
setEffAlphaKey( spep_1 -3 + 104, shuchusen2, 42 );
setEffAlphaKey( spep_1 -3 + 110, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 127, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 38 );
setEffAlphaKey( spep_1 -3 + 130, shuchusen2, 110 );
setEffAlphaKey( spep_1 -3 + 132, shuchusen2, 183 );
setEffAlphaKey( spep_1 -3 + 134, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 155, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 156, shuchusen2, 0 );
setEffAlphaKey( spep_1 -1 + 167, shuchusen2, 0 );
setEffAlphaKey( spep_1 -1 + 168, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 210, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 212, shuchusen2, 128 );
setEffAlphaKey( spep_1 -1 + 214, shuchusen2, 146 );
setEffAlphaKey( spep_1 -1 + 216, shuchusen2, 164 );
setEffAlphaKey( spep_1 -1 + 218, shuchusen2, 182 );
setEffAlphaKey( spep_1 -1 + 220, shuchusen2, 200 );
setEffAlphaKey( spep_1 -1 + 222, shuchusen2, 219 );
setEffAlphaKey( spep_1 -1 + 224, shuchusen2, 237 );
setEffAlphaKey( spep_1 -1 + 226, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 248, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 249, shuchusen2, 0 );
setEffAlphaKey( spep_1 -1 + 257, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 258, shuchusen2, 255 );
setEffAlphaKey( spep_1 -1 + 306, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1+ 8, 1011 );  --タックル
playSe( spep_1+ 58, 1109 );  --瞬間移動
playSe( spep_1+ 76, 1010 );  --ひじ
playSe( spep_1+ 114, 43 );  --瞬間移動
playSe( spep_1+ 170, 1000 );  --たくさん殴る
playSe( spep_1+ 176, 1001 );  --たくさん殴る
playSe( spep_1+ 184, 1000 );  --たくさん殴る
playSe( spep_1+ 192, 1001);  --たくさん殴る
playSe( spep_1+ 194, 1009);  --たくさん殴る
playSe( spep_1+ 202, 1001);  --たくさん殴る
playSe( spep_1+ 218, 1007);  --グッと握る
playSe( spep_1+ 258, 1120);  --たくさん殴る


--白フェード
entryFade( spep_1+ 7, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_1+ 75, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_1+ 257, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade

--次の準備
spep_2 = spep_1+306;

------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_2 + 0, SP_04x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 160, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_f, 0 );
setEffRotateKey( spep_2 + 160, tame_f, 0 );
setEffAlphaKey( spep_2 + 0, tame_f, 255 );
setEffAlphaKey( spep_2 + 160, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_2 + 0, SP_05x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 160, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_b, 0 );
setEffRotateKey( spep_2 + 160, tame_b, 0 );
setEffAlphaKey( spep_2 + 0, tame_b, 255 );
setEffAlphaKey( spep_2 + 160, tame_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 -3 + 38,  906, 120, 0x100, -1, -160, -100, 0 );

setEffMoveKey( spep_2 -3 + 38, shuchusen3, -160, -100 , 0 );
setEffMoveKey( spep_2 -3 + 158, shuchusen3, -160, -100 , 0 );

setEffScaleKey( spep_2 -3 + 38, shuchusen3, 1.33, 1.38 );
setEffScaleKey( spep_2 -3 + 158, shuchusen3, 1.33, 1.38 );

setEffRotateKey( spep_2 -3 + 38, shuchusen3, 180 );
setEffRotateKey( spep_2 -3 + 158, shuchusen3, 180 );

setEffAlphaKey( spep_2 -3 + 38, shuchusen3, 21 );
setEffAlphaKey( spep_2 -3 + 40, shuchusen3, 43 );
setEffAlphaKey( spep_2 -3 + 42, shuchusen3, 64 );
setEffAlphaKey( spep_2 -3 + 44, shuchusen3, 85 );
setEffAlphaKey( spep_2 -3 + 46, shuchusen3, 106 );
setEffAlphaKey( spep_2 -3 + 48, shuchusen3, 128 );
setEffAlphaKey( spep_2 -3 + 158, shuchusen3, 128 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 158, 1, 0 );

changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, -127.1, -419.1 , 0 );
setMoveKey( spep_2 + 2, 1, -68, -322.5 , 0 );
setMoveKey( spep_2 + 4, 1, -8.8, -225.8 , 0 );
setMoveKey( spep_2 + 6, 1, 50.4, -129 , 0 );
setMoveKey( spep_2 + 8, 1, 109.6, -32.3 , 0 );
setMoveKey( spep_2 + 10, 1, 168.9, 64.5 , 0 );
setMoveKey( spep_2 + 12, 1, 228.2, 161.4 , 0 );
setMoveKey( spep_2 + 14, 1, 287.5, 258.3 , 0 );
setMoveKey( spep_2 + 16, 1, 288.1, 258.9 , 0 );
setMoveKey( spep_2 + 18, 1, 288.8, 259.6 , 0 );
setMoveKey( spep_2 + 20, 1, 289.4, 260.2 , 0 );
setMoveKey( spep_2 + 22, 1, 290, 260.8 , 0 );
setMoveKey( spep_2 + 24, 1, 290.6, 261.5 , 0 );
setMoveKey( spep_2 + 26, 1, 291.3, 262.1 , 0 );
setMoveKey( spep_2 + 28, 1, 291.9, 262.7 , 0 );
setMoveKey( spep_2 + 30, 1, 292.5, 263.4 , 0 );
setMoveKey( spep_2 + 32, 1, 293.1, 264 , 0 );
setMoveKey( spep_2 + 34, 1, 293.8, 264.7 , 0 );
setMoveKey( spep_2 + 36, 1, 294.4, 265.3 , 0 );
setMoveKey( spep_2 + 38, 1, 295, 265.9 , 0 );
setMoveKey( spep_2 + 40, 1, 295.7, 266.6 , 0 );
setMoveKey( spep_2 + 42, 1, 296.3, 267.2 , 0 );
setMoveKey( spep_2 + 44, 1, 296.9, 267.8 , 0 );
setMoveKey( spep_2 + 46, 1, 297.6, 268.5 , 0 );
setMoveKey( spep_2 + 48, 1, 298.2, 269.1 , 0 );
setMoveKey( spep_2 + 50, 1, 298.8, 269.8 , 0 );
setMoveKey( spep_2 + 52, 1, 299.4, 270.4 , 0 );
setMoveKey( spep_2 + 54, 1, 300.1, 271 , 0 );
setMoveKey( spep_2 + 56, 1, 300.7, 271.7 , 0 );
setMoveKey( spep_2 + 58, 1, 301.3, 272.3 , 0 );
setMoveKey( spep_2 + 60, 1, 301.9, 272.9 , 0 );
setMoveKey( spep_2 + 62, 1, 302.6, 273.6 , 0 );
setMoveKey( spep_2 + 64, 1, 303.2, 274.2 , 0 );
setMoveKey( spep_2 + 66, 1, 303.8, 274.9 , 0 );
setMoveKey( spep_2 + 68, 1, 304.4, 275.5 , 0 );
setMoveKey( spep_2 + 70, 1, 305.1, 276.1 , 0 );
setMoveKey( spep_2 + 72, 1, 305.7, 276.8 , 0 );
setMoveKey( spep_2 + 74, 1, 306.3, 277.4 , 0 );
setMoveKey( spep_2 + 76, 1, 306.9, 278.1 , 0 );
setMoveKey( spep_2 + 78, 1, 307.6, 278.7 , 0 );
setMoveKey( spep_2 + 80, 1, 308.2, 279.3 , 0 );
setMoveKey( spep_2 + 82, 1, 308.8, 280 , 0 );
setMoveKey( spep_2 + 84, 1, 309.4, 280.6 , 0 );
setMoveKey( spep_2 + 86, 1, 310.1, 281.3 , 0 );
setMoveKey( spep_2 + 88, 1, 310.7, 281.9 , 0 );
setMoveKey( spep_2 + 90, 1, 311.3, 282.5 , 0 );
setMoveKey( spep_2 + 92, 1, 311.9, 283.2 , 0 );
setMoveKey( spep_2 + 94, 1, 312.6, 283.8 , 0 );
setMoveKey( spep_2 + 96, 1, 313.2, 284.5 , 0 );
setMoveKey( spep_2 + 98, 1, 313.8, 285.1 , 0 );
setMoveKey( spep_2 + 100, 1, 314.4, 285.7 , 0 );
setMoveKey( spep_2 + 102, 1, 315.1, 286.4 , 0 );
setMoveKey( spep_2 + 104, 1, 315.7, 287 , 0 );
setMoveKey( spep_2 + 106, 1, 316.3, 287.7 , 0 );
setMoveKey( spep_2 + 108, 1, 316.9, 288.3 , 0 );
setMoveKey( spep_2 + 110, 1, 317.6, 288.9 , 0 );
setMoveKey( spep_2 + 112, 1, 318.2, 289.6 , 0 );
setMoveKey( spep_2 + 114, 1, 318.8, 290.2 , 0 );
setMoveKey( spep_2 + 116, 1, 319.4, 290.9 , 0 );
setMoveKey( spep_2 + 118, 1, 320.1, 291.5 , 0 );
setMoveKey( spep_2 + 120, 1, 320.7, 292.1 , 0 );
setMoveKey( spep_2 + 122, 1, 321.3, 292.8 , 0 );
setMoveKey( spep_2 + 124, 1, 321.9, 293.4 , 0 );
setMoveKey( spep_2 + 126, 1, 322.6, 294.1 , 0 );
setMoveKey( spep_2 + 128, 1, 323.2, 294.7 , 0 );
setMoveKey( spep_2 + 130, 1, 323.8, 295.3 , 0 );
setMoveKey( spep_2 + 132, 1, 324.4, 296 , 0 );
setMoveKey( spep_2 + 134, 1, 325, 296.6 , 0 );
setMoveKey( spep_2 + 136, 1, 325.7, 297.3 , 0 );
setMoveKey( spep_2 + 138, 1, 326.3, 297.9 , 0 );
setMoveKey( spep_2 + 140, 1, 326.9, 298.5 , 0 );
setMoveKey( spep_2 + 142, 1, 327.5, 299.2 , 0 );
setMoveKey( spep_2 + 144, 1, 328.2, 299.8 , 0 );
setMoveKey( spep_2 + 146, 1, 328.8, 300.5 , 0 );
setMoveKey( spep_2 + 148, 1, 329.4, 301.1 , 0 );
setMoveKey( spep_2 + 150, 1, 330, 301.7 , 0 );
setMoveKey( spep_2 + 152, 1, 330.7, 302.4 , 0 );
setMoveKey( spep_2 + 154, 1, 331.3, 303 , 0 );
setMoveKey( spep_2 + 156, 1, 331.9, 303.7 , 0 );
setMoveKey( spep_2 + 158, 1, 332.5, 304.3 , 0 );

setScaleKey( spep_2 + 0, 1, 6.12, 6.12 );
setScaleKey( spep_2 + 2, 1, 5.31, 5.31 );
setScaleKey( spep_2 + 4, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 6, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 8, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 12, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 14, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 16, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 18, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 20, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 22, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 24, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 26, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 28, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 30, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 32, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 34, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 44, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 46, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 48, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 54, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 56, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 68, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 70, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 82, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 84, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 96, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 98, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 108, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 110, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 122, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 124, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 136, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 138, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 150, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 152, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 158, 1, 0.14, 0.14 );

setRotateKey( spep_2 + 0, 1, 17 );
setRotateKey( spep_2 + 22, 1, 17 );
setRotateKey( spep_2 + 24, 1, 16.9 );
setRotateKey( spep_2 + 38, 1, 16.9 );
setRotateKey( spep_2 + 40, 1, 16.8 );
setRotateKey( spep_2 + 74, 1, 16.8 );
setRotateKey( spep_2 + 76, 1, 16.9 );
setRotateKey( spep_2 + 130, 1, 16.9 );
setRotateKey( spep_2 + 132, 1, 17 );
setRotateKey( spep_2 + 158, 1, 17 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 +70 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 +70 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +82, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +82,  ctgogo,  0,  540);
setEffMoveKey(  spep_2 +154,  ctgogo,  0,  540);

setEffAlphaKey( spep_2 +82, ctgogo, 0 );
setEffAlphaKey( spep_2 + 83, ctgogo, 255 );
setEffAlphaKey( spep_2 + 142, ctgogo, 255 );
setEffAlphaKey( spep_2 + 144, ctgogo, 255 );
setEffAlphaKey( spep_2 + 146, ctgogo, 255 );
setEffAlphaKey( spep_2 + 148, ctgogo, 191 );
setEffAlphaKey( spep_2 + 150, ctgogo, 128 );
setEffAlphaKey( spep_2 + 152, ctgogo, 64 );
setEffAlphaKey( spep_2 + 154, ctgogo, 0 );

setEffRotateKey(  spep_2 +82,  ctgogo,  0);
setEffRotateKey(  spep_2 +154,  ctgogo,  0);

setEffScaleKey(  spep_2 +82,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +146,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +154,  ctgogo, -1.07, 1.07 );

--SE
SE2=playSe( spep_2, 44);--飛んでいくおと
--stopSe( spep_2 + 80, SE2, 10 );

--SE1=playSe( spep_2 + 36,55);--飛んでいくおと
--stopSe( spep_2 + 80, SE1, 10 );
playSe( spep_2+38, 1131);--放つ時
playSe( spep_2+82, 1018);--ごごご

--白フェード
entryFade( spep_2+ 148, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2+160;

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
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 170, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 170, beam, 255 );

--文字エントリー
ctzu = entryEffect( spep_4 + 0, CT_06x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, ctzu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, ctzu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ctzu, -1.0, 1.0 );
setEffScaleKey( spep_4 + 170, ctzu, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ctzu, 0 );
setEffRotateKey( spep_4 + 170, ctzu, 0 );
setEffAlphaKey( spep_4 + 0, ctzu, 255 );
setEffAlphaKey( spep_4 + 170, ctzu, 255 );

-- ** エフェクト等 ** --
ctgyao = entryEffect( spep_4 + 0, CT_07x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, ctgyao, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, ctgyao, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ctgyao, -1.0, 1.0 );
setEffScaleKey( spep_4 + 170, ctgyao, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ctgyao, 0 );
setEffRotateKey( spep_4 + 170, ctgyao, 0 );
setEffAlphaKey( spep_4 + 0, ctgyao, 255 );
setEffAlphaKey( spep_4 + 170, ctgyao, 255 );


--SE
--playSe( spep_4, 1131);--放つ時
playSe( spep_4 ,8);--飛んでいくおと
--SE1=playSe( spep_4 ,55);--飛んでいくおと
--stopSe( spep_4 + 48, SE1, 10 );
playSe( spep_4+48, 1146);--放つ時

--白フェード
entryFade( spep_4 + 162, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 170;

------------------------------------------------------
-- 終わり
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_08x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 220, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 34, finish_f, 255 );
setEffAlphaKey( spep_5 + 35, finish_f, 0 );
setEffAlphaKey( spep_5 + 220, finish_f, 0 );

-- ** エフェクト等 ** --
finish_f2 = entryEffect( spep_5  + 0, SP_07x,  0x100,-1 , 0, 0, 0 ); 
setEffMoveKey( spep_5  + 0, finish_f2, 0, 0 , 0 );
setEffMoveKey( spep_5  + 220, finish_f2, 0, 0 , 0 );
setEffScaleKey( spep_5  + 0, finish_f2, 1.0, 1.0 );
setEffScaleKey( spep_5  + 220, finish_f2, 1.0, 1.0 );
setEffRotateKey( spep_5  + 0, finish_f2, 0 );
setEffRotateKey( spep_5  + 220, finish_f2, 0 );
setEffAlphaKey( spep_5  + 0, finish_f2, 0 );
setEffAlphaKey( spep_5  + 34, finish_f2, 0 );
setEffAlphaKey( spep_5  + 35, finish_f2, 255 );
setEffAlphaKey( spep_5  + 220, finish_f2, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_07x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 220, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 34, finish_b, 255 );
setEffAlphaKey( spep_5 + 35, finish_b, 0 );
setEffAlphaKey( spep_5 + 220, finish_b, 0 );

-- ** エフェクト等 ** --
finish_b2 = entryEffect( spep_5  + 0, SP_08x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5  + 0, finish_b2, 0, 0 , 0 );
setEffMoveKey( spep_5  + 220, finish_b2, 0, 0 , 0 );
setEffScaleKey( spep_5  + 0, finish_b2, 1.0, 1.0 );
setEffScaleKey( spep_5  + 220, finish_b2, 1.0, 1.0 );
setEffRotateKey( spep_5  + 0, finish_b2, 0 );
setEffRotateKey( spep_5  + 220, finish_b2, 0 );
setEffAlphaKey( spep_5  + 0, finish_b2, 0 );
setEffAlphaKey( spep_5  + 34, finish_b2, 0 );
setEffAlphaKey( spep_5  + 35, finish_b2, 255 );
setEffAlphaKey( spep_5  + 220, finish_b2, 255 );

--文字エントリー
ctooo = entryEffect( spep_5 + 0, CT_08x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ctooo, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, ctooo, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ctooo, -1.0, 1.0 );
setEffScaleKey( spep_5 + 220, ctooo, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ctooo, 0 );
setEffRotateKey( spep_5 + 220, ctooo, 0 );
setEffAlphaKey( spep_5 + 0, ctooo, 255 );
setEffAlphaKey( spep_5 + 220, ctooo, 255 );

--文字エントリー
ctgyun = entryEffect( spep_5 + 0, CT_09x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ctgyun, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, ctgyun, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ctgyun, -1.0, 1.0 );
setEffScaleKey( spep_5 + 220, ctgyun, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ctgyun, 0 );
setEffRotateKey( spep_5 + 220, ctgyun, 0 );
setEffAlphaKey( spep_5 + 0, ctgyun, 255 );
setEffAlphaKey( spep_5 + 220, ctgyun, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5 -3 + 64, 1, 0 );
changeAnime( spep_5  + 0, 1, 107 );
changeAnime( spep_5  -3 + 38, 1, 106 );

setMoveKey( spep_5  + 0, 1, -11.9, -2.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -11.9, -2.2 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -12, -2.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -12, -2.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -11.9, -2.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -11.9, -2.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -11.8, -2.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -11.8, -2.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -11.7, -2.2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -11.7, -2.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -11.6, -2.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -11.6, -2.2 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -11.5, -2.2 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -11.5, -2.2 , 0 );
setMoveKey( spep_5 -3 + 37, 1, -11.5, -2.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -8.4, 10.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 5.9, 34.7 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 20.1, 59.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 34.4, 83.9 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 48.7, 108.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 62.9, 133 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 77.2, 157.6 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 91.5, 182.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 105.7, 206.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 120, 231.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 134.3, 255.9 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 148.6, 280.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 162.8, 305 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 177.1, 329.6 , 0 );


setScaleKey( spep_5  + 0, 1, 0.46, 0.46 );
--setScaleKey( spep_5 -3 + 2, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 4, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 8, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 10, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 12, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_5 -3 + 16, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 18, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 20, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 26, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_5 -3 + 30, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_5 -3 + 34, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 36, 1, 0.95, 0.95 );
setScaleKey( spep_5 -3 + 37, 1, 0.95, 0.95 );
setScaleKey( spep_5 -3 + 38, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 40, 1, 2.19, 2.19 );
setScaleKey( spep_5 -3 + 42, 1, 2.17, 2.17 );
setScaleKey( spep_5 -3 + 44, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 46, 1, 2.13, 2.13 );
setScaleKey( spep_5 -3 + 48, 1, 2.11, 2.11 );
setScaleKey( spep_5 -3 + 50, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 52, 1, 2.08, 2.08 );
setScaleKey( spep_5 -3 + 54, 1, 2.06, 2.06 );
setScaleKey( spep_5 -3 + 56, 1, 2.04, 2.04 );
setScaleKey( spep_5 -3 + 58, 1, 2.02, 2.02 );
setScaleKey( spep_5 -3 + 60, 1, 2.01, 2.01 );
setScaleKey( spep_5 -3 + 62, 1, 1.99, 1.99 );
setScaleKey( spep_5 -3 + 64, 1, 1.97, 1.97 );


setRotateKey( spep_5  + 0, 1, -22.2 );
setRotateKey( spep_5 -3 + 6, 1, -22.2 );
setRotateKey( spep_5 -3 + 8, 1, -22.1 );
setRotateKey( spep_5 -3 + 24, 1, -22.1 );
setRotateKey( spep_5 -3 + 26, 1, -22.2 );
setRotateKey( spep_5 -3 + 36, 1, -22.2 );
setRotateKey( spep_5 -3 + 37, 1, -22.2 );
setRotateKey( spep_5 -3 + 38, 1, -19.1 );
setRotateKey( spep_5 -3 + 50, 1, -19.1 );
setRotateKey( spep_5 -3 + 52, 1, -19.2 );
setRotateKey( spep_5 -3 + 64, 1, -19.2 );

-- ** 音 ** --
playSe( spep_5, 1021 );  --ビームの音
playSe( spep_5 + 64, 1022 );  --ビームの音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 96 );
endPhase( spep_5 + 210 );
end
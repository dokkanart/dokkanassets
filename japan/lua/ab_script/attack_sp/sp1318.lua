--1017380:孫悟空(少年期)&ブルマ(少女期)_如意棒
--sp_effect_a8_00037

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

--エフェクト
SP_01=	153831	;--	横位置突進&攻撃&急ブレーキ
SP_02=	153833	;--	背景
SP_03=	153834	;--	如意棒攻撃
SP_04=	153836	;--	如意棒&ヒットエフェクト
SP_05=	153837	;--	背景
SP_06=	153830	;--	背景

--敵のエフェクト
SP_01x=	153832	;--	横位置突進&攻撃&急ブレーキ	(敵)
SP_02x=	153833	;--	背景	
SP_03x=	153835	;--	如意棒攻撃	
SP_04x=	153836	;--	如意棒&ヒットエフェクト	(敵)
SP_05x=	153837	;--	背景	
SP_06x=	153830	;--	背景	

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
-- 横位置突進&攻撃&急ブレーキ
------------------------------------------------------
--最初の準備
spep_0=0;

-- ** エフェクト等 ** --
dash_f = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 204, dash_f, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 204, dash_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, dash_f, 0 );
setEffRotateKey( spep_0 + 204, dash_f, 0 );

setEffAlphaKey( spep_0 + 0, dash_f, 255 );
setEffAlphaKey( spep_0 + 204, dash_f, 255 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_0 + 0, SP_02,  0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 204, dash_b, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 204, dash_b, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, dash_b, 0 );
setEffRotateKey( spep_0 + 204, dash_b, 0 );

setEffAlphaKey( spep_0 + 0, dash_b, 255 );
setEffAlphaKey( spep_0 + 204, dash_b, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--文字エントリー
ctzudodo = entryEffectLife( spep_0 + 0,  10014, 58, 0x100, -1, 0, -129.9, 181.4 );--ズドドドッ

setEffMoveKey( spep_0 + 0, ctzudodo, -129.9, 181.4 , 0 );
setEffMoveKey( spep_0 + 2, ctzudodo, -118.6, 193.8 , 0 );
setEffMoveKey( spep_0 + 4, ctzudodo, -108.5, 212.3 , 0 );
setEffMoveKey( spep_0 + 6, ctzudodo, -97.1, 223.5 , 0 );
setEffMoveKey( spep_0 + 8, ctzudodo, -87.1, 243.3 , 0 );
setEffMoveKey( spep_0 + 10, ctzudodo, -75.6, 253.1 , 0 );
setEffMoveKey( spep_0 + 12, ctzudodo, -76.1, 259.3 , 0 );
setEffMoveKey( spep_0 + 14, ctzudodo, -74.6, 254.1 , 0 );
setEffMoveKey( spep_0 + 16, ctzudodo, -75.1, 260.2 , 0 );
setEffMoveKey( spep_0 + 18, ctzudodo, -73.7, 254.9 , 0 );
setEffMoveKey( spep_0 + 20, ctzudodo, -74.2, 261.1 , 0 );
setEffMoveKey( spep_0 + 22, ctzudodo, -72.8, 255.8 , 0 );
setEffMoveKey( spep_0 + 24, ctzudodo, -73.3, 262.1 , 0 );
setEffMoveKey( spep_0 + 26, ctzudodo, -71.9, 256.7 , 0 );
setEffMoveKey( spep_0 + 28, ctzudodo, -72.4, 263.1 , 0 );
setEffMoveKey( spep_0 + 30, ctzudodo, -71, 257.6 , 0 );
setEffMoveKey( spep_0 + 32, ctzudodo, -71.5, 264 , 0 );
setEffMoveKey( spep_0 + 34, ctzudodo, -70, 258.4 , 0 );
setEffMoveKey( spep_0 + 36, ctzudodo, -70.6, 264.9 , 0 );
setEffMoveKey( spep_0 + 38, ctzudodo, -69.1, 259.3 , 0 );
setEffMoveKey( spep_0 + 40, ctzudodo, -69.6, 265.8 , 0 );
setEffMoveKey( spep_0 + 42, ctzudodo, -68.2, 260.2 , 0 );
setEffMoveKey( spep_0 + 44, ctzudodo, -68.7, 266.7 , 0 );
setEffMoveKey( spep_0 + 46, ctzudodo, -67.3, 261 , 0 );
setEffMoveKey( spep_0 + 48, ctzudodo, -67.9, 267.7 , 0 );
setEffMoveKey( spep_0 + 50, ctzudodo, -66.3, 261.9 , 0 );
setEffMoveKey( spep_0 + 52, ctzudodo, -57.8, 278.1 , 0 );
setEffMoveKey( spep_0 + 54, ctzudodo, -46.9, 280.5 , 0 );
setEffMoveKey( spep_0 + 56, ctzudodo, -38.6, 297.8 , 0 );
setEffMoveKey( spep_0 + 58, ctzudodo, -27.5, 298.9 , 0 );

setEffScaleKey( spep_0 + 0, ctzudodo, 0.5, 0.5 );
setEffScaleKey( spep_0 + 2, ctzudodo, 0.67, 0.67 );
setEffScaleKey( spep_0 + 4, ctzudodo, 0.79, 0.79 );
setEffScaleKey( spep_0 + 6, ctzudodo, 0.95, 0.95 );
setEffScaleKey( spep_0 + 8, ctzudodo, 1.11, 1.11 );
setEffScaleKey( spep_0 + 10, ctzudodo, 1.27, 1.27 );
setEffScaleKey( spep_0 + 14, ctzudodo, 1.27, 1.27 );
setEffScaleKey( spep_0 + 16, ctzudodo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 22, ctzudodo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 24, ctzudodo, 1.33, 1.33 );
setEffScaleKey( spep_0 + 32, ctzudodo, 1.33, 1.33 );
setEffScaleKey( spep_0 + 34, ctzudodo, 1.36, 1.36 );
setEffScaleKey( spep_0 + 42, ctzudodo, 1.36, 1.36 );
setEffScaleKey( spep_0 + 44, ctzudodo, 1.4, 1.4 );
setEffScaleKey( spep_0 + 50, ctzudodo, 1.4, 1.4 );
setEffScaleKey( spep_0 + 52, ctzudodo, 1.55, 1.55 );
setEffScaleKey( spep_0 + 54, ctzudodo, 1.68, 1.68 );
setEffScaleKey( spep_0 + 56, ctzudodo, 1.81, 1.81 );
setEffScaleKey( spep_0 + 58, ctzudodo, 1.97, 1.97 );

setEffRotateKey( spep_0 + 0, ctzudodo, 73.2 );
setEffRotateKey( spep_0 + 2, ctzudodo, 73.3 );
setEffRotateKey( spep_0 + 58, ctzudodo, 73.3 )

setEffAlphaKey( spep_0 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_0 + 50, ctzudodo, 255 );
setEffAlphaKey( spep_0 + 52, ctzudodo, 198 );
setEffAlphaKey( spep_0 + 54, ctzudodo, 140 );
setEffAlphaKey( spep_0 + 56, ctzudodo, 83 );
setEffAlphaKey( spep_0 + 58, ctzudodo, 26 );

-- ** 音 ** --
SE1=playSe( spep_0 , 1111 );  --ダッシュ
setSeVolume(spep_0,1111,300);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE1, 0 );
    
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
-- ** 敵の動き ** --
setDisp( spep_0 -3 + 60, 1, 1 );
setDisp( spep_0 -3 + 102, 1, 0 );

changeAnime( spep_0 -3 + 60, 1, 101 );
changeAnime( spep_0 -3 + 82, 1, 108 );
changeAnime( spep_0 -3 + 92, 1, 106 );

b = 60;
c = 0;

setMoveKey( spep_0 -3 + 60, 1, 500.9, -10.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 460.1, -19.4 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 433.3, -18.7 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 396.5, -10.7 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 369.7, -10.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 328.9, -19.4 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 302.2, -18.7 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 265.4, -10.7 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 238.5, -10.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 197.7, -19.4 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 170.9, -18.7 , 0 );
setMoveKey( spep_0 -3 + 81, 1, 170.9, -18.7 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 162.7, -10.7+b , 0 );
setMoveKey( spep_0 -3 + 84, 1, 162.2, -13.3+b , 0 );

setMoveKey( spep_0 -3 + 86, 1, 199.8, -19.4+b , 0 );
setMoveKey( spep_0 -3 + 88, 1, 252.9, -18+b , 0 );
setMoveKey( spep_0 -3 + 90, 1, 288.6, -10.7+b , 0 );
setMoveKey( spep_0 -3 + 92, 1, 338, -10.2+b , 0 );
setMoveKey( spep_0 -3 + 94, 1, 377.1, -18.7+b , 0 );
setMoveKey( spep_0 -3 + 96, 1, 422.8, -18.7+b , 0 );
setMoveKey( spep_0 -3 + 98, 1, 462.2, -10.7+b , 0 );
setMoveKey( spep_0 -3 + 100, 1, 515.3, -9.5+b , 0 );
setMoveKey( spep_0 -3 + 102, 1, 547, -19.4+b , 0 );

setScaleKey( spep_0 -3 + 60, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 102, 1, 1.4, 1.4 );

setRotateKey( spep_0 -3 + 60, 1, 0 );
setRotateKey( spep_0 -3 + 80, 1, 0 );
setRotateKey( spep_0 -3 + 81, 1, 0 );
setRotateKey( spep_0 -3 + 82, 1, -25.5 );
setRotateKey( spep_0 -3 + 90, 1, -25.5 );
setRotateKey( spep_0 -3 + 91, 1, -25.5 );
setRotateKey( spep_0 -3 + 92, 1, -15 );
setRotateKey( spep_0 -3 + 102, 1, -15 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 82,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 82, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 110, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 82, shuchusen1, 1.34, 1.34 );
setEffScaleKey( spep_0 -3 + 110, shuchusen1, 1.34, 1.34 );

setEffRotateKey( spep_0 -3 + 84, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 110, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 82, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 100, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 102, shuchusen1, 204 );
setEffAlphaKey( spep_0 -3 + 104, shuchusen1, 153 );
setEffAlphaKey( spep_0 -3 + 106, shuchusen1, 102 );
setEffAlphaKey( spep_0 -3 + 108, shuchusen1, 51 );
setEffAlphaKey( spep_0 -3 + 110, shuchusen1, 0 );

--SE
stopSe(spep_0+30 ,SE1,10);
SE2=playSe( spep_0 + 34, 1111 );  --ダッシュ
setSeVolume(spep_0 + 34,1111,300);
stopSe(spep_0+130 ,SE2,10);
playSe( spep_0 + 80, 1010 );  --突く
playSe( spep_0 + 140, 1027 );  --突く

-- ** 白フェード ** --
entryFade( spep_0+196 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 204;

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


entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 如意棒攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
nyoib = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, nyoib, 0, 0, 0 );
setEffMoveKey( spep_2 + 120, nyoib, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, nyoib, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, nyoib, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, nyoib, 0 );
setEffRotateKey( spep_2 + 120, nyoib, 0 );

setEffAlphaKey( spep_2 + 0, nyoib, 255 );
setEffAlphaKey( spep_2 + 120, nyoib, 255 );

--***カットイン***
speff = entryEffect(  spep_2 ,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_2 ,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);   

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 + 12, 190006, 74, 0x100, -1, 0, 50, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 + 12,  ctgogo,  50,  540);
setEffMoveKey(  spep_2 + 86,  ctgogo,  50,  540);

setEffAlphaKey( spep_2 + 12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 72, ctgogo, 255 );
setEffAlphaKey( spep_2 + 74, ctgogo, 255 );
setEffAlphaKey( spep_2 + 76, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 128 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );
setEffAlphaKey( spep_2 + 85, ctgogo, 0 );
setEffAlphaKey( spep_2 + 86, ctgogo, 0 );

setEffRotateKey(  spep_2 + 12,  ctgogo,  0);
setEffRotateKey(  spep_2 + 86,  ctgogo,  0);

setEffScaleKey(  spep_2 + 12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 + 78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 + 86,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_2 + 38, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 38, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 2, shuchusen2, 243 );
setEffAlphaKey( spep_2 + 4, shuchusen2, 231 );
setEffAlphaKey( spep_2 + 6, shuchusen2, 219 );
setEffAlphaKey( spep_2 + 8, shuchusen2, 207 );
setEffAlphaKey( spep_2 + 10, shuchusen2, 195 );
setEffAlphaKey( spep_2 + 12, shuchusen2, 183 );
setEffAlphaKey( spep_2 + 14, shuchusen2, 171 );
setEffAlphaKey( spep_2 + 16, shuchusen2, 159 );
setEffAlphaKey( spep_2 + 18, shuchusen2, 147 );
setEffAlphaKey( spep_2 + 20, shuchusen2, 134 );
setEffAlphaKey( spep_2 + 22, shuchusen2, 122 );
setEffAlphaKey( spep_2 + 24, shuchusen2, 110 );
setEffAlphaKey( spep_2 + 26, shuchusen2, 98 );
setEffAlphaKey( spep_2 + 28, shuchusen2, 86 );
setEffAlphaKey( spep_2 + 30, shuchusen2, 74 );
setEffAlphaKey( spep_2 + 32, shuchusen2, 62 );
setEffAlphaKey( spep_2 + 34, shuchusen2, 50 );
setEffAlphaKey( spep_2 + 36, shuchusen2, 38 );
setEffAlphaKey( spep_2 + 38, shuchusen2, 26 );

--文字エントリー
cxtzuo = entryEffectLife( spep_2 - 4 + 90,  10012, 28, 0x100, -1, 0, 33, 236.3 );--ズオッ

setEffMoveKey( spep_2 - 4 + 90, cxtzuo, 33, 236.3 , 0 );
setEffMoveKey( spep_2 - 4 + 92, cxtzuo, 52.9, 262.9 , 0 );
setEffMoveKey( spep_2 - 4 + 94, cxtzuo, 59.6, 303 , 0 );
setEffMoveKey( spep_2 - 4 + 96, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 98, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 100, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 102, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 104, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 106, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 108, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 110, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 112, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 114, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 116, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 118, cxtzuo, 73, 336.3 , 0 );

a=2.0;

setEffScaleKey( spep_2 - 4 + 90, cxtzuo, 0.1, 0.1 );
setEffScaleKey( spep_2 - 4 + 92, cxtzuo, 0.33, 0.33 );
--setEffScaleKey( spep_2 - 4 + 94, cxtzuo, 0.57, 0.57 );
setEffScaleKey( spep_2 - 4 + 96, cxtzuo, 0.8 +a, 0.8 +a );
setEffScaleKey( spep_2 - 4 + 118, cxtzuo, 0.8 +a, 0.8 +a );

setEffRotateKey( spep_2 - 4 + 90, cxtzuo, 20 );
setEffRotateKey( spep_2 - 4 + 118, cxtzuo, 20 );

setEffAlphaKey( spep_2 - 4 + 90, cxtzuo, 255 );
setEffAlphaKey( spep_2 - 4 + 118, cxtzuo, 255 );


--SE
playSe( spep_2 + 12, 1018 );  --ごごご
playSe( spep_2 + 86, 1152 );  --伸びる音

-- ** 白フェード ** --
entryFade( spep_2+112 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 120;

------------------------------------------------------
-- 如意棒&ヒットエフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 70, hit_f, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, hit_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 70, hit_f, 0 );

setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 70, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_05,  0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 70, hit_b, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, hit_b, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 70, hit_b, 0 );

setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 70, hit_b, 255 );

setDisp( spep_3   + 0, 1, 1 );
setDisp( spep_3 -1  + 68, 1, 0 );
changeAnime( spep_3   + 0, 1, 106 );
changeAnime( spep_3 -1  + 22, 1, 108 );

setMoveKey( spep_3  + 0, 1, -563, -241.5 , 0 );
setMoveKey( spep_3 -1 + 2, 1, -495.8, -204.5 , 0 );
setMoveKey( spep_3 -1 + 4, 1, -437.8, -178.5 , 0 );
setMoveKey( spep_3 -1 + 6, 1, -375.3, -147 , 0 );
setMoveKey( spep_3 -1 + 8, 1, -308.9, -111.1 , 0 );
setMoveKey( spep_3 -1 + 10, 1, -250, -83.9 , 0 );
setMoveKey( spep_3 -1 + 12, 1, -187.6, -52.3 , 0 );
setMoveKey( spep_3 -1 + 14, 1, -122.2, -17.7 , 0 );
setMoveKey( spep_3 -1 + 16, 1, -62.2, 10.6 , 0 );
setMoveKey( spep_3 -1 + 18, 1, 0.3, 42.2 , 0 );
setMoveKey( spep_3 -1 + 21, 1, 47.9, 60.7 , 0 );
setMoveKey( spep_3 -1 + 22, 1, 91.6, 74.7 , 0 );
setMoveKey( spep_3 -1 + 24, 1, 90.5, 74.4 , 0 );
setMoveKey( spep_3 -1 + 26, 1, 167, 111.1 , 0 );
setMoveKey( spep_3 -1 + 28, 1, 235.8, 114.1 , 0 );
setMoveKey( spep_3 -1 + 30, 1, 224.7, 126.8 , 0 );
setMoveKey( spep_3 -1 + 32, 1, 240.6, 122.2 , 0 );
setMoveKey( spep_3 -1 + 34, 1, 227.3, 134.3 , 0 );
setMoveKey( spep_3 -1 + 36, 1, 239.2, 113.8 , 0 );
setMoveKey( spep_3 -1 + 38, 1, 229.2, 125.4 , 0 );
setMoveKey( spep_3 -1 + 40, 1, 246.7, 123.8 , 0 );
setMoveKey( spep_3 -1 + 42, 1, 234.2, 134.2 , 0 );
setMoveKey( spep_3 -1 + 44, 1, 247.7, 114.6 , 0 );
setMoveKey( spep_3 -1 + 46, 1, 235.3, 127 , 0 );
setMoveKey( spep_3 -1 + 48, 1, 252.8, 125.4 , 0 );
setMoveKey( spep_3 -1 + 50, 1, 246.3, 125.8 , 0 );
setMoveKey( spep_3 -1 + 52, 1, 247.9, 126.2 , 0 );
setMoveKey( spep_3 -1 + 54, 1, 249.3, 126.6 , 0 );
setMoveKey( spep_3 -1 + 56, 1, 250.8, 127 , 0 );
setMoveKey( spep_3 -1 + 58, 1, 252.4, 127.3 , 0 );
setMoveKey( spep_3 -1 + 60, 1, 253.9, 127.8 , 0 );
setMoveKey( spep_3 -1 + 62, 1, 255.4, 128.2 , 0 );
setMoveKey( spep_3 -1 + 64, 1, 256.9, 128.6 , 0 );
setMoveKey( spep_3 -1 + 66, 1, 258.5, 129 , 0 );
setMoveKey( spep_3  + 68, 1, 259.9, 129.4 , 0 );

setScaleKey( spep_3  + 0, 1, 2.82, 2.82 );
setScaleKey( spep_3 -1 + 2, 1, 2.64, 2.64 );
setScaleKey( spep_3 -1 + 4, 1, 2.46, 2.46 );
setScaleKey( spep_3 -1 + 6, 1, 2.28, 2.28 );
setScaleKey( spep_3 -1 + 8, 1, 2.1, 2.1 );
setScaleKey( spep_3 -1 + 10, 1, 1.92, 1.92 );
setScaleKey( spep_3 -1 + 12, 1, 1.74, 1.74 );
setScaleKey( spep_3 -1 + 14, 1, 1.56, 1.56 );
setScaleKey( spep_3 -1 + 16, 1, 1.38, 1.38 );
setScaleKey( spep_3 -1 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_3 -1 + 21, 1, 1.12, 1.12 );
setScaleKey( spep_3 -1 + 22, 1, 1.04, 1.04 );
setScaleKey( spep_3 -1 + 24, 1, 1.44, 1.44 );
setScaleKey( spep_3 -1 + 26, 1, 1.21, 1.21 );
setScaleKey( spep_3 -1 + 28, 1, 1, 1 );
setScaleKey( spep_3 -1 + 30, 1, 0.87, 0.87 );
setScaleKey( spep_3 -1 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_3 -1 + 34, 1, 0.7, 0.7 );
setScaleKey( spep_3 -1 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_3 -1 + 38, 1, 0.63, 0.63 );
setScaleKey( spep_3 -1 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_3 -1 + 42, 1, 0.56, 0.56 );
setScaleKey( spep_3 -1 + 44, 1, 0.52, 0.52 );
setScaleKey( spep_3 -1 + 46, 1, 0.49, 0.49 );
setScaleKey( spep_3 -1 + 48, 1, 0.45, 0.45 );
setScaleKey( spep_3 -1 + 50, 1, 0.42, 0.42 );
setScaleKey( spep_3 -1 + 52, 1, 0.38, 0.38 );
setScaleKey( spep_3 -1 + 54, 1, 0.35, 0.35 );
setScaleKey( spep_3 -1 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_3 -1 + 58, 1, 0.28, 0.28 );
setScaleKey( spep_3 -1 + 60, 1, 0.24, 0.24 );
setScaleKey( spep_3 -1 + 62, 1, 0.21, 0.21 );
setScaleKey( spep_3 -1 + 64, 1, 0.17, 0.17 );
setScaleKey( spep_3 -1 + 66, 1, 0.14, 0.14 );
setScaleKey( spep_3  + 68, 1, 0.1, 0.1 );

setRotateKey( spep_3 + 0, 1, -53.7 );
setRotateKey( spep_3 + 21 -1, 1, -53.7 );
setRotateKey( spep_3 + 22 -1, 1, 0 );
setRotateKey( spep_3 + 68, 1, 0 );

--文字エントリー
ctbako = entryEffectLife( spep_3 -3 + 26,  10021, 26, 0x100, -1, 0, 15.2, -36 );--バゴォッ
setEffMoveKey( spep_3 -3 + 26, ctbako, 15.2, -36 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctbako, 18.9, -93.2 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctbako, 13.4, -153.2 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctbako, 21.9, -208.9 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctbako, 12.5, -211.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctbako, 21.9, -208.9 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctbako, 12.5, -211.9 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctbako, 21.9, -208.9 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctbako, 12.5, -211.9 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctbako, 21.9, -208.9 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctbako, 12.5, -211.9 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctbako, 22.2, -215.5 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctbako, 12.2, -225.2 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctbako, 12.1, -231.9 , 0 );

setEffScaleKey( spep_3 -3 + 26, ctbako, 0.68, 0.68 );
setEffScaleKey( spep_3 -3 + 28, ctbako, 1.44, 1.44 );
setEffScaleKey( spep_3 -3 + 30, ctbako, 2.19, 2.19 );
setEffScaleKey( spep_3 -3 + 32, ctbako, 2.95, 2.95 );
setEffScaleKey( spep_3 -3 + 46, ctbako, 2.95, 2.95 );
setEffScaleKey( spep_3 -3 + 48, ctbako, 3.08, 3.08 );
setEffScaleKey( spep_3 -3 + 50, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3 -3 + 52, ctbako, 3.33, 3.33 );

setEffRotateKey( spep_3 -3 + 26, ctbako, 0 );
setEffRotateKey( spep_3 -3 + 52, ctbako, 0 );

setEffAlphaKey( spep_3 -3 + 26, ctbako, 255 );
setEffAlphaKey( spep_3 -3 + 46, ctbako, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctbako, 170 );
setEffAlphaKey( spep_3 -3 + 50, ctbako, 85 );
setEffAlphaKey( spep_3 -3 + 52, ctbako, 0 );

--SE
playSe( spep_3, 1018 );  --飛んでいく
playSe( spep_3 + 22, 1011 );  --当たる

-- ** 白フェード ** --
entryFade( spep_3+62 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 70;

------------------------------------------------------
--  ガッ
------------------------------------------------------

-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );
]]

-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 112, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 112, bg, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_4 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_4 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_4 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_4 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_4 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, 1023 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 14 );
endPhase( spep_4 + 100 );



else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 横位置突進&攻撃&急ブレーキ
------------------------------------------------------
--最初の準備
spep_0=0;

-- ** エフェクト等 ** --
dash_f = entryEffect( spep_0 + 0, SP_01x,  0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 204, dash_f, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 204, dash_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, dash_f, 0 );
setEffRotateKey( spep_0 + 204, dash_f, 0 );

setEffAlphaKey( spep_0 + 0, dash_f, 255 );
setEffAlphaKey( spep_0 + 204, dash_f, 255 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_0 + 0, SP_02x,  0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 204, dash_b, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 204, dash_b, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, dash_b, 0 );
setEffRotateKey( spep_0 + 204, dash_b, 0 );

setEffAlphaKey( spep_0 + 0, dash_b, 255 );
setEffAlphaKey( spep_0 + 204, dash_b, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--文字エントリー
ctzudodo = entryEffectLife( spep_0 + 0,  10014, 58, 0x100, -1, 0, -129.9, 181.4 );--ズドドドッ

setEffMoveKey( spep_0 + 0, ctzudodo, -129.9, 181.4 , 0 );
setEffMoveKey( spep_0 + 2, ctzudodo, -118.6, 193.8 , 0 );
setEffMoveKey( spep_0 + 4, ctzudodo, -108.5, 212.3 , 0 );
setEffMoveKey( spep_0 + 6, ctzudodo, -97.1, 223.5 , 0 );
setEffMoveKey( spep_0 + 8, ctzudodo, -87.1, 243.3 , 0 );
setEffMoveKey( spep_0 + 10, ctzudodo, -75.6, 253.1 , 0 );
setEffMoveKey( spep_0 + 12, ctzudodo, -76.1, 259.3 , 0 );
setEffMoveKey( spep_0 + 14, ctzudodo, -74.6, 254.1 , 0 );
setEffMoveKey( spep_0 + 16, ctzudodo, -75.1, 260.2 , 0 );
setEffMoveKey( spep_0 + 18, ctzudodo, -73.7, 254.9 , 0 );
setEffMoveKey( spep_0 + 20, ctzudodo, -74.2, 261.1 , 0 );
setEffMoveKey( spep_0 + 22, ctzudodo, -72.8, 255.8 , 0 );
setEffMoveKey( spep_0 + 24, ctzudodo, -73.3, 262.1 , 0 );
setEffMoveKey( spep_0 + 26, ctzudodo, -71.9, 256.7 , 0 );
setEffMoveKey( spep_0 + 28, ctzudodo, -72.4, 263.1 , 0 );
setEffMoveKey( spep_0 + 30, ctzudodo, -71, 257.6 , 0 );
setEffMoveKey( spep_0 + 32, ctzudodo, -71.5, 264 , 0 );
setEffMoveKey( spep_0 + 34, ctzudodo, -70, 258.4 , 0 );
setEffMoveKey( spep_0 + 36, ctzudodo, -70.6, 264.9 , 0 );
setEffMoveKey( spep_0 + 38, ctzudodo, -69.1, 259.3 , 0 );
setEffMoveKey( spep_0 + 40, ctzudodo, -69.6, 265.8 , 0 );
setEffMoveKey( spep_0 + 42, ctzudodo, -68.2, 260.2 , 0 );
setEffMoveKey( spep_0 + 44, ctzudodo, -68.7, 266.7 , 0 );
setEffMoveKey( spep_0 + 46, ctzudodo, -67.3, 261 , 0 );
setEffMoveKey( spep_0 + 48, ctzudodo, -67.9, 267.7 , 0 );
setEffMoveKey( spep_0 + 50, ctzudodo, -66.3, 261.9 , 0 );
setEffMoveKey( spep_0 + 52, ctzudodo, -57.8, 278.1 , 0 );
setEffMoveKey( spep_0 + 54, ctzudodo, -46.9, 280.5 , 0 );
setEffMoveKey( spep_0 + 56, ctzudodo, -38.6, 297.8 , 0 );
setEffMoveKey( spep_0 + 58, ctzudodo, -27.5, 298.9 , 0 );

setEffScaleKey( spep_0 + 0, ctzudodo, 0.5, 0.5 );
setEffScaleKey( spep_0 + 2, ctzudodo, 0.67, 0.67 );
setEffScaleKey( spep_0 + 4, ctzudodo, 0.79, 0.79 );
setEffScaleKey( spep_0 + 6, ctzudodo, 0.95, 0.95 );
setEffScaleKey( spep_0 + 8, ctzudodo, 1.11, 1.11 );
setEffScaleKey( spep_0 + 10, ctzudodo, 1.27, 1.27 );
setEffScaleKey( spep_0 + 14, ctzudodo, 1.27, 1.27 );
setEffScaleKey( spep_0 + 16, ctzudodo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 22, ctzudodo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 24, ctzudodo, 1.33, 1.33 );
setEffScaleKey( spep_0 + 32, ctzudodo, 1.33, 1.33 );
setEffScaleKey( spep_0 + 34, ctzudodo, 1.36, 1.36 );
setEffScaleKey( spep_0 + 42, ctzudodo, 1.36, 1.36 );
setEffScaleKey( spep_0 + 44, ctzudodo, 1.4, 1.4 );
setEffScaleKey( spep_0 + 50, ctzudodo, 1.4, 1.4 );
setEffScaleKey( spep_0 + 52, ctzudodo, 1.55, 1.55 );
setEffScaleKey( spep_0 + 54, ctzudodo, 1.68, 1.68 );
setEffScaleKey( spep_0 + 56, ctzudodo, 1.81, 1.81 );
setEffScaleKey( spep_0 + 58, ctzudodo, 1.97, 1.97 );

setEffRotateKey( spep_0 + 0, ctzudodo, 3.2 );
setEffRotateKey( spep_0 + 2, ctzudodo, 3.3 );
setEffRotateKey( spep_0 + 58, ctzudodo, 3.3 )

setEffAlphaKey( spep_0 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_0 + 50, ctzudodo, 255 );
setEffAlphaKey( spep_0 + 52, ctzudodo, 198 );
setEffAlphaKey( spep_0 + 54, ctzudodo, 140 );
setEffAlphaKey( spep_0 + 56, ctzudodo, 83 );
setEffAlphaKey( spep_0 + 58, ctzudodo, 26 );

-- ** 音 ** --
SE1=playSe( spep_0 , 1111 );  --ダッシュ
setSeVolume(spep_0,1111,300);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE1, 0 );
    
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
-- ** 敵の動き ** --
setDisp( spep_0 -3 + 60, 1, 1 );
setDisp( spep_0 -3 + 102, 1, 0 );

changeAnime( spep_0 -3 + 60, 1, 101 );
changeAnime( spep_0 -3 + 82, 1, 108 );
changeAnime( spep_0 -3 + 92, 1, 106 );

b = 60;
c = 0;

setMoveKey( spep_0 -3 + 60, 1, 500.9, -10.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 460.1, -19.4 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 433.3, -18.7 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 396.5, -10.7 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 369.7, -10.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 328.9, -19.4 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 302.2, -18.7 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 265.4, -10.7 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 238.5, -10.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 197.7, -19.4 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 170.9, -18.7 , 0 );
setMoveKey( spep_0 -3 + 81, 1, 170.9, -18.7 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 162.7, -10.7+b , 0 );
setMoveKey( spep_0 -3 + 84, 1, 162.2, -13.3+b , 0 );

setMoveKey( spep_0 -3 + 86, 1, 199.8, -19.4+b , 0 );
setMoveKey( spep_0 -3 + 88, 1, 252.9, -18+b , 0 );
setMoveKey( spep_0 -3 + 90, 1, 288.6, -10.7+b , 0 );
setMoveKey( spep_0 -3 + 92, 1, 338, -10.2+b , 0 );
setMoveKey( spep_0 -3 + 94, 1, 377.1, -18.7+b , 0 );
setMoveKey( spep_0 -3 + 96, 1, 422.8, -18.7+b , 0 );
setMoveKey( spep_0 -3 + 98, 1, 462.2, -10.7+b , 0 );
setMoveKey( spep_0 -3 + 100, 1, 515.3, -9.5+b , 0 );
setMoveKey( spep_0 -3 + 102, 1, 547, -19.4+b , 0 );

setScaleKey( spep_0 -3 + 60, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 102, 1, 1.4, 1.4 );

setRotateKey( spep_0 -3 + 60, 1, 0 );
setRotateKey( spep_0 -3 + 80, 1, 0 );
setRotateKey( spep_0 -3 + 81, 1, 0 );
setRotateKey( spep_0 -3 + 82, 1, -25.5 );
setRotateKey( spep_0 -3 + 90, 1, -25.5 );
setRotateKey( spep_0 -3 + 91, 1, -25.5 );
setRotateKey( spep_0 -3 + 92, 1, -15 );
setRotateKey( spep_0 -3 + 102, 1, -15 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 82,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 82, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 110, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 82, shuchusen1, 1.34, 1.34 );
setEffScaleKey( spep_0 -3 + 110, shuchusen1, 1.34, 1.34 );

setEffRotateKey( spep_0 -3 + 84, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 110, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 82, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 100, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 102, shuchusen1, 204 );
setEffAlphaKey( spep_0 -3 + 104, shuchusen1, 153 );
setEffAlphaKey( spep_0 -3 + 106, shuchusen1, 102 );
setEffAlphaKey( spep_0 -3 + 108, shuchusen1, 51 );
setEffAlphaKey( spep_0 -3 + 110, shuchusen1, 0 );

--SE
stopSe(spep_0+30 ,SE1,10);
SE2=playSe( spep_0 + 34, 1111 );  --ダッシュ
setSeVolume(spep_0 + 34,1111,300);
stopSe(spep_0+130 ,SE2,10);
playSe( spep_0 + 80, 1010 );  --突く
playSe( spep_0 + 140, 1027 );  --突く

-- ** 白フェード ** --
entryFade( spep_0+196 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 204;

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


entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 如意棒攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
nyoib = entryEffect( spep_2 + 0, SP_03x,  0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, nyoib, 0, 0, 0 );
setEffMoveKey( spep_2 + 120, nyoib, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, nyoib, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, nyoib, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, nyoib, 0 );
setEffRotateKey( spep_2 + 120, nyoib, 0 );

setEffAlphaKey( spep_2 + 0, nyoib, 255 );
setEffAlphaKey( spep_2 + 120, nyoib, 255 );

--***カットイン***
--speff = entryEffect(  spep_2 ,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_2 ,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);   

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 + 12, 190006, 74, 0x100, -1, 0, 50, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 + 12,  ctgogo,  50,  540);
setEffMoveKey(  spep_2 + 86,  ctgogo,  50,  540);

setEffAlphaKey( spep_2 + 12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 72, ctgogo, 255 );
setEffAlphaKey( spep_2 + 74, ctgogo, 255 );
setEffAlphaKey( spep_2 + 76, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 128 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );
setEffAlphaKey( spep_2 + 85, ctgogo, 0 );
setEffAlphaKey( spep_2 + 86, ctgogo, 0 );

setEffRotateKey(  spep_2 + 12,  ctgogo,  0);
setEffRotateKey(  spep_2 + 86,  ctgogo,  0);

setEffScaleKey(  spep_2 + 12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 + 78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 + 86,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_2 + 38, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 38, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 2, shuchusen2, 243 );
setEffAlphaKey( spep_2 + 4, shuchusen2, 231 );
setEffAlphaKey( spep_2 + 6, shuchusen2, 219 );
setEffAlphaKey( spep_2 + 8, shuchusen2, 207 );
setEffAlphaKey( spep_2 + 10, shuchusen2, 195 );
setEffAlphaKey( spep_2 + 12, shuchusen2, 183 );
setEffAlphaKey( spep_2 + 14, shuchusen2, 171 );
setEffAlphaKey( spep_2 + 16, shuchusen2, 159 );
setEffAlphaKey( spep_2 + 18, shuchusen2, 147 );
setEffAlphaKey( spep_2 + 20, shuchusen2, 134 );
setEffAlphaKey( spep_2 + 22, shuchusen2, 122 );
setEffAlphaKey( spep_2 + 24, shuchusen2, 110 );
setEffAlphaKey( spep_2 + 26, shuchusen2, 98 );
setEffAlphaKey( spep_2 + 28, shuchusen2, 86 );
setEffAlphaKey( spep_2 + 30, shuchusen2, 74 );
setEffAlphaKey( spep_2 + 32, shuchusen2, 62 );
setEffAlphaKey( spep_2 + 34, shuchusen2, 50 );
setEffAlphaKey( spep_2 + 36, shuchusen2, 38 );
setEffAlphaKey( spep_2 + 38, shuchusen2, 26 );

--文字エントリー
cxtzuo = entryEffectLife( spep_2 - 4 + 90,  10012, 28, 0x100, -1, 0, 33, 236.3 );--ズオッ

setEffMoveKey( spep_2 - 4 + 90, cxtzuo, 33, 236.3 , 0 );
setEffMoveKey( spep_2 - 4 + 92, cxtzuo, 52.9, 262.9 , 0 );
setEffMoveKey( spep_2 - 4 + 94, cxtzuo, 59.6, 303 , 0 );
setEffMoveKey( spep_2 - 4 + 96, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 98, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 100, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 102, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 104, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 106, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 108, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 110, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 112, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 114, cxtzuo, 73, 336.3 , 0 );
setEffMoveKey( spep_2 - 4 + 116, cxtzuo, 89, 320.3 , 0 );
setEffMoveKey( spep_2 - 4 + 118, cxtzuo, 73, 336.3 , 0 );

a=2.0;

setEffScaleKey( spep_2 - 4 + 90, cxtzuo, 0.1, 0.1 );
setEffScaleKey( spep_2 - 4 + 92, cxtzuo, 0.33, 0.33 );
--setEffScaleKey( spep_2 - 4 + 94, cxtzuo, 0.57, 0.57 );
setEffScaleKey( spep_2 - 4 + 96, cxtzuo, 0.8 +a, 0.8 +a );
setEffScaleKey( spep_2 - 4 + 118, cxtzuo, 0.8 +a, 0.8 +a );

setEffRotateKey( spep_2 - 4 + 90, cxtzuo, 20 );
setEffRotateKey( spep_2 - 4 + 118, cxtzuo, 20 );

setEffAlphaKey( spep_2 - 4 + 90, cxtzuo, 255 );
setEffAlphaKey( spep_2 - 4 + 118, cxtzuo, 255 );


--SE
playSe( spep_2 + 12, 1018 );  --ごごご
playSe( spep_2 + 86, 1152 );  --伸びる音

-- ** 白フェード ** --
entryFade( spep_2+112 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 120;

------------------------------------------------------
-- 如意棒&ヒットエフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_04x,  0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 70, hit_f, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, hit_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 70, hit_f, 0 );

setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 70, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_05x,  0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 70, hit_b, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, hit_b, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 70, hit_b, 0 );

setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 70, hit_b, 255 );

setDisp( spep_3   + 0, 1, 1 );
setDisp( spep_3 -1  + 68, 1, 0 );
changeAnime( spep_3   + 0, 1, 106 );
changeAnime( spep_3 -1  + 22, 1, 108 );

setMoveKey( spep_3  + 0, 1, -563, -241.5 , 0 );
setMoveKey( spep_3 -1 + 2, 1, -495.8, -204.5 , 0 );
setMoveKey( spep_3 -1 + 4, 1, -437.8, -178.5 , 0 );
setMoveKey( spep_3 -1 + 6, 1, -375.3, -147 , 0 );
setMoveKey( spep_3 -1 + 8, 1, -308.9, -111.1 , 0 );
setMoveKey( spep_3 -1 + 10, 1, -250, -83.9 , 0 );
setMoveKey( spep_3 -1 + 12, 1, -187.6, -52.3 , 0 );
setMoveKey( spep_3 -1 + 14, 1, -122.2, -17.7 , 0 );
setMoveKey( spep_3 -1 + 16, 1, -62.2, 10.6 , 0 );
setMoveKey( spep_3 -1 + 18, 1, 0.3, 42.2 , 0 );
setMoveKey( spep_3 -1 + 21, 1, 47.9, 60.7 , 0 );
setMoveKey( spep_3 -1 + 22, 1, 91.6, 74.7 , 0 );
setMoveKey( spep_3 -1 + 24, 1, 90.5, 74.4 , 0 );
setMoveKey( spep_3 -1 + 26, 1, 167, 111.1 , 0 );
setMoveKey( spep_3 -1 + 28, 1, 235.8, 114.1 , 0 );
setMoveKey( spep_3 -1 + 30, 1, 224.7, 126.8 , 0 );
setMoveKey( spep_3 -1 + 32, 1, 240.6, 122.2 , 0 );
setMoveKey( spep_3 -1 + 34, 1, 227.3, 134.3 , 0 );
setMoveKey( spep_3 -1 + 36, 1, 239.2, 113.8 , 0 );
setMoveKey( spep_3 -1 + 38, 1, 229.2, 125.4 , 0 );
setMoveKey( spep_3 -1 + 40, 1, 246.7, 123.8 , 0 );
setMoveKey( spep_3 -1 + 42, 1, 234.2, 134.2 , 0 );
setMoveKey( spep_3 -1 + 44, 1, 247.7, 114.6 , 0 );
setMoveKey( spep_3 -1 + 46, 1, 235.3, 127 , 0 );
setMoveKey( spep_3 -1 + 48, 1, 252.8, 125.4 , 0 );
setMoveKey( spep_3 -1 + 50, 1, 246.3, 125.8 , 0 );
setMoveKey( spep_3 -1 + 52, 1, 247.9, 126.2 , 0 );
setMoveKey( spep_3 -1 + 54, 1, 249.3, 126.6 , 0 );
setMoveKey( spep_3 -1 + 56, 1, 250.8, 127 , 0 );
setMoveKey( spep_3 -1 + 58, 1, 252.4, 127.3 , 0 );
setMoveKey( spep_3 -1 + 60, 1, 253.9, 127.8 , 0 );
setMoveKey( spep_3 -1 + 62, 1, 255.4, 128.2 , 0 );
setMoveKey( spep_3 -1 + 64, 1, 256.9, 128.6 , 0 );
setMoveKey( spep_3 -1 + 66, 1, 258.5, 129 , 0 );
setMoveKey( spep_3  + 68, 1, 259.9, 129.4 , 0 );

setScaleKey( spep_3  + 0, 1, 2.82, 2.82 );
setScaleKey( spep_3 -1 + 2, 1, 2.64, 2.64 );
setScaleKey( spep_3 -1 + 4, 1, 2.46, 2.46 );
setScaleKey( spep_3 -1 + 6, 1, 2.28, 2.28 );
setScaleKey( spep_3 -1 + 8, 1, 2.1, 2.1 );
setScaleKey( spep_3 -1 + 10, 1, 1.92, 1.92 );
setScaleKey( spep_3 -1 + 12, 1, 1.74, 1.74 );
setScaleKey( spep_3 -1 + 14, 1, 1.56, 1.56 );
setScaleKey( spep_3 -1 + 16, 1, 1.38, 1.38 );
setScaleKey( spep_3 -1 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_3 -1 + 21, 1, 1.12, 1.12 );
setScaleKey( spep_3 -1 + 22, 1, 1.04, 1.04 );
setScaleKey( spep_3 -1 + 24, 1, 1.44, 1.44 );
setScaleKey( spep_3 -1 + 26, 1, 1.21, 1.21 );
setScaleKey( spep_3 -1 + 28, 1, 1, 1 );
setScaleKey( spep_3 -1 + 30, 1, 0.87, 0.87 );
setScaleKey( spep_3 -1 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_3 -1 + 34, 1, 0.7, 0.7 );
setScaleKey( spep_3 -1 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_3 -1 + 38, 1, 0.63, 0.63 );
setScaleKey( spep_3 -1 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_3 -1 + 42, 1, 0.56, 0.56 );
setScaleKey( spep_3 -1 + 44, 1, 0.52, 0.52 );
setScaleKey( spep_3 -1 + 46, 1, 0.49, 0.49 );
setScaleKey( spep_3 -1 + 48, 1, 0.45, 0.45 );
setScaleKey( spep_3 -1 + 50, 1, 0.42, 0.42 );
setScaleKey( spep_3 -1 + 52, 1, 0.38, 0.38 );
setScaleKey( spep_3 -1 + 54, 1, 0.35, 0.35 );
setScaleKey( spep_3 -1 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_3 -1 + 58, 1, 0.28, 0.28 );
setScaleKey( spep_3 -1 + 60, 1, 0.24, 0.24 );
setScaleKey( spep_3 -1 + 62, 1, 0.21, 0.21 );
setScaleKey( spep_3 -1 + 64, 1, 0.17, 0.17 );
setScaleKey( spep_3 -1 + 66, 1, 0.14, 0.14 );
setScaleKey( spep_3  + 68, 1, 0.1, 0.1 );

setRotateKey( spep_3 + 0, 1, -53.7 );
setRotateKey( spep_3 + 21 -1, 1, -53.7 );
setRotateKey( spep_3 + 22 -1, 1, 0 );
setRotateKey( spep_3 + 68, 1, 0 );

--文字エントリー
ctbako = entryEffectLife( spep_3 -3 + 26,  10021, 26, 0x100, -1, 0, 15.2, -36 );--バゴォッ
setEffMoveKey( spep_3 -3 + 26, ctbako, 15.2, -36 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctbako, 18.9, -93.2 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctbako, 13.4, -153.2 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctbako, 21.9, -208.9 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctbako, 12.5, -211.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctbako, 21.9, -208.9 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctbako, 12.5, -211.9 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctbako, 21.9, -208.9 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctbako, 12.5, -211.9 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctbako, 21.9, -208.9 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctbako, 12.5, -211.9 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctbako, 22.2, -215.5 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctbako, 12.2, -225.2 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctbako, 12.1, -231.9 , 0 );

setEffScaleKey( spep_3 -3 + 26, ctbako, 0.68, 0.68 );
setEffScaleKey( spep_3 -3 + 28, ctbako, 1.44, 1.44 );
setEffScaleKey( spep_3 -3 + 30, ctbako, 2.19, 2.19 );
setEffScaleKey( spep_3 -3 + 32, ctbako, 2.95, 2.95 );
setEffScaleKey( spep_3 -3 + 46, ctbako, 2.95, 2.95 );
setEffScaleKey( spep_3 -3 + 48, ctbako, 3.08, 3.08 );
setEffScaleKey( spep_3 -3 + 50, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3 -3 + 52, ctbako, 3.33, 3.33 );

setEffRotateKey( spep_3 -3 + 26, ctbako, 0 );
setEffRotateKey( spep_3 -3 + 52, ctbako, 0 );

setEffAlphaKey( spep_3 -3 + 26, ctbako, 255 );
setEffAlphaKey( spep_3 -3 + 46, ctbako, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctbako, 170 );
setEffAlphaKey( spep_3 -3 + 50, ctbako, 85 );
setEffAlphaKey( spep_3 -3 + 52, ctbako, 0 );

--SE
playSe( spep_3, 1018 );  --飛んでいく
playSe( spep_3 + 22, 1011 );  --当たる

-- ** 白フェード ** --
entryFade( spep_3+62 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 70;

------------------------------------------------------
--  ガッ
------------------------------------------------------

-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );
]]

-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, SP_06x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 112, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 112, bg, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_4 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_4 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_4 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_4 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_4 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, 1023 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 14 );
endPhase( spep_4 + 100 );
end
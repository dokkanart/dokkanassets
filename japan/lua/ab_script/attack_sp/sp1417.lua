--1019100:バーダックチーム_レイジサイクロン
--sp_effect_b4_00136

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
SP_01=	155114	;--	突進肘打ち・手前
SP_02=	155115	;--	突進肘打ち・奥
SP_03=	155116	;--	タックル・パンチ・キック・手前
SP_04=	155117	;--	タックル・パンチ・キック・奥
SP_05=	155118	;--	トーマナビ
SP_06=	155119	;--	トーマ発射〜着弾〜バーダック正面・手前
SP_07=	155120	;--	トーマ発射〜着弾〜バーダック正面・奥
SP_08=	155121	;--	バーダック発射
SP_09=	155122	;--	着弾〜キメ・手前
SP_10=	155123	;--	着弾〜キメ・奥


--エフェクト(敵)
SP_01x=	155114	;--	突進肘打ち・手前	
SP_02x=	155115	;--	突進肘打ち・奥	
SP_03x=	155124	;--	タックル・パンチ・キック・手前	(敵)
SP_04x=	155125	;--	タックル・パンチ・キック・奥	(敵)
SP_05x=	155118	;--	トーマナビ	
SP_06x=	155126	;--	トーマ発射〜着弾〜バーダック正面・手前	(敵)
SP_07x=	155127	;--	トーマ発射〜着弾〜バーダック正面・奥	(敵)
SP_08x=	155121	;--	バーダック発射	
SP_09x=	155122	;--	着弾〜キメ・手前	
SP_10x=	155123	;--	着弾〜キメ・奥	

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進肘打ち
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
panti_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panti_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, panti_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panti_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, panti_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panti_f, 0 );
setEffRotateKey( spep_0 + 86, panti_f, 0 );
setEffAlphaKey( spep_0 + 0, panti_f, 255 );
setEffAlphaKey( spep_0 + 84, panti_f, 255 );
setEffAlphaKey( spep_0 + 85, panti_f, 255 );
setEffAlphaKey( spep_0 + 86, panti_f, 0 );

-- ** エフェクト等 ** --
panti_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panti_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, panti_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panti_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, panti_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panti_b, 0 );
setEffRotateKey( spep_0 + 86, panti_b, 0 );
setEffAlphaKey( spep_0 + 0, panti_b, 255 );
setEffAlphaKey( spep_0 + 84, panti_b, 255 );
setEffAlphaKey( spep_0 + 85, panti_b, 255 );
setEffAlphaKey( spep_0 + 86, panti_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

setAlphaKey( spep_0 + 0, 1, 255 );

changeAnime( spep_0 + 0, 1, 102 );


setMoveKey( spep_0 + 0, 1, 86.4, -123.4 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 90.9, -127.7 , 0 );
setMoveKey( spep_0-3 + 4, 1, 95.3, -131.9 , 0 );
setMoveKey( spep_0-3 + 6, 1, 99.8, -136.2 , 0 );
setMoveKey( spep_0-3 + 8, 1, 104.2, -140.4 , 0 );
setMoveKey( spep_0-3 + 10, 1, 108.7, -144.7 , 0 );
setMoveKey( spep_0-3 + 12, 1, 113.1, -148.9 , 0 );
setMoveKey( spep_0-3 + 14, 1, 117.6, -153.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, 122, -157.4 , 0 );
setMoveKey( spep_0-3 + 18, 1, 126.5, -161.7 , 0 );
setMoveKey( spep_0-3 + 20, 1, 130.9, -166 , 0 );
setMoveKey( spep_0-3 + 22, 1, 135.4, -170.2 , 0 );
setMoveKey( spep_0-3 + 24, 1, 139.8, -174.5 , 0 );
setMoveKey( spep_0-3 + 26, 1, 144.3, -178.7 , 0 );
setMoveKey( spep_0-3 + 28, 1, 148.7, -183 , 0 );
setMoveKey( spep_0-3 + 30, 1, 153.2, -187.3 , 0 );
setMoveKey( spep_0-3 + 32, 1, 157.6, -191.5 , 0 );

setScaleKey( spep_0 + 0, 1, 1.91, 1.91 );
--setScaleKey( spep_0-3 + 2, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 6, 1, 2.23, 2.23 );
setScaleKey( spep_0-3 + 8, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 10, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 12, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 14, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 16, 1, 2.78, 2.78 );
setScaleKey( spep_0-3 + 18, 1, 2.89, 2.89 );
setScaleKey( spep_0-3 + 20, 1, 3, 3 );
setScaleKey( spep_0-3 + 22, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 24, 1, 3.21, 3.21 );
setScaleKey( spep_0-3 + 26, 1, 3.32, 3.32 );
setScaleKey( spep_0-3 + 28, 1, 3.43, 3.43 );
setScaleKey( spep_0-3 + 30, 1, 3.54, 3.54 );
setScaleKey( spep_0-3 + 32, 1, 3.65, 3.65 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );

--SE
se_0009 = playSe( spep_0 + 0, 9 );
se_1182 = playSe( spep_0 + 0, 1182 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0009, 0 );
    stopSe( SP_dodge - 12, se_1182, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge +9, 1, 157.6, -191.5 , 0 );
    setScaleKey( SP_dodge+9, 1, 3.65, 3.65 );
    setRotateKey( SP_dodge+9, 1, 0 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
changeAnime( spep_0 -3 + 40, 1, 107 );

setMoveKey( spep_0-3 + 34, 1, 162, -195.8 , 0 );
setMoveKey( spep_0-3 + 36, 1, 166.5, -200.1 , 0 );
setMoveKey( spep_0-3 + 38, 1, 170.9, -204.3 , 0 );
setMoveKey( spep_0-3 + 39, 1, 170.9, -204.3 , 0 );

setMoveKey( spep_0-3 + 40, 1, 22, -175.7 , 0 );
setMoveKey( spep_0-3 + 42, 1, 26.1, -159.9 , 0 );
setMoveKey( spep_0-3 + 44, 1, 6.2, -172.1 , 0 );
setMoveKey( spep_0-3 + 46, 1, 26.3, -168.3 , 0 );
setMoveKey( spep_0-3 + 48, 1, 22.4, -192.5 , 0 );
setMoveKey( spep_0-3 + 50, 1, 26.5, -176.7 , 0 );
setMoveKey( spep_0-3 + 52, 1, 10.5, -192.9 , 0 );
setMoveKey( spep_0-3 + 54, 1, 26.6, -185.1 , 0 );
setMoveKey( spep_0-3 + 56, 1, 22.7, -205.3 , 0 );
setMoveKey( spep_0-3 + 58, 1, 26.8, -193.5 , 0 );
setMoveKey( spep_0-3 + 60, 1, 14.9, -201.7 , 0 );
setMoveKey( spep_0-3 + 62, 1, 27, -201.9 , 0 );
setMoveKey( spep_0-3 + 64, 1, 23.1, -218.1 , 0 );
setMoveKey( spep_0-3 + 66, 1, 27.2, -210.3 , 0 );
setMoveKey( spep_0-3 + 68, 1, 23.3, -226.5 , 0 );
setMoveKey( spep_0-3 + 70, 1, 27.4, -218.7 , 0 );
setMoveKey( spep_0-3 + 72, 1, 15.5, -230.9 , 0 );
setMoveKey( spep_0-3 + 74, 1, 27.5, -227 , 0 );
setMoveKey( spep_0-3 + 76, 1, 23.6, -239.2 , 0 );
setMoveKey( spep_0-3 + 78, 1, 27.7, -235.4 , 0 );
setMoveKey( spep_0-3 + 80, 1, 23.8, -251.6 , 0 );
setMoveKey( spep_0-3 + 82, 1, 27.9, -243.8 , 0 );
setMoveKey( spep_0-3 + 84, 1, 20, -252 , 0 );
setMoveKey( spep_0-3 + 86, 1, 28.1, -252.2 , 0 );
setMoveKey( spep_0-1 + 86, 1, 24.2, -264.4 , 0 );

setScaleKey( spep_0-3 + 34, 1, 3.76, 3.76 );
setScaleKey( spep_0-3 + 36, 1, 3.87, 3.87 );
setScaleKey( spep_0-3 + 38, 1, 3.98, 3.98 );
setScaleKey( spep_0-3 + 39, 1, 3.98, 3.98 );

setScaleKey( spep_0-3 + 40, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 44, 1, 1.08, 1.08 );
setScaleKey( spep_0-3 + 46, 1, 1.1, 1.1 );
setScaleKey( spep_0-3 + 48, 1, 1.12, 1.12 );
setScaleKey( spep_0-3 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_0-3 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_0-3 + 54, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 56, 1, 1.18, 1.18 );
setScaleKey( spep_0-3 + 58, 1, 1.19, 1.19 );
setScaleKey( spep_0-3 + 60, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 62, 1, 1.23, 1.23 );
setScaleKey( spep_0-3 + 64, 1, 1.24, 1.24 );
setScaleKey( spep_0-3 + 66, 1, 1.26, 1.26 );
setScaleKey( spep_0-3 + 68, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 70, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 72, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 74, 1, 1.32, 1.32 );
setScaleKey( spep_0-3 + 76, 1, 1.34, 1.34 );
setScaleKey( spep_0-3 + 78, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 82, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 84, 1, 1.4, 1.4 );
setScaleKey( spep_0-3 + 86, 1, 1.41, 1.41 );
setScaleKey( spep_0-1 + 86, 1, 1.43, 1.43 );


setRotateKey( spep_0-3 + 39, 1, 0 );

setRotateKey( spep_0-3 + 40, 1, -28.7 );
setRotateKey( spep_0-3 + 42, 1, -28.2 );
setRotateKey( spep_0-3 + 44, 1, -27.8 );
setRotateKey( spep_0-3 + 46, 1, -27.4 );
setRotateKey( spep_0-3 + 48, 1, -26.9 );
setRotateKey( spep_0-3 + 50, 1, -26.5 );
setRotateKey( spep_0-3 + 52, 1, -26.1 );
setRotateKey( spep_0-3 + 54, 1, -25.6 );
setRotateKey( spep_0-3 + 56, 1, -25.2 );
setRotateKey( spep_0-3 + 58, 1, -24.8 );
setRotateKey( spep_0-3 + 60, 1, -24.3 );
setRotateKey( spep_0-3 + 62, 1, -23.9 );
setRotateKey( spep_0-3 + 64, 1, -23.4 );
setRotateKey( spep_0-3 + 66, 1, -23 );
setRotateKey( spep_0-3 + 68, 1, -22.6 );
setRotateKey( spep_0-3 + 70, 1, -22.1 );
setRotateKey( spep_0-3 + 72, 1, -21.7 );
setRotateKey( spep_0-3 + 74, 1, -21.3 );
setRotateKey( spep_0-3 + 76, 1, -20.8 );
setRotateKey( spep_0-3 + 78, 1, -20.4 );
setRotateKey( spep_0-3 + 80, 1, -19.9 );
setRotateKey( spep_0-3 + 82, 1, -19.5 );
setRotateKey( spep_0-3 + 84, 1, -19.1 );
setRotateKey( spep_0-3 + 86, 1, -18.6 );
setRotateKey( spep_0-1 + 86, 1, -18.2 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 40,  10021, 30, 0x100, -1, 0, 139.8, 351.9 );--バゴォッ
setEffShake( spep_0-3 + 40, ctbago, 30, 10 );
setEffMoveKey( spep_0-3 + 40, ctbago, 139.8, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 42, ctbago, 138.9, 351.5 , 0 );
setEffMoveKey( spep_0-3 + 44, ctbago, 139.8, 351.8 , 0 );
setEffMoveKey( spep_0-3 + 46, ctbago, 136.9, 378.9 , 0 );
setEffMoveKey( spep_0-3 + 48, ctbago, 139.8, 351.8 , 0 );
setEffMoveKey( spep_0-3 + 50, ctbago, 137, 378.3 , 0 );
setEffMoveKey( spep_0-3 + 52, ctbago, 139.8, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 54, ctbago, 137.1, 377.6 , 0 );
setEffMoveKey( spep_0-3 + 56, ctbago, 139.9, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 58, ctbago, 137.2, 377 , 0 );
setEffMoveKey( spep_0-3 + 60, ctbago, 139.9, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 62, ctbago, 139.9, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 64, ctbago, 137.3, 376.3 , 0 );
setEffMoveKey( spep_0-3 + 66, ctbago, 139.9, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 68, ctbago, 137.3, 376.3 , 0 );
setEffMoveKey( spep_0-3 + 70, ctbago, 137.3, 376.3 , 0 );

setEffScaleKey( spep_0-3 + 40, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_0-3 + 42, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_0-3 + 44, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 46, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 48, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 50, ctbago, 3.09, 3.09 );
setEffScaleKey( spep_0-3 + 52, ctbago, 3.05, 3.05 );
setEffScaleKey( spep_0-3 + 54, ctbago, 3.01, 3.01 );
setEffScaleKey( spep_0-3 + 56, ctbago, 2.97, 2.97 );
setEffScaleKey( spep_0-3 + 58, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_0-3 + 60, ctbago, 2.89, 2.89 );
setEffScaleKey( spep_0-3 + 62, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 70, ctbago, 2.85, 2.85 );

setEffRotateKey( spep_0-3 + 40, ctbago, 29.5 );
setEffRotateKey( spep_0-3 + 70, ctbago, 29.5 );

setEffAlphaKey( spep_0-3 + 40, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 62, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 64, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 66, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 68, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 70, ctbago, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 40,  906, 68, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 40, shuchusen1, 68, 20 );

setEffMoveKey( spep_0-3 + 40, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 40, shuchusen1, 1.21, 1.43 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.21, 1.43 );

setEffRotateKey( spep_0-3 + 40, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 40, shuchusen1, 191 );
setEffAlphaKey( spep_0-3 + 96, shuchusen1, 191 );
setEffAlphaKey( spep_0-3 + 98, shuchusen1, 159 );
setEffAlphaKey( spep_0-3 + 100, shuchusen1, 128 );
setEffAlphaKey( spep_0-3 + 102, shuchusen1, 96 );
setEffAlphaKey( spep_0-3 + 104, shuchusen1, 64 );
setEffAlphaKey( spep_0-3 + 106, shuchusen1, 32 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 0 );

--SE
playSe( spep_0 + 33, 1189 );
playSe( spep_0 + 38, 1009 );
setSeVolume( spep_0 + 38, 1009, 89 );
se_1187 = playSe( spep_0 + 42, 1187 );
setSeVolume( spep_0 + 42, 1187, 56 );
playSe( spep_0 + 46, 1110 );
setSeVolume( spep_0 + 46, 1110, 89 );

stopSe( spep_0 + 42, se_0009, 0 );
stopSe( spep_0 + 46, se_1182, 0 );
stopSe( spep_0 + 67, se_1187, 25 );


-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

------------------------------------------------------
-- タックル・パンチ・キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 276, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 274, kick_f, 255 );
setEffAlphaKey( spep_1 + 275, kick_f, 255 );
setEffAlphaKey( spep_1 + 276, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 276, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 274, kick_b, 255 );
setEffAlphaKey( spep_1 + 275, kick_b, 255 );
setEffAlphaKey( spep_1 + 276, kick_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 +56, 1, 0 );
setDisp( spep_1-1 +68, 1, 1 );
setDisp( spep_1-1 +122, 1, 0 );
setDisp( spep_1-1 +148, 1, 1 );
setDisp( spep_1-1 +204, 1, 0 );
setDisp( spep_1-1 +236, 1, 1 );
setDisp( spep_1 +276, 1, 0 );


changeAnime( spep_1 + 0, 1, 105);
changeAnime( spep_1 -3 + 40, 1, 108);
changeAnime( spep_1 -3 + 70, 1, 106);
changeAnime( spep_1 -3 + 120, 1, 108);
changeAnime( spep_1 -3 + 150, 1, 107);
changeAnime( spep_1 -3 + 194, 1, 8);

setMoveKey( spep_1 + 0, 1, 225.8, -214.5 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 197.2, -158.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 168.5, -102.7 , 0 );
setMoveKey( spep_1-3 + 6, 1, 139.7, -46.7 , 0 );
setMoveKey( spep_1-3 + 8, 1, 110.8, 9.4 , 0 );
setMoveKey( spep_1-3 + 10, 1, 81.8, 65.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 80.5, 63.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 79.1, 60.3 , 0 );
setMoveKey( spep_1-3 + 16, 1, 77.4, 57.2 , 0 );
setMoveKey( spep_1-3 + 18, 1, 75.6, 53.8 , 0 );
setMoveKey( spep_1-3 + 20, 1, 73.7, 50 , 0 );
setMoveKey( spep_1-3 + 22, 1, 71.5, 46 , 0 );
setMoveKey( spep_1-3 + 24, 1, 69.2, 41.6 , 0 );
setMoveKey( spep_1-3 + 26, 1, 66.7, 36.9 , 0 );
setMoveKey( spep_1-3 + 28, 1, 64.1, 31.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 61.2, 26.4 , 0 );
setMoveKey( spep_1-3 + 32, 1, 58.2, 20.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 55, 14.7 , 0 );
setMoveKey( spep_1-3 + 36, 1, 51.7, 8.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 48.1, 1.8 , 0 );
setMoveKey( spep_1-3 + 39, 1, 48.1, 1.8 , 0 );

setMoveKey( spep_1-3 + 40, 1, 45, -2.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 59.6, 5.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 58.9, -4.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 78.9, -1.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, 83.4, -11.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 92.1, -0.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, 91, -6.4 , 0 );
setMoveKey( spep_1-3 + 54, 1, 106.2, 0.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 431, -9.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, 720.4, 0.3 , 0 );
setMoveKey( spep_1-3 + 60, 1, 963.7, -5.6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 1174.3, 0.5 , 0 );
setMoveKey( spep_1-3 + 64, 1, 1337.6, -5.4 , 0 );
setMoveKey( spep_1-3 + 66, 1, 1462.8, 0.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 1543.3, 0.8 , 0 );
setMoveKey( spep_1-3 + 69, 1, 1543.3, 0.8 , 0 );

setMoveKey( spep_1-3 + 70, 1, -677.2, -247.8 , 0 );
setMoveKey( spep_1-3 + 72, 1, -518.2, -174.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, -359.1, -100.8 , 0 );
setMoveKey( spep_1-3 + 76, 1, -200, -27.1 , 0 );
setMoveKey( spep_1-3 + 78, 1, -40.9, 46.7 , 0 );
setMoveKey( spep_1-3 + 80, 1, -36.9, 47.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, -32.9, 48.6 , 0 );
setMoveKey( spep_1-3 + 84, 1, -28.8, 49.5 , 0 );
setMoveKey( spep_1-3 + 86, 1, -24.8, 50.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, -20.8, 51.4 , 0 );
setMoveKey( spep_1-3 + 90, 1, -16.7, 52.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, -12.7, 53.3 , 0 );
setMoveKey( spep_1-3 + 94, 1, -8.7, 54.2 , 0 );
setMoveKey( spep_1-3 + 96, 1, -4.6, 55.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, -0.6, 56.1 , 0 );
setMoveKey( spep_1-3 + 100, 1, 3.4, 57 , 0 );
setMoveKey( spep_1-3 + 102, 1, 7.5, 58 , 0 );
setMoveKey( spep_1-3 + 104, 1, 11.5, 58.9 , 0 );
setMoveKey( spep_1-3 + 106, 1, 15.5, 59.8 , 0 );
setMoveKey( spep_1-3 + 108, 1, 19.6, 60.8 , 0 );
setMoveKey( spep_1-3 + 110, 1, 23.6, 61.7 , 0 );
setMoveKey( spep_1-3 + 112, 1, 27.6, 62.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 31.7, 63.6 , 0 );
setMoveKey( spep_1-3 + 116, 1, 35.7, 64.5 , 0 );
setMoveKey( spep_1-3 + 118, 1, 39.7, 65.5 , 0 );
setMoveKey( spep_1-3 + 119, 1, 39.7, 65.5 , 0 );

setMoveKey( spep_1-3 + 120, 1, 200.5, -198 , 0 );
setMoveKey( spep_1-3 + 122, 1, 548.6, -582.3 , 0 );
setMoveKey( spep_1-3 + 124, 1, 728.3, -793.7 , 0 );
setMoveKey( spep_1-3 + 126, 1, 798, -840.6 , 0 );
setMoveKey( spep_1-3 + 128, 1, 916.3, -993.3 , 0 );
setMoveKey( spep_1-3 + 130, 1, 985.4, -1065.9 , 0 );

setMoveKey( spep_1-3 + 150, 1, -252.4, 271.8 , 0 );
setMoveKey( spep_1-3 + 152, 1, -253.1, 274.9 , 0 );
setMoveKey( spep_1-3 + 154, 1, -253, 277.3 , 0 );
setMoveKey( spep_1-3 + 156, 1, -252, 278.7 , 0 );
setMoveKey( spep_1-3 + 158, 1, -250.1, 279.3 , 0 );
setMoveKey( spep_1-3 + 160, 1, -247.4, 278.8 , 0 );
setMoveKey( spep_1-3 + 162, 1, -243.7, 277.5 , 0 );
setMoveKey( spep_1-3 + 164, 1, -239.1, 275.2 , 0 );
setMoveKey( spep_1-3 + 166, 1, -233.5, 271.9 , 0 );
setMoveKey( spep_1-3 + 168, 1, -227, 267.7 , 0 );
setMoveKey( spep_1-3 + 170, 1, -219.4, 262.3 , 0 );
setMoveKey( spep_1-3 + 172, 1, -210.9, 255.9 , 0 );
setMoveKey( spep_1-3 + 174, 1, -201.3, 248.6 , 0 );
setMoveKey( spep_1-3 + 176, 1, -193.4, 238.8 , 0 );
setMoveKey( spep_1-3 + 178, 1, -184.3, 227.7 , 0 );
setMoveKey( spep_1-3 + 180, 1, -173.8, 215.3 , 0 );
setMoveKey( spep_1-3 + 182, 1, -161.9, 201.5 , 0 );
setMoveKey( spep_1-3 + 184, 1, -148.7, 186.2 , 0 );
setMoveKey( spep_1-3 + 186, 1, -134, 169.5 , 0 );
setMoveKey( spep_1-3 + 188, 1, -117.9, 151.3 , 0 );
setMoveKey( spep_1-3 + 190, 1, -100.3, 131.5 , 0 );
setMoveKey( spep_1-3 + 192, 1, -81, 110.1 , 0 );
setMoveKey( spep_1-3 + 193, 1, -81, 110.1 , 0 );

z=-30;

setMoveKey( spep_1-3 + 194, 1, -9.4+z, 242.4 , 0 );
setMoveKey( spep_1-3 + 196, 1, -5.7+z, 257.2 , 0 );
setMoveKey( spep_1-3 + 198, 1, -12.6+z, 243.2 , 0 );
setMoveKey( spep_1-3 + 200, 1, -20.3+z, 275.8 , 0 );
setMoveKey( spep_1-3 + 202, 1, -26.3+z, 504.4 , 0 );
setMoveKey( spep_1-3 + 204, 1, -20.4+z, 695 , 0 );
setMoveKey( spep_1-3 + 206, 1, -22.4+z, 837.1 , 0 );
setMoveKey( spep_1-3 + 208, 1, -20.5+z, 951.9 , 0 );
setMoveKey( spep_1-3 + 210, 1, -26.5+z, 1019.1 , 0 );
setMoveKey( spep_1-3 + 212, 1, -20.6+z, 1057.8 , 0 );

setMoveKey( spep_1-3 + 234, 1, 10.4, -1115.4 , 0 );
setMoveKey( spep_1-3 + 236, 1, 10.6, -895.4 , 0 );
setMoveKey( spep_1-3 + 238, 1, 10.7, -677 , 0 );
setMoveKey( spep_1-3 + 240, 1, 11, -460.1 , 0 );
setMoveKey( spep_1-3 + 242, 1, 11.2, -244.8 , 0 );
setMoveKey( spep_1-3 + 244, 1, 11.5, -31.1 , 0 );
setMoveKey( spep_1-3 + 246, 1, 11.4, -23.4 , 0 );
setMoveKey( spep_1-3 + 248, 1, 11.4, -16.1 , 0 );
setMoveKey( spep_1-3 + 250, 1, 11.4, -9.1 , 0 );
setMoveKey( spep_1-3 + 252, 1, 11.4, -2.5 , 0 );
setMoveKey( spep_1-3 + 254, 1, 11.3, 3.8 , 0 );
setMoveKey( spep_1-3 + 256, 1, 11.3, 9.8 , 0 );
setMoveKey( spep_1-3 + 258, 1, 11.3, 15.4 , 0 );
setMoveKey( spep_1-3 + 260, 1, 11.3, 20.6 , 0 );
setMoveKey( spep_1-3 + 262, 1, 11.3, 25.6 , 0 );
setMoveKey( spep_1-3 + 264, 1, 11.2, 30.1 , 0 );
setMoveKey( spep_1-3 + 266, 1, 11.2, 34.4 , 0 );
setMoveKey( spep_1-3 + 268, 1, 11.2, 38.4 , 0 );
setMoveKey( spep_1-3 + 270, 1, 11.2, 42 , 0 );
setMoveKey( spep_1-3 + 272, 1, 11.1, 45.3 , 0 );
setMoveKey( spep_1-3 + 274, 1, 11.1, 48.3 , 0 );
setMoveKey( spep_1-3 + 276, 1, 11, 50.9 , 0 );
setMoveKey( spep_1 + 276, 1, 11, 53.3 , 0 );


setScaleKey( spep_1 + 0, 1, 13.6, 13.6 );
--setScaleKey( spep_1-3 + 2, 1, 11.42, 11.42 );
setScaleKey( spep_1-3 + 4, 1, 9.24, 9.24 );
setScaleKey( spep_1-3 + 6, 1, 7.06, 7.06 );
setScaleKey( spep_1-3 + 8, 1, 4.88, 4.88 );
setScaleKey( spep_1-3 + 10, 1, 2.7, 2.7 );
setScaleKey( spep_1-3 + 12, 1, 2.62, 2.62 );
setScaleKey( spep_1-3 + 14, 1, 2.54, 2.54 );
setScaleKey( spep_1-3 + 16, 1, 2.45, 2.45 );
setScaleKey( spep_1-3 + 18, 1, 2.35, 2.35 );
setScaleKey( spep_1-3 + 20, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 22, 1, 2.12, 2.12 );
setScaleKey( spep_1-3 + 24, 1, 1.99, 1.99 );
setScaleKey( spep_1-3 + 26, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 28, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 34, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 36, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 38, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 39, 1, 0.81, 0.81 );

setScaleKey( spep_1-3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_1-3 + 44, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 46, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 48, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 50, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 52, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 54, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 56, 1, 1.4, 1.4 );
setScaleKey( spep_1-3 + 58, 1, 1.4, 1.4 );
setScaleKey( spep_1-3 + 60, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 62, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 64, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 66, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 68, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 69, 1, 1.44, 1.44 );

setScaleKey( spep_1-3 + 70, 1, 6.33, 6.33 );
setScaleKey( spep_1-3 + 72, 1, 5.19, 5.19 );
setScaleKey( spep_1-3 + 74, 1, 4.05, 4.05 );
setScaleKey( spep_1-3 + 76, 1, 2.91, 2.91 );
setScaleKey( spep_1-3 + 78, 1, 1.78, 1.78 );
setScaleKey( spep_1-3 + 80, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 82, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 84, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 86, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 88, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 90, 1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 92, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 94, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 96, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 98, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 100, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 102, 1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 104, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 106, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 108, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 110, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 112, 1, 1.61, 1.61 );
setScaleKey( spep_1-3 + 114, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 116, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 118, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 119, 1, 1.58, 1.58 );

setScaleKey( spep_1-3 + 120, 1, 2.48, 2.48 );
setScaleKey( spep_1-3 + 122, 1, 2.21, 2.21 );
setScaleKey( spep_1-3 + 124, 1, 1.93, 1.93 );
setScaleKey( spep_1-3 + 126, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 128, 1, 1.64, 1.64 );

setScaleKey( spep_1-3 + 150, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 152, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 154, 1, 0.1, 0.1 );
setScaleKey( spep_1-3 + 156, 1, 0.1, 0.1 );
setScaleKey( spep_1-3 + 158, 1, 0.11, 0.11 );
setScaleKey( spep_1-3 + 160, 1, 0.12, 0.12 );
setScaleKey( spep_1-3 + 162, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 164, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 166, 1, 0.16, 0.16 );
setScaleKey( spep_1-3 + 168, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 170, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 172, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 174, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 176, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 178, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 180, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 182, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 184, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 186, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 188, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 190, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 192, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 193, 1, 0.63, 0.63 );

setScaleKey( spep_1-3 + 194, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 196, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 198, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 200, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 202, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 204, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 206, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 208, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 210, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 212, 1, 1.42, 1.42 );


setScaleKey( spep_1-3 + 234, 1, 3.13, 3.13 );
setScaleKey( spep_1-3 + 236, 1, 2.77, 2.77 );
setScaleKey( spep_1-3 + 238, 1, 2.41, 2.41 );
setScaleKey( spep_1-3 + 240, 1, 2.06, 2.06 );
setScaleKey( spep_1-3 + 242, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 244, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 246, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 248, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 250, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 252, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 254, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 256, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 258, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 260, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 262, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 264, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 266, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 268, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 270, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 272, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 274, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 276, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 276, 1, 1.12, 1.12 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 39, 1, 0 );

setRotateKey( spep_1-3 + 40, 1, 0 );
setRotateKey( spep_1-3 + 69, 1, 0 );

setRotateKey( spep_1-3 + 70, 1, 0 );
setRotateKey( spep_1-3 + 119, 1, 0 );

setRotateKey( spep_1-3 + 120, 1, 52.7 );
setRotateKey( spep_1-3 + 130, 1, 52.7 );

setRotateKey( spep_1-3 + 150, 1, 0 );
setRotateKey( spep_1-3 + 193, 1, 0 );

setRotateKey( spep_1-3 + 194, 1, 90 );
setRotateKey( spep_1 + 276, 1, 90 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 40,  906, 28, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 40, shuchusen2, 28, 20 );
setEffMoveKey( spep_1-3 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 68, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 40, shuchusen2, 1.21, 1.43 );
setEffScaleKey( spep_1-3 + 68, shuchusen2, 1.21, 1.43 );

setEffRotateKey( spep_1-3 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1-3 + 68, shuchusen2, 0 );

setEffAlphaKey( spep_1-3 + 40, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 60, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 62, shuchusen2, 143 );
setEffAlphaKey( spep_1-3 + 64, shuchusen2, 96 );
setEffAlphaKey( spep_1-3 + 66, shuchusen2, 48 );
setEffAlphaKey( spep_1-3 + 68, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 120,  906, 28, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 120, shuchusen3, 28, 20 );
setEffMoveKey( spep_1-3 + 120,shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 148,shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 120,shuchusen3, 1.21, 1.43 );
setEffScaleKey( spep_1-3 + 148,shuchusen3, 1.21, 1.43 );

setEffRotateKey( spep_1-3 + 120,shuchusen3, 0 );
setEffRotateKey( spep_1-3 + 148,shuchusen3, 0 );

setEffAlphaKey( spep_1-3 + 120,shuchusen3, 191 );
setEffAlphaKey( spep_1-3 + 138,shuchusen3, 191 );
setEffAlphaKey( spep_1-3 + 140,shuchusen3, 153 );
setEffAlphaKey( spep_1-3 + 142,shuchusen3, 115 );
setEffAlphaKey( spep_1-3 + 144,shuchusen3, 77 );
setEffAlphaKey( spep_1-3 + 146,shuchusen3, 38 );
setEffAlphaKey( spep_1-3 + 148,shuchusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_1-3 + 194,  906, 16, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 194, shuchusen4, 16, 20 );
setEffMoveKey( spep_1-3 + 194,shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 210,shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 194,shuchusen4, 1.21, 1.43 );
setEffScaleKey( spep_1-3 + 210,shuchusen4, 1.21, 1.43 );

setEffRotateKey( spep_1-3 + 194,shuchusen4, 0 );
setEffRotateKey( spep_1-3 + 210,shuchusen4, 0 );

setEffAlphaKey( spep_1-3 + 194, shuchusen4, 191 );
setEffAlphaKey( spep_1-3 + 204, shuchusen4, 191 );
setEffAlphaKey( spep_1-3 + 206, shuchusen4, 128 );
setEffAlphaKey( spep_1-3 + 208, shuchusen4, 64 );
setEffAlphaKey( spep_1-3 + 210, shuchusen4, 0 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 40,  10005, 26, 0x100, -1, 0, 4.3, 346.7 );--ガッ
setEffShake( spep_1-3 + 40, ctga, 26, 10 );
setEffMoveKey( spep_1-3 + 40, ctga, 4.3, 346.7 , 0 );
setEffMoveKey( spep_1-3 + 42, ctga, 4.7, 346.4 , 0 );
setEffMoveKey( spep_1-3 + 44, ctga, -4.3, 361.4 , 0 );
setEffMoveKey( spep_1-3 + 46, ctga, 4.7, 346.8 , 0 );
setEffMoveKey( spep_1-3 + 48, ctga, -3.5, 361.8 , 0 );
setEffMoveKey( spep_1-3 + 50, ctga, 4.7, 346.7 , 0 );
setEffMoveKey( spep_1-3 + 52, ctga, -3.2, 360.8 , 0 );
setEffMoveKey( spep_1-3 + 54, ctga, 4.7, 346.7 , 0 );
setEffMoveKey( spep_1-3 + 56, ctga, -2.8, 359.8 , 0 );
setEffMoveKey( spep_1-3 + 58, ctga, 4.7, 346.6 , 0 );
setEffMoveKey( spep_1-3 + 60, ctga, 4.7, 346.6 , 0 );
setEffMoveKey( spep_1-3 + 62, ctga, -2.5, 358.7 , 0 );
setEffMoveKey( spep_1-3 + 64, ctga, 4.7, 346.6 , 0 );
setEffMoveKey( spep_1-3 + 66, ctga, 4.7, 346.6 , 0 );

setEffScaleKey( spep_1-3 + 40, ctga, 1.14, 1.14 );
setEffScaleKey( spep_1-3 + 42, ctga, 3.02, 3.02 );
setEffScaleKey( spep_1-3 + 44, ctga, 3.07, 3.07 );
setEffScaleKey( spep_1-3 + 46, ctga, 3.11, 3.11 );
setEffScaleKey( spep_1-3 + 48, ctga, 3.03, 3.03 );
setEffScaleKey( spep_1-3 + 50, ctga, 2.94, 2.94 );
setEffScaleKey( spep_1-3 + 52, ctga, 2.86, 2.86 );
setEffScaleKey( spep_1-3 + 54, ctga, 2.77, 2.77 );
setEffScaleKey( spep_1-3 + 56, ctga, 2.69, 2.69 );
setEffScaleKey( spep_1-3 + 58, ctga, 2.6, 2.6 );
setEffScaleKey( spep_1-3 + 60, ctga, 2.52, 2.52 );
setEffScaleKey( spep_1-3 + 62, ctga, 2.49, 2.49 );
setEffScaleKey( spep_1-3 + 64, ctga, 2.46, 2.46 );
setEffScaleKey( spep_1-3 + 66, ctga, 2.44, 2.44 );

setEffRotateKey( spep_1-3 + 40, ctga, 24.3 );
setEffRotateKey( spep_1-3 + 42, ctga, 10.9 );
setEffRotateKey( spep_1-3 + 44, ctga, 13.8 );
setEffRotateKey( spep_1-3 + 46, ctga, 16.6 );
setEffRotateKey( spep_1-3 + 48, ctga, 16.3 );
setEffRotateKey( spep_1-3 + 50, ctga, 16 );
setEffRotateKey( spep_1-3 + 52, ctga, 15.8 );
setEffRotateKey( spep_1-3 + 54, ctga, 15.5 );
setEffRotateKey( spep_1-3 + 56, ctga, 15.2 );
setEffRotateKey( spep_1-3 + 58, ctga, 15 );
setEffRotateKey( spep_1-3 + 60, ctga, 14.7 );
setEffRotateKey( spep_1-3 + 62, ctga, 14.2 );
setEffRotateKey( spep_1-3 + 64, ctga, 13.8 );
setEffRotateKey( spep_1-3 + 66, ctga, 13.3 );

setEffAlphaKey( spep_1-3 + 40, ctga, 255 );
setEffAlphaKey( spep_1-3 + 60, ctga, 255 );
setEffAlphaKey( spep_1-3 + 62, ctga, 170 );
setEffAlphaKey( spep_1-3 + 64, ctga, 85 );
setEffAlphaKey( spep_1-3 + 66, ctga, 0 );


--文字エントリー
ctga2 = entryEffectLife( spep_1-3 + 120,  10005, 26, 0x100, -1, 0, -72.7, 391.3 );--ガッ
setEffShake( spep_1-3 + 120, ctga2, 26, 10 );
setEffMoveKey( spep_1-3 + 120, ctga2, -72.7, 391.3 , 0 );
setEffMoveKey( spep_1-3 + 122, ctga2, -72.1, 391.4 , 0 );
setEffMoveKey( spep_1-3 + 124, ctga2, -88.5, 397.7 , 0 );
setEffMoveKey( spep_1-3 + 126, ctga2, -72.3, 391.8 , 0 );
setEffMoveKey( spep_1-3 + 128, ctga2, -88.1, 398.5 , 0 );
setEffMoveKey( spep_1-3 + 130, ctga2, -72.3, 391.7 , 0 );
setEffMoveKey( spep_1-3 + 132, ctga2, -87.2, 397.9 , 0 );
setEffMoveKey( spep_1-3 + 134, ctga2, -72.2, 391.7 , 0 );
setEffMoveKey( spep_1-3 + 136, ctga2, -86.3, 397.4 , 0 );
setEffMoveKey( spep_1-3 + 138, ctga2, -72.2, 391.6 , 0 );
setEffMoveKey( spep_1-3 + 140, ctga2, -72.2, 391.6 , 0 );
setEffMoveKey( spep_1-3 + 142, ctga2, -85.4, 396.7 , 0 );
setEffMoveKey( spep_1-3 + 144, ctga2, -72.2, 391.6 , 0 );
setEffMoveKey( spep_1-3 + 146, ctga2, -72.2, 391.7 , 0 );

setEffScaleKey( spep_1-3 + 120, ctga2, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 122, ctga2, 3.04, 3.04 );
setEffScaleKey( spep_1-3 + 124, ctga2, 3.08, 3.08 );
setEffScaleKey( spep_1-3 + 126, ctga2, 3.13, 3.13 );
setEffScaleKey( spep_1-3 + 128, ctga2, 3.04, 3.04 );
setEffScaleKey( spep_1-3 + 130, ctga2, 2.95, 2.95 );
setEffScaleKey( spep_1-3 + 132, ctga2, 2.87, 2.87 );
setEffScaleKey( spep_1-3 + 134, ctga2, 2.78, 2.78 );
setEffScaleKey( spep_1-3 + 136, ctga2, 2.7, 2.7 );
setEffScaleKey( spep_1-3 + 138, ctga2, 2.61, 2.61 );
setEffScaleKey( spep_1-3 + 140, ctga2, 2.53, 2.53 );
setEffScaleKey( spep_1-3 + 142, ctga2, 2.5, 2.5 );
setEffScaleKey( spep_1-3 + 144, ctga2, 2.47, 2.47 );
setEffScaleKey( spep_1-3 + 146, ctga2, 2.45, 2.45 );

setEffRotateKey( spep_1-3 + 120, ctga2, -13.9 );
setEffRotateKey( spep_1-3 + 122, ctga2, -27.2 );
setEffRotateKey( spep_1-3 + 124, ctga2, -24.4 );
setEffRotateKey( spep_1-3 + 126, ctga2, -21.6 );
setEffRotateKey( spep_1-3 + 128, ctga2, -21.9 );
setEffRotateKey( spep_1-3 + 130, ctga2, -22.1 );
setEffRotateKey( spep_1-3 + 132, ctga2, -22.4 );
setEffRotateKey( spep_1-3 + 134, ctga2, -22.7 );
setEffRotateKey( spep_1-3 + 136, ctga2, -22.9 );
setEffRotateKey( spep_1-3 + 138, ctga2, -23.2 );
setEffRotateKey( spep_1-3 + 140, ctga2, -23.5 );
setEffRotateKey( spep_1-3 + 142, ctga2, -23.9 );
setEffRotateKey( spep_1-3 + 144, ctga2, -24.4 );
setEffRotateKey( spep_1-3 + 146, ctga2, -24.8 );

setEffAlphaKey( spep_1-3 + 120, ctga2, 255 );
setEffAlphaKey( spep_1-3 + 140, ctga2, 255 );
setEffAlphaKey( spep_1-3 + 142, ctga2, 170 );
setEffAlphaKey( spep_1-3 + 144, ctga2, 85 );
setEffAlphaKey( spep_1-3 + 146, ctga2, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 194,  10020, 24, 0x100, -1, 0, 38.8, 375.7 );--バキッ
setEffShake( spep_1-3 + 194, ctbaki, 24, 10 );
setEffMoveKey( spep_1-3 + 194, ctbaki, 38.8, 375.7 , 0 );
setEffMoveKey( spep_1-3 + 196, ctbaki, 27.4, 405.7 , 0 );
setEffMoveKey( spep_1-3 + 198, ctbaki, 38.9, 375.6 , 0 );
setEffMoveKey( spep_1-3 + 200, ctbaki, 38.9, 375.5 , 0 );
setEffMoveKey( spep_1-3 + 202, ctbaki, 31.4, 395.2 , 0 );
setEffMoveKey( spep_1-3 + 204, ctbaki, 39, 375.5 , 0 );
setEffMoveKey( spep_1-3 + 206, ctbaki, 31.8, 394.6 , 0 );
setEffMoveKey( spep_1-3 + 208, ctbaki, 39.1, 375.6 , 0 );
setEffMoveKey( spep_1-3 + 210, ctbaki, 32.1, 393.9 , 0 );
setEffMoveKey( spep_1-3 + 212, ctbaki, 39.1, 375.6 , 0 );
setEffMoveKey( spep_1-3 + 214, ctbaki, 32.2, 393.7 , 0 );
setEffMoveKey( spep_1-3 + 216, ctbaki, 39, 375.7 , 0 );
setEffMoveKey( spep_1-3 + 218, ctbaki, 39, 375.7 , 0 );

setEffScaleKey( spep_1-3 + 194, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_1-3 + 196, ctbaki, 3.77, 3.77 );
setEffScaleKey( spep_1-3 + 198, ctbaki, 3.16, 3.16 );
setEffScaleKey( spep_1-3 + 200, ctbaki, 2.54, 2.54 );
setEffScaleKey( spep_1-3 + 202, ctbaki, 2.49, 2.49 );
setEffScaleKey( spep_1-3 + 204, ctbaki, 2.45, 2.45 );
setEffScaleKey( spep_1-3 + 206, ctbaki, 2.4, 2.4 );
setEffScaleKey( spep_1-3 + 208, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_1-3 + 210, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_1-3 + 212, ctbaki, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 214, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 216, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_1-3 + 218, ctbaki, 2.3, 2.3 );

setEffRotateKey( spep_1-3 + 194, ctbaki, 24.1 );
setEffRotateKey( spep_1-3 + 218, ctbaki, 24.1 );

setEffAlphaKey( spep_1-3 + 194, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 212, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 214, ctbaki, 174 );
setEffAlphaKey( spep_1-3 + 216, ctbaki, 94 );
setEffAlphaKey( spep_1-3 + 218, ctbaki, 13 );

--SE
se_1183 = playSe( spep_1 + 0, 1183 );
playSe( spep_1 + 34, 1003 );
playSe( spep_1 + 43, 1009 );
playSe( spep_1 + 48, 1187 );
setSeVolume( spep_1 + 48, 1187, 50 );
se_1121 = playSe( spep_1 + 63, 1121 );
setSeVolume( spep_1 + 63, 1121, 0 );
setSeVolume( spep_1 + 148, 1121, 0 );
setSeVolume( spep_1 + 149, 1121, 12.6 );
setSeVolume( spep_1 + 150, 1121, 25.2 );
setSeVolume( spep_1 + 151, 1121, 37.8 );
setSeVolume( spep_1 + 152, 1121, 50.4 );
setSeVolume( spep_1 + 153, 1121, 63 );
playSe( spep_1 + 101, 1004 );
playSe( spep_1 + 115, 1189 );
playSe( spep_1 + 121, 1012 );
setSeVolume( spep_1 + 121, 1012, 50 );
se_1182 = playSe( spep_1 + 121, 1182 );
setSeVolume( spep_1 + 121, 1182, 178 );
playSe( spep_1 + 123, 1006 );
playSe( spep_1 + 125, 1110 );
playSe( spep_1 + 191, 1004 );
setSeVolume( spep_1 + 191, 1004, 63 );
playSe( spep_1 + 197, 1192 );
setSeVolume( spep_1 + 197, 1192, 316 );
playSe( spep_1 + 200, 1010 );
playSe( spep_1 + 204, 1120 );
setSeVolume( spep_1 + 204, 1120, 40 );
playSe( spep_1 + 219, 1072 );
setSeVolume( spep_1 + 219, 1072, 126 );
playSe( spep_1 + 249, 8 );

stopSe( spep_1 + 48, se_1183, 14 );
stopSe( spep_1 + 212, se_1121, 28 );
stopSe( spep_1 + 130, se_1182, 17 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 278, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 276;

------------------------------------------------------
-- トーマナビ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 46, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 44, tame, 255 );
setEffAlphaKey( spep_2 + 45, tame, 255 );
setEffAlphaKey( spep_2 + 46, tame, 0 );

--SE
se_1037 = playSe( spep_2 + 8, 1037 );
playSe( spep_2 + 22, 49 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 48, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;

------------------------------------------------------
-- トーマ発射〜着弾〜バーダック正面
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 180, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 180, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 180, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 180, hit_b, 255 );

-- ** エフェクト等 ** --
ctbou = entryEffect( spep_3+20 + 0, 154785, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3+20 + 0, ctbou, 0, 0, 0 );
setEffMoveKey( spep_3+20 + 92, ctbou, 0, 0, 0 );
setEffScaleKey( spep_3+20 + 0, ctbou, 1.0, 1.0 );
setEffScaleKey( spep_3+20 + 92, ctbou, 1.0, 1.0 );
setEffRotateKey( spep_3+20 + 0, ctbou, 0 );
setEffRotateKey( spep_3+20 + 92, ctbou, 0 );
setEffAlphaKey( spep_3+20 + 0, ctbou, 255 );
setEffAlphaKey( spep_3+20 + 92, ctbou, 255 );

--敵の動き
setDisp( spep_3 -3 + 28, 1, 1 );
setDisp( spep_3 -3 + 152, 1, 0 );

changeAnime( spep_3 -3 + 28, 1, 8);
changeAnime( spep_3 -3 + 48, 1, 6);
changeAnime( spep_3 -3 + 88, 1, 105);

setMoveKey( spep_3-3 + 28, 1, 14.4, 16.5 , 0 );
setMoveKey( spep_3-3 + 30, 1, 14.4, 19.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 14.4, 23 , 0 );
setMoveKey( spep_3-3 + 34, 1, 14.4, 26.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 14.4, 29.5 , 0 );
setMoveKey( spep_3-3 + 38, 1, 14.4, 32.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 14.4, 36 , 0 );
setMoveKey( spep_3-3 + 42, 1, 14.4, 39.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 14.4, 42.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, 14.4, 45.8 , 0 );
setMoveKey( spep_3-3 + 47, 1, 14.4, 45.8 , 0 );

setMoveKey( spep_3-3 + 48, 1, 96.5, 43.8 , 0 );
setMoveKey( spep_3-3 + 50, 1, 80, 66.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, 38.5, 44.8 , 0 );
setMoveKey( spep_3-3 + 54, 1, 36, 36.4 , 0 );
setMoveKey( spep_3-3 + 56, 1, 8.4, 2.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 13, 20.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, -1.7, 12.8 , 0 );
setMoveKey( spep_3-3 + 62, 1, 9.3, 17.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, 1.1, -2.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 5.6, 14.8 , 0 );
setMoveKey( spep_3-3 + 68, 1, -9, 7 , 0 );
setMoveKey( spep_3-3 + 70, 1, 1.9, 11.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 0.1, 10.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, -1.8, 9 , 0 );
setMoveKey( spep_3-3 + 76, 1, -3.6, 7.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, -5.5, 6.1 , 0 );
setMoveKey( spep_3-3 + 80, 1, -7.3, 4.7 , 0 );
setMoveKey( spep_3-3 + 82, 1, -9.2, 3.2 , 0 );
setMoveKey( spep_3-3 + 84, 1, -11, 1.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, -12.8, 0.3 , 0 );
setMoveKey( spep_3-3 + 87, 1, -12.8, 0.3 , 0 );

setMoveKey( spep_3-3 + 88, 1, -384.3, 246 , 0 );
setMoveKey( spep_3-3 + 90, 1, -352.3, 229.7 , 0 );
setMoveKey( spep_3-3 + 92, 1, -320.2, 213.3 , 0 );
setMoveKey( spep_3-3 + 94, 1, -288.1, 197 , 0 );
setMoveKey( spep_3-3 + 96, 1, -256, 180.7 , 0 );
setMoveKey( spep_3-3 + 98, 1, -223.9, 164.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, -191.8, 148 , 0 );
setMoveKey( spep_3-3 + 102, 1, -159.7, 131.7 , 0 );
setMoveKey( spep_3-3 + 104, 1, -152.3, 126 , 0 );
setMoveKey( spep_3-3 + 106, 1, -144.9, 120.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, -137.5, 114.5 , 0 );
setMoveKey( spep_3-3 + 110, 1, -130.1, 108.8 , 0 );
setMoveKey( spep_3-3 + 112, 1, -122.7, 103.1 , 0 );
setMoveKey( spep_3-3 + 114, 1, -115.3, 97.4 , 0 );
setMoveKey( spep_3-3 + 116, 1, -107.9, 91.7 , 0 );
setMoveKey( spep_3-3 + 118, 1, -100.5, 85.9 , 0 );
setMoveKey( spep_3-3 + 120, 1, -93.1, 80.2 , 0 );
setMoveKey( spep_3-3 + 122, 1, -88.8, 76.1 , 0 );
setMoveKey( spep_3-3 + 124, 1, -84.5, 72.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, -79.5, 67.6 , 0 );
setMoveKey( spep_3-3 + 128, 1, -284.8, 285.4 , 0 );
setMoveKey( spep_3-3 + 130, 1, -498.7, 512.2 , 0 );
setMoveKey( spep_3-3 + 132, 1, -720.3, 747.4 , 0 );
setMoveKey( spep_3-3 + 134, 1, -950.1, 991.3 , 0 );
setMoveKey( spep_3-3 + 136, 1, -1188, 1244 , 0 );
setMoveKey( spep_3-3 + 138, 1, -1434.4, 1505.7 , 0 );
setMoveKey( spep_3-3 + 140, 1, -1688.7, 1775.8 , 0 );
setMoveKey( spep_3-3 + 142, 1, -1951.2, 2054.7 , 0 );
setMoveKey( spep_3-3 + 144, 1, -2221.9, 2342.4 , 0 );
setMoveKey( spep_3-3 + 146, 1, -2500.7, 2638.7 , 0 );
setMoveKey( spep_3-3 + 148, 1, -2787.7, 2943.7 , 0 );
setMoveKey( spep_3-3 + 150, 1, -3082.8, 3257.5 , 0 );
setMoveKey( spep_3-3 + 152, 1, -3386, 3580.1 , 0 );

setScaleKey( spep_3-3 + 28, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 47, 1, 0.96, 0.96 );

setScaleKey( spep_3-3 + 48, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 50, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 52, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 54, 1, 1.28, 1.28 );
setScaleKey( spep_3-3 + 56, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 60, 1, 1, 1 );
setScaleKey( spep_3-3 + 62, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 64, 1, 0.94, 0.94 );
setScaleKey( spep_3-3 + 66, 1, 0.91, 0.91 );
setScaleKey( spep_3-3 + 68, 1, 0.87, 0.87 );
setScaleKey( spep_3-3 + 70, 1, 0.84, 0.84 );
setScaleKey( spep_3-3 + 72, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 74, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 76, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 78, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 80, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 82, 1, 0.65, 0.65 );
setScaleKey( spep_3-3 + 84, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 86, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 87, 1, 0.58, 0.58 );

setScaleKey( spep_3-3 + 88, 1, 1.88, 1.88 );
setScaleKey( spep_3-3 + 90, 1, 1.74, 1.74 );
setScaleKey( spep_3-3 + 92, 1, 1.61, 1.61 );
setScaleKey( spep_3-3 + 94, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 96, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 98, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 100, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 102, 1, 0.93, 0.93 );
setScaleKey( spep_3-3 + 104, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 106, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 108, 1, 0.88, 0.88 );
setScaleKey( spep_3-3 + 110, 1, 0.87, 0.87 );
setScaleKey( spep_3-3 + 112, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 114, 1, 0.83, 0.83 );
setScaleKey( spep_3-3 + 116, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 120, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 126, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 128, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 130, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 132, 1, 2.99, 2.99 );
setScaleKey( spep_3-3 + 134, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 136, 1, 4.6, 4.6 );
setScaleKey( spep_3-3 + 138, 1, 5.45, 5.45 );
setScaleKey( spep_3-3 + 140, 1, 6.33, 6.33 );
setScaleKey( spep_3-3 + 142, 1, 7.23, 7.23 );
setScaleKey( spep_3-3 + 144, 1, 8.16, 8.16 );
setScaleKey( spep_3-3 + 146, 1, 9.12, 9.12 );
setScaleKey( spep_3-3 + 148, 1, 10.11, 10.11 );
setScaleKey( spep_3-3 + 150, 1, 11.12, 11.12 );
setScaleKey( spep_3-3 + 152, 1, 12.17, 12.17 );

setRotateKey( spep_3-3 + 28, 1, 90 );
setRotateKey( spep_3-3 + 47, 1, 90 );

setRotateKey( spep_3-3 + 48, 1, 90 );
setRotateKey( spep_3-3 + 87, 1, 90 );

setRotateKey( spep_3-3 + 88, 1, 112.1 );
setRotateKey( spep_3-3 + 110, 1, 112.1 );
setRotateKey( spep_3-3 + 112, 1, 112 );
setRotateKey( spep_3-3 + 128, 1, 112 );
setRotateKey( spep_3-3 + 130, 1, 112.1 );
setRotateKey( spep_3-3 + 152, 1, 112.1 );

setAlphaKey( spep_3-3 + 28, 1, 255 );
setAlphaKey( spep_3-3 + 47, 1, 255 );
setAlphaKey( spep_3-3 + 48, 1, 128 );
setAlphaKey( spep_3-3 + 87, 1, 128 );
setAlphaKey( spep_3-3 + 88, 1, 165 );
setAlphaKey( spep_3-3 + 152, 1, 165 );

--SE
playSe( spep_3 + 10, 1027 );
playSe( spep_3 + 10, 1021 );
playSe( spep_3 + 56, 1023 );
setSeVolume( spep_3 + 56, 1023, 112 );
playSe( spep_3 + 59, 1002 );
setSeVolume( spep_3 + 59, 1002, 71 );
se_1166 = playSe( spep_3 + 65, 1166 );
setSeVolume( spep_3 + 65, 1166, 79 );
playSe( spep_3 + 130, 9 );
playSe( spep_3 + 130, 1182 );

stopSe( spep_3 + 13, se_1037, 0 );
stopSe( spep_3 + 106, se_1166, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 182, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 172, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 180;

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

--白フェード
entryFade( spep_4 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- バーダック発射
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 136, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 136, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 134, beam, 255 );
setEffAlphaKey( spep_5 + 135, beam, 255 );
setEffAlphaKey( spep_5 + 136, beam, 0 );

--顔カットイン
speff = entryEffect( spep_5 + 10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_5 + 10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_5 -2 +24, 190006, 72, 0x100, -1, 0, -100, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_5 -2 +24,  ctgogo,  -100,  510);
setEffMoveKey(  spep_5 -2 +96,  ctgogo,  -100,  510);

setEffAlphaKey( spep_5 -2 +24, ctgogo, 0 );
setEffAlphaKey( spep_5 -2 + 25, ctgogo, 255 );
setEffAlphaKey( spep_5 -2 + 26, ctgogo, 255 );
setEffAlphaKey( spep_5 -2 + 90, ctgogo, 255 );
setEffAlphaKey( spep_5 -2 + 92, ctgogo, 191 );
setEffAlphaKey( spep_5 -2 + 94, ctgogo, 112 );
setEffAlphaKey( spep_5 -2 + 96, ctgogo, 64 );

setEffRotateKey(  spep_5 -2 +24,  ctgogo,  0);
setEffRotateKey(  spep_5 -2 +96,  ctgogo,  0);

setEffScaleKey(  spep_5 -2 +24,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_5 -2 +86,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_5 -2 +96,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 100 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5, shuchusen5, 100-3, 20 );
setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.21, 1.84 );
setEffScaleKey( spep_5 -3 + 100, shuchusen5, 1.21, 1.84 );

setEffRotateKey( spep_5 + 0, shuchusen5, 0 );
setEffRotateKey( spep_5 -3 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 41 );
setEffAlphaKey( spep_5 + 2, shuchusen5, 68 );
setEffAlphaKey( spep_5 + 4, shuchusen5, 95 );
setEffAlphaKey( spep_5 + 6, shuchusen5, 123 );
setEffAlphaKey( spep_5 + 8, shuchusen5, 150 );
setEffAlphaKey( spep_5 + 10, shuchusen5, 177 );
setEffAlphaKey( spep_5 + 12, shuchusen5, 204 );
setEffAlphaKey( spep_5 -3 + 88, shuchusen5, 204 );
setEffAlphaKey( spep_5 -3 + 90, shuchusen5, 170 );
setEffAlphaKey( spep_5 -3 + 92, shuchusen5, 136 );
setEffAlphaKey( spep_5 -3 + 94, shuchusen5, 102 );
setEffAlphaKey( spep_5 -3 + 96, shuchusen5, 68 );
setEffAlphaKey( spep_5 -3 + 98, shuchusen5, 34 );
setEffAlphaKey( spep_5 -3 + 100, shuchusen5, 0 );

--SE
playSe( spep_5 + 22, 1018 );

playSe( spep_5 + 5, 1182 );
setSeVolume( spep_5 + 5, 1182, 0 );
setSeVolume( spep_5 + 6, 1182, 0 );
setSeVolume( spep_5 + 7, 1182, 8.33 );
setSeVolume( spep_5 + 8, 1182, 16.67 );
setSeVolume( spep_5 + 9, 1182, 25 );
setSeVolume( spep_5 + 10, 1182, 33.33 );
setSeVolume( spep_5 + 11, 1182, 41.67 );
setSeVolume( spep_5 + 12, 1182, 50 );
setSeVolume( spep_5 + 13, 1182, 58.33 );
setSeVolume( spep_5 + 14, 1182, 66.67 );
setSeVolume( spep_5 + 15, 1182, 75 );
setSeVolume( spep_5 + 16, 1182, 83.33 );
setSeVolume( spep_5 + 17, 1182, 91.67 );
setSeVolume( spep_5 + 18, 1182, 100 );
se_1116 = playSe( spep_5 + 10, 1116 );
se_1215 = playSe( spep_5 + 83, 1215 );
setSeVolume( spep_5 + 83, 1215, 0 );
playSe( spep_5 + 101, 1003 );
playSe( spep_5 + 107, 1145 );
playSe( spep_5 + 107, 1027 );
setSeVolume( spep_5 + 107, 1027, 89 );
playSe( spep_5 + 121, 1022 );
setSeVolume( spep_5 + 121, 1022, 0 );
setSeVolume( spep_5 + 124, 1022, 0 );
setSeVolume( spep_5 + 125, 1022, 3.33 );
setSeVolume( spep_5 + 126, 1022, 6.67 );
setSeVolume( spep_5 + 127, 1022, 10 );
setSeVolume( spep_5 + 128, 1022, 13.33 );
setSeVolume( spep_5 + 129, 1022, 16.67 );
setSeVolume( spep_5 + 130, 1022, 20 );
setSeVolume( spep_5 + 131, 1022, 23.33 );
setSeVolume( spep_5 + 132, 1022, 26.67 );
setSeVolume( spep_5 + 133, 1022, 30 );
setSeVolume( spep_5 + 134, 1022, 33.33 );
setSeVolume( spep_5 + 135, 1022, 36.67 );
setSeVolume( spep_5 + 136, 1022, 40 );
setSeVolume( spep_5 + 137, 1022, 43.33 );
setSeVolume( spep_5 + 138, 1022, 46.67 );
setSeVolume( spep_5 + 139, 1022, 50 );
setSeVolume( spep_5 + 140, 1022, 53.33 );
setSeVolume( spep_5 + 141, 1022, 56.67 );
setSeVolume( spep_5 + 142, 1022, 60 );
setSeVolume( spep_5 + 143, 1022, 63.33 );
setSeVolume( spep_5 + 144, 1022, 66.67 );
setSeVolume( spep_5 + 145, 1022, 70 );
setSeVolume( spep_5 + 146, 1022, 73.33 );
setSeVolume( spep_5 + 147, 1022, 76.67 );
setSeVolume( spep_5 + 148, 1022, 80 );
setSeVolume( spep_5 + 149, 1022, 83.33 );
setSeVolume( spep_5 + 150, 1022, 86.67 );
setSeVolume( spep_5 + 151, 1022, 90 );
setSeVolume( spep_5 + 152, 1022, 93.33 );
setSeVolume( spep_5 + 153, 1022, 96.67 );
setSeVolume( spep_5 + 154, 1022, 100 );
playSe( spep_5 + 121, 1168 );
setSeVolume( spep_5 + 121, 1168, 0 );

stopSe( spep_5 + 37, se_1116, 30 );



-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 138, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 136;

------------------------------------------------------
-- 着弾〜キメ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 200, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 200, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 200, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 200, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 200, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 200, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 200, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 200, finish_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -1 + 48, 1, 0 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, -31, -172.3 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -29.1, -148.8 , 0 );
setMoveKey( spep_6-3 + 4, 1, -27.1, -125.2 , 0 );
setMoveKey( spep_6-3 + 6, 1, -25.2, -101.6 , 0 );
setMoveKey( spep_6-3 + 8, 1, -23.4, -78 , 0 );
setMoveKey( spep_6-3 + 10, 1, -21.5, -54.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, -19.7, -30.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, -17.8, -7.2 , 0 );
setMoveKey( spep_6-3 + 16, 1, -16, 16.4 , 0 );
setMoveKey( spep_6-3 + 18, 1, -14.2, 40 , 0 );
setMoveKey( spep_6-3 + 20, 1, -14.2, 39 , 0 );
setMoveKey( spep_6-3 + 22, 1, -14.2, 38 , 0 );
setMoveKey( spep_6-3 + 24, 1, -14.1, 37.1 , 0 );
setMoveKey( spep_6-3 + 26, 1, -14.1, 36.1 , 0 );
setMoveKey( spep_6-3 + 28, 1, -14.1, 35.1 , 0 );
setMoveKey( spep_6-3 + 30, 1, -14, 34.2 , 0 );
setMoveKey( spep_6-3 + 32, 1, -14, 33.2 , 0 );
setMoveKey( spep_6-3 + 34, 1, -14, 32.3 , 0 );
setMoveKey( spep_6-3 + 36, 1, -14, 31.3 , 0 );
setMoveKey( spep_6-3 + 38, 1, -13.9, 30.3 , 0 );
setMoveKey( spep_6-3 + 40, 1, -13.9, 29.4 , 0 );
setMoveKey( spep_6-3 + 42, 1, -13.9, 28.4 , 0 );
setMoveKey( spep_6-3 + 44, 1, -13.8, 27.5 , 0 );
setMoveKey( spep_6-3 + 46, 1, -13.8, 26.5 , 0 );
setMoveKey( spep_6-1 + 48, 1, -13.7, 25.5 , 0 );

setScaleKey( spep_6 + 0, 1, 2.49, 2.49 );
--setScaleKey( spep_6-3 + 2, 1, 2.32, 2.32 );
setScaleKey( spep_6-3 + 4, 1, 2.14, 2.14 );
setScaleKey( spep_6-3 + 6, 1, 1.97, 1.97 );
setScaleKey( spep_6-3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_6-3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_6-3 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_6-3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_6-3 + 16, 1, 1.09, 1.09 );
setScaleKey( spep_6-3 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_6-3 + 20, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 22, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_6-3 + 26, 1, 0.83, 0.83 );
setScaleKey( spep_6-3 + 28, 1, 0.81, 0.81 );
setScaleKey( spep_6-3 + 30, 1, 0.79, 0.79 );
setScaleKey( spep_6-3 + 32, 1, 0.76, 0.76 );
setScaleKey( spep_6-3 + 34, 1, 0.74, 0.74 );
setScaleKey( spep_6-3 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_6-3 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_6-3 + 40, 1, 0.67, 0.67 );
setScaleKey( spep_6-3 + 42, 1, 0.65, 0.65 );
setScaleKey( spep_6-3 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_6-3 + 46, 1, 0.61, 0.61 );
setScaleKey( spep_6-1 + 48, 1, 0.58, 0.58 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-1 + 48, 1, 0 );

setAlphaKey( spep_6 + 0, 1, 165 );
setAlphaKey( spep_6 -1 + 50, 1, 165 );

setAlphaKey( spep_6 -1 + 51, 1, 255 );

--SE
setSeVolume( spep_6 + 0, 1215, 0 );
setSeVolume( spep_6 + 1, 1215, 1.25 );
setSeVolume( spep_6 + 2, 1215, 2.5 );
setSeVolume( spep_6 + 3, 1215, 3.75 );
setSeVolume( spep_6 + 4, 1215, 5 );
setSeVolume( spep_6 + 5, 1215, 6.25 );
setSeVolume( spep_6 + 6, 1215, 7.5 );
setSeVolume( spep_6 + 7, 1215, 8.75 );
setSeVolume( spep_6 + 8, 1215, 10 );
setSeVolume( spep_6 + 9, 1215, 11.25 );
setSeVolume( spep_6 + 10, 1215, 12.5 );
setSeVolume( spep_6 + 11, 1215, 13.75 );
setSeVolume( spep_6 + 12, 1215, 15 );
setSeVolume( spep_6 + 13, 1215, 16.25 );
setSeVolume( spep_6 + 14, 1215, 17.5 );
setSeVolume( spep_6 + 15, 1215, 18.75 );
setSeVolume( spep_6 + 16, 1215, 20 );
setSeVolume( spep_6 + 17, 1215, 21.25 );
setSeVolume( spep_6 + 18, 1215, 22.5 );
setSeVolume( spep_6 + 19, 1215, 23.75 );
setSeVolume( spep_6 + 20, 1215, 25 );
setSeVolume( spep_6 + 21, 1215, 26.25 );
setSeVolume( spep_6 + 22, 1215, 27.5 );
setSeVolume( spep_6 + 23, 1215, 28.75 );
setSeVolume( spep_6 + 24, 1215, 30 );
setSeVolume( spep_6 + 25, 1215, 31.25 );
setSeVolume( spep_6 + 26, 1215, 32.5 );
setSeVolume( spep_6 + 27, 1215, 33.75 );
setSeVolume( spep_6 + 28, 1215, 35 );
setSeVolume( spep_6 + 29, 1215, 36.25 );
setSeVolume( spep_6 + 30, 1215, 37.5 );
setSeVolume( spep_6 + 31, 1215, 38.75 );
setSeVolume( spep_6 + 32, 1215, 40 );

setSeVolume( spep_6 + 87, 1168, 0 );
setSeVolume( spep_6 + 88, 1168, 4.48 );
setSeVolume( spep_6 + 89, 1168, 8.96 );
setSeVolume( spep_6 + 90, 1168, 13.44 );
setSeVolume( spep_6 + 91, 1168, 17.92 );
setSeVolume( spep_6 + 92, 1168, 22.4 );
setSeVolume( spep_6 + 93, 1168, 26.88 );
setSeVolume( spep_6 + 94, 1168, 31.36 );
setSeVolume( spep_6 + 95, 1168, 35.84 );
setSeVolume( spep_6 + 96, 1168, 40.32 );
setSeVolume( spep_6 + 97, 1168, 44.8 );
setSeVolume( spep_6 + 98, 1168, 49.28 );
setSeVolume( spep_6 + 99, 1168, 53.76 );
setSeVolume( spep_6 + 100, 1168, 58.24 );
setSeVolume( spep_6 + 101, 1168, 62.72 );
setSeVolume( spep_6 + 102, 1168, 67.2 );
setSeVolume( spep_6 + 103, 1168, 71.68 );
setSeVolume( spep_6 + 104, 1168, 76.16 );
setSeVolume( spep_6 + 105, 1168, 80.64 );
setSeVolume( spep_6 + 106, 1168, 85.12 );
setSeVolume( spep_6 + 107, 1168, 89.6 );
setSeVolume( spep_6 + 108, 1168, 94.08 );
setSeVolume( spep_6 + 109, 1168, 98.56 );
setSeVolume( spep_6 + 110, 1168, 103.04 );
setSeVolume( spep_6 + 111, 1168, 107.52 );
setSeVolume( spep_6 + 112, 1168, 112 );

playSe( spep_6 + 61, 1023 );
playSe( spep_6 + 61, 1159 );
se_1044 = playSe( spep_6 + 97, 1044 );
setSeVolume( spep_6 + 97, 1044, 0 );
setSeVolume( spep_6 + 98, 1044, 3 );
setSeVolume( spep_6 + 99, 1044, 6 );
setSeVolume( spep_6 + 100, 1044, 9 );
setSeVolume( spep_6 + 101, 1044, 12 );
setSeVolume( spep_6 + 102, 1044, 15 );
setSeVolume( spep_6 + 103, 1044, 18 );
setSeVolume( spep_6 + 104, 1044, 21 );
setSeVolume( spep_6 + 105, 1044, 24 );
setSeVolume( spep_6 + 106, 1044, 27 );
setSeVolume( spep_6 + 107, 1044, 30 );
setSeVolume( spep_6 + 108, 1044, 33 );
setSeVolume( spep_6 + 109, 1044, 36 );
setSeVolume( spep_6 + 110, 1044, 39 );
setSeVolume( spep_6 + 111, 1044, 42 );
setSeVolume( spep_6 + 112, 1044, 45 );
setSeVolume( spep_6 + 113, 1044, 48 );
setSeVolume( spep_6 + 114, 1044, 51 );
setSeVolume( spep_6 + 115, 1044, 54 );
setSeVolume( spep_6 + 116, 1044, 57 );
setSeVolume( spep_6 + 117, 1044, 60 );
setSeVolume( spep_6 + 118, 1044, 63 );

stopSe( spep_6 + 18, se_1215, 34 );
stopSe( spep_6 + 141, se_1044, 58 );

--終わり
dealDamage( spep_6 + 52 );
endPhase( spep_6 + 190 );

else
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進肘打ち
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panti_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panti_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, panti_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panti_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, panti_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panti_f, 0 );
setEffRotateKey( spep_0 + 86, panti_f, 0 );
setEffAlphaKey( spep_0 + 0, panti_f, 255 );
setEffAlphaKey( spep_0 + 84, panti_f, 255 );
setEffAlphaKey( spep_0 + 85, panti_f, 255 );
setEffAlphaKey( spep_0 + 86, panti_f, 0 );

-- ** エフェクト等 ** --
panti_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panti_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, panti_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panti_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, panti_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panti_b, 0 );
setEffRotateKey( spep_0 + 86, panti_b, 0 );
setEffAlphaKey( spep_0 + 0, panti_b, 255 );
setEffAlphaKey( spep_0 + 84, panti_b, 255 );
setEffAlphaKey( spep_0 + 85, panti_b, 255 );
setEffAlphaKey( spep_0 + 86, panti_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

setAlphaKey( spep_0 + 0, 1, 255 );

changeAnime( spep_0 + 0, 1, 2 );


setMoveKey( spep_0 + 0, 1, -86.4, -123.4 , 0 );
--setMoveKey( spep_0-3 + 2, 1, -90.9, -127.7 , 0 );
setMoveKey( spep_0-3 + 4, 1, -95.3, -131.9 , 0 );
setMoveKey( spep_0-3 + 6, 1, -99.8, -136.2 , 0 );
setMoveKey( spep_0-3 + 8, 1, -104.2, -140.4 , 0 );
setMoveKey( spep_0-3 + 10, 1, -108.7, -144.7 , 0 );
setMoveKey( spep_0-3 + 12, 1, -113.1, -148.9 , 0 );
setMoveKey( spep_0-3 + 14, 1, -117.6, -153.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, -122, -157.4 , 0 );
setMoveKey( spep_0-3 + 18, 1, -126.5, -161.7 , 0 );
setMoveKey( spep_0-3 + 20, 1, -130.9, -166 , 0 );
setMoveKey( spep_0-3 + 22, 1, -135.4, -170.2 , 0 );
setMoveKey( spep_0-3 + 24, 1, -139.8, -174.5 , 0 );
setMoveKey( spep_0-3 + 26, 1, -144.3, -178.7 , 0 );
setMoveKey( spep_0-3 + 28, 1, -148.7, -183 , 0 );
setMoveKey( spep_0-3 + 30, 1, -153.2, -187.3 , 0 );
setMoveKey( spep_0-3 + 32, 1, -157.6, -191.5 , 0 );

setScaleKey( spep_0 + 0, 1, 1.91, 1.91 );
--setScaleKey( spep_0-3 + 2, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 6, 1, 2.23, 2.23 );
setScaleKey( spep_0-3 + 8, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 10, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 12, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 14, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 16, 1, 2.78, 2.78 );
setScaleKey( spep_0-3 + 18, 1, 2.89, 2.89 );
setScaleKey( spep_0-3 + 20, 1, 3, 3 );
setScaleKey( spep_0-3 + 22, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 24, 1, 3.21, 3.21 );
setScaleKey( spep_0-3 + 26, 1, 3.32, 3.32 );
setScaleKey( spep_0-3 + 28, 1, 3.43, 3.43 );
setScaleKey( spep_0-3 + 30, 1, 3.54, 3.54 );
setScaleKey( spep_0-3 + 32, 1, 3.65, 3.65 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );

--SE
se_0009 = playSe( spep_0 + 0, 9 );
se_1182 = playSe( spep_0 + 0, 1182 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    pauseAll( SP_dodge, 67 );

    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0009, 0 );
    stopSe( SP_dodge - 12, se_1182, 0 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
  --敵の固定
  setMoveKey( SP_dodge +9, 1, -157.6, -191.5 , 0 );
  setScaleKey( SP_dodge+9, 1, 3.65, 3.65 );
  setRotateKey( SP_dodge+9, 1, 0 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
changeAnime( spep_0 -3 + 40, 1, 7 );

setMoveKey( spep_0-3 + 34, 1, -162, -195.8 , 0 );
setMoveKey( spep_0-3 + 36, 1, -166.5, -200.1 , 0 );
setMoveKey( spep_0-3 + 38, 1, -170.9, -204.3 , 0 );
setMoveKey( spep_0-3 + 39, 1, -170.9, -204.3 , 0 );

setMoveKey( spep_0-3 + 40, 1, -22, -175.7 , 0 );
setMoveKey( spep_0-3 + 42, 1, -26.1, -159.9 , 0 );
setMoveKey( spep_0-3 + 44, 1, -6.2, -172.1 , 0 );
setMoveKey( spep_0-3 + 46, 1, -26.3, -168.3 , 0 );
setMoveKey( spep_0-3 + 48, 1, -22.4, -192.5 , 0 );
setMoveKey( spep_0-3 + 50, 1, -26.5, -176.7 , 0 );
setMoveKey( spep_0-3 + 52, 1, -10.5, -192.9 , 0 );
setMoveKey( spep_0-3 + 54, 1, -26.6, -185.1 , 0 );
setMoveKey( spep_0-3 + 56, 1, -22.7, -205.3 , 0 );
setMoveKey( spep_0-3 + 58, 1, -26.8, -193.5 , 0 );
setMoveKey( spep_0-3 + 60, 1, -14.9, -201.7 , 0 );
setMoveKey( spep_0-3 + 62, 1, -27, -201.9 , 0 );
setMoveKey( spep_0-3 + 64, 1, -23.1, -218.1 , 0 );
setMoveKey( spep_0-3 + 66, 1, -27.2, -210.3 , 0 );
setMoveKey( spep_0-3 + 68, 1, -23.3, -226.5 , 0 );
setMoveKey( spep_0-3 + 70, 1, -27.4, -218.7 , 0 );
setMoveKey( spep_0-3 + 72, 1, -15.5, -230.9 , 0 );
setMoveKey( spep_0-3 + 74, 1, -27.5, -227 , 0 );
setMoveKey( spep_0-3 + 76, 1, -23.6, -239.2 , 0 );
setMoveKey( spep_0-3 + 78, 1, -27.7, -235.4 , 0 );
setMoveKey( spep_0-3 + 80, 1, -23.8, -251.6 , 0 );
setMoveKey( spep_0-3 + 82, 1, -27.9, -243.8 , 0 );
setMoveKey( spep_0-3 + 84, 1, -20, -252 , 0 );
setMoveKey( spep_0-3 + 86, 1, -28.1, -252.2 , 0 );
setMoveKey( spep_0-1 + 86, 1, -24.2, -264.4 , 0 );

setScaleKey( spep_0-3 + 34, 1, 3.76, 3.76 );
setScaleKey( spep_0-3 + 36, 1, 3.87, 3.87 );
setScaleKey( spep_0-3 + 38, 1, 3.98, 3.98 );
setScaleKey( spep_0-3 + 39, 1, 3.98, 3.98 );

setScaleKey( spep_0-3 + 40, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 44, 1, 1.08, 1.08 );
setScaleKey( spep_0-3 + 46, 1, 1.1, 1.1 );
setScaleKey( spep_0-3 + 48, 1, 1.12, 1.12 );
setScaleKey( spep_0-3 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_0-3 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_0-3 + 54, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 56, 1, 1.18, 1.18 );
setScaleKey( spep_0-3 + 58, 1, 1.19, 1.19 );
setScaleKey( spep_0-3 + 60, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 62, 1, 1.23, 1.23 );
setScaleKey( spep_0-3 + 64, 1, 1.24, 1.24 );
setScaleKey( spep_0-3 + 66, 1, 1.26, 1.26 );
setScaleKey( spep_0-3 + 68, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 70, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 72, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 74, 1, 1.32, 1.32 );
setScaleKey( spep_0-3 + 76, 1, 1.34, 1.34 );
setScaleKey( spep_0-3 + 78, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 82, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 84, 1, 1.4, 1.4 );
setScaleKey( spep_0-3 + 86, 1, 1.41, 1.41 );
setScaleKey( spep_0-1 + 86, 1, 1.43, 1.43 );


setRotateKey( spep_0-3 + 39, 1, 0 );

setRotateKey( spep_0-3 + 40, 1, 28.7 );
setRotateKey( spep_0-3 + 42, 1, 28.2 );
setRotateKey( spep_0-3 + 44, 1, 27.8 );
setRotateKey( spep_0-3 + 46, 1, 27.4 );
setRotateKey( spep_0-3 + 48, 1, 26.9 );
setRotateKey( spep_0-3 + 50, 1, 26.5 );
setRotateKey( spep_0-3 + 52, 1, 26.1 );
setRotateKey( spep_0-3 + 54, 1, 25.6 );
setRotateKey( spep_0-3 + 56, 1, 25.2 );
setRotateKey( spep_0-3 + 58, 1, 24.8 );
setRotateKey( spep_0-3 + 60, 1, 24.3 );
setRotateKey( spep_0-3 + 62, 1, 23.9 );
setRotateKey( spep_0-3 + 64, 1, 23.4 );
setRotateKey( spep_0-3 + 66, 1, 23 );
setRotateKey( spep_0-3 + 68, 1, 22.6 );
setRotateKey( spep_0-3 + 70, 1, 22.1 );
setRotateKey( spep_0-3 + 72, 1, 21.7 );
setRotateKey( spep_0-3 + 74, 1, 21.3 );
setRotateKey( spep_0-3 + 76, 1, 20.8 );
setRotateKey( spep_0-3 + 78, 1, 20.4 );
setRotateKey( spep_0-3 + 80, 1, 19.9 );
setRotateKey( spep_0-3 + 82, 1, 19.5 );
setRotateKey( spep_0-3 + 84, 1, 19.1 );
setRotateKey( spep_0-3 + 86, 1, 18.6 );
setRotateKey( spep_0-1 + 86, 1, 18.2 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 40,  10021, 30, 0x100, -1, 0, -139.8, 351.9 );--バゴォッ
setEffShake( spep_0-3 + 40, ctbago, 30, 10 );
setEffMoveKey( spep_0-3 + 40, ctbago, -139.8, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 42, ctbago, -138.9, 351.5 , 0 );
setEffMoveKey( spep_0-3 + 44, ctbago, -139.8, 351.8 , 0 );
setEffMoveKey( spep_0-3 + 46, ctbago, -136.9, 378.9 , 0 );
setEffMoveKey( spep_0-3 + 48, ctbago, -139.8, 351.8 , 0 );
setEffMoveKey( spep_0-3 + 50, ctbago, -137, 378.3 , 0 );
setEffMoveKey( spep_0-3 + 52, ctbago, -139.8, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 54, ctbago, -137.1, 377.6 , 0 );
setEffMoveKey( spep_0-3 + 56, ctbago, -139.9, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 58, ctbago, -137.2, 377 , 0 );
setEffMoveKey( spep_0-3 + 60, ctbago, -139.9, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 62, ctbago, -139.9, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 64, ctbago, -137.3, 376.3 , 0 );
setEffMoveKey( spep_0-3 + 66, ctbago, -139.9, 351.9 , 0 );
setEffMoveKey( spep_0-3 + 68, ctbago, -137.3, 376.3 , 0 );
setEffMoveKey( spep_0-3 + 70, ctbago, -137.3, 376.3 , 0 );

setEffScaleKey( spep_0-3 + 40, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_0-3 + 42, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_0-3 + 44, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 46, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 48, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 50, ctbago, 3.09, 3.09 );
setEffScaleKey( spep_0-3 + 52, ctbago, 3.05, 3.05 );
setEffScaleKey( spep_0-3 + 54, ctbago, 3.01, 3.01 );
setEffScaleKey( spep_0-3 + 56, ctbago, 2.97, 2.97 );
setEffScaleKey( spep_0-3 + 58, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_0-3 + 60, ctbago, 2.89, 2.89 );
setEffScaleKey( spep_0-3 + 62, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 70, ctbago, 2.85, 2.85 );

setEffRotateKey( spep_0-3 + 40, ctbago, -29.5 );
setEffRotateKey( spep_0-3 + 70, ctbago, -29.5 );

setEffAlphaKey( spep_0-3 + 40, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 62, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 64, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 66, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 68, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 70, ctbago, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 40,  906, 68, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 40, shuchusen1, 68, 20 );

setEffMoveKey( spep_0-3 + 40, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 40, shuchusen1, 1.21, 1.43 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.21, 1.43 );

setEffRotateKey( spep_0-3 + 40, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 40, shuchusen1, 191 );
setEffAlphaKey( spep_0-3 + 96, shuchusen1, 191 );
setEffAlphaKey( spep_0-3 + 98, shuchusen1, 159 );
setEffAlphaKey( spep_0-3 + 100, shuchusen1, 128 );
setEffAlphaKey( spep_0-3 + 102, shuchusen1, 96 );
setEffAlphaKey( spep_0-3 + 104, shuchusen1, 64 );
setEffAlphaKey( spep_0-3 + 106, shuchusen1, 32 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 0 );

--SE
playSe( spep_0 + 33, 1189 );
playSe( spep_0 + 38, 1009 );
setSeVolume( spep_0 + 38, 1009, 89 );
se_1187 = playSe( spep_0 + 42, 1187 );
setSeVolume( spep_0 + 42, 1187, 56 );
playSe( spep_0 + 46, 1110 );
setSeVolume( spep_0 + 46, 1110, 89 );

stopSe( spep_0 + 42, se_0009, 0 );
stopSe( spep_0 + 46, se_1182, 0 );
stopSe( spep_0 + 67, se_1187, 25 );


-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

------------------------------------------------------
-- タックル・パンチ・キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 276, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 274, kick_f, 255 );
setEffAlphaKey( spep_1 + 275, kick_f, 255 );
setEffAlphaKey( spep_1 + 276, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 276, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 274, kick_b, 255 );
setEffAlphaKey( spep_1 + 275, kick_b, 255 );
setEffAlphaKey( spep_1 + 276, kick_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 +56, 1, 0 );
setDisp( spep_1-1 +68, 1, 1 );
setDisp( spep_1-1 +122, 1, 0 );
setDisp( spep_1-1 +148, 1, 1 );
setDisp( spep_1-1 +204, 1, 0 );
setDisp( spep_1-1 +236, 1, 1 );
setDisp( spep_1 +276, 1, 0 );


changeAnime( spep_1 + 0, 1, 105);
changeAnime( spep_1 -3 + 40, 1, 108);
changeAnime( spep_1 -3 + 70, 1, 106);
changeAnime( spep_1 -3 + 120, 1, 108);
changeAnime( spep_1 -3 + 150, 1, 107);
changeAnime( spep_1 -3 + 194, 1, 8);

setMoveKey( spep_1 + 0, 1, 225.8, -214.5 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 197.2, -158.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 168.5, -102.7 , 0 );
setMoveKey( spep_1-3 + 6, 1, 139.7, -46.7 , 0 );
setMoveKey( spep_1-3 + 8, 1, 110.8, 9.4 , 0 );
setMoveKey( spep_1-3 + 10, 1, 81.8, 65.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 80.5, 63.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 79.1, 60.3 , 0 );
setMoveKey( spep_1-3 + 16, 1, 77.4, 57.2 , 0 );
setMoveKey( spep_1-3 + 18, 1, 75.6, 53.8 , 0 );
setMoveKey( spep_1-3 + 20, 1, 73.7, 50 , 0 );
setMoveKey( spep_1-3 + 22, 1, 71.5, 46 , 0 );
setMoveKey( spep_1-3 + 24, 1, 69.2, 41.6 , 0 );
setMoveKey( spep_1-3 + 26, 1, 66.7, 36.9 , 0 );
setMoveKey( spep_1-3 + 28, 1, 64.1, 31.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 61.2, 26.4 , 0 );
setMoveKey( spep_1-3 + 32, 1, 58.2, 20.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 55, 14.7 , 0 );
setMoveKey( spep_1-3 + 36, 1, 51.7, 8.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 48.1, 1.8 , 0 );
setMoveKey( spep_1-3 + 39, 1, 48.1, 1.8 , 0 );

setMoveKey( spep_1-3 + 40, 1, 45, -2.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 59.6, 5.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 58.9, -4.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 78.9, -1.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, 83.4, -11.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 92.1, -0.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, 91, -6.4 , 0 );
setMoveKey( spep_1-3 + 54, 1, 106.2, 0.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 431, -9.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, 720.4, 0.3 , 0 );
setMoveKey( spep_1-3 + 60, 1, 963.7, -5.6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 1174.3, 0.5 , 0 );
setMoveKey( spep_1-3 + 64, 1, 1337.6, -5.4 , 0 );
setMoveKey( spep_1-3 + 66, 1, 1462.8, 0.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 1543.3, 0.8 , 0 );
setMoveKey( spep_1-3 + 69, 1, 1543.3, 0.8 , 0 );

setMoveKey( spep_1-3 + 70, 1, -677.2, -247.8 , 0 );
setMoveKey( spep_1-3 + 72, 1, -518.2, -174.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, -359.1, -100.8 , 0 );
setMoveKey( spep_1-3 + 76, 1, -200, -27.1 , 0 );
setMoveKey( spep_1-3 + 78, 1, -40.9, 46.7 , 0 );
setMoveKey( spep_1-3 + 80, 1, -36.9, 47.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, -32.9, 48.6 , 0 );
setMoveKey( spep_1-3 + 84, 1, -28.8, 49.5 , 0 );
setMoveKey( spep_1-3 + 86, 1, -24.8, 50.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, -20.8, 51.4 , 0 );
setMoveKey( spep_1-3 + 90, 1, -16.7, 52.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, -12.7, 53.3 , 0 );
setMoveKey( spep_1-3 + 94, 1, -8.7, 54.2 , 0 );
setMoveKey( spep_1-3 + 96, 1, -4.6, 55.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, -0.6, 56.1 , 0 );
setMoveKey( spep_1-3 + 100, 1, 3.4, 57 , 0 );
setMoveKey( spep_1-3 + 102, 1, 7.5, 58 , 0 );
setMoveKey( spep_1-3 + 104, 1, 11.5, 58.9 , 0 );
setMoveKey( spep_1-3 + 106, 1, 15.5, 59.8 , 0 );
setMoveKey( spep_1-3 + 108, 1, 19.6, 60.8 , 0 );
setMoveKey( spep_1-3 + 110, 1, 23.6, 61.7 , 0 );
setMoveKey( spep_1-3 + 112, 1, 27.6, 62.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 31.7, 63.6 , 0 );
setMoveKey( spep_1-3 + 116, 1, 35.7, 64.5 , 0 );
setMoveKey( spep_1-3 + 118, 1, 39.7, 65.5 , 0 );
setMoveKey( spep_1-3 + 119, 1, 39.7, 65.5 , 0 );

setMoveKey( spep_1-3 + 120, 1, 200.5, -198 , 0 );
setMoveKey( spep_1-3 + 122, 1, 548.6, -582.3 , 0 );
setMoveKey( spep_1-3 + 124, 1, 728.3, -793.7 , 0 );
setMoveKey( spep_1-3 + 126, 1, 798, -840.6 , 0 );
setMoveKey( spep_1-3 + 128, 1, 916.3, -993.3 , 0 );
setMoveKey( spep_1-3 + 130, 1, 985.4, -1065.9 , 0 );

setMoveKey( spep_1-3 + 150, 1, -252.4, 271.8 , 0 );
setMoveKey( spep_1-3 + 152, 1, -253.1, 274.9 , 0 );
setMoveKey( spep_1-3 + 154, 1, -253, 277.3 , 0 );
setMoveKey( spep_1-3 + 156, 1, -252, 278.7 , 0 );
setMoveKey( spep_1-3 + 158, 1, -250.1, 279.3 , 0 );
setMoveKey( spep_1-3 + 160, 1, -247.4, 278.8 , 0 );
setMoveKey( spep_1-3 + 162, 1, -243.7, 277.5 , 0 );
setMoveKey( spep_1-3 + 164, 1, -239.1, 275.2 , 0 );
setMoveKey( spep_1-3 + 166, 1, -233.5, 271.9 , 0 );
setMoveKey( spep_1-3 + 168, 1, -227, 267.7 , 0 );
setMoveKey( spep_1-3 + 170, 1, -219.4, 262.3 , 0 );
setMoveKey( spep_1-3 + 172, 1, -210.9, 255.9 , 0 );
setMoveKey( spep_1-3 + 174, 1, -201.3, 248.6 , 0 );
setMoveKey( spep_1-3 + 176, 1, -193.4, 238.8 , 0 );
setMoveKey( spep_1-3 + 178, 1, -184.3, 227.7 , 0 );
setMoveKey( spep_1-3 + 180, 1, -173.8, 215.3 , 0 );
setMoveKey( spep_1-3 + 182, 1, -161.9, 201.5 , 0 );
setMoveKey( spep_1-3 + 184, 1, -148.7, 186.2 , 0 );
setMoveKey( spep_1-3 + 186, 1, -134, 169.5 , 0 );
setMoveKey( spep_1-3 + 188, 1, -117.9, 151.3 , 0 );
setMoveKey( spep_1-3 + 190, 1, -100.3, 131.5 , 0 );
setMoveKey( spep_1-3 + 192, 1, -81, 110.1 , 0 );
setMoveKey( spep_1-3 + 193, 1, -81, 110.1 , 0 );

z=-30;

setMoveKey( spep_1-3 + 194, 1, -9.4+z, 242.4 , 0 );
setMoveKey( spep_1-3 + 196, 1, -5.7+z, 257.2 , 0 );
setMoveKey( spep_1-3 + 198, 1, -12.6+z, 243.2 , 0 );
setMoveKey( spep_1-3 + 200, 1, -20.3+z, 275.8 , 0 );
setMoveKey( spep_1-3 + 202, 1, -26.3+z, 504.4 , 0 );
setMoveKey( spep_1-3 + 204, 1, -20.4+z, 695 , 0 );
setMoveKey( spep_1-3 + 206, 1, -22.4+z, 837.1 , 0 );
setMoveKey( spep_1-3 + 208, 1, -20.5+z, 951.9 , 0 );
setMoveKey( spep_1-3 + 210, 1, -26.5+z, 1019.1 , 0 );
setMoveKey( spep_1-3 + 212, 1, -20.6+z, 1057.8 , 0 );

setMoveKey( spep_1-3 + 234, 1, 10.4, -1115.4 , 0 );
setMoveKey( spep_1-3 + 236, 1, 10.6, -895.4 , 0 );
setMoveKey( spep_1-3 + 238, 1, 10.7, -677 , 0 );
setMoveKey( spep_1-3 + 240, 1, 11, -460.1 , 0 );
setMoveKey( spep_1-3 + 242, 1, 11.2, -244.8 , 0 );
setMoveKey( spep_1-3 + 244, 1, 11.5, -31.1 , 0 );
setMoveKey( spep_1-3 + 246, 1, 11.4, -23.4 , 0 );
setMoveKey( spep_1-3 + 248, 1, 11.4, -16.1 , 0 );
setMoveKey( spep_1-3 + 250, 1, 11.4, -9.1 , 0 );
setMoveKey( spep_1-3 + 252, 1, 11.4, -2.5 , 0 );
setMoveKey( spep_1-3 + 254, 1, 11.3, 3.8 , 0 );
setMoveKey( spep_1-3 + 256, 1, 11.3, 9.8 , 0 );
setMoveKey( spep_1-3 + 258, 1, 11.3, 15.4 , 0 );
setMoveKey( spep_1-3 + 260, 1, 11.3, 20.6 , 0 );
setMoveKey( spep_1-3 + 262, 1, 11.3, 25.6 , 0 );
setMoveKey( spep_1-3 + 264, 1, 11.2, 30.1 , 0 );
setMoveKey( spep_1-3 + 266, 1, 11.2, 34.4 , 0 );
setMoveKey( spep_1-3 + 268, 1, 11.2, 38.4 , 0 );
setMoveKey( spep_1-3 + 270, 1, 11.2, 42 , 0 );
setMoveKey( spep_1-3 + 272, 1, 11.1, 45.3 , 0 );
setMoveKey( spep_1-3 + 274, 1, 11.1, 48.3 , 0 );
setMoveKey( spep_1-3 + 276, 1, 11, 50.9 , 0 );
setMoveKey( spep_1 + 276, 1, 11, 53.3 , 0 );


setScaleKey( spep_1 + 0, 1, 13.6, 13.6 );
--setScaleKey( spep_1-3 + 2, 1, 11.42, 11.42 );
setScaleKey( spep_1-3 + 4, 1, 9.24, 9.24 );
setScaleKey( spep_1-3 + 6, 1, 7.06, 7.06 );
setScaleKey( spep_1-3 + 8, 1, 4.88, 4.88 );
setScaleKey( spep_1-3 + 10, 1, 2.7, 2.7 );
setScaleKey( spep_1-3 + 12, 1, 2.62, 2.62 );
setScaleKey( spep_1-3 + 14, 1, 2.54, 2.54 );
setScaleKey( spep_1-3 + 16, 1, 2.45, 2.45 );
setScaleKey( spep_1-3 + 18, 1, 2.35, 2.35 );
setScaleKey( spep_1-3 + 20, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 22, 1, 2.12, 2.12 );
setScaleKey( spep_1-3 + 24, 1, 1.99, 1.99 );
setScaleKey( spep_1-3 + 26, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 28, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 34, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 36, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 38, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 39, 1, 0.81, 0.81 );

setScaleKey( spep_1-3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_1-3 + 44, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 46, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 48, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 50, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 52, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 54, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 56, 1, 1.4, 1.4 );
setScaleKey( spep_1-3 + 58, 1, 1.4, 1.4 );
setScaleKey( spep_1-3 + 60, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 62, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 64, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 66, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 68, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 69, 1, 1.44, 1.44 );

setScaleKey( spep_1-3 + 70, 1, 6.33, 6.33 );
setScaleKey( spep_1-3 + 72, 1, 5.19, 5.19 );
setScaleKey( spep_1-3 + 74, 1, 4.05, 4.05 );
setScaleKey( spep_1-3 + 76, 1, 2.91, 2.91 );
setScaleKey( spep_1-3 + 78, 1, 1.78, 1.78 );
setScaleKey( spep_1-3 + 80, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 82, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 84, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 86, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 88, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 90, 1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 92, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 94, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 96, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 98, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 100, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 102, 1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 104, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 106, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 108, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 110, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 112, 1, 1.61, 1.61 );
setScaleKey( spep_1-3 + 114, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 116, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 118, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 119, 1, 1.58, 1.58 );

setScaleKey( spep_1-3 + 120, 1, 2.48, 2.48 );
setScaleKey( spep_1-3 + 122, 1, 2.21, 2.21 );
setScaleKey( spep_1-3 + 124, 1, 1.93, 1.93 );
setScaleKey( spep_1-3 + 126, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 128, 1, 1.64, 1.64 );

setScaleKey( spep_1-3 + 150, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 152, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 154, 1, 0.1, 0.1 );
setScaleKey( spep_1-3 + 156, 1, 0.1, 0.1 );
setScaleKey( spep_1-3 + 158, 1, 0.11, 0.11 );
setScaleKey( spep_1-3 + 160, 1, 0.12, 0.12 );
setScaleKey( spep_1-3 + 162, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 164, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 166, 1, 0.16, 0.16 );
setScaleKey( spep_1-3 + 168, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 170, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 172, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 174, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 176, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 178, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 180, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 182, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 184, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 186, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 188, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 190, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 192, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 193, 1, 0.63, 0.63 );

setScaleKey( spep_1-3 + 194, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 196, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 198, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 200, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 202, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 204, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 206, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 208, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 210, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 212, 1, 1.42, 1.42 );


setScaleKey( spep_1-3 + 234, 1, 3.13, 3.13 );
setScaleKey( spep_1-3 + 236, 1, 2.77, 2.77 );
setScaleKey( spep_1-3 + 238, 1, 2.41, 2.41 );
setScaleKey( spep_1-3 + 240, 1, 2.06, 2.06 );
setScaleKey( spep_1-3 + 242, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 244, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 246, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 248, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 250, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 252, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 254, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 256, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 258, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 260, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 262, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 264, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 266, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 268, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 270, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 272, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 274, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 276, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 276, 1, 1.12, 1.12 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 39, 1, 0 );

setRotateKey( spep_1-3 + 40, 1, 0 );
setRotateKey( spep_1-3 + 69, 1, 0 );

setRotateKey( spep_1-3 + 70, 1, 0 );
setRotateKey( spep_1-3 + 119, 1, 0 );

setRotateKey( spep_1-3 + 120, 1, 52.7 );
setRotateKey( spep_1-3 + 130, 1, 52.7 );

setRotateKey( spep_1-3 + 150, 1, 0 );
setRotateKey( spep_1-3 + 193, 1, 0 );

setRotateKey( spep_1-3 + 194, 1, 90 );
setRotateKey( spep_1 + 276, 1, 90 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 40,  906, 28, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 40, shuchusen2, 28, 20 );
setEffMoveKey( spep_1-3 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 68, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 40, shuchusen2, 1.21, 1.43 );
setEffScaleKey( spep_1-3 + 68, shuchusen2, 1.21, 1.43 );

setEffRotateKey( spep_1-3 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1-3 + 68, shuchusen2, 0 );

setEffAlphaKey( spep_1-3 + 40, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 60, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 62, shuchusen2, 143 );
setEffAlphaKey( spep_1-3 + 64, shuchusen2, 96 );
setEffAlphaKey( spep_1-3 + 66, shuchusen2, 48 );
setEffAlphaKey( spep_1-3 + 68, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 120,  906, 28, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 120, shuchusen3, 28, 20 );
setEffMoveKey( spep_1-3 + 120,shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 148,shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 120,shuchusen3, 1.21, 1.43 );
setEffScaleKey( spep_1-3 + 148,shuchusen3, 1.21, 1.43 );

setEffRotateKey( spep_1-3 + 120,shuchusen3, 0 );
setEffRotateKey( spep_1-3 + 148,shuchusen3, 0 );

setEffAlphaKey( spep_1-3 + 120,shuchusen3, 191 );
setEffAlphaKey( spep_1-3 + 138,shuchusen3, 191 );
setEffAlphaKey( spep_1-3 + 140,shuchusen3, 153 );
setEffAlphaKey( spep_1-3 + 142,shuchusen3, 115 );
setEffAlphaKey( spep_1-3 + 144,shuchusen3, 77 );
setEffAlphaKey( spep_1-3 + 146,shuchusen3, 38 );
setEffAlphaKey( spep_1-3 + 148,shuchusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_1-3 + 194,  906, 16, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 194, shuchusen4, 16, 20 );
setEffMoveKey( spep_1-3 + 194,shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 210,shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 194,shuchusen4, 1.21, 1.43 );
setEffScaleKey( spep_1-3 + 210,shuchusen4, 1.21, 1.43 );

setEffRotateKey( spep_1-3 + 194,shuchusen4, 0 );
setEffRotateKey( spep_1-3 + 210,shuchusen4, 0 );

setEffAlphaKey( spep_1-3 + 194, shuchusen4, 191 );
setEffAlphaKey( spep_1-3 + 204, shuchusen4, 191 );
setEffAlphaKey( spep_1-3 + 206, shuchusen4, 128 );
setEffAlphaKey( spep_1-3 + 208, shuchusen4, 64 );
setEffAlphaKey( spep_1-3 + 210, shuchusen4, 0 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 40,  10005, 26, 0x100, -1, 0, 4.3, 346.7 );--ガッ
setEffShake( spep_1-3 + 40, ctga, 26, 10 );
setEffMoveKey( spep_1-3 + 40, ctga, 4.3, 346.7 , 0 );
setEffMoveKey( spep_1-3 + 42, ctga, 4.7, 346.4 , 0 );
setEffMoveKey( spep_1-3 + 44, ctga, -4.3, 361.4 , 0 );
setEffMoveKey( spep_1-3 + 46, ctga, 4.7, 346.8 , 0 );
setEffMoveKey( spep_1-3 + 48, ctga, -3.5, 361.8 , 0 );
setEffMoveKey( spep_1-3 + 50, ctga, 4.7, 346.7 , 0 );
setEffMoveKey( spep_1-3 + 52, ctga, -3.2, 360.8 , 0 );
setEffMoveKey( spep_1-3 + 54, ctga, 4.7, 346.7 , 0 );
setEffMoveKey( spep_1-3 + 56, ctga, -2.8, 359.8 , 0 );
setEffMoveKey( spep_1-3 + 58, ctga, 4.7, 346.6 , 0 );
setEffMoveKey( spep_1-3 + 60, ctga, 4.7, 346.6 , 0 );
setEffMoveKey( spep_1-3 + 62, ctga, -2.5, 358.7 , 0 );
setEffMoveKey( spep_1-3 + 64, ctga, 4.7, 346.6 , 0 );
setEffMoveKey( spep_1-3 + 66, ctga, 4.7, 346.6 , 0 );

setEffScaleKey( spep_1-3 + 40, ctga, 1.14, 1.14 );
setEffScaleKey( spep_1-3 + 42, ctga, 3.02, 3.02 );
setEffScaleKey( spep_1-3 + 44, ctga, 3.07, 3.07 );
setEffScaleKey( spep_1-3 + 46, ctga, 3.11, 3.11 );
setEffScaleKey( spep_1-3 + 48, ctga, 3.03, 3.03 );
setEffScaleKey( spep_1-3 + 50, ctga, 2.94, 2.94 );
setEffScaleKey( spep_1-3 + 52, ctga, 2.86, 2.86 );
setEffScaleKey( spep_1-3 + 54, ctga, 2.77, 2.77 );
setEffScaleKey( spep_1-3 + 56, ctga, 2.69, 2.69 );
setEffScaleKey( spep_1-3 + 58, ctga, 2.6, 2.6 );
setEffScaleKey( spep_1-3 + 60, ctga, 2.52, 2.52 );
setEffScaleKey( spep_1-3 + 62, ctga, 2.49, 2.49 );
setEffScaleKey( spep_1-3 + 64, ctga, 2.46, 2.46 );
setEffScaleKey( spep_1-3 + 66, ctga, 2.44, 2.44 );

setEffRotateKey( spep_1-3 + 40, ctga, 24.3 );
setEffRotateKey( spep_1-3 + 42, ctga, 10.9 );
setEffRotateKey( spep_1-3 + 44, ctga, 13.8 );
setEffRotateKey( spep_1-3 + 46, ctga, 16.6 );
setEffRotateKey( spep_1-3 + 48, ctga, 16.3 );
setEffRotateKey( spep_1-3 + 50, ctga, 16 );
setEffRotateKey( spep_1-3 + 52, ctga, 15.8 );
setEffRotateKey( spep_1-3 + 54, ctga, 15.5 );
setEffRotateKey( spep_1-3 + 56, ctga, 15.2 );
setEffRotateKey( spep_1-3 + 58, ctga, 15 );
setEffRotateKey( spep_1-3 + 60, ctga, 14.7 );
setEffRotateKey( spep_1-3 + 62, ctga, 14.2 );
setEffRotateKey( spep_1-3 + 64, ctga, 13.8 );
setEffRotateKey( spep_1-3 + 66, ctga, 13.3 );

setEffAlphaKey( spep_1-3 + 40, ctga, 255 );
setEffAlphaKey( spep_1-3 + 60, ctga, 255 );
setEffAlphaKey( spep_1-3 + 62, ctga, 170 );
setEffAlphaKey( spep_1-3 + 64, ctga, 85 );
setEffAlphaKey( spep_1-3 + 66, ctga, 0 );


--文字エントリー
ctga2 = entryEffectLife( spep_1-3 + 120,  10005, 26, 0x100, -1, 0, -72.7, 391.3 );--ガッ
setEffShake( spep_1-3 + 120, ctga2, 26, 10 );
setEffMoveKey( spep_1-3 + 120, ctga2, -72.7, 391.3 , 0 );
setEffMoveKey( spep_1-3 + 122, ctga2, -72.1, 391.4 , 0 );
setEffMoveKey( spep_1-3 + 124, ctga2, -88.5, 397.7 , 0 );
setEffMoveKey( spep_1-3 + 126, ctga2, -72.3, 391.8 , 0 );
setEffMoveKey( spep_1-3 + 128, ctga2, -88.1, 398.5 , 0 );
setEffMoveKey( spep_1-3 + 130, ctga2, -72.3, 391.7 , 0 );
setEffMoveKey( spep_1-3 + 132, ctga2, -87.2, 397.9 , 0 );
setEffMoveKey( spep_1-3 + 134, ctga2, -72.2, 391.7 , 0 );
setEffMoveKey( spep_1-3 + 136, ctga2, -86.3, 397.4 , 0 );
setEffMoveKey( spep_1-3 + 138, ctga2, -72.2, 391.6 , 0 );
setEffMoveKey( spep_1-3 + 140, ctga2, -72.2, 391.6 , 0 );
setEffMoveKey( spep_1-3 + 142, ctga2, -85.4, 396.7 , 0 );
setEffMoveKey( spep_1-3 + 144, ctga2, -72.2, 391.6 , 0 );
setEffMoveKey( spep_1-3 + 146, ctga2, -72.2, 391.7 , 0 );

setEffScaleKey( spep_1-3 + 120, ctga2, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 122, ctga2, 3.04, 3.04 );
setEffScaleKey( spep_1-3 + 124, ctga2, 3.08, 3.08 );
setEffScaleKey( spep_1-3 + 126, ctga2, 3.13, 3.13 );
setEffScaleKey( spep_1-3 + 128, ctga2, 3.04, 3.04 );
setEffScaleKey( spep_1-3 + 130, ctga2, 2.95, 2.95 );
setEffScaleKey( spep_1-3 + 132, ctga2, 2.87, 2.87 );
setEffScaleKey( spep_1-3 + 134, ctga2, 2.78, 2.78 );
setEffScaleKey( spep_1-3 + 136, ctga2, 2.7, 2.7 );
setEffScaleKey( spep_1-3 + 138, ctga2, 2.61, 2.61 );
setEffScaleKey( spep_1-3 + 140, ctga2, 2.53, 2.53 );
setEffScaleKey( spep_1-3 + 142, ctga2, 2.5, 2.5 );
setEffScaleKey( spep_1-3 + 144, ctga2, 2.47, 2.47 );
setEffScaleKey( spep_1-3 + 146, ctga2, 2.45, 2.45 );

setEffRotateKey( spep_1-3 + 120, ctga2, -13.9 );
setEffRotateKey( spep_1-3 + 122, ctga2, -27.2 );
setEffRotateKey( spep_1-3 + 124, ctga2, -24.4 );
setEffRotateKey( spep_1-3 + 126, ctga2, -21.6 );
setEffRotateKey( spep_1-3 + 128, ctga2, -21.9 );
setEffRotateKey( spep_1-3 + 130, ctga2, -22.1 );
setEffRotateKey( spep_1-3 + 132, ctga2, -22.4 );
setEffRotateKey( spep_1-3 + 134, ctga2, -22.7 );
setEffRotateKey( spep_1-3 + 136, ctga2, -22.9 );
setEffRotateKey( spep_1-3 + 138, ctga2, -23.2 );
setEffRotateKey( spep_1-3 + 140, ctga2, -23.5 );
setEffRotateKey( spep_1-3 + 142, ctga2, -23.9 );
setEffRotateKey( spep_1-3 + 144, ctga2, -24.4 );
setEffRotateKey( spep_1-3 + 146, ctga2, -24.8 );

setEffAlphaKey( spep_1-3 + 120, ctga2, 255 );
setEffAlphaKey( spep_1-3 + 140, ctga2, 255 );
setEffAlphaKey( spep_1-3 + 142, ctga2, 170 );
setEffAlphaKey( spep_1-3 + 144, ctga2, 85 );
setEffAlphaKey( spep_1-3 + 146, ctga2, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 194,  10020, 24, 0x100, -1, 0, 38.8, 375.7 );--バキッ
setEffShake( spep_1-3 + 194, ctbaki, 24, 10 );
setEffMoveKey( spep_1-3 + 194, ctbaki, 38.8, 375.7 , 0 );
setEffMoveKey( spep_1-3 + 196, ctbaki, 27.4, 405.7 , 0 );
setEffMoveKey( spep_1-3 + 198, ctbaki, 38.9, 375.6 , 0 );
setEffMoveKey( spep_1-3 + 200, ctbaki, 38.9, 375.5 , 0 );
setEffMoveKey( spep_1-3 + 202, ctbaki, 31.4, 395.2 , 0 );
setEffMoveKey( spep_1-3 + 204, ctbaki, 39, 375.5 , 0 );
setEffMoveKey( spep_1-3 + 206, ctbaki, 31.8, 394.6 , 0 );
setEffMoveKey( spep_1-3 + 208, ctbaki, 39.1, 375.6 , 0 );
setEffMoveKey( spep_1-3 + 210, ctbaki, 32.1, 393.9 , 0 );
setEffMoveKey( spep_1-3 + 212, ctbaki, 39.1, 375.6 , 0 );
setEffMoveKey( spep_1-3 + 214, ctbaki, 32.2, 393.7 , 0 );
setEffMoveKey( spep_1-3 + 216, ctbaki, 39, 375.7 , 0 );
setEffMoveKey( spep_1-3 + 218, ctbaki, 39, 375.7 , 0 );

setEffScaleKey( spep_1-3 + 194, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_1-3 + 196, ctbaki, 3.77, 3.77 );
setEffScaleKey( spep_1-3 + 198, ctbaki, 3.16, 3.16 );
setEffScaleKey( spep_1-3 + 200, ctbaki, 2.54, 2.54 );
setEffScaleKey( spep_1-3 + 202, ctbaki, 2.49, 2.49 );
setEffScaleKey( spep_1-3 + 204, ctbaki, 2.45, 2.45 );
setEffScaleKey( spep_1-3 + 206, ctbaki, 2.4, 2.4 );
setEffScaleKey( spep_1-3 + 208, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_1-3 + 210, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_1-3 + 212, ctbaki, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 214, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 216, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_1-3 + 218, ctbaki, 2.3, 2.3 );

setEffRotateKey( spep_1-3 + 194, ctbaki, 24.1 );
setEffRotateKey( spep_1-3 + 218, ctbaki, 24.1 );

setEffAlphaKey( spep_1-3 + 194, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 212, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 214, ctbaki, 174 );
setEffAlphaKey( spep_1-3 + 216, ctbaki, 94 );
setEffAlphaKey( spep_1-3 + 218, ctbaki, 13 );

--SE
se_1183 = playSe( spep_1 + 0, 1183 );
playSe( spep_1 + 34, 1003 );
playSe( spep_1 + 43, 1009 );
playSe( spep_1 + 48, 1187 );
setSeVolume( spep_1 + 48, 1187, 50 );
se_1121 = playSe( spep_1 + 63, 1121 );
setSeVolume( spep_1 + 63, 1121, 0 );
setSeVolume( spep_1 + 148, 1121, 0 );
setSeVolume( spep_1 + 149, 1121, 12.6 );
setSeVolume( spep_1 + 150, 1121, 25.2 );
setSeVolume( spep_1 + 151, 1121, 37.8 );
setSeVolume( spep_1 + 152, 1121, 50.4 );
setSeVolume( spep_1 + 153, 1121, 63 );
playSe( spep_1 + 101, 1004 );
playSe( spep_1 + 115, 1189 );
playSe( spep_1 + 121, 1012 );
setSeVolume( spep_1 + 121, 1012, 50 );
se_1182 = playSe( spep_1 + 121, 1182 );
setSeVolume( spep_1 + 121, 1182, 178 );
playSe( spep_1 + 123, 1006 );
playSe( spep_1 + 125, 1110 );
playSe( spep_1 + 191, 1004 );
setSeVolume( spep_1 + 191, 1004, 63 );
playSe( spep_1 + 197, 1192 );
setSeVolume( spep_1 + 197, 1192, 316 );
playSe( spep_1 + 200, 1010 );
playSe( spep_1 + 204, 1120 );
setSeVolume( spep_1 + 204, 1120, 40 );
playSe( spep_1 + 219, 1072 );
setSeVolume( spep_1 + 219, 1072, 126 );
playSe( spep_1 + 249, 8 );

stopSe( spep_1 + 48, se_1183, 14 );
stopSe( spep_1 + 212, se_1121, 28 );
stopSe( spep_1 + 130, se_1182, 17 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 278, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 276;

------------------------------------------------------
-- トーマナビ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 46, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 46, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 44, tame, 255 );
setEffAlphaKey( spep_2 + 45, tame, 255 );
setEffAlphaKey( spep_2 + 46, tame, 0 );

--SE
se_1037 = playSe( spep_2 + 8, 1037 );
playSe( spep_2 + 22, 49 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 48, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;


------------------------------------------------------
-- トーマ発射〜着弾〜バーダック正面
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 180, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 180, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 180, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 180, hit_b, 255 );

-- ** エフェクト等 ** --
ctbou = entryEffect( spep_3+20 + 0, 154785, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3+20 + 0, ctbou, 0, 0, 0 );
setEffMoveKey( spep_3+20 + 92, ctbou, 0, 0, 0 );
setEffScaleKey( spep_3+20 + 0, ctbou, -1.0, 1.0 );
setEffScaleKey( spep_3+20 + 92, ctbou, -1.0, 1.0 );
setEffRotateKey( spep_3+20 + 0, ctbou, 40 );
setEffRotateKey( spep_3+20 + 92, ctbou, 40 );
setEffAlphaKey( spep_3+20 + 0, ctbou, 255 );
setEffAlphaKey( spep_3+20 + 92, ctbou, 255 );

--敵の動き
setDisp( spep_3 -3 + 28, 1, 1 );
setDisp( spep_3 -3 + 152, 1, 0 );

changeAnime( spep_3 -3 + 28, 1, 8);
changeAnime( spep_3 -3 + 48, 1, 6);
changeAnime( spep_3 -3 + 88, 1, 105);

setMoveKey( spep_3-3 + 28, 1, 14.4, 16.5 , 0 );
setMoveKey( spep_3-3 + 30, 1, 14.4, 19.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 14.4, 23 , 0 );
setMoveKey( spep_3-3 + 34, 1, 14.4, 26.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 14.4, 29.5 , 0 );
setMoveKey( spep_3-3 + 38, 1, 14.4, 32.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 14.4, 36 , 0 );
setMoveKey( spep_3-3 + 42, 1, 14.4, 39.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 14.4, 42.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, 14.4, 45.8 , 0 );
setMoveKey( spep_3-3 + 47, 1, 14.4, 45.8 , 0 );

setMoveKey( spep_3-3 + 48, 1, 96.5, 43.8 , 0 );
setMoveKey( spep_3-3 + 50, 1, 80, 66.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, 38.5, 44.8 , 0 );
setMoveKey( spep_3-3 + 54, 1, 36, 36.4 , 0 );
setMoveKey( spep_3-3 + 56, 1, 8.4, 2.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 13, 20.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, -1.7, 12.8 , 0 );
setMoveKey( spep_3-3 + 62, 1, 9.3, 17.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, 1.1, -2.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 5.6, 14.8 , 0 );
setMoveKey( spep_3-3 + 68, 1, -9, 7 , 0 );
setMoveKey( spep_3-3 + 70, 1, 1.9, 11.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 0.1, 10.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, -1.8, 9 , 0 );
setMoveKey( spep_3-3 + 76, 1, -3.6, 7.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, -5.5, 6.1 , 0 );
setMoveKey( spep_3-3 + 80, 1, -7.3, 4.7 , 0 );
setMoveKey( spep_3-3 + 82, 1, -9.2, 3.2 , 0 );
setMoveKey( spep_3-3 + 84, 1, -11, 1.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, -12.8, 0.3 , 0 );
setMoveKey( spep_3-3 + 87, 1, -12.8, 0.3 , 0 );

setMoveKey( spep_3-3 + 88, 1, -384.3, 246 , 0 );
setMoveKey( spep_3-3 + 90, 1, -352.3, 229.7 , 0 );
setMoveKey( spep_3-3 + 92, 1, -320.2, 213.3 , 0 );
setMoveKey( spep_3-3 + 94, 1, -288.1, 197 , 0 );
setMoveKey( spep_3-3 + 96, 1, -256, 180.7 , 0 );
setMoveKey( spep_3-3 + 98, 1, -223.9, 164.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, -191.8, 148 , 0 );
setMoveKey( spep_3-3 + 102, 1, -159.7, 131.7 , 0 );
setMoveKey( spep_3-3 + 104, 1, -152.3, 126 , 0 );
setMoveKey( spep_3-3 + 106, 1, -144.9, 120.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, -137.5, 114.5 , 0 );
setMoveKey( spep_3-3 + 110, 1, -130.1, 108.8 , 0 );
setMoveKey( spep_3-3 + 112, 1, -122.7, 103.1 , 0 );
setMoveKey( spep_3-3 + 114, 1, -115.3, 97.4 , 0 );
setMoveKey( spep_3-3 + 116, 1, -107.9, 91.7 , 0 );
setMoveKey( spep_3-3 + 118, 1, -100.5, 85.9 , 0 );
setMoveKey( spep_3-3 + 120, 1, -93.1, 80.2 , 0 );
setMoveKey( spep_3-3 + 122, 1, -88.8, 76.1 , 0 );
setMoveKey( spep_3-3 + 124, 1, -84.5, 72.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, -79.5, 67.6 , 0 );
setMoveKey( spep_3-3 + 128, 1, -284.8, 285.4 , 0 );
setMoveKey( spep_3-3 + 130, 1, -498.7, 512.2 , 0 );
setMoveKey( spep_3-3 + 132, 1, -720.3, 747.4 , 0 );
setMoveKey( spep_3-3 + 134, 1, -950.1, 991.3 , 0 );
setMoveKey( spep_3-3 + 136, 1, -1188, 1244 , 0 );
setMoveKey( spep_3-3 + 138, 1, -1434.4, 1505.7 , 0 );
setMoveKey( spep_3-3 + 140, 1, -1688.7, 1775.8 , 0 );
setMoveKey( spep_3-3 + 142, 1, -1951.2, 2054.7 , 0 );
setMoveKey( spep_3-3 + 144, 1, -2221.9, 2342.4 , 0 );
setMoveKey( spep_3-3 + 146, 1, -2500.7, 2638.7 , 0 );
setMoveKey( spep_3-3 + 148, 1, -2787.7, 2943.7 , 0 );
setMoveKey( spep_3-3 + 150, 1, -3082.8, 3257.5 , 0 );
setMoveKey( spep_3-3 + 152, 1, -3386, 3580.1 , 0 );

setScaleKey( spep_3-3 + 28, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 47, 1, 0.96, 0.96 );

setScaleKey( spep_3-3 + 48, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 50, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 52, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 54, 1, 1.28, 1.28 );
setScaleKey( spep_3-3 + 56, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 60, 1, 1, 1 );
setScaleKey( spep_3-3 + 62, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 64, 1, 0.94, 0.94 );
setScaleKey( spep_3-3 + 66, 1, 0.91, 0.91 );
setScaleKey( spep_3-3 + 68, 1, 0.87, 0.87 );
setScaleKey( spep_3-3 + 70, 1, 0.84, 0.84 );
setScaleKey( spep_3-3 + 72, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 74, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 76, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 78, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 80, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 82, 1, 0.65, 0.65 );
setScaleKey( spep_3-3 + 84, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 86, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 87, 1, 0.58, 0.58 );

setScaleKey( spep_3-3 + 88, 1, 1.88, 1.88 );
setScaleKey( spep_3-3 + 90, 1, 1.74, 1.74 );
setScaleKey( spep_3-3 + 92, 1, 1.61, 1.61 );
setScaleKey( spep_3-3 + 94, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 96, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 98, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 100, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 102, 1, 0.93, 0.93 );
setScaleKey( spep_3-3 + 104, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 106, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 108, 1, 0.88, 0.88 );
setScaleKey( spep_3-3 + 110, 1, 0.87, 0.87 );
setScaleKey( spep_3-3 + 112, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 114, 1, 0.83, 0.83 );
setScaleKey( spep_3-3 + 116, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 120, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 126, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 128, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 130, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 132, 1, 2.99, 2.99 );
setScaleKey( spep_3-3 + 134, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 136, 1, 4.6, 4.6 );
setScaleKey( spep_3-3 + 138, 1, 5.45, 5.45 );
setScaleKey( spep_3-3 + 140, 1, 6.33, 6.33 );
setScaleKey( spep_3-3 + 142, 1, 7.23, 7.23 );
setScaleKey( spep_3-3 + 144, 1, 8.16, 8.16 );
setScaleKey( spep_3-3 + 146, 1, 9.12, 9.12 );
setScaleKey( spep_3-3 + 148, 1, 10.11, 10.11 );
setScaleKey( spep_3-3 + 150, 1, 11.12, 11.12 );
setScaleKey( spep_3-3 + 152, 1, 12.17, 12.17 );

setRotateKey( spep_3-3 + 28, 1, 90 );
setRotateKey( spep_3-3 + 47, 1, 90 );

setRotateKey( spep_3-3 + 48, 1, 90 );
setRotateKey( spep_3-3 + 87, 1, 90 );

setRotateKey( spep_3-3 + 88, 1, 112.1 );
setRotateKey( spep_3-3 + 110, 1, 112.1 );
setRotateKey( spep_3-3 + 112, 1, 112 );
setRotateKey( spep_3-3 + 128, 1, 112 );
setRotateKey( spep_3-3 + 130, 1, 112.1 );
setRotateKey( spep_3-3 + 152, 1, 112.1 );

setAlphaKey( spep_3-3 + 28, 1, 255 );
setAlphaKey( spep_3-3 + 47, 1, 255 );
setAlphaKey( spep_3-3 + 48, 1, 128 );
setAlphaKey( spep_3-3 + 87, 1, 128 );
setAlphaKey( spep_3-3 + 88, 1, 165 );
setAlphaKey( spep_3-3 + 152, 1, 165 );

--SE
playSe( spep_3 + 10, 1027 );
playSe( spep_3 + 10, 1021 );
playSe( spep_3 + 56, 1023 );
setSeVolume( spep_3 + 56, 1023, 112 );
playSe( spep_3 + 59, 1002 );
setSeVolume( spep_3 + 59, 1002, 71 );
se_1166 = playSe( spep_3 + 65, 1166 );
setSeVolume( spep_3 + 65, 1166, 79 );
playSe( spep_3 + 130, 9 );
playSe( spep_3 + 130, 1182 );

stopSe( spep_3 + 13, se_1037, 0 );
stopSe( spep_3 + 106, se_1166, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 182, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 172, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 180;

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

--白フェード
entryFade( spep_4 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- バーダック発射
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 136, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_5 + 136, beam, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 136, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 134, beam, 255 );
setEffAlphaKey( spep_5 + 135, beam, 255 );
setEffAlphaKey( spep_5 + 136, beam, 0 );

--顔カットイン
--speff = entryEffect( spep_5 + 10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_5 + 10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_5 -2 +24, 190006, 72, 0x100, -1, 0, -100, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_5 -2 +24,  ctgogo,  -100,  510);
setEffMoveKey(  spep_5 -2 +96,  ctgogo,  -100,  510);

setEffAlphaKey( spep_5 -2 +24, ctgogo, 0 );
setEffAlphaKey( spep_5 -2 + 25, ctgogo, 255 );
setEffAlphaKey( spep_5 -2 + 26, ctgogo, 255 );
setEffAlphaKey( spep_5 -2 + 90, ctgogo, 255 );
setEffAlphaKey( spep_5 -2 + 92, ctgogo, 191 );
setEffAlphaKey( spep_5 -2 + 94, ctgogo, 112 );
setEffAlphaKey( spep_5 -2 + 96, ctgogo, 64 );

setEffRotateKey(  spep_5 -2 +24,  ctgogo,  0);
setEffRotateKey(  spep_5 -2 +96,  ctgogo,  0);

setEffScaleKey(  spep_5 -2 +24,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_5 -2 +86,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_5 -2 +96,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 100 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5, shuchusen5, 100-3, 20 );
setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.21, 1.84 );
setEffScaleKey( spep_5 -3 + 100, shuchusen5, 1.21, 1.84 );

setEffRotateKey( spep_5 + 0, shuchusen5, 0 );
setEffRotateKey( spep_5 -3 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 41 );
setEffAlphaKey( spep_5 + 2, shuchusen5, 68 );
setEffAlphaKey( spep_5 + 4, shuchusen5, 95 );
setEffAlphaKey( spep_5 + 6, shuchusen5, 123 );
setEffAlphaKey( spep_5 + 8, shuchusen5, 150 );
setEffAlphaKey( spep_5 + 10, shuchusen5, 177 );
setEffAlphaKey( spep_5 + 12, shuchusen5, 204 );
setEffAlphaKey( spep_5 -3 + 88, shuchusen5, 204 );
setEffAlphaKey( spep_5 -3 + 90, shuchusen5, 170 );
setEffAlphaKey( spep_5 -3 + 92, shuchusen5, 136 );
setEffAlphaKey( spep_5 -3 + 94, shuchusen5, 102 );
setEffAlphaKey( spep_5 -3 + 96, shuchusen5, 68 );
setEffAlphaKey( spep_5 -3 + 98, shuchusen5, 34 );
setEffAlphaKey( spep_5 -3 + 100, shuchusen5, 0 );

--SE
playSe( spep_5 + 22, 1018 );

playSe( spep_5 + 5, 1182 );
setSeVolume( spep_5 + 5, 1182, 0 );
setSeVolume( spep_5 + 6, 1182, 0 );
setSeVolume( spep_5 + 7, 1182, 8.33 );
setSeVolume( spep_5 + 8, 1182, 16.67 );
setSeVolume( spep_5 + 9, 1182, 25 );
setSeVolume( spep_5 + 10, 1182, 33.33 );
setSeVolume( spep_5 + 11, 1182, 41.67 );
setSeVolume( spep_5 + 12, 1182, 50 );
setSeVolume( spep_5 + 13, 1182, 58.33 );
setSeVolume( spep_5 + 14, 1182, 66.67 );
setSeVolume( spep_5 + 15, 1182, 75 );
setSeVolume( spep_5 + 16, 1182, 83.33 );
setSeVolume( spep_5 + 17, 1182, 91.67 );
setSeVolume( spep_5 + 18, 1182, 100 );
se_1116 = playSe( spep_5 + 10, 1116 );
se_1215 = playSe( spep_5 + 83, 1215 );
setSeVolume( spep_5 + 83, 1215, 0 );
playSe( spep_5 + 101, 1003 );
playSe( spep_5 + 107, 1145 );
playSe( spep_5 + 107, 1027 );
setSeVolume( spep_5 + 107, 1027, 89 );
playSe( spep_5 + 121, 1022 );
setSeVolume( spep_5 + 121, 1022, 0 );
setSeVolume( spep_5 + 124, 1022, 0 );
setSeVolume( spep_5 + 125, 1022, 3.33 );
setSeVolume( spep_5 + 126, 1022, 6.67 );
setSeVolume( spep_5 + 127, 1022, 10 );
setSeVolume( spep_5 + 128, 1022, 13.33 );
setSeVolume( spep_5 + 129, 1022, 16.67 );
setSeVolume( spep_5 + 130, 1022, 20 );
setSeVolume( spep_5 + 131, 1022, 23.33 );
setSeVolume( spep_5 + 132, 1022, 26.67 );
setSeVolume( spep_5 + 133, 1022, 30 );
setSeVolume( spep_5 + 134, 1022, 33.33 );
setSeVolume( spep_5 + 135, 1022, 36.67 );
setSeVolume( spep_5 + 136, 1022, 40 );
setSeVolume( spep_5 + 137, 1022, 43.33 );
setSeVolume( spep_5 + 138, 1022, 46.67 );
setSeVolume( spep_5 + 139, 1022, 50 );
setSeVolume( spep_5 + 140, 1022, 53.33 );
setSeVolume( spep_5 + 141, 1022, 56.67 );
setSeVolume( spep_5 + 142, 1022, 60 );
setSeVolume( spep_5 + 143, 1022, 63.33 );
setSeVolume( spep_5 + 144, 1022, 66.67 );
setSeVolume( spep_5 + 145, 1022, 70 );
setSeVolume( spep_5 + 146, 1022, 73.33 );
setSeVolume( spep_5 + 147, 1022, 76.67 );
setSeVolume( spep_5 + 148, 1022, 80 );
setSeVolume( spep_5 + 149, 1022, 83.33 );
setSeVolume( spep_5 + 150, 1022, 86.67 );
setSeVolume( spep_5 + 151, 1022, 90 );
setSeVolume( spep_5 + 152, 1022, 93.33 );
setSeVolume( spep_5 + 153, 1022, 96.67 );
setSeVolume( spep_5 + 154, 1022, 100 );
playSe( spep_5 + 121, 1168 );
setSeVolume( spep_5 + 121, 1168, 0 );

stopSe( spep_5 + 37, se_1116, 30 );



-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 138, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 136;

------------------------------------------------------
-- 着弾〜キメ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 200, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 200, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 200, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 200, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 200, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 200, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 200, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 200, finish_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -1 + 48, 1, 0 );
changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 31, -172.3 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 29.1, -148.8 , 0 );
setMoveKey( spep_6-3 + 4, 1, 27.1, -125.2 , 0 );
setMoveKey( spep_6-3 + 6, 1, 25.2, -101.6 , 0 );
setMoveKey( spep_6-3 + 8, 1, 23.4, -78 , 0 );
setMoveKey( spep_6-3 + 10, 1, 21.5, -54.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, 19.7, -30.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 17.8, -7.2 , 0 );
setMoveKey( spep_6-3 + 16, 1, 16, 16.4 , 0 );
setMoveKey( spep_6-3 + 18, 1, 14.2, 40 , 0 );
setMoveKey( spep_6-3 + 20, 1, 14.2, 39 , 0 );
setMoveKey( spep_6-3 + 22, 1, 14.2, 38 , 0 );
setMoveKey( spep_6-3 + 24, 1, 14.1, 37.1 , 0 );
setMoveKey( spep_6-3 + 26, 1, 14.1, 36.1 , 0 );
setMoveKey( spep_6-3 + 28, 1, 14.1, 35.1 , 0 );
setMoveKey( spep_6-3 + 30, 1, 14, 34.2 , 0 );
setMoveKey( spep_6-3 + 32, 1, 14, 33.2 , 0 );
setMoveKey( spep_6-3 + 34, 1, 14, 32.3 , 0 );
setMoveKey( spep_6-3 + 36, 1, 14, 31.3 , 0 );
setMoveKey( spep_6-3 + 38, 1, 13.9, 30.3 , 0 );
setMoveKey( spep_6-3 + 40, 1, 13.9, 29.4 , 0 );
setMoveKey( spep_6-3 + 42, 1, 13.9, 28.4 , 0 );
setMoveKey( spep_6-3 + 44, 1, 13.8, 27.5 , 0 );
setMoveKey( spep_6-3 + 46, 1, 13.8, 26.5 , 0 );
setMoveKey( spep_6-1 + 48, 1, 13.7, 25.5 , 0 );

setScaleKey( spep_6 + 0, 1, 2.49, 2.49 );
--setScaleKey( spep_6-3 + 2, 1, 2.32, 2.32 );
setScaleKey( spep_6-3 + 4, 1, 2.14, 2.14 );
setScaleKey( spep_6-3 + 6, 1, 1.97, 1.97 );
setScaleKey( spep_6-3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_6-3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_6-3 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_6-3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_6-3 + 16, 1, 1.09, 1.09 );
setScaleKey( spep_6-3 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_6-3 + 20, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 22, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_6-3 + 26, 1, 0.83, 0.83 );
setScaleKey( spep_6-3 + 28, 1, 0.81, 0.81 );
setScaleKey( spep_6-3 + 30, 1, 0.79, 0.79 );
setScaleKey( spep_6-3 + 32, 1, 0.76, 0.76 );
setScaleKey( spep_6-3 + 34, 1, 0.74, 0.74 );
setScaleKey( spep_6-3 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_6-3 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_6-3 + 40, 1, 0.67, 0.67 );
setScaleKey( spep_6-3 + 42, 1, 0.65, 0.65 );
setScaleKey( spep_6-3 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_6-3 + 46, 1, 0.61, 0.61 );
setScaleKey( spep_6-1 + 48, 1, 0.58, 0.58 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-1 + 48, 1, 0 );

setAlphaKey( spep_6 + 0, 1, 165 );
setAlphaKey( spep_6 -1 + 50, 1, 165 );

setAlphaKey( spep_6 -1 + 51, 1, 255 );

--SE
setSeVolume( spep_6 + 0, 1215, 0 );
setSeVolume( spep_6 + 1, 1215, 1.25 );
setSeVolume( spep_6 + 2, 1215, 2.5 );
setSeVolume( spep_6 + 3, 1215, 3.75 );
setSeVolume( spep_6 + 4, 1215, 5 );
setSeVolume( spep_6 + 5, 1215, 6.25 );
setSeVolume( spep_6 + 6, 1215, 7.5 );
setSeVolume( spep_6 + 7, 1215, 8.75 );
setSeVolume( spep_6 + 8, 1215, 10 );
setSeVolume( spep_6 + 9, 1215, 11.25 );
setSeVolume( spep_6 + 10, 1215, 12.5 );
setSeVolume( spep_6 + 11, 1215, 13.75 );
setSeVolume( spep_6 + 12, 1215, 15 );
setSeVolume( spep_6 + 13, 1215, 16.25 );
setSeVolume( spep_6 + 14, 1215, 17.5 );
setSeVolume( spep_6 + 15, 1215, 18.75 );
setSeVolume( spep_6 + 16, 1215, 20 );
setSeVolume( spep_6 + 17, 1215, 21.25 );
setSeVolume( spep_6 + 18, 1215, 22.5 );
setSeVolume( spep_6 + 19, 1215, 23.75 );
setSeVolume( spep_6 + 20, 1215, 25 );
setSeVolume( spep_6 + 21, 1215, 26.25 );
setSeVolume( spep_6 + 22, 1215, 27.5 );
setSeVolume( spep_6 + 23, 1215, 28.75 );
setSeVolume( spep_6 + 24, 1215, 30 );
setSeVolume( spep_6 + 25, 1215, 31.25 );
setSeVolume( spep_6 + 26, 1215, 32.5 );
setSeVolume( spep_6 + 27, 1215, 33.75 );
setSeVolume( spep_6 + 28, 1215, 35 );
setSeVolume( spep_6 + 29, 1215, 36.25 );
setSeVolume( spep_6 + 30, 1215, 37.5 );
setSeVolume( spep_6 + 31, 1215, 38.75 );
setSeVolume( spep_6 + 32, 1215, 40 );

setSeVolume( spep_6 + 87, 1168, 0 );
setSeVolume( spep_6 + 88, 1168, 4.48 );
setSeVolume( spep_6 + 89, 1168, 8.96 );
setSeVolume( spep_6 + 90, 1168, 13.44 );
setSeVolume( spep_6 + 91, 1168, 17.92 );
setSeVolume( spep_6 + 92, 1168, 22.4 );
setSeVolume( spep_6 + 93, 1168, 26.88 );
setSeVolume( spep_6 + 94, 1168, 31.36 );
setSeVolume( spep_6 + 95, 1168, 35.84 );
setSeVolume( spep_6 + 96, 1168, 40.32 );
setSeVolume( spep_6 + 97, 1168, 44.8 );
setSeVolume( spep_6 + 98, 1168, 49.28 );
setSeVolume( spep_6 + 99, 1168, 53.76 );
setSeVolume( spep_6 + 100, 1168, 58.24 );
setSeVolume( spep_6 + 101, 1168, 62.72 );
setSeVolume( spep_6 + 102, 1168, 67.2 );
setSeVolume( spep_6 + 103, 1168, 71.68 );
setSeVolume( spep_6 + 104, 1168, 76.16 );
setSeVolume( spep_6 + 105, 1168, 80.64 );
setSeVolume( spep_6 + 106, 1168, 85.12 );
setSeVolume( spep_6 + 107, 1168, 89.6 );
setSeVolume( spep_6 + 108, 1168, 94.08 );
setSeVolume( spep_6 + 109, 1168, 98.56 );
setSeVolume( spep_6 + 110, 1168, 103.04 );
setSeVolume( spep_6 + 111, 1168, 107.52 );
setSeVolume( spep_6 + 112, 1168, 112 );

playSe( spep_6 + 61, 1023 );
playSe( spep_6 + 61, 1159 );
se_1044 = playSe( spep_6 + 97, 1044 );
setSeVolume( spep_6 + 97, 1044, 0 );
setSeVolume( spep_6 + 98, 1044, 3 );
setSeVolume( spep_6 + 99, 1044, 6 );
setSeVolume( spep_6 + 100, 1044, 9 );
setSeVolume( spep_6 + 101, 1044, 12 );
setSeVolume( spep_6 + 102, 1044, 15 );
setSeVolume( spep_6 + 103, 1044, 18 );
setSeVolume( spep_6 + 104, 1044, 21 );
setSeVolume( spep_6 + 105, 1044, 24 );
setSeVolume( spep_6 + 106, 1044, 27 );
setSeVolume( spep_6 + 107, 1044, 30 );
setSeVolume( spep_6 + 108, 1044, 33 );
setSeVolume( spep_6 + 109, 1044, 36 );
setSeVolume( spep_6 + 110, 1044, 39 );
setSeVolume( spep_6 + 111, 1044, 42 );
setSeVolume( spep_6 + 112, 1044, 45 );
setSeVolume( spep_6 + 113, 1044, 48 );
setSeVolume( spep_6 + 114, 1044, 51 );
setSeVolume( spep_6 + 115, 1044, 54 );
setSeVolume( spep_6 + 116, 1044, 57 );
setSeVolume( spep_6 + 117, 1044, 60 );
setSeVolume( spep_6 + 118, 1044, 63 );

stopSe( spep_6 + 18, se_1215, 34 );
stopSe( spep_6 + 141, se_1044, 58 );

--終わり
dealDamage( spep_6 + 52 );
endPhase( spep_6 + 190 );


end

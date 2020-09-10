--1017350:セル(第一形態)_生体エキス吸収
--sp_effect_b4_00103

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
SP_01=	153810	;--	導入、太陽拳シーン
SP_02=	153811	;--	敵後ろ回り込みシーン
SP_03=	153812	;--	尻尾振り下ろし、吸収シーン
SP_04=	153813	;--	振り回し、ぶん投げシーン下
SP_05=	153814	;--	振り回し、ぶん投げシーン上
SP_06=	153815	;--	敵ガッ　シーン

--エフェクト(敵方)
SP_01x=	153810	;--	導入、太陽拳シーン	
SP_02x=	153816	;--	敵後ろ回り込みシーン	(敵)
SP_03x=	153817	;--	尻尾振り下ろし、吸収シーン	(敵)
SP_04x=	153818	;--	振り回し、ぶん投げシーン下	(敵)
SP_05x=	153814	;--	振り回し、ぶん投げシーン上	
SP_06x=	153815	;--	敵ガッ　シーン	

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
-- 導入、太陽拳シーン
------------------------------------------------------
--はじめの準備
spep_0= 0;

-- ** エフェクト等 ** --
san = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, san, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, san, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, san, 1.0, 1.0 );
setEffScaleKey( spep_0 + 224, san, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, san, 0 );
setEffRotateKey( spep_0 + 224, san, 0 );
setEffAlphaKey( spep_0 + 0, san, 255 );
setEffAlphaKey( spep_0 + 224, san, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    --stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--集中線
shuchusen2 = entryEffectLife( spep_0 -3 + 124,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 124, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 222, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 124, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_0 -3 + 222, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_0 -3 + 124, shuchusen2, 180 );
setEffRotateKey( spep_0 -3 + 222, shuchusen2, 180 );

setEffAlphaKey( spep_0 -3 + 124, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 222, shuchusen2, 255 );

--文字エントリー
ctka = entryEffectLife( spep_0 - 3 + 124,  10004, 24, 0x100, -1, 0, -165.2, 303.7 );
setEffMoveKey( spep_0 - 3 + 124, ctka, -165.2, 303.7 , 0 );
setEffMoveKey( spep_0 - 3 + 126, ctka, -167.6, 336.4 , 0 );
setEffMoveKey( spep_0 - 3 + 128, ctka, -163.2, 368.3 , 0 );
setEffMoveKey( spep_0 - 3 + 130, ctka, -169.4, 401.3 , 0 );
setEffMoveKey( spep_0 - 3 + 132, ctka, -161.9, 400.5 , 0 );
setEffMoveKey( spep_0 - 3 + 134, ctka, -169.4, 401.3 , 0 );
setEffMoveKey( spep_0 - 3 + 136, ctka, -161.9, 400.5 , 0 );
setEffMoveKey( spep_0 - 3 + 138, ctka, -169.4, 401.3 , 0 );
setEffMoveKey( spep_0 - 3 + 140, ctka, -161.9, 400.5 , 0 );
setEffMoveKey( spep_0 - 3 + 142, ctka, -169.4, 401.3 , 0 );
setEffMoveKey( spep_0 - 3 + 144, ctka, -160.4, 400.1 , 0 );
setEffMoveKey( spep_0 - 3 + 146, ctka, -170.2, 401 , 0 );
setEffMoveKey( spep_0 - 3 + 148, ctka, -170.6, 400.7 , 0 );

setEffScaleKey( spep_0 - 3 + 124, ctka, 0.3, 0.3 );
setEffScaleKey( spep_0 - 3 + 126, ctka, 0.87, 0.87 );
setEffScaleKey( spep_0 - 3 + 128, ctka, 1.43, 1.43 );
setEffScaleKey( spep_0 - 3 + 130, ctka, 2, 2 );
setEffScaleKey( spep_0 - 3 + 142, ctka, 2, 2 );
setEffScaleKey( spep_0 - 3 + 144, ctka, 2.5, 2.5 );
setEffScaleKey( spep_0 - 3 + 146, ctka, 3, 3 );
setEffScaleKey( spep_0 - 3 + 148, ctka, 3.5, 3.5 );

setEffRotateKey( spep_0 - 3 + 124, ctka, -20 );
setEffRotateKey( spep_0 - 3 + 148, ctka, -20 );

setEffAlphaKey( spep_0 - 3 + 124, ctka, 255 );
setEffAlphaKey( spep_0 - 3 + 142, ctka, 255 );
setEffAlphaKey( spep_0 - 3 + 144, ctka, 170 );
setEffAlphaKey( spep_0 - 3 + 146, ctka, 85 );
setEffAlphaKey( spep_0 - 3 + 148, ctka, 0 );


--***カットイン***
speff = entryEffect(  spep_0 + 12,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_0 + 12,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 + 24, 190006, 74, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 + 24,  ctgogo,  0,  540);
setEffMoveKey(  spep_0 + 98,  ctgogo,  0,  540);

setEffAlphaKey( spep_0 +  24, ctgogo, 0 );
setEffAlphaKey( spep_0 +  25, ctgogo, 255 );
setEffAlphaKey( spep_0 +  26, ctgogo, 255 );
setEffAlphaKey( spep_0 +  86, ctgogo, 255 );
setEffAlphaKey( spep_0 +  88, ctgogo, 255 );
setEffAlphaKey( spep_0 +  90, ctgogo, 191 );
setEffAlphaKey( spep_0 +  92, ctgogo, 128 );
setEffAlphaKey( spep_0 +  94, ctgogo, 64 );
setEffAlphaKey( spep_0 +  97, ctgogo, 0 );
setEffAlphaKey( spep_0 +  98, ctgogo, 0 );

setEffRotateKey(  spep_0 + 24,  ctgogo,  0);
setEffRotateKey(  spep_0 + 98,  ctgogo,  0);

setEffScaleKey(  spep_0 + 24,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 + 88,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 + 98,  ctgogo, 1.07, 1.07 );

--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 140, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 146, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 152, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 158, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 164, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 170, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 176, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 182, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 212, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_0+24, 1018);--ゴゴゴ
playSe( spep_0+122, 1127);--太陽拳
SE1=playSe( spep_0+142, 1128);--太陽拳
stopSe( spep_0+214, SE1, 30 );

--次の準備
spep_1= spep_0 + 224;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 敵後ろ回り込みシーン
------------------------------------------------------
-- ** エフェクト等 ** --
behind = entryEffect( spep_2 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, behind, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, behind, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, behind, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, behind, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, behind, 0 );
setEffRotateKey( spep_2 + 60, behind, 0 );
setEffAlphaKey( spep_2 + 0, behind, 255 );
setEffAlphaKey( spep_2 + 60, behind, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 - 3 + 44,  906, 18, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 - 3 + 44, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 62, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 - 3 + 44, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_2 - 3 + 62, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_2 - 3 + 44, shuchusen3, 180 );
setEffRotateKey( spep_2 - 3 + 62, shuchusen3, 180 );

setEffAlphaKey( spep_2 - 3 + 44, shuchusen3, 255 );
setEffAlphaKey( spep_2 - 3 + 62, shuchusen3, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 60, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, -6, -109.2 , 0 );
setMoveKey( spep_2 + 2, 1, -6.2, -112.9 , 0 );
setMoveKey( spep_2 + 4, 1, -6.4, -116.6 , 0 );
setMoveKey( spep_2 + 6, 1, -6.5, -120.3 , 0 );
setMoveKey( spep_2 + 8, 1, -6.7, -124 , 0 );
setMoveKey( spep_2 + 10, 1, -6.9, -127.7 , 0 );
setMoveKey( spep_2 + 12, 1, -7, -131.3 , 0 );
setMoveKey( spep_2 + 14, 1, -7.2, -135 , 0 );
setMoveKey( spep_2 + 16, 1, -7.3, -138.7 , 0 );
setMoveKey( spep_2 + 18, 1, -7.5, -142.4 , 0 );
setMoveKey( spep_2 + 20, 1, -7.7, -146.1 , 0 );
setMoveKey( spep_2 + 22, 1, -7.8, -149.8 , 0 );
setMoveKey( spep_2 + 24, 1, -8, -153.5 , 0 );
setMoveKey( spep_2 + 26, 1, -8.2, -157.3 , 0 );
setMoveKey( spep_2 + 28, 1, -8.3, -161 , 0 );
setMoveKey( spep_2 + 30, 1, -8.3, -161 , 0 );
setMoveKey( spep_2 + 32, 1, -8.3, -161.1 , 0 );
setMoveKey( spep_2 + 34, 1, -8.3, -161.1 , 0 );
setMoveKey( spep_2 + 36, 1, -8.1, -161.9 , 0 );
setMoveKey( spep_2 + 38, 1, -7.9, -162.8 , 0 );
setMoveKey( spep_2 + 40, 1, -7.7, -163.6 , 0 );
setMoveKey( spep_2 + 42, 1, -7.6, -164.5 , 0 );
setMoveKey( spep_2 + 44, 1, -7.2, -165.2 , 0 );
setMoveKey( spep_2 + 46, 1, -7, -221 , 0 );
setMoveKey( spep_2 + 48, 1, -6.8, -271.7 , 0 );
setMoveKey( spep_2 + 50, 1, -6.6, -317 , 0 );
setMoveKey( spep_2 + 52, 1, -6.5, -357 , 0 );
setMoveKey( spep_2 + 54, 1, -6.3, -391.6 , 0 );
setMoveKey( spep_2 + 56, 1, -6.1, -420.6 , 0 );
setMoveKey( spep_2 + 58, 1, -5.9, -443.9 , 0 );
setMoveKey( spep_2 + 60, 1, -5.7, -461.6 , 0 );
--setMoveKey( spep_2 + 62, 1, -5.5, -473.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 2, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 4, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 6, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 8, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 10, 1, 2, 2 );
setScaleKey( spep_2 + 12, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 14, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 16, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 18, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 20, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 22, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 24, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 26, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 28, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 34, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 36, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 38, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 40, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 42, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 44, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 46, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 48, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 50, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 52, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 54, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 56, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 58, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 60, 1, 5.29, 5.29 );
--setScaleKey( spep_2 + 62, 1, 5.4, 5.4 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 62, 1, 0 );

--SE
playSe( spep_2+16, 1109);--瞬間移動
playSe( spep_2+44, 8);--カメラ移動

-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 80 , 0, 0, 0, 0, 120 );  --黒　背景

--次の準備
spep_3= spep_2 + 60;

------------------------------------------------------
-- 尻尾振り下ろし、吸収シーン
------------------------------------------------------
-- ** エフェクト等 ** --
absorption = entryEffect( spep_3 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, absorption, 0, 0 , 0 );
setEffMoveKey( spep_3 + 224, absorption, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, absorption, 1.0, 1.0 );
setEffScaleKey( spep_3 + 224, absorption, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, absorption, 0 );
setEffRotateKey( spep_3 + 224, absorption, 0 );
setEffAlphaKey( spep_3 + 0, absorption, 255 );
setEffAlphaKey( spep_3 + 224, absorption, 255 );

--文字エントリー

ctzuo = entryEffectLife( spep_3 + 2,  10012, 48, 0x100, -1, 0, 95.3, 455.8 );

setEffMoveKey( spep_3 + 2, ctzuo, 95.3, 455.8 , 0 );
setEffMoveKey( spep_3 + 4, ctzuo, 62.5, 437.9 , 0 );
setEffMoveKey( spep_3 + 6, ctzuo, 28.6, 414.7 , 0 );
setEffMoveKey( spep_3 + 8, ctzuo, -3.7, 398.9 , 0 );
setEffMoveKey( spep_3 + 10, ctzuo, -37.9, 373.4 , 0 );
setEffMoveKey( spep_3 + 12, ctzuo, -70.1, 359.9 , 0 );
setEffMoveKey( spep_3 + 14, ctzuo, -75.7, 350.6 , 0 );
setEffMoveKey( spep_3 + 16, ctzuo, -79, 355.2 , 0 );
setEffMoveKey( spep_3 + 18, ctzuo, -84.7, 345.9 , 0 );
setEffMoveKey( spep_3 + 20, ctzuo, -88, 350.5 , 0 );
setEffMoveKey( spep_3 + 22, ctzuo, -93.7, 341.2 , 0 );
setEffMoveKey( spep_3 + 24, ctzuo, -97, 345.8 , 0 );
setEffMoveKey( spep_3 + 26, ctzuo, -102.6, 336.5 , 0 );
setEffMoveKey( spep_3 + 28, ctzuo, -105.9, 341.1 , 0 );
setEffMoveKey( spep_3 + 30, ctzuo, -111.6, 331.8 , 0 );
setEffMoveKey( spep_3 + 32, ctzuo, -114.9, 336.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzuo, -120.6, 327.1 , 0 );
setEffMoveKey( spep_3 + 36, ctzuo, -123.9, 331.7 , 0 );
setEffMoveKey( spep_3 + 38, ctzuo, -129.5, 322.4 , 0 );
setEffMoveKey( spep_3 + 40, ctzuo, -132.8, 327 , 0 );
setEffMoveKey( spep_3 + 42, ctzuo, -138.5, 317.7 , 0 );
setEffMoveKey( spep_3 + 44, ctzuo, -131.4, 321.7 , 0 );
setEffMoveKey( spep_3 + 46, ctzuo, -126.6, 304.2 , 0 );
setEffMoveKey( spep_3 + 48, ctzuo, -119.6, 315.8 , 0 );
setEffMoveKey( spep_3 + 50, ctzuo, -113.8, 312.9 , 0 );

a=2.0;
b=4.5;

setEffScaleKey( spep_3 + 2, ctzuo, 0.18 , 0.18  );
setEffScaleKey( spep_3 + 4, ctzuo, 0.3 , 0.3  );
setEffScaleKey( spep_3 + 6, ctzuo, 0.43 , 0.43  );
setEffScaleKey( spep_3 + 8, ctzuo, 0.55 , 0.55  );
setEffScaleKey( spep_3 + 10, ctzuo, 0.68 , 0.68  );
setEffScaleKey( spep_3 + 12, ctzuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_3 + 42, ctzuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_3 + 44, ctzuo, 1.23 + a, 1.23 + a );
setEffScaleKey( spep_3 + 46, ctzuo, 1.65 + a, 1.65 + a );
setEffScaleKey( spep_3 + 48, ctzuo, 2.08 + b, 2.08 + b );
setEffScaleKey( spep_3 + 50, ctzuo, 2.5 + b, 2.5 + b );

setEffRotateKey( spep_3 + 2, ctzuo, -10.8 );
setEffRotateKey( spep_3 + 4, ctzuo, -11.7 );
setEffRotateKey( spep_3 + 6, ctzuo, -12.5 );
setEffRotateKey( spep_3 + 8, ctzuo, -13.3 );
setEffRotateKey( spep_3 + 10, ctzuo, -14.2 );
setEffRotateKey( spep_3 + 12, ctzuo, -15 );
setEffRotateKey( spep_3 + 42, ctzuo, -15 );
setEffRotateKey( spep_3 + 44, ctzuo, -17.5 );
setEffRotateKey( spep_3 + 46, ctzuo, -20 );
setEffRotateKey( spep_3 + 48, ctzuo, -22.5 );
setEffRotateKey( spep_3 + 50, ctzuo, -25 );

setEffAlphaKey( spep_3 + 2, ctzuo, 43 );
setEffAlphaKey( spep_3 + 4, ctzuo, 85 );
setEffAlphaKey( spep_3 + 6, ctzuo, 128 );
setEffAlphaKey( spep_3 + 8, ctzuo, 170 );
setEffAlphaKey( spep_3 + 10, ctzuo, 212 );
setEffAlphaKey( spep_3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_3 + 42, ctzuo, 255 );
setEffAlphaKey( spep_3 + 44, ctzuo, 191 );
setEffAlphaKey( spep_3 + 46, ctzuo, 128 );
setEffAlphaKey( spep_3 + 48, ctzuo, 64 );
setEffAlphaKey( spep_3 + 50, ctzuo, 0 );
--SE
playSe( spep_3+0, 1027);--尻尾を振り落とす
playSe( spep_3+62, 1031);--尻尾を当たる
playSe( spep_3+64, 1001);--打撃
playSe( spep_3+114, 1134);--飲み込む音
playSe( spep_3+158, 1134);--飲み込む音
playSe( spep_3+202, 1134);--飲み込む音

--白フェード
entryFade( spep_3 + 216, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4= spep_3 + 224;

------------------------------------------------------
-- 振り回し、ぶん投げシーン
------------------------------------------------------
-- ** エフェクト等 ** --
turn_f = entryEffect( spep_4 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, turn_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 102, turn_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, turn_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 102, turn_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, turn_f, 0 );
setEffRotateKey( spep_4 + 102, turn_f, 0 );
setEffAlphaKey( spep_4 + 0, turn_f, 255 );
setEffAlphaKey( spep_4 + 102, turn_f, 255 );

-- ** エフェクト等 ** --
turn_b = entryEffect( spep_4 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, turn_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 102, turn_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, turn_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 102, turn_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, turn_b, 0 );
setEffRotateKey( spep_4 + 102, turn_b, 0 );
setEffAlphaKey( spep_4 + 0, turn_b, 255 );
setEffAlphaKey( spep_4 + 102, turn_b, 255 );

--敵側
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4  + 100, 1, 0 );

changeAnime( spep_4  + 0, 1, 106 );
changeAnime( spep_4 - 3 + 68, 1, 105 );

setMoveKey( spep_4  + 0, 1, -174.9, 6.5 , 0 );
--setMoveKey( spep_4 - 3 + 2, 1, -146.8, -0.6 , 0 );
setMoveKey( spep_4 - 3 + 4, 1, -114, -9 , 0 );
setMoveKey( spep_4 - 3 + 6, 1, -83, -16.7 , 0 );
setMoveKey( spep_4 - 3 + 8, 1, -72.8, -13.7 , 0 );
setMoveKey( spep_4 - 3 + 10, 1, -57.5, -12.7 , 0 );
setMoveKey( spep_4 - 3 + 12, 1, -45.9, -7.7 , 0 );
setMoveKey( spep_4 - 3 + 14, 1, -20.6, -4.4 , 0 );
setMoveKey( spep_4 - 3 + 16, 1, -28.6, 2.5 , 0 );
setMoveKey( spep_4 - 3 + 18, 1, -35.9, 8.6 , 0 );
setMoveKey( spep_4 - 3 + 20, 1, -42.6, 14 , 0 );
setMoveKey( spep_4 - 3 + 22, 1, -48.8, 18.9 , 0 );
setMoveKey( spep_4 - 3 + 24, 1, -52.4, 24.2 , 0 );
setMoveKey( spep_4 - 3 + 26, 1, -57.1, 27.5 , 0 );
setMoveKey( spep_4 - 3 + 28, 1, -59.6, 31.5 , 0 );
setMoveKey( spep_4 - 3 + 30, 1, -61.8, 35.1 , 0 );
setMoveKey( spep_4 - 3 + 32, 1, -63.2, 37.9 , 0 );
setMoveKey( spep_4 - 3 + 34, 1, -62.7, 41.5 , 0 );
setMoveKey( spep_4 - 3 + 36, 1, -61.3, 44.2 , 0 );
setMoveKey( spep_4 - 3 + 38, 1, -60.5, 45.3 , 0 );
setMoveKey( spep_4 - 3 + 40, 1, -58.5, 47.3 , 0 );
setMoveKey( spep_4 - 3 + 42, 1, -54.5, 47.9 , 0 );
setMoveKey( spep_4 - 3 + 44, 1, -50.7, 51 , 0 );
setMoveKey( spep_4 - 3 + 46, 1, -46.3, 51.3 , 0 );
setMoveKey( spep_4 - 3 + 48, 1, -40.8, 52.3 , 0 );
setMoveKey( spep_4 - 3 + 50, 1, -34.5, 53.1 , 0 );
setMoveKey( spep_4 - 3 + 52, 1, -33, 51.1 , 0 );
setMoveKey( spep_4 - 3 + 54, 1, -40.9, 44.6 , 0 );
setMoveKey( spep_4 - 3 + 56, 1, -58.8, 33.5 , 0 );
setMoveKey( spep_4 - 3 + 58, 1, -85.9, 18.3 , 0 );
setMoveKey( spep_4 - 3 + 60, 1, -34.3, 53.1 , 0 );
setMoveKey( spep_4 - 3 + 62, 1, -133.9, 43.6 , 0 );
setMoveKey( spep_4 - 3 + 64, 1, -182.5, 50.4 , 0 );
setMoveKey( spep_4 - 3 + 67, 1, -200.2, 72.7 , 0 );
setMoveKey( spep_4 - 3 + 68, 1, 211.7, 159 , 0 );
setMoveKey( spep_4 - 3 + 70, 1, 213.3, 166.9 , 0 );
setMoveKey( spep_4 - 3 + 72, 1, 214.4, 174.5 , 0 );
setMoveKey( spep_4 - 3 + 74, 1, 215.3, 181.5 , 0 );
setMoveKey( spep_4 - 3 + 76, 1, 216.1, 187.8 , 0 );
setMoveKey( spep_4 - 3 + 78, 1, 216.7, 193.7 , 0 );
setMoveKey( spep_4 - 3 + 80, 1, 217.2, 199.1 , 0 );
setMoveKey( spep_4 - 3 + 82, 1, 217.6, 203.9 , 0 );
setMoveKey( spep_4 - 3 + 84, 1, 217.9, 208.3 , 0 );
setMoveKey( spep_4 - 3 + 86, 1, 218.1, 212.1 , 0 );
setMoveKey( spep_4 - 3 + 88, 1, 218.3, 215.4 , 0 );
setMoveKey( spep_4 - 3 + 90, 1, 218.4, 218.2 , 0 );
setMoveKey( spep_4 - 3 + 92, 1, 218.5, 220.4 , 0 );
setMoveKey( spep_4 - 3 + 94, 1, 218.6, 222.5 , 0 );
setMoveKey( spep_4 - 3 + 96, 1, 218.6, 223.7 , 0 );
setMoveKey( spep_4 - 3 + 98, 1, 218.6, 224.3 , 0 );
setMoveKey( spep_4  + 100, 1, 218.6, 224.4 , 0 );

setScaleKey( spep_4  + 0, 1, 1.68, 1.68 );
--setScaleKey( spep_4 - 3 + 2, 1, 1.75, 1.75 );
setScaleKey( spep_4 - 3 + 4, 1, 1.79, 1.79 );
setScaleKey( spep_4 - 3 + 6, 1, 1.8, 1.8 );
setScaleKey( spep_4 - 3 + 8, 1, 1.9, 1.9 );
setScaleKey( spep_4 - 3 + 10, 1, 1.99, 1.99 );
setScaleKey( spep_4 - 3 + 12, 1, 2.06, 2.06 );
setScaleKey( spep_4 - 3 + 14, 1, 2.16, 2.16 );
setScaleKey( spep_4 - 3 + 16, 1, 2.23, 2.23 );
setScaleKey( spep_4 - 3 + 18, 1, 2.3, 2.3 );
setScaleKey( spep_4 - 3 + 20, 1, 2.38, 2.38 );
setScaleKey( spep_4 - 3 + 22, 1, 2.45, 2.45 );
setScaleKey( spep_4 - 3 + 24, 1, 2.5, 2.5 );
setScaleKey( spep_4 - 3 + 26, 1, 2.57, 2.57 );
setScaleKey( spep_4 - 3 + 28, 1, 2.62, 2.62 );
setScaleKey( spep_4 - 3 + 30, 1, 2.66, 2.66 );
setScaleKey( spep_4 - 3 + 32, 1, 2.71, 2.71 );
setScaleKey( spep_4 - 3 + 34, 1, 2.74, 2.74 );
setScaleKey( spep_4 - 3 + 36, 1, 2.76, 2.76 );
setScaleKey( spep_4 - 3 + 38, 1, 2.81, 2.81 );
setScaleKey( spep_4 - 3 + 40, 1, 2.83, 2.83 );
setScaleKey( spep_4 - 3 + 42, 1, 2.86, 2.86 );
setScaleKey( spep_4 - 3 + 44, 1, 2.86, 2.86 );
setScaleKey( spep_4 - 3 + 46, 1, 2.88, 2.88 );
setScaleKey( spep_4 - 3 + 50, 1, 2.88, 2.88 );
setScaleKey( spep_4 - 3 + 52, 1, 2.89, 2.89 );
setScaleKey( spep_4 - 3 + 54, 1, 2.92, 2.92 );
setScaleKey( spep_4 - 3 + 56, 1, 2.97, 2.97 );
setScaleKey( spep_4 - 3 + 58, 1, 3.03, 3.03 );
setScaleKey( spep_4 - 3 + 60, 1, 3.28, 3.28 );
setScaleKey( spep_4 - 3 + 62, 1, 2.81, 2.81 );
setScaleKey( spep_4 - 3 + 64, 1, 2.59, 2.59 );
setScaleKey( spep_4 - 3 + 67, 1, 2.45, 2.45 );
setScaleKey( spep_4 - 3 + 68, 1, 2.1, 2.1 );
setScaleKey( spep_4 - 3 + 70, 1, 1.86, 1.86 );
setScaleKey( spep_4 - 3 + 72, 1, 1.64, 1.64 );
setScaleKey( spep_4 - 3 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_4 - 3 + 76, 1, 1.26, 1.25 );
setScaleKey( spep_4 - 3 + 78, 1, 1.08, 1.07 );
setScaleKey( spep_4 - 3 + 80, 1, 0.92, 0.91 );
setScaleKey( spep_4 - 3 + 82, 1, 0.78, 0.77 );
setScaleKey( spep_4 - 3 + 84, 1, 0.64, 0.64 );
setScaleKey( spep_4 - 3 + 86, 1, 0.52, 0.52 );
setScaleKey( spep_4 - 3 + 88, 1, 0.42, 0.42 );
setScaleKey( spep_4 - 3 + 90, 1, 0.34, 0.34 );
setScaleKey( spep_4 - 3 + 92, 1, 0.27, 0.27 );
setScaleKey( spep_4 - 3 + 94, 1, 0.22, 0.22 );
setScaleKey( spep_4 - 3 + 96, 1, 0.18, 0.18 );
setScaleKey( spep_4 - 3 + 98, 1, 0.16, 0.16 );
setScaleKey( spep_4  + 100, 1, 0.15, 0.15 );

setRotateKey( spep_4  + 0, 1, -82.4 );
--setRotateKey( spep_4 - 3 + 2, 1, -81 );
setRotateKey( spep_4 - 3 + 4, 1, -79.6 );
setRotateKey( spep_4 - 3 + 6, 1, -78.3 );
setRotateKey( spep_4 - 3 + 8, 1, -76.5 );
setRotateKey( spep_4 - 3 + 10, 1, -74.7 );
setRotateKey( spep_4 - 3 + 12, 1, -73 );
setRotateKey( spep_4 - 3 + 14, 1, -71.2 );
setRotateKey( spep_4 - 3 + 16, 1, -70.7 );
setRotateKey( spep_4 - 3 + 18, 1, -70.3 );
setRotateKey( spep_4 - 3 + 20, 1, -70 );
setRotateKey( spep_4 - 3 + 22, 1, -69.5 );
setRotateKey( spep_4 - 3 + 24, 1, -69.2 );
setRotateKey( spep_4 - 3 + 26, 1, -68.8 );
setRotateKey( spep_4 - 3 + 28, 1, -68.5 );
setRotateKey( spep_4 - 3 + 30, 1, -68.1 );
setRotateKey( spep_4 - 3 + 32, 1, -67.8 );
setRotateKey( spep_4 - 3 + 34, 1, -67.5 );
setRotateKey( spep_4 - 3 + 36, 1, -67.4 );
setRotateKey( spep_4 - 3 + 38, 1, -67.2 );
setRotateKey( spep_4 - 3 + 40, 1, -66.9 );
setRotateKey( spep_4 - 3 + 42, 1, -66.7 );
setRotateKey( spep_4 - 3 + 44, 1, -66.6 );
setRotateKey( spep_4 - 3 + 46, 1, -66.5 );
setRotateKey( spep_4 - 3 + 48, 1, -66.4 );
setRotateKey( spep_4 - 3 + 50, 1, -66.4 );
setRotateKey( spep_4 - 3 + 52, 1, -66.3 );
setRotateKey( spep_4 - 3 + 54, 1, -66.2 );
setRotateKey( spep_4 - 3 + 56, 1, -66.1 );
setRotateKey( spep_4 - 3 + 58, 1, -66 );
setRotateKey( spep_4 - 3 + 60, 1, -61 );
setRotateKey( spep_4 - 3 + 62, 1, -54.8 );
setRotateKey( spep_4 - 3 + 64, 1, -48.9 );
setRotateKey( spep_4 - 3 + 67, 1, -43.4 );
setRotateKey( spep_4 - 3 + 68, 1, 14.8 );
setRotateKey( spep_4 - 3 + 70, 1, 5.6 );
setRotateKey( spep_4 - 3 + 72, 1, -3.1 );
setRotateKey( spep_4 - 3 + 74, 1, -11.2 );
setRotateKey( spep_4 - 3 + 76, 1, -18.7 );
setRotateKey( spep_4 - 3 + 78, 1, -25.7 );
setRotateKey( spep_4 - 3 + 80, 1, -31.9 );
setRotateKey( spep_4 - 3 + 82, 1, -37.7 );
setRotateKey( spep_4 - 3 + 84, 1, -42.7 );
setRotateKey( spep_4 - 3 + 86, 1, -47.3 );
setRotateKey( spep_4 - 3 + 88, 1, -51.2 );
setRotateKey( spep_4 - 3 + 90, 1, -54.5 );
setRotateKey( spep_4 - 3 + 92, 1, -57.2 );
setRotateKey( spep_4 - 3 + 94, 1, -59.3 );
setRotateKey( spep_4 - 3 + 96, 1, -60.9 );
setRotateKey( spep_4 - 3 + 98, 1, -61.7 );
setRotateKey( spep_4  + 100, 1, -62 );

--集中線
shuchusen4 = entryEffectLife( spep_4  + 0,  906, 66 - 3, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_4  + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 - 3 + 66, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4  + 0, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_4 - 3 + 66, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_4  + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 - 3 + 66, shuchusen4, 180 );

setEffAlphaKey( spep_4  + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 - 3 + 66, shuchusen4, 255 );

--文字エントリー
ctgyun = entryEffectLife( spep_4 -3 + 68,  10007, 26, 0x100, -1, 0, -10.9, -300 );

setEffMoveKey( spep_4 -3 + 68, ctgyun, -10.9, -300 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctgyun, 50.9, -239.2 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctgyun, 109.9, -171 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctgyun, 173.7, -115.6 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctgyun, 176, -107 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctgyun, 185.4, -116.7 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctgyun, 187.7, -108.1 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctgyun, 197.1, -117.8 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctgyun, 199.5, -109.2 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctgyun, 227.2, -81 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctgyun, 246.7, -30.7 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctgyun, 275.8, -6.1 , 0 );
setEffMoveKey( spep_4 -3 + 92, ctgyun, 293.9, 47.8 , 0 );
setEffMoveKey( spep_4 -3 + 94, ctgyun, 317.5, 87.1 , 0 );

setEffScaleKey( spep_4 -3 + 68, ctgyun, 0.2, 0.2 );
setEffScaleKey( spep_4 -3 + 70, ctgyun, 0.8, 0.8 );
setEffScaleKey( spep_4 -3 + 72, ctgyun, 1.4, 1.4 );
setEffScaleKey( spep_4 -3 + 74, ctgyun, 2, 2 );
setEffScaleKey( spep_4 -3 + 84, ctgyun, 2, 2 );
setEffScaleKey( spep_4 -3 + 86, ctgyun, 2.4, 2.4 );
setEffScaleKey( spep_4 -3 + 88, ctgyun, 2.8, 2.8 );
setEffScaleKey( spep_4 -3 + 90, ctgyun, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 92, ctgyun, 3.6, 3.6 );
setEffScaleKey( spep_4 -3 + 94, ctgyun, 4, 4 );

setEffRotateKey( spep_4 -3 + 68, ctgyun, 20 );
setEffRotateKey( spep_4 -3 + 94, ctgyun, 20 );

setEffAlphaKey( spep_4 -3 + 68, ctgyun, 255 );
setEffAlphaKey( spep_4 -3 + 84, ctgyun, 255 );
setEffAlphaKey( spep_4 -3 + 86, ctgyun, 204 );
setEffAlphaKey( spep_4 -3 + 88, ctgyun, 153 );
setEffAlphaKey( spep_4 -3 + 90, ctgyun, 102 );
setEffAlphaKey( spep_4 -3 + 92, ctgyun, 51 );
setEffAlphaKey( spep_4 -3 + 94, ctgyun, 0 );

--SE
playSe( spep_4, 8);--振り回す
playSe( spep_4+66, 1012);--投げる
--SE2=playSe( spep_4+68, 1121);--飛んでいく
--stopSe( spep_4+104, SE2, 30 );

--白フェード
entryFade( spep_4 + 90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5= spep_4 + 102;
------------------------------------------------------
--  ガッ
------------------------------------------------------

-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );
]]

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, bg, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 112, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 112, bg, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_5 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_5 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 0, 1023 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 14 );
endPhase( spep_5 + 100 );

else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、太陽拳シーン
------------------------------------------------------
--はじめの準備
spep_0= 0;

-- ** エフェクト等 ** --
san = entryEffect( spep_0 + 0, SP_01x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, san, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, san, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, san, 1.0, 1.0 );
setEffScaleKey( spep_0 + 224, san, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, san, 0 );
setEffRotateKey( spep_0 + 224, san, 0 );
setEffAlphaKey( spep_0 + 0, san, 255 );
setEffAlphaKey( spep_0 + 224, san, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    --stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--集中線
shuchusen2 = entryEffectLife( spep_0 -3 + 124,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 124, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 222, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 124, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_0 -3 + 222, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_0 -3 + 124, shuchusen2, 180 );
setEffRotateKey( spep_0 -3 + 222, shuchusen2, 180 );

setEffAlphaKey( spep_0 -3 + 124, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 222, shuchusen2, 255 );

--文字エントリー
ctka = entryEffectLife( spep_0 - 3 + 124,  10004, 24, 0x100, -1, 0, -165.2, 303.7 );
setEffMoveKey( spep_0 - 3 + 124, ctka, -165.2, 303.7 , 0 );
setEffMoveKey( spep_0 - 3 + 126, ctka, -167.6, 336.4 , 0 );
setEffMoveKey( spep_0 - 3 + 128, ctka, -163.2, 368.3 , 0 );
setEffMoveKey( spep_0 - 3 + 130, ctka, -169.4, 401.3 , 0 );
setEffMoveKey( spep_0 - 3 + 132, ctka, -161.9, 400.5 , 0 );
setEffMoveKey( spep_0 - 3 + 134, ctka, -169.4, 401.3 , 0 );
setEffMoveKey( spep_0 - 3 + 136, ctka, -161.9, 400.5 , 0 );
setEffMoveKey( spep_0 - 3 + 138, ctka, -169.4, 401.3 , 0 );
setEffMoveKey( spep_0 - 3 + 140, ctka, -161.9, 400.5 , 0 );
setEffMoveKey( spep_0 - 3 + 142, ctka, -169.4, 401.3 , 0 );
setEffMoveKey( spep_0 - 3 + 144, ctka, -160.4, 400.1 , 0 );
setEffMoveKey( spep_0 - 3 + 146, ctka, -170.2, 401 , 0 );
setEffMoveKey( spep_0 - 3 + 148, ctka, -170.6, 400.7 , 0 );

setEffScaleKey( spep_0 - 3 + 124, ctka, 0.3, 0.3 );
setEffScaleKey( spep_0 - 3 + 126, ctka, 0.87, 0.87 );
setEffScaleKey( spep_0 - 3 + 128, ctka, 1.43, 1.43 );
setEffScaleKey( spep_0 - 3 + 130, ctka, 2, 2 );
setEffScaleKey( spep_0 - 3 + 142, ctka, 2, 2 );
setEffScaleKey( spep_0 - 3 + 144, ctka, 2.5, 2.5 );
setEffScaleKey( spep_0 - 3 + 146, ctka, 3, 3 );
setEffScaleKey( spep_0 - 3 + 148, ctka, 3.5, 3.5 );

setEffRotateKey( spep_0 - 3 + 124, ctka, -20 );
setEffRotateKey( spep_0 - 3 + 148, ctka, -20 );

setEffAlphaKey( spep_0 - 3 + 124, ctka, 255 );
setEffAlphaKey( spep_0 - 3 + 142, ctka, 255 );
setEffAlphaKey( spep_0 - 3 + 144, ctka, 170 );
setEffAlphaKey( spep_0 - 3 + 146, ctka, 85 );
setEffAlphaKey( spep_0 - 3 + 148, ctka, 0 );


--***カットイン***
--speff = entryEffect(  spep_0 + 12,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_0 + 12,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 + 24, 190006, 74, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 + 24,  ctgogo,  0,  540);
setEffMoveKey(  spep_0 + 98,  ctgogo,  0,  540);

setEffAlphaKey( spep_0 +  24, ctgogo, 0 );
setEffAlphaKey( spep_0 +  25, ctgogo, 255 );
setEffAlphaKey( spep_0 +  26, ctgogo, 255 );
setEffAlphaKey( spep_0 +  86, ctgogo, 255 );
setEffAlphaKey( spep_0 +  88, ctgogo, 255 );
setEffAlphaKey( spep_0 +  90, ctgogo, 191 );
setEffAlphaKey( spep_0 +  92, ctgogo, 128 );
setEffAlphaKey( spep_0 +  94, ctgogo, 64 );
setEffAlphaKey( spep_0 +  97, ctgogo, 0 );
setEffAlphaKey( spep_0 +  98, ctgogo, 0 );

setEffRotateKey(  spep_0 + 24,  ctgogo,  0);
setEffRotateKey(  spep_0 + 98,  ctgogo,  0);

setEffScaleKey(  spep_0 + 24,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 + 88,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 + 98,  ctgogo, -1.07, 1.07 );

--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 140, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 146, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 152, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 158, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 164, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 170, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 176, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 182, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 + 212, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_0+24, 1018);--ゴゴゴ
playSe( spep_0+122, 1127);--太陽拳
SE1=playSe( spep_0+142, 1128);--太陽拳
stopSe( spep_0+214, SE1, 30 );

--次の準備
spep_1= spep_0 + 224;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 敵後ろ回り込みシーン
------------------------------------------------------
-- ** エフェクト等 ** --
behind = entryEffect( spep_2 + 0, SP_02x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, behind, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, behind, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, behind, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, behind, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, behind, 0 );
setEffRotateKey( spep_2 + 60, behind, 0 );
setEffAlphaKey( spep_2 + 0, behind, 255 );
setEffAlphaKey( spep_2 + 60, behind, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 - 3 + 44,  906, 18, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 - 3 + 44, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 62, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 - 3 + 44, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_2 - 3 + 62, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_2 - 3 + 44, shuchusen3, 180 );
setEffRotateKey( spep_2 - 3 + 62, shuchusen3, 180 );

setEffAlphaKey( spep_2 - 3 + 44, shuchusen3, 255 );
setEffAlphaKey( spep_2 - 3 + 62, shuchusen3, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 60, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, -6, -109.2 , 0 );
setMoveKey( spep_2 + 2, 1, -6.2, -112.9 , 0 );
setMoveKey( spep_2 + 4, 1, -6.4, -116.6 , 0 );
setMoveKey( spep_2 + 6, 1, -6.5, -120.3 , 0 );
setMoveKey( spep_2 + 8, 1, -6.7, -124 , 0 );
setMoveKey( spep_2 + 10, 1, -6.9, -127.7 , 0 );
setMoveKey( spep_2 + 12, 1, -7, -131.3 , 0 );
setMoveKey( spep_2 + 14, 1, -7.2, -135 , 0 );
setMoveKey( spep_2 + 16, 1, -7.3, -138.7 , 0 );
setMoveKey( spep_2 + 18, 1, -7.5, -142.4 , 0 );
setMoveKey( spep_2 + 20, 1, -7.7, -146.1 , 0 );
setMoveKey( spep_2 + 22, 1, -7.8, -149.8 , 0 );
setMoveKey( spep_2 + 24, 1, -8, -153.5 , 0 );
setMoveKey( spep_2 + 26, 1, -8.2, -157.3 , 0 );
setMoveKey( spep_2 + 28, 1, -8.3, -161 , 0 );
setMoveKey( spep_2 + 30, 1, -8.3, -161 , 0 );
setMoveKey( spep_2 + 32, 1, -8.3, -161.1 , 0 );
setMoveKey( spep_2 + 34, 1, -8.3, -161.1 , 0 );
setMoveKey( spep_2 + 36, 1, -8.1, -161.9 , 0 );
setMoveKey( spep_2 + 38, 1, -7.9, -162.8 , 0 );
setMoveKey( spep_2 + 40, 1, -7.7, -163.6 , 0 );
setMoveKey( spep_2 + 42, 1, -7.6, -164.5 , 0 );
setMoveKey( spep_2 + 44, 1, -7.2, -165.2 , 0 );
setMoveKey( spep_2 + 46, 1, -7, -221 , 0 );
setMoveKey( spep_2 + 48, 1, -6.8, -271.7 , 0 );
setMoveKey( spep_2 + 50, 1, -6.6, -317 , 0 );
setMoveKey( spep_2 + 52, 1, -6.5, -357 , 0 );
setMoveKey( spep_2 + 54, 1, -6.3, -391.6 , 0 );
setMoveKey( spep_2 + 56, 1, -6.1, -420.6 , 0 );
setMoveKey( spep_2 + 58, 1, -5.9, -443.9 , 0 );
setMoveKey( spep_2 + 60, 1, -5.7, -461.6 , 0 );
--setMoveKey( spep_2 + 62, 1, -5.5, -473.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 2, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 4, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 6, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 8, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 10, 1, 2, 2 );
setScaleKey( spep_2 + 12, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 14, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 16, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 18, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 20, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 22, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 24, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 26, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 28, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 34, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 36, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 38, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 40, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 42, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 44, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 46, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 48, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 50, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 52, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 54, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 56, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 58, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 60, 1, 5.29, 5.29 );
--setScaleKey( spep_2 + 62, 1, 5.4, 5.4 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 62, 1, 0 );

--SE
playSe( spep_2+16, 1109);--瞬間移動
playSe( spep_2+44, 8);--カメラ移動

-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 80 , 0, 0, 0, 0, 120 );  --黒　背景

--次の準備
spep_3= spep_2 + 60;

------------------------------------------------------
-- 尻尾振り下ろし、吸収シーン
------------------------------------------------------
-- ** エフェクト等 ** --
absorption = entryEffect( spep_3 + 0, SP_03x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, absorption, 0, 0 , 0 );
setEffMoveKey( spep_3 + 224, absorption, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, absorption, 1.0, 1.0 );
setEffScaleKey( spep_3 + 224, absorption, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, absorption, 0 );
setEffRotateKey( spep_3 + 224, absorption, 0 );
setEffAlphaKey( spep_3 + 0, absorption, 255 );
setEffAlphaKey( spep_3 + 224, absorption, 255 );

--文字エントリー

ctzuo = entryEffectLife( spep_3 + 2,  10012, 48, 0x100, -1, 0, 95.3, 455.8 );

setEffMoveKey( spep_3 + 2, ctzuo, 95.3, 455.8 , 0 );
setEffMoveKey( spep_3 + 4, ctzuo, 62.5, 437.9 , 0 );
setEffMoveKey( spep_3 + 6, ctzuo, 28.6, 414.7 , 0 );
setEffMoveKey( spep_3 + 8, ctzuo, -3.7, 398.9 , 0 );
setEffMoveKey( spep_3 + 10, ctzuo, -37.9, 373.4 , 0 );
setEffMoveKey( spep_3 + 12, ctzuo, -70.1, 359.9 , 0 );
setEffMoveKey( spep_3 + 14, ctzuo, -75.7, 350.6 , 0 );
setEffMoveKey( spep_3 + 16, ctzuo, -79, 355.2 , 0 );
setEffMoveKey( spep_3 + 18, ctzuo, -84.7, 345.9 , 0 );
setEffMoveKey( spep_3 + 20, ctzuo, -88, 350.5 , 0 );
setEffMoveKey( spep_3 + 22, ctzuo, -93.7, 341.2 , 0 );
setEffMoveKey( spep_3 + 24, ctzuo, -97, 345.8 , 0 );
setEffMoveKey( spep_3 + 26, ctzuo, -102.6, 336.5 , 0 );
setEffMoveKey( spep_3 + 28, ctzuo, -105.9, 341.1 , 0 );
setEffMoveKey( spep_3 + 30, ctzuo, -111.6, 331.8 , 0 );
setEffMoveKey( spep_3 + 32, ctzuo, -114.9, 336.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzuo, -120.6, 327.1 , 0 );
setEffMoveKey( spep_3 + 36, ctzuo, -123.9, 331.7 , 0 );
setEffMoveKey( spep_3 + 38, ctzuo, -129.5, 322.4 , 0 );
setEffMoveKey( spep_3 + 40, ctzuo, -132.8, 327 , 0 );
setEffMoveKey( spep_3 + 42, ctzuo, -138.5, 317.7 , 0 );
setEffMoveKey( spep_3 + 44, ctzuo, -131.4, 321.7 , 0 );
setEffMoveKey( spep_3 + 46, ctzuo, -126.6, 304.2 , 0 );
setEffMoveKey( spep_3 + 48, ctzuo, -119.6, 315.8 , 0 );
setEffMoveKey( spep_3 + 50, ctzuo, -113.8, 312.9 , 0 );

a=2.0;
b=4.5;

setEffScaleKey( spep_3 + 2, ctzuo, 0.18 , 0.18  );
setEffScaleKey( spep_3 + 4, ctzuo, 0.3 , 0.3  );
setEffScaleKey( spep_3 + 6, ctzuo, 0.43 , 0.43  );
setEffScaleKey( spep_3 + 8, ctzuo, 0.55 , 0.55  );
setEffScaleKey( spep_3 + 10, ctzuo, 0.68 , 0.68  );
setEffScaleKey( spep_3 + 12, ctzuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_3 + 42, ctzuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_3 + 44, ctzuo, 1.23 + a, 1.23 + a );
setEffScaleKey( spep_3 + 46, ctzuo, 1.65 + a, 1.65 + a );
setEffScaleKey( spep_3 + 48, ctzuo, 2.08 + b, 2.08 + b );
setEffScaleKey( spep_3 + 50, ctzuo, 2.5 + b, 2.5 + b );

setEffRotateKey( spep_3 + 2, ctzuo, -10.8 );
setEffRotateKey( spep_3 + 4, ctzuo, -11.7 );
setEffRotateKey( spep_3 + 6, ctzuo, -12.5 );
setEffRotateKey( spep_3 + 8, ctzuo, -13.3 );
setEffRotateKey( spep_3 + 10, ctzuo, -14.2 );
setEffRotateKey( spep_3 + 12, ctzuo, -15 );
setEffRotateKey( spep_3 + 42, ctzuo, -15 );
setEffRotateKey( spep_3 + 44, ctzuo, -17.5 );
setEffRotateKey( spep_3 + 46, ctzuo, -20 );
setEffRotateKey( spep_3 + 48, ctzuo, -22.5 );
setEffRotateKey( spep_3 + 50, ctzuo, -25 );

setEffAlphaKey( spep_3 + 2, ctzuo, 43 );
setEffAlphaKey( spep_3 + 4, ctzuo, 85 );
setEffAlphaKey( spep_3 + 6, ctzuo, 128 );
setEffAlphaKey( spep_3 + 8, ctzuo, 170 );
setEffAlphaKey( spep_3 + 10, ctzuo, 212 );
setEffAlphaKey( spep_3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_3 + 42, ctzuo, 255 );
setEffAlphaKey( spep_3 + 44, ctzuo, 191 );
setEffAlphaKey( spep_3 + 46, ctzuo, 128 );
setEffAlphaKey( spep_3 + 48, ctzuo, 64 );
setEffAlphaKey( spep_3 + 50, ctzuo, 0 );
--SE
playSe( spep_3+0, 1027);--尻尾を振り落とす
playSe( spep_3+62, 1031);--尻尾を当たる
playSe( spep_3+64, 1001);--打撃
playSe( spep_3+114, 1134);--飲み込む音
playSe( spep_3+158, 1134);--飲み込む音
playSe( spep_3+202, 1134);--飲み込む音

--白フェード
entryFade( spep_3 + 216, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4= spep_3 + 224;

------------------------------------------------------
-- 振り回し、ぶん投げシーン
------------------------------------------------------
-- ** エフェクト等 ** --
turn_f = entryEffect( spep_4 + 0, SP_05x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, turn_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 102, turn_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, turn_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 102, turn_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, turn_f, 0 );
setEffRotateKey( spep_4 + 102, turn_f, 0 );
setEffAlphaKey( spep_4 + 0, turn_f, 255 );
setEffAlphaKey( spep_4 + 102, turn_f, 255 );

-- ** エフェクト等 ** --
turn_b = entryEffect( spep_4 + 0, SP_04x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, turn_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 102, turn_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, turn_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 102, turn_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, turn_b, 0 );
setEffRotateKey( spep_4 + 102, turn_b, 0 );
setEffAlphaKey( spep_4 + 0, turn_b, 255 );
setEffAlphaKey( spep_4 + 102, turn_b, 255 );

--敵側
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4  + 100, 1, 0 );

changeAnime( spep_4  + 0, 1, 106 );
changeAnime( spep_4 - 3 + 68, 1, 105 );

setMoveKey( spep_4  + 0, 1, -174.9, 6.5 , 0 );
--setMoveKey( spep_4 - 3 + 2, 1, -146.8, -0.6 , 0 );
setMoveKey( spep_4 - 3 + 4, 1, -114, -9 , 0 );
setMoveKey( spep_4 - 3 + 6, 1, -83, -16.7 , 0 );
setMoveKey( spep_4 - 3 + 8, 1, -72.8, -13.7 , 0 );
setMoveKey( spep_4 - 3 + 10, 1, -57.5, -12.7 , 0 );
setMoveKey( spep_4 - 3 + 12, 1, -45.9, -7.7 , 0 );
setMoveKey( spep_4 - 3 + 14, 1, -20.6, -4.4 , 0 );
setMoveKey( spep_4 - 3 + 16, 1, -28.6, 2.5 , 0 );
setMoveKey( spep_4 - 3 + 18, 1, -35.9, 8.6 , 0 );
setMoveKey( spep_4 - 3 + 20, 1, -42.6, 14 , 0 );
setMoveKey( spep_4 - 3 + 22, 1, -48.8, 18.9 , 0 );
setMoveKey( spep_4 - 3 + 24, 1, -52.4, 24.2 , 0 );
setMoveKey( spep_4 - 3 + 26, 1, -57.1, 27.5 , 0 );
setMoveKey( spep_4 - 3 + 28, 1, -59.6, 31.5 , 0 );
setMoveKey( spep_4 - 3 + 30, 1, -61.8, 35.1 , 0 );
setMoveKey( spep_4 - 3 + 32, 1, -63.2, 37.9 , 0 );
setMoveKey( spep_4 - 3 + 34, 1, -62.7, 41.5 , 0 );
setMoveKey( spep_4 - 3 + 36, 1, -61.3, 44.2 , 0 );
setMoveKey( spep_4 - 3 + 38, 1, -60.5, 45.3 , 0 );
setMoveKey( spep_4 - 3 + 40, 1, -58.5, 47.3 , 0 );
setMoveKey( spep_4 - 3 + 42, 1, -54.5, 47.9 , 0 );
setMoveKey( spep_4 - 3 + 44, 1, -50.7, 51 , 0 );
setMoveKey( spep_4 - 3 + 46, 1, -46.3, 51.3 , 0 );
setMoveKey( spep_4 - 3 + 48, 1, -40.8, 52.3 , 0 );
setMoveKey( spep_4 - 3 + 50, 1, -34.5, 53.1 , 0 );
setMoveKey( spep_4 - 3 + 52, 1, -33, 51.1 , 0 );
setMoveKey( spep_4 - 3 + 54, 1, -40.9, 44.6 , 0 );
setMoveKey( spep_4 - 3 + 56, 1, -58.8, 33.5 , 0 );
setMoveKey( spep_4 - 3 + 58, 1, -85.9, 18.3 , 0 );
setMoveKey( spep_4 - 3 + 60, 1, -34.3, 53.1 , 0 );
setMoveKey( spep_4 - 3 + 62, 1, -133.9, 43.6 , 0 );
setMoveKey( spep_4 - 3 + 64, 1, -182.5, 50.4 , 0 );
setMoveKey( spep_4 - 3 + 67, 1, -200.2, 72.7 , 0 );
setMoveKey( spep_4 - 3 + 68, 1, 211.7, 159 , 0 );
setMoveKey( spep_4 - 3 + 70, 1, 213.3, 166.9 , 0 );
setMoveKey( spep_4 - 3 + 72, 1, 214.4, 174.5 , 0 );
setMoveKey( spep_4 - 3 + 74, 1, 215.3, 181.5 , 0 );
setMoveKey( spep_4 - 3 + 76, 1, 216.1, 187.8 , 0 );
setMoveKey( spep_4 - 3 + 78, 1, 216.7, 193.7 , 0 );
setMoveKey( spep_4 - 3 + 80, 1, 217.2, 199.1 , 0 );
setMoveKey( spep_4 - 3 + 82, 1, 217.6, 203.9 , 0 );
setMoveKey( spep_4 - 3 + 84, 1, 217.9, 208.3 , 0 );
setMoveKey( spep_4 - 3 + 86, 1, 218.1, 212.1 , 0 );
setMoveKey( spep_4 - 3 + 88, 1, 218.3, 215.4 , 0 );
setMoveKey( spep_4 - 3 + 90, 1, 218.4, 218.2 , 0 );
setMoveKey( spep_4 - 3 + 92, 1, 218.5, 220.4 , 0 );
setMoveKey( spep_4 - 3 + 94, 1, 218.6, 222.5 , 0 );
setMoveKey( spep_4 - 3 + 96, 1, 218.6, 223.7 , 0 );
setMoveKey( spep_4 - 3 + 98, 1, 218.6, 224.3 , 0 );
setMoveKey( spep_4  + 100, 1, 218.6, 224.4 , 0 );

setScaleKey( spep_4  + 0, 1, 1.68, 1.68 );
--setScaleKey( spep_4 - 3 + 2, 1, 1.75, 1.75 );
setScaleKey( spep_4 - 3 + 4, 1, 1.79, 1.79 );
setScaleKey( spep_4 - 3 + 6, 1, 1.8, 1.8 );
setScaleKey( spep_4 - 3 + 8, 1, 1.9, 1.9 );
setScaleKey( spep_4 - 3 + 10, 1, 1.99, 1.99 );
setScaleKey( spep_4 - 3 + 12, 1, 2.06, 2.06 );
setScaleKey( spep_4 - 3 + 14, 1, 2.16, 2.16 );
setScaleKey( spep_4 - 3 + 16, 1, 2.23, 2.23 );
setScaleKey( spep_4 - 3 + 18, 1, 2.3, 2.3 );
setScaleKey( spep_4 - 3 + 20, 1, 2.38, 2.38 );
setScaleKey( spep_4 - 3 + 22, 1, 2.45, 2.45 );
setScaleKey( spep_4 - 3 + 24, 1, 2.5, 2.5 );
setScaleKey( spep_4 - 3 + 26, 1, 2.57, 2.57 );
setScaleKey( spep_4 - 3 + 28, 1, 2.62, 2.62 );
setScaleKey( spep_4 - 3 + 30, 1, 2.66, 2.66 );
setScaleKey( spep_4 - 3 + 32, 1, 2.71, 2.71 );
setScaleKey( spep_4 - 3 + 34, 1, 2.74, 2.74 );
setScaleKey( spep_4 - 3 + 36, 1, 2.76, 2.76 );
setScaleKey( spep_4 - 3 + 38, 1, 2.81, 2.81 );
setScaleKey( spep_4 - 3 + 40, 1, 2.83, 2.83 );
setScaleKey( spep_4 - 3 + 42, 1, 2.86, 2.86 );
setScaleKey( spep_4 - 3 + 44, 1, 2.86, 2.86 );
setScaleKey( spep_4 - 3 + 46, 1, 2.88, 2.88 );
setScaleKey( spep_4 - 3 + 50, 1, 2.88, 2.88 );
setScaleKey( spep_4 - 3 + 52, 1, 2.89, 2.89 );
setScaleKey( spep_4 - 3 + 54, 1, 2.92, 2.92 );
setScaleKey( spep_4 - 3 + 56, 1, 2.97, 2.97 );
setScaleKey( spep_4 - 3 + 58, 1, 3.03, 3.03 );
setScaleKey( spep_4 - 3 + 60, 1, 3.28, 3.28 );
setScaleKey( spep_4 - 3 + 62, 1, 2.81, 2.81 );
setScaleKey( spep_4 - 3 + 64, 1, 2.59, 2.59 );
setScaleKey( spep_4 - 3 + 67, 1, 2.45, 2.45 );
setScaleKey( spep_4 - 3 + 68, 1, 2.1, 2.1 );
setScaleKey( spep_4 - 3 + 70, 1, 1.86, 1.86 );
setScaleKey( spep_4 - 3 + 72, 1, 1.64, 1.64 );
setScaleKey( spep_4 - 3 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_4 - 3 + 76, 1, 1.26, 1.25 );
setScaleKey( spep_4 - 3 + 78, 1, 1.08, 1.07 );
setScaleKey( spep_4 - 3 + 80, 1, 0.92, 0.91 );
setScaleKey( spep_4 - 3 + 82, 1, 0.78, 0.77 );
setScaleKey( spep_4 - 3 + 84, 1, 0.64, 0.64 );
setScaleKey( spep_4 - 3 + 86, 1, 0.52, 0.52 );
setScaleKey( spep_4 - 3 + 88, 1, 0.42, 0.42 );
setScaleKey( spep_4 - 3 + 90, 1, 0.34, 0.34 );
setScaleKey( spep_4 - 3 + 92, 1, 0.27, 0.27 );
setScaleKey( spep_4 - 3 + 94, 1, 0.22, 0.22 );
setScaleKey( spep_4 - 3 + 96, 1, 0.18, 0.18 );
setScaleKey( spep_4 - 3 + 98, 1, 0.16, 0.16 );
setScaleKey( spep_4  + 100, 1, 0.15, 0.15 );

setRotateKey( spep_4  + 0, 1, -82.4 );
--setRotateKey( spep_4 - 3 + 2, 1, -81 );
setRotateKey( spep_4 - 3 + 4, 1, -79.6 );
setRotateKey( spep_4 - 3 + 6, 1, -78.3 );
setRotateKey( spep_4 - 3 + 8, 1, -76.5 );
setRotateKey( spep_4 - 3 + 10, 1, -74.7 );
setRotateKey( spep_4 - 3 + 12, 1, -73 );
setRotateKey( spep_4 - 3 + 14, 1, -71.2 );
setRotateKey( spep_4 - 3 + 16, 1, -70.7 );
setRotateKey( spep_4 - 3 + 18, 1, -70.3 );
setRotateKey( spep_4 - 3 + 20, 1, -70 );
setRotateKey( spep_4 - 3 + 22, 1, -69.5 );
setRotateKey( spep_4 - 3 + 24, 1, -69.2 );
setRotateKey( spep_4 - 3 + 26, 1, -68.8 );
setRotateKey( spep_4 - 3 + 28, 1, -68.5 );
setRotateKey( spep_4 - 3 + 30, 1, -68.1 );
setRotateKey( spep_4 - 3 + 32, 1, -67.8 );
setRotateKey( spep_4 - 3 + 34, 1, -67.5 );
setRotateKey( spep_4 - 3 + 36, 1, -67.4 );
setRotateKey( spep_4 - 3 + 38, 1, -67.2 );
setRotateKey( spep_4 - 3 + 40, 1, -66.9 );
setRotateKey( spep_4 - 3 + 42, 1, -66.7 );
setRotateKey( spep_4 - 3 + 44, 1, -66.6 );
setRotateKey( spep_4 - 3 + 46, 1, -66.5 );
setRotateKey( spep_4 - 3 + 48, 1, -66.4 );
setRotateKey( spep_4 - 3 + 50, 1, -66.4 );
setRotateKey( spep_4 - 3 + 52, 1, -66.3 );
setRotateKey( spep_4 - 3 + 54, 1, -66.2 );
setRotateKey( spep_4 - 3 + 56, 1, -66.1 );
setRotateKey( spep_4 - 3 + 58, 1, -66 );
setRotateKey( spep_4 - 3 + 60, 1, -61 );
setRotateKey( spep_4 - 3 + 62, 1, -54.8 );
setRotateKey( spep_4 - 3 + 64, 1, -48.9 );
setRotateKey( spep_4 - 3 + 67, 1, -43.4 );
setRotateKey( spep_4 - 3 + 68, 1, 14.8 );
setRotateKey( spep_4 - 3 + 70, 1, 5.6 );
setRotateKey( spep_4 - 3 + 72, 1, -3.1 );
setRotateKey( spep_4 - 3 + 74, 1, -11.2 );
setRotateKey( spep_4 - 3 + 76, 1, -18.7 );
setRotateKey( spep_4 - 3 + 78, 1, -25.7 );
setRotateKey( spep_4 - 3 + 80, 1, -31.9 );
setRotateKey( spep_4 - 3 + 82, 1, -37.7 );
setRotateKey( spep_4 - 3 + 84, 1, -42.7 );
setRotateKey( spep_4 - 3 + 86, 1, -47.3 );
setRotateKey( spep_4 - 3 + 88, 1, -51.2 );
setRotateKey( spep_4 - 3 + 90, 1, -54.5 );
setRotateKey( spep_4 - 3 + 92, 1, -57.2 );
setRotateKey( spep_4 - 3 + 94, 1, -59.3 );
setRotateKey( spep_4 - 3 + 96, 1, -60.9 );
setRotateKey( spep_4 - 3 + 98, 1, -61.7 );
setRotateKey( spep_4  + 100, 1, -62 );

--集中線
shuchusen4 = entryEffectLife( spep_4  + 0,  906, 66 - 3, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_4  + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 - 3 + 66, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4  + 0, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_4 - 3 + 66, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_4  + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 - 3 + 66, shuchusen4, 180 );

setEffAlphaKey( spep_4  + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 - 3 + 66, shuchusen4, 255 );

--文字エントリー
ctgyun = entryEffectLife( spep_4 -3 + 68,  10007, 26, 0x100, -1, 0, -10.9, -300 );

setEffMoveKey( spep_4 -3 + 68, ctgyun, -10.9, -300 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctgyun, 50.9, -239.2 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctgyun, 109.9, -171 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctgyun, 173.7, -115.6 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctgyun, 176, -107 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctgyun, 185.4, -116.7 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctgyun, 187.7, -108.1 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctgyun, 197.1, -117.8 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctgyun, 199.5, -109.2 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctgyun, 227.2, -81 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctgyun, 246.7, -30.7 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctgyun, 275.8, -6.1 , 0 );
setEffMoveKey( spep_4 -3 + 92, ctgyun, 293.9, 47.8 , 0 );
setEffMoveKey( spep_4 -3 + 94, ctgyun, 317.5, 87.1 , 0 );

setEffScaleKey( spep_4 -3 + 68, ctgyun, 0.2, 0.2 );
setEffScaleKey( spep_4 -3 + 70, ctgyun, 0.8, 0.8 );
setEffScaleKey( spep_4 -3 + 72, ctgyun, 1.4, 1.4 );
setEffScaleKey( spep_4 -3 + 74, ctgyun, 2, 2 );
setEffScaleKey( spep_4 -3 + 84, ctgyun, 2, 2 );
setEffScaleKey( spep_4 -3 + 86, ctgyun, 2.4, 2.4 );
setEffScaleKey( spep_4 -3 + 88, ctgyun, 2.8, 2.8 );
setEffScaleKey( spep_4 -3 + 90, ctgyun, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 92, ctgyun, 3.6, 3.6 );
setEffScaleKey( spep_4 -3 + 94, ctgyun, 4, 4 );

setEffRotateKey( spep_4 -3 + 68, ctgyun, 20 );
setEffRotateKey( spep_4 -3 + 94, ctgyun, 20 );

setEffAlphaKey( spep_4 -3 + 68, ctgyun, 255 );
setEffAlphaKey( spep_4 -3 + 84, ctgyun, 255 );
setEffAlphaKey( spep_4 -3 + 86, ctgyun, 204 );
setEffAlphaKey( spep_4 -3 + 88, ctgyun, 153 );
setEffAlphaKey( spep_4 -3 + 90, ctgyun, 102 );
setEffAlphaKey( spep_4 -3 + 92, ctgyun, 51 );
setEffAlphaKey( spep_4 -3 + 94, ctgyun, 0 );

--SE
playSe( spep_4, 8);--振り回す
playSe( spep_4+66, 1012);--投げる
--SE2=playSe( spep_4+68, 1121);--飛んでいく
--stopSe( spep_4+104, SE2, 30 );

--白フェード
entryFade( spep_4 + 90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5= spep_4 + 102;
------------------------------------------------------
--  ガッ
------------------------------------------------------

-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );
]]

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_06x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, bg, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 112, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 112, bg, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_5 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_5 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 0, 1023 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 14 );
endPhase( spep_5 + 100 );
end


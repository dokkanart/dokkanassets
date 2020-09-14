--複製ベジータ_クローンラッシュ
--sp_effect_b1_00066


fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方
SP_01=	152932	;--	気溜め
SP_02=	152933	;--	連射
SP_03=	152934	;--	着弾
SP_04=	152935	;--	突進
SP_05=	152936	;--	突進ラッシュ
SP_06=	152937	;--	突進
SP_07=	152938	;--	背景
SP_08=	152939	;--	叩き落し(後)
SP_09=	152940	;--	叩き落し(前)
SP_10=	152941	;--	敵が地面にぶつかる(前)
SP_11=	152942	;--	敵が地面にぶつかる(後)

--味方
SP_01x=	152932	;--	気溜め
SP_02x=	152933	;--	連射
SP_03x=	152934	;--	着弾
SP_04x=	152935	;--	突進
SP_05x=	152936	;--	突進ラッシュ
SP_06x=	152937	;--	突進
SP_07x=	152938	;--	背景
SP_08x=	152939	;--	叩き落し(後)
SP_09x=	152940	;--	叩き落し(前)
SP_10x=	152941	;--	敵が地面にぶつかる(前)
SP_11x=	152942	;--	敵が地面にぶつかる(後)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 0.39, 0.39);
setScaleKey(   2,   1, 0.39, 0.39);
setScaleKey(   3,   1, 0.39, 0.39);
setScaleKey(   4,   1, 0.39, 0.39);
setScaleKey(   5,   1, 0.39, 0.39);
setScaleKey(   6,   1, 0.39, 0.39);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 気溜め
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 (前)
tame = entryEffectLife( spep_0 + 0, SP_01, 60, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 60, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 60, tame, 0 );

-- ** エフェクト等 (後ろ)
bg1 = entryEffectLife( spep_0 + 0, SP_07, 60, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, bg1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, bg1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, bg1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, bg1, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, bg1, 255 );
setEffAlphaKey( spep_0 + 60, bg1, 255 );
setEffRotateKey( spep_0 + 0, bg1, 0 );
setEffRotateKey( spep_0 + 60, bg1, 0 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 + 0,  10013, 58, 0x100, -1, 0, 22, 191.9 );--ズズズンッ

setEffMoveKey( spep_0 + 0, ctzuzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_0 + 2, ctzuzuzun, 21.3, 212.7 , 0 );
setEffMoveKey( spep_0 + 4, ctzuzuzun, 32.9, 245.2 , 0 );
setEffMoveKey( spep_0 + 6, ctzuzuzun, 27.8, 259.3 , 0 );
setEffMoveKey( spep_0 + 8, ctzuzuzun, 42.1, 290.8 , 0 );
setEffMoveKey( spep_0 + 10, ctzuzuzun, 36, 300.2 , 0 );
setEffMoveKey( spep_0 + 12, ctzuzuzun, 46.8, 314.2 , 0 );
setEffMoveKey( spep_0 + 14, ctzuzuzun, 37.6, 308 , 0 );
setEffMoveKey( spep_0 + 16, ctzuzuzun, 48.3, 321.6 , 0 );
setEffMoveKey( spep_0 + 18, ctzuzuzun, 39, 315.1 , 0 );
setEffMoveKey( spep_0 + 20, ctzuzuzun, 49.6, 328.3 , 0 );
setEffMoveKey( spep_0 + 22, ctzuzuzun, 40.3, 321.5 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzuzun, 50.9, 334.4 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzuzun, 41.4, 327.2 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzuzun, 51.9, 339.8 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzuzun, 42.4, 332.3 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzuzun, 52.9, 344.6 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzuzun, 43.3, 336.7 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzuzun, 53.7, 348.6 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzuzun, 44.1, 340.4 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzuzun, 54.4, 352 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzuzun, 44.7, 343.4 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzuzun, 54.9, 354.7 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzuzun, 45.1, 345.8 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzuzun, 55.3, 356.7 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzuzun, 45.5, 347.5 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzuzun, 55.6, 358.1 , 0 );
setEffMoveKey( spep_0 + 54, ctzuzuzun, 45.7, 348.5 , 0 );
setEffMoveKey( spep_0 + 56, ctzuzuzun, 55.7, 358.8 , 0 );
setEffMoveKey( spep_0 + 58, ctzuzuzun, 45.8, 348.9 , 0 );

setEffScaleKey( spep_0 + 0, ctzuzuzun, 1.34, 1.34 );
setEffScaleKey( spep_0 + 2, ctzuzuzun, 2.21, 2.21 );
setEffScaleKey( spep_0 + 4, ctzuzuzun, 3.01, 3.01 );
setEffScaleKey( spep_0 + 6, ctzuzuzun, 3.5, 3.5 );
setEffScaleKey( spep_0 + 58, ctzuzuzun, 3.5, 3.5 );

setEffRotateKey( spep_0 + 0, ctzuzuzun, 0 );
setEffRotateKey( spep_0 + 58, ctzuzuzun, 0 );

setEffAlphaKey( spep_0 + 0, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 + 58, ctzuzuzun, 255 );

--SE
playSe(spep_0,50);

--白フェード
entryFade( spep_0 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+60;


------------------------------------------------------
-- 連射
------------------------------------------------------
-- ** エフェクト等 (前)
kidan = entryEffectLife( spep_1 + 0, SP_02, 92, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_1 + 92, kidan, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_1 + 92, kidan, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, kidan, 255 );
setEffAlphaKey( spep_1 + 92, kidan, 255 );
setEffRotateKey( spep_1 + 0, kidan, 0 );
setEffRotateKey( spep_1 + 92, kidan, 0 );

ctzubababa = entryEffectLife( spep_1 + 0,  10015, 88, 0x100, -1, 0, 122.1, 300.5 );--ズバババッ

setEffMoveKey( spep_1 + 0, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 2, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 4, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 6, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 8, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 10, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 12, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 14, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 16, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 18, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 20, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 22, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 24, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 26, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 28, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 30, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 32, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 34, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 36, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 38, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 40, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 42, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 44, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 46, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 48, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 50, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 52, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 54, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 56, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 58, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 60, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 62, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 64, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 66, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 68, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 70, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 72, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 74, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 76, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 78, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 80, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 82, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 84, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 86, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 88, ctzubababa, 122.1, 300.5 , 0 );

setEffScaleKey( spep_1 + 0, ctzubababa, 2.73, 2.73 );
setEffScaleKey( spep_1 + 88, ctzubababa, 2.73, 2.73 );

setEffRotateKey( spep_1 + 0, ctzubababa, 20 );
setEffRotateKey( spep_1 + 2, ctzubababa, 15 );
setEffRotateKey( spep_1 + 4, ctzubababa, 20 );
setEffRotateKey( spep_1 + 6, ctzubababa, 15 );
setEffRotateKey( spep_1 + 8, ctzubababa, 20 );
setEffRotateKey( spep_1 + 10, ctzubababa, 15 );
setEffRotateKey( spep_1 + 12, ctzubababa, 20 );
setEffRotateKey( spep_1 + 14, ctzubababa, 15 );
setEffRotateKey( spep_1 + 16, ctzubababa, 20 );
setEffRotateKey( spep_1 + 18, ctzubababa, 15 );
setEffRotateKey( spep_1 + 20, ctzubababa, 20 );
setEffRotateKey( spep_1 + 22, ctzubababa, 15 );
setEffRotateKey( spep_1 + 24, ctzubababa, 20 );
setEffRotateKey( spep_1 + 26, ctzubababa, 15 );
setEffRotateKey( spep_1 + 28, ctzubababa, 20 );
setEffRotateKey( spep_1 + 30, ctzubababa, 15 );
setEffRotateKey( spep_1 + 32, ctzubababa, 20 );
setEffRotateKey( spep_1 + 34, ctzubababa, 15 );
setEffRotateKey( spep_1 + 36, ctzubababa, 20 );
setEffRotateKey( spep_1 + 38, ctzubababa, 15 );
setEffRotateKey( spep_1 + 40, ctzubababa, 20 );
setEffRotateKey( spep_1 + 42, ctzubababa, 15 );
setEffRotateKey( spep_1 + 44, ctzubababa, 20 );
setEffRotateKey( spep_1 + 46, ctzubababa, 15 );
setEffRotateKey( spep_1 + 48, ctzubababa, 20 );
setEffRotateKey( spep_1 + 50, ctzubababa, 15 );
setEffRotateKey( spep_1 + 52, ctzubababa, 20 );
setEffRotateKey( spep_1 + 54, ctzubababa, 15 );
setEffRotateKey( spep_1 + 56, ctzubababa, 20 );
setEffRotateKey( spep_1 + 58, ctzubababa, 15 );
setEffRotateKey( spep_1 + 60, ctzubababa, 20 );
setEffRotateKey( spep_1 + 62, ctzubababa, 15 );
setEffRotateKey( spep_1 + 64, ctzubababa, 20 );
setEffRotateKey( spep_1 + 66, ctzubababa, 15 );
setEffRotateKey( spep_1 + 68, ctzubababa, 20 );
setEffRotateKey( spep_1 + 70, ctzubababa, 15 );
setEffRotateKey( spep_1 + 72, ctzubababa, 20 );
setEffRotateKey( spep_1 + 74, ctzubababa, 15 );
setEffRotateKey( spep_1 + 76, ctzubababa, 20 );
setEffRotateKey( spep_1 + 78, ctzubababa, 15 );
setEffRotateKey( spep_1 + 80, ctzubababa, 20 );
setEffRotateKey( spep_1 + 82, ctzubababa, 15 );
setEffRotateKey( spep_1 + 84, ctzubababa, 20 );
setEffRotateKey( spep_1 + 86, ctzubababa, 15 );
setEffRotateKey( spep_1 + 88, ctzubababa, 20 );

setEffAlphaKey( spep_1 + 0, ctzubababa, 255 );
setEffAlphaKey( spep_1 + 88, ctzubababa, 255 );

setEffShake(spep_1,ctzubababa,88,10);

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  921, 88, 0x80, -1, 0, -20, 0 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, -20 , 0 );
setEffMoveKey( spep_1 + 88, ryusen1, 0, -20 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 2.23, 1.25 );
setEffScaleKey( spep_1 + 88, ryusen1, 2.23, 1.25 );

setEffRotateKey( spep_1 + 0, ryusen1, -144 );--144
setEffRotateKey( spep_1 + 88, ryusen1, -144 );--144

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 88, ryusen1, 255 );

--黒背景
entryFadeBg(spep_1, 0,92, 0, 0, 0, 0, 255);  -- 黒　背

--SE
playSe(spep_1,1016);
playSe(spep_1+8,1016);
playSe(spep_1+18,1016);
playSe(spep_1+28,1016);
playSe(spep_1+38,1016);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    --[[
    setMoveKey(SP_dodge, 1, 235, -33 , 0);
    setScaleKey(SP_dodge , 1 ,1.34, 1.34 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1, 235, -33 , 0);
    setScaleKey(SP_dodge+8 , 1 , 1.34, 1.34 );
    setRotateKey(SP_dodge+8,   1, 0);
    
    
    
    setDisp(SP_dodge+9, 0, 0);
    setDisp(SP_dodge+9, 1, 0);
    setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
    setRotateKey(SP_dodge+9,   1, 0);
    
    setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);
    ]]
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------
--SE
playSe(spep_1+48,1016);
playSe(spep_1+58,1016);
playSe(spep_1+68,1016);
playSe(spep_1+78,1016);

--白フェード
entryFade( spep_1 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


--次の準備
spep_2=spep_1+92;

------------------------------------------------------
-- アタル
------------------------------------------------------
-- ** エフェクト等 (前)
hit = entryEffectLife( spep_2 + 0, SP_03, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, hit, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, hit, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hit, 255 );
setEffAlphaKey( spep_2 + 90, hit, 255 );
setEffRotateKey( spep_2 + 0, hit, 0 );
setEffRotateKey( spep_2 + 90, hit, 0 );

--流線
ryusen2 = entryEffectLife( spep_2 + 0,  921, 90, 0x80, -1, 0, -20, 0 );

setEffMoveKey( spep_2 + 0, ryusen2, 0, -20 , 0 );
setEffMoveKey( spep_2 + 90, ryusen2, 0, -20 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 2.23, 1.25 );
setEffScaleKey( spep_2 + 90, ryusen2, 2.23, 1.25 );

setEffRotateKey( spep_2 + 0, ryusen2, -324 );--144
setEffRotateKey( spep_2 + 90, ryusen2, -324 );--144

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 90, ryusen2, 255 );


--文字エントリ-
ctzudododo = entryEffectLife( spep_2 -3 + 10,  10014, 78, 0x100, -1, 0, 90.2, 266.8 );--ズドドドッ

setEffMoveKey( spep_2 -3 + 10, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctzudododo, 73.5, 250.3 , 0 );

setEffScaleKey( spep_2 -3 + 10, ctzudododo, 2.99, 2.99 );
setEffScaleKey( spep_2 -3 + 88, ctzudododo, 2.99, 2.99 );

setEffRotateKey( spep_2 -3 + 10, ctzudododo, 61.3 );
setEffRotateKey( spep_2 -3 + 88, ctzudododo, 61.3 );

setEffAlphaKey( spep_2 -3 + 10, ctzudododo, 255 );
setEffAlphaKey( spep_2 -3 + 88, ctzudododo, 255 );

--敵の動き
setDisp( spep_2 -3 + 0, 1, 1 );
setDisp( spep_2 -3 + 88, 1, 0 );

changeAnime( spep_2 -3 + 0, 1, 100 );
changeAnime( spep_2 -3 + 10, 1, 108 );

setMoveKey( spep_2 -3 + 0, 1, 62.1, -38.1 , 0 );
setMoveKey( spep_2 -3 + 2, 1, 65.8, -39.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 62.6, -37.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 66.6, -38.9 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 63.7, -39.9 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 94.2, -29.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 99.1, -19.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 93.3, -33.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 98.7, -24.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 96.6, -27.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 98.6, -30 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 93.7, -27 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 95, -33.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 97.7, -32.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 94.5, -28.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 94, -33.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 98.4, -29.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 96.8, -28.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 98.2, -34.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 93.7, -27 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 95, -33.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 97.7, -32.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 94.5, -28.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 94, -33.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 98.4, -29.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 96.8, -28.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 98.2, -34.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 93.7, -27 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 95, -33.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 97.7, -32.4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 94.5, -28.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 94, -33.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 98.4, -29.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 96.8, -28.8 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 98.2, -34.2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 93.7, -27 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 95, -33.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 97.7, -32.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 94.5, -28.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 96.9, -29.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 94, -31.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 96.9, -29.2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 96.6, -28.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 95.6, -30.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 94, -29.2 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 88, 1, 1.19, 1.19 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 88, 1, 0 );

--SE
--[[
playSe(spep_2+6,1023);
--playSe(spep_2+14,1023);
playSe(spep_2+22,1023);
--playSe(spep_2+28,1023);
playSe(spep_2+36,1023);
--playSe(spep_2+40,1023);
playSe(spep_2+48,1023);
]]
--4.11調整
SE001 = playSe(spep_2+6,1023);
stopSe(spep_2+32,SE001,5);
SE002 = playSe(spep_2+22,1023);
stopSe(spep_2+46,SE002,5);
SE003 = playSe(spep_2+36,1023);
stopSe(spep_2+58,SE003,5);
SE004 = playSe(spep_2+48,1023);


--黒背景
entryFadeBg(spep_2, 0,90, 0, 0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_2 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+90;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 (前)
rush = entryEffectLife( spep_4 + 0, SP_04, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, rush, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, rush, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, rush, 255 );
setEffAlphaKey( spep_4 + 100, rush, 255 );
setEffRotateKey( spep_4 + 0, rush, 0 );
setEffRotateKey( spep_4 + 100, rush, 0 );

--流線
ryusen3 = entryEffectLife( spep_4  + 0,  914, 98, 0x80, -1, 0, 0,0 );

setEffMoveKey( spep_4  + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4  + 98, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4  + 0, ryusen3, 4.91, 1.44 );
setEffScaleKey( spep_4 -3 + 56, ryusen3, 4.91, 1.44 );
setEffScaleKey( spep_4 -3 + 57, ryusen3, 4.91, 1.44 );
setEffScaleKey( spep_4 -3 + 58, ryusen3, 5.14, 1.51 );
setEffScaleKey( spep_4  + 98, ryusen3, 5.14, 1.51 );

setEffRotateKey( spep_4  + 0, ryusen3, -149 );
setEffRotateKey( spep_4 -3 + 41, ryusen3, -149 );
setEffRotateKey( spep_4 -3 + 42, ryusen3, -41 );
setEffRotateKey( spep_4 -3 + 55, ryusen3, -41 );
setEffRotateKey( spep_4 -3 + 56, ryusen3, -145 );
setEffRotateKey( spep_4 -3 + 71, ryusen3, -145 );
setEffRotateKey( spep_4 -3 + 72, ryusen3, -322 );
setEffRotateKey( spep_4  + 98, ryusen3, -322 );

setEffAlphaKey( spep_4  + 0, ryusen3, 255 );
setEffAlphaKey( spep_4  + 98, ryusen3, 255 );

-- ** エフェクト等 (前)
rush_a = entryEffectLife( spep_4 + 0, SP_06, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, rush_a, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, rush_a, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rush_a, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, rush_a, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, rush_a, 255 );
setEffAlphaKey( spep_4 + 100, rush_a, 255 );
setEffRotateKey( spep_4 + 0, rush_a, 0 );
setEffRotateKey( spep_4 + 100, rush_a, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_4 -3 + 32,  10019, 16, 0x100, -1, 0, 84.8, 187 );--ドンッ

setEffMoveKey( spep_4 -3 + 32, ctdon, 84.8, 187 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctdon, 94.9, 236.9 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctdon, 118.7, 280.4 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctdon, 114.4, 289.7 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctdon, 122.7, 282.7 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctdon, 114, 286.2 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdon, 128.1, 294.3 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdon, 132.8, 287.5 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdon, 140.2, 290.7 , 0 );

setEffScaleKey( spep_4 -3 + 32, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_4 -3 + 34, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_4 -3 + 36, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 38, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_4 -3 + 40, ctdon, 1.6, 1.6 );
setEffScaleKey( spep_4 -3 + 42, ctdon, 1.65, 1.65 );
setEffScaleKey( spep_4 -3 + 44, ctdon, 1.68, 1.68 );
setEffScaleKey( spep_4 -3 + 46, ctdon, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 48, ctdon, 1.75, 1.75 );

setEffRotateKey( spep_4 -3 + 32, ctdon, 16 );
setEffRotateKey( spep_4 -3 + 48, ctdon, 16 );

setEffAlphaKey( spep_4 -3 + 32, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 42, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 44, ctdon, 170 );
setEffAlphaKey( spep_4 -3 + 46, ctdon, 85 );
setEffAlphaKey( spep_4 -3 + 48, ctdon, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_4 -5 + 48,  10020, 18, 0x100, -1, 0, -111.5, 148.2 );--バキッ

setEffMoveKey( spep_4 -5 + 48, ctbaki, -111.5, 148.2 , 0 );
setEffMoveKey( spep_4 -5 + 50, ctbaki, -122.4, 193.2 , 0 );
setEffMoveKey( spep_4 -5 + 52, ctbaki, -118.1, 235.8 , 0 );
setEffMoveKey( spep_4 -5 + 54, ctbaki, -125, 242.9 , 0 );
setEffMoveKey( spep_4 -5 + 56, ctbaki, -115.4, 237.7 , 0 );
setEffMoveKey( spep_4 -5 + 58, ctbaki, -125.1, 238.1 , 0 );
setEffMoveKey( spep_4 -5 + 60, ctbaki, -133.4, 247.5 , 0 );
setEffMoveKey( spep_4 -5 + 62, ctbaki, -146.8, 240.1 , 0 );
setEffMoveKey( spep_4 -4 + 64, ctbaki, -160.2, 243 , 0 );

setEffScaleKey( spep_4 -5 + 50, ctbaki, 1.15, 1.15 );
setEffScaleKey( spep_4 -5 + 52, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_4 -5 + 54, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_4 -5 + 56, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_4 -5 + 58, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_4 -5+ 60, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_4 -5 + 62, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_4 -4 + 64, ctbaki, 1.75, 1.75 );

setEffRotateKey( spep_4 -5 + 48, ctbaki, -0.8 );
setEffRotateKey( spep_4 -5 + 50, ctbaki, -0.2 );
setEffRotateKey( spep_4 -5 + 52, ctbaki, 0.3 );
setEffRotateKey( spep_4 -4 + 64, ctbaki, 0.3 );

setEffAlphaKey( spep_4 -5 + 48, ctbaki, 255 );
setEffAlphaKey( spep_4 -5 + 58, ctbaki, 255 );
setEffAlphaKey( spep_4 -5 + 60, ctbaki, 170 );
setEffAlphaKey( spep_4 -5 + 62, ctbaki, 85 );
setEffAlphaKey( spep_4 -4 + 64, ctbaki, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_4 -4 + 64,  10019, 10, 0x100, -1, 0, 84.8, 187 );--ドンッ

setEffMoveKey( spep_4 -4 + 64, ctdon2, 84.8, 187 , 0 );
setEffMoveKey( spep_4 -4 + 66, ctdon2, 94.9, 236.9 , 0 );
setEffMoveKey( spep_4 -4 + 68, ctdon2, 118.7, 280.4 , 0 );
setEffMoveKey( spep_4 -4 + 70, ctdon2, 114.4, 289.7 , 0 );
setEffMoveKey( spep_4 -4 + 72, ctdon2, 122.7, 282.7 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctdon2, 123.7, 284.2 , 0 );

setEffScaleKey( spep_4 -4 + 64, ctdon2, 0.8, 0.8 );
setEffScaleKey( spep_4 -4 + 66, ctdon2, 1.15, 1.15 );
setEffScaleKey( spep_4 -4 + 68, ctdon2, 1.5, 1.5 );
setEffScaleKey( spep_4 -4 + 70, ctdon2, 1.55, 1.55 );
setEffScaleKey( spep_4 -4 + 72, ctdon2, 1.6, 1.6 );
setEffScaleKey( spep_4 -3 + 74, ctdon2, 1.65, 1.65 );

setEffRotateKey( spep_4 -4 + 64, ctdon2, 16 );
setEffRotateKey( spep_4 -3 + 74, ctdon2, 16 );

setEffAlphaKey( spep_4 -4 + 64, ctdon2, 255 );
setEffAlphaKey( spep_4 -4 + 68, ctdon2, 255 );
setEffAlphaKey( spep_4 -4 + 70, ctdon2, 170 );
setEffAlphaKey( spep_4 -4 + 72, ctdon2, 85 );
setEffAlphaKey( spep_4 -3 + 74, ctdon2, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_4 -3 + 74,  10020, 16, 0x100, -1, 0, -87, -145.8 );

setEffMoveKey( spep_4 -3 + 74, ctbaki2, -87, -145.8 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctbaki2, -97.9, -211.1 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctbaki2, -93.6, -278.7 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctbaki2, -100.5, -279.7 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctbaki2, -90.9, -293.1 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctbaki2, -100.6, -300.9 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctbaki2, -125.2, -307.8 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctbaki2, -154.9, -331.5 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctbaki2, -184.7, -345 , 0 );

setEffScaleKey( spep_4 -3 + 74, ctbaki2, 0.8, 0.8 );
setEffScaleKey( spep_4 -3 + 76, ctbaki2, 1.15, 1.15 );
setEffScaleKey( spep_4 -3 + 78, ctbaki2, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 80, ctbaki2, 1.55, 1.55 );
setEffScaleKey( spep_4 -3 + 82, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_4 -3 + 84, ctbaki2, 1.65, 1.65 );
setEffScaleKey( spep_4 -3 + 86, ctbaki2, 1.68, 1.68 );
setEffScaleKey( spep_4 -3 + 88, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 90, ctbaki2, 1.75, 1.75 );

setEffRotateKey( spep_4 -3 + 74, ctbaki2, -0.8 );
setEffRotateKey( spep_4 -3 + 76, ctbaki2, -0.2 );
setEffRotateKey( spep_4 -3 + 78, ctbaki2, 0.3 );
setEffRotateKey( spep_4 -3 + 90, ctbaki2, 0.3 );

setEffAlphaKey( spep_4 -3 + 74, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 84, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 86, ctbaki2, 170 );
setEffAlphaKey( spep_4 -3 + 88, ctbaki2, 85 );
setEffAlphaKey( spep_4 -3 + 90, ctbaki2, 0 );

--敵の動き
setDisp( spep_4 -3 +30, 1, 1 );
setDisp( spep_4 -3 + 98, 1, 0 );

--changeAnime( spep_4 -3 + 30, 1, 1,108);

setMoveKey( spep_4 -3 + 30, 1, 53.9, -3.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 58, -8.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 58.9, -2.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 46.4, -10.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 62.9, 1.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 54.8, -9.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 52, -0.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 56.7, -7.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 59.4, -6.7 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 56.3, -2.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 56.1, -12.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 57.6, 1.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 51.7, -9.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 62.4, -0.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 59, -5.6 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 49.8, -5.4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 53.4, -7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 57.1, -11.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 57.6, 4.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 59, -7.9 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 51.2, -1.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 49.3, -7.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 59, -5.5 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 58.9, -3.8 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 47.4, -15 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 61.8, 4.6 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 54.8, -7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 60.4, -3.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 49.8, -4.3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 49.3, -7.9 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 59, -4.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 54.8, -4.7 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 49.3, -7.9 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 59, -4.4 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 54.8, -4.7 , 0 );

setScaleKey( spep_4 -3 + 30, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 98, 1, 1.02, 1.02 );

setRotateKey( spep_4 -3 + 30, 1, 0 );
setRotateKey( spep_4 -3 + 98, 1, 0 );


--SE
SE1=playSe(spep_4,44);
stopSe(spep_4+26,SE1,0);
playSe(spep_4+28,1009);
playSe(spep_4+46,1010);
playSe(spep_4+60,1009);
playSe(spep_4+70,1010);


--黒背景
entryFadeBg(spep_4, 0,100, 0, 0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_4 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+100;

------------------------------------------------------
-- ボコボコ
------------------------------------------------------
-- ** エフェクト等 (前)
bokoboko = entryEffectLife( spep_5 + 0, SP_05, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, bokoboko, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, bokoboko, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bokoboko, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, bokoboko, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, bokoboko, 255 );
setEffAlphaKey( spep_5 + 98, bokoboko, 255 );
setEffRotateKey( spep_5 + 0, bokoboko, 0 );
setEffRotateKey( spep_5 + 98, bokoboko, 0 );

-- ** エフェクト等 (後ろ)
bg2 = entryEffectLife( spep_5 + 0, SP_07, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, bg2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, bg2, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, bg2, 80 );
setEffAlphaKey( spep_5 + 98, bg2, 80 );
setEffRotateKey( spep_5 + 0, bg2 , 0 );
setEffRotateKey( spep_5 + 98, bg2, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_5 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen1, 0,0 , 0 );
setEffMoveKey( spep_5 + 98, shuchusen1, 0,0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen1, 1.55, 1.55 );
setEffScaleKey( spep_5 + 98, shuchusen1, 1.55, 1.55 );

setEffRotateKey( spep_5 + 0, shuchusen1, 180 );
setEffRotateKey( spep_5 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_5 + 98, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_5+10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_5+10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_5+22,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_5+22, ctgogo, 72, 10 );

setEffMoveKey( spep_5+22, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_5+94, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_5+22, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_5 + 86, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_5 + 88, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_5 +90, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_5 + 93, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_5+94, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_5+22, ctgogo, 0 );
setEffRotateKey( spep_5+94, ctgogo, 0 );

setEffAlphaKey( spep_5+22, ctgogo, 0 );
setEffAlphaKey( spep_5 + 23, ctgogo, 255 );
setEffAlphaKey( spep_5 + 24, ctgogo, 255 );
setEffAlphaKey( spep_5+94, ctgogo, 255 );

--SE
playSe( spep_5, 1009); --殴り
playSe( spep_5+18, 1010); --殴り
playSe( spep_5+24, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_5, 0, 190, 0,0, 0, 0, 255);  -- 黒　背


--白フェード
entryFade( spep_5 + 90, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+98;

------------------------------------------------------
-- 叩き落とす
------------------------------------------------------

-- ** エフェクト等 (前)
tatakiotosi_f = entryEffectLife( spep_6 + 0, SP_08, 72, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, tatakiotosi_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 72, tatakiotosi_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tatakiotosi_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 72, tatakiotosi_f, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, tatakiotosi_f, 255 );
setEffAlphaKey( spep_6 + 72, tatakiotosi_f, 255 );
setEffRotateKey( spep_6 + 0, tatakiotosi_f, 0 );
setEffRotateKey( spep_6 + 72, tatakiotosi_f, 0 );

-- ** エフェクト等 (後)
tatakiotosi_b = entryEffectLife( spep_6 + 0, SP_09, 72, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, tatakiotosi_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 72, tatakiotosi_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tatakiotosi_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 72, tatakiotosi_b, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, tatakiotosi_b, 255 );
setEffAlphaKey( spep_6 + 72, tatakiotosi_b, 255 );
setEffRotateKey( spep_6 + 0, tatakiotosi_b, 0 );
setEffRotateKey( spep_6 + 72, tatakiotosi_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 68, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -6.7, 69.9 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -5, 68.6 , 0 );
setMoveKey( spep_6-3 + 4, 1, -3.3, 67.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, -1.7, 66 , 0 );
setMoveKey( spep_6-3 + 8, 1, 0, 64.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 1.6, 63.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, 3.3, 62.2 , 0 );
setMoveKey( spep_6-3 + 14, 1, 4.9, 60.9 , 0 );
setMoveKey( spep_6-3 + 16, 1, 6.6, 59.7 , 0 );
setMoveKey( spep_6-3 + 18, 1, 8.2, 58.4 , 0 );
setMoveKey( spep_6-3 + 20, 1, 9.9, 57.2 , 0 );
setMoveKey( spep_6-3 + 22, 1, 11.5, 55.9 , 0 );
setMoveKey( spep_6-3 + 24, 1, 13.1, 54.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, 14.8, 53.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 16.4, 52.2 , 0 );
setMoveKey( spep_6-3 + 30, 1, 18.7, 50.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 19.4, 7.1 , 0 );
setMoveKey( spep_6-3 + 34, 1, 19.5, -220.7 , 0 );
setMoveKey( spep_6-3 + 36, 1, 19.5, -386.3 , 0 );
setMoveKey( spep_6-3 + 38, 1, 19.6, -460.1 , 0 );
setMoveKey( spep_6-3 + 40, 1, 19.6, -525 , 0 );
setMoveKey( spep_6-3 + 42, 1, 19.6, -579.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, 19.4, -625.1 , 0 );
setMoveKey( spep_6-3 + 46, 1, 19.4, -662.5 , 0 );
setMoveKey( spep_6-3 + 48, 1, 19.4, -693.5 , 0 );
setMoveKey( spep_6-3 + 50, 1, 19.4, -718.8 , 0 );
setMoveKey( spep_6-3 + 52, 1, 19.4, -739.2 , 0 );
setMoveKey( spep_6-3 + 54, 1, 19.4, -755.5 , 0 );
setMoveKey( spep_6-3 + 56, 1, 19.4, -768.2 , 0 );
setMoveKey( spep_6-3 + 58, 1, 19.4, -777.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, 19.4, -784.4 , 0 );
setMoveKey( spep_6-3 + 62, 1, 19.4, -788.7 , 0 );
setMoveKey( spep_6-3 + 64, 1, 19.4, -790.9 , 0 );
setMoveKey( spep_6-3 + 66, 1, 19.4, -791.4 , 0 );
setMoveKey( spep_6 + 68, 1, 19.3, -790.1 , 0 );

setScaleKey( spep_6 + 0, 1, 1.03, 1.03 );
setScaleKey( spep_6 + 68, 1, 1.03, 1.03 );

setRotateKey( spep_6 + 0, 1, -17 );
--setRotateKey( spep_6-3 + 2, 1, -16.7 );
setRotateKey( spep_6-3 + 4, 1, -16.4 );
setRotateKey( spep_6-3 + 6, 1, -16.1 );
setRotateKey( spep_6-3 + 8, 1, -15.8 );
setRotateKey( spep_6-3 + 10, 1, -15.5 );
setRotateKey( spep_6-3 + 12, 1, -15.2 );
setRotateKey( spep_6-3 + 14, 1, -14.8 );
setRotateKey( spep_6-3 + 16, 1, -14.5 );
setRotateKey( spep_6-3 + 18, 1, -14.2 );
setRotateKey( spep_6-3 + 20, 1, -13.9 );
setRotateKey( spep_6-3 + 22, 1, -13.6 );
setRotateKey( spep_6-3 + 24, 1, -13.3 );
setRotateKey( spep_6-3 + 26, 1, -13 );
setRotateKey( spep_6-3 + 28, 1, -12.7 );
setRotateKey( spep_6-3 + 30, 1, -12 );
setRotateKey( spep_6-3 + 31, 1, -12 );
setRotateKey( spep_6-3 + 32, 1, -170 );
setRotateKey( spep_6 + 68, 1, -170 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_6 -3 + 32,  10020, 22, 0x100, -1, 0, -85.2, 301.9 );--バキッ

setEffMoveKey( spep_6 -3 + 32, ctbaki3, -85.2, 301.9 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctbaki3, -53.1, 299.7 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctbaki3, -56.1, 277.5 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctbaki3, -58.5, 284.7 , 0 );
setEffMoveKey( spep_6 -3 + 40, ctbaki3, -66.2, 286.4 , 0 );
setEffMoveKey( spep_6 -3 + 42, ctbaki3, -76.4, 280.8 , 0 );
setEffMoveKey( spep_6 -3 + 44, ctbaki3, -80.2, 279.2 , 0 );
setEffMoveKey( spep_6 -3 + 46, ctbaki3, -80.5, 281.9 , 0 );
setEffMoveKey( spep_6 -3 + 48, ctbaki3, -80.8, 284.7 , 0 );
setEffMoveKey( spep_6 -3 + 50, ctbaki3, -81.3, 287.5 , 0 );
setEffMoveKey( spep_6 -3 + 52, ctbaki3, -81.8, 290.3 , 0 );
setEffMoveKey( spep_6 -3 + 54, ctbaki3, -82.4, 293.1 , 0 );

setEffScaleKey( spep_6 -3 + 32, ctbaki3, 0.91, 0.91 );
setEffScaleKey( spep_6 -3 + 34, ctbaki3, 1.95, 1.95 );
setEffScaleKey( spep_6 -3 + 36, ctbaki3, 2.48, 2.48 );
setEffScaleKey( spep_6 -3 + 38, ctbaki3, 2.36, 2.36 );
setEffScaleKey( spep_6 -3 + 40, ctbaki3, 2.24, 2.24 );
setEffScaleKey( spep_6 -3 + 42, ctbaki3, 2.12, 2.12 );
setEffScaleKey( spep_6 -3 + 44, ctbaki3, 2.01, 2.01 );
setEffScaleKey( spep_6 -3 + 46, ctbaki3, 1.91, 1.91 );
setEffScaleKey( spep_6 -3 + 48, ctbaki3, 1.81, 1.81 );
setEffScaleKey( spep_6 -3 + 50, ctbaki3, 1.7, 1.7 );
setEffScaleKey( spep_6 -3 + 52, ctbaki3, 1.6, 1.6 );
setEffScaleKey( spep_6 -3 + 54, ctbaki3, 1.5, 1.5 );

setEffRotateKey( spep_6 -3 + 32, ctbaki3, -19 );
setEffRotateKey( spep_6 -3 + 34, ctbaki3, -19 );
setEffRotateKey( spep_6 -3 + 36, ctbaki3, -13 );
setEffRotateKey( spep_6 -3 + 38, ctbaki3, -24 );
setEffRotateKey( spep_6 -3 + 40, ctbaki3, -16 );
setEffRotateKey( spep_6 -3 + 42, ctbaki3, -24 );
setEffRotateKey( spep_6 -3 + 44, ctbaki3, -19 );
setEffRotateKey( spep_6 -3 + 45, ctbaki3, -19 );
setEffRotateKey( spep_6 -3 + 46, ctbaki3, -21.6 );
setEffRotateKey( spep_6 -3 + 48, ctbaki3, -24.2 );
setEffRotateKey( spep_6 -3 + 50, ctbaki3, -26.8 );
setEffRotateKey( spep_6 -3 + 52, ctbaki3, -29.4 );
setEffRotateKey( spep_6 -3 + 54, ctbaki3, -32 );

setEffAlphaKey( spep_6 -3 + 32, ctbaki3, 255 );
setEffAlphaKey( spep_6 -3 + 44, ctbaki3, 255 );
setEffAlphaKey( spep_6 -3 + 46, ctbaki3, 204 );
setEffAlphaKey( spep_6 -3 + 48, ctbaki3, 153 );
setEffAlphaKey( spep_6 -3 + 50, ctbaki3, 102 );
setEffAlphaKey( spep_6 -3 + 52, ctbaki3, 51 );
setEffAlphaKey( spep_6 -3 + 54, ctbaki3, 0 );

--流線
ryusen4 = entryEffectLife( spep_6 -3 + 36,  914, 32, 0x80, -1, 0,0, 0 );

setEffMoveKey( spep_6 -3 + 36, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_6  + 68, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 -3 + 36, ryusen4, 4.9, 1.44 );
setEffScaleKey( spep_6  + 68, ryusen4, 4.9, 1.44 );

setEffRotateKey( spep_6 -3 + 36, ryusen4, -90 );
setEffRotateKey( spep_6  + 68, ryusen4, -90 );

setEffAlphaKey( spep_6 -3 + 36, ryusen4, 128 );
setEffAlphaKey( spep_6 -3 + 38, ryusen4, 255 );
setEffAlphaKey( spep_6  + 68, ryusen4, 255 );

--SE
playSe( spep_6+4, 43); --瞬間移動
playSe( spep_6+30, 1011); --瞬間移動


--黒背景
entryFadeBg(spep_6, 0, 72, 0,0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_6 + 64, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_7=spep_6+72;

------------------------------------------------------
-- 地面に埋まる
------------------------------------------------------
-- ** エフェクト等 (前)

finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 150, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish_f, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 150, finish_f, 255 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 150, finish_f, 0 );

-- ** エフェクト等 (後)
finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 150, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish_b, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 150, finish_b, 255 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 150, finish_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 28, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, 31.7, 660.3 , 0 );
setMoveKey( spep_7-3 + 2, 1, 31.8, 641.8 , 0 );
setMoveKey( spep_7-3 + 4, 1, 31.8, 616.2 , 0 );
setMoveKey( spep_7-3 + 6, 1, 31.9, 583.9 , 0 );
setMoveKey( spep_7-3 + 8, 1, 31.9, 545.1 , 0 );
setMoveKey( spep_7-3 + 10, 1, 32, 499.6 , 0 );
setMoveKey( spep_7-3 + 12, 1, 32, 447 , 0 );
setMoveKey( spep_7-3 + 14, 1, 32.1, 386.4 , 0 );
setMoveKey( spep_7-3 + 16, 1, 32.1, 316.9 , 0 );
setMoveKey( spep_7-3 + 18, 1, 32.2, 236.9 , 0 );
setMoveKey( spep_7-3 + 20, 1, 32.2, 144.2 , 0 );
setMoveKey( spep_7-3 + 22, 1, 32.3, 35.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 32.3, -95.1 , 0 );
setMoveKey( spep_7-3 + 26, 1, 32.4, -257.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 32.4, -475.7 , 0 );
setMoveKey( spep_7 + 28, 1, 32.4, -605.7 , 0 );

setScaleKey( spep_7 + 0, 1, 0.85, 0.85 );
setScaleKey( spep_7 + 28, 1, 0.85, 0.85 );

setRotateKey( spep_7 + 0, 1, 133 );
setRotateKey( spep_7 + 28, 1, 133 );

--集中線
shuchusen2 = entryEffectLife( spep_7 + 0,  906, 148, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 148, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen2, 1.55, 1.55 );
setEffScaleKey( spep_7 + 148, shuchusen2, 1.55, 1.55 );

setEffRotateKey( spep_7 + 0, shuchusen2, 180 );
setEffRotateKey( spep_7 + 148, shuchusen2, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_7 + 0, shuchusen2, 255 );

--SE
SE2=playSe( spep_7, 44); --瞬間移動
stopSe(spep_7+28,SE2,0);
playSe( spep_7+30, 1023); --瞬間移動

-- ダメージ表示
dealDamage(spep_7+40);
entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+146);

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 (前)
tame = entryEffectLife( spep_0 + 0, SP_01x, 60, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 60, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 60, tame, 0 );

-- ** エフェクト等 (後ろ)
bg1 = entryEffectLife( spep_0 + 0, SP_07x, 60, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, bg1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, bg1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, bg1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, bg1, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, bg1, 255 );
setEffAlphaKey( spep_0 + 60, bg1, 255 );
setEffRotateKey( spep_0 + 0, bg1, 0 );
setEffRotateKey( spep_0 + 60, bg1, 0 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 + 0,  10013, 58, 0x100, -1, 0, 22, 191.9 );--ズズズンッ

setEffMoveKey( spep_0 + 0, ctzuzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_0 + 2, ctzuzuzun, 21.3, 212.7 , 0 );
setEffMoveKey( spep_0 + 4, ctzuzuzun, 32.9, 245.2 , 0 );
setEffMoveKey( spep_0 + 6, ctzuzuzun, 27.8, 259.3 , 0 );
setEffMoveKey( spep_0 + 8, ctzuzuzun, 42.1, 290.8 , 0 );
setEffMoveKey( spep_0 + 10, ctzuzuzun, 36, 300.2 , 0 );
setEffMoveKey( spep_0 + 12, ctzuzuzun, 46.8, 314.2 , 0 );
setEffMoveKey( spep_0 + 14, ctzuzuzun, 37.6, 308 , 0 );
setEffMoveKey( spep_0 + 16, ctzuzuzun, 48.3, 321.6 , 0 );
setEffMoveKey( spep_0 + 18, ctzuzuzun, 39, 315.1 , 0 );
setEffMoveKey( spep_0 + 20, ctzuzuzun, 49.6, 328.3 , 0 );
setEffMoveKey( spep_0 + 22, ctzuzuzun, 40.3, 321.5 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzuzun, 50.9, 334.4 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzuzun, 41.4, 327.2 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzuzun, 51.9, 339.8 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzuzun, 42.4, 332.3 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzuzun, 52.9, 344.6 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzuzun, 43.3, 336.7 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzuzun, 53.7, 348.6 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzuzun, 44.1, 340.4 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzuzun, 54.4, 352 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzuzun, 44.7, 343.4 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzuzun, 54.9, 354.7 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzuzun, 45.1, 345.8 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzuzun, 55.3, 356.7 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzuzun, 45.5, 347.5 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzuzun, 55.6, 358.1 , 0 );
setEffMoveKey( spep_0 + 54, ctzuzuzun, 45.7, 348.5 , 0 );
setEffMoveKey( spep_0 + 56, ctzuzuzun, 55.7, 358.8 , 0 );
setEffMoveKey( spep_0 + 58, ctzuzuzun, 45.8, 348.9 , 0 );

setEffScaleKey( spep_0 + 0, ctzuzuzun, 1.34, 1.34 );
setEffScaleKey( spep_0 + 2, ctzuzuzun, 2.21, 2.21 );
setEffScaleKey( spep_0 + 4, ctzuzuzun, 3.01, 3.01 );
setEffScaleKey( spep_0 + 6, ctzuzuzun, 3.5, 3.5 );
setEffScaleKey( spep_0 + 58, ctzuzuzun, 3.5, 3.5 );

setEffRotateKey( spep_0 + 0, ctzuzuzun, 0 );
setEffRotateKey( spep_0 + 58, ctzuzuzun, 0 );

setEffAlphaKey( spep_0 + 0, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 + 58, ctzuzuzun, 255 );

--SE
playSe(spep_0,50);

--白フェード
entryFade( spep_0 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+60;


------------------------------------------------------
-- 連射
------------------------------------------------------
-- ** エフェクト等 (前)
kidan = entryEffectLife( spep_1 + 0, SP_02x, 92, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_1 + 92, kidan, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_1 + 92, kidan, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, kidan, 255 );
setEffAlphaKey( spep_1 + 92, kidan, 255 );
setEffRotateKey( spep_1 + 0, kidan, 0 );
setEffRotateKey( spep_1 + 92, kidan, 0 );

ctzubababa = entryEffectLife( spep_1 + 0,  10015, 88, 0x100, -1, 0, 122.1, 300.5 );--ズバババッ

setEffMoveKey( spep_1 + 0, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 2, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 4, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 6, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 8, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 10, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 12, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 14, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 16, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 18, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 20, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 22, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 24, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 26, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 28, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 30, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 32, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 34, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 36, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 38, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 40, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 42, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 44, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 46, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 48, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 50, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 52, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 54, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 56, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 58, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 60, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 62, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 64, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 66, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 68, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 70, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 72, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 74, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 76, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 78, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 80, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 82, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 84, ctzubababa, 122.1, 300.5 , 0 );
setEffMoveKey( spep_1 + 86, ctzubababa, 122.7, 303.7 , 0 );
setEffMoveKey( spep_1 + 88, ctzubababa, 122.1, 300.5 , 0 );

setEffScaleKey( spep_1 + 0, ctzubababa, 2.73, 2.73 );
setEffScaleKey( spep_1 + 88, ctzubababa, 2.73, 2.73 );

setEffRotateKey( spep_1 + 0, ctzubababa, 20 );
setEffRotateKey( spep_1 + 2, ctzubababa, 15 );
setEffRotateKey( spep_1 + 4, ctzubababa, 20 );
setEffRotateKey( spep_1 + 6, ctzubababa, 15 );
setEffRotateKey( spep_1 + 8, ctzubababa, 20 );
setEffRotateKey( spep_1 + 10, ctzubababa, 15 );
setEffRotateKey( spep_1 + 12, ctzubababa, 20 );
setEffRotateKey( spep_1 + 14, ctzubababa, 15 );
setEffRotateKey( spep_1 + 16, ctzubababa, 20 );
setEffRotateKey( spep_1 + 18, ctzubababa, 15 );
setEffRotateKey( spep_1 + 20, ctzubababa, 20 );
setEffRotateKey( spep_1 + 22, ctzubababa, 15 );
setEffRotateKey( spep_1 + 24, ctzubababa, 20 );
setEffRotateKey( spep_1 + 26, ctzubababa, 15 );
setEffRotateKey( spep_1 + 28, ctzubababa, 20 );
setEffRotateKey( spep_1 + 30, ctzubababa, 15 );
setEffRotateKey( spep_1 + 32, ctzubababa, 20 );
setEffRotateKey( spep_1 + 34, ctzubababa, 15 );
setEffRotateKey( spep_1 + 36, ctzubababa, 20 );
setEffRotateKey( spep_1 + 38, ctzubababa, 15 );
setEffRotateKey( spep_1 + 40, ctzubababa, 20 );
setEffRotateKey( spep_1 + 42, ctzubababa, 15 );
setEffRotateKey( spep_1 + 44, ctzubababa, 20 );
setEffRotateKey( spep_1 + 46, ctzubababa, 15 );
setEffRotateKey( spep_1 + 48, ctzubababa, 20 );
setEffRotateKey( spep_1 + 50, ctzubababa, 15 );
setEffRotateKey( spep_1 + 52, ctzubababa, 20 );
setEffRotateKey( spep_1 + 54, ctzubababa, 15 );
setEffRotateKey( spep_1 + 56, ctzubababa, 20 );
setEffRotateKey( spep_1 + 58, ctzubababa, 15 );
setEffRotateKey( spep_1 + 60, ctzubababa, 20 );
setEffRotateKey( spep_1 + 62, ctzubababa, 15 );
setEffRotateKey( spep_1 + 64, ctzubababa, 20 );
setEffRotateKey( spep_1 + 66, ctzubababa, 15 );
setEffRotateKey( spep_1 + 68, ctzubababa, 20 );
setEffRotateKey( spep_1 + 70, ctzubababa, 15 );
setEffRotateKey( spep_1 + 72, ctzubababa, 20 );
setEffRotateKey( spep_1 + 74, ctzubababa, 15 );
setEffRotateKey( spep_1 + 76, ctzubababa, 20 );
setEffRotateKey( spep_1 + 78, ctzubababa, 15 );
setEffRotateKey( spep_1 + 80, ctzubababa, 20 );
setEffRotateKey( spep_1 + 82, ctzubababa, 15 );
setEffRotateKey( spep_1 + 84, ctzubababa, 20 );
setEffRotateKey( spep_1 + 86, ctzubababa, 15 );
setEffRotateKey( spep_1 + 88, ctzubababa, 20 );

setEffAlphaKey( spep_1 + 0, ctzubababa, 255 );
setEffAlphaKey( spep_1 + 88, ctzubababa, 255 );

setEffShake(spep_1,ctzubababa,88,10);

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  921, 88, 0x80, -1, 0, -20, 0 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, -20 , 0 );
setEffMoveKey( spep_1 + 88, ryusen1, 0, -20 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 2.23, 1.25 );
setEffScaleKey( spep_1 + 88, ryusen1, 2.23, 1.25 );

setEffRotateKey( spep_1 + 0, ryusen1, -144 );--144
setEffRotateKey( spep_1 + 88, ryusen1, -144 );--144

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 88, ryusen1, 255 );

--黒背景
entryFadeBg(spep_1, 0,92, 0, 0, 0, 0, 255);  -- 黒　背

--SE
playSe(spep_1,1016);
playSe(spep_1+8,1016);
playSe(spep_1+18,1016);
playSe(spep_1+28,1016);
playSe(spep_1+38,1016);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    --[[
    setMoveKey(SP_dodge, 1, 235, -33 , 0);
    setScaleKey(SP_dodge , 1 ,1.34, 1.34 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1, 235, -33 , 0);
    setScaleKey(SP_dodge+8 , 1 , 1.34, 1.34 );
    setRotateKey(SP_dodge+8,   1, 0);
    
    
    
    setDisp(SP_dodge+9, 0, 0);
    setDisp(SP_dodge+9, 1, 0);
    setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
    setRotateKey(SP_dodge+9,   1, 0);
    
    setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);
    ]]
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------
--SE
playSe(spep_1+48,1016);
playSe(spep_1+58,1016);
playSe(spep_1+68,1016);
playSe(spep_1+78,1016);

--白フェード
entryFade( spep_1 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


--次の準備
spep_2=spep_1+92;

------------------------------------------------------
-- アタル
------------------------------------------------------
-- ** エフェクト等 (前)
hit = entryEffectLife( spep_2 + 0, SP_03x, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, hit, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, hit, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hit, 255 );
setEffAlphaKey( spep_2 + 90, hit, 255 );
setEffRotateKey( spep_2 + 0, hit, 0 );
setEffRotateKey( spep_2 + 90, hit, 0 );

--流線
ryusen2 = entryEffectLife( spep_2 + 0,  921, 90, 0x80, -1, 0, -20, 0 );

setEffMoveKey( spep_2 + 0, ryusen2, 0, -20 , 0 );
setEffMoveKey( spep_2 + 90, ryusen2, 0, -20 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 2.23, 1.25 );
setEffScaleKey( spep_2 + 90, ryusen2, 2.23, 1.25 );

setEffRotateKey( spep_2 + 0, ryusen2, -324 );--144
setEffRotateKey( spep_2 + 90, ryusen2, -324 );--144

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 90, ryusen2, 255 );


--文字エントリ-
ctzudododo = entryEffectLife( spep_2 -3 + 10,  10014, 78, 0x100, -1, 0, 90.2, 266.8 );--ズドドドッ

setEffMoveKey( spep_2 -3 + 10, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctzudododo, 73.5, 250.3 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctzudododo, 90.2, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctzudododo, 73.5, 250.3 , 0 );

setEffScaleKey( spep_2 -3 + 10, ctzudododo, 2.99, 2.99 );
setEffScaleKey( spep_2 -3 + 88, ctzudododo, 2.99, 2.99 );

setEffRotateKey( spep_2 -3 + 10, ctzudododo, -11.3 );
setEffRotateKey( spep_2 -3 + 88, ctzudododo, -11.3 );

setEffAlphaKey( spep_2 -3 + 10, ctzudododo, 255 );
setEffAlphaKey( spep_2 -3 + 88, ctzudododo, 255 );

--敵の動き
setDisp( spep_2 -3 + 0, 1, 1 );
setDisp( spep_2 -3 + 88, 1, 0 );

changeAnime( spep_2 -3 + 0, 1, 100 );
changeAnime( spep_2 -3 + 10, 1, 108 );

setMoveKey( spep_2 -3 + 0, 1, 62.1, -38.1 , 0 );
setMoveKey( spep_2 -3 + 2, 1, 65.8, -39.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 62.6, -37.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 66.6, -38.9 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 63.7, -39.9 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 94.2, -29.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 99.1, -19.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 93.3, -33.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 98.7, -24.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 96.6, -27.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 98.6, -30 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 93.7, -27 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 95, -33.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 97.7, -32.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 94.5, -28.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 94, -33.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 98.4, -29.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 96.8, -28.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 98.2, -34.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 93.7, -27 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 95, -33.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 97.7, -32.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 94.5, -28.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 94, -33.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 98.4, -29.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 96.8, -28.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 98.2, -34.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 93.7, -27 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 95, -33.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 97.7, -32.4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 94.5, -28.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 94, -33.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 98.4, -29.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 96.8, -28.8 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 98.2, -34.2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 93.7, -27 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 95, -33.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 97.7, -32.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 94.5, -28.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 96.9, -29.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 94, -31.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 96.9, -29.2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 96.6, -28.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 95.6, -30.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 94, -29.2 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 88, 1, 1.19, 1.19 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 88, 1, 0 );

--SE
--[[
playSe(spep_2+6,1023);
--playSe(spep_2+14,1023);
playSe(spep_2+22,1023);
--playSe(spep_2+28,1023);
playSe(spep_2+36,1023);
--playSe(spep_2+40,1023);
playSe(spep_2+48,1023);
]]
--4.11調整
SE001 = playSe(spep_2+6,1023);
stopSe(spep_2+32,SE001,5);
SE002 = playSe(spep_2+22,1023);
stopSe(spep_2+46,SE002,5);
SE003 = playSe(spep_2+36,1023);
stopSe(spep_2+58,SE003,5);
SE004 = playSe(spep_2+48,1023);

--黒背景
entryFadeBg(spep_2, 0,90, 0, 0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_2 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+90;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 (前)
rush = entryEffectLife( spep_4 + 0, SP_04x, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, rush, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, rush, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, rush, 255 );
setEffAlphaKey( spep_4 + 100, rush, 255 );
setEffRotateKey( spep_4 + 0, rush, 0 );
setEffRotateKey( spep_4 + 100, rush, 0 );

--流線
ryusen3 = entryEffectLife( spep_4  + 0,  914, 98, 0x80, -1, 0, 0,0 );

setEffMoveKey( spep_4  + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4  + 98, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4  + 0, ryusen3, 4.91, 1.44 );
setEffScaleKey( spep_4 -3 + 56, ryusen3, 4.91, 1.44 );
setEffScaleKey( spep_4 -3 + 57, ryusen3, 4.91, 1.44 );
setEffScaleKey( spep_4 -3 + 58, ryusen3, 5.14, 1.51 );
setEffScaleKey( spep_4  + 98, ryusen3, 5.14, 1.51 );

setEffRotateKey( spep_4  + 0, ryusen3, -149 );
setEffRotateKey( spep_4 -3 + 41, ryusen3, -149 );
setEffRotateKey( spep_4 -3 + 42, ryusen3, -41 );
setEffRotateKey( spep_4 -3 + 55, ryusen3, -41 );
setEffRotateKey( spep_4 -3 + 56, ryusen3, -145 );
setEffRotateKey( spep_4 -3 + 71, ryusen3, -145 );
setEffRotateKey( spep_4 -3 + 72, ryusen3, -322 );
setEffRotateKey( spep_4  + 98, ryusen3, -322 );

setEffAlphaKey( spep_4  + 0, ryusen3, 255 );
setEffAlphaKey( spep_4  + 98, ryusen3, 255 );

-- ** エフェクト等 (前)
rush_a = entryEffectLife( spep_4 + 0, SP_06x, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, rush_a, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, rush_a, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rush_a, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, rush_a, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, rush_a, 255 );
setEffAlphaKey( spep_4 + 100, rush_a, 255 );
setEffRotateKey( spep_4 + 0, rush_a, 0 );
setEffRotateKey( spep_4 + 100, rush_a, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_4 -3 + 32,  10019, 16, 0x100, -1, 0, 84.8, 187 );--ドンッ

setEffMoveKey( spep_4 -3 + 32, ctdon, 84.8, 187 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctdon, 94.9, 236.9 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctdon, 118.7, 280.4 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctdon, 114.4, 289.7 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctdon, 122.7, 282.7 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctdon, 114, 286.2 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdon, 128.1, 294.3 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdon, 132.8, 287.5 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdon, 140.2, 290.7 , 0 );

setEffScaleKey( spep_4 -3 + 32, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_4 -3 + 34, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_4 -3 + 36, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 38, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_4 -3 + 40, ctdon, 1.6, 1.6 );
setEffScaleKey( spep_4 -3 + 42, ctdon, 1.65, 1.65 );
setEffScaleKey( spep_4 -3 + 44, ctdon, 1.68, 1.68 );
setEffScaleKey( spep_4 -3 + 46, ctdon, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 48, ctdon, 1.75, 1.75 );

setEffRotateKey( spep_4 -3 + 32, ctdon, 16 );
setEffRotateKey( spep_4 -3 + 48, ctdon, 16 );

setEffAlphaKey( spep_4 -3 + 32, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 42, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 44, ctdon, 170 );
setEffAlphaKey( spep_4 -3 + 46, ctdon, 85 );
setEffAlphaKey( spep_4 -3 + 48, ctdon, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_4 -5 + 48,  10020, 18, 0x100, -1, 0, -111.5, 148.2 );--バキッ

setEffMoveKey( spep_4 -5 + 48, ctbaki, -111.5, 148.2 , 0 );
setEffMoveKey( spep_4 -5 + 50, ctbaki, -122.4, 193.2 , 0 );
setEffMoveKey( spep_4 -5 + 52, ctbaki, -118.1, 235.8 , 0 );
setEffMoveKey( spep_4 -5 + 54, ctbaki, -125, 242.9 , 0 );
setEffMoveKey( spep_4 -5 + 56, ctbaki, -115.4, 237.7 , 0 );
setEffMoveKey( spep_4 -5 + 58, ctbaki, -125.1, 238.1 , 0 );
setEffMoveKey( spep_4 -5 + 60, ctbaki, -133.4, 247.5 , 0 );
setEffMoveKey( spep_4 -5 + 62, ctbaki, -146.8, 240.1 , 0 );
setEffMoveKey( spep_4 -4 + 64, ctbaki, -160.2, 243 , 0 );

setEffScaleKey( spep_4 -5 + 50, ctbaki, 1.15, 1.15 );
setEffScaleKey( spep_4 -5 + 52, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_4 -5 + 54, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_4 -5 + 56, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_4 -5 + 58, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_4 -5+ 60, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_4 -5 + 62, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_4 -4 + 64, ctbaki, 1.75, 1.75 );

setEffRotateKey( spep_4 -5 + 48, ctbaki, -0.8 );
setEffRotateKey( spep_4 -5 + 50, ctbaki, -0.2 );
setEffRotateKey( spep_4 -5 + 52, ctbaki, 0.3 );
setEffRotateKey( spep_4 -4 + 64, ctbaki, 0.3 );

setEffAlphaKey( spep_4 -5 + 48, ctbaki, 255 );
setEffAlphaKey( spep_4 -5 + 58, ctbaki, 255 );
setEffAlphaKey( spep_4 -5 + 60, ctbaki, 170 );
setEffAlphaKey( spep_4 -5 + 62, ctbaki, 85 );
setEffAlphaKey( spep_4 -4 + 64, ctbaki, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_4 -4 + 64,  10019, 10, 0x100, -1, 0, 84.8, 187 );--ドンッ

setEffMoveKey( spep_4 -4 + 64, ctdon2, 84.8, 187 , 0 );
setEffMoveKey( spep_4 -4 + 66, ctdon2, 94.9, 236.9 , 0 );
setEffMoveKey( spep_4 -4 + 68, ctdon2, 118.7, 280.4 , 0 );
setEffMoveKey( spep_4 -4 + 70, ctdon2, 114.4, 289.7 , 0 );
setEffMoveKey( spep_4 -4 + 72, ctdon2, 122.7, 282.7 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctdon2, 123.7, 284.2 , 0 );

setEffScaleKey( spep_4 -4 + 64, ctdon2, 0.8, 0.8 );
setEffScaleKey( spep_4 -4 + 66, ctdon2, 1.15, 1.15 );
setEffScaleKey( spep_4 -4 + 68, ctdon2, 1.5, 1.5 );
setEffScaleKey( spep_4 -4 + 70, ctdon2, 1.55, 1.55 );
setEffScaleKey( spep_4 -4 + 72, ctdon2, 1.6, 1.6 );
setEffScaleKey( spep_4 -3 + 74, ctdon2, 1.65, 1.65 );

setEffRotateKey( spep_4 -4 + 64, ctdon2, 16 );
setEffRotateKey( spep_4 -3 + 74, ctdon2, 16 );

setEffAlphaKey( spep_4 -4 + 64, ctdon2, 255 );
setEffAlphaKey( spep_4 -4 + 68, ctdon2, 255 );
setEffAlphaKey( spep_4 -4 + 70, ctdon2, 170 );
setEffAlphaKey( spep_4 -4 + 72, ctdon2, 85 );
setEffAlphaKey( spep_4 -3 + 74, ctdon2, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_4 -3 + 74,  10020, 16, 0x100, -1, 0, -87, -145.8 );

setEffMoveKey( spep_4 -3 + 74, ctbaki2, -87, -145.8 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctbaki2, -97.9, -211.1 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctbaki2, -93.6, -278.7 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctbaki2, -100.5, -279.7 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctbaki2, -90.9, -293.1 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctbaki2, -100.6, -300.9 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctbaki2, -125.2, -307.8 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctbaki2, -154.9, -331.5 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctbaki2, -184.7, -345 , 0 );

setEffScaleKey( spep_4 -3 + 74, ctbaki2, 0.8, 0.8 );
setEffScaleKey( spep_4 -3 + 76, ctbaki2, 1.15, 1.15 );
setEffScaleKey( spep_4 -3 + 78, ctbaki2, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 80, ctbaki2, 1.55, 1.55 );
setEffScaleKey( spep_4 -3 + 82, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_4 -3 + 84, ctbaki2, 1.65, 1.65 );
setEffScaleKey( spep_4 -3 + 86, ctbaki2, 1.68, 1.68 );
setEffScaleKey( spep_4 -3 + 88, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 90, ctbaki2, 1.75, 1.75 );

setEffRotateKey( spep_4 -3 + 74, ctbaki2, -0.8 );
setEffRotateKey( spep_4 -3 + 76, ctbaki2, -0.2 );
setEffRotateKey( spep_4 -3 + 78, ctbaki2, 0.3 );
setEffRotateKey( spep_4 -3 + 90, ctbaki2, 0.3 );

setEffAlphaKey( spep_4 -3 + 74, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 84, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 86, ctbaki2, 170 );
setEffAlphaKey( spep_4 -3 + 88, ctbaki2, 85 );
setEffAlphaKey( spep_4 -3 + 90, ctbaki2, 0 );

--敵の動き
setDisp( spep_4 -3 +30, 1, 1 );
setDisp( spep_4 -3 + 98, 1, 0 );

--changeAnime( spep_4 -3 + 30, 1, 1,108);

setMoveKey( spep_4 -3 + 30, 1, 53.9, -3.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 58, -8.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 58.9, -2.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 46.4, -10.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 62.9, 1.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 54.8, -9.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 52, -0.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 56.7, -7.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 59.4, -6.7 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 56.3, -2.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 56.1, -12.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 57.6, 1.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 51.7, -9.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 62.4, -0.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 59, -5.6 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 49.8, -5.4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 53.4, -7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 57.1, -11.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 57.6, 4.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 59, -7.9 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 51.2, -1.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 49.3, -7.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 59, -5.5 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 58.9, -3.8 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 47.4, -15 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 61.8, 4.6 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 54.8, -7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 60.4, -3.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 49.8, -4.3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 49.3, -7.9 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 59, -4.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 54.8, -4.7 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 49.3, -7.9 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 59, -4.4 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 54.8, -4.7 , 0 );

setScaleKey( spep_4 -3 + 30, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 98, 1, 1.02, 1.02 );

setRotateKey( spep_4 -3 + 30, 1, 0 );
setRotateKey( spep_4 -3 + 98, 1, 0 );


--SE
SE1=playSe(spep_4,44);
stopSe(spep_4+26,SE1,0);
playSe(spep_4+28,1009);
playSe(spep_4+46,1010);
playSe(spep_4+60,1009);
playSe(spep_4+70,1010);


--黒背景
entryFadeBg(spep_4, 0,100, 0, 0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_4 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+100;

------------------------------------------------------
-- ボコボコ
------------------------------------------------------
-- ** エフェクト等 (前)
bokoboko = entryEffectLife( spep_5 + 0, SP_05x, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, bokoboko, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, bokoboko, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bokoboko, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, bokoboko, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, bokoboko, 255 );
setEffAlphaKey( spep_5 + 98, bokoboko, 255 );
setEffRotateKey( spep_5 + 0, bokoboko, 0 );
setEffRotateKey( spep_5 + 98, bokoboko, 0 );

-- ** エフェクト等 (後ろ)
bg2 = entryEffectLife( spep_5 + 0, SP_07x, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, bg2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, bg2, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, bg2, 80 );
setEffAlphaKey( spep_5 + 98, bg2, 80 );
setEffRotateKey( spep_5 + 0, bg2 , 0 );
setEffRotateKey( spep_5 + 98, bg2, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_5 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen1, 0,0 , 0 );
setEffMoveKey( spep_5 + 98, shuchusen1, 0,0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen1, 1.55, 1.55 );
setEffScaleKey( spep_5 + 98, shuchusen1, 1.55, 1.55 );

setEffRotateKey( spep_5 + 0, shuchusen1, 180 );
setEffRotateKey( spep_5 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_5 + 98, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_5+10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_5+10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_5+22,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_5+22, ctgogo, 72, 10 );

setEffMoveKey( spep_5+22, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_5+94, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_5+22, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_5 + 86, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_5 + 88, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_5 +90, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_5 + 93, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_5+94, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_5+22, ctgogo, 0 );
setEffRotateKey( spep_5+94, ctgogo, 0 );

setEffAlphaKey( spep_5+22, ctgogo, 0 );
setEffAlphaKey( spep_5 + 23, ctgogo, 255 );
setEffAlphaKey( spep_5 + 24, ctgogo, 255 );
setEffAlphaKey( spep_5+94, ctgogo, 255 );

--SE
playSe( spep_5, 1009); --殴り
playSe( spep_5+18, 1010); --殴り
playSe( spep_5+24, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_5, 0, 190, 0,0, 0, 0, 255);  -- 黒　背


--白フェード
entryFade( spep_5 + 90, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+98;

------------------------------------------------------
-- 叩き落とす
------------------------------------------------------

-- ** エフェクト等 (前)
tatakiotosi_f = entryEffectLife( spep_6 + 0, SP_08x, 72, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, tatakiotosi_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 72, tatakiotosi_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tatakiotosi_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 72, tatakiotosi_f, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, tatakiotosi_f, 255 );
setEffAlphaKey( spep_6 + 72, tatakiotosi_f, 255 );
setEffRotateKey( spep_6 + 0, tatakiotosi_f, 0 );
setEffRotateKey( spep_6 + 72, tatakiotosi_f, 0 );

-- ** エフェクト等 (後)
tatakiotosi_b = entryEffectLife( spep_6 + 0, SP_09x, 72, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, tatakiotosi_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 72, tatakiotosi_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tatakiotosi_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 72, tatakiotosi_b, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, tatakiotosi_b, 255 );
setEffAlphaKey( spep_6 + 72, tatakiotosi_b, 255 );
setEffRotateKey( spep_6 + 0, tatakiotosi_b, 0 );
setEffRotateKey( spep_6 + 72, tatakiotosi_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 68, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -6.7, 69.9 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -5, 68.6 , 0 );
setMoveKey( spep_6-3 + 4, 1, -3.3, 67.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, -1.7, 66 , 0 );
setMoveKey( spep_6-3 + 8, 1, 0, 64.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 1.6, 63.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, 3.3, 62.2 , 0 );
setMoveKey( spep_6-3 + 14, 1, 4.9, 60.9 , 0 );
setMoveKey( spep_6-3 + 16, 1, 6.6, 59.7 , 0 );
setMoveKey( spep_6-3 + 18, 1, 8.2, 58.4 , 0 );
setMoveKey( spep_6-3 + 20, 1, 9.9, 57.2 , 0 );
setMoveKey( spep_6-3 + 22, 1, 11.5, 55.9 , 0 );
setMoveKey( spep_6-3 + 24, 1, 13.1, 54.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, 14.8, 53.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 16.4, 52.2 , 0 );
setMoveKey( spep_6-3 + 30, 1, 18.7, 50.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 19.4, 7.1 , 0 );
setMoveKey( spep_6-3 + 34, 1, 19.5, -220.7 , 0 );
setMoveKey( spep_6-3 + 36, 1, 19.5, -386.3 , 0 );
setMoveKey( spep_6-3 + 38, 1, 19.6, -460.1 , 0 );
setMoveKey( spep_6-3 + 40, 1, 19.6, -525 , 0 );
setMoveKey( spep_6-3 + 42, 1, 19.6, -579.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, 19.4, -625.1 , 0 );
setMoveKey( spep_6-3 + 46, 1, 19.4, -662.5 , 0 );
setMoveKey( spep_6-3 + 48, 1, 19.4, -693.5 , 0 );
setMoveKey( spep_6-3 + 50, 1, 19.4, -718.8 , 0 );
setMoveKey( spep_6-3 + 52, 1, 19.4, -739.2 , 0 );
setMoveKey( spep_6-3 + 54, 1, 19.4, -755.5 , 0 );
setMoveKey( spep_6-3 + 56, 1, 19.4, -768.2 , 0 );
setMoveKey( spep_6-3 + 58, 1, 19.4, -777.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, 19.4, -784.4 , 0 );
setMoveKey( spep_6-3 + 62, 1, 19.4, -788.7 , 0 );
setMoveKey( spep_6-3 + 64, 1, 19.4, -790.9 , 0 );
setMoveKey( spep_6-3 + 66, 1, 19.4, -791.4 , 0 );
setMoveKey( spep_6 + 68, 1, 19.3, -790.1 , 0 );

setScaleKey( spep_6 + 0, 1, 1.03, 1.03 );
setScaleKey( spep_6 + 68, 1, 1.03, 1.03 );

setRotateKey( spep_6 + 0, 1, -17 );
--setRotateKey( spep_6-3 + 2, 1, -16.7 );
setRotateKey( spep_6-3 + 4, 1, -16.4 );
setRotateKey( spep_6-3 + 6, 1, -16.1 );
setRotateKey( spep_6-3 + 8, 1, -15.8 );
setRotateKey( spep_6-3 + 10, 1, -15.5 );
setRotateKey( spep_6-3 + 12, 1, -15.2 );
setRotateKey( spep_6-3 + 14, 1, -14.8 );
setRotateKey( spep_6-3 + 16, 1, -14.5 );
setRotateKey( spep_6-3 + 18, 1, -14.2 );
setRotateKey( spep_6-3 + 20, 1, -13.9 );
setRotateKey( spep_6-3 + 22, 1, -13.6 );
setRotateKey( spep_6-3 + 24, 1, -13.3 );
setRotateKey( spep_6-3 + 26, 1, -13 );
setRotateKey( spep_6-3 + 28, 1, -12.7 );
setRotateKey( spep_6-3 + 30, 1, -12 );
setRotateKey( spep_6-3 + 31, 1, -12 );
setRotateKey( spep_6-3 + 32, 1, -170 );
setRotateKey( spep_6 + 68, 1, -170 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_6 -3 + 32,  10020, 22, 0x100, -1, 0, -85.2, 301.9 );--バキッ

setEffMoveKey( spep_6 -3 + 32, ctbaki3, -85.2, 301.9 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctbaki3, -53.1, 299.7 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctbaki3, -56.1, 277.5 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctbaki3, -58.5, 284.7 , 0 );
setEffMoveKey( spep_6 -3 + 40, ctbaki3, -66.2, 286.4 , 0 );
setEffMoveKey( spep_6 -3 + 42, ctbaki3, -76.4, 280.8 , 0 );
setEffMoveKey( spep_6 -3 + 44, ctbaki3, -80.2, 279.2 , 0 );
setEffMoveKey( spep_6 -3 + 46, ctbaki3, -80.5, 281.9 , 0 );
setEffMoveKey( spep_6 -3 + 48, ctbaki3, -80.8, 284.7 , 0 );
setEffMoveKey( spep_6 -3 + 50, ctbaki3, -81.3, 287.5 , 0 );
setEffMoveKey( spep_6 -3 + 52, ctbaki3, -81.8, 290.3 , 0 );
setEffMoveKey( spep_6 -3 + 54, ctbaki3, -82.4, 293.1 , 0 );

setEffScaleKey( spep_6 -3 + 32, ctbaki3, 0.91, 0.91 );
setEffScaleKey( spep_6 -3 + 34, ctbaki3, 1.95, 1.95 );
setEffScaleKey( spep_6 -3 + 36, ctbaki3, 2.48, 2.48 );
setEffScaleKey( spep_6 -3 + 38, ctbaki3, 2.36, 2.36 );
setEffScaleKey( spep_6 -3 + 40, ctbaki3, 2.24, 2.24 );
setEffScaleKey( spep_6 -3 + 42, ctbaki3, 2.12, 2.12 );
setEffScaleKey( spep_6 -3 + 44, ctbaki3, 2.01, 2.01 );
setEffScaleKey( spep_6 -3 + 46, ctbaki3, 1.91, 1.91 );
setEffScaleKey( spep_6 -3 + 48, ctbaki3, 1.81, 1.81 );
setEffScaleKey( spep_6 -3 + 50, ctbaki3, 1.7, 1.7 );
setEffScaleKey( spep_6 -3 + 52, ctbaki3, 1.6, 1.6 );
setEffScaleKey( spep_6 -3 + 54, ctbaki3, 1.5, 1.5 );

setEffRotateKey( spep_6 -3 + 32, ctbaki3, -19 );
setEffRotateKey( spep_6 -3 + 34, ctbaki3, -19 );
setEffRotateKey( spep_6 -3 + 36, ctbaki3, -13 );
setEffRotateKey( spep_6 -3 + 38, ctbaki3, -24 );
setEffRotateKey( spep_6 -3 + 40, ctbaki3, -16 );
setEffRotateKey( spep_6 -3 + 42, ctbaki3, -24 );
setEffRotateKey( spep_6 -3 + 44, ctbaki3, -19 );
setEffRotateKey( spep_6 -3 + 45, ctbaki3, -19 );
setEffRotateKey( spep_6 -3 + 46, ctbaki3, -21.6 );
setEffRotateKey( spep_6 -3 + 48, ctbaki3, -24.2 );
setEffRotateKey( spep_6 -3 + 50, ctbaki3, -26.8 );
setEffRotateKey( spep_6 -3 + 52, ctbaki3, -29.4 );
setEffRotateKey( spep_6 -3 + 54, ctbaki3, -32 );

setEffAlphaKey( spep_6 -3 + 32, ctbaki3, 255 );
setEffAlphaKey( spep_6 -3 + 44, ctbaki3, 255 );
setEffAlphaKey( spep_6 -3 + 46, ctbaki3, 204 );
setEffAlphaKey( spep_6 -3 + 48, ctbaki3, 153 );
setEffAlphaKey( spep_6 -3 + 50, ctbaki3, 102 );
setEffAlphaKey( spep_6 -3 + 52, ctbaki3, 51 );
setEffAlphaKey( spep_6 -3 + 54, ctbaki3, 0 );

--流線
ryusen4 = entryEffectLife( spep_6 -3 + 36,  914, 32, 0x80, -1, 0,0, 0 );

setEffMoveKey( spep_6 -3 + 36, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_6  + 68, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 -3 + 36, ryusen4, 4.9, 1.44 );
setEffScaleKey( spep_6  + 68, ryusen4, 4.9, 1.44 );

setEffRotateKey( spep_6 -3 + 36, ryusen4, -90 );
setEffRotateKey( spep_6  + 68, ryusen4, -90 );

setEffAlphaKey( spep_6 -3 + 36, ryusen4, 128 );
setEffAlphaKey( spep_6 -3 + 38, ryusen4, 255 );
setEffAlphaKey( spep_6  + 68, ryusen4, 255 );

--SE
playSe( spep_6+4, 43); --瞬間移動
playSe( spep_6+30, 1011); --瞬間移動


--黒背景
entryFadeBg(spep_6, 0, 72, 0,0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_6 + 64, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_7=spep_6+72;

------------------------------------------------------
-- 地面に埋まる
------------------------------------------------------
-- ** エフェクト等 (前)

finish_f = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 150, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish_f, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 150, finish_f, 255 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 150, finish_f, 0 );

-- ** エフェクト等 (後)
finish_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 150, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish_b, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 150, finish_b, 255 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 150, finish_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 28, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, 31.7, 660.3 , 0 );
setMoveKey( spep_7-3 + 2, 1, 31.8, 641.8 , 0 );
setMoveKey( spep_7-3 + 4, 1, 31.8, 616.2 , 0 );
setMoveKey( spep_7-3 + 6, 1, 31.9, 583.9 , 0 );
setMoveKey( spep_7-3 + 8, 1, 31.9, 545.1 , 0 );
setMoveKey( spep_7-3 + 10, 1, 32, 499.6 , 0 );
setMoveKey( spep_7-3 + 12, 1, 32, 447 , 0 );
setMoveKey( spep_7-3 + 14, 1, 32.1, 386.4 , 0 );
setMoveKey( spep_7-3 + 16, 1, 32.1, 316.9 , 0 );
setMoveKey( spep_7-3 + 18, 1, 32.2, 236.9 , 0 );
setMoveKey( spep_7-3 + 20, 1, 32.2, 144.2 , 0 );
setMoveKey( spep_7-3 + 22, 1, 32.3, 35.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 32.3, -95.1 , 0 );
setMoveKey( spep_7-3 + 26, 1, 32.4, -257.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 32.4, -475.7 , 0 );
setMoveKey( spep_7 + 28, 1, 32.4, -605.7 , 0 );

setScaleKey( spep_7 + 0, 1, 0.85, 0.85 );
setScaleKey( spep_7 + 28, 1, 0.85, 0.85 );

setRotateKey( spep_7 + 0, 1, 133 );
setRotateKey( spep_7 + 28, 1, 133 );

--集中線
shuchusen2 = entryEffectLife( spep_7 + 0,  906, 148, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 148, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen2, 1.55, 1.55 );
setEffScaleKey( spep_7 + 148, shuchusen2, 1.55, 1.55 );

setEffRotateKey( spep_7 + 0, shuchusen2, 180 );
setEffRotateKey( spep_7 + 148, shuchusen2, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_7 + 0, shuchusen2, 255 );

--SE
SE2=playSe( spep_7, 44); --瞬間移動
stopSe(spep_7+28,SE2,0);
playSe( spep_7+30, 1023); --瞬間移動

-- ダメージ表示
dealDamage(spep_7+40);
entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+146);






end


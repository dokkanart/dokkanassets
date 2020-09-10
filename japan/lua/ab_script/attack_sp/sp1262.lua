--1016590:六星龍(乙姫)_旋風回転刃
--sp_effect_a9_00053

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
SP_01=	153001	;--	待機
SP_02=	153002	;--	なんか鬱
SP_03=	153003	;--	なんか鬱(背景なし)
SP_04=	153004	;--	敵にあたる気がする(背景)
SP_05=	153005	;--	敵にあたる気がする(ヒットエフェクト)
SP_06=	153006	;--	敵にあたる気がする(風)
SP_07=	153007	;--	なんか鬱2
SP_08=	153008	;--	敵にあたる気がする2(背景)
SP_09=	153009	;--	敵にあたる気がする2(ヒットエフェクト)
SP_10=	153010	;--	敵にあたる気がする2(風)
SP_11=	153011	;--	崩壊

--敵
SP_01x=	153001	;--	待機
SP_02x=	153002	;--	なんか鬱
SP_03x=	153003	;--	なんか鬱(背景なし)
SP_04x=	153004	;--	敵にあたる気がする(背景)
SP_05x=	153005	;--	敵にあたる気がする(ヒットエフェクト)
SP_06x=	153006	;--	敵にあたる気がする(風)
SP_07x=	153007	;--	なんか鬱2
SP_08x=	153008	;--	敵にあたる気がする2(背景)
SP_09x=	153009	;--	敵にあたる気がする2(ヒットエフェクト)
SP_10x=	153010	;--	敵にあたる気がする2(風)
SP_11x=	153011	;--	崩壊


-- 全体攻撃
SP_00=152974;--突風(逆回転)　全体攻撃用
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
--  待機
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 (前)
tame = entryEffectLife( spep_0 + 0, SP_01, 100, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.1, 1.1 );
setEffScaleKey( spep_0 + 100, tame, 1.1, 1.1 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0 +2+10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 +2+10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0 +2+22,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_0 +2+22, ctgogo, 72, 10 );

setEffMoveKey( spep_0 +2+22, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 +2+94, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 +2+22, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 +2 + 86, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 +2 + 88, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 +2 +90, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 +2 + 93, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 +2+94, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 +2+22, ctgogo, 0 );
setEffRotateKey( spep_0 +2+94, ctgogo, 0 );

setEffAlphaKey( spep_0 +2+22, ctgogo, 0 );
setEffAlphaKey( spep_0 +2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 +2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 +2+94, ctgogo, 255 );

--白フェード
entryFade( spep_0+93, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--SE
playSe( spep_0+24, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+100;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+83,4,8,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;


------------------------------------------------------
--  なんか鬱
------------------------------------------------------
-- ** エフェクト等 (前)
kaze = entryEffectLife( spep_2 + 0, SP_02, 60, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, kaze, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, kaze, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kaze, 1.1, 1.1 );
setEffScaleKey( spep_2 + 60, kaze, 1.1, 1.1 );
setEffAlphaKey( spep_2 + 0, kaze, 255 );
setEffAlphaKey( spep_2 + 60, kaze, 255 );
setEffRotateKey( spep_2 + 0, kaze, 0 );
setEffRotateKey( spep_2 + 60, kaze, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 2,  906, 56, 0x100, -1, 0, 0, 0 );

a=213;

setEffMoveKey( spep_2 + 2, shuchusen1, 213-a, 0 , 0 );
setEffMoveKey( spep_2 + 38, shuchusen1, 213-a, 0 , 0 );
setEffMoveKey( spep_2 + 40, shuchusen1, 177.8-a, 0 , 0 );
setEffMoveKey( spep_2 + 42, shuchusen1, 142.7-a, 0 , 0 );
setEffMoveKey( spep_2 + 44, shuchusen1, 107.5-a, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen1, 72.4-a, 0 , 0 );
setEffMoveKey( spep_2 + 48, shuchusen1, 37.2-a, 0 , 0 );
setEffMoveKey( spep_2 + 50, shuchusen1, 2.1-a, 0 , 0 );
setEffMoveKey( spep_2 + 52, shuchusen1, -33.1-a, 0 , 0 );
setEffMoveKey( spep_2 + 54, shuchusen1, -68.2-a, 0 , 0 );
setEffMoveKey( spep_2 + 56, shuchusen1, -103.4-a, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen1, -138.5-a, 0 , 0 );

setEffScaleKey( spep_2 + 38, shuchusen1, 1, 1 );
setEffScaleKey( spep_2 + 40, shuchusen1, 1.17, 1.02 );
setEffScaleKey( spep_2 + 42, shuchusen1, 1.35, 1.05 );
setEffScaleKey( spep_2 + 44, shuchusen1, 1.52, 1.07 );
setEffScaleKey( spep_2 + 46, shuchusen1, 1.69, 1.09 );
setEffScaleKey( spep_2 + 48, shuchusen1, 1.87, 1.12 );
setEffScaleKey( spep_2 + 50, shuchusen1, 2.04, 1.14 );
setEffScaleKey( spep_2 + 52, shuchusen1, 2.21, 1.16 );
setEffScaleKey( spep_2 + 54, shuchusen1, 2.38, 1.18 );
setEffScaleKey( spep_2 + 56, shuchusen1, 2.56, 1.21 );
setEffScaleKey( spep_2 + 58, shuchusen1, 2.73, 1.23 );

setEffRotateKey( spep_2 + 2, shuchusen1, 0 );
setEffRotateKey( spep_2 + 58, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 2, shuchusen1, 13 );
setEffAlphaKey( spep_2 + 4, shuchusen1, 27 );
setEffAlphaKey( spep_2 + 6, shuchusen1, 40 );
setEffAlphaKey( spep_2 + 8, shuchusen1, 54 );
setEffAlphaKey( spep_2 + 10, shuchusen1, 67 );
setEffAlphaKey( spep_2 + 12, shuchusen1, 81 );
setEffAlphaKey( spep_2 + 14, shuchusen1, 94 );
setEffAlphaKey( spep_2 + 16, shuchusen1, 107 );
setEffAlphaKey( spep_2 + 18, shuchusen1, 121 );
setEffAlphaKey( spep_2 + 20, shuchusen1, 134 );
setEffAlphaKey( spep_2 + 22, shuchusen1, 148 );
setEffAlphaKey( spep_2 + 24, shuchusen1, 161 );
setEffAlphaKey( spep_2 + 26, shuchusen1, 174 );
setEffAlphaKey( spep_2 + 28, shuchusen1, 188 );
setEffAlphaKey( spep_2 + 30, shuchusen1, 201 );
setEffAlphaKey( spep_2 + 32, shuchusen1, 215 );
setEffAlphaKey( spep_2 + 34, shuchusen1, 228 );
setEffAlphaKey( spep_2 + 36, shuchusen1, 242 );
setEffAlphaKey( spep_2 + 38, shuchusen1, 255 );




--白フェード
entryFade( spep_2+52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe( spep_2, 44); --風を貯める
playSe( spep_2+40, SE_04); --風を打つ

--次の準備
spep_3=spep_2+60;

------------------------------------------------------
-- 敵にあたる気がする
------------------------------------------------------
-- ** エフェクト等 (後)
bg = entryEffectLife( spep_3 + 0, SP_04, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, bg, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bg, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, bg, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, bg, 255 );
setEffAlphaKey( spep_3 + 80, bg, 255 );
setEffRotateKey( spep_3 + 0, bg, 0 );
setEffRotateKey( spep_3 + 80, bg, 0 );

-- ** エフェクト等 (後)
hit_b = entryEffectLife( spep_3 + 0, SP_05, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, hit_b, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 255 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  913, 58, 0x80, -1, 0, -110.7, -119.9 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1.58, 1.13 );
setEffScaleKey( spep_3 + 58, ryusen1, 1.58, 1.13 );

setEffRotateKey( spep_3 + 0, ryusen1, 34.7 );
setEffRotateKey( spep_3 + 58, ryusen1, 34.7 );

setEffAlphaKey( spep_3 + 0, ryusen1, 150 );
setEffAlphaKey( spep_3 + 58, ryusen1, 150 );

--集中線
shuchusem2 = entryEffectLife( spep_3 + 58,  906, 20, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 58, shuchusem2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, shuchusem2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 58, shuchusem2, 1, 1 );
setEffScaleKey( spep_3 + 78, shuchusem2, 1, 1 );

setEffRotateKey( spep_3 + 58, shuchusem2, 0 );
setEffRotateKey( spep_3 + 78, shuchusem2, 0 );

setEffAlphaKey( spep_3 + 58, shuchusem2, 128 );
setEffAlphaKey( spep_3 + 60, shuchusem2, 255 );
setEffAlphaKey( spep_3 + 78, shuchusem2, 255 );

-- ** エフェクト等 (前)
hit_f = entryEffectLife( spep_3 + 0, SP_06, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, hit_f, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 255 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );


changeAnime( spep_3  + 0, 1, 100 );
changeAnime( spep_3 -3 + 46, 1, 108 );
changeAnime( spep_3 -3 + 60, 1, 106 );

setMoveKey( spep_3  + 0, 1, 136, -116 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 135.9, -118 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 135.9, -115.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 135.7, -117.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 135.3, -115.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 134.6, -116.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 133.6, -112.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 132.2, -113.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 130.4, -108.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 128, -107.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 125.1, -101.7 , 0 );

setScaleKey( spep_3  + 0, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 6, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 10, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 12, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 14, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 20, 1, 0.53, 0.53 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 18, 1, 0 );

--SE
SE1=playSe( spep_3, SE_04); --風を打つ
playSe( spep_3+44, 1001); --ダメを受ける
playSe( spep_3+56, 1011); --ダメを受ける

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE1,0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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
setDisp( spep_3  + 78, 1, 0 );

setMoveKey( spep_3 -3 + 22, 1, 121.5, -98.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 117.1, -90.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 112, -86.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 106.1, -76.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 99.2, -69.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 91.3, -57.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 82.4, -47.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 72.4, -32.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 61.2, -20.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 48.8, -1.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 35.1, 6.2 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 20, 40 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 31.3, 31.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 49.6, 33.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 64.5, 3.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 80.9, 21.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 86.3, 40.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 86.7, 17.6 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 93.2, -13.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 78.7, 19.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 72.9, 53.5 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 65.7, 27.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 68.6, 6.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 61.4, 23.7 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 66.9, 41 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 64.8, 21.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 62.9, 27.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 60.2, 30 , 0 );
setMoveKey( spep_3  + 78, 1, 61, 26 , 0 );

setScaleKey( spep_3 -3 + 22, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 28, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 30, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 32, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 34, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 38, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 40, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 42, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 45, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 46, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 48, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 50, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 52, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 54, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 56, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 59, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 60, 1, 0.73, 0.73 );
setScaleKey( spep_3  + 78, 1, 0.73, 0.73 );

setRotateKey( spep_3 -3 + 59, 1, 0 );
setRotateKey( spep_3 -3 + 60, 1, -44.9 );
setRotateKey( spep_3 -3 + 62, 1, -45 );
setRotateKey( spep_3  + 78, 1, -45 );


-- ** エフェクト等 ** --
entryFade(spep_3+72,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+80;
------------------------------------------------------
--  なんか鬱Zeeeeee
------------------------------------------------------
-- ** エフェクト等 
kaze2 = entryEffectLife( spep_4 + 0, SP_07, 64, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, kaze2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 64, kaze2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kaze2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 64, kaze2, 1.1, 1.1 );
setEffAlphaKey( spep_4 + 0, kaze2, 255 );
setEffAlphaKey( spep_4 + 64, kaze2, 255 );
setEffRotateKey( spep_4 + 0, kaze2, 0 );
setEffRotateKey( spep_4 + 64, kaze2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 48, 0x100, -1, 0, 213, 0 );

setEffMoveKey( spep_4 + 0, shuchusen3, 213-a, 0 , 0 );
setEffMoveKey( spep_4 + 40, shuchusen3, 213-a, 0 , 0 );
setEffMoveKey( spep_4 + 42, shuchusen3, 168.2-a, 20 , 0 );
setEffMoveKey( spep_4 + 44, shuchusen3, 123.4-a, 40 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 78.7-a, 60 , 0 );
setEffMoveKey( spep_4 + 48, shuchusen3, 33.9-a, 80 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 40, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 42, shuchusen3, 1.32, 1.05 );
setEffScaleKey( spep_4 + 44, shuchusen3, 1.65, 1.1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1.97, 1.14 );
setEffScaleKey( spep_4 + 48, shuchusen3, 2.29, 1.19 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 48, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 191 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 128 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 64 );
setEffAlphaKey( spep_4 + 48, shuchusen3, 0 );

--SE
playSe( spep_4, 44); --風を貯める
playSe( spep_4+38, SE_04); --風を打つ

-- ** エフェクト等 ** --
entryFade(spep_4+56,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+64;




------------------------------------------------------
--  敵にあたる気がするZeeeeee
------------------------------------------------------
-- ** エフェクト等 (後)
bg2 = entryEffectLife( spep_5 + 0, SP_08, 150, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, bg2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg2, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, bg2, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, bg2, 255 );
setEffAlphaKey( spep_5 + 150, bg2, 255 );
setEffRotateKey( spep_5 + 0, bg2, 0 );
setEffRotateKey( spep_5 + 150, bg2, 0 );

-- ** エフェクト等 (後)
hit2_b = entryEffectLife( spep_5 + 0, SP_09, 150, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_b, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, hit2_b, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, hit2_b, 255 );
setEffAlphaKey( spep_5 + 150, hit2_b, 255 );
setEffRotateKey( spep_5 + 0, hit2_b, 0 );
setEffRotateKey( spep_5 + 150, hit2_b, 0 );

-- ** エフェクト等 (前)
hit2_f = entryEffectLife( spep_5 + 0, SP_10, 150, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_f, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, hit2_f, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, hit2_f, 255 );
setEffAlphaKey( spep_5 + 150, hit2_f, 255 );
setEffRotateKey( spep_5 + 0, hit2_f, 0 );
setEffRotateKey( spep_5 + 150, hit2_f, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 148, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 148, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 148, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 0, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 58, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 60, shuchusen4, 243 );
setEffAlphaKey( spep_5 + 62, shuchusen4, 232 );
setEffAlphaKey( spep_5 + 64, shuchusen4, 220 );
setEffAlphaKey( spep_5 + 66, shuchusen4, 209 );
setEffAlphaKey( spep_5 + 68, shuchusen4, 197 );
setEffAlphaKey( spep_5 + 70, shuchusen4, 185 );
setEffAlphaKey( spep_5 + 72, shuchusen4, 174 );
setEffAlphaKey( spep_5 + 74, shuchusen4, 162 );
setEffAlphaKey( spep_5 + 76, shuchusen4, 151 );
setEffAlphaKey( spep_5 + 78, shuchusen4, 139 );
setEffAlphaKey( spep_5 + 80, shuchusen4, 128 );
setEffAlphaKey( spep_5 + 82, shuchusen4, 116 );
setEffAlphaKey( spep_5 + 84, shuchusen4, 104 );
setEffAlphaKey( spep_5 + 86, shuchusen4, 93 );
setEffAlphaKey( spep_5 + 88, shuchusen4, 81 );
setEffAlphaKey( spep_5 + 90, shuchusen4, 70 );
setEffAlphaKey( spep_5 + 92, shuchusen4, 58 );
setEffAlphaKey( spep_5 + 94, shuchusen4, 46 );
setEffAlphaKey( spep_5 + 96, shuchusen4, 35 );
setEffAlphaKey( spep_5 + 98, shuchusen4, 23 );
setEffAlphaKey( spep_5 + 100, shuchusen4, 12 );
setEffAlphaKey( spep_5 + 102, shuchusen4, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 38, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 8.2, 31.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 8.2, 30 , 0 );
setMoveKey( spep_5-3 + 4, 1, 8.2, 28.1 , 0 );
setMoveKey( spep_5-3 + 6, 1, 9.7, 29.5 , 0 );
setMoveKey( spep_5-3 + 8, 1, 11.2, 30.9 , 0 );
setMoveKey( spep_5-3 + 10, 1, 9.7, 29.2 , 0 );
setMoveKey( spep_5-3 + 12, 1, 8.3, 27.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 9.6, 29.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 10.9, 30.9 , 0 );
setMoveKey( spep_5-3 + 18, 1, 9.8, 29.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, 8.7, 28.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 9.7, 29.6 , 0 );
setMoveKey( spep_5-3 + 24, 1, 10.8, 30.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 10.8, 29.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 10.8, 28.5 , 0 );
setMoveKey( spep_5-3 + 30, 1, 65.5, 29.5 , 0 );
setMoveKey( spep_5-3 + 32, 1, 120.3, 30.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 162.7, 29.9 , 0 );
setMoveKey( spep_5-3 + 36, 1, 205.1, 29.3 , 0 );
setMoveKey( spep_5-3 + 38, 1, 228.1, 30.4 , 0 );

setScaleKey( spep_5 + 0, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 38, 1, 0.73, 0.73 );

setRotateKey( spep_5 + 0, 1, -53 );
setRotateKey( spep_5-3 + 28, 1, -53 );
setRotateKey( spep_5-3 + 30, 1, -43.4 );
setRotateKey( spep_5-3 + 32, 1, -33.7 );
setRotateKey( spep_5-3 + 34, 1, -24.1 );
setRotateKey( spep_5-3 + 36, 1, -14.5 );
setRotateKey( spep_5-3 + 38, 1, -4.9 );

--SE
playSe( spep_5, SE_04); --風を打つ
playSe( spep_5+28, 1023); --押し込まれる
SE=playSe( spep_5+30, 1044); --岩が荒ぶってますアピール
setSeVolume(spep_5+30, 1044,70);

-- ** エフェクト等 ** --
entryFade(spep_5+142,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+150;

------------------------------------------------------
--崩壊
------------------------------------------------------
-- ** エフェクト等 (後)
houkai = entryEffect( spep_6 + 0, SP_11,  0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, houkai, 0, 0 , 0 );
setEffMoveKey( spep_6 + 300, houkai, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, houkai, 1.1, 1.1 );
setEffScaleKey( spep_6 + 300, houkai, 1.1, 1.1 );
setEffAlphaKey( spep_6 + 0, houkai, 255 );
setEffAlphaKey( spep_6 + 300, houkai, 255 );
setEffRotateKey( spep_6 + 0, houkai, 0 );
setEffRotateKey( spep_6 + 300, houkai, 0 );

--SE
playSe( spep_6+40, 1024); --風を打つ
stopSe(spep_6+278,SE,0);


-- ダメージ表示
dealDamage(spep_6+40);
entryFade( spep_6+280, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+290);

else 
------------------------------------------------------
--  待機
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 (前)
tame = entryEffectLife( spep_0 + 0, SP_01x, 100, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.1, 1.1 );
setEffScaleKey( spep_0 + 100, tame, 1.1, 1.1 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );

--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_0 +2+10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 +2+10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0 +2+22,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_0 +2+22, ctgogo, 72, 10 );

setEffMoveKey( spep_0 +2+22, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 +2+94, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 +2+22, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 +2 + 86, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 +2 + 88, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 +2 +90, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 +2 + 93, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 +2+94, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 +2+22, ctgogo, 0 );
setEffRotateKey( spep_0 +2+94, ctgogo, 0 );

setEffAlphaKey( spep_0 +2+22, ctgogo, 0 );
setEffAlphaKey( spep_0 +2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 +2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 +2+94, ctgogo, 255 );
]]--

--白フェード
entryFade( spep_0+93, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--SE
playSe( spep_0+24, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+100;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+83,4,8,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;


------------------------------------------------------
--  なんか鬱
------------------------------------------------------
-- ** エフェクト等 (前)
kaze = entryEffectLife( spep_2 + 0, SP_02x, 60, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, kaze, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, kaze, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kaze, 1.1, 1.1 );
setEffScaleKey( spep_2 + 60, kaze, 1.1, 1.1 );
setEffAlphaKey( spep_2 + 0, kaze, 255 );
setEffAlphaKey( spep_2 + 60, kaze, 255 );
setEffRotateKey( spep_2 + 0, kaze, 0 );
setEffRotateKey( spep_2 + 60, kaze, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 2,  906, 56, 0x100, -1, 0, 0, 0 );

a=213;

setEffMoveKey( spep_2 + 2, shuchusen1, 213-a, 0 , 0 );
setEffMoveKey( spep_2 + 38, shuchusen1, 213-a, 0 , 0 );
setEffMoveKey( spep_2 + 40, shuchusen1, 177.8-a, 0 , 0 );
setEffMoveKey( spep_2 + 42, shuchusen1, 142.7-a, 0 , 0 );
setEffMoveKey( spep_2 + 44, shuchusen1, 107.5-a, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen1, 72.4-a, 0 , 0 );
setEffMoveKey( spep_2 + 48, shuchusen1, 37.2-a, 0 , 0 );
setEffMoveKey( spep_2 + 50, shuchusen1, 2.1-a, 0 , 0 );
setEffMoveKey( spep_2 + 52, shuchusen1, -33.1-a, 0 , 0 );
setEffMoveKey( spep_2 + 54, shuchusen1, -68.2-a, 0 , 0 );
setEffMoveKey( spep_2 + 56, shuchusen1, -103.4-a, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen1, -138.5-a, 0 , 0 );

setEffScaleKey( spep_2 + 38, shuchusen1, 1, 1 );
setEffScaleKey( spep_2 + 40, shuchusen1, 1.17, 1.02 );
setEffScaleKey( spep_2 + 42, shuchusen1, 1.35, 1.05 );
setEffScaleKey( spep_2 + 44, shuchusen1, 1.52, 1.07 );
setEffScaleKey( spep_2 + 46, shuchusen1, 1.69, 1.09 );
setEffScaleKey( spep_2 + 48, shuchusen1, 1.87, 1.12 );
setEffScaleKey( spep_2 + 50, shuchusen1, 2.04, 1.14 );
setEffScaleKey( spep_2 + 52, shuchusen1, 2.21, 1.16 );
setEffScaleKey( spep_2 + 54, shuchusen1, 2.38, 1.18 );
setEffScaleKey( spep_2 + 56, shuchusen1, 2.56, 1.21 );
setEffScaleKey( spep_2 + 58, shuchusen1, 2.73, 1.23 );

setEffRotateKey( spep_2 + 2, shuchusen1, 0 );
setEffRotateKey( spep_2 + 58, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 2, shuchusen1, 13 );
setEffAlphaKey( spep_2 + 4, shuchusen1, 27 );
setEffAlphaKey( spep_2 + 6, shuchusen1, 40 );
setEffAlphaKey( spep_2 + 8, shuchusen1, 54 );
setEffAlphaKey( spep_2 + 10, shuchusen1, 67 );
setEffAlphaKey( spep_2 + 12, shuchusen1, 81 );
setEffAlphaKey( spep_2 + 14, shuchusen1, 94 );
setEffAlphaKey( spep_2 + 16, shuchusen1, 107 );
setEffAlphaKey( spep_2 + 18, shuchusen1, 121 );
setEffAlphaKey( spep_2 + 20, shuchusen1, 134 );
setEffAlphaKey( spep_2 + 22, shuchusen1, 148 );
setEffAlphaKey( spep_2 + 24, shuchusen1, 161 );
setEffAlphaKey( spep_2 + 26, shuchusen1, 174 );
setEffAlphaKey( spep_2 + 28, shuchusen1, 188 );
setEffAlphaKey( spep_2 + 30, shuchusen1, 201 );
setEffAlphaKey( spep_2 + 32, shuchusen1, 215 );
setEffAlphaKey( spep_2 + 34, shuchusen1, 228 );
setEffAlphaKey( spep_2 + 36, shuchusen1, 242 );
setEffAlphaKey( spep_2 + 38, shuchusen1, 255 );




--白フェード
entryFade( spep_2+52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe( spep_2, 44); --風を貯める
playSe( spep_2+40, SE_04); --風を打つ

--次の準備
spep_3=spep_2+60;

------------------------------------------------------
-- 敵にあたる気がする
------------------------------------------------------
-- ** エフェクト等 (後)
bg = entryEffectLife( spep_3 + 0, SP_04x, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, bg, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bg, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, bg, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, bg, 255 );
setEffAlphaKey( spep_3 + 80, bg, 255 );
setEffRotateKey( spep_3 + 0, bg, 0 );
setEffRotateKey( spep_3 + 80, bg, 0 );

-- ** エフェクト等 (後)
hit_b = entryEffectLife( spep_3 + 0, SP_05x, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, hit_b, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 255 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  913, 58, 0x80, -1, 0, -110.7, -119.9 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1.58, 1.13 );
setEffScaleKey( spep_3 + 58, ryusen1, 1.58, 1.13 );

setEffRotateKey( spep_3 + 0, ryusen1, 34.7 );
setEffRotateKey( spep_3 + 58, ryusen1, 34.7 );

setEffAlphaKey( spep_3 + 0, ryusen1, 150 );
setEffAlphaKey( spep_3 + 58, ryusen1, 150 );

--集中線
shuchusem2 = entryEffectLife( spep_3 + 58,  906, 20, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 58, shuchusem2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, shuchusem2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 58, shuchusem2, 1, 1 );
setEffScaleKey( spep_3 + 78, shuchusem2, 1, 1 );

setEffRotateKey( spep_3 + 58, shuchusem2, 0 );
setEffRotateKey( spep_3 + 78, shuchusem2, 0 );

setEffAlphaKey( spep_3 + 58, shuchusem2, 128 );
setEffAlphaKey( spep_3 + 60, shuchusem2, 255 );
setEffAlphaKey( spep_3 + 78, shuchusem2, 255 );

-- ** エフェクト等 (前)
hit_f = entryEffectLife( spep_3 + 0, SP_06x, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, hit_f, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 255 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );


changeAnime( spep_3  + 0, 1, 100 );
changeAnime( spep_3 -3 + 46, 1, 108 );
changeAnime( spep_3 -3 + 60, 1, 106 );

setMoveKey( spep_3  + 0, 1, 136, -116 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 135.9, -118 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 135.9, -115.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 135.7, -117.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 135.3, -115.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 134.6, -116.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 133.6, -112.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 132.2, -113.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 130.4, -108.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 128, -107.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 125.1, -101.7 , 0 );

setScaleKey( spep_3  + 0, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 6, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 10, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 12, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 14, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 20, 1, 0.53, 0.53 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 18, 1, 0 );

--SE
SE1=playSe( spep_3, SE_04); --風を打つ
playSe( spep_3+44, 1001); --ダメを受ける
playSe( spep_3+56, 1011); --ダメを受ける

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE1,0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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
setDisp( spep_3  + 78, 1, 0 );

setMoveKey( spep_3 -3 + 22, 1, 121.5, -98.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 117.1, -90.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 112, -86.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 106.1, -76.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 99.2, -69.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 91.3, -57.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 82.4, -47.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 72.4, -32.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 61.2, -20.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 48.8, -1.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 35.1, 6.2 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 20, 40 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 31.3, 31.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 49.6, 33.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 64.5, 3.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 80.9, 21.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 86.3, 40.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 86.7, 17.6 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 93.2, -13.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 78.7, 19.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 72.9, 53.5 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 65.7, 27.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 68.6, 6.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 61.4, 23.7 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 66.9, 41 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 64.8, 21.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 62.9, 27.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 60.2, 30 , 0 );
setMoveKey( spep_3  + 78, 1, 61, 26 , 0 );

setScaleKey( spep_3 -3 + 22, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 28, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 30, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 32, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 34, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 38, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 40, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 42, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 45, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 46, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 48, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 50, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 52, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 54, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 56, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 59, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 60, 1, 0.73, 0.73 );
setScaleKey( spep_3  + 78, 1, 0.73, 0.73 );

setRotateKey( spep_3 -3 + 59, 1, 0 );
setRotateKey( spep_3 -3 + 60, 1, -44.9 );
setRotateKey( spep_3 -3 + 62, 1, -45 );
setRotateKey( spep_3  + 78, 1, -45 );


-- ** エフェクト等 ** --
entryFade(spep_3+72,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+80;
------------------------------------------------------
--  なんか鬱Zeeeeee
------------------------------------------------------
-- ** エフェクト等 
kaze2 = entryEffectLife( spep_4 + 0, SP_07x, 64, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, kaze2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 64, kaze2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kaze2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 64, kaze2, 1.1, 1.1 );
setEffAlphaKey( spep_4 + 0, kaze2, 255 );
setEffAlphaKey( spep_4 + 64, kaze2, 255 );
setEffRotateKey( spep_4 + 0, kaze2, 0 );
setEffRotateKey( spep_4 + 64, kaze2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 48, 0x100, -1, 0, 213, 0 );

setEffMoveKey( spep_4 + 0, shuchusen3, 213-a, 0 , 0 );
setEffMoveKey( spep_4 + 40, shuchusen3, 213-a, 0 , 0 );
setEffMoveKey( spep_4 + 42, shuchusen3, 168.2-a, 20 , 0 );
setEffMoveKey( spep_4 + 44, shuchusen3, 123.4-a, 40 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 78.7-a, 60 , 0 );
setEffMoveKey( spep_4 + 48, shuchusen3, 33.9-a, 80 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 40, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 42, shuchusen3, 1.32, 1.05 );
setEffScaleKey( spep_4 + 44, shuchusen3, 1.65, 1.1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1.97, 1.14 );
setEffScaleKey( spep_4 + 48, shuchusen3, 2.29, 1.19 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 48, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 191 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 128 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 64 );
setEffAlphaKey( spep_4 + 48, shuchusen3, 0 );

--SE
playSe( spep_4, 44); --風を貯める
playSe( spep_4+38, SE_04); --風を打つ

-- ** エフェクト等 ** --
entryFade(spep_4+56,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+64;




------------------------------------------------------
--  敵にあたる気がするZeeeeee
------------------------------------------------------
-- ** エフェクト等 (後)
bg2 = entryEffectLife( spep_5 + 0, SP_08x, 150, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, bg2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg2, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, bg2, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, bg2, 255 );
setEffAlphaKey( spep_5 + 150, bg2, 255 );
setEffRotateKey( spep_5 + 0, bg2, 0 );
setEffRotateKey( spep_5 + 150, bg2, 0 );

-- ** エフェクト等 (後)
hit2_b = entryEffectLife( spep_5 + 0, SP_09x, 150, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_b, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, hit2_b, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, hit2_b, 255 );
setEffAlphaKey( spep_5 + 150, hit2_b, 255 );
setEffRotateKey( spep_5 + 0, hit2_b, 0 );
setEffRotateKey( spep_5 + 150, hit2_b, 0 );

-- ** エフェクト等 (前)
hit2_f = entryEffectLife( spep_5 + 0, SP_10x, 150, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_f, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, hit2_f, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, hit2_f, 255 );
setEffAlphaKey( spep_5 + 150, hit2_f, 255 );
setEffRotateKey( spep_5 + 0, hit2_f, 0 );
setEffRotateKey( spep_5 + 150, hit2_f, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 148, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 148, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 148, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 0, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 58, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 60, shuchusen4, 243 );
setEffAlphaKey( spep_5 + 62, shuchusen4, 232 );
setEffAlphaKey( spep_5 + 64, shuchusen4, 220 );
setEffAlphaKey( spep_5 + 66, shuchusen4, 209 );
setEffAlphaKey( spep_5 + 68, shuchusen4, 197 );
setEffAlphaKey( spep_5 + 70, shuchusen4, 185 );
setEffAlphaKey( spep_5 + 72, shuchusen4, 174 );
setEffAlphaKey( spep_5 + 74, shuchusen4, 162 );
setEffAlphaKey( spep_5 + 76, shuchusen4, 151 );
setEffAlphaKey( spep_5 + 78, shuchusen4, 139 );
setEffAlphaKey( spep_5 + 80, shuchusen4, 128 );
setEffAlphaKey( spep_5 + 82, shuchusen4, 116 );
setEffAlphaKey( spep_5 + 84, shuchusen4, 104 );
setEffAlphaKey( spep_5 + 86, shuchusen4, 93 );
setEffAlphaKey( spep_5 + 88, shuchusen4, 81 );
setEffAlphaKey( spep_5 + 90, shuchusen4, 70 );
setEffAlphaKey( spep_5 + 92, shuchusen4, 58 );
setEffAlphaKey( spep_5 + 94, shuchusen4, 46 );
setEffAlphaKey( spep_5 + 96, shuchusen4, 35 );
setEffAlphaKey( spep_5 + 98, shuchusen4, 23 );
setEffAlphaKey( spep_5 + 100, shuchusen4, 12 );
setEffAlphaKey( spep_5 + 102, shuchusen4, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 38, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 8.2, 31.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 8.2, 30 , 0 );
setMoveKey( spep_5-3 + 4, 1, 8.2, 28.1 , 0 );
setMoveKey( spep_5-3 + 6, 1, 9.7, 29.5 , 0 );
setMoveKey( spep_5-3 + 8, 1, 11.2, 30.9 , 0 );
setMoveKey( spep_5-3 + 10, 1, 9.7, 29.2 , 0 );
setMoveKey( spep_5-3 + 12, 1, 8.3, 27.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 9.6, 29.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 10.9, 30.9 , 0 );
setMoveKey( spep_5-3 + 18, 1, 9.8, 29.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, 8.7, 28.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 9.7, 29.6 , 0 );
setMoveKey( spep_5-3 + 24, 1, 10.8, 30.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 10.8, 29.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 10.8, 28.5 , 0 );
setMoveKey( spep_5-3 + 30, 1, 65.5, 29.5 , 0 );
setMoveKey( spep_5-3 + 32, 1, 120.3, 30.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 162.7, 29.9 , 0 );
setMoveKey( spep_5-3 + 36, 1, 205.1, 29.3 , 0 );
setMoveKey( spep_5-3 + 38, 1, 228.1, 30.4 , 0 );

setScaleKey( spep_5 + 0, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 38, 1, 0.73, 0.73 );

setRotateKey( spep_5 + 0, 1, -53 );
setRotateKey( spep_5-3 + 28, 1, -53 );
setRotateKey( spep_5-3 + 30, 1, -43.4 );
setRotateKey( spep_5-3 + 32, 1, -33.7 );
setRotateKey( spep_5-3 + 34, 1, -24.1 );
setRotateKey( spep_5-3 + 36, 1, -14.5 );
setRotateKey( spep_5-3 + 38, 1, -4.9 );

--SE
playSe( spep_5, SE_04); --風を打つ
playSe( spep_5+28, 1023); --押し込まれる
SE=playSe( spep_5+30, 1044); --岩が荒ぶってますアピール
setSeVolume(spep_5+30, 1044,70);

-- ** エフェクト等 ** --
entryFade(spep_5+142,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+150;

------------------------------------------------------
--崩壊
------------------------------------------------------
-- ** エフェクト等 (後)
houkai = entryEffect( spep_6 + 0, SP_11x,  0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, houkai, 0, 0 , 0 );
setEffMoveKey( spep_6 + 300, houkai, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, houkai, 1.1, 1.1 );
setEffScaleKey( spep_6 + 300, houkai, 1.1, 1.1 );
setEffAlphaKey( spep_6 + 0, houkai, 255 );
setEffAlphaKey( spep_6 + 300, houkai, 255 );
setEffRotateKey( spep_6 + 0, houkai, 0 );
setEffRotateKey( spep_6 + 300, houkai, 0 );

--SE
playSe( spep_6+40, 1024); --風を打つ
stopSe(spep_6+278,SE,0);


-- ダメージ表示
dealDamage(spep_6+40);
entryFade( spep_6+280, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+290);
end

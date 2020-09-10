--ピッコロ大魔王_爆力魔波

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
SP_01 = 153129;  --導入、セリフ部、キャラ背景込み
SP_02 = 153130;  --連続ビーム発射
SP_03 = 153131;  --連続ビーム敵ヒット用、敵より手前に配置
SP_04 = 153132;  --連続ビーム敵ヒット用、敵より奥に配置、
SP_05 = 153133;  --シャッター部
SP_06 = 153134;  --シャッター裏、必殺技シーン、キャラ背景込み
SP_07 = 153135;  --ビーム発射部
SP_08 = 153136;  --ef_007の背景
SP_09 = 153137;  --ビーム敵近付き部、消し炭キャラコマ含み
SP_10 = 153138;  --ビーム敵近付き部の赤煙エフェクト、敵より裏に配置
SP_11 = 153139;  --爆発背景シーン
SP_12 = 153140;  --ef_002の背景
SP_13 = 153141;  --ef_003の背景
SP_14 = 153142;  --ef_009の背景

--敵側
SP_02r = 153143;  --ef_002の反転用
SP_07r = 153144;  --ef_007の反転用


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
-- spep_0(92F)
-- SP_01 = 153129;  --導入、セリフ部、キャラ背景込み
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 92, 0x80, -1, 0, 0, 0 );  --導入、セリフ部、キャラ背景込み
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 92, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 92, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 92, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 92, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_0,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+92,  shuchusen1,  0,  0);
setEffScaleKey(  spep_0,  shuchusen1,  1.1,  1.4);
setEffScaleKey(  spep_0+92,  shuchusen1,  1.1,  1.4);
setEffRotateKey(  spep_0,  shuchusen1,  0);
setEffRotateKey(  spep_0+92,  shuchusen1,  0);
setEffAlphaKey(  spep_0,  shuchusen1,  255);
setEffAlphaKey(  spep_0+92,  shuchusen1,  255);

--顔カットイン
speff=entryEffect(spep_0+4,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+4,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 16, ctgogo, 70.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 88, ctgogo, 70.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 80, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 82, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 84, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 86, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 88, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 88, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16, ctgogo, 0 );
setEffAlphaKey( spep_0 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );

--SE
playSe( spep_0 , SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0+80, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 92;

------------------------------------------------------
-- spep_1(120F)
-- SP_02 = 153130;  --連続ビーム発射
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_1, SP_02, 120, 0x100, -1, 0, 0, 0 );  --連続ビーム発射
setEffMoveKey( spep_1 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, beam, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, beam, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam, 0 );
setEffRotateKey( spep_1 + 120, beam, 0 );
setEffAlphaKey( spep_1 + 0, beam, 255 );
setEffAlphaKey( spep_1 + 120, beam, 255 );

bg1 = entryEffectLife( spep_1, SP_12, 120, 0x80, -1, 0, 0, 0 );  --ef_002の背景
setEffMoveKey( spep_1 + 0, bg1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, bg1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, bg1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, bg1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bg1, 0 );
setEffRotateKey( spep_1 + 120, bg1, 0 );
setEffAlphaKey( spep_1 + 0, bg1, 255 );
setEffAlphaKey( spep_1 + 120, bg1, 255 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  921, 120, 0x80, -1, 0, 62.1, 55 );

setEffMoveKey( spep_1 + 0, ryusen1, 62.1, 55 , 0 );
setEffMoveKey( spep_1 + 120, ryusen1, 62.1, 55 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.42, 1.6 );
setEffScaleKey( spep_1 + 120, ryusen1, 1.42, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen1, -175 );
setEffRotateKey( spep_1 + 120, ryusen1, -175 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 120, ryusen1, 255 );


--書き文字
ctbibibi = entryEffectLife( spep_1 + 34,  10025, 84, 0x100, -1, 0, 105.2, 303.3 );--ビビビ
setEffShake( spep_1 + 34, ctbibibi, 84, 10 );

setEffMoveKey( spep_1 + 34, ctbibibi, 105.2, 303.3 , 0 );
setEffMoveKey( spep_1 + 36, ctbibibi, 120.4, 304.3 , 0 );
setEffMoveKey( spep_1 + 38, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_1 + 40, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_1 + 42, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_1 + 44, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_1 + 46, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_1 + 48, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_1 + 50, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_1 + 52, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_1 + 54, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_1 + 56, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_1 + 58, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_1 + 60, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_1 + 62, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_1 + 64, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_1 + 66, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_1 + 68, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_1 + 70, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_1 + 72, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_1 + 74, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_1 + 76, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_1 + 78, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_1 + 80, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_1 + 82, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_1 + 84, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_1 + 86, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_1 + 88, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_1 + 90, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_1 + 92, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_1 + 94, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_1 + 96, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_1 + 98, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_1 + 100, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_1 + 102, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_1 + 104, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_1 + 106, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_1 + 108, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_1 + 110, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_1 + 112, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_1 + 114, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_1 + 116, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_1 + 118, ctbibibi, 124, 316.1 , 0 );

a = 0;
b = 0;

setEffScaleKey( spep_1 + 34, ctbibibi, 1.47+a, 1.47+b );
setEffScaleKey( spep_1 + 36, ctbibibi, 1.66+a, 1.66+b );
setEffScaleKey( spep_1 + 38, ctbibibi, 1.86+a, 1.86+b );
setEffScaleKey( spep_1 + 118, ctbibibi, 1.86+a, 1.86+b );

--setEffAlphaKey( spep_1 + 34, ctbibibi, 85 );
--setEffAlphaKey( spep_1 + 36, ctbibibi, 170 );
--setEffAlphaKey( spep_1 + 38, ctbibibi, 255 );
setEffAlphaKey( spep_1 + 34, ctbibibi, 255 );
setEffAlphaKey( spep_1 + 118, ctbibibi, 255 );

setEffRotateKey( spep_1 + 34, ctbibibi, 0 );
setEffRotateKey( spep_1 + 118, ctbibibi, 0 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+28 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    ]]--
    
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
playSe( spep_1+34 , 1021 );  --fast shot
playSe( spep_1+58 , 1021 );  --second shot

-- ** ホワイトフェード ** --
entryFade( spep_1, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1+30, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1+58, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1+108, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 120;

------------------------------------------------------
-- spep_2(106F)
-- SP_03 = 153131;  --連続ビーム敵ヒット用、敵より手前に配置
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_2, SP_03, 106, 0x100, -1, 0, 0, 0 );  --連続ビーム敵ヒット用、敵より手前に配置
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 106, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 106, hit_f, 255 );

bg2 = entryEffectLife( spep_2, SP_13, 106, 0x80, -1, 0, 0, 0 );  --ef_003の背景
setEffMoveKey( spep_2 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, bg2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bg2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, bg2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bg2, 0 );
setEffRotateKey( spep_2 + 106, bg2, 0 );
setEffAlphaKey( spep_2 + 0, bg2, 255 );
setEffAlphaKey( spep_2 + 106, bg2, 255 );

--流線
ryusen2 = entryEffectLife( spep_2 + 0,  921, 108, 0x80, -1, 0, -69.5, -127.6 );

setEffMoveKey( spep_2 + 0, ryusen2, -69.5, -127.6 , 0 );
setEffMoveKey( spep_2 + 108, ryusen2, -69.5, -127.6 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.42, 1.6 );
setEffScaleKey( spep_2 + 108, ryusen2, 1.42, 1.6 );

setEffRotateKey( spep_2 + 0, ryusen2, 0 );
setEffRotateKey( spep_2 + 108, ryusen2, 0 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 108, ryusen2, 255 );

hit_f = entryEffectLife( spep_2, SP_04, 106, 0x80, -1, 0, 0, 0 );  --連続ビーム敵ヒット用、敵より奥に配置
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 106, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 106, hit_f, 255 );


--敵キャラ
--イニシャライズ
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 106, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 31, 1, 106 );

--誤差調整用
spep_2a = spep_2 - 3;

--動き
setMoveKey( spep_2a + 4, 1, 290.5, -47.5 , 0 );
setMoveKey( spep_2a + 6, 1, 190, -57.6 , 0 );
setMoveKey( spep_2a + 8, 1, 90.8, -61.1 , 0 );
setMoveKey( spep_2a + 10, 1, 82.3, -62.9 , 0 );
setMoveKey( spep_2a + 12, 1, 84.8, -59.1 , 0 );
setMoveKey( spep_2a + 14, 1, 79, -61.2 , 0 );
setMoveKey( spep_2a + 16, 1, 80.1, -65.9 , 0 );
setMoveKey( spep_2a + 18, 1, 76.3, -57.8 , 0 );
setMoveKey( spep_2a + 20, 1, 72.3, -65.3 , 0 );
setMoveKey( spep_2a + 22, 1, 70.5, -66.7 , 0 );
setMoveKey( spep_2a + 24, 1, 76.6, -65 , 0 );
setMoveKey( spep_2a + 26, 1, 70.6, -59.3 , 0 );
setMoveKey( spep_2a + 28, 1, 70.2, -67.4 , 0 );
setMoveKey( spep_2a + 30, 1, 71.8, -63.7 , 0 );
setMoveKey( spep_2a + 33, 1, 60.9, -64.8 , 0 );
setMoveKey( spep_2a + 34, 1, 16.2, -21.6 , 0 );
setMoveKey( spep_2a + 36, 1, 13.5, -21.2 , 0 );
setMoveKey( spep_2a + 38, 1, 4.2, -29.4 , 0 );
setMoveKey( spep_2a + 40, 1, 7.6, -34.1 , 0 );
setMoveKey( spep_2a + 42, 1, 10.3, -26.6 , 0 );
setMoveKey( spep_2a + 44, 1, -4.7, -25.3 , 0 );
setMoveKey( spep_2a + 46, 1, -5.3, -31.6 , 0 );
setMoveKey( spep_2a + 48, 1, 2.9, -37 , 0 );
setMoveKey( spep_2a + 50, 1, -10.1, -20.9 , 0 );
setMoveKey( spep_2a + 52, 1, 3.4, -32.6 , 0 );
setMoveKey( spep_2a + 54, 1, -15.9, -25.3 , 0 );
setMoveKey( spep_2a + 56, 1, -18.5, -30.1 , 0 );
setMoveKey( spep_2a + 58, 1, -7.4, -17.1 , 0 );
setMoveKey( spep_2a + 60, 1, -9.7, -35.6 , 0 );
setMoveKey( spep_2a + 62, 1, -7.8, -21.9 , 0 );
setMoveKey( spep_2a + 64, 1, -22.8, -36 , 0 );
setMoveKey( spep_2a + 66, 1, -14.7, -35.3 , 0 );
setMoveKey( spep_2a + 68, 1, -31.5, -28.1 , 0 );
setMoveKey( spep_2a + 70, 1, -16.4, -32.9 , 0 );
setMoveKey( spep_2a + 72, 1, -30.3, -23.4 , 0 );
setMoveKey( spep_2a + 74, 1, -37.5, -30.4 , 0 );
setMoveKey( spep_2a + 76, 1, -19.5, -23.2 , 0 );
setMoveKey( spep_2a + 78, 1, -21.3, -21.2 , 0 );
setMoveKey( spep_2a + 80, 1, -31, -42.7 , 0 );
setMoveKey( spep_2a + 82, 1, -28.8, -22.4 , 0 );
setMoveKey( spep_2a + 84, 1, -50.1, -22.6 , 0 );
setMoveKey( spep_2a + 86, 1, -23.7, -25.4 , 0 );
setMoveKey( spep_2a + 88, 1, -34.6, -19 , 0 );
setMoveKey( spep_2a + 90, 1, -50.7, -19.9 , 0 );
setMoveKey( spep_2a + 92, 1, -27, -32.9 , 0 );
setMoveKey( spep_2a + 94, 1, -60, -34.6 , 0 );
setMoveKey( spep_2a + 96, 1, -41.3, -19.4 , 0 );
setMoveKey( spep_2a + 98, 1, -59.3, -35 , 0 );
setMoveKey( spep_2a + 100, 1, -34.6, -33.1 , 0 );
setMoveKey( spep_2a + 102, 1, -67.8, -34.8 , 0 );
setMoveKey( spep_2a + 104, 1, -49, -19.5 , 0 );
setMoveKey( spep_2a + 106, 1, -67, -35.3 , 0 );
setMoveKey( spep_2a + 108, 1, -42.1, -33.4 , 0 );

--スケール
setScaleKey( spep_2a + 0, 1, 1.28, 1.28 );
setScaleKey( spep_2a + 2, 1, 1.36, 1.36 );
setScaleKey( spep_2a + 4, 1, 1.44, 1.44 );
setScaleKey( spep_2a + 6, 1, 1.52, 1.52 );
setScaleKey( spep_2a + 8, 1, 1.6, 1.6 );
setScaleKey( spep_2a + 10, 1, 1.6, 1.6 );
setScaleKey( spep_2a + 12, 1, 1.61, 1.61 );
setScaleKey( spep_2a + 16, 1, 1.61, 1.61 );
setScaleKey( spep_2a + 18, 1, 1.62, 1.62 );
setScaleKey( spep_2a + 22, 1, 1.62, 1.62 );
setScaleKey( spep_2a + 24, 1, 1.63, 1.63 );
setScaleKey( spep_2a + 28, 1, 1.63, 1.63 );
setScaleKey( spep_2a + 30, 1, 1.64, 1.64 );
setScaleKey( spep_2a + 33, 1, 1.64, 1.64 );
setScaleKey( spep_2a + 34, 1, 1.54, 1.54 );
setScaleKey( spep_2a + 36, 1, 1.54, 1.54 );
setScaleKey( spep_2a + 38, 1, 1.55, 1.55 );
setScaleKey( spep_2a + 44, 1, 1.55, 1.55 );
setScaleKey( spep_2a + 46, 1, 1.56, 1.56 );
setScaleKey( spep_2a + 50, 1, 1.56, 1.56 );
setScaleKey( spep_2a + 52, 1, 1.57, 1.57 );
setScaleKey( spep_2a + 56, 1, 1.57, 1.57 );
setScaleKey( spep_2a + 58, 1, 1.58, 1.58 );
setScaleKey( spep_2a + 64, 1, 1.58, 1.58 );
setScaleKey( spep_2a + 66, 1, 1.59, 1.59 );
setScaleKey( spep_2a + 70, 1, 1.59, 1.59 );
setScaleKey( spep_2a + 72, 1, 1.6, 1.6 );
setScaleKey( spep_2a + 76, 1, 1.6, 1.6 );
setScaleKey( spep_2a + 78, 1, 1.61, 1.61 );
setScaleKey( spep_2a + 84, 1, 1.61, 1.61 );
setScaleKey( spep_2a + 86, 1, 1.62, 1.62 );
setScaleKey( spep_2a + 90, 1, 1.62, 1.62 );
setScaleKey( spep_2a + 92, 1, 1.63, 1.63 );
setScaleKey( spep_2a + 96, 1, 1.63, 1.63 );
setScaleKey( spep_2a + 98, 1, 1.64, 1.64 );
setScaleKey( spep_2a + 104, 1, 1.64, 1.64 );
setScaleKey( spep_2a + 106, 1, 1.65, 1.65 );

--回転
setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 31, 1, 0 );
setRotateKey( spep_2 + 32, 1, -49.9 );

--書き文字
x = 10;
y = -20;
ctzdodo2 = entryEffectLife( spep_2 + 18,  10014, 90, 0x100, -1, 0, 58.1 + x, 364 + y );
setEffShake( spep_2 + 18, ctzdodo2, 90, 10 );

setEffMoveKey( spep_2 + 18, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 20, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 22, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 24, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 26, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 28, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 30, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 32, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 34, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 36, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 38, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 40, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 42, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 44, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 46, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 48, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 50, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 52, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 54, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 56, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 58, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 60, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 62, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 64, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 66, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 68, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 70, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 72, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 74, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 76, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 78, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 80, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 82, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 84, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 86, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 88, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 90, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 92, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 94, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 96, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 98, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 100, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 102, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 104, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 106, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 108, ctzdodo2, 62.9 + x, 368.8 + y , 0 );

setEffScaleKey( spep_2 + 18, ctzdodo2, 3.2, 3.2 );
setEffScaleKey( spep_2 + 108, ctzdodo2, 3.2, 3.2 );

setEffRotateKey( spep_2 + 18, ctzdodo2, 75 );
setEffRotateKey( spep_2 + 108, ctzdodo2, 75 );

setEffAlphaKey( spep_2 + 18, ctzdodo2, 255 );
setEffAlphaKey( spep_2 + 108, ctzdodo2, 255 );

--SE
playSe( spep_2+10 , 1022 );  --ビームが伸びる音
--playSe( spep_2+28 , 1014 );  --ヒット
playSe( spep_2+42 , 1023 );  --爆発
playSe( spep_2+60 , 1023 );  --爆発
playSe( spep_2+82 , 1023 );  --爆発

-- ** 次の準備 ** --
spep_3 = spep_2 + 106;

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

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- spep_4(256F)
-- SP_06 = 153134;  --シャッター裏、必殺技シーン、キャラ背景込み
------------------------------------------------------

-- ** エフェクト等 ** --
tame2 = entryEffectLife( spep_4, SP_06, 256, 0x80, -1, 0, 0, 0 );  --シャッター裏、必殺技シーン、キャラ背景込み
setEffMoveKey( spep_4 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 256, tame2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 256, tame2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 256, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 256, tame2, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4, 906, 256, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_4,  shuchusen2,  0,  0);
setEffMoveKey(  spep_4+256,  shuchusen2,  0,  0);
setEffScaleKey(  spep_4,  shuchusen2,  1.1,  1.4);
setEffScaleKey(  spep_4+256,  shuchusen2,  1.1,  1.4);
setEffRotateKey(  spep_4,  shuchusen2,  0);
setEffRotateKey(  spep_4+256,  shuchusen2,  0);
setEffAlphaKey(  spep_4,  shuchusen2,  255);
setEffAlphaKey(  spep_4+256,  shuchusen2,  255);

shutter = entryEffect( spep_4, SP_05, 0x100, -1, 0, 0, 0 );  --シャッター部
setEffMoveKey( spep_4 + 0, shutter, 0, 0 , 0 );
setEffMoveKey( spep_4 + 256, shutter, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shutter, 1.0, 1.0 );
setEffScaleKey( spep_4 + 256, shutter, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shutter, 0 );
setEffRotateKey( spep_4 + 256, shutter, 0 );
setEffAlphaKey( spep_4 + 0, shutter, 255 );
setEffAlphaKey( spep_4 + 256, shutter, 255 );

--書き文字
ctzuo = entryEffectLife( spep_4 + 232,  10012, 22, 0x100, -1, 0, 78.7, 260.5 );
setEffShake( spep_4 + 232, ctzuo, 22, 10 );

setEffMoveKey( spep_4 + 232, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 234, ctzuo, 101.7, 303.7 , 0 );
setEffMoveKey( spep_4 + 236, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 238, ctzuo, 122.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 240, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 242, ctzuo, 122.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 244, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 246, ctzuo, 122.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 248, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 250, ctzuo, 122.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 252, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 254, ctzuo, 122.7, 348.8 , 0 );

setEffScaleKey( spep_4 + 232, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 234, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_4 + 236, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 254, ctzuo, 2.73, 2.73 );

setEffRotateKey( spep_4 + 232, ctzuo, 27.2 );
setEffRotateKey( spep_4 + 254, ctzuo, 27.2 );

setEffAlphaKey( spep_4 + 232, ctzuo, 255 );
setEffAlphaKey( spep_4 + 254, ctzuo, 255 );

-- ** 音 ** --
playSe( spep_4 + 10, 40 );--シャッターがあく
playSe( spep_4 + 20, 1036 );--気ため
playSe( spep_4 + 40, 1036 );--気ため
playSe( spep_4 + 60, 1036 );--気ため
playSe( spep_4 + 92, 1026 );--シャッターがあく
playSe( spep_4 + 104, SE_04 );--ズオぉ
playSe( spep_4 + 158, 1026 );--シャッターがあく
SE1=playSe( spep_4 + 168, 15 );--吸収音
stopSe(spep_4 + 220,SE1,0);
playSe( spep_4 + 224, 1022 );--なんか撃つ

-- ** ホワイトフェード ** --
entryFade( spep_4 + 244, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 256;


------------------------------------------------------
-- spep_5(120F)
-- SP_07 = 153135;  --ビーム発射部
------------------------------------------------------

-- ** エフェクト等 ** --
bg3 = entryEffectLife( spep_5, SP_08, 120, 0x80, -1, 0, 0, 0 );  --ef_007の背景
setEffMoveKey( spep_5 + 0, bg3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, bg3, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg3, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, bg3, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg3, 0 );
setEffRotateKey( spep_5 + 120, bg3, 0 );
setEffAlphaKey( spep_5 + 0, bg3, 255 );
setEffAlphaKey( spep_5 + 120, bg3, 255 );

beam2 = entryEffectLife( spep_5, SP_07, 120, 0x100, -1, 0, 0, 0 );  --ビーム発射部
setEffMoveKey( spep_5 + 0, beam2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, beam2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, beam2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam2, 0 );
setEffRotateKey( spep_5 + 120, beam2, 0 );
setEffAlphaKey( spep_5 + 0, beam2, 255 );
setEffAlphaKey( spep_5 + 120, beam2, 255 );

--集中線
ryusen2 = entryEffectLife( spep_5 + 0,  921, 118, 0x80, -1, 0, 111.8, -0.6 );
setEffMoveKey( spep_5 + 0, ryusen2, 111.8, -0.6 , 0 );
setEffMoveKey( spep_5 + 118, ryusen2, 111.8, -0.6 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 1.51, 1.41 );
setEffScaleKey( spep_5 + 118, ryusen2, 1.51, 1.41 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 118, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 118, ryusen2, 255 );


--書き文字
ctzudododo = entryEffectLife( spep_5 + 0,  10014, 64, 0x100, -1, 0, 19.2, 353.2 );
setEffShake( spep_5 , ctzudododo, 64, 10 );

--誤差調整
a = 3;
b = 3;

setEffMoveKey( spep_5 + 0, ctzudododo, 19.2, 353.2 , 0 );
setEffMoveKey( spep_5 + 2, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 4, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 6, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 8, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 10, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 12, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 14, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 16, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 18, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 36, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 38, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 40, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 42, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 44, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 46, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 48, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 50, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 52, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 54, ctzudododo, 12.2, 364.6 , 0 );
setEffMoveKey( spep_5 + 56, ctzudododo, 7.6, 365.2 , 0 );
setEffMoveKey( spep_5 + 58, ctzudododo, 0.7, 376.8 , 0 );
setEffMoveKey( spep_5 + 60, ctzudododo, -3.8, 377.1 , 0 );
setEffMoveKey( spep_5 + 62, ctzudododo, -10.9, 389 , 0 );
setEffMoveKey( spep_5 + 64, ctzudododo, -16.7, 395.2 , 0 );

setEffScaleKey( spep_5 + 0, ctzudododo, 0.8 * a, 0.8 * b );
setEffScaleKey( spep_5 + 52, ctzudododo, 0.8 * a, 0.8 * b );
setEffScaleKey( spep_5 + 54, ctzudododo, 0.82 * a, 0.82 * b );
setEffScaleKey( spep_5 + 56, ctzudododo, 0.83 * a, 0.83 * b );
setEffScaleKey( spep_5 + 58, ctzudododo, 0.85 * a, 0.85 * b );
setEffScaleKey( spep_5 + 60, ctzudododo, 0.87 * a, 0.87 * b );
setEffScaleKey( spep_5 + 62, ctzudododo, 0.88 * a, 0.88 * b );
setEffScaleKey( spep_5 + 64, ctzudododo, 0.9 * a, 0.9 * b );

setEffRotateKey( spep_5 + 0, ctzudododo, 15 );
setEffRotateKey( spep_5 + 2, ctzudododo, 15 );

setEffAlphaKey( spep_5 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 52, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 54, ctzudododo, 212 );
setEffAlphaKey( spep_5 + 56, ctzudododo, 170 );
setEffAlphaKey( spep_5 + 58, ctzudododo, 128 );
setEffAlphaKey( spep_5 + 60, ctzudododo, 85 );
setEffAlphaKey( spep_5 + 62, ctzudododo, 43 );
setEffAlphaKey( spep_5 + 64, ctzudododo, 0 );

-- ** 音 ** --
playSe( spep_5, 1022 );--うつ

-- ** ホワイトフェード ** --
entryFade( spep_5 + 112, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 120;



------------------------------------------------------
-- spep_6(80F)
--SP_09 = 153137;  --ビーム敵近付き部、消し炭キャラコマ含み
------------------------------------------------------

-- ** エフェクト等 ** --
bg3 = entryEffectLife( spep_6, SP_14, 80, 0x80, -1, 0, 0, 0 );  --ef_009の背景
setEffMoveKey( spep_6 + 0, bg3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, bg3, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bg3, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, bg3, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg3, 0 );
setEffRotateKey( spep_6 + 80, bg3, 0 );
setEffAlphaKey( spep_6 + 0, bg3, 255 );
setEffAlphaKey( spep_6 + 80, bg3, 255 );

--流線
ryusen3 = entryEffectLife( spep_6 + 0,  921, 86, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0,ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86,ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0,ryusen3, 1, 1 );
setEffScaleKey( spep_6 + 86,ryusen3, 1, 1 );

setEffRotateKey( spep_6 + 0,ryusen3, 0 );
setEffRotateKey( spep_6 + 86,ryusen3, 0 );

setEffAlphaKey( spep_6 + 0,ryusen3, 255 );
setEffAlphaKey( spep_6 + 86,ryusen3, 255 );


hit2_b = entryEffectLife( spep_6, SP_10, 80, 0x80, -1, 0, 0, 0 );  --ビーム敵近付き部の赤煙エフェクト、敵より裏に配置
setEffMoveKey( spep_6 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit2_b, 0 );
setEffRotateKey( spep_6 + 80, hit2_b, 0 );
setEffAlphaKey( spep_6 + 0, hit2_b, 255 );
setEffAlphaKey( spep_6 + 80, hit2_b, 255 );

hit2_f = entryEffectLife( spep_6, SP_09, 80, 0x100, -1, 0, 0, 0 );  --ビーム敵近付き部、消し炭キャラコマ含み
setEffMoveKey( spep_6 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit2_f, 0 );
setEffRotateKey( spep_6 + 80, hit2_f, 0 );
setEffAlphaKey( spep_6 + 0, hit2_f, 255 );
setEffAlphaKey( spep_6 + 80, hit2_f, 255 );

--敵キャラ
--イニシャライズ
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 106 );

setDisp( spep_6 + 30, 1, 0 );

--誤差修正用
spep_6a = spep_6 -2;

--動き
setMoveKey( spep_6a + 0, 1, 471.1, -22.3 , 0 );
setMoveKey( spep_6a + 2, 1, 406.1, -22.9 , 0 );
setMoveKey( spep_6a + 4, 1, 341.2, -23.4 , 0 );
setMoveKey( spep_6a + 6, 1, 276.2, -23.9 , 0 );
setMoveKey( spep_6a + 8, 1, 211.3, -24.4 , 0 );
setMoveKey( spep_6a + 10, 1, 146.5, -24.9 , 0 );
setMoveKey( spep_6a + 12, 1, 81.6, -25.5 , 0 );
setMoveKey( spep_6a + 14, 1, 77.3, -25.5 , 0 );
setMoveKey( spep_6a + 16, 1, 70, -25.6 , 0 );
setMoveKey( spep_6a + 18, 1, 62.8, -25.6 , 0 );
setMoveKey( spep_6a + 20, 1, 57.3, -25.7 , 0 );
setMoveKey( spep_6a + 22, 1, 51.8, -25.8 , 0 );
setMoveKey( spep_6a + 24, 1, 46.3, -25.9 , 0 );
setMoveKey( spep_6a + 26, 1, 40.8, -25.9 , 0 );
setMoveKey( spep_6a + 28, 1, 35.3, -26 , 0 );
setMoveKey( spep_6a + 32, 1, 35.3, -26 , 0 );

--スケール
setScaleKey( spep_6a + 0, 1, 0.45, 0.45 );
setScaleKey( spep_6a + 2, 1, 0.59, 0.59 );
setScaleKey( spep_6a + 4, 1, 0.72, 0.72 );
setScaleKey( spep_6a + 6, 1, 0.86, 0.86 );
setScaleKey( spep_6a + 8, 1, 1, 1 );
setScaleKey( spep_6a + 10, 1, 1.14, 1.14 );
setScaleKey( spep_6a + 12, 1, 1.27, 1.27 );
setScaleKey( spep_6a + 14, 1, 1.29, 1.29 );
setScaleKey( spep_6a + 16, 1, 1.31, 1.31 );
setScaleKey( spep_6a + 18, 1, 1.33, 1.33 );
setScaleKey( spep_6a + 20, 1, 1.35, 1.35 );
setScaleKey( spep_6a + 22, 1, 1.37, 1.37 );
setScaleKey( spep_6a + 24, 1, 1.39, 1.39 );
setScaleKey( spep_6a + 26, 1, 1.41, 1.41 );
setScaleKey( spep_6a + 28, 1, 1.42, 1.42 );
setScaleKey( spep_6a + 32, 1, 1.42, 1.42 );

--回転
setRotateKey( spep_6a + 0, 1, -49.9 );
setRotateKey( spep_6a + 32, 1, -49.9 );

--書き文字
ctzuo2 = entryEffectLife( spep_6 + 28,  10012, 28, 0x100, -1, 0, 50.1, 158.3 );
setEffShake( spep_6 + 28, ctzuo2, 2,8 ,10 );

setEffMoveKey( spep_6 + 28, ctzuo2, 50.1, 158.3 , 0 );
setEffMoveKey( spep_6 + 30, ctzuo2, 28.8, 232.9 , 0 );
setEffMoveKey( spep_6 + 32, ctzuo2, -20.3, 315.6 , 0 );
setEffMoveKey( spep_6 + 34, ctzuo2, -2.1, 318.3 , 0 );
setEffMoveKey( spep_6 + 36, ctzuo2, -29.1, 324 , 0 );
setEffMoveKey( spep_6 + 38, ctzuo2, -10.8, 326.8 , 0 );
setEffMoveKey( spep_6 + 40, ctzuo2, -37.8, 332.6 , 0 );
setEffMoveKey( spep_6 + 42, ctzuo2, -19.6, 335.5 , 0 );
setEffMoveKey( spep_6 + 44, ctzuo2, -46.6, 341.1 , 0 );
setEffMoveKey( spep_6 + 46, ctzuo2, -28.3, 344.1 , 0 );
setEffMoveKey( spep_6 + 48, ctzuo2, -55.3, 349.5 , 0 );
setEffMoveKey( spep_6 + 50, ctzuo2, -37.1, 352.7 , 0 );
setEffMoveKey( spep_6 + 52, ctzuo2, -79, 373.7 , 0 );
setEffMoveKey( spep_6 + 54, ctzuo2, -52.4, 385.6 , 0 );
setEffMoveKey( spep_6 + 56, ctzuo2, -58.8, 399.1 , 0 );

setEffScaleKey( spep_6 + 28, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_6 + 30, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_6 + 32, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_6 + 50, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_6 + 52, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_6 + 54, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_6 + 56, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_6 + 28, ctzuo2, 6.9 );
setEffRotateKey( spep_6 + 30, ctzuo2, -3.4 );
setEffRotateKey( spep_6 + 32, ctzuo2, -13.5 );
setEffRotateKey( spep_6 + 34, ctzuo2, -13.7 );
setEffRotateKey( spep_6 + 36, ctzuo2, -13.9 );
setEffRotateKey( spep_6 + 38, ctzuo2, -14 );
setEffRotateKey( spep_6 + 40, ctzuo2, -14.2 );
setEffRotateKey( spep_6 + 42, ctzuo2, -14.4 );
setEffRotateKey( spep_6 + 44, ctzuo2, -14.5 );
setEffRotateKey( spep_6 + 46, ctzuo2, -14.7 );
setEffRotateKey( spep_6 + 48, ctzuo2, -14.9 );
setEffRotateKey( spep_6 + 50, ctzuo2, -15 );
setEffRotateKey( spep_6 + 52, ctzuo2, -11.8 );
setEffRotateKey( spep_6 + 54, ctzuo2, -8.5 );
setEffRotateKey( spep_6 + 56, ctzuo2, -5.2 );

setEffAlphaKey( spep_6 + 28, ctzuo2, 255 );
setEffAlphaKey( spep_6 + 50, ctzuo2, 255 );
setEffAlphaKey( spep_6 + 52, ctzuo2, 170 );
setEffAlphaKey( spep_6 + 54, ctzuo2, 85 );
setEffAlphaKey( spep_6 + 56, ctzuo2, 0 );

-- ** 音 ** --
playSe( spep_6, 1021 );--うつ

-- ** ホワイトフェード ** --
entryFade( spep_6 + 72, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 80;
------------------------------------------------------
-- spep_7(210F)
-- SP_11 = 153139;  --爆発背景シーン
------------------------------------------------------

-- ** エフェクト等 ** --
explosion = entryEffect( spep_7, SP_11,  0x80, -1, 0, 0, 0 );  --爆発背景シーン
setEffMoveKey( spep_7 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7 + 210, explosion, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 210, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 210, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 210, explosion, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_7, 906, 78, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_7+34,  shuchusen3,  0,  0);
setEffMoveKey(  spep_7+78,  shuchusen3,  0,  0);
setEffScaleKey(  spep_7+34,  shuchusen3,  1.1,  1.4);
setEffScaleKey(  spep_7+78,  shuchusen3,  1.1,  1.4);
setEffRotateKey(  spep_7+34,  shuchusen3,  0);
setEffRotateKey(  spep_7+78,  shuchusen3,  0);
setEffAlphaKey(  spep_7+34,  shuchusen3,  255);
setEffAlphaKey(  spep_7+78,  shuchusen3,  255);

-- ** 音 ** --
playSe( spep_7, 1023 );--爆発
playSe( spep_7+38, 1024 );--爆発
playSe( spep_7+80, 1067 );--爆発


-- ** ホワイトフェード ** --
entryFade( spep_7, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_7 + 34, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_7 + 70, 4, 6, 14, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 80 );
entryFade( spep_7+ 200, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 206 );

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- spep_0(92F)
-- SP_01 = 153129;  --導入、セリフ部、キャラ背景込み
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 92, 0x80, -1, 0, 0, 0 );  --導入、セリフ部、キャラ背景込み
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 92, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 92, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 92, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 92, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 92, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_0,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+92,  shuchusen1,  0,  0);
setEffScaleKey(  spep_0,  shuchusen1,  1.1,  1.4);
setEffScaleKey(  spep_0+92,  shuchusen1,  1.1,  1.4);
setEffRotateKey(  spep_0,  shuchusen1,  0);
setEffRotateKey(  spep_0+92,  shuchusen1,  0);
setEffAlphaKey(  spep_0,  shuchusen1,  255);
setEffAlphaKey(  spep_0+92,  shuchusen1,  255);

--顔カットイン
--speff=entryEffect(spep_0+4,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+4,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 72, 0x100, -1, 0, 70.9, 521.8 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 16, ctgogo, 70.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 88, ctgogo, 70.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 80, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 82, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 84, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 86, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 88, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 88, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16, ctgogo, 0 );
setEffAlphaKey( spep_0 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );

--SE
playSe( spep_0 , SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0+80, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 92;

------------------------------------------------------
-- spep_1(120F)
-- SP_02 = 153130;  --連続ビーム発射
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_1, SP_02r, 120, 0x100, -1, 0, 0, 0 );  --連続ビーム発射
setEffMoveKey( spep_1 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, beam, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, beam, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam, 0 );
setEffRotateKey( spep_1 + 120, beam, 0 );
setEffAlphaKey( spep_1 + 0, beam, 255 );
setEffAlphaKey( spep_1 + 120, beam, 255 );

bg1 = entryEffectLife( spep_1, SP_12, 120, 0x80, -1, 0, 0, 0 );  --ef_002の背景
setEffMoveKey( spep_1 + 0, bg1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, bg1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, bg1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, bg1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bg1, 0 );
setEffRotateKey( spep_1 + 120, bg1, 0 );
setEffAlphaKey( spep_1 + 0, bg1, 255 );
setEffAlphaKey( spep_1 + 120, bg1, 255 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  921, 120, 0x80, -1, 0, 62.1, 55 );

setEffMoveKey( spep_1 + 0, ryusen1, 62.1, 55 , 0 );
setEffMoveKey( spep_1 + 120, ryusen1, 62.1, 55 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.42, 1.6 );
setEffScaleKey( spep_1 + 120, ryusen1, 1.42, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen1, -175 );
setEffRotateKey( spep_1 + 120, ryusen1, -175 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 120, ryusen1, 255 );


--書き文字
ctbibibi = entryEffectLife( spep_1 + 34,  10025, 84, 0x100, -1, 0, 105.2, 303.3 );--ビビビ
setEffShake( spep_1 + 34, ctbibibi, 84, 10 );

setEffMoveKey( spep_1 + 34, ctbibibi, 105.2, 303.3 , 0 );
setEffMoveKey( spep_1 + 36, ctbibibi, 120.4, 304.3 , 0 );
setEffMoveKey( spep_1 + 38, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_1 + 40, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_1 + 42, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_1 + 44, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_1 + 46, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_1 + 48, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_1 + 50, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_1 + 52, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_1 + 54, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_1 + 56, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_1 + 58, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_1 + 60, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_1 + 62, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_1 + 64, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_1 + 66, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_1 + 68, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_1 + 70, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_1 + 72, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_1 + 74, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_1 + 76, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_1 + 78, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_1 + 80, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_1 + 82, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_1 + 84, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_1 + 86, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_1 + 88, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_1 + 90, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_1 + 92, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_1 + 94, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_1 + 96, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_1 + 98, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_1 + 100, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_1 + 102, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_1 + 104, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_1 + 106, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_1 + 108, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_1 + 110, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_1 + 112, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_1 + 114, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_1 + 116, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_1 + 118, ctbibibi, 124, 316.1 , 0 );

a = 0;
b = 0;

setEffScaleKey( spep_1 + 34, ctbibibi, 1.47+a, 1.47+b );
setEffScaleKey( spep_1 + 36, ctbibibi, 1.66+a, 1.66+b );
setEffScaleKey( spep_1 + 38, ctbibibi, 1.86+a, 1.86+b );
setEffScaleKey( spep_1 + 118, ctbibibi, 1.86+a, 1.86+b );

--setEffAlphaKey( spep_1 + 34, ctbibibi, 85 );
--setEffAlphaKey( spep_1 + 36, ctbibibi, 170 );
--setEffAlphaKey( spep_1 + 38, ctbibibi, 255 );
setEffAlphaKey( spep_1 + 34, ctbibibi, 255 );
setEffAlphaKey( spep_1 + 118, ctbibibi, 255 );

setEffRotateKey( spep_1 + 34, ctbibibi, 0 );
setEffRotateKey( spep_1 + 118, ctbibibi, 0 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+28 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    ]]--
    
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
playSe( spep_1+34 , 1021 );  --fast shot
playSe( spep_1+58 , 1021 );  --second shot

-- ** ホワイトフェード ** --
entryFade( spep_1, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1+30, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1+58, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1+108, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 120;

------------------------------------------------------
-- spep_2(106F)
-- SP_03 = 153131;  --連続ビーム敵ヒット用、敵より手前に配置
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_2, SP_03, 106, 0x100, -1, 0, 0, 0 );  --連続ビーム敵ヒット用、敵より手前に配置
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 106, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 106, hit_f, 255 );

bg2 = entryEffectLife( spep_2, SP_13, 106, 0x80, -1, 0, 0, 0 );  --ef_003の背景
setEffMoveKey( spep_2 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, bg2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bg2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, bg2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bg2, 0 );
setEffRotateKey( spep_2 + 106, bg2, 0 );
setEffAlphaKey( spep_2 + 0, bg2, 255 );
setEffAlphaKey( spep_2 + 106, bg2, 255 );

--流線
ryusen2 = entryEffectLife( spep_2 + 0,  921, 108, 0x80, -1, 0, -69.5, -127.6 );

setEffMoveKey( spep_2 + 0, ryusen2, -69.5, -127.6 , 0 );
setEffMoveKey( spep_2 + 108, ryusen2, -69.5, -127.6 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.42, 1.6 );
setEffScaleKey( spep_2 + 108, ryusen2, 1.42, 1.6 );

setEffRotateKey( spep_2 + 0, ryusen2, 0 );
setEffRotateKey( spep_2 + 108, ryusen2, 0 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 108, ryusen2, 255 );

hit_f = entryEffectLife( spep_2, SP_04, 106, 0x80, -1, 0, 0, 0 );  --連続ビーム敵ヒット用、敵より奥に配置
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 106, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 106, hit_f, 255 );


--敵キャラ
--イニシャライズ
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 106, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 31, 1, 106 );

--誤差調整用
spep_2a = spep_2 - 3;

--動き
setMoveKey( spep_2a + 4, 1, 290.5, -47.5 , 0 );
setMoveKey( spep_2a + 6, 1, 190, -57.6 , 0 );
setMoveKey( spep_2a + 8, 1, 90.8, -61.1 , 0 );
setMoveKey( spep_2a + 10, 1, 82.3, -62.9 , 0 );
setMoveKey( spep_2a + 12, 1, 84.8, -59.1 , 0 );
setMoveKey( spep_2a + 14, 1, 79, -61.2 , 0 );
setMoveKey( spep_2a + 16, 1, 80.1, -65.9 , 0 );
setMoveKey( spep_2a + 18, 1, 76.3, -57.8 , 0 );
setMoveKey( spep_2a + 20, 1, 72.3, -65.3 , 0 );
setMoveKey( spep_2a + 22, 1, 70.5, -66.7 , 0 );
setMoveKey( spep_2a + 24, 1, 76.6, -65 , 0 );
setMoveKey( spep_2a + 26, 1, 70.6, -59.3 , 0 );
setMoveKey( spep_2a + 28, 1, 70.2, -67.4 , 0 );
setMoveKey( spep_2a + 30, 1, 71.8, -63.7 , 0 );
setMoveKey( spep_2a + 33, 1, 60.9, -64.8 , 0 );
setMoveKey( spep_2a + 34, 1, 16.2, -21.6 , 0 );
setMoveKey( spep_2a + 36, 1, 13.5, -21.2 , 0 );
setMoveKey( spep_2a + 38, 1, 4.2, -29.4 , 0 );
setMoveKey( spep_2a + 40, 1, 7.6, -34.1 , 0 );
setMoveKey( spep_2a + 42, 1, 10.3, -26.6 , 0 );
setMoveKey( spep_2a + 44, 1, -4.7, -25.3 , 0 );
setMoveKey( spep_2a + 46, 1, -5.3, -31.6 , 0 );
setMoveKey( spep_2a + 48, 1, 2.9, -37 , 0 );
setMoveKey( spep_2a + 50, 1, -10.1, -20.9 , 0 );
setMoveKey( spep_2a + 52, 1, 3.4, -32.6 , 0 );
setMoveKey( spep_2a + 54, 1, -15.9, -25.3 , 0 );
setMoveKey( spep_2a + 56, 1, -18.5, -30.1 , 0 );
setMoveKey( spep_2a + 58, 1, -7.4, -17.1 , 0 );
setMoveKey( spep_2a + 60, 1, -9.7, -35.6 , 0 );
setMoveKey( spep_2a + 62, 1, -7.8, -21.9 , 0 );
setMoveKey( spep_2a + 64, 1, -22.8, -36 , 0 );
setMoveKey( spep_2a + 66, 1, -14.7, -35.3 , 0 );
setMoveKey( spep_2a + 68, 1, -31.5, -28.1 , 0 );
setMoveKey( spep_2a + 70, 1, -16.4, -32.9 , 0 );
setMoveKey( spep_2a + 72, 1, -30.3, -23.4 , 0 );
setMoveKey( spep_2a + 74, 1, -37.5, -30.4 , 0 );
setMoveKey( spep_2a + 76, 1, -19.5, -23.2 , 0 );
setMoveKey( spep_2a + 78, 1, -21.3, -21.2 , 0 );
setMoveKey( spep_2a + 80, 1, -31, -42.7 , 0 );
setMoveKey( spep_2a + 82, 1, -28.8, -22.4 , 0 );
setMoveKey( spep_2a + 84, 1, -50.1, -22.6 , 0 );
setMoveKey( spep_2a + 86, 1, -23.7, -25.4 , 0 );
setMoveKey( spep_2a + 88, 1, -34.6, -19 , 0 );
setMoveKey( spep_2a + 90, 1, -50.7, -19.9 , 0 );
setMoveKey( spep_2a + 92, 1, -27, -32.9 , 0 );
setMoveKey( spep_2a + 94, 1, -60, -34.6 , 0 );
setMoveKey( spep_2a + 96, 1, -41.3, -19.4 , 0 );
setMoveKey( spep_2a + 98, 1, -59.3, -35 , 0 );
setMoveKey( spep_2a + 100, 1, -34.6, -33.1 , 0 );
setMoveKey( spep_2a + 102, 1, -67.8, -34.8 , 0 );
setMoveKey( spep_2a + 104, 1, -49, -19.5 , 0 );
setMoveKey( spep_2a + 106, 1, -67, -35.3 , 0 );
setMoveKey( spep_2a + 108, 1, -42.1, -33.4 , 0 );

--スケール
setScaleKey( spep_2a + 0, 1, 1.28, 1.28 );
setScaleKey( spep_2a + 2, 1, 1.36, 1.36 );
setScaleKey( spep_2a + 4, 1, 1.44, 1.44 );
setScaleKey( spep_2a + 6, 1, 1.52, 1.52 );
setScaleKey( spep_2a + 8, 1, 1.6, 1.6 );
setScaleKey( spep_2a + 10, 1, 1.6, 1.6 );
setScaleKey( spep_2a + 12, 1, 1.61, 1.61 );
setScaleKey( spep_2a + 16, 1, 1.61, 1.61 );
setScaleKey( spep_2a + 18, 1, 1.62, 1.62 );
setScaleKey( spep_2a + 22, 1, 1.62, 1.62 );
setScaleKey( spep_2a + 24, 1, 1.63, 1.63 );
setScaleKey( spep_2a + 28, 1, 1.63, 1.63 );
setScaleKey( spep_2a + 30, 1, 1.64, 1.64 );
setScaleKey( spep_2a + 33, 1, 1.64, 1.64 );
setScaleKey( spep_2a + 34, 1, 1.54, 1.54 );
setScaleKey( spep_2a + 36, 1, 1.54, 1.54 );
setScaleKey( spep_2a + 38, 1, 1.55, 1.55 );
setScaleKey( spep_2a + 44, 1, 1.55, 1.55 );
setScaleKey( spep_2a + 46, 1, 1.56, 1.56 );
setScaleKey( spep_2a + 50, 1, 1.56, 1.56 );
setScaleKey( spep_2a + 52, 1, 1.57, 1.57 );
setScaleKey( spep_2a + 56, 1, 1.57, 1.57 );
setScaleKey( spep_2a + 58, 1, 1.58, 1.58 );
setScaleKey( spep_2a + 64, 1, 1.58, 1.58 );
setScaleKey( spep_2a + 66, 1, 1.59, 1.59 );
setScaleKey( spep_2a + 70, 1, 1.59, 1.59 );
setScaleKey( spep_2a + 72, 1, 1.6, 1.6 );
setScaleKey( spep_2a + 76, 1, 1.6, 1.6 );
setScaleKey( spep_2a + 78, 1, 1.61, 1.61 );
setScaleKey( spep_2a + 84, 1, 1.61, 1.61 );
setScaleKey( spep_2a + 86, 1, 1.62, 1.62 );
setScaleKey( spep_2a + 90, 1, 1.62, 1.62 );
setScaleKey( spep_2a + 92, 1, 1.63, 1.63 );
setScaleKey( spep_2a + 96, 1, 1.63, 1.63 );
setScaleKey( spep_2a + 98, 1, 1.64, 1.64 );
setScaleKey( spep_2a + 104, 1, 1.64, 1.64 );
setScaleKey( spep_2a + 106, 1, 1.65, 1.65 );

--回転
setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 31, 1, 0 );
setRotateKey( spep_2 + 32, 1, -49.9 );

--書き文字
x = 10;
y = -20;
ctzdodo2 = entryEffectLife( spep_2 + 18,  10014, 90, 0x100, -1, 0, 58.1 + x, 364 + y );
setEffShake( spep_2 + 18, ctzdodo2, 90, 10 );

setEffMoveKey( spep_2 + 18, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 20, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 22, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 24, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 26, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 28, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 30, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 32, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 34, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 36, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 38, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 40, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 42, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 44, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 46, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 48, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 50, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 52, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 54, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 56, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 58, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 60, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 62, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 64, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 66, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 68, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 70, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 72, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 74, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 76, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 78, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 80, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 82, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 84, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 86, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 88, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 90, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 92, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 94, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 96, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 98, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 100, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 102, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 104, ctzdodo2, 62.9 + x, 368.8 + y , 0 );
setEffMoveKey( spep_2 + 106, ctzdodo2, 58.1 + x, 364 + y , 0 );
setEffMoveKey( spep_2 + 108, ctzdodo2, 62.9 + x, 368.8 + y , 0 );

setEffScaleKey( spep_2 + 18, ctzdodo2, 3.2, 3.2 );
setEffScaleKey( spep_2 + 108, ctzdodo2, 3.2, 3.2 );

setEffRotateKey( spep_2 + 18, ctzdodo2, 5 );
setEffRotateKey( spep_2 + 108, ctzdodo2, 5 );

setEffAlphaKey( spep_2 + 18, ctzdodo2, 255 );
setEffAlphaKey( spep_2 + 108, ctzdodo2, 255 );

--SE
playSe( spep_2+10 , 1022 );  --ビームが伸びる音
--playSe( spep_2+28 , 1014 );  --ヒット
playSe( spep_2+42 , 1023 );  --爆発
playSe( spep_2+60 , 1023 );  --爆発
playSe( spep_2+82 , 1023 );  --爆発

-- ** 次の準備 ** --
spep_3 = spep_2 + 106;

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

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- spep_4(256F)
-- SP_06 = 153134;  --シャッター裏、必殺技シーン、キャラ背景込み
------------------------------------------------------

-- ** エフェクト等 ** --
tame2 = entryEffectLife( spep_4, SP_06, 256, 0x80, -1, 0, 0, 0 );  --シャッター裏、必殺技シーン、キャラ背景込み
setEffMoveKey( spep_4 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 256, tame2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 256, tame2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 256, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 256, tame2, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4, 906, 256, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_4,  shuchusen2,  0,  0);
setEffMoveKey(  spep_4+256,  shuchusen2,  0,  0);
setEffScaleKey(  spep_4,  shuchusen2,  1.1,  1.4);
setEffScaleKey(  spep_4+256,  shuchusen2,  1.1,  1.4);
setEffRotateKey(  spep_4,  shuchusen2,  0);
setEffRotateKey(  spep_4+256,  shuchusen2,  0);
setEffAlphaKey(  spep_4,  shuchusen2,  255);
setEffAlphaKey(  spep_4+256,  shuchusen2,  255);

shutter = entryEffect( spep_4, SP_05, 0x100, -1, 0, 0, 0 );  --シャッター部
setEffMoveKey( spep_4 + 0, shutter, 0, 0 , 0 );
setEffMoveKey( spep_4 + 256, shutter, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shutter, 1.0, 1.0 );
setEffScaleKey( spep_4 + 256, shutter, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shutter, 0 );
setEffRotateKey( spep_4 + 256, shutter, 0 );
setEffAlphaKey( spep_4 + 0, shutter, 255 );
setEffAlphaKey( spep_4 + 256, shutter, 255 );

--書き文字
ctzuo = entryEffectLife( spep_4 + 232,  10012, 22, 0x100, -1, 0, 78.7, 260.5 );
setEffShake( spep_4 + 232, ctzuo, 22, 10 );

setEffMoveKey( spep_4 + 232, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 234, ctzuo, 101.7, 303.7 , 0 );
setEffMoveKey( spep_4 + 236, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 238, ctzuo, 122.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 240, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 242, ctzuo, 122.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 244, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 246, ctzuo, 122.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 248, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 250, ctzuo, 122.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 252, ctzuo, 106.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 254, ctzuo, 122.7, 348.8 , 0 );

setEffScaleKey( spep_4 + 232, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 234, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_4 + 236, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 254, ctzuo, 2.73, 2.73 );

setEffRotateKey( spep_4 + 232, ctzuo, 27.2 );
setEffRotateKey( spep_4 + 254, ctzuo, 27.2 );

setEffAlphaKey( spep_4 + 232, ctzuo, 255 );
setEffAlphaKey( spep_4 + 254, ctzuo, 255 );

-- ** 音 ** --
playSe( spep_4 + 10, 40 );--シャッターがあく
playSe( spep_4 + 20, 1036 );--気ため
playSe( spep_4 + 40, 1036 );--気ため
playSe( spep_4 + 60, 1036 );--気ため
playSe( spep_4 + 92, 1026 );--シャッターがあく
playSe( spep_4 + 104, SE_04 );--ズオぉ
playSe( spep_4 + 158, 1026 );--シャッターがあく
SE1=playSe( spep_4 + 168, 15 );--吸収音
stopSe(spep_4 + 220,SE1,0);
playSe( spep_4 + 224, 1022 );--なんか撃つ

-- ** ホワイトフェード ** --
entryFade( spep_4 + 244, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 256;


------------------------------------------------------
-- spep_5(120F)
-- SP_07 = 153135;  --ビーム発射部
------------------------------------------------------

-- ** エフェクト等 ** --
bg3 = entryEffectLife( spep_5, SP_08, 120, 0x80, -1, 0, 0, 0 );  --ef_007の背景
setEffMoveKey( spep_5 + 0, bg3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, bg3, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg3, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, bg3, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg3, 0 );
setEffRotateKey( spep_5 + 120, bg3, 0 );
setEffAlphaKey( spep_5 + 0, bg3, 255 );
setEffAlphaKey( spep_5 + 120, bg3, 255 );

beam2 = entryEffectLife( spep_5, SP_07r, 120, 0x100, -1, 0, 0, 0 );  --ビーム発射部
setEffMoveKey( spep_5 + 0, beam2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, beam2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, beam2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam2, 0 );
setEffRotateKey( spep_5 + 120, beam2, 0 );
setEffAlphaKey( spep_5 + 0, beam2, 255 );
setEffAlphaKey( spep_5 + 120, beam2, 255 );

--集中線
ryusen2 = entryEffectLife( spep_5 + 0,  921, 118, 0x80, -1, 0, 111.8, -0.6 );
setEffMoveKey( spep_5 + 0, ryusen2, 111.8, -0.6 , 0 );
setEffMoveKey( spep_5 + 118, ryusen2, 111.8, -0.6 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 1.51, 1.41 );
setEffScaleKey( spep_5 + 118, ryusen2, 1.51, 1.41 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 118, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 118, ryusen2, 255 );


--書き文字
ctzudododo = entryEffectLife( spep_5 + 0,  10014, 64, 0x100, -1, 0, 19.2, 353.2 );
setEffShake( spep_5 , ctzudododo, 64, 10 );

--誤差調整
a = 3;
b = 3;

setEffMoveKey( spep_5 + 0, ctzudododo, 19.2, 353.2 , 0 );
setEffMoveKey( spep_5 + 2, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 4, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 6, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 8, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 10, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 12, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 14, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 16, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 18, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 36, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 38, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 40, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 42, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 44, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 46, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 48, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 50, ctzudododo, 17.9, 358.4 , 0 );
setEffMoveKey( spep_5 + 52, ctzudododo, 19.1, 353.2 , 0 );
setEffMoveKey( spep_5 + 54, ctzudododo, 12.2, 364.6 , 0 );
setEffMoveKey( spep_5 + 56, ctzudododo, 7.6, 365.2 , 0 );
setEffMoveKey( spep_5 + 58, ctzudododo, 0.7, 376.8 , 0 );
setEffMoveKey( spep_5 + 60, ctzudododo, -3.8, 377.1 , 0 );
setEffMoveKey( spep_5 + 62, ctzudododo, -10.9, 389 , 0 );
setEffMoveKey( spep_5 + 64, ctzudododo, -16.7, 395.2 , 0 );

setEffScaleKey( spep_5 + 0, ctzudododo, 0.8 * a, 0.8 * b );
setEffScaleKey( spep_5 + 52, ctzudododo, 0.8 * a, 0.8 * b );
setEffScaleKey( spep_5 + 54, ctzudododo, 0.82 * a, 0.82 * b );
setEffScaleKey( spep_5 + 56, ctzudododo, 0.83 * a, 0.83 * b );
setEffScaleKey( spep_5 + 58, ctzudododo, 0.85 * a, 0.85 * b );
setEffScaleKey( spep_5 + 60, ctzudododo, 0.87 * a, 0.87 * b );
setEffScaleKey( spep_5 + 62, ctzudododo, 0.88 * a, 0.88 * b );
setEffScaleKey( spep_5 + 64, ctzudododo, 0.9 * a, 0.9 * b );

setEffRotateKey( spep_5 + 0, ctzudododo, -65 );
setEffRotateKey( spep_5 + 2, ctzudododo, -65 );

setEffAlphaKey( spep_5 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 52, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 54, ctzudododo, 212 );
setEffAlphaKey( spep_5 + 56, ctzudododo, 170 );
setEffAlphaKey( spep_5 + 58, ctzudododo, 128 );
setEffAlphaKey( spep_5 + 60, ctzudododo, 85 );
setEffAlphaKey( spep_5 + 62, ctzudododo, 43 );
setEffAlphaKey( spep_5 + 64, ctzudododo, 0 );

-- ** 音 ** --
playSe( spep_5, 1022 );--うつ

-- ** ホワイトフェード ** --
entryFade( spep_5 + 112, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 120;



------------------------------------------------------
-- spep_6(80F)
--SP_09 = 153137;  --ビーム敵近付き部、消し炭キャラコマ含み
------------------------------------------------------

-- ** エフェクト等 ** --
bg3 = entryEffectLife( spep_6, SP_14, 80, 0x80, -1, 0, 0, 0 );  --ef_009の背景
setEffMoveKey( spep_6 + 0, bg3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, bg3, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bg3, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, bg3, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg3, 0 );
setEffRotateKey( spep_6 + 80, bg3, 0 );
setEffAlphaKey( spep_6 + 0, bg3, 255 );
setEffAlphaKey( spep_6 + 80, bg3, 255 );

--流線
ryusen3 = entryEffectLife( spep_6 + 0,  921, 86, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0,ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86,ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0,ryusen3, 1, 1 );
setEffScaleKey( spep_6 + 86,ryusen3, 1, 1 );

setEffRotateKey( spep_6 + 0,ryusen3, 0 );
setEffRotateKey( spep_6 + 86,ryusen3, 0 );

setEffAlphaKey( spep_6 + 0,ryusen3, 255 );
setEffAlphaKey( spep_6 + 86,ryusen3, 255 );


hit2_b = entryEffectLife( spep_6, SP_10, 80, 0x80, -1, 0, 0, 0 );  --ビーム敵近付き部の赤煙エフェクト、敵より裏に配置
setEffMoveKey( spep_6 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit2_b, 0 );
setEffRotateKey( spep_6 + 80, hit2_b, 0 );
setEffAlphaKey( spep_6 + 0, hit2_b, 255 );
setEffAlphaKey( spep_6 + 80, hit2_b, 255 );

hit2_f = entryEffectLife( spep_6, SP_09, 80, 0x100, -1, 0, 0, 0 );  --ビーム敵近付き部、消し炭キャラコマ含み
setEffMoveKey( spep_6 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit2_f, 0 );
setEffRotateKey( spep_6 + 80, hit2_f, 0 );
setEffAlphaKey( spep_6 + 0, hit2_f, 255 );
setEffAlphaKey( spep_6 + 80, hit2_f, 255 );

--敵キャラ
--イニシャライズ
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 106 );

setDisp( spep_6 + 30, 1, 0 );

--誤差修正用
spep_6a = spep_6 -2;

--動き
setMoveKey( spep_6a + 0, 1, 471.1, -22.3 , 0 );
setMoveKey( spep_6a + 2, 1, 406.1, -22.9 , 0 );
setMoveKey( spep_6a + 4, 1, 341.2, -23.4 , 0 );
setMoveKey( spep_6a + 6, 1, 276.2, -23.9 , 0 );
setMoveKey( spep_6a + 8, 1, 211.3, -24.4 , 0 );
setMoveKey( spep_6a + 10, 1, 146.5, -24.9 , 0 );
setMoveKey( spep_6a + 12, 1, 81.6, -25.5 , 0 );
setMoveKey( spep_6a + 14, 1, 77.3, -25.5 , 0 );
setMoveKey( spep_6a + 16, 1, 70, -25.6 , 0 );
setMoveKey( spep_6a + 18, 1, 62.8, -25.6 , 0 );
setMoveKey( spep_6a + 20, 1, 57.3, -25.7 , 0 );
setMoveKey( spep_6a + 22, 1, 51.8, -25.8 , 0 );
setMoveKey( spep_6a + 24, 1, 46.3, -25.9 , 0 );
setMoveKey( spep_6a + 26, 1, 40.8, -25.9 , 0 );
setMoveKey( spep_6a + 28, 1, 35.3, -26 , 0 );
setMoveKey( spep_6a + 32, 1, 35.3, -26 , 0 );

--スケール
setScaleKey( spep_6a + 0, 1, 0.45, 0.45 );
setScaleKey( spep_6a + 2, 1, 0.59, 0.59 );
setScaleKey( spep_6a + 4, 1, 0.72, 0.72 );
setScaleKey( spep_6a + 6, 1, 0.86, 0.86 );
setScaleKey( spep_6a + 8, 1, 1, 1 );
setScaleKey( spep_6a + 10, 1, 1.14, 1.14 );
setScaleKey( spep_6a + 12, 1, 1.27, 1.27 );
setScaleKey( spep_6a + 14, 1, 1.29, 1.29 );
setScaleKey( spep_6a + 16, 1, 1.31, 1.31 );
setScaleKey( spep_6a + 18, 1, 1.33, 1.33 );
setScaleKey( spep_6a + 20, 1, 1.35, 1.35 );
setScaleKey( spep_6a + 22, 1, 1.37, 1.37 );
setScaleKey( spep_6a + 24, 1, 1.39, 1.39 );
setScaleKey( spep_6a + 26, 1, 1.41, 1.41 );
setScaleKey( spep_6a + 28, 1, 1.42, 1.42 );
setScaleKey( spep_6a + 32, 1, 1.42, 1.42 );

--回転
setRotateKey( spep_6a + 0, 1, -49.9 );
setRotateKey( spep_6a + 32, 1, -49.9 );

--書き文字
ctzuo2 = entryEffectLife( spep_6 + 28,  10012, 28, 0x100, -1, 0, 50.1, 158.3 );
setEffShake( spep_6 + 28, ctzuo2, 2,8, 10 );

setEffMoveKey( spep_6 + 28, ctzuo2, 50.1, 158.3 , 0 );
setEffMoveKey( spep_6 + 30, ctzuo2, 28.8, 232.9 , 0 );
setEffMoveKey( spep_6 + 32, ctzuo2, -20.3, 315.6 , 0 );
setEffMoveKey( spep_6 + 34, ctzuo2, -2.1, 318.3 , 0 );
setEffMoveKey( spep_6 + 36, ctzuo2, -29.1, 324 , 0 );
setEffMoveKey( spep_6 + 38, ctzuo2, -10.8, 326.8 , 0 );
setEffMoveKey( spep_6 + 40, ctzuo2, -37.8, 332.6 , 0 );
setEffMoveKey( spep_6 + 42, ctzuo2, -19.6, 335.5 , 0 );
setEffMoveKey( spep_6 + 44, ctzuo2, -46.6, 341.1 , 0 );
setEffMoveKey( spep_6 + 46, ctzuo2, -28.3, 344.1 , 0 );
setEffMoveKey( spep_6 + 48, ctzuo2, -55.3, 349.5 , 0 );
setEffMoveKey( spep_6 + 50, ctzuo2, -37.1, 352.7 , 0 );
setEffMoveKey( spep_6 + 52, ctzuo2, -79, 373.7 , 0 );
setEffMoveKey( spep_6 + 54, ctzuo2, -52.4, 385.6 , 0 );
setEffMoveKey( spep_6 + 56, ctzuo2, -58.8, 399.1 , 0 );

setEffScaleKey( spep_6 + 28, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_6 + 30, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_6 + 32, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_6 + 50, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_6 + 52, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_6 + 54, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_6 + 56, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_6 + 28, ctzuo2, 6.9 );
setEffRotateKey( spep_6 + 30, ctzuo2, -3.4 );
setEffRotateKey( spep_6 + 32, ctzuo2, -13.5 );
setEffRotateKey( spep_6 + 34, ctzuo2, -13.7 );
setEffRotateKey( spep_6 + 36, ctzuo2, -13.9 );
setEffRotateKey( spep_6 + 38, ctzuo2, -14 );
setEffRotateKey( spep_6 + 40, ctzuo2, -14.2 );
setEffRotateKey( spep_6 + 42, ctzuo2, -14.4 );
setEffRotateKey( spep_6 + 44, ctzuo2, -14.5 );
setEffRotateKey( spep_6 + 46, ctzuo2, -14.7 );
setEffRotateKey( spep_6 + 48, ctzuo2, -14.9 );
setEffRotateKey( spep_6 + 50, ctzuo2, -15 );
setEffRotateKey( spep_6 + 52, ctzuo2, -11.8 );
setEffRotateKey( spep_6 + 54, ctzuo2, -8.5 );
setEffRotateKey( spep_6 + 56, ctzuo2, -5.2 );

setEffAlphaKey( spep_6 + 28, ctzuo2, 255 );
setEffAlphaKey( spep_6 + 50, ctzuo2, 255 );
setEffAlphaKey( spep_6 + 52, ctzuo2, 170 );
setEffAlphaKey( spep_6 + 54, ctzuo2, 85 );
setEffAlphaKey( spep_6 + 56, ctzuo2, 0 );

-- ** 音 ** --
playSe( spep_6, 1021 );--うつ

-- ** ホワイトフェード ** --
entryFade( spep_6 + 72, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 80;
------------------------------------------------------
-- spep_7(210F)
-- SP_11 = 153139;  --爆発背景シーン
------------------------------------------------------

-- ** エフェクト等 ** --
explosion = entryEffect( spep_7, SP_11,  0x80, -1, 0, 0, 0 );  --爆発背景シーン
setEffMoveKey( spep_7 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7 + 210, explosion, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 210, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 210, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 210, explosion, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_7, 906, 78, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_7+34,  shuchusen3,  0,  0);
setEffMoveKey(  spep_7+78,  shuchusen3,  0,  0);
setEffScaleKey(  spep_7+34,  shuchusen3,  1.1,  1.4);
setEffScaleKey(  spep_7+78,  shuchusen3,  1.1,  1.4);
setEffRotateKey(  spep_7+34,  shuchusen3,  0);
setEffRotateKey(  spep_7+78,  shuchusen3,  0);
setEffAlphaKey(  spep_7+34,  shuchusen3,  255);
setEffAlphaKey(  spep_7+78,  shuchusen3,  255);

-- ** 音 ** --
playSe( spep_7, 1023 );--爆発
playSe( spep_7+38, 1024 );--爆発
playSe( spep_7+80, 1067 );--爆発


-- ** ホワイトフェード ** --
entryFade( spep_7, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_7 + 34, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_7 + 70, 4, 6, 14, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 80 );
entryFade( spep_7+ 200, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 206 );

end



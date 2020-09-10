--1015950 超サイヤ人4悟空_アクティブさん
--sp_effect_a1_00144

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

--エフェクト登録
SP_01=  152796  ;-- 構え
SP_02=  152797  ;-- 発射
SP_03=  152798  ;-- 発射（背景）
SP_04=  152799  ;-- 火柱
SP_05=  152800  ;-- 余韻

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
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--構え
------------------------------------------------------
--エフェクト
spep_0=0;

tame=entryEffectLife(spep_0,SP_01,466,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 466, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+466,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+466,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+466,tame,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 464, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 307, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 308, shuchusen1, -150, 0 , 0 );
setEffMoveKey( spep_0 + 464, shuchusen1, -150, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.16, 1.45 );
setEffScaleKey( spep_0 + 30, shuchusen1, 1.16, 1.45 );
setEffScaleKey( spep_0 + 172, shuchusen1, 1.45, 2.7 );
setEffScaleKey( spep_0 + 308, shuchusen1, 1.45, 2.7 );
setEffScaleKey( spep_0 + 310, shuchusen1, 1.87, 2.9 );
setEffScaleKey( spep_0 + 464, shuchusen1, 1.87, 2.9 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 464, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 27, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 28, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 170, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 171, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 172, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 464, shuchusen1, 255 );

--白フェード
entryFade( spep_0 + 458, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--ボイス
--手加減はいらねぇな
playVoice(spep_0,95);
setVoiceVolume(spep_0,95,500);

--stopSe(spep_0+166,SE1,0);
--今度のオレはちょっとつえぇぜ
playVoice(spep_0+166,96);
setVoiceVolume(spep_0+166,96,500);
--playSe(spep_0+166,1077);
--setSeVolume(spep_0+166,1077,500);
--10倍
playVoice(spep_0+318,97);
setVoiceVolume(spep_0+318,97,500);
--playSe(spep_0+318,1078);
--setSeVolume(spep_0+318,1078,500);
--かめはめ
playVoice(spep_0+376,98);
setVoiceVolume(spep_0+376,98,500);
--playSe(spep_0+376,1079);
--setSeVolume(spep_0+376,1079,500);

--SE
SE2=playSe(spep_0+131,55);
setSeVolume(spep_0+131,55,100);
--playSe(spep_0+359,55);
--setSeVolume(spep_0+359,55,100);
stopSe(spep_0+466,SE2,50);

-- ** 次の準備 ** --
spep_1 = spep_0 + 466;

------------------------------------------------------
--発射
------------------------------------------------------
--エフェクト
bemu_f=entryEffectLife(spep_1,SP_02,82,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, bemu_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 82, bemu_f, 0, 0 , 0 );

setEffScaleKey(spep_1,bemu_f,1.0,1.0);
setEffScaleKey(spep_1+82,bemu_f,1.0,1.0);

setEffRotateKey(spep_1,bemu_f,0);
setEffRotateKey(spep_1+82,bemu_f,0);

setEffAlphaKey(spep_1,bemu_f,255);
setEffAlphaKey(spep_1+82,bemu_f,255);


--エフェクト
bemu_b=entryEffectLife(spep_1,SP_03,82,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, bemu_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 82, bemu_b, 0, 0 , 0 );

setEffScaleKey(spep_1,bemu_b,1.0,1.0);
setEffScaleKey(spep_1+82,bemu_b,1.0,1.0);

setEffRotateKey(spep_1,bemu_b,0);
setEffRotateKey(spep_1+82,bemu_b,0);

setEffAlphaKey(spep_1,bemu_b,255);
setEffAlphaKey(spep_1+82,bemu_b,255);

--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 80, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 80, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 80, shuchusen2, 255 );


--文字エントリー
ctzuo = entryEffectLife( spep_1 + 0,  10012, 44, 0x100, -1, 0, 76, 259.9 );--ズオッ
setEffMoveKey( spep_1 + 0, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_1 + 2, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_1 + 4, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 6, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 8, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 10, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 12, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 14, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 16, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 18, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 20, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 22, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 24, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 26, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 28, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 30, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 32, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 34, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 36, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_1 + 38, ctzuo, 157.6, 334.3 , 0 );
setEffMoveKey( spep_1 + 40, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_1 + 42, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_1 + 44, ctzuo, 196, 319.9 , 0 );

a=2.0;

setEffScaleKey( spep_1 + 0, ctzuo, 0.1+a, 0.1+a );
setEffScaleKey( spep_1 + 2, ctzuo, 0.45+a, 0.45+a );
setEffScaleKey( spep_1 + 4, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_1 + 34, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_1 + 36, ctzuo, 1.04+a, 1.04+a );
setEffScaleKey( spep_1 + 38, ctzuo, 1.28+a, 1.28+a );
setEffScaleKey( spep_1 + 40, ctzuo, 1.52+a, 1.52+a );
setEffScaleKey( spep_1 + 42, ctzuo, 1.76+a, 1.76+a );
setEffScaleKey( spep_1 + 44, ctzuo, 2+a, 2+a );

setEffRotateKey( spep_1 + 0, ctzuo, 30 );
setEffRotateKey( spep_1 + 44, ctzuo,30 );

setEffAlphaKey( spep_1 + 0, ctzuo, 255 );
setEffAlphaKey( spep_1 + 34, ctzuo, 255 );
setEffAlphaKey( spep_1 + 36, ctzuo, 204 );
setEffAlphaKey( spep_1 + 38, ctzuo, 153 );
setEffAlphaKey( spep_1 + 40, ctzuo, 102 );
setEffAlphaKey( spep_1 + 42, ctzuo, 51 );
setEffAlphaKey( spep_1 + 44, ctzuo, 0 );


--流線(斜め)
ryusen = entryEffectLife( spep_1 + 0,  921, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen, 1.84, 1.61 );
setEffScaleKey( spep_1 + 80, ryusen, 1.84, 1.61 );

setEffRotateKey( spep_1 + 0, ryusen, 29.3 );
setEffRotateKey( spep_1 + 80, ryusen, 29.3 );

setEffAlphaKey( spep_1 + 0, ryusen, 255 );
setEffAlphaKey( spep_1 + 80, ryusen, 255 );

--敵の動き
setDisp(spep_1 + 38,1,1);
setDisp(spep_1 + 80,1,0);

changeAnime(spep_1 + 38,1,100);

setMoveKey( spep_1 + 38, 1, 543.8, -255.9 , 0 );
setMoveKey( spep_1 + 40, 1, 505.4, -234.9 , 0 );
setMoveKey( spep_1 + 42, 1, 467, -213.9 , 0 );
setMoveKey( spep_1 + 44, 1, 428.7, -193 , 0 );
setMoveKey( spep_1 + 46, 1, 390.3, -171.9 , 0 );
setMoveKey( spep_1 + 48, 1, 351.9, -151 , 0 );
setMoveKey( spep_1 + 50, 1, 313.5, -130 , 0 );

setScaleKey( spep_1 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 40, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 42, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 44, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 46, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 50, 1, 0.8, 0.8 );

setRotateKey( spep_1 + 38, 1, 0 );
setRotateKey( spep_1 + 50, 1, 0 );


--波ー
playVoice(spep_1,99);
setVoiceVolume(spep_1,99,500);
--playSe(spep_1,1080);
--setSeVolume(spep_1,1080,500);

--SE
SE3=playSe(spep_1+1,1022);
setSeVolume(spep_1+1,1022,140);

--黒背景
entryFadeBg(spep_1, 0, 82, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 58 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-13,SE3,0);
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,313.5, -130 , 0 );
    setScaleKey(SP_dodge , 1, 0.8, 0.8);
    setRotateKey(SP_dodge,   1, 0 );
    
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1,313.5, -130 , 0 );
    setScaleKey(SP_dodge+10 , 1, 0.8, 0.8);
    setRotateKey(SP_dodge+10,   1, 0 );
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
    setMoveKey( spep_1 + 52, 1, 275.1, -109 , 0 );
    setMoveKey( spep_1 + 54, 1, 236.7, -88 , 0 );
    setMoveKey( spep_1 + 56, 1, 198.3, -67 , 0 );
    setMoveKey( spep_1 + 58, 1, 160, -46 , 0 );
    setMoveKey( spep_1 + 60, 1, 158, -45.1 , 0 );
    setMoveKey( spep_1 + 62, 1, 156, -44.2 , 0 );
    setMoveKey( spep_1 + 64, 1, 154, -43.3 , 0 );
    setMoveKey( spep_1 + 66, 1, 152, -42.4 , 0 );
    setMoveKey( spep_1 + 68, 1, 150, -41.5 , 0 );
    setMoveKey( spep_1 + 70, 1, 148, -40.5 , 0 );
    setMoveKey( spep_1 + 72, 1, 146, -39.6 , 0 );
    setMoveKey( spep_1 + 74, 1, 144, -38.7 , 0 );
    setMoveKey( spep_1 + 76, 1, 142, -37.8 , 0 );
    setMoveKey( spep_1 + 78, 1, 140, -36.9 , 0 );
    setMoveKey( spep_1 + 80, 1, 138, -36 , 0 );

    setScaleKey( spep_1 + 52, 1, 0.85, 0.85 );
    setScaleKey( spep_1 + 54, 1, 0.9, 0.9 );
    setScaleKey( spep_1 + 56, 1, 0.95, 0.95 );
    setScaleKey( spep_1 + 58, 1, 1, 1 );
    setScaleKey( spep_1 + 60, 1, 1.02, 1.02 );
    setScaleKey( spep_1 + 62, 1, 1.04, 1.04 );
    setScaleKey( spep_1 + 64, 1, 1.06, 1.06 );
    setScaleKey( spep_1 + 66, 1, 1.07, 1.07 );
    setScaleKey( spep_1 + 68, 1, 1.09, 1.09 );
    setScaleKey( spep_1 + 70, 1, 1.11, 1.11 );
    setScaleKey( spep_1 + 72, 1, 1.13, 1.13 );
    setScaleKey( spep_1 + 74, 1, 1.15, 1.15 );
    setScaleKey( spep_1 + 76, 1, 1.16, 1.16 );
    setScaleKey( spep_1 + 78, 1, 1.18, 1.18 );
    setScaleKey( spep_1 + 80, 1, 1.2, 1.2 );

    setRotateKey( spep_1 + 80, 1, 0 );
--あかフェード
entryFade( spep_1 + 75, 4, 3, 4, fcolor_r, 0, 0, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 82;
--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_2,  190002,  58,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_2,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_2+58,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_2,  gyan,  255);
setEffAlphaKey(  spep_2+58,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_2, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_2, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_2+58, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_2, ctgayn, 255);
setEffAlphaKey( spep_2+58, ctgayn, 0);
setEffShake( spep_2, ctgayn, 58, 10);

playSe(spep_2,SE_09);

entryFade( spep_2+53, 4,  2, 6, fcolor_r, 0, 0, 255);     -- white fade

--次の準備
spep_3 = spep_2+59;
------------------------------------------------------
--火柱
------------------------------------------------------
--エフェクト
fire=entryEffectLife(spep_3,SP_04,120,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, fire, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fire, 0, 0 , 0 );

setEffScaleKey(spep_3,fire,1.0,1.0);
setEffScaleKey(spep_3+120,fire,1.0,1.0);

setEffRotateKey(spep_3,fire,0);
setEffRotateKey(spep_3+120,fire,0);

setEffAlphaKey(spep_3,fire,255);
setEffAlphaKey(spep_3+120,fire,255);

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 118, 0x100, -1, 0, 294.8, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.38, 1.38 );
setEffScaleKey( spep_3 + 118, shuchusen3, 1.38, 1.38 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 118, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 118, shuchusen3, 255 );

--SE
playSe(spep_3,1024);
setSeVolume(spep_3,1024,150);

--白フェード
entryFade( spep_3 + 114, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;

------------------------------------------------------
--余韻
------------------------------------------------------
--エフェクト
doya=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, doya, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, doya, 0, 0 , 0 );

setEffScaleKey(spep_4,doya,1.0,1.0);
setEffScaleKey(spep_4+120,doya,1.0,1.0);

setEffRotateKey(spep_4,doya,0);
setEffRotateKey(spep_4+120,doya,0);

setEffAlphaKey(spep_4,doya,255);
setEffAlphaKey(spep_4+120,doya,255);

SE=playSe(spep_4-20,1044);
setSeVolume(spep_4-20,1044,80);
stopSe(spep_4+108,SE,0);

-- ダメージ表示
dealDamage(spep_4  -122);
entryFade( spep_4 +100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_4 +110);

else end
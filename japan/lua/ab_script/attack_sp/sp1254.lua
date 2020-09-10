--ギル_スピニングアタック
--sp_effect_a8_00036

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
SP_01=	152818	;--	導入＆手前にジャンプ
SP_02=	152819	;--	敵に体当たり_手前
SP_03=	152820	;--	敵に体当たり_奥
SP_04=	152821	;--	ヒットエフェクト
SP_05=	152822	;--	グルグル体当たり

--てき
SP_01x=	152818	;--	導入＆手前にジャンプ
SP_02x=	152819	;--	敵に体当たり_手前
SP_03x=	152820	;--	敵に体当たり_奥
SP_04x=	152821	;--	ヒットエフェクト
SP_05x=	152822	;--	グルグル体当たり

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
-- 突進
------------------------------------------------------
spep_0=0;


--エフェクト
jump = entryEffect( spep_0,   SP_01,   0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  jump,  0,  0,  0);
setEffMoveKey( spep_0+110,  jump,  0,  0,  0);
setEffScaleKey( spep_0,  jump,  1.0,  1.0);
setEffScaleKey( spep_0+110,  jump,  1.0,  1.0);
setEffRotateKey(  spep_0,  jump,  0);
setEffRotateKey(  spep_0+110,  jump,  0);
setEffAlphaKey( spep_0,  jump,  255);
setEffAlphaKey( spep_0+110,  jump,  255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 108, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 +108, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 108, shuchusen1, 255 );

--***カットイン***32
speff = entryEffect(  spep_0+16,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+16,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 +28, 190006, 74, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +28,  ctgogo,  0,  530);
setEffMoveKey(  spep_0 +4+98,  ctgogo,  0,  530);

setEffAlphaKey( spep_0  + 28, ctgogo, 0 );
setEffAlphaKey( spep_0  + 29, ctgogo, 255 );
setEffAlphaKey( spep_0 +4 + 30, ctgogo, 255 );
setEffAlphaKey( spep_0 +4 + 81, ctgogo, 255 );
setEffAlphaKey( spep_0 +4 + 90, ctgogo, 255 );
setEffAlphaKey( spep_0 +4 + 92, ctgogo, 191 );
setEffAlphaKey( spep_0 +4 + 94, ctgogo, 128 );
setEffAlphaKey( spep_0 +4 + 96, ctgogo, 64 );
setEffAlphaKey( spep_0 +4 + 98, ctgogo, 0 );

setEffRotateKey(  spep_0 +28,  ctgogo,  0);
setEffRotateKey(  spep_0 +4+98,  ctgogo,  0);

setEffScaleKey(  spep_0 +28,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +4+82,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0 +4 + 98, ctgogo, 1.07, 1.07 );

--SE
SE=playSe(spep_0,1044);
stopSe(spep_0+30,SE,0);
playSe( spep_0+32, SE_04); --ゴゴ

--黒背景
entryFadeBg(spep_0, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0+98, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+110;

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
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
-- 行って帰ってくる
------------------------------------------------------
--エフェクト(前)
attack_f = entryEffect( spep_2,   SP_02,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_2,  attack_f,  0,  0,  0);
setEffMoveKey( spep_2+90,  attack_f,  0,  0,  0);
setEffScaleKey( spep_2,  attack_f,  1.0,  1.0);
setEffScaleKey( spep_2+90,  attack_f,  1.0,  1.0);
setEffRotateKey(  spep_2,  attack_f,  0);
setEffRotateKey(  spep_2+90,  attack_f,  0);
setEffAlphaKey( spep_2,  attack_f,  255);
setEffAlphaKey( spep_2+90,  attack_f,  255);

--流線
ryusen_b = entryEffectLife( spep_2 + 90,  914, 48, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 90, ryusen_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 138, ryusen_b, 0, 0, 0 );

setEffScaleKey( spep_2 + 90, ryusen_b, 5.2, 1.29 );
setEffScaleKey( spep_2 + 92, ryusen_b, 5.2, 1.3 );
setEffScaleKey( spep_2 + 138, ryusen_b, 5.2, 1.3 );

setEffRotateKey( spep_2 + 90, ryusen_b, 38 );
setEffRotateKey( spep_2 + 138, ryusen_b, 38 );

setEffAlphaKey( spep_2 + 90, ryusen_b, 255 );
setEffAlphaKey( spep_2 + 138, ryusen_b, 255 );

--エフェクト(後)
attack_b = entryEffect( spep_2-2+92,   SP_03,   0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_2-2+92,  attack_b,  0,  0,  0);
setEffMoveKey( spep_2-2+142,  attack_b,  0,  0,  0);
setEffScaleKey( spep_2-2+92,  attack_b,  1.0,  1.0);
setEffScaleKey( spep_2-2+142,  attack_b,  1.0,  1.0);
setEffRotateKey(  spep_2-2+92,  attack_b,  0);
setEffRotateKey(  spep_2-2+142,  attack_b,  0);
setEffAlphaKey( spep_2-2+92,  attack_b,  255);
setEffAlphaKey( spep_2+112,  attack_b,  255);
setEffAlphaKey( spep_2+113,  attack_b,  0);
setEffAlphaKey( spep_2+114,  attack_b,  0);

--流線
ryusen1_a = entryEffectLife( spep_2 + 0,  914, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen1_a, 0,0, 0 );
setEffMoveKey( spep_2 + 88, ryusen1_a, 0,0, 0 );

setEffScaleKey( spep_2 + 0, ryusen1_a, 5.19, 1.29 );
setEffScaleKey( spep_2 + 88, ryusen1_a, 5.19, 1.29 );

setEffRotateKey( spep_2 + 0, ryusen1_a, -34.8 );
setEffRotateKey( spep_2 + 88, ryusen1_a, -34.8 );

setEffAlphaKey( spep_2 + 0, ryusen1_a, 255 );
setEffAlphaKey( spep_2 + 80, ryusen1_a, 255 );
setEffAlphaKey( spep_2 + 82, ryusen1_a, 191 );
setEffAlphaKey( spep_2 + 84, ryusen1_a, 128 );
setEffAlphaKey( spep_2 + 86, ryusen1_a, 64 );
setEffAlphaKey( spep_2 + 88, ryusen1_a, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_2 -2 + 58,  10019, 16, 0x100, -1, 0, 84.8, 187 );--ドンッ

setEffMoveKey( spep_2 -2 + 58, ctdon, 84.8, 187 , 0 );
setEffMoveKey( spep_2 -2 + 60, ctdon, 94.9, 236.9 , 0 );
setEffMoveKey( spep_2 -2 + 62, ctdon, 118.7, 280.4 , 0 );
setEffMoveKey( spep_2 -2 + 64, ctdon, 114.4, 289.7 , 0 );
setEffMoveKey( spep_2 -2 + 66, ctdon, 122.7, 282.7 , 0 );
setEffMoveKey( spep_2 -2 + 68, ctdon, 114, 286.2 , 0 );
setEffMoveKey( spep_2 -2 + 70, ctdon, 128.1, 294.3 , 0 );
setEffMoveKey( spep_2 -2 + 72, ctdon, 132.8, 287.5 , 0 );
setEffMoveKey( spep_2 -2 + 74, ctdon, 140.2, 290.7 , 0 );

setEffScaleKey( spep_2 -2 + 58, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_2 -2 + 60, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_2 -2 + 62, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 -2 + 64, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_2 -2 + 66, ctdon, 1.6, 1.6 );
setEffScaleKey( spep_2 -2 + 68, ctdon, 1.65, 1.65 );
setEffScaleKey( spep_2 -2 + 70, ctdon, 1.68, 1.68 );
setEffScaleKey( spep_2 -2 + 72, ctdon, 1.72, 1.72 );
setEffScaleKey( spep_2 -2 + 74, ctdon, 1.75, 1.75 );

setEffRotateKey( spep_2 -2 + 58, ctdon, 16 );
setEffRotateKey( spep_2 -2 + 74, ctdon, 16 );

setEffAlphaKey( spep_2 -2 + 58, ctdon, 255 );
setEffAlphaKey( spep_2 -2 + 68, ctdon, 255 );
setEffAlphaKey( spep_2 -2 + 70, ctdon, 170 );
setEffAlphaKey( spep_2 -2 + 72, ctdon, 85 );
setEffAlphaKey( spep_2 -2 + 74, ctdon, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -2 + 100,  10020, 16, 0x100, -1, 0, -111.5, 148.2 );--バキッ

setEffMoveKey( spep_2 -2 + 100, ctbaki, -111.5, 148.2 , 0 );
setEffMoveKey( spep_2 -2 + 102, ctbaki, -122.4, 193.2 , 0 );
setEffMoveKey( spep_2 -2 + 104, ctbaki, -118.1, 235.8 , 0 );
setEffMoveKey( spep_2 -2 + 106, ctbaki, -125, 242.9 , 0 );
setEffMoveKey( spep_2 -2 + 108, ctbaki, -115.4, 237.7 , 0 );
setEffMoveKey( spep_2 -2 + 110, ctbaki, -125.1, 238.1 , 0 );
setEffMoveKey( spep_2 -2 + 112, ctbaki, -133.4, 247.5 , 0 );
setEffMoveKey( spep_2 -2 + 114, ctbaki, -146.8, 240.1 , 0 );
setEffMoveKey( spep_2 -2 + 116, ctbaki, -160.2, 243 , 0 );

setEffScaleKey( spep_2 -2 + 100, ctbaki, 0.8, 0.8 );
setEffScaleKey( spep_2 -2 + 102, ctbaki, 1.15, 1.15 );
setEffScaleKey( spep_2 -2 + 104, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_2 -2 + 106, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_2 -2 + 108, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2 -2 + 110, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_2 -2 + 112, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_2 -2 + 114, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_2 -2 + 116, ctbaki, 1.75, 1.75 );

setEffRotateKey( spep_2 -2 + 100, ctbaki, -0.8 );
setEffRotateKey( spep_2 -2 + 102, ctbaki, -0.2 );
setEffRotateKey( spep_2 -2 + 104, ctbaki, 0.3 );
setEffRotateKey( spep_2 -2 + 116, ctbaki, 0.3 );

setEffAlphaKey( spep_2 -2 + 100, ctbaki, 255 );
setEffAlphaKey( spep_2 -2 + 110, ctbaki, 255 );
setEffAlphaKey( spep_2 -2 + 112, ctbaki, 170 );
setEffAlphaKey( spep_2 -2 + 114, ctbaki, 85 );
setEffAlphaKey( spep_2 -2 + 116, ctbaki, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 136, 1, 0);

changeAnime( spep_2 + 0, 1, 100 );


setMoveKey( spep_2 + 0, 1, 659.4, 489.4 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 661, 495.2 , 0 );
setMoveKey( spep_2-3 + 4, 1, 658.1, 488.3 , 0 );
setMoveKey( spep_2-3 + 6, 1, 658.2, 481 , 0 );
setMoveKey( spep_2-3 + 8, 1, 653.8, 485.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 652.5, 488.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 646.4, 479.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, 643.6, 469.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, 635.9, 471.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 629.5, 466.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 624.2, 466.9 , 0 );
setMoveKey( spep_2-3 + 22, 1, 614.1, 454.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, 607.1, 441.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, 593.2, 438.1 , 0 );
setMoveKey( spep_2-3 + 28, 1, 585.2, 437 , 0 );
setMoveKey( spep_2-3 + 30, 1, 569.8, 420.6 , 0 );
setMoveKey( spep_2-3 + 32, 1, 556.8, 403.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, 536.1, 394.2 , 0 );
setMoveKey( spep_2-3 + 36, 1, 521.4, 387.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 498.4, 365.7 , 0 );
setMoveKey( spep_2-3 + 40, 1, 475, 347.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.8, 1.8 );
--setScaleKey( spep_2-3 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 4, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 8, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 10, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 12, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 14, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 20, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 26, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 28, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 30, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 34, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 36, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 40, 1, 1.87, 1.87 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 46, 1, 0 );

--黒背景
entryFadeBg(spep_2, 0, 140, 0, 0, 0, 0, 200);  -- 黒　背
--SE
playSe(spep_2,44);
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,475, 347.6 , 0 );
    setScaleKey(SP_dodge , 1, 1.87, 1.87);
    setRotateKey(SP_dodge,   1, 0 );
    
  --キャラクターの固定
  setMoveKey(SP_dodge+8, 1,475, 347.6 , 0 );
  setScaleKey(SP_dodge+8 , 1, 1.87, 1.87);
  setRotateKey(SP_dodge+8,   1, 0 );
    
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
changeAnime( spep_2-3 + 56, 1, 108 );
changeAnime( spep_2-3 + 98, 1, 106 );

setMoveKey( spep_2-3 + 42, 1, 450.6, 321.4 , 0 );
setMoveKey( spep_2-3 + 44, 1, 416.8, 302.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, 386.6, 284.1 , 0 );
setMoveKey( spep_2-3 + 48, 1, 344.9, 247.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 213.7, 138.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 120.7, 74.4 , 0 );
setMoveKey( spep_2-3 + 55, 1, 70, 40.3 , 0 );
setMoveKey( spep_2-3 + 56, 1, 50.5, 18.8 , 0 );
setMoveKey( spep_2-3 + 58, 1, 62.8, 19.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 34.6, 15.2 , 0 );
setMoveKey( spep_2-3 + 62, 1, 49.2, 26.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 38.9, 17.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, 47.8, 15.2 , 0 );
setMoveKey( spep_2-3 + 68, 1, 38.5, 15.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, 46.6, 25.6 , 0 );
setMoveKey( spep_2-3 + 72, 1, 37.8, 15.5 , 0 );
setMoveKey( spep_2-3 + 74, 1, 44.7, 13.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 40.9, 12.5 , 0 );
setMoveKey( spep_2-3 + 78, 1, 40.7, 16.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 43.1, 23.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, 39.1, 15.1 , 0 );
setMoveKey( spep_2-3 + 84, 1, 43.1, 11.1 , 0 );
setMoveKey( spep_2-3 + 86, 1, 39.1, 15.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 43.1, 23.1 , 0 );
setMoveKey( spep_2-3 + 90, 1, 43.1, 23.1 , 0 );
setMoveKey( spep_2-3 + 92, 1, 41.1, 17.1 , 0 );
setMoveKey( spep_2-3 + 94, 1, 43.1, 11.1 , 0 );
setMoveKey( spep_2-3 + 97, 1, 39.1, 15.1 , 0 );
setMoveKey( spep_2-3 + 98, 1, -32.5, 83.4 , 0 );
setMoveKey( spep_2-3 + 100, 1, -22.7, 73.4 , 0 );
setMoveKey( spep_2-3 + 102, 1, -35.5, 56.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, -22.6, 61.6 , 0 );
setMoveKey( spep_2-3 + 106, 1, -26.9, 66.1 , 0 );
setMoveKey( spep_2-3 + 108, 1, -24, 62.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, -25.3, 54 , 0 );
setMoveKey( spep_2-3 + 112, 1, -21.2, 56.5 , 0 );
setMoveKey( spep_2-3 + 114, 1, -30, 58.4 , 0 );
setMoveKey( spep_2-3 + 116, 1, -23.1, 68.5 , 0 );
setMoveKey( spep_2-3 + 118, 1, -30.9, 59.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, -23.1, 55.5 , 0 );
setMoveKey( spep_2-3 + 122, 1, -28.7, 58 , 0 );
setMoveKey( spep_2-3 + 124, 1, -24.7, 66 , 0 );
setMoveKey( spep_2-3 + 126, 1, -28.7, 58 , 0 );
setMoveKey( spep_2-3 + 128, 1, -24.7, 66 , 0 );
setMoveKey( spep_2-3 + 130, 1, -28.7, 58 , 0 );
setMoveKey( spep_2-3 + 132, 1, -24.7, 54 , 0 );
setMoveKey( spep_2-3 + 134, 1, -28.7, 58 , 0 );
setMoveKey( spep_2 + 136, 1, -24.7, 66 , 0 );

setScaleKey( spep_2-3 + 42, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 44, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 46, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 50, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 52, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 55, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 56, 1, 2.38, 2.38 );
setScaleKey( spep_2-3 + 58, 1, 2.22, 2.22 );
setScaleKey( spep_2-3 + 60, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 97, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 98, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 100, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 102, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 104, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 136, 1, 1.7, 1.7 );

setRotateKey( spep_2-3 + 97, 1, 0 );
setRotateKey( spep_2-3 + 98, 1, -32 );
setRotateKey( spep_2 + 136, 1, -32 );

--SE
playSe(spep_2+52,1000);
playSe(spep_2+94,1001);

-- ** エフェクト等 ** --
entryFade(spep_2+52, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+94, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+132, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_3=spep_2+140;

------------------------------------------------------
--手をくるくる回す
------------------------------------------------------
--エフェクト(前)
tackle_f1 = entryEffectLife( spep_3+ 56,   SP_04,10 ,  0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_3+ 56,  tackle_f1,  0,  0,  0);
setEffMoveKey( spep_3+ 66,  tackle_f1,  0,  0,  0);
setEffScaleKey( spep_3+ 56,  tackle_f1,  1.0,  1.0);
setEffScaleKey( spep_3+ 66,  tackle_f1,  1.0,  1.0);
setEffRotateKey(  spep_3+ 56,  tackle_f1,  0);
setEffRotateKey(  spep_3+ 66,  tackle_f1,  0);
setEffAlphaKey( spep_3+ 56,  tackle_f1,  0);
setEffAlphaKey( spep_3+ 63,  tackle_f1,  0);
setEffAlphaKey( spep_3+  64,  tackle_f1,  255);
setEffAlphaKey( spep_3+ 66,  tackle_f1,  255);


--エフェクト(前)
tackle_f2 = entryEffect( spep_3 +66,   SP_04,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_3 +66,  tackle_f2,  0,  0,  0);
setEffMoveKey( spep_3 +76,  tackle_f2,  0,  0,  0);
setEffScaleKey( spep_3 +66,  tackle_f2,  1.0,  1.0);
setEffScaleKey( spep_3 +76,  tackle_f2,  1.0,  1.0);
setEffRotateKey(  spep_3 +66,  tackle_f2,  0);
setEffRotateKey(  spep_3 +76,  tackle_f2,  0);
setEffAlphaKey( spep_3 +66,  tackle_f2,  255);
setEffAlphaKey( spep_3 +76,  tackle_f2,  255);

--エフェクト(後)
tackle_b = entryEffect( spep_3,   SP_05,   0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_3,  tackle_b,  0,  0,  0);
setEffMoveKey( spep_3+110,  tackle_b,  0,  0,  0);
setEffScaleKey( spep_3,  tackle_b,  1.0,  1.0);
setEffScaleKey( spep_3+110,  tackle_b,  1.0,  1.0);
setEffRotateKey(  spep_3,  tackle_b,  0);
setEffRotateKey(  spep_3+110,  tackle_b,  0);
setEffAlphaKey( spep_3,  tackle_b,  255);
setEffAlphaKey( spep_3+110,  tackle_b,  255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3-3 + 66, 1, 107 );

setMoveKey( spep_3 + 0, 1, 583.3, -760.3 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 581.2, -758.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 578.5, -755.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 575.2, -751.9 , 0 );
setMoveKey( spep_3-3 + 8, 1, 571.4, -747.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 567, -743.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 562.1, -737.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 556.8, -732.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 551, -726.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 544.8, -719.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 538.2, -712.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 531.2, -705 , 0 );
setMoveKey( spep_3-3 + 24, 1, 523.8, -697.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 516, -688.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, 507.9, -680.3 , 0 );
setMoveKey( spep_3-3 + 30, 1, 499.4, -671.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 490.5, -661.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 481.2, -652 , 0 );
setMoveKey( spep_3-3 + 36, 1, 471.6, -641.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 461.6, -631.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 451.1, -620 , 0 );
setMoveKey( spep_3-3 + 42, 1, 440.3, -608.4 , 0 );
setMoveKey( spep_3-3 + 44, 1, 428.9, -596.4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 417.1, -583.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 404.8, -570.8 , 0 );
setMoveKey( spep_3-3 + 50, 1, 391.9, -557 , 0 );
setMoveKey( spep_3-3 + 52, 1, 378.3, -542.6 , 0 );
setMoveKey( spep_3-3 + 54, 1, 363.8, -527.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 348.4, -510.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 331.7, -493.1 , 0 );
setMoveKey( spep_3-3 + 60, 1, 313.2, -473.4 , 0 );
setMoveKey( spep_3-3 + 62, 1, 291.7, -450.5 , 0 );
setMoveKey( spep_3-3 + 65, 1, 249.9, -416.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 137.2, -383.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 215.9, -453.7 , 0 );
setMoveKey( spep_3-3 + 70, 1, 283.1, -513.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 340.6, -565.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 389.6, -609.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 431.1, -646.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 466, -677.5 , 0 );
setMoveKey( spep_3-3 + 80, 1, 494.9, -703.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 518.3, -724.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, 536.7, -740.7 , 0 );
setMoveKey( spep_3-3 + 86, 1, 550.3, -752.9 , 0 );
setMoveKey( spep_3 + 88, 1, 559.4, -761.3 , 0 );

setScaleKey( spep_3 + 0, 1, 3.76, 3.76 );
--setScaleKey( spep_3-3 + 2, 1, 3.76, 3.76 );
setScaleKey( spep_3-3 + 4, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 6, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 8, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 10, 1, 3.79, 3.79 );
setScaleKey( spep_3-3 + 12, 1, 3.8, 3.8 );
setScaleKey( spep_3-3 + 14, 1, 3.81, 3.81 );
setScaleKey( spep_3-3 + 16, 1, 3.82, 3.82 );
setScaleKey( spep_3-3 + 18, 1, 3.83, 3.83 );
setScaleKey( spep_3-3 + 20, 1, 3.84, 3.84 );
setScaleKey( spep_3-3 + 22, 1, 3.85, 3.85 );
setScaleKey( spep_3-3 + 24, 1, 3.87, 3.87 );
setScaleKey( spep_3-3 + 26, 1, 3.88, 3.88 );
setScaleKey( spep_3-3 + 28, 1, 3.89, 3.89 );
setScaleKey( spep_3-3 + 30, 1, 3.91, 3.91 );
setScaleKey( spep_3-3 + 32, 1, 3.93, 3.93 );
setScaleKey( spep_3-3 + 34, 1, 3.94, 3.94 );
setScaleKey( spep_3-3 + 36, 1, 3.96, 3.96 );
setScaleKey( spep_3-3 + 38, 1, 3.98, 3.98 );
setScaleKey( spep_3-3 + 40, 1, 4, 4 );
setScaleKey( spep_3-3 + 42, 1, 4.01, 4.01 );
setScaleKey( spep_3-3 + 44, 1, 4.03, 4.03 );
setScaleKey( spep_3-3 + 46, 1, 4.06, 4.06 );
setScaleKey( spep_3-3 + 48, 1, 4.08, 4.08 );
setScaleKey( spep_3-3 + 50, 1, 4.1, 4.1 );
setScaleKey( spep_3-3 + 52, 1, 4.13, 4.13 );
setScaleKey( spep_3-3 + 54, 1, 4.15, 4.15 );
setScaleKey( spep_3-3 + 56, 1, 4.18, 4.18 );
setScaleKey( spep_3-3 + 58, 1, 4.21, 4.21 );
setScaleKey( spep_3-3 + 60, 1, 4.24, 4.24 );
setScaleKey( spep_3-3 + 62, 1, 4.28, 4.28 );
setScaleKey( spep_3-3 + 65, 1, 4.33, 4.33 );
setScaleKey( spep_3-3 + 66, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 70, 1, 1.91, 1.91 );
setScaleKey( spep_3-3 + 72, 1, 2.03, 2.03 );
setScaleKey( spep_3-3 + 74, 1, 2.14, 2.14 );
setScaleKey( spep_3-3 + 76, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 78, 1, 2.3, 2.3 );
setScaleKey( spep_3-3 + 80, 1, 2.36, 2.36 );
setScaleKey( spep_3-3 + 82, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 84, 1, 2.45, 2.45 );
setScaleKey( spep_3-3 + 86, 1, 2.48, 2.48 );
setScaleKey( spep_3 + 88, 1, 2.5, 2.5 );

setRotateKey( spep_3 + 0, 1, 0 );
--setRotateKey( spep_3-3 + 65, 1, 0 );
setRotateKey( spep_3-3 + 66, 1, 5 );
setRotateKey( spep_3-3 + 68, 1, 5 );
setRotateKey( spep_3-3 + 70, 1, 4.9 );
setRotateKey( spep_3-3 + 74, 1, 4.9 );
setRotateKey( spep_3-3 + 76, 1, 4.8 );
setRotateKey( spep_3 + 88, 1, 4.8 );

--文字エントリー
ctbaki2_1 = entryEffectLife( spep_3 + 64,  10020, 14, 0x100, -1, 0, -54.8, -344.6 );--バキッ

setEffMoveKey( spep_3 + 64, ctbaki2_1, -54.8, -344.6 , 0 );
setEffMoveKey( spep_3 + 66, ctbaki2_1, -56.7, -338.3 , 0 );
setEffMoveKey( spep_3 + 68, ctbaki2_1, -58.4, -331.7 , 0 );
setEffMoveKey( spep_3 + 70, ctbaki2_1, -61.3, -327.4 , 0 );
setEffMoveKey( spep_3 + 72, ctbaki2_1, -64.1, -322.8 , 0 );
setEffMoveKey( spep_3 + 74, ctbaki2_1, -72.2, -316.5 , 0 );
setEffMoveKey( spep_3 + 76, ctbaki2_1, -80.1, -310 , 0 );
setEffMoveKey( spep_3 + 78, ctbaki2_1, -84.7, -317.6 , 0 );

setEffScaleKey( spep_3 + 64, ctbaki2_1, 1.7, 1.7 );
setEffScaleKey( spep_3 + 66, ctbaki2_1, 1.75, 1.75 );
setEffScaleKey( spep_3 + 68, ctbaki2_1, 1.8, 1.8 );
setEffScaleKey( spep_3 + 70, ctbaki2_1, 1.75, 1.75 );
setEffScaleKey( spep_3 + 72, ctbaki2_1, 1.7, 1.7 );
setEffScaleKey( spep_3 + 74, ctbaki2_1, 1.75, 1.75 );
setEffScaleKey( spep_3 + 76, ctbaki2_1, 1.8, 1.8 );
setEffScaleKey( spep_3 + 78, ctbaki2_1, 1.85, 1.85 );

setEffRotateKey( spep_3 + 64, ctbaki2_1, -16 );
setEffRotateKey( spep_3 + 66, ctbaki2_1, -20 );
setEffRotateKey( spep_3 + 68, ctbaki2_1, -24 );
setEffRotateKey( spep_3 + 70, ctbaki2_1, -20 );
setEffRotateKey( spep_3 + 72, ctbaki2_1, -16 );
setEffRotateKey( spep_3 + 74, ctbaki2_1, -20 );
setEffRotateKey( spep_3 + 76, ctbaki2_1, -24 );
setEffRotateKey( spep_3 + 78, ctbaki2_1, -16 );

setEffAlphaKey( spep_3 + 64, ctbaki2_1, 255 );
setEffAlphaKey( spep_3 + 72, ctbaki2_1, 255 );
setEffAlphaKey( spep_3 + 74, ctbaki2_1, 170 );
setEffAlphaKey( spep_3 + 76, ctbaki2_1, 85 );
setEffAlphaKey( spep_3 + 78, ctbaki2_1, 0 );

--文字エントリー
ctbaki2_2 = entryEffectLife( spep_3 + 66,  10020, 12, 0x100, -1, 0, -54.8, -344.6 );--バキッ

setEffMoveKey( spep_3 + 66, ctbaki2_2, -56.7, -338.3 , 0 );
setEffMoveKey( spep_3 + 68, ctbaki2_2, -58.4, -331.7 , 0 );
setEffMoveKey( spep_3 + 70, ctbaki2_2, -61.3, -327.4 , 0 );
setEffMoveKey( spep_3 + 72, ctbaki2_2, -64.1, -322.8 , 0 );
setEffMoveKey( spep_3 + 74, ctbaki2_2, -72.2, -316.5 , 0 );
setEffMoveKey( spep_3 + 76, ctbaki2_2, -80.1, -310 , 0 );
setEffMoveKey( spep_3 + 78, ctbaki2_2, -84.7, -317.6 , 0 );

setEffScaleKey( spep_3 + 66, ctbaki2_2, 1.75, 1.75 );
setEffScaleKey( spep_3 + 68, ctbaki2_2, 1.8, 1.8 );
setEffScaleKey( spep_3 + 70, ctbaki2_2, 1.75, 1.75 );
setEffScaleKey( spep_3 + 72, ctbaki2_2, 1.7, 1.7 );
setEffScaleKey( spep_3 + 74, ctbaki2_2, 1.75, 1.75 );
setEffScaleKey( spep_3 + 76, ctbaki2_2, 1.8, 1.8 );
setEffScaleKey( spep_3 + 78, ctbaki2_2, 1.85, 1.85 );

setEffRotateKey( spep_3 + 66, ctbaki2_2, -20 );
setEffRotateKey( spep_3 + 68, ctbaki2_2, -24 );
setEffRotateKey( spep_3 + 70, ctbaki2_2, -20 );
setEffRotateKey( spep_3 + 72, ctbaki2_2, -16 );
setEffRotateKey( spep_3 + 74, ctbaki2_2, -20 );
setEffRotateKey( spep_3 + 76, ctbaki2_2, -24 );
setEffRotateKey( spep_3 + 78, ctbaki2_2, -16 );

setEffAlphaKey( spep_3 + 66, ctbaki2_2, 255 );
setEffAlphaKey( spep_3 + 72, ctbaki2_2, 255 );
setEffAlphaKey( spep_3 + 74, ctbaki2_2, 170 );
setEffAlphaKey( spep_3 + 76, ctbaki2_2, 85 );
setEffAlphaKey( spep_3 + 78, ctbaki2_2, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 78, 0x100, -1, -150, 200, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, -200, 300 , 0 );
setEffMoveKey( spep_3 + 63, shuchusen2, -200, 300 , 0 );
setEffMoveKey( spep_3 + 64, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 64, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 66, shuchusen2, 1, 1 );
setEffScaleKey( spep_3 + 78, shuchusen2, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 72, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 74, shuchusen2, 170 );
setEffAlphaKey( spep_3 + 76, shuchusen2, 85 );
setEffAlphaKey( spep_3 + 78, shuchusen2, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 78, 0x100, -1, -150, 200, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, -200, 300 , 0 );
setEffMoveKey( spep_3 + 63, shuchusen2, -200, 300 , 0 );
setEffMoveKey( spep_3 + 64, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 64, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 66, shuchusen2, 1, 1 );
setEffScaleKey( spep_3 + 78, shuchusen2, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 72, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 74, shuchusen2, 170 );
setEffAlphaKey( spep_3 + 76, shuchusen2, 85 );
setEffAlphaKey( spep_3 + 78, shuchusen2, 0 );

--黒背景
entryFadeBg(spep_3, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背


--SE
playSe( spep_3, SE_04); --近ずく
playSe( spep_3+64, 1002); --ぶつかる

-- ** エフェクト等 ** --
entryFade(spep_3+60, 0, 4, 0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+102, 4, 12, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+110;

------------------------------------------------------
-- ガッ
------------------------------------------------------

--***敵の動き***--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
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
setScaleKey( spep_4 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );
setEffRotateKey( spep_4 + 112, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );
setEffAlphaKey( spep_4 + 112, ctGa, 255 );

--entryFadeBg( spep_4,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_4+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_4+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_4 + 110);


else 

------------------------------------------------------
-- てき
------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------
spep_0=0;

--エフェクト
jump = entryEffect( spep_0,   SP_01x,   0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  jump,  0,  0,  0);
setEffMoveKey( spep_0+110,  jump,  0,  0,  0);
setEffScaleKey( spep_0,  jump,  1.0,  1.0);
setEffScaleKey( spep_0+110,  jump,  1.0,  1.0);
setEffRotateKey(  spep_0,  jump,  0);
setEffRotateKey(  spep_0+110,  jump,  0);
setEffAlphaKey( spep_0,  jump,  255);
setEffAlphaKey( spep_0+110,  jump,  255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 108, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 +108, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 108, shuchusen1, 255 );

--***カットイン***32
--speff = entryEffect(  spep_0+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0+28, 190006, 74, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +28,  ctgogo,  0,  530);
setEffMoveKey(  spep_0 +4+98,  ctgogo,  0,  530);

setEffAlphaKey( spep_0  + 28, ctgogo, 0 );
setEffAlphaKey( spep_0  + 29, ctgogo, 255 );
setEffAlphaKey( spep_0 +4 + 30, ctgogo, 255 );
setEffAlphaKey( spep_0 +4 + 81, ctgogo, 255 );
setEffAlphaKey( spep_0 +4 + 90, ctgogo, 255 );
setEffAlphaKey( spep_0 +4 + 92, ctgogo, 191 );
setEffAlphaKey( spep_0 +4 + 94, ctgogo, 128 );
setEffAlphaKey( spep_0 +4 + 96, ctgogo, 64 );
setEffAlphaKey( spep_0 +4 + 98, ctgogo, 0 );

setEffRotateKey(  spep_0 +28,  ctgogo,  0);
setEffRotateKey(  spep_0 +4+98,  ctgogo,  0);

setEffScaleKey(  spep_0 +28,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +4+82,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0 +4 + 98, ctgogo, -1.07, 1.07 );

--SE
SE=playSe(spep_0,1044);
stopSe(spep_0+30,SE,0);
playSe( spep_0+32, SE_04); --ゴゴ

--黒背景
entryFadeBg(spep_0, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0+98, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+110;

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
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
-- 行って帰ってくる
------------------------------------------------------
--エフェクト(前)
attack_f = entryEffect( spep_2,   SP_02x,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_2,  attack_f,  0,  0,  0);
setEffMoveKey( spep_2+90,  attack_f,  0,  0,  0);
setEffScaleKey( spep_2,  attack_f,  1.0,  1.0);
setEffScaleKey( spep_2+90,  attack_f,  1.0,  1.0);
setEffRotateKey(  spep_2,  attack_f,  0);
setEffRotateKey(  spep_2+90,  attack_f,  0);
setEffAlphaKey( spep_2,  attack_f,  255);
setEffAlphaKey( spep_2+90,  attack_f,  255);

--流線
ryusen_b = entryEffectLife( spep_2 + 90,  914, 48, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 90, ryusen_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 138, ryusen_b, 0, 0, 0 );

setEffScaleKey( spep_2 + 90, ryusen_b, 5.2, 1.29 );
setEffScaleKey( spep_2 + 92, ryusen_b, 5.2, 1.3 );
setEffScaleKey( spep_2 + 138, ryusen_b, 5.2, 1.3 );

setEffRotateKey( spep_2 + 90, ryusen_b, 38 );
setEffRotateKey( spep_2 + 138, ryusen_b, 38 );

setEffAlphaKey( spep_2 + 90, ryusen_b, 255 );
setEffAlphaKey( spep_2 + 138, ryusen_b, 255 );

--エフェクト(後)
attack_b = entryEffect( spep_2-2+92,   SP_03x,   0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_2-2+92,  attack_b,  0,  0,  0);
setEffMoveKey( spep_2-2+142,  attack_b,  0,  0,  0);
setEffScaleKey( spep_2-2+92,  attack_b,  1.0,  1.0);
setEffScaleKey( spep_2-2+142,  attack_b,  1.0,  1.0);
setEffRotateKey(  spep_2-2+92,  attack_b,  0);
setEffRotateKey(  spep_2-2+142,  attack_b,  0);
setEffAlphaKey( spep_2-2+92,  attack_b,  255);
setEffAlphaKey( spep_2+112,  attack_b,  255);
setEffAlphaKey( spep_2+113,  attack_b,  0);
setEffAlphaKey( spep_2+114,  attack_b,  0);

--流線
ryusen1_a = entryEffectLife( spep_2 + 0,  914, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen1_a, 0,0, 0 );
setEffMoveKey( spep_2 + 88, ryusen1_a, 0,0, 0 );

setEffScaleKey( spep_2 + 0, ryusen1_a, 5.19, 1.29 );
setEffScaleKey( spep_2 + 88, ryusen1_a, 5.19, 1.29 );

setEffRotateKey( spep_2 + 0, ryusen1_a, -34.8 );
setEffRotateKey( spep_2 + 88, ryusen1_a, -34.8 );

setEffAlphaKey( spep_2 + 0, ryusen1_a, 255 );
setEffAlphaKey( spep_2 + 80, ryusen1_a, 255 );
setEffAlphaKey( spep_2 + 82, ryusen1_a, 191 );
setEffAlphaKey( spep_2 + 84, ryusen1_a, 128 );
setEffAlphaKey( spep_2 + 86, ryusen1_a, 64 );
setEffAlphaKey( spep_2 + 88, ryusen1_a, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_2 -2 + 58,  10019, 16, 0x100, -1, 0, 84.8, 187 );--ドンッ

setEffMoveKey( spep_2 -2 + 58, ctdon, 84.8, 187 , 0 );
setEffMoveKey( spep_2 -2 + 60, ctdon, 94.9, 236.9 , 0 );
setEffMoveKey( spep_2 -2 + 62, ctdon, 118.7, 280.4 , 0 );
setEffMoveKey( spep_2 -2 + 64, ctdon, 114.4, 289.7 , 0 );
setEffMoveKey( spep_2 -2 + 66, ctdon, 122.7, 282.7 , 0 );
setEffMoveKey( spep_2 -2 + 68, ctdon, 114, 286.2 , 0 );
setEffMoveKey( spep_2 -2 + 70, ctdon, 128.1, 294.3 , 0 );
setEffMoveKey( spep_2 -2 + 72, ctdon, 132.8, 287.5 , 0 );
setEffMoveKey( spep_2 -2 + 74, ctdon, 140.2, 290.7 , 0 );

setEffScaleKey( spep_2 -2 + 58, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_2 -2 + 60, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_2 -2 + 62, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 -2 + 64, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_2 -2 + 66, ctdon, 1.6, 1.6 );
setEffScaleKey( spep_2 -2 + 68, ctdon, 1.65, 1.65 );
setEffScaleKey( spep_2 -2 + 70, ctdon, 1.68, 1.68 );
setEffScaleKey( spep_2 -2 + 72, ctdon, 1.72, 1.72 );
setEffScaleKey( spep_2 -2 + 74, ctdon, 1.75, 1.75 );

setEffRotateKey( spep_2 -2 + 58, ctdon, 16 );
setEffRotateKey( spep_2 -2 + 74, ctdon, 16 );

setEffAlphaKey( spep_2 -2 + 58, ctdon, 255 );
setEffAlphaKey( spep_2 -2 + 68, ctdon, 255 );
setEffAlphaKey( spep_2 -2 + 70, ctdon, 170 );
setEffAlphaKey( spep_2 -2 + 72, ctdon, 85 );
setEffAlphaKey( spep_2 -2 + 74, ctdon, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -2 + 100,  10020, 16, 0x100, -1, 0, -111.5, 148.2 );--バキッ

setEffMoveKey( spep_2 -2 + 100, ctbaki, -111.5, 148.2 , 0 );
setEffMoveKey( spep_2 -2 + 102, ctbaki, -122.4, 193.2 , 0 );
setEffMoveKey( spep_2 -2 + 104, ctbaki, -118.1, 235.8 , 0 );
setEffMoveKey( spep_2 -2 + 106, ctbaki, -125, 242.9 , 0 );
setEffMoveKey( spep_2 -2 + 108, ctbaki, -115.4, 237.7 , 0 );
setEffMoveKey( spep_2 -2 + 110, ctbaki, -125.1, 238.1 , 0 );
setEffMoveKey( spep_2 -2 + 112, ctbaki, -133.4, 247.5 , 0 );
setEffMoveKey( spep_2 -2 + 114, ctbaki, -146.8, 240.1 , 0 );
setEffMoveKey( spep_2 -2 + 116, ctbaki, -160.2, 243 , 0 );

setEffScaleKey( spep_2 -2 + 100, ctbaki, 0.8, 0.8 );
setEffScaleKey( spep_2 -2 + 102, ctbaki, 1.15, 1.15 );
setEffScaleKey( spep_2 -2 + 104, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_2 -2 + 106, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_2 -2 + 108, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2 -2 + 110, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_2 -2 + 112, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_2 -2 + 114, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_2 -2 + 116, ctbaki, 1.75, 1.75 );

setEffRotateKey( spep_2 -2 + 100, ctbaki, -0.8 );
setEffRotateKey( spep_2 -2 + 102, ctbaki, -0.2 );
setEffRotateKey( spep_2 -2 + 104, ctbaki, 0.3 );
setEffRotateKey( spep_2 -2 + 116, ctbaki, 0.3 );

setEffAlphaKey( spep_2 -2 + 100, ctbaki, 255 );
setEffAlphaKey( spep_2 -2 + 110, ctbaki, 255 );
setEffAlphaKey( spep_2 -2 + 112, ctbaki, 170 );
setEffAlphaKey( spep_2 -2 + 114, ctbaki, 85 );
setEffAlphaKey( spep_2 -2 + 116, ctbaki, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 136, 1, 0);

changeAnime( spep_2 + 0, 1, 100 );


setMoveKey( spep_2 + 0, 1, 659.4, 489.4 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 661, 495.2 , 0 );
setMoveKey( spep_2-3 + 4, 1, 658.1, 488.3 , 0 );
setMoveKey( spep_2-3 + 6, 1, 658.2, 481 , 0 );
setMoveKey( spep_2-3 + 8, 1, 653.8, 485.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 652.5, 488.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 646.4, 479.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, 643.6, 469.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, 635.9, 471.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 629.5, 466.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 624.2, 466.9 , 0 );
setMoveKey( spep_2-3 + 22, 1, 614.1, 454.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, 607.1, 441.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, 593.2, 438.1 , 0 );
setMoveKey( spep_2-3 + 28, 1, 585.2, 437 , 0 );
setMoveKey( spep_2-3 + 30, 1, 569.8, 420.6 , 0 );
setMoveKey( spep_2-3 + 32, 1, 556.8, 403.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, 536.1, 394.2 , 0 );
setMoveKey( spep_2-3 + 36, 1, 521.4, 387.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 498.4, 365.7 , 0 );
setMoveKey( spep_2-3 + 40, 1, 475, 347.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.8, 1.8 );
--setScaleKey( spep_2-3 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 4, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 8, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 10, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 12, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 14, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 20, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 26, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 28, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 30, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 34, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 36, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 40, 1, 1.87, 1.87 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 46, 1, 0 );

--黒背景
entryFadeBg(spep_2, 0, 140, 0, 0, 0, 0, 200);  -- 黒　背
--SE
playSe(spep_2,44);
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,475, 347.6 , 0 );
    setScaleKey(SP_dodge , 1, 1.87, 1.87);
    setRotateKey(SP_dodge,   1, 0 );
    
  --キャラクターの固定
  setMoveKey(SP_dodge+8, 1,475, 347.6 , 0 );
  setScaleKey(SP_dodge+8 , 1, 1.87, 1.87);
  setRotateKey(SP_dodge+8,   1, 0 );
    
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
changeAnime( spep_2-3 + 56, 1, 108 );
changeAnime( spep_2-3 + 98, 1, 106 );

setMoveKey( spep_2-3 + 42, 1, 450.6, 321.4 , 0 );
setMoveKey( spep_2-3 + 44, 1, 416.8, 302.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, 386.6, 284.1 , 0 );
setMoveKey( spep_2-3 + 48, 1, 344.9, 247.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 213.7, 138.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 120.7, 74.4 , 0 );
setMoveKey( spep_2-3 + 55, 1, 70, 40.3 , 0 );
setMoveKey( spep_2-3 + 56, 1, 50.5, 18.8 , 0 );
setMoveKey( spep_2-3 + 58, 1, 62.8, 19.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 34.6, 15.2 , 0 );
setMoveKey( spep_2-3 + 62, 1, 49.2, 26.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 38.9, 17.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, 47.8, 15.2 , 0 );
setMoveKey( spep_2-3 + 68, 1, 38.5, 15.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, 46.6, 25.6 , 0 );
setMoveKey( spep_2-3 + 72, 1, 37.8, 15.5 , 0 );
setMoveKey( spep_2-3 + 74, 1, 44.7, 13.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 40.9, 12.5 , 0 );
setMoveKey( spep_2-3 + 78, 1, 40.7, 16.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 43.1, 23.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, 39.1, 15.1 , 0 );
setMoveKey( spep_2-3 + 84, 1, 43.1, 11.1 , 0 );
setMoveKey( spep_2-3 + 86, 1, 39.1, 15.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 43.1, 23.1 , 0 );
setMoveKey( spep_2-3 + 90, 1, 43.1, 23.1 , 0 );
setMoveKey( spep_2-3 + 92, 1, 41.1, 17.1 , 0 );
setMoveKey( spep_2-3 + 94, 1, 43.1, 11.1 , 0 );
setMoveKey( spep_2-3 + 97, 1, 39.1, 15.1 , 0 );
setMoveKey( spep_2-3 + 98, 1, -32.5, 83.4 , 0 );
setMoveKey( spep_2-3 + 100, 1, -22.7, 73.4 , 0 );
setMoveKey( spep_2-3 + 102, 1, -35.5, 56.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, -22.6, 61.6 , 0 );
setMoveKey( spep_2-3 + 106, 1, -26.9, 66.1 , 0 );
setMoveKey( spep_2-3 + 108, 1, -24, 62.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, -25.3, 54 , 0 );
setMoveKey( spep_2-3 + 112, 1, -21.2, 56.5 , 0 );
setMoveKey( spep_2-3 + 114, 1, -30, 58.4 , 0 );
setMoveKey( spep_2-3 + 116, 1, -23.1, 68.5 , 0 );
setMoveKey( spep_2-3 + 118, 1, -30.9, 59.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, -23.1, 55.5 , 0 );
setMoveKey( spep_2-3 + 122, 1, -28.7, 58 , 0 );
setMoveKey( spep_2-3 + 124, 1, -24.7, 66 , 0 );
setMoveKey( spep_2-3 + 126, 1, -28.7, 58 , 0 );
setMoveKey( spep_2-3 + 128, 1, -24.7, 66 , 0 );
setMoveKey( spep_2-3 + 130, 1, -28.7, 58 , 0 );
setMoveKey( spep_2-3 + 132, 1, -24.7, 54 , 0 );
setMoveKey( spep_2-3 + 134, 1, -28.7, 58 , 0 );
setMoveKey( spep_2 + 136, 1, -24.7, 66 , 0 );

setScaleKey( spep_2-3 + 42, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 44, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 46, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 50, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 52, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 55, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 56, 1, 2.38, 2.38 );
setScaleKey( spep_2-3 + 58, 1, 2.22, 2.22 );
setScaleKey( spep_2-3 + 60, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 97, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 98, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 100, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 102, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 104, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 136, 1, 1.7, 1.7 );

setRotateKey( spep_2-3 + 97, 1, 0 );
setRotateKey( spep_2-3 + 98, 1, -32 );
setRotateKey( spep_2 + 136, 1, -32 );

--SE
playSe(spep_2+52,1000);
playSe(spep_2+94,1001);

-- ** エフェクト等 ** --
entryFade(spep_2+52, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+94, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+132, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_3=spep_2+140;

------------------------------------------------------
--手をくるくる回す
------------------------------------------------------
--エフェクト(前)
tackle_f1 = entryEffectLife( spep_3+ 56,   SP_04x,10 ,  0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_3+ 56,  tackle_f1,  0,  0,  0);
setEffMoveKey( spep_3+ 66,  tackle_f1,  0,  0,  0);
setEffScaleKey( spep_3+ 56,  tackle_f1,  1.0,  1.0);
setEffScaleKey( spep_3+ 66,  tackle_f1,  1.0,  1.0);
setEffRotateKey(  spep_3+ 56,  tackle_f1,  0);
setEffRotateKey(  spep_3+ 66,  tackle_f1,  0);
setEffAlphaKey( spep_3+ 56,  tackle_f1,  0);
setEffAlphaKey( spep_3+ 63,  tackle_f1,  0);
setEffAlphaKey( spep_3+  64,  tackle_f1,  255);
setEffAlphaKey( spep_3+ 66,  tackle_f1,  255);


--エフェクト(前)
tackle_f2 = entryEffect( spep_3 +66,   SP_04x,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_3 +66,  tackle_f2,  0,  0,  0);
setEffMoveKey( spep_3 +76,  tackle_f2,  0,  0,  0);
setEffScaleKey( spep_3 +66,  tackle_f2,  1.0,  1.0);
setEffScaleKey( spep_3 +76,  tackle_f2,  1.0,  1.0);
setEffRotateKey(  spep_3 +66,  tackle_f2,  0);
setEffRotateKey(  spep_3 +76,  tackle_f2,  0);
setEffAlphaKey( spep_3 +66,  tackle_f2,  255);
setEffAlphaKey( spep_3 +76,  tackle_f2,  255);

--エフェクト(後)
tackle_b = entryEffect( spep_3,   SP_05x,   0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_3,  tackle_b,  0,  0,  0);
setEffMoveKey( spep_3+110,  tackle_b,  0,  0,  0);
setEffScaleKey( spep_3,  tackle_b,  1.0,  1.0);
setEffScaleKey( spep_3+110,  tackle_b,  1.0,  1.0);
setEffRotateKey(  spep_3,  tackle_b,  0);
setEffRotateKey(  spep_3+110,  tackle_b,  0);
setEffAlphaKey( spep_3,  tackle_b,  255);
setEffAlphaKey( spep_3+110,  tackle_b,  255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3-3 + 66, 1, 107 );

setMoveKey( spep_3 + 0, 1, 583.3, -760.3 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 581.2, -758.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 578.5, -755.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 575.2, -751.9 , 0 );
setMoveKey( spep_3-3 + 8, 1, 571.4, -747.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 567, -743.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 562.1, -737.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 556.8, -732.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 551, -726.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 544.8, -719.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 538.2, -712.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 531.2, -705 , 0 );
setMoveKey( spep_3-3 + 24, 1, 523.8, -697.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 516, -688.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, 507.9, -680.3 , 0 );
setMoveKey( spep_3-3 + 30, 1, 499.4, -671.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 490.5, -661.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 481.2, -652 , 0 );
setMoveKey( spep_3-3 + 36, 1, 471.6, -641.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 461.6, -631.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 451.1, -620 , 0 );
setMoveKey( spep_3-3 + 42, 1, 440.3, -608.4 , 0 );
setMoveKey( spep_3-3 + 44, 1, 428.9, -596.4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 417.1, -583.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 404.8, -570.8 , 0 );
setMoveKey( spep_3-3 + 50, 1, 391.9, -557 , 0 );
setMoveKey( spep_3-3 + 52, 1, 378.3, -542.6 , 0 );
setMoveKey( spep_3-3 + 54, 1, 363.8, -527.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 348.4, -510.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 331.7, -493.1 , 0 );
setMoveKey( spep_3-3 + 60, 1, 313.2, -473.4 , 0 );
setMoveKey( spep_3-3 + 62, 1, 291.7, -450.5 , 0 );
setMoveKey( spep_3-3 + 65, 1, 249.9, -416.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 137.2, -383.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 215.9, -453.7 , 0 );
setMoveKey( spep_3-3 + 70, 1, 283.1, -513.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 340.6, -565.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 389.6, -609.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 431.1, -646.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 466, -677.5 , 0 );
setMoveKey( spep_3-3 + 80, 1, 494.9, -703.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 518.3, -724.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, 536.7, -740.7 , 0 );
setMoveKey( spep_3-3 + 86, 1, 550.3, -752.9 , 0 );
setMoveKey( spep_3 + 88, 1, 559.4, -761.3 , 0 );

setScaleKey( spep_3 + 0, 1, 3.76, 3.76 );
--setScaleKey( spep_3-3 + 2, 1, 3.76, 3.76 );
setScaleKey( spep_3-3 + 4, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 6, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 8, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 10, 1, 3.79, 3.79 );
setScaleKey( spep_3-3 + 12, 1, 3.8, 3.8 );
setScaleKey( spep_3-3 + 14, 1, 3.81, 3.81 );
setScaleKey( spep_3-3 + 16, 1, 3.82, 3.82 );
setScaleKey( spep_3-3 + 18, 1, 3.83, 3.83 );
setScaleKey( spep_3-3 + 20, 1, 3.84, 3.84 );
setScaleKey( spep_3-3 + 22, 1, 3.85, 3.85 );
setScaleKey( spep_3-3 + 24, 1, 3.87, 3.87 );
setScaleKey( spep_3-3 + 26, 1, 3.88, 3.88 );
setScaleKey( spep_3-3 + 28, 1, 3.89, 3.89 );
setScaleKey( spep_3-3 + 30, 1, 3.91, 3.91 );
setScaleKey( spep_3-3 + 32, 1, 3.93, 3.93 );
setScaleKey( spep_3-3 + 34, 1, 3.94, 3.94 );
setScaleKey( spep_3-3 + 36, 1, 3.96, 3.96 );
setScaleKey( spep_3-3 + 38, 1, 3.98, 3.98 );
setScaleKey( spep_3-3 + 40, 1, 4, 4 );
setScaleKey( spep_3-3 + 42, 1, 4.01, 4.01 );
setScaleKey( spep_3-3 + 44, 1, 4.03, 4.03 );
setScaleKey( spep_3-3 + 46, 1, 4.06, 4.06 );
setScaleKey( spep_3-3 + 48, 1, 4.08, 4.08 );
setScaleKey( spep_3-3 + 50, 1, 4.1, 4.1 );
setScaleKey( spep_3-3 + 52, 1, 4.13, 4.13 );
setScaleKey( spep_3-3 + 54, 1, 4.15, 4.15 );
setScaleKey( spep_3-3 + 56, 1, 4.18, 4.18 );
setScaleKey( spep_3-3 + 58, 1, 4.21, 4.21 );
setScaleKey( spep_3-3 + 60, 1, 4.24, 4.24 );
setScaleKey( spep_3-3 + 62, 1, 4.28, 4.28 );
setScaleKey( spep_3-3 + 65, 1, 4.33, 4.33 );
setScaleKey( spep_3-3 + 66, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 70, 1, 1.91, 1.91 );
setScaleKey( spep_3-3 + 72, 1, 2.03, 2.03 );
setScaleKey( spep_3-3 + 74, 1, 2.14, 2.14 );
setScaleKey( spep_3-3 + 76, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 78, 1, 2.3, 2.3 );
setScaleKey( spep_3-3 + 80, 1, 2.36, 2.36 );
setScaleKey( spep_3-3 + 82, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 84, 1, 2.45, 2.45 );
setScaleKey( spep_3-3 + 86, 1, 2.48, 2.48 );
setScaleKey( spep_3 + 88, 1, 2.5, 2.5 );

setRotateKey( spep_3 + 0, 1, 0 );
--setRotateKey( spep_3-3 + 65, 1, 0 );
setRotateKey( spep_3-3 + 66, 1, 5 );
setRotateKey( spep_3-3 + 68, 1, 5 );
setRotateKey( spep_3-3 + 70, 1, 4.9 );
setRotateKey( spep_3-3 + 74, 1, 4.9 );
setRotateKey( spep_3-3 + 76, 1, 4.8 );
setRotateKey( spep_3 + 88, 1, 4.8 );

--文字エントリー
ctbaki2_1 = entryEffectLife( spep_3 + 64,  10020, 14, 0x100, -1, 0, -54.8, -344.6 );--バキッ

setEffMoveKey( spep_3 + 64, ctbaki2_1, -54.8, -344.6 , 0 );
setEffMoveKey( spep_3 + 66, ctbaki2_1, -56.7, -338.3 , 0 );
setEffMoveKey( spep_3 + 68, ctbaki2_1, -58.4, -331.7 , 0 );
setEffMoveKey( spep_3 + 70, ctbaki2_1, -61.3, -327.4 , 0 );
setEffMoveKey( spep_3 + 72, ctbaki2_1, -64.1, -322.8 , 0 );
setEffMoveKey( spep_3 + 74, ctbaki2_1, -72.2, -316.5 , 0 );
setEffMoveKey( spep_3 + 76, ctbaki2_1, -80.1, -310 , 0 );
setEffMoveKey( spep_3 + 78, ctbaki2_1, -84.7, -317.6 , 0 );

setEffScaleKey( spep_3 + 64, ctbaki2_1, 1.7, 1.7 );
setEffScaleKey( spep_3 + 66, ctbaki2_1, 1.75, 1.75 );
setEffScaleKey( spep_3 + 68, ctbaki2_1, 1.8, 1.8 );
setEffScaleKey( spep_3 + 70, ctbaki2_1, 1.75, 1.75 );
setEffScaleKey( spep_3 + 72, ctbaki2_1, 1.7, 1.7 );
setEffScaleKey( spep_3 + 74, ctbaki2_1, 1.75, 1.75 );
setEffScaleKey( spep_3 + 76, ctbaki2_1, 1.8, 1.8 );
setEffScaleKey( spep_3 + 78, ctbaki2_1, 1.85, 1.85 );

setEffRotateKey( spep_3 + 64, ctbaki2_1, -16 );
setEffRotateKey( spep_3 + 66, ctbaki2_1, -20 );
setEffRotateKey( spep_3 + 68, ctbaki2_1, -24 );
setEffRotateKey( spep_3 + 70, ctbaki2_1, -20 );
setEffRotateKey( spep_3 + 72, ctbaki2_1, -16 );
setEffRotateKey( spep_3 + 74, ctbaki2_1, -20 );
setEffRotateKey( spep_3 + 76, ctbaki2_1, -24 );
setEffRotateKey( spep_3 + 78, ctbaki2_1, -16 );

setEffAlphaKey( spep_3 + 64, ctbaki2_1, 255 );
setEffAlphaKey( spep_3 + 72, ctbaki2_1, 255 );
setEffAlphaKey( spep_3 + 74, ctbaki2_1, 170 );
setEffAlphaKey( spep_3 + 76, ctbaki2_1, 85 );
setEffAlphaKey( spep_3 + 78, ctbaki2_1, 0 );

--文字エントリー
ctbaki2_2 = entryEffectLife( spep_3 + 66,  10020, 12, 0x100, -1, 0, -54.8, -344.6 );--バキッ

setEffMoveKey( spep_3 + 66, ctbaki2_2, -56.7, -338.3 , 0 );
setEffMoveKey( spep_3 + 68, ctbaki2_2, -58.4, -331.7 , 0 );
setEffMoveKey( spep_3 + 70, ctbaki2_2, -61.3, -327.4 , 0 );
setEffMoveKey( spep_3 + 72, ctbaki2_2, -64.1, -322.8 , 0 );
setEffMoveKey( spep_3 + 74, ctbaki2_2, -72.2, -316.5 , 0 );
setEffMoveKey( spep_3 + 76, ctbaki2_2, -80.1, -310 , 0 );
setEffMoveKey( spep_3 + 78, ctbaki2_2, -84.7, -317.6 , 0 );

setEffScaleKey( spep_3 + 66, ctbaki2_2, 1.75, 1.75 );
setEffScaleKey( spep_3 + 68, ctbaki2_2, 1.8, 1.8 );
setEffScaleKey( spep_3 + 70, ctbaki2_2, 1.75, 1.75 );
setEffScaleKey( spep_3 + 72, ctbaki2_2, 1.7, 1.7 );
setEffScaleKey( spep_3 + 74, ctbaki2_2, 1.75, 1.75 );
setEffScaleKey( spep_3 + 76, ctbaki2_2, 1.8, 1.8 );
setEffScaleKey( spep_3 + 78, ctbaki2_2, 1.85, 1.85 );

setEffRotateKey( spep_3 + 66, ctbaki2_2, -20 );
setEffRotateKey( spep_3 + 68, ctbaki2_2, -24 );
setEffRotateKey( spep_3 + 70, ctbaki2_2, -20 );
setEffRotateKey( spep_3 + 72, ctbaki2_2, -16 );
setEffRotateKey( spep_3 + 74, ctbaki2_2, -20 );
setEffRotateKey( spep_3 + 76, ctbaki2_2, -24 );
setEffRotateKey( spep_3 + 78, ctbaki2_2, -16 );

setEffAlphaKey( spep_3 + 66, ctbaki2_2, 255 );
setEffAlphaKey( spep_3 + 72, ctbaki2_2, 255 );
setEffAlphaKey( spep_3 + 74, ctbaki2_2, 170 );
setEffAlphaKey( spep_3 + 76, ctbaki2_2, 85 );
setEffAlphaKey( spep_3 + 78, ctbaki2_2, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 78, 0x100, -1, -150, 200, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, -200, 300 , 0 );
setEffMoveKey( spep_3 + 63, shuchusen2, -200, 300 , 0 );
setEffMoveKey( spep_3 + 64, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 64, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 66, shuchusen2, 1, 1 );
setEffScaleKey( spep_3 + 78, shuchusen2, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 72, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 74, shuchusen2, 170 );
setEffAlphaKey( spep_3 + 76, shuchusen2, 85 );
setEffAlphaKey( spep_3 + 78, shuchusen2, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 78, 0x100, -1, -150, 200, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, -200, 300 , 0 );
setEffMoveKey( spep_3 + 63, shuchusen2, -200, 300 , 0 );
setEffMoveKey( spep_3 + 64, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 64, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 66, shuchusen2, 1, 1 );
setEffScaleKey( spep_3 + 78, shuchusen2, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 72, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 74, shuchusen2, 170 );
setEffAlphaKey( spep_3 + 76, shuchusen2, 85 );
setEffAlphaKey( spep_3 + 78, shuchusen2, 0 );

--黒背景
entryFadeBg(spep_3, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背


--SE
playSe( spep_3, SE_04); --近ずく
playSe( spep_3+64, 1002); --ぶつかる

-- ** エフェクト等 ** --
entryFade(spep_3+60, 0, 4, 0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+102, 4, 12, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+110;

------------------------------------------------------
-- ガッ
------------------------------------------------------

--***敵の動き***--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
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
setScaleKey( spep_4 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

--書き文字--
--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );
setEffRotateKey( spep_4 + 112, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );
setEffAlphaKey( spep_4 + 112, ctGa, 255 );

--entryFadeBg( spep_4,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_4+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_4+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_4 + 110);




end
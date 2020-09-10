-- エイプリルフール　ピコピコ　 ベジータ　1016720

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

-- エフェクトセットアップ
ef_001 = 153228;    -- 溜め
ef_002 = 153230;    -- 発射
ef_003 = 153231;    -- 命中
ef_003_1 = 153232;  -- 命中（流線）
ef_004 = 153236;    -- カードカットイン
-- ef_004 = 
ef_101 = 153233;	-- 敵側　溜め
ef_102 = 153234;	-- 敵側　発射

-- kaki_001 = 10012; -- ズオッ

--[[ 
-- spepメモ
spep_0 = 0;
spep_1 = spep_0 + 158 ;
spep_2 = spep_1 + 88 ;
spep_3 = spep_2 + 118 ;

]]

function Efftemp( keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate )
    setEffMoveKey( keytiming,name,  moveX,  moveX);
    setEffScaleKey( keytiming, name, scaleX, scaleY);
    setEffAlphaKey( keytiming, name, alpha);
    setEffRotateKey( keytiming, name, rotate);
end


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

------------------------------------------------------
-- 味方側
------------------------------------------------------

------------------------------------------------------
-- 気貯め	
------------------------------------------------------

spep_0 = 0 ;

-- 敵の動き
setDisp( spep_0, 1, 0 );

-- 構えエフェクト
tame = entryEffectLife( spep_0,  ef_001, 158, 0x100, -1, 0, 0, 0);
Efftemp( spep_0, tame, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_0 + 158, tame, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

-- 貯めSE
playSe( 28, SE_01);

playSe( 48, SE_03);
playSe( 68, SE_03);
playSe( 71, SE_03);
playSe( 78, SE_04);
playSe( 88, SE_03);
playSe( 108, SE_03);
playSe( 128, SE_03);
playSe( 148, SE_03);

------------------------------------------------------
--  カードカットイン
------------------------------------------------------


spep_1 = spep_0 + 158 ;

--白フラッシュ
entryFade( spep_1-14, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- カードカットイン
cardcutin = entryEffectLife( spep_1,  ef_004, 88, 0x100, -1, 0, 0, 0);
Efftemp( spep_1, cardcutin, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_1 + 88, cardcutin, 0, 0, 1.0, 1.0, 255, 0 );     --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

playSe( spep_1, SE_05);


entryFade(  spep_1+ 76,  10,  4,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
--  かめはめ波発射
------------------------------------------------------

spep_2 = spep_1 + 88 ;

entryFadeBg( spep_2, 0, 276, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- かめはめ波発射
hassha = entryEffectLife( spep_2,  ef_002, 118, 0x100, -1, 0, 0, 0);
Efftemp( spep_2, hassha, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_2 + 118, hassha, 0, 0, 1.0, 1.0, 255, 0 );     --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

-- 発射SE
playSe( spep_2, SE_07);
playSe( spep_2 + 70 , SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    --[[
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 104, -6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 84, 2.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64, 11.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 24, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13, 34.5 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1.25, 1.25 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 4, 1, 1.36, 1.36 );
    setScaleKey( SP_dodge + 6, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 8, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 10, 1, 1.49, 1.49 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    ]]
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


------------------------------------------------------
--  着弾
------------------------------------------------------

spep_3 = spep_2 + 118 ;

--白フラッシュ
entryFade( spep_3-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 着弾
chakudan_haikei = entryEffect( spep_3,  ef_003_1, 0x80, -1, 0, 0, 0);
Efftemp( spep_3, chakudan_haikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_3 + 158, chakudan_haikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate  

chakudan = entryEffect( spep_3,  ef_003, 0x100, -1, 0, 0, 0);
Efftemp( spep_3, chakudan, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_3 + 158, chakudan, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

-- SE
playSe( spep_3, SE_06);
playSe( spep_3 - 3 + 32, SE_09);

-- 敵の動き
setDisp( spep_3 - 2, 1, 0 );
setDisp( spep_3 - 1, 1, 1 );
setDisp( spep_3 +36, 1, 0 );

setMoveKey( spep_3 - 2 + 0, 1, 0, -5000, 0 );
setMoveKey( spep_3 - 3 + 0, 1, 549.8, 0 , 0 );
setMoveKey( spep_3 - 3 + 2, 1, 520.7, 0 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, 491.6, 0 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, 462.5, 0 , 0 );
setMoveKey( spep_3 - 3 + 8, 1, 433.4, 0 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, 404.4, 0 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, 375.3, 0 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, 346.2, 0 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, 317.1, 0 , 0 );
setMoveKey( spep_3 - 3 + 18, 1, 288, 0 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, 258.9, 0 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, 229.8, 0 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, 200.7, 0 , 0 );
setMoveKey( spep_3 - 3 + 26, 1, 171.6, 0 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 142.5, 0 , 0 );
setMoveKey( spep_3 - 3 + 31, 1, 113.5, 0 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, -1.4, 0 , 0 );
setMoveKey( spep_3 +36, 1, -1.4, 0 , 0 );

setScaleKey( spep_3 - 3 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 36, 1, 1.4, 1.4 );

setRotateKey( spep_3 - 3 + 0, 1, 0 );
setRotateKey( spep_3 - 3 + 31, 1, 0 );
setRotateKey( spep_3 - 3 + 32, 1, -44.9 );
setRotateKey( spep_3 +36, 1, -44.9 );

changeAnime( spep_3 - 3 + 0, 1, 100 );
changeAnime( spep_3 - 3 + 32, 1, 106 );
changeAnime( spep_3 +36, 1, 106 );

-- ダメージ表示
dealDamage( spep_3 + 59 );

-- 黒フェード
entryFade( spep_3 + 143, 9, 10, 1, 8, 8, 8, 255);

endPhase(spep_3 + 153 );
else

---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


--敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     


---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


------------------------------------------------------
-- 気貯め  
------------------------------------------------------

spep_0 = 0 ;

-- 敵の動き
setDisp( spep_0, 1, 0 );

-- 構えエフェクト
tame = entryEffectLife( spep_0,  ef_101, 158, 0x100, -1, 0, 0, 0);
Efftemp( spep_0, tame, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_0 + 158, tame, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

-- 貯めSE
playSe( 28, SE_01);

playSe( 48, SE_03);
playSe( 68, SE_03);
playSe( 71, SE_03);
playSe( 78, SE_04);
playSe( 88, SE_03);
playSe( 108, SE_03);
playSe( 128, SE_03);
playSe( 148, SE_03);

------------------------------------------------------
--  カードカットイン
------------------------------------------------------


spep_1 = spep_0 + 158 ;

--白フラッシュ
entryFade( spep_1-14, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- カードカットイン
cardcutin = entryEffectLife( spep_1,  ef_004, 88, 0x100, -1, 0, 0, 0);
Efftemp( spep_1, cardcutin, 0, 0, -1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_1 + 88, cardcutin, 0, 0, -1.0, 1.0, 255, 0 );     --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

playSe( spep_1, SE_05);


entryFade(  spep_1+ 76,  10,  4,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
--  かめはめ波発射
------------------------------------------------------

spep_2 = spep_1 + 88 ;

entryFadeBg( spep_2, 0, 276, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- かめはめ波発射
hassha = entryEffectLife( spep_2,  ef_102, 118, 0x100, -1, 0, 0, 0);
Efftemp( spep_2, hassha, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_2 + 118, hassha, 0, 0, 1.0, 1.0, 255, 0 );     --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

-- 発射SE
playSe( spep_2, SE_07);
playSe( spep_2 + 70 , SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    --[[
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 104, -6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 84, 2.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64, 11.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 24, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13, 34.5 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1.25, 1.25 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 4, 1, 1.36, 1.36 );
    setScaleKey( SP_dodge + 6, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 8, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 10, 1, 1.49, 1.49 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    ]]
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


------------------------------------------------------
--  着弾
------------------------------------------------------

spep_3 = spep_2 + 118 ;

--白フラッシュ
entryFade( spep_3-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 着弾
chakudan_haikei = entryEffect( spep_3,  ef_003_1, 0x80, -1, 0, 0, 0);
Efftemp( spep_3, chakudan_haikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_3 + 158, chakudan_haikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate  

chakudan = entryEffect( spep_3,  ef_003, 0x100, -1, 0, 0, 0);
Efftemp( spep_3, chakudan, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_3 + 158, chakudan, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

-- SE
playSe( spep_3, SE_06);
playSe( spep_3 - 3 + 32, SE_09);

-- 敵の動き
setDisp( spep_3 - 2, 1, 0 );
setDisp( spep_3 - 1, 1, 1 );
setDisp( spep_3 +36, 1, 0 );

setMoveKey( spep_3 - 2 + 0, 1, 0, -5000, 0 );
setMoveKey( spep_3 - 3 + 0, 1, 549.8, 0 , 0 );
setMoveKey( spep_3 - 3 + 2, 1, 520.7, 0 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, 491.6, 0 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, 462.5, 0 , 0 );
setMoveKey( spep_3 - 3 + 8, 1, 433.4, 0 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, 404.4, 0 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, 375.3, 0 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, 346.2, 0 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, 317.1, 0 , 0 );
setMoveKey( spep_3 - 3 + 18, 1, 288, 0 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, 258.9, 0 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, 229.8, 0 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, 200.7, 0 , 0 );
setMoveKey( spep_3 - 3 + 26, 1, 171.6, 0 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 142.5, 0 , 0 );
setMoveKey( spep_3 - 3 + 31, 1, 113.5, 0 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, -1.4, 0 , 0 );
setMoveKey( spep_3 +36, 1, -1.4, 0 , 0 );

setScaleKey( spep_3 - 3 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 36 + 0, 1, 1.4, 1.4 );

setRotateKey( spep_3 - 3 + 0, 1, 0 );
setRotateKey( spep_3 - 3 + 31, 1, 0 );
setRotateKey( spep_3 - 3 + 32, 1, -44.9 );
setRotateKey( spep_3 +36, 1, -44.9 );

changeAnime( spep_3 - 3 + 0, 1, 100 );
changeAnime( spep_3 - 3 + 32, 1, 106 );
changeAnime( spep_3 +36, 1, 106 );

-- ダメージ表示
dealDamage( spep_3 + 59 );

-- 黒フェード
entryFade( spep_3 + 143, 9, 10, 1, 8, 8, 8, 255);

endPhase(spep_3 + 153 );
end
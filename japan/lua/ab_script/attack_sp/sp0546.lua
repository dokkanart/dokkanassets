-- 悟空&悟天兄弟かめはめ波　金髪ｖｅｒ　1016800

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
ef_001 = 153259;    -- 構え〜貯め
ef_002 = 153260;    -- 発射
ef_003 = 153261;    -- 敵へのビーム・手前
ef_004 = 153262;  -- 敵へのビーム・奥
ef_005 = 153263;    -- 締め背景
ef_001r = 153264;   -- 敵側　構え〜貯め
ef_002r = 153265;   -- 敵側　発射

kaki_001 = 10013; -- ズズズンッ
kaki_002 = 10012; -- ズオッ

function Efftemp( keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate )
    setEffMoveKey( keytiming,name,  moveX,  moveY);
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
tame = entryEffectLife( spep_0,  ef_001, 148, 0x100, -1, 0, 0, 0);
Efftemp( spep_0, tame, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_0 + 148, tame, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 

--白フラッシュ　エフェクト指定はアルファ255だけど倍速でチラつくので220に
entryFade( spep_0 + 16, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 220);

-- 集中線
shuchusen1 = entryEffectLife( spep_0  + 16,  906, 132, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0  +16, shuchusen1, 132, 25 );

setEffMoveKey( spep_0  + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0  + 16, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0  + 148, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0  + 16, shuchusen1, 0 );
setEffRotateKey( spep_0  + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0  + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 148, shuchusen1, 255 );

-- 書き文字　ズズズンッ
ctzuzuzun = entryEffectLife( spep_0  - 6 + 22,  kaki_001, 44, 0x100, -1, 0, 20.1, 249.8 );
setEffShake(spep_0 - 6 + 32, ctzuzuzun, 30, 20);

setEffMoveKey( spep_0 - 6 + 22, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 - 6 + 24, ctzuzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 - 6 + 26, ctzuzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 - 6 + 28, ctzuzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 - 6 + 30, ctzuzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 - 6 + 66, ctzuzuzun, 43.5, 372 , 0 );

setEffScaleKey( spep_0 - 6 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 - 6 + 24, ctzuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 - 6 + 26, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 - 6 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 - 6 + 66, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 - 6 + 22, ctzuzuzun, -5 );
setEffRotateKey( spep_0 - 6 + 66, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 - 6 + 22, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 - 6 + 40, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 - 6 + 42, ctzuzuzun, 212 );
setEffAlphaKey( spep_0 - 6 + 44, ctzuzuzun, 172 );
setEffAlphaKey( spep_0 - 6 + 46, ctzuzuzun, 136 );
setEffAlphaKey( spep_0 - 6 + 48, ctzuzuzun, 104 );
setEffAlphaKey( spep_0 - 6 + 50, ctzuzuzun, 77 );
setEffAlphaKey( spep_0 - 6 + 52, ctzuzuzun, 53 );
setEffAlphaKey( spep_0 - 6 + 54, ctzuzuzun, 34 );
setEffAlphaKey( spep_0 - 6 + 56, ctzuzuzun, 19 );
setEffAlphaKey( spep_0 - 6 + 58, ctzuzuzun, 9 );
setEffAlphaKey( spep_0 - 6 + 60, ctzuzuzun, 2 );
setEffAlphaKey( spep_0 - 6 + 66, ctzuzuzun, 0 );

-- 貯めSE    -12
playSe( 16, SE_01);
playSe( 36, SE_03);
playSe( 56, SE_03);
-- playSe( 96, SE_03);
playSe( 116, SE_03);
playSe( 136, SE_03);

-- 顔カットイン
speff = entryEffect( spep_0 + 18 + 30, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 18 + 30, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 18 + 42,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 18 + 42, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 18 + 42, ctgogo, 0,  520, 0  );
setEffMoveKey( spep_0 + 18 + 114, ctgogo, 0,  520, 0  );

setEffScaleKey( spep_0 + 18 + 42, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 18 + 106, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 18 + 108, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 18 + 110, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 18 + 112, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 18 + 114, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 18 + 42, ctgogo, 0 );
setEffRotateKey( spep_0 + 18 + 114, ctgogo, 0 );

setEffAlphaKey( spep_0 + 18 + 42, ctgogo, 0 );
setEffAlphaKey( spep_0 + 18 + 43, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18 + 44, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18 + 114, ctgogo, 255 );

--SE
playSe( spep_0 + 12 + 48 , SE_04 );  --ゴゴゴ

------------------------------------------------------
-- カードカットイン
------------------------------------------------------

spep_1 = spep_0 + 148 ;

--白フラッシュ
entryFade( spep_1-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen5 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  shuchusen5,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen5,  0,  0);
setEffScaleKey(  spep_1,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen5,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen5,  0);
setEffRotateKey(  spep_1+90,  shuchusen5,  0);
setEffAlphaKey(  spep_1,  shuchusen5,  255);
setEffAlphaKey(  spep_1+90,  shuchusen5,  255);

entryFade(  spep_1 + 74,  10,  10,  16,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 発射  
------------------------------------------------------

spep_2 = spep_1 + 90 ;

--白フラッシュ
entryFade( spep_2-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 発射エフェクト
hassha = entryEffectLife( spep_2,  ef_002, 88, 0x100, -1, 0, 0, 0);
Efftemp( spep_2, hassha, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_2 + 88, hassha, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

--白フラッシュ エフェクト指定はアルファ255だけど倍速でチラつくので220に
entryFade( spep_2 + 16, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 220);

-- 集中線
shuchusen2 = entryEffectLife( spep_2,  906, 24, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_2, shuchusen2, 24, 25 );

setEffMoveKey( spep_2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 24, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 24, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 24, shuchusen2, 0 );

setEffAlphaKey( spep_2, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 24, shuchusen2, 255 );

-- 書き文字　ズオッ
ctzuoltu = entryEffectLife( spep_2 - 2 + 20,  kaki_002, 50, 0x100, -1, 0, 9.7, 282.4 );
setEffMoveKey( spep_2 - 2 + 20, ctzuoltu, 9.7, 282.4 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 22, ctzuoltu, 33, 331.8 + 15 , 0 );
setEffShake(spep_2 - 2 + 24, ctzuoltu, 38, 30);
setEffMoveKey( spep_2 - 2 + 62, ctzuoltu, 71.6, 376.4 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 64, ctzuoltu, 64.9, 401.3 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 66, ctzuoltu, 109.5, 374.8 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 68, ctzuoltu, 93.1, 409.1 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 70, ctzuoltu, 107.3, 413.1 + 15 , 0 );

setEffScaleKey( spep_2 - 2 + 20, ctzuoltu, 0.34, 0.34 );
setEffScaleKey( spep_2 - 2 + 22, ctzuoltu, 1.54, 1.54 );
setEffScaleKey( spep_2 - 2 + 24, ctzuoltu, 2.73, 2.73 );
setEffScaleKey( spep_2 - 2 + 60, ctzuoltu, 2.73, 2.73 );
setEffScaleKey( spep_2 - 2 + 62, ctzuoltu, 3.55, 3.55 );
setEffScaleKey( spep_2 - 2 + 64, ctzuoltu, 4.37, 4.37 );
setEffScaleKey( spep_2 - 2 + 66, ctzuoltu, 5.19, 5.19 );
setEffScaleKey( spep_2 - 2 + 68, ctzuoltu, 6.01, 6.01 );
setEffScaleKey( spep_2 - 2 + 70, ctzuoltu, 6.82, 6.82 );

setEffRotateKey( spep_2 - 2 + 20, ctzuoltu, 9.6 );
setEffRotateKey( spep_2 - 2 + 22, ctzuoltu, 18.3 );
setEffRotateKey( spep_2 - 2 + 24, ctzuoltu, 27.2 );
setEffRotateKey( spep_2 - 2 + 70, ctzuoltu, 27.2 );

setEffAlphaKey( spep_2 - 2 + 20, ctzuoltu, 255 );
setEffAlphaKey( spep_2 - 2 + 60, ctzuoltu, 255 );
setEffAlphaKey( spep_2 - 2 + 62, ctzuoltu, 204 );
setEffAlphaKey( spep_2 - 2 + 64, ctzuoltu, 153 );
setEffAlphaKey( spep_2 - 2 + 66, ctzuoltu, 102 );
setEffAlphaKey( spep_2 - 2 + 68, ctzuoltu, 51 );
setEffAlphaKey( spep_2 - 2 + 70, ctzuoltu, 0 );

-- 発射SE
seID0 = playSe( spep_2 + 14, SE_07);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える
    
    stopSe( SP_dodge, seID0, 0 );   -- 前の音がうるさい場合は消す

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
-- 着弾  
------------------------------------------------------

spep_3 = spep_2 + 88 ;

--白フラッシュ
entryFade( spep_3-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 着弾エフェクト
tyakudan = entryEffectLife( spep_3,  ef_003, 96, 0x100, -1, 0, 0, 0);
Efftemp( spep_3, tyakudan, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_3 + 96, tyakudan, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

-- 着弾エフェクト　背景
tyakudan_haikei = entryEffectLife( spep_3,  ef_004, 96, 0x80, -1, 0, 0, 0);
Efftemp( spep_3, tyakudan_haikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_3 + 96, tyakudan_haikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

--白フラッシュ
entryFade( spep_3 + 27, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 180);

-- 敵の動き
setDisp( spep_3 -1, 1, 0);
setDisp( spep_3 +1, 1, 1);
setDisp( spep_3 +40, 1, 0);

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 28, 1, 108 );

setMoveKey( spep_3 -2 + 0, 1, -13.9, -81.7 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3 -2 + 4, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3 -2 + 6, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3 -2 + 8, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3 -2 + 10, 1, 44.4, 14.4 , 0 );
setMoveKey( spep_3 -2 + 12, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3 -2 + 14, 1, 73.9, 70.3 , 0 );
setMoveKey( spep_3 -2 + 16, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3 -2 + 18, 1, 86.8, 93.1 , 0 );
setMoveKey( spep_3 -2 + 20, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3 -2 + 22, 1, 96.5, 113.9 , 0 );
setMoveKey( spep_3 -2 + 24, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 -2 + 26, 1, 114.8, 144.7 , 0 );
setMoveKey( spep_3 -2 + 28, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3 -2 + 30, 1, 157.4, 198.5 , 0 );
setMoveKey( spep_3 -2 + 32, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 -2 + 34, 1, 121.7, 181.9 , 0 );
setMoveKey( spep_3 -2 + 36, 1, 145, 211 , 0 );
setMoveKey( spep_3 -2 + 38, 1, 138.8, 209 , 0 );
setMoveKey( spep_3 -2 + 40, 1, 146.1, 215.8 , 0 );
setMoveKey( spep_3 -2 + 42, 1, 141.5, 210.7 , 0 );

-- 次カットの妨げになるのでコメントアウト。エネミーは非表示になっています
--[[

setMoveKey( spep_3 -2 + 44, 1, 144.8, 213.6 , 0 );
setMoveKey( spep_3 -2 + 46, 1, 136.1, 204.5 , 0 );
setMoveKey( spep_3 -2 + 48, 1, 143.5, 211.3 , 0 );
setMoveKey( spep_3 -2 + 50, 1, 138.8, 206.2 , 0 );
setMoveKey( spep_3 -2 + 52, 1, 142.2, 209 , 0 );
setMoveKey( spep_3 -2 + 54, 1, 133.5, 199.8 , 0 );
setMoveKey( spep_3 -2 + 56, 1, 140.9, 206.6 , 0 );
setMoveKey( spep_3 -2 + 58, 1, 136.3, 201.5 , 0 );
setMoveKey( spep_3 -2 + 60, 1, 139.7, 204.3 , 0 );
setMoveKey( spep_3 -2 + 62, 1, 131.1, 195.1 , 0 );
setMoveKey( spep_3 -2 + 64, 1, 138.5, 201.9 , 0 );
setMoveKey( spep_3 -2 + 66, 1, 134, 196.6 , 0 );
setMoveKey( spep_3 -2 + 68, 1, 137.4, 199.4 , 0 );
setMoveKey( spep_3 -2 + 70, 1, 128.8, 190.2 , 0 );
setMoveKey( spep_3 -2 + 72, 1, 136.3, 196.9 , 0 );
setMoveKey( spep_3 -2 + 74, 1, 131.7, 191.7 , 0 );
setMoveKey( spep_3 -2 + 76, 1, 131.2, 190.4 , 0 );
setMoveKey( spep_3 -2 + 78, 1, 126.7, 177.2 , 0 );
setMoveKey( spep_3 -2 + 80, 1, 130.2, 187.9 , 0 );
setMoveKey( spep_3 -2 + 82, 1, 121.7, 182.6 , 0 );
setMoveKey( spep_3 -2 + 84, 1, 129.2, 185.3 , 0 );
setMoveKey( spep_3 -2 + 86, 1, 128.7, 184 , 0 );
setMoveKey( spep_3 -2 + 88, 1, 124.2, 170.7 , 0 );
setMoveKey( spep_3 -2 + 90, 1, 127.7, 181.4 , 0 );
setMoveKey( spep_3 -2 + 92, 1, 119.3, 176.1 , 0 );
setMoveKey( spep_3 -2 + 94, 1, 126.8, 178.8 , 0 );
setMoveKey( spep_3 -2 + 96, 1, 118.4, 173.4 , 0 );

]]

setScaleKey( spep_3 -2 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3 -2 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3 -2 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3 -2 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3 -2 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3 -2 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3 -2 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3 -2 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3 -2 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_3 -2 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_3 -2 + 20, 1, 1.59, 1.59 );
setScaleKey( spep_3 -2 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_3 -2 + 24, 1, 1.43, 1.43 );
setScaleKey( spep_3 -2 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3 -2 + 28, 1, 1.26, 1.26 );
setScaleKey( spep_3 -2 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_3 -2 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3 -2 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_3 -2 + 36, 1, 0.54, 0.54 );
setScaleKey( spep_3 -2 + 38, 1, 0.29, 0.29 );
setScaleKey( spep_3 -2 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_3 -2 + 42, 1, 0.28, 0.28 );

-- 次カットの妨げになるのでコメントアウト。エネミーは非表示になっています
--[[
setScaleKey( spep_3 -2 + 48, 1, 0.28, 0.28 );
setScaleKey( spep_3 -2 + 50, 1, 0.27, 0.27 );
setScaleKey( spep_3 -2 + 56, 1, 0.27, 0.27 );
setScaleKey( spep_3 -2 + 58, 1, 0.26, 0.26 );
setScaleKey( spep_3 -2 + 66, 1, 0.26, 0.26 );
setScaleKey( spep_3 -2 + 68, 1, 0.25, 0.25 );
setScaleKey( spep_3 -2 + 74, 1, 0.25, 0.25 );
setScaleKey( spep_3 -2 + 76, 1, 0.24, 0.24 );
setScaleKey( spep_3 -2 + 84, 1, 0.24, 0.24 );
setScaleKey( spep_3 -2 + 86, 1, 0.23, 0.23 );
setScaleKey( spep_3 -2 + 92, 1, 0.23, 0.23 );
setScaleKey( spep_3 -2 + 94, 1, 0.22, 0.22 );
setScaleKey( spep_3 -2 + 96, 1, 0.22, 0.22 );

]]

setRotateKey( spep_3 -2 + 0, 1, -2 );
setRotateKey( spep_3 -2 + 2, 1, -2.1 );
setRotateKey( spep_3 -2 + 4, 1, -2.3 );
setRotateKey( spep_3 -2 + 6, 1, -2.4 );
setRotateKey( spep_3 -2 + 8, 1, -2.5 );
setRotateKey( spep_3 -2 + 10, 1, -2.6 );
setRotateKey( spep_3 -2 + 12, 1, -2.8 );
setRotateKey( spep_3 -2 + 14, 1, -2.9 );
setRotateKey( spep_3 -2 + 16, 1, -3 );
setRotateKey( spep_3 -2 + 18, 1, -3.2 );
setRotateKey( spep_3 -2 + 20, 1, -3.3 );
setRotateKey( spep_3 -2 + 22, 1, -3.4 );
setRotateKey( spep_3 -2 + 24, 1, -3.5 );
setRotateKey( spep_3 -2 + 26, 1, -3.7 );
setRotateKey( spep_3 -2 + 28, 1, -3.8 );
setRotateKey( spep_3 -2 + 30, 1, 21 );
setRotateKey( spep_3 -2 + 32, 1, 18.5 );
setRotateKey( spep_3 -2 + 34, 1, 16.1 );
setRotateKey( spep_3 -2 + 36, 1, 13.8 );
setRotateKey( spep_3 -2 + 38, 1, 11.6 );
setRotateKey( spep_3 -2 + 40, 1, 11.4 );
setRotateKey( spep_3 -2 + 42, 1, 11.3 );

-- 次カットの妨げになるのでコメントアウト。エネミーは非表示になっています
--[[
setRotateKey( spep_3 -2 + 44, 1, 11.1 );
setRotateKey( spep_3 -2 + 46, 1, 10.9 );
setRotateKey( spep_3 -2 + 48, 1, 10.8 );
setRotateKey( spep_3 -2 + 50, 1, 10.6 );
setRotateKey( spep_3 -2 + 52, 1, 10.4 );
setRotateKey( spep_3 -2 + 54, 1, 10.3 );
setRotateKey( spep_3 -2 + 56, 1, 10.1 );
setRotateKey( spep_3 -2 + 58, 1, 9.9 );
setRotateKey( spep_3 -2 + 60, 1, 9.8 );
setRotateKey( spep_3 -2 + 62, 1, 9.6 );
setRotateKey( spep_3 -2 + 64, 1, 9.4 );
setRotateKey( spep_3 -2 + 66, 1, 9.3 );
setRotateKey( spep_3 -2 + 68, 1, 9.1 );
setRotateKey( spep_3 -2 + 70, 1, 8.9 );
setRotateKey( spep_3 -2 + 72, 1, 8.8 );
setRotateKey( spep_3 -2 + 74, 1, 8.6 );
setRotateKey( spep_3 -2 + 76, 1, 8.4 );
setRotateKey( spep_3 -2 + 78, 1, 8.3 );
setRotateKey( spep_3 -2 + 80, 1, 8.1 );
setRotateKey( spep_3 -2 + 82, 1, 7.9 );
setRotateKey( spep_3 -2 + 84, 1, 7.8 );
setRotateKey( spep_3 -2 + 86, 1, 7.6 );
setRotateKey( spep_3 -2 + 88, 1, 7.4 );
setRotateKey( spep_3 -2 + 90, 1, 7.3 );
setRotateKey( spep_3 -2 + 92, 1, 7.1 );
setRotateKey( spep_3 -2 + 94, 1, 6.9 );
setRotateKey( spep_3 -2 + 96, 1, 6.8 );

]]

-- 書き文字　ズオッ　その２
ctzuoltu2 = entryEffectLife( spep_3 - 2 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );
setEffShake( spep_3 - 2 + 30, ctzuoltu2, 20, 25 );
setEffMoveKey( spep_3 - 2 + 30, ctzuoltu2, -17.7, 313 , 0 );
setEffMoveKey( spep_3 - 2 + 32, ctzuoltu2, -35.7, 356 , 0 );
setEffMoveKey( spep_3 - 2 + 34, ctzuoltu2, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3 - 2 + 36, ctzuoltu2, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3 - 2 + 38, ctzuoltu2, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3 - 2 + 40, ctzuoltu2, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3 - 2 + 42, ctzuoltu2, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3 - 2 + 44, ctzuoltu2, -87, 406.6 , 0 );
setEffMoveKey( spep_3 - 2 + 46, ctzuoltu2, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3 - 2 + 48, ctzuoltu2, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3 - 2 + 50, ctzuoltu2, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3 - 2 + 30, ctzuoltu2, 0.34, 0.34 );
setEffScaleKey( spep_3 - 2 + 32, ctzuoltu2, 1.54, 1.54 );
setEffScaleKey( spep_3 - 2 + 34, ctzuoltu2, 2.73, 2.73 );
setEffScaleKey( spep_3 - 2 + 44, ctzuoltu2, 2.73, 2.73 );
setEffScaleKey( spep_3 - 2 + 46, ctzuoltu2, 4.09, 4.09 );
setEffScaleKey( spep_3 - 2 + 48, ctzuoltu2, 5.46, 5.46 );
setEffScaleKey( spep_3 - 2 + 50, ctzuoltu2, 6.82, 6.82 );

setEffRotateKey( spep_3 - 2 + 30, ctzuoltu2, 6.9 );
setEffRotateKey( spep_3 - 2 + 32, ctzuoltu2, -3.4 );
setEffRotateKey( spep_3 - 2 + 34, ctzuoltu2, -13.5 );
setEffRotateKey( spep_3 - 2 + 36, ctzuoltu2, -13.8 );
setEffRotateKey( spep_3 - 2 + 38, ctzuoltu2, -14.1 );
setEffRotateKey( spep_3 - 2 + 40, ctzuoltu2, -14.4 );
setEffRotateKey( spep_3 - 2 + 42, ctzuoltu2, -14.7 );
setEffRotateKey( spep_3 - 2 + 44, ctzuoltu2, -15 );
setEffRotateKey( spep_3 - 2 + 46, ctzuoltu2, -11.8 );
setEffRotateKey( spep_3 - 2 + 48, ctzuoltu2, -8.5 );
setEffRotateKey( spep_3 - 2 + 50, ctzuoltu2, -5.2 );

setEffAlphaKey( spep_3 - 2 + 30, ctzuoltu2, 255 );
setEffAlphaKey( spep_3 - 2 + 44, ctzuoltu2, 255 );
setEffAlphaKey( spep_3 - 2 + 46, ctzuoltu2, 170 );
setEffAlphaKey( spep_3 - 2 + 48, ctzuoltu2, 85 );
setEffAlphaKey( spep_3 - 2 + 50, ctzuoltu2, 0 );

-- SE
playSe( spep_3 + 6, SE_06);
playSe( spep_3 - 3 + 32, SE_09);

------------------------------------------------------
-- ダメージ表示  
------------------------------------------------------

spep_4 = spep_3 + 96 ;

--白フラッシュ
entryFade( spep_4-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- ガッ
------------------------------------------------------
SP_ATK = spep_4 + 4;

--***敵の動き***--
setDisp( SP_ATK + 0, 1, 1 );
changeAnime( SP_ATK + 0, 1, 107 );

setMoveKey( SP_ATK + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( SP_ATK + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( SP_ATK + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( SP_ATK + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( SP_ATK + 0, 1, 0.22, 0.22 );
setScaleKey( SP_ATK + 2, 1, 0.35, 0.35 );
setScaleKey( SP_ATK + 4, 1, 0.51, 0.51 );
setScaleKey( SP_ATK + 6, 1, 0.7, 0.7 );
setScaleKey( SP_ATK + 8, 1, 0.93, 0.93 );
setScaleKey( SP_ATK + 10, 1, 1.2, 1.2 );
setScaleKey( SP_ATK + 12, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 14, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 16, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 18, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 20, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 22, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 24, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 26, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 110, 1, 1.6, 1.6 );

setRotateKey( SP_ATK + 0, 1, 0 );
setRotateKey( SP_ATK + 2, 1, 105 );
setRotateKey( SP_ATK + 4, 1, 240 );
setRotateKey( SP_ATK + 6, 1, 405 );
setRotateKey( SP_ATK + 8, 1, 600 );
setRotateKey( SP_ATK + 10, 1, 825 );
setRotateKey( SP_ATK + 12, 1, 1080 );
setRotateKey( SP_ATK + 110, 1, 1080 );

--爆発エフェクト
bakuhatsu_damage = entryEffect( SP_ATK, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
Efftemp( SP_ATK, bakuhatsu_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( SP_ATK + 110, bakuhatsu_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 

playSe( SP_ATK, SE_10);

setDamage( SP_ATK +16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+8,6,15);
setShake(SP_ATK+14,15,10);

--書き文字--
ctGa = entryEffectLife( SP_ATK + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( SP_ATK + 14, ctGa, 30, 10);

setEffMoveKey( SP_ATK + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 110, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK + 14, ctGa, 2, 2 );
setEffScaleKey( SP_ATK+16, ctGa, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, cGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ctGa, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ctGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ctGa, 3.8, 3.8);
setEffScaleKey( SP_ATK+110, ctGa, 3.8, 3.8);

setEffRotateKey( SP_ATK + 14, ctGa, -40 );
setEffRotateKey( SP_ATK + 16, ctGa, -31 );
setEffRotateKey( SP_ATK + 18, ctGa, -40 );
setEffRotateKey( SP_ATK + 20, ctGa, -31 );
setEffRotateKey( SP_ATK + 22, ctGa, -40 );
setEffRotateKey( SP_ATK + 24, ctGa, -31);
setEffRotateKey( SP_ATK + 26, ctGa, -40 );
setEffRotateKey( SP_ATK + 28, ctGa, -31);
setEffRotateKey( SP_ATK + 30, ctGa, -40 );
setEffRotateKey( SP_ATK + 110, ctGa, -40 );

setEffAlphaKey( SP_ATK + 14, ctGa, 255 );
setEffAlphaKey( SP_ATK + 110, ctGa, 255 );

--entryFadeBg( SP_ATK,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー

-- ダメージ表示中背景
damagehaikei = entryEffect( spep_4,  ef_005, 0x80, -1, 0, 0, 0);
Efftemp( spep_4, damagehaikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_4 + 110, damagehaikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate  

--集中線（白）
shuchusen_damage = entryEffectLife( SP_ATK+2, 906, 108, 0x00,  -1, 0,  0,  0);   -- 集中線
Efftemp( SP_ATK + 2, shuchusen_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( SP_ATK + 110, shuchusen_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 

--集中線（黒）
shuchusenkuro_damage = entryEffectLife( SP_ATK+14, 1657, 96, 0x80,  -1, 0,  0,  0);   -- 集中線
Efftemp( SP_ATK + 14, shuchusenkuro_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( SP_ATK + 110, shuchusenkuro_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 

--ひび割れ
hibi = entryEffect( SP_ATK+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  SP_ATK+14,  SE_11);  --ひび割れ

-- ダメージ表示
dealDamage(SP_ATK+16);
entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK + 110);
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
tame = entryEffectLife( spep_0,  ef_001r, 148, 0x100, -1, 0, 0, 0);
Efftemp( spep_0, tame, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_0 + 148, tame, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 

--白フラッシュ　エフェクト指定はアルファ255だけど倍速でチラつくので220に
entryFade( spep_0 + 16, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 220);

-- 集中線
shuchusen1 = entryEffectLife( spep_0  + 16,  906, 132, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0  +16, shuchusen1, 132, 25 );

setEffMoveKey( spep_0  + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0  + 16, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0  + 148, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0  + 16, shuchusen1, 0 );
setEffRotateKey( spep_0  + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0  + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 148, shuchusen1, 255 );

-- 書き文字　ズズズンッ
ctzuzuzun = entryEffectLife( spep_0  - 6 + 22,  kaki_001, 44, 0x100, -1, 0, 20.1, 249.8 );
setEffShake(spep_0 - 6 + 32, ctzuzuzun, 30, 20);

setEffMoveKey( spep_0 - 6 + 22, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 - 6 + 24, ctzuzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 - 6 + 26, ctzuzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 - 6 + 28, ctzuzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 - 6 + 30, ctzuzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 - 6 + 66, ctzuzuzun, 43.5, 372 , 0 );

setEffScaleKey( spep_0 - 6 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 - 6 + 24, ctzuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 - 6 + 26, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 - 6 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 - 6 + 66, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 - 6 + 22, ctzuzuzun, -5 );
setEffRotateKey( spep_0 - 6 + 66, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 - 6 + 22, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 - 6 + 40, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 - 6 + 42, ctzuzuzun, 212 );
setEffAlphaKey( spep_0 - 6 + 44, ctzuzuzun, 172 );
setEffAlphaKey( spep_0 - 6 + 46, ctzuzuzun, 136 );
setEffAlphaKey( spep_0 - 6 + 48, ctzuzuzun, 104 );
setEffAlphaKey( spep_0 - 6 + 50, ctzuzuzun, 77 );
setEffAlphaKey( spep_0 - 6 + 52, ctzuzuzun, 53 );
setEffAlphaKey( spep_0 - 6 + 54, ctzuzuzun, 34 );
setEffAlphaKey( spep_0 - 6 + 56, ctzuzuzun, 19 );
setEffAlphaKey( spep_0 - 6 + 58, ctzuzuzun, 9 );
setEffAlphaKey( spep_0 - 6 + 60, ctzuzuzun, 2 );
setEffAlphaKey( spep_0 - 6 + 66, ctzuzuzun, 0 );

-- 貯めSE    -12
playSe( 16, SE_01);
playSe( 36, SE_03);
playSe( 56, SE_03);
-- playSe( 96, SE_03);
playSe( 116, SE_03);
playSe( 136, SE_03);


--[[
-- 顔カットイン
speff = entryEffect( spep_0 + 18 + 30, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 18 + 30, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
]]


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 18 + 42,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 18 + 42, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 18 + 42, ctgogo, 0,  520, 0 );
setEffMoveKey( spep_0 + 18 + 114, ctgogo, 0,  520, 0 );

setEffScaleKey( spep_0 + 18 + 42, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 18 + 106, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 18 + 108, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 18 + 110, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 18 + 112, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 18 + 114, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 18 + 42, ctgogo, 0 );
setEffRotateKey( spep_0 + 18 + 114, ctgogo, 0 );

setEffAlphaKey( spep_0 + 18 + 42, ctgogo, 0 );
setEffAlphaKey( spep_0 + 18 + 43, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18 + 44, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18 + 114, ctgogo, 255 );

--SE
playSe( spep_0 + 12 + 48 , SE_04 );  --ゴゴゴ

------------------------------------------------------
-- カードカットイン
------------------------------------------------------

spep_1 = spep_0 + 148 ;

--白フラッシュ
entryFade( spep_1-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen5 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  shuchusen5,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen5,  0,  0);
setEffScaleKey(  spep_1,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen5,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen5,  0);
setEffRotateKey(  spep_1+90,  shuchusen5,  0);
setEffAlphaKey(  spep_1,  shuchusen5,  255);
setEffAlphaKey(  spep_1+90,  shuchusen5,  255);

entryFade(  spep_1 + 74,  10,  10,  16,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 発射  
------------------------------------------------------

spep_2 = spep_1 + 90 ;

--白フラッシュ
entryFade( spep_2-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 発射エフェクト
hassha = entryEffectLife( spep_2,  ef_002r, 88, 0x100, -1, 0, 0, 0);
Efftemp( spep_2, hassha, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_2 + 88, hassha, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

--白フラッシュ エフェクト指定はアルファ255だけど倍速でチラつくので220に
entryFade( spep_2 + 16, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 220);

-- 集中線
shuchusen2 = entryEffectLife( spep_2,  906, 24, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_2, shuchusen2, 24, 25 );

setEffMoveKey( spep_2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 24, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 24, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 24, shuchusen2, 0 );

setEffAlphaKey( spep_2, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 24, shuchusen2, 255 );

-- 書き文字　ズオッ
ctzuoltu = entryEffectLife( spep_2 - 2 + 20,  kaki_002, 50, 0x100, -1, 0, 9.7, 282.4 );
setEffMoveKey( spep_2 - 2 + 20, ctzuoltu, 9.7, 282.4 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 22, ctzuoltu, 33, 331.8 + 15 , 0 );
setEffShake(spep_2 - 2 + 24, ctzuoltu, 38, 30);
setEffMoveKey( spep_2 - 2 + 62, ctzuoltu, 71.6, 376.4 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 64, ctzuoltu, 64.9, 401.3 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 66, ctzuoltu, 109.5, 374.8 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 68, ctzuoltu, 93.1, 409.1 + 15 , 0 );
setEffMoveKey( spep_2 - 2 + 70, ctzuoltu, 107.3, 413.1 + 15 , 0 );

setEffScaleKey( spep_2 - 2 + 20, ctzuoltu, 0.34, 0.34 );
setEffScaleKey( spep_2 - 2 + 22, ctzuoltu, 1.54, 1.54 );
setEffScaleKey( spep_2 - 2 + 24, ctzuoltu, 2.73, 2.73 );
setEffScaleKey( spep_2 - 2 + 60, ctzuoltu, 2.73, 2.73 );
setEffScaleKey( spep_2 - 2 + 62, ctzuoltu, 3.55, 3.55 );
setEffScaleKey( spep_2 - 2 + 64, ctzuoltu, 4.37, 4.37 );
setEffScaleKey( spep_2 - 2 + 66, ctzuoltu, 5.19, 5.19 );
setEffScaleKey( spep_2 - 2 + 68, ctzuoltu, 6.01, 6.01 );
setEffScaleKey( spep_2 - 2 + 70, ctzuoltu, 6.82, 6.82 );

setEffRotateKey( spep_2 - 2 + 20, ctzuoltu, 9.6 );
setEffRotateKey( spep_2 - 2 + 22, ctzuoltu, 18.3 );
setEffRotateKey( spep_2 - 2 + 24, ctzuoltu, 27.2 );
setEffRotateKey( spep_2 - 2 + 70, ctzuoltu, 27.2 );

setEffAlphaKey( spep_2 - 2 + 20, ctzuoltu, 255 );
setEffAlphaKey( spep_2 - 2 + 60, ctzuoltu, 255 );
setEffAlphaKey( spep_2 - 2 + 62, ctzuoltu, 204 );
setEffAlphaKey( spep_2 - 2 + 64, ctzuoltu, 153 );
setEffAlphaKey( spep_2 - 2 + 66, ctzuoltu, 102 );
setEffAlphaKey( spep_2 - 2 + 68, ctzuoltu, 51 );
setEffAlphaKey( spep_2 - 2 + 70, ctzuoltu, 0 );

-- 発射SE
seID0 = playSe( spep_2 + 14, SE_07);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge, seID0, 0 );   -- 前の音がうるさい場合は消す
    
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
-- 着弾  
------------------------------------------------------

spep_3 = spep_2 + 88 ;

--白フラッシュ
entryFade( spep_3-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 着弾エフェクト
tyakudan = entryEffectLife( spep_3,  ef_003, 96, 0x100, -1, 0, 0, 0);
Efftemp( spep_3, tyakudan, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_3 + 96, tyakudan, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

-- 着弾エフェクト　背景
tyakudan_haikei = entryEffectLife( spep_3,  ef_004, 96, 0x80, -1, 0, 0, 0);
Efftemp( spep_3, tyakudan_haikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_3 + 96, tyakudan_haikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate   

--白フラッシュ
entryFade( spep_3 + 27, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 180);

-- 敵の動き
setDisp( spep_3 -1, 1, 0);
setDisp( spep_3 +1, 1, 1);
setDisp( spep_3 +40, 1, 0);

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 28, 1, 108 );

setMoveKey( spep_3 -2 + 0, 1, -13.9, -81.7 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3 -2 + 4, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3 -2 + 6, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3 -2 + 8, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3 -2 + 10, 1, 44.4, 14.4 , 0 );
setMoveKey( spep_3 -2 + 12, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3 -2 + 14, 1, 73.9, 70.3 , 0 );
setMoveKey( spep_3 -2 + 16, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3 -2 + 18, 1, 86.8, 93.1 , 0 );
setMoveKey( spep_3 -2 + 20, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3 -2 + 22, 1, 96.5, 113.9 , 0 );
setMoveKey( spep_3 -2 + 24, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 -2 + 26, 1, 114.8, 144.7 , 0 );
setMoveKey( spep_3 -2 + 28, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3 -2 + 30, 1, 157.4, 198.5 , 0 );
setMoveKey( spep_3 -2 + 32, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 -2 + 34, 1, 121.7, 181.9 , 0 );
setMoveKey( spep_3 -2 + 36, 1, 145, 211 , 0 );
setMoveKey( spep_3 -2 + 38, 1, 138.8, 209 , 0 );
setMoveKey( spep_3 -2 + 40, 1, 146.1, 215.8 , 0 );
setMoveKey( spep_3 -2 + 42, 1, 141.5, 210.7 , 0 );

-- 次カットの妨げになるのでコメントアウト。エネミーは非表示になっています
--[[

setMoveKey( spep_3 -2 + 44, 1, 144.8, 213.6 , 0 );
setMoveKey( spep_3 -2 + 46, 1, 136.1, 204.5 , 0 );
setMoveKey( spep_3 -2 + 48, 1, 143.5, 211.3 , 0 );
setMoveKey( spep_3 -2 + 50, 1, 138.8, 206.2 , 0 );
setMoveKey( spep_3 -2 + 52, 1, 142.2, 209 , 0 );
setMoveKey( spep_3 -2 + 54, 1, 133.5, 199.8 , 0 );
setMoveKey( spep_3 -2 + 56, 1, 140.9, 206.6 , 0 );
setMoveKey( spep_3 -2 + 58, 1, 136.3, 201.5 , 0 );
setMoveKey( spep_3 -2 + 60, 1, 139.7, 204.3 , 0 );
setMoveKey( spep_3 -2 + 62, 1, 131.1, 195.1 , 0 );
setMoveKey( spep_3 -2 + 64, 1, 138.5, 201.9 , 0 );
setMoveKey( spep_3 -2 + 66, 1, 134, 196.6 , 0 );
setMoveKey( spep_3 -2 + 68, 1, 137.4, 199.4 , 0 );
setMoveKey( spep_3 -2 + 70, 1, 128.8, 190.2 , 0 );
setMoveKey( spep_3 -2 + 72, 1, 136.3, 196.9 , 0 );
setMoveKey( spep_3 -2 + 74, 1, 131.7, 191.7 , 0 );
setMoveKey( spep_3 -2 + 76, 1, 131.2, 190.4 , 0 );
setMoveKey( spep_3 -2 + 78, 1, 126.7, 177.2 , 0 );
setMoveKey( spep_3 -2 + 80, 1, 130.2, 187.9 , 0 );
setMoveKey( spep_3 -2 + 82, 1, 121.7, 182.6 , 0 );
setMoveKey( spep_3 -2 + 84, 1, 129.2, 185.3 , 0 );
setMoveKey( spep_3 -2 + 86, 1, 128.7, 184 , 0 );
setMoveKey( spep_3 -2 + 88, 1, 124.2, 170.7 , 0 );
setMoveKey( spep_3 -2 + 90, 1, 127.7, 181.4 , 0 );
setMoveKey( spep_3 -2 + 92, 1, 119.3, 176.1 , 0 );
setMoveKey( spep_3 -2 + 94, 1, 126.8, 178.8 , 0 );
setMoveKey( spep_3 -2 + 96, 1, 118.4, 173.4 , 0 );

]]

setScaleKey( spep_3 -2 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3 -2 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3 -2 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3 -2 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3 -2 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3 -2 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3 -2 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3 -2 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3 -2 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_3 -2 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_3 -2 + 20, 1, 1.59, 1.59 );
setScaleKey( spep_3 -2 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_3 -2 + 24, 1, 1.43, 1.43 );
setScaleKey( spep_3 -2 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3 -2 + 28, 1, 1.26, 1.26 );
setScaleKey( spep_3 -2 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_3 -2 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3 -2 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_3 -2 + 36, 1, 0.54, 0.54 );
setScaleKey( spep_3 -2 + 38, 1, 0.29, 0.29 );
setScaleKey( spep_3 -2 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_3 -2 + 42, 1, 0.28, 0.28 );

-- 次カットの妨げになるのでコメントアウト。エネミーは非表示になっています
--[[
setScaleKey( spep_3 -2 + 48, 1, 0.28, 0.28 );
setScaleKey( spep_3 -2 + 50, 1, 0.27, 0.27 );
setScaleKey( spep_3 -2 + 56, 1, 0.27, 0.27 );
setScaleKey( spep_3 -2 + 58, 1, 0.26, 0.26 );
setScaleKey( spep_3 -2 + 66, 1, 0.26, 0.26 );
setScaleKey( spep_3 -2 + 68, 1, 0.25, 0.25 );
setScaleKey( spep_3 -2 + 74, 1, 0.25, 0.25 );
setScaleKey( spep_3 -2 + 76, 1, 0.24, 0.24 );
setScaleKey( spep_3 -2 + 84, 1, 0.24, 0.24 );
setScaleKey( spep_3 -2 + 86, 1, 0.23, 0.23 );
setScaleKey( spep_3 -2 + 92, 1, 0.23, 0.23 );
setScaleKey( spep_3 -2 + 94, 1, 0.22, 0.22 );
setScaleKey( spep_3 -2 + 96, 1, 0.22, 0.22 );

]]

setRotateKey( spep_3 -2 + 0, 1, -2 );
setRotateKey( spep_3 -2 + 2, 1, -2.1 );
setRotateKey( spep_3 -2 + 4, 1, -2.3 );
setRotateKey( spep_3 -2 + 6, 1, -2.4 );
setRotateKey( spep_3 -2 + 8, 1, -2.5 );
setRotateKey( spep_3 -2 + 10, 1, -2.6 );
setRotateKey( spep_3 -2 + 12, 1, -2.8 );
setRotateKey( spep_3 -2 + 14, 1, -2.9 );
setRotateKey( spep_3 -2 + 16, 1, -3 );
setRotateKey( spep_3 -2 + 18, 1, -3.2 );
setRotateKey( spep_3 -2 + 20, 1, -3.3 );
setRotateKey( spep_3 -2 + 22, 1, -3.4 );
setRotateKey( spep_3 -2 + 24, 1, -3.5 );
setRotateKey( spep_3 -2 + 26, 1, -3.7 );
setRotateKey( spep_3 -2 + 28, 1, -3.8 );
setRotateKey( spep_3 -2 + 30, 1, 21 );
setRotateKey( spep_3 -2 + 32, 1, 18.5 );
setRotateKey( spep_3 -2 + 34, 1, 16.1 );
setRotateKey( spep_3 -2 + 36, 1, 13.8 );
setRotateKey( spep_3 -2 + 38, 1, 11.6 );
setRotateKey( spep_3 -2 + 40, 1, 11.4 );
setRotateKey( spep_3 -2 + 42, 1, 11.3 );

-- 次カットの妨げになるのでコメントアウト。エネミーは非表示になっています
--[[
setRotateKey( spep_3 -2 + 44, 1, 11.1 );
setRotateKey( spep_3 -2 + 46, 1, 10.9 );
setRotateKey( spep_3 -2 + 48, 1, 10.8 );
setRotateKey( spep_3 -2 + 50, 1, 10.6 );
setRotateKey( spep_3 -2 + 52, 1, 10.4 );
setRotateKey( spep_3 -2 + 54, 1, 10.3 );
setRotateKey( spep_3 -2 + 56, 1, 10.1 );
setRotateKey( spep_3 -2 + 58, 1, 9.9 );
setRotateKey( spep_3 -2 + 60, 1, 9.8 );
setRotateKey( spep_3 -2 + 62, 1, 9.6 );
setRotateKey( spep_3 -2 + 64, 1, 9.4 );
setRotateKey( spep_3 -2 + 66, 1, 9.3 );
setRotateKey( spep_3 -2 + 68, 1, 9.1 );
setRotateKey( spep_3 -2 + 70, 1, 8.9 );
setRotateKey( spep_3 -2 + 72, 1, 8.8 );
setRotateKey( spep_3 -2 + 74, 1, 8.6 );
setRotateKey( spep_3 -2 + 76, 1, 8.4 );
setRotateKey( spep_3 -2 + 78, 1, 8.3 );
setRotateKey( spep_3 -2 + 80, 1, 8.1 );
setRotateKey( spep_3 -2 + 82, 1, 7.9 );
setRotateKey( spep_3 -2 + 84, 1, 7.8 );
setRotateKey( spep_3 -2 + 86, 1, 7.6 );
setRotateKey( spep_3 -2 + 88, 1, 7.4 );
setRotateKey( spep_3 -2 + 90, 1, 7.3 );
setRotateKey( spep_3 -2 + 92, 1, 7.1 );
setRotateKey( spep_3 -2 + 94, 1, 6.9 );
setRotateKey( spep_3 -2 + 96, 1, 6.8 );

]]

-- 書き文字　ズオッ　その２
ctzuoltu2 = entryEffectLife( spep_3 - 2 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );
setEffShake( spep_3 - 2 + 30, ctzuoltu2, 20, 25 );
setEffMoveKey( spep_3 - 2 + 30, ctzuoltu2, -17.7, 313 , 0 );
setEffMoveKey( spep_3 - 2 + 32, ctzuoltu2, -35.7, 356 , 0 );
setEffMoveKey( spep_3 - 2 + 34, ctzuoltu2, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3 - 2 + 36, ctzuoltu2, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3 - 2 + 38, ctzuoltu2, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3 - 2 + 40, ctzuoltu2, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3 - 2 + 42, ctzuoltu2, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3 - 2 + 44, ctzuoltu2, -87, 406.6 , 0 );
setEffMoveKey( spep_3 - 2 + 46, ctzuoltu2, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3 - 2 + 48, ctzuoltu2, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3 - 2 + 50, ctzuoltu2, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3 - 2 + 30, ctzuoltu2, 0.34, 0.34 );
setEffScaleKey( spep_3 - 2 + 32, ctzuoltu2, 1.54, 1.54 );
setEffScaleKey( spep_3 - 2 + 34, ctzuoltu2, 2.73, 2.73 );
setEffScaleKey( spep_3 - 2 + 44, ctzuoltu2, 2.73, 2.73 );
setEffScaleKey( spep_3 - 2 + 46, ctzuoltu2, 4.09, 4.09 );
setEffScaleKey( spep_3 - 2 + 48, ctzuoltu2, 5.46, 5.46 );
setEffScaleKey( spep_3 - 2 + 50, ctzuoltu2, 6.82, 6.82 );

setEffRotateKey( spep_3 - 2 + 30, ctzuoltu2, 6.9 );
setEffRotateKey( spep_3 - 2 + 32, ctzuoltu2, -3.4 );
setEffRotateKey( spep_3 - 2 + 34, ctzuoltu2, -13.5 );
setEffRotateKey( spep_3 - 2 + 36, ctzuoltu2, -13.8 );
setEffRotateKey( spep_3 - 2 + 38, ctzuoltu2, -14.1 );
setEffRotateKey( spep_3 - 2 + 40, ctzuoltu2, -14.4 );
setEffRotateKey( spep_3 - 2 + 42, ctzuoltu2, -14.7 );
setEffRotateKey( spep_3 - 2 + 44, ctzuoltu2, -15 );
setEffRotateKey( spep_3 - 2 + 46, ctzuoltu2, -11.8 );
setEffRotateKey( spep_3 - 2 + 48, ctzuoltu2, -8.5 );
setEffRotateKey( spep_3 - 2 + 50, ctzuoltu2, -5.2 );

setEffAlphaKey( spep_3 - 2 + 30, ctzuoltu2, 255 );
setEffAlphaKey( spep_3 - 2 + 44, ctzuoltu2, 255 );
setEffAlphaKey( spep_3 - 2 + 46, ctzuoltu2, 170 );
setEffAlphaKey( spep_3 - 2 + 48, ctzuoltu2, 85 );
setEffAlphaKey( spep_3 - 2 + 50, ctzuoltu2, 0 );

-- SE
playSe( spep_3 + 6, SE_06);
playSe( spep_3 - 3 + 32, SE_09);

------------------------------------------------------
-- ダメージ表示  
------------------------------------------------------

spep_4 = spep_3 + 96 ;

--白フラッシュ
entryFade( spep_4-10, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- ガッ
------------------------------------------------------
SP_ATK = spep_4 + 4;

--***敵の動き***--
setDisp( SP_ATK + 0, 1, 1 );
changeAnime( SP_ATK + 0, 1, 107 );

setMoveKey( SP_ATK + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( SP_ATK + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( SP_ATK + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( SP_ATK + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( SP_ATK + 0, 1, 0.22, 0.22 );
setScaleKey( SP_ATK + 2, 1, 0.35, 0.35 );
setScaleKey( SP_ATK + 4, 1, 0.51, 0.51 );
setScaleKey( SP_ATK + 6, 1, 0.7, 0.7 );
setScaleKey( SP_ATK + 8, 1, 0.93, 0.93 );
setScaleKey( SP_ATK + 10, 1, 1.2, 1.2 );
setScaleKey( SP_ATK + 12, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 14, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 16, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 18, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 20, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 22, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 24, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 26, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 110, 1, 1.6, 1.6 );

setRotateKey( SP_ATK + 0, 1, 0 );
setRotateKey( SP_ATK + 2, 1, 105 );
setRotateKey( SP_ATK + 4, 1, 240 );
setRotateKey( SP_ATK + 6, 1, 405 );
setRotateKey( SP_ATK + 8, 1, 600 );
setRotateKey( SP_ATK + 10, 1, 825 );
setRotateKey( SP_ATK + 12, 1, 1080 );
setRotateKey( SP_ATK + 110, 1, 1080 );

--爆発エフェクト
bakuhatsu_damage = entryEffect( SP_ATK, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
Efftemp( SP_ATK, bakuhatsu_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( SP_ATK + 110, bakuhatsu_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 

playSe( SP_ATK, SE_10);

setDamage( SP_ATK +16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+8,6,15);
setShake(SP_ATK+14,15,10);

--書き文字--
ctGa = entryEffectLife( SP_ATK + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( SP_ATK + 14, ctGa, 30, 10);

setEffMoveKey( SP_ATK + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 110, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK + 14, ctGa, 2, 2 );
setEffScaleKey( SP_ATK+16, ctGa, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, cGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ctGa, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ctGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ctGa, 3.8, 3.8);
setEffScaleKey( SP_ATK+110, ctGa, 3.8, 3.8);

setEffRotateKey( SP_ATK + 14, ctGa, -40 );
setEffRotateKey( SP_ATK + 16, ctGa, -31 );
setEffRotateKey( SP_ATK + 18, ctGa, -40 );
setEffRotateKey( SP_ATK + 20, ctGa, -31 );
setEffRotateKey( SP_ATK + 22, ctGa, -40 );
setEffRotateKey( SP_ATK + 24, ctGa, -31);
setEffRotateKey( SP_ATK + 26, ctGa, -40 );
setEffRotateKey( SP_ATK + 28, ctGa, -31);
setEffRotateKey( SP_ATK + 30, ctGa, -40 );
setEffRotateKey( SP_ATK + 110, ctGa, -40 );

setEffAlphaKey( SP_ATK + 14, ctGa, 255 );
setEffAlphaKey( SP_ATK + 110, ctGa, 255 );

--entryFadeBg( SP_ATK,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー

-- ダメージ表示中背景
damagehaikei = entryEffect( spep_4,  ef_005, 0x80, -1, 0, 0, 0);
Efftemp( spep_4, damagehaikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( spep_4 + 110, damagehaikei, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate  

--集中線（白）
shuchusen_damage = entryEffectLife( SP_ATK+2, 906, 108, 0x00,  -1, 0,  0,  0);   -- 集中線
Efftemp( SP_ATK + 2, shuchusen_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( SP_ATK + 110, shuchusen_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 

--集中線（黒）
shuchusenkuro_damage = entryEffectLife( SP_ATK+14, 1657, 96, 0x80,  -1, 0,  0,  0);   -- 集中線
Efftemp( SP_ATK + 14, shuchusenkuro_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 
Efftemp( SP_ATK + 110, shuchusenkuro_damage, 0, 0, 1.0, 1.0, 255, 0 );      --keytiming, name, moveX, moveY, scaleX, scaleY, alpha, rotate 

--ひび割れ
hibi = entryEffect( SP_ATK+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  SP_ATK+14,  SE_11);  --ひび割れ

-- ダメージ表示
dealDamage(SP_ATK+16);
entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK + 110);
end
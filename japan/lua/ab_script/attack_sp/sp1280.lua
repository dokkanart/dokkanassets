-- 超サイヤ人カリフラ&超サイヤ人ケール（UR)　シェイクコンバット

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
SP_01 = 153328;    -- 突進
SP_02 = 153329;    --ラッシュ前
SP_03 = 153330;    --ラッシュ後
SP_04 = 153331;    --吹っ飛ばし手前
SP_05 = 153332;    --吹っ飛ばし奥
SP_06 = 153333;    --クラッシュキャノン
SP_07 = 153334;    --ケール蹴り手前
SP_08 = 153335;    --ケール蹴り奥
SP_09 = 153336;    --ビーム迫る手前
SP_10 = 153337;    --ビーム迫る奥
SP_11 = 153338;    --爆発

SP_08r = 153339;   --008：敵側

kaki_001 = 10012; -- ズオッ
kaki_002 = 10017; -- ドガガガッ
kaki_003 = 10021; -- バゴォッ
kaki_004 = 10020; -- バキッ

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

------------------------------------------------------
-- 味方側
------------------------------------------------------

------------------------------------------------------
-- 二人がカメラに迫るエフェクト	
------------------------------------------------------

spep_0 = 0 ;

-- 敵の動き
setDisp( spep_0, 1, 0 );

-- 構え エフェクト
hutarisemaru = entryEffectLife( spep_0,  SP_01, 160, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_0,hutarisemaru,  0,  0);
setEffMoveKey( spep_0 + 160,hutarisemaru,  0,  0);

setEffScaleKey( spep_0, hutarisemaru, 1.0, 1.0);
setEffScaleKey( spep_0 + 160, hutarisemaru, 1.0, 1.0);

setEffAlphaKey( spep_0, hutarisemaru, 255);
setEffAlphaKey( spep_0 + 160, hutarisemaru, 255);

setEffRotateKey( spep_0, hutarisemaru, 0);
setEffRotateKey( spep_0 + 160, hutarisemaru, 0);

-- 集中線
shuchusen = entryEffectLife( spep_0 ,  906, 160, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 , shuchusen, 160, 25 );

setEffMoveKey( spep_0 , shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 , shuchusen, 1.4, 1.4 );
setEffScaleKey( spep_0 + 160, shuchusen, 1.4, 1.4 );
setEffRotateKey( spep_0 , shuchusen, 0 );
setEffRotateKey( spep_0 + 160, shuchusen, 0 );
setEffAlphaKey( spep_0 , shuchusen, 255 );
setEffAlphaKey( spep_0 + 160, shuchusen, 255 );

-- 書き文字　ズオッ
ctzuo_1 = entryEffectLife( spep_0 + 0,  kaki_001, 40, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_0 + 0, ctzuo_1, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo_1, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo_1, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo_1, 153.7, 348.8 , 0 );	
setEffMoveKey( spep_0 + 8, ctzuo_1, 137.7, 364.8 , 0 );		--ここからシェイク
setEffMoveKey( spep_0 + 32, ctzuo_1, 137.7, 364.8 , 0 );	--ここまでシェイク
setEffMoveKey( spep_0 + 34, ctzuo_1, 167.1, 345 , 0 );
setEffMoveKey( spep_0 + 36, ctzuo_1, 153.1, 368.5 , 0 );
setEffMoveKey( spep_0 + 38, ctzuo_1, 193.8, 337.2 , 0 );
setEffMoveKey( spep_0 + 40, ctzuo_1, 207.3, 333.2 , 0 );

setEffShake( spep_0 + 8 , ctzuo_1, 24, 25 );

setEffScaleKey( spep_0 + 0, ctzuo_1, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctzuo_1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctzuo_1, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctzuo_1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 32, ctzuo_1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 34, ctzuo_1, 3.68, 3.68 );
setEffScaleKey( spep_0 + 36, ctzuo_1, 4.67, 4.67 );
setEffScaleKey( spep_0 + 38, ctzuo_1, 5.63, 5.63 );
setEffScaleKey( spep_0 + 40, ctzuo_1, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ctzuo_1, 27.2 );
setEffRotateKey( spep_0 + 40, ctzuo_1, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo_1, 255 );
setEffAlphaKey( spep_0 + 32, ctzuo_1, 255 );
setEffAlphaKey( spep_0 + 34, ctzuo_1, 191 );
setEffAlphaKey( spep_0 + 36, ctzuo_1, 128 );
setEffAlphaKey( spep_0 + 38, ctzuo_1, 64 );
setEffAlphaKey( spep_0 + 40, ctzuo_1, 0 );

-- **  顔カットイン　** --
speff = entryEffect( spep_0 + 28, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 28, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 40,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 40, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 40, ctgogo, 0,  520, 0  );
setEffMoveKey( spep_0 + 40 + 72, ctgogo, 0,  520, 0  );	

setEffScaleKey( spep_0 + 40, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 40 + 64, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 40 + 66, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 40 + 68, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 40 + 70, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 40 + 72, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 40, ctgogo, 0 );
setEffRotateKey( spep_0 + 40 + 72, ctgogo, 0 );

setEffAlphaKey( spep_0 + 40, ctgogo, 0 );
setEffAlphaKey( spep_0 + 40 + 1, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40 + 2, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40 + 72, ctgogo, 255 );

--SE
seID0 = playSe( spep_0 , 9 );  --突進音

--SE
playSe( spep_0 + 40 , SE_04 );  --ゴゴゴ

-- ** 背景 ** --
entryFadeBg(  spep_0,  0,  160,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 148; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, seID0, 0 );

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
-- カードカットイン
------------------------------------------------------

spep_1 = spep_0 + 160 ;

--白フラッシュ
entryFade( spep_1-10, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_1,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen2,  0);
setEffRotateKey(  spep_1+90,  shuchusen2,  0);
setEffAlphaKey(  spep_1,  shuchusen2,  255);
setEffAlphaKey(  spep_1+90,  shuchusen2,  255);

entryFade(  spep_1 + 78,  6,  8,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

-- ** 背景 ** --
entryFadeBg(  spep_1,  0,  90,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- ラッシュエフェクト
------------------------------------------------------

spep_2 = spep_1 + 90 ;

-- ラッシュ エフェクト
rusheff_b = entryEffectLife( spep_2,  SP_03, 200, 0x80, -1, 0, 0, 0);  --後ろ
setEffMoveKey( spep_2,rusheff_b,  0,  0);
setEffMoveKey( spep_2 + 200,rusheff_b,  0,  0);

setEffScaleKey( spep_2, rusheff_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 200, rusheff_b, 1.0, 1.0);

setEffAlphaKey( spep_2, rusheff_b, 255);
setEffAlphaKey( spep_2 + 196, rusheff_b, 255);
setEffAlphaKey( spep_2 + 197, rusheff_b, 0);
setEffAlphaKey( spep_2 + 200, rusheff_b, 0);

setEffRotateKey( spep_2, rusheff_b, 0);
setEffRotateKey( spep_2 + 200, rusheff_b, 0);


rusheff = entryEffectLife( spep_2,  SP_02, 200, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_2,rusheff,  0,  0);
setEffMoveKey( spep_2 + 200,rusheff,  0,  0);

setEffScaleKey( spep_2, rusheff, 1.0, 1.0);
setEffScaleKey( spep_2 + 200, rusheff, 1.0, 1.0);

setEffAlphaKey( spep_2, rusheff, 255);
setEffAlphaKey( spep_2 + 196, rusheff, 255);
setEffAlphaKey( spep_2 + 197, rusheff, 0);
setEffAlphaKey( spep_2 + 200, rusheff, 0);

setEffRotateKey( spep_2, rusheff, 0);
setEffRotateKey( spep_2 + 200, rusheff, 0);

-- 集中線
shuchusen3 = entryEffectLife( spep_2 ,  906, 196, 0x80, -1, 0, 0, 0 ); 
setEffShake( spep_2 , shuchusen3, 200, 25 );

setEffMoveKey( spep_2 , shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 , shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_2 + 196, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_2 , shuchusen3, 0 );
setEffRotateKey( spep_2 + 196, shuchusen3, 0 );

setEffAlphaKey( spep_2 , shuchusen3, 255 );
setEffAlphaKey( spep_2 + 196, shuchusen3, 255 );

-- 書き文字　ドガガガッ
ctdogagagaltu_1 = entryEffectLife( spep_2 + 2,  kaki_002, 124, 0x100, -1, 0, 7.7, 432.2 );
setEffMoveKey( spep_2 + 2, ctdogagagaltu_1, 7.7, 432.2 , 0 );
setEffMoveKey( spep_2 + 4, ctdogagagaltu_1, 7.5, 432.6 , 0 );
setEffMoveKey( spep_2 + 6, ctdogagagaltu_1, -2.4, 439.3 , 0 );
setEffMoveKey( spep_2 + 8, ctdogagagaltu_1, 7.6, 432.4 , 0 );
setEffMoveKey( spep_2 + 10, ctdogagagaltu_1, -1.3, 438.4 , 0 );
setEffMoveKey( spep_2 + 12, ctdogagagaltu_1, 7.7, 432.2 , 0 );	-- ここからシェイク
setEffMoveKey( spep_2 + 124, ctdogagagaltu_1, 7.7, 432.2 , 0 );
setEffMoveKey( spep_2 + 126, ctdogagagaltu_1, 7.7, 432.2 , 0 );

setEffShake( spep_2 + 12 , ctdogagagaltu_1, 112, 25 );

setEffScaleKey( spep_2 + 2, ctdogagagaltu_1, 2.47, 2.47 );
setEffScaleKey( spep_2 + 4, ctdogagagaltu_1, 3.25, 3.25 );
setEffScaleKey( spep_2 + 6, ctdogagagaltu_1, 3.1, 3.1 );
setEffScaleKey( spep_2 + 8, ctdogagagaltu_1, 2.95, 2.95 );
setEffScaleKey( spep_2 + 10, ctdogagagaltu_1, 2.79, 2.79 );
setEffScaleKey( spep_2 + 12, ctdogagagaltu_1, 2.64, 2.64 );
setEffScaleKey( spep_2 + 126, ctdogagagaltu_1, 2.64, 2.64 );

setEffRotateKey( spep_2 + 2, ctdogagagaltu_1, 0.1 );
setEffRotateKey( spep_2 + 126, ctdogagagaltu_1, 0.1 );

setEffAlphaKey( spep_2 + 2, ctdogagagaltu_1, 255 );
setEffAlphaKey( spep_2 + 114, ctdogagagaltu_1, 255 );
setEffAlphaKey( spep_2 + 116, ctdogagagaltu_1, 213 );
setEffAlphaKey( spep_2 + 118, ctdogagagaltu_1, 170 );
setEffAlphaKey( spep_2 + 120, ctdogagagaltu_1, 128 );
setEffAlphaKey( spep_2 + 122, ctdogagagaltu_1, 85 );
setEffAlphaKey( spep_2 + 124, ctdogagagaltu_1, 42 );
setEffAlphaKey( spep_2 + 126, ctdogagagaltu_1, 0 );

a = 3
-- 敵の動き
setDisp( spep_2 + 1, 1, 1 );
setDisp( spep_2 + 170, 1, 0 );
changeAnime( spep_2 + 1, 1, 104 );
changeAnime( spep_2 -a + 2, 1, 108 );
changeAnime( spep_2 -a + 6, 1, 106);
changeAnime( spep_2 -a + 12, 1, 108 );
changeAnime( spep_2 -a + 18, 1, 104 );
changeAnime( spep_2 -a + 22, 1, 108 );
changeAnime( spep_2 -a + 26, 1, 106);
changeAnime( spep_2 -a + 34, 1, 108 );
changeAnime( spep_2 -a + 48, 1, 106);
changeAnime( spep_2 -a + 52, 1, 108 );
changeAnime( spep_2 -a + 58, 1, 104 );
changeAnime( spep_2 -a + 64, 1, 108 );
changeAnime( spep_2 -a + 74, 1, 106);
changeAnime( spep_2 -a + 82, 1, 108 );
changeAnime( spep_2 -a + 104, 1, 106);

setMoveKey( spep_2 + 1, 1, 117.8, 30 , 0 );
setMoveKey( spep_2 -a + 2, 1, 146.5, 46.5 , 0 );
setMoveKey( spep_2 -a + 5, 1, 154.6, 47.8 , 0 );
setMoveKey( spep_2 -a + 6, 1, 96.9, 81.8 , 0 );
setMoveKey( spep_2 -a + 8, 1, 104.3, 84.1 , 0 );
setMoveKey( spep_2 -a + 11, 1, 111.7, 86.5 , 0 );
setMoveKey( spep_2 -a + 12, 1, 148.8, 67.8 , 0 );
setMoveKey( spep_2 -a + 14, 1, 156.6, 72.9 , 0 );
setMoveKey( spep_2 -a + 17, 1, 164.8, 74.4 , 0 );
setMoveKey( spep_2 -a + 18, 1, 151.9, 61.8 , 0 );
setMoveKey( spep_2 -a + 21, 1, 159.6, 73.3 , 0 );
setMoveKey( spep_2 -a + 22, 1, 188.5, 105 , 0 );
setMoveKey( spep_2 -a + 25, 1, 189.4, 105.8 , 0 );
setMoveKey( spep_2 -a + 26, 1, 128.8, 133.8 , 0 );
setMoveKey( spep_2 -a + 28, 1, 131.5, 134.8 , 0 );
setMoveKey( spep_2 -a + 30, 1, 134.2, 135.9 , 0 );
setMoveKey( spep_2 -a + 33, 1, 137, 136.9 , 0 );
setMoveKey( spep_2 -a + 34, 1, 141.6, 65.4 , 0 );
setMoveKey( spep_2 -a + 36, 1, 149.1, 74.5 , 0 );
setMoveKey( spep_2 -a + 38, 1, 153.2, 79.3 , 0 );
setMoveKey( spep_2 -a + 40, 1, 157.6, 82.4 , 0 );
setMoveKey( spep_2 -a + 42, 1, 167.5, 88 , 0 );
setMoveKey( spep_2 -a + 44, 1, 168.3, 88.7 , 0 );
setMoveKey( spep_2 -a + 47, 1, 169.2, 89.4 , 0 );
setMoveKey( spep_2 -a + 48, 1, 84.2, 65.7 , 0 );
setMoveKey( spep_2 -a + 51, 1, 87.3, 45.5 , 0 );
setMoveKey( spep_2 -a + 52, 1, 171.7, 91.5 , 0 );
setMoveKey( spep_2 -a + 54, 1, 174.2, 94.3 , 0 );
setMoveKey( spep_2 -a + 57, 1, 178.7, 97.4 , 0 );
setMoveKey( spep_2 -a + 58, 1, 164.2, 73.9 , 0 );
setMoveKey( spep_2 -a + 60, 1, 167, 74.8 , 0 );
setMoveKey( spep_2 -a + 63, 1, 169.8, 75.7 , 0 );
setMoveKey( spep_2 -a + 64, 1, 162.8, 68.1 , 0 );
setMoveKey( spep_2 -a + 66, 1, 165.5, 71.1 , 0 );
setMoveKey( spep_2 -a + 68, 1, 170.3, 74.4 , 0 );
setMoveKey( spep_2 -a + 70, 1, 175.1, 77.7 , 0 );
setMoveKey( spep_2 -a + 73, 1, 177.8, 80.8 , 0 );
setMoveKey( spep_2 -a + 74, 1, 122.4, 116.2 , 0 );
setMoveKey( spep_2 -a + 76, 1, 126.8, 121.7 , 0 );
setMoveKey( spep_2 -a + 78, 1, 133.1, 129.7 , 0 );
setMoveKey( spep_2 -a + 81, 1, 135.4, 135.1 , 0 );
setMoveKey( spep_2 -a + 82, 1, 172.7, 120.2 , 0 );
setMoveKey( spep_2 -a + 84, 1, 180.9, 115.2 , 0 );
setMoveKey( spep_2 -a + 86, 1, 182.9, 107.2 , 0 );
setMoveKey( spep_2 -a + 88, 1, 206.7, 102 , 0 );
setMoveKey( spep_2 -a + 90, 1, 214.2, 103.6 , 0 );
setMoveKey( spep_2 -a + 92, 1, 219.2, 107.1 , 0 );
setMoveKey( spep_2 -a + 94, 1, 222.3, 108.1 , 0 );
setMoveKey( spep_2 -a + 96, 1, 225.4, 109.1 , 0 );
setMoveKey( spep_2 -a + 98, 1, 228.5, 110.2 , 0 );
setMoveKey( spep_2 -a + 100, 1, 231.3, 113.4 , 0 );
setMoveKey( spep_2 -a + 103, 1, 238.9, 115.1 , 0 );
setMoveKey( spep_2 -a + 104, 1, 149.1, 137.8 , 0 );
setMoveKey( spep_2 -a + 106, 1, 154.3, 189.3 , 0 );
setMoveKey( spep_2 -a + 108, 1, 157.9, 202 , 0 );
setMoveKey( spep_2 -a + 110, 1, 164.1, 212.9 , 0 );
setMoveKey( spep_2 -a + 112, 1, 166.4, 218.7 , 0 );
setMoveKey( spep_2 -a + 114, 1, 169, 222.2 , 0 );
setMoveKey( spep_2 -a + 116, 1, 170.1, 223.7 , 0 );
setMoveKey( spep_2 -a + 118, 1, 171.2, 225.2 , 0 );
setMoveKey( spep_2 -a + 120, 1, 171.9, 226.2 , 0 );
setMoveKey( spep_2 -a + 122, 1, 173.9, 227.7 , 0 );
setMoveKey( spep_2 -a + 124, 1, 176.1, 229.3 , 0 );
setMoveKey( spep_2 -a + 126, 1, 178.5, 231 , 0 );
setMoveKey( spep_2 -a + 128, 1, 181.1, 232.9 , 0 );
setMoveKey( spep_2 -a + 130, 1, 183.9, 234.9 , 0 );
setMoveKey( spep_2 -a + 132, 1, 186.9, 237.1 , 0 );
setMoveKey( spep_2 -a + 134, 1, 190.1, 239.4 , 0 );
setMoveKey( spep_2 -a + 136, 1, 193.5, 241.8 , 0 );
setMoveKey( spep_2 -a + 138, 1, 197.1, 244.4 , 0 );
setMoveKey( spep_2 -a + 140, 1, 200.9, 247.1 , 0 );
setMoveKey( spep_2 -a + 142, 1, 204.9, 249.9 , 0 );
setMoveKey( spep_2 -a + 144, 1, 209.1, 252.9 , 0 );
setMoveKey( spep_2 -a + 146, 1, 213.5, 256.1 , 0 );
setMoveKey( spep_2 -a + 148, 1, 218.1, 259.4 , 0 );
setMoveKey( spep_2 -a + 150, 1, 222.9, 262.8 , 0 );
setMoveKey( spep_2 -a + 152, 1, 228, 266.4 , 0 );
setMoveKey( spep_2 -a + 154, 1, 233.2, 270.2 , 0 );
setMoveKey( spep_2 -a + 156, 1, 238.6, 274.1 , 0 );
setMoveKey( spep_2 -a + 158, 1, 244.3, 278.1 , 0 );
setMoveKey( spep_2 -a + 160, 1, 250.1, 282.4 , 0 );
setMoveKey( spep_2 -a + 162, 1, 256.2, 286.8 , 0 );
setMoveKey( spep_2 -a + 164, 1, 262.4, 291.3 , 0 );
setMoveKey( spep_2 -a + 166, 1, 268.9, 296.1 , 0 );
setMoveKey( spep_2 -a + 168, 1, 275.6, 301 , 0 );
setMoveKey( spep_2 -a + 170, 1, 282.5, 306 , 0 );

setScaleKey( spep_2 + 1, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a + 2, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a + 5, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a + 6, 1, 1.43, 1.43 );
setScaleKey( spep_2 -a + 8, 1, 1.43, 1.43 );
setScaleKey( spep_2 -a + 11, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a + 12, 1, 1.46, 1.46 );
setScaleKey( spep_2 -a + 14, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a + 17, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a + 18, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 21, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 22, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a + 25, 1, 1.49, 1.49 );
setScaleKey( spep_2 -a + 26, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a + 28, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a + 30, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a + 33, 1, 1.49, 1.49 );
setScaleKey( spep_2 -a + 34, 1, 1.51, 1.51 );
setScaleKey( spep_2 -a + 36, 1, 1.51, 1.51 );
setScaleKey( spep_2 -a + 38, 1, 1.52, 1.52 );
setScaleKey( spep_2 -a + 40, 1, 1.52, 1.52 );
setScaleKey( spep_2 -a + 42, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a + 44, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a + 47, 1, 1.54, 1.54 );
setScaleKey( spep_2 -a + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2 -a + 51, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a + 52, 1, 1.55, 1.55 );
setScaleKey( spep_2 -a + 54, 1, 1.55, 1.55 );
setScaleKey( spep_2 -a + 57, 1, 1.56, 1.56 );
setScaleKey( spep_2 -a + 58, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 60, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 63, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 64, 1, 1.57, 1.57 );
setScaleKey( spep_2 -a + 66, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 68, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 70, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 73, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 74, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 76, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 78, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 81, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 82, 1, 1.61, 1.61 );
setScaleKey( spep_2 -a + 84, 1, 1.62, 1.62 );
setScaleKey( spep_2 -a + 86, 1, 1.62, 1.62 );
setScaleKey( spep_2 -a + 88, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a + 90, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a + 92, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a + 96, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a + 98, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a + 100, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a + 103, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a + 104, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a + 106, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a + 110, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a + 112, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a + 114, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a + 116, 1, 1.67, 1.67 );
setScaleKey( spep_2 -a + 118, 1, 1.67, 1.67 );
setScaleKey( spep_2 -a + 120, 1, 1.68, 1.68 );
setScaleKey( spep_2 -a + 122, 1, 1.69, 1.69 );
setScaleKey( spep_2 -a + 124, 1, 1.7, 1.7 );
setScaleKey( spep_2 -a + 126, 1, 1.72, 1.72 );
setScaleKey( spep_2 -a + 128, 1, 1.74, 1.74 );
setScaleKey( spep_2 -a + 130, 1, 1.76, 1.76 );
setScaleKey( spep_2 -a + 132, 1, 1.78, 1.78 );
setScaleKey( spep_2 -a + 134, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a + 136, 1, 1.83, 1.83 );
setScaleKey( spep_2 -a + 138, 1, 1.85, 1.85 );
setScaleKey( spep_2 -a + 140, 1, 1.88, 1.88 );
setScaleKey( spep_2 -a + 142, 1, 1.91, 1.91 );
setScaleKey( spep_2 -a + 144, 1, 1.94, 1.94 );
setScaleKey( spep_2 -a + 146, 1, 1.97, 1.97 );
setScaleKey( spep_2 -a + 148, 1, 2, 2 );
setScaleKey( spep_2 -a + 150, 1, 2.04, 2.04 );
setScaleKey( spep_2 -a + 152, 1, 2.08, 2.08 );
setScaleKey( spep_2 -a + 154, 1, 2.11, 2.11 );
setScaleKey( spep_2 -a + 156, 1, 2.15, 2.15 );
setScaleKey( spep_2 -a + 158, 1, 2.19, 2.19 );
setScaleKey( spep_2 -a + 160, 1, 2.24, 2.24 );
setScaleKey( spep_2 -a + 162, 1, 2.28, 2.28 );
setScaleKey( spep_2 -a + 164, 1, 2.33, 2.33 );
setScaleKey( spep_2 -a + 166, 1, 2.38, 2.38 );
setScaleKey( spep_2 -a + 168, 1, 2.43, 2.43 );
setScaleKey( spep_2 -a + 170, 1, 2.48, 2.48 );

setRotateKey( spep_2 + 1, 1, -6 );
setRotateKey( spep_2 -a + 2, 1, -11.5 );
setRotateKey( spep_2 -a + 5, 1, -11.5 );
setRotateKey( spep_2 -a + 6, 1, -27.6 );
setRotateKey( spep_2 -a + 11, 1, -27.6 );
setRotateKey( spep_2 -a + 12, 1, -33.2 );
setRotateKey( spep_2 -a + 14, 1, -21 );
setRotateKey( spep_2 -a + 17, 1, -21 );
setRotateKey( spep_2 -a + 18, 1, -6.3 );
setRotateKey( spep_2 -a + 21, 1, -6.3 );
setRotateKey( spep_2 -a + 22, 1, -11.8 );
setRotateKey( spep_2 -a + 25, 1, -11.9 );
setRotateKey( spep_2 -a + 26, 1, -34.8 );
setRotateKey( spep_2 -a + 28, 1, -34.9 );
setRotateKey( spep_2 -a + 33, 1, -34.9 );
setRotateKey( spep_2 -a + 34, 1, -12 );
setRotateKey( spep_2 -a + 36, 1, -12.1 );
setRotateKey( spep_2 -a + 40, 1, -12.1 );
setRotateKey( spep_2 -a + 42, 1, -12.2 );
setRotateKey( spep_2 -a + 47, 1, -12.2 );
setRotateKey( spep_2 -a + 48, 1, -110.4 );
setRotateKey( spep_2 -a + 51, 1, -110.5 );
setRotateKey( spep_2 -a + 52, 1, -12.3 );
setRotateKey( spep_2 -a + 54, 1, -12.4 );
setRotateKey( spep_2 -a + 57, 1, -12.4 );
setRotateKey( spep_2 -a + 58, 1, -10.7 );
setRotateKey( spep_2 -a + 60, 1, -8.9 );
setRotateKey( spep_2 -a + 63, 1, -7 );
setRotateKey( spep_2 -a + 64, 1, -12.5 );
setRotateKey( spep_2 -a + 66, 1, -12.6 );
setRotateKey( spep_2 -a + 70, 1, -12.6 );
setRotateKey( spep_2 -a + 73, 1, -12.7 );
setRotateKey( spep_2 -a + 74, 1, -51.4 );
setRotateKey( spep_2 -a + 78, 1, -51.4 );
setRotateKey( spep_2 -a + 81, 1, -51.5 );
setRotateKey( spep_2 -a + 82, 1, -7.1 );
setRotateKey( spep_2 -a + 84, 1, -4.4 );
setRotateKey( spep_2 -a + 86, 1, 0.3 );
setRotateKey( spep_2 -a + 88, 1, 0.2 );
setRotateKey( spep_2 -a + 92, 1, 0.2 );
setRotateKey( spep_2 -a + 94, 1, 0.1 );
setRotateKey( spep_2 -a + 98, 1, 0.1 );
setRotateKey( spep_2 -a + 100, 1, 0 );
setRotateKey( spep_2 -a + 103, 1, 0 );
setRotateKey( spep_2 -a + 104, 1, -37.4 );
--[[setRotateKey( spep_2 -a + 106, 1, -37.5 );
setRotateKey( spep_2 -a + 110, 1, -37.5 );
setRotateKey( spep_2 -a + 112, 1, -37.6 );
setRotateKey( spep_2 -a + 124, 1, -37.6 );
setRotateKey( spep_2 -a + 126, 1, -37.5 );
setRotateKey( spep_2 -a + 132, 1, -37.5 );
setRotateKey( spep_2 -a + 134, 1, -37.4 );
setRotateKey( spep_2 -a + 140, 1, -37.4 );
setRotateKey( spep_2 -a + 142, 1, -37.3 );
setRotateKey( spep_2 -a + 156, 1, -37.3 );
setRotateKey( spep_2 -a + 158, 1, -37.2 );]]
setRotateKey( spep_2 -a + 170, 1, -37.2 );

--SE
playSe( spep_2 , 1000 );  --ラッシュ音
playSe( spep_2 + 10 , 1001 );  --ラッシュ音
playSe( spep_2 + 20 , 1001 );  --ラッシュ音
playSe( spep_2 + 30 , 1000 );  --ラッシュ音
playSe( spep_2 + 40 , 1001 );  --ラッシュ音
playSe( spep_2 + 50 , 1000 );  --ラッシュ音
playSe( spep_2 + 60 , 1001 );  --ラッシュ音
playSe( spep_2 + 70 , 1007 );  --ラッシュ音
playSe( spep_2 + 80 , 1006 );  --ラッシュ音
playSe( spep_2 + 90 , 1000 );  --ラッシュ音
playSe( spep_2 + 100 , 1001 );  --ラッシュ音
playSe( spep_2 + 110 , 1000 );  --ラッシュ音

playSe( spep_2 + 110 , 1004 );  --カリフラバク転
playSe( spep_2 + 122 , 1072 );  --突進音

playSe( spep_2 + 174 , 1011 );  --ラッシュ音
--playSe( spep_2 + 178 , 1000 );  --ラッシュ音
playSe( spep_2 + 190 , 1023 );  --ラッシュ音

-- ** 背景 ** --
entryFadeBg(  spep_2,  0,  200,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- 吹き飛ぶエフェクト
------------------------------------------------------

spep_3 = spep_2 + 196 ;

--白フラッシュ
entryFade( spep_3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);

--  ** 敵の動き **  --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 68, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );  --吹っ飛び

setMoveKey( spep_3 + 0, 1, 53.3, 23.2 , 0 );
setMoveKey( spep_3 + 2, 1, 33.7, 43.5 , 0 );
setMoveKey( spep_3 + 4, 1, 45.9, 114 , 0 );
setMoveKey( spep_3 + 6, 1, 38.1, 160.9 , 0 );
setMoveKey( spep_3 + 8, 1, 38.3, 238.5 , 0 );
setMoveKey( spep_3 + 10, 1, 17.9, 249.5 , 0 );
setMoveKey( spep_3 + 12, 1, 22.9, 263.9 , 0 );
setMoveKey( spep_3 + 14, 1, 13.3, 258.3 , 0 );
setMoveKey( spep_3 + 16, 1, 12.9, 273.3 , 0 );
setMoveKey( spep_3 + 18, 1, -2.5, 269.4 , 0 );
setMoveKey( spep_3 + 20, 1, 7.3, 279.6 , 0 );
setMoveKey( spep_3 + 22, 1, 3.2, 274.2 , 0 );
setMoveKey( spep_3 + 24, 1, 7.1, 276.7 , 0 );
setMoveKey( spep_3 + 26, 1, -5, 263.3 , 0 );
setMoveKey( spep_3 + 28, 1, 7, 273.7 , 0 );
setMoveKey( spep_3 + 30, 1, 3, 268 , 0 );
setMoveKey( spep_3 + 32, 1, 6.9, 270.2 , 0 );
setMoveKey( spep_3 + 34, 1, 6.8, 268.2 , 0 );
setMoveKey( spep_3 + 36, 1, 2.7, 262.2 , 0 );
setMoveKey( spep_3 + 38, 1, 6.6, 263.9 , 0 );
setMoveKey( spep_3 + 40, 1, 6.5, 261.5 , 0 );
setMoveKey( spep_3 + 42, 1, 6.5, 259.1 , 0 );
setMoveKey( spep_3 + 44, 1, 6.3, 256.4 , 0 );
setMoveKey( spep_3 + 46, 1, 6.3, 253.6 , 0 );
setMoveKey( spep_3 + 48, 1, 6.1, 250.7 , 0 );
setMoveKey( spep_3 + 50, 1, 6.1, 247.7 , 0 );
setMoveKey( spep_3 + 52, 1, 5.9, 244.5 , 0 );
setMoveKey( spep_3 + 54, 1, 5.8, 241.2 , 0 );
setMoveKey( spep_3 + 56, 1, 5.7, 237.7 , 0 );
setMoveKey( spep_3 + 58, 1, 5.6, 234.1 , 0 );
setMoveKey( spep_3 + 60, 1, 5.5, 230.3 , 0 );
setMoveKey( spep_3 + 62, 1, 5.4, 226.4 , 0 );
setMoveKey( spep_3 + 64, 1, 5.2, 222.3 , 0 );
setMoveKey( spep_3 + 66, 1, 5.1, 218.1 , 0 );
setMoveKey( spep_3 + 68, 1, 5, 213.9 , 0 );

setScaleKey( spep_3 + 0, 1, 2.86, 2.86 );
setScaleKey( spep_3 + 2, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 4, 1, 2.21, 2.21 );
setScaleKey( spep_3 + 6, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 8, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 10, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 12, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 14, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 18, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 22, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 24, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 26, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 28, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 30, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 32, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 34, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 36, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 38, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 40, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 42, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 44, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 46, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 48, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 50, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 52, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 54, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 58, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 60, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 62, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 64, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 66, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 68, 1, 0.23, 0.23 );

setRotateKey( spep_3 + 0, 1, -13.5 );
setRotateKey( spep_3 + 2, 1, -13.3 );
setRotateKey( spep_3 + 4, 1, -13.2 );
setRotateKey( spep_3 + 6, 1, -13 );
setRotateKey( spep_3 + 8, 1, -12.7 );
setRotateKey( spep_3 + 10, 1, -11.9 );
setRotateKey( spep_3 + 12, 1, -11.2 );
setRotateKey( spep_3 + 14, 1, -10.6 );
setRotateKey( spep_3 + 16, 1, -10 );
setRotateKey( spep_3 + 18, 1, -9.6 );
setRotateKey( spep_3 + 20, 1, -9.3 );
setRotateKey( spep_3 + 38, 1, -9.3 );
setRotateKey( spep_3 + 40, 1, -9.4 );
setRotateKey( spep_3 + 60, 1, -9.4 );
setRotateKey( spep_3 + 62, 1, -9.5 );
setRotateKey( spep_3 + 68, 1, -9.5 );


-- 吹き飛ぶ エフェクト
hukitobu_b = entryEffectLife( spep_3,   SP_05, 70, 0x80, -1, 0, 0, 0);  --後ろ
setEffMoveKey( spep_3,hukitobu_b,  0,  0);
setEffMoveKey( spep_3 + 70,hukitobu_b,  0,  0);

setEffScaleKey( spep_3, hukitobu_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 70, hukitobu_b, 1.0, 1.0);

setEffAlphaKey( spep_3, hukitobu_b, 255);
setEffAlphaKey( spep_3 + 66, hukitobu_b, 255);
setEffAlphaKey( spep_3 + 67, hukitobu_b, 0);
setEffAlphaKey( spep_3 + 70, hukitobu_b, 0);

setEffRotateKey( spep_3, hukitobu_b, 0);
setEffRotateKey( spep_3 + 70, hukitobu_b, 0);


hukitobu = entryEffectLife( spep_3,   SP_04, 70, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_3,hukitobu,  0,  0);
setEffMoveKey( spep_3 + 70,hukitobu,  0,  0);

setEffScaleKey( spep_3, hukitobu, 1.0, 1.0);
setEffScaleKey( spep_3 + 70, hukitobu, 1.0, 1.0);

setEffAlphaKey( spep_3, hukitobu, 255);
setEffAlphaKey( spep_3 + 66, hukitobu, 255);
setEffAlphaKey( spep_3 + 67, hukitobu, 0);
setEffAlphaKey( spep_3 + 70, hukitobu, 0);

setEffRotateKey( spep_3, hukitobu, 0);
setEffRotateKey( spep_3 + 70, hukitobu, 0);


-- 書き文字　バゴォッ
ctbagooltu_1 = entryEffectLife( spep_3 + 0,  kaki_003, 24, 0x100, -1, 0, 113.4, 325.6 );

setEffShake( spep_3,  ctbagooltu_1,  24,  10);  --揺れ
setEffMoveKey( spep_3 + 0, ctbagooltu_1, 113.4, 325.6 , 0 );	-- シェイクじゃなくても動く？
setEffMoveKey( spep_3 + 2, ctbagooltu_1, 112.8, 325 , 0 );
setEffMoveKey( spep_3 + 4, ctbagooltu_1, 113.5, 325.4 , 0 );
setEffMoveKey( spep_3 + 6, ctbagooltu_1, 103.9, 350.7 , 0 );
setEffMoveKey( spep_3 + 8, ctbagooltu_1, 113.5, 325.5 , 0 );
setEffMoveKey( spep_3 + 10, ctbagooltu_1, 104.4, 349.7 , 0 );
setEffMoveKey( spep_3 + 12, ctbagooltu_1, 113.6, 325.6 , 0 );
setEffMoveKey( spep_3 + 14, ctbagooltu_1, 113.6, 325.7 , 0 );
setEffMoveKey( spep_3 + 16, ctbagooltu_1, 105.4, 347.6 , 0 );
setEffMoveKey( spep_3 + 18, ctbagooltu_1, 113.7, 325.7 , 0 );
setEffMoveKey( spep_3 + 20, ctbagooltu_1, 106.2, 345.6 , 0 );
setEffMoveKey( spep_3 + 22, ctbagooltu_1, 113.7, 325.8 , 0 );
setEffMoveKey( spep_3 + 24, ctbagooltu_1, 113.7, 325.9 , 0 );

setEffScaleKey( spep_3 + 0, ctbagooltu_1, 1.55, 1.55 );
setEffScaleKey( spep_3 + 2, ctbagooltu_1, 4.28, 4.28 );
setEffScaleKey( spep_3 + 4, ctbagooltu_1, 3.21, 3.21 );
setEffScaleKey( spep_3 + 6, ctbagooltu_1, 3.14, 3.14 );
setEffScaleKey( spep_3 + 8, ctbagooltu_1, 3.07, 3.07 );
setEffScaleKey( spep_3 + 10, ctbagooltu_1, 2.99, 2.99 );
setEffScaleKey( spep_3 + 12, ctbagooltu_1, 2.92, 2.92 );
setEffScaleKey( spep_3 + 14, ctbagooltu_1, 2.85, 2.85 );
setEffScaleKey( spep_3 + 16, ctbagooltu_1, 2.72, 2.72 );
setEffScaleKey( spep_3 + 18, ctbagooltu_1, 2.59, 2.59 );
setEffScaleKey( spep_3 + 20, ctbagooltu_1, 2.47, 2.47 );
setEffScaleKey( spep_3 + 22, ctbagooltu_1, 2.34, 2.34 );
setEffScaleKey( spep_3 + 24, ctbagooltu_1, 2.21, 2.21 );

setEffRotateKey( spep_3 + 0, ctbagooltu_1, 14.8 );
setEffRotateKey( spep_3 + 24, ctbagooltu_1, 14.8 );

setEffAlphaKey( spep_3 + 0, ctbagooltu_1, 255 );
setEffAlphaKey( spep_3 + 14, ctbagooltu_1, 255 );
setEffAlphaKey( spep_3 + 16, ctbagooltu_1, 204 );
setEffAlphaKey( spep_3 + 18, ctbagooltu_1, 153 );
setEffAlphaKey( spep_3 + 20, ctbagooltu_1, 102 );
setEffAlphaKey( spep_3 + 22, ctbagooltu_1, 51 );
setEffAlphaKey( spep_3 + 24, ctbagooltu_1, 0 );

--SE
playSe( spep_3 , 1011 );  --バゴォ音
playSe(  spep_3+4,  8);  --追いかける

-- ** 背景 ** --
entryFadeBg(  spep_3,  0,  70,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- カリフラが撃つエフェクト
------------------------------------------------------

spep_4 = spep_3 + 66 ;

--白フラッシュ
entryFade( spep_4, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- カリフラが撃つ エフェクト
karihurashot = entryEffectLife( spep_4,  SP_06, 80, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4,karihurashot,  0,  0);
setEffMoveKey( spep_4 + 80,karihurashot,  0,  0);

setEffScaleKey( spep_4, karihurashot, 1.0, 1.0);
setEffScaleKey( spep_4 + 80, karihurashot, 1.0, 1.0);

setEffAlphaKey( spep_4, karihurashot, 255);
setEffAlphaKey( spep_4 + 74, karihurashot, 255);
setEffAlphaKey( spep_4 + 75, karihurashot, 0);
setEffAlphaKey( spep_4 + 80, karihurashot, 0);

setEffRotateKey( spep_4, karihurashot, 0);
setEffRotateKey( spep_4 + 80, karihurashot, 0);

--白フラッシュ
entryFade( spep_4 + 24, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 書き文字　ズオッ　２
ctzuo_2 = entryEffectLife( spep_4 + 24,  kaki_001, 50, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_4 + 24, ctzuo_2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo_2, 105, 288.6 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo_2, 117.9, 330.1 , 0 );		--ここからシェイク
setEffMoveKey( spep_4 + 30, ctzuo_2, 153.7, 348.8 , 0 );		
setEffMoveKey( spep_4 + 74, ctzuo_2, 153.7, 348.8 , 0 );

setEffShake( spep_4 + 28 , ctzuo_2, 46, 25 );

setEffScaleKey( spep_4 + 24, ctzuo_2, 0.34, 0.34 );
setEffScaleKey( spep_4 + 26, ctzuo_2, 1.13, 1.13 );
setEffScaleKey( spep_4 + 28, ctzuo_2, 1.94, 1.94 );
setEffScaleKey( spep_4 + 30, ctzuo_2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 74, ctzuo_2, 2.73, 2.73 );

setEffRotateKey( spep_4 + 24, ctzuo_2, 27.2 );
setEffRotateKey( spep_4 + 74, ctzuo_2, 27.2 );

setEffAlphaKey( spep_4 + 24, ctzuo_2, 255 );
setEffAlphaKey( spep_4 + 74, ctzuo_2, 255 );

--SE
--playSe( spep_4 , 1021 );  --連弾のような見た目ですが、アニメの発射SEが尻上がりする1つのSEだったのでそれに倣っています	
--playSe( spep_4+2,  17);
--[[
playSe( spep_4+26,  1021);
playSe( spep_4+36,  1021);
playSe( spep_4+46,  1021);
playSe( spep_4+56,  1021);
playSe( spep_4+66,  1021);
]]

SE001 = playSe( spep_4+26,  1021);
setSeVolume(spep_4+26,1021,90);
stopSe(spep_4+41,SE001,5);
SE002 = playSe( spep_4+36,  1021);
setSeVolume(spep_4+36,1021,90);
stopSe(spep_4+51,SE002,5);
SE003 = playSe( spep_4+46,  1021);
setSeVolume(spep_4+46,1021,90);
stopSe(spep_4+61,SE003,5);
SE004 = playSe( spep_4+56,  1021);
setSeVolume(spep_4+56,1021,90);
stopSe(spep_4+71,SE004,5);
SE005 = playSe( spep_4+66,  1021);
setSeVolume(spep_4+66,1021,90);

-- ** 背景 ** --
entryFadeBg(  spep_4,  0,  80,  0,  0, 0, 0, 255 );  --黒背景

--  ** 白フェード **  --
entryFade(  spep_4,  0,  2,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- ケールが蹴るエフェクト
------------------------------------------------------

spep_5 = spep_4 + 74 ;

-- ケールが蹴る エフェクト
keerukeru_b = entryEffectLife( spep_5,  SP_08, 108, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_5,keerukeru_b,  0,  0);
setEffMoveKey( spep_5 + 110,keerukeru_b,  0,  0);

setEffScaleKey( spep_5, keerukeru_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 110, keerukeru_b, 1.0, 1.0);

setEffAlphaKey( spep_5, keerukeru_b, 255);
setEffAlphaKey( spep_5 + 106, keerukeru_b, 255);
setEffAlphaKey( spep_5 + 107, keerukeru_b, 0);
setEffAlphaKey( spep_5 + 108, keerukeru_b, 0);
setEffAlphaKey( spep_5 + 110, keerukeru_b, 0);

setEffRotateKey( spep_5, keerukeru_b, 0);
setEffRotateKey( spep_5 + 110, keerukeru_b, 0);


keerukeru = entryEffectLife( spep_5,  SP_07, 108, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5,keerukeru,  0,  0);
setEffMoveKey( spep_5 + 110,keerukeru,  0,  0);

setEffScaleKey( spep_5, keerukeru, 1.0, 1.0);
setEffScaleKey( spep_5 + 110, keerukeru, 1.0, 1.0);

setEffAlphaKey( spep_5, keerukeru, 255);
setEffAlphaKey( spep_5 + 105, keerukeru, 255);
setEffAlphaKey( spep_5 + 106, keerukeru, 0);
setEffAlphaKey( spep_5 + 108, keerukeru, 0);
setEffAlphaKey( spep_5 + 110, keerukeru, 0);


setEffRotateKey( spep_5, keerukeru, 0);
setEffRotateKey( spep_5 + 110, keerukeru, 0);

--白フラッシュ
entryFade( spep_5 + 44-a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 書き文字　バキッ
ctbakiltu_1 = entryEffectLife( spep_5 + 44 -a,  kaki_004, 26, 0x100, -1, 0, 102.6, 344.2 );
setEffMoveKey( spep_5 + 44 -a, ctbakiltu_1, 102.6, 344.2 , 0 );
setEffMoveKey( spep_5 + 46 -a, ctbakiltu_1, 95.7, 369.7 , 0 );
setEffMoveKey( spep_5 + 48 -a, ctbakiltu_1, 102.6, 344.2 , 0 );
setEffMoveKey( spep_5 + 50 -a, ctbakiltu_1, 102.7, 344.1 , 0 );		--ここからシェイク
setEffMoveKey( spep_5 + 70 -a, ctbakiltu_1, 102.8, 344.1 , 0 );

setEffShake( spep_5 + 52 -a , ctbakiltu_1, 18, 25 );

setEffScaleKey( spep_5 + 44 -a, ctbakiltu_1, 1.72, 1.72 );
setEffScaleKey( spep_5 + 46 -a, ctbakiltu_1, 3.1, 3.1 );
setEffScaleKey( spep_5 + 48 -a, ctbakiltu_1, 2.59, 2.59 );
setEffScaleKey( spep_5 + 50 -a, ctbakiltu_1, 2.08, 2.08 );
setEffScaleKey( spep_5 + 52 -a, ctbakiltu_1, 2.05, 2.05 );
setEffScaleKey( spep_5 + 54 -a, ctbakiltu_1, 2.02, 2.02 );
setEffScaleKey( spep_5 + 56 -a, ctbakiltu_1, 1.99, 1.99 );
setEffScaleKey( spep_5 + 58 -a, ctbakiltu_1, 1.95, 1.95 );
setEffScaleKey( spep_5 + 60 -a, ctbakiltu_1, 1.92, 1.92 );
setEffScaleKey( spep_5 + 62 -a, ctbakiltu_1, 1.89, 1.89 );
setEffScaleKey( spep_5 + 64 -a, ctbakiltu_1, 1.86, 1.86 );
setEffScaleKey( spep_5 + 66 -a, ctbakiltu_1, 1.87, 1.87 );
setEffScaleKey( spep_5 + 68 -a, ctbakiltu_1, 1.88, 1.88 );
setEffScaleKey( spep_5 + 70 -a, ctbakiltu_1, 1.89, 1.89 );

setEffRotateKey( spep_5 + 44 -a, ctbakiltu_1, 29.9 );
setEffRotateKey( spep_5 + 70 -a, ctbakiltu_1, 29.9 );

setEffAlphaKey( spep_5 + 44 -a, ctbakiltu_1, 255 );
setEffAlphaKey( spep_5 + 64 -a, ctbakiltu_1, 255 );
setEffAlphaKey( spep_5 + 66 -a, ctbakiltu_1, 174 );
setEffAlphaKey( spep_5 + 70 -a, ctbakiltu_1, 94 );
--setEffAlphaKey( spep_5 + 72, ctbakiltu_1, 13 );

-- ** 敵の動き **  --
setDisp( spep_5 - 2, 1, 1 );
--setDisp( spep_5 + 106, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5 + 44 -a,  1,  106);  --蹴り飛ばされる

setMoveKey( spep_5 -2, 1, -408.9, -279.3 , 0 );
setMoveKey( spep_5 + 0, 1, -408.9, -279.3 , 0 );
setMoveKey( spep_5 -a + 2, 1, -315.7, -209.8 , 0 );
setMoveKey( spep_5 -a + 4, 1, -223.7, -140.8 , 0 );
setMoveKey( spep_5 -a + 6, 1, -132.7, -72.3 , 0 );
setMoveKey( spep_5 -a + 8, 1, -43, -4.4 , 0 );
setMoveKey( spep_5 -a + 10, 1, 45.4, 62.8 , 0 );
setMoveKey( spep_5 -a + 12, 1, 41.4, 63.4 , 0 );
setMoveKey( spep_5 -a + 14, 1, 36.8, 63.7 , 0 );
setMoveKey( spep_5 -a + 16, 1, 31.4, 63.8 , 0 );
setMoveKey( spep_5 -a + 18, 1, 25.2, 63.7 , 0 );
setMoveKey( spep_5 -a + 20, 1, 18.3, 63.3 , 0 );
setMoveKey( spep_5 -a + 22, 1, 10.7, 62.7 , 0 );
setMoveKey( spep_5 -a + 24, 1, 2.4, 61.8 , 0 );
setMoveKey( spep_5 -a + 26, 1, -6.7, 60.7 , 0 );
setMoveKey( spep_5 -a + 28, 1, -16.6, 59.3 , 0 );
setMoveKey( spep_5 -a + 30, 1, -27.2, 57.7 , 0 );
setMoveKey( spep_5 -a + 32, 1, -38.6, 55.8 , 0 );
setMoveKey( spep_5 -a + 34, 1, -50.8, 53.7 , 0 );
setMoveKey( spep_5 -a + 36, 1, -63.7, 51.3 , 0 );
setMoveKey( spep_5 -a + 38, 1, -77.4, 48.6 , 0 );
setMoveKey( spep_5 -a + 40, 1, -91.9, 45.6 , 0 );
setMoveKey( spep_5 -a + 42, 1, -107.2, 42.4 , 0 );

setMoveKey( spep_5 -a  + 44, 1, -188.6, 82.8 , 0 );
setMoveKey( spep_5 -a  + 46, 1, -165.7, 91.6 , 0 );
setMoveKey( spep_5 -a  + 48, 1, -166.3, 78.5 , 0 );
setMoveKey( spep_5 -a  + 50, 1, -138.7, 75.6 , 0 );
setMoveKey( spep_5 -a  + 52, 1, -135, 54.9 , 0 );
setMoveKey( spep_5 -a  + 54, 1, -127.3, 68.7 , 0 );
setMoveKey( spep_5 -a  + 56, 1, -134.8, 59.3 , 0 );
setMoveKey( spep_5 -a  + 58, 1, -126.2, 65.9 , 0 );
setMoveKey( spep_5 -a  + 60, 1, -129.6, 60.5 , 0 );
setMoveKey( spep_5 -a  + 62, 1, -125, 63 , 0 );
setMoveKey( spep_5 -a  + 64, 1, -136.3, 57.5 , 0 );
setMoveKey( spep_5 -a  + 66, 1, -123.6, 60 , 0 );
setMoveKey( spep_5 -a  + 68, 1, -126.8, 54.5 , 0 );
setMoveKey( spep_5 -a  + 70, 1, -122, 56.9 , 0 );
setMoveKey( spep_5 -a  + 72, 1, -140.1 - 15, 53.3 , 0 );
setMoveKey( spep_5 -a  + 74, 1, -166.9 - 5, 63.3 , 0 );
setMoveKey( spep_5 -a  + 76, 1, -225.3 - 3, 74.7 , 0 );
setMoveKey( spep_5 -a  + 78, 1, -306.6, 91.4 , 0 );
setMoveKey( spep_5 -a  + 80, 1, -409.6, 113.1 , 0 );
setMoveKey( spep_5 -a  + 82, 1, -533.6, 139.7 , 0 );
setMoveKey( spep_5 -a  + 84, 1, -1677.4 + 1000, 170.8 , 0 );
setMoveKey( spep_5 -a  + 85, 1, -1677.4 + 920, 170.8 , 0 );
--setMoveKey( spep_5 -2  + 85, 1, -1677.4, 170.8 , 0 );
setMoveKey( spep_5 -a  + 86, 1, 190.8, 126.3 , 0 );
setMoveKey( spep_5 -a  + 88, 1, 178.1, 117.3 , 0 );
setMoveKey( spep_5 -a  + 90, 1, 165.2, 108 , 0 );
setMoveKey( spep_5 -a  + 92, 1, 151.9, 98.6 , 0 );
setMoveKey( spep_5 -a  + 94, 1, 138.3, 88.9 , 0 );
setMoveKey( spep_5 -a  + 96, 1, 124.3, 79 , 0 );
setMoveKey( spep_5 -a  + 98, 1, 110.1, 68.8 , 0 );
setMoveKey( spep_5 -a  + 100, 1, 95.5, 58.5 , 0 );
setMoveKey( spep_5 -a  + 102, 1, 80.7, 47.9 , 0 );
setMoveKey( spep_5 -a  + 104, 1, 65.5, 37.1 , 0 );
setMoveKey( spep_5 -a  + 106, 1, 49.9, 26 , 0 );
setMoveKey( spep_5 -a  + 107, 1, 34.1, 14.8 , 0 );
setMoveKey( spep_5 -a  + 108, 1, 34.1, 14.8 , 0 );
--setMoveKey( spep_5 -a  + 108, 1, 34.1, 14.8 , 0 );
--setMoveKey( spep_5   + 106, 1, 34.1, 14.8 , 0 );

setScaleKey( spep_5 -2, 1, 4.43, 4.43 );
setScaleKey( spep_5 + 0, 1, 4.43, 4.43 );
setScaleKey( spep_5 -a + 2, 1, 3.92, 3.92 );
setScaleKey( spep_5 -a + 4, 1, 3.4, 3.4 );
setScaleKey( spep_5 -a + 6, 1, 2.89, 2.89 );
setScaleKey( spep_5 -a + 8, 1, 2.38, 2.38 );
setScaleKey( spep_5 -a + 10, 1, 1.87, 1.87 );
setScaleKey( spep_5 -a + 12, 1, 1.84, 1.84 );
setScaleKey( spep_5 -a + 14, 1, 1.81, 1.81 );
setScaleKey( spep_5 -a + 16, 1, 1.78, 1.78 );
setScaleKey( spep_5 -a + 18, 1, 1.75, 1.75 );
setScaleKey( spep_5 -a + 20, 1, 1.72, 1.72 );
setScaleKey( spep_5 -a + 22, 1, 1.69, 1.69 );
setScaleKey( spep_5 -a + 24, 1, 1.66, 1.66 );
setScaleKey( spep_5 -a + 26, 1, 1.63, 1.63 );
setScaleKey( spep_5 -a + 28, 1, 1.6, 1.6 );
setScaleKey( spep_5 -a + 30, 1, 1.57, 1.57 );
setScaleKey( spep_5 -a + 32, 1, 1.54, 1.54 );
setScaleKey( spep_5 -a + 34, 1, 1.51, 1.51 );
setScaleKey( spep_5 -a + 36, 1, 1.48, 1.48 );
setScaleKey( spep_5 -a + 38, 1, 1.45, 1.45 );
setScaleKey( spep_5 -a + 40, 1, 1.42, 1.42 );
setScaleKey( spep_5 -a + 42, 1, 1.39, 1.39 );
setScaleKey( spep_5 -a + 43, 1, 1.39, 1.39 );
setScaleKey( spep_5 -a  + 44, 1, 2.5, 2.5 );
setScaleKey( spep_5 -a  + 46, 1, 2.26, 2.26 );
setScaleKey( spep_5 -a  + 48, 1, 2.06, 2.06 );
setScaleKey( spep_5 -a  + 50, 1, 1.91, 1.91 );
setScaleKey( spep_5 -a  + 52, 1, 1.8, 1.8 );
setScaleKey( spep_5 -a  + 54, 1, 1.74, 1.74 );
setScaleKey( spep_5 -a  + 56, 1, 1.73, 1.73 );
setScaleKey( spep_5 -a  + 58, 1, 1.71, 1.71 );
setScaleKey( spep_5 -a  + 60, 1, 1.7, 1.7 );
setScaleKey( spep_5 -a  + 62, 1, 1.69, 1.69 );
setScaleKey( spep_5 -a  + 64, 1, 1.67, 1.67 );
setScaleKey( spep_5 -a  + 66, 1, 1.66, 1.66 );
setScaleKey( spep_5 -a  + 68, 1, 1.64, 1.64 );
setScaleKey( spep_5 -a  + 70, 1, 1.63, 1.63 );
setScaleKey( spep_5 -a  + 72, 1, 1.7 + 0.2, 1.7 + 0.2 );
setScaleKey( spep_5 -a  + 74, 1, 1.95, 1.95 );
setScaleKey( spep_5 -a  + 76, 1, 2.38, 2.38 );
setScaleKey( spep_5 -a  + 78, 1, 2.98, 2.98 );
setScaleKey( spep_5 -a  + 80, 1, 3.74, 3.74 );
setScaleKey( spep_5 -a  + 82, 1, 4.65, 4.65 );
setScaleKey( spep_5 -a  + 84, 1, 5.72, 5.72 );
setScaleKey( spep_5 -2  + 85, 1, 0.18, 0.18 );
setScaleKey( spep_5 -1  + 85, 1, 0.18, 0.18 );
setScaleKey( spep_5 -a  + 86, 1, 0.18, 0.18 );
setScaleKey( spep_5 -a  + 88, 1, 0.19, 0.19 );
setScaleKey( spep_5 -a  + 90, 1, 0.19, 0.19 );
setScaleKey( spep_5 -a  + 91, 1, 0.19, 0.19 );
setScaleKey( spep_5 -a  + 92, 1, 0.2, 0.2 );
setScaleKey( spep_5 -a  + 94, 1, 0.2, 0.2 );
setScaleKey( spep_5 -a  + 96, 1, 0.21, 0.21 );
setScaleKey( spep_5 -a  + 98, 1, 0.21, 0.21 );
setScaleKey( spep_5 -a  + 100, 1, 0.22, 0.22 );
setScaleKey( spep_5 -a  + 102, 1, 0.22, 0.22 );
setScaleKey( spep_5 -a  + 104, 1, 0.23, 0.23 );
setScaleKey( spep_5 -a  + 107, 1, 0.23, 0.23 );
setScaleKey( spep_5 -a  + 108, 1, 0.23, 0.23 );
--setScaleKey( spep_5 -a  + 108, 1, 0.23, 0.23 );
--setScaleKey( spep_5   + 106, 1, 0.23, 0.23 );

setRotateKey( spep_5 -2, 1, -10 );
setRotateKey( spep_5 + 0, 1, -10 );
setRotateKey( spep_5 -a + 2, 1, -9.9 );
setRotateKey( spep_5 -a + 6, 1, -9.9 );
setRotateKey( spep_5 -a + 8, 1, -9.8 );
setRotateKey( spep_5 -a + 20, 1, -9.8 );
setRotateKey( spep_5 -a + 22, 1, -9.9 );
setRotateKey( spep_5 -a + 38, 1, -9.9 );
setRotateKey( spep_5 -a + 40, 1, -10 );
setRotateKey( spep_5 -a + 42, 1, -10 );
setRotateKey( spep_5 -a + 43, 1, -10 );
setRotateKey( spep_5 -a  + 44, 1, -66 );
setRotateKey( spep_5 -a  + 46, 1, -66.2 );
setRotateKey( spep_5 -a  + 48, 1, -66.4 );
setRotateKey( spep_5 -a  + 50, 1, -66.6 );
setRotateKey( spep_5 -a  + 52, 1, -66.8 );
setRotateKey( spep_5 -a  + 54, 1, -66.9 );
setRotateKey( spep_5 -a  + 56, 1, -67.1 );
setRotateKey( spep_5 -a  + 58, 1, -67.3 );
setRotateKey( spep_5 -a  + 60, 1, -67.5 );
setRotateKey( spep_5 -a  + 62, 1, -67.7 );
setRotateKey( spep_5 -a  + 64, 1, -67.9 );
setRotateKey( spep_5 -a  + 66, 1, -68.1 );
setRotateKey( spep_5 -a  + 68, 1, -68.3 );
setRotateKey( spep_5 -a  + 70, 1, -68.5 );
setRotateKey( spep_5 -a  + 84, 1, -68.5 );
setRotateKey( spep_5 -a  + 86, 1, -80 );
setRotateKey( spep_5 -a  + 88, 1, -81.1 );
setRotateKey( spep_5 -a  + 90, 1, -82.3 );
setRotateKey( spep_5 -a  + 92, 1, -83.4 );
setRotateKey( spep_5 -a  + 94, 1, -84.6 );
setRotateKey( spep_5 -a  + 96, 1, -85.7 );
setRotateKey( spep_5 -a  + 98, 1, -86.8 );
setRotateKey( spep_5 -a  + 100, 1, -88 );
setRotateKey( spep_5 -a  + 102, 1, -89.1 );
setRotateKey( spep_5 -a  + 104, 1, -90.2 );
setRotateKey( spep_5 -a  + 106, 1, -91.4 );
setRotateKey( spep_5 -a  + 107, 1, -91.4 );
setRotateKey( spep_5 -a  + 108, 1, -91.4 );
--setRotateKey( spep_5 -a  + 108, 1, -92.5 );
--setRotateKey( spep_5   + 106, 1, -92.5 );

--SE
playSe( spep_5 + 44 , 1002 );  --バキッ

--SE
playSe( spep_5 + 86 , 1022 );  --気弾が伸びる音

-- ** 背景 ** --
entryFadeBg(  spep_5,  0,  110,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- 気弾
------------------------------------------------------
spep_6 = spep_5 + 106 ;

-- ** 敵の動き ** --
--setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 26, 1, 0 );
changeAnime( spep_6 + 0, 1, 106);

setMoveKey( spep_6 + 0, 1, 122.8, 109 , 0 );
setMoveKey( spep_6 + 2, 1, 122.6, 110.6 , 0 );
setMoveKey( spep_6 + 4, 1, 121, 112 , 0 );
setMoveKey( spep_6 + 6, 1, 118, 113.3 , 0 );
setMoveKey( spep_6 + 8, 1, 113.5, 114.4 , 0 );
setMoveKey( spep_6 + 10, 1, 107.5, 115.4 , 0 );
setMoveKey( spep_6 + 12, 1, 99.9, 116.3 , 0 );
setMoveKey( spep_6 + 14, 1, 90.6, 117 , 0 );
setMoveKey( spep_6 + 16, 1, 79.6, 117.5 , 0 );
setMoveKey( spep_6 + 18, 1, 66.8, 118 , 0 );
setMoveKey( spep_6 + 20, 1, 52.2, 118.3 , 0 );
setMoveKey( spep_6 + 22, 1, 35.6, 118.4 , 0 );
setMoveKey( spep_6 + 24, 1, 17.1, 118.5 , 0 );
setMoveKey( spep_6 + 26, 1, -3.5, 118.4 , 0 );
setMoveKey( spep_6 + 28, 1, -26.2, 118.2 , 0 );

setScaleKey( spep_6 + 0, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 2, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_6 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 8, 1, 0.88, 0.88 );
setScaleKey( spep_6 + 10, 1, 1.02, 1.02 );
setScaleKey( spep_6 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_6 + 14, 1, 1.37, 1.37 );
setScaleKey( spep_6 + 16, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 20, 1, 2.1, 2.1 );
setScaleKey( spep_6 + 22, 1, 2.4, 2.4 );
setScaleKey( spep_6 + 24, 1, 2.74, 2.74 );
setScaleKey( spep_6 + 26, 1, 3.11, 3.11 );
setScaleKey( spep_6 + 28, 1, 3.51, 3.51 );

setRotateKey( spep_6 + 0, 1, -61.3 );
setRotateKey( spep_6 + 2, 1, -61.4 );
setRotateKey( spep_6 + 4, 1, -61.5 );
setRotateKey( spep_6 + 6, 1, -61.8 );
setRotateKey( spep_6 + 8, 1, -62.1 );
setRotateKey( spep_6 + 10, 1, -62.4 );
setRotateKey( spep_6 + 12, 1, -62.8 );
setRotateKey( spep_6 + 14, 1, -63.3 );
setRotateKey( spep_6 + 16, 1, -63.8 );
setRotateKey( spep_6 + 18, 1, -64.4 );
setRotateKey( spep_6 + 20, 1, -65 );
setRotateKey( spep_6 + 22, 1, -65.7 );
setRotateKey( spep_6 + 24, 1, -66.5 );
setRotateKey( spep_6 + 26, 1, -67.3 );
setRotateKey( spep_6 + 28, 1, -68.2 );

semaru_b = entryEffect( spep_6,  SP_10,  0x80, -1, 0, 0, 0);
setEffMoveKey(  spep_6,  semaru_b,  0,  0,  0);
setEffMoveKey(  spep_6+30,  semaru_b,  0,  0,  0);
setEffScaleKey(  spep_6,  semaru_b,  1.0,  1.0);
setEffScaleKey(  spep_6+30,  semaru_b,  1.0,  1.0);
setEffRotateKey(  spep_6,  semaru_b,  0);
setEffRotateKey(  spep_6+30,  semaru_b,  0);
setEffAlphaKey(  spep_6,  semaru_b,  255);
setEffAlphaKey(  spep_6+26,  semaru_b,  255);
setEffAlphaKey(  spep_6+27,  semaru_b,  0);
setEffAlphaKey(  spep_6+30,  semaru_b,  0);

semaru = entryEffect( spep_6,  SP_09,  0x100, -1, 0, 0, 0);

setEffMoveKey(  spep_6,  semaru,  0,  0,  0);
setEffMoveKey(  spep_6+30,  semaru,  0,  0,  0);
setEffScaleKey(  spep_6,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_6+30,  semaru,  1.0,  1.0);
setEffRotateKey(  spep_6,  semaru,  0);
setEffRotateKey(  spep_6+30,  semaru,  0);
setEffAlphaKey(  spep_6,  semaru,  255);
setEffAlphaKey(  spep_6+26,  semaru,  255);
setEffAlphaKey(  spep_6+27,  semaru,  0);
setEffAlphaKey(  spep_6+30,  semaru,  0);

-- ** 背景 ** --
entryFadeBg(  spep_6,  0,  30,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
spep_7 = spep_6 + 26 ;

-- フィニッシュ エフェクト
finisheff = entryEffect( spep_7,  SP_11, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_7,finisheff,  0,  0);
setEffMoveKey( spep_7 + 160,finisheff,  0,  0);

setEffScaleKey( spep_7, finisheff, 1.0, 1.0);
setEffScaleKey( spep_7 + 160, finisheff, 1.0, 1.0);

setEffAlphaKey( spep_7, finisheff, 255);
setEffAlphaKey( spep_7 + 160, finisheff, 255);

setEffRotateKey( spep_7, finisheff, 0);
setEffRotateKey( spep_7 + 160, finisheff, 0);

--白フラッシュ
entryFade( spep_7 + 30, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

--SE
playSe( spep_7 + 30 , 1024 );  --爆発音

-- ** 背景 ** --
entryFadeBg(  spep_7,  0,  200,  0,  0, 0, 0, 255 );  --黒背景

dealDamage( spep_7 + 30);
endPhase( spep_7 + 130 );
else






---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


--敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     


---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


------------------------------------------------------
-- 二人がカメラに迫るエフェクト	
------------------------------------------------------

spep_0 = 0 ;

-- 敵の動き
setDisp( spep_0, 1, 0 );

-- 構え エフェクト
hutarisemaru = entryEffectLife( spep_0,  SP_01, 160, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_0,hutarisemaru,  0,  0);
setEffMoveKey( spep_0 + 160,hutarisemaru,  0,  0);

setEffScaleKey( spep_0, hutarisemaru, -1.0, 1.0);
setEffScaleKey( spep_0 + 160, hutarisemaru, -1.0, 1.0);

setEffAlphaKey( spep_0, hutarisemaru, 255);
setEffAlphaKey( spep_0 + 160, hutarisemaru, 255);

setEffRotateKey( spep_0, hutarisemaru, 0);
setEffRotateKey( spep_0 + 160, hutarisemaru, 0);

-- 集中線
shuchusen = entryEffectLife( spep_0 ,  906, 160, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 , shuchusen, 160, 25 );

setEffMoveKey( spep_0 , shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 , shuchusen, 1.4, 1.4 );
setEffScaleKey( spep_0 + 160, shuchusen, 1.4, 1.4 );
setEffRotateKey( spep_0 , shuchusen, 0 );
setEffRotateKey( spep_0 + 160, shuchusen, 0 );
setEffAlphaKey( spep_0 , shuchusen, 255 );
setEffAlphaKey( spep_0 + 160, shuchusen, 255 );

-- 書き文字　ズオッ
ctzuo_1 = entryEffectLife( spep_0 + 0,  kaki_001, 40, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_0 + 0, ctzuo_1, -78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo_1, -105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo_1, -117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo_1, -153.7, 348.8 , 0 );	
setEffMoveKey( spep_0 + 8, ctzuo_1, -137.7, 364.8 , 0 );		--ここからシェイク
setEffMoveKey( spep_0 + 32, ctzuo_1, -137.7, 364.8 , 0 );	--ここまでシェイク
setEffMoveKey( spep_0 + 34, ctzuo_1, -167.1, 345 , 0 );
setEffMoveKey( spep_0 + 36, ctzuo_1, -153.1, 368.5 , 0 );
setEffMoveKey( spep_0 + 38, ctzuo_1, -193.8, 337.2 , 0 );
setEffMoveKey( spep_0 + 40, ctzuo_1, -207.3, 333.2 , 0 );

setEffShake( spep_0 + 8 , ctzuo_1, 24, 25 );

setEffScaleKey( spep_0 + 0, ctzuo_1, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctzuo_1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctzuo_1, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctzuo_1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 32, ctzuo_1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 34, ctzuo_1, 3.68, 3.68 );
setEffScaleKey( spep_0 + 36, ctzuo_1, 4.67, 4.67 );
setEffScaleKey( spep_0 + 38, ctzuo_1, 5.63, 5.63 );
setEffScaleKey( spep_0 + 40, ctzuo_1, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ctzuo_1, -27.2 );
setEffRotateKey( spep_0 + 40, ctzuo_1, -27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo_1, 255 );
setEffAlphaKey( spep_0 + 32, ctzuo_1, 255 );
setEffAlphaKey( spep_0 + 34, ctzuo_1, 191 );
setEffAlphaKey( spep_0 + 36, ctzuo_1, 128 );
setEffAlphaKey( spep_0 + 38, ctzuo_1, 64 );
setEffAlphaKey( spep_0 + 40, ctzuo_1, 0 );

-- **  顔カットイン　** --
--speff = entryEffect( spep_0 + 28, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 28, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 40,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 40, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 40, ctgogo, 0,  520, 0  );
setEffMoveKey( spep_0 + 40 + 72, ctgogo, 0,  520, 0  );	

setEffScaleKey( spep_0 + 40, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 40 + 64, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 40 + 66, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 40 + 68, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 40 + 70, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 40 + 72, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 40, ctgogo, 0 );
setEffRotateKey( spep_0 + 40 + 72, ctgogo, 0 );

setEffAlphaKey( spep_0 + 40, ctgogo, 0 );
setEffAlphaKey( spep_0 + 40 + 1, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40 + 2, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40 + 72, ctgogo, 255 );

--SE
seID0 = playSe( spep_0 , 9 );  --突進音

--SE
playSe( spep_0 + 40 , SE_04 );  --ゴゴゴ

-- ** 背景 ** --
entryFadeBg(  spep_0,  0,  160,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 148; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, seID0, 0 );

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
-- カードカットイン
------------------------------------------------------

spep_1 = spep_0 + 160 ;

--白フラッシュ
entryFade( spep_1-10, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_1,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen2,  0);
setEffRotateKey(  spep_1+90,  shuchusen2,  0);
setEffAlphaKey(  spep_1,  shuchusen2,  255);
setEffAlphaKey(  spep_1+90,  shuchusen2,  255);

entryFade(  spep_1 + 78,  10,  6,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

-- ** 背景 ** --
entryFadeBg(  spep_1,  0,  90,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- ラッシュエフェクト
------------------------------------------------------

spep_2 = spep_1 + 90 ;

-- ラッシュ エフェクト
rusheff_b = entryEffectLife( spep_2,  SP_03, 200, 0x80, -1, 0, 0, 0);  --後ろ
setEffMoveKey( spep_2,rusheff_b,  0,  0);
setEffMoveKey( spep_2 + 200,rusheff_b,  0,  0);

setEffScaleKey( spep_2, rusheff_b, -1.0, 1.0);
setEffScaleKey( spep_2 + 200, rusheff_b, -1.0, 1.0);

setEffAlphaKey( spep_2, rusheff_b, 255);
setEffAlphaKey( spep_2 + 196, rusheff_b, 255);
setEffAlphaKey( spep_2 + 197, rusheff_b, 0);
setEffAlphaKey( spep_2 + 200, rusheff_b, 0);

setEffRotateKey( spep_2, rusheff_b, 0);
setEffRotateKey( spep_2 + 200, rusheff_b, 0);


rusheff = entryEffectLife( spep_2,  SP_02, 200, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_2,rusheff,  0,  0);
setEffMoveKey( spep_2 + 200,rusheff,  0,  0);

setEffScaleKey( spep_2, rusheff, -1.0, 1.0);
setEffScaleKey( spep_2 + 200, rusheff, -1.0, 1.0);

setEffAlphaKey( spep_2, rusheff, 255);
setEffAlphaKey( spep_2 + 196, rusheff, 255);
setEffAlphaKey( spep_2 + 197, rusheff, 0);
setEffAlphaKey( spep_2 + 200, rusheff, 0);

setEffRotateKey( spep_2, rusheff, 0);
setEffRotateKey( spep_2 + 200, rusheff, 0);

-- 集中線
shuchusen3 = entryEffectLife( spep_2 ,  906, 196, 0x80, -1, 0, 0, 0 ); 
setEffShake( spep_2 , shuchusen3, 200, 25 );

setEffMoveKey( spep_2 , shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 , shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_2 + 196, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_2 , shuchusen3, 0 );
setEffRotateKey( spep_2 + 196, shuchusen3, 0 );

setEffAlphaKey( spep_2 , shuchusen3, 255 );
setEffAlphaKey( spep_2 + 196, shuchusen3, 255 );

-- 書き文字　ドガガガッ
ctdogagagaltu_1 = entryEffectLife( spep_2 + 2,  kaki_002, 124, 0x100, -1, 0, 7.7, 432.2 );
setEffMoveKey( spep_2 + 2, ctdogagagaltu_1, 7.7, 432.2 , 0 );
setEffMoveKey( spep_2 + 4, ctdogagagaltu_1, 7.5, 432.6 , 0 );
setEffMoveKey( spep_2 + 6, ctdogagagaltu_1, -2.4, 439.3 , 0 );
setEffMoveKey( spep_2 + 8, ctdogagagaltu_1, 7.6, 432.4 , 0 );
setEffMoveKey( spep_2 + 10, ctdogagagaltu_1, -1.3, 438.4 , 0 );
setEffMoveKey( spep_2 + 12, ctdogagagaltu_1, 7.7, 432.2 , 0 );	-- ここからシェイク
setEffMoveKey( spep_2 + 124, ctdogagagaltu_1, 7.7, 432.2 , 0 );
setEffMoveKey( spep_2 + 126, ctdogagagaltu_1, 7.7, 432.2 , 0 );

setEffShake( spep_2 + 12 , ctdogagagaltu_1, 112, 25 );

setEffScaleKey( spep_2 + 2, ctdogagagaltu_1, 2.47, 2.47 );
setEffScaleKey( spep_2 + 4, ctdogagagaltu_1, 3.25, 3.25 );
setEffScaleKey( spep_2 + 6, ctdogagagaltu_1, 3.1, 3.1 );
setEffScaleKey( spep_2 + 8, ctdogagagaltu_1, 2.95, 2.95 );
setEffScaleKey( spep_2 + 10, ctdogagagaltu_1, 2.79, 2.79 );
setEffScaleKey( spep_2 + 12, ctdogagagaltu_1, 2.64, 2.64 );
setEffScaleKey( spep_2 + 126, ctdogagagaltu_1, 2.64, 2.64 );

setEffRotateKey( spep_2 + 2, ctdogagagaltu_1, 0.1 );
setEffRotateKey( spep_2 + 126, ctdogagagaltu_1, 0.1 );

setEffAlphaKey( spep_2 + 2, ctdogagagaltu_1, 255 );
setEffAlphaKey( spep_2 + 114, ctdogagagaltu_1, 255 );
setEffAlphaKey( spep_2 + 116, ctdogagagaltu_1, 213 );
setEffAlphaKey( spep_2 + 118, ctdogagagaltu_1, 170 );
setEffAlphaKey( spep_2 + 120, ctdogagagaltu_1, 128 );
setEffAlphaKey( spep_2 + 122, ctdogagagaltu_1, 85 );
setEffAlphaKey( spep_2 + 124, ctdogagagaltu_1, 42 );
setEffAlphaKey( spep_2 + 126, ctdogagagaltu_1, 0 );

a = 3
-- 敵の動き
setDisp( spep_2 + 1, 1, 1 );
setDisp( spep_2 + 170, 1, 0 );
changeAnime( spep_2 + 1, 1, 4 );
changeAnime( spep_2 -a + 2, 1, 8 );
changeAnime( spep_2 -a + 6, 1, 6);
changeAnime( spep_2 -a + 12, 1, 8 );
changeAnime( spep_2 -a + 18, 1, 4 );
changeAnime( spep_2 -a + 22, 1, 8 );
changeAnime( spep_2 -a + 26, 1, 6);
changeAnime( spep_2 -a + 34, 1, 8 );
changeAnime( spep_2 -a + 48, 1, 6);
changeAnime( spep_2 -a + 52, 1, 8 );
changeAnime( spep_2 -a + 58, 1, 4 );
changeAnime( spep_2 -a + 64, 1, 8 );
changeAnime( spep_2 -a + 74, 1, 6);
changeAnime( spep_2 -a + 82, 1, 8 );
changeAnime( spep_2 -a + 104, 1, 6);

setMoveKey( spep_2 + 1, 1, -117.8, 30 , 0 );
setMoveKey( spep_2 -a + 2, 1, -146.5, 46.5 , 0 );
setMoveKey( spep_2 -a + 5, 1, -154.6, 47.8 , 0 );
setMoveKey( spep_2 -a + 6, 1, -96.9, 81.8 , 0 );
setMoveKey( spep_2 -a + 8, 1, -104.3, 84.1 , 0 );
setMoveKey( spep_2 -a + 11, 1, -111.7, 86.5 , 0 );
setMoveKey( spep_2 -a + 12, 1, -148.8, 67.8 , 0 );
setMoveKey( spep_2 -a + 14, 1, -156.6, 72.9 , 0 );
setMoveKey( spep_2 -a + 17, 1, -164.8, 74.4 , 0 );
setMoveKey( spep_2 -a + 18, 1, -151.9, 61.8 , 0 );
setMoveKey( spep_2 -a + 21, 1, -159.6, 73.3 , 0 );
setMoveKey( spep_2 -a + 22, 1, -188.5, 105 , 0 );
setMoveKey( spep_2 -a + 25, 1, -189.4, 105.8 , 0 );
setMoveKey( spep_2 -a + 26, 1, -128.8, 133.8 , 0 );
setMoveKey( spep_2 -a + 28, 1, -131.5, 134.8 , 0 );
setMoveKey( spep_2 -a + 30, 1, -134.2, 135.9 , 0 );
setMoveKey( spep_2 -a + 33, 1, -137, 136.9 , 0 );
setMoveKey( spep_2 -a + 34, 1, -141.6, 65.4 , 0 );
setMoveKey( spep_2 -a + 36, 1, -149.1, 74.5 , 0 );
setMoveKey( spep_2 -a + 38, 1, -153.2, 79.3 , 0 );
setMoveKey( spep_2 -a + 40, 1, -157.6, 82.4 , 0 );
setMoveKey( spep_2 -a + 42, 1, -167.5, 88 , 0 );
setMoveKey( spep_2 -a + 44, 1, -168.3, 88.7 , 0 );
setMoveKey( spep_2 -a + 47, 1, -169.2, 89.4 , 0 );
setMoveKey( spep_2 -a + 48, 1, -84.2, 65.7 , 0 );
setMoveKey( spep_2 -a + 51, 1, -87.3, 45.5 , 0 );
setMoveKey( spep_2 -a + 52, 1, -171.7, 91.5 , 0 );
setMoveKey( spep_2 -a + 54, 1, -174.2, 94.3 , 0 );
setMoveKey( spep_2 -a + 57, 1, -178.7, 97.4 , 0 );
setMoveKey( spep_2 -a + 58, 1, -164.2, 73.9 , 0 );
setMoveKey( spep_2 -a + 60, 1, -167, 74.8 , 0 );
setMoveKey( spep_2 -a + 63, 1, -169.8, 75.7 , 0 );
setMoveKey( spep_2 -a + 64, 1, -162.8, 68.1 , 0 );
setMoveKey( spep_2 -a + 66, 1, -165.5, 71.1 , 0 );
setMoveKey( spep_2 -a + 68, 1, -170.3, 74.4 , 0 );
setMoveKey( spep_2 -a + 70, 1, -175.1, 77.7 , 0 );
setMoveKey( spep_2 -a + 73, 1, -177.8, 80.8 , 0 );
setMoveKey( spep_2 -a + 74, 1, -122.4, 116.2 , 0 );
setMoveKey( spep_2 -a + 76, 1, -126.8, 121.7 , 0 );
setMoveKey( spep_2 -a + 78, 1, -133.1, 129.7 , 0 );
setMoveKey( spep_2 -a + 81, 1, -135.4, 135.1 , 0 );
setMoveKey( spep_2 -a + 82, 1, -172.7, 120.2 , 0 );
setMoveKey( spep_2 -a + 84, 1, -180.9, 115.2 , 0 );
setMoveKey( spep_2 -a + 86, 1, -182.9, 107.2 , 0 );
setMoveKey( spep_2 -a + 88, 1, -206.7, 102 , 0 );
setMoveKey( spep_2 -a + 90, 1, -214.2, 103.6 , 0 );
setMoveKey( spep_2 -a + 92, 1, -219.2, 107.1 , 0 );
setMoveKey( spep_2 -a + 94, 1, -222.3, 108.1 , 0 );
setMoveKey( spep_2 -a + 96, 1, -225.4, 109.1 , 0 );
setMoveKey( spep_2 -a + 98, 1, -228.5, 110.2 , 0 );
setMoveKey( spep_2 -a + 100, 1, -231.3, 113.4 , 0 );
setMoveKey( spep_2 -a + 103, 1, -238.9, 115.1 , 0 );
setMoveKey( spep_2 -a + 104, 1, -149.1, 137.8 , 0 );
setMoveKey( spep_2 -a + 106, 1, -154.3, 189.3 , 0 );
setMoveKey( spep_2 -a + 108, 1, -157.9, 202 , 0 );
setMoveKey( spep_2 -a + 110, 1, -164.1, 212.9 , 0 );
setMoveKey( spep_2 -a + 112, 1, -166.4, 218.7 , 0 );
setMoveKey( spep_2 -a + 114, 1, -169, 222.2 , 0 );
setMoveKey( spep_2 -a + 116, 1, -170.1, 223.7 , 0 );
setMoveKey( spep_2 -a + 118, 1, -171.2, 225.2 , 0 );
setMoveKey( spep_2 -a + 120, 1, -171.9, 226.2 , 0 );
setMoveKey( spep_2 -a + 122, 1, -173.9, 227.7 , 0 );
setMoveKey( spep_2 -a + 124, 1, -176.1, 229.3 , 0 );
setMoveKey( spep_2 -a + 126, 1, -178.5, 231 , 0 );
setMoveKey( spep_2 -a + 128, 1, -181.1, 232.9 , 0 );
setMoveKey( spep_2 -a + 130, 1, -183.9, 234.9 , 0 );
setMoveKey( spep_2 -a + 132, 1, -186.9, 237.1 , 0 );
setMoveKey( spep_2 -a + 134, 1, -190.1, 239.4 , 0 );
setMoveKey( spep_2 -a + 136, 1, -193.5, 241.8 , 0 );
setMoveKey( spep_2 -a + 138, 1, -197.1, 244.4 , 0 );
setMoveKey( spep_2 -a + 140, 1, -200.9, 247.1 , 0 );
setMoveKey( spep_2 -a + 142, 1, -204.9, 249.9 , 0 );
setMoveKey( spep_2 -a + 144, 1, -209.1, 252.9 , 0 );
setMoveKey( spep_2 -a + 146, 1, -213.5, 256.1 , 0 );
setMoveKey( spep_2 -a + 148, 1, -218.1, 259.4 , 0 );
setMoveKey( spep_2 -a + 150, 1, -222.9, 262.8 , 0 );
setMoveKey( spep_2 -a + 152, 1, -228, 266.4 , 0 );
setMoveKey( spep_2 -a + 154, 1, -233.2, 270.2 , 0 );
setMoveKey( spep_2 -a + 156, 1, -238.6, 274.1 , 0 );
setMoveKey( spep_2 -a + 158, 1, -244.3, 278.1 , 0 );
setMoveKey( spep_2 -a + 160, 1, -250.1, 282.4 , 0 );
setMoveKey( spep_2 -a + 162, 1, -256.2, 286.8 , 0 );
setMoveKey( spep_2 -a + 164, 1, -262.4, 291.3 , 0 );
setMoveKey( spep_2 -a + 166, 1, -268.9, 296.1 , 0 );
setMoveKey( spep_2 -a + 168, 1, -275.6, 301 , 0 );
setMoveKey( spep_2 -a + 170, 1, -282.5, 306 , 0 );

setScaleKey( spep_2 + 1, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a + 2, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a + 5, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a + 6, 1, 1.43, 1.43 );
setScaleKey( spep_2 -a + 8, 1, 1.43, 1.43 );
setScaleKey( spep_2 -a + 11, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a + 12, 1, 1.46, 1.46 );
setScaleKey( spep_2 -a + 14, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a + 17, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a + 18, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 21, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 22, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a + 25, 1, 1.49, 1.49 );
setScaleKey( spep_2 -a + 26, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a + 28, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a + 30, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a + 33, 1, 1.49, 1.49 );
setScaleKey( spep_2 -a + 34, 1, 1.51, 1.51 );
setScaleKey( spep_2 -a + 36, 1, 1.51, 1.51 );
setScaleKey( spep_2 -a + 38, 1, 1.52, 1.52 );
setScaleKey( spep_2 -a + 40, 1, 1.52, 1.52 );
setScaleKey( spep_2 -a + 42, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a + 44, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a + 47, 1, 1.54, 1.54 );
setScaleKey( spep_2 -a + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2 -a + 51, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a + 52, 1, 1.55, 1.55 );
setScaleKey( spep_2 -a + 54, 1, 1.55, 1.55 );
setScaleKey( spep_2 -a + 57, 1, 1.56, 1.56 );
setScaleKey( spep_2 -a + 58, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 60, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 63, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 64, 1, 1.57, 1.57 );
setScaleKey( spep_2 -a + 66, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 68, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 70, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 73, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 74, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 76, 1, 1.58, 1.58 );
setScaleKey( spep_2 -a + 78, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 81, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a + 82, 1, 1.61, 1.61 );
setScaleKey( spep_2 -a + 84, 1, 1.62, 1.62 );
setScaleKey( spep_2 -a + 86, 1, 1.62, 1.62 );
setScaleKey( spep_2 -a + 88, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a + 90, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a + 92, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a + 96, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a + 98, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a + 100, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a + 103, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a + 104, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a + 106, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a + 110, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a + 112, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a + 114, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a + 116, 1, 1.67, 1.67 );
setScaleKey( spep_2 -a + 118, 1, 1.67, 1.67 );
setScaleKey( spep_2 -a + 120, 1, 1.68, 1.68 );
setScaleKey( spep_2 -a + 122, 1, 1.69, 1.69 );
setScaleKey( spep_2 -a + 124, 1, 1.7, 1.7 );
setScaleKey( spep_2 -a + 126, 1, 1.72, 1.72 );
setScaleKey( spep_2 -a + 128, 1, 1.74, 1.74 );
setScaleKey( spep_2 -a + 130, 1, 1.76, 1.76 );
setScaleKey( spep_2 -a + 132, 1, 1.78, 1.78 );
setScaleKey( spep_2 -a + 134, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a + 136, 1, 1.83, 1.83 );
setScaleKey( spep_2 -a + 138, 1, 1.85, 1.85 );
setScaleKey( spep_2 -a + 140, 1, 1.88, 1.88 );
setScaleKey( spep_2 -a + 142, 1, 1.91, 1.91 );
setScaleKey( spep_2 -a + 144, 1, 1.94, 1.94 );
setScaleKey( spep_2 -a + 146, 1, 1.97, 1.97 );
setScaleKey( spep_2 -a + 148, 1, 2, 2 );
setScaleKey( spep_2 -a + 150, 1, 2.04, 2.04 );
setScaleKey( spep_2 -a + 152, 1, 2.08, 2.08 );
setScaleKey( spep_2 -a + 154, 1, 2.11, 2.11 );
setScaleKey( spep_2 -a + 156, 1, 2.15, 2.15 );
setScaleKey( spep_2 -a + 158, 1, 2.19, 2.19 );
setScaleKey( spep_2 -a + 160, 1, 2.24, 2.24 );
setScaleKey( spep_2 -a + 162, 1, 2.28, 2.28 );
setScaleKey( spep_2 -a + 164, 1, 2.33, 2.33 );
setScaleKey( spep_2 -a + 166, 1, 2.38, 2.38 );
setScaleKey( spep_2 -a + 168, 1, 2.43, 2.43 );
setScaleKey( spep_2 -a + 170, 1, 2.48, 2.48 );

setRotateKey( spep_2 + 1, 1, 6 );
setRotateKey( spep_2 -a + 2, 1, 11.5 );
setRotateKey( spep_2 -a + 5, 1, 11.5 );
setRotateKey( spep_2 -a + 6, 1, 27.6 );
setRotateKey( spep_2 -a + 11, 1, 27.6 );
setRotateKey( spep_2 -a + 12, 1, 33.2 );
setRotateKey( spep_2 -a + 14, 1, 21 );
setRotateKey( spep_2 -a + 17, 1, 21 );
setRotateKey( spep_2 -a + 18, 1, 6.3 );
setRotateKey( spep_2 -a + 21, 1, 6.3 );
setRotateKey( spep_2 -a + 22, 1, 11.8 );
setRotateKey( spep_2 -a + 25, 1, 11.9 );
setRotateKey( spep_2 -a + 26, 1, 34.8 );
setRotateKey( spep_2 -a + 28, 1, 34.9 );
setRotateKey( spep_2 -a + 33, 1, 34.9 );
setRotateKey( spep_2 -a + 34, 1, 12 );
setRotateKey( spep_2 -a + 36, 1, 12.1 );
setRotateKey( spep_2 -a + 40, 1, 12.1 );
setRotateKey( spep_2 -a + 42, 1, 12.2 );
setRotateKey( spep_2 -a + 47, 1, 12.2 );
setRotateKey( spep_2 -a + 48, 1, 110.4 );
setRotateKey( spep_2 -a + 51, 1, 110.5 );
setRotateKey( spep_2 -a + 52, 1, 12.3 );
setRotateKey( spep_2 -a + 54, 1, 12.4 );
setRotateKey( spep_2 -a + 57, 1, 12.4 );
setRotateKey( spep_2 -a + 58, 1, 10.7 );
setRotateKey( spep_2 -a + 60, 1, 8.9 );
setRotateKey( spep_2 -a + 63, 1, 7 );
setRotateKey( spep_2 -a + 64, 1, 12.5 );
setRotateKey( spep_2 -a + 66, 1, 12.6 );
setRotateKey( spep_2 -a + 70, 1, 12.6 );
setRotateKey( spep_2 -a + 73, 1, 12.7 );
setRotateKey( spep_2 -a + 74, 1, 51.4 );
setRotateKey( spep_2 -a + 78, 1, 51.4 );
setRotateKey( spep_2 -a + 81, 1, 51.5 );
setRotateKey( spep_2 -a + 82, 1, 7.1 );
setRotateKey( spep_2 -a + 84, 1, 4.4 );
setRotateKey( spep_2 -a + 86, 1, 0.3 );
setRotateKey( spep_2 -a + 88, 1, 0.2 );
setRotateKey( spep_2 -a + 92, 1, 0.2 );
setRotateKey( spep_2 -a + 94, 1, 0.1 );
setRotateKey( spep_2 -a + 98, 1, 0.1 );
setRotateKey( spep_2 -a + 100, 1, 0 );
setRotateKey( spep_2 -a + 103, 1, 0 );
setRotateKey( spep_2 -a + 104, 1, 37.4 );
--[[setRotateKey( spep_2 -a + 106, 1, 37.5 );
setRotateKey( spep_2 -a + 110, 1, 37.5 );
setRotateKey( spep_2 -a + 112, 1, 37.6 );
setRotateKey( spep_2 -a + 124, 1, 37.6 );
setRotateKey( spep_2 -a + 126, 1, 37.5 );
setRotateKey( spep_2 -a + 132, 1, 37.5 );
setRotateKey( spep_2 -a + 134, 1, 37.4 );
setRotateKey( spep_2 -a + 140, 1, 37.4 );
setRotateKey( spep_2 -a + 142, 1, 37.3 );
setRotateKey( spep_2 -a + 156, 1, 37.3 );
setRotateKey( spep_2 -a + 158, 1, 37.2 );]]
setRotateKey( spep_2 -a + 170, 1, 37.2 );

--SE
playSe( spep_2 , 1000 );  --ラッシュ音
playSe( spep_2 + 10 , 1001 );  --ラッシュ音
playSe( spep_2 + 20 , 1001 );  --ラッシュ音
playSe( spep_2 + 30 , 1000 );  --ラッシュ音
playSe( spep_2 + 40 , 1001 );  --ラッシュ音
playSe( spep_2 + 50 , 1000 );  --ラッシュ音
playSe( spep_2 + 60 , 1001 );  --ラッシュ音
playSe( spep_2 + 70 , 1007 );  --ラッシュ音
playSe( spep_2 + 80 , 1006 );  --ラッシュ音
playSe( spep_2 + 90 , 1000 );  --ラッシュ音
playSe( spep_2 + 100 , 1001 );  --ラッシュ音
playSe( spep_2 + 110 , 1000 );  --ラッシュ音

playSe( spep_2 + 110 , 1004 );  --カリフラバク転
playSe( spep_2 + 122 , 1072 );  --突進音

playSe( spep_2 + 174 , 1011 );  --ラッシュ音
--playSe( spep_2 + 178 , 1000 );  --ラッシュ音
playSe( spep_2 + 190 , 1023 );  --ラッシュ音

-- ** 背景 ** --
entryFadeBg(  spep_2,  0,  200,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- 吹き飛ぶエフェクト
------------------------------------------------------

spep_3 = spep_2 + 196 ;

--白フラッシュ
entryFade( spep_3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);

--  ** 敵の動き **  --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 68, 1, 0 );
changeAnime( spep_3 + 0, 1, 5 );  --吹っ飛び

setMoveKey( spep_3 + 0, 1, -53.3, 23.2 , 0 );
setMoveKey( spep_3 + 2, 1, -33.7, 43.5 , 0 );
setMoveKey( spep_3 + 4, 1, -45.9, 114 , 0 );
setMoveKey( spep_3 + 6, 1, -38.1, 160.9 , 0 );
setMoveKey( spep_3 + 8, 1, -38.3, 238.5 , 0 );
setMoveKey( spep_3 + 10, 1, -17.9, 249.5 , 0 );
setMoveKey( spep_3 + 12, 1, -22.9, 263.9 , 0 );
setMoveKey( spep_3 + 14, 1, -13.3, 258.3 , 0 );
setMoveKey( spep_3 + 16, 1, -12.9, 273.3 , 0 );
setMoveKey( spep_3 + 18, 1, 2.5, 269.4 , 0 );
setMoveKey( spep_3 + 20, 1, -7.3, 279.6 , 0 );
setMoveKey( spep_3 + 22, 1, -3.2, 274.2 , 0 );
setMoveKey( spep_3 + 24, 1, -7.1, 276.7 , 0 );
setMoveKey( spep_3 + 26, 1, 5, 263.3 , 0 );
setMoveKey( spep_3 + 28, 1, -7, 273.7 , 0 );
setMoveKey( spep_3 + 30, 1, -3, 268 , 0 );
setMoveKey( spep_3 + 32, 1, -6.9, 270.2 , 0 );
setMoveKey( spep_3 + 34, 1, -6.8, 268.2 , 0 );
setMoveKey( spep_3 + 36, 1, -2.7, 262.2 , 0 );
setMoveKey( spep_3 + 38, 1, -6.6, 263.9 , 0 );
setMoveKey( spep_3 + 40, 1, -6.5, 261.5 , 0 );
setMoveKey( spep_3 + 42, 1, -6.5, 259.1 , 0 );
setMoveKey( spep_3 + 44, 1, -6.3, 256.4 , 0 );
setMoveKey( spep_3 + 46, 1, -6.3, 253.6 , 0 );
setMoveKey( spep_3 + 48, 1, -6.1, 250.7 , 0 );
setMoveKey( spep_3 + 50, 1, -6.1, 247.7 , 0 );
setMoveKey( spep_3 + 52, 1, -5.9, 244.5 , 0 );
setMoveKey( spep_3 + 54, 1, -5.8, 241.2 , 0 );
setMoveKey( spep_3 + 56, 1, -5.7, 237.7 , 0 );
setMoveKey( spep_3 + 58, 1, -5.6, 234.1 , 0 );
setMoveKey( spep_3 + 60, 1, -5.5, 230.3 , 0 );
setMoveKey( spep_3 + 62, 1, -5.4, 226.4 , 0 );
setMoveKey( spep_3 + 64, 1, -5.2, 222.3 , 0 );
setMoveKey( spep_3 + 66, 1, -5.1, 218.1 , 0 );
setMoveKey( spep_3 + 68, 1, -5, 213.9 , 0 );

setScaleKey( spep_3 + 0, 1, 2.86, 2.86 );
setScaleKey( spep_3 + 2, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 4, 1, 2.21, 2.21 );
setScaleKey( spep_3 + 6, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 8, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 10, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 12, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 14, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 18, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 22, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 24, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 26, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 28, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 30, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 32, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 34, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 36, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 38, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 40, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 42, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 44, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 46, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 48, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 50, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 52, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 54, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 56, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 58, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 60, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 62, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 64, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 66, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 68, 1, 0.23, 0.23 );

setRotateKey( spep_3 + 0, 1, 13.5 );
setRotateKey( spep_3 + 2, 1, 13.3 );
setRotateKey( spep_3 + 4, 1, 13.2 );
setRotateKey( spep_3 + 6, 1, 13 );
setRotateKey( spep_3 + 8, 1, 12.7 );
setRotateKey( spep_3 + 10, 1, 11.9 );
setRotateKey( spep_3 + 12, 1, 11.2 );
setRotateKey( spep_3 + 14, 1, 10.6 );
setRotateKey( spep_3 + 16, 1, 10 );
setRotateKey( spep_3 + 18, 1, 9.6 );
setRotateKey( spep_3 + 20, 1, 9.3 );
setRotateKey( spep_3 + 38, 1, 9.3 );
setRotateKey( spep_3 + 40, 1, 9.4 );
setRotateKey( spep_3 + 60, 1, 9.4 );
setRotateKey( spep_3 + 62, 1, 9.5 );
setRotateKey( spep_3 + 68, 1, 9.5 );


-- 吹き飛ぶ エフェクト
hukitobu_b = entryEffectLife( spep_3,   SP_05, 70, 0x80, -1, 0, 0, 0);  --後ろ
setEffMoveKey( spep_3,hukitobu_b,  0,  0);
setEffMoveKey( spep_3 + 70,hukitobu_b,  0,  0);

setEffScaleKey( spep_3, hukitobu_b, -1.0, 1.0);
setEffScaleKey( spep_3 + 70, hukitobu_b, -1.0, 1.0);

setEffAlphaKey( spep_3, hukitobu_b, 255);
setEffAlphaKey( spep_3 + 66, hukitobu_b, 255);
setEffAlphaKey( spep_3 + 67, hukitobu_b, 0);
setEffAlphaKey( spep_3 + 70, hukitobu_b, 0);

setEffRotateKey( spep_3, hukitobu_b, 0);
setEffRotateKey( spep_3 + 70, hukitobu_b, 0);


hukitobu = entryEffectLife( spep_3,   SP_04, 70, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_3,hukitobu,  0,  0);
setEffMoveKey( spep_3 + 70,hukitobu,  0,  0);

setEffScaleKey( spep_3, hukitobu, -1.0, 1.0);
setEffScaleKey( spep_3 + 70, hukitobu, -1.0, 1.0);

setEffAlphaKey( spep_3, hukitobu, 255);
setEffAlphaKey( spep_3 + 66, hukitobu, 255);
setEffAlphaKey( spep_3 + 67, hukitobu, 0);
setEffAlphaKey( spep_3 + 70, hukitobu, 0);

setEffRotateKey( spep_3, hukitobu, 0);
setEffRotateKey( spep_3 + 70, hukitobu, 0);


-- 書き文字　バゴォッ
ctbagooltu_1 = entryEffectLife( spep_3 + 0,  kaki_003, 24, 0x100, -1, 0, 113.4, 325.6 );

setEffShake( spep_3,  ctbagooltu_1,  24,  10);  --揺れ
setEffMoveKey( spep_3 + 0, ctbagooltu_1, -113.4, 325.6 , 0 );	-- シェイクじゃなくても動く？
setEffMoveKey( spep_3 + 2, ctbagooltu_1, -112.8, 325 , 0 );
setEffMoveKey( spep_3 + 4, ctbagooltu_1, -113.5, 325.4 , 0 );
setEffMoveKey( spep_3 + 6, ctbagooltu_1, -103.9, 350.7 , 0 );
setEffMoveKey( spep_3 + 8, ctbagooltu_1, -113.5, 325.5 , 0 );
setEffMoveKey( spep_3 + 10, ctbagooltu_1, -104.4, 349.7 , 0 );
setEffMoveKey( spep_3 + 12, ctbagooltu_1, -113.6, 325.6 , 0 );
setEffMoveKey( spep_3 + 14, ctbagooltu_1, -113.6, 325.7 , 0 );
setEffMoveKey( spep_3 + 16, ctbagooltu_1, -105.4, 347.6 , 0 );
setEffMoveKey( spep_3 + 18, ctbagooltu_1, -113.7, 325.7 , 0 );
setEffMoveKey( spep_3 + 20, ctbagooltu_1, -106.2, 345.6 , 0 );
setEffMoveKey( spep_3 + 22, ctbagooltu_1, -113.7, 325.8 , 0 );
setEffMoveKey( spep_3 + 24, ctbagooltu_1, -113.7, 325.9 , 0 );

setEffScaleKey( spep_3 + 0, ctbagooltu_1, 1.55, 1.55 );
setEffScaleKey( spep_3 + 2, ctbagooltu_1, 4.28, 4.28 );
setEffScaleKey( spep_3 + 4, ctbagooltu_1, 3.21, 3.21 );
setEffScaleKey( spep_3 + 6, ctbagooltu_1, 3.14, 3.14 );
setEffScaleKey( spep_3 + 8, ctbagooltu_1, 3.07, 3.07 );
setEffScaleKey( spep_3 + 10, ctbagooltu_1, 2.99, 2.99 );
setEffScaleKey( spep_3 + 12, ctbagooltu_1, 2.92, 2.92 );
setEffScaleKey( spep_3 + 14, ctbagooltu_1, 2.85, 2.85 );
setEffScaleKey( spep_3 + 16, ctbagooltu_1, 2.72, 2.72 );
setEffScaleKey( spep_3 + 18, ctbagooltu_1, 2.59, 2.59 );
setEffScaleKey( spep_3 + 20, ctbagooltu_1, 2.47, 2.47 );
setEffScaleKey( spep_3 + 22, ctbagooltu_1, 2.34, 2.34 );
setEffScaleKey( spep_3 + 24, ctbagooltu_1, 2.21, 2.21 );

setEffRotateKey( spep_3 + 0, ctbagooltu_1, -14.8 );
setEffRotateKey( spep_3 + 24, ctbagooltu_1, -14.8 );

setEffAlphaKey( spep_3 + 0, ctbagooltu_1, 255 );
setEffAlphaKey( spep_3 + 14, ctbagooltu_1, 255 );
setEffAlphaKey( spep_3 + 16, ctbagooltu_1, 204 );
setEffAlphaKey( spep_3 + 18, ctbagooltu_1, 153 );
setEffAlphaKey( spep_3 + 20, ctbagooltu_1, 102 );
setEffAlphaKey( spep_3 + 22, ctbagooltu_1, 51 );
setEffAlphaKey( spep_3 + 24, ctbagooltu_1, 0 );

--SE
playSe( spep_3 , 1011 );  --バゴォ音
playSe(  spep_3+4,  8);  --追いかける

-- ** 背景 ** --
entryFadeBg(  spep_3,  0,  70,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- カリフラが撃つエフェクト
------------------------------------------------------

spep_4 = spep_3 + 66 ;

--白フラッシュ
entryFade( spep_4, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- カリフラが撃つ エフェクト
karihurashot = entryEffectLife( spep_4,  SP_06, 80, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4,karihurashot,  0,  0);
setEffMoveKey( spep_4 + 80,karihurashot,  0,  0);

setEffScaleKey( spep_4, karihurashot, -1.0, 1.0);
setEffScaleKey( spep_4 + 80, karihurashot, -1.0, 1.0);

setEffAlphaKey( spep_4, karihurashot, 255);
setEffAlphaKey( spep_4 + 74, karihurashot, 255);
setEffAlphaKey( spep_4 + 75, karihurashot, 0);
setEffAlphaKey( spep_4 + 80, karihurashot, 0);

setEffRotateKey( spep_4, karihurashot, 0);
setEffRotateKey( spep_4 + 80, karihurashot, 0);

--白フラッシュ
entryFade( spep_4 + 26, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 書き文字　ズオッ　２
ctzuo_2 = entryEffectLife( spep_4 + 20,  kaki_001, 50, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_4 + 20, ctzuo_2, -78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo_2, -105, 288.6 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo_2, -117.9, 330.1 , 0 );		--ここからシェイク
setEffMoveKey( spep_4 + 26, ctzuo_2, -153.7, 348.8 , 0 );		
setEffMoveKey( spep_4 + 70, ctzuo_2, -153.7, 348.8 , 0 );

setEffShake( spep_4 + 24 , ctzuo_2, 46, 25 );

setEffScaleKey( spep_4 + 20, ctzuo_2, 0.34, 0.34 );
setEffScaleKey( spep_4 + 22, ctzuo_2, 1.13, 1.13 );
setEffScaleKey( spep_4 + 24, ctzuo_2, 1.94, 1.94 );
setEffScaleKey( spep_4 + 26, ctzuo_2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 70, ctzuo_2, 2.73, 2.73 );

setEffRotateKey( spep_4 + 20, ctzuo_2, -27.2 );
setEffRotateKey( spep_4 + 70, ctzuo_2, -27.2 );

setEffAlphaKey( spep_4 + 20, ctzuo_2, 255 );
setEffAlphaKey( spep_4 + 70, ctzuo_2, 255 );

--SE
--playSe( spep_4 , 1021 );  --連弾のような見た目ですが、アニメの発射SEが尻上がりする1つのSEだったのでそれに倣っています   
--playSe( spep_4+2,  17);
--[[
playSe( spep_4+26,  1021);
playSe( spep_4+36,  1021);
playSe( spep_4+46,  1021);
playSe( spep_4+56,  1021);
playSe( spep_4+66,  1021);
]]

SE001 = playSe( spep_4+26,  1021);
setSeVolume(spep_4+26,1021,90);
stopSe(spep_4+41,SE001,5);
SE002 = playSe( spep_4+36,  1021);
setSeVolume(spep_4+36,1021,90);
stopSe(spep_4+51,SE002,5);
SE003 = playSe( spep_4+46,  1021);
setSeVolume(spep_4+46,1021,90);
stopSe(spep_4+61,SE003,5);
SE004 = playSe( spep_4+56,  1021);
setSeVolume(spep_4+56,1021,90);
stopSe(spep_4+71,SE004,5);
SE005 = playSe( spep_4+66,  1021);
setSeVolume(spep_4+66,1021,90);

-- ** 背景 ** --
entryFadeBg(  spep_4,  0,  80,  0,  0, 0, 0, 255 );  --黒背景

--  ** 白フェード **  --
entryFade(  spep_4,  0,  2,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- ケールが蹴るエフェクト
------------------------------------------------------

spep_5 = spep_4 + 74 ;

-- ケールが蹴る エフェクト
keerukeru_b = entryEffectLife( spep_5,  SP_08r, 108, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_5,keerukeru_b,  0,  0);
setEffMoveKey( spep_5 + 110,keerukeru_b,  0,  0);

setEffScaleKey( spep_5, keerukeru_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 110, keerukeru_b, 1.0, 1.0);

setEffAlphaKey( spep_5, keerukeru_b, 255);
setEffAlphaKey( spep_5 + 106, keerukeru_b, 255);
setEffAlphaKey( spep_5 + 107, keerukeru_b, 0);
setEffAlphaKey( spep_5 + 108, keerukeru_b, 0);
setEffAlphaKey( spep_5 + 110, keerukeru_b, 0);

setEffRotateKey( spep_5, keerukeru_b, 0);
setEffRotateKey( spep_5 + 110, keerukeru_b, 0);


keerukeru = entryEffectLife( spep_5,  SP_07, 108, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5,keerukeru,  0,  0);
setEffMoveKey( spep_5 + 110,keerukeru,  0,  0);

setEffScaleKey( spep_5, keerukeru, 1.0, 1.0);
setEffScaleKey( spep_5 + 110, keerukeru, 1.0, 1.0);

setEffAlphaKey( spep_5, keerukeru, 255);
setEffAlphaKey( spep_5 + 107, keerukeru, 0);
setEffAlphaKey( spep_5 + 108, keerukeru, 0);
setEffAlphaKey( spep_5 + 110, keerukeru, 0);


setEffRotateKey( spep_5, keerukeru, 0);
setEffRotateKey( spep_5 + 110, keerukeru, 0);

--白フラッシュ
entryFade( spep_5 + 44, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- 書き文字　バキッ
ctbakiltu_1 = entryEffectLife( spep_5 + 44 -a,  kaki_004, 26, 0x100, -1, 0, 102.6, 344.2 );
setEffMoveKey( spep_5 + 44 -a, ctbakiltu_1, 102.6, 344.2 , 0 );
setEffMoveKey( spep_5 + 46 -a, ctbakiltu_1, 95.7, 369.7 , 0 );
setEffMoveKey( spep_5 + 48 -a, ctbakiltu_1, 102.6, 344.2 , 0 );
setEffMoveKey( spep_5 + 50 -a, ctbakiltu_1, 102.7, 344.1 , 0 );		--ここからシェイク
setEffMoveKey( spep_5 + 70 -a, ctbakiltu_1, 102.8, 344.1 , 0 );

setEffShake( spep_5 + 52 -a , ctbakiltu_1, 18, 25 );

setEffScaleKey( spep_5 + 44 -a, ctbakiltu_1, 1.72, 1.72 );
setEffScaleKey( spep_5 + 46 -a, ctbakiltu_1, 3.1, 3.1 );
setEffScaleKey( spep_5 + 48 -a, ctbakiltu_1, 2.59, 2.59 );
setEffScaleKey( spep_5 + 50 -a, ctbakiltu_1, 2.08, 2.08 );
setEffScaleKey( spep_5 + 52 -a, ctbakiltu_1, 2.05, 2.05 );
setEffScaleKey( spep_5 + 54 -a, ctbakiltu_1, 2.02, 2.02 );
setEffScaleKey( spep_5 + 56 -a, ctbakiltu_1, 1.99, 1.99 );
setEffScaleKey( spep_5 + 58 -a, ctbakiltu_1, 1.95, 1.95 );
setEffScaleKey( spep_5 + 60 -a, ctbakiltu_1, 1.92, 1.92 );
setEffScaleKey( spep_5 + 62 -a, ctbakiltu_1, 1.89, 1.89 );
setEffScaleKey( spep_5 + 64 -a, ctbakiltu_1, 1.86, 1.86 );
setEffScaleKey( spep_5 + 66 -a, ctbakiltu_1, 1.87, 1.87 );
setEffScaleKey( spep_5 + 68 -a, ctbakiltu_1, 1.88, 1.88 );
setEffScaleKey( spep_5 + 70 -a, ctbakiltu_1, 1.89, 1.89 );

setEffRotateKey( spep_5 + 44 -a, ctbakiltu_1, 29.9 );
setEffRotateKey( spep_5 + 70 -a, ctbakiltu_1, 29.9 );

setEffAlphaKey( spep_5 + 44 -a, ctbakiltu_1, 255 );
setEffAlphaKey( spep_5 + 64 -a, ctbakiltu_1, 255 );
setEffAlphaKey( spep_5 + 66 -a, ctbakiltu_1, 174 );
setEffAlphaKey( spep_5 + 70 -a, ctbakiltu_1, 94 );
--setEffAlphaKey( spep_5 + 72, ctbakiltu_1, 13 );

-- ** 敵の動き **  --
setDisp( spep_5 - 2, 1, 1 );
--setDisp( spep_5 + 106, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5 + 44 -a,  1,  106);  --蹴り飛ばされる

setMoveKey( spep_5 -2, 1, -408.9, -279.3 , 0 );
setMoveKey( spep_5 + 0, 1, -408.9, -279.3 , 0 );
setMoveKey( spep_5 -a + 2, 1, -315.7, -209.8 , 0 );
setMoveKey( spep_5 -a + 4, 1, -223.7, -140.8 , 0 );
setMoveKey( spep_5 -a + 6, 1, -132.7, -72.3 , 0 );
setMoveKey( spep_5 -a + 8, 1, -43, -4.4 , 0 );
setMoveKey( spep_5 -a + 10, 1, 45.4, 62.8 , 0 );
setMoveKey( spep_5 -a + 12, 1, 41.4, 63.4 , 0 );
setMoveKey( spep_5 -a + 14, 1, 36.8, 63.7 , 0 );
setMoveKey( spep_5 -a + 16, 1, 31.4, 63.8 , 0 );
setMoveKey( spep_5 -a + 18, 1, 25.2, 63.7 , 0 );
setMoveKey( spep_5 -a + 20, 1, 18.3, 63.3 , 0 );
setMoveKey( spep_5 -a + 22, 1, 10.7, 62.7 , 0 );
setMoveKey( spep_5 -a + 24, 1, 2.4, 61.8 , 0 );
setMoveKey( spep_5 -a + 26, 1, -6.7, 60.7 , 0 );
setMoveKey( spep_5 -a + 28, 1, -16.6, 59.3 , 0 );
setMoveKey( spep_5 -a + 30, 1, -27.2, 57.7 , 0 );
setMoveKey( spep_5 -a + 32, 1, -38.6, 55.8 , 0 );
setMoveKey( spep_5 -a + 34, 1, -50.8, 53.7 , 0 );
setMoveKey( spep_5 -a + 36, 1, -63.7, 51.3 , 0 );
setMoveKey( spep_5 -a + 38, 1, -77.4, 48.6 , 0 );
setMoveKey( spep_5 -a + 40, 1, -91.9, 45.6 , 0 );
setMoveKey( spep_5 -a + 42, 1, -107.2, 42.4 , 0 );

setMoveKey( spep_5 -a  + 44, 1, -188.6, 82.8 , 0 );
setMoveKey( spep_5 -a  + 46, 1, -165.7, 91.6 , 0 );
setMoveKey( spep_5 -a  + 48, 1, -166.3, 78.5 , 0 );
setMoveKey( spep_5 -a  + 50, 1, -138.7, 75.6 , 0 );
setMoveKey( spep_5 -a  + 52, 1, -135, 54.9 , 0 );
setMoveKey( spep_5 -a  + 54, 1, -127.3, 68.7 , 0 );
setMoveKey( spep_5 -a  + 56, 1, -134.8, 59.3 , 0 );
setMoveKey( spep_5 -a  + 58, 1, -126.2, 65.9 , 0 );
setMoveKey( spep_5 -a  + 60, 1, -129.6, 60.5 , 0 );
setMoveKey( spep_5 -a  + 62, 1, -125, 63 , 0 );
setMoveKey( spep_5 -a  + 64, 1, -136.3, 57.5 , 0 );
setMoveKey( spep_5 -a  + 66, 1, -123.6, 60 , 0 );
setMoveKey( spep_5 -a  + 68, 1, -126.8, 54.5 , 0 );
setMoveKey( spep_5 -a  + 70, 1, -122, 56.9 , 0 );
setMoveKey( spep_5 -a  + 72, 1, -140.1 - 15, 53.3 , 0 );
setMoveKey( spep_5 -a  + 74, 1, -166.9 - 5, 63.3 , 0 );
setMoveKey( spep_5 -a  + 76, 1, -225.3 - 3, 74.7 , 0 );
setMoveKey( spep_5 -a  + 78, 1, -306.6, 91.4 , 0 );
setMoveKey( spep_5 -a  + 80, 1, -409.6, 113.1 , 0 );
setMoveKey( spep_5 -a  + 82, 1, -533.6, 139.7 , 0 );
setMoveKey( spep_5 -a  + 84, 1, -1677.4 + 1000, 170.8 , 0 );
setMoveKey( spep_5 -a  + 85, 1, -1677.4 + 920, 170.8 , 0 );

setMoveKey( spep_5 -a  + 86, 1, 190.8, 126.3 , 0 );
setMoveKey( spep_5 -a  + 88, 1, 178.1, 117.3 , 0 );
setMoveKey( spep_5 -a  + 90, 1, 165.2, 108 , 0 );
setMoveKey( spep_5 -a  + 92, 1, 151.9, 98.6 , 0 );
setMoveKey( spep_5 -a  + 94, 1, 138.3, 88.9 , 0 );
setMoveKey( spep_5 -a  + 96, 1, 124.3, 79 , 0 );
setMoveKey( spep_5 -a  + 98, 1, 110.1, 68.8 , 0 );
setMoveKey( spep_5 -a  + 100, 1, 95.5, 58.5 , 0 );
setMoveKey( spep_5 -a  + 102, 1, 80.7, 47.9 , 0 );
setMoveKey( spep_5 -a  + 104, 1, 65.5, 37.1 , 0 );
setMoveKey( spep_5 -a  + 106, 1, 49.9, 26 , 0 );
setMoveKey( spep_5 -a  + 107, 1, 34.1, 14.8 , 0 );
--setMoveKey( spep_5 -a  + 108, 1, 34.1, 14.8 , 0 );
--setMoveKey( spep_5   + 106, 1, 34.1, 14.8 , 0 );

setScaleKey( spep_5 -2, 1, 4.43, 4.43 );
setScaleKey( spep_5 + 0, 1, 4.43, 4.43 );
setScaleKey( spep_5 -a + 2, 1, 3.92, 3.92 );
setScaleKey( spep_5 -a + 4, 1, 3.4, 3.4 );
setScaleKey( spep_5 -a + 6, 1, 2.89, 2.89 );
setScaleKey( spep_5 -a + 8, 1, 2.38, 2.38 );
setScaleKey( spep_5 -a + 10, 1, 1.87, 1.87 );
setScaleKey( spep_5 -a + 12, 1, 1.84, 1.84 );
setScaleKey( spep_5 -a + 14, 1, 1.81, 1.81 );
setScaleKey( spep_5 -a + 16, 1, 1.78, 1.78 );
setScaleKey( spep_5 -a + 18, 1, 1.75, 1.75 );
setScaleKey( spep_5 -a + 20, 1, 1.72, 1.72 );
setScaleKey( spep_5 -a + 22, 1, 1.69, 1.69 );
setScaleKey( spep_5 -a + 24, 1, 1.66, 1.66 );
setScaleKey( spep_5 -a + 26, 1, 1.63, 1.63 );
setScaleKey( spep_5 -a + 28, 1, 1.6, 1.6 );
setScaleKey( spep_5 -a + 30, 1, 1.57, 1.57 );
setScaleKey( spep_5 -a + 32, 1, 1.54, 1.54 );
setScaleKey( spep_5 -a + 34, 1, 1.51, 1.51 );
setScaleKey( spep_5 -a + 36, 1, 1.48, 1.48 );
setScaleKey( spep_5 -a + 38, 1, 1.45, 1.45 );
setScaleKey( spep_5 -a + 40, 1, 1.42, 1.42 );
setScaleKey( spep_5 -a + 42, 1, 1.39, 1.39 );
setScaleKey( spep_5 -a + 43, 1, 1.39, 1.39 );
setScaleKey( spep_5 -a  + 44, 1, 2.5, 2.5 );
setScaleKey( spep_5 -a  + 46, 1, 2.26, 2.26 );
setScaleKey( spep_5 -a  + 48, 1, 2.06, 2.06 );
setScaleKey( spep_5 -a  + 50, 1, 1.91, 1.91 );
setScaleKey( spep_5 -a  + 52, 1, 1.8, 1.8 );
setScaleKey( spep_5 -a  + 54, 1, 1.74, 1.74 );
setScaleKey( spep_5 -a  + 56, 1, 1.73, 1.73 );
setScaleKey( spep_5 -a  + 58, 1, 1.71, 1.71 );
setScaleKey( spep_5 -a  + 60, 1, 1.7, 1.7 );
setScaleKey( spep_5 -a  + 62, 1, 1.69, 1.69 );
setScaleKey( spep_5 -a  + 64, 1, 1.67, 1.67 );
setScaleKey( spep_5 -a  + 66, 1, 1.66, 1.66 );
setScaleKey( spep_5 -a  + 68, 1, 1.64, 1.64 );
setScaleKey( spep_5 -a  + 70, 1, 1.63, 1.63 );
setScaleKey( spep_5 -a  + 72, 1, 1.7 + 0.2, 1.7 + 0.2 );
setScaleKey( spep_5 -a  + 74, 1, 1.95, 1.95 );
setScaleKey( spep_5 -a  + 76, 1, 2.38, 2.38 );
setScaleKey( spep_5 -a  + 78, 1, 2.98, 2.98 );
setScaleKey( spep_5 -a  + 80, 1, 3.74, 3.74 );
setScaleKey( spep_5 -a  + 82, 1, 4.65, 4.65 );
setScaleKey( spep_5 -a  + 84, 1, 5.72, 5.72 );
setScaleKey( spep_5 -a  + 86, 1, 0.18, 0.18 );
setScaleKey( spep_5 -a  + 88, 1, 0.19, 0.19 );
setScaleKey( spep_5 -a  + 90, 1, 0.19, 0.19 );
setScaleKey( spep_5 -a  + 92, 1, 0.2, 0.2 );
setScaleKey( spep_5 -a  + 94, 1, 0.2, 0.2 );
setScaleKey( spep_5 -a  + 96, 1, 0.21, 0.21 );
setScaleKey( spep_5 -a  + 98, 1, 0.21, 0.21 );
setScaleKey( spep_5 -a  + 100, 1, 0.22, 0.22 );
setScaleKey( spep_5 -a  + 102, 1, 0.22, 0.22 );
setScaleKey( spep_5 -a  + 104, 1, 0.23, 0.23 );
setScaleKey( spep_5 -a  + 107, 1, 0.23, 0.23 );
--setScaleKey( spep_5 -a  + 108, 1, 0.23, 0.23 );
--setScaleKey( spep_5   + 106, 1, 0.23, 0.23 );

setRotateKey( spep_5 -2, 1, -10 );
setRotateKey( spep_5 + 0, 1, -10 );
setRotateKey( spep_5 -a + 2, 1, -9.9 );
setRotateKey( spep_5 -a + 6, 1, -9.9 );
setRotateKey( spep_5 -a + 8, 1, -9.8 );
setRotateKey( spep_5 -a + 20, 1, -9.8 );
setRotateKey( spep_5 -a + 22, 1, -9.9 );
setRotateKey( spep_5 -a + 38, 1, -9.9 );
setRotateKey( spep_5 -a + 40, 1, -10 );
setRotateKey( spep_5 -a + 42, 1, -10 );
setRotateKey( spep_5 -a + 43, 1, -10 );
setRotateKey( spep_5 -a  + 44, 1, -66 );
setRotateKey( spep_5 -a  + 46, 1, -66.2 );
setRotateKey( spep_5 -a  + 48, 1, -66.4 );
setRotateKey( spep_5 -a  + 50, 1, -66.6 );
setRotateKey( spep_5 -a  + 52, 1, -66.8 );
setRotateKey( spep_5 -a  + 54, 1, -66.9 );
setRotateKey( spep_5 -a  + 56, 1, -67.1 );
setRotateKey( spep_5 -a  + 58, 1, -67.3 );
setRotateKey( spep_5 -a  + 60, 1, -67.5 );
setRotateKey( spep_5 -a  + 62, 1, -67.7 );
setRotateKey( spep_5 -a  + 64, 1, -67.9 );
setRotateKey( spep_5 -a  + 66, 1, -68.1 );
setRotateKey( spep_5 -a  + 68, 1, -68.3 );
setRotateKey( spep_5 -a  + 70, 1, -68.5 );
setRotateKey( spep_5 -a  + 84, 1, -68.5 );
setRotateKey( spep_5 -a  + 86, 1, -80 );
setRotateKey( spep_5 -a  + 88, 1, -81.1 );
setRotateKey( spep_5 -a  + 90, 1, -82.3 );
setRotateKey( spep_5 -a  + 92, 1, -83.4 );
setRotateKey( spep_5 -a  + 94, 1, -84.6 );
setRotateKey( spep_5 -a  + 96, 1, -85.7 );
setRotateKey( spep_5 -a  + 98, 1, -86.8 );
setRotateKey( spep_5 -a  + 100, 1, -88 );
setRotateKey( spep_5 -a  + 102, 1, -89.1 );
setRotateKey( spep_5 -a  + 104, 1, -90.2 );
setRotateKey( spep_5 -a  + 106, 1, -91.4 );
setRotateKey( spep_5 -a  + 107, 1, -91.4 );
--setRotateKey( spep_5 -a  + 108, 1, -92.5 );
--setRotateKey( spep_5   + 106, 1, -92.5 );

--SE
playSe( spep_5 + 44 , 1002 );  --バキッ

--SE
playSe( spep_5 + 86 , 1022 );  --気弾が伸びる音

-- ** 背景 ** --
entryFadeBg(  spep_5,  0,  110,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- 気弾
------------------------------------------------------
spep_6 = spep_5 + 106 ;

-- ** 敵の動き ** --
--setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 26, 1, 0 );
changeAnime( spep_6 + 0, 1, 106);

setMoveKey( spep_6 + 0, 1, 122.8, 109 , 0 );
setMoveKey( spep_6 + 2, 1, 122.6, 110.6 , 0 );
setMoveKey( spep_6 + 4, 1, 121, 112 , 0 );
setMoveKey( spep_6 + 6, 1, 118, 113.3 , 0 );
setMoveKey( spep_6 + 8, 1, 113.5, 114.4 , 0 );
setMoveKey( spep_6 + 10, 1, 107.5, 115.4 , 0 );
setMoveKey( spep_6 + 12, 1, 99.9, 116.3 , 0 );
setMoveKey( spep_6 + 14, 1, 90.6, 117 , 0 );
setMoveKey( spep_6 + 16, 1, 79.6, 117.5 , 0 );
setMoveKey( spep_6 + 18, 1, 66.8, 118 , 0 );
setMoveKey( spep_6 + 20, 1, 52.2, 118.3 , 0 );
setMoveKey( spep_6 + 22, 1, 35.6, 118.4 , 0 );
setMoveKey( spep_6 + 24, 1, 17.1, 118.5 , 0 );
setMoveKey( spep_6 + 26, 1, -3.5, 118.4 , 0 );
setMoveKey( spep_6 + 28, 1, -26.2, 118.2 , 0 );

setScaleKey( spep_6 + 0, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 2, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_6 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 8, 1, 0.88, 0.88 );
setScaleKey( spep_6 + 10, 1, 1.02, 1.02 );
setScaleKey( spep_6 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_6 + 14, 1, 1.37, 1.37 );
setScaleKey( spep_6 + 16, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 20, 1, 2.1, 2.1 );
setScaleKey( spep_6 + 22, 1, 2.4, 2.4 );
setScaleKey( spep_6 + 24, 1, 2.74, 2.74 );
setScaleKey( spep_6 + 26, 1, 3.11, 3.11 );
setScaleKey( spep_6 + 28, 1, 3.51, 3.51 );

setRotateKey( spep_6 + 0, 1, -61.3 );
setRotateKey( spep_6 + 2, 1, -61.4 );
setRotateKey( spep_6 + 4, 1, -61.5 );
setRotateKey( spep_6 + 6, 1, -61.8 );
setRotateKey( spep_6 + 8, 1, -62.1 );
setRotateKey( spep_6 + 10, 1, -62.4 );
setRotateKey( spep_6 + 12, 1, -62.8 );
setRotateKey( spep_6 + 14, 1, -63.3 );
setRotateKey( spep_6 + 16, 1, -63.8 );
setRotateKey( spep_6 + 18, 1, -64.4 );
setRotateKey( spep_6 + 20, 1, -65 );
setRotateKey( spep_6 + 22, 1, -65.7 );
setRotateKey( spep_6 + 24, 1, -66.5 );
setRotateKey( spep_6 + 26, 1, -67.3 );
setRotateKey( spep_6 + 28, 1, -68.2 );

semaru_b = entryEffect( spep_6,  SP_10,  0x80, -1, 0, 0, 0);
setEffMoveKey(  spep_6,  semaru_b,  0,  0,  0);
setEffMoveKey(  spep_6+30,  semaru_b,  0,  0,  0);
setEffScaleKey(  spep_6,  semaru_b,  1.0,  1.0);
setEffScaleKey(  spep_6+30,  semaru_b,  1.0,  1.0);
setEffRotateKey(  spep_6,  semaru_b,  0);
setEffRotateKey(  spep_6+30,  semaru_b,  0);
setEffAlphaKey(  spep_6,  semaru_b,  255);
setEffAlphaKey(  spep_6+26,  semaru_b,  255);
setEffAlphaKey(  spep_6+27,  semaru_b,  0);
setEffAlphaKey(  spep_6+30,  semaru_b,  0);

semaru = entryEffect( spep_6,  SP_09,  0x100, -1, 0, 0, 0);

setEffMoveKey(  spep_6,  semaru,  0,  0,  0);
setEffMoveKey(  spep_6+30,  semaru,  0,  0,  0);
setEffScaleKey(  spep_6,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_6+30,  semaru,  1.0,  1.0);
setEffRotateKey(  spep_6,  semaru,  0);
setEffRotateKey(  spep_6+30,  semaru,  0);
setEffAlphaKey(  spep_6,  semaru,  255);
setEffAlphaKey(  spep_6+26,  semaru,  255);
setEffAlphaKey(  spep_6+27,  semaru,  0);
setEffAlphaKey(  spep_6+30,  semaru,  0);

-- ** 背景 ** --
entryFadeBg(  spep_6,  0,  30,  0,  0, 0, 0, 255 );  --黒背景

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
spep_7 = spep_6 + 26 ;

-- フィニッシュ エフェクト
finisheff = entryEffect( spep_7,  SP_11, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_7,finisheff,  0,  0);
setEffMoveKey( spep_7 + 200,finisheff,  0,  0);

setEffScaleKey( spep_7, finisheff, -1.0, 1.0);
setEffScaleKey( spep_7 + 200, finisheff, -1.0, 1.0);

setEffAlphaKey( spep_7, finisheff, 255);
setEffAlphaKey( spep_7 + 200, finisheff, 255);

setEffRotateKey( spep_7, finisheff, 0);
setEffRotateKey( spep_7 + 200, finisheff, 0);

--白フラッシュ
entryFade( spep_7 + 30, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

--SE
playSe( spep_7 + 30 , 1024 );  --爆発音

-- ** 背景 ** --
entryFadeBg(  spep_7,  0,  200,  0,  0, 0, 0, 255 );  --黒背景

dealDamage( spep_7 + 30);
endPhase( spep_7 + 130 );

end
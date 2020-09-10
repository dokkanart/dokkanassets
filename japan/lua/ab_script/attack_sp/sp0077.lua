--ダーブラ(ドッカン前)_エビルインパルス

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

SP_01 = 105000;
SP_02 = 105001;
SP_03 = 105002;

SP_04 = 3
SP_05 = 2

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
-- 突進
------------------------------------------------------
spep_0=0;

--味方の動き
setDisp( spep_0+18, 0, 1);
setDisp( spep_0+70, 0, 0);

changeAnime( spep_0+18, 0, 16);  

setShakeChara( spep_0+20, 0, 50, 12);
setShakeChara( spep_0+50, 0, 49, 5);

setMoveKey( spep_0+0,   0,    0, 0,   128);
setMoveKey( spep_0+15, 0,    0, -54,   128);
setMoveKey( spep_0+25, 0,  0, 0,   60);
setMoveKey( spep_0+30, 0,  -100, 180,   0);
setMoveKey( spep_0+35, 0,  0, 0,   -128);
setMoveKey( spep_0+ 70, 0,  0, 0,   -58);

setScaleKey( spep_0+0,   0, 1.5, 1.5);
setScaleKey( spep_0+35,   0, 1.5, 1.5);
setScaleKey( spep_0+55,   0, 1.8, 1.8);
setScaleKey( spep_0+70,   0, 1.2, 1.2);

setRotateKey( spep_0+0, 0, 0 );
setRotateKey( spep_0+70, 0, 0 );

--エフェクト
fe_shougeki = entryEffect( spep_0 + 5, 908, 0x100, -1, 0, 0, 0 );  --衝撃波のエフェクト
setEffMoveKey( spep_0 + 5, fe_shougeki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 55, fe_shougeki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 5, fe_shougeki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 55, fe_shougeki, 1.0, 1.0 );
setEffRotateKey( spep_0 + 5, fe_shougeki, 0 );
setEffRotateKey( spep_0 + 55, fe_shougeki, 0 );
setEffAlphaKey( spep_0 + 5, fe_shougeki, 255 );
setEffAlphaKey( spep_0 + 55, fe_shougeki, 255 );

-- 書き文字エントリー
ctzuzuzun = entryEffectLife( spep_0+20, 10013, 30, 0, -1, 0, 0, 400); -- ズズンッ
setEffShake(spep_0+20, ctzuzuzun, 30, 7);

setEffMoveKey( spep_0 + 20, ctzuzuzun, 0, 400 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzuzun, 0, 400 , 0 );

setEffScaleKey( spep_0+20, ctzuzuzun, 0.1, 0.1);
setEffScaleKey( spep_0+30, ctzuzuzun, 2.0, 2.0);
setEffScaleKey( spep_0+50, ctzuzuzun, 2.0, 2.0);

setEffRotateKey( spep_0 + 20, ctzuzuzun, 0 );
setEffRotateKey( spep_0 + 50, ctzuzuzun, 0 );

setEffAlphaKey(spep_0+20, ctzuzuzun, 255);
setEffAlphaKey(spep_0+40, ctzuzuzun, 255);
setEffAlphaKey(spep_0+50, ctzuzuzun, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 18, 906, 52 , 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 18, shuchusen1, 52 , 18 );

setEffMoveKey( spep_0 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 18, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 70, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0 + 70, shuchusen1, 180 );

setEffRotateKey( spep_0 + 18, shuchusen1, 0 );
setEffRotateKey( spep_0 + 70, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 70, shuchusen1, 255 );

--SE
se_1182 = playSe( spep_0 + 9, 1182 );
setSeVolume( spep_0 + 9, 1182, 56 );
se_0009 = playSe( spep_0 + 25, 9 );


--画面揺れ
--setQuake(spep_0+8,10,20);

--背景黒
entryFadeBg( spep_0+0, 10, 70, 2, 10, 10, 10, 150);       --ベース暗め　背景

--白フェード
--entryFade( spep_0+62 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+70

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
playSe( spep_1 + 6, 1035 );
stopSe( spep_1 + 6, se_1182, 0 );
stopSe( spep_1 + 6, se_0009, 0 );

-- ** 白フェード ** --
--entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ため〜敵に被弾まで
------------------------------------------------------
--味方の動き
setDisp( spep_2, 0, 1);

changeAnime( spep_2, 0, 16);  


setMoveKey( spep_2, 0,  0, 0,   0);
--setMoveKey(  spep_2+0,  0,   -180,  0,   0);
--setMoveKey(  spep_2+1,  0,  -190,  0,  0);--中央に近づく
setMoveKey(  spep_2+27,  0,   -100,  -50,  -128);


setScaleKey( spep_2,   0, 0.9, 0.9);
setScaleKey( spep_2+27,   0, 1.2, 1.2);


setRotateKey( spep_2+0, 0, 0 );
setRotateKey( spep_2+27, 0, 0 );


--文字エントリー
ctdon=entryEffectLife( spep_2+8, 10019, 20, 0, -1, 0, 200, 300); --ドン
setEffShake( spep_2+8, ctdon, 20, 5);

setEffMoveKey( spep_2 + 8, ctdon, 200, 300, 0 );
setEffMoveKey( spep_2 + 28, ctdon, 200, 300 , 0 );

setEffScaleKey( spep_2+8, ctdon, 0.0, 0.0);
setEffScaleKey( spep_2+18, ctdon, 1.3, 1.3);
setEffScaleKey( spep_2+23, ctdon, 1.3, 1.3);
setEffScaleKey( spep_2+28, ctdon, 3.0, 3.0);

setEffRotateKey( spep_2+8, ctdon, 0 );
setEffRotateKey( spep_2 + 28, ctdon, 0 );

setEffAlphaKey( spep_2+8, ctdon, 255);
setEffAlphaKey( spep_2+23, ctdon, 255);
setEffAlphaKey( spep_2+28, ctdon, 0);

--SE
SE0=playSe( spep_2, 1072 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 27; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge + 12, SE0, 0 );
    pauseAll( SP_dodge, 67 );
    
    --味方の固定
    setMoveKey(  SP_dodge+8,  0,   -100,  -50,  -128);
    setScaleKey( SP_dodge+8,   0, 1.2, 1.2);
    setRotateKey( SP_dodge+8, 0, 0 );

--    setDisp( SP_dodge+9, 0, 0);

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 9,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--味方の動き
setDisp( spep_2+145, 0, 0);

changeAnime(  spep_2+28,  0,  31);--片手をあげて構える 

setShakeChara( spep_2+145, 0, 54, 50);

setMoveKey(  spep_2+28,  0,   -100,  -50,  0);
setMoveKey( spep_2+110,    0,    -100,  -50,  0);
setMoveKey( spep_2+145,    0,   -700,  -50,   90);--離れる速度

setScaleKey( spep_2+28,   0, 0.9, 0.9);
setScaleKey( spep_2+30,   0, 0.9, 0.9);
setScaleKey( spep_2+145,   0, 0.9, 0.9);

setRotateKey( spep_2+145, 0, 0 );

--敵の動き
setDisp( spep_2+100, 1, 1);
setDisp( spep_2+210, 1, 0);

changeAnime( spep_2+100, 1, 102);

setMoveKey(  spep_2+100,  1,   900,  0,  -128);
setMoveKey( spep_2+130,    1,  800,    -330,  -120);
setMoveKey( spep_2+172,    1,  200,    -100,  -120);
setMoveKey( spep_2+210,    1,  200,    -100,  -120);

setScaleKey(  spep_2+100,   1,  1.2, 1.2 );
setScaleKey(  spep_2+210,   1,  1.2, 1.2 );

setRotateKey( spep_2+100, 1, 0 );
setRotateKey( spep_2+210, 1, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 24, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 24, shuchusen2, 86, 20 );

setEffMoveKey( spep_2 + 24, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 24, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 110, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 24, shuchusen2, 0 );
setEffRotateKey( spep_2 + 110, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 24, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 36, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 37, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 38, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 109, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 110, shuchusen2, 0 );



-- ** 顔カットイン ** --
speff = entryEffect( spep_2+10  + 14, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2+10  + 14, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +10 + 26, 190006, 72, 0x100, -1, 0, 20, 520);    --ゴゴゴゴ

setEffMoveKey( spep_2 +10 + 26, ctgogo, 20, 520, 0 );
setEffMoveKey( spep_2 +10 + 98, ctgogo, 20, 520, 0 );

setEffAlphaKey( spep_2 +10 + 26, ctgogo, 0 );
setEffAlphaKey( spep_2 +10 + 27, ctgogo, 255 );
setEffAlphaKey( spep_2 +10 + 28, ctgogo, 255 );
setEffAlphaKey( spep_2 +10 + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 +10 + 92, ctgogo, 255 );
setEffAlphaKey( spep_2 +10 + 94, ctgogo, 191 );
setEffAlphaKey( spep_2 +10 + 96, ctgogo, 112 );
setEffAlphaKey( spep_2 +10 + 98, ctgogo, 64 );

setEffRotateKey( spep_2 +10 + 26, ctgogo, 0);
setEffRotateKey( spep_2 +10 + 98, ctgogo, 0);

setEffScaleKey( spep_2 +10 + 26, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_2 +10 + 88, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_2 +10 + 98, ctgogo, 1.07, 1.07 );

--書き文字エントリー
ctzuo = entryEffectLife( spep_2+100+30, 10012, 32, 0, -1, 0, 200, 300); --ズオッ
setEffShake( spep_2+100+30, ctzuo, 32, 5);

setEffMoveKey( spep_2 +100 + 30, ctzuo, 200, 300, 0 );
setEffMoveKey( spep_2 +100 + 62, ctzuo, 200, 300, 0 );

setEffScaleKey( spep_2+100+30, ctzuo, 0.0, 0.0);
setEffScaleKey( spep_2+100+42, ctzuo, 2.3, 2.3);
setEffScaleKey( spep_2+100+52, ctzuo, 2.3, 2.3);
setEffScaleKey( spep_2+100+62, ctzuo, 6.0, 6.0);

setEffRotateKey( spep_2 +100+30, ctzuo, 30);
setEffRotateKey( spep_2 +100 + 62, ctzuo, 30);

setEffAlphaKey( spep_2+100+30, ctzuo, 255);
setEffAlphaKey( spep_2+100+52, ctzuo, 255);
setEffAlphaKey( spep_2+100+62, ctzuo, 0);

-- ** 集中線 ** --
rhusen1 = entryEffectLife( spep_2+110, 921, 94, 0x80,  -1,  0,  0,  0 );  --り線

setEffMoveKey( spep_2 + 110, rhusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 204, rhusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 110, rhusen1, 1.5, 1.5 );
setEffScaleKey( spep_2 + 204, rhusen1, 1.5, 1.5 );

setEffRotateKey( spep_2 + 110, rhusen1, 185 );
setEffRotateKey( spep_2 + 204, rhusen1, 185 );

setEffAlphaKey( spep_2 + 110, rhusen1, 255 );
setEffAlphaKey( spep_2 + 202, rhusen1, 255 );
setEffAlphaKey( spep_2 + 203, rhusen1, 255 );
setEffAlphaKey( spep_2 + 204, rhusen1, 0 );

--気弾
beam = entryEffect( spep_2+110, SP_02, 0x40+0x100,  0,  300,  0,  0);   --伸びるかめはめ波

setEffMoveKey( spep_2 + 110, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 150, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 +170, beam, 130, 0 , 0 );
setEffMoveKey( spep_2 +174, beam, 130, 0 , 0 );
setEffMoveKey( spep_2 +184, beam, 132 ,0, 0 );
setEffMoveKey( spep_2 +188, beam, 144 ,0, 0 );
setEffMoveKey( spep_2 +194, beam, 150, 0 , 0 );
setEffMoveKey( spep_2 +211, beam, 150, 0 , 0 );

setEffScaleKey(spep_2+110,beam,1,1);
setEffScaleKey(spep_2+202,beam,1,1);
setEffScaleKey(spep_2+208,beam,5,5);
setEffScaleKey(spep_2+233,beam,5,5);

setEffRotateKey( spep_2 + 110, beam, 0 );
setEffRotateKey( spep_2 + 233, beam, 0 );

setEffAlphaKey( spep_2 + 110, beam, 255 );
setEffAlphaKey( spep_2 + 210, beam, 255 );
setEffAlphaKey( spep_2 + 211, beam, 0 );
setEffAlphaKey( spep_2 + 233, beam, 0 );

-- ** 集中線 ** --
explosion = entryEffect( spep_2 -6+210, 1509,  0,  -1,  0,  180,  -50);   -- 爆発

setEffMoveKey( spep_2 -6 + 210, explosion, 180, -50 , 0 );
setEffMoveKey( spep_2  + 250, explosion, 180, -50 , 0 );

setEffScaleKey( spep_2 -6 + 210, explosion, 1, 1 );
setEffScaleKey( spep_2  + 250, explosion, 1, 1 );

setEffRotateKey( spep_2 -6 + 210, explosion, 185 );
setEffRotateKey( spep_2  + 250, explosion, 185 );

setEffAlphaKey( spep_2 -6 + 210, explosion, 255 );
setEffAlphaKey( spep_2  + 250, explosion, 255 );
setEffAlphaKey( spep_2  + 251, explosion, 0 );
setEffAlphaKey( spep_2  + 252, explosion, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 204, 906, 46, 0x100, -1, 100, -50, 0 );  --集中線
setEffShake( spep_2 + 204, shuchusen3, 46, 20 );

setEffMoveKey( spep_2 + 204, shuchusen3, 100, -50 , 0 );
setEffMoveKey( spep_2 + 250, shuchusen3, 100, -50 , 0 );

setEffScaleKey( spep_2 + 204, shuchusen3, 1.8, 1.8 );
setEffScaleKey( spep_2 + 250, shuchusen3, 1.8, 1.8 );

setEffRotateKey( spep_2 + 204, shuchusen3, 0 );
setEffRotateKey( spep_2 + 250, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 204, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 250, shuchusen3, 255 );



--SE
playSe( spep_2+36, 1018 );

se_1146 = playSe( spep_2 + 90, 1146 );
setSeVolume( spep_2 + 90, 1146, 0 );
setSeVolume( spep_2 + 140, 1146, 17.1 );
setSeVolume( spep_2 + 141, 1146, 24.3 );
setSeVolume( spep_2 + 142, 1146, 31.5 );
setSeVolume( spep_2 + 143, 1146, 38.7 );
setSeVolume( spep_2 + 144, 1146, 45.9 );
setSeVolume( spep_2 + 145, 1146, 53 );
setSeVolume( spep_2 + 146, 1146, 60.2 );
setSeVolume( spep_2 + 147, 1146, 67.4 );
setSeVolume( spep_2 + 148, 1146, 74.6 );
setSeVolume( spep_2 + 149, 1146, 81.8 );
setSeVolume( spep_2 + 150, 1146, 89 );
playSe( spep_2 + 110, 49 );
setSeVolume( spep_2 + 90, 49, 141 );
playSe( spep_2 + 114, 1021 );
setSeVolume( spep_2 + 114, 1021, 89 );
playSe( spep_2 + 114, 1060 );
setSeVolume( spep_2 + 114, 1060, 89 );
playSe( spep_2 + 186, 1023 );
setSeVolume( spep_2 + 186, 1023, 126 );

stopSe( spep_2 + 242, se_1146, 0 );

--黒背景
entryFadeBg(  spep_2+34, 16, 200, 0, 0, 0, 0, 180);     -- 　背景

--白フェード
entryFade( spep_2 +242, 6, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 254;

------------------------------------------------------
-- ガッ
------------------------------------------------------
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen4, 0 );
setEffRotateKey( spep_3 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen4, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 110, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 110, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 110, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 110, ctga, 255 );


shuchusen5 = entryEffectLife( spep_3 + 14,  1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusen5, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen5, 0 );
setEffRotateKey( spep_3 + 110, shuchusen5, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 110, shuchusen5, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_3 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_3 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3 + 1, 1, -40 );
setRotateKey( spep_3 + 2, 1, 80 );
setRotateKey( spep_3 + 3, 1, 80 );
setRotateKey( spep_3 + 4, 1, 200 );
setRotateKey( spep_3 + 5, 1, 200 );
setRotateKey( spep_3 + 6, 1, 360 );
setRotateKey( spep_3 + 7, 1, 360 );
setRotateKey( spep_3 + 8, 1, 558 );
setRotateKey( spep_3 + 9, 1, 558 );
setRotateKey( spep_3 + 10, 1, 425 );
setRotateKey( spep_3 + 11, 1, 425 );
setRotateKey( spep_3 + 12, 1, -40 );
setRotateKey( spep_3 + 110, 1, -40 );

-- ** 音 ** --
--playSe( spep_3 + 0, 1025 );
playSe( spep_3 + 15, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 100 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------
spep_0=0;

--味方の動き
setDisp( spep_0+18, 0, 1);
setDisp( spep_0+70, 0, 0);

changeAnime( spep_0+18, 0, 16);  

setShakeChara( spep_0+20, 0, 50, 12);
setShakeChara( spep_0+50, 0, 49, 5);

setMoveKey( spep_0+0,   0,    0, 0,   128);
setMoveKey( spep_0+15, 0,    0, -54,   128);
setMoveKey( spep_0+25, 0,  0, 0,   60);
setMoveKey( spep_0+30, 0,  -100, 180,   0);
setMoveKey( spep_0+35, 0,  0, 0,   -128);
setMoveKey( spep_0+ 70, 0,  0, 0,   -58);

setScaleKey( spep_0+0,   0, 1.5, 1.5);
setScaleKey( spep_0+35,   0, 1.5, 1.5);
setScaleKey( spep_0+55,   0, 1.8, 1.8);
setScaleKey( spep_0+70,   0, 1.2, 1.2);

setRotateKey( spep_0+0, 0, 0 );
setRotateKey( spep_0+70, 0, 0 );

--エフェクト
fe_shougeki = entryEffect( spep_0 + 5, 908, 0x100, -1, 0, 0, 0 );  --衝撃波のエフェクト
setEffMoveKey( spep_0 + 5, fe_shougeki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 55, fe_shougeki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 5, fe_shougeki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 55, fe_shougeki, 1.0, 1.0 );
setEffRotateKey( spep_0 + 5, fe_shougeki, 0 );
setEffRotateKey( spep_0 + 55, fe_shougeki, 0 );
setEffAlphaKey( spep_0 + 5, fe_shougeki, 255 );
setEffAlphaKey( spep_0 + 55, fe_shougeki, 255 );

-- 書き文字エントリー
ctzuzuzun = entryEffectLife( spep_0+20, 10013, 30, 0, -1, 0, 0, 400); -- ズズンッ
setEffShake(spep_0+20, ctzuzuzun, 30, 7);

setEffMoveKey( spep_0 + 20, ctzuzuzun, 0, 400 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzuzun, 0, 400 , 0 );

setEffScaleKey( spep_0+20, ctzuzuzun, 0.1, 0.1);
setEffScaleKey( spep_0+30, ctzuzuzun, 2.0, 2.0);
setEffScaleKey( spep_0+50, ctzuzuzun, 2.0, 2.0);

setEffRotateKey( spep_0 + 20, ctzuzuzun, 0 );
setEffRotateKey( spep_0 + 50, ctzuzuzun, 0 );

setEffAlphaKey(spep_0+20, ctzuzuzun, 255);
setEffAlphaKey(spep_0+40, ctzuzuzun, 255);
setEffAlphaKey(spep_0+50, ctzuzuzun, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 18, 906, 52 , 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 18, shuchusen1, 52 , 18 );

setEffMoveKey( spep_0 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 18, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 70, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0 + 70, shuchusen1, 180 );

setEffRotateKey( spep_0 + 18, shuchusen1, 0 );
setEffRotateKey( spep_0 + 70, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 70, shuchusen1, 255 );

--SE
se_1182 = playSe( spep_0 + 9, 1182 );
setSeVolume( spep_0 + 9, 1182, 56 );
se_0009 = playSe( spep_0 + 25, 9 );


--画面揺れ
--setQuake(spep_0+8,10,20);

--背景黒
entryFadeBg( spep_0+0, 10, 70, 2, 10, 10, 10, 150);       --ベース暗め　背景

--白フェード
--entryFade( spep_0+62 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+70

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
playSe( spep_1 + 6, 1035 );
stopSe( spep_1 + 6, se_1182, 0 );
stopSe( spep_1 + 6, se_0009, 0 );

-- ** 白フェード ** --
--entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ため〜敵に被弾まで
------------------------------------------------------
--味方の動き
setDisp( spep_2, 0, 1);

changeAnime( spep_2, 0, 16);  


setMoveKey( spep_2, 0,  0, 0,   0);
--setMoveKey(  spep_2+0,  0,   -180,  0,   0);
--setMoveKey(  spep_2+1,  0,  -190,  0,  0);--中央に近づく
setMoveKey(  spep_2+27,  0,   -100,  -50,  -128);


setScaleKey( spep_2,   0, 0.9, 0.9);
setScaleKey( spep_2+27,   0, 1.2, 1.2);


setRotateKey( spep_2+0, 0, 0 );
setRotateKey( spep_2+27, 0, 0 );


--文字エントリー
ctdon=entryEffectLife( spep_2+8, 10019, 20, 0, -1, 0, 200, 300); --ドン
setEffShake( spep_2+8, ctdon, 20, 5);

setEffMoveKey( spep_2 + 8, ctdon, 200, 300, 0 );
setEffMoveKey( spep_2 + 28, ctdon, 200, 300 , 0 );

setEffScaleKey( spep_2+8, ctdon, 0.0, 0.0);
setEffScaleKey( spep_2+18, ctdon, 1.3, 1.3);
setEffScaleKey( spep_2+23, ctdon, 1.3, 1.3);
setEffScaleKey( spep_2+28, ctdon, 3.0, 3.0);

setEffRotateKey( spep_2+8, ctdon, 0 );
setEffRotateKey( spep_2 + 28, ctdon, 0 );

setEffAlphaKey( spep_2+8, ctdon, 255);
setEffAlphaKey( spep_2+23, ctdon, 255);
setEffAlphaKey( spep_2+28, ctdon, 0);

--SE
SE0=playSe( spep_2, 1072 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 27; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge + 12, SE0, 0 );
    pauseAll( SP_dodge, 67 );
    
    --味方の固定
    setMoveKey(  SP_dodge+8,  0,   -100,  -50,  -128);
    setScaleKey( SP_dodge+8,   0, 1.2, 1.2);
    setRotateKey( SP_dodge+8, 0, 0 );

--    setDisp( SP_dodge+9, 0, 0);

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 9,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--味方の動き
setDisp( spep_2+145, 0, 0);

changeAnime(  spep_2+28,  0,  31);--片手をあげて構える 

setShakeChara( spep_2+145, 0, 54, 50);

setMoveKey(  spep_2+28,  0,   -100,  -50,  0);
setMoveKey( spep_2+110,    0,    -100,  -50,  0);
setMoveKey( spep_2+145,    0,   -700,  -50,   90);--離れる速度

setScaleKey( spep_2+28,   0, 0.9, 0.9);
setScaleKey( spep_2+30,   0, 0.9, 0.9);
setScaleKey( spep_2+145,   0, 0.9, 0.9);

setRotateKey( spep_2+145, 0, 0 );

--敵の動き
setDisp( spep_2+100, 1, 1);
setDisp( spep_2+210, 1, 0);

changeAnime( spep_2+100, 1, 102);

setMoveKey(  spep_2+100,  1,   900,  0,  -128);
setMoveKey( spep_2+130,    1,  800,    -330,  -120);
setMoveKey( spep_2+172,    1,  200,    -100,  -120);
setMoveKey( spep_2+210,    1,  200,    -100,  -120);

setScaleKey(  spep_2+100,   1,  1.2, 1.2 );
setScaleKey(  spep_2+210,   1,  1.2, 1.2 );

setRotateKey( spep_2+100, 1, 0 );
setRotateKey( spep_2+210, 1, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 24, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 24, shuchusen2, 86, 20 );

setEffMoveKey( spep_2 + 24, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 24, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 110, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 24, shuchusen2, 0 );
setEffRotateKey( spep_2 + 110, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 24, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 36, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 37, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 38, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 109, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 110, shuchusen2, 0 );



-- ** 顔カットイン ** --
--speff = entryEffect( spep_2+10  + 14, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2+10  + 14, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +10 + 26, 190006, 72, 0x100, -1, 0, 20, 520);    --ゴゴゴゴ

setEffMoveKey( spep_2 +10 + 26, ctgogo, 20, 520, 0 );
setEffMoveKey( spep_2 +10 + 98, ctgogo, 20, 520, 0 );

setEffAlphaKey( spep_2 +10 + 26, ctgogo, 0 );
setEffAlphaKey( spep_2 +10 + 27, ctgogo, 255 );
setEffAlphaKey( spep_2 +10 + 28, ctgogo, 255 );
setEffAlphaKey( spep_2 +10 + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 +10 + 92, ctgogo, 255 );
setEffAlphaKey( spep_2 +10 + 94, ctgogo, 191 );
setEffAlphaKey( spep_2 +10 + 96, ctgogo, 112 );
setEffAlphaKey( spep_2 +10 + 98, ctgogo, 64 );

setEffRotateKey( spep_2 +10 + 26, ctgogo, 0);
setEffRotateKey( spep_2 +10 + 98, ctgogo, 0);

setEffScaleKey( spep_2 +10 + 26, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_2 +10 + 88, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_2 +10 + 98, ctgogo, -1.07, 1.07 );

--書き文字エントリー
ctzuo = entryEffectLife( spep_2+100+30, 10012, 32, 0, -1, 0, 200, 300); --ズオッ
setEffShake( spep_2+100+30, ctzuo, 32, 5);

setEffMoveKey( spep_2 +100 + 30, ctzuo, 200, 300, 0 );
setEffMoveKey( spep_2 +100 + 62, ctzuo, 200, 300, 0 );

setEffScaleKey( spep_2+100+30, ctzuo, 0.0, 0.0);
setEffScaleKey( spep_2+100+42, ctzuo, 2.3, 2.3);
setEffScaleKey( spep_2+100+52, ctzuo, 2.3, 2.3);
setEffScaleKey( spep_2+100+62, ctzuo, 6.0, 6.0);

setEffRotateKey( spep_2 +100+30, ctzuo, 30);
setEffRotateKey( spep_2 +100 + 62, ctzuo, 30);

setEffAlphaKey( spep_2+100+30, ctzuo, 255);
setEffAlphaKey( spep_2+100+52, ctzuo, 255);
setEffAlphaKey( spep_2+100+62, ctzuo, 0);

-- ** 集中線 ** --
rhusen1 = entryEffectLife( spep_2+110, 921, 94, 0x80,  -1,  0,  0,  0 );  --り線

setEffMoveKey( spep_2 + 110, rhusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 204, rhusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 110, rhusen1, 1.5, 1.5 );
setEffScaleKey( spep_2 + 204, rhusen1, 1.5, 1.5 );

setEffRotateKey( spep_2 + 110, rhusen1, 185 );
setEffRotateKey( spep_2 + 204, rhusen1, 185 );

setEffAlphaKey( spep_2 + 110, rhusen1, 255 );
setEffAlphaKey( spep_2 + 202, rhusen1, 255 );
setEffAlphaKey( spep_2 + 203, rhusen1, 255 );
setEffAlphaKey( spep_2 + 204, rhusen1, 0 );

--気弾
beam = entryEffect( spep_2+110, SP_02, 0x40+0x100,  0,  300,  0,  0);   --伸びるかめはめ波

setEffMoveKey( spep_2 + 110, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 150, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 +170, beam, 130, 0 , 0 );
setEffMoveKey( spep_2 +174, beam, 130, 0 , 0 );
setEffMoveKey( spep_2 +184, beam, 132 ,0, 0 );
setEffMoveKey( spep_2 +188, beam, 144 ,0, 0 );
setEffMoveKey( spep_2 +194, beam, 150, 0 , 0 );
setEffMoveKey( spep_2 +211, beam, 150, 0 , 0 );

setEffScaleKey(spep_2+110,beam,1,1);
setEffScaleKey(spep_2+202,beam,1,1);
setEffScaleKey(spep_2+208,beam,5,5);
setEffScaleKey(spep_2+233,beam,5,5);

setEffRotateKey( spep_2 + 110, beam, 0 );
setEffRotateKey( spep_2 + 233, beam, 0 );

setEffAlphaKey( spep_2 + 110, beam, 255 );
setEffAlphaKey( spep_2 + 210, beam, 255 );
setEffAlphaKey( spep_2 + 211, beam, 0 );
setEffAlphaKey( spep_2 + 233, beam, 0 );

-- ** 集中線 ** --
explosion = entryEffect( spep_2 -6+210, 1509,  0,  -1,  0,  180,  -50);   -- 爆発

setEffMoveKey( spep_2 -6 + 210, explosion, 180, -50 , 0 );
setEffMoveKey( spep_2  + 250, explosion, 180, -50 , 0 );

setEffScaleKey( spep_2 -6 + 210, explosion, 1, 1 );
setEffScaleKey( spep_2  + 250, explosion, 1, 1 );

setEffRotateKey( spep_2 -6 + 210, explosion, 185 );
setEffRotateKey( spep_2  + 250, explosion, 185 );

setEffAlphaKey( spep_2 -6 + 210, explosion, 255 );
setEffAlphaKey( spep_2  + 250, explosion, 255 );
setEffAlphaKey( spep_2  + 251, explosion, 0 );
setEffAlphaKey( spep_2  + 252, explosion, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 204, 906, 46, 0x100, -1, 100, -50, 0 );  --集中線
setEffShake( spep_2 + 204, shuchusen3, 46, 20 );

setEffMoveKey( spep_2 + 204, shuchusen3, 100, -50 , 0 );
setEffMoveKey( spep_2 + 250, shuchusen3, 100, -50 , 0 );

setEffScaleKey( spep_2 + 204, shuchusen3, 1.8, 1.8 );
setEffScaleKey( spep_2 + 250, shuchusen3, 1.8, 1.8 );

setEffRotateKey( spep_2 + 204, shuchusen3, 0 );
setEffRotateKey( spep_2 + 250, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 204, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 250, shuchusen3, 255 );



--SE
playSe( spep_2+36, 1018 );

se_1146 = playSe( spep_2 + 90, 1146 );
setSeVolume( spep_2 + 90, 1146, 0 );
setSeVolume( spep_2 + 140, 1146, 17.1 );
setSeVolume( spep_2 + 141, 1146, 24.3 );
setSeVolume( spep_2 + 142, 1146, 31.5 );
setSeVolume( spep_2 + 143, 1146, 38.7 );
setSeVolume( spep_2 + 144, 1146, 45.9 );
setSeVolume( spep_2 + 145, 1146, 53 );
setSeVolume( spep_2 + 146, 1146, 60.2 );
setSeVolume( spep_2 + 147, 1146, 67.4 );
setSeVolume( spep_2 + 148, 1146, 74.6 );
setSeVolume( spep_2 + 149, 1146, 81.8 );
setSeVolume( spep_2 + 150, 1146, 89 );
playSe( spep_2 + 110, 49 );
setSeVolume( spep_2 + 90, 49, 141 );
playSe( spep_2 + 114, 1021 );
setSeVolume( spep_2 + 114, 1021, 89 );
playSe( spep_2 + 114, 1060 );
setSeVolume( spep_2 + 114, 1060, 89 );
playSe( spep_2 + 186, 1023 );
setSeVolume( spep_2 + 186, 1023, 126 );

stopSe( spep_2 + 242, se_1146, 0 );

--黒背景
entryFadeBg(  spep_2+34, 16, 200, 0, 0, 0, 0, 180);     -- 　背景

--白フェード
entryFade( spep_2 +242, 6, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 254;

------------------------------------------------------
-- ガッ
------------------------------------------------------
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen4, 0 );
setEffRotateKey( spep_3 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen4, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 110, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 110, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 110, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 110, ctga, 255 );


shuchusen5 = entryEffectLife( spep_3 + 14,  1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusen5, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen5, 0 );
setEffRotateKey( spep_3 + 110, shuchusen5, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 110, shuchusen5, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_3 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_3 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3 + 1, 1, -40 );
setRotateKey( spep_3 + 2, 1, 80 );
setRotateKey( spep_3 + 3, 1, 80 );
setRotateKey( spep_3 + 4, 1, 200 );
setRotateKey( spep_3 + 5, 1, 200 );
setRotateKey( spep_3 + 6, 1, 360 );
setRotateKey( spep_3 + 7, 1, 360 );
setRotateKey( spep_3 + 8, 1, 558 );
setRotateKey( spep_3 + 9, 1, 558 );
setRotateKey( spep_3 + 10, 1, 425 );
setRotateKey( spep_3 + 11, 1, 425 );
setRotateKey( spep_3 + 12, 1, -40 );
setRotateKey( spep_3 + 110, 1, -40 );

-- ** 音 ** --
--playSe( spep_3 + 0, 1025 );
playSe( spep_3 + 15, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 100 );

end

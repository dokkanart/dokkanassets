--4017790:ピッコロ大魔王_爆烈魔撃閃
--sp_effect_b1_00106

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
SP_01=	155167	;--	ため〜光線発射
SP_02=	155169	;--	着弾〜敵に追いつく
SP_03=	155171	;--	着弾〜敵に追いつく
SP_04=	155173	;--	振りかぶり〜拳アップ
SP_05=	155174	;--	敵にヒット〜敵が地面に激突
SP_06=	155175	;--	敵にヒット〜敵が地面に激突

--エフェクト(敵)
SP_01x=	155168	;--	ため〜光線発射	(敵)
SP_02x=	155170	;--	着弾〜敵に追いつく	(敵)
SP_03x=	155172	;--	着弾〜敵に追いつく	(敵)
SP_04x=	155173	;--	振りかぶり〜拳アップ	
SP_05x=	155174	;--	敵にヒット〜敵が地面に激突	
SP_06x=	155175	;--	敵にヒット〜敵が地面に激突	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0= 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 242, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 242, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 242, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 242, tame, 255 );

--SE
playSe( spep_0 + 0, 1014 );
setSeVolume( spep_0 + 0, 1014, 126 );
se_1044 = playSe( spep_0 + 17, 1044 );
setSeVolume( spep_0 + 17, 1044, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 238, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1044, 0 );
    --stopSe( SP_dodge - 12, se_1182, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge +9, 1, 157.6, -191.5 , 0 );
    setScaleKey( SP_dodge+9, 1, 3.65, 3.65 );
    setRotateKey( SP_dodge+9, 1, 0 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--顔カットイン
speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0  +16, 190006, 72, 0x100, -1, 0, 110, 520);-- ゴゴゴゴ
setEffMoveKey(  spep_0  +16,  ctgogo,  110,  520);
setEffMoveKey(  spep_0  +88,  ctgogo,  110,  520);

setEffAlphaKey( spep_0  +16, ctgogo, 0 );
setEffAlphaKey( spep_0  + 17, ctgogo, 255 );
setEffAlphaKey( spep_0  + 18, ctgogo, 255 );
setEffAlphaKey( spep_0  + 82, ctgogo, 255 );
setEffAlphaKey( spep_0  + 84, ctgogo, 191 );
setEffAlphaKey( spep_0  + 86, ctgogo, 112 );
setEffAlphaKey( spep_0  + 88, ctgogo, 64 );

setEffRotateKey(  spep_0  +16,  ctgogo,  0);
setEffRotateKey(  spep_0  +88,  ctgogo,  0);

setEffScaleKey(  spep_0  +16,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0  +78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0  +88,  ctgogo, 1.07, 1.07 );

--文字エントリー
ctgyan = entryEffectLife( spep_0-3 + 138,  10006, 26, 0x100, -1, 0, 58.1, 354.1 );

setEffMoveKey( spep_0-3 + 138, ctgyan, 58.1, 354.1 , 0 );
setEffMoveKey( spep_0-3 + 140, ctgyan, 98.1, 314 , 0 );
setEffMoveKey( spep_0-3 + 142, ctgyan, 138.1, 274 , 0 );
setEffMoveKey( spep_0-3 + 154, ctgyan, 138.1, 274 , 0 );
setEffMoveKey( spep_0-3 + 164, ctgyan, 138.1, 274 , 0 );

setEffScaleKey( spep_0-3 + 138, ctgyan, 2.08, 2.08 );
setEffScaleKey( spep_0-3 + 140, ctgyan, 2.67, 2.67 );
setEffScaleKey( spep_0-3 + 142, ctgyan, 3.27, 3.27 );
setEffScaleKey( spep_0-3 + 154, ctgyan, 3.27, 3.27 );
setEffScaleKey( spep_0-3 + 164, ctgyan, 3.27, 3.27 );

setEffRotateKey( spep_0-3 + 138, ctgyan, 0 );
setEffRotateKey( spep_0-3 + 140, ctgyan, 3.6 );
setEffRotateKey( spep_0-3 + 142, ctgyan, 7.2 );
setEffRotateKey( spep_0-3 + 154, ctgyan, 7.2 );
setEffRotateKey( spep_0-3 + 164, ctgyan, 7.2 );

setEffAlphaKey( spep_0 -3 + 138, ctgyan, 255 );
setEffAlphaKey( spep_0 -3 + 160, ctgyan, 255 );
setEffAlphaKey( spep_0 -3 + 162, ctgyan, 128 );
setEffAlphaKey( spep_0 -3 + 164, ctgyan, 0 );

-- 文字エントリー --
ctdon = entryEffectLife( spep_0-3 + 204,  10019, 20, 0x100, -1, 0, 146.2, 138.1 );

setEffMoveKey( spep_0-3 + 204, ctdon, 146.2, 138.1 , 0 );
setEffMoveKey( spep_0-3 + 206, ctdon, 117.2, 179.6 , 0 );
setEffMoveKey( spep_0-3 + 208, ctdon, 88.1, 221 , 0 );
setEffMoveKey( spep_0-3 + 220, ctdon, 88.1, 221 , 0 );
setEffMoveKey( spep_0-3 + 222, ctdon, 88.1, 226 , 0 );
setEffMoveKey( spep_0-3 + 224, ctdon, 88.1, 231 , 0 );

setEffScaleKey( spep_0-3 + 204, ctdon, 1.47, 1.47 );
setEffScaleKey( spep_0-3 + 206, ctdon, 1.92, 1.92 );
setEffScaleKey( spep_0-3 + 208, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 220, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 222, ctdon, 2.44, 2.44 );
setEffScaleKey( spep_0-3 + 224, ctdon, 2.5, 2.5 );

setEffRotateKey( spep_0-3 + 204, ctdon, 18.7 );
setEffRotateKey( spep_0-3 + 224, ctdon, 18.7 );

setEffAlphaKey( spep_0-3 + 204, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 220, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 222, ctdon, 128 );
setEffAlphaKey( spep_0-3 + 224, ctdon, 0 );

--SE
playSe( spep_0 + 16, 1018 );
se_1109 = playSe( spep_0 + 90, 1109 );
se_0044 = playSe( spep_0 + 94, 44 );
playSe( spep_0 + 145, 182 );
playSe( spep_0 + 145, 9 );
playSe( spep_0 + 200, 1003 );
setSeVolume( spep_0 + 200, 1003, 71 );
se_1145 = playSe( spep_0 + 204, 1145 );
setSeVolume( spep_0 + 204, 1145, 71 );
se_1177 = playSe( spep_0 + 204, 1177 );
setSeVolume( spep_0 + 204, 1177, 63 );

stopSe( spep_0 + 91, se_1044, 26 );
stopSe( spep_0 + 98, se_1109, 6 );
stopSe( spep_0 + 114, se_0044, 24 );


--次のうごき
spep_1 = spep_0+236;

------------------------------------------------------
-- 着弾〜敵に追いつく
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, hit_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 140, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 140, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, hit_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 140, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 140, hit_b, 255 );

--文字エントリー
ctbon = entryEffectLife( spep_1-3 + 24,  10027, 22, 0x100, -1, 0, 26.1, -8 );

setEffMoveKey( spep_1-3 + 24, ctbon, 26.1, -8 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbon, 26.1, 62.4 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbon, 26.1, 132.8 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbon, 26.1, 135.6 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbon, 26.1, 138.3 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbon, 26.1, 141 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbon, 26.1, 143.7 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbon, 26.1, 146.4 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbon, 26.1, 149.1 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbon, 26.1, 151.8 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbon, 26.1, 146.8 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbon, 26.1, 141.8 , 0 );

setEffScaleKey( spep_1-3 + 24, ctbon, 1, 1 );
setEffScaleKey( spep_1-3 + 26, ctbon, 1.9, 1.4 );
setEffScaleKey( spep_1-3 + 28, ctbon, 2.8, 1.8 );
setEffScaleKey( spep_1-3 + 42, ctbon, 2.8, 1.8 );
setEffScaleKey( spep_1-3 + 44, ctbon, 3.07, 1.98 );
setEffScaleKey( spep_1-3 + 46, ctbon, 3.34, 2.15 );

setEffRotateKey( spep_1-3 + 24, ctbon, 0 );
setEffRotateKey( spep_1-3 + 46, ctbon, 0 );

setEffAlphaKey( spep_1-3 + 24, ctbon, 255 );
setEffAlphaKey( spep_1-3 + 42, ctbon, 255 );
setEffAlphaKey( spep_1-3 + 44, ctbon, 128 );
setEffAlphaKey( spep_1-3 + 46, ctbon, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 138, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1-3 + 20, 1, 106 );
changeAnime( spep_1-3 + 30, 1, 108 );
changeAnime( spep_1-3 + 44, 1, 5 );
changeAnime( spep_1-3 + 104, 1, 106 );

setMoveKey( spep_1 + 0, 1, -51.9, -290 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -45.7, -284.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, -39.4, -278.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, -33.1, -272.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, -26.9, -266.7 , 0 );
setMoveKey( spep_1-3 + 10, 1, -20.6, -260.9 , 0 );
setMoveKey( spep_1-3 + 12, 1, -14.4, -255 , 0 );
setMoveKey( spep_1-3 + 14, 1, -8.1, -249.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, -1.8, -243.4 , 0 );
setMoveKey( spep_1-3 + 19, 1, 4.4, -237.6 , 0 );
setMoveKey( spep_1-3 + 20, 1, 2.2, -239 , 0 );
setMoveKey( spep_1-3 + 22, 1, 3.7, -239 , 0 );
setMoveKey( spep_1-3 + 24, 1, 7.5, -242.9 , 0 );
setMoveKey( spep_1-3 + 26, 1, 7.5, -239.8 , 0 );
setMoveKey( spep_1-3 + 29, 1, 6.4, -238.2 , 0 );
setMoveKey( spep_1-3 + 30, 1, 100.2, -110.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 113.7, -89.3 , 0 );
setMoveKey( spep_1-3 + 34, 1, 118.9, -54.2 , 0 );
setMoveKey( spep_1-3 + 36, 1, 124.3, -39 , 0 );
setMoveKey( spep_1-3 + 38, 1, 139.3, -11.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, 153.6, 9.4 , 0 );
setMoveKey( spep_1-3 + 43, 1, 159.9, 32.6 , 0 );
setMoveKey( spep_1-3 + 44, 1, 165.1, 51.6 , 0 );
setMoveKey( spep_1-3 + 46, 1, 170.9, 64.2 , 0 );
setMoveKey( spep_1-3 + 48, 1, 177.6, 65.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 184, 70.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 191.7, 71.8 , 0 );
setMoveKey( spep_1-3 + 54, 1, 186.3, 72 , 0 );
setMoveKey( spep_1-3 + 56, 1, 183.1, 79.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 185.7, 69.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, 185.9, 78.6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 188.5, 73.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, 186.7, 82 , 0 );
setMoveKey( spep_1-3 + 66, 1, 193.1, 79.9 , 0 );
setMoveKey( spep_1-3 + 68, 1, 192.7, 83.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 193.5, 83.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, 194.2, 84.6 , 0 );
setMoveKey( spep_1-3 + 74, 1, 194.9, 85.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 195.5, 85.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 196, 86.4 , 0 );
setMoveKey( spep_1-3 + 80, 1, 196.5, 86.9 , 0 );
setMoveKey( spep_1-3 + 82, 1, 196.9, 87.3 , 0 );
setMoveKey( spep_1-3 + 84, 1, 197.3, 87.7 , 0 );
setMoveKey( spep_1-3 + 86, 1, 197.7, 88.1 , 0 );
setMoveKey( spep_1-3 + 88, 1, 198, 88.4 , 0 );
setMoveKey( spep_1-3 + 90, 1, 198.2, 88.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 198.5, 88.9 , 0 );
setMoveKey( spep_1-3 + 94, 1, 198.7, 89.1 , 0 );
setMoveKey( spep_1-3 + 96, 1, 198.9, 89.3 , 0 );
setMoveKey( spep_1-3 + 98, 1, 199.1, 89.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 199.2, 89.6 , 0 );
setMoveKey( spep_1-3 + 103, 1, 199.3, 89.8 , 0 );
setMoveKey( spep_1-3 + 104, 1, -33.6, -52.7 , 0 );
setMoveKey( spep_1-3 + 106, 1, -27.7, -48.9 , 0 );
setMoveKey( spep_1-3 + 108, 1, -21.8, -45.1 , 0 );
setMoveKey( spep_1-3 + 110, 1, -16, -41.3 , 0 );
setMoveKey( spep_1-3 + 112, 1, -10.1, -37.6 , 0 );
setMoveKey( spep_1-3 + 114, 1, -4.2, -33.8 , 0 );
setMoveKey( spep_1-3 + 116, 1, 1.6, -30 , 0 );
setMoveKey( spep_1-3 + 118, 1, 7.5, -26.2 , 0 );
setMoveKey( spep_1-3 + 120, 1, 13.3, -22.4 , 0 );
setMoveKey( spep_1-3 + 122, 1, 19.2, -18.6 , 0 );
setMoveKey( spep_1-3 + 124, 1, 25.1, -14.8 , 0 );
setMoveKey( spep_1-3 + 126, 1, 30.9, -11 , 0 );
setMoveKey( spep_1-3 + 128, 1, 36.8, -7.2 , 0 );
setMoveKey( spep_1-3 + 130, 1, 42.7, -3.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 48.5, 0.4 , 0 );
setMoveKey( spep_1-3 + 134, 1, 54.4, 4.2 , 0 );
setMoveKey( spep_1-3 + 136, 1, 60.3, 8 , 0 );
setMoveKey( spep_1-3 + 138, 1, 66.1, 11.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.15, 2.15 );
--setScaleKey( spep_1-3 + 2, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 4, 1, 1.89, 1.89 );
setScaleKey( spep_1-3 + 6, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 8, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 10, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 14, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 16, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 19, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 32, 1, 0.9, 0.9 );
setScaleKey( spep_1-3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 36, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 38, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 40, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 43, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 44, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 46, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 48, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 50, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 52, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 54, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 56, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 58, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 60, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 62, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 64, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 66, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 68, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 70, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 72, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 74, 1, 0.16, 0.16 );
setScaleKey( spep_1-3 + 76, 1, 0.16, 0.16 );
setScaleKey( spep_1-3 + 78, 1, 0.15, 0.15 );
setScaleKey( spep_1-3 + 82, 1, 0.15, 0.15 );
setScaleKey( spep_1-3 + 84, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 90, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 92, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 103, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 104, 1, 1.86, 1.86 );
setScaleKey( spep_1-3 + 138, 1, 1.86, 1.86 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 19, 1, 0 );
setRotateKey( spep_1-3 + 20, 1, -49.5 );
setRotateKey( spep_1-3 + 29, 1, -49.5 );
setRotateKey( spep_1-3 + 30, 1, -10.9 );
setRotateKey( spep_1-3 + 32, 1, -12.7 );
setRotateKey( spep_1-3 + 34, 1, -14.5 );
setRotateKey( spep_1-3 + 36, 1, -16.3 );
setRotateKey( spep_1-3 + 38, 1, -18.1 );
setRotateKey( spep_1-3 + 40, 1, -19.9 );
setRotateKey( spep_1-3 + 43, 1, -21.6 );
setRotateKey( spep_1-3 + 44, 1, 36.4 );
setRotateKey( spep_1-3 + 103, 1, 36.4 );
setRotateKey( spep_1-3 + 104, 1, 7.1 );
setRotateKey( spep_1-3 + 110, 1, 7.1 );
setRotateKey( spep_1-3 + 112, 1, 7 );
setRotateKey( spep_1-3 + 116, 1, 7 );
setRotateKey( spep_1-3 + 118, 1, 6.9 );
setRotateKey( spep_1-3 + 124, 1, 6.9 );
setRotateKey( spep_1-3 + 126, 1, 6.8 );
setRotateKey( spep_1-3 + 132, 1, 6.8 );
setRotateKey( spep_1-3 + 134, 1, 6.7 );
setRotateKey( spep_1-3 + 138, 1, 6.7 );

--SE
playSe( spep_1 + 29, 1011 );
playSe( spep_1 + 32, 1023 );
playSe( spep_1 + 89, 1106 );
setSeVolume( spep_1 + 89, 1106, 178 );
playSe( spep_1 + 90, 1108 );
setSeVolume( spep_1 + 90, 1108, 178 );
se_1109 = playSe( spep_1 + 95, 1109 );
se_0044 = playSe( spep_1 + 99, 44 );


stopSe( spep_1 + 103, se_1109, 6 );
stopSe( spep_1 + 119, se_0044, 24 );
stopSe( spep_1 + 44, se_1145, 0 );
stopSe( spep_1 + 44, se_1177, 0 );
stopSe( spep_1 + 103, se_1109, 6 );
stopSe( spep_1 + 119, se_0044, 24 );


--白フェード
entryFade( spep_1 + 132, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 142, 0,  0, 0, 0, 255 ); --くろ 背景


--次のうごき
spep_2 = spep_1+140;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 振りかぶり〜拳アップ
------------------------------------------------------

-- ** エフェクト等 ** --
panting = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting, 0, 0, 0 );
setEffMoveKey( spep_3 + 164, panting, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting, 1.0, 1.0 );
setEffScaleKey( spep_3 + 164, panting, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting, 0 );
setEffRotateKey( spep_3 + 164, panting, 0 );
setEffAlphaKey( spep_3 + 0, panting, 255 );
setEffAlphaKey( spep_3 + 164, panting, 255 );

--SE
playSe( spep_3 + 0, 1072 );
setSeVolume( spep_3 + 0, 1072, 79 );
playSe( spep_3 + 4, 9 );
setSeVolume( spep_3 + 4, 9, 0 );
setSeVolume( spep_3 + 4, 9, 0 );
setSeVolume( spep_3 + 5, 9, 3.15 );
setSeVolume( spep_3 + 6, 9, 6.3 );
setSeVolume( spep_3 + 7, 9, 9.45 );
setSeVolume( spep_3 + 8, 9, 12.6 );
setSeVolume( spep_3 + 9, 9, 15.75 );
setSeVolume( spep_3 + 10, 9, 18.9 );
setSeVolume( spep_3 + 11, 9, 22.05 );
setSeVolume( spep_3 + 12, 9, 25.2 );
setSeVolume( spep_3 + 13, 9, 28.35 );
setSeVolume( spep_3 + 14, 9, 31.50 );
setSeVolume( spep_3 + 15, 9, 34.6 );
setSeVolume( spep_3 + 16, 9, 37.8 );
setSeVolume( spep_3 + 17, 9, 40.95 );
setSeVolume( spep_3 + 18, 9, 44.1 );
setSeVolume( spep_3 + 19, 9, 47.25 );
setSeVolume( spep_3 + 20, 9, 50.4 );
setSeVolume( spep_3 + 21, 9, 53.55 );
setSeVolume( spep_3 + 22, 9, 56.7 );
setSeVolume( spep_3 + 23, 9, 59.85 );
setSeVolume( spep_3 + 24, 9, 63 );
playSe( spep_3 + 6, 8 );
setSeVolume( spep_3 + 6, 8, 126 );
playSe( spep_3 + 11, 1018 );
setSeVolume( spep_3 + 11, 1018, 71 );
playSe( spep_3 + 57, 1004 );
playSe( spep_3 + 59, 8 );
setSeVolume( spep_3 + 59, 8, 89 );
se_1116 = playSe( spep_3 + 61, 1116 );
playSe( spep_3 + 108, 1004 );
setSeVolume( spep_3 + 108, 1004, 126 );
playSe( spep_3 + 108, 1182 );
setSeVolume( spep_3 + 108, 1182, 0 );
setSeVolume( spep_3 + 111, 1182, 11.75 );
setSeVolume( spep_3 + 112, 1182, 23.5 );
setSeVolume( spep_3 + 113, 1182, 35.25 );
setSeVolume( spep_3 + 114, 1182, 47 );
setSeVolume( spep_3 + 115, 1182, 58.75 );
setSeVolume( spep_3 + 116, 1182, 70.5 );
setSeVolume( spep_3 + 117, 1182, 82.25 );
setSeVolume( spep_3 + 118, 1182, 94 );
setSeVolume( spep_3 + 119, 1182, 105.75 );
setSeVolume( spep_3 + 120, 1182, 117.5 );
setSeVolume( spep_3 + 121, 1182, 129.25 );
setSeVolume( spep_3 + 122, 1182, 141 );
playSe( spep_3 + 126, 1072 );
setSeVolume( spep_3 + 126, 1072, 126 );

stopSe( spep_3 + 81, se_1116, 24 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 168, 0,  0, 0, 0, 255 ); --くろ 背景


-- ** 次の準備 ** --
spep_4 = spep_3 + 164;
------------------------------------------------------
-- 敵にヒット〜敵が地面に激突
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 338, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 338, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 338, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 338, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 338, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 338, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 338, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 338, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 101, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4-3 + 80, 1, 105 );

setMoveKey( spep_4 + 0, 1, -3.9, -71.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 103.8, -90.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 46.9, -63.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, -38.7, -73.2 , 0 );
setMoveKey( spep_4-3 + 8, 1, -57.9, -71.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, -77, -69.4 , 0 );
setMoveKey( spep_4-3 + 12, 1, 1.4, -76.4 , 0 );
setMoveKey( spep_4-3 + 14, 1, 79.9, -83.4 , 0 );
setMoveKey( spep_4-3 + 16, 1, -46.2, -59.6 , 0 );
setMoveKey( spep_4-3 + 18, 1, -4.1, -19.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, -14.2, -113.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 5.1, -50.8 , 0 );
setMoveKey( spep_4-3 + 24, 1, -35.8, -115.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, -6.3, -70.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 0.3, -55 , 0 );
setMoveKey( spep_4-3 + 30, 1, 6.8, -39.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, -11.9, -74.1 , 0 );
setMoveKey( spep_4-3 + 34, 1, 35.2, -58.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, -24.9, -95.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, -21.4, -86.6 , 0 );
setMoveKey( spep_4-3 + 40, 1, -17.9, -77.6 , 0 );
setMoveKey( spep_4-3 + 42, 1, -21.7, -78.2 , 0 );
setMoveKey( spep_4-3 + 44, 1, -9, -51.3 , 0 );
setMoveKey( spep_4-3 + 46, 1, -8.9, -56.2 , 0 );
setMoveKey( spep_4-3 + 48, 1, -8.8, -61 , 0 );
setMoveKey( spep_4-3 + 50, 1, -6.8, -76.1 , 0 );
setMoveKey( spep_4-3 + 52, 1, -2.9, -75.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, -3, -75.7 , 0 );
setMoveKey( spep_4-3 + 56, 1, -3, -75.5 , 0 );
setMoveKey( spep_4-3 + 58, 1, -3.1, -75.3 , 0 );
setMoveKey( spep_4-3 + 60, 1, -3.1, -75.2 , 0 );
setMoveKey( spep_4-3 + 62, 1, -2.3, -75.6 , 0 );
setMoveKey( spep_4-3 + 64, 1, 3.4, -79.1 , 0 );
setMoveKey( spep_4-3 + 66, 1, 18.8, -88.8 , 0 );
setMoveKey( spep_4-3 + 68, 1, 49, -108 , 0 );
setMoveKey( spep_4-3 + 70, 1, 98.8, -139.8 , 0 );
setMoveKey( spep_4-3 + 72, 1, 173.2, -187.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, 276.9, -253.6 , 0 );
setMoveKey( spep_4-3 + 76, 1, 415, -341.9 , 0 );
setMoveKey( spep_4-3 + 79, 1, 592.2, -455.3 , 0 );
setMoveKey( spep_4-3 + 80, 1, 56.2, -479.7 , 0 );
setMoveKey( spep_4-3 + 82, 1, 32, -311.7 , 0 );
setMoveKey( spep_4-3 + 84, 1, 22.1, -242.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, 15.7, -198.5 , 0 );
setMoveKey( spep_4-3 + 88, 1, 11.3, -167.5 , 0 );
setMoveKey( spep_4-3 + 90, 1, 9, -167 , 0 );
setMoveKey( spep_4-3 + 92, 1, 7.3, -166.5 , 0 );
setMoveKey( spep_4-3 + 94, 1, 5.9, -166.1 , 0 );
setMoveKey( spep_4-3 + 96, 1, 4.9, -165.8 , 0 );
setMoveKey( spep_4-3 + 98, 1, 4.2, -165.5 , 0 );
setMoveKey( spep_4-3 + 101, 1, 3.9, -165.2 , 0 );

setScaleKey( spep_4 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 62, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 66, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 68, 1, 1.29, 1.29 );
setScaleKey( spep_4-3 + 70, 1, 1.39, 1.39 );
setScaleKey( spep_4-3 + 72, 1, 1.53, 1.53 );
setScaleKey( spep_4-3 + 74, 1, 1.74, 1.74 );
setScaleKey( spep_4-3 + 76, 1, 2.01, 2.01 );
setScaleKey( spep_4-3 + 79, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 80, 1, 7.49, 7.49 );
setScaleKey( spep_4-3 + 82, 1, 3.86, 3.86 );
setScaleKey( spep_4-3 + 84, 1, 2.38, 2.38 );
setScaleKey( spep_4-3 + 86, 1, 1.42, 1.42 );
setScaleKey( spep_4-3 + 88, 1, 0.76, 0.76 );
setScaleKey( spep_4-3 + 90, 1, 0.64, 0.64 );
setScaleKey( spep_4-3 + 92, 1, 0.54, 0.54 );
setScaleKey( spep_4-3 + 94, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 96, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 98, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 101, 1, 0.36, 0.36 );

setRotateKey( spep_4 + 0, 1, -51 );
setRotateKey( spep_4-3 + 79, 1, -51 );
setRotateKey( spep_4-3 + 80, 1, 9.7 );
setRotateKey( spep_4-3 + 82, 1, 9.7 );
setRotateKey( spep_4-3 + 84, 1, 9.6 );
setRotateKey( spep_4-3 + 90, 1, 9.6 );
setRotateKey( spep_4-3 + 92, 1, 9.7 );
setRotateKey( spep_4-3 + 101, 1, 9.7 );

--SE
playSe( spep_4 + 7, 1003 );
playSe( spep_4 + 13, 1120 );
se_1183 = playSe( spep_4 + 74, 1183 );
se_1121 = playSe( spep_4 + 74, 1121 );
setSeVolume( spep_4 + 74, 1121, 63 );
playSe( spep_4 + 111, 1159 );
playSe( spep_4 + 112, 1033 );


stopSe( spep_4 + 120, se_1183, 0 );
stopSe( spep_4 + 120, se_1121, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 250, 0,  255, 255, 255, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 + 106 );
endPhase( spep_4 + 240 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0= 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 242, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 242, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 242, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 242, tame, 255 );

--SE
playSe( spep_0 + 0, 1014 );
setSeVolume( spep_0 + 0, 1014, 126 );
se_1044 = playSe( spep_0 + 17, 1044 );
setSeVolume( spep_0 + 17, 1044, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 238, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1044, 0 );
    --stopSe( SP_dodge - 12, se_1182, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge +9, 1, 157.6, -191.5 , 0 );
    setScaleKey( SP_dodge+9, 1, 3.65, 3.65 );
    setRotateKey( SP_dodge+9, 1, 0 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--顔カットイン
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0  +16, 190006, 72, 0x100, -1, 0, 110, 520);-- ゴゴゴゴ
setEffMoveKey(  spep_0  +16,  ctgogo,  110,  520);
setEffMoveKey(  spep_0  +88,  ctgogo,  110,  520);

setEffAlphaKey( spep_0  +16, ctgogo, 0 );
setEffAlphaKey( spep_0  + 17, ctgogo, 255 );
setEffAlphaKey( spep_0  + 18, ctgogo, 255 );
setEffAlphaKey( spep_0  + 82, ctgogo, 255 );
setEffAlphaKey( spep_0  + 84, ctgogo, 191 );
setEffAlphaKey( spep_0  + 86, ctgogo, 112 );
setEffAlphaKey( spep_0  + 88, ctgogo, 64 );

setEffRotateKey(  spep_0  +16,  ctgogo,  0);
setEffRotateKey(  spep_0  +88,  ctgogo,  0);

setEffScaleKey(  spep_0  +16,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0  +78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0  +88,  ctgogo, -1.07, 1.07 );

--文字エントリー
ctgyan = entryEffectLife( spep_0-3 + 138,  10006, 26, 0x100, -1, 0, 58.1, 354.1 );

setEffMoveKey( spep_0-3 + 138, ctgyan, 58.1, 354.1 , 0 );
setEffMoveKey( spep_0-3 + 140, ctgyan, 98.1, 314 , 0 );
setEffMoveKey( spep_0-3 + 142, ctgyan, 138.1, 274 , 0 );
setEffMoveKey( spep_0-3 + 154, ctgyan, 138.1, 274 , 0 );
setEffMoveKey( spep_0-3 + 164, ctgyan, 138.1, 274 , 0 );

setEffScaleKey( spep_0-3 + 138, ctgyan, 2.08, 2.08 );
setEffScaleKey( spep_0-3 + 140, ctgyan, 2.67, 2.67 );
setEffScaleKey( spep_0-3 + 142, ctgyan, 3.27, 3.27 );
setEffScaleKey( spep_0-3 + 154, ctgyan, 3.27, 3.27 );
setEffScaleKey( spep_0-3 + 164, ctgyan, 3.27, 3.27 );

setEffRotateKey( spep_0-3 + 138, ctgyan, 0 );
setEffRotateKey( spep_0-3 + 140, ctgyan, 3.6 );
setEffRotateKey( spep_0-3 + 142, ctgyan, 7.2 );
setEffRotateKey( spep_0-3 + 154, ctgyan, 7.2 );
setEffRotateKey( spep_0-3 + 164, ctgyan, 7.2 );

setEffAlphaKey( spep_0 -3 + 138, ctgyan, 255 );
setEffAlphaKey( spep_0 -3 + 160, ctgyan, 255 );
setEffAlphaKey( spep_0 -3 + 162, ctgyan, 128 );
setEffAlphaKey( spep_0 -3 + 164, ctgyan, 0 );

-- 文字エントリー --
ctdon = entryEffectLife( spep_0-3 + 204,  10019, 20, 0x100, -1, 0, 146.2, 138.1 );

setEffMoveKey( spep_0-3 + 204, ctdon, 146.2, 138.1 , 0 );
setEffMoveKey( spep_0-3 + 206, ctdon, 117.2, 179.6 , 0 );
setEffMoveKey( spep_0-3 + 208, ctdon, 88.1, 221 , 0 );
setEffMoveKey( spep_0-3 + 220, ctdon, 88.1, 221 , 0 );
setEffMoveKey( spep_0-3 + 222, ctdon, 88.1, 226 , 0 );
setEffMoveKey( spep_0-3 + 224, ctdon, 88.1, 231 , 0 );

setEffScaleKey( spep_0-3 + 204, ctdon, 1.47, 1.47 );
setEffScaleKey( spep_0-3 + 206, ctdon, 1.92, 1.92 );
setEffScaleKey( spep_0-3 + 208, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 220, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 222, ctdon, 2.44, 2.44 );
setEffScaleKey( spep_0-3 + 224, ctdon, 2.5, 2.5 );

setEffRotateKey( spep_0-3 + 204, ctdon, 18.7 );
setEffRotateKey( spep_0-3 + 224, ctdon, 18.7 );

setEffAlphaKey( spep_0-3 + 204, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 220, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 222, ctdon, 128 );
setEffAlphaKey( spep_0-3 + 224, ctdon, 0 );

--SE
playSe( spep_0 + 16, 1018 );
se_1109 = playSe( spep_0 + 90, 1109 );
se_0044 = playSe( spep_0 + 94, 44 );
playSe( spep_0 + 145, 182 );
playSe( spep_0 + 145, 9 );
playSe( spep_0 + 200, 1003 );
setSeVolume( spep_0 + 200, 1003, 71 );
se_1145 = playSe( spep_0 + 204, 1145 );
setSeVolume( spep_0 + 204, 1145, 71 );
se_1177 = playSe( spep_0 + 204, 1177 );
setSeVolume( spep_0 + 204, 1177, 63 );

stopSe( spep_0 + 91, se_1044, 26 );
stopSe( spep_0 + 98, se_1109, 6 );
stopSe( spep_0 + 114, se_0044, 24 );


--次のうごき
spep_1 = spep_0+236;

------------------------------------------------------
-- 着弾〜敵に追いつく
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, hit_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 140, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 140, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, hit_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 140, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 140, hit_b, 255 );

--文字エントリー
ctbon = entryEffectLife( spep_1-3 + 24,  10027, 22, 0x100, -1, 0, 26.1, -8 );

setEffMoveKey( spep_1-3 + 24, ctbon, 26.1, -8 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbon, 26.1, 62.4 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbon, 26.1, 132.8 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbon, 26.1, 135.6 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbon, 26.1, 138.3 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbon, 26.1, 141 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbon, 26.1, 143.7 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbon, 26.1, 146.4 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbon, 26.1, 149.1 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbon, 26.1, 151.8 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbon, 26.1, 146.8 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbon, 26.1, 141.8 , 0 );

setEffScaleKey( spep_1-3 + 24, ctbon, 1, 1 );
setEffScaleKey( spep_1-3 + 26, ctbon, 1.9, 1.4 );
setEffScaleKey( spep_1-3 + 28, ctbon, 2.8, 1.8 );
setEffScaleKey( spep_1-3 + 42, ctbon, 2.8, 1.8 );
setEffScaleKey( spep_1-3 + 44, ctbon, 3.07, 1.98 );
setEffScaleKey( spep_1-3 + 46, ctbon, 3.34, 2.15 );

setEffRotateKey( spep_1-3 + 24, ctbon, 0 );
setEffRotateKey( spep_1-3 + 46, ctbon, 0 );

setEffAlphaKey( spep_1-3 + 24, ctbon, 255 );
setEffAlphaKey( spep_1-3 + 42, ctbon, 255 );
setEffAlphaKey( spep_1-3 + 44, ctbon, 128 );
setEffAlphaKey( spep_1-3 + 46, ctbon, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 138, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1-3 + 20, 1, 106 );
changeAnime( spep_1-3 + 30, 1, 108 );
changeAnime( spep_1-3 + 44, 1, 5 );
changeAnime( spep_1-3 + 104, 1, 106 );

setMoveKey( spep_1 + 0, 1, -51.9, -290 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -45.7, -284.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, -39.4, -278.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, -33.1, -272.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, -26.9, -266.7 , 0 );
setMoveKey( spep_1-3 + 10, 1, -20.6, -260.9 , 0 );
setMoveKey( spep_1-3 + 12, 1, -14.4, -255 , 0 );
setMoveKey( spep_1-3 + 14, 1, -8.1, -249.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, -1.8, -243.4 , 0 );
setMoveKey( spep_1-3 + 19, 1, 4.4, -237.6 , 0 );
setMoveKey( spep_1-3 + 20, 1, 2.2, -239 , 0 );
setMoveKey( spep_1-3 + 22, 1, 3.7, -239 , 0 );
setMoveKey( spep_1-3 + 24, 1, 7.5, -242.9 , 0 );
setMoveKey( spep_1-3 + 26, 1, 7.5, -239.8 , 0 );
setMoveKey( spep_1-3 + 29, 1, 6.4, -238.2 , 0 );
setMoveKey( spep_1-3 + 30, 1, 100.2, -110.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 113.7, -89.3 , 0 );
setMoveKey( spep_1-3 + 34, 1, 118.9, -54.2 , 0 );
setMoveKey( spep_1-3 + 36, 1, 124.3, -39 , 0 );
setMoveKey( spep_1-3 + 38, 1, 139.3, -11.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, 153.6, 9.4 , 0 );
setMoveKey( spep_1-3 + 43, 1, 159.9, 32.6 , 0 );
setMoveKey( spep_1-3 + 44, 1, 165.1, 51.6 , 0 );
setMoveKey( spep_1-3 + 46, 1, 170.9, 64.2 , 0 );
setMoveKey( spep_1-3 + 48, 1, 177.6, 65.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 184, 70.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 191.7, 71.8 , 0 );
setMoveKey( spep_1-3 + 54, 1, 186.3, 72 , 0 );
setMoveKey( spep_1-3 + 56, 1, 183.1, 79.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 185.7, 69.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, 185.9, 78.6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 188.5, 73.6 , 0 );
setMoveKey( spep_1-3 + 64, 1, 186.7, 82 , 0 );
setMoveKey( spep_1-3 + 66, 1, 193.1, 79.9 , 0 );
setMoveKey( spep_1-3 + 68, 1, 192.7, 83.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 193.5, 83.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, 194.2, 84.6 , 0 );
setMoveKey( spep_1-3 + 74, 1, 194.9, 85.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 195.5, 85.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 196, 86.4 , 0 );
setMoveKey( spep_1-3 + 80, 1, 196.5, 86.9 , 0 );
setMoveKey( spep_1-3 + 82, 1, 196.9, 87.3 , 0 );
setMoveKey( spep_1-3 + 84, 1, 197.3, 87.7 , 0 );
setMoveKey( spep_1-3 + 86, 1, 197.7, 88.1 , 0 );
setMoveKey( spep_1-3 + 88, 1, 198, 88.4 , 0 );
setMoveKey( spep_1-3 + 90, 1, 198.2, 88.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 198.5, 88.9 , 0 );
setMoveKey( spep_1-3 + 94, 1, 198.7, 89.1 , 0 );
setMoveKey( spep_1-3 + 96, 1, 198.9, 89.3 , 0 );
setMoveKey( spep_1-3 + 98, 1, 199.1, 89.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 199.2, 89.6 , 0 );
setMoveKey( spep_1-3 + 103, 1, 199.3, 89.8 , 0 );
setMoveKey( spep_1-3 + 104, 1, -33.6, -52.7 , 0 );
setMoveKey( spep_1-3 + 106, 1, -27.7, -48.9 , 0 );
setMoveKey( spep_1-3 + 108, 1, -21.8, -45.1 , 0 );
setMoveKey( spep_1-3 + 110, 1, -16, -41.3 , 0 );
setMoveKey( spep_1-3 + 112, 1, -10.1, -37.6 , 0 );
setMoveKey( spep_1-3 + 114, 1, -4.2, -33.8 , 0 );
setMoveKey( spep_1-3 + 116, 1, 1.6, -30 , 0 );
setMoveKey( spep_1-3 + 118, 1, 7.5, -26.2 , 0 );
setMoveKey( spep_1-3 + 120, 1, 13.3, -22.4 , 0 );
setMoveKey( spep_1-3 + 122, 1, 19.2, -18.6 , 0 );
setMoveKey( spep_1-3 + 124, 1, 25.1, -14.8 , 0 );
setMoveKey( spep_1-3 + 126, 1, 30.9, -11 , 0 );
setMoveKey( spep_1-3 + 128, 1, 36.8, -7.2 , 0 );
setMoveKey( spep_1-3 + 130, 1, 42.7, -3.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 48.5, 0.4 , 0 );
setMoveKey( spep_1-3 + 134, 1, 54.4, 4.2 , 0 );
setMoveKey( spep_1-3 + 136, 1, 60.3, 8 , 0 );
setMoveKey( spep_1-3 + 138, 1, 66.1, 11.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.15, 2.15 );
--setScaleKey( spep_1-3 + 2, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 4, 1, 1.89, 1.89 );
setScaleKey( spep_1-3 + 6, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 8, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 10, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 14, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 16, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 19, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 32, 1, 0.9, 0.9 );
setScaleKey( spep_1-3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 36, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 38, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 40, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 43, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 44, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 46, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 48, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 50, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 52, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 54, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 56, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 58, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 60, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 62, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 64, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 66, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 68, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 70, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 72, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 74, 1, 0.16, 0.16 );
setScaleKey( spep_1-3 + 76, 1, 0.16, 0.16 );
setScaleKey( spep_1-3 + 78, 1, 0.15, 0.15 );
setScaleKey( spep_1-3 + 82, 1, 0.15, 0.15 );
setScaleKey( spep_1-3 + 84, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 90, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 92, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 103, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 104, 1, 1.86, 1.86 );
setScaleKey( spep_1-3 + 138, 1, 1.86, 1.86 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 19, 1, 0 );
setRotateKey( spep_1-3 + 20, 1, -49.5 );
setRotateKey( spep_1-3 + 29, 1, -49.5 );
setRotateKey( spep_1-3 + 30, 1, -10.9 );
setRotateKey( spep_1-3 + 32, 1, -12.7 );
setRotateKey( spep_1-3 + 34, 1, -14.5 );
setRotateKey( spep_1-3 + 36, 1, -16.3 );
setRotateKey( spep_1-3 + 38, 1, -18.1 );
setRotateKey( spep_1-3 + 40, 1, -19.9 );
setRotateKey( spep_1-3 + 43, 1, -21.6 );
setRotateKey( spep_1-3 + 44, 1, 36.4 );
setRotateKey( spep_1-3 + 103, 1, 36.4 );
setRotateKey( spep_1-3 + 104, 1, 7.1 );
setRotateKey( spep_1-3 + 110, 1, 7.1 );
setRotateKey( spep_1-3 + 112, 1, 7 );
setRotateKey( spep_1-3 + 116, 1, 7 );
setRotateKey( spep_1-3 + 118, 1, 6.9 );
setRotateKey( spep_1-3 + 124, 1, 6.9 );
setRotateKey( spep_1-3 + 126, 1, 6.8 );
setRotateKey( spep_1-3 + 132, 1, 6.8 );
setRotateKey( spep_1-3 + 134, 1, 6.7 );
setRotateKey( spep_1-3 + 138, 1, 6.7 );

--SE
playSe( spep_1 + 29, 1011 );
playSe( spep_1 + 32, 1023 );
playSe( spep_1 + 89, 1106 );
setSeVolume( spep_1 + 89, 1106, 178 );
playSe( spep_1 + 90, 1108 );
setSeVolume( spep_1 + 90, 1108, 178 );
se_1109 = playSe( spep_1 + 95, 1109 );
se_0044 = playSe( spep_1 + 99, 44 );


stopSe( spep_1 + 103, se_1109, 6 );
stopSe( spep_1 + 119, se_0044, 24 );
stopSe( spep_1 + 44, se_1145, 0 );
stopSe( spep_1 + 44, se_1177, 0 );
stopSe( spep_1 + 103, se_1109, 6 );
stopSe( spep_1 + 119, se_0044, 24 );


--白フェード
entryFade( spep_1 + 132, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 142, 0,  0, 0, 0, 255 ); --くろ 背景


--次のうごき
spep_2 = spep_1+140;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 振りかぶり〜拳アップ
------------------------------------------------------

-- ** エフェクト等 ** --
panting = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting, 0, 0, 0 );
setEffMoveKey( spep_3 + 164, panting, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting, -1.0, 1.0 );
setEffScaleKey( spep_3 + 164, panting, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting, 0 );
setEffRotateKey( spep_3 + 164, panting, 0 );
setEffAlphaKey( spep_3 + 0, panting, 255 );
setEffAlphaKey( spep_3 + 164, panting, 255 );

--SE
playSe( spep_3 + 0, 1072 );
setSeVolume( spep_3 + 0, 1072, 79 );
playSe( spep_3 + 4, 9 );
setSeVolume( spep_3 + 4, 9, 0 );
setSeVolume( spep_3 + 4, 9, 0 );
setSeVolume( spep_3 + 5, 9, 3.15 );
setSeVolume( spep_3 + 6, 9, 6.3 );
setSeVolume( spep_3 + 7, 9, 9.45 );
setSeVolume( spep_3 + 8, 9, 12.6 );
setSeVolume( spep_3 + 9, 9, 15.75 );
setSeVolume( spep_3 + 10, 9, 18.9 );
setSeVolume( spep_3 + 11, 9, 22.05 );
setSeVolume( spep_3 + 12, 9, 25.2 );
setSeVolume( spep_3 + 13, 9, 28.35 );
setSeVolume( spep_3 + 14, 9, 31.50 );
setSeVolume( spep_3 + 15, 9, 34.6 );
setSeVolume( spep_3 + 16, 9, 37.8 );
setSeVolume( spep_3 + 17, 9, 40.95 );
setSeVolume( spep_3 + 18, 9, 44.1 );
setSeVolume( spep_3 + 19, 9, 47.25 );
setSeVolume( spep_3 + 20, 9, 50.4 );
setSeVolume( spep_3 + 21, 9, 53.55 );
setSeVolume( spep_3 + 22, 9, 56.7 );
setSeVolume( spep_3 + 23, 9, 59.85 );
setSeVolume( spep_3 + 24, 9, 63 );
playSe( spep_3 + 6, 8 );
setSeVolume( spep_3 + 6, 8, 126 );
playSe( spep_3 + 11, 1018 );
setSeVolume( spep_3 + 11, 1018, 71 );
playSe( spep_3 + 57, 1004 );
playSe( spep_3 + 59, 8 );
setSeVolume( spep_3 + 59, 8, 89 );
se_1116 = playSe( spep_3 + 61, 1116 );
playSe( spep_3 + 108, 1004 );
setSeVolume( spep_3 + 108, 1004, 126 );
playSe( spep_3 + 108, 1182 );
setSeVolume( spep_3 + 108, 1182, 0 );
setSeVolume( spep_3 + 111, 1182, 11.75 );
setSeVolume( spep_3 + 112, 1182, 23.5 );
setSeVolume( spep_3 + 113, 1182, 35.25 );
setSeVolume( spep_3 + 114, 1182, 47 );
setSeVolume( spep_3 + 115, 1182, 58.75 );
setSeVolume( spep_3 + 116, 1182, 70.5 );
setSeVolume( spep_3 + 117, 1182, 82.25 );
setSeVolume( spep_3 + 118, 1182, 94 );
setSeVolume( spep_3 + 119, 1182, 105.75 );
setSeVolume( spep_3 + 120, 1182, 117.5 );
setSeVolume( spep_3 + 121, 1182, 129.25 );
setSeVolume( spep_3 + 122, 1182, 141 );
playSe( spep_3 + 126, 1072 );
setSeVolume( spep_3 + 126, 1072, 126 );

stopSe( spep_3 + 81, se_1116, 24 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 168, 0,  0, 0, 0, 255 ); --くろ 背景


-- ** 次の準備 ** --
spep_4 = spep_3 + 164;
------------------------------------------------------
-- 敵にヒット〜敵が地面に激突
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 338, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 338, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 338, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 338, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 338, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 338, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 338, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 338, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 101, 1, 0 );

changeAnime( spep_4 + 0, 1, 7 );
changeAnime( spep_4-3 + 80, 1, 5 );

setMoveKey( spep_4 + 0, 1, 3.9, -71.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 103.8, -90.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, -46.9, -63.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 38.7, -73.2 , 0 );
setMoveKey( spep_4-3 + 8, 1, 57.9, -71.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, 77, -69.4 , 0 );
setMoveKey( spep_4-3 + 12, 1, -1.4, -76.4 , 0 );
setMoveKey( spep_4-3 + 14, 1, -79.9, -83.4 , 0 );
setMoveKey( spep_4-3 + 16, 1, 46.2, -59.6 , 0 );
setMoveKey( spep_4-3 + 18, 1, 4.1, -19.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 14.2, -113.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, -5.1, -50.8 , 0 );
setMoveKey( spep_4-3 + 24, 1, 35.8, -115.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 6.3, -70.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, -0.3, -55 , 0 );
setMoveKey( spep_4-3 + 30, 1, -6.8, -39.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 11.9, -74.1 , 0 );
setMoveKey( spep_4-3 + 34, 1, -35.2, -58.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, 24.9, -95.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, 21.4, -86.6 , 0 );
setMoveKey( spep_4-3 + 40, 1, 17.9, -77.6 , 0 );
setMoveKey( spep_4-3 + 42, 1, 21.7, -78.2 , 0 );
setMoveKey( spep_4-3 + 44, 1, 9, -51.3 , 0 );
setMoveKey( spep_4-3 + 46, 1, 8.9, -56.2 , 0 );
setMoveKey( spep_4-3 + 48, 1, 8.8, -61 , 0 );
setMoveKey( spep_4-3 + 50, 1, 6.8, -76.1 , 0 );
setMoveKey( spep_4-3 + 52, 1, 2.9, -75.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 3, -75.7 , 0 );
setMoveKey( spep_4-3 + 56, 1, 3, -75.5 , 0 );
setMoveKey( spep_4-3 + 58, 1, 3.1, -75.3 , 0 );
setMoveKey( spep_4-3 + 60, 1, 3.1, -75.2 , 0 );
setMoveKey( spep_4-3 + 62, 1, 2.3, -75.6 , 0 );
setMoveKey( spep_4-3 + 64, 1, -3.4, -79.1 , 0 );
setMoveKey( spep_4-3 + 66, 1, -18.8, -88.8 , 0 );
setMoveKey( spep_4-3 + 68, 1, -49, -108 , 0 );
setMoveKey( spep_4-3 + 70, 1, -98.8, -139.8 , 0 );
setMoveKey( spep_4-3 + 72, 1, -173.2, -187.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, -276.9, -253.6 , 0 );
setMoveKey( spep_4-3 + 76, 1, -415, -341.9 , 0 );
setMoveKey( spep_4-3 + 79, 1, -592.2, -455.3 , 0 );
setMoveKey( spep_4-3 + 80, 1, -56.2, -479.7 , 0 );
setMoveKey( spep_4-3 + 82, 1, -32, -311.7 , 0 );
setMoveKey( spep_4-3 + 84, 1, -22.1, -242.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, -15.7, -198.5 , 0 );
setMoveKey( spep_4-3 + 88, 1, -11.3, -167.5 , 0 );
setMoveKey( spep_4-3 + 90, 1, -9, -167 , 0 );
setMoveKey( spep_4-3 + 92, 1, -7.3, -166.5 , 0 );
setMoveKey( spep_4-3 + 94, 1, -5.9, -166.1 , 0 );
setMoveKey( spep_4-3 + 96, 1, -4.9, -165.8 , 0 );
setMoveKey( spep_4-3 + 98, 1, -4.2, -165.5 , 0 );
setMoveKey( spep_4-3 + 101, 1, -3.9, -165.2 , 0 );

setScaleKey( spep_4 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 62, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 66, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 68, 1, 1.29, 1.29 );
setScaleKey( spep_4-3 + 70, 1, 1.39, 1.39 );
setScaleKey( spep_4-3 + 72, 1, 1.53, 1.53 );
setScaleKey( spep_4-3 + 74, 1, 1.74, 1.74 );
setScaleKey( spep_4-3 + 76, 1, 2.01, 2.01 );
setScaleKey( spep_4-3 + 79, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 80, 1, 7.49, 7.49 );
setScaleKey( spep_4-3 + 82, 1, 3.86, 3.86 );
setScaleKey( spep_4-3 + 84, 1, 2.38, 2.38 );
setScaleKey( spep_4-3 + 86, 1, 1.42, 1.42 );
setScaleKey( spep_4-3 + 88, 1, 0.76, 0.76 );
setScaleKey( spep_4-3 + 90, 1, 0.64, 0.64 );
setScaleKey( spep_4-3 + 92, 1, 0.54, 0.54 );
setScaleKey( spep_4-3 + 94, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 96, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 98, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 101, 1, 0.36, 0.36 );

setRotateKey( spep_4 + 0, 1, 51 );
setRotateKey( spep_4-3 + 79, 1, 51 );
setRotateKey( spep_4-3 + 80, 1, -9.7 );
setRotateKey( spep_4-3 + 82, 1, -9.7 );
setRotateKey( spep_4-3 + 84, 1, -9.6 );
setRotateKey( spep_4-3 + 90, 1, -9.6 );
setRotateKey( spep_4-3 + 92, 1, -9.7 );
setRotateKey( spep_4-3 + 101, 1,- 9.7 );

--SE
playSe( spep_4 + 7, 1003 );
playSe( spep_4 + 13, 1120 );
se_1183 = playSe( spep_4 + 74, 1183 );
se_1121 = playSe( spep_4 + 74, 1121 );
setSeVolume( spep_4 + 74, 1121, 63 );
playSe( spep_4 + 111, 1159 );
playSe( spep_4 + 112, 1033 );


stopSe( spep_4 + 120, se_1183, 0 );
stopSe( spep_4 + 120, se_1121, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 250, 0,  255, 255, 255, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 + 106 );
endPhase( spep_4 + 240 );

end


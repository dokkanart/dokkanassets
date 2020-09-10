--1016920　サオネル&ピリナ_ナメックコンビネーション
--sp_effect_b4_00089

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
SP_01=	153237	;--	気溜め
SP_02=	153239	;--	突進
SP_03=	153241	;--	格闘
SP_04=	153243	;--	斬り付け
SP_05=	153245	;--	爆破
SP_06=	153246	;--	口から光波
SP_07=	153248	;--	追加の爆破のみ
SP_08=	153249	;--	追加の爆破時の地面
SP_09=	153250	;--	斬撃

--てき
SP_01x=	153238	;--	気溜め	(敵)
SP_02x=	153240	;--	突進	(敵)
SP_03x=	153242	;--	格闘	(敵)
SP_04x=	153244	;--	斬り付け	(敵)
SP_05x=	153245	;--	爆破	
SP_06x=	153247	;--	口から光波	(敵)
SP_07x=	153248	;--	追加の爆破のみ	
SP_08x=	153249	;--	追加の爆破時の地面	
SP_09x=	153251	;--	斬撃	(敵)


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
-- スタート気溜め
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
kidame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, kidame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 150, kidame, 255 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 150, kidame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 148, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 148, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 60, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 60, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え  

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 72,  190006, 72, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 72, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 72, ctgogo, -9.9, 515.8 , 0 );
setEffMoveKey( spep_0 +  144, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 72, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0 + 136, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0 + 138, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_0 + 140, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 142, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_0 + 144, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_0 + 72, ctgogo, 0 );
setEffRotateKey( spep_0 + 144, ctgogo, 0 );

setEffAlphaKey( spep_0 + 72, ctgogo, 0 );
setEffAlphaKey( spep_0 + 73, ctgogo, 255 );
setEffAlphaKey( spep_0 + 74, ctgogo, 255 );
setEffAlphaKey( spep_0 + 144, ctgogo, 255 );

--se
playSe( spep_0 + 36, SE_01 );  --気が大きくなったイメージ
--playSe( spep_0 + 56, SE_02 );  --気ダメ
playSe( spep_0 + 72, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 36, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  -- white fade
entryFade( spep_0 + 140, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--黒背景
entryFadeBg(spep_0 + 0, 0, 150, 0, 0, 0, 0, 255);

--次の準備
spep_1=spep_0+150;
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


playSe( spep_1, SE_05);
speff2 = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff2, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_1+82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 90;
------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, rush, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, rush, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 70, rush, 255 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 70, rush, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 68, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.13, 1.61 );
setEffScaleKey( spep_2 + 68, shuchusen2, 1.13, 1.61 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 68, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 68, shuchusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 0,  10012, 60, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffMoveKey( spep_2 + 2, ctzuo, 95.9, 286.5 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, 102.6, 326.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, 157.6, 334.3 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_2 + 58, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_2 + 60, ctzuo, 196, 319.9 , 0 );

a=1.9;

setEffScaleKey( spep_2 + 0, ctzuo, 0.1+a, 0.1+a );
setEffScaleKey( spep_2 + 2, ctzuo, 0.33+a, 0.33+a );
setEffScaleKey( spep_2 + 4, ctzuo, 0.57+a, 0.57+a );
setEffScaleKey( spep_2 + 6, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_2 + 50, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_2 + 52, ctzuo, 1.04+a, 1.04+a );
setEffScaleKey( spep_2 + 54, ctzuo, 1.28+a, 1.28+a );
setEffScaleKey( spep_2 + 56, ctzuo, 1.52+a, 1.52+a );
setEffScaleKey( spep_2 + 58, ctzuo, 1.76+a, 1.76+a );
setEffScaleKey( spep_2 + 60, ctzuo, 3+a, 3+a );

setEffRotateKey( spep_2 + 0, ctzuo, 30 );
setEffRotateKey( spep_2 + 60, ctzuo, 30 );

setEffAlphaKey( spep_2 + 0, ctzuo, 255 );
setEffAlphaKey( spep_2 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2 + 52, ctzuo, 204 );
setEffAlphaKey( spep_2 + 54, ctzuo, 153 );
setEffAlphaKey( spep_2 + 56, ctzuo, 102 );
setEffAlphaKey( spep_2 + 58, ctzuo, 51 );
setEffAlphaKey( spep_2 + 60, ctzuo, 0 );



--SE
SE0=playSe( spep_2 + 0, SE_04 );  --接近

--黒背景
entryFadeBg(spep_2 + 0, 0, 70, 0, 0, 0, 0, 200);

--------------------------------------
--回避 
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 +36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める ※止めたい音がある場合
   
    pauseAll( SP_dodge, 67);
    
   --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 146.4, 23.6, 0);  --回避開始時のキャラの座標
    setScaleKey(SP_dodge , 1 ,1.7, 1.7 ); --回避開始時のキャラの大きさ
    setRotateKey(SP_dodge,   1, 0); --回避開始時のキャラの角度

    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 146.4, 23.6, 0);  --回避終了時のキャラの座標
    setScaleKey(SP_dodge+10 , 1 ,1.7, 1.7 ); --回避終了時のキャラの大きさ
    setRotateKey(SP_dodge+10,   1, 0); --回避終了時のキャラの角度
    
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

-- ** ホワイトフェード ** --
entryFade( spep_2 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2 + 70;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 178, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.4, 1.75 );
setEffScaleKey( spep_3 + 178, shuchusen3, 1.4, 1.75 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 178, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 178, shuchusen3, 255 );


-- ** エフェクト等 ** --
fighting = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, fighting, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fighting, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, fighting, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, fighting, 255 );
setEffAlphaKey( spep_3 + 180, fighting, 255 );
setEffRotateKey( spep_3 + 0, fighting, 0 );
setEffRotateKey( spep_3 + 180, fighting, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  914, 126, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 126, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 2, 1.5 );
setEffScaleKey( spep_3  + 126, ryusen1, 2, 1.5 );

setEffRotateKey( spep_3 + 0, ryusen1, -7 );
setEffRotateKey( spep_3  + 126, ryusen1, -7 );

setEffAlphaKey( spep_3  +0 , ryusen1, 255 );
setEffAlphaKey( spep_3  + 124, ryusen1, 255 );
setEffAlphaKey( spep_3  + 125, ryusen1, 255 );
setEffAlphaKey( spep_3  + 126, ryusen1, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 168, 1, 0 );

changeAnime( spep_3  + 0, 1, 104 );
changeAnime( spep_3 -3 + 18, 1, 108 );
changeAnime( spep_3 -3 + 32, 1, 106 );
changeAnime( spep_3 -3 + 42, 1, 108 );
changeAnime( spep_3 -3 + 52, 1, 106 );
changeAnime( spep_3 -3 + 62, 1, 108 );
changeAnime( spep_3 -3 + 70, 1, 106 );
changeAnime( spep_3 -3 + 84, 1, 108 );
changeAnime( spep_3 -3 + 102, 1, 106 );
changeAnime( spep_3 -3 + 112, 1, 108 );
changeAnime( spep_3 -3 + 130, 1, 106 );

setMoveKey( spep_3  + 0, 1, -44.7, 7.6 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -74.6, 3.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -101.8, 0 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -126, -3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -147.2, -5.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -165.3, -7.4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -180.4, -8.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -192.4, -9.6 , 0 );
setMoveKey( spep_3 -3 + 17, 1, -201.4, -9.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -179.7, -2.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -187.8, -0.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -205.3, -8.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -199.7, 0.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -199.2, -0.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -171.3, 8.6 , 0 );
setMoveKey( spep_3 -3 + 31, 1, -130.6, 13.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -190, 23 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -164.9, 26.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -164.2, 16.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -161.4, 21.7 , 0 );
setMoveKey( spep_3 -3 + 41, 1, -153.9, 21 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -164.9, 36.7 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -141.5, 40 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -145.2, 29.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -141, 34.6 , 0 );
setMoveKey( spep_3 -3 + 51, 1, -128.3, 36.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -137.2, 36 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -115.6, 37.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -119.1, 30.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -116.5, 33.4 , 0 );
setMoveKey( spep_3 -3 + 61, 1, -105.2, 33.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -74.5, 1.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -18.6, -3.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -1.6, -13.5 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 4.8, -18.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 6, 37.2 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -3, 39.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 3.9, 56.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 16.9, 67.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 41.5, 86.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 57.9, 98.3 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 78.6, 113 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 92.7, 137.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 89.6, 124.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 113.2, 124.6 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 108.8, 119.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 122.7, 116.4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 116.9, 122.6 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 124.2, 121.5 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 121.7, 121.3 , 0 );
setMoveKey( spep_3 -3 + 101, 1, 125.9, 128.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 87.6, 110.4 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 130, 111.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 124, 97.1 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 124.5, 99.2 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 118.3, 97.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 222.8, 125.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 231.8, 128.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 187.2, 107 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 216.1, 122.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 208.1, 115 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 226.9, 122.7 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 227.8, 122 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 231.9, 123.1 , 0 );
setMoveKey( spep_3 -3 + 129, 1, 234.3, 123.7 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 129.5, 145.3 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 148, 153 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 186.4, 202.8 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 254.4, 287.3 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 278.3, 340.8 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 336.9, 372.8 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 374, 425.5 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 390.4, 448.7 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 421.7, 480.9 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 441.3, 515.5 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 465.1, 533 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 476.9, 556.9 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 495.6, 573.5 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 505.7, 589.4 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 520.1, 605.1 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 531.5, 615.7 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 540.5, 626.4 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 548.4, 635.6 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 555.1, 643.5 , 0 );
setMoveKey( spep_3  + 168, 1, 560.8, 650.3 , 0 );

setScaleKey( spep_3  + 0, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 17, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 20, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 22, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 31, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 34, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 41, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 42, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 44, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 46, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 51, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 52, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 56, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 61, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 62, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 64, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 66, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 69, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 70, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 72, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 74, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 83, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 84, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 86, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 88, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 101, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 102, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 104, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 106, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 111, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 112, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 114, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 116, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 129, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 130, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 132, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 134, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 136, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 138, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 140, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 142, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 144, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 146, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 148, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 150, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 152, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 154, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 156, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 158, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 160, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 162, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 164, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 166, 1, 0.66, 0.66 );
setScaleKey( spep_3  + 168, 1, 0.65, 0.65 );

setRotateKey( spep_3  + 0, 1, -4.8 );
--setRotateKey( spep_3 -3 + 2, 1, -5 );
setRotateKey( spep_3 -3 + 18, 1, -5 );
setRotateKey( spep_3 -3 + 20, 1, -5.1 );
setRotateKey( spep_3 -3 + 22, 1, -5.5 );
setRotateKey( spep_3 -3 + 24, 1, -6 );
setRotateKey( spep_3 -3 + 26, 1, -6.8 );
setRotateKey( spep_3 -3 + 28, 1, -8 );
setRotateKey( spep_3 -3 + 31, 1, -10 );
setRotateKey( spep_3 -3 + 32, 1, -57 );
setRotateKey( spep_3 -3 + 41, 1, -57 );
setRotateKey( spep_3 -3 + 42, 1, -10 );
setRotateKey( spep_3 -3 + 51, 1, -10 );
setRotateKey( spep_3 -3 + 52, 1, -42 );
setRotateKey( spep_3 -3 + 54, 1, -39.5 );
setRotateKey( spep_3 -3 + 56, 1, -38.2 );
setRotateKey( spep_3 -3 + 58, 1, -37.5 );
setRotateKey( spep_3 -3 + 61, 1, -37 );
setRotateKey( spep_3 -3 + 62, 1, 6 );
setRotateKey( spep_3 -3 + 64, 1, -2 );
setRotateKey( spep_3 -3 + 66, 1, -6.3 );
setRotateKey( spep_3 -3 + 69, 1, -8.5 );
setRotateKey( spep_3 -3 + 70, 1, -93 );
setRotateKey( spep_3 -3 + 72, 1, -90.3 );
setRotateKey( spep_3 -3 + 74, 1, -87.6 );
setRotateKey( spep_3 -3 + 76, 1, -84.9 );
setRotateKey( spep_3 -3 + 78, 1, -82.3 );
setRotateKey( spep_3 -3 + 80, 1, -79.6 );
setRotateKey( spep_3 -3 + 83, 1, -77 );
setRotateKey( spep_3 -3 + 84, 1, -21 );
setRotateKey( spep_3 -3 + 86, 1, -19.8 );
setRotateKey( spep_3 -3 + 88, 1, -18.9 );
setRotateKey( spep_3 -3 + 90, 1, -18.3 );
setRotateKey( spep_3 -3 + 92, 1, -17.8 );
setRotateKey( spep_3 -3 + 94, 1, -17.5 );
setRotateKey( spep_3 -3 + 96, 1, -17.3 );
setRotateKey( spep_3 -3 + 98, 1, -17.1 );
setRotateKey( spep_3 -3 + 101, 1, -17 );
setRotateKey( spep_3 -3 + 102, 1, -40 );
setRotateKey( spep_3 -3 + 104, 1, -40.1 );
setRotateKey( spep_3 -3 + 106, 1, -40.1 );
setRotateKey( spep_3 -3 + 108, 1, -40.2 );
setRotateKey( spep_3 -3 + 111, 1, -40.2 );
setRotateKey( spep_3 -3 + 112, 1, -17 );
setRotateKey( spep_3 -3 + 129, 1, -17 );
setRotateKey( spep_3 -3 + 130, 1, -96 );
setRotateKey( spep_3 -3 + 154, 1, -96 );
setRotateKey( spep_3 -3 + 156, 1, -96.1 );
setRotateKey( spep_3  +168, 1, -96.1 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_3 -3 + 18,  10017, 67, 0x100, -1, 0, 22, 365 );--ドガガガッ

setEffMoveKey( spep_3 -3 + 18, ctdogagaga, 22, 365 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctdogagaga, 23.8, 361.9 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdogagaga, 22.2, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogagaga, 18.4, 354.2 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3  + 82, ctdogagaga, 19.7, 356.7 , 0 );

setEffScaleKey( spep_3 -3 + 18, ctdogagaga, 1.88, 1.88 );
setEffScaleKey( spep_3 -3 + 20, ctdogagaga, 3.07, 3.07 );
setEffScaleKey( spep_3 -3 + 22, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_3  + 82, ctdogagaga, 2.75, 2.75 );

setEffRotateKey( spep_3 -3 + 18, ctdogagaga, 22.3 );
setEffRotateKey( spep_3 -3 + 22, ctdogagaga, 22.3 );
setEffRotateKey( spep_3 -3 + 24, ctdogagaga, 22.5 );
setEffRotateKey( spep_3  + 82, ctdogagaga, 22.5 );

setEffAlphaKey( spep_3 -3 + 18, ctdogagaga, 255 );
setEffAlphaKey( spep_3  + 80, ctdogagaga, 255 );
setEffAlphaKey( spep_3  + 81, ctdogagaga, 0 );
setEffAlphaKey( spep_3  + 82, ctdogagaga, 0 );
--文字エントリー
ctdon = entryEffectLife( spep_3 -3 + 84,  10019, 10, 0x100, -1, 0, -5.7, 302.8 ); --ドンッ

setEffMoveKey( spep_3 -3 + 86, ctdon, 11.8, 316.5 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctdon, 44.5, 327.8 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctdon, 50.3, 325.2 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctdon, 38.8, 331.3 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctdon, 22.5, 331.6 , 0 );

setEffScaleKey( spep_3 -3 + 84, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_3 -3 + 86, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_3 -3 + 88, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 90, ctdon, 1.53, 1.53 );
setEffScaleKey( spep_3 -3 + 92, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_3 -3 + 94, ctdon, 1.57, 1.57 );

setEffRotateKey( spep_3 -3 + 84, ctdon, -0.8 );
setEffRotateKey( spep_3 -3 + 86, ctdon, -0.2 );
setEffRotateKey( spep_3 -3 + 88, ctdon, 0.3 );
setEffRotateKey( spep_3 -3 + 94, ctdon, 0.3 );

setEffAlphaKey( spep_3 -3 + 84, ctdon, 255 );
setEffAlphaKey( spep_3 -3 + 90, ctdon, 255 );
setEffAlphaKey( spep_3 -3 + 92, ctdon, 128 );
setEffAlphaKey( spep_3 -3 + 94, ctdon, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_3 -3 + 102,  10020, 8, 0x100, -1, 0, 7.3, 277.5 ); --バキッ

setEffMoveKey( spep_3 -3 + 104, ctbaki, 37.8, 294.1 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctbaki, 34.2, 324.5 , 0 );
setEffMoveKey( spep_3 -3 + 108, ctbaki, 33.7, 310.8 , 0 );
setEffMoveKey( spep_3 -3 + 110, ctbaki, 30.7, 305.7 , 0 );

setEffScaleKey( spep_3 -3 + 102, ctbaki, 0.7, 0.7 );
setEffScaleKey( spep_3 -3 + 104, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_3 -3 + 106, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 108, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 110, ctbaki, 1, 1 );


setEffRotateKey( spep_3 -3 + 102, ctbaki, -18.8 );
setEffRotateKey( spep_3 -3 + 104, ctbaki, -18.8 );
setEffRotateKey( spep_3 -3 + 106, ctbaki, -13 );
setEffRotateKey( spep_3 -3 + 108, ctbaki, -18.8 );
setEffRotateKey( spep_3 -3 + 110, ctbaki, -32.1 );

setEffAlphaKey( spep_3 -3 + 102, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 108, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 110, ctbaki, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_3 -2 + 112,  10019, 12, 0x80, -1, 0, 143.3, 297.6 );--ドンッ

setEffMoveKey( spep_3 -2 + 114, ctdon2, 152.3, 323.7 , 0 );
setEffMoveKey( spep_3 -2 + 116, ctdon2, 179.3, 355.6 , 0 );
setEffMoveKey( spep_3 -2 + 118, ctdon2, 177.3, 361.4 , 0 );
setEffMoveKey( spep_3 -2 + 120, ctdon2, 191.8, 355.8 , 0 );
setEffMoveKey( spep_3 -2 + 122, ctdon2, 181.5, 365.5 , 0 );
setEffMoveKey( spep_3 -2 + 124, ctdon2, 169, 364.6 , 0 );

setEffScaleKey( spep_3 -2 + 112, ctdon2, 0.8, 0.8 );
setEffScaleKey( spep_3 -2 + 114, ctdon2, 1.41, 1.41 );
setEffScaleKey( spep_3 -2 + 116, ctdon2, 2.02, 2.02 );
setEffScaleKey( spep_3 -2 + 118, ctdon2, 2.11, 2.11 );
setEffScaleKey( spep_3 -2 + 124, ctdon2, 2.2, 2.2 );

setEffRotateKey( spep_3 -2 + 112, ctdon2, -27 );
setEffRotateKey( spep_3 -2 + 124, ctdon2, -27 );

setEffAlphaKey( spep_3 -2 + 112, ctdon2, 255 );
setEffAlphaKey( spep_3 -2 + 120, ctdon2, 255 );
setEffAlphaKey( spep_3 -2 + 122, ctdon2, 128 );
setEffAlphaKey( spep_3 -2 + 124, ctdon2, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_3 -3 + 130,  10020, 36, 0x100, -1, 0, 176.8, -204 );--バキッ

setEffMoveKey( spep_3 -3 + 132, ctbaki2, 158.7, -182.5 , 0 );
setEffMoveKey( spep_3 -3 + 134, ctbaki2, 156.8, -158.4 , 0 );
setEffMoveKey( spep_3 -3 + 136, ctbaki2, 146.9, -153.9 , 0 );
setEffMoveKey( spep_3 -3 + 138, ctbaki2, 158.9, -156.7 , 0 );
setEffMoveKey( spep_3 -3 + 140, ctbaki2, 148.7, -160.2 , 0 );
setEffMoveKey( spep_3 -3 + 142, ctbaki2, 151.6, -151.5 , 0 );
setEffMoveKey( spep_3 -3 + 144, ctbaki2, 154.9, -161.5 , 0 );
setEffMoveKey( spep_3 -3 + 146, ctbaki2, 147.7, -158.8 , 0 );
setEffMoveKey( spep_3 -3 + 148, ctbaki2, 148.3, -148.3 , 0 );
setEffMoveKey( spep_3 -3 + 150, ctbaki2, 149.3, -157.1 , 0 );
setEffMoveKey( spep_3 -3 + 152, ctbaki2, 139.2, -144.4 , 0 );
setEffMoveKey( spep_3 -3 + 154, ctbaki2, 143.7, -149 , 0 );
setEffMoveKey( spep_3 -3 + 156, ctbaki2, 134, -145.7 , 0 );
setEffMoveKey( spep_3 -3 + 158, ctbaki2, 136.8, -147.1 , 0 );
setEffMoveKey( spep_3 -3 + 160, ctbaki2, 132.4, -138.6 , 0 );
setEffMoveKey( spep_3 -3 + 162, ctbaki2, 131.1, -143.8 , 0 );
setEffMoveKey( spep_3 -3 + 164, ctbaki2, 123, -135.2 , 0 );
setEffMoveKey( spep_3 -3 + 166, ctbaki2, 120.3, -133.1 , 0 );

setEffScaleKey( spep_3 -3 + 130, ctbaki2, 0.8, 0.8 );
setEffScaleKey( spep_3 -3 + 132, ctbaki2, 1.25, 1.25 );
setEffScaleKey( spep_3 -3 + 134, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 136, ctbaki2, 1.73, 1.73 );
setEffScaleKey( spep_3 -3 + 138, ctbaki2, 1.75, 1.75 );
setEffScaleKey( spep_3 -3 + 140, ctbaki2, 1.78, 1.78 );
setEffScaleKey( spep_3 -3 + 142, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 144, ctbaki2, 1.83, 1.83 );
setEffScaleKey( spep_3 -3 + 146, ctbaki2, 1.85, 1.85 );
setEffScaleKey( spep_3 -3 + 148, ctbaki2, 1.86, 1.86 );
setEffScaleKey( spep_3 -3 + 150, ctbaki2, 1.87, 1.87 );
setEffScaleKey( spep_3 -3 + 152, ctbaki2, 1.88, 1.88 );
setEffScaleKey( spep_3 -3 + 154, ctbaki2, 1.89, 1.89 );
setEffScaleKey( spep_3 -3 + 156, ctbaki2, 1.9, 1.9 );
setEffScaleKey( spep_3 -3 + 158, ctbaki2, 1.91, 1.91 );
setEffScaleKey( spep_3 -3 + 160, ctbaki2, 1.92, 1.92 );
setEffScaleKey( spep_3 -3 + 162, ctbaki2, 1.93, 1.93 );
setEffScaleKey( spep_3 -3 + 164, ctbaki2, 1.94, 1.94 );
setEffScaleKey( spep_3 -3 + 166, ctbaki2, 1.95, 1.95 );

setEffRotateKey( spep_3 -3 + 130, ctbaki2, -18 );
setEffRotateKey( spep_3 -3 + 166, ctbaki2, -18 );

setEffAlphaKey( spep_3 -3 + 130, ctbaki2, 255 );
setEffAlphaKey( spep_3 -3 + 146, ctbaki2, 255 );
setEffAlphaKey( spep_3 -3 + 148, ctbaki2, 230 );
setEffAlphaKey( spep_3 -3 + 150, ctbaki2, 204 );
setEffAlphaKey( spep_3 -3 + 152, ctbaki2, 179 );
setEffAlphaKey( spep_3 -3 + 154, ctbaki2, 153 );
setEffAlphaKey( spep_3 -3 + 156, ctbaki2, 128 );
setEffAlphaKey( spep_3 -3 + 158, ctbaki2, 102 );
setEffAlphaKey( spep_3 -3 + 160, ctbaki2, 77 );
setEffAlphaKey( spep_3 -3 + 162, ctbaki2, 51 );
setEffAlphaKey( spep_3 -3 + 164, ctbaki2, 25 );
setEffAlphaKey( spep_3 -3 + 166, ctbaki2, 0 );

--流線
ryusen2 = entryEffectLife( spep_3 -3 + 130,  921, 51, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 178, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 130, ryusen2, 1.53, 1.55 );
setEffScaleKey( spep_3  + 178, ryusen2, 1.53, 1.55 );

setEffRotateKey( spep_3 -3 + 130, ryusen2, -50 );
setEffRotateKey( spep_3  + 178, ryusen2, -50 );

setEffAlphaKey( spep_3 -3 + 130, ryusen2, 255 );
setEffAlphaKey( spep_3  + 178, ryusen2, 255 );

--SE
playSe( spep_3 + 16, 1000 );  --けり
playSe( spep_3 + 30, 1001 );  --パンチ
playSe( spep_3 + 40, 1009 );  --パンチ
playSe( spep_3 + 50, 1001 );  --パンチ
playSe( spep_3 + 60, 1009 );  --パンチ
playSe( spep_3 + 68, 1010 );  --けり
playSe( spep_3 + 82, 1009 );  --けり
playSe( spep_3 + 100, 1001 );  --パンチ
playSe( spep_3 + 112, 1009 );  --パンチ
playSe( spep_3 + 128, 1011 );  --パンチ
playSe( spep_3 + 146, 43 );  --瞬間移動

-- ** ホワイトフェード ** --
entryFade( spep_3 + 108, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 124, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 172, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--黒背景
entryFadeBg(spep_3 + 0, 0, 180, 0, 0, 0, 0, 200);

--次の準備
spep_4 = spep_3 + 180;
------------------------------------------------------
-- 斬り付け
------------------------------------------------------
-- ** エフェクト等 ** --
slashing_f = entryEffect( spep_4 + 0, SP_09, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, slashing_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, slashing_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, slashing_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, slashing_f, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, slashing_f, 255 );
setEffAlphaKey( spep_4 + 96, slashing_f, 255 );
setEffRotateKey( spep_4 + 0, slashing_f, 0 );
setEffRotateKey( spep_4 + 96, slashing_f, 0 );

--流線
ryusen3 = entryEffectLife( spep_4 + 0,  921, 92, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 92, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1.53, 1.55 );
setEffScaleKey( spep_4 + 92, ryusen3, 1.53, 1.55 );

setEffRotateKey( spep_4 + 0, ryusen3, -54 );
setEffRotateKey( spep_4 + 92, ryusen3, -54 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 92, ryusen3, 255 );

-- ** エフェクト等(後) ** --
slashing_b = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, slashing_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, slashing_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, slashing_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, slashing_b, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, slashing_b, 255 );
setEffAlphaKey( spep_4 + 96, slashing_b, 255 );
setEffRotateKey( spep_4 + 0, slashing_b, 0 );
setEffRotateKey( spep_4 + 96, slashing_b, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_4 -3 + 40,  10010, 30, 0x100, -1, 0, -165.1, 407.9 );--ズオッ

setEffMoveKey( spep_4 -3 + 40, ctzan, -165.1, 407.9 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzan, -174.3, 411.6 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzan, -163.2, 407.7 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzan, -173.1, 403.9 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzan, -170.2, 411.5 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzan, -167.3, 400.5 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzan, -174.7, 411 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzan, -168, 403.7 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzan, -168.1, 398.9 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzan, -175.7, 410.6 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctzan, -168.3, 403.2 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzan, -175.8, 404.9 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzan, -170, 401.1 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctzan, -171.6, 408 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctzan, -170.4, 400.3 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctzan, -170.4, 400.3 , 0 );

setEffScaleKey( spep_4 -3 + 40, ctzan, 1.56, 1.56 );
setEffScaleKey( spep_4 -3 + 42, ctzan, 1.62, 1.62 );
setEffScaleKey( spep_4 -3 + 44, ctzan, 1.67, 1.67 );
setEffScaleKey( spep_4 -3 + 46, ctzan, 1.73, 1.73 );
setEffScaleKey( spep_4 -3 + 48, ctzan, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 50, ctzan, 1.85, 1.85 );
setEffScaleKey( spep_4 -3 + 52, ctzan, 1.9, 1.9 );
setEffScaleKey( spep_4 -3 + 54, ctzan, 1.96, 1.96 );
setEffScaleKey( spep_4 -3 + 56, ctzan, 2.02, 2.02 );
setEffScaleKey( spep_4 -3 + 70, ctzan, 2.02, 2.02 );

setEffRotateKey( spep_4 -3 + 40, ctzan, -16 );
setEffRotateKey( spep_4 -3 + 70, ctzan, -16 );

setEffAlphaKey( spep_4 -3 + 40, ctzan, 255 );
setEffAlphaKey( spep_4 -3 + 56, ctzan, 255 );
setEffAlphaKey( spep_4 -3 + 58, ctzan, 219 );
setEffAlphaKey( spep_4 -3 + 60, ctzan, 182 );
setEffAlphaKey( spep_4 -3 + 62, ctzan, 146 );
setEffAlphaKey( spep_4 -3 + 64, ctzan, 109 );
setEffAlphaKey( spep_4 -3 + 66, ctzan, 73 );
setEffAlphaKey( spep_4 -3 + 68, ctzan, 36 );
setEffAlphaKey( spep_4 -3 + 70, ctzan, 0 );

--敵の動き
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4 -3 + 92, 1, 0 );

changeAnime( spep_4  + 0, 1, 108 );
changeAnime( spep_4 -3 + 48, 1, 106 );

setMoveKey( spep_4  + 0, 1, -396.9, -544.3 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, -332.8, -454.3 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -276.3, -375 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -227.6, -305.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -186.6, -245.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -152.4, -194.3 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -120.3, -146.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -92.2, -104.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -68.4, -68.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -48.4, -37.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -30.8, -10.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -14.7, 14.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -4.3, 32.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 3.6, 46.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 9.6, 57.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 13.8, 65.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 16.6, 72.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 18.8, 77.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 20.6, 82.1 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 19.1, 82.4 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 19.1, 82.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 6.1, 41.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -11.9, 73.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 21.8, -10.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -44.8, 3.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -16.8, 58.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -55.3, -65.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -128.7, -165.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -190.9, -243.2 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -235.3, -327.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -288.4, -391.1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -327, -449.4 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -360.7, -500.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -390.2, -545.1 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -415.9, -584 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -438.4, -618 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -457.9, -647.6 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -475, -673.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -489.9, -696.1 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -503, -716 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -514.7, -733.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -525.3, -749.7 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -534.9, -764.3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, -543.9, -777.9 , 0 );

setScaleKey( spep_4  + 0, 1, 2.87, 2.87 );
--setScaleKey( spep_4 -3 + 2, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 4, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 6, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 8, 1, 2.32, 2.32 );
setScaleKey( spep_4 -3 + 10, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 12, 1, 2.12, 2.12 );
setScaleKey( spep_4 -3 + 14, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 16, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 18, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 20, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.86, 1.86 );
setScaleKey( spep_4 -3 + 24, 1, 1.83, 1.83 );
setScaleKey( spep_4 -3 + 26, 1, 1.81, 1.81 );
setScaleKey( spep_4 -3 + 28, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 30, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 32, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 34, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 39, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 47, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 48, 1, 1.81, 1.81 );
setScaleKey( spep_4 -3 + 50, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 52, 1, 1.87, 1.87 );
setScaleKey( spep_4 -3 + 54, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 56, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 58, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 60, 1, 2.12, 2.12 );
setScaleKey( spep_4 -3 + 62, 1, 2.3, 2.3 );
setScaleKey( spep_4 -3 + 64, 1, 2.45, 2.45 );
setScaleKey( spep_4 -3 + 66, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 68, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 70, 1, 2.81, 2.81 );
setScaleKey( spep_4 -3 + 72, 1, 2.9, 2.9 );
setScaleKey( spep_4 -3 + 74, 1, 2.98, 2.98 );
setScaleKey( spep_4 -3 + 76, 1, 3.04, 3.04 );
setScaleKey( spep_4 -3 + 78, 1, 3.1, 3.1 );
setScaleKey( spep_4 -3 + 80, 1, 3.16, 3.16 );
setScaleKey( spep_4 -3 + 82, 1, 3.2, 3.2 );
setScaleKey( spep_4 -3 + 84, 1, 3.25, 3.25 );
setScaleKey( spep_4 -3 + 86, 1, 3.28, 3.28 );
setScaleKey( spep_4 -3 + 88, 1, 3.32, 3.32 );
setScaleKey( spep_4 -3 + 90, 1, 3.34, 3.34 );
setScaleKey( spep_4 -3 + 92, 1, 3.37, 3.37 );

setRotateKey( spep_4  + 0, 1, -49 );
setRotateKey( spep_4 -3 + 8, 1, -49 );
setRotateKey( spep_4 -3 + 10, 1, -49.1 );
setRotateKey( spep_4 -3 + 47, 1, -49.1 );
setRotateKey( spep_4 -3 + 48, 1, -129 );
setRotateKey( spep_4 -3 + 92, 1, -129 );

--SE
playSe( spep_4, 43 );  --瞬間移動
playSe( spep_4 + 38, 1032 );  --きる
--playSe( spep_4 + 50, 44 );  --飛んでいく
--黒背景
entryFadeBg(spep_4 + 0, 0, 96, 0, 0, 0, 0, 220);

-- ** ホワイトフェード ** --
entryFade( spep_4 + 88, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_5 = spep_4 + 96;
------------------------------------------------------
-- 爆破
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, explosion, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 80, explosion, 255 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 80, explosion, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 21, 1, 0 );
setDisp( spep_5 + 22, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, -54.5, 79.5 , 0 );
setMoveKey( spep_5 + 2, 1, -51.5, 76.3 , 0 );
setMoveKey( spep_5 + 4, 1, -30.2, 52.5 , 0 );
setMoveKey( spep_5 + 6, 1, 4.7, 13.5 , 0 );
setMoveKey( spep_5 + 8, 1, 10.8, 6.7 , 0 );
setMoveKey( spep_5 + 10, 1, 14.2, 3.1 , 0 );
setMoveKey( spep_5 + 12, 1, 16, 1.2 , 0 );
setMoveKey( spep_5 + 14, 1, 17.8, -0.8 , 0 );
setMoveKey( spep_5 + 16, 1, 18.5, -1.3 , 0 );
setMoveKey( spep_5 + 18, 1, 19.5, -2.3 , 0 );
setMoveKey( spep_5 + 20, 1, 19.5, -2.3 , 0 );
setMoveKey( spep_5 + 22, 1, 20.2, -2.8 , 0 );
--setMoveKey( spep_5 + 24, 1, 19.1, -9.6 , 0 );
--setMoveKey( spep_5 + 26, 1, 21.7, 1 , 0 );
--setMoveKey( spep_5 + 28, 1, 19.5, -8.4 , 0 );

setScaleKey( spep_5 + 0, 1, 4.75, 4.75 );
setScaleKey( spep_5 + 2, 1, 4.57, 4.57 );
setScaleKey( spep_5 + 4, 1, 3.21, 3.21 );
setScaleKey( spep_5 + 6, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 8, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 10, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 12, 1, 0.27, 0.27 );
setScaleKey( spep_5 + 14, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 16, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 18, 1, 0.1, 0.1 );
setScaleKey( spep_5 + 20, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 22, 1, 0.06, 0.06 );
--setScaleKey( spep_5 + 24, 1, 0.05, 0.05 );
--setScaleKey( spep_5 + 26, 1, 0.04, 0.04 );

setRotateKey( spep_5 + 0, 1, 180 );
setRotateKey( spep_5 + 22, 1, 180 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 78, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 78, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_5 + 78, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_5 + 0, shuchusen3, 180 );
setEffRotateKey( spep_5 + 78, shuchusen3, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 78, shuchusen3, 255 );

--SE
playSe( spep_5, 44 );  --飛んでいく
playSe( spep_5 + 22, SE_09 );  --爆発

-- ** ホワイトフェード ** --
entryFade( spep_5 + 70, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_6 = spep_5 + 80;
------------------------------------------------------
-- 口から光波
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, beam, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, beam, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 86, beam, 255 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 86, beam, 0 );

--流線
ryusen4 = entryEffectLife( spep_6 + 0,  921, 84, 0x80, -1, 0, -200, 0 );

setEffMoveKey( spep_6 + 84, ryusen4, -200, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen4, 1.53, 1.15 );
setEffScaleKey( spep_6 + 84, ryusen4, 1.53, 1.15 );

setEffRotateKey( spep_6 + 0, ryusen4, -111 );
setEffRotateKey( spep_6 + 84, ryusen4, -111 );

setEffAlphaKey( spep_6 + 0, ryusen4, 255 );
setEffAlphaKey( spep_6 + 84, ryusen4, 255 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_6 -3 + 26,  10012, 20, 0x100, -1, 0, -153.8, -63.3 );--ズオッ

setEffMoveKey( spep_6 -3 + 28, ctzuo2, -173.9, -18.1 , 0 );
setEffMoveKey( spep_6 -3 + 30, ctzuo2, -171.5, 28.6 , 0 );
setEffMoveKey( spep_6 -3 + 32, ctzuo2, -193, 25.3 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctzuo2, -187.3, 10.2 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctzuo2, -210, -3.3 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctzuo2, -208.6, 8.3 , 0 );
setEffMoveKey( spep_6 -3 + 40, ctzuo2, -208.9, -3.3 , 0 );
setEffMoveKey( spep_6 -3 + 42, ctzuo2, -220, 11.3 , 0 );
setEffMoveKey( spep_6 -3 + 44, ctzuo2, -216.2, 4.7 , 0 );
setEffMoveKey( spep_6 -3 + 46, ctzuo2, -219.8, 6.3 , 0 );

setEffScaleKey( spep_6 -3 + 26, ctzuo2, 1.67, 1.67 );
setEffScaleKey( spep_6 -3 + 28, ctzuo2, 2.27, 2.27 );
setEffScaleKey( spep_6 -3 + 30, ctzuo2, 2.86, 2.86 );
setEffScaleKey( spep_6 -3 + 32, ctzuo2, 2.9, 2.9 );
setEffScaleKey( spep_6 -3 + 34, ctzuo2, 2.95, 2.95 );
setEffScaleKey( spep_6 -3 + 36, ctzuo2, 2.99, 2.99 );
setEffScaleKey( spep_6 -3 + 38, ctzuo2, 2.93, 2.93 );
setEffScaleKey( spep_6 -3 + 40, ctzuo2, 2.87, 2.87 );
setEffScaleKey( spep_6 -3 + 42, ctzuo2, 2.81, 2.81 );
setEffScaleKey( spep_6 -3 + 44, ctzuo2, 2.75, 2.75 );
setEffScaleKey( spep_6 -3 + 46, ctzuo2, 2.69, 2.69 );

setEffRotateKey( spep_6 -3 + 26, ctzuo2, -40 );
setEffRotateKey( spep_6 -3 + 46, ctzuo2, -40 );

setEffAlphaKey( spep_6 -3 + 26, ctzuo2, 255 );
setEffAlphaKey( spep_6 -3 + 36, ctzuo2, 255 );
setEffAlphaKey( spep_6 -3 + 38, ctzuo2, 204 );
setEffAlphaKey( spep_6 -3 + 40, ctzuo2, 153 );
setEffAlphaKey( spep_6 -3 + 42, ctzuo2, 102 );
setEffAlphaKey( spep_6 -3 + 44, ctzuo2, 51 );
setEffAlphaKey( spep_6 -3 + 46, ctzuo2, 0 );

--SE
playSe( spep_6 + 24, SE_07 );  --発射

-- ** ホワイトフェード ** --
entryFade( spep_6 + 78, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--黒背景
entryFadeBg(spep_6 + 0, 0, 86, 0, 0, 0, 0, 220);

--次の準備
spep_7 = spep_6 + 86;




------------------------------------------------------
-- 爆破
------------------------------------------------------
-- ** エフェクト等(前) ** --
explosion2_f = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, explosion2_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 120, explosion2_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion2_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, explosion2_f, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, explosion2_f, 255 );
setEffAlphaKey( spep_7 + 120, explosion2_f, 255 );
setEffRotateKey( spep_7 + 0, explosion2_f, 0 );
setEffRotateKey( spep_7 + 120, explosion2_f, 0 );

-- ** エフェクト等(後) ** --
explosion2_b = entryEffect( spep_7 + 0, SP_08, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, explosion2_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 120, explosion2_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion2_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, explosion2_b, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, explosion2_b, 255 );
setEffAlphaKey( spep_7 + 120, explosion2_b, 255 );
setEffRotateKey( spep_7 + 0, explosion2_b, 0 );
setEffRotateKey( spep_7 + 120, explosion2_b, 0 );

--流線
ryusen4 = entryEffectLife( spep_7 + 0,  921, 118, 0x80, -1, 0,-280, 0 );


setEffMoveKey( spep_7 + 118, ryusen4, -280, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryusen4, 1.53, 1.45 );
setEffScaleKey( spep_7 + 118, ryusen4, 1.53, 1.45 );

setEffRotateKey( spep_7 + 0, ryusen4, -105 );
setEffRotateKey( spep_7 + 118, ryusen4, -105 );

setEffAlphaKey( spep_7 + 0, ryusen4, 255 );
setEffAlphaKey( spep_7 + 118, ryusen4, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_7 + 12, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe( spep_7 + 16, SE_10 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 16 );
entryFade( spep_7 + 100, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 116 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- スタート気溜め
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
kidame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, kidame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 150, kidame, 255 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 150, kidame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 148, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 148, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 60, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 60, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え  

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 72,  190006, 72, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 72, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 72, ctgogo, -9.9, 515.8 , 0 );
setEffMoveKey( spep_0 +  144, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 72, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0 + 136, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0 + 138, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_0 + 140, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_0 + 142, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_0 + 144, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_0 + 72, ctgogo, 0 );
setEffRotateKey( spep_0 + 144, ctgogo, 0 );

setEffAlphaKey( spep_0 + 72, ctgogo, 0 );
setEffAlphaKey( spep_0 + 73, ctgogo, 255 );
setEffAlphaKey( spep_0 + 74, ctgogo, 255 );
setEffAlphaKey( spep_0 + 144, ctgogo, 255 );

--se
playSe( spep_0 + 36, SE_01 );  --気が大きくなったイメージ
--playSe( spep_0 + 56, SE_02 );  --気ダメ
playSe( spep_0 + 72, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 36, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  -- white fade
entryFade( spep_0 + 140, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--黒背景
entryFadeBg(spep_0 + 0, 0, 150, 0, 0, 0, 0, 255);

--次の準備
spep_1=spep_0+150;
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


playSe( spep_1, SE_05);
speff2 = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff2, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_1+82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 90;
------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, rush, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, rush, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 70, rush, 255 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 70, rush, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 68, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.13, 1.61 );
setEffScaleKey( spep_2 + 68, shuchusen2, 1.13, 1.61 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 68, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 68, shuchusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 0,  10012, 60, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffMoveKey( spep_2 + 2, ctzuo, 95.9, 286.5 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, 102.6, 326.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, 157.6, 334.3 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_2 + 58, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_2 + 60, ctzuo, 196, 319.9 , 0 );

a=1.9;

setEffScaleKey( spep_2 + 0, ctzuo, 0.1+a, 0.1+a );
setEffScaleKey( spep_2 + 2, ctzuo, 0.33+a, 0.33+a );
setEffScaleKey( spep_2 + 4, ctzuo, 0.57+a, 0.57+a );
setEffScaleKey( spep_2 + 6, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_2 + 50, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_2 + 52, ctzuo, 1.04+a, 1.04+a );
setEffScaleKey( spep_2 + 54, ctzuo, 1.28+a, 1.28+a );
setEffScaleKey( spep_2 + 56, ctzuo, 1.52+a, 1.52+a );
setEffScaleKey( spep_2 + 58, ctzuo, 1.76+a, 1.76+a );
setEffScaleKey( spep_2 + 60, ctzuo, 3+a, 3+a );

setEffRotateKey( spep_2 + 0, ctzuo, 30 );
setEffRotateKey( spep_2 + 60, ctzuo, 30 );

setEffAlphaKey( spep_2 + 0, ctzuo, 255 );
setEffAlphaKey( spep_2 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2 + 52, ctzuo, 204 );
setEffAlphaKey( spep_2 + 54, ctzuo, 153 );
setEffAlphaKey( spep_2 + 56, ctzuo, 102 );
setEffAlphaKey( spep_2 + 58, ctzuo, 51 );
setEffAlphaKey( spep_2 + 60, ctzuo, 0 );



--SE
SE0=playSe( spep_2 + 0, SE_04 );  --接近

--黒背景
entryFadeBg(spep_2 + 0, 0, 70, 0, 0, 0, 0, 200);

--------------------------------------
--回避 
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 +36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める ※止めたい音がある場合
   
    pauseAll( SP_dodge, 67);
    
   --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 146.4, 23.6, 0);  --回避開始時のキャラの座標
    setScaleKey(SP_dodge , 1 ,1.7, 1.7 ); --回避開始時のキャラの大きさ
    setRotateKey(SP_dodge,   1, 0); --回避開始時のキャラの角度

    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 146.4, 23.6, 0);  --回避終了時のキャラの座標
    setScaleKey(SP_dodge+10 , 1 ,1.7, 1.7 ); --回避終了時のキャラの大きさ
    setRotateKey(SP_dodge+10,   1, 0); --回避終了時のキャラの角度
    
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

-- ** ホワイトフェード ** --
entryFade( spep_2 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2 + 70;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 178, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.4, 1.75 );
setEffScaleKey( spep_3 + 178, shuchusen3, 1.4, 1.75 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 178, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 178, shuchusen3, 255 );


-- ** エフェクト等 ** --
fighting = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, fighting, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fighting, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, fighting, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, fighting, 255 );
setEffAlphaKey( spep_3 + 180, fighting, 255 );
setEffRotateKey( spep_3 + 0, fighting, 0 );
setEffRotateKey( spep_3 + 180, fighting, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  914, 126, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 126, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 2, 1.5 );
setEffScaleKey( spep_3  + 126, ryusen1, 2, 1.5 );

setEffRotateKey( spep_3 + 0, ryusen1, -7 );
setEffRotateKey( spep_3  + 126, ryusen1, -7 );

setEffAlphaKey( spep_3  +0 , ryusen1, 255 );
setEffAlphaKey( spep_3  + 124, ryusen1, 255 );
setEffAlphaKey( spep_3  + 125, ryusen1, 255 );
setEffAlphaKey( spep_3  + 126, ryusen1, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 168, 1, 0 );

changeAnime( spep_3  + 0, 1, 104 );
changeAnime( spep_3 -3 + 18, 1, 108 );
changeAnime( spep_3 -3 + 32, 1, 106 );
changeAnime( spep_3 -3 + 42, 1, 108 );
changeAnime( spep_3 -3 + 52, 1, 106 );
changeAnime( spep_3 -3 + 62, 1, 108 );
changeAnime( spep_3 -3 + 70, 1, 106 );
changeAnime( spep_3 -3 + 84, 1, 108 );
changeAnime( spep_3 -3 + 102, 1, 106 );
changeAnime( spep_3 -3 + 112, 1, 108 );
changeAnime( spep_3 -3 + 130, 1, 106 );

setMoveKey( spep_3  + 0, 1, -44.7, 7.6 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -74.6, 3.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -101.8, 0 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -126, -3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -147.2, -5.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -165.3, -7.4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -180.4, -8.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -192.4, -9.6 , 0 );
setMoveKey( spep_3 -3 + 17, 1, -201.4, -9.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -179.7, -2.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -187.8, -0.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -205.3, -8.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -199.7, 0.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -199.2, -0.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -171.3, 8.6 , 0 );
setMoveKey( spep_3 -3 + 31, 1, -130.6, 13.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -190, 23 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -164.9, 26.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -164.2, 16.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -161.4, 21.7 , 0 );
setMoveKey( spep_3 -3 + 41, 1, -153.9, 21 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -164.9, 36.7 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -141.5, 40 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -145.2, 29.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -141, 34.6 , 0 );
setMoveKey( spep_3 -3 + 51, 1, -128.3, 36.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -137.2, 36 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -115.6, 37.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -119.1, 30.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -116.5, 33.4 , 0 );
setMoveKey( spep_3 -3 + 61, 1, -105.2, 33.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -74.5, 1.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -18.6, -3.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -1.6, -13.5 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 4.8, -18.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 6, 37.2 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -3, 39.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 3.9, 56.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 16.9, 67.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 41.5, 86.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 57.9, 98.3 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 78.6, 113 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 92.7, 137.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 89.6, 124.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 113.2, 124.6 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 108.8, 119.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 122.7, 116.4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 116.9, 122.6 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 124.2, 121.5 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 121.7, 121.3 , 0 );
setMoveKey( spep_3 -3 + 101, 1, 125.9, 128.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 87.6, 110.4 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 130, 111.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 124, 97.1 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 124.5, 99.2 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 118.3, 97.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 222.8, 125.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 231.8, 128.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 187.2, 107 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 216.1, 122.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 208.1, 115 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 226.9, 122.7 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 227.8, 122 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 231.9, 123.1 , 0 );
setMoveKey( spep_3 -3 + 129, 1, 234.3, 123.7 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 129.5, 145.3 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 148, 153 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 186.4, 202.8 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 254.4, 287.3 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 278.3, 340.8 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 336.9, 372.8 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 374, 425.5 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 390.4, 448.7 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 421.7, 480.9 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 441.3, 515.5 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 465.1, 533 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 476.9, 556.9 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 495.6, 573.5 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 505.7, 589.4 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 520.1, 605.1 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 531.5, 615.7 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 540.5, 626.4 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 548.4, 635.6 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 555.1, 643.5 , 0 );
setMoveKey( spep_3  + 168, 1, 560.8, 650.3 , 0 );

setScaleKey( spep_3  + 0, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 17, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 20, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 22, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 31, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 34, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 41, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 42, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 44, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 46, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 51, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 52, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 56, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 61, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 62, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 64, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 66, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 69, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 70, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 72, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 74, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 83, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 84, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 86, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 88, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 101, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 102, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 104, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 106, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 111, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 112, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 114, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 116, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 129, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 130, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 132, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 134, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 136, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 138, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 140, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 142, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 144, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 146, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 148, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 150, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 152, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 154, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 156, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 158, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 160, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 162, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 164, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 166, 1, 0.66, 0.66 );
setScaleKey( spep_3  + 168, 1, 0.65, 0.65 );

setRotateKey( spep_3  + 0, 1, -4.8 );
--setRotateKey( spep_3 -3 + 2, 1, -5 );
setRotateKey( spep_3 -3 + 18, 1, -5 );
setRotateKey( spep_3 -3 + 20, 1, -5.1 );
setRotateKey( spep_3 -3 + 22, 1, -5.5 );
setRotateKey( spep_3 -3 + 24, 1, -6 );
setRotateKey( spep_3 -3 + 26, 1, -6.8 );
setRotateKey( spep_3 -3 + 28, 1, -8 );
setRotateKey( spep_3 -3 + 31, 1, -10 );
setRotateKey( spep_3 -3 + 32, 1, -57 );
setRotateKey( spep_3 -3 + 41, 1, -57 );
setRotateKey( spep_3 -3 + 42, 1, -10 );
setRotateKey( spep_3 -3 + 51, 1, -10 );
setRotateKey( spep_3 -3 + 52, 1, -42 );
setRotateKey( spep_3 -3 + 54, 1, -39.5 );
setRotateKey( spep_3 -3 + 56, 1, -38.2 );
setRotateKey( spep_3 -3 + 58, 1, -37.5 );
setRotateKey( spep_3 -3 + 61, 1, -37 );
setRotateKey( spep_3 -3 + 62, 1, 6 );
setRotateKey( spep_3 -3 + 64, 1, -2 );
setRotateKey( spep_3 -3 + 66, 1, -6.3 );
setRotateKey( spep_3 -3 + 69, 1, -8.5 );
setRotateKey( spep_3 -3 + 70, 1, -93 );
setRotateKey( spep_3 -3 + 72, 1, -90.3 );
setRotateKey( spep_3 -3 + 74, 1, -87.6 );
setRotateKey( spep_3 -3 + 76, 1, -84.9 );
setRotateKey( spep_3 -3 + 78, 1, -82.3 );
setRotateKey( spep_3 -3 + 80, 1, -79.6 );
setRotateKey( spep_3 -3 + 83, 1, -77 );
setRotateKey( spep_3 -3 + 84, 1, -21 );
setRotateKey( spep_3 -3 + 86, 1, -19.8 );
setRotateKey( spep_3 -3 + 88, 1, -18.9 );
setRotateKey( spep_3 -3 + 90, 1, -18.3 );
setRotateKey( spep_3 -3 + 92, 1, -17.8 );
setRotateKey( spep_3 -3 + 94, 1, -17.5 );
setRotateKey( spep_3 -3 + 96, 1, -17.3 );
setRotateKey( spep_3 -3 + 98, 1, -17.1 );
setRotateKey( spep_3 -3 + 101, 1, -17 );
setRotateKey( spep_3 -3 + 102, 1, -40 );
setRotateKey( spep_3 -3 + 104, 1, -40.1 );
setRotateKey( spep_3 -3 + 106, 1, -40.1 );
setRotateKey( spep_3 -3 + 108, 1, -40.2 );
setRotateKey( spep_3 -3 + 111, 1, -40.2 );
setRotateKey( spep_3 -3 + 112, 1, -17 );
setRotateKey( spep_3 -3 + 129, 1, -17 );
setRotateKey( spep_3 -3 + 130, 1, -96 );
setRotateKey( spep_3 -3 + 154, 1, -96 );
setRotateKey( spep_3 -3 + 156, 1, -96.1 );
setRotateKey( spep_3  +168, 1, -96.1 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_3 -3 + 18,  10017, 67, 0x100, -1, 0, 22, 365 );--ドガガガッ

setEffMoveKey( spep_3 -3 + 18, ctdogagaga, 22, 365 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctdogagaga, 23.8, 361.9 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdogagaga, 22.2, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctdogagaga, 19.2, 355.7 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogagaga, 18.4, 354.2 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_3  + 82, ctdogagaga, 19.7, 356.7 , 0 );

setEffScaleKey( spep_3 -3 + 18, ctdogagaga, 1.88, 1.88 );
setEffScaleKey( spep_3 -3 + 20, ctdogagaga, 3.07, 3.07 );
setEffScaleKey( spep_3 -3 + 22, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_3  + 82, ctdogagaga, 2.75, 2.75 );

setEffRotateKey( spep_3 -3 + 18, ctdogagaga, -12.3 );
setEffRotateKey( spep_3 -3 + 22, ctdogagaga, -12.3 );
setEffRotateKey( spep_3 -3 + 24, ctdogagaga, -12.5 );
setEffRotateKey( spep_3  + 82, ctdogagaga, -12.5 );

setEffAlphaKey( spep_3 -3 + 18, ctdogagaga, 255 );
setEffAlphaKey( spep_3  + 80, ctdogagaga, 255 );
setEffAlphaKey( spep_3  + 81, ctdogagaga, 0 );
setEffAlphaKey( spep_3  + 82, ctdogagaga, 0 );
--文字エントリー
ctdon = entryEffectLife( spep_3 -3 + 84,  10019, 10, 0x100, -1, 0, -5.7, 302.8 ); --ドンッ

setEffMoveKey( spep_3 -3 + 86, ctdon, 11.8, 316.5 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctdon, 44.5, 327.8 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctdon, 50.3, 325.2 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctdon, 38.8, 331.3 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctdon, 22.5, 331.6 , 0 );

setEffScaleKey( spep_3 -3 + 84, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_3 -3 + 86, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_3 -3 + 88, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 90, ctdon, 1.53, 1.53 );
setEffScaleKey( spep_3 -3 + 92, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_3 -3 + 94, ctdon, 1.57, 1.57 );

setEffRotateKey( spep_3 -3 + 84, ctdon, -0.8 );
setEffRotateKey( spep_3 -3 + 86, ctdon, -0.2 );
setEffRotateKey( spep_3 -3 + 88, ctdon, 0.3 );
setEffRotateKey( spep_3 -3 + 94, ctdon, 0.3 );

setEffAlphaKey( spep_3 -3 + 84, ctdon, 255 );
setEffAlphaKey( spep_3 -3 + 90, ctdon, 255 );
setEffAlphaKey( spep_3 -3 + 92, ctdon, 128 );
setEffAlphaKey( spep_3 -3 + 94, ctdon, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_3 -3 + 102,  10020, 8, 0x100, -1, 0, 7.3, 277.5 ); --バキッ

setEffMoveKey( spep_3 -3 + 104, ctbaki, 37.8, 294.1 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctbaki, 34.2, 324.5 , 0 );
setEffMoveKey( spep_3 -3 + 108, ctbaki, 33.7, 310.8 , 0 );
setEffMoveKey( spep_3 -3 + 110, ctbaki, 30.7, 305.7 , 0 );

setEffScaleKey( spep_3 -3 + 102, ctbaki, 0.7, 0.7 );
setEffScaleKey( spep_3 -3 + 104, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_3 -3 + 106, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 108, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 110, ctbaki, 1, 1 );


setEffRotateKey( spep_3 -3 + 102, ctbaki, -18.8 );
setEffRotateKey( spep_3 -3 + 104, ctbaki, -18.8 );
setEffRotateKey( spep_3 -3 + 106, ctbaki, -13 );
setEffRotateKey( spep_3 -3 + 108, ctbaki, -18.8 );
setEffRotateKey( spep_3 -3 + 110, ctbaki, -32.1 );

setEffAlphaKey( spep_3 -3 + 102, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 108, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 110, ctbaki, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_3 -2 + 112,  10019, 12, 0x80, -1, 0, 143.3, 297.6 );--ドンッ

setEffMoveKey( spep_3 -2 + 114, ctdon2, 152.3, 323.7 , 0 );
setEffMoveKey( spep_3 -2 + 116, ctdon2, 179.3, 355.6 , 0 );
setEffMoveKey( spep_3 -2 + 118, ctdon2, 177.3, 361.4 , 0 );
setEffMoveKey( spep_3 -2 + 120, ctdon2, 191.8, 355.8 , 0 );
setEffMoveKey( spep_3 -2 + 122, ctdon2, 181.5, 365.5 , 0 );
setEffMoveKey( spep_3 -2 + 124, ctdon2, 169, 364.6 , 0 );

setEffScaleKey( spep_3 -2 + 112, ctdon2, 0.8, 0.8 );
setEffScaleKey( spep_3 -2 + 114, ctdon2, 1.41, 1.41 );
setEffScaleKey( spep_3 -2 + 116, ctdon2, 2.02, 2.02 );
setEffScaleKey( spep_3 -2 + 118, ctdon2, 2.11, 2.11 );
setEffScaleKey( spep_3 -2 + 124, ctdon2, 2.2, 2.2 );

setEffRotateKey( spep_3 -2 + 112, ctdon2, -27 );
setEffRotateKey( spep_3 -2 + 124, ctdon2, -27 );

setEffAlphaKey( spep_3 -2 + 112, ctdon2, 255 );
setEffAlphaKey( spep_3 -2 + 120, ctdon2, 255 );
setEffAlphaKey( spep_3 -2 + 122, ctdon2, 128 );
setEffAlphaKey( spep_3 -2 + 124, ctdon2, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_3 -3 + 130,  10020, 36, 0x100, -1, 0, 176.8, -204 );--バキッ

setEffMoveKey( spep_3 -3 + 132, ctbaki2, 158.7, -182.5 , 0 );
setEffMoveKey( spep_3 -3 + 134, ctbaki2, 156.8, -158.4 , 0 );
setEffMoveKey( spep_3 -3 + 136, ctbaki2, 146.9, -153.9 , 0 );
setEffMoveKey( spep_3 -3 + 138, ctbaki2, 158.9, -156.7 , 0 );
setEffMoveKey( spep_3 -3 + 140, ctbaki2, 148.7, -160.2 , 0 );
setEffMoveKey( spep_3 -3 + 142, ctbaki2, 151.6, -151.5 , 0 );
setEffMoveKey( spep_3 -3 + 144, ctbaki2, 154.9, -161.5 , 0 );
setEffMoveKey( spep_3 -3 + 146, ctbaki2, 147.7, -158.8 , 0 );
setEffMoveKey( spep_3 -3 + 148, ctbaki2, 148.3, -148.3 , 0 );
setEffMoveKey( spep_3 -3 + 150, ctbaki2, 149.3, -157.1 , 0 );
setEffMoveKey( spep_3 -3 + 152, ctbaki2, 139.2, -144.4 , 0 );
setEffMoveKey( spep_3 -3 + 154, ctbaki2, 143.7, -149 , 0 );
setEffMoveKey( spep_3 -3 + 156, ctbaki2, 134, -145.7 , 0 );
setEffMoveKey( spep_3 -3 + 158, ctbaki2, 136.8, -147.1 , 0 );
setEffMoveKey( spep_3 -3 + 160, ctbaki2, 132.4, -138.6 , 0 );
setEffMoveKey( spep_3 -3 + 162, ctbaki2, 131.1, -143.8 , 0 );
setEffMoveKey( spep_3 -3 + 164, ctbaki2, 123, -135.2 , 0 );
setEffMoveKey( spep_3 -3 + 166, ctbaki2, 120.3, -133.1 , 0 );

setEffScaleKey( spep_3 -3 + 130, ctbaki2, 0.8, 0.8 );
setEffScaleKey( spep_3 -3 + 132, ctbaki2, 1.25, 1.25 );
setEffScaleKey( spep_3 -3 + 134, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 136, ctbaki2, 1.73, 1.73 );
setEffScaleKey( spep_3 -3 + 138, ctbaki2, 1.75, 1.75 );
setEffScaleKey( spep_3 -3 + 140, ctbaki2, 1.78, 1.78 );
setEffScaleKey( spep_3 -3 + 142, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 144, ctbaki2, 1.83, 1.83 );
setEffScaleKey( spep_3 -3 + 146, ctbaki2, 1.85, 1.85 );
setEffScaleKey( spep_3 -3 + 148, ctbaki2, 1.86, 1.86 );
setEffScaleKey( spep_3 -3 + 150, ctbaki2, 1.87, 1.87 );
setEffScaleKey( spep_3 -3 + 152, ctbaki2, 1.88, 1.88 );
setEffScaleKey( spep_3 -3 + 154, ctbaki2, 1.89, 1.89 );
setEffScaleKey( spep_3 -3 + 156, ctbaki2, 1.9, 1.9 );
setEffScaleKey( spep_3 -3 + 158, ctbaki2, 1.91, 1.91 );
setEffScaleKey( spep_3 -3 + 160, ctbaki2, 1.92, 1.92 );
setEffScaleKey( spep_3 -3 + 162, ctbaki2, 1.93, 1.93 );
setEffScaleKey( spep_3 -3 + 164, ctbaki2, 1.94, 1.94 );
setEffScaleKey( spep_3 -3 + 166, ctbaki2, 1.95, 1.95 );

setEffRotateKey( spep_3 -3 + 130, ctbaki2, -18 );
setEffRotateKey( spep_3 -3 + 166, ctbaki2, -18 );

setEffAlphaKey( spep_3 -3 + 130, ctbaki2, 255 );
setEffAlphaKey( spep_3 -3 + 146, ctbaki2, 255 );
setEffAlphaKey( spep_3 -3 + 148, ctbaki2, 230 );
setEffAlphaKey( spep_3 -3 + 150, ctbaki2, 204 );
setEffAlphaKey( spep_3 -3 + 152, ctbaki2, 179 );
setEffAlphaKey( spep_3 -3 + 154, ctbaki2, 153 );
setEffAlphaKey( spep_3 -3 + 156, ctbaki2, 128 );
setEffAlphaKey( spep_3 -3 + 158, ctbaki2, 102 );
setEffAlphaKey( spep_3 -3 + 160, ctbaki2, 77 );
setEffAlphaKey( spep_3 -3 + 162, ctbaki2, 51 );
setEffAlphaKey( spep_3 -3 + 164, ctbaki2, 25 );
setEffAlphaKey( spep_3 -3 + 166, ctbaki2, 0 );

--流線
ryusen2 = entryEffectLife( spep_3 -3 + 130,  921, 51, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 178, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 130, ryusen2, 1.53, 1.55 );
setEffScaleKey( spep_3  + 178, ryusen2, 1.53, 1.55 );

setEffRotateKey( spep_3 -3 + 130, ryusen2, -50 );
setEffRotateKey( spep_3  + 178, ryusen2, -50 );

setEffAlphaKey( spep_3 -3 + 130, ryusen2, 255 );
setEffAlphaKey( spep_3  + 178, ryusen2, 255 );

--SE
playSe( spep_3 + 16, 1000 );  --けり
playSe( spep_3 + 30, 1001 );  --パンチ
playSe( spep_3 + 40, 1009 );  --パンチ
playSe( spep_3 + 50, 1001 );  --パンチ
playSe( spep_3 + 60, 1009 );  --パンチ
playSe( spep_3 + 68, 1010 );  --けり
playSe( spep_3 + 82, 1009 );  --けり
playSe( spep_3 + 100, 1001 );  --パンチ
playSe( spep_3 + 112, 1009 );  --パンチ
playSe( spep_3 + 128, 1011 );  --パンチ
playSe( spep_3 + 146, 43 );  --瞬間移動

-- ** ホワイトフェード ** --
entryFade( spep_3 + 108, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 124, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 172, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--黒背景
entryFadeBg(spep_3 + 0, 0, 180, 0, 0, 0, 0, 200);

--次の準備
spep_4 = spep_3 + 180;
------------------------------------------------------
-- 斬り付け
------------------------------------------------------
-- ** エフェクト等 ** --
slashing_f = entryEffect( spep_4 + 0, SP_09x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, slashing_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, slashing_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, slashing_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 96, slashing_f, -1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, slashing_f, 255 );
setEffAlphaKey( spep_4 + 96, slashing_f, 255 );
setEffRotateKey( spep_4 + 0, slashing_f, 0 );
setEffRotateKey( spep_4 + 96, slashing_f, 0 );

--流線
ryusen3 = entryEffectLife( spep_4 + 0,  921, 92, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 92, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1.53, 1.55 );
setEffScaleKey( spep_4 + 92, ryusen3, 1.53, 1.55 );

setEffRotateKey( spep_4 + 0, ryusen3, -54 );
setEffRotateKey( spep_4 + 92, ryusen3, -54 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 92, ryusen3, 255 );

-- ** エフェクト等(後) ** --
slashing_b = entryEffect( spep_4 + 0, SP_04x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, slashing_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, slashing_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, slashing_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, slashing_b, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, slashing_b, 255 );
setEffAlphaKey( spep_4 + 96, slashing_b, 255 );
setEffRotateKey( spep_4 + 0, slashing_b, 0 );
setEffRotateKey( spep_4 + 96, slashing_b, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_4 -3 + 40,  10010, 30, 0x100, -1, 0, -165.1, 407.9 );--ズオッ

setEffMoveKey( spep_4 -3 + 40, ctzan, -165.1, 407.9 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzan, -174.3, 411.6 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzan, -163.2, 407.7 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzan, -173.1, 403.9 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzan, -170.2, 411.5 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzan, -167.3, 400.5 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzan, -174.7, 411 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzan, -168, 403.7 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzan, -168.1, 398.9 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzan, -175.7, 410.6 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctzan, -168.3, 403.2 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzan, -175.8, 404.9 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzan, -170, 401.1 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctzan, -171.6, 408 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctzan, -170.4, 400.3 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctzan, -170.4, 400.3 , 0 );

setEffScaleKey( spep_4 -3 + 40, ctzan, 1.56, 1.56 );
setEffScaleKey( spep_4 -3 + 42, ctzan, 1.62, 1.62 );
setEffScaleKey( spep_4 -3 + 44, ctzan, 1.67, 1.67 );
setEffScaleKey( spep_4 -3 + 46, ctzan, 1.73, 1.73 );
setEffScaleKey( spep_4 -3 + 48, ctzan, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 50, ctzan, 1.85, 1.85 );
setEffScaleKey( spep_4 -3 + 52, ctzan, 1.9, 1.9 );
setEffScaleKey( spep_4 -3 + 54, ctzan, 1.96, 1.96 );
setEffScaleKey( spep_4 -3 + 56, ctzan, 2.02, 2.02 );
setEffScaleKey( spep_4 -3 + 70, ctzan, 2.02, 2.02 );

setEffRotateKey( spep_4 -3 + 40, ctzan, -16 );
setEffRotateKey( spep_4 -3 + 70, ctzan, -16 );

setEffAlphaKey( spep_4 -3 + 40, ctzan, 255 );
setEffAlphaKey( spep_4 -3 + 56, ctzan, 255 );
setEffAlphaKey( spep_4 -3 + 58, ctzan, 219 );
setEffAlphaKey( spep_4 -3 + 60, ctzan, 182 );
setEffAlphaKey( spep_4 -3 + 62, ctzan, 146 );
setEffAlphaKey( spep_4 -3 + 64, ctzan, 109 );
setEffAlphaKey( spep_4 -3 + 66, ctzan, 73 );
setEffAlphaKey( spep_4 -3 + 68, ctzan, 36 );
setEffAlphaKey( spep_4 -3 + 70, ctzan, 0 );

--敵の動き
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4 -3 + 92, 1, 0 );

changeAnime( spep_4  + 0, 1, 108 );
changeAnime( spep_4 -3 + 48, 1, 106 );

setMoveKey( spep_4  + 0, 1, -396.9, -544.3 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, -332.8, -454.3 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -276.3, -375 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -227.6, -305.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -186.6, -245.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -152.4, -194.3 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -120.3, -146.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -92.2, -104.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -68.4, -68.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -48.4, -37.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -30.8, -10.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -14.7, 14.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -4.3, 32.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 3.6, 46.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 9.6, 57.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 13.8, 65.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 16.6, 72.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 18.8, 77.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 20.6, 82.1 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 19.1, 82.4 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 19.1, 82.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 6.1, 41.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -11.9, 73.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 21.8, -10.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -44.8, 3.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -16.8, 58.1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -55.3, -65.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -128.7, -165.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -190.9, -243.2 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -235.3, -327.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -288.4, -391.1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -327, -449.4 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -360.7, -500.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -390.2, -545.1 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -415.9, -584 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -438.4, -618 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -457.9, -647.6 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -475, -673.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -489.9, -696.1 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -503, -716 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -514.7, -733.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -525.3, -749.7 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -534.9, -764.3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, -543.9, -777.9 , 0 );

setScaleKey( spep_4  + 0, 1, 2.87, 2.87 );
--setScaleKey( spep_4 -3 + 2, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 4, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 6, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 8, 1, 2.32, 2.32 );
setScaleKey( spep_4 -3 + 10, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 12, 1, 2.12, 2.12 );
setScaleKey( spep_4 -3 + 14, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 16, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 18, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 20, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.86, 1.86 );
setScaleKey( spep_4 -3 + 24, 1, 1.83, 1.83 );
setScaleKey( spep_4 -3 + 26, 1, 1.81, 1.81 );
setScaleKey( spep_4 -3 + 28, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 30, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 32, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 34, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 39, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 47, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 48, 1, 1.81, 1.81 );
setScaleKey( spep_4 -3 + 50, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 52, 1, 1.87, 1.87 );
setScaleKey( spep_4 -3 + 54, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 56, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 58, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 60, 1, 2.12, 2.12 );
setScaleKey( spep_4 -3 + 62, 1, 2.3, 2.3 );
setScaleKey( spep_4 -3 + 64, 1, 2.45, 2.45 );
setScaleKey( spep_4 -3 + 66, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 68, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 70, 1, 2.81, 2.81 );
setScaleKey( spep_4 -3 + 72, 1, 2.9, 2.9 );
setScaleKey( spep_4 -3 + 74, 1, 2.98, 2.98 );
setScaleKey( spep_4 -3 + 76, 1, 3.04, 3.04 );
setScaleKey( spep_4 -3 + 78, 1, 3.1, 3.1 );
setScaleKey( spep_4 -3 + 80, 1, 3.16, 3.16 );
setScaleKey( spep_4 -3 + 82, 1, 3.2, 3.2 );
setScaleKey( spep_4 -3 + 84, 1, 3.25, 3.25 );
setScaleKey( spep_4 -3 + 86, 1, 3.28, 3.28 );
setScaleKey( spep_4 -3 + 88, 1, 3.32, 3.32 );
setScaleKey( spep_4 -3 + 90, 1, 3.34, 3.34 );
setScaleKey( spep_4 -3 + 92, 1, 3.37, 3.37 );

setRotateKey( spep_4  + 0, 1, -49 );
setRotateKey( spep_4 -3 + 8, 1, -49 );
setRotateKey( spep_4 -3 + 10, 1, -49.1 );
setRotateKey( spep_4 -3 + 47, 1, -49.1 );
setRotateKey( spep_4 -3 + 48, 1, -129 );
setRotateKey( spep_4 -3 + 92, 1, -129 );

--SE
playSe( spep_4, 43 );  --瞬間移動
playSe( spep_4 + 38, 1032 );  --きる
--playSe( spep_4 + 50, 44 );  --飛んでいく
--黒背景
entryFadeBg(spep_4 + 0, 0, 96, 0, 0, 0, 0, 220);

-- ** ホワイトフェード ** --
entryFade( spep_4 + 88, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_5 = spep_4 + 96;
------------------------------------------------------
-- 爆破
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_05x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, explosion, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 80, explosion, 255 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 80, explosion, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 21, 1, 0 );
setDisp( spep_5 + 22, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, -54.5, 79.5 , 0 );
setMoveKey( spep_5 + 2, 1, -51.5, 76.3 , 0 );
setMoveKey( spep_5 + 4, 1, -30.2, 52.5 , 0 );
setMoveKey( spep_5 + 6, 1, 4.7, 13.5 , 0 );
setMoveKey( spep_5 + 8, 1, 10.8, 6.7 , 0 );
setMoveKey( spep_5 + 10, 1, 14.2, 3.1 , 0 );
setMoveKey( spep_5 + 12, 1, 16, 1.2 , 0 );
setMoveKey( spep_5 + 14, 1, 17.8, -0.8 , 0 );
setMoveKey( spep_5 + 16, 1, 18.5, -1.3 , 0 );
setMoveKey( spep_5 + 18, 1, 19.5, -2.3 , 0 );
setMoveKey( spep_5 + 20, 1, 19.5, -2.3 , 0 );
setMoveKey( spep_5 + 22, 1, 20.2, -2.8 , 0 );
--setMoveKey( spep_5 + 24, 1, 19.1, -9.6 , 0 );
--setMoveKey( spep_5 + 26, 1, 21.7, 1 , 0 );
--setMoveKey( spep_5 + 28, 1, 19.5, -8.4 , 0 );

setScaleKey( spep_5 + 0, 1, 4.75, 4.75 );
setScaleKey( spep_5 + 2, 1, 4.57, 4.57 );
setScaleKey( spep_5 + 4, 1, 3.21, 3.21 );
setScaleKey( spep_5 + 6, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 8, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 10, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 12, 1, 0.27, 0.27 );
setScaleKey( spep_5 + 14, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 16, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 18, 1, 0.1, 0.1 );
setScaleKey( spep_5 + 20, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 22, 1, 0.06, 0.06 );
--setScaleKey( spep_5 + 24, 1, 0.05, 0.05 );
--setScaleKey( spep_5 + 26, 1, 0.04, 0.04 );

setRotateKey( spep_5 + 0, 1, 180 );
setRotateKey( spep_5 + 22, 1, 180 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 78, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 78, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_5 + 78, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_5 + 0, shuchusen3, 180 );
setEffRotateKey( spep_5 + 78, shuchusen3, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 78, shuchusen3, 255 );

--SE
playSe( spep_5, 44 );  --飛んでいく
playSe( spep_5 + 22, SE_09 );  --爆発

-- ** ホワイトフェード ** --
entryFade( spep_5 + 70, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_6 = spep_5 + 80;
------------------------------------------------------
-- 口から光波
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_06x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, beam, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, beam, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 86, beam, 255 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 86, beam, 0 );

--流線
ryusen4 = entryEffectLife( spep_6 + 0,  921, 84, 0x80, -1, 0, -200, 0 );

setEffMoveKey( spep_6 + 84, ryusen4, -200, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen4, 1.53, 1.15 );
setEffScaleKey( spep_6 + 84, ryusen4, 1.53, 1.15 );

setEffRotateKey( spep_6 + 0, ryusen4, -111 );
setEffRotateKey( spep_6 + 84, ryusen4, -111 );

setEffAlphaKey( spep_6 + 0, ryusen4, 255 );
setEffAlphaKey( spep_6 + 84, ryusen4, 255 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_6 -3 + 26,  10012, 20, 0x100, -1, 0, -153.8, -63.3 );--ズオッ

setEffMoveKey( spep_6 -3 + 28, ctzuo2, -173.9, -18.1 , 0 );
setEffMoveKey( spep_6 -3 + 30, ctzuo2, -171.5, 28.6 , 0 );
setEffMoveKey( spep_6 -3 + 32, ctzuo2, -193, 25.3 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctzuo2, -187.3, 10.2 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctzuo2, -210, -3.3 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctzuo2, -208.6, 8.3 , 0 );
setEffMoveKey( spep_6 -3 + 40, ctzuo2, -208.9, -3.3 , 0 );
setEffMoveKey( spep_6 -3 + 42, ctzuo2, -220, 11.3 , 0 );
setEffMoveKey( spep_6 -3 + 44, ctzuo2, -216.2, 4.7 , 0 );
setEffMoveKey( spep_6 -3 + 46, ctzuo2, -219.8, 6.3 , 0 );

setEffScaleKey( spep_6 -3 + 26, ctzuo2, 1.67, 1.67 );
setEffScaleKey( spep_6 -3 + 28, ctzuo2, 2.27, 2.27 );
setEffScaleKey( spep_6 -3 + 30, ctzuo2, 2.86, 2.86 );
setEffScaleKey( spep_6 -3 + 32, ctzuo2, 2.9, 2.9 );
setEffScaleKey( spep_6 -3 + 34, ctzuo2, 2.95, 2.95 );
setEffScaleKey( spep_6 -3 + 36, ctzuo2, 2.99, 2.99 );
setEffScaleKey( spep_6 -3 + 38, ctzuo2, 2.93, 2.93 );
setEffScaleKey( spep_6 -3 + 40, ctzuo2, 2.87, 2.87 );
setEffScaleKey( spep_6 -3 + 42, ctzuo2, 2.81, 2.81 );
setEffScaleKey( spep_6 -3 + 44, ctzuo2, 2.75, 2.75 );
setEffScaleKey( spep_6 -3 + 46, ctzuo2, 2.69, 2.69 );

setEffRotateKey( spep_6 -3 + 26, ctzuo2, -40 );
setEffRotateKey( spep_6 -3 + 46, ctzuo2, -40 );

setEffAlphaKey( spep_6 -3 + 26, ctzuo2, 255 );
setEffAlphaKey( spep_6 -3 + 36, ctzuo2, 255 );
setEffAlphaKey( spep_6 -3 + 38, ctzuo2, 204 );
setEffAlphaKey( spep_6 -3 + 40, ctzuo2, 153 );
setEffAlphaKey( spep_6 -3 + 42, ctzuo2, 102 );
setEffAlphaKey( spep_6 -3 + 44, ctzuo2, 51 );
setEffAlphaKey( spep_6 -3 + 46, ctzuo2, 0 );

--SE
playSe( spep_6 + 24, SE_07 );  --発射

-- ** ホワイトフェード ** --
entryFade( spep_6 + 78, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--黒背景
entryFadeBg(spep_6 + 0, 0, 86, 0, 0, 0, 0, 220);

--次の準備
spep_7 = spep_6 + 86;




------------------------------------------------------
-- 爆破
------------------------------------------------------
-- ** エフェクト等(前) ** --
explosion2_f = entryEffect( spep_7 + 0, SP_07x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, explosion2_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 120, explosion2_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion2_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, explosion2_f, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, explosion2_f, 255 );
setEffAlphaKey( spep_7 + 120, explosion2_f, 255 );
setEffRotateKey( spep_7 + 0, explosion2_f, 0 );
setEffRotateKey( spep_7 + 120, explosion2_f, 0 );

-- ** エフェクト等(後) ** --
explosion2_b = entryEffect( spep_7 + 0, SP_08x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, explosion2_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 120, explosion2_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion2_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, explosion2_b, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, explosion2_b, 255 );
setEffAlphaKey( spep_7 + 120, explosion2_b, 255 );
setEffRotateKey( spep_7 + 0, explosion2_b, 0 );
setEffRotateKey( spep_7 + 120, explosion2_b, 0 );

--流線
ryusen4 = entryEffectLife( spep_7 + 0,  921, 118, 0x80, -1, 0,-280, 0 );


setEffMoveKey( spep_7 + 118, ryusen4, -280, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryusen4, 1.53, 1.45 );
setEffScaleKey( spep_7 + 118, ryusen4, 1.53, 1.45 );

setEffRotateKey( spep_7 + 0, ryusen4, -105 );
setEffRotateKey( spep_7 + 118, ryusen4, -105 );

setEffAlphaKey( spep_7 + 0, ryusen4, 255 );
setEffAlphaKey( spep_7 + 118, ryusen4, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_7 + 12, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe( spep_7 + 16, SE_10 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 16 );
entryFade( spep_7 + 100, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 116 );
end
--1019700:孫悟空&孫悟飯(幼年期)_かめはめ波＆魔閃光
--sp_effect_a1_00245

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
SP_01=	155802	;--	前方突進
SP_02=	155803	;--	急ブレーキ
SP_03=	155805	;--	急ブレーキ　背景
SP_04=	155806	;--	正面にらみ
SP_05=	155807	;--	足滑り
SP_06=	155808	;--	連撃
SP_07=	155810	;--	連撃　背景
SP_08=	155811	;--	スーパーパンチ
SP_09=	155812	;--	スーパーパンチ　背景
SP_10=	155813	;--	ヒット
SP_11=	155814	;--	殴り吹っ飛び
SP_12=	155815	;--	殴り吹っ飛び　背景
SP_13=	155816	;--	気弾溜め
SP_14=	155818	;--	発射
SP_15=	155820	;--	迫る気弾
SP_16=	155821	;--	迫る気弾　背景
SP_17=	155822	;--	大爆発
SP_18=	155823	;--	フィニッシュ

--エフェクト(てき)
SP_01x=	155802	;--	前方突進	
SP_02x=	155804	;--	急ブレーキ	(敵)
SP_03x=	155805	;--	急ブレーキ　背景	
SP_04x=	155806	;--	正面にらみ	
SP_05x=	155807	;--	足滑り	
SP_06x=	155809	;--	連撃	(敵)
SP_07x=	155810	;--	連撃　背景	
SP_08x=	155811	;--	スーパーパンチ	
SP_09x=	155812	;--	スーパーパンチ　背景	
SP_10x=	155813	;--	ヒット	
SP_11x=	155814	;--	殴り吹っ飛び	
SP_12x=	155815	;--	殴り吹っ飛び　背景	
SP_13x=	155817	;--	気弾溜め	(敵)
SP_14x=	155819	;--	発射	(敵)
SP_15x=	155820	;--	迫る気弾	
SP_16x=	155821	;--	迫る気弾　背景	
SP_17x=	155822	;--	大爆発	
SP_18x=	155824	;--	フィニッシュ	(敵)
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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
setAlphaKey( 0, 1, 255 );

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
-- 前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pulsion = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pulsion, 0, 0, 0 );
setEffMoveKey( spep_0 + 70, pulsion, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pulsion, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, pulsion, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pulsion, 0 );
setEffRotateKey( spep_0 + 70, pulsion, 0 );
setEffAlphaKey( spep_0 + 0, pulsion, 255 );
setEffAlphaKey( spep_0 + 70, pulsion, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 28,  906, 40 +3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 28, shuchusen1, 40+3, 20 );

setEffMoveKey( spep_0 -3 + 28, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 68, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 28, shuchusen1, 1.35, 1.96 );
setEffScaleKey( spep_0  + 68, shuchusen1, 1.35, 1.96 );

setEffRotateKey( spep_0 -3 + 28, shuchusen1, 180 );
setEffRotateKey( spep_0  + 68, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 68, shuchusen1, 255 );

--SE
playSe( spep_0 + 6, 9 );--向かってくる
setSeVolume( spep_0 + 6, 9, 56 );
playSe( spep_0 + 6, 44 );--向かってくる
setSeVolume( spep_0 + 6, 44, 89 );
playSe( spep_0 + 16, 1260 );--マシン足音
playSe( spep_0 + 36, 1260 );--マシン足音
setSeVolume( spep_0 + 36, 1260, 112 );
playSe( spep_0 + 60, 1260 );--マシン足音
setSeVolume( spep_0 + 60, 1260, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 62, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 70;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 94, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 急ブレーキ
------------------------------------------------------
-- ** エフェクト等 ** --
brake_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, brake_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, brake_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, brake_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, brake_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, brake_f, 0 );
setEffRotateKey( spep_2 + 130, brake_f, 0 );
setEffAlphaKey( spep_2 + 0, brake_f, 255 );
setEffAlphaKey( spep_2 + 130, brake_f, 255 );

-- ** エフェクト等 ** --
brake_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, brake_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, brake_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, brake_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, brake_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, brake_b, 0 );
setEffRotateKey( spep_2 + 130, brake_b, 0 );
setEffAlphaKey( spep_2 + 0, brake_b, 255 );
setEffAlphaKey( spep_2 + 130, brake_b, 255 );



--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 130, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2+17 + 98, 1, 100 );

setMoveKey( spep_2+3 + 0, 1, 807.8, 119.1 , 0 );
setMoveKey( spep_2+3 + 2, 1, 738.2, 107.5 , 0 );
setMoveKey( spep_2+3 + 4, 1, 683, 103.9 , 0 );
setMoveKey( spep_2+3 + 6, 1, 609.9, 108.2 , 0 );
setMoveKey( spep_2+3 + 8, 1, 551.1, 104.5 , 0 );
setMoveKey( spep_2+3 + 10, 1, 474.6, 92.9 , 0 );
setMoveKey( spep_2+3 + 12, 1, 412.3, 89.2 , 0 );
setMoveKey( spep_2+3 + 14, 1, 332.2, 93.6 , 0 );
setMoveKey( spep_2+3 + 16, 1, 266.4, 89.9 , 0 );
setMoveKey( spep_2+3 + 18, 1, 182.8, 78.3 , 0 );
setMoveKey( spep_2+3 + 20, 1, 200, 74.6 , 0 );
setMoveKey( spep_2+3 + 22, 1, 190.5, 82.6 , 0 );
setMoveKey( spep_2+3 + 24, 1, 197, 82.6 , 0 );

setMoveKey( spep_2+14 + 26, 1, 187.5, 74.6 , 0 );
setMoveKey( spep_2+14 + 28, 1, 194, 74.6 , 0 );
setMoveKey( spep_2+14 + 30, 1, 184.5, 82.6 , 0 );
setMoveKey( spep_2+14 + 32, 1, 191, 82.6 , 0 );
setMoveKey( spep_2+14 + 34, 1, 181.5, 74.6 , 0 );
setMoveKey( spep_2+14 + 36, 1, 188, 74.6 , 0 );


setScaleKey( spep_2 +3 + 0, 1, 0.45, 0.45 );
setScaleKey( spep_2 +3 + 2, 1, 0.46, 0.46 );
setScaleKey( spep_2 +3 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_2 +3 + 6, 1, 0.47, 0.47 );
setScaleKey( spep_2 +3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_2 +3 + 10, 1, 0.48, 0.48 );
setScaleKey( spep_2 +3 + 12, 1, 0.48, 0.48 );
setScaleKey( spep_2 +3 + 14, 1, 0.49, 0.49 );
setScaleKey( spep_2 +3 + 16, 1, 0.49, 0.49 );
setScaleKey( spep_2 +3 + 18, 1, 0.5, 0.5 );
setScaleKey( spep_2  + 50, 1, 0.5, 0.5 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 50, 1, 0 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_2 + 0, 1260 );--マシン足音
se_1033 = playSe( spep_2 + 8, 1033 );--ズザザサー
setSeVolume( spep_2 + 8, 1033, 0 );
setSeVolume( spep_2 + 24, 1033, 0 );
setSeVolume( spep_2 + 25, 1033, 25 );
setSeVolume( spep_2 + 26, 1033, 50 );
setSeVolume( spep_2 + 27, 1033, 75 );
setSeVolume( spep_2 + 28, 1033, 100 );
se_1260 = playSe( spep_2 + 24, 1260 );--ズザザサー
playSe( spep_2 + 24, 1192 );--ズザザサー
setSeVolume( spep_2 + 24, 1192, 200 );
se_12601 = playSe( spep_2 + 30, 1260 );--ズザザサー
se_1044 = playSe( spep_2 + 30, 1044 );--ズザザサー
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1033, 0 );
    stopSe( SP_dodge - 12, se_1260, 0 );
    stopSe( SP_dodge - 12, se_12601, 0 );
    stopSe( SP_dodge - 12, se_1044, 0 );
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の座標固定
    setMoveKey( SP_dodge+9, 1, 188, 74.6 , 0 );
    setScaleKey( SP_dodge+9, 1, 0.5, 0.5 );
    setRotateKey( SP_dodge+9, 1, 0 );

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setMoveKey( spep_2+14 + 38, 1, 178.5, 82.6 , 0 );
setMoveKey( spep_2+14 + 40, 1, 185, 82.6 , 0 );
setMoveKey( spep_2+14 + 42, 1, 175.5, 74.6 , 0 );
setMoveKey( spep_2+14 + 44, 1, 182, 74.6 , 0 );
setMoveKey( spep_2+14 + 46, 1, 172.5, 82.6 , 0 );
setMoveKey( spep_2+14 + 48, 1, 175, 78.6 , 0 );
setMoveKey( spep_2+14 + 78, 1, 175, 78.6 , 0 );
setMoveKey( spep_2+14 + 80, 1, 159.5, 71.6 , 0 );
setMoveKey( spep_2+14 + 82, 1, 144, 64.6 , 0 );
setMoveKey( spep_2+14 + 84, 1, 128.6, 57.6 , 0 );
setMoveKey( spep_2+14 + 86, 1, 113.2, 50.7 , 0 );
setMoveKey( spep_2+14 + 88, 1, 97.7, 43.7 , 0 );
setMoveKey( spep_2+14 + 90, 1, 82.3, 36.7 , 0 );
setMoveKey( spep_2+17 + 97, 1, 82.3, 36.7 , 0 );
setMoveKey( spep_2+17 + 98, 1, 83.5, 46.5 , 0 );
setMoveKey( spep_2+130, 1, 83.5, 46.5 , 0 );

setScaleKey( spep_2+14 + 78, 1, 0.5, 0.5 );
setScaleKey( spep_2+14 + 80, 1, 0.58, 0.58 );
setScaleKey( spep_2+14 + 82, 1, 0.67, 0.67 );
setScaleKey( spep_2+14 + 84, 1, 0.75, 0.75 );
setScaleKey( spep_2+14 + 86, 1, 0.83, 0.83 );
setScaleKey( spep_2+14 + 88, 1, 0.92, 0.92 );
setScaleKey( spep_2+14 + 90, 1, 1, 1 );
setScaleKey( spep_2+130, 1, 1, 1 );

setRotateKey( spep_2 + 130, 1, 0 );

--集中線
shuchusenx = entryEffectLife( spep_2 + 60,  906, 18, 0x100, -1, 0, 148.3, 80.9 );
setEffShake( spep_2 + 60, shuchusenx, 18, 20 );
setEffMoveKey( spep_2 + 60, shuchusenx, 148.3, 80.9 , 0 );
setEffMoveKey( spep_2 + 78, shuchusenx, 148.3, 80.9 , 0 );

setEffScaleKey( spep_2 + 60, shuchusenx, 1.89, 1.72 );
setEffScaleKey( spep_2 + 78, shuchusenx, 1.89, 1.72 );

setEffRotateKey( spep_2 + 60, shuchusenx, 180 );
setEffRotateKey( spep_2 + 78, shuchusenx, 180 );

setEffAlphaKey( spep_2 + 60, shuchusenx, 255 );
setEffAlphaKey( spep_2 + 78, shuchusenx, 255 );

--SE
playSe( spep_2 + 50, 1192 );--ズザザサー
setSeVolume( spep_2 + 50, 1192, 178 );
playSe( spep_2 + 56, 1260 );--ズザザサー
setSeVolume( spep_2 + 56, 1260, 56 );
playSe( spep_2 + 64, 48 );--！？
playSe( spep_2 + 112, 1003 );--悟空ジャンプ

stopSe( spep_2 + 44, se_1033, 16 );
stopSe( spep_2 + 33, se_1260, 4 );
stopSe( spep_2 + 37, se_12601, 5 );
stopSe( spep_2 + 63, se_1044, 14 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 130;
------------------------------------------------------
-- 正面にらみ
------------------------------------------------------
-- ** エフェクト等 ** --
glare = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, glare, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, glare, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, glare, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, glare, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, glare, 0 );
setEffRotateKey( spep_3 + 40, glare, 0 );
setEffAlphaKey( spep_3 + 0, glare, 255 );
setEffAlphaKey( spep_3 + 40, glare, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 40;
------------------------------------------------------
-- 足滑り
------------------------------------------------------
-- ** エフェクト等 ** --
glide = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, glide, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, glide, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, glide, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, glide, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, glide, 0 );
setEffRotateKey( spep_4 + 40, glide, 0 );
setEffAlphaKey( spep_4 + 0, glide, 255 );
setEffAlphaKey( spep_4 + 38, glide, 255 );
setEffAlphaKey( spep_4 + 39, glide, 255 );
setEffAlphaKey( spep_4 + 40, glide, 0 );

--SE
playSe( spep_4 + 0, 1192 );--ズザー
setSeVolume( spep_4 + 0, 1192, 195 );
playSe( spep_4 + 0, 1108 );--ズザー
se_1111 = playSe( spep_4 + 0, 1111 );--ズザー
playSe( spep_4 + 0, 1007 );--ズザー

stopSe( spep_4 + 10, se_1111, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 40;
------------------------------------------------------
-- 連撃
------------------------------------------------------
-- ** エフェクト等 ** --
struggle_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, struggle_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, struggle_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, struggle_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, struggle_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, struggle_f, 0 );
setEffRotateKey( spep_5 + 70, struggle_f, 0 );
setEffAlphaKey( spep_5 + 0, struggle_f, 255 );
setEffAlphaKey( spep_5 + 70, struggle_f, 255 );

-- ** エフェクト等 ** --
struggle_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, struggle_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, struggle_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, struggle_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, struggle_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, struggle_b, 0 );
setEffRotateKey( spep_5 + 70, struggle_b, 0 );
setEffAlphaKey( spep_5 + 0, struggle_b, 255 );
setEffAlphaKey( spep_5 + 70, struggle_b, 255 );

--文字エントリー
ctga = entryEffectLife( spep_5 + 12,  10005, 10, 0x100, -1, 0, 28, 140.6 );
setEffShake( spep_5 + 12, ctga, 10, 10 );
setEffMoveKey( spep_5 + 12, ctga, 28, 140.6 , 0 );
setEffMoveKey( spep_5 + 14, ctga, -6.9, 215.3 , 0 );
setEffMoveKey( spep_5 + 16, ctga, -5.9, 211.3 , 0 );
setEffMoveKey( spep_5 + 18, ctga, -6.9, 215.3 , 0 );
setEffMoveKey( spep_5 + 20, ctga, -5.9, 211.3 , 0 );
setEffMoveKey( spep_5 + 22, ctga, -6.9, 215.3 , 0 );

setEffScaleKey( spep_5 + 12, ctga, 0.66, 0.66 );
setEffScaleKey( spep_5 + 14, ctga, 1.67, 1.67 );
setEffScaleKey( spep_5 + 22, ctga, 1.67, 1.67 );

setEffRotateKey( spep_5 + 12, ctga, -34.6 );
setEffRotateKey( spep_5 + 22, ctga, -34.6 );

setEffAlphaKey( spep_5 + 12, ctga, 255 );
setEffAlphaKey( spep_5 + 22, ctga, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_5+4 + 30,  10020, 10, 0x100, -1, 0, 117.5, 103.5 );
setEffShake( spep_5+4 + 30, ctbaki, 10, 10 );
setEffMoveKey( spep_5+4 + 30, ctbaki, 117.5, 103.5 , 0 );
setEffMoveKey( spep_5+4 + 32, ctbaki, 75.7, 187.9 , 0 );
setEffMoveKey( spep_5+4 + 34, ctbaki, 75.8, 185.1 , 0 );
setEffMoveKey( spep_5+4 + 36, ctbaki, 75.7, 187.9 , 0 );
setEffMoveKey( spep_5+4 + 38, ctbaki, 75.8, 185.1 , 0 );
setEffMoveKey( spep_5+4 + 40, ctbaki, 75.7, 187.9 , 0 );

setEffScaleKey( spep_5+4 + 30, ctbaki, 0.42, 0.42 );
setEffScaleKey( spep_5+4 + 32, ctbaki, 1.28, 1.28 );
setEffScaleKey( spep_5+4 + 40, ctbaki, 1.28, 1.28 );

setEffRotateKey( spep_5+4 + 30, ctbaki, -26.8 );
setEffRotateKey( spep_5+4 + 40, ctbaki, -26.8 );

setEffAlphaKey( spep_5+4 + 30, ctbaki, 255 );
setEffAlphaKey( spep_5+4 + 40, ctbaki, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_5 +8 + 54,  10005, 10, 0x100, -1, 0, 93.9, 178.4 );
setEffShake( spep_5 +8 + 54, ctga2, 10, 10 );
setEffMoveKey( spep_5 +8 + 54, ctga2, 93.9, 178.4 , 0 );
setEffMoveKey( spep_5 +8 + 56, ctga2, 33.2, 233.9 , 0 );
setEffMoveKey( spep_5 +8 + 58, ctga2, 35.6, 230.6 , 0 );
setEffMoveKey( spep_5 +8 + 60, ctga2, 33.2, 233.9 , 0 );
setEffMoveKey( spep_5 +8 + 62, ctga2, 35.6, 230.6 , 0 );
setEffMoveKey( spep_5 +8 + 64, ctga2, 33.2, 233.9 , 0 );

setEffScaleKey( spep_5 +8 + 54, ctga2, 0.66, 0.66 );
setEffScaleKey( spep_5 +8 + 56, ctga2, 1.67, 1.67 );
setEffScaleKey( spep_5 +8 + 64, ctga2, 1.67, 1.67 );

setEffRotateKey( spep_5 +8 + 54, ctga2, -56.9 );
setEffRotateKey( spep_5 +8 + 56, ctga2, -56.8 );
setEffRotateKey( spep_5 +8 + 64, ctga2, -56.8 );

setEffAlphaKey( spep_5 +8 + 54, ctga2, 255 );
setEffAlphaKey( spep_5 +8 + 64, ctga2, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 70, 1, 0 );

changeAnime( spep_5 + 0, 1, 101 );
changeAnime( spep_5 + 12, 1, 108 );
changeAnime( spep_5 + 36, 1, 106 );
changeAnime( spep_5 + 62, 1, 108 );

setMoveKey( spep_5 + 0, 1, 157, -53.8 , 0 );
setMoveKey( spep_5 + 8, 1, 157, -53.8 , 0 );
setMoveKey( spep_5 + 11, 1, 161, -49.8 , 0 );
setMoveKey( spep_5 + 12, 1, 149.1, -0.9 , 0 );
setMoveKey( spep_5 + 14, 1, 164.2, 2.3 , 0 );
setMoveKey( spep_5 + 16, 1, 150.5, 7.9 , 0 );
setMoveKey( spep_5 + 18, 1, 156.8, -2.5 , 0 );
setMoveKey( spep_5 + 20, 1, 161.1, 5.1 , 0 );
setMoveKey( spep_5 + 22, 1, 164.2, 8.3 , 0 );
setMoveKey( spep_5 + 24, 1, 162.5, 1.9 , 0 );
setMoveKey( spep_5 + 26, 1, 168.8, 3.5 , 0 );
setMoveKey( spep_5 + 28, 1, 167.1, 5.1 , 0 );
setMoveKey( spep_5 + 31, 1, 180.3, 16.6 , 0 );
setMoveKey( spep_5 + 32, 1, 154.6, 39.3 , 0 );
setMoveKey( spep_5 + 34, 1, 162.4, 58 , 0 );
setMoveKey( spep_5 + 36, 1, 152.9, 49.9 , 0 );
setMoveKey( spep_5 + 38, 1, 174.3, 60.6 , 0 );
setMoveKey( spep_5 + 40, 1, 163.6, 84.9 , 0 );
setMoveKey( spep_5 + 42, 1, 167.4, 87.6 , 0 );
setMoveKey( spep_5 + 44, 1, 171.3, 87.9 , 0 );
setMoveKey( spep_5 + 46, 1, 178, 90.9 , 0 );
setMoveKey( spep_5 + 48, 1, 176.7, 95.6 , 0 );
setMoveKey( spep_5 + 50, 1, 177.9, 102.6 , 0 );
setMoveKey( spep_5 + 61, 1, 182.9, 108.9 , 0 );
setMoveKey( spep_5 + 62, 1, 230.1, 108.6 , 0 );
--setMoveKey( spep_5 + 56, 1, 241.4, 123.5 , 0 );
--setMoveKey( spep_5 + 58, 1, 236.7, 113.9 , 0 );
--setMoveKey( spep_5 + 60, 1, 259.6, 124.1 , 0 );
--setMoveKey( spep_5 + 62, 1, 245.6, 139 , 0 );
setMoveKey( spep_5 + 64, 1, 247.8, 132.8 , 0 );
setMoveKey( spep_5 + 66, 1, 253.9, 134 , 0 );
setMoveKey( spep_5 + 70, 1, 259.6, 139.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 11, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 70, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 11, 1, 0 );
setRotateKey( spep_5 + 12, 1, -15.2 );
setRotateKey( spep_5 + 35, 1, -15.2 );
setRotateKey( spep_5 + 36, 1, -47.9 );
setRotateKey( spep_5 + 61, 1, -47.9 );
setRotateKey( spep_5 + 62, 1, -30.3 );
setRotateKey( spep_5 + 70, 1, -30.3 );

--SE
playSe( spep_5 + 14, 1189 );--パンチ
playSe( spep_5 + 18, 1000 );--パンチ
playSe( spep_5 + 20, 1110 );--パンチ
playSe( spep_5 + 38, 1009 );--下段蹴り
setSeVolume( spep_5 + 38, 1009, 83 );
playSe( spep_5 + 40, 1000 );--下段蹴り
playSe( spep_5 + 66, 1010 );--上段蹴り
playSe( spep_5 + 66, 1001 );--上段蹴り
setSeVolume( spep_5 + 66, 1001, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 70;
------------------------------------------------------
-- スーパーパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, punch_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 40, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, punch_f, 0 );
setEffRotateKey( spep_6 + 40, punch_f, 0 );
setEffAlphaKey( spep_6 + 0, punch_f, 255 );
setEffAlphaKey( spep_6 + 40, punch_f, 255 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, punch_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 40, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, punch_b, 0 );
setEffRotateKey( spep_6 + 40, punch_b, 0 );
setEffAlphaKey( spep_6 + 0, punch_b, 255 );
setEffAlphaKey( spep_6 + 40, punch_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_6 + 33,  906, 7, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 33, shuchusen2, 7, 20 );
setEffMoveKey( spep_6 + 33, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 40, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 33, shuchusen2, 1.18, 1.92 );
setEffScaleKey( spep_6 + 40, shuchusen2, 1.18, 1.92 );

setEffRotateKey( spep_6 + 33, shuchusen2, 180 );
setEffRotateKey( spep_6 + 40, shuchusen2, 180 );

setEffAlphaKey( spep_6 + 33, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 40, shuchusen2, 255 );

--敵の動き
setDisp( spep_6 + 17, 1, 1 );
setDisp( spep_6 + 40, 1, 0 );

changeAnime( spep_6 + 17, 1, 108 );

setMoveKey( spep_6 + 17, 1, 101.2, 226.9 , 0 );
setMoveKey( spep_6 + 40, 1, 101.2, 226.9 , 0 );

setScaleKey( spep_6 + 17, 1, 2.93, 2.93 );
setScaleKey( spep_6 + 18, 1, 2.86, 2.86 );
setScaleKey( spep_6 + 20, 1, 2.79, 2.79 );
setScaleKey( spep_6 + 22, 1, 2.71, 2.71 );
setScaleKey( spep_6 + 24, 1, 2.64, 2.64 );
setScaleKey( spep_6 + 26, 1, 2.57, 2.57 );
setScaleKey( spep_6 + 28, 1, 2.5, 2.5 );
setScaleKey( spep_6 + 30, 1, 2.47, 2.47 );
setScaleKey( spep_6 + 32, 1, 2.43, 2.43 );
setScaleKey( spep_6 + 34, 1, 2.4, 2.4 );
setScaleKey( spep_6 + 36, 1, 2.37, 2.37 );
setScaleKey( spep_6 + 40, 1, 2.33, 2.33 );

setRotateKey( spep_6 + 17, 1, -19 );
setRotateKey( spep_6 + 40, 1, -19 );

--SE
se_1116 = playSe( spep_6 + 0, 1116 );--振りかぶって
playSe( spep_6 + 2, 1004 );--振りかぶって
se_1117 = playSe( spep_6 + 4, 1117 );--振りかぶって

stopSe( spep_6 + 23, se_1116, 20 );
stopSe( spep_6 + 33, se_1117, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 40;
------------------------------------------------------
-- ヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_7 + 20, hit, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_7 + 20, hit, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit, 0 );
setEffRotateKey( spep_7 + 20, hit, 0 );
setEffAlphaKey( spep_7 + 0, hit, 255 );
setEffAlphaKey( spep_7 + 18, hit, 255 );
setEffAlphaKey( spep_7 + 19, hit, 255 );
setEffAlphaKey( spep_7 + 20, hit, 0 );

--SE
playSe( spep_7, 1120 );--強パンチ

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 20, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 20;
------------------------------------------------------
-- 殴り吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
vanish_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, vanish_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 30, vanish_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, vanish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 30, vanish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, vanish_f, 0 );
setEffRotateKey( spep_8 + 30, vanish_f, 0 );
setEffAlphaKey( spep_8 + 0, vanish_f, 255 );
setEffAlphaKey( spep_8 + 30, vanish_f, 255 );

-- ** エフェクト等 ** --
vanish_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, vanish_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 30, vanish_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, vanish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 30, vanish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, vanish_b, 0 );
setEffRotateKey( spep_8 + 30, vanish_b, 0 );
setEffAlphaKey( spep_8 + 0, vanish_b, 255 );
setEffAlphaKey( spep_8 + 30, vanish_b, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_8 + 0,  10021, 28, 0x100, -1, 0, -46.7, 342.3 );
setEffShake( spep_8 + 0, ctbago, 28, 10 );
setEffMoveKey( spep_8 + 0, ctbago, -46.7, 342.3 , 0 );
setEffMoveKey( spep_8 + 2, ctbago, -44.7, 340.4 , 0 );
setEffMoveKey( spep_8 + 4, ctbago, -46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 6, ctbago, -43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 8, ctbago, -46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 10, ctbago, -43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 12, ctbago, -46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 14, ctbago, -43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 16, ctbago, -46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 18, ctbago, -43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 20, ctbago, -46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 22, ctbago, -43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 24, ctbago, -46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 26, ctbago, -43.9, 339.5 , 0 );
--setEffMoveKey( spep_8 + 30, ctbago, -46.7, 342.5 , 0 );

setEffScaleKey( spep_8 + 0, ctbago, 1.13, 1.13 );
setEffScaleKey( spep_8 + 2, ctbago, 2, 2 );
setEffScaleKey( spep_8 + 4, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 6, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 8, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 10, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 12, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 14, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 16, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 18, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 20, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 22, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 24, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 26, ctbago, 2.83, 2.83 );
--setEffScaleKey( spep_8 + 30, ctbago, 2.77, 2.77 );

setEffRotateKey( spep_8 + 0, ctbago, -36.1 );
setEffRotateKey( spep_8 + 2, ctbago, -36 );
setEffRotateKey( spep_8 + 28, ctbago, -36 );

setEffAlphaKey( spep_8 + 0, ctbago, 255 );
setEffAlphaKey( spep_8 + 28, ctbago, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 30, 1, 0 );

changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 103.4, 21.3 , 0 );
setMoveKey( spep_8 + 2, 1, 88.7, 36.4 , 0 );
setMoveKey( spep_8 + 4, 1, 106.1, 67.5 , 0 );
setMoveKey( spep_8 + 6, 1, 91.4, 114.6 , 0 );
setMoveKey( spep_8 + 8, 1, 108.8, 145.7 , 0 );
setMoveKey( spep_8 + 10, 1, 94.1, 160.8 , 0 );
setMoveKey( spep_8 + 12, 1, 111.5, 191.9 , 0 );
setMoveKey( spep_8 + 14, 1, 95.6, 208.1 , 0 );
setMoveKey( spep_8 + 16, 1, 109.8, 206.2 , 0 );
setMoveKey( spep_8 + 18, 1, 97.9, 194.4 , 0 );
setMoveKey( spep_8 + 20, 1, 110.1, 194.5 , 0 );
setMoveKey( spep_8 + 22, 1, 98.2, 206.7 , 0 );
setMoveKey( spep_8 + 24, 1, 98.3, 206.8 , 0 );
setMoveKey( spep_8 + 26, 1, 98.5, 206.9 , 0 );
setMoveKey( spep_8 + 30, 1, 98.6, 207.1 , 0 );

setScaleKey( spep_8 + 0, 1, 3, 3 );
setScaleKey( spep_8 + 2, 1, 2.63, 2.63 );
setScaleKey( spep_8 + 4, 1, 2.27, 2.27 );
setScaleKey( spep_8 + 6, 1, 1.9, 1.9 );
setScaleKey( spep_8 + 8, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 10, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 12, 1, 0.8, 0.8 );
setScaleKey( spep_8 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 16, 1, 0.72, 0.72 );
setScaleKey( spep_8 + 18, 1, 0.68, 0.68 );
setScaleKey( spep_8 + 20, 1, 0.65, 0.65 );
setScaleKey( spep_8 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_8 + 24, 1, 0.57, 0.57 );
setScaleKey( spep_8 + 26, 1, 0.53, 0.53 );
setScaleKey( spep_8 + 30, 1, 0.49, 0.49 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 30, 1, 0 );

--白フェード
entryFade( spep_8 + 22, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 30, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 30;
------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_9 + 140, tame, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_9 + 140, tame, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame, 0 );
setEffRotateKey( spep_9 + 140, tame, 0 );
setEffAlphaKey( spep_9 + 0, tame, 255 );
setEffAlphaKey( spep_9 + 140, tame, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_9 + 0,  906, 140, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9 + 0, shuchusen3, 140, 20 );
setEffMoveKey( spep_9 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_9 + 140, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_9 + 0, shuchusen3, 1.61, 1.61 );
setEffScaleKey( spep_9 + 140, shuchusen3, 1.61, 1.61 );

setEffRotateKey( spep_9 + 0, shuchusen3, 180 );
setEffRotateKey( spep_9 + 140, shuchusen3, 180 );

setEffAlphaKey( spep_9 + 0, shuchusen3, 0 );
setEffAlphaKey( spep_9 + 60, shuchusen3, 0 );
setEffAlphaKey( spep_9 + 61, shuchusen3, 0 );
setEffAlphaKey( spep_9 + 62, shuchusen3, 255 );
setEffAlphaKey( spep_9 + 140, shuchusen3, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_9+34  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_9+34  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_9 +46, 190006, 72, 0x100, -1, 0, 134, 512);-- ゴゴゴゴ

setEffMoveKey(  spep_9 +46,  ctgogo,  134,  512);
setEffMoveKey(  spep_9 +118,  ctgogo,  134,  512);

setEffAlphaKey( spep_9 +46, ctgogo, 0 );
setEffAlphaKey( spep_9 + 47, ctgogo, 255 );
setEffAlphaKey( spep_9 + 48, ctgogo, 255 );
setEffAlphaKey( spep_9 + 112, ctgogo, 255 );
setEffAlphaKey( spep_9 + 114, ctgogo, 191 );
setEffAlphaKey( spep_9 + 116, ctgogo, 112 );
setEffAlphaKey( spep_9 + 118, ctgogo, 64 );

setEffRotateKey(  spep_9 +46,  ctgogo,  0);
setEffRotateKey(  spep_9 +118,  ctgogo,  0);

setEffScaleKey(  spep_9 +46,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_9 +108,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_9 +118,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_9 + 26, 4 );--うなずく
playSe( spep_9 + 46, 1018 );--顔カットイン
SE1=playSe( spep_9 + 64, 1131 );--気弾溜め
SE2=playSe( spep_9 + 64, 1132 );--気弾溜め
SE3=playSe( spep_9 + 64, 1037 );--気弾溜め
setSeVolume( spep_9 + 64, 1037, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_9 + 132, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 140;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_10 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_10 + 60, beam, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_10 + 60, beam, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, beam, 0 );
setEffRotateKey( spep_10 + 60, beam, 0 );
setEffAlphaKey( spep_10 + 0, beam, 255 );
setEffAlphaKey( spep_10 + 58, beam, 255 );
setEffAlphaKey( spep_10 + 59, beam, 255 );
setEffAlphaKey( spep_10 + 60, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_10 + 4,  10012, 34, 0x100, -1, 0, -27.4, 137.8 );
setEffShake( spep_10 + 4, ctzuo, 34, 10 );
setEffMoveKey( spep_10 + 4, ctzuo, -27.4, 137.8 , 0 );
setEffMoveKey( spep_10 + 6, ctzuo, -62.8, 185.2 , 0 );
setEffMoveKey( spep_10 + 8, ctzuo, -97.4, 221.1 , 0 );
setEffMoveKey( spep_10 + 10, ctzuo, -100.6, 235.4 , 0 );
setEffMoveKey( spep_10 + 12, ctzuo, -102.2, 226.7 , 0 );
setEffMoveKey( spep_10 + 14, ctzuo, -105.5, 241.8 , 0 );
setEffMoveKey( spep_10 + 16, ctzuo, -107.2, 232.4 , 0 );
setEffMoveKey( spep_10 + 18, ctzuo, -110.4, 248.2 , 0 );
setEffMoveKey( spep_10 + 20, ctzuo, -112, 238.1 , 0 );
setEffMoveKey( spep_10 + 22, ctzuo, -115.3, 254.6 , 0 );
setEffMoveKey( spep_10 + 24, ctzuo, -116.8, 243.7 , 0 );
setEffMoveKey( spep_10 + 26, ctzuo, -120.2, 261 , 0 );
setEffMoveKey( spep_10 + 28, ctzuo, -121.6, 249.4 , 0 );
setEffMoveKey( spep_10 + 30, ctzuo, -136.6, 282.4 , 0 );
setEffMoveKey( spep_10 + 32, ctzuo, -149.1, 281.4 , 0 );
setEffMoveKey( spep_10 + 34, ctzuo, -164.3, 318.7 , 0 );
setEffMoveKey( spep_10 + 36, ctzuo, -176.6, 313.5 , 0 );
setEffMoveKey( spep_10 + 38, ctzuo, -190.3, 329.5 , 0 );

setEffScaleKey( spep_10 + 4, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_10 + 6, ctzuo, 1.08, 1.08 );
setEffScaleKey( spep_10 + 8, ctzuo, 2.05, 2.05 );
setEffScaleKey( spep_10 + 10, ctzuo, 2.12, 2.12 );
setEffScaleKey( spep_10 + 12, ctzuo, 2.19, 2.19 );
setEffScaleKey( spep_10 + 14, ctzuo, 2.26, 2.26 );
setEffScaleKey( spep_10 + 16, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_10 + 18, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_10 + 20, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_10 + 22, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_10 + 24, ctzuo, 2.61, 2.61 );
setEffScaleKey( spep_10 + 26, ctzuo, 2.68, 2.68 );
setEffScaleKey( spep_10 + 28, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_10 + 30, ctzuo, 3.15, 3.15 );
setEffScaleKey( spep_10 + 32, ctzuo, 3.54, 3.54 );
setEffScaleKey( spep_10 + 34, ctzuo, 3.94, 3.94 );
setEffScaleKey( spep_10 + 36, ctzuo, 4.33, 4.33 );
setEffScaleKey( spep_10 + 38, ctzuo, 4.72, 4.72 );

setEffRotateKey( spep_10 + 4, ctzuo, -37.4 );
setEffRotateKey( spep_10 + 6, ctzuo, -37.5 );
setEffRotateKey( spep_10 + 38, ctzuo, -37.5 );

setEffAlphaKey( spep_10 + 4, ctzuo, 255 );
setEffAlphaKey( spep_10 + 28, ctzuo, 255 );
setEffAlphaKey( spep_10 + 30, ctzuo, 204 );
setEffAlphaKey( spep_10 + 32, ctzuo, 153 );
setEffAlphaKey( spep_10 + 34, ctzuo, 102 );
setEffAlphaKey( spep_10 + 36, ctzuo, 51 );
setEffAlphaKey( spep_10 + 38, ctzuo, 0 );

--文字エントリー
shuchusen4 = entryEffectLife( spep_10 + 28,  906, 32, 0x100, -1, 0, -100, 81.5 );
setEffShake( spep_10 + 28, shuchusen4, 32, 20 );
setEffMoveKey( spep_10 + 28, shuchusen4, -100, 81.5 , 0 );
setEffMoveKey( spep_10 + 60, shuchusen4, -100, 81.5 , 0 );

setEffScaleKey( spep_10 + 28, shuchusen4, 2.02, 1.89 );
setEffScaleKey( spep_10 + 60, shuchusen4, 2.02, 1.89 );

setEffRotateKey( spep_10 + 28, shuchusen4, 180 );
setEffRotateKey( spep_10 + 60, shuchusen4, 180 );

setEffAlphaKey( spep_10 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_10 + 58, shuchusen4, 255 );
setEffAlphaKey( spep_10 + 59, shuchusen4, 255 );
setEffAlphaKey( spep_10 + 60, shuchusen4, 0 );

--SE
playSe( spep_10 + 0, 1146 );--発射
setSeVolume( spep_10 + 0, 1146, 89 );
playSe( spep_10 + 0, 1027 );--発射
setSeVolume( spep_10 + 0, 1027, 82 );
playSe( spep_10 + 4, 1022 );--発射

stopSe( spep_10 +4 , SE1, 10 );
stopSe( spep_10 +4, SE2, 10 );
stopSe( spep_10 +4, SE3, 10 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 60;
------------------------------------------------------
-- 迫る気弾
------------------------------------------------------
-- ** エフェクト等 ** --
demand_f = entryEffect( spep_11 + 0, SP_15, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, demand_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 40, demand_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, demand_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 40, demand_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, demand_f, 0 );
setEffRotateKey( spep_11 + 40, demand_f, 0 );
setEffAlphaKey( spep_11 + 0, demand_f, 255 );
setEffAlphaKey( spep_11 + 40, demand_f, 255 );

-- ** エフェクト等 ** --
demand_b = entryEffect( spep_11 + 0, SP_16, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, demand_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 40, demand_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, demand_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 40, demand_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, demand_b, 0 );
setEffRotateKey( spep_11 + 40, demand_b, 0 );
setEffAlphaKey( spep_11 + 0, demand_b, 255 );
setEffAlphaKey( spep_11 + 40, demand_b, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_11 + 0,  10014, 38, 0x100, -1, 0, -119.5, 359.5 );
setEffShake( spep_11 + 0, ctzudodo, 38, 20 );
setEffMoveKey( spep_11 + 0, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 2, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 4, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 6, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 8, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 10, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 12, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 14, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 16, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 18, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 20, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 22, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 24, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 26, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 28, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 30, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 32, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 34, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 36, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 38, ctzudodo, -108.2, 342.6 , 0 );

setEffScaleKey( spep_11 + 0, ctzudodo, 2.34, 2.39 );
setEffScaleKey( spep_11 + 38, ctzudodo, 2.34, 2.39 );

setEffRotateKey( spep_11 + 0, ctzudodo, -10.1 );
setEffRotateKey( spep_11 + 38, ctzudodo, -10.1 );

setEffAlphaKey( spep_11 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_11 + 38, ctzudodo, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 38, 1, 0 );

changeAnime( spep_11 + 0, 1, 105 );

setMoveKey( spep_11 + 0, 1, 113.8, 226.3 , 0 );
setMoveKey( spep_11 + 2, 1, 101.8, 214.4 , 0 );
setMoveKey( spep_11 + 4, 1, 101.9, 226.4 , 0 );
setMoveKey( spep_11 + 6, 1, 113.9, 214.5 , 0 );
setMoveKey( spep_11 + 8, 1, 114, 226.5 , 0 );
setMoveKey( spep_11 + 10, 1, 102, 214.6 , 0 );
setMoveKey( spep_11 + 12, 1, 102.1, 226.6 , 0 );
setMoveKey( spep_11 + 14, 1, 114.1, 214.7 , 0 );
setMoveKey( spep_11 + 16, 1, 114.2, 226.7 , 0 );
setMoveKey( spep_11 + 18, 1, 102.2, 214.8 , 0 );
setMoveKey( spep_11 + 20, 1, 102.3, 226.8 , 0 );
setMoveKey( spep_11 + 22, 1, 114.3, 214.9 , 0 );
setMoveKey( spep_11 + 24, 1, 114.4, 226.9 , 0 );
setMoveKey( spep_11 + 26, 1, 102.4, 215 , 0 );
setMoveKey( spep_11 + 28, 1, 102.5, 227 , 0 );
setMoveKey( spep_11 + 30, 1, 114.5, 215 , 0 );
setMoveKey( spep_11 + 32, 1, 114.5, 227.1 , 0 );
setMoveKey( spep_11 + 34, 1, 102.6, 215.1 , 0 );
setMoveKey( spep_11 + 36, 1, 102.6, 227.2 , 0 );
setMoveKey( spep_11 + 38, 1, 114.7, 215.2 , 0 );

setScaleKey( spep_11 + 0, 1, 1, 1 );
setScaleKey( spep_11 + 2, 1, 0.98, 0.98 );
setScaleKey( spep_11 + 4, 1, 0.97, 0.97 );
setScaleKey( spep_11 + 6, 1, 0.95, 0.95 );
setScaleKey( spep_11 + 8, 1, 0.94, 0.94 );
setScaleKey( spep_11 + 10, 1, 0.92, 0.92 );
setScaleKey( spep_11 + 12, 1, 0.91, 0.91 );
setScaleKey( spep_11 + 14, 1, 0.89, 0.89 );
setScaleKey( spep_11 + 16, 1, 0.87, 0.87 );
setScaleKey( spep_11 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_11 + 20, 1, 0.84, 0.84 );
setScaleKey( spep_11 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_11 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_11 + 26, 1, 0.79, 0.79 );
setScaleKey( spep_11 + 28, 1, 0.78, 0.78 );
setScaleKey( spep_11 + 30, 1, 0.76, 0.76 );
setScaleKey( spep_11 + 32, 1, 0.75, 0.75 );
setScaleKey( spep_11 + 34, 1, 0.73, 0.73 );
setScaleKey( spep_11 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_11 + 38, 1, 0.7, 0.7 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 38, 1, 0 );

--SE
playSe( spep_11 , 1021 );--追いはめ波

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_11 + 32, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_12 = spep_11 + 40;
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_12 + 0, 190014, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_12 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_12 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, gyan, 0 );
setEffRotateKey( spep_12 + 60, gyan, 0 );
setEffAlphaKey( spep_12 + 0, gyan, 255 );
setEffAlphaKey( spep_12 + 60, gyan, 255 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_12 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_12 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_12 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_12 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_12 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_12 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_12 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_12 + 6, ctgyan, 3.5, 3.5 );
--[[setEffScaleKey( spep_12 + 8, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_12 -3 + 10, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_12 -3 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_12 -3 + 14, ctgyan, 2.42, 2.42 );
setEffScaleKey( spep_12 -3 + 16, ctgyan, 2.43, 2.43 );
setEffScaleKey( spep_12 -3 + 18, ctgyan, 2.44, 2.44 );
setEffScaleKey( spep_12 -3 + 20, ctgyan, 2.45, 2.45 );
setEffScaleKey( spep_12 -3 + 22, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_12 -3 + 24, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_12 -3 + 26, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_12 -3 + 28, ctgyan, 2.48, 2.48 );
setEffScaleKey( spep_12 -3 + 30, ctgyan, 2.49, 2.49 );
setEffScaleKey( spep_12 -3 + 32, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_12 -3 + 34, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_12 -3 + 36, ctgyan, 2.51, 2.51 );
setEffScaleKey( spep_12 -3 + 38, ctgyan, 2.52, 2.52 );
setEffScaleKey( spep_12 -3 + 40, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_12 -3 + 42, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_12 -3 + 44, ctgyan, 2.54, 2.54 );
setEffScaleKey( spep_12 -3 + 46, ctgyan, 2.55, 2.55 );
setEffScaleKey( spep_12 -3 + 48, ctgyan, 2.56, 2.56 );
setEffScaleKey( spep_12 -3 + 50, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_12 -3 + 52, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_12 -3 + 54, ctgyan, 2.58, 2.58 );
setEffScaleKey( spep_12 -3 + 56, ctgyan, 2.59, 2.59 );
setEffScaleKey( spep_12 -3 + 58, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_12 + 57, ctgyan, 3.8, 3.8 );]]
setEffScaleKey( spep_12 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_12 + 0, ctgyan, 0 );
setEffRotateKey( spep_12 + 58, ctgyan, 0 );

setEffAlphaKey( spep_12 + 0, ctgyan, 255 );
setEffAlphaKey( spep_12 + 58, ctgyan, 255 );

--SE
playSe( spep_12 + 2, 1023 );--ギャン
setSeVolume( spep_12 + 2, 1023, 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_12+52 , 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_13 = spep_12 + 60;
------------------------------------------------------
-- 大爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_13 + 0, SP_17, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_13 + 92, explosion, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_13 + 92, explosion, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, explosion, 0 );
setEffRotateKey( spep_13 + 92, explosion, 0 );
setEffAlphaKey( spep_13 + 0, explosion, 255 );
setEffAlphaKey( spep_13 + 92, explosion, 255 );
setEffAlphaKey( spep_13 + 93, explosion, 0 );
setEffAlphaKey( spep_13 + 94, explosion, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_13 + 0,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_13 + 0, shuchusen5, 78, 20 );
setEffMoveKey( spep_13 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_13 + 78, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_13 + 0, shuchusen5, 1.2, 1.56 );
setEffScaleKey( spep_13 + 78, shuchusen5, 1.2, 1.56 );

setEffRotateKey( spep_13 + 0, shuchusen5, 180 );
setEffRotateKey( spep_13 + 78, shuchusen5, 180 );

setEffAlphaKey( spep_13 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_13 + 78, shuchusen5, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_13 + 0, 1159 );--爆発

--白フェード
entryFade( spep_13 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_14 = spep_13 + 92;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_14 + 0, SP_18, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_14 + 110, finish, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_14 + 110, finish, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, finish, 0 );
setEffRotateKey( spep_14 + 110, finish, 0 );
setEffAlphaKey( spep_14 + 0, finish, 255 );
setEffAlphaKey( spep_14 + 110, finish, 255 );

--SE
playSe( spep_14+24, 1106 );--頭にそっと手をのせる
setSeVolume( spep_14+24, 1106, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_14 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_14 + 10 );
endPhase( spep_14 + 100 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pulsion = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pulsion, 0, 0, 0 );
setEffMoveKey( spep_0 + 70, pulsion, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pulsion, -1.0, 1.0 );
setEffScaleKey( spep_0 + 70, pulsion, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pulsion, 0 );
setEffRotateKey( spep_0 + 70, pulsion, 0 );
setEffAlphaKey( spep_0 + 0, pulsion, 255 );
setEffAlphaKey( spep_0 + 70, pulsion, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 28,  906, 40 +3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 28, shuchusen1, 40+3, 20 );

setEffMoveKey( spep_0 -3 + 28, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 68, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 28, shuchusen1, 1.35, 1.96 );
setEffScaleKey( spep_0  + 68, shuchusen1, 1.35, 1.96 );

setEffRotateKey( spep_0 -3 + 28, shuchusen1, 180 );
setEffRotateKey( spep_0  + 68, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 68, shuchusen1, 255 );

--SE
playSe( spep_0 + 6, 9 );--向かってくる
setSeVolume( spep_0 + 6, 9, 56 );
playSe( spep_0 + 6, 44 );--向かってくる
setSeVolume( spep_0 + 6, 44, 89 );
playSe( spep_0 + 16, 1260 );--マシン足音
playSe( spep_0 + 36, 1260 );--マシン足音
setSeVolume( spep_0 + 36, 1260, 112 );
playSe( spep_0 + 60, 1260 );--マシン足音
setSeVolume( spep_0 + 60, 1260, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 62, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 70;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 94, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 急ブレーキ
------------------------------------------------------
-- ** エフェクト等 ** --
brake_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, brake_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, brake_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, brake_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, brake_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, brake_f, 0 );
setEffRotateKey( spep_2 + 130, brake_f, 0 );
setEffAlphaKey( spep_2 + 0, brake_f, 255 );
setEffAlphaKey( spep_2 + 130, brake_f, 255 );

-- ** エフェクト等 ** --
brake_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, brake_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, brake_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, brake_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, brake_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, brake_b, 0 );
setEffRotateKey( spep_2 + 130, brake_b, 0 );
setEffAlphaKey( spep_2 + 0, brake_b, 255 );
setEffAlphaKey( spep_2 + 130, brake_b, 255 );



--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 130, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2+17 + 98, 1, 100 );

setMoveKey( spep_2+3 + 0, 1, 807.8, 119.1 , 0 );
setMoveKey( spep_2+3 + 2, 1, 738.2, 107.5 , 0 );
setMoveKey( spep_2+3 + 4, 1, 683, 103.9 , 0 );
setMoveKey( spep_2+3 + 6, 1, 609.9, 108.2 , 0 );
setMoveKey( spep_2+3 + 8, 1, 551.1, 104.5 , 0 );
setMoveKey( spep_2+3 + 10, 1, 474.6, 92.9 , 0 );
setMoveKey( spep_2+3 + 12, 1, 412.3, 89.2 , 0 );
setMoveKey( spep_2+3 + 14, 1, 332.2, 93.6 , 0 );
setMoveKey( spep_2+3 + 16, 1, 266.4, 89.9 , 0 );
setMoveKey( spep_2+3 + 18, 1, 182.8, 78.3 , 0 );
setMoveKey( spep_2+3 + 20, 1, 200, 74.6 , 0 );
setMoveKey( spep_2+3 + 22, 1, 190.5, 82.6 , 0 );
setMoveKey( spep_2+3 + 24, 1, 197, 82.6 , 0 );

setMoveKey( spep_2+14 + 26, 1, 187.5, 74.6 , 0 );
setMoveKey( spep_2+14 + 28, 1, 194, 74.6 , 0 );
setMoveKey( spep_2+14 + 30, 1, 184.5, 82.6 , 0 );
setMoveKey( spep_2+14 + 32, 1, 191, 82.6 , 0 );
setMoveKey( spep_2+14 + 34, 1, 181.5, 74.6 , 0 );
setMoveKey( spep_2+14 + 36, 1, 188, 74.6 , 0 );


setScaleKey( spep_2 +3 + 0, 1, 0.45, 0.45 );
setScaleKey( spep_2 +3 + 2, 1, 0.46, 0.46 );
setScaleKey( spep_2 +3 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_2 +3 + 6, 1, 0.47, 0.47 );
setScaleKey( spep_2 +3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_2 +3 + 10, 1, 0.48, 0.48 );
setScaleKey( spep_2 +3 + 12, 1, 0.48, 0.48 );
setScaleKey( spep_2 +3 + 14, 1, 0.49, 0.49 );
setScaleKey( spep_2 +3 + 16, 1, 0.49, 0.49 );
setScaleKey( spep_2 +3 + 18, 1, 0.5, 0.5 );
setScaleKey( spep_2  + 50, 1, 0.5, 0.5 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 50, 1, 0 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_2 + 0, 1260 );--マシン足音
se_1033 = playSe( spep_2 + 8, 1033 );--ズザザサー
setSeVolume( spep_2 + 8, 1033, 0 );
setSeVolume( spep_2 + 24, 1033, 0 );
setSeVolume( spep_2 + 25, 1033, 25 );
setSeVolume( spep_2 + 26, 1033, 50 );
setSeVolume( spep_2 + 27, 1033, 75 );
setSeVolume( spep_2 + 28, 1033, 100 );
se_1260 = playSe( spep_2 + 24, 1260 );--ズザザサー
playSe( spep_2 + 24, 1192 );--ズザザサー
setSeVolume( spep_2 + 24, 1192, 200 );
se_1260 = playSe( spep_2 + 30, 1260 );--ズザザサー
se_1044 = playSe( spep_2 + 30, 1044 );--ズザザサー
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1033, 0 );
    stopSe( SP_dodge - 12, se_1260, 0 );
    stopSe( SP_dodge - 12, se_1260, 0 );
    stopSe( SP_dodge - 12, se_1044, 0 );
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の座標固定
    setMoveKey( SP_dodge+9, 1, 188, 74.6 , 0 );
    setScaleKey( SP_dodge+9, 1, 0.5, 0.5 );
    setRotateKey( SP_dodge+9, 1, 0 );

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setMoveKey( spep_2+14 + 38, 1, 178.5, 82.6 , 0 );
setMoveKey( spep_2+14 + 40, 1, 185, 82.6 , 0 );
setMoveKey( spep_2+14 + 42, 1, 175.5, 74.6 , 0 );
setMoveKey( spep_2+14 + 44, 1, 182, 74.6 , 0 );
setMoveKey( spep_2+14 + 46, 1, 172.5, 82.6 , 0 );
setMoveKey( spep_2+14 + 48, 1, 175, 78.6 , 0 );
setMoveKey( spep_2+14 + 78, 1, 175, 78.6 , 0 );
setMoveKey( spep_2+14 + 80, 1, 159.5, 71.6 , 0 );
setMoveKey( spep_2+14 + 82, 1, 144, 64.6 , 0 );
setMoveKey( spep_2+14 + 84, 1, 128.6, 57.6 , 0 );
setMoveKey( spep_2+14 + 86, 1, 113.2, 50.7 , 0 );
setMoveKey( spep_2+14 + 88, 1, 97.7, 43.7 , 0 );
setMoveKey( spep_2+14 + 90, 1, 82.3, 36.7 , 0 );
setMoveKey( spep_2+17 + 97, 1, 82.3, 36.7 , 0 );
setMoveKey( spep_2+17 + 98, 1, 83.5, 46.5 , 0 );
setMoveKey( spep_2+130, 1, 83.5, 46.5 , 0 );

setScaleKey( spep_2+14 + 78, 1, 0.5, 0.5 );
setScaleKey( spep_2+14 + 80, 1, 0.58, 0.58 );
setScaleKey( spep_2+14 + 82, 1, 0.67, 0.67 );
setScaleKey( spep_2+14 + 84, 1, 0.75, 0.75 );
setScaleKey( spep_2+14 + 86, 1, 0.83, 0.83 );
setScaleKey( spep_2+14 + 88, 1, 0.92, 0.92 );
setScaleKey( spep_2+14 + 90, 1, 1, 1 );
setScaleKey( spep_2+130, 1, 1, 1 );

setRotateKey( spep_2 + 130, 1, 0 );

--集中線
shuchusenx = entryEffectLife( spep_2 + 60,  906, 18, 0x100, -1, 0, 148.3, 80.9 );
setEffShake( spep_2 + 60, shuchusenx, 18, 20 );
setEffMoveKey( spep_2 + 60, shuchusenx, 148.3, 80.9 , 0 );
setEffMoveKey( spep_2 + 78, shuchusenx, 148.3, 80.9 , 0 );

setEffScaleKey( spep_2 + 60, shuchusenx, 1.89, 1.72 );
setEffScaleKey( spep_2 + 78, shuchusenx, 1.89, 1.72 );

setEffRotateKey( spep_2 + 60, shuchusenx, 180 );
setEffRotateKey( spep_2 + 78, shuchusenx, 180 );

setEffAlphaKey( spep_2 + 60, shuchusenx, 255 );
setEffAlphaKey( spep_2 + 78, shuchusenx, 255 );

--SE
playSe( spep_2 + 50, 1192 );--ズザザサー
setSeVolume( spep_2 + 50, 1192, 178 );
playSe( spep_2 + 56, 1260 );--ズザザサー
setSeVolume( spep_2 + 56, 1260, 56 );
playSe( spep_2 + 64, 48 );--！？
playSe( spep_2 + 112, 1003 );--悟空ジャンプ

stopSe( spep_2 + 44, se_1033, 16 );
stopSe( spep_2 + 33, se_1260, 4 );
stopSe( spep_2 + 37, se_1260, 5 );
stopSe( spep_2 + 63, se_1044, 14 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 130;
------------------------------------------------------
-- 正面にらみ
------------------------------------------------------
-- ** エフェクト等 ** --
glare = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, glare, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, glare, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, glare, -1.0, 1.0 );
setEffScaleKey( spep_3 + 40, glare, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, glare, 0 );
setEffRotateKey( spep_3 + 40, glare, 0 );
setEffAlphaKey( spep_3 + 0, glare, 255 );
setEffAlphaKey( spep_3 + 40, glare, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 40;
------------------------------------------------------
-- 足滑り
------------------------------------------------------
-- ** エフェクト等 ** --
glide = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, glide, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, glide, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, glide, -1.0, 1.0 );
setEffScaleKey( spep_4 + 40, glide, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, glide, 0 );
setEffRotateKey( spep_4 + 40, glide, 0 );
setEffAlphaKey( spep_4 + 0, glide, 255 );
setEffAlphaKey( spep_4 + 38, glide, 255 );
setEffAlphaKey( spep_4 + 39, glide, 255 );
setEffAlphaKey( spep_4 + 40, glide, 0 );

--SE
playSe( spep_4 + 0, 1192 );--ズザー
setSeVolume( spep_4 + 0, 1192, 195 );
playSe( spep_4 + 0, 1108 );--ズザー
se_1111 = playSe( spep_4 + 0, 1111 );--ズザー
playSe( spep_4 + 0, 1007 );--ズザー

stopSe( spep_4 + 10, se_1111, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 40;
------------------------------------------------------
-- 連撃
------------------------------------------------------
-- ** エフェクト等 ** --
struggle_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, struggle_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, struggle_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, struggle_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, struggle_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, struggle_f, 0 );
setEffRotateKey( spep_5 + 70, struggle_f, 0 );
setEffAlphaKey( spep_5 + 0, struggle_f, 255 );
setEffAlphaKey( spep_5 + 70, struggle_f, 255 );

-- ** エフェクト等 ** --
struggle_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, struggle_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, struggle_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, struggle_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, struggle_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, struggle_b, 0 );
setEffRotateKey( spep_5 + 70, struggle_b, 0 );
setEffAlphaKey( spep_5 + 0, struggle_b, 255 );
setEffAlphaKey( spep_5 + 70, struggle_b, 255 );

--文字エントリー
ctga = entryEffectLife( spep_5 + 12,  10005, 10, 0x100, -1, 0, 28, 140.6 );
setEffShake( spep_5 + 12, ctga, 10, 10 );
setEffMoveKey( spep_5 + 12, ctga, 28, 140.6 , 0 );
setEffMoveKey( spep_5 + 14, ctga, -6.9, 215.3 , 0 );
setEffMoveKey( spep_5 + 16, ctga, -5.9, 211.3 , 0 );
setEffMoveKey( spep_5 + 18, ctga, -6.9, 215.3 , 0 );
setEffMoveKey( spep_5 + 20, ctga, -5.9, 211.3 , 0 );
setEffMoveKey( spep_5 + 22, ctga, -6.9, 215.3 , 0 );

setEffScaleKey( spep_5 + 12, ctga, 0.66, 0.66 );
setEffScaleKey( spep_5 + 14, ctga, 1.67, 1.67 );
setEffScaleKey( spep_5 + 22, ctga, 1.67, 1.67 );

setEffRotateKey( spep_5 + 12, ctga, -34.6 );
setEffRotateKey( spep_5 + 22, ctga, -34.6 );

setEffAlphaKey( spep_5 + 12, ctga, 255 );
setEffAlphaKey( spep_5 + 22, ctga, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_5+4 + 30,  10020, 10, 0x100, -1, 0, 117.5, 103.5 );
setEffShake( spep_5+4 + 30, ctbaki, 10, 10 );
setEffMoveKey( spep_5+4 + 30, ctbaki, 117.5, 103.5 , 0 );
setEffMoveKey( spep_5+4 + 32, ctbaki, 75.7, 187.9 , 0 );
setEffMoveKey( spep_5+4 + 34, ctbaki, 75.8, 185.1 , 0 );
setEffMoveKey( spep_5+4 + 36, ctbaki, 75.7, 187.9 , 0 );
setEffMoveKey( spep_5+4 + 38, ctbaki, 75.8, 185.1 , 0 );
setEffMoveKey( spep_5+4 + 40, ctbaki, 75.7, 187.9 , 0 );

setEffScaleKey( spep_5+4 + 30, ctbaki, 0.42, 0.42 );
setEffScaleKey( spep_5+4 + 32, ctbaki, 1.28, 1.28 );
setEffScaleKey( spep_5+4 + 40, ctbaki, 1.28, 1.28 );

setEffRotateKey( spep_5+4 + 30, ctbaki, 26.8 );
setEffRotateKey( spep_5+4 + 40, ctbaki, 26.8 );

setEffAlphaKey( spep_5+4 + 30, ctbaki, 255 );
setEffAlphaKey( spep_5+4 + 40, ctbaki, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_5 +8 + 54,  10005, 10, 0x100, -1, 0, 93.9, 178.4 );
setEffShake( spep_5 +8 + 54, ctga2, 10, 10 );
setEffMoveKey( spep_5 +8 + 54, ctga2, 93.9, 178.4 , 0 );
setEffMoveKey( spep_5 +8 + 56, ctga2, 33.2, 233.9 , 0 );
setEffMoveKey( spep_5 +8 + 58, ctga2, 35.6, 230.6 , 0 );
setEffMoveKey( spep_5 +8 + 60, ctga2, 33.2, 233.9 , 0 );
setEffMoveKey( spep_5 +8 + 62, ctga2, 35.6, 230.6 , 0 );
setEffMoveKey( spep_5 +8 + 64, ctga2, 33.2, 233.9 , 0 );

setEffScaleKey( spep_5 +8 + 54, ctga2, 0.66, 0.66 );
setEffScaleKey( spep_5 +8 + 56, ctga2, 1.67, 1.67 );
setEffScaleKey( spep_5 +8 + 64, ctga2, 1.67, 1.67 );

setEffRotateKey( spep_5 +8 + 54, ctga2, -56.9 );
setEffRotateKey( spep_5 +8 + 56, ctga2, -56.8 );
setEffRotateKey( spep_5 +8 + 64, ctga2, -56.8 );

setEffAlphaKey( spep_5 +8 + 54, ctga2, 255 );
setEffAlphaKey( spep_5 +8 + 64, ctga2, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 70, 1, 0 );

changeAnime( spep_5 + 0, 1, 101 );
changeAnime( spep_5 + 12, 1, 108 );
changeAnime( spep_5 + 36, 1, 106 );
changeAnime( spep_5 + 62, 1, 108 );

setMoveKey( spep_5 + 0, 1, 157, -53.8 , 0 );
setMoveKey( spep_5 + 8, 1, 157, -53.8 , 0 );
setMoveKey( spep_5 + 11, 1, 161, -49.8 , 0 );
setMoveKey( spep_5 + 12, 1, 149.1, -0.9 , 0 );
setMoveKey( spep_5 + 14, 1, 164.2, 2.3 , 0 );
setMoveKey( spep_5 + 16, 1, 150.5, 7.9 , 0 );
setMoveKey( spep_5 + 18, 1, 156.8, -2.5 , 0 );
setMoveKey( spep_5 + 20, 1, 161.1, 5.1 , 0 );
setMoveKey( spep_5 + 22, 1, 164.2, 8.3 , 0 );
setMoveKey( spep_5 + 24, 1, 162.5, 1.9 , 0 );
setMoveKey( spep_5 + 26, 1, 168.8, 3.5 , 0 );
setMoveKey( spep_5 + 28, 1, 167.1, 5.1 , 0 );
setMoveKey( spep_5 + 31, 1, 180.3, 16.6 , 0 );
setMoveKey( spep_5 + 32, 1, 154.6, 39.3 , 0 );
setMoveKey( spep_5 + 34, 1, 162.4, 58 , 0 );
setMoveKey( spep_5 + 36, 1, 152.9, 49.9 , 0 );
setMoveKey( spep_5 + 38, 1, 174.3, 60.6 , 0 );
setMoveKey( spep_5 + 40, 1, 163.6, 84.9 , 0 );
setMoveKey( spep_5 + 42, 1, 167.4, 87.6 , 0 );
setMoveKey( spep_5 + 44, 1, 171.3, 87.9 , 0 );
setMoveKey( spep_5 + 46, 1, 178, 90.9 , 0 );
setMoveKey( spep_5 + 48, 1, 176.7, 95.6 , 0 );
setMoveKey( spep_5 + 50, 1, 177.9, 102.6 , 0 );
setMoveKey( spep_5 + 61, 1, 182.9, 108.9 , 0 );
setMoveKey( spep_5 + 62, 1, 230.1, 108.6 , 0 );
--setMoveKey( spep_5 + 56, 1, 241.4, 123.5 , 0 );
--setMoveKey( spep_5 + 58, 1, 236.7, 113.9 , 0 );
--setMoveKey( spep_5 + 60, 1, 259.6, 124.1 , 0 );
--setMoveKey( spep_5 + 62, 1, 245.6, 139 , 0 );
setMoveKey( spep_5 + 64, 1, 247.8, 132.8 , 0 );
setMoveKey( spep_5 + 66, 1, 253.9, 134 , 0 );
setMoveKey( spep_5 + 70, 1, 259.6, 139.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 11, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 70, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 11, 1, 0 );
setRotateKey( spep_5 + 12, 1, -15.2 );
setRotateKey( spep_5 + 35, 1, -15.2 );
setRotateKey( spep_5 + 36, 1, -47.9 );
setRotateKey( spep_5 + 61, 1, -47.9 );
setRotateKey( spep_5 + 62, 1, -30.3 );
setRotateKey( spep_5 + 70, 1, -30.3 );

--SE
playSe( spep_5 + 14, 1189 );--パンチ
playSe( spep_5 + 18, 1000 );--パンチ
playSe( spep_5 + 20, 1110 );--パンチ
playSe( spep_5 + 38, 1009 );--下段蹴り
setSeVolume( spep_5 + 38, 1009, 83 );
playSe( spep_5 + 40, 1000 );--下段蹴り
playSe( spep_5 + 66, 1010 );--上段蹴り
playSe( spep_5 + 66, 1001 );--上段蹴り
setSeVolume( spep_5 + 66, 1001, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 70;
------------------------------------------------------
-- スーパーパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, punch_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 40, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, punch_f, 0 );
setEffRotateKey( spep_6 + 40, punch_f, 0 );
setEffAlphaKey( spep_6 + 0, punch_f, 255 );
setEffAlphaKey( spep_6 + 40, punch_f, 255 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, punch_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, punch_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 40, punch_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, punch_b, 0 );
setEffRotateKey( spep_6 + 40, punch_b, 0 );
setEffAlphaKey( spep_6 + 0, punch_b, 255 );
setEffAlphaKey( spep_6 + 40, punch_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_6 + 33,  906, 7, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 33, shuchusen2, 7, 20 );
setEffMoveKey( spep_6 + 33, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 40, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 33, shuchusen2, 1.18, 1.92 );
setEffScaleKey( spep_6 + 40, shuchusen2, 1.18, 1.92 );

setEffRotateKey( spep_6 + 33, shuchusen2, 180 );
setEffRotateKey( spep_6 + 40, shuchusen2, 180 );

setEffAlphaKey( spep_6 + 33, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 40, shuchusen2, 255 );

--敵の動き
setDisp( spep_6 + 17, 1, 1 );
setDisp( spep_6 + 40, 1, 0 );

changeAnime( spep_6 + 17, 1, 108 );

setMoveKey( spep_6 + 17, 1, 101.2, 226.9 , 0 );
setMoveKey( spep_6 + 40, 1, 101.2, 226.9 , 0 );

setScaleKey( spep_6 + 17, 1, 2.93, 2.93 );
setScaleKey( spep_6 + 18, 1, 2.86, 2.86 );
setScaleKey( spep_6 + 20, 1, 2.79, 2.79 );
setScaleKey( spep_6 + 22, 1, 2.71, 2.71 );
setScaleKey( spep_6 + 24, 1, 2.64, 2.64 );
setScaleKey( spep_6 + 26, 1, 2.57, 2.57 );
setScaleKey( spep_6 + 28, 1, 2.5, 2.5 );
setScaleKey( spep_6 + 30, 1, 2.47, 2.47 );
setScaleKey( spep_6 + 32, 1, 2.43, 2.43 );
setScaleKey( spep_6 + 34, 1, 2.4, 2.4 );
setScaleKey( spep_6 + 36, 1, 2.37, 2.37 );
setScaleKey( spep_6 + 40, 1, 2.33, 2.33 );

setRotateKey( spep_6 + 17, 1, -19 );
setRotateKey( spep_6 + 40, 1, -19 );

--SE
se_1116 = playSe( spep_6 + 0, 1116 );--振りかぶって
playSe( spep_6 + 2, 1004 );--振りかぶって
se_1117 = playSe( spep_6 + 4, 1117 );--振りかぶって

stopSe( spep_6 + 23, se_1116, 20 );
stopSe( spep_6 + 33, se_1117, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 40;
------------------------------------------------------
-- ヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_7 + 20, hit, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_7 + 20, hit, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit, 0 );
setEffRotateKey( spep_7 + 20, hit, 0 );
setEffAlphaKey( spep_7 + 0, hit, 255 );
setEffAlphaKey( spep_7 + 18, hit, 255 );
setEffAlphaKey( spep_7 + 19, hit, 255 );
setEffAlphaKey( spep_7 + 20, hit, 0 );

--SE
playSe( spep_7, 1120 );--強パンチ

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 20, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 20;
------------------------------------------------------
-- 殴り吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
vanish_f = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, vanish_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 30, vanish_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, vanish_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 30, vanish_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, vanish_f, 0 );
setEffRotateKey( spep_8 + 30, vanish_f, 0 );
setEffAlphaKey( spep_8 + 0, vanish_f, 255 );
setEffAlphaKey( spep_8 + 30, vanish_f, 255 );

-- ** エフェクト等 ** --
vanish_b = entryEffect( spep_8 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, vanish_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 30, vanish_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, vanish_b, -1.0, 1.0 );
setEffScaleKey( spep_8 + 30, vanish_b, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, vanish_b, 0 );
setEffRotateKey( spep_8 + 30, vanish_b, 0 );
setEffAlphaKey( spep_8 + 0, vanish_b, 255 );
setEffAlphaKey( spep_8 + 30, vanish_b, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_8 + 0,  10021, 28, 0x100, -1, 0, 46.7, 342.3 );
setEffShake( spep_8 + 0, ctbago, 28, 10 );
setEffMoveKey( spep_8 + 0, ctbago, 46.7, 342.3 , 0 );
setEffMoveKey( spep_8 + 2, ctbago, 44.7, 340.4 , 0 );
setEffMoveKey( spep_8 + 4, ctbago, 46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 6, ctbago, 43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 8, ctbago, 46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 10, ctbago, 43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 12, ctbago, 46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 14, ctbago, 43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 16, ctbago, 46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 18, ctbago, 43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 20, ctbago, 46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 22, ctbago, 43.9, 339.5 , 0 );
setEffMoveKey( spep_8 + 24, ctbago, 46.7, 342.5 , 0 );
setEffMoveKey( spep_8 + 26, ctbago, 43.9, 339.5 , 0 );
--setEffMoveKey( spep_8 + 30, ctbago, -46.7, 342.5 , 0 );

setEffScaleKey( spep_8 + 0, ctbago, 1.13, 1.13 );
setEffScaleKey( spep_8 + 2, ctbago, 2, 2 );
setEffScaleKey( spep_8 + 4, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 6, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 8, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 10, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 12, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 14, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 16, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 18, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 20, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 22, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 24, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_8 + 26, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_8 + 28, ctbago, 2.77, 2.77 );

setEffRotateKey( spep_8 + 0, ctbago, 36.1 );
setEffRotateKey( spep_8 + 2, ctbago, 36 );
setEffRotateKey( spep_8 + 28, ctbago, 36 );

setEffAlphaKey( spep_8 + 0, ctbago, 255 );
setEffAlphaKey( spep_8 + 28, ctbago, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 30, 1, 0 );

changeAnime( spep_8 + 0, 1, 5 );

setMoveKey( spep_8 + 0, 1, -103.4, 21.3 , 0 );
setMoveKey( spep_8 + 2, 1, -88.7, 36.4 , 0 );
setMoveKey( spep_8 + 4, 1, -106.1, 67.5 , 0 );
setMoveKey( spep_8 + 6, 1, -91.4, 114.6 , 0 );
setMoveKey( spep_8 + 8, 1, -108.8, 145.7 , 0 );
setMoveKey( spep_8 + 10, 1, -94.1, 160.8 , 0 );
setMoveKey( spep_8 + 12, 1, -111.5, 191.9 , 0 );
setMoveKey( spep_8 + 14, 1, -95.6, 208.1 , 0 );
setMoveKey( spep_8 + 16, 1, -109.8, 206.2 , 0 );
setMoveKey( spep_8 + 18, 1, -97.9, 194.4 , 0 );
setMoveKey( spep_8 + 20, 1, -110.1, 194.5 , 0 );
setMoveKey( spep_8 + 22, 1, -98.2, 206.7 , 0 );
setMoveKey( spep_8 + 24, 1, -98.3, 206.8 , 0 );
setMoveKey( spep_8 + 26, 1, -98.5, 206.9 , 0 );
setMoveKey( spep_8 + 30, 1, -98.6, 207.1 , 0 );

setScaleKey( spep_8 + 0, 1, 3, 3 );
setScaleKey( spep_8 + 2, 1, 2.63, 2.63 );
setScaleKey( spep_8 + 4, 1, 2.27, 2.27 );
setScaleKey( spep_8 + 6, 1, 1.9, 1.9 );
setScaleKey( spep_8 + 8, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 10, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 12, 1, 0.8, 0.8 );
setScaleKey( spep_8 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 16, 1, 0.72, 0.72 );
setScaleKey( spep_8 + 18, 1, 0.68, 0.68 );
setScaleKey( spep_8 + 20, 1, 0.65, 0.65 );
setScaleKey( spep_8 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_8 + 24, 1, 0.57, 0.57 );
setScaleKey( spep_8 + 26, 1, 0.53, 0.53 );
setScaleKey( spep_8 + 30, 1, 0.49, 0.49 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 30, 1, 0 );

--白フェード
entryFade( spep_8 + 22, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 30, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 30;
------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_9 + 140, tame, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_9 + 140, tame, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame, 0 );
setEffRotateKey( spep_9 + 140, tame, 0 );
setEffAlphaKey( spep_9 + 0, tame, 255 );
setEffAlphaKey( spep_9 + 140, tame, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_9 + 0,  906, 140, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9 + 0, shuchusen3, 140, 20 );
setEffMoveKey( spep_9 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_9 + 140, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_9 + 0, shuchusen3, 1.61, 1.61 );
setEffScaleKey( spep_9 + 140, shuchusen3, 1.61, 1.61 );

setEffRotateKey( spep_9 + 0, shuchusen3, 180 );
setEffRotateKey( spep_9 + 140, shuchusen3, 180 );

setEffAlphaKey( spep_9 + 0, shuchusen3, 0 );
setEffAlphaKey( spep_9 + 60, shuchusen3, 0 );
setEffAlphaKey( spep_9 + 61, shuchusen3, 0 );
setEffAlphaKey( spep_9 + 62, shuchusen3, 255 );
setEffAlphaKey( spep_9 + 140, shuchusen3, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_9+34  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_9+34  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_9 +46, 190006, 72, 0x100, -1, 0, 134, 512);-- ゴゴゴゴ

setEffMoveKey(  spep_9 +46,  ctgogo,  134,  512);
setEffMoveKey(  spep_9 +118,  ctgogo,  134,  512);

setEffAlphaKey( spep_9 +46, ctgogo, 0 );
setEffAlphaKey( spep_9 + 47, ctgogo, 255 );
setEffAlphaKey( spep_9 + 48, ctgogo, 255 );
setEffAlphaKey( spep_9 + 112, ctgogo, 255 );
setEffAlphaKey( spep_9 + 114, ctgogo, 191 );
setEffAlphaKey( spep_9 + 116, ctgogo, 112 );
setEffAlphaKey( spep_9 + 118, ctgogo, 64 );

setEffRotateKey(  spep_9 +46,  ctgogo,  0);
setEffRotateKey(  spep_9 +118,  ctgogo,  0);

setEffScaleKey(  spep_9 +46,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_9 +108,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_9 +118,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_9 + 26, 4 );--うなずく
playSe( spep_9 + 46, 1018 );--顔カットイン
SE1=playSe( spep_9 + 64, 1131 );--気弾溜め
SE2=playSe( spep_9 + 64, 1132 );--気弾溜め
SE3=playSe( spep_9 + 64, 1037 );--気弾溜め
setSeVolume( spep_9 + 64, 1037, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_9 + 132, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 140;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_10 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_10 + 60, beam, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_10 + 60, beam, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, beam, 0 );
setEffRotateKey( spep_10 + 60, beam, 0 );
setEffAlphaKey( spep_10 + 0, beam, 255 );
setEffAlphaKey( spep_10 + 58, beam, 255 );
setEffAlphaKey( spep_10 + 59, beam, 255 );
setEffAlphaKey( spep_10 + 60, beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_10 + 4,  10012, 34, 0x100, -1, 0, -27.4, 137.8 );
setEffShake( spep_10 + 4, ctzuo, 34, 10 );
setEffMoveKey( spep_10 + 4, ctzuo, -27.4, 137.8 , 0 );
setEffMoveKey( spep_10 + 6, ctzuo, -62.8, 185.2 , 0 );
setEffMoveKey( spep_10 + 8, ctzuo, -97.4, 221.1 , 0 );
setEffMoveKey( spep_10 + 10, ctzuo, -100.6, 235.4 , 0 );
setEffMoveKey( spep_10 + 12, ctzuo, -102.2, 226.7 , 0 );
setEffMoveKey( spep_10 + 14, ctzuo, -105.5, 241.8 , 0 );
setEffMoveKey( spep_10 + 16, ctzuo, -107.2, 232.4 , 0 );
setEffMoveKey( spep_10 + 18, ctzuo, -110.4, 248.2 , 0 );
setEffMoveKey( spep_10 + 20, ctzuo, -112, 238.1 , 0 );
setEffMoveKey( spep_10 + 22, ctzuo, -115.3, 254.6 , 0 );
setEffMoveKey( spep_10 + 24, ctzuo, -116.8, 243.7 , 0 );
setEffMoveKey( spep_10 + 26, ctzuo, -120.2, 261 , 0 );
setEffMoveKey( spep_10 + 28, ctzuo, -121.6, 249.4 , 0 );
setEffMoveKey( spep_10 + 30, ctzuo, -136.6, 282.4 , 0 );
setEffMoveKey( spep_10 + 32, ctzuo, -149.1, 281.4 , 0 );
setEffMoveKey( spep_10 + 34, ctzuo, -164.3, 318.7 , 0 );
setEffMoveKey( spep_10 + 36, ctzuo, -176.6, 313.5 , 0 );
setEffMoveKey( spep_10 + 38, ctzuo, -190.3, 329.5 , 0 );

setEffScaleKey( spep_10 + 4, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_10 + 6, ctzuo, 1.08, 1.08 );
setEffScaleKey( spep_10 + 8, ctzuo, 2.05, 2.05 );
setEffScaleKey( spep_10 + 10, ctzuo, 2.12, 2.12 );
setEffScaleKey( spep_10 + 12, ctzuo, 2.19, 2.19 );
setEffScaleKey( spep_10 + 14, ctzuo, 2.26, 2.26 );
setEffScaleKey( spep_10 + 16, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_10 + 18, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_10 + 20, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_10 + 22, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_10 + 24, ctzuo, 2.61, 2.61 );
setEffScaleKey( spep_10 + 26, ctzuo, 2.68, 2.68 );
setEffScaleKey( spep_10 + 28, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_10 + 30, ctzuo, 3.15, 3.15 );
setEffScaleKey( spep_10 + 32, ctzuo, 3.54, 3.54 );
setEffScaleKey( spep_10 + 34, ctzuo, 3.94, 3.94 );
setEffScaleKey( spep_10 + 36, ctzuo, 4.33, 4.33 );
setEffScaleKey( spep_10 + 38, ctzuo, 4.72, 4.72 );

setEffRotateKey( spep_10 + 4, ctzuo, -37.4 );
setEffRotateKey( spep_10 + 6, ctzuo, -37.5 );
setEffRotateKey( spep_10 + 38, ctzuo, -37.5 );

setEffAlphaKey( spep_10 + 4, ctzuo, 255 );
setEffAlphaKey( spep_10 + 28, ctzuo, 255 );
setEffAlphaKey( spep_10 + 30, ctzuo, 204 );
setEffAlphaKey( spep_10 + 32, ctzuo, 153 );
setEffAlphaKey( spep_10 + 34, ctzuo, 102 );
setEffAlphaKey( spep_10 + 36, ctzuo, 51 );
setEffAlphaKey( spep_10 + 38, ctzuo, 0 );

--文字エントリー
shuchusen4 = entryEffectLife( spep_10 + 28,  906, 32, 0x100, -1, 0, -100, 81.5 );
setEffShake( spep_10 + 28, shuchusen4, 32, 20 );
setEffMoveKey( spep_10 + 28, shuchusen4, -100, 81.5 , 0 );
setEffMoveKey( spep_10 + 60, shuchusen4, -100, 81.5 , 0 );

setEffScaleKey( spep_10 + 28, shuchusen4, 2.02, 1.89 );
setEffScaleKey( spep_10 + 60, shuchusen4, 2.02, 1.89 );

setEffRotateKey( spep_10 + 28, shuchusen4, 180 );
setEffRotateKey( spep_10 + 60, shuchusen4, 180 );

setEffAlphaKey( spep_10 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_10 + 58, shuchusen4, 255 );
setEffAlphaKey( spep_10 + 59, shuchusen4, 255 );
setEffAlphaKey( spep_10 + 60, shuchusen4, 0 );

--SE
playSe( spep_10 + 0, 1146 );--発射
setSeVolume( spep_10 + 0, 1146, 89 );
playSe( spep_10 + 0, 1027 );--発射
setSeVolume( spep_10 + 0, 1027, 82 );
playSe( spep_10 + 4, 1022 );--発射

stopSe( spep_10 +4 , SE1, 10 );
stopSe( spep_10 +4, SE2, 10 );
stopSe( spep_10 +4, SE3, 10 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 60;
------------------------------------------------------
-- 迫る気弾
------------------------------------------------------
-- ** エフェクト等 ** --
demand_f = entryEffect( spep_11 + 0, SP_15x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, demand_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 40, demand_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, demand_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 40, demand_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, demand_f, 0 );
setEffRotateKey( spep_11 + 40, demand_f, 0 );
setEffAlphaKey( spep_11 + 0, demand_f, 255 );
setEffAlphaKey( spep_11 + 40, demand_f, 255 );

-- ** エフェクト等 ** --
demand_b = entryEffect( spep_11 + 0, SP_16x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, demand_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 40, demand_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, demand_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 40, demand_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, demand_b, 0 );
setEffRotateKey( spep_11 + 40, demand_b, 0 );
setEffAlphaKey( spep_11 + 0, demand_b, 255 );
setEffAlphaKey( spep_11 + 40, demand_b, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_11 + 0,  10014, 38, 0x100, -1, 0, -119.5, 359.5 );
setEffShake( spep_11 + 0, ctzudodo, 38, 20 );
setEffMoveKey( spep_11 + 0, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 2, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 4, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 6, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 8, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 10, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 12, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 14, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 16, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 18, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 20, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 22, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 24, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 26, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 28, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 30, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 32, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 34, ctzudodo, -108.2, 342.6 , 0 );
setEffMoveKey( spep_11 + 36, ctzudodo, -119.5, 359.5 , 0 );
setEffMoveKey( spep_11 + 38, ctzudodo, -108.2, 342.6 , 0 );

setEffScaleKey( spep_11 + 0, ctzudodo, 2.34, 2.39 );
setEffScaleKey( spep_11 + 38, ctzudodo, 2.34, 2.39 );

setEffRotateKey( spep_11 + 0, ctzudodo, -80.1 );
setEffRotateKey( spep_11 + 38, ctzudodo, -80.1 );

setEffAlphaKey( spep_11 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_11 + 38, ctzudodo, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 38, 1, 0 );

changeAnime( spep_11 + 0, 1, 105 );

setMoveKey( spep_11 + 0, 1, 113.8, 226.3 , 0 );
setMoveKey( spep_11 + 2, 1, 101.8, 214.4 , 0 );
setMoveKey( spep_11 + 4, 1, 101.9, 226.4 , 0 );
setMoveKey( spep_11 + 6, 1, 113.9, 214.5 , 0 );
setMoveKey( spep_11 + 8, 1, 114, 226.5 , 0 );
setMoveKey( spep_11 + 10, 1, 102, 214.6 , 0 );
setMoveKey( spep_11 + 12, 1, 102.1, 226.6 , 0 );
setMoveKey( spep_11 + 14, 1, 114.1, 214.7 , 0 );
setMoveKey( spep_11 + 16, 1, 114.2, 226.7 , 0 );
setMoveKey( spep_11 + 18, 1, 102.2, 214.8 , 0 );
setMoveKey( spep_11 + 20, 1, 102.3, 226.8 , 0 );
setMoveKey( spep_11 + 22, 1, 114.3, 214.9 , 0 );
setMoveKey( spep_11 + 24, 1, 114.4, 226.9 , 0 );
setMoveKey( spep_11 + 26, 1, 102.4, 215 , 0 );
setMoveKey( spep_11 + 28, 1, 102.5, 227 , 0 );
setMoveKey( spep_11 + 30, 1, 114.5, 215 , 0 );
setMoveKey( spep_11 + 32, 1, 114.5, 227.1 , 0 );
setMoveKey( spep_11 + 34, 1, 102.6, 215.1 , 0 );
setMoveKey( spep_11 + 36, 1, 102.6, 227.2 , 0 );
setMoveKey( spep_11 + 38, 1, 114.7, 215.2 , 0 );

setScaleKey( spep_11 + 0, 1, 1, 1 );
setScaleKey( spep_11 + 2, 1, 0.98, 0.98 );
setScaleKey( spep_11 + 4, 1, 0.97, 0.97 );
setScaleKey( spep_11 + 6, 1, 0.95, 0.95 );
setScaleKey( spep_11 + 8, 1, 0.94, 0.94 );
setScaleKey( spep_11 + 10, 1, 0.92, 0.92 );
setScaleKey( spep_11 + 12, 1, 0.91, 0.91 );
setScaleKey( spep_11 + 14, 1, 0.89, 0.89 );
setScaleKey( spep_11 + 16, 1, 0.87, 0.87 );
setScaleKey( spep_11 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_11 + 20, 1, 0.84, 0.84 );
setScaleKey( spep_11 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_11 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_11 + 26, 1, 0.79, 0.79 );
setScaleKey( spep_11 + 28, 1, 0.78, 0.78 );
setScaleKey( spep_11 + 30, 1, 0.76, 0.76 );
setScaleKey( spep_11 + 32, 1, 0.75, 0.75 );
setScaleKey( spep_11 + 34, 1, 0.73, 0.73 );
setScaleKey( spep_11 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_11 + 38, 1, 0.7, 0.7 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 38, 1, 0 );

--SE
playSe( spep_11 , 1021 );--追いはめ波

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_11 + 32, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_12 = spep_11 + 40;
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_12 + 0, 190014, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_12 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_12 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, gyan, 0 );
setEffRotateKey( spep_12 + 60, gyan, 0 );
setEffAlphaKey( spep_12 + 0, gyan, 255 );
setEffAlphaKey( spep_12 + 60, gyan, 255 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_12 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_12 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_12 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_12 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_12 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_12 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_12 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_12 + 6, ctgyan, 3.5, 3.5 );
--[[setEffScaleKey( spep_12 + 8, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_12 -3 + 10, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_12 -3 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_12 -3 + 14, ctgyan, 2.42, 2.42 );
setEffScaleKey( spep_12 -3 + 16, ctgyan, 2.43, 2.43 );
setEffScaleKey( spep_12 -3 + 18, ctgyan, 2.44, 2.44 );
setEffScaleKey( spep_12 -3 + 20, ctgyan, 2.45, 2.45 );
setEffScaleKey( spep_12 -3 + 22, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_12 -3 + 24, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_12 -3 + 26, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_12 -3 + 28, ctgyan, 2.48, 2.48 );
setEffScaleKey( spep_12 -3 + 30, ctgyan, 2.49, 2.49 );
setEffScaleKey( spep_12 -3 + 32, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_12 -3 + 34, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_12 -3 + 36, ctgyan, 2.51, 2.51 );
setEffScaleKey( spep_12 -3 + 38, ctgyan, 2.52, 2.52 );
setEffScaleKey( spep_12 -3 + 40, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_12 -3 + 42, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_12 -3 + 44, ctgyan, 2.54, 2.54 );
setEffScaleKey( spep_12 -3 + 46, ctgyan, 2.55, 2.55 );
setEffScaleKey( spep_12 -3 + 48, ctgyan, 2.56, 2.56 );
setEffScaleKey( spep_12 -3 + 50, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_12 -3 + 52, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_12 -3 + 54, ctgyan, 2.58, 2.58 );
setEffScaleKey( spep_12 -3 + 56, ctgyan, 2.59, 2.59 );
setEffScaleKey( spep_12 -3 + 58, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_12 + 57, ctgyan, 3.8, 3.8 );]]
setEffScaleKey( spep_12 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_12 + 0, ctgyan, 0 );
setEffRotateKey( spep_12 + 58, ctgyan, 0 );

setEffAlphaKey( spep_12 + 0, ctgyan, 255 );
setEffAlphaKey( spep_12 + 58, ctgyan, 255 );

--SE
playSe( spep_12 + 2, 1023 );--ギャン
setSeVolume( spep_12 + 2, 1023, 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_12+52 , 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_13 = spep_12 + 60;
------------------------------------------------------
-- 大爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_13 + 0, SP_17x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_13 + 92, explosion, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_13 + 92, explosion, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, explosion, 0 );
setEffRotateKey( spep_13 + 92, explosion, 0 );
setEffAlphaKey( spep_13 + 0, explosion, 255 );
setEffAlphaKey( spep_13 + 92, explosion, 255 );
setEffAlphaKey( spep_13 + 93, explosion, 0 );
setEffAlphaKey( spep_13 + 94, explosion, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_13 + 0,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_13 + 0, shuchusen5, 78, 20 );
setEffMoveKey( spep_13 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_13 + 78, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_13 + 0, shuchusen5, 1.2, 1.56 );
setEffScaleKey( spep_13 + 78, shuchusen5, 1.2, 1.56 );

setEffRotateKey( spep_13 + 0, shuchusen5, 180 );
setEffRotateKey( spep_13 + 78, shuchusen5, 180 );

setEffAlphaKey( spep_13 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_13 + 78, shuchusen5, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_13 + 0, 1159 );--爆発

--白フェード
entryFade( spep_13 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_14 = spep_13 + 92;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_14 + 0, SP_18x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_14 + 110, finish, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_14 + 110, finish, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, finish, 0 );
setEffRotateKey( spep_14 + 110, finish, 0 );
setEffAlphaKey( spep_14 + 0, finish, 255 );
setEffAlphaKey( spep_14 + 110, finish, 255 );

--SE
playSe( spep_14+24, 1106 );--頭にそっと手をのせる
setSeVolume( spep_14+24, 1106, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_14 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_14 + 10 );
endPhase( spep_14 + 100 );
end
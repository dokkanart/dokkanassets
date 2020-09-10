--1017180:孫悟空_特大元気玉
--sp_effect_a2_00113

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
SP_01=	153546	;--	悟空オ－ラ気だめ　下から上
SP_02=	153547	;--	悟空オ－ラ気だめ　ひきカット
SP_03=	153549	;--	悟空　発射
SP_04=	153550	;--	元気玉ナメック星落下
SP_05=	153551	;--	グゴゴゴ　描き文字
SP_06=	153553	;--	元気玉敵接近拡大
SP_07=	153554	;--	ナメック星爆発
SP_08=	153555	;--	宇宙背景

--てき
SP_01x=	153546	;--	悟空オ－ラ気だめ　下から上	
SP_02x=	153548	;--	悟空オ－ラ気だめ　ひきカット	(敵)
SP_03x=	153549	;--	悟空　発射	
SP_04x=	153550	;--	元気玉ナメック星落下	
SP_05x=	153552	;--	グゴゴゴ　描き文字	(敵)
SP_06x=	153553	;--	元気玉敵接近拡大	
SP_07x=	153554	;--	ナメック星爆発	
SP_08x=	153555	;--	宇宙背景	

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
--ため
------------------------------------------------------
--はじめの準備
spep_0=0;

--エフェクト
tame= entryEffectLife( spep_0, SP_01, 114, 0x100,   -1, 0,  0,  0);
setEffMoveKey(  spep_0, tame,  0,  0);
setEffMoveKey(  spep_0+114, tame,  0,  0);
setEffScaleKey(  spep_0, tame,  1.0,  1.0);
setEffScaleKey(  spep_0+114, tame,  1.0,  1.0);
setEffRotateKey(  spep_0, tame,  0);
setEffRotateKey(  spep_0+114, tame,  0);
setEffAlphaKey(  spep_0, tame,  255);
setEffAlphaKey(  spep_0+114, tame,  255);


--SE
SE1=playSe(spep_0,55);
setSeVolume(spep_0,55,50);

--黒
entryFadeBg( spep_0,  0,  144,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_1=spep_0+114;

------------------------------------------------------
--ため2
------------------------------------------------------
--エフェクト
tame2= entryEffectLife( spep_1, SP_02,242, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1, tame2,  0,  0);
setEffMoveKey(  spep_1+242, tame2,  0,  0);
setEffScaleKey(  spep_1, tame2,  1.0,  1.0);
setEffScaleKey(  spep_1+242, tame2,  1.0,  1.0);
setEffRotateKey(  spep_1, tame2,  0);
setEffRotateKey(  spep_1+242, tame2,  0);
setEffAlphaKey(  spep_1, tame2,  255);
setEffAlphaKey(  spep_1+242, tame2,  255);


--集中線
shuchusen1 = entryEffectLife( spep_1 + 154,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 154, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 242, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 154, shuchusen1, 1, 1 );
setEffScaleKey( spep_1 + 242, shuchusen1, 1, 1 );

setEffRotateKey( spep_1 + 154, shuchusen1, 180 );
setEffRotateKey( spep_1 + 242, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 154, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 166, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 167, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 168, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 242, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 +156, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 +156, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1  + 168,  190006, 72, 0x100, -1, 0, -140.9, 512.8 ); --ゴゴゴ
setEffShake( spep_1  + 168, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1  + 168, ctgogo, -140.9, 512.8 , 0 );
setEffMoveKey( spep_1  + 240, ctgogo, -140.9, 515.5 , 0 );

setEffScaleKey( spep_1  + 168, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1  + 232, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1  + 234, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_1  + 236, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_1  + 238, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_1  + 240, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_1  + 168, ctgogo, 0 );
setEffRotateKey( spep_1  + 240, ctgogo, 0 );

setEffAlphaKey( spep_1  + 168, ctgogo, 0 );
setEffAlphaKey( spep_1  + 169, ctgogo, 255 );
setEffAlphaKey( spep_1  + 170, ctgogo, 255 );
setEffAlphaKey( spep_1  + 240, ctgogo, 255 );

-- ** 白フェード** --
entryFade(spep_1+236,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
stopSe(spep_1+66,SE1,0);
SE2=playSe( spep_1 + 68, 15 );  --吸収音
stopSe(spep_1+146,SE2,0);
playSe( spep_1 + 168, SE_04 );  --ゴゴゴ

--黒
entryFadeBg( spep_1,  0,  244,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_2=spep_1+244;

--------------------------------------
--カードカットイン
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

-- ** エフェクト等 ** --
entryFade(spep_2+82,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3 = spep_2 + 92;

------------------------------------------------------
--投げる
------------------------------------------------------
--エフェクト
throw= entryEffectLife( spep_3, SP_03,164, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_3, throw,  0,  0);
setEffMoveKey(  spep_3+164, throw,  0,  0);
setEffScaleKey(  spep_3, throw,  1.0,  1.0);
setEffScaleKey(  spep_3+164, throw,  1.0,  1.0);
setEffRotateKey(  spep_3, throw,  0);
setEffRotateKey(  spep_3+164, throw,  0);
setEffAlphaKey(  spep_3, throw,  255);
setEffAlphaKey(  spep_3+164, throw,  255);

--SE
playSe( spep_3 + 0, 8 );
playSe( spep_3 + 80, 1004 );
playSe( spep_3 + 100, 9 );

--黒
entryFadeBg( spep_3,  0,  164,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_4=spep_3+164;

------------------------------------------------------
--落ちる
------------------------------------------------------
--エフェクト
down= entryEffectLife( spep_4, SP_04,86, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_4, down,  0,  0);
setEffMoveKey(  spep_4+86, down,  0,  0);
setEffScaleKey(  spep_4, down,  1.0,  1.0);
setEffScaleKey(  spep_4+86, down,  1.0,  1.0);
setEffRotateKey(  spep_4, down,  0);
setEffRotateKey(  spep_4+86, down,  0);
setEffAlphaKey(  spep_4, down,  255);
setEffAlphaKey(  spep_4+84, down,  255);
setEffAlphaKey(  spep_4+85, down,  255);
setEffAlphaKey(  spep_4+86, down,  0);

--黒
entryFadeBg( spep_4,  0,  86,  0,  0,  0,  0,  255);  --黒背景

--SE
playSe( spep_4 + 0, 1021 );

--次の準備
spep_5=spep_4+86;


------------------------------------------------------
--当たる
------------------------------------------------------
--エフェクト
hit_f= entryEffect( spep_5, SP_05, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_5, hit_f,  0,  0);
setEffMoveKey(  spep_5+88, hit_f,  0,  0);
setEffScaleKey(  spep_5, hit_f,  1.0,  1.0);
setEffScaleKey(  spep_5+88, hit_f,  1.0,  1.0);
setEffRotateKey(  spep_5, hit_f,  0);
setEffRotateKey(  spep_5+88, hit_f,  0);
setEffAlphaKey(  spep_5, hit_f,  255);
setEffAlphaKey(  spep_5+88, hit_f,  255);

--エフェクト
hit_b= entryEffect( spep_5, SP_06, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_5, hit_b,  0,  0);
setEffMoveKey(  spep_5+88, hit_b,  0,  0);
setEffScaleKey(  spep_5, hit_b,  1.0,  1.0);
setEffScaleKey(  spep_5+88, hit_b,  1.0,  1.0);
setEffRotateKey(  spep_5, hit_b,  0);
setEffRotateKey(  spep_5+88, hit_b,  0);
setEffAlphaKey(  spep_5, hit_b,  255);
setEffAlphaKey(  spep_5+88, hit_b,  255);

--黒
entryFadeBg( spep_5,  0,  88,  0,  0,  0,  0,  255);  --黒背景

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 88, 1, 0 );

changeAnime( spep_5 + 0, 1, 118 );

setMoveKey( spep_5 + 0, 1, 306.7, -298.1 , 0 );
setMoveKey( spep_5 + 2, 1, 269.4, -274.3 , 0 );
setMoveKey( spep_5 + 4, 1, 242.9, -257.5 , 0 );
setMoveKey( spep_5 + 6, 1, 223, -244.8 , 0 );
setMoveKey( spep_5 + 8, 1, 207.3, -234.7 , 0 );
setMoveKey( spep_5 + 10, 1, 194.3, -226.5 , 0 );
setMoveKey( spep_5 + 12, 1, 183.4, -219.5 , 0 );
setMoveKey( spep_5 + 14, 1, 173.9, -213.5 , 0 );
setMoveKey( spep_5 + 16, 1, 165.7, -208.2 , 0 );
setMoveKey( spep_5 + 18, 1, 158.4, -203.6 , 0 );
setMoveKey( spep_5 + 20, 1, 151.9, -199.4 , 0 );
setMoveKey( spep_5 + 22, 1, 146.1, -195.7 , 0 );
setMoveKey( spep_5 + 24, 1, 140.8, -192.3 , 0 );
setMoveKey( spep_5 + 26, 1, 136, -189.2 , 0 );
setMoveKey( spep_5 + 28, 1, 131.6, -186.4 , 0 );
setMoveKey( spep_5 + 30, 1, 127.6, -183.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 2, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 4, 1, 1.13, 1.13 );
setScaleKey( spep_5 + 6, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 10, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 12, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 14, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 16, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 18, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 22, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 26, 1, 0.84, 0.84 );
setScaleKey( spep_5 + 28, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 30, 1, 0.81, 0.81 );

setRotateKey( spep_5 + 0, 1, 5 );
setRotateKey( spep_5 + 30, 1, 5 );

--SE
SE0=playSe( spep_5 + 0, 1022 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0);
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 0, 1, 127.6, -183.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 127.6, -183.9 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 0.81, 0.81 );
    setScaleKey( SP_dodge + 10, 1, 0.81, 0.81 );
    
    setRotateKey( SP_dodge + 0, 1, 5 );
    setRotateKey( SP_dodge + 10, 1, 5 );
    
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


setMoveKey( spep_5 + 32, 1, 123.9, -181.5 , 0 );
setMoveKey( spep_5 + 34, 1, 120.5, -179.4 , 0 );
setMoveKey( spep_5 + 36, 1, 117.3, -177.3 , 0 );
setMoveKey( spep_5 + 38, 1, 114.4, -175.5 , 0 );
setMoveKey( spep_5 + 40, 1, 111.7, -173.8 , 0 );
setMoveKey( spep_5 + 42, 1, 109.2, -172.2 , 0 );
setMoveKey( spep_5 + 44, 1, 106.9, -170.7 , 0 );
setMoveKey( spep_5 + 46, 1, 104.8, -169.3 , 0 );
setMoveKey( spep_5 + 48, 1, 102.8, -168.1 , 0 );
setMoveKey( spep_5 + 50, 1, 100.9, -166.9 , 0 );
setMoveKey( spep_5 + 52, 1, 99.2, -165.8 , 0 );
setMoveKey( spep_5 + 54, 1, 97.6, -164.8 , 0 );
setMoveKey( spep_5 + 56, 1, 96.1, -163.8 , 0 );
setMoveKey( spep_5 + 58, 1, 94.7, -162.9 , 0 );
setMoveKey( spep_5 + 60, 1, 93.4, -162.1 , 0 );
setMoveKey( spep_5 + 62, 1, 92.2, -161.3 , 0 );
setMoveKey( spep_5 + 64, 1, 91.2, -160.6 , 0 );
setMoveKey( spep_5 + 66, 1, 90.1, -160 , 0 );
setMoveKey( spep_5 + 68, 1, 89.2, -159.4 , 0 );
setMoveKey( spep_5 + 70, 1, 88.3, -158.9 , 0 );
setMoveKey( spep_5 + 72, 1, 87.6, -158.4 , 0 );
setMoveKey( spep_5 + 74, 1, 86.8, -157.9 , 0 );
setMoveKey( spep_5 + 76, 1, 86.1, -157.5 , 0 );
setMoveKey( spep_5 + 78, 1, 88.3, -160.2 , 0 );
setMoveKey( spep_5 + 80, 1, 91.9, -164.9 , 0 );
setMoveKey( spep_5 + 82, 1, 97, -171.4 , 0 );
setMoveKey( spep_5 + 84, 1, 103.8, -180.1 , 0 );
setMoveKey( spep_5 + 86, 1, 113.7, -192.7 , 0 );
setMoveKey( spep_5 + 88, 1, 137.5, -222.9 , 0 );

setScaleKey( spep_5 + 32, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 34, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 36, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 38, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 40, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 42, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 44, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 46, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 50, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 52, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 54, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 56, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 58, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 62, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 64, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 70, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 72, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 78, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 80, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 82, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 84, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 86, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 88, 1, 0.8, 0.8 );


setRotateKey( spep_5 + 76, 1, 5 );
setRotateKey( spep_5 + 78, 1, 10 );
setRotateKey( spep_5 + 88, 1, 10);



-- ** エフェクト等 ** --
entryFade(spep_5+80,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+88;

------------------------------------------------------
--SP_07 = 151583;--ギャン10(60F)
------------------------------------------------------

--エフェクト
gyan= entryEffect( spep_6, 190000, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_6, gyan,  0,  0);
setEffMoveKey(  spep_6+60, gyan,  0,  0);
setEffScaleKey(  spep_6, gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60, gyan,  1.0,  1.0);
setEffRotateKey(  spep_6, gyan,  0);
setEffRotateKey(  spep_6+60, gyan,  0);
setEffAlphaKey(  spep_6, gyan,  255);
setEffAlphaKey(  spep_6+60, gyan,  255);

--文字エントリー
ctgyan= entryEffectLife( spep_6, 10006,58, 0x100,  -1, 0,  0, 350);

setEffMoveKey(  spep_6, ctgyan,  0,  350);
setEffMoveKey(  spep_6+58, ctgyan,  0, 350);
setEffScaleKey(  spep_6, ctgyan,  3.0,  3.0);
setEffScaleKey(  spep_6+58, ctgyan,  4.4,  4.4);
setEffRotateKey(  spep_6, ctgyan,  0);
setEffRotateKey(  spep_6+58, ctgyan,  0);
setEffAlphaKey(  spep_6, ctgyan,  255);
setEffAlphaKey(  spep_6+58, ctgyan,  255);

setEffShake( spep_6, ctgyan, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7=spep_6+60;

------------------------------------------------------
--終わり
------------------------------------------------------
--エフェクト
finish_f= entryEffect( spep_7, SP_07, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_7, finish_f,  0,  0);
setEffMoveKey(  spep_7+180, finish_f,  0,  0);
setEffScaleKey(  spep_7, finish_f,  1.0,  1.0);
setEffScaleKey(  spep_7+180, finish_f,  1.0,  1.0);
setEffRotateKey(  spep_7, finish_f,  0);
setEffRotateKey(  spep_7+180, finish_f,  0);
setEffAlphaKey(  spep_7, finish_f,  255);
setEffAlphaKey(  spep_7+180, finish_f,  255);

--エフェクト
finish_b= entryEffect( spep_7, SP_08, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_7, finish_b,  0,  0);
setEffMoveKey(  spep_7+180, finish_b,  0,  0);
setEffScaleKey(  spep_7, finish_b,  1.0,  1.0);
setEffScaleKey(  spep_7+180, finish_b,  1.0,  1.0);
setEffRotateKey(  spep_7, finish_b,  0);
setEffRotateKey(  spep_7+180, finish_b,  0);
setEffAlphaKey(  spep_7, finish_b,  255);
setEffAlphaKey(  spep_7+180, finish_b,  255);

--SE
playSe(  spep_7, 1024);

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
--entryFade( spep_7 + 150, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 166 );

else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ため
------------------------------------------------------
--はじめの準備
spep_0=0;

--エフェクト
tame= entryEffectLife( spep_0, SP_01x, 114, 0x100,   -1, 0,  0,  0);
setEffMoveKey(  spep_0, tame,  0,  0);
setEffMoveKey(  spep_0+114, tame,  0,  0);
setEffScaleKey(  spep_0, tame,  -1.0,  1.0);
setEffScaleKey(  spep_0+114, tame,  -1.0,  1.0);
setEffRotateKey(  spep_0, tame,  0);
setEffRotateKey(  spep_0+114, tame,  0);
setEffAlphaKey(  spep_0, tame,  255);
setEffAlphaKey(  spep_0+114, tame,  255);


--SE
SE1=playSe(spep_0,55);
setSeVolume(spep_0,55,50);

--黒
entryFadeBg( spep_0,  0,  144,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_1=spep_0+114;

------------------------------------------------------
--ため2
------------------------------------------------------
--エフェクト
tame2= entryEffectLife( spep_1, SP_02x,242, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1, tame2,  0,  0);
setEffMoveKey(  spep_1+242, tame2,  0,  0);
setEffScaleKey(  spep_1, tame2,  1.0,  1.0);
setEffScaleKey(  spep_1+242, tame2,  1.0,  1.0);
setEffRotateKey(  spep_1, tame2,  0);
setEffRotateKey(  spep_1+242, tame2,  0);
setEffAlphaKey(  spep_1, tame2,  255);
setEffAlphaKey(  spep_1+242, tame2,  255);


--集中線
shuchusen1 = entryEffectLife( spep_1 + 154,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 154, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 242, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 154, shuchusen1, 1, 1 );
setEffScaleKey( spep_1 + 242, shuchusen1, 1, 1 );

setEffRotateKey( spep_1 + 154, shuchusen1, 180 );
setEffRotateKey( spep_1 + 242, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 154, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 166, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 167, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 168, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 242, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 +156, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 +156, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1  + 168,  190006, 72, 0x100, -1, 0, -20.9, 512.8 ); --ゴゴゴ
setEffShake( spep_1  + 168, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1  + 168, ctgogo, -20.9, 512.8 , 0 );
setEffMoveKey( spep_1  + 240, ctgogo, -20.9, 515.5 , 0 );

setEffScaleKey( spep_1  + 168, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1  + 232, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1  + 234, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_1  + 236, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_1  + 238, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_1  + 240, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_1  + 168, ctgogo, 0 );
setEffRotateKey( spep_1  + 240, ctgogo, 0 );

setEffAlphaKey( spep_1  + 168, ctgogo, 0 );
setEffAlphaKey( spep_1  + 169, ctgogo, 255 );
setEffAlphaKey( spep_1  + 170, ctgogo, 255 );
setEffAlphaKey( spep_1  + 240, ctgogo, 255 );

-- ** 白フェード** --
entryFade(spep_1+236,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
stopSe(spep_1+66,SE1,0);
SE2=playSe( spep_1 + 68, 15 );  --吸収音
stopSe(spep_1+146,SE2,0);
playSe( spep_1 + 168, SE_04 );  --ゴゴゴ

--黒
entryFadeBg( spep_1,  0,  244,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_2=spep_1+244;

--------------------------------------
--カードカットイン
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

-- ** エフェクト等 ** --
entryFade(spep_2+82,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3 = spep_2 + 92;

------------------------------------------------------
--投げる
------------------------------------------------------
--エフェクト
throw= entryEffectLife( spep_3, SP_03x,164, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_3, throw,  0,  0);
setEffMoveKey(  spep_3+164, throw,  0,  0);
setEffScaleKey(  spep_3, throw,  -1.0,  1.0);
setEffScaleKey(  spep_3+164, throw,  -1.0,  1.0);
setEffRotateKey(  spep_3, throw,  0);
setEffRotateKey(  spep_3+164, throw,  0);
setEffAlphaKey(  spep_3, throw,  255);
setEffAlphaKey(  spep_3+164, throw,  255);

--SE
playSe( spep_3 + 0, 8 );
playSe( spep_3 + 80, 1004 );
playSe( spep_3 + 100, 9 );

--黒
entryFadeBg( spep_3,  0,  164,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_4=spep_3+164;

------------------------------------------------------
--落ちる
------------------------------------------------------
--エフェクト
down= entryEffectLife( spep_4, SP_04,86, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_4, down,  0,  0);
setEffMoveKey(  spep_4+86, down,  0,  0);
setEffScaleKey(  spep_4, down,  1.0,  1.0);
setEffScaleKey(  spep_4+86, down,  1.0,  1.0);
setEffRotateKey(  spep_4, down,  0);
setEffRotateKey(  spep_4+86, down,  0);
setEffAlphaKey(  spep_4, down,  255);
setEffAlphaKey(  spep_4+84, down,  255);
setEffAlphaKey(  spep_4+85, down,  255);
setEffAlphaKey(  spep_4+86, down,  0);

--SE
playSe( spep_4 + 0, 1021 );

--次の準備
spep_5=spep_4+86;


------------------------------------------------------
--当たる
------------------------------------------------------
--エフェクト
hit_f= entryEffect( spep_5, SP_05x, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_5, hit_f,  0,  0);
setEffMoveKey(  spep_5+88, hit_f,  0,  0);
setEffScaleKey(  spep_5, hit_f,  -1.0,  1.0);
setEffScaleKey(  spep_5+88, hit_f,  -1.0,  1.0);
setEffRotateKey(  spep_5, hit_f,  0);
setEffRotateKey(  spep_5+88, hit_f,  0);
setEffAlphaKey(  spep_5, hit_f,  255);
setEffAlphaKey(  spep_5+88, hit_f,  255);

--エフェクト
hit_b= entryEffect( spep_5, SP_06x, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_5, hit_b,  0,  0);
setEffMoveKey(  spep_5+88, hit_b,  0,  0);
setEffScaleKey(  spep_5, hit_b,  1.0,  1.0);
setEffScaleKey(  spep_5+88, hit_b,  1.0,  1.0);
setEffRotateKey(  spep_5, hit_b,  0);
setEffRotateKey(  spep_5+88, hit_b,  0);
setEffAlphaKey(  spep_5, hit_b,  255);
setEffAlphaKey(  spep_5+88, hit_b,  255);

--黒
entryFadeBg( spep_4,  0,  88,  0,  0,  0,  0,  255);  --黒背景

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 88, 1, 0 );

changeAnime( spep_5 + 0, 1, 118 );

setMoveKey( spep_5 + 0, 1, 306.7, -298.1 , 0 );
setMoveKey( spep_5 + 2, 1, 269.4, -274.3 , 0 );
setMoveKey( spep_5 + 4, 1, 242.9, -257.5 , 0 );
setMoveKey( spep_5 + 6, 1, 223, -244.8 , 0 );
setMoveKey( spep_5 + 8, 1, 207.3, -234.7 , 0 );
setMoveKey( spep_5 + 10, 1, 194.3, -226.5 , 0 );
setMoveKey( spep_5 + 12, 1, 183.4, -219.5 , 0 );
setMoveKey( spep_5 + 14, 1, 173.9, -213.5 , 0 );
setMoveKey( spep_5 + 16, 1, 165.7, -208.2 , 0 );
setMoveKey( spep_5 + 18, 1, 158.4, -203.6 , 0 );
setMoveKey( spep_5 + 20, 1, 151.9, -199.4 , 0 );
setMoveKey( spep_5 + 22, 1, 146.1, -195.7 , 0 );
setMoveKey( spep_5 + 24, 1, 140.8, -192.3 , 0 );
setMoveKey( spep_5 + 26, 1, 136, -189.2 , 0 );
setMoveKey( spep_5 + 28, 1, 131.6, -186.4 , 0 );
setMoveKey( spep_5 + 30, 1, 127.6, -183.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 2, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 4, 1, 1.13, 1.13 );
setScaleKey( spep_5 + 6, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 10, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 12, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 14, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 16, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 18, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 22, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 26, 1, 0.84, 0.84 );
setScaleKey( spep_5 + 28, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 30, 1, 0.81, 0.81 );

setRotateKey( spep_5 + 0, 1, 5 );
setRotateKey( spep_5 + 30, 1, 5 );

--SE
SE0=playSe( spep_5 + 0, 1022 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0);
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 0, 1, 127.6, -183.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 127.6, -183.9 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 0.81, 0.81 );
    setScaleKey( SP_dodge + 10, 1, 0.81, 0.81 );
    
    setRotateKey( SP_dodge + 0, 1, 5 );
    setRotateKey( SP_dodge + 10, 1, 5 );
    
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


setMoveKey( spep_5 + 32, 1, 123.9, -181.5 , 0 );
setMoveKey( spep_5 + 34, 1, 120.5, -179.4 , 0 );
setMoveKey( spep_5 + 36, 1, 117.3, -177.3 , 0 );
setMoveKey( spep_5 + 38, 1, 114.4, -175.5 , 0 );
setMoveKey( spep_5 + 40, 1, 111.7, -173.8 , 0 );
setMoveKey( spep_5 + 42, 1, 109.2, -172.2 , 0 );
setMoveKey( spep_5 + 44, 1, 106.9, -170.7 , 0 );
setMoveKey( spep_5 + 46, 1, 104.8, -169.3 , 0 );
setMoveKey( spep_5 + 48, 1, 102.8, -168.1 , 0 );
setMoveKey( spep_5 + 50, 1, 100.9, -166.9 , 0 );
setMoveKey( spep_5 + 52, 1, 99.2, -165.8 , 0 );
setMoveKey( spep_5 + 54, 1, 97.6, -164.8 , 0 );
setMoveKey( spep_5 + 56, 1, 96.1, -163.8 , 0 );
setMoveKey( spep_5 + 58, 1, 94.7, -162.9 , 0 );
setMoveKey( spep_5 + 60, 1, 93.4, -162.1 , 0 );
setMoveKey( spep_5 + 62, 1, 92.2, -161.3 , 0 );
setMoveKey( spep_5 + 64, 1, 91.2, -160.6 , 0 );
setMoveKey( spep_5 + 66, 1, 90.1, -160 , 0 );
setMoveKey( spep_5 + 68, 1, 89.2, -159.4 , 0 );
setMoveKey( spep_5 + 70, 1, 88.3, -158.9 , 0 );
setMoveKey( spep_5 + 72, 1, 87.6, -158.4 , 0 );
setMoveKey( spep_5 + 74, 1, 86.8, -157.9 , 0 );
setMoveKey( spep_5 + 76, 1, 86.1, -157.5 , 0 );
setMoveKey( spep_5 + 78, 1, 88.3, -160.2 , 0 );
setMoveKey( spep_5 + 80, 1, 91.9, -164.9 , 0 );
setMoveKey( spep_5 + 82, 1, 97, -171.4 , 0 );
setMoveKey( spep_5 + 84, 1, 103.8, -180.1 , 0 );
setMoveKey( spep_5 + 86, 1, 113.7, -192.7 , 0 );
setMoveKey( spep_5 + 88, 1, 137.5, -222.9 , 0 );

setScaleKey( spep_5 + 32, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 34, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 36, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 38, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 40, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 42, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 44, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 46, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 50, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 52, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 54, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 56, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 58, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 62, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 64, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 70, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 72, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 78, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 80, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 82, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 84, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 86, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 88, 1, 0.8, 0.8 );


setRotateKey( spep_5 + 76, 1, 5 );
setRotateKey( spep_5 + 78, 1, 10 );
setRotateKey( spep_5 + 88, 1, 10);

-- ** エフェクト等 ** --
entryFade(spep_5+80,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+88;

------------------------------------------------------
--SP_07x = 151583;--ギャン10(60F)
------------------------------------------------------

--エフェクト
gyan= entryEffect( spep_6, 190000, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_6, gyan,  0,  0);
setEffMoveKey(  spep_6+60, gyan,  0,  0);
setEffScaleKey(  spep_6, gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60, gyan,  1.0,  1.0);
setEffRotateKey(  spep_6, gyan,  0);
setEffRotateKey(  spep_6+60, gyan,  0);
setEffAlphaKey(  spep_6, gyan,  255);
setEffAlphaKey(  spep_6+60, gyan,  255);

--文字エントリー
ctgyan= entryEffectLife( spep_6, 10006,58, 0x100,  -1, 0,  0, 350);

setEffMoveKey(  spep_6, ctgyan,  0,  350);
setEffMoveKey(  spep_6+58, ctgyan,  0, 350);
setEffScaleKey(  spep_6, ctgyan,  3.0,  3.0);
setEffScaleKey(  spep_6+58, ctgyan,  4.4,  4.4);
setEffRotateKey(  spep_6, ctgyan,  0);
setEffRotateKey(  spep_6+58, ctgyan,  0);
setEffAlphaKey(  spep_6, ctgyan,  255);
setEffAlphaKey(  spep_6+58, ctgyan,  255);

setEffShake( spep_6, ctgyan, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7=spep_6+60;

------------------------------------------------------
--終わり
------------------------------------------------------
--エフェクト
finish_f= entryEffect( spep_7, SP_07x, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_7, finish_f,  0,  0);
setEffMoveKey(  spep_7+180, finish_f,  0,  0);
setEffScaleKey(  spep_7, finish_f,  1.0,  1.0);
setEffScaleKey(  spep_7+180, finish_f,  1.0,  1.0);
setEffRotateKey(  spep_7, finish_f,  0);
setEffRotateKey(  spep_7+180, finish_f,  0);
setEffAlphaKey(  spep_7, finish_f,  255);
setEffAlphaKey(  spep_7+180, finish_f,  255);

--エフェクト
finish_b= entryEffect( spep_7, SP_08x, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_7, finish_b,  0,  0);
setEffMoveKey(  spep_7+180, finish_b,  0,  0);
setEffScaleKey(  spep_7, finish_b,  1.0,  1.0);
setEffScaleKey(  spep_7+180, finish_b,  1.0,  1.0);
setEffRotateKey(  spep_7, finish_b,  0);
setEffRotateKey(  spep_7+180, finish_b,  0);
setEffAlphaKey(  spep_7, finish_b,  255);
setEffAlphaKey(  spep_7+180, finish_b,  255);

--SE
playSe(  spep_7, 1024);

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
--entryFade( spep_7 + 150, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 166 );

end

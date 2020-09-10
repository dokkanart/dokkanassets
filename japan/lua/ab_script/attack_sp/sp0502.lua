--1015180 ゴクウブラック_戦闘の記憶
--sp_effect_b1_00053

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

--味方
SP_01=	152481	;--	拳握りしめ
SP_02=	152488	;--	オーバーラップ
SP_03=	152483	;--	真空波
SP_04=	152484	;--	吹っ飛ぶ（前）
SP_05=	152485	;--	吹っ飛ぶ（後）

--敵
SP_01x=	152481	;--	拳握りしめ	
SP_02x=	152488	;--	オーバーラップ	
SP_03x=	152489	;--	真空波	(敵)
SP_04x=	152484	;--	吹っ飛ぶ（前）	
SP_05x=	152485	;--	吹っ飛ぶ（後）	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);

setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000 , 0);
setMoveKey(   5,   0,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);

setRotateKey(   0,   0, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   0, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--ナビ
------------------------------------------------------

spep_0=0;
--エフェクト
nabi=entryEffectLife(spep_0,SP_01,98,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, nabi, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, nabi, 0, 0 , 0 );

setEffScaleKey(spep_0,nabi,1.0,1.0);
setEffScaleKey(spep_0+98,nabi,1.0,1.0);

setEffRotateKey(spep_0,nabi,0);
setEffRotateKey(spep_0+98,nabi,0);

setEffAlphaKey(spep_0,nabi,255);
setEffAlphaKey(spep_0+98,nabi,255);

speff1=entryEffect(spep_0+22,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

-- ** エフェクト等 ** --
entryFade(spep_0+90, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade


--SE
playSe( spep_0, SE_04); --なんか飛んでいく

--次の準備
spep_1=spep_0+98;

------------------------------------------------------
--悟空が見えちゃうとこ
------------------------------------------------------
--エフェクト
gokuu=entryEffectLife(spep_1,SP_02,158,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, gokuu, 0, 0 , 0 );
setEffMoveKey( spep_1 + 158, gokuu, 0, 0 , 0 );

setEffScaleKey(spep_1,gokuu,1.0,1.0);
setEffScaleKey(spep_1+158,gokuu,1.0,1.0);

setEffRotateKey(spep_1,gokuu,0);
setEffRotateKey(spep_1+158,gokuu,0);

setEffAlphaKey(spep_1,gokuu,255);
setEffAlphaKey(spep_1+158,gokuu,255);

-- ** エフェクト等 ** --
entryFade(spep_1, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_1+150, 2, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--SE
playSe( spep_1+8, 8); --悟空が見えちゃうとこ
playSe( spep_1+38, 8); --悟空が見えちゃうとこ
playSe( spep_1+84, 8); --悟空が見えちゃうとこ

--次の準備
spep_2=spep_1+158;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;
------------------------------------------------------
--風をきる
------------------------------------------------------

--エフェクト
--wind=entryEffectLife(spep_3,SP_03,166,0x100,-1,0,0,0);
wind=entryEffectLife(spep_3,SP_03,166,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, wind, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, wind, 0, 0 , 0 );

setEffScaleKey(spep_3,wind,1.0,1.0);
setEffScaleKey(spep_3+166,wind,1.0,1.0);

setEffRotateKey(spep_3,wind,0);
setEffRotateKey(spep_3+166,wind,0);

setEffAlphaKey(spep_3,wind,255);
setEffAlphaKey(spep_3+164,wind,255);
setEffAlphaKey(spep_3+166,wind,255);
--setEffAlphaKey(spep_3+165,wind,255);
--setEffAlphaKey(spep_3+166,wind,0);

--文字エントリー
ctzuo = entryEffectLife( spep_3-2 + 58,  10012, 14, 0x100, -1, 0, -94.1, 208.2 );--ズオッ

setEffMoveKey( spep_3-2 + 58, ctzuo, -94.1, 208.2 , 0 );
setEffMoveKey( spep_3-2 + 64, ctzuo, -87.8, 287 , 0 );
setEffMoveKey( spep_3-2 + 66, ctzuo, -86, 310.8 , 0 );
setEffMoveKey( spep_3-2 + 68, ctzuo, -85.1, 322.1 , 0 );
setEffMoveKey( spep_3-2 + 70, ctzuo, -84.7, 327 , 0 );
setEffMoveKey( spep_3-2 + 72, ctzuo, -84.8, 328 , 0 );

setEffScaleKey( spep_3-2 + 58, ctzuo, 0.79, 0.79 );
setEffScaleKey( spep_3-2 + 64, ctzuo, 1.52, 1.52 );
setEffScaleKey( spep_3-2 + 66, ctzuo, 1.74, 1.74 );
setEffScaleKey( spep_3-2 + 68, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_3-2 + 70, ctzuo, 1.89, 1.89 );
setEffScaleKey( spep_3-2 + 72, ctzuo, 1.9, 1.9 );

setEffRotateKey( spep_3-2 + 58, ctzuo, -15.7 );
setEffRotateKey( spep_3-2 + 72, ctzuo, -15.7 );

setEffAlphaKey( spep_3-2 + 58, ctzuo, 0 );
setEffAlphaKey( spep_3-2 + 59, ctzuo, 255 );
setEffAlphaKey( spep_3-2 + 60, ctzuo, 255 );
setEffAlphaKey( spep_3-2 + 72, ctzuo, 255 );

--SE
playSe( spep_3+58, 44); --なんか飛んでいく

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+100 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
    --setScaleKey(SP_dodge , 1, 0.65, 0.65);
    --setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
    --setScaleKey(SP_dodge , 1, 0.65, 0.65);
    --setRotateKey(SP_dodge,   1, 0 );
    
    
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
--文字エントリー
ctdogyu = entryEffectLife( spep_3 + 114,  10029, 20, 0x100, -1, 0, -42, 278.8 );--ドギュッ

setEffMoveKey( spep_3 + 114, ctdogyu, -42, 278.8 , 0 );
setEffMoveKey( spep_3 + 126, ctdogyu, -6.3, 299.3 , 0 );
setEffMoveKey( spep_3 + 128, ctdogyu, 17.4, 319.5 , 0 );
setEffMoveKey( spep_3 + 120, ctdogyu, 26, 319.4 , 0 );
setEffMoveKey( spep_3 + 122, ctdogyu, 28.4, 316.7 , 0 );
setEffMoveKey( spep_3 + 124, ctdogyu, 35.2, 324.5 , 0 );
setEffMoveKey( spep_3 + 126, ctdogyu, 43.3, 314 , 0 );
setEffMoveKey( spep_3 + 128, ctdogyu, 46.7, 319.5 , 0 );
setEffMoveKey( spep_3 + 130, ctdogyu, 44.1, 316.6 , 0 );
setEffMoveKey( spep_3 + 132, ctdogyu, 46.1, 325 , 0 );
setEffMoveKey( spep_3 + 134, ctdogyu, 46.4, 325.1 , 0 );

setEffScaleKey( spep_3 + 114, ctdogyu, 1, 1 );
setEffScaleKey( spep_3 + 116, ctdogyu, 1.75, 1.75 );
setEffScaleKey( spep_3 + 118, ctdogyu, 2.19, 2.19 );
setEffScaleKey( spep_3 + 120, ctdogyu, 2.34, 2.34 );
setEffScaleKey( spep_3 + 122, ctdogyu, 2.37, 2.37 );
setEffScaleKey( spep_3 + 124, ctdogyu, 2.41, 2.41 );
setEffScaleKey( spep_3 + 126, ctdogyu, 2.44, 2.44 );
setEffScaleKey( spep_3 + 128, ctdogyu, 2.47, 2.47 );
setEffScaleKey( spep_3 + 130, ctdogyu, 2.52, 2.52 );
setEffScaleKey( spep_3 + 132, ctdogyu, 2.57, 2.57 );
setEffScaleKey( spep_3 + 134, ctdogyu, 2.62, 2.62 );

setEffRotateKey( spep_3 + 114, ctdogyu, -9.7 );
setEffRotateKey( spep_3 + 134, ctdogyu, -9.7 );

setEffAlphaKey( spep_3 + 114, ctdogyu, 0 );
setEffAlphaKey( spep_3 + 115, ctdogyu, 255 );
setEffAlphaKey( spep_3 + 116, ctdogyu, 255 );
setEffAlphaKey( spep_3 + 128, ctdogyu, 255 );
setEffAlphaKey( spep_3 + 130, ctdogyu, 170 );
setEffAlphaKey( spep_3 + 132, ctdogyu, 85 );
setEffAlphaKey( spep_3 + 134, ctdogyu, 0 );

--SE
playSe( spep_3+114, SE_04); --なんか飛んでいく
SE1=playSe( spep_3+134, 1044); --なんか当たる
stopSe(spep_3+166,SE1,0);
-- ** エフェクト等 ** --
--entryFade(spep_3+162, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+166 -2;
------------------------------------------------------
--敵に何か当たる
------------------------------------------------------
--エフェクト
hot_f=entryEffect(spep_4,SP_04,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, hot_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hot_f,1.0,1.0);
setEffScaleKey(spep_4+194,hot_f,1.0,1.0);

setEffRotateKey(spep_4,hot_f,0);
setEffRotateKey(spep_4+194,hot_f,0);

setEffAlphaKey(spep_4,hot_f,255);
setEffAlphaKey(spep_4+194,hot_f,255);

--エフェクト
hot_b=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, hot_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hot_b,1.0,1.0);
setEffScaleKey(spep_4+194,hot_b,1.0,1.0);

setEffRotateKey(spep_4,hot_b,0);
setEffRotateKey(spep_4+194,hot_b,0);

setEffAlphaKey(spep_4,hot_b,255);
setEffAlphaKey(spep_4+194,hot_b,255);


--集中線
shuchusen1 = entryEffectLife( spep_4 + 0,  906, 66, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.18, 1.22 );
setEffScaleKey( spep_4 + 46, shuchusen1, 1.18, 1.22 );
setEffScaleKey( spep_4 + 48, shuchusen1, 1.43, 1.47 );
setEffScaleKey( spep_4 + 50, shuchusen1, 1.67, 1.73 );
setEffScaleKey( spep_4 + 52, shuchusen1, 1.92, 1.98 );
setEffScaleKey( spep_4 + 54, shuchusen1, 2.16, 2.23 );
setEffScaleKey( spep_4 + 56, shuchusen1, 2.41, 2.48 );
setEffScaleKey( spep_4 + 58, shuchusen1, 2.65, 2.74 );
setEffScaleKey( spep_4 + 60, shuchusen1, 2.9, 2.99 );
setEffScaleKey( spep_4 + 62, shuchusen1, 3.14, 3.24 );
setEffScaleKey( spep_4 + 64, shuchusen1, 3.39, 3.5 );
setEffScaleKey( spep_4 + 66, shuchusen1, 3.63, 3.75 );

setEffRotateKey( spep_4 + 0, shuchusen1, 0 );
setEffRotateKey( spep_4 + 66, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 66, shuchusen1, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_4 + 38,  10019, 16, 0x100, -1, 0, -33.3, 97.4 );--ドンッ

setEffMoveKey( spep_4 + 38, ctdon, -33.3, 97.4 , 0 );
setEffMoveKey( spep_4 + 40, ctdon, -35.2, 167.1 , 0 );
setEffMoveKey( spep_4 + 42, ctdon, -8.3, 199.7 , 0 );
setEffMoveKey( spep_4 + 44, ctdon, -21.4, 213.5 , 0 );
setEffMoveKey( spep_4 + 46, ctdon, -7.8, 228.5 , 0 );
setEffMoveKey( spep_4 + 48, ctdon, -9.4, 216.4 , 0 );
setEffMoveKey( spep_4 + 50, ctdon, -10.2, 260.5 , 0 );
setEffMoveKey( spep_4 + 52, ctdon, 1.2, 263.8 , 0 );
setEffMoveKey( spep_4 + 54, ctdon, 6.6, 293.7 , 0 );

setEffScaleKey( spep_4 + 38, ctdon, 1.47, 1.47 );
setEffScaleKey( spep_4 + 40, ctdon, 2.62, 2.62 );
setEffScaleKey( spep_4 + 42, ctdon, 3.31, 3.31 );
setEffScaleKey( spep_4 + 44, ctdon, 3.53, 3.53 );
setEffScaleKey( spep_4 + 46, ctdon, 3.59, 3.59 );
setEffScaleKey( spep_4 + 48, ctdon, 3.77, 3.77 );
setEffScaleKey( spep_4 + 50, ctdon, 4.07, 4.07 );
setEffScaleKey( spep_4 + 52, ctdon, 4.49, 4.49 );
setEffScaleKey( spep_4 + 54, ctdon, 5.02, 5.02 );

setEffRotateKey( spep_4 + 38, ctdon, 8.5 );
setEffRotateKey( spep_4 + 40, ctdon, 9 );
setEffRotateKey( spep_4 + 42, ctdon, 9.4 );
setEffRotateKey( spep_4 + 44, ctdon, 9.5 );
setEffRotateKey( spep_4 + 44, ctdon, 9.5 );
setEffRotateKey( spep_4 + 54, ctdon, 9.5 );

setEffAlphaKey( spep_4 + 38, ctdon, 255 );
setEffAlphaKey( spep_4 + 44, ctdon, 255 );
setEffAlphaKey( spep_4 + 46, ctdon, 245 );
setEffAlphaKey( spep_4 + 48, ctdon, 214 );
setEffAlphaKey( spep_4 + 50, ctdon, 163 );
setEffAlphaKey( spep_4 + 52, ctdon, 92 );
setEffAlphaKey( spep_4 + 54, ctdon, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 98, 1, 0 );
changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4 + 38, 1, 105 );

setMoveKey( spep_4 + 0, 1, -11.7, -1.8 , 0 );
setMoveKey( spep_4 + 2, 1, -10.3, -2.2 , 0 );
setMoveKey( spep_4 + 4, 1, -8.9, -0.5 , 0 );
setMoveKey( spep_4 + 6, 1, -9, -5.4 , 0 );
setMoveKey( spep_4 + 8, 1, -13.1, 1.9 , 0 );
setMoveKey( spep_4 + 10, 1, -16.3, -0.5 , 0 );
setMoveKey( spep_4 + 12, 1, -12.9, 5.1 , 0 );
setMoveKey( spep_4 + 14, 1, -13.7, 2.8 , 0 );
setMoveKey( spep_4 + 16, 1, -17.3, 1.4 , 0 );
setMoveKey( spep_4 + 18, 1, -7.6, 10.6 , 0 );
setMoveKey( spep_4 + 20, 1, -15.6, 2.8 , 0 );
setMoveKey( spep_4 + 22, 1, -5.4, 12.9 , 0 );
setMoveKey( spep_4 + 24, 1, -15.4, 9 , 0 );
setMoveKey( spep_4 + 26, 1, -1.8, 15 , 0 );
setMoveKey( spep_4 + 28, 1, -9.3, 11.1 , 0 );
setMoveKey( spep_4 + 30, 1, -9.3, 14 , 0 );
setMoveKey( spep_4 + 32, 1, -6.3, 8.3 , 0 );
setMoveKey( spep_4 + 34, 1, -2.1, 12.1 , 0 );
setMoveKey( spep_4 + 37, 1, -9.9, 12.8 , 0 );
setMoveKey( spep_4 + 38, 1, 68.6, -145.9 , 0 );
setMoveKey( spep_4 + 40, 1, 29.2, -12.6 , 0 );
setMoveKey( spep_4 + 42, 1, 33.1, 105.7 , 0 );
setMoveKey( spep_4 + 44, 1, 26.5, 142.3 , 0 );
setMoveKey( spep_4 + 46, 1, 16.4, 191.9 , 0 );
setMoveKey( spep_4 + 48, 1, 23.5, 228 , 0 );
setMoveKey( spep_4 + 50, 1, 12.1, 204.5 , 0 );
setMoveKey( spep_4 + 52, 1, 16.1, 199.2 , 0 );
setMoveKey( spep_4 + 54, 1, 11.8, 203.5 , 0 );
setMoveKey( spep_4 + 56, 1, 10.2, 209 , 0 );
setMoveKey( spep_4 + 58, 1, 8.8, 184.3 , 0 );
setMoveKey( spep_4 + 60, 1, 7.6, 173.7 , 0 );
setMoveKey( spep_4 + 62, 1, 6.5, 179.9 , 0 );
setMoveKey( spep_4 + 64, 1, 5.5, 124.1 , 0 );
setMoveKey( spep_4 + 66, 1, 4.7, 133.6 , 0 );
setMoveKey( spep_4 + 68, 1, 4, 89 , 0 );
setMoveKey( spep_4 + 70, 1, 3.3, 72.6 , 0 );
setMoveKey( spep_4 + 72, 1, 2.8, 46.9 , 0 );
setMoveKey( spep_4 + 74, 1, 2.3, 48.5 , 0 );
setMoveKey( spep_4 + 76, 1, 1.9, 9.5 , 0 );
setMoveKey( spep_4 + 78, 1, 1.5, -2 , 0 );
setMoveKey( spep_4 + 80, 1, 1.2, -18.7 , 0 );
setMoveKey( spep_4 + 82, 1, 1, -38.9 , 0 );
setMoveKey( spep_4 + 84, 1, 0.8, -61.1 , 0 );
setMoveKey( spep_4 + 86, 1, 0.6, -68.3 , 0 );
setMoveKey( spep_4 + 88, 1, 0.4, -93.6 , 0 );
setMoveKey( spep_4 + 90, 1, 0.3, -111.2 , 0 );
setMoveKey( spep_4 + 92, 1, 0.2, -136.1 , 0 );
setMoveKey( spep_4 + 94, 1, 0.1, -159.6 , 0 );
setMoveKey( spep_4 + 96, 1, 0, -192.6 , 0 );
setMoveKey( spep_4 + 98, 1, -11.8, -255.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 6, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 8, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 12, 1, 0.38, 0.38 );
setScaleKey( spep_4 + 14, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 16, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 20, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 22, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 26, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 28, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 32, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 34, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 37, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 38, 1, 2.67, 2.67 );
setScaleKey( spep_4 + 40, 1, 2.23, 2.23 );
setScaleKey( spep_4 + 42, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 44, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 46, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 48, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 50, 1, 1.15, 1.15 );
setScaleKey( spep_4 + 52, 1, 1, 1 );
setScaleKey( spep_4 + 54, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 56, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 58, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 60, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 62, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 64, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 66, 1, 0.42, 0.42 );
setScaleKey( spep_4 + 68, 1, 0.36, 0.36 );
setScaleKey( spep_4 + 70, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 72, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 74, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 76, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 78, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 80, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 82, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 84, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 86, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 88, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 92, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 94, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 98, 1, 0.1, 0.1 );

setRotateKey( spep_4 + 0, 1, -100 );
setRotateKey( spep_4 + 2, 1, -98.4 );
setRotateKey( spep_4 + 4, 1, -96.1 );
setRotateKey( spep_4 + 6, 1, -93.2 );
setRotateKey( spep_4 + 8, 1, -89.7 );
setRotateKey( spep_4 + 10, 1, -85.8 );
setRotateKey( spep_4 + 12, 1, -81.4 );
setRotateKey( spep_4 + 14, 1, -76.8 );
setRotateKey( spep_4 + 16, 1, -71.8 );
setRotateKey( spep_4 + 18, 1, -66.5 );
setRotateKey( spep_4 + 20, 1, -61.1 );
setRotateKey( spep_4 + 22, 1, -55.4 );
setRotateKey( spep_4 + 24, 1, -49.7 );
setRotateKey( spep_4 + 26, 1, -43.8 );
setRotateKey( spep_4 + 28, 1, -37.9 );
setRotateKey( spep_4 + 30, 1, -32.1 );
setRotateKey( spep_4 + 32, 1, -26.2 );
setRotateKey( spep_4 + 34, 1, -20.5 );
setRotateKey( spep_4 + 37, 1, -15 );
setRotateKey( spep_4 + 38, 1, -9.9 );
setRotateKey( spep_4 + 40, 1, -78.2 );
setRotateKey( spep_4 + 42, 1, -118.3 );
setRotateKey( spep_4 + 44, 1, -148.9 );
setRotateKey( spep_4 + 46, 1, -174.3 );
setRotateKey( spep_4 + 48, 1, -195.5 );
setRotateKey( spep_4 + 50, 1, -213.6 );
setRotateKey( spep_4 + 52, 1, -229.2 );
setRotateKey( spep_4 + 54, 1, -243 );
setRotateKey( spep_4 + 56, 1, -255.1 );
setRotateKey( spep_4 + 58, 1, -266 );
setRotateKey( spep_4 + 60, 1, -275.7 );
setRotateKey( spep_4 + 62, 1, -284.5 );
setRotateKey( spep_4 + 64, 1, -292.5 );
setRotateKey( spep_4 + 66, 1, -299.7 );
setRotateKey( spep_4 + 68, 1, -306.3 );
setRotateKey( spep_4 + 70, 1, -312.4 );
setRotateKey( spep_4 + 72, 1, -318 );
setRotateKey( spep_4 + 74, 1, -323.1 );
setRotateKey( spep_4 + 76, 1, -327.8 );
setRotateKey( spep_4 + 78, 1, -332.3 );
setRotateKey( spep_4 + 80, 1, -336.4 );
setRotateKey( spep_4 + 82, 1, -340.2 );
setRotateKey( spep_4 + 84, 1, -343.9 );
setRotateKey( spep_4 + 86, 1, -347.4 );
setRotateKey( spep_4 + 88, 1, -350.7 );
setRotateKey( spep_4 + 90, 1, -353.8 );
setRotateKey( spep_4 + 92, 1, -357 );
setRotateKey( spep_4 + 94, 1, -360 );
setRotateKey( spep_4 + 96, 1, -363 );
setRotateKey( spep_4 + 98, 1, -365.9 );

--SE
playSe( spep_4, SE_04); --なんか飛んでいく
playSe( spep_4+38, 1011); --なんか当たる
playSe( spep_4+94, 1023); --なんか当たる


-- ** エフェクト等 ** --
entryFade(spep_4+30, 4, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

-- ダメージ表示
dealDamage(spep_4+100);
entryFade( spep_4+174, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+184);

else 
------------------------------------------------------
--敵
------------------------------------------------------
------------------------------------------------------
--ナビ
------------------------------------------------------

spep_0=0;
--エフェクト
nabi=entryEffectLife(spep_0,SP_01x,98,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, nabi, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, nabi, 0, 0 , 0 );

setEffScaleKey(spep_0,nabi,-1.0,1.0);
setEffScaleKey(spep_0+98,nabi,-1.0,1.0);

setEffRotateKey(spep_0,nabi,0);
setEffRotateKey(spep_0+98,nabi,0);

setEffAlphaKey(spep_0,nabi,255);
setEffAlphaKey(spep_0+98,nabi,255);

--speff1=entryEffect(spep_0+22,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

-- ** エフェクト等 ** --
entryFade(spep_0+90, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade


--SE
playSe( spep_0, SE_04); --なんか飛んでいく

--次の準備
spep_1=spep_0+98;

------------------------------------------------------
--悟空が見えちゃうとこ
------------------------------------------------------
--エフェクト
gokuu=entryEffectLife(spep_1,SP_02x,158,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, gokuu, 0, 0 , 0 );
setEffMoveKey( spep_1 + 158, gokuu, 0, 0 , 0 );

setEffScaleKey(spep_1,gokuu,-1.0,1.0);
setEffScaleKey(spep_1+158,gokuu,-1.0,1.0);

setEffRotateKey(spep_1,gokuu,0);
setEffRotateKey(spep_1+158,gokuu,0);

setEffAlphaKey(spep_1,gokuu,255);
setEffAlphaKey(spep_1+158,gokuu,255);

-- ** エフェクト等 ** --
entryFade(spep_1, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_1+150, 2, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--SE
playSe( spep_1+8, 8); --悟空が見えちゃうとこ
playSe( spep_1+38, 8); --悟空が見えちゃうとこ
playSe( spep_1+84, 8); --悟空が見えちゃうとこ

--次の準備
spep_2=spep_1+158;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;
------------------------------------------------------
--風をきる
------------------------------------------------------

--エフェクト
--wind=entryEffectLife(spep_3,SP_03x,166,0x100,-1,0,0,0);
wind=entryEffectLife(spep_3,SP_03x,166,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, wind, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, wind, 0, 0 , 0 );

setEffScaleKey(spep_3,wind,-1.0,1.0);
setEffScaleKey(spep_3+166,wind,-1.0,1.0);

setEffRotateKey(spep_3,wind,0);
setEffRotateKey(spep_3+166,wind,0);

setEffAlphaKey(spep_3,wind,255);
setEffAlphaKey(spep_3+162,wind,255);
setEffAlphaKey(spep_3+166,wind,255);
--setEffAlphaKey(spep_3+163,wind,255);
--setEffAlphaKey(spep_3+164,wind,0);

--文字エントリー
ctzuo = entryEffectLife( spep_3-2 + 58,  10012, 14, 0x100, -1, 0, -94.1, 208.2 );--ズオッ

setEffMoveKey( spep_3-2 + 58, ctzuo, -94.1, 208.2 , 0 );
setEffMoveKey( spep_3-2 + 64, ctzuo, -87.8, 287 , 0 );
setEffMoveKey( spep_3-2 + 66, ctzuo, -86, 310.8 , 0 );
setEffMoveKey( spep_3-2 + 68, ctzuo, -85.1, 322.1 , 0 );
setEffMoveKey( spep_3-2 + 70, ctzuo, -84.7, 327 , 0 );
setEffMoveKey( spep_3-2 + 72, ctzuo, -84.8, 328 , 0 );

setEffScaleKey( spep_3-2 + 58, ctzuo, 0.79, 0.79 );
setEffScaleKey( spep_3-2 + 64, ctzuo, 1.52, 1.52 );
setEffScaleKey( spep_3-2 + 66, ctzuo, 1.74, 1.74 );
setEffScaleKey( spep_3-2 + 68, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_3-2 + 70, ctzuo, 1.89, 1.89 );
setEffScaleKey( spep_3-2 + 72, ctzuo, 1.9, 1.9 );

setEffRotateKey( spep_3-2 + 58, ctzuo, -15.7 );
setEffRotateKey( spep_3-2 + 72, ctzuo, -15.7 );

setEffAlphaKey( spep_3-2 + 58, ctzuo, 0 );
setEffAlphaKey( spep_3-2 + 59, ctzuo, 255 );
setEffAlphaKey( spep_3-2 + 60, ctzuo, 255 );
setEffAlphaKey( spep_3-2 + 72, ctzuo, 255 );

entryFade(spep_3+10, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--SE
playSe( spep_3+58, 44); --なんか飛んでいく

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+100 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
    --setScaleKey(SP_dodge , 1, 0.65, 0.65);
    --setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
    --setScaleKey(SP_dodge , 1, 0.65, 0.65);
    --setRotateKey(SP_dodge,   1, 0 );
    
    
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
--文字エントリー
ctdogyu = entryEffectLife( spep_3 + 114,  10029, 20, 0x100, -1, 0, -42, 278.8 );--ドギュッ

setEffMoveKey( spep_3 + 114, ctdogyu, -42, 278.8 , 0 );
setEffMoveKey( spep_3 + 126, ctdogyu, -6.3, 299.3 , 0 );
setEffMoveKey( spep_3 + 128, ctdogyu, 17.4, 319.5 , 0 );
setEffMoveKey( spep_3 + 120, ctdogyu, 26, 319.4 , 0 );
setEffMoveKey( spep_3 + 122, ctdogyu, 28.4, 316.7 , 0 );
setEffMoveKey( spep_3 + 124, ctdogyu, 35.2, 324.5 , 0 );
setEffMoveKey( spep_3 + 126, ctdogyu, 43.3, 314 , 0 );
setEffMoveKey( spep_3 + 128, ctdogyu, 46.7, 319.5 , 0 );
setEffMoveKey( spep_3 + 130, ctdogyu, 44.1, 316.6 , 0 );
setEffMoveKey( spep_3 + 132, ctdogyu, 46.1, 325 , 0 );
setEffMoveKey( spep_3 + 134, ctdogyu, 46.4, 325.1 , 0 );

setEffScaleKey( spep_3 + 114, ctdogyu, 1, 1 );
setEffScaleKey( spep_3 + 116, ctdogyu, 1.75, 1.75 );
setEffScaleKey( spep_3 + 118, ctdogyu, 2.19, 2.19 );
setEffScaleKey( spep_3 + 120, ctdogyu, 2.34, 2.34 );
setEffScaleKey( spep_3 + 122, ctdogyu, 2.37, 2.37 );
setEffScaleKey( spep_3 + 124, ctdogyu, 2.41, 2.41 );
setEffScaleKey( spep_3 + 126, ctdogyu, 2.44, 2.44 );
setEffScaleKey( spep_3 + 128, ctdogyu, 2.47, 2.47 );
setEffScaleKey( spep_3 + 130, ctdogyu, 2.52, 2.52 );
setEffScaleKey( spep_3 + 132, ctdogyu, 2.57, 2.57 );
setEffScaleKey( spep_3 + 134, ctdogyu, 2.62, 2.62 );

setEffRotateKey( spep_3 + 114, ctdogyu, -9.7 );
setEffRotateKey( spep_3 + 134, ctdogyu, -9.7 );

setEffAlphaKey( spep_3 + 114, ctdogyu, 0 );
setEffAlphaKey( spep_3 + 115, ctdogyu, 255 );
setEffAlphaKey( spep_3 + 116, ctdogyu, 255 );
setEffAlphaKey( spep_3 + 128, ctdogyu, 255 );
setEffAlphaKey( spep_3 + 130, ctdogyu, 170 );
setEffAlphaKey( spep_3 + 132, ctdogyu, 85 );
setEffAlphaKey( spep_3 + 134, ctdogyu, 0 );

--SE
playSe( spep_3+114, SE_04); --なんか飛んでいく
SE1=playSe( spep_3+134, 1044); --なんか当たる
stopSe(spep_3+166,SE1,0);
-- ** エフェクト等 ** --
--entryFade(spep_3+162, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+164;
------------------------------------------------------
--敵に何か当たる
------------------------------------------------------
--エフェクト
hot_f=entryEffect(spep_4,SP_04x,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, hot_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hot_f,1.0,1.0);
setEffScaleKey(spep_4+194,hot_f,1.0,1.0);

setEffRotateKey(spep_4,hot_f,0);
setEffRotateKey(spep_4+194,hot_f,0);

setEffAlphaKey(spep_4,hot_f,255);
setEffAlphaKey(spep_4+194,hot_f,255);

--エフェクト
hot_b=entryEffect(spep_4,SP_05x,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, hot_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hot_b,1.0,1.0);
setEffScaleKey(spep_4+194,hot_b,1.0,1.0);

setEffRotateKey(spep_4,hot_b,0);
setEffRotateKey(spep_4+194,hot_b,0);

setEffAlphaKey(spep_4,hot_b,255);
setEffAlphaKey(spep_4+194,hot_b,255);


--集中線
shuchusen1 = entryEffectLife( spep_4 + 0,  906, 66, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.18, 1.22 );
setEffScaleKey( spep_4 + 46, shuchusen1, 1.18, 1.22 );
setEffScaleKey( spep_4 + 48, shuchusen1, 1.43, 1.47 );
setEffScaleKey( spep_4 + 50, shuchusen1, 1.67, 1.73 );
setEffScaleKey( spep_4 + 52, shuchusen1, 1.92, 1.98 );
setEffScaleKey( spep_4 + 54, shuchusen1, 2.16, 2.23 );
setEffScaleKey( spep_4 + 56, shuchusen1, 2.41, 2.48 );
setEffScaleKey( spep_4 + 58, shuchusen1, 2.65, 2.74 );
setEffScaleKey( spep_4 + 60, shuchusen1, 2.9, 2.99 );
setEffScaleKey( spep_4 + 62, shuchusen1, 3.14, 3.24 );
setEffScaleKey( spep_4 + 64, shuchusen1, 3.39, 3.5 );
setEffScaleKey( spep_4 + 66, shuchusen1, 3.63, 3.75 );

setEffRotateKey( spep_4 + 0, shuchusen1, 0 );
setEffRotateKey( spep_4 + 66, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 66, shuchusen1, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_4 + 38,  10019, 16, 0x100, -1, 0, -33.3, 97.4 );--ドンッ

setEffMoveKey( spep_4 + 38, ctdon, -33.3, 97.4 , 0 );
setEffMoveKey( spep_4 + 40, ctdon, -35.2, 167.1 , 0 );
setEffMoveKey( spep_4 + 42, ctdon, -8.3, 199.7 , 0 );
setEffMoveKey( spep_4 + 44, ctdon, -21.4, 213.5 , 0 );
setEffMoveKey( spep_4 + 46, ctdon, -7.8, 228.5 , 0 );
setEffMoveKey( spep_4 + 48, ctdon, -9.4, 216.4 , 0 );
setEffMoveKey( spep_4 + 50, ctdon, -10.2, 260.5 , 0 );
setEffMoveKey( spep_4 + 52, ctdon, 1.2, 263.8 , 0 );
setEffMoveKey( spep_4 + 54, ctdon, 6.6, 293.7 , 0 );

setEffScaleKey( spep_4 + 38, ctdon, 1.47, 1.47 );
setEffScaleKey( spep_4 + 40, ctdon, 2.62, 2.62 );
setEffScaleKey( spep_4 + 42, ctdon, 3.31, 3.31 );
setEffScaleKey( spep_4 + 44, ctdon, 3.53, 3.53 );
setEffScaleKey( spep_4 + 46, ctdon, 3.59, 3.59 );
setEffScaleKey( spep_4 + 48, ctdon, 3.77, 3.77 );
setEffScaleKey( spep_4 + 50, ctdon, 4.07, 4.07 );
setEffScaleKey( spep_4 + 52, ctdon, 4.49, 4.49 );
setEffScaleKey( spep_4 + 54, ctdon, 5.02, 5.02 );

setEffRotateKey( spep_4 + 38, ctdon, 8.5 );
setEffRotateKey( spep_4 + 40, ctdon, 9 );
setEffRotateKey( spep_4 + 42, ctdon, 9.4 );
setEffRotateKey( spep_4 + 44, ctdon, 9.5 );
setEffRotateKey( spep_4 + 44, ctdon, 9.5 );
setEffRotateKey( spep_4 + 54, ctdon, 9.5 );

setEffAlphaKey( spep_4 + 38, ctdon, 255 );
setEffAlphaKey( spep_4 + 44, ctdon, 255 );
setEffAlphaKey( spep_4 + 46, ctdon, 245 );
setEffAlphaKey( spep_4 + 48, ctdon, 214 );
setEffAlphaKey( spep_4 + 50, ctdon, 163 );
setEffAlphaKey( spep_4 + 52, ctdon, 92 );
setEffAlphaKey( spep_4 + 54, ctdon, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 98, 1, 0 );
changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4 + 38, 1, 105 );

setMoveKey( spep_4 + 0, 1, -11.7, -1.8 , 0 );
setMoveKey( spep_4 + 2, 1, -10.3, -2.2 , 0 );
setMoveKey( spep_4 + 4, 1, -8.9, -0.5 , 0 );
setMoveKey( spep_4 + 6, 1, -9, -5.4 , 0 );
setMoveKey( spep_4 + 8, 1, -13.1, 1.9 , 0 );
setMoveKey( spep_4 + 10, 1, -16.3, -0.5 , 0 );
setMoveKey( spep_4 + 12, 1, -12.9, 5.1 , 0 );
setMoveKey( spep_4 + 14, 1, -13.7, 2.8 , 0 );
setMoveKey( spep_4 + 16, 1, -17.3, 1.4 , 0 );
setMoveKey( spep_4 + 18, 1, -7.6, 10.6 , 0 );
setMoveKey( spep_4 + 20, 1, -15.6, 2.8 , 0 );
setMoveKey( spep_4 + 22, 1, -5.4, 12.9 , 0 );
setMoveKey( spep_4 + 24, 1, -15.4, 9 , 0 );
setMoveKey( spep_4 + 26, 1, -1.8, 15 , 0 );
setMoveKey( spep_4 + 28, 1, -9.3, 11.1 , 0 );
setMoveKey( spep_4 + 30, 1, -9.3, 14 , 0 );
setMoveKey( spep_4 + 32, 1, -6.3, 8.3 , 0 );
setMoveKey( spep_4 + 34, 1, -2.1, 12.1 , 0 );
setMoveKey( spep_4 + 37, 1, -9.9, 12.8 , 0 );
setMoveKey( spep_4 + 38, 1, 68.6, -145.9 , 0 );
setMoveKey( spep_4 + 40, 1, 29.2, -12.6 , 0 );
setMoveKey( spep_4 + 42, 1, 33.1, 105.7 , 0 );
setMoveKey( spep_4 + 44, 1, 26.5, 142.3 , 0 );
setMoveKey( spep_4 + 46, 1, 16.4, 191.9 , 0 );
setMoveKey( spep_4 + 48, 1, 23.5, 228 , 0 );
setMoveKey( spep_4 + 50, 1, 12.1, 204.5 , 0 );
setMoveKey( spep_4 + 52, 1, 16.1, 199.2 , 0 );
setMoveKey( spep_4 + 54, 1, 11.8, 203.5 , 0 );
setMoveKey( spep_4 + 56, 1, 10.2, 209 , 0 );
setMoveKey( spep_4 + 58, 1, 8.8, 184.3 , 0 );
setMoveKey( spep_4 + 60, 1, 7.6, 173.7 , 0 );
setMoveKey( spep_4 + 62, 1, 6.5, 179.9 , 0 );
setMoveKey( spep_4 + 64, 1, 5.5, 124.1 , 0 );
setMoveKey( spep_4 + 66, 1, 4.7, 133.6 , 0 );
setMoveKey( spep_4 + 68, 1, 4, 89 , 0 );
setMoveKey( spep_4 + 70, 1, 3.3, 72.6 , 0 );
setMoveKey( spep_4 + 72, 1, 2.8, 46.9 , 0 );
setMoveKey( spep_4 + 74, 1, 2.3, 48.5 , 0 );
setMoveKey( spep_4 + 76, 1, 1.9, 9.5 , 0 );
setMoveKey( spep_4 + 78, 1, 1.5, -2 , 0 );
setMoveKey( spep_4 + 80, 1, 1.2, -18.7 , 0 );
setMoveKey( spep_4 + 82, 1, 1, -38.9 , 0 );
setMoveKey( spep_4 + 84, 1, 0.8, -61.1 , 0 );
setMoveKey( spep_4 + 86, 1, 0.6, -68.3 , 0 );
setMoveKey( spep_4 + 88, 1, 0.4, -93.6 , 0 );
setMoveKey( spep_4 + 90, 1, 0.3, -111.2 , 0 );
setMoveKey( spep_4 + 92, 1, 0.2, -136.1 , 0 );
setMoveKey( spep_4 + 94, 1, 0.1, -159.6 , 0 );
setMoveKey( spep_4 + 96, 1, 0, -192.6 , 0 );
setMoveKey( spep_4 + 98, 1, -11.8, -255.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 6, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 8, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 12, 1, 0.38, 0.38 );
setScaleKey( spep_4 + 14, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 16, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 20, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 22, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 26, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 28, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 32, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 34, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 37, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 38, 1, 2.67, 2.67 );
setScaleKey( spep_4 + 40, 1, 2.23, 2.23 );
setScaleKey( spep_4 + 42, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 44, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 46, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 48, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 50, 1, 1.15, 1.15 );
setScaleKey( spep_4 + 52, 1, 1, 1 );
setScaleKey( spep_4 + 54, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 56, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 58, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 60, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 62, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 64, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 66, 1, 0.42, 0.42 );
setScaleKey( spep_4 + 68, 1, 0.36, 0.36 );
setScaleKey( spep_4 + 70, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 72, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 74, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 76, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 78, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 80, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 82, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 84, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 86, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 88, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 92, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 94, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 98, 1, 0.1, 0.1 );

setRotateKey( spep_4 + 0, 1, -100 );
setRotateKey( spep_4 + 2, 1, -98.4 );
setRotateKey( spep_4 + 4, 1, -96.1 );
setRotateKey( spep_4 + 6, 1, -93.2 );
setRotateKey( spep_4 + 8, 1, -89.7 );
setRotateKey( spep_4 + 10, 1, -85.8 );
setRotateKey( spep_4 + 12, 1, -81.4 );
setRotateKey( spep_4 + 14, 1, -76.8 );
setRotateKey( spep_4 + 16, 1, -71.8 );
setRotateKey( spep_4 + 18, 1, -66.5 );
setRotateKey( spep_4 + 20, 1, -61.1 );
setRotateKey( spep_4 + 22, 1, -55.4 );
setRotateKey( spep_4 + 24, 1, -49.7 );
setRotateKey( spep_4 + 26, 1, -43.8 );
setRotateKey( spep_4 + 28, 1, -37.9 );
setRotateKey( spep_4 + 30, 1, -32.1 );
setRotateKey( spep_4 + 32, 1, -26.2 );
setRotateKey( spep_4 + 34, 1, -20.5 );
setRotateKey( spep_4 + 37, 1, -15 );
setRotateKey( spep_4 + 38, 1, -9.9 );
setRotateKey( spep_4 + 40, 1, -78.2 );
setRotateKey( spep_4 + 42, 1, -118.3 );
setRotateKey( spep_4 + 44, 1, -148.9 );
setRotateKey( spep_4 + 46, 1, -174.3 );
setRotateKey( spep_4 + 48, 1, -195.5 );
setRotateKey( spep_4 + 50, 1, -213.6 );
setRotateKey( spep_4 + 52, 1, -229.2 );
setRotateKey( spep_4 + 54, 1, -243 );
setRotateKey( spep_4 + 56, 1, -255.1 );
setRotateKey( spep_4 + 58, 1, -266 );
setRotateKey( spep_4 + 60, 1, -275.7 );
setRotateKey( spep_4 + 62, 1, -284.5 );
setRotateKey( spep_4 + 64, 1, -292.5 );
setRotateKey( spep_4 + 66, 1, -299.7 );
setRotateKey( spep_4 + 68, 1, -306.3 );
setRotateKey( spep_4 + 70, 1, -312.4 );
setRotateKey( spep_4 + 72, 1, -318 );
setRotateKey( spep_4 + 74, 1, -323.1 );
setRotateKey( spep_4 + 76, 1, -327.8 );
setRotateKey( spep_4 + 78, 1, -332.3 );
setRotateKey( spep_4 + 80, 1, -336.4 );
setRotateKey( spep_4 + 82, 1, -340.2 );
setRotateKey( spep_4 + 84, 1, -343.9 );
setRotateKey( spep_4 + 86, 1, -347.4 );
setRotateKey( spep_4 + 88, 1, -350.7 );
setRotateKey( spep_4 + 90, 1, -353.8 );
setRotateKey( spep_4 + 92, 1, -357 );
setRotateKey( spep_4 + 94, 1, -360 );
setRotateKey( spep_4 + 96, 1, -363 );
setRotateKey( spep_4 + 98, 1, -365.9 );

--SE
playSe( spep_4, SE_04); --なんか飛んでいく
playSe( spep_4+38, 1011); --なんか当たる
playSe( spep_4+94, 1023); --なんか当たる


-- ** エフェクト等 ** --
entryFade(spep_4+30, 4, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

-- ダメージ表示
dealDamage(spep_4+100);
entryFade( spep_4+174, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+184);



end




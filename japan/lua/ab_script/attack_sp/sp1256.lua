--1015950 超サイヤ人4悟空_メテオスマッシュ
--sp_effect_a2_00101

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
--味方
SP_01=	152904	;--	突進
SP_02=	152905	;--	格闘　手前
SP_03=	152906	;--	格闘　奥
SP_04=	152907	;--	ため
SP_05=	152908	;--	発射
SP_06=	152909	;--	被弾
SP_07=	152910	;--	爆発

--てき
SP_01x=	152904	;--	突進
SP_02x=	152911	;--	格闘　手前(敵)
SP_03x=	152912	;--	格闘　奥(敵)
SP_04x=	152907	;--	ため
SP_05x=	152908	;--	発射
SP_06x=	152909	;--	被弾
SP_07x=	152910	;--	爆発
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
--ため
------------------------------------------------------
spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01,148,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+148,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+148,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+146,tame,255);
setEffAlphaKey(spep_0+147,tame,255);
setEffAlphaKey(spep_0+148,tame,0);

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 112,  906, 57, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 112, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 112, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_0 + 166, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_0 + 112, shuchusen1, 0 );
setEffRotateKey( spep_0 + 166, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 112, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 147, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 0 );

--SE
SE=playSe(spep_0,1044);
stopSe(spep_0+58,SE,0);
playSe(spep_0+66,50);
playSe(spep_0+110,1018);

--黒背景
entryFadeBg(spep_0, 0, 148, 0, 0, 0, 0, 200);  -- 黒　背

--白フェード
--entryFade( spep_0 + 158, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+148;
------------------------------------------------------
--腹パン
------------------------------------------------------
--エフェクト
harapan_f=entryEffectLife(spep_1,SP_02,462,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, harapan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 462, harapan_f, 0, 0 , 0 );

setEffScaleKey(spep_1,harapan_f,1.0,1.0);
setEffScaleKey(spep_1+462,harapan_f,1.0,1.0);

setEffRotateKey(spep_1,harapan_f,0);
setEffRotateKey(spep_1+462,harapan_f,0);

setEffAlphaKey(spep_1,harapan_f,255);
setEffAlphaKey(spep_1+460,harapan_f,255);
setEffAlphaKey(spep_1+461,harapan_f,255);
setEffAlphaKey(spep_1+462,harapan_f,0);

--エフェクト
harapan_b=entryEffectLife(spep_1,SP_03,462,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, harapan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 462, harapan_b, 0, 0 , 0 );

setEffScaleKey(spep_1,harapan_b,1.0,1.0);
setEffScaleKey(spep_1+462,harapan_b,1.0,1.0);

setEffRotateKey(spep_1,harapan_b,0);
setEffRotateKey(spep_1+462,harapan_b,0);

setEffAlphaKey(spep_1,harapan_b,255);
setEffAlphaKey(spep_1+460,harapan_b,255);
setEffAlphaKey(spep_1+461,harapan_b,255);
setEffAlphaKey(spep_1+462,harapan_b,0);

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  906, 56, 0x80, -1, 0, 170.9, 224.7 );

setEffMoveKey( spep_1 + 0, ryusen1, 170.9, 224.7 , 0 );
setEffMoveKey( spep_1 + 56, ryusen1, 170.9, 224.7 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.6, 1.47 );
setEffScaleKey( spep_1 + 56, ryusen1, 1.6, 1.47 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 56, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 56, ryusen1, 255 );


ryusen1a = entryEffectLife( spep_1 + 0,  906, 230, 0x80, -1, -111.4, 224.7 );

setEffMoveKey( spep_1 + 0, ryusen1a, -111.4, 224.7 );
setEffMoveKey( spep_1 + 230, ryusen1a, -111.4, 224.7 );

setEffScaleKey( spep_1 + 0, ryusen1a, 1.7, 1.7 );
setEffScaleKey( spep_1 + 230, ryusen1a, 1.7, 1.8 );

setEffRotateKey( spep_1 + 0, ryusen1a, 0 );
setEffRotateKey( spep_1 + 230, ryusen1a, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1a, 0 );
setEffAlphaKey( spep_1 + 149, ryusen1a, 0 );
setEffAlphaKey( spep_1 + 150, ryusen1a, 255 );
setEffAlphaKey( spep_1 + 230, ryusen1a, 255 );

--てき
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1 -3 + 446, 1, 0 );

changeAnime( spep_1 -3 + 0, 1, 100 );


setMoveKey( spep_1  + 0, 1, 221.8, 217.9 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 220.4, 219.3 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 222.7, 217 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 220, 219.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 222.8, 215.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 221.9, 215.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 222.2, 215.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 220.7, 215.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 221.7, 215.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 218.9, 216.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 220.8, 213.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 217.7, 214.7 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 218, 214.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 216.2, 212.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 216.6, 211.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 214, 209.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 213.5, 209.9 , 0 );

setScaleKey( spep_1  + 0, 1, 0.07, 0.07 );
--setScaleKey( spep_1 -3 + 8, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 10, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 16, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 18, 1, 0.09, 0.09 );
setScaleKey( spep_1 -3 + 20, 1, 0.09, 0.09 );
setScaleKey( spep_1 -3 + 22, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 24, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 26, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 28, 1, 0.12, 0.12 );
setScaleKey( spep_1 -3 + 30, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 32, 1, 0.13, 0.13 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 32, 1, 0 );

--SE
SE1=playSe(spep_1,44);

--黒背景
entryFadeBg(spep_1, 0, 460, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+30 ; --エンドフェイズのフレーム数を置き換える
    
    stopSe(SP_dodge-14,SE1,0);
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,213.5, 209.9 , 0 );
    setScaleKey(SP_dodge , 1, 0.13, 0.13);
    setRotateKey(SP_dodge,   1, 0 );
    
  --キャラクターの固定
  setMoveKey(SP_dodge+10, 1,213.5, 209.9 , 0 );
  setScaleKey(SP_dodge+10 , 1,0.13, 0.13);
  setRotateKey(SP_dodge+10,   1, 0 );
    
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
    changeAnime( spep_1 -3 + 58, 1, 108 );
    changeAnime( spep_1 -3 + 118, 1, 6 );
    changeAnime( spep_1 -2 + 150, 1, 107 );
    changeAnime( spep_1 -2 + 185, 1, 7 );
    changeAnime( spep_1 -3 + 206, 1, 6 );
    changeAnime( spep_1 -3 + 212, 1, 105 );
    changeAnime( spep_1 -3 + 230, 1, 4 );
    changeAnime( spep_1 -3 + 300, 1, 107);
    changeAnime( spep_1 -2 + 327, 1, 7);
    changeAnime( spep_1 -3 + 332, 1, 5);
    changeAnime( spep_1 -3 + 354, 1, 108);

setMoveKey( spep_1 -3 + 34, 1, 210.4, 206.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 210.2, 204.5 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 205.4, 201.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 204.4, 197.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 197.4, 191.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 193.7, 188.6 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 181, 177.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 174.2, 169.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 151.9, 140.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 132.5, 121.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 119.4, 108.2 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 124.5, 112.3 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -10.8, 90.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 47, 104.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -51.4, 69 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 35.2, 77.7 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -38.1, 58.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 19.5, 68.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -6.1, 96.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 12.2, 72.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -40.1, 86.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 17.5, 64.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -31.1, 83.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 23.3, 59.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -4.4, 56.2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -3.6, 46.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -3.1, 39.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -3.8, 36.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -3.9, 33.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 2.1, 36.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 7.6, 40.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 14.3, 40.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 18, 44 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 21.3, 46.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 23.8, 49.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 28.4, 49.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 31.3, 51.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 32.6, 53.5 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 34.3, 54.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 35.5, 55.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 36.2, 56.4 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 36.4, 56.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -21.7, 20.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -50.4, 19.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -97.2, -48.2 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -289.6, -180.7 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -440.8, -295.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -621.2, -447.1 , 0 );
setMoveKey( spep_1 -3 + 131, 1, -792.3, -563.1 , 0 );
setMoveKey( spep_1 -3 + 149, 1, -792.3, -563.1 , 0 );

setMoveKey( spep_1 -3 + 150, 1, -233.4, 368.1 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -232.9, 367.2 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -233.6, 368.5 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -231.9, 365.7 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -232.7, 367 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -230.2, 363.3 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -229.9, 363.3 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -226.2, 357.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -225.9, 357.5 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -220.7, 349.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -218.7, 347.3 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -210.8, 335.2 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -206, 329 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -191.7, 307.5 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -179.4, 290.7 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -147.5, 243.7 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -95.1, 170.5 , 0 );
setMoveKey( spep_1  + 182, 1, -66, 125.8 , 0 );

setMoveKey( spep_1  + 183, 1, 428.4, -743.4 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 181, -416 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 75.6, -211.1 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 151.3, -358.4 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 111.8, -281.6 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 72.3, -204.8 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 102.7, -264.8 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 134.9, -326.3 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 99.4, -258.3 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 65.8, -191.9 , 0 );

setMoveKey( spep_1 -3 + 206, 1, 155.7, -240.1 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 90, -156.5 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 32.8, -81.1 , 0 );

setMoveKey( spep_1 -3 + 212, 1, -31.4, 122.2 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -163.8, 268.6 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -200.6, 309.3 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -221.7, 332.6 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -234.6, 346.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -242.4, 355.5 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -246.7, 360.3 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -248.5, 362.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -248.7, 362.6 , 0 );
setMoveKey( spep_1 -3 + 229, 1, -1048.7, 362.6 , 0 );

setMoveKey( spep_1 -3 + 230, 1, 710.8, -749.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 469.7, -461.9 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 356.9, -327.3 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 281.4, -237.4 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 226.3, -171.6 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 184.3, -121.6 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 152, -83 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 126.9, -53.1 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 107.7, -30.2 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 93.2, -12.9 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 82.8, -0.5 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 75.9, 7.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 72, 12.4 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 70.7, 13.7 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 69.6, 15 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 68.6, 16.2 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 67.6, 17.4 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 66.6, 18.5 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 65.7, 19.6 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 64.8, 20.6 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 64, 21.6 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 63.2, 22.5 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 62.4, 23.4 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 61.7, 24.2 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 61, 25 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 60.4, 25.8 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 59.8, 26.5 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 59.2, 27.1 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 58.7, 27.7 , 0 );

setMoveKey( spep_1 -3 + 300, 1, 47.6, 25.3 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 72.5, 32.4 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 89.9, -17.3 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 193.5, -96.6 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 279.6, -229.1 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 385.2, -314.8 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 419.8, -373 , 0 );
setMoveKey( spep_1 -3 + 314, 1, 474.5, -433.4 , 0 );
setMoveKey( spep_1 -3 + 316, 1, 495.8, -451.3 , 0 );
setMoveKey( spep_1 -3 + 318, 1, 521.2, -478.6 , 0 );
setMoveKey( spep_1 -3 + 320, 1, 535.6, -494.4 , 0 );
setMoveKey( spep_1 -3 + 322, 1, 546.7, -506.6 , 0 );
setMoveKey( spep_1 -3 + 324, 1, 555.7, -516.5 , 0 );
setMoveKey( spep_1  + 324, 1, 763, -724.3 , 0 );

setMoveKey( spep_1  + 325, 1, -144.3, -1111.2 , 0 );
--setMoveKey( spep_1 -3 + 331, 1, -184.3, -1311.2 , 0 );
setMoveKey( spep_1 -3 + 331, 1, -96.6, -574 , 0 );

setMoveKey( spep_1 -3 + 332, 1, -44, -113.2 , 0 );
setMoveKey( spep_1 -3 + 334, 1, -32.2, -77.6 , 0 );
setMoveKey( spep_1 -3 + 336, 1, -25, -55.9 , 0 );
setMoveKey( spep_1 -3 + 338, 1, -19.9, -40.7 , 0 );
setMoveKey( spep_1 -3 + 340, 1, -16.1, -29.3 , 0 );
setMoveKey( spep_1 -3 + 342, 1, -13.2, -20.6 , 0 );
setMoveKey( spep_1 -3 + 344, 1, -10.9, -13.8 , 0 );
setMoveKey( spep_1 -3 + 346, 1, -9.1, -8.4 , 0 );
setMoveKey( spep_1 -3 + 348, 1, -7.7, -4.1 , 0 );
setMoveKey( spep_1 -3 + 350, 1, -6.5, -0.7 , 0 );
setMoveKey( spep_1 -3 + 352, 1, -5.4, 2.3 , 0 );

setMoveKey( spep_1 -3 + 354, 1, 18.3, 54 , 0 );
setMoveKey( spep_1 -3 + 356, 1, 36.9, 37.6 , 0 );
setMoveKey( spep_1 -3 + 358, 1, 2, 13 , 0 );
setMoveKey( spep_1 -3 + 360, 1, 13.4, 22.1 , 0 );
setMoveKey( spep_1 -3 + 362, 1, -10.5, 11.5 , 0 );
setMoveKey( spep_1 -3 + 364, 1, 7.9, 22.6 , 0 );
setMoveKey( spep_1 -3 + 366, 1, -2.4, 1.5 , 0 );
setMoveKey( spep_1 -3 + 368, 1, 0.5, 21.3 , 0 );
setMoveKey( spep_1 -3 + 370, 1, -9.4, 4.6 , 0 );
setMoveKey( spep_1 -3 + 372, 1, -3.4, 18 , 0 );
setMoveKey( spep_1 -3 + 374, 1, -4.7, 11.6 , 0 );
setMoveKey( spep_1 -3 + 376, 1, -5.1, 11.2 , 0 );
setMoveKey( spep_1 -3 + 378, 1, -5.5, 10.9 , 0 );
setMoveKey( spep_1 -3 + 380, 1, -5.8, 10.6 , 0 );
setMoveKey( spep_1 -3 + 382, 1, -6, 10.4 , 0 );
setMoveKey( spep_1 -3 + 384, 1, -6.2, 10.3 , 0 );
setMoveKey( spep_1 -3 + 386, 1, -6.4, 10.2 , 0 );
setMoveKey( spep_1 -3 + 388, 1, -6.5, 10.1 , 0 );
setMoveKey( spep_1 -3 + 390, 1, -6.6, 10 , 0 );
setMoveKey( spep_1 -3 + 392, 1, -6.6, 10 , 0 );
setMoveKey( spep_1 -3 + 394, 1, -6.7, 9.9 , 0 );
setMoveKey( spep_1 -3 + 396, 1, -6.7, 9.9 , 0 );
setMoveKey( spep_1 -3 + 398, 1, -6.8, 9.9 , 0 );
setMoveKey( spep_1 -3 + 400, 1, -6.8, 9.8 , 0 );
setMoveKey( spep_1 -3 + 406, 1, -6.8, 9.8 , 0 );
setMoveKey( spep_1 -3 + 408, 1, -6.7, 9.7 , 0 );
setMoveKey( spep_1 -3 + 410, 1, -27.6, -7 , 0 );
setMoveKey( spep_1 -3 + 412, 1, 16.4, 12.6 , 0 );
setMoveKey( spep_1 -3 + 414, 1, -17.6, -6.2 , 0 );
setMoveKey( spep_1 -3 + 416, 1, 7.1, 15.6 , 0 );
setMoveKey( spep_1 -3 + 418, 1, -19.4, 17.4 , 0 );
setMoveKey( spep_1 -3 + 420, 1, -3.1, -1.2 , 0 );
setMoveKey( spep_1 -3 + 422, 1, -6.1, 21.6 , 0 );
setMoveKey( spep_1 -3 + 424, 1, -16, 1.1 , 0 );
setMoveKey( spep_1 -3 + 426, 1, -7.3, 26.8 , 0 );
setMoveKey( spep_1 -3 + 428, 1, -12.4, -0.7 , 0 );
setMoveKey( spep_1 -3 + 430, 1, 3, 14.9 , 0 );
setMoveKey( spep_1 -3 + 432, 1, -11.8, 3.7 , 0 );
setMoveKey( spep_1 -3 + 434, 1, 0, 13.9 , 0 );
setMoveKey( spep_1 -3 + 436, 1, -15.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 438, 1, 3.4, 10.5 , 0 );
setMoveKey( spep_1 -3 + 440, 1, -15.9, 3.9 , 0 );
setMoveKey( spep_1 -3 + 442, 1, -0.4, 14.4 , 0 );
setMoveKey( spep_1 -3 + 444, 1, -10.5, 3.3 , 0 );
setMoveKey( spep_1 -3 + 446, 1, -2.8, 17.6 , 0 );

setScaleKey( spep_1 -3 + 34, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 36, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 40, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 44, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 48, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 50, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 52, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 54, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 57, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 58, 1, 3.19, 3.19 );
setScaleKey( spep_1 -3 + 60, 1, 2.91, 2.91 );
setScaleKey( spep_1 -3 + 62, 1, 3.51, 3.51 );
setScaleKey( spep_1 -3 + 64, 1, 3.02, 3.02 );
setScaleKey( spep_1 -3 + 66, 1, 3.47, 3.47 );
setScaleKey( spep_1 -3 + 68, 1, 3.14, 3.14 );
setScaleKey( spep_1 -3 + 70, 1, 3.5, 3.5 );
setScaleKey( spep_1 -3 + 72, 1, 3.22, 3.22 );
setScaleKey( spep_1 -3 + 74, 1, 3.53, 3.53 );
setScaleKey( spep_1 -3 + 76, 1, 3.23, 3.23 );
setScaleKey( spep_1 -3 + 78, 1, 3.36, 3.36 );
setScaleKey( spep_1 -3 + 80, 1, 2.95, 2.95 );
setScaleKey( spep_1 -3 + 82, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 84, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 86, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 88, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 90, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 92, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 94, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 96, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 98, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 100, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 104, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 106, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 122, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 124, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 126, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 128, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 131, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 149, 1, 1.45, 1.45 );

setScaleKey( spep_1 -3 + 150, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 156, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 158, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 162, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 164, 1, 0.09, 0.09 );
setScaleKey( spep_1 -3 + 166, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 168, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 170, 1, 0.12, 0.11 );
setScaleKey( spep_1 -3 + 172, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 174, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 176, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 178, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 180, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 182, 1, 0.48, 0.48 );
setScaleKey( spep_1  + 182, 1, 0.57, 0.57 );

setScaleKey( spep_1  + 183, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 188, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 190, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 192, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 194, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 196, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 198, 1, 1.99, 1.99 );
setScaleKey( spep_1 -3 + 200, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 202, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 204, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 205, 1, 1.68, 1.68 );

setScaleKey( spep_1 -3 + 206, 1, 5.0, 5.0 );----ここら辺調整が必要
setScaleKey( spep_1 -3 + 208, 1, 4.44, 4.44 );
setScaleKey( spep_1 -3 + 210, 1, 3.46, 3.45 );

setScaleKey( spep_1 -3 + 212, 1, 2.65, 2.64 );
setScaleKey( spep_1 -3 + 214, 1, 1.17, 1.16 );
setScaleKey( spep_1 -3 + 216, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 218, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 220, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 222, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 224, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 226, 1, 0.22, 0.22 );
setScaleKey( spep_1 -3 + 228, 1, 0.21, 0.21 );

setScaleKey( spep_1 -3 + 230, 1, 4.12, 4.12 );
setScaleKey( spep_1 -3 + 232, 1, 3.34, 3.34 );
setScaleKey( spep_1 -3 + 234, 1, 2.98, 2.98 );
setScaleKey( spep_1 -3 + 236, 1, 2.73, 2.73 );
setScaleKey( spep_1 -3 + 238, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 240, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 242, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 244, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 246, 1, 2.17, 2.17 );
setScaleKey( spep_1 -3 + 248, 1, 2.12, 2.12 );
setScaleKey( spep_1 -3 + 250, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 252, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 254, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 258, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 260, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 264, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 266, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 270, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 272, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 280, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 282, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 286, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 299, 1, 2.01, 2.01 );

setScaleKey( spep_1 -3 + 300, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 302, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 304, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 306, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 308, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 310, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 312, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 314, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 316, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 318, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 320, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 322, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 324, 1, 1.83, 1.83 );
setScaleKey( spep_1  + 324, 1, 1.84, 1.84 );

setScaleKey( spep_1  + 325, 1, 4.41, 4.41 );
setScaleKey( spep_1 -3 + 331, 1, 2.55, 2.55 );

setScaleKey( spep_1 -3 + 332, 1, 3.87, 3.87 );
setScaleKey( spep_1 -3 + 334, 1, 3.39, 3.39 );
setScaleKey( spep_1 -3 + 336, 1, 3.1, 3.1 );
setScaleKey( spep_1 -3 + 338, 1, 2.9, 2.9 );
setScaleKey( spep_1 -3 + 340, 1, 2.74, 2.74 );
setScaleKey( spep_1 -3 + 342, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 344, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 346, 1, 2.46, 2.46 );
setScaleKey( spep_1 -3 + 348, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 350, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 352, 1, 2.32, 2.32 );

setScaleKey( spep_1 -3 + 354, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 356, 1, 2, 2 );
setScaleKey( spep_1 -3 + 358, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 360, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 362, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 364, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 366, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 368, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 370, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 372, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 374, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 376, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 378, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 380, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 382, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 384, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 386, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 388, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 390, 1, 0.06, 0.06 );
setScaleKey( spep_1 -3 + 394, 1, 0.06, 0.06 );
setScaleKey( spep_1 -3 + 396, 1, 0.05, 0.05 );
setScaleKey( spep_1 -3 + 446, 1, 0.05, 0.05 );

setRotateKey( spep_1 -3 + 90, 1, 0 );
setRotateKey( spep_1 -3 + 92, 1, 2.1 );
setRotateKey( spep_1 -3 + 94, 1, 4 );
setRotateKey( spep_1 -3 + 96, 1, 5.8 );
setRotateKey( spep_1 -3 + 98, 1, 7.4 );
setRotateKey( spep_1 -3 + 100, 1, 8.8 );
setRotateKey( spep_1 -3 + 102, 1, 10.1 );
setRotateKey( spep_1 -3 + 104, 1, 11.2 );
setRotateKey( spep_1 -3 + 106, 1, 12.1 );
setRotateKey( spep_1 -3 + 108, 1, 12.9 );
setRotateKey( spep_1 -3 + 110, 1, 13.4 );
setRotateKey( spep_1 -3 + 112, 1, 13.9 );
setRotateKey( spep_1 -3 + 114, 1, 14.1 );
setRotateKey( spep_1 -3 + 117, 1, 14.2 );
setRotateKey( spep_1 -3 + 118, 1, 24.7 );
setRotateKey( spep_1 -3 + 120, 1, 4.3 );
setRotateKey( spep_1 -3 + 122, 1, 1.4 );
setRotateKey( spep_1 -3 + 124, 1, -4.6 );
setRotateKey( spep_1 -3 + 126, 1, -10.7 );
setRotateKey( spep_1 -3 + 128, 1, -17 );
setRotateKey( spep_1 -3 + 131, 1, -23.4 );
setRotateKey( spep_1 -3 + 149, 1, -23.4 );

setRotateKey( spep_1 -3 + 150, 1, 16.8 );
setRotateKey( spep_1 -3 + 152, 1, 16.9 );
setRotateKey( spep_1  + 182, 1, 16.9 );

setRotateKey( spep_1  + 183, 1, 90 );
setRotateKey( spep_1 -3 + 204, 1, 90 );

setRotateKey( spep_1 -3 + 206, 1, 34.1 );
setRotateKey( spep_1 -3 + 210, 1, 34.1 );
setRotateKey( spep_1 -3 + 211, 1, 34.1 );

setRotateKey( spep_1 -3 + 212, 1, -56.7 );
setRotateKey( spep_1 -3 + 228, 1, -56.7 );

setRotateKey( spep_1 -3 + 230, 1, 10.8 );
setRotateKey( spep_1 -3 + 286, 1, 10.8 );

setRotateKey( spep_1 -3 + 300, 1, 10.8 );
setRotateKey( spep_1 -3 + 302, 1, 10.9 );
setRotateKey( spep_1 -3 + 304, 1, 11.4 );
setRotateKey( spep_1 -3 + 306, 1, 12.6 );
setRotateKey( spep_1 -3 + 308, 1, 14.1 );
setRotateKey( spep_1 -3 + 310, 1, 15.3 );
setRotateKey( spep_1 -3 + 312, 1, 16.1 );
setRotateKey( spep_1 -3 + 314, 1, 16.7 );
setRotateKey( spep_1 -3 + 316, 1, 17.1 );
setRotateKey( spep_1 -3 + 318, 1, 17.4 );
setRotateKey( spep_1 -3 + 320, 1, 17.6 );
setRotateKey( spep_1 -3 + 322, 1, 17.8 );
setRotateKey( spep_1 -3 + 324, 1, 17.9 );
setRotateKey( spep_1  + 324, 1, 18 );

setRotateKey( spep_1 +325 , 1, 122.1 );
setRotateKey( spep_1 -3 + 331, 1, 122.1 );

setRotateKey( spep_1 -3 + 332, 1, 0 );
setRotateKey( spep_1 -3 + 352, 1, 0 );

setRotateKey( spep_1 -3 + 354, 1, 26.8 );
setRotateKey( spep_1 -3 + 446, 1, 26.8 );

--文字エントリー
ctzun = entryEffectLife( spep_1 -3 + 58,  10016, 18, 0x80, -1, 0, 52, 372.1 );--ズンッ

setEffMoveKey( spep_1 -3 + 58, ctzun, 52, 372.1 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctzun, 46.4, 405.2 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctzun, 45.8, 406.5 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctzun, 45.2, 407.9 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctzun, 44.6, 409.2 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctzun, 44, 410.6 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctzun, 43.4, 412 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzun, 41.9, 415.3 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzun, 40.3, 418.7 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzun, 38.8, 422.1 , 0 );

setEffScaleKey( spep_1 -3 + 58, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_1 -3 + 60, ctzun, 2.99, 2.99 );
setEffScaleKey( spep_1 -3 + 62, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_1 -3 + 64, ctzun, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 66, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_1 -3 + 68, ctzun, 3.05, 3.05 );
setEffScaleKey( spep_1 -3 + 70, ctzun, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 72, ctzun, 3.11, 3.11 );
setEffScaleKey( spep_1 -3 + 74, ctzun, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 76, ctzun, 3.19, 3.19 );

setEffRotateKey( spep_1 -3 + 58, ctzun, -6.5 );
setEffRotateKey( spep_1 -3 + 76, ctzun, -6.5 );

setEffAlphaKey( spep_1 -3 + 58, ctzun, 255 );
setEffAlphaKey( spep_1 -3 + 70, ctzun, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctzun, 170 );
setEffAlphaKey( spep_1 -3 + 74, ctzun, 85 );
setEffAlphaKey( spep_1 -3 + 76, ctzun, 0 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 118,  921, 30, 0x80, -1, 0, 16.1, 20 );--斜め

setEffMoveKey( spep_1 -3 + 118, ryusen2, 16.1, 20 , 0 );
setEffMoveKey( spep_1 -3 + 148, ryusen2, 16.1, 20 , 0 );

setEffScaleKey( spep_1 -3 + 118, ryusen2, 1.7, 1.42 );
setEffScaleKey( spep_1 -3 + 148, ryusen2, 1.7, 1.42 );

setEffRotateKey( spep_1 -3 + 118, ryusen2, -46.8 );-- -44.8
setEffRotateKey( spep_1 -3 + 148, ryusen2, -46.8 );

setEffAlphaKey( spep_1 -3 + 118, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 148, ryusen2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 -3 + 118,  10020, 14, 0x80, -1, 0, -133.5, 302.8 );--バキッ

setEffMoveKey( spep_1 -3 + 118, ctbaki, -133.5, 302.8 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctbaki, -144.1, 307.4 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctbaki, -143, 308.7 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctbaki, -154.8, 313.8 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctbaki, -149.8, 313 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctbaki, -157.5, 317.6 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctbaki, -159.5, 328.5 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctbaki, -158.9, 332.1 , 0 );

setEffScaleKey( spep_1 -3 + 118, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 120, ctbaki, 1.33, 1.33 );
setEffScaleKey( spep_1 -3 + 122, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_1 -3 + 124, ctbaki, 1.43, 1.43 );
setEffScaleKey( spep_1 -3 + 126, ctbaki, 1.48, 1.48 );
setEffScaleKey( spep_1 -3 + 128, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 130, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 132, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 -3 + 118, ctbaki, -25 );
setEffRotateKey( spep_1 -3 + 132, ctbaki, -25 );

--文字エントリー
ctsyun = entryEffectLife( spep_1 -3 + 140,  10011, 130, 0x100, -1, 0, 187.9, 331.1 );--シュンッ

setEffMoveKey( spep_1 -3 + 140, ctsyun, 187.9, 331.1 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctsyun, 185.6, 339 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctsyun, 184.2, 343.7 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctsyun, 183.8, 345.3 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctsyun, 183.8, 345.3 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctsyun, 183.8, 345.2 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctsyun, 183.8, 345.2 , 0 );

setEffScaleKey( spep_1 -3 + 140, ctsyun, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 142, ctsyun, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 144, ctsyun, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 146, ctsyun, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 148, ctsyun, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 150, ctsyun, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 152, ctsyun, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 154, ctsyun, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 140, ctsyun, 16.7 );
setEffRotateKey( spep_1 -3 + 154, ctsyun, 16.7 );

setEffAlphaKey( spep_1 -3 + 140, ctsyun, 255 );
setEffAlphaKey( spep_1 -3 + 146, ctsyun, 255 );
setEffAlphaKey( spep_1 -3 + 148, ctsyun, 239 );
setEffAlphaKey( spep_1 -3 + 150, ctsyun, 191 );
setEffAlphaKey( spep_1 -3 + 152, ctsyun, 112 );
setEffAlphaKey( spep_1 -3 + 154, ctsyun, 0 );


--文字エントリー
ctsyun2 = entryEffectLife( spep_1 -3 + 162,  10011, 14, 0x100, -1, 0, 234.8, 206.8 );--シュンッ

setEffMoveKey( spep_1 -3 + 162, ctsyun2, 234.8, 206.8 , 0 );
setEffMoveKey( spep_1 -3 + 164, ctsyun2, 233.3, 214.8 , 0 );
setEffMoveKey( spep_1 -3 + 166, ctsyun2, 232.4, 219.5 , 0 );
setEffMoveKey( spep_1 -3 + 168, ctsyun2, 232.1, 221.1 , 0 );
setEffMoveKey( spep_1 -3 + 172, ctsyun2, 232.1, 221.1 , 0 );
setEffMoveKey( spep_1 -3 + 174, ctsyun2, 232.1, 221.2 , 0 );
setEffMoveKey( spep_1 -3 + 176, ctsyun2, 232.1, 221.2 , 0 );

setEffScaleKey( spep_1 -3 + 162, ctsyun2, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 164, ctsyun2, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 166, ctsyun2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 168, ctsyun2, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 170, ctsyun2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 172, ctsyun2, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 174, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 176, ctsyun2, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 162, ctsyun2, 23 );
setEffRotateKey( spep_1 -3 + 164, ctsyun2, 22.9 );
setEffRotateKey( spep_1 -3 + 172, ctsyun2, 22.9 );
setEffRotateKey( spep_1 -3 + 174, ctsyun2, 23 );
setEffRotateKey( spep_1 -3 + 176, ctsyun2, 23 );

setEffAlphaKey( spep_1 -3 + 162, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 168, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 170, ctsyun2, 239 );
setEffAlphaKey( spep_1 -3 + 172, ctsyun2, 191 );
setEffAlphaKey( spep_1 -3 + 174, ctsyun2, 112 );
setEffAlphaKey( spep_1 -3 + 176, ctsyun2, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_1 -3 + 188,  10021, 22, 0x100, -1, 0, 143.5, 352.9 );--バゴォッ

setEffMoveKey( spep_1 -3 + 188, ctbago, 143.5, 352.9 , 0 );
setEffMoveKey( spep_1 -3 + 190, ctbago, 135.7, 398.7 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctbago, 144.2, 421.6 , 0 );
setEffMoveKey( spep_1 -3 + 194, ctbago, 133.7, 418.2 , 0 );
setEffMoveKey( spep_1 -3 + 196, ctbago, 150.7, 431.5 , 0 );
setEffMoveKey( spep_1 -3 + 198, ctbago, 135.4, 428.5 , 0 );
setEffMoveKey( spep_1 -3 + 200, ctbago, 148.3, 426.4 , 0 );
setEffMoveKey( spep_1 -3 + 202, ctbago, 133.2, 439.4 , 0 );
setEffMoveKey( spep_1 -3 + 204, ctbago, 139.9, 438.4 , 0 );
setEffMoveKey( spep_1 -3 + 206, ctbago, 130, 434.7 , 0 );
setEffMoveKey( spep_1 -3 + 208, ctbago, 150.9, 454.7 , 0 );
setEffMoveKey( spep_1 -3 + 210, ctbago, 154.4, 469.5 , 0 );

setEffScaleKey( spep_1 -3 + 188, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_1 -3 + 190, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 192, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_1 -3 + 194, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_1 -3 + 196, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_1 -3 + 198, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 200, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_1 -3 + 202, ctbago, 2.67, 2.67 );
setEffScaleKey( spep_1 -3 + 204, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_1 -3 + 206, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 208, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_1 -3 + 210, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_1 -3 + 188, ctbago, 11.6 );
setEffRotateKey( spep_1 -3 + 190, ctbago, 8.6 );
setEffRotateKey( spep_1 -3 + 192, ctbago, 7.6 );
setEffRotateKey( spep_1 -3 + 210, ctbago, 7.6 );

setEffAlphaKey( spep_1 -3 + 188, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 204, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 206, ctbago, 227 );
setEffAlphaKey( spep_1 -3 + 208, ctbago, 142 );
setEffAlphaKey( spep_1 -3 + 210, ctbago, 0 );

--文字エントリー
ctsyun3 = entryEffectLife( spep_1 -3 + 256,  10011, 14, 0x100, -1, 0, -197.7, 470.6 );--シュンッ

setEffMoveKey( spep_1 -3 + 256, ctsyun3, -197.7, 470.6 , 0 );
setEffMoveKey( spep_1 -3 + 258, ctsyun3, -203.4, 476.4 , 0 );
setEffMoveKey( spep_1 -3 + 260, ctsyun3, -206.8, 480 , 0 );
setEffMoveKey( spep_1 -3 + 262, ctsyun3, -207.9, 481.2 , 0 );
setEffMoveKey( spep_1 -3 + 266, ctsyun3, -207.9, 481.2 , 0 );
setEffMoveKey( spep_1 -3 + 268, ctsyun3, -207.8, 481.2 , 0 );
setEffMoveKey( spep_1 -3 + 270, ctsyun3, -207.8, 481.1 , 0 );

setEffScaleKey( spep_1 -3 + 256, ctsyun3, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 258, ctsyun3, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 260, ctsyun3, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 262, ctsyun3, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 264, ctsyun3, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 266, ctsyun3, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 268, ctsyun3, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 270, ctsyun3, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 256, ctsyun3, -10.3 );
setEffRotateKey( spep_1 -3 + 270, ctsyun3, -10.3 );

setEffAlphaKey( spep_1 -3 + 256, ctsyun3, 255 );
setEffAlphaKey( spep_1 -3 + 262, ctsyun3, 255 );
setEffAlphaKey( spep_1 -3 + 264, ctsyun3, 239 );
setEffAlphaKey( spep_1 -3 + 266, ctsyun3, 191 );
setEffAlphaKey( spep_1 -3 + 268, ctsyun3, 112 );
setEffAlphaKey( spep_1 -3 + 270, ctsyun3, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 298,  10019, 70, 0x100, -1, 0, 188.9, 296.7 );--ドンッ

setEffMoveKey( spep_1 -3 + 298, ctdon, 188.9, 296.7 , 0 );
setEffMoveKey( spep_1 -3 + 300, ctdon, 189.5, 331.1 , 0 );
setEffMoveKey( spep_1 -3 + 302, ctdon, 203.3, 348.9 , 0 );
setEffMoveKey( spep_1 -3 + 304, ctdon, 202.5, 361.7 , 0 );
setEffMoveKey( spep_1 -3 + 306, ctdon, 206.9, 348.3 , 0 );
setEffMoveKey( spep_1 -3 + 308, ctdon, 198.1, 356.8 , 0 );
setEffMoveKey( spep_1 -3 + 310, ctdon, 208.6, 358.8 , 0 );
setEffMoveKey( spep_1 -3 + 312, ctdon, 209.2, 359.4 , 0 );

setEffScaleKey( spep_1 -3 + 298, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 -3 + 300, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_1 -3 + 302, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 -3 + 304, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 306, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 308, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 310, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 312, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_1 -3 + 298, ctdon, 41.4 );
setEffRotateKey( spep_1 -3 + 300, ctdon, 42 );
setEffRotateKey( spep_1 -3 + 302, ctdon, 42.5 );
setEffRotateKey( spep_1 -3 + 312, ctdon, 42.5 );

setEffAlphaKey( spep_1 -3 + 298, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 308, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 310, ctdon, 128 );
setEffAlphaKey( spep_1 -3 + 312, ctdon, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_1 -3 + 354,  10019, 14, 0x100, -1, 0, -13.1, 300.7 );--ドンッ

setEffMoveKey( spep_1 -3 + 354, ctdon2, -13.1, 300.7 , 0 );
setEffMoveKey( spep_1 -3 + 356, ctdon2, -28.7, 331.4 , 0 );
setEffMoveKey( spep_1 -3 + 358, ctdon2, -24.8, 353.6 , 0 );
setEffMoveKey( spep_1 -3 + 360, ctdon2, -31.4, 364.5 , 0 );
setEffMoveKey( spep_1 -3 + 362, ctdon2, -21.3, 354.7 , 0 );
setEffMoveKey( spep_1 -3 + 364, ctdon2, -33, 358.1 , 0 );
setEffMoveKey( spep_1 -3 + 366, ctdon2, -24.6, 364.8 , 0 );
setEffMoveKey( spep_1 -3 + 368, ctdon2, -24.4, 365.5 , 0 );

setEffScaleKey( spep_1 -3 + 354, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_1 -3 + 356, ctdon2, 1.64, 1.64 );
setEffScaleKey( spep_1 -3 + 358, ctdon2, 1.98, 1.98 );
setEffScaleKey( spep_1 -3 + 360, ctdon2, 2, 2 );
setEffScaleKey( spep_1 -3 + 362, ctdon2, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 364, ctdon2, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 366, ctdon2, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 368, ctdon2, 2.07, 2.07 );

setEffRotateKey( spep_1 -3 + 354, ctdon2, 13.7 );
setEffRotateKey( spep_1 -3 + 356, ctdon2, 14.2 );
setEffRotateKey( spep_1 -3 + 358, ctdon2, 14.7 );

setEffAlphaKey( spep_1 -3 + 354, ctdon2, 255 );
setEffAlphaKey( spep_1 -3 + 364, ctdon2, 255 );
setEffAlphaKey( spep_1 -3 + 366, ctdon2, 128 );
setEffAlphaKey( spep_1 -3 + 368, ctdon2, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 -3 + 410,  10018, 54, 0x100, -1, 0, -16.7, 360.9 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 410, ctdogon, -16.7, 360.9 , 0 );
setEffMoveKey( spep_1 -3 + 412, ctdogon, -19.1, 375.9 , 0 );
setEffMoveKey( spep_1 -3 + 414, ctdogon, -15.1, 396.7 , 0 );
setEffMoveKey( spep_1 -3 + 416, ctdogon, -15.3, 396.8 , 0 );
setEffMoveKey( spep_1 -3 + 418, ctdogon, -18.4, 393.2 , 0 );
setEffMoveKey( spep_1 -3 + 420, ctdogon, -14.4, 404 , 0 );
setEffMoveKey( spep_1 -3 + 422, ctdogon, -13.2, 398.1 , 0 );
setEffMoveKey( spep_1 -3 + 424, ctdogon, -18.3, 403.6 , 0 );
setEffMoveKey( spep_1 -3 + 426, ctdogon, -9.6, 403.8 , 0 );
setEffMoveKey( spep_1 -3 + 428, ctdogon, -17.2, 402.3 , 0 );
setEffMoveKey( spep_1 -3 + 430, ctdogon, -13.6, 406.5 , 0 );
setEffMoveKey( spep_1 -3 + 432, ctdogon, -16.9, 402 , 0 );
setEffMoveKey( spep_1 -3 + 434, ctdogon, -12.9, 412.7 , 0 );
setEffMoveKey( spep_1 -3 + 436, ctdogon, -11.7, 405.9 , 0 );
setEffMoveKey( spep_1 -3 + 438, ctdogon, -17.2, 410.9 , 0 );
setEffMoveKey( spep_1 -3 + 440, ctdogon, -8.3, 410.5 , 0 );
setEffMoveKey( spep_1 -3 + 442, ctdogon, -16.3, 408.4 , 0 );
setEffMoveKey( spep_1 -3 + 444, ctdogon, -12.6, 412.1 , 0 );
setEffMoveKey( spep_1 -3 + 446, ctdogon, -16.1, 406.9 , 0 );
setEffMoveKey( spep_1 -3 + 448, ctdogon, -12.1, 417.1 , 0 );
setEffMoveKey( spep_1 -3 + 450, ctdogon, -11, 409.6 , 0 );
setEffMoveKey( spep_1 -3 + 452, ctdogon, -16.7, 414.1 , 0 );
setEffMoveKey( spep_1 -3 + 454, ctdogon, -7.8, 413.1 , 0 );
setEffMoveKey( spep_1 -3 + 456, ctdogon, -12.4, 413.6 , 0 );
setEffMoveKey( spep_1 -3 + 458, ctdogon, -17.8, 411.6 , 0 );
setEffMoveKey( spep_1 -3 + 460, ctdogon, -15.3, 425.5 , 0 );
setEffMoveKey( spep_1 -3 + 462, ctdogon, -15.7, 420.4 , 0 );
setEffMoveKey( spep_1 -3 + 464, ctdogon, -23.3, 428.2 , 0 );
--setEffMoveKey( spep_1 -3 + 466, ctdogon, -14.7, 429.7 , 0 );
--setEffMoveKey( spep_1 -3 + 468, ctdogon, -25.1, 429 , 0 );
--setEffMoveKey( spep_1 -3 + 470, ctdogon, -22, 434.9 , 0 );
--setEffMoveKey( spep_1 -3 + 472, ctdogon, -27.2, 430.3 , 0 );
--setEffMoveKey( spep_1 -3 + 474, ctdogon, -23.2, 443.7 , 0 );
--setEffMoveKey( spep_1 -3 + 476, ctdogon, -22.7, 435.8 , 0 );
--setEffMoveKey( spep_1 -3 + 478, ctdogon, -30, 442.2 , 0 );
--setEffMoveKey( spep_1 -3 + 480, ctdogon, -19.7, 441.7 , 0 );
--setEffMoveKey( spep_1 -3 + 482, ctdogon, -30, 439 , 0 );
--setEffMoveKey( spep_1 -3 + 484, ctdogon, -25.8, 443.3 , 0 );
--setEffMoveKey( spep_1 -3 + 486, ctdogon, -25.9, 443.4 , 0 );

setEffScaleKey( spep_1 -3 + 410, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_1 -3 + 412, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 414, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_1 -3 + 416, ctdogon, 3.27, 3.27 );
setEffScaleKey( spep_1 -3 + 418, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_1 -3 + 420, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_1 -3 + 422, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_1 -3 + 424, ctdogon, 3.37, 3.37 );
setEffScaleKey( spep_1 -3 + 426, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_1 -3 + 428, ctdogon, 3.42, 3.42 );
setEffScaleKey( spep_1 -3 + 430, ctdogon, 3.44, 3.44 );
setEffScaleKey( spep_1 -3 + 432, ctdogon, 3.46, 3.46 );
setEffScaleKey( spep_1 -3 + 434, ctdogon, 3.47, 3.47 );
setEffScaleKey( spep_1 -3 + 436, ctdogon, 3.49, 3.49 );
setEffScaleKey( spep_1 -3 + 438, ctdogon, 3.5, 3.5 );
setEffScaleKey( spep_1 -3 + 440, ctdogon, 3.51, 3.51 );
setEffScaleKey( spep_1 -3 + 442, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 444, ctdogon, 3.53, 3.53 );
setEffScaleKey( spep_1 -3 + 446, ctdogon, 3.54, 3.54 );
setEffScaleKey( spep_1 -3 + 448, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 450, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 452, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_1 -3 + 456, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_1 -3 + 458, ctdogon, 3.66, 3.66 );
setEffScaleKey( spep_1 -3 + 460, ctdogon, 3.76, 3.76 );
setEffScaleKey( spep_1 -3 + 462, ctdogon, 3.84, 3.84 );
setEffScaleKey( spep_1 -3 + 464, ctdogon, 3.93, 3.93 );
--setEffScaleKey( spep_1 -3 + 466, ctdogon, 4, 4 );
--setEffScaleKey( spep_1 -3 + 468, ctdogon, 4.07, 4.07 );
--setEffScaleKey( spep_1 -3 + 470, ctdogon, 4.13, 4.13 );
--setEffScaleKey( spep_1 -3 + 472, ctdogon, 4.18, 4.18 );
--setEffScaleKey( spep_1 -3 + 474, ctdogon, 4.22, 4.22 );
--setEffScaleKey( spep_1 -3 + 476, ctdogon, 4.26, 4.26 );
--setEffScaleKey( spep_1 -3 + 478, ctdogon, 4.29, 4.29 );
--setEffScaleKey( spep_1 -3 + 480, ctdogon, 4.32, 4.32 );
--setEffScaleKey( spep_1 -3 + 482, ctdogon, 4.34, 4.34 );
--setEffScaleKey( spep_1 -3 + 484, ctdogon, 4.35, 4.35 );
--setEffScaleKey( spep_1 -3 + 486, ctdogon, 4.35, 4.35 );

setEffRotateKey( spep_1 -3 + 410, ctdogon, 0.5 );
setEffRotateKey( spep_1 -3 + 464, ctdogon, 0.5 );

setEffAlphaKey( spep_1 -3 + 410, ctdogon, 255);
setEffAlphaKey( spep_1 -3 + 438, ctdogon, 255);
setEffAlphaKey( spep_1 -3 + 440, ctdogon, 222);
setEffAlphaKey( spep_1 -3 + 442, ctdogon, 192);
setEffAlphaKey( spep_1 -3 + 444, ctdogon, 163);
setEffAlphaKey( spep_1 -3 + 446, ctdogon, 137);
setEffAlphaKey( spep_1 -3 + 448, ctdogon, 92 );
setEffAlphaKey( spep_1 -3 + 450, ctdogon, 72 );
setEffAlphaKey( spep_1 -3 + 452, ctdogon, 56 );
setEffAlphaKey( spep_1 -3 + 454, ctdogon, 41 );
setEffAlphaKey( spep_1 -3 + 456, ctdogon, 28 );
setEffAlphaKey( spep_1 -3 + 458, ctdogon, 18 );
setEffAlphaKey( spep_1 -3 + 460, ctdogon, 10 );
setEffAlphaKey( spep_1 -3 + 462, ctdogon, 5 );
setEffAlphaKey( spep_1 -3 + 463, ctdogon, 1 );
setEffAlphaKey( spep_1 -3 + 464, ctdogon, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 150,  906, 36, 0x80, -1, 0, -326.6, 415.4 );

setEffMoveKey( spep_1 + 150, shuchusen2, -326.6, 415.4 , 0 );
setEffMoveKey( spep_1 + 184, shuchusen2, -326.6, 415.4 , 0 );
setEffMoveKey( spep_1 + 186, shuchusen2, -346.6, 385.4 , 0 );

setEffScaleKey( spep_1 + 150, shuchusen2, 1.72, 1.78 );
setEffScaleKey( spep_1 + 186, shuchusen2, 1.72, 1.78 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 186, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 150, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 186, shuchusen2, 255 );


--集中線
shuchusen3 = entryEffectLife( spep_1 + 358,  906, 94, 0x100, -1, 0, 0, 01 );

setEffMoveKey( spep_1 + 358, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 452, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 358, shuchusen3, 1.02, 1.09 );
setEffScaleKey( spep_1 + 452, shuchusen3, 1.02, 1.09 );

setEffRotateKey( spep_1 + 358, shuchusen3, 0 );
setEffRotateKey( spep_1 + 452, shuchusen3, 0 );

setEffAlphaKey( spep_1 + 358, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 452, shuchusen3, 255 );

--SE
stopSe(spep_1+34,SE1,0);
playSe(spep_1+36,1018);
playSe(spep_1+56,1011);
playSe(spep_1+116,1010);
playSe(spep_1+138,43);
playSe(spep_1+160,43);
playSe(spep_1+186,1011);
playSe(spep_1+204,44);
playSe(spep_1+254,43);
SE2=playSe(spep_1+284,15);
stopSe(spep_1+294,SE2,0);
playSe(spep_1+296,1049);
SE3=playSe(spep_1+326,44);
stopSe(spep_1+350,SE3,0);
playSe(spep_1+352,1049);
setSeVolume(spep_1+352,1049,250);
playSe(spep_1+408,1023);


--白フェード
--entryFade( spep_1 + 472, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+460;
------------------------------------------------------
--見下ろす
------------------------------------------------------
--エフェクト
overlook=entryEffectLife(spep_2,SP_04,110,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, overlook, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, overlook, 0, 0 , 0 );

setEffScaleKey(spep_2,overlook,1.0,1.0);
setEffScaleKey(spep_2+110,overlook,1.0,1.0);

setEffRotateKey(spep_2,overlook,0);
setEffRotateKey(spep_2+110,overlook,0);

setEffAlphaKey(spep_2,overlook,255);
setEffAlphaKey(spep_2+110,overlook,255);

--***カットイン***32
speff = entryEffect(  spep_2+16,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+16,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +28, 190006, 74, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +28,  ctgogo,  0,  530);
setEffMoveKey(  spep_2 +4+98,  ctgogo,  0,  530);

setEffAlphaKey( spep_2  + 28, ctgogo, 0 );
setEffAlphaKey( spep_2  + 29, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 30, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 81, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 +4 + 94, ctgogo, 128 );
setEffAlphaKey( spep_2 +4 + 96, ctgogo, 64 );
setEffAlphaKey( spep_2 +4 + 98, ctgogo, 0 );

setEffRotateKey(  spep_2 +28,  ctgogo,  0);
setEffRotateKey(  spep_2 +4+98,  ctgogo,  0);

setEffScaleKey(  spep_2 +28,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +4+82,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_2 +4 + 98, ctgogo, 1.07, 1.07 );

--集中線
shuchusen4 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen4, 1.16, 1.16 );
setEffScaleKey( spep_2 + 108, shuchusen4, 1.16, 1.16 );

setEffRotateKey( spep_2 + 0, shuchusen4, 180 );
setEffRotateKey( spep_2 + 108, shuchusen4, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen4, 255 );

--SE
playSe(spep_2+16,1018);

-- ** エフェクト等 ** --
entryFade(spep_2+98, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_3=spep_2+110;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
--------------------------------------
--発射
--------------------------------------
--エフェクト
bim=entryEffectLife(spep_4,SP_05,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, bim, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, bim, 0, 0 , 0 );

setEffScaleKey(spep_4,bim,1.0,1.0);
setEffScaleKey(spep_4+80,bim,1.0,1.0);

setEffRotateKey(spep_4,bim,0);
setEffRotateKey(spep_4+80,bim,0);

setEffAlphaKey(spep_4,bim,255);
setEffAlphaKey(spep_4+80,bim,255);

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 0,  10012, 80, 0x100, -1, 0, -83.7, -43.4 );--ズオッ

setEffMoveKey( spep_4 + 0, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 2, ctzuo, -78.1, -45.9 , 0 );
setEffMoveKey( spep_4 + 4, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 6, ctzuo, -72.9, -48.2 , 0 );
setEffMoveKey( spep_4 + 8, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, -72.2, -48.6 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, -83.8, -43.4 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, -71.4, -49 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, -83.8, -43.5 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, -70.7, -49.3 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, -83.8, -43.4 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, -70, -49.6 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, -68.8, -50.1 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, -83.7, -43.5 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, -67.3, -50.8 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, -66.6, -51.1 , 0 );

setEffScaleKey( spep_4 + 0, ctzuo, 0.43, 0.43 );
setEffScaleKey( spep_4 + 2, ctzuo, 0.82, 0.82 );
setEffScaleKey( spep_4 + 4, ctzuo, 1.2, 1.2 );
setEffScaleKey( spep_4 + 6, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_4 + 8, ctzuo, 1.65, 1.65 );
setEffScaleKey( spep_4 + 10, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_4 + 12, ctzuo, 1.76, 1.76 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.81, 1.81 );
setEffScaleKey( spep_4 + 16, ctzuo, 1.87, 1.87 );
setEffScaleKey( spep_4 + 18, ctzuo, 1.92, 1.92 );
setEffScaleKey( spep_4 + 20, ctzuo, 1.98, 1.98 );
setEffScaleKey( spep_4 + 22, ctzuo, 2.03, 2.03 );
setEffScaleKey( spep_4 + 24, ctzuo, 2.09, 2.09 );
setEffScaleKey( spep_4 + 26, ctzuo, 2.2, 2.2 );
setEffScaleKey( spep_4 + 28, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_4 + 30, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_4 + 32, ctzuo, 2.53, 2.53 );

setEffRotateKey( spep_4 + 0, ctzuo, -23.5 );
setEffRotateKey( spep_4 + 2, ctzuo, -23.6 );
setEffRotateKey( spep_4 + 32, ctzuo, -23.6 );

setEffAlphaKey( spep_4 + 0, ctzuo, 255 );
setEffAlphaKey( spep_4 + 24, ctzuo, 255 );
setEffAlphaKey( spep_4 + 26, ctzuo, 191 );
setEffAlphaKey( spep_4 + 28, ctzuo, 128 );
setEffAlphaKey( spep_4 + 30, ctzuo, 64 );
setEffAlphaKey( spep_4 + 32, ctzuo, 0 );

--流線
ryusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 400 , 0 );
setEffMoveKey( spep_4 + 80, ryusen3, 0, 400 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 2.49, 0.88 );
setEffScaleKey( spep_4 + 80, ryusen3, 2.49, 0.88 );

setEffRotateKey( spep_4 + 0, ryusen3, 90 );
setEffRotateKey( spep_4 + 80, ryusen3, 90 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 80, ryusen3, 255 );

--SE
playSe(spep_4,1022);

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+80;

--------------------------------------
--当たる
--------------------------------------
--エフェクト
hit=entryEffectLife(spep_5,SP_06,70,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, hit, 0, 0 , 0 );

setEffScaleKey(spep_5,hit,1.0,1.0);
setEffScaleKey(spep_5+70,hit,1.0,1.0);

setEffRotateKey(spep_5,hit,0);
setEffRotateKey(spep_5+70,hit,0);

setEffAlphaKey(spep_5,hit,255);
setEffAlphaKey(spep_5+70,hit,255);

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 68, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.66, 1.94 );
setEffScaleKey( spep_5 + 68, shuchusen5, 1.66, 1.94 );

setEffRotateKey( spep_5 + 0, shuchusen5, 180 );
setEffRotateKey( spep_5 + 68, shuchusen5, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 68, shuchusen5, 255 );

--SE
playSe(spep_5,1022);
playSe(spep_5+38,1067);

-- ** エフェクト等 ** --
entryFade(spep_5+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 70, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_6=spep_5+70;

--------------------------------------
--爆発
--------------------------------------
--エフェクト
explosion=entryEffect(spep_6,SP_07,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, explosion, 0, 0 , 0 );

setEffScaleKey(spep_6,explosion,1.1,1.2);
setEffScaleKey(spep_6+200,explosion,1.1,1.2);

setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+200,explosion,0);

setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+200,explosion,255);

--集中線
shuchusen6 = entryEffectLife( spep_6 + 0,  906, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1.06, 1.34 );
setEffScaleKey( spep_6 + 200, shuchusen6, 1.06, 1.34 );

setEffRotateKey( spep_6 + 0, shuchusen6, 180 );
setEffRotateKey( spep_6 + 200, shuchusen6, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 200, shuchusen6, 255 );

--黒背景
entryFadeBg(spep_6, 0, 200, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(spep_6,1024);

-- ダメージ表示
dealDamage(spep_6+2);
entryFade( spep_6+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+194);

else 
------------------------------------------------------
--てき
------------------------------------------------------
------------------------------------------------------
--ため
------------------------------------------------------
spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01x,148,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+148,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+148,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+146,tame,255);
setEffAlphaKey(spep_0+147,tame,255);
setEffAlphaKey(spep_0+148,tame,0);

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 112,  906, 57, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 112, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 112, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_0 + 166, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_0 + 112, shuchusen1, 0 );
setEffRotateKey( spep_0 + 166, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 112, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 147, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 0 );

--SE
SE=playSe(spep_0,1044);
stopSe(spep_0+58,SE,0);
playSe(spep_0+66,50);
playSe(spep_0+110,1018);

--黒背景
entryFadeBg(spep_0, 0, 148, 0, 0, 0, 0, 200);  -- 黒　背

--白フェード
--entryFade( spep_0 + 158, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+148;
------------------------------------------------------
--腹パン
------------------------------------------------------
--エフェクト
harapan_f=entryEffectLife(spep_1,SP_02x,462,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, harapan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 462, harapan_f, 0, 0 , 0 );

setEffScaleKey(spep_1,harapan_f,1.0,1.0);
setEffScaleKey(spep_1+462,harapan_f,1.0,1.0);

setEffRotateKey(spep_1,harapan_f,0);
setEffRotateKey(spep_1+462,harapan_f,0);

setEffAlphaKey(spep_1,harapan_f,255);
setEffAlphaKey(spep_1+460,harapan_f,255);
setEffAlphaKey(spep_1+461,harapan_f,255);
setEffAlphaKey(spep_1+462,harapan_f,0);

--エフェクト
harapan_b=entryEffectLife(spep_1,SP_03x,462,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, harapan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 462, harapan_b, 0, 0 , 0 );

setEffScaleKey(spep_1,harapan_b,1.0,1.0);
setEffScaleKey(spep_1+462,harapan_b,1.0,1.0);

setEffRotateKey(spep_1,harapan_b,0);
setEffRotateKey(spep_1+462,harapan_b,0);

setEffAlphaKey(spep_1,harapan_b,255);
setEffAlphaKey(spep_1+460,harapan_b,255);
setEffAlphaKey(spep_1+461,harapan_b,255);
setEffAlphaKey(spep_1+462,harapan_b,0);

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  906, 56, 0x80, -1, 0, 170.9, 224.7 );

setEffMoveKey( spep_1 + 0, ryusen1, 170.9, 224.7 , 0 );
setEffMoveKey( spep_1 + 56, ryusen1, 170.9, 224.7 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.6, 1.47 );
setEffScaleKey( spep_1 + 56, ryusen1, 1.6, 1.47 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 56, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 56, ryusen1, 255 );

ryusen1a = entryEffectLife( spep_1 + 0,  906, 230, 0x80, -1,  -111.4, 224.7 );

setEffMoveKey( spep_1 + 0, ryusen1a,  -111.4, 224.7 );
setEffMoveKey( spep_1 + 230, ryusen1a,  -111.4, 224.7 );

setEffScaleKey( spep_1 + 0, ryusen1a, 1.7, 1.7 );
setEffScaleKey( spep_1 + 230, ryusen1a, 1.7, 1.7 );

setEffRotateKey( spep_1 + 0, ryusen1a, 0 );
setEffRotateKey( spep_1 + 230, ryusen1a, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1a, 0 );
setEffAlphaKey( spep_1 + 149, ryusen1a, 0 );
setEffAlphaKey( spep_1 + 150, ryusen1a, 255 );
setEffAlphaKey( spep_1 + 230, ryusen1a, 255 );

--てき
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1 -3 + 446, 1, 0 );

changeAnime( spep_1  + 0, 1, 100 );


setMoveKey( spep_1  + 0, 1, 221.8, 217.9 , 0 );
setMoveKey( spep_1 -3 + 2, 1, 220.4, 219.3 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 222.7, 217 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 220, 219.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 222.8, 215.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 221.9, 215.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 222.2, 215.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 220.7, 215.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 221.7, 215.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 218.9, 216.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 220.8, 213.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 217.7, 214.7 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 218, 214.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 216.2, 212.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 216.6, 211.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 214, 209.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 213.5, 209.9 , 0 );

setScaleKey( spep_1  + 0, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 8, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 10, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 16, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 18, 1, 0.09, 0.09 );
setScaleKey( spep_1 -3 + 20, 1, 0.09, 0.09 );
setScaleKey( spep_1 -3 + 22, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 24, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 26, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 28, 1, 0.12, 0.12 );
setScaleKey( spep_1 -3 + 30, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 32, 1, 0.13, 0.13 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 32, 1, 0 );

--SE
SE1=playSe(spep_1,44);

--黒背景
entryFadeBg(spep_1, 0, 460, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+30 ; --エンドフェイズのフレーム数を置き換える
    
    stopSe(SP_dodge-14,SE1,0);
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,213.5, 209.9 , 0 );
    setScaleKey(SP_dodge , 1, 0.13, 0.13);
    setRotateKey(SP_dodge,   1, 0 );
    
  --キャラクターの固定
  setMoveKey(SP_dodge+10, 1,213.5, 209.9 , 0 );
  setScaleKey(SP_dodge+10 , 1,0.13, 0.13);
  setRotateKey(SP_dodge+10,   1, 0 );
    
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
    changeAnime( spep_1 -3 + 58, 1, 108 );
    changeAnime( spep_1 -3 + 118, 1, 6 );
    changeAnime( spep_1 -2 + 150, 1, 107 );
    changeAnime( spep_1 -2 + 185, 1, 7 );
    changeAnime( spep_1 -3 + 206, 1, 6 );
    changeAnime( spep_1 -3 + 212, 1, 105 );
    changeAnime( spep_1 -3 + 230, 1, 4 );
    changeAnime( spep_1 -3 + 300, 1, 107);
    changeAnime( spep_1 -2 + 327, 1, 7);
    changeAnime( spep_1 -3 + 332, 1, 5);
    changeAnime( spep_1 -3 + 354, 1, 108);

setMoveKey( spep_1 -3 + 34, 1, 210.4, 206.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 210.2, 204.5 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 205.4, 201.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 204.4, 197.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 197.4, 191.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 193.7, 188.6 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 181, 177.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 174.2, 169.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 151.9, 140.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 132.5, 121.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 119.4, 108.2 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 124.5, 112.3 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -10.8, 90.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 47, 104.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -51.4, 69 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 35.2, 77.7 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -38.1, 58.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 19.5, 68.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -6.1, 96.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 12.2, 72.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -40.1, 86.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 17.5, 64.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -31.1, 83.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 23.3, 59.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -4.4, 56.2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -3.6, 46.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -3.1, 39.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -3.8, 36.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -3.9, 33.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 2.1, 36.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 7.6, 40.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 14.3, 40.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 18, 44 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 21.3, 46.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 23.8, 49.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 28.4, 49.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 31.3, 51.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 32.6, 53.5 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 34.3, 54.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 35.5, 55.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 36.2, 56.4 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 36.4, 56.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -21.7, 20.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -50.4, 19.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -97.2, -48.2 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -289.6, -180.7 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -440.8, -295.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -621.2, -447.1 , 0 );
setMoveKey( spep_1 -3 + 131, 1, -792.3, -563.1 , 0 );
setMoveKey( spep_1 -3 + 149, 1, -792.3, -563.1 , 0 );

setMoveKey( spep_1 -3 + 150, 1, -233.4, 368.1 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -232.9, 367.2 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -233.6, 368.5 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -231.9, 365.7 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -232.7, 367 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -230.2, 363.3 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -229.9, 363.3 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -226.2, 357.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -225.9, 357.5 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -220.7, 349.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -218.7, 347.3 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -210.8, 335.2 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -206, 329 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -191.7, 307.5 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -179.4, 290.7 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -147.5, 243.7 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -95.1, 170.5 , 0 );
setMoveKey( spep_1  + 182, 1, -66, 125.8 , 0 );

setMoveKey( spep_1  + 183, 1, 428.4, -743.4 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 181, -416 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 75.6, -211.1 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 151.3, -358.4 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 111.8, -281.6 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 72.3, -204.8 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 102.7, -264.8 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 134.9, -326.3 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 99.4, -258.3 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 65.8, -191.9 , 0 );

setMoveKey( spep_1 -3 + 206, 1, 155.7, -240.1 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 90, -156.5 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 32.8, -81.1 , 0 );

setMoveKey( spep_1 -3 + 212, 1, -31.4, 122.2 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -163.8, 268.6 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -200.6, 309.3 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -221.7, 332.6 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -234.6, 346.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -242.4, 355.5 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -246.7, 360.3 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -248.5, 362.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -248.7, 362.6 , 0 );
setMoveKey( spep_1 -3 + 229, 1, -1048.7, 362.6 , 0 );

setMoveKey( spep_1 -3 + 230, 1, 710.8, -749.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 469.7, -461.9 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 356.9, -327.3 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 281.4, -237.4 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 226.3, -171.6 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 184.3, -121.6 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 152, -83 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 126.9, -53.1 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 107.7, -30.2 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 93.2, -12.9 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 82.8, -0.5 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 75.9, 7.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 72, 12.4 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 70.7, 13.7 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 69.6, 15 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 68.6, 16.2 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 67.6, 17.4 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 66.6, 18.5 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 65.7, 19.6 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 64.8, 20.6 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 64, 21.6 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 63.2, 22.5 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 62.4, 23.4 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 61.7, 24.2 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 61, 25 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 60.4, 25.8 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 59.8, 26.5 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 59.2, 27.1 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 58.7, 27.7 , 0 );

setMoveKey( spep_1 -3 + 300, 1, 47.6, 25.3 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 72.5, 32.4 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 89.9, -17.3 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 193.5, -96.6 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 279.6, -229.1 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 385.2, -314.8 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 419.8, -373 , 0 );
setMoveKey( spep_1 -3 + 314, 1, 474.5, -433.4 , 0 );
setMoveKey( spep_1 -3 + 316, 1, 495.8, -451.3 , 0 );
setMoveKey( spep_1 -3 + 318, 1, 521.2, -478.6 , 0 );
setMoveKey( spep_1 -3 + 320, 1, 535.6, -494.4 , 0 );
setMoveKey( spep_1 -3 + 322, 1, 546.7, -506.6 , 0 );
setMoveKey( spep_1 -3 + 324, 1, 555.7, -516.5 , 0 );
setMoveKey( spep_1  + 324, 1, 763, -724.3 , 0 );

setMoveKey( spep_1  + 325, 1, -144.3, -1111.2 , 0 );
--setMoveKey( spep_1 -3 + 331, 1, -184.3, -1311.2 , 0 );
setMoveKey( spep_1 -3 + 331, 1, -96.6, -574 , 0 );

setMoveKey( spep_1 -3 + 332, 1, -44, -113.2 , 0 );
setMoveKey( spep_1 -3 + 334, 1, -32.2, -77.6 , 0 );
setMoveKey( spep_1 -3 + 336, 1, -25, -55.9 , 0 );
setMoveKey( spep_1 -3 + 338, 1, -19.9, -40.7 , 0 );
setMoveKey( spep_1 -3 + 340, 1, -16.1, -29.3 , 0 );
setMoveKey( spep_1 -3 + 342, 1, -13.2, -20.6 , 0 );
setMoveKey( spep_1 -3 + 344, 1, -10.9, -13.8 , 0 );
setMoveKey( spep_1 -3 + 346, 1, -9.1, -8.4 , 0 );
setMoveKey( spep_1 -3 + 348, 1, -7.7, -4.1 , 0 );
setMoveKey( spep_1 -3 + 350, 1, -6.5, -0.7 , 0 );
setMoveKey( spep_1 -3 + 352, 1, -5.4, 2.3 , 0 );

setMoveKey( spep_1 -3 + 354, 1, 18.3, 54 , 0 );
setMoveKey( spep_1 -3 + 356, 1, 36.9, 37.6 , 0 );
setMoveKey( spep_1 -3 + 358, 1, 2, 13 , 0 );
setMoveKey( spep_1 -3 + 360, 1, 13.4, 22.1 , 0 );
setMoveKey( spep_1 -3 + 362, 1, -10.5, 11.5 , 0 );
setMoveKey( spep_1 -3 + 364, 1, 7.9, 22.6 , 0 );
setMoveKey( spep_1 -3 + 366, 1, -2.4, 1.5 , 0 );
setMoveKey( spep_1 -3 + 368, 1, 0.5, 21.3 , 0 );
setMoveKey( spep_1 -3 + 370, 1, -9.4, 4.6 , 0 );
setMoveKey( spep_1 -3 + 372, 1, -3.4, 18 , 0 );
setMoveKey( spep_1 -3 + 374, 1, -4.7, 11.6 , 0 );
setMoveKey( spep_1 -3 + 376, 1, -5.1, 11.2 , 0 );
setMoveKey( spep_1 -3 + 378, 1, -5.5, 10.9 , 0 );
setMoveKey( spep_1 -3 + 380, 1, -5.8, 10.6 , 0 );
setMoveKey( spep_1 -3 + 382, 1, -6, 10.4 , 0 );
setMoveKey( spep_1 -3 + 384, 1, -6.2, 10.3 , 0 );
setMoveKey( spep_1 -3 + 386, 1, -6.4, 10.2 , 0 );
setMoveKey( spep_1 -3 + 388, 1, -6.5, 10.1 , 0 );
setMoveKey( spep_1 -3 + 390, 1, -6.6, 10 , 0 );
setMoveKey( spep_1 -3 + 392, 1, -6.6, 10 , 0 );
setMoveKey( spep_1 -3 + 394, 1, -6.7, 9.9 , 0 );
setMoveKey( spep_1 -3 + 396, 1, -6.7, 9.9 , 0 );
setMoveKey( spep_1 -3 + 398, 1, -6.8, 9.9 , 0 );
setMoveKey( spep_1 -3 + 400, 1, -6.8, 9.8 , 0 );
setMoveKey( spep_1 -3 + 406, 1, -6.8, 9.8 , 0 );
setMoveKey( spep_1 -3 + 408, 1, -6.7, 9.7 , 0 );
setMoveKey( spep_1 -3 + 410, 1, -27.6, -7 , 0 );
setMoveKey( spep_1 -3 + 412, 1, 16.4, 12.6 , 0 );
setMoveKey( spep_1 -3 + 414, 1, -17.6, -6.2 , 0 );
setMoveKey( spep_1 -3 + 416, 1, 7.1, 15.6 , 0 );
setMoveKey( spep_1 -3 + 418, 1, -19.4, 17.4 , 0 );
setMoveKey( spep_1 -3 + 420, 1, -3.1, -1.2 , 0 );
setMoveKey( spep_1 -3 + 422, 1, -6.1, 21.6 , 0 );
setMoveKey( spep_1 -3 + 424, 1, -16, 1.1 , 0 );
setMoveKey( spep_1 -3 + 426, 1, -7.3, 26.8 , 0 );
setMoveKey( spep_1 -3 + 428, 1, -12.4, -0.7 , 0 );
setMoveKey( spep_1 -3 + 430, 1, 3, 14.9 , 0 );
setMoveKey( spep_1 -3 + 432, 1, -11.8, 3.7 , 0 );
setMoveKey( spep_1 -3 + 434, 1, 0, 13.9 , 0 );
setMoveKey( spep_1 -3 + 436, 1, -15.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 438, 1, 3.4, 10.5 , 0 );
setMoveKey( spep_1 -3 + 440, 1, -15.9, 3.9 , 0 );
setMoveKey( spep_1 -3 + 442, 1, -0.4, 14.4 , 0 );
setMoveKey( spep_1 -3 + 444, 1, -10.5, 3.3 , 0 );
setMoveKey( spep_1 -3 + 446, 1, -2.8, 17.6 , 0 );

setScaleKey( spep_1 -3 + 34, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 36, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 40, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 44, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 48, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 50, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 52, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 54, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 57, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 58, 1, 3.19, 3.19 );
setScaleKey( spep_1 -3 + 60, 1, 2.91, 2.91 );
setScaleKey( spep_1 -3 + 62, 1, 3.51, 3.51 );
setScaleKey( spep_1 -3 + 64, 1, 3.02, 3.02 );
setScaleKey( spep_1 -3 + 66, 1, 3.47, 3.47 );
setScaleKey( spep_1 -3 + 68, 1, 3.14, 3.14 );
setScaleKey( spep_1 -3 + 70, 1, 3.5, 3.5 );
setScaleKey( spep_1 -3 + 72, 1, 3.22, 3.22 );
setScaleKey( spep_1 -3 + 74, 1, 3.53, 3.53 );
setScaleKey( spep_1 -3 + 76, 1, 3.23, 3.23 );
setScaleKey( spep_1 -3 + 78, 1, 3.36, 3.36 );
setScaleKey( spep_1 -3 + 80, 1, 2.95, 2.95 );
setScaleKey( spep_1 -3 + 82, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 84, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 86, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 88, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 90, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 92, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 94, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 96, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 98, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 100, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 104, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 106, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 122, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 124, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 126, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 128, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 131, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 149, 1, 1.45, 1.45 );

setScaleKey( spep_1 -3 + 150, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 156, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 158, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 162, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 164, 1, 0.09, 0.09 );
setScaleKey( spep_1 -3 + 166, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 168, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 170, 1, 0.12, 0.11 );
setScaleKey( spep_1 -3 + 172, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 174, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 176, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 178, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 180, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 182, 1, 0.48, 0.48 );
setScaleKey( spep_1  + 182, 1, 0.57, 0.57 );

setScaleKey( spep_1  + 183, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 188, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 190, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 192, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 194, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 196, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 198, 1, 1.99, 1.99 );
setScaleKey( spep_1 -3 + 200, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 202, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 204, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 205, 1, 1.68, 1.68 );

setScaleKey( spep_1 -3 + 206, 1, 5.0, 5.0 );----ここら辺調整が必要
setScaleKey( spep_1 -3 + 208, 1, 4.44, 4.44 );
setScaleKey( spep_1 -3 + 210, 1, 3.46, 3.45 );

setScaleKey( spep_1 -3 + 212, 1, 2.65, 2.64 );
setScaleKey( spep_1 -3 + 214, 1, 1.17, 1.16 );
setScaleKey( spep_1 -3 + 216, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 218, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 220, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 222, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 224, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 226, 1, 0.22, 0.22 );
setScaleKey( spep_1 -3 + 228, 1, 0.21, 0.21 );

setScaleKey( spep_1 -3 + 230, 1, 4.12, 4.12 );
setScaleKey( spep_1 -3 + 232, 1, 3.34, 3.34 );
setScaleKey( spep_1 -3 + 234, 1, 2.98, 2.98 );
setScaleKey( spep_1 -3 + 236, 1, 2.73, 2.73 );
setScaleKey( spep_1 -3 + 238, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 240, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 242, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 244, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 246, 1, 2.17, 2.17 );
setScaleKey( spep_1 -3 + 248, 1, 2.12, 2.12 );
setScaleKey( spep_1 -3 + 250, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 252, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 254, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 258, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 260, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 264, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 266, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 270, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 272, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 280, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 282, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 286, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 299, 1, 2.01, 2.01 );

setScaleKey( spep_1 -3 + 300, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 302, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 304, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 306, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 308, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 310, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 312, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 314, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 316, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 318, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 320, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 322, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 324, 1, 1.83, 1.83 );
setScaleKey( spep_1  + 324, 1, 1.84, 1.84 );

setScaleKey( spep_1  + 325, 1, 4.41, 4.41 );
setScaleKey( spep_1 -3 + 331, 1, 2.55, 2.55 );

setScaleKey( spep_1 -3 + 332, 1, 3.87, 3.87 );
setScaleKey( spep_1 -3 + 334, 1, 3.39, 3.39 );
setScaleKey( spep_1 -3 + 336, 1, 3.1, 3.1 );
setScaleKey( spep_1 -3 + 338, 1, 2.9, 2.9 );
setScaleKey( spep_1 -3 + 340, 1, 2.74, 2.74 );
setScaleKey( spep_1 -3 + 342, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 344, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 346, 1, 2.46, 2.46 );
setScaleKey( spep_1 -3 + 348, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 350, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 352, 1, 2.32, 2.32 );

setScaleKey( spep_1 -3 + 354, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 356, 1, 2, 2 );
setScaleKey( spep_1 -3 + 358, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 360, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 362, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 364, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 366, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 368, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 370, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 372, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 374, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 376, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 378, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 380, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 382, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 384, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 386, 1, 0.08, 0.08 );
setScaleKey( spep_1 -3 + 388, 1, 0.07, 0.07 );
setScaleKey( spep_1 -3 + 390, 1, 0.06, 0.06 );
setScaleKey( spep_1 -3 + 394, 1, 0.06, 0.06 );
setScaleKey( spep_1 -3 + 396, 1, 0.05, 0.05 );
setScaleKey( spep_1 -3 + 446, 1, 0.05, 0.05 );

setRotateKey( spep_1 -3 + 90, 1, 0 );
setRotateKey( spep_1 -3 + 92, 1, 2.1 );
setRotateKey( spep_1 -3 + 94, 1, 4 );
setRotateKey( spep_1 -3 + 96, 1, 5.8 );
setRotateKey( spep_1 -3 + 98, 1, 7.4 );
setRotateKey( spep_1 -3 + 100, 1, 8.8 );
setRotateKey( spep_1 -3 + 102, 1, 10.1 );
setRotateKey( spep_1 -3 + 104, 1, 11.2 );
setRotateKey( spep_1 -3 + 106, 1, 12.1 );
setRotateKey( spep_1 -3 + 108, 1, 12.9 );
setRotateKey( spep_1 -3 + 110, 1, 13.4 );
setRotateKey( spep_1 -3 + 112, 1, 13.9 );
setRotateKey( spep_1 -3 + 114, 1, 14.1 );
setRotateKey( spep_1 -3 + 117, 1, 14.2 );
setRotateKey( spep_1 -3 + 118, 1, 24.7 );
setRotateKey( spep_1 -3 + 120, 1, 4.3 );
setRotateKey( spep_1 -3 + 122, 1, 1.4 );
setRotateKey( spep_1 -3 + 124, 1, -4.6 );
setRotateKey( spep_1 -3 + 126, 1, -10.7 );
setRotateKey( spep_1 -3 + 128, 1, -17 );
setRotateKey( spep_1 -3 + 131, 1, -23.4 );
setRotateKey( spep_1 -3 + 149, 1, -23.4 );

setRotateKey( spep_1 -3 + 150, 1, 16.8 );
setRotateKey( spep_1 -3 + 152, 1, 16.9 );
setRotateKey( spep_1  + 182, 1, 16.9 );

setRotateKey( spep_1  + 183, 1, 90 );
setRotateKey( spep_1 -3 + 204, 1, 90 );

setRotateKey( spep_1 -3 + 206, 1, 34.1 );
setRotateKey( spep_1 -3 + 210, 1, 34.1 );
setRotateKey( spep_1 -3 + 211, 1, 34.1 );

setRotateKey( spep_1 -3 + 212, 1, -56.7 );
setRotateKey( spep_1 -3 + 228, 1, -56.7 );

setRotateKey( spep_1 -3 + 230, 1, 10.8 );
setRotateKey( spep_1 -3 + 286, 1, 10.8 );

setRotateKey( spep_1 -3 + 300, 1, 10.8 );
setRotateKey( spep_1 -3 + 302, 1, 10.9 );
setRotateKey( spep_1 -3 + 304, 1, 11.4 );
setRotateKey( spep_1 -3 + 306, 1, 12.6 );
setRotateKey( spep_1 -3 + 308, 1, 14.1 );
setRotateKey( spep_1 -3 + 310, 1, 15.3 );
setRotateKey( spep_1 -3 + 312, 1, 16.1 );
setRotateKey( spep_1 -3 + 314, 1, 16.7 );
setRotateKey( spep_1 -3 + 316, 1, 17.1 );
setRotateKey( spep_1 -3 + 318, 1, 17.4 );
setRotateKey( spep_1 -3 + 320, 1, 17.6 );
setRotateKey( spep_1 -3 + 322, 1, 17.8 );
setRotateKey( spep_1 -3 + 324, 1, 17.9 );
setRotateKey( spep_1  + 324, 1, 18 );

setRotateKey( spep_1 +325 , 1, 122.1 );
setRotateKey( spep_1 -3 + 331, 1, 122.1 );

setRotateKey( spep_1 -3 + 332, 1, 0 );
setRotateKey( spep_1 -3 + 352, 1, 0 );

setRotateKey( spep_1 -3 + 354, 1, 26.8 );
setRotateKey( spep_1 -3 + 446, 1, 26.8 );

--文字エントリー
ctzun = entryEffectLife( spep_1 -3 + 58,  10016, 18, 0x80, -1, 0, 52, 372.1 );--ズンッ

setEffMoveKey( spep_1 -3 + 58, ctzun, 52, 372.1 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctzun, 46.4, 405.2 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctzun, 45.8, 406.5 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctzun, 45.2, 407.9 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctzun, 44.6, 409.2 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctzun, 44, 410.6 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctzun, 43.4, 412 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzun, 41.9, 415.3 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzun, 40.3, 418.7 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzun, 38.8, 422.1 , 0 );

setEffScaleKey( spep_1 -3 + 58, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_1 -3 + 60, ctzun, 2.99, 2.99 );
setEffScaleKey( spep_1 -3 + 62, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_1 -3 + 64, ctzun, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 66, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_1 -3 + 68, ctzun, 3.05, 3.05 );
setEffScaleKey( spep_1 -3 + 70, ctzun, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 72, ctzun, 3.11, 3.11 );
setEffScaleKey( spep_1 -3 + 74, ctzun, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 76, ctzun, 3.19, 3.19 );

setEffRotateKey( spep_1 -3 + 58, ctzun, -6.5 );
setEffRotateKey( spep_1 -3 + 76, ctzun, -6.5 );

setEffAlphaKey( spep_1 -3 + 58, ctzun, 255 );
setEffAlphaKey( spep_1 -3 + 70, ctzun, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctzun, 170 );
setEffAlphaKey( spep_1 -3 + 74, ctzun, 85 );
setEffAlphaKey( spep_1 -3 + 76, ctzun, 0 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 118,  921, 30, 0x80, -1, 0, 16.1, 20 );--斜め

setEffMoveKey( spep_1 -3 + 118, ryusen2, 16.1, 20 , 0 );
setEffMoveKey( spep_1 -3 + 148, ryusen2, 16.1, 20 , 0 );

setEffScaleKey( spep_1 -3 + 118, ryusen2, 1.7, 1.42 );
setEffScaleKey( spep_1 -3 + 148, ryusen2, 1.7, 1.42 );

setEffRotateKey( spep_1 -3 + 118, ryusen2, -46.8 );-- -44.8
setEffRotateKey( spep_1 -3 + 148, ryusen2, -46.8 );

setEffAlphaKey( spep_1 -3 + 118, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 148, ryusen2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 -3 + 118,  10020, 14, 0x80, -1, 0, -133.5, 302.8 );--バキッ

setEffMoveKey( spep_1 -3 + 118, ctbaki, -133.5, 302.8 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctbaki, -144.1, 307.4 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctbaki, -143, 308.7 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctbaki, -154.8, 313.8 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctbaki, -149.8, 313 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctbaki, -157.5, 317.6 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctbaki, -159.5, 328.5 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctbaki, -158.9, 332.1 , 0 );

setEffScaleKey( spep_1 -3 + 118, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 120, ctbaki, 1.33, 1.33 );
setEffScaleKey( spep_1 -3 + 122, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_1 -3 + 124, ctbaki, 1.43, 1.43 );
setEffScaleKey( spep_1 -3 + 126, ctbaki, 1.48, 1.48 );
setEffScaleKey( spep_1 -3 + 128, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 130, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 132, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 -3 + 118, ctbaki, -25 );
setEffRotateKey( spep_1 -3 + 132, ctbaki, -25 );

--文字エントリー
ctsyun = entryEffectLife( spep_1 -3 + 140,  10011, 130, 0x100, -1, 0, 187.9, 331.1 );--シュンッ

setEffMoveKey( spep_1 -3 + 140, ctsyun, 187.9, 331.1 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctsyun, 185.6, 339 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctsyun, 184.2, 343.7 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctsyun, 183.8, 345.3 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctsyun, 183.8, 345.3 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctsyun, 183.8, 345.2 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctsyun, 183.8, 345.2 , 0 );

setEffScaleKey( spep_1 -3 + 140, ctsyun, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 142, ctsyun, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 144, ctsyun, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 146, ctsyun, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 148, ctsyun, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 150, ctsyun, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 152, ctsyun, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 154, ctsyun, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 140, ctsyun, 16.7 );
setEffRotateKey( spep_1 -3 + 154, ctsyun, 16.7 );

setEffAlphaKey( spep_1 -3 + 140, ctsyun, 255 );
setEffAlphaKey( spep_1 -3 + 146, ctsyun, 255 );
setEffAlphaKey( spep_1 -3 + 148, ctsyun, 239 );
setEffAlphaKey( spep_1 -3 + 150, ctsyun, 191 );
setEffAlphaKey( spep_1 -3 + 152, ctsyun, 112 );
setEffAlphaKey( spep_1 -3 + 154, ctsyun, 0 );


--文字エントリー
ctsyun2 = entryEffectLife( spep_1 -3 + 162,  10011, 14, 0x100, -1, 0, 234.8, 206.8 );--シュンッ

setEffMoveKey( spep_1 -3 + 162, ctsyun2, 234.8, 206.8 , 0 );
setEffMoveKey( spep_1 -3 + 164, ctsyun2, 233.3, 214.8 , 0 );
setEffMoveKey( spep_1 -3 + 166, ctsyun2, 232.4, 219.5 , 0 );
setEffMoveKey( spep_1 -3 + 168, ctsyun2, 232.1, 221.1 , 0 );
setEffMoveKey( spep_1 -3 + 172, ctsyun2, 232.1, 221.1 , 0 );
setEffMoveKey( spep_1 -3 + 174, ctsyun2, 232.1, 221.2 , 0 );
setEffMoveKey( spep_1 -3 + 176, ctsyun2, 232.1, 221.2 , 0 );

setEffScaleKey( spep_1 -3 + 162, ctsyun2, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 164, ctsyun2, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 166, ctsyun2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 168, ctsyun2, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 170, ctsyun2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 172, ctsyun2, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 174, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 176, ctsyun2, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 162, ctsyun2, 23 );
setEffRotateKey( spep_1 -3 + 164, ctsyun2, 22.9 );
setEffRotateKey( spep_1 -3 + 172, ctsyun2, 22.9 );
setEffRotateKey( spep_1 -3 + 174, ctsyun2, 23 );
setEffRotateKey( spep_1 -3 + 176, ctsyun2, 23 );

setEffAlphaKey( spep_1 -3 + 162, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 168, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 170, ctsyun2, 239 );
setEffAlphaKey( spep_1 -3 + 172, ctsyun2, 191 );
setEffAlphaKey( spep_1 -3 + 174, ctsyun2, 112 );
setEffAlphaKey( spep_1 -3 + 176, ctsyun2, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_1 -3 + 188,  10021, 22, 0x100, -1, 0, 143.5, 352.9 );--バゴォッ

setEffMoveKey( spep_1 -3 + 188, ctbago, 143.5, 352.9 , 0 );
setEffMoveKey( spep_1 -3 + 190, ctbago, 135.7, 398.7 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctbago, 144.2, 421.6 , 0 );
setEffMoveKey( spep_1 -3 + 194, ctbago, 133.7, 418.2 , 0 );
setEffMoveKey( spep_1 -3 + 196, ctbago, 150.7, 431.5 , 0 );
setEffMoveKey( spep_1 -3 + 198, ctbago, 135.4, 428.5 , 0 );
setEffMoveKey( spep_1 -3 + 200, ctbago, 148.3, 426.4 , 0 );
setEffMoveKey( spep_1 -3 + 202, ctbago, 133.2, 439.4 , 0 );
setEffMoveKey( spep_1 -3 + 204, ctbago, 139.9, 438.4 , 0 );
setEffMoveKey( spep_1 -3 + 206, ctbago, 130, 434.7 , 0 );
setEffMoveKey( spep_1 -3 + 208, ctbago, 150.9, 454.7 , 0 );
setEffMoveKey( spep_1 -3 + 210, ctbago, 154.4, 469.5 , 0 );

setEffScaleKey( spep_1 -3 + 188, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_1 -3 + 190, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 192, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_1 -3 + 194, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_1 -3 + 196, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_1 -3 + 198, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 200, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_1 -3 + 202, ctbago, 2.67, 2.67 );
setEffScaleKey( spep_1 -3 + 204, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_1 -3 + 206, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 208, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_1 -3 + 210, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_1 -3 + 188, ctbago, 11.6 );
setEffRotateKey( spep_1 -3 + 190, ctbago, 8.6 );
setEffRotateKey( spep_1 -3 + 192, ctbago, 7.6 );
setEffRotateKey( spep_1 -3 + 210, ctbago, 7.6 );

setEffAlphaKey( spep_1 -3 + 188, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 204, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 206, ctbago, 227 );
setEffAlphaKey( spep_1 -3 + 208, ctbago, 142 );
setEffAlphaKey( spep_1 -3 + 210, ctbago, 0 );

--文字エントリー
ctsyun3 = entryEffectLife( spep_1 -3 + 256,  10011, 14, 0x100, -1, 0, -197.7, 470.6 );--シュンッ

setEffMoveKey( spep_1 -3 + 256, ctsyun3, -197.7, 470.6 , 0 );
setEffMoveKey( spep_1 -3 + 258, ctsyun3, -203.4, 476.4 , 0 );
setEffMoveKey( spep_1 -3 + 260, ctsyun3, -206.8, 480 , 0 );
setEffMoveKey( spep_1 -3 + 262, ctsyun3, -207.9, 481.2 , 0 );
setEffMoveKey( spep_1 -3 + 266, ctsyun3, -207.9, 481.2 , 0 );
setEffMoveKey( spep_1 -3 + 268, ctsyun3, -207.8, 481.2 , 0 );
setEffMoveKey( spep_1 -3 + 270, ctsyun3, -207.8, 481.1 , 0 );

setEffScaleKey( spep_1 -3 + 256, ctsyun3, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 258, ctsyun3, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 260, ctsyun3, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 262, ctsyun3, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 264, ctsyun3, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 266, ctsyun3, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 268, ctsyun3, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 270, ctsyun3, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 256, ctsyun3, -10.3 );
setEffRotateKey( spep_1 -3 + 270, ctsyun3, -10.3 );

setEffAlphaKey( spep_1 -3 + 256, ctsyun3, 255 );
setEffAlphaKey( spep_1 -3 + 262, ctsyun3, 255 );
setEffAlphaKey( spep_1 -3 + 264, ctsyun3, 239 );
setEffAlphaKey( spep_1 -3 + 266, ctsyun3, 191 );
setEffAlphaKey( spep_1 -3 + 268, ctsyun3, 112 );
setEffAlphaKey( spep_1 -3 + 270, ctsyun3, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 298,  10019, 70, 0x100, -1, 0, 188.9, 296.7 );--ドンッ

setEffMoveKey( spep_1 -3 + 298, ctdon, 188.9, 296.7 , 0 );
setEffMoveKey( spep_1 -3 + 300, ctdon, 189.5, 331.1 , 0 );
setEffMoveKey( spep_1 -3 + 302, ctdon, 203.3, 348.9 , 0 );
setEffMoveKey( spep_1 -3 + 304, ctdon, 202.5, 361.7 , 0 );
setEffMoveKey( spep_1 -3 + 306, ctdon, 206.9, 348.3 , 0 );
setEffMoveKey( spep_1 -3 + 308, ctdon, 198.1, 356.8 , 0 );
setEffMoveKey( spep_1 -3 + 310, ctdon, 208.6, 358.8 , 0 );
setEffMoveKey( spep_1 -3 + 312, ctdon, 209.2, 359.4 , 0 );

setEffScaleKey( spep_1 -3 + 298, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 -3 + 300, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_1 -3 + 302, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 -3 + 304, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 306, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 308, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 310, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 312, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_1 -3 + 298, ctdon, 41.4 );
setEffRotateKey( spep_1 -3 + 300, ctdon, 42 );
setEffRotateKey( spep_1 -3 + 302, ctdon, 42.5 );
setEffRotateKey( spep_1 -3 + 312, ctdon, 42.5 );

setEffAlphaKey( spep_1 -3 + 298, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 308, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 310, ctdon, 128 );
setEffAlphaKey( spep_1 -3 + 312, ctdon, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_1 -3 + 354,  10019, 14, 0x100, -1, 0, -13.1, 300.7 );--ドンッ

setEffMoveKey( spep_1 -3 + 354, ctdon2, -13.1, 300.7 , 0 );
setEffMoveKey( spep_1 -3 + 356, ctdon2, -28.7, 331.4 , 0 );
setEffMoveKey( spep_1 -3 + 358, ctdon2, -24.8, 353.6 , 0 );
setEffMoveKey( spep_1 -3 + 360, ctdon2, -31.4, 364.5 , 0 );
setEffMoveKey( spep_1 -3 + 362, ctdon2, -21.3, 354.7 , 0 );
setEffMoveKey( spep_1 -3 + 364, ctdon2, -33, 358.1 , 0 );
setEffMoveKey( spep_1 -3 + 366, ctdon2, -24.6, 364.8 , 0 );
setEffMoveKey( spep_1 -3 + 368, ctdon2, -24.4, 365.5 , 0 );

setEffScaleKey( spep_1 -3 + 354, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_1 -3 + 356, ctdon2, 1.64, 1.64 );
setEffScaleKey( spep_1 -3 + 358, ctdon2, 1.98, 1.98 );
setEffScaleKey( spep_1 -3 + 360, ctdon2, 2, 2 );
setEffScaleKey( spep_1 -3 + 362, ctdon2, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 364, ctdon2, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 366, ctdon2, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 368, ctdon2, 2.07, 2.07 );

setEffRotateKey( spep_1 -3 + 354, ctdon2, 13.7 );
setEffRotateKey( spep_1 -3 + 356, ctdon2, 14.2 );
setEffRotateKey( spep_1 -3 + 358, ctdon2, 14.7 );

setEffAlphaKey( spep_1 -3 + 354, ctdon2, 255 );
setEffAlphaKey( spep_1 -3 + 364, ctdon2, 255 );
setEffAlphaKey( spep_1 -3 + 366, ctdon2, 128 );
setEffAlphaKey( spep_1 -3 + 368, ctdon2, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 -3 + 410,  10018, 54, 0x100, -1, 0, -16.7, 360.9 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 410, ctdogon, -16.7, 360.9 , 0 );
setEffMoveKey( spep_1 -3 + 412, ctdogon, -19.1, 375.9 , 0 );
setEffMoveKey( spep_1 -3 + 414, ctdogon, -15.1, 396.7 , 0 );
setEffMoveKey( spep_1 -3 + 416, ctdogon, -15.3, 396.8 , 0 );
setEffMoveKey( spep_1 -3 + 418, ctdogon, -18.4, 393.2 , 0 );
setEffMoveKey( spep_1 -3 + 420, ctdogon, -14.4, 404 , 0 );
setEffMoveKey( spep_1 -3 + 422, ctdogon, -13.2, 398.1 , 0 );
setEffMoveKey( spep_1 -3 + 424, ctdogon, -18.3, 403.6 , 0 );
setEffMoveKey( spep_1 -3 + 426, ctdogon, -9.6, 403.8 , 0 );
setEffMoveKey( spep_1 -3 + 428, ctdogon, -17.2, 402.3 , 0 );
setEffMoveKey( spep_1 -3 + 430, ctdogon, -13.6, 406.5 , 0 );
setEffMoveKey( spep_1 -3 + 432, ctdogon, -16.9, 402 , 0 );
setEffMoveKey( spep_1 -3 + 434, ctdogon, -12.9, 412.7 , 0 );
setEffMoveKey( spep_1 -3 + 436, ctdogon, -11.7, 405.9 , 0 );
setEffMoveKey( spep_1 -3 + 438, ctdogon, -17.2, 410.9 , 0 );
setEffMoveKey( spep_1 -3 + 440, ctdogon, -8.3, 410.5 , 0 );
setEffMoveKey( spep_1 -3 + 442, ctdogon, -16.3, 408.4 , 0 );
setEffMoveKey( spep_1 -3 + 444, ctdogon, -12.6, 412.1 , 0 );
setEffMoveKey( spep_1 -3 + 446, ctdogon, -16.1, 406.9 , 0 );
setEffMoveKey( spep_1 -3 + 448, ctdogon, -12.1, 417.1 , 0 );
setEffMoveKey( spep_1 -3 + 450, ctdogon, -11, 409.6 , 0 );
setEffMoveKey( spep_1 -3 + 452, ctdogon, -16.7, 414.1 , 0 );
setEffMoveKey( spep_1 -3 + 454, ctdogon, -7.8, 413.1 , 0 );
setEffMoveKey( spep_1 -3 + 456, ctdogon, -12.4, 413.6 , 0 );
setEffMoveKey( spep_1 -3 + 458, ctdogon, -17.8, 411.6 , 0 );
setEffMoveKey( spep_1 -3 + 460, ctdogon, -15.3, 425.5 , 0 );
setEffMoveKey( spep_1 -3 + 462, ctdogon, -15.7, 420.4 , 0 );
setEffMoveKey( spep_1 -3 + 464, ctdogon, -23.3, 428.2 , 0 );
--setEffMoveKey( spep_1 -3 + 466, ctdogon, -14.7, 429.7 , 0 );
--setEffMoveKey( spep_1 -3 + 468, ctdogon, -25.1, 429 , 0 );
--setEffMoveKey( spep_1 -3 + 470, ctdogon, -22, 434.9 , 0 );
--setEffMoveKey( spep_1 -3 + 472, ctdogon, -27.2, 430.3 , 0 );
--setEffMoveKey( spep_1 -3 + 474, ctdogon, -23.2, 443.7 , 0 );
--setEffMoveKey( spep_1 -3 + 476, ctdogon, -22.7, 435.8 , 0 );
--setEffMoveKey( spep_1 -3 + 478, ctdogon, -30, 442.2 , 0 );
--setEffMoveKey( spep_1 -3 + 480, ctdogon, -19.7, 441.7 , 0 );
--setEffMoveKey( spep_1 -3 + 482, ctdogon, -30, 439 , 0 );
--setEffMoveKey( spep_1 -3 + 484, ctdogon, -25.8, 443.3 , 0 );
--setEffMoveKey( spep_1 -3 + 486, ctdogon, -25.9, 443.4 , 0 );

setEffScaleKey( spep_1 -3 + 410, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_1 -3 + 412, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 414, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_1 -3 + 416, ctdogon, 3.27, 3.27 );
setEffScaleKey( spep_1 -3 + 418, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_1 -3 + 420, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_1 -3 + 422, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_1 -3 + 424, ctdogon, 3.37, 3.37 );
setEffScaleKey( spep_1 -3 + 426, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_1 -3 + 428, ctdogon, 3.42, 3.42 );
setEffScaleKey( spep_1 -3 + 430, ctdogon, 3.44, 3.44 );
setEffScaleKey( spep_1 -3 + 432, ctdogon, 3.46, 3.46 );
setEffScaleKey( spep_1 -3 + 434, ctdogon, 3.47, 3.47 );
setEffScaleKey( spep_1 -3 + 436, ctdogon, 3.49, 3.49 );
setEffScaleKey( spep_1 -3 + 438, ctdogon, 3.5, 3.5 );
setEffScaleKey( spep_1 -3 + 440, ctdogon, 3.51, 3.51 );
setEffScaleKey( spep_1 -3 + 442, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 444, ctdogon, 3.53, 3.53 );
setEffScaleKey( spep_1 -3 + 446, ctdogon, 3.54, 3.54 );
setEffScaleKey( spep_1 -3 + 448, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 450, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 452, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_1 -3 + 456, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_1 -3 + 458, ctdogon, 3.66, 3.66 );
setEffScaleKey( spep_1 -3 + 460, ctdogon, 3.76, 3.76 );
setEffScaleKey( spep_1 -3 + 462, ctdogon, 3.84, 3.84 );
setEffScaleKey( spep_1 -3 + 464, ctdogon, 3.93, 3.93 );
--setEffScaleKey( spep_1 -3 + 466, ctdogon, 4, 4 );
--setEffScaleKey( spep_1 -3 + 468, ctdogon, 4.07, 4.07 );
--setEffScaleKey( spep_1 -3 + 470, ctdogon, 4.13, 4.13 );
--setEffScaleKey( spep_1 -3 + 472, ctdogon, 4.18, 4.18 );
--setEffScaleKey( spep_1 -3 + 474, ctdogon, 4.22, 4.22 );
--setEffScaleKey( spep_1 -3 + 476, ctdogon, 4.26, 4.26 );
--setEffScaleKey( spep_1 -3 + 478, ctdogon, 4.29, 4.29 );
--setEffScaleKey( spep_1 -3 + 480, ctdogon, 4.32, 4.32 );
--setEffScaleKey( spep_1 -3 + 482, ctdogon, 4.34, 4.34 );
--setEffScaleKey( spep_1 -3 + 484, ctdogon, 4.35, 4.35 );
--setEffScaleKey( spep_1 -3 + 486, ctdogon, 4.35, 4.35 );

setEffRotateKey( spep_1 -3 + 410, ctdogon, 0.5 );
setEffRotateKey( spep_1 -3 + 464, ctdogon, 0.5 );

setEffAlphaKey( spep_1 -3 + 410, ctdogon, 255);
setEffAlphaKey( spep_1 -3 + 438, ctdogon, 255);
setEffAlphaKey( spep_1 -3 + 440, ctdogon, 222);
setEffAlphaKey( spep_1 -3 + 442, ctdogon, 192);
setEffAlphaKey( spep_1 -3 + 444, ctdogon, 163);
setEffAlphaKey( spep_1 -3 + 446, ctdogon, 137);
setEffAlphaKey( spep_1 -3 + 448, ctdogon, 92 );
setEffAlphaKey( spep_1 -3 + 450, ctdogon, 72 );
setEffAlphaKey( spep_1 -3 + 452, ctdogon, 56 );
setEffAlphaKey( spep_1 -3 + 454, ctdogon, 41 );
setEffAlphaKey( spep_1 -3 + 456, ctdogon, 28 );
setEffAlphaKey( spep_1 -3 + 458, ctdogon, 18 );
setEffAlphaKey( spep_1 -3 + 460, ctdogon, 10 );
setEffAlphaKey( spep_1 -3 + 462, ctdogon, 5 );
setEffAlphaKey( spep_1 -3 + 463, ctdogon, 1 );
setEffAlphaKey( spep_1 -3 + 464, ctdogon, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 150,  906, 36, 0x80, -1, 0, -326.6, 415.4 );

setEffMoveKey( spep_1 + 150, shuchusen2, -326.6, 415.4 , 0 );
setEffMoveKey( spep_1 + 184, shuchusen2, -326.6, 415.4 , 0 );
setEffMoveKey( spep_1 + 186, shuchusen2, -346.6, 385.4 , 0 );

setEffScaleKey( spep_1 + 150, shuchusen2, 1.72, 1.78 );
setEffScaleKey( spep_1 + 186, shuchusen2, 1.72, 1.78 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 186, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 150, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 186, shuchusen2, 255 );


--集中線
shuchusen3 = entryEffectLife( spep_1 + 358,  906, 94, 0x100, -1, 0, 0, 01 );

setEffMoveKey( spep_1 + 358, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 452, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 358, shuchusen3, 1.02, 1.09 );
setEffScaleKey( spep_1 + 452, shuchusen3, 1.02, 1.09 );

setEffRotateKey( spep_1 + 358, shuchusen3, 0 );
setEffRotateKey( spep_1 + 452, shuchusen3, 0 );

setEffAlphaKey( spep_1 + 358, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 452, shuchusen3, 255 );

--SE
stopSe(spep_1+34,SE1,0);
playSe(spep_1+36,1018);
playSe(spep_1+56,1011);
playSe(spep_1+116,1010);
playSe(spep_1+138,43);
playSe(spep_1+160,43);
playSe(spep_1+186,1011);
playSe(spep_1+204,44);
playSe(spep_1+254,43);
SE2=playSe(spep_1+284,15);
stopSe(spep_1+294,SE2,0);
playSe(spep_1+296,1049);
SE3=playSe(spep_1+326,44);
stopSe(spep_1+350,SE3,0);
playSe(spep_1+352,1049);
setSeVolume(spep_1+352,1049,250);
playSe(spep_1+408,1023);


--白フェード
--entryFade( spep_1 + 472, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+460;
------------------------------------------------------
--見下ろす
------------------------------------------------------
--エフェクト
overlook=entryEffectLife(spep_2,SP_04x,110,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, overlook, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, overlook, 0, 0 , 0 );

setEffScaleKey(spep_2,overlook,-1.0,1.0);
setEffScaleKey(spep_2+110,overlook,-1.0,1.0);

setEffRotateKey(spep_2,overlook,0);
setEffRotateKey(spep_2+110,overlook,0);

setEffAlphaKey(spep_2,overlook,255);
setEffAlphaKey(spep_2+110,overlook,255);

--***カットイン***32
--speff = entryEffect(  spep_2+16,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+16,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +28, 190006, 74, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +28,  ctgogo,  0,  530);
setEffMoveKey(  spep_2 +4+98,  ctgogo,  0,  530);

setEffAlphaKey( spep_2  + 28, ctgogo, 0 );
setEffAlphaKey( spep_2  + 29, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 30, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 81, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 +4 + 94, ctgogo, 128 );
setEffAlphaKey( spep_2 +4 + 96, ctgogo, 64 );
setEffAlphaKey( spep_2 +4 + 98, ctgogo, 0 );

setEffRotateKey(  spep_2 +28,  ctgogo,  0);
setEffRotateKey(  spep_2 +4+98,  ctgogo,  0);

setEffScaleKey(  spep_2 +28,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +4+82,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_2 +4 + 98, ctgogo, -1.07, 1.07 );

--集中線
shuchusen4 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen4, 1.16, 1.16 );
setEffScaleKey( spep_2 + 108, shuchusen4, 1.16, 1.16 );

setEffRotateKey( spep_2 + 0, shuchusen4, 180 );
setEffRotateKey( spep_2 + 108, shuchusen4, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen4, 255 );

--SE
playSe(spep_2+16,1018);

-- ** エフェクト等 ** --
entryFade(spep_2+98, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_3=spep_2+110;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
--------------------------------------
--発射
--------------------------------------
--エフェクト
bim=entryEffectLife(spep_4,SP_05x,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, bim, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, bim, 0, 0 , 0 );

setEffScaleKey(spep_4,bim,-1.0,1.0);
setEffScaleKey(spep_4+80,bim,-1.0,1.0);

setEffRotateKey(spep_4,bim,0);
setEffRotateKey(spep_4+80,bim,0);

setEffAlphaKey(spep_4,bim,255);
setEffAlphaKey(spep_4+80,bim,255);

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 0,  10012, 80, 0x100, -1, 0, -83.7, -43.4 );--ズオッ

setEffMoveKey( spep_4 + 0, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 2, ctzuo, -78.1, -45.9 , 0 );
setEffMoveKey( spep_4 + 4, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 6, ctzuo, -72.9, -48.2 , 0 );
setEffMoveKey( spep_4 + 8, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, -72.2, -48.6 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, -83.8, -43.4 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, -71.4, -49 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, -83.8, -43.5 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, -70.7, -49.3 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, -83.8, -43.4 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, -70, -49.6 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, -68.8, -50.1 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, -83.7, -43.5 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, -67.3, -50.8 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, -66.6, -51.1 , 0 );

setEffScaleKey( spep_4 + 0, ctzuo, 0.43, 0.43 );
setEffScaleKey( spep_4 + 2, ctzuo, 0.82, 0.82 );
setEffScaleKey( spep_4 + 4, ctzuo, 1.2, 1.2 );
setEffScaleKey( spep_4 + 6, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_4 + 8, ctzuo, 1.65, 1.65 );
setEffScaleKey( spep_4 + 10, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_4 + 12, ctzuo, 1.76, 1.76 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.81, 1.81 );
setEffScaleKey( spep_4 + 16, ctzuo, 1.87, 1.87 );
setEffScaleKey( spep_4 + 18, ctzuo, 1.92, 1.92 );
setEffScaleKey( spep_4 + 20, ctzuo, 1.98, 1.98 );
setEffScaleKey( spep_4 + 22, ctzuo, 2.03, 2.03 );
setEffScaleKey( spep_4 + 24, ctzuo, 2.09, 2.09 );
setEffScaleKey( spep_4 + 26, ctzuo, 2.2, 2.2 );
setEffScaleKey( spep_4 + 28, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_4 + 30, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_4 + 32, ctzuo, 2.53, 2.53 );

setEffRotateKey( spep_4 + 0, ctzuo, -23.5 );
setEffRotateKey( spep_4 + 2, ctzuo, -23.6 );
setEffRotateKey( spep_4 + 32, ctzuo, -23.6 );

setEffAlphaKey( spep_4 + 0, ctzuo, 255 );
setEffAlphaKey( spep_4 + 24, ctzuo, 255 );
setEffAlphaKey( spep_4 + 26, ctzuo, 191 );
setEffAlphaKey( spep_4 + 28, ctzuo, 128 );
setEffAlphaKey( spep_4 + 30, ctzuo, 64 );
setEffAlphaKey( spep_4 + 32, ctzuo, 0 );

--流線
ryusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 400 , 0 );
setEffMoveKey( spep_4 + 80, ryusen3, 0, 400 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 2.49, 0.88 );
setEffScaleKey( spep_4 + 80, ryusen3, 2.49, 0.88 );

setEffRotateKey( spep_4 + 0, ryusen3, 90 );
setEffRotateKey( spep_4 + 80, ryusen3, 90 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 80, ryusen3, 255 );

--SE
playSe(spep_4,1022);

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+80;

--------------------------------------
--当たる
--------------------------------------
--エフェクト
hit=entryEffectLife(spep_5,SP_06x,70,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, hit, 0, 0 , 0 );

setEffScaleKey(spep_5,hit,1.0,1.0);
setEffScaleKey(spep_5+70,hit,1.0,1.0);

setEffRotateKey(spep_5,hit,0);
setEffRotateKey(spep_5+70,hit,0);

setEffAlphaKey(spep_5,hit,255);
setEffAlphaKey(spep_5+70,hit,255);

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 68, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.66, 1.94 );
setEffScaleKey( spep_5 + 68, shuchusen5, 1.66, 1.94 );

setEffRotateKey( spep_5 + 0, shuchusen5, 180 );
setEffRotateKey( spep_5 + 68, shuchusen5, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 68, shuchusen5, 255 );

--SE
playSe(spep_5,1022);
playSe(spep_5+38,1067);

-- ** エフェクト等 ** --
entryFade(spep_5+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 70, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_6=spep_5+70;

--------------------------------------
--爆発
--------------------------------------
--エフェクト
explosion=entryEffect(spep_6,SP_07x,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, explosion, 0, 0 , 0 );

setEffScaleKey(spep_6,explosion,1.1,1.2);
setEffScaleKey(spep_6+200,explosion,1.1,1.2);

setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+200,explosion,0);

setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+200,explosion,255);

--集中線
shuchusen6 = entryEffectLife( spep_6 + 0,  906, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1.06, 1.34 );
setEffScaleKey( spep_6 + 200, shuchusen6, 1.06, 1.34 );

setEffRotateKey( spep_6 + 0, shuchusen6, 180 );
setEffRotateKey( spep_6 + 200, shuchusen6, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 200, shuchusen6, 255 );

--黒背景
entryFadeBg(spep_6, 0, 200, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(spep_6,1024);

-- ダメージ表示
dealDamage(spep_6+2);
entryFade( spep_6+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+194);

end
--1016150 ゴールデンフリーザ_デスビーム
--sp_effect_a3_00058
--flaだと敵が真ん中にしか書き出されないので書き出しが来てから調整が必要
--デスビームが当たるシーンでの回避は無理なので前のシーンで！


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
SP_01=	152660	;--	セリフカットイン用
SP_02=	152661	;--	発射
SP_03=	152662	;--	命中（後）
SP_04=	152663	;--	命中（前）

--敵
SP_01x=	152660	;--	セリフカットイン用	
SP_02x=	152661	;--	発射	
SP_03x=	152662	;--	命中（後）	
SP_04x=	152664	;--	命中（前）	(敵)
	
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
--タメ
------------------------------------------------------

spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01,114,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+114,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+114,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+114,tame,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 114, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 114, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 114, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 32, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 33, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 34, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen1, 255 );

--顔カットイン
speff=entryEffect(spep_0+20,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+20,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+32,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+32,ctgogo,0,520,0);
setEffMoveKey(spep_0+104,ctgogo,0,520,0);

setEffScaleKey( spep_0 + 32, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 96, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 98, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 102, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 104, ctgogo, 1.69, 1.69 );

setEffAlphaKey( spep_0 + 32, ctgogo, 0 );
setEffAlphaKey( spep_0 + 35, ctgogo, 255 );
setEffAlphaKey( spep_0 + 36, ctgogo, 255 );
setEffAlphaKey( spep_0 + 104, ctgogo, 255 );

setEffRotateKey(spep_0+32,ctgogo,0);
setEffRotateKey(spep_0+104,ctgogo,0);

playSe( spep_0+32, SE_04); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_0+100, 6, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+114;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
--撃つ
------------------------------------------------------
--エフェクト
shoot=entryEffectLife(spep_2,SP_02,100,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shoot, 0, 0 , 0 );

setEffScaleKey(spep_2,shoot,1.0,1.0);
setEffScaleKey(spep_2+100,shoot,1.0,1.0);

setEffRotateKey(spep_2,shoot,0);
setEffRotateKey(spep_2+100,shoot,0);

setEffAlphaKey(spep_2,shoot,255);
setEffAlphaKey(spep_2+100,shoot,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 54,  906, 44, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 54, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 54, shuchusen2, 1, 1.4 );
setEffScaleKey( spep_2 + 98, shuchusen2, 1, 1.4 );

setEffRotateKey( spep_2 + 54, shuchusen2, 180 );
setEffRotateKey( spep_2 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 54, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 55, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 56, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen2, 255 );

--文字エントリー
ctbi = entryEffectLife( spep_2 - 4 + 58,  10024, 44, 0x100, -1, 0, 118.3, 209.6 ); --ビッ

setEffShake(spep_2 - 4 + 58,ctbi,40,10);

setEffMoveKey( spep_2 - 4 + 58, ctbi, 118.3, 209.6 , 0 );
setEffMoveKey( spep_2 - 4 + 60, ctbi, 154.3, 220 , 0 );
setEffMoveKey( spep_2 - 4 + 62, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 64, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 66, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 68, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 70, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 72, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 74, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 76, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 78, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 80, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 82, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 84, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 86, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 88, ctbi, 200.6, 235.4 , 0 );
setEffMoveKey( spep_2 - 4 + 90, ctbi, 208.3, 241.5 , 0 );
setEffMoveKey( spep_2 - 4 + 92, ctbi, 224.5, 243.3 , 0 );
setEffMoveKey( spep_2  + 98, ctbi, 236.5, 247.3 , 0 );

setEffScaleKey( spep_2 - 4 + 58, ctbi, 0.44, 0.44 );
setEffScaleKey( spep_2 - 4 + 60, ctbi, 0.72, 0.72 );
setEffScaleKey( spep_2 - 4 + 62, ctbi, 1, 1 );
setEffScaleKey( spep_2 - 4 + 86, ctbi, 1, 1 );
setEffScaleKey( spep_2 - 4 + 88, ctbi, 1.1, 1.1 );
setEffScaleKey( spep_2 - 4 + 90, ctbi, 1.19, 1.19 );
setEffScaleKey( spep_2 - 4 + 92, ctbi, 1.29, 1.29 );
setEffScaleKey( spep_2  + 98, ctbi, 1.39, 1.39 );

setEffRotateKey( spep_2 - 4 + 58, ctbi, 26.8 );
setEffRotateKey( spep_2  + 98, ctbi, 26.9 );

setEffAlphaKey( spep_2 - 4 + 58, ctbi, 0 );
setEffAlphaKey( spep_2 - 4 + 59, ctbi, 255 );
setEffAlphaKey( spep_2 - 4 + 60, ctbi, 255 );
setEffAlphaKey( spep_2 - 4 + 86, ctbi, 255 );
setEffAlphaKey( spep_2 - 4 + 88, ctbi, 191 );
setEffAlphaKey( spep_2 - 4 + 90, ctbi, 128 );
setEffAlphaKey( spep_2 - 4 + 92, ctbi, 64 );
setEffAlphaKey( spep_2  + 98, ctbi, 0 );

--SE
SE1=playSe( spep_2, 15); --溜め
stopSe(spep_2+56,SE1,0);


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+80 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,83.7, 87.6 , 0 );
    --setScaleKey(SP_dodge , 1, 1.83, 1.83);
    --setRotateKey(SP_dodge,   1, -3.5 );
    
    ---キャラクターの固定
    --setMoveKey(SP_dodge+10, 1,83.7, 87.6 , 0 );
    --setScaleKey(SP_dodge+10 , 1, 1.83, 1.83);
    --setRotateKey(SP_dodge+10,   1, -3.5 );
   

    
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
--SE
    playSe( spep_2+58, SE_07); --死光線


-- ** エフェクト等 ** --
entryFade(spep_2+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+100;
------------------------------------------------------
--撃つ
------------------------------------------------------
--エフェクト
hit_f=entryEffect(spep_3,SP_04,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 220, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+220,hit_f,1.0,1.0);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+220,hit_f,0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+220,hit_f,255);

--エフェクト
hit_b=entryEffect(spep_3,SP_03,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 220, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_b,1.0,1.0);
setEffScaleKey(spep_3+220,hit_b,1.0,1.0);

setEffRotateKey(spep_3,hit_b,0);
setEffRotateKey(spep_3+220,hit_b,0);

setEffAlphaKey(spep_3,hit_b,255);
setEffAlphaKey(spep_3+220,hit_b,255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 23, 1, 106 );
changeAnime( spep_3 + 24, 1, 106 );

setMoveKey( spep_3 + 0, 1, 48.9, -25.7 , 0 );
setMoveKey( spep_3 + 22, 1, 48.9, -25.7 , 0 );
setMoveKey( spep_3 + 23, 1, 40.2, -32.7 , 0 );
setMoveKey( spep_3 + 24, 1, 40.2, -32.7 , 0 );
setMoveKey( spep_3 + 28, 1, 43.6, -27.6 , 0 );
setMoveKey( spep_3 + 30, 1, 47.2, -22.7 , 0 );
setMoveKey( spep_3 + 32, 1, 50.6, -17.9 , 0 );
setMoveKey( spep_3 + 34, 1, 54.1, -13.2 , 0 );
setMoveKey( spep_3 + 36, 1, 55.3, -12.1 , 0 );
setMoveKey( spep_3 + 38, 1, 56.7, -11.4 , 0 );
setMoveKey( spep_3 + 40, 1, 57.9, -10.7 , 0 );
setMoveKey( spep_3 + 42, 1, 59.2, -9.9 , 0 );
setMoveKey( spep_3 + 44, 1, 60.5, -8.8 , 0 );
setMoveKey( spep_3 + 46, 1, 61.8, -8.1 , 0 );
setMoveKey( spep_3 + 48, 1, 63.1, -7.3 , 0 );
setMoveKey( spep_3 + 50, 1, 63.5, -6.6 , 0 );
setMoveKey( spep_3 + 52, 1, 64.2, -5.5 , 0 );
setMoveKey( spep_3 + 54, 1, 64.7, -4.7 , 0 );
setMoveKey( spep_3 + 56, 1, 65.2, -4.1 , 0 );
setMoveKey( spep_3 + 58, 1, 65.7, -3.3 , 0 );
setMoveKey( spep_3 + 60, 1, 66.4, -2.2 , 0 );
setMoveKey( spep_3 + 62, 1, 66.9, -1.5 , 0 );
setMoveKey( spep_3 + 64, 1, 67.5, -0.7 , 0 );
setMoveKey( spep_3 + 66, 1, 68, 0 , 0 );
setMoveKey( spep_3 + 68, 1, 68.7, 1.1 , 0 );
setMoveKey( spep_3 + 70, 1, 69.4, 1.8 , 0 );
setMoveKey( spep_3 + 72, 1, 69.9, 2.6 , 0 );
setMoveKey( spep_3 + 74, 1, 70.6, 3.6 , 0 );
setMoveKey( spep_3 + 76, 1, 71.2, 4.4 , 0 );
setMoveKey( spep_3 + 78, 1, 71.9, 5.1 , 0 );
setMoveKey( spep_3 + 80, 1, 78.5, 8.2 , 0 );
setMoveKey( spep_3 + 82, 1, 85.2, 11.4 , 0 );
setMoveKey( spep_3 + 84, 1, 92, 14.5 , 0 );
setMoveKey( spep_3 + 86, 1, 98.8, 17.6 , 0 );
setMoveKey( spep_3 + 88, 1, 106.2, -4.3 , 0 );
setMoveKey( spep_3 + 90, 1, 113.7, -25.2 , 0 );
setMoveKey( spep_3 + 92, 1, 121, -44.4 , 0 );
setMoveKey( spep_3 + 94, 1, 128.5, -62.4 , 0 );
setMoveKey( spep_3 + 96, 1, 135.9, -78.9 , 0 );
setMoveKey( spep_3 + 98, 1, 142.9, -68.5 , 0 );
setMoveKey( spep_3 + 100, 1, 150.1, -58.2 , 0 );
setMoveKey( spep_3 + 102, 1, 157.2, -48.2 , 0 );
setMoveKey( spep_3 + 104, 1, 164.3, -38.4 , 0 );
setMoveKey( spep_3 + 106, 1, 171.5, -35.6 , 0 );
setMoveKey( spep_3 + 108, 1, 178.6, -32.4 , 0 );
setMoveKey( spep_3 + 110, 1, 185.6, -30.5 , 0 );
setMoveKey( spep_3 + 112, 1, 192.7, -26.9 , 0 );
setMoveKey( spep_3 + 114, 1, 199.9, -18.3 , 0 );
setMoveKey( spep_3 + 116, 1, 207, -9.9 , 0 );
setMoveKey( spep_3 + 118, 1, 214.1, -1.7 , 0 );
setMoveKey( spep_3 + 120, 1, 221.3, 6.4 , 0 );
setMoveKey( spep_3 + 122, 1, 221.3, 4.8 , 0 );
setMoveKey( spep_3 + 124, 1, 221.3, 3.2 , 0 );
setMoveKey( spep_3 + 126, 1, 221.3, 1.6 , 0 );
setMoveKey( spep_3 + 210, 1, 221.3, -0.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 23, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 32, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 34, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 36, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 38, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 40, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 42, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 44, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 46, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 50, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 52, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 54, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 56, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 58, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 60, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 62, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 64, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 66, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 68, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 70, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 72, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 74, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 76, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 78, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 80, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 82, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 84, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 86, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 88, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 90, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 92, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 94, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 96, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 98, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 100, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 102, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 104, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 106, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 108, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 110, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 112, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 114, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 116, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 118, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 120, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 210, 1, 0.56, 0.56 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 22, 1, 0 );
setRotateKey( spep_3 + 23, 1, -44.6 );
setRotateKey( spep_3 + 24, 1, -44.6 );
setRotateKey( spep_3 + 28, 1, -44.3 );
setRotateKey( spep_3 + 30, 1, -43.9 );
setRotateKey( spep_3 + 32, 1, -43.6 );
setRotateKey( spep_3 + 34, 1, -43.2 );
setRotateKey( spep_3 + 36, 1, -42.9 );
setRotateKey( spep_3 + 38, 1, -42.5 );
setRotateKey( spep_3 + 40, 1, -42.2 );
setRotateKey( spep_3 + 42, 1, -41.9 );
setRotateKey( spep_3 + 44, 1, -41.5 );
setRotateKey( spep_3 + 46, 1, -41.2 );
setRotateKey( spep_3 + 48, 1, -40.8 );
setRotateKey( spep_3 + 50, 1, -40.1 );
setRotateKey( spep_3 + 52, 1, -39.3 );
setRotateKey( spep_3 + 54, 1, -38.5 );
setRotateKey( spep_3 + 56, 1, -37.7 );
setRotateKey( spep_3 + 58, 1, -37 );
setRotateKey( spep_3 + 60, 1, -36.2 );
setRotateKey( spep_3 + 62, 1, -35.4 );
setRotateKey( spep_3 + 64, 1, -34.6 );
setRotateKey( spep_3 + 66, 1, -33.9 );
setRotateKey( spep_3 + 68, 1, -33.1 );
setRotateKey( spep_3 + 70, 1, -32.3 );
setRotateKey( spep_3 + 72, 1, -31.6 );
setRotateKey( spep_3 + 74, 1, -30.8 );
setRotateKey( spep_3 + 76, 1, -30 );
setRotateKey( spep_3 + 78, 1, -29.2 );
setRotateKey( spep_3 + 80, 1, -28.5 );
setRotateKey( spep_3 + 82, 1, -27.7 );
setRotateKey( spep_3 + 84, 1, -26.9 );
setRotateKey( spep_3 + 86, 1, -26.1 );
setRotateKey( spep_3 + 88, 1, -19.8 );
setRotateKey( spep_3 + 90, 1, -13.5 );
setRotateKey( spep_3 + 92, 1, -7.2 );
setRotateKey( spep_3 + 94, 1, -0.9 );
setRotateKey( spep_3 + 96, 1, 5.4 );
setRotateKey( spep_3 + 98, 1, 3.4 );
setRotateKey( spep_3 + 100, 1, 1.4 );
setRotateKey( spep_3 + 102, 1, -0.6 );
setRotateKey( spep_3 + 104, 1, -2.6 );
setRotateKey( spep_3 + 106, 1, -0.6 );
setRotateKey( spep_3 + 108, 1, 1.4 );
setRotateKey( spep_3 + 110, 1, 3.4 );
setRotateKey( spep_3 + 112, 1, 5.4 );
setRotateKey( spep_3 + 114, 1, 4.3 );
setRotateKey( spep_3 + 116, 1, 3.1 );
setRotateKey( spep_3 + 118, 1, 2 );
setRotateKey( spep_3 + 120, 1, 0.9 );
setRotateKey( spep_3 + 122, 1, 2 );
setRotateKey( spep_3 + 124, 1, 3.1 );
setRotateKey( spep_3 + 126, 1, 4.3 );
setRotateKey( spep_3 + 210, 1, 4.3 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 22,  906, 54, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 22, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 22, shuchusen3, 1.33, 1.33 );
setEffScaleKey( spep_3 + 76, shuchusen3, 1.33, 1.33 );

setEffRotateKey( spep_3 + 22, shuchusen3, 180 );
setEffRotateKey( spep_3 + 76, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 22, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 23, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 24, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 76, shuchusen3, 255 );

--SE
playSe( spep_3, SE_07); --死光線
playSe( spep_3+96, 1007); --死光線

-- ダメージ表示
dealDamage(spep_3+100);
entryFade( spep_3+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+210);

else 
------------------------------------------------------
--てき
------------------------------------------------------
------------------------------------------------------
--タメ
------------------------------------------------------

spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01x,114,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,-1.0,1.0);
setEffScaleKey(spep_0+114,tame,-1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+114,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+114,tame,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 114, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 114, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 114, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 32, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 33, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 34, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen1, 255 );
--顔カットイン
--speff=entryEffect(spep_0+20,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+20,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+32,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+32,ctgogo,0,520,0);
setEffMoveKey(spep_0+104,ctgogo,0,520,0);

setEffScaleKey( spep_0 + 32, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 96, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 98, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 102, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 104, ctgogo, -1.69, 1.69 );

setEffAlphaKey( spep_0 + 32, ctgogo, 0 );
setEffAlphaKey( spep_0 + 35, ctgogo, 255 );
setEffAlphaKey( spep_0 + 36, ctgogo, 255 );
setEffAlphaKey( spep_0 + 104, ctgogo, 255 );

setEffRotateKey(spep_0+32,ctgogo,0);
setEffRotateKey(spep_0+104,ctgogo,0);

playSe( spep_0+32, SE_04); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_0+100, 6, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+114;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
--撃つ
------------------------------------------------------
--エフェクト
shoot=entryEffectLife(spep_2,SP_02x,100,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shoot, 0, 0 , 0 );

setEffScaleKey(spep_2,shoot,-1.0,1.0);
setEffScaleKey(spep_2+100,shoot,-1.0,1.0);

setEffRotateKey(spep_2,shoot,0);
setEffRotateKey(spep_2+100,shoot,0);

setEffAlphaKey(spep_2,shoot,255);
setEffAlphaKey(spep_2+100,shoot,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 54,  906, 44, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 54, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 54, shuchusen2, 1, 1.4 );
setEffScaleKey( spep_2 + 98, shuchusen2, 1, 1.4 );

setEffRotateKey( spep_2 + 54, shuchusen2, 180 );
setEffRotateKey( spep_2 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 54, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 55, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 56, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen2, 255 );


--文字エントリー
ctbi = entryEffectLife( spep_2 - 4 + 58,  10024, 44, 0x100, -1, 0, 118.3, 209.6 ); --ビッ

setEffShake(spep_2 - 4 + 58,ctbi,40,10);

setEffMoveKey( spep_2 - 4 + 58, ctbi, 118.3, 209.6 , 0 );
setEffMoveKey( spep_2 - 4 + 60, ctbi, 154.3, 220 , 0 );
setEffMoveKey( spep_2 - 4 + 62, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 64, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 66, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 68, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 70, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 72, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 74, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 76, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 78, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 80, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 82, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 84, ctbi, 188.6, 231.4 , 0 );
setEffMoveKey( spep_2 - 4 + 86, ctbi, 185, 233.2 , 0 );
setEffMoveKey( spep_2 - 4 + 88, ctbi, 200.6, 235.4 , 0 );
setEffMoveKey( spep_2 - 4 + 90, ctbi, 208.3, 241.5 , 0 );
setEffMoveKey( spep_2 - 4 + 92, ctbi, 224.5, 243.3 , 0 );
setEffMoveKey( spep_2  + 98, ctbi, 236.5, 247.3 , 0 );

setEffScaleKey( spep_2 - 4 + 58, ctbi, 0.44, 0.44 );
setEffScaleKey( spep_2 - 4 + 60, ctbi, 0.72, 0.72 );
setEffScaleKey( spep_2 - 4 + 62, ctbi, 1, 1 );
setEffScaleKey( spep_2 - 4 + 86, ctbi, 1, 1 );
setEffScaleKey( spep_2 - 4 + 88, ctbi, 1.1, 1.1 );
setEffScaleKey( spep_2 - 4 + 90, ctbi, 1.19, 1.19 );
setEffScaleKey( spep_2 - 4 + 92, ctbi, 1.29, 1.29 );
setEffScaleKey( spep_2  + 98, ctbi, 1.39, 1.39 );

setEffRotateKey( spep_2 - 4 + 58, ctbi, 26.8 );
setEffRotateKey( spep_2  + 98, ctbi, 26.9 );

setEffAlphaKey( spep_2 - 4 + 58, ctbi, 0 );
setEffAlphaKey( spep_2 - 4 + 59, ctbi, 255 );
setEffAlphaKey( spep_2 - 4 + 60, ctbi, 255 );
setEffAlphaKey( spep_2 - 4 + 86, ctbi, 255 );
setEffAlphaKey( spep_2 - 4 + 88, ctbi, 191 );
setEffAlphaKey( spep_2 - 4 + 90, ctbi, 128 );
setEffAlphaKey( spep_2 - 4 + 92, ctbi, 64 );
setEffAlphaKey( spep_2  + 98, ctbi, 0 );


--SE
SE1=playSe( spep_2, 15); --溜め
stopSe(spep_2+56,SE1,0);


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+80 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,83.7, 87.6 , 0 );
    --setScaleKey(SP_dodge , 1, 1.83, 1.83);
    --setRotateKey(SP_dodge,   1, -3.5 );
    
    ---キャラクターの固定
    --setMoveKey(SP_dodge+10, 1,83.7, 87.6 , 0 );
    --setScaleKey(SP_dodge+10 , 1, 1.83, 1.83);
    --setRotateKey(SP_dodge+10,   1, -3.5 );
   

    
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
--SE
    playSe( spep_2+58, SE_07); --死光線


-- ** エフェクト等 ** --
entryFade(spep_2+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+100;
------------------------------------------------------
--撃つ
------------------------------------------------------
--エフェクト
hit_f=entryEffect(spep_3,SP_04x,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 220, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+220,hit_f,1.0,1.0);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+220,hit_f,0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+220,hit_f,255);

--エフェクト
hit_b=entryEffect(spep_3,SP_03x,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 220, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_b,1.0,1.0);
setEffScaleKey(spep_3+220,hit_b,1.0,1.0);

setEffRotateKey(spep_3,hit_b,0);
setEffRotateKey(spep_3+220,hit_b,0);

setEffAlphaKey(spep_3,hit_b,255);
setEffAlphaKey(spep_3+220,hit_b,255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 23, 1, 106 );
changeAnime( spep_3 + 24, 1, 106 );

setMoveKey( spep_3 + 0, 1, 48.9, -25.7 , 0 );
setMoveKey( spep_3 + 22, 1, 48.9, -25.7 , 0 );
setMoveKey( spep_3 + 23, 1, 40.2, -32.7 , 0 );
setMoveKey( spep_3 + 24, 1, 40.2, -32.7 , 0 );
setMoveKey( spep_3 + 28, 1, 43.6, -27.6 , 0 );
setMoveKey( spep_3 + 30, 1, 47.2, -22.7 , 0 );
setMoveKey( spep_3 + 32, 1, 50.6, -17.9 , 0 );
setMoveKey( spep_3 + 34, 1, 54.1, -13.2 , 0 );
setMoveKey( spep_3 + 36, 1, 55.3, -12.1 , 0 );
setMoveKey( spep_3 + 38, 1, 56.7, -11.4 , 0 );
setMoveKey( spep_3 + 40, 1, 57.9, -10.7 , 0 );
setMoveKey( spep_3 + 42, 1, 59.2, -9.9 , 0 );
setMoveKey( spep_3 + 44, 1, 60.5, -8.8 , 0 );
setMoveKey( spep_3 + 46, 1, 61.8, -8.1 , 0 );
setMoveKey( spep_3 + 48, 1, 63.1, -7.3 , 0 );
setMoveKey( spep_3 + 50, 1, 63.5, -6.6 , 0 );
setMoveKey( spep_3 + 52, 1, 64.2, -5.5 , 0 );
setMoveKey( spep_3 + 54, 1, 64.7, -4.7 , 0 );
setMoveKey( spep_3 + 56, 1, 65.2, -4.1 , 0 );
setMoveKey( spep_3 + 58, 1, 65.7, -3.3 , 0 );
setMoveKey( spep_3 + 60, 1, 66.4, -2.2 , 0 );
setMoveKey( spep_3 + 62, 1, 66.9, -1.5 , 0 );
setMoveKey( spep_3 + 64, 1, 67.5, -0.7 , 0 );
setMoveKey( spep_3 + 66, 1, 68, 0 , 0 );
setMoveKey( spep_3 + 68, 1, 68.7, 1.1 , 0 );
setMoveKey( spep_3 + 70, 1, 69.4, 1.8 , 0 );
setMoveKey( spep_3 + 72, 1, 69.9, 2.6 , 0 );
setMoveKey( spep_3 + 74, 1, 70.6, 3.6 , 0 );
setMoveKey( spep_3 + 76, 1, 71.2, 4.4 , 0 );
setMoveKey( spep_3 + 78, 1, 71.9, 5.1 , 0 );
setMoveKey( spep_3 + 80, 1, 78.5, 8.2 , 0 );
setMoveKey( spep_3 + 82, 1, 85.2, 11.4 , 0 );
setMoveKey( spep_3 + 84, 1, 92, 14.5 , 0 );
setMoveKey( spep_3 + 86, 1, 98.8, 17.6 , 0 );
setMoveKey( spep_3 + 88, 1, 106.2, -4.3 , 0 );
setMoveKey( spep_3 + 90, 1, 113.7, -25.2 , 0 );
setMoveKey( spep_3 + 92, 1, 121, -44.4 , 0 );
setMoveKey( spep_3 + 94, 1, 128.5, -62.4 , 0 );
setMoveKey( spep_3 + 96, 1, 135.9, -78.9 , 0 );
setMoveKey( spep_3 + 98, 1, 142.9, -68.5 , 0 );
setMoveKey( spep_3 + 100, 1, 150.1, -58.2 , 0 );
setMoveKey( spep_3 + 102, 1, 157.2, -48.2 , 0 );
setMoveKey( spep_3 + 104, 1, 164.3, -38.4 , 0 );
setMoveKey( spep_3 + 106, 1, 171.5, -35.6 , 0 );
setMoveKey( spep_3 + 108, 1, 178.6, -32.4 , 0 );
setMoveKey( spep_3 + 110, 1, 185.6, -30.5 , 0 );
setMoveKey( spep_3 + 112, 1, 192.7, -26.9 , 0 );
setMoveKey( spep_3 + 114, 1, 199.9, -18.3 , 0 );
setMoveKey( spep_3 + 116, 1, 207, -9.9 , 0 );
setMoveKey( spep_3 + 118, 1, 214.1, -1.7 , 0 );
setMoveKey( spep_3 + 120, 1, 221.3, 6.4 , 0 );
setMoveKey( spep_3 + 122, 1, 221.3, 4.8 , 0 );
setMoveKey( spep_3 + 124, 1, 221.3, 3.2 , 0 );
setMoveKey( spep_3 + 126, 1, 221.3, 1.6 , 0 );
setMoveKey( spep_3 + 210, 1, 221.3, -0.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 23, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 32, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 34, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 36, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 38, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 40, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 42, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 44, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 46, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 50, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 52, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 54, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 56, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 58, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 60, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 62, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 64, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 66, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 68, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 70, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 72, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 74, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 76, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 78, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 80, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 82, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 84, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 86, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 88, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 90, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 92, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 94, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 96, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 98, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 100, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 102, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 104, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 106, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 108, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 110, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 112, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 114, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 116, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 118, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 120, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 210, 1, 0.56, 0.56 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 22, 1, 0 );
setRotateKey( spep_3 + 23, 1, -44.6 );
setRotateKey( spep_3 + 24, 1, -44.6 );
setRotateKey( spep_3 + 28, 1, -44.3 );
setRotateKey( spep_3 + 30, 1, -43.9 );
setRotateKey( spep_3 + 32, 1, -43.6 );
setRotateKey( spep_3 + 34, 1, -43.2 );
setRotateKey( spep_3 + 36, 1, -42.9 );
setRotateKey( spep_3 + 38, 1, -42.5 );
setRotateKey( spep_3 + 40, 1, -42.2 );
setRotateKey( spep_3 + 42, 1, -41.9 );
setRotateKey( spep_3 + 44, 1, -41.5 );
setRotateKey( spep_3 + 46, 1, -41.2 );
setRotateKey( spep_3 + 48, 1, -40.8 );
setRotateKey( spep_3 + 50, 1, -40.1 );
setRotateKey( spep_3 + 52, 1, -39.3 );
setRotateKey( spep_3 + 54, 1, -38.5 );
setRotateKey( spep_3 + 56, 1, -37.7 );
setRotateKey( spep_3 + 58, 1, -37 );
setRotateKey( spep_3 + 60, 1, -36.2 );
setRotateKey( spep_3 + 62, 1, -35.4 );
setRotateKey( spep_3 + 64, 1, -34.6 );
setRotateKey( spep_3 + 66, 1, -33.9 );
setRotateKey( spep_3 + 68, 1, -33.1 );
setRotateKey( spep_3 + 70, 1, -32.3 );
setRotateKey( spep_3 + 72, 1, -31.6 );
setRotateKey( spep_3 + 74, 1, -30.8 );
setRotateKey( spep_3 + 76, 1, -30 );
setRotateKey( spep_3 + 78, 1, -29.2 );
setRotateKey( spep_3 + 80, 1, -28.5 );
setRotateKey( spep_3 + 82, 1, -27.7 );
setRotateKey( spep_3 + 84, 1, -26.9 );
setRotateKey( spep_3 + 86, 1, -26.1 );
setRotateKey( spep_3 + 88, 1, -19.8 );
setRotateKey( spep_3 + 90, 1, -13.5 );
setRotateKey( spep_3 + 92, 1, -7.2 );
setRotateKey( spep_3 + 94, 1, -0.9 );
setRotateKey( spep_3 + 96, 1, 5.4 );
setRotateKey( spep_3 + 98, 1, 3.4 );
setRotateKey( spep_3 + 100, 1, 1.4 );
setRotateKey( spep_3 + 102, 1, -0.6 );
setRotateKey( spep_3 + 104, 1, -2.6 );
setRotateKey( spep_3 + 106, 1, -0.6 );
setRotateKey( spep_3 + 108, 1, 1.4 );
setRotateKey( spep_3 + 110, 1, 3.4 );
setRotateKey( spep_3 + 112, 1, 5.4 );
setRotateKey( spep_3 + 114, 1, 4.3 );
setRotateKey( spep_3 + 116, 1, 3.1 );
setRotateKey( spep_3 + 118, 1, 2 );
setRotateKey( spep_3 + 120, 1, 0.9 );
setRotateKey( spep_3 + 122, 1, 2 );
setRotateKey( spep_3 + 124, 1, 3.1 );
setRotateKey( spep_3 + 126, 1, 4.3 );
setRotateKey( spep_3 + 210, 1, 4.3 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 22,  906, 54, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 22, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 22, shuchusen3, 1.33, 1.33 );
setEffScaleKey( spep_3 + 76, shuchusen3, 1.33, 1.33 );

setEffRotateKey( spep_3 + 22, shuchusen3, 180 );
setEffRotateKey( spep_3 + 76, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 22, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 23, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 24, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 76, shuchusen3, 255 );

--SE
playSe( spep_3, SE_07); --死光線
playSe( spep_3+96, 1007); --死光線

-- ダメージ表示
dealDamage(spep_3+100);
entryFade( spep_3+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+210);

end


--1015180 超サイヤ人2孫悟空(天使)_メテオアサルト
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
SP_01=	152500	;--	構え
SP_02=	152501	;--	連撃・手前
SP_03=	152502	;--	連撃・奥
SP_04=	152503	;--	岩破壊・手前
SP_05=	152504	;--	岩破壊・奥
SP_06=	152505	;--	岩に叩きつけ・手前
SP_07=	152506	;--	岩に叩きつけ・奥
SP_08=	152507	;--	ため〜放つ〜着弾・手前
SP_09=	152508	;--	ため〜放つ〜着弾・奥
SP_10=	152509	;--	爆発

--敵
SP_01x=	152510	;--	敵用：構え
SP_02x=	152511	;--	敵用：連撃・手前
SP_03x=	152502	;--	連撃・奥
SP_04x=	152503	;--	岩破壊・手前
SP_05x=	152504	;--	岩破壊・奥
SP_06x=	152505	;--	岩に叩きつけ・手前
SP_07x=	152506	;--	岩に叩きつけ・奥
SP_08x=	152512	;--	敵用：ため〜放つ〜着弾・手前
SP_09x=	152508	;--	ため〜放つ〜着弾・奥
SP_10x=	152513	;--	敵用：爆発	
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
--溜め
------------------------------------------------------

spep_0=0;
--エフェクト
tame=entryEffectLife(spep_0,SP_01,140,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+140,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+140,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+140,tame,255);

--文字エントリー
ctsyun = entryEffectLife( spep_0 + 102,  10011, 20, 0x100, -1, 0, -64, 370.7 );--シュンッ

setEffMoveKey( spep_0 + 102, ctsyun, -64, 370.7 , 0 );
setEffMoveKey( spep_0 + 108, ctsyun, -63.9, 370.7 , 0 );
setEffMoveKey( spep_0 + 110, ctsyun, -63.8, 370.7 , 0 );
setEffMoveKey( spep_0 + 112, ctsyun, -63.8, 370.7 , 0 );
setEffMoveKey( spep_0 + 114, ctsyun, -63.8, 370.6 , 0 );
setEffMoveKey( spep_0 + 116, ctsyun, -63.8, 370.6 , 0 );
setEffMoveKey( spep_0 + 118, ctsyun, -63.9, 370.6 , 0 );
setEffMoveKey( spep_0 + 122, ctsyun, -63.9, 370.6 , 0 );

setEffScaleKey( spep_0 + 102, ctsyun, 2.02, 2.02 );
setEffScaleKey( spep_0 + 108, ctsyun, 3.4, 3.4 );
setEffScaleKey( spep_0 + 110, ctsyun, 3.01, 3.01 );
setEffScaleKey( spep_0 + 112, ctsyun, 2.62, 2.62 );
setEffScaleKey( spep_0 + 114, ctsyun, 2.23, 2.23 );
setEffScaleKey( spep_0 + 116, ctsyun, 2.19, 2.19 );
setEffScaleKey( spep_0 + 118, ctsyun, 2.16, 2.16 );
setEffScaleKey( spep_0 + 120, ctsyun, 2.13, 2.13 );
setEffScaleKey( spep_0 + 122, ctsyun, 2.09, 2.09 );

setEffRotateKey( spep_0 + 102, ctsyun, -11.7 );
setEffRotateKey( spep_0 + 122, ctsyun, -11.7 );

setEffAlphaKey( spep_0 + 102, ctsyun, 0 );
setEffAlphaKey( spep_0 + 103, ctsyun, 255 );
setEffAlphaKey( spep_0 + 104, ctsyun, 255 );
setEffAlphaKey( spep_0 + 114, ctsyun, 255 );
setEffAlphaKey( spep_0 + 116, ctsyun, 191 );
setEffAlphaKey( spep_0 + 118, ctsyun, 128 );
setEffAlphaKey( spep_0 + 120, ctsyun, 64 );
setEffAlphaKey( spep_0 + 122, ctsyun, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 )
setEffMoveKey( spep_0 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.05, 1.07 );
setEffScaleKey( spep_0 + 138, shuchusen1, 1.05, 1.07 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 138, shuchusen1, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+132, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--***SE***
playSe(  spep_0,  9);
playSe(  spep_0+102,  43);  --瞬間移動

--次の準備
spep_1=spep_0+140;

------------------------------------------------------
--ぼうこう
------------------------------------------------------
--エフェクト(前)
rush_f=entryEffectLife(spep_1,SP_02,250,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, rush_f, 0, 0 , 0 );

setEffScaleKey(spep_1,rush_f,1.0,1.0);
setEffScaleKey(spep_1+250,rush_f,1.0,1.0);

setEffRotateKey(spep_1,rush_f,0);
setEffRotateKey(spep_1+250,rush_f,0);

setEffAlphaKey(spep_1,rush_f,255);
setEffAlphaKey(spep_1+250,rush_f,255);

--エフェクト(後)
rush_b=entryEffectLife(spep_1,SP_03,250,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, rush_b, 0, 0 , 0 );

setEffScaleKey(spep_1,rush_b,1.0,1.0);
setEffScaleKey(spep_1+250,rush_b,1.0,1.0);

setEffRotateKey(spep_1,rush_b,0);
setEffRotateKey(spep_1+250,rush_b,0);

setEffAlphaKey(spep_1,rush_b,255);
setEffAlphaKey(spep_1+250,rush_b,255);

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  914, 110, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 110, ryusen1, 0, 0 , 0 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 110, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 0 );
setEffAlphaKey( spep_1 + 30, ryusen1, 0 );
setEffAlphaKey( spep_1 + 31, ryusen1, 0 );
setEffAlphaKey( spep_1 + 32, ryusen1, 255 );
setEffAlphaKey( spep_1 + 110, ryusen1, 255 );

--文字エントリー
ctsyun2 = entryEffectLife( spep_1 + 0,  10011, 20, 0x100, -1, 0, -132, 294.7 );--シュンッ

setEffMoveKey( spep_1 + 0, ctsyun2, -132, 294.7 , 0 );
setEffMoveKey( spep_1 + 6, ctsyun2, -131.9, 294.7 , 0 );
setEffMoveKey( spep_1 + 8, ctsyun2, -131.8, 294.7 , 0 );
setEffMoveKey( spep_1 + 14, ctsyun2, -131.8, 294.7 , 0 );
setEffMoveKey( spep_1 + 16, ctsyun2, -131.9, 294.7 , 0 );
setEffMoveKey( spep_1 + 18, ctsyun2, -132, 294.7 , 0 );
setEffMoveKey( spep_1 + 20, ctsyun2, -132, 294.7 , 0 );

setEffScaleKey( spep_1 + 0, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 + 6, ctsyun2, 2.1, 2.1 );
setEffScaleKey( spep_1 + 8, ctsyun2, 1.86, 1.86 );
setEffScaleKey( spep_1 + 10, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 12, ctsyun2, 1.38, 1.38 );
setEffScaleKey( spep_1 + 14, ctsyun2, 1.36, 1.36 );
setEffScaleKey( spep_1 + 16, ctsyun2, 1.34, 1.34 );
setEffScaleKey( spep_1 + 18, ctsyun2, 1.31, 1.31 );
setEffScaleKey( spep_1 + 20, ctsyun2, 1.29, 1.29 );

setEffRotateKey( spep_1 + 0, ctsyun2, 19.3 );
setEffRotateKey( spep_1 + 20, ctsyun2, 19.3 );

setEffAlphaKey( spep_1 + 0, ctsyun2, 0 );
setEffAlphaKey( spep_1 + 1, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 2, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 3, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 12, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 14, ctsyun2, 191 );
setEffAlphaKey( spep_1 + 16, ctsyun2, 128 );
setEffAlphaKey( spep_1 + 18, ctsyun2, 64 );
setEffAlphaKey( spep_1 + 20, ctsyun2, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+20 ; --エンドフェイズのフレーム数を置き換える
    playSe( SP_dodge-12, 1042);
    pauseAll( SP_dodge, 67);
    
    --敵の位置固定
    setMoveKey( SP_dodge, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+2, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+4, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+6, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+8, 1, 178.2, 15 , 0 );
    
    setRotateKey( SP_dodge, 1, 0 );
    setRotateKey( SP_dodge+8, 1, 0 );
    
    setScaleKey( spep_2 + 0, 1, 1.13, 1.13 );
    setScaleKey( spep_2 + 12, 1, 1.13, 1.13 );
    setScaleKey( spep_2 + 14, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+2, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+4, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+6, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+8, 1, 1.13, 1.13 );
    
    --changeAnime(  SP_dodge+9,    1,  100);
    setMoveKey(  SP_dodge+9,    1,  178.2, 15 , 0 );
    setMoveKey(  SP_dodge+10,    1,  178.2, 15 , 0 );
    setScaleKey( SP_dodge+9,    1,  1.13, 1.13 );
    setScaleKey( SP_dodge+10,    1,  1.13, 1.13 );
    setRotateKey(   SP_dodge+9,   1, 0);
    setRotateKey(   SP_dodge+10,   1, 0);
    
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

--***敵の動き***
setDisp( spep_1, 1, 1 );
setDisp( spep_1+226, 1, 0 );
setDisp(  spep_1+258,  1,  1);
setDisp(  spep_1+280,  1,  0);  --消す
setShakeChara(spep_1+40,  1,  298,  20); --揺れ

changeAnime( spep_1, 1, 100 );
changeAnime( spep_1-3+32, 1, 104 );
changeAnime( spep_1-3+44, 1, 108 );  --くの字
changeAnime( spep_1-3+52, 1, 104 );
changeAnime( spep_1-3+54, 1, 106 );  
changeAnime( spep_1-3+62, 1, 108 );
changeAnime( spep_1-3+70, 1, 106 );
changeAnime( spep_1-3+78, 1, 108 );
changeAnime( spep_1-3+90, 1, 106 );
changeAnime( spep_1-3+98, 1, 108 );
changeAnime( spep_1-3+104, 1, 104 );
changeAnime( spep_1-3+108, 1, 108 );
changeAnime( spep_1-3+114, 1, 106 );
changeAnime( spep_1-3+122, 1, 108 );
changeAnime( spep_1-3+130, 1, 104 );
changeAnime( spep_1-3+132, 1, 106 );
changeAnime( spep_1-3+140, 1, 108 );
changeAnime( spep_1-3+148, 1, 106 );
changeAnime( spep_1-3+156, 1, 108 );
changeAnime( spep_1-3+168, 1, 106 );
changeAnime( spep_1-3+176, 1, 108 );
changeAnime( spep_1-3+182, 1, 104 );
changeAnime( spep_1-3+186, 1, 108 );
changeAnime( spep_1-3+192, 1, 106 );
changeAnime( spep_1-3+200, 1, 108 );
changeAnime( spep_1-3+208, 1, 104 );
changeAnime( spep_1-3+210, 1, 106 );
changeAnime( spep_1-3+218, 1, 108 );
changeAnime(spep_1-3+258,  1,  107);   --手前吹っ飛び

setMoveKey(spep_1-3, 1, 172.1, 14.5 , 0 );
setMoveKey(spep_1-3+2, 1, 172.7, 14.6 , 0 );
setMoveKey(spep_1-3+4, 1, 173.3, 14.6 , 0 );
setMoveKey(spep_1-3+6, 1, 173.9, 14.7 , 0 );
setMoveKey(spep_1-3+8, 1, 174.5, 14.7 , 0 );
setMoveKey(spep_1-3+10, 1, 175.2, 14.8 , 0 );
setMoveKey(spep_1-3+12, 1, 175.8, 14.8 , 0 );
setMoveKey(spep_1-3+14, 1, 176.4, 14.9 , 0 );
setMoveKey(spep_1-3+16, 1, 177, 14.9 , 0 );
setMoveKey(spep_1-3+18, 1, 177.6, 15 , 0 );
setMoveKey(spep_1-3+20, 1, 178.2, 15 , 0 );
setMoveKey(spep_1-3+22, 1, 178.9, 15.1 , 0 );
setMoveKey(spep_1-3+24, 1, 179.5, 15.1 , 0 );
setMoveKey(spep_1-3+26, 1, 180.1, 15.2 , 0 );
setMoveKey(spep_1-3+28, 1, 180.7, 15.2 , 0 );
setMoveKey(spep_1-3+30, 1, 167.1, 16.8 , 0 );
setMoveKey(spep_1-3+32, 1, 152.2, 23 , 0 );
setMoveKey(spep_1-3+34, 1, 148, 24.8 , 0 );
setMoveKey(spep_1-3+36, 1, 144.7, 26.6 , 0 );
setMoveKey(spep_1-3+38, 1, 142.3, 28.4 , 0 );
setMoveKey(spep_1-3+40, 1, 140.8, 30.2 , 0 );
setMoveKey(spep_1-3+42, 1, 140.1, 32 , 0 );
setMoveKey(spep_1-3+44, 1, 150.4, 36 , 0 );
setMoveKey(spep_1-3+46, 1, 154.6, 31.7 , 0 );
setMoveKey(spep_1-3+48, 1, 167, 35.5 , 0 );
setMoveKey(spep_1-3+50, 1, 167.5, 27.2 , 0 );
setMoveKey(spep_1-3+52, 1, 162.2, 17.4 , 0 );
setMoveKey(spep_1-3+54, 1, 119.3, 52.1 , 0 );
setMoveKey(spep_1-3+56, 1, 129.3, 66.4 , 0 );
setMoveKey(spep_1-3+58, 1, 140.7, 50.7 , 0 );
setMoveKey(spep_1-3+60, 1, 150.7, 65.3 , 0 );
setMoveKey(spep_1-3+62, 1, 167.4, 58 , 0 );
setMoveKey(spep_1-3+64, 1, 175.5, 61.9 , 0 );
setMoveKey(spep_1-3+66, 1, 171.6, 57.8 , 0 );
setMoveKey(spep_1-3+68, 1, 183.9, 61.7 , 0 );
setMoveKey(spep_1-3+70, 1, 140.7, 83.2 , 0 );
setMoveKey(spep_1-3+72, 1, 141.5, 102.8 , 0 );
setMoveKey(spep_1-3+74, 1, 148.8, 92.2 , 0 );
setMoveKey(spep_1-3+76, 1, 145.1, 102.8 , 0 );
setMoveKey(spep_1-3+78, 1, 187.6, 53.1 , 0 );
setMoveKey(spep_1-3+80, 1, 209.9, 60.2 , 0 );
setMoveKey(spep_1-3+82, 1, 220.4, 55.3 , 0 );
setMoveKey(spep_1-3+84, 1, 239, 29.1 , 0 );
setMoveKey(spep_1-3+86, 1, 230.8, 24.8 , 0 );
setMoveKey(spep_1-3+88, 1, 238.5, 28.5 , 0 );

setMoveKey(spep_1-3+90, 1, 132.7, 68.2 , 0 );
setMoveKey(spep_1-3+92, 1, 133.4, 98.5 , 0 );
setMoveKey(spep_1-3+94, 1, 141.3, 97.8 , 0 );
setMoveKey(spep_1-3+96, 1, 137.2, 119.2 , 0 );
setMoveKey(spep_1-3+98, 1, 182.2, 55.8 , 0 );
setMoveKey(spep_1-3+100, 1, 205.3, 58.9 , 0 );
setMoveKey(spep_1-3+102, 1, 216.5, 50 , 0 );
setMoveKey(spep_1-3+104, 1, 174.3, 23.7 , 0 );
setMoveKey(spep_1-3+106, 1, 185.5, 19.4 , 0 );
setMoveKey(spep_1-3+108, 1, 187.5, 27.4 , 0 );
setMoveKey(spep_1-3+110, 1, 192.6, 23.1 , 0 );
setMoveKey(spep_1-3+112, 1, 205.8, 26.8 , 0 );
setMoveKey(spep_1-3+114, 1, 106.8, 55.5 , 0 );
setMoveKey(spep_1-3+116, 1, 105.5, 73.1 , 0 );
setMoveKey(spep_1-3+118, 1, 108.4, 58.5 , 0 );
setMoveKey(spep_1-3+120, 1, 27.9, 184.8 , 0 );
setMoveKey(spep_1-3+122, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1-3+124, 1, 34.5, 168.7 , 0 );
setMoveKey(spep_1-3+126, 1, 37.4, 168.7 , 0 );
setMoveKey(spep_1-3+128, 1, 40.3, 168.7 , 0 );
setMoveKey(spep_1-3+130, 1, 34.8, 161.9 , 0 );
setMoveKey(spep_1-3+132, 1, 19.2, 177 , 0 );
setMoveKey(spep_1-3+134, 1, 21.2, 181.1 , 0 );
setMoveKey(spep_1-3+136, 1, 28.4, 178.2 , 0 );
setMoveKey(spep_1-3+138, 1, 28.8, 180.8 , 0 );
setMoveKey(spep_1-3+140, 1, 36.3, 179.6 , 0 );
setMoveKey(spep_1-3+142, 1, 37.4, 179.6 , 0 );
setMoveKey(spep_1-3+144, 1, 38.6, 179.6 , 0 );
setMoveKey(spep_1-3+146, 1, 39.7, 179.6 , 0 );
setMoveKey(spep_1-3+148, 1, 24.6, 190.7 , 0 );
setMoveKey(spep_1-3+150, 1, 23.1, 194.9 , 0 );
setMoveKey(spep_1-3+152, 1, 26.9, 192.5 , 0 );
setMoveKey(spep_1-3+154, 1, 23.6, 194.9 , 0 );
setMoveKey(spep_1-3+156, 1, 41.7, 179.6 , 0 );
setMoveKey(spep_1-3+158, 1, 46.5, 179.3 , 0 );
setMoveKey(spep_1-3+160, 1, 51.2, 179 , 0 );
setMoveKey(spep_1-3+162, 1, 55.9, 168.2 , 0 );
setMoveKey(spep_1-3+164, 1, 55.3, 168.2 , 0 );
setMoveKey(spep_1-3+166, 1, 54.6, 168.2 , 0 );
setMoveKey(spep_1-3+168, 1, 17.8, 185.2 , 0 );
setMoveKey(spep_1-3+170, 1, 16.3, 193.1 , 0 );
setMoveKey(spep_1-3+172, 1, 20.1, 194.3 , 0 );
setMoveKey(spep_1-3+174, 1, 16.8, 200.3 , 0 );
setMoveKey(spep_1-3+176, 1, 34.9, 179.6 , 0 );
setMoveKey(spep_1-3+178, 1, 39.7, 179.3 , 0 );
setMoveKey(spep_1-3+180, 1, 44.4, 179 , 0 );
setMoveKey(spep_1-3+182, 1, 28, 167.3 , 0 );
setMoveKey(spep_1-3+184, 1, 32.7, 167.3 , 0 );
setMoveKey(spep_1-3+186, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1-3+188, 1, 34.1, 168.7 , 0 );
setMoveKey(spep_1-3+190, 1, 36.7, 168.7 , 0 );
setMoveKey(spep_1-3+192, 1, 4.3, 179.8 , 0 );
setMoveKey(spep_1-3+194, 1, 2.1, 184.4 , 0 );
setMoveKey(spep_1-3+196, 1, 5.3, 182.2 , 0 );
setMoveKey(spep_1-3+198, 1, 1.5, 184.8 , 0 );
setMoveKey(spep_1-3+200, 1, 5.1, 168.7 , 0 );
setMoveKey(spep_1-3+202, 1, 8, 168.7 , 0 );
setMoveKey(spep_1-3+204, 1, 11, 168.7 , 0 );
setMoveKey(spep_1-3+206, 1, 13.9, 168.7 , 0 );
setMoveKey(spep_1-3+208, 1, 8.3, 161.9 , 0 );
setMoveKey(spep_1-3+210, 1, -7.2, 177 , 0 );
setMoveKey(spep_1-3+212, 1, -5.2, 181.1 , 0 );
setMoveKey(spep_1-3+214, 1, 1.9, 178.2 , 0 );
setMoveKey(spep_1-3+216, 1, 2.3, 180.8 , 0 );
setMoveKey(spep_1-3+218, 1, 9.8, 179.6 , 0 );
setMoveKey(spep_1-3+220, 1, 11, 179.6 , 0 );
setMoveKey(spep_1-3+222, 1, 12.1, 179.6 , 0 );
setMoveKey(spep_1-3+224, 1, 13.3, 179.6 , 0 );
setMoveKey(spep_1-3+258, 1, -34.2, -24 , 0 );
setMoveKey(spep_1-3+260, 1, -30.1, -34 , 0 );
setMoveKey(spep_1-3+262, 1, -38.1, -56.1 , 0 );
setMoveKey(spep_1-3+264, 1, -30.1, -62.1 , 0 );
setMoveKey(spep_1-3+266, 1, -34.1, -80.1 , 0 );
setMoveKey(spep_1-3+268, 1, -30.1, -90.2 , 0 );
setMoveKey(spep_1-3+270, 1, -38, -185.1 , 0 );
setMoveKey(spep_1-3+272, 1, -30, -264.1 , 0 );
setMoveKey(spep_1-3+274, 1, -33.9, -355 , 0 );
setMoveKey(spep_1-3+276, 1, -29.9, -438 , 0 );
setMoveKey(spep_1-3+278, 1, -37.8, -533 , 0 );
setMoveKey(spep_1-3+280, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+282, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+284, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+286, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+288, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+290, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+292, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+294, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+296, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+298, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+300, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+302, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+304, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+306, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+308, 1, -29.8, -612 , 0 );


setMoveKey(spep_1-3+310, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+312, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+314, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+316, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+318, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+320, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+322, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+324, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+326, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+328, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+330, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+332, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+334, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+336, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+338, 1, -43.2, 161.4 , 0 );

setScaleKey(spep_1-3+0, 1, 1.29, 1.29 );
setScaleKey(spep_1-3+2, 1, 1.29, 1.29 );
setScaleKey(spep_1-3+4, 1, 1.3, 1.3 );
setScaleKey(spep_1-3+8, 1, 1.3, 1.3 );
setScaleKey(spep_1-3+10, 1, 1.31, 1.31 );
setScaleKey(spep_1-3+12, 1, 1.31, 1.31 );
setScaleKey(spep_1-3+14, 1, 1.32, 1.32 );
setScaleKey(spep_1-3+18, 1, 1.32, 1.32 );
setScaleKey(spep_1-3+20, 1, 1.33, 1.33 );
setScaleKey(spep_1-3+24, 1, 1.33, 1.33 );
setScaleKey(spep_1-3+26, 1, 1.34, 1.34 );
setScaleKey(spep_1-3+28, 1, 1.34, 1.34 );
setScaleKey(spep_1-3+30, 1, 1.5, 1.5 );
setScaleKey(spep_1-3+32, 1, 1.47, 1.47 );
setScaleKey(spep_1-3+34, 1, 1.53, 1.53 );
setScaleKey(spep_1-3+36, 1, 1.59, 1.59 );
setScaleKey(spep_1-3+38, 1, 1.65, 1.65 );
setScaleKey(spep_1-3+40, 1, 1.72, 1.72 );
setScaleKey(spep_1-3+42, 1, 1.78, 1.78 );
setScaleKey(spep_1-3+44, 1, 1.83, 1.83 );
setScaleKey(spep_1-3+46, 1, 1.84, 1.84 );
setScaleKey(spep_1-3+48, 1, 1.85, 1.85 );
setScaleKey(spep_1-3+50, 1, 1.86, 1.86 );
setScaleKey(spep_1-3+52, 1, 1.87, 1.87 );
setScaleKey(spep_1-3+54, 1, 1.74, 1.74 );
setScaleKey(spep_1-3+56, 1, 1.75, 1.75 );
setScaleKey(spep_1-3+58, 1, 1.76, 1.76 );
setScaleKey(spep_1-3+60, 1, 1.76, 1.76 );
setScaleKey(spep_1-3+62, 1, 1.91, 1.91 );
setScaleKey(spep_1-3+64, 1, 1.92, 1.92 );
setScaleKey(spep_1-3+66, 1, 1.93, 1.93 );
setScaleKey(spep_1-3+68, 1, 1.93, 1.93 );
setScaleKey(spep_1-3+70, 1, 1.81, 1.81 );
setScaleKey(spep_1-3+72, 1, 1.81, 1.81 );
setScaleKey(spep_1-3+74, 1, 1.82, 1.82 );
setScaleKey(spep_1-3+76, 1, 1.83, 1.83 );
setScaleKey(spep_1-3+78, 1, 1.98, 1.98 );
setScaleKey(spep_1-3+80, 1, 1.99, 1.99 );
setScaleKey(spep_1-3+82, 1, 2.0, 2.0 );
setScaleKey(spep_1-3+84, 1, 2.01, 2.01 );
setScaleKey(spep_1-3+86, 1, 2.01, 2.01 );
setScaleKey(spep_1-3+88, 1, 2.02, 2.02 );
setScaleKey(spep_1-3+90, 1, 1.89, 1.89 );
setScaleKey(spep_1-3+92, 1, 1.89, 1.89 );
setScaleKey(spep_1-3+94, 1, 1.9, 1.9 );
setScaleKey(spep_1-3+96, 1, 1.91, 1.91 );
setScaleKey(spep_1-3+98, 1, 2.07, 2.07 );
setScaleKey(spep_1-3+100, 1, 2.08, 2.08 );
setScaleKey(spep_1-3+102, 1, 2.08, 2.08 );
setScaleKey(spep_1-3+104, 1, 2.1, 2.1 );
setScaleKey(spep_1-3+106, 1, 2.11, 2.11 );
setScaleKey(spep_1-3+108, 1, 2.11, 2.11 );
setScaleKey(spep_1-3+110, 1, 2.12, 2.12 );
setScaleKey(spep_1-3+112, 1, 2.13, 2.13 );
setScaleKey(spep_1-3+114, 1, 1.98, 1.98 );
setScaleKey(spep_1-3+116, 1, 1.99, 1.99 );
setScaleKey(spep_1-3+118, 1, 2.0, 2.0 );
setScaleKey(spep_1-3+120, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+122, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+128, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+130, 1, 0.86, 0.86 );
setScaleKey(spep_1-3+132, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+138, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+140, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+146, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+148, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+154, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+156, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+166, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+168, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+174, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+176, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+180, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+182, 1, 0.86, 0.86 );
setScaleKey(spep_1-3+184, 1, 0.86, 0.86 );
setScaleKey(spep_1-3+186, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+190, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+192, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+198, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+200, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+206, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+208, 1, 0.86, 0.86 );
setScaleKey(spep_1-3+210, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+218, 1, 0.85, 0.85 );

setScaleKey(spep_1-3+258, 1, 0.21, 0.21 );
setScaleKey(spep_1-3+260, 1, 0.37, 0.37 );
setScaleKey(spep_1-3+262, 1, 0.53, 0.53 );
setScaleKey(spep_1-3+264, 1, 0.69, 0.69 );
setScaleKey(spep_1-3+266, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+268, 1, 1.01, 1.01 );
setScaleKey(spep_1-3+270, 1, 1.4, 1.4 );
setScaleKey(spep_1-3+272, 1, 1.79, 1.79 );
setScaleKey(spep_1-3+274, 1, 2.17, 2.17 );
setScaleKey(spep_1-3+276, 1, 2.56, 2.56 );
setScaleKey(spep_1-3+278, 1, 2.95, 2.95 );
setScaleKey(spep_1-3+280, 1, 3.34, 3.34 );

setRotateKey(spep_1-3, 1, 0 );
setRotateKey(spep_1-3+18, 1, 0 );
setRotateKey(spep_1-3+20, 1, 0 );
setRotateKey(spep_1-3+30, 1, 0 );
setRotateKey(spep_1-3+32, 1, -2 );
setRotateKey(spep_1-3+34, 1, -1.6 );
setRotateKey(spep_1-3+36, 1, -1.2 );
setRotateKey(spep_1-3+38, 1, -0.8 );
setRotateKey(spep_1-3+40, 1, -0.4 );
setRotateKey(spep_1-3+42, 1, 0 );
setRotateKey(spep_1-3+44, 1, -0.2 );
setRotateKey(spep_1-3+50, 1, -0.2 );
setRotateKey(spep_1-3+52, 1, -2 );
setRotateKey(spep_1-3+54, 1, -41 );
setRotateKey(spep_1-3+56, 1, -37.7 );
setRotateKey(spep_1-3+58, 1, -34.4 );
setRotateKey(spep_1-3+60, 1, -31.1 );
setRotateKey(spep_1-3+62, 1, -15.9 );
setRotateKey(spep_1-3+64, 1, -18.3 );
setRotateKey(spep_1-3+66, 1, -20.8 );
setRotateKey(spep_1-3+68, 1, -23.2 );
setRotateKey(spep_1-3+70, 1, -41 );
setRotateKey(spep_1-3+72, 1, -40 );
setRotateKey(spep_1-3+74, 1, -39.1 );
setRotateKey(spep_1-3+76, 1, -38.1 );
setRotateKey(spep_1-3+78, 1, -5.7 );
setRotateKey(spep_1-3+82, 1, -5.7 );
setRotateKey(spep_1-3+84, 1, -3.8 );
setRotateKey(spep_1-3+86, 1, -0.5 );
setRotateKey(spep_1-3+88, 1, 2.9 );
setRotateKey(spep_1-3+90, 1, -41 );
setRotateKey(spep_1-3+92, 1, -40 );
setRotateKey(spep_1-3+94, 1, -39.1 );
setRotateKey(spep_1-3+96, 1, -38.1 );
setRotateKey(spep_1-3+98, 1, -5.7 );
setRotateKey(spep_1-3+102, 1, -5.7 );
setRotateKey(spep_1-3+104, 1, -2 );
setRotateKey(spep_1-3+106, 1, -2 );
setRotateKey(spep_1-3+108, 1, -5.7 );
setRotateKey(spep_1-3+112, 1, -5.7 );
setRotateKey(spep_1-3+114, 1, -41 );
setRotateKey(spep_1-3+116, 1, -40.4 );
setRotateKey(spep_1-3+118, 1, -39.7 );
setRotateKey(spep_1-3+120, 1, -39.1 );
setRotateKey(spep_1-3+122, 1, -0.2 );
setRotateKey(spep_1-3+128, 1, -0.2 );
setRotateKey(spep_1-3+130, 1, -2 );
setRotateKey(spep_1-3+132, 1, -41 );
setRotateKey(spep_1-3+134, 1, -37.7 );
setRotateKey(spep_1-3+136, 1, -34.4 );
setRotateKey(spep_1-3+138, 1, -31.1 );
setRotateKey(spep_1-3+140, 1, -15.9 );
setRotateKey(spep_1-3+142, 1, -18.3 );
setRotateKey(spep_1-3+144, 1, -20.8 );
setRotateKey(spep_1-3+146, 1, -23.2 );
setRotateKey(spep_1-3+148, 1, -41 );
setRotateKey(spep_1-3+150, 1, -40 );
setRotateKey(spep_1-3+152, 1, -39.1 );
setRotateKey(spep_1-3+154, 1, -38.1 );
setRotateKey(spep_1-3+156, 1, -5.7 );
setRotateKey(spep_1-3+160, 1, -5.7 );
setRotateKey(spep_1-3+162, 1, -3.8 );
setRotateKey(spep_1-3+164, 1, -0.5 );
setRotateKey(spep_1-3+166, 1, 2.9 );
setRotateKey(spep_1-3+168, 1, -41 );
setRotateKey(spep_1-3+170, 1, -40 );
setRotateKey(spep_1-3+172, 1, -39.1 );
setRotateKey(spep_1-3+174, 1, -38.1 );
setRotateKey(spep_1-3+176, 1, -5.7 );
setRotateKey(spep_1-3+180, 1, -5.7 );
setRotateKey(spep_1-3+182, 1, -2 );
setRotateKey(spep_1-3+184, 1, -2 );
setRotateKey(spep_1-3+186, 1, -5.7 );
setRotateKey(spep_1-3+190, 1, -5.7 );
setRotateKey(spep_1-3+192, 1, -41 );
setRotateKey(spep_1-3+194, 1, -40.4 );
setRotateKey(spep_1-3+196, 1, -39.7 );
setRotateKey(spep_1-3+198, 1, -39.1 );
setRotateKey(spep_1-3+200, 1, -0.2 );
setRotateKey(spep_1-3+206, 1, -0.2 );
setRotateKey(spep_1-3+208, 1, -2 );
setRotateKey(spep_1-3+210, 1, -41 );
setRotateKey(spep_1-3+212, 1, -37.7 );
setRotateKey(spep_1-3+214, 1, -34.4 );
setRotateKey(spep_1-3+216, 1, -31.1 );
setRotateKey(spep_1-3+218, 1, -15.9 );
setRotateKey(spep_1-3+220, 1, -18.3 );
setRotateKey(spep_1-3+222, 1, -20.8 );
setRotateKey(spep_1-3+224, 1, -23.2 );


setRotateKey(spep_1-3+258, 1, 4.7 );
setRotateKey(spep_1-3+262, 1, 4.7 );
setRotateKey(spep_1-3+264, 1, 4.6 );
setRotateKey(spep_1-3+272, 1, 4.6 );
setRotateKey(spep_1-3+274, 1, 4.7 );


--集中線
shuchusen2 = entryEffectLife( spep_1 + 40,  906, 208, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 248, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 40, shuchusen2, 1.34, 1.9 );
setEffScaleKey( spep_1 + 248, shuchusen2, 1.34, 1.9 );

setEffRotateKey( spep_1 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 + 248, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 40, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 41, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 42, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 248, shuchusen2, 255 );


ctdogagaga = entryEffectLife( spep_1 + 40,  10017, 172, 0x100, -1, 0, 12, 370.7 );--ドガガガッ

setEffMoveKey( spep_1 + 40, ctdogagaga, 12, 370.7 , 0 );
setEffMoveKey( spep_1 + 48, ctdogagaga, 11.8, 371.2 , 0 );
setEffMoveKey( spep_1 + 50, ctdogagaga, 4, 380.1 , 0 );
setEffMoveKey( spep_1 + 52, ctdogagaga, 11.8, 371 , 0 );
setEffMoveKey( spep_1 + 54, ctdogagaga, 4.8, 378.9 , 0 );
setEffMoveKey( spep_1 + 56, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 58, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 60, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 62, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 64, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 66, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 68, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 70, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 72, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 74, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 76, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 78, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 80, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 82, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 84, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 86, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 88, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 90, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 92, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 94, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 96, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 98, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 100, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 102, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 104, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 106, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 108, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 110, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 112, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 114, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 116, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 118, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 120, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 122, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 124, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 126, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 128, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 130, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 132, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 134, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 136, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 138, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 140, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 142, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 144, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 146, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 148, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 150, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 152, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 154, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 156, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 158, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 160, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 162, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 164, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 166, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 168, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 170, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 172, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 174, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 176, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 178, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 180, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 182, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 184, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 186, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 188, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 190, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 192, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 194, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 196, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 198, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 200, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 202, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 204, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 206, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 208, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 210, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 212, ctdogagaga, 11.9, 370.7 , 0 );

setEffScaleKey( spep_1 + 40, ctdogagaga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 48, ctdogagaga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 50, ctdogagaga, 3.06, 3.06 );
setEffScaleKey( spep_1 + 52, ctdogagaga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 54, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_1 + 56, ctdogagaga, 2.6, 2.6 );
setEffScaleKey( spep_1 + 212, ctdogagaga, 2.6, 2.6 );

setEffRotateKey( spep_1 + 40, ctdogagaga, 14.5 );
setEffRotateKey( spep_1 + 212, ctdogagaga, 14.5 );

setEffAlphaKey( spep_1 + 40, ctdogagaga, 0 );
setEffAlphaKey( spep_1 + 41, ctdogagaga, 0 );
setEffAlphaKey( spep_1 + 42, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 204, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 206, ctdogagaga, 191 );
setEffAlphaKey( spep_1 + 208, ctdogagaga, 128 );
setEffAlphaKey( spep_1 + 210, ctdogagaga, 64 );
setEffAlphaKey( spep_1 + 212, ctdogagaga, 0 );

setEffShake(spep_1 + 42,ctdogagaga,172,10);

--文字エントリー

ctka = entryEffectLife( spep_1 + 230,  10004, 20, 0x100, -1, 0, 104.2, 312.5 );--カッ
setEffMoveKey( spep_1 + 230, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 232, ctka, 98.8, 322.6 , 0 );
setEffMoveKey( spep_1 + 234, ctka, 104.2, 312.6 , 0 );
setEffMoveKey( spep_1 + 236, ctka, 99.5, 321.2 , 0 );
setEffMoveKey( spep_1 + 238, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 240, ctka, 99.5, 321.3 , 0 );
setEffMoveKey( spep_1 + 242, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 244, ctka, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1 + 246, ctka, 104.2, 312.4 , 0 );
setEffMoveKey( spep_1 + 248, ctka, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1 + 250, ctka, 99.4, 321.3 , 0 );

setEffScaleKey( spep_1 + 230, ctka, 1.02, 1.02 );
setEffScaleKey( spep_1 + 232, ctka, 2.98, 2.98 );
setEffScaleKey( spep_1 + 234, ctka, 4.16, 4.16 );
setEffScaleKey( spep_1 + 236, ctka, 2.61, 2.61 );
setEffScaleKey( spep_1 + 238, ctka, 2.62, 2.62 );
setEffScaleKey( spep_1 + 240, ctka, 2.63, 2.63 );
setEffScaleKey( spep_1 + 242, ctka, 2.64, 2.64 );
setEffScaleKey( spep_1 + 244, ctka, 2.64, 2.64 );
setEffScaleKey( spep_1 + 246, ctka, 2.65, 2.65 );
setEffScaleKey( spep_1 + 248, ctka, 2.66, 2.66 );
setEffScaleKey( spep_1 + 250, ctka, 2.67, 2.67 );

setEffRotateKey( spep_1 + 230, ctka, 35.2 );
setEffRotateKey( spep_1 + 250, ctka, 35.2 );

setEffAlphaKey( spep_1 + 230, ctka, 64 );
setEffAlphaKey( spep_1 + 232, ctka, 183 );
setEffAlphaKey( spep_1 + 234, ctka, 255 );
setEffAlphaKey( spep_1 + 244, ctka, 255 );
setEffAlphaKey( spep_1 + 246, ctka, 142 );
setEffAlphaKey( spep_1 + 248, ctka, 57 );
setEffAlphaKey( spep_1 + 250, ctka, 0 );

--[[
--集中線
shuchusen3_a = entryEffectLife( spep_1 + 44,  906, 204, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_1 + 44, shuchusen3_a, 0, 0 , 0 );
setEffMoveKey( spep_1 + 248, shuchusen3_a, 0, 0 , 0 );

setEffScaleKey( spep_1 + 44, shuchusen3_a, 1.34, 1.9 );
setEffScaleKey( spep_1 + 248, shuchusen3_a, 1.34, 1.9 );

setEffRotateKey( spep_1 + 44, shuchusen3_a, 0 );
setEffRotateKey( spep_1 + 248, shuchusen3_a, 0 );

setEffAlphaKey( spep_1 + 44, shuchusen3_a, 255 );
setEffAlphaKey( spep_1 + 248, shuchusen3_a, 255 );
]]--

--***SE***
playSe(  spep_1,  43);
playSe(  spep_1+42,  1000);--パンチ
playSe(  spep_1+50,  1004);--振りかぶり
playSe(  spep_1+52,  1001);--パンチ
playSe(  spep_1+60,  1007);--蹴り
playSe(  spep_1+68,  1008);--蹴り
playSe(  spep_1+76,  1000);--パンチ
playSe(  spep_1+82,  1007);--蹴り
playSe(  spep_1+88,  1008);--蹴り
playSe(  spep_1+96,  1000);--パンチ
playSe(  spep_1+104,  1004);--振りかぶり
playSe(  spep_1+106,  1001);--パンチ
--ここまでアップ


playSe(  spep_1+126,  1000);--パンチ
playSe(  spep_1+132,  1001);--パンチ
playSe(  spep_1+138,  1007);--蹴り
playSe(  spep_1+146,  1008);--蹴り
playSe(  spep_1+154,  1001);--パンチ
playSe(  spep_1+160,  1007);--蹴り
playSe(  spep_1+166,  1008);--蹴り
playSe(  spep_1+172,  1004);--振りかぶり
playSe(  spep_1+174,  1001);--パンチ
playSe(  spep_1+184,  1000);--パンチ
playSe(  spep_1+190,  1007);--蹴り
playSe(  spep_1+198,  1001);--パンチ
playSe(  spep_1+204,  1007);--蹴り
playSe(  spep_1+210,  1008);--蹴り
playSe(  spep_1+220,  1011);

-- ** エフェクト等 ** --
entryFade(spep_1+41, 0,2, 4,fcolor_r,fcolor_g,fcolor_b,200);     -- whit_fe fade
entryFade(spep_1+110, 6,6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_1+242, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+250;
--------------------------------------
--飛び出してくる
--------------------------------------
--エフェクト
tackle_f=entryEffectLife(spep_2,SP_04,90,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, tackle_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, tackle_f, 0, 0 , 0 );

setEffScaleKey(spep_2,tackle_f,1.0,1.0);
setEffScaleKey(spep_2+90,tackle_f,1.0,1.0);

setEffRotateKey(spep_2,tackle_f,0);
setEffRotateKey(spep_2+90,tackle_f,0);

setEffAlphaKey(spep_2,tackle_f,255);
setEffAlphaKey(spep_2+90,tackle_f,255);

--エフェクト
tackle_b=entryEffectLife(spep_2,SP_05,90,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, tackle_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, tackle_b, 0, 0 , 0 );

setEffScaleKey(spep_2,tackle_b,1.0,1.0);
setEffScaleKey(spep_2+90,tackle_b,1.0,1.0);

setEffRotateKey(spep_2,tackle_b,0);
setEffRotateKey(spep_2+90,tackle_b,0);

setEffAlphaKey(spep_2,tackle_b,255);
setEffAlphaKey(spep_2+90,tackle_b,255);


--***SE***
playSe(  spep_2,  SE_04);

--白フェード
entryFade(spep_2+82, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_3=spep_2+90;
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
------------------------------------------------------
--岩にぶつかる
------------------------------------------------------
--エフェクト
hit_f=entryEffectLife(spep_4,SP_06,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_f,1.0,1.0);
setEffScaleKey(spep_4+80,hit_f,1.0,1.0);

setEffRotateKey(spep_4,hit_f,0);
setEffRotateKey(spep_4+80,hit_f,0);

setEffAlphaKey(spep_4,hit_f,255);
setEffAlphaKey(spep_4+80,hit_f,255);

--流線
ryusen2 = entryEffectLife( spep_4 + 0,  921, 80, 0x80, -1, 0, -6.3, 20 );

setEffMoveKey( spep_4 + 0, ryusen2, -6.3, 20 , 0 );
setEffMoveKey( spep_4 + 80, ryusen2, -6.3, 20 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.51, 1.33 );
setEffScaleKey( spep_4 + 80, ryusen2, 1.51, 1.33 );

setEffRotateKey(  spep_4, ryusen2,  10 );
setEffRotateKey(  spep_4+80,  ryusen2,  10);

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 80, ryusen2, 255 );

--エフェクト
hit_b=entryEffectLife(spep_4,SP_07,80,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_b,1.0,1.0);
setEffScaleKey(spep_4+80,hit_b,1.0,1.0);

setEffRotateKey(spep_4,hit_b,0);
setEffRotateKey(spep_4+80,hit_b,0);

setEffAlphaKey(spep_4,hit_b,255);
setEffAlphaKey(spep_4+80,hit_b,255);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4-3 + 0, 1, -439.4, 224.1 , 0 );
setMoveKey( spep_4-3 + 2, 1, -333.5, 189.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, -227.7, 155.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, -121.9, 120.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, -16.1, 86 , 0 );
setMoveKey( spep_4-3 + 10, 1, -1.1, 78.2 , 0 );
setMoveKey( spep_4-3 + 12, 1, 14, 70.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 29, 62.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 44.1, 55 , 0 );
setMoveKey( spep_4-3 + 18, 1, 59.1, 47.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 74.2, 39.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 89.2, 31.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 47.5, 81.1 , 0 );
setMoveKey( spep_4-3 + 26, 1, 71.3, 49.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 107.1, 34.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 127.6, 9.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, 137.1, 11.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 132.8, 1.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 142.2, 8.3 , 0 );
setMoveKey( spep_4-3 + 38, 1, 139.6, 3.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 144.9, 6.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 138.3, -2.8 , 0 );
setMoveKey( spep_4-3 + 44, 1, 147.7, 4.2 , 0 );
setMoveKey( spep_4-3 + 46, 1, 145, -0.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 150.4, 2.2 , 0 );
setMoveKey( spep_4-3 + 50, 1, 143.8, -6.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, 153.1, 0.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 150.5, -8.9 , 0 );
setMoveKey( spep_4-3 + 56, 1, 155.9, -1.9 , 0 );
setMoveKey( spep_4-2 + 58, 1, 149.2, -14.9 , 0 );-----------------------
setMoveKey( spep_4-3 + 60, 1, 158.6, -4 , 0 );
setMoveKey( spep_4-3 + 62, 1, 156, -13 , 0 );
setMoveKey( spep_4-3 + 64, 1, 161.3, -6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 154.7, -11 , 0 );
setMoveKey( spep_4-3 + 68, 1, 164.1, -8.1 , 0 );
setMoveKey( spep_4-3 + 70, 1, 161.4, -17.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, 166.8, -10.1 , 0 );
setMoveKey( spep_4-3 + 74, 1, 160.2, -19.1 , 0 );
setMoveKey( spep_4-3 + 76, 1, 169.6, -12.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 166.9, -21.2 , 0 );

setScaleKey( spep_4-3 + 0, 1, 8.87, 8.87 );
setScaleKey( spep_4-3 + 2, 1, 7.11, 7.11 );
setScaleKey( spep_4-3 + 4, 1, 5.34, 5.34 );
setScaleKey( spep_4-3 + 6, 1, 3.58, 3.58 );
setScaleKey( spep_4-3 + 8, 1, 1.82, 1.82 );
setScaleKey( spep_4-3 + 10, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_4-3 + 14, 1, 1.52, 1.52 );
setScaleKey( spep_4-3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_4-3 + 18, 1, 1.31, 1.31 );
setScaleKey( spep_4-3 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_4-3 + 22, 1, 1.11, 1.11 );
setScaleKey( spep_4-3 + 24, 1, 1.31, 1.31 );
setScaleKey( spep_4-3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 30, 1, 0.9, 0.9 );
setScaleKey( spep_4-3 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 46, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 48, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 54, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 56, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 60, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 62, 1, 0.81, 0.81 );
setScaleKey( spep_4-3 + 66, 1, 0.81, 0.81 );
setScaleKey( spep_4-3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 70, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 72, 1, 0.79, 0.79 );
setScaleKey( spep_4-3 + 76, 1, 0.79, 0.79 );
setScaleKey( spep_4-3 + 78, 1, 0.78, 0.78 );

setRotateKey( spep_4-3 + 0, 1, 21.3 );
setRotateKey( spep_4-3 + 2, 1, 21.4 );
setRotateKey( spep_4-3 + 4, 1, 21.4 );
setRotateKey( spep_4-3 + 6, 1, 21.5 );
setRotateKey( spep_4-3 + 78, 1, 21.5 );

--文字エントリー
ctdogon = entryEffectLife( spep_4-4 + 26,  10018, 38, 0x100, -1, 0, -81.8, 345.2 );--ドゴォンッ

setEffMoveKey( spep_4-4 + 26, ctdogon, -81.8, 345.2 , 0 );
setEffMoveKey( spep_4-4 + 28, ctdogon, -80, 344.7 , 0 );
setEffMoveKey( spep_4-4 + 30, ctdogon, -80, 344.6 , 0 );
setEffMoveKey( spep_4-4 + 32, ctdogon, -83.4, 345.3 , 0 );
setEffMoveKey( spep_4-4 + 34, ctdogon, -80, 344.7 , 0 );
setEffMoveKey( spep_4-4 + 36, ctdogon, -82.9, 345.3 , 0 );
setEffMoveKey( spep_4-4 + 38, ctdogon, -80.1, 344.8 , 0 );
setEffMoveKey( spep_4-4 + 40, ctdogon, -82.8, 345.2 , 0 );
setEffMoveKey( spep_4-4 + 42, ctdogon, -80.1, 344.7 , 0 );
setEffMoveKey( spep_4-4 + 44, ctdogon, -82.8, 345.2 , 0 );
setEffMoveKey( spep_4-4 + 46, ctdogon, -80.1, 344.6 , 0 );
setEffMoveKey( spep_4-4 + 48, ctdogon, -82.7, 345.1 , 0 );
setEffMoveKey( spep_4-4 + 50, ctdogon, -80.1, 344.5 , 0 );
setEffMoveKey( spep_4-4 + 52, ctdogon, -80, 344.5 , 0 );
setEffMoveKey( spep_4-4 + 54, ctdogon, -82.6, 345 , 0 );
setEffMoveKey( spep_4-4 + 56, ctdogon, -80.1, 344.5 , 0 );
setEffMoveKey( spep_4-4 + 58, ctdogon, -82.6, 345.1 , 0 );
setEffMoveKey( spep_4-4 + 60, ctdogon, -80.1, 344.6 , 0 );
setEffMoveKey( spep_4-4 + 62, ctdogon, -82.6, 345.1 , 0 );
setEffMoveKey( spep_4-4 + 64, ctdogon, -82.6, 345.1 , 0 );

setEffScaleKey( spep_4-4 + 26, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_4-4 + 28, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_4-4 + 30, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_4-4 + 32, ctdogon, 4.05, 4.05 );
setEffScaleKey( spep_4-4 + 34, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_4-4 + 36, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_4-4 + 38, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_4-4 + 40, ctdogon, 3.29, 3.29 );
setEffScaleKey( spep_4-4 + 42, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_4-4 + 44, ctdogon, 3.19, 3.19 );
setEffScaleKey( spep_4-4 + 46, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_4-4 + 48, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_4-4 + 50, ctdogon, 3.05, 3.05 );
setEffScaleKey( spep_4-4 + 52, ctdogon, 3, 3 );
setEffScaleKey( spep_4-4 + 54, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_4-4 + 56, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_4-4 + 58, ctdogon, 2.97, 2.97 );
setEffScaleKey( spep_4-4 + 60, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_4-4 + 62, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_4-4 + 64, ctdogon, 2.93, 2.93 );

setEffRotateKey( spep_4-4 + 26, ctdogon, -24.7 );
setEffRotateKey( spep_4-4 + 42, ctdogon, -24.7 );
setEffRotateKey( spep_4-4 + 44, ctdogon, -24.6 );
setEffRotateKey( spep_4-4 + 64, ctdogon, -24.6 );

setEffAlphaKey( spep_4-4 + 26, ctdogon, 255 );
setEffAlphaKey( spep_4-4 + 27, ctdogon, 255 );
setEffAlphaKey( spep_4-4 + 28, ctdogon, 255 );
setEffAlphaKey( spep_4-4 + 52, ctdogon, 255 );
setEffAlphaKey( spep_4-4 + 54, ctdogon, 213 );
setEffAlphaKey( spep_4-4 + 56, ctdogon, 170 );
setEffAlphaKey( spep_4-4 + 58, ctdogon, 128 );
setEffAlphaKey( spep_4-4 + 60, ctdogon, 85 );
setEffAlphaKey( spep_4-4 + 62, ctdogon, 42 );
setEffAlphaKey( spep_4-4 + 64, ctdogon, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.16, 1.47 );
setEffScaleKey( spep_4 + 80, shuchusen3, 1.16, 1.47 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 80, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 80, shuchusen3, 255 );

--SE
playSe(  spep_4,  44);
playSe(  spep_4+22,  1011);

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+21, 0,2, 4,fcolor_r,fcolor_g,fcolor_b,200);     -- whit_f_fe fade
entryFade(spep_4+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade

--次の準備
spep_5=spep_4+80;

------------------------------------------------------
--てからビーム
------------------------------------------------------
--エフェクト(前)
beam_f=entryEffectLife(spep_5,SP_08,200,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, beam_f, 0, 0 , 0 );

setEffScaleKey(spep_5,beam_f,1.0,1.0);
setEffScaleKey(spep_5+200,beam_f,1.0,1.0);

setEffRotateKey(spep_5,beam_f,0);
setEffRotateKey(spep_5+200,beam_f,0);

setEffAlphaKey(spep_5,beam_f,255);
setEffAlphaKey(spep_5+200,beam_f,255);

--流線
ryusen3 = entryEffectLife( spep_5 + 0,  921, 200, 0x80, -1, 0, -6.3, 20 );

setEffMoveKey( spep_5 + 0, ryusen3, -6.3, 20 , 0 );
setEffMoveKey( spep_5 + 200, ryusen3, -6.3, 20 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1.51, 1.33 );
setEffScaleKey( spep_5 + 200, ryusen3, 1.51, 1.33 );

setEffRotateKey( spep_5 + 0, ryusen3, 10 );
setEffRotateKey( spep_5 + 200, ryusen3, 10 );

setEffAlphaKey( spep_5 + 0, ryusen3, 255 );
setEffAlphaKey( spep_5 + 200, ryusen3, 255 );

--エフェクト
beam_b=entryEffectLife(spep_5,SP_09,200,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, beam_b, 0, 0 , 0 );

setEffScaleKey(spep_5,beam_b,1.0,1.0);
setEffScaleKey(spep_5+200,beam_b,1.0,1.0);

setEffRotateKey(spep_5,beam_b,10);
setEffRotateKey(spep_5+200,beam_b,10);

setEffAlphaKey(spep_5,beam_b,255);
setEffAlphaKey(spep_5+200,beam_b,255);

setEffShake(spep_5,beam_b,255,10);
--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 200, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.16, 1.47 );
setEffScaleKey( spep_5 + 200, shuchusen4, 1.16, 1.47 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5 + 200, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 200, shuchusen4, 255 );

--顔カットイン
speff=entryEffect(spep_5+4,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_5+4,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_5+16,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_5+16,ctgogo,0,520,0);
setEffMoveKey(spep_5+88,ctgogo,0,520,0);

setEffScaleKey(spep_5+16, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_5+88, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_5 + 16, ctgogo, 0 );
setEffAlphaKey( spep_5 + 17, ctgogo, 255 );
setEffAlphaKey( spep_5 + 18, ctgogo, 255 );
setEffAlphaKey( spep_5 + 88, ctgogo, 255 );

setEffRotateKey(spep_5+16,ctgogo,0);
setEffRotateKey(spep_5+88,ctgogo,0);


--文字エントリー

ctzuo = entryEffectLife( spep_5 -80 + 172,  10012, 38, 0x100, -1, 0, 78.7, 260.5 );--ズオッ

setEffMoveKey( spep_5 -80 + 172, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_5 -80 + 178, ctzuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_5 -80 + 180, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 182, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 184, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 186, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 188, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 190, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 192, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 194, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 196, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 198, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 200, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 202, ctzuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_5 -80 + 204, ctzuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_5 -80 + 206, ctzuo, 211.6, 339 , 0 );
setEffMoveKey( spep_5 -80 + 208, ctzuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_5 -80 + 210, ctzuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_5 -80 + 172, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_5 -80 + 178, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_5 -80 + 180, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_5 -80 + 200, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_5 -80 + 202, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_5 -80 + 204, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_5 -80 + 206, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_5 -80 + 208, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_5 -80 + 210, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_5 -80 + 172, ctzuo, 27.2 );
setEffRotateKey( spep_5 -80 + 210, ctzuo, 27.2 );

setEffAlphaKey( spep_5 -80 + 172, ctzuo, 0 );
setEffAlphaKey( spep_5 -80 + 173, ctzuo, 255 );
setEffAlphaKey( spep_5 -80 + 174, ctzuo, 255 );
setEffAlphaKey( spep_5 -80 + 200, ctzuo, 255 );
setEffAlphaKey( spep_5 -80 + 202, ctzuo, 204 );
setEffAlphaKey( spep_5 -80 + 204, ctzuo, 153 );
setEffAlphaKey( spep_5 -80 + 206, ctzuo, 102 );
setEffAlphaKey( spep_5 -80 + 208, ctzuo, 51 );
setEffAlphaKey( spep_5 -80 + 210, ctzuo, 0 );

setEffShake(spep_5 -80 + 172,ctzuo,38,20);

--文字エントリー
ctzudododod2 = entryEffectLife( spep_5 -80 + 218,  10014, 60, 0x100, -1, 0, 54.8, 362 );--ズドドドッ

setEffMoveKey( spep_5 -80 + 218, ctzudododod2, 54.8, 362 , 0 );
setEffMoveKey( spep_5 -80 + 220, ctzudododod2, 66.4, 371 , 0 );
setEffMoveKey( spep_5 -80 + 222, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 224, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 226, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 228, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 230, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 232, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 234, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 236, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 238, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 240, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 242, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 244, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 246, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 248, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 250, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 252, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 254, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 256, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 258, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 260, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 262, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 264, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 266, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 268, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 270, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 272, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 274, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 276, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 278, ctzudododod2, 52.4, 351.2 , 0 );

setEffScaleKey( spep_5 -80 + 218, ctzudododod2, 1.73, 1.73 );
setEffScaleKey( spep_5 -80 + 220, ctzudododod2, 2.16, 2.16 );
setEffScaleKey( spep_5 -80 + 222, ctzudododod2, 2.59, 2.59 );
setEffScaleKey( spep_5 -80 + 278, ctzudododod2, 2.59, 2.59 );

setEffRotateKey( spep_5 -80 + 218, ctzudododod2, 58.7 );
setEffRotateKey( spep_5 -80 + 278, ctzudododod2, 58.7 );

setEffAlphaKey( spep_5 -80 + 218, ctzudododod2, 85 );
setEffAlphaKey( spep_5 -80 + 220, ctzudododod2, 170 );
setEffAlphaKey( spep_5 -80 + 222, ctzudododod2, 255 );
setEffAlphaKey( spep_5 -80 + 278, ctzudododod2, 278 );

setEffShake(spep_5 -80 + 218,ctzudododod2,60,20);

--敵の動き
setDisp(spep_5-82+82,1,1);
setDisp(spep_5-78+278,1,0);

changeAnime(spep_5,1,108);

setMoveKey( spep_5-82 + 82, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 84, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 86, 1, 747.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 88, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 90, 1, 751.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 92, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 94, 1, 751.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 96, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 98, 1, 747.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 100, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 102, 1, 751.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 104, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 106, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 108, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 110, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 112, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 114, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 116, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 118, 1, 747.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 120, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 122, 1, 751.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 124, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 126, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 128, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 130, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 132, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 134, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 136, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 138, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 140, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 142, 1, 749.3, -485.4 , 0 );
setMoveKey( spep_5-82 + 144, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 146, 1, 747.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 148, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 150, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 152, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 154, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 156, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 158, 1, 747.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 160, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 162, 1, 749.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 164, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 166, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 168, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 170, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 172, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 174, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 176, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 178, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 180, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 182, 1, 749.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 184, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 186, 1, 747.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 188, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 190, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 192, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 194, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 196, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 198, 1, 749.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 200, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 202, 1, 747.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 204, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 206, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 208, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 210, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 212, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 214, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 216, 1, 751.3, -477.4 , 0 );

--ここからを調整（+20,-10）
chousei_x = -20;
chousei_y = -10;

setMoveKey( spep_5-82 + 218, 1, 749.3+chousei_x, -479.4+chousei_y , 0 );
setMoveKey( spep_5-82 + 220, 1, 751.3+chousei_x, -477.4+chousei_y , 0 );
setMoveKey( spep_5-82 + 222, 1, 695+chousei_x, -443.4+chousei_y , 0 );
setMoveKey( spep_5-82 + 224, 1, 646.7+chousei_x, -405.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 226, 1, 592.3+chousei_x, -375.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 228, 1, 542+chousei_x, -333.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 230, 1, 487.7+chousei_x, -299.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 232, 1, 437.4+chousei_x, -261.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 234, 1, 381+chousei_x, -229.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 236, 1, 332.7+chousei_x, -189.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 238, 1, 276.4+chousei_x, -155.8+chousei_y , 0 );
setMoveKey( spep_5-82 + 240, 1, 277+chousei_x, -151.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 242, 1, 271.3+chousei_x, -153.1+chousei_y , 0 );
setMoveKey( spep_5-82 + 244, 1, 269.3+chousei_x, -146.4+chousei_y , 0 );
setMoveKey( spep_5-82 + 246, 1, 263+chousei_x, -145.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 248, 1, 260.4+chousei_x, -140.4+chousei_y, 0 );
setMoveKey( spep_5-82 + 250, 1, 251.4+chousei_x, -141.1+chousei_y , 0 );
setMoveKey( spep_5-82 + 252, 1, 250.1+chousei_x, -133.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 254, 1, 242.5+chousei_x, -131.8+chousei_y , 0 );
setMoveKey( spep_5-82 + 256, 1, 238.6+chousei_x, -125.9+chousei_y , 0 );
setMoveKey( spep_5-82 + 258, 1, 228.4+chousei_x, -125.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 260, 1, 221.8+chousei_x, -121.3+chousei_y , 0 );
setMoveKey( spep_5-82 + 262, 1, 207+chousei_x, -148.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 264, 1, 207.8+chousei_x, -111.9+chousei_y , 0 );
setMoveKey( spep_5-82 + 266, 1, 176.2+chousei_x, -114.9+chousei_y , 0 );
setMoveKey( spep_5-82 + 268, 1, 192.4+chousei_x, -101.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 270, 1, 168.2+chousei_x, -112.2+chousei_y , 0 );
setMoveKey( spep_5-82 + 272, 1, 175.8+chousei_x, -90.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 274, 1, 151+chousei_x, -100.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 276, 1, 157.8+chousei_x, -82.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 278, 1, 140.4+chousei_x, -82.3+chousei_y , 0 );

-- 1
setScaleKey( spep_5-82 + 82, 1, 0.24, 0.24 );
setScaleKey( spep_5-82 + 220, 1, 0.24, 0.24 );
setScaleKey( spep_5-82 + 222, 1, 0.3, 0.3 );
setScaleKey( spep_5-82 + 224, 1, 0.36, 0.36 );
setScaleKey( spep_5-82 + 226, 1, 0.42, 0.42 );
setScaleKey( spep_5-82 + 228, 1, 0.48, 0.48 );
setScaleKey( spep_5-82 + 230, 1, 0.54, 0.54 );
setScaleKey( spep_5-82 + 232, 1, 0.6, 0.6 );
setScaleKey( spep_5-82 + 234, 1, 0.66, 0.66 );
setScaleKey( spep_5-82 + 236, 1, 0.72, 0.72 );
setScaleKey( spep_5-82 + 238, 1, 0.78, 0.78 );
setScaleKey( spep_5-82 + 240, 1, 0.78, 0.78 );
setScaleKey( spep_5-82 + 242, 1, 0.79, 0.79 );
setScaleKey( spep_5-82 + 244, 1, 0.8, 0.8 );
setScaleKey( spep_5-82 + 246, 1, 0.8, 0.8 );
setScaleKey( spep_5-82 + 248, 1, 0.81, 0.81 );
setScaleKey( spep_5-82 + 250, 1, 0.82, 0.82 );
setScaleKey( spep_5-82 + 252, 1, 0.82, 0.82 );
setScaleKey( spep_5-82 + 254, 1, 0.83, 0.83 );
setScaleKey( spep_5-82 + 256, 1, 0.84, 0.84 );
setScaleKey( spep_5-82 + 258, 1, 0.85, 0.85 );
setScaleKey( spep_5-82 + 260, 1, 0.86, 0.86 );
setScaleKey( spep_5-82 + 262, 1, 0.87, 0.87 );
setScaleKey( spep_5-82 + 264, 1, 0.88, 0.88 );
setScaleKey( spep_5-82 + 266, 1, 0.89, 0.89 );
setScaleKey( spep_5-82 + 268, 1, 0.9, 0.9 );
setScaleKey( spep_5-82 + 270, 1, 0.91, 0.91 );
setScaleKey( spep_5-82 + 272, 1, 0.92, 0.92 );
setScaleKey( spep_5-82 + 274, 1, 0.93, 0.93 );
setScaleKey( spep_5-82 + 276, 1, 0.95, 0.95 );
setScaleKey( spep_5-82 + 278, 1, 0.96, 0.96 );

-- 1
setRotateKey( spep_5-82 + 82, 1, 21.5 );
setRotateKey( spep_5-82 + 224, 1, 21.5 );
setRotateKey( spep_5-82 + 226, 1, 21.4 );
setRotateKey( spep_5-82 + 232, 1, 21.4 );
setRotateKey( spep_5-82 + 234, 1, 21.3 );
setRotateKey( spep_5-82 + 252, 1, 21.3 );
setRotateKey( spep_5-82 + 254, 1, 21.4 );
setRotateKey( spep_5-82 + 270, 1, 21.4 );
setRotateKey( spep_5-82 + 272, 1, 21.5 );

--se
playSe( spep_5+16, SE_04); --ゴゴゴ
playSe( spep_5+94, 1022); --なんか打つ

--黒背景
entryFadeBg(spep_5, 0, 200, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_5+92, 0, 2, 8,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_5+192, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_6=spep_5+200;
--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_6,  190011,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_6, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);
setEffShake( spep_6, ctgayn, 60, 10);

playSe(spep_6,SE_09);

entryFade( spep_6+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;
--------------------------------------
--爆発
--------------------------------------
--エフェクト
explosion=entryEffect(spep_7,SP_10,0x100,-1,0,0,0);

setEffMoveKey( spep_7 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7 + 120, explosion, 0, 0 , 0 );

setEffScaleKey(spep_7,explosion,1.0,1.0);
setEffScaleKey(spep_7+120,explosion,1.0,1.0);

setEffRotateKey(spep_7,explosion,0);
setEffRotateKey(spep_7+120,explosion,0);

setEffAlphaKey(spep_7,explosion,255);
setEffAlphaKey(spep_7+120,explosion,255);

playSe(spep_7,1024);

--集中線
shuchusen5 = entryEffectLife( spep_7 ,  906, 120, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_7 + 44, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 248, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 44, shuchusen5, 1.34, 1.9 );
setEffScaleKey( spep_7 + 248, shuchusen5, 1.34, 1.9 );

setEffRotateKey( spep_7 + 44, shuchusen5, 0 );
setEffRotateKey( spep_7 + 248, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 44, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 248, shuchusen5, 255 );

-- ダメージ表示
dealDamage(spep_7+10);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);




else 

------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
--溜め
------------------------------------------------------

spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01x,140,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+140,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+140,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+140,tame,255);

--文字エントリー
ctsyun = entryEffectLife( spep_0 + 102,  10011, 20, 0x100, -1, 0, -64, 370.7 );--シュンッ

setEffMoveKey( spep_0 + 102, ctsyun, -64, 370.7 , 0 );
setEffMoveKey( spep_0 + 108, ctsyun, -63.9, 370.7 , 0 );
setEffMoveKey( spep_0 + 110, ctsyun, -63.8, 370.7 , 0 );
setEffMoveKey( spep_0 + 112, ctsyun, -63.8, 370.7 , 0 );
setEffMoveKey( spep_0 + 114, ctsyun, -63.8, 370.6 , 0 );
setEffMoveKey( spep_0 + 116, ctsyun, -63.8, 370.6 , 0 );
setEffMoveKey( spep_0 + 118, ctsyun, -63.9, 370.6 , 0 );
setEffMoveKey( spep_0 + 122, ctsyun, -63.9, 370.6 , 0 );

setEffScaleKey( spep_0 + 102, ctsyun, 2.02, 2.02 );
setEffScaleKey( spep_0 + 108, ctsyun, 3.4, 3.4 );
setEffScaleKey( spep_0 + 110, ctsyun, 3.01, 3.01 );
setEffScaleKey( spep_0 + 112, ctsyun, 2.62, 2.62 );
setEffScaleKey( spep_0 + 114, ctsyun, 2.23, 2.23 );
setEffScaleKey( spep_0 + 116, ctsyun, 2.19, 2.19 );
setEffScaleKey( spep_0 + 118, ctsyun, 2.16, 2.16 );
setEffScaleKey( spep_0 + 120, ctsyun, 2.13, 2.13 );
setEffScaleKey( spep_0 + 122, ctsyun, 2.09, 2.09 );

setEffRotateKey( spep_0 + 102, ctsyun, -11.7 );
setEffRotateKey( spep_0 + 122, ctsyun, -11.7 );

setEffAlphaKey( spep_0 + 102, ctsyun, 0 );
setEffAlphaKey( spep_0 + 103, ctsyun, 255 );
setEffAlphaKey( spep_0 + 104, ctsyun, 255 );
setEffAlphaKey( spep_0 + 114, ctsyun, 255 );
setEffAlphaKey( spep_0 + 116, ctsyun, 191 );
setEffAlphaKey( spep_0 + 118, ctsyun, 128 );
setEffAlphaKey( spep_0 + 120, ctsyun, 64 );
setEffAlphaKey( spep_0 + 122, ctsyun, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 )
setEffMoveKey( spep_0 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.05, 1.07 );
setEffScaleKey( spep_0 + 138, shuchusen1, 1.05, 1.07 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 138, shuchusen1, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+132, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--***SE***
playSe(  spep_0,  9);
playSe(  spep_0+102,  43);  --瞬間移動

--次の準備
spep_1=spep_0+140;

------------------------------------------------------
--ぼうこう
------------------------------------------------------
--エフェクト(前)
rush_f=entryEffectLife(spep_1,SP_02x,250,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, rush_f, 0, 0 , 0 );

setEffScaleKey(spep_1,rush_f,1.0,1.0);
setEffScaleKey(spep_1+250,rush_f,1.0,1.0);

setEffRotateKey(spep_1,rush_f,0);
setEffRotateKey(spep_1+250,rush_f,0);

setEffAlphaKey(spep_1,rush_f,255);
setEffAlphaKey(spep_1+250,rush_f,255);

--エフェクト(後)
rush_b=entryEffectLife(spep_1,SP_03x,250,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, rush_b, 0, 0 , 0 );

setEffScaleKey(spep_1,rush_b,1.0,1.0);
setEffScaleKey(spep_1+250,rush_b,1.0,1.0);

setEffRotateKey(spep_1,rush_b,0);
setEffRotateKey(spep_1+250,rush_b,0);

setEffAlphaKey(spep_1,rush_b,255);
setEffAlphaKey(spep_1+250,rush_b,255);

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  914, 110, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 110, ryusen1, 0, 0 , 0 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 110, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 0 );
setEffAlphaKey( spep_1 + 30, ryusen1, 0 );
setEffAlphaKey( spep_1 + 31, ryusen1, 0 );
setEffAlphaKey( spep_1 + 32, ryusen1, 255 );
setEffAlphaKey( spep_1 + 110, ryusen1, 255 );

--文字エントリー
ctsyun2 = entryEffectLife( spep_1 + 0,  10011, 20, 0x100, -1, 0, -132, 294.7 );--シュンッ

setEffMoveKey( spep_1 + 0, ctsyun2, -132, 294.7 , 0 );
setEffMoveKey( spep_1 + 6, ctsyun2, -131.9, 294.7 , 0 );
setEffMoveKey( spep_1 + 8, ctsyun2, -131.8, 294.7 , 0 );
setEffMoveKey( spep_1 + 14, ctsyun2, -131.8, 294.7 , 0 );
setEffMoveKey( spep_1 + 16, ctsyun2, -131.9, 294.7 , 0 );
setEffMoveKey( spep_1 + 18, ctsyun2, -132, 294.7 , 0 );
setEffMoveKey( spep_1 + 20, ctsyun2, -132, 294.7 , 0 );

setEffScaleKey( spep_1 + 0, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 + 6, ctsyun2, 2.1, 2.1 );
setEffScaleKey( spep_1 + 8, ctsyun2, 1.86, 1.86 );
setEffScaleKey( spep_1 + 10, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 12, ctsyun2, 1.38, 1.38 );
setEffScaleKey( spep_1 + 14, ctsyun2, 1.36, 1.36 );
setEffScaleKey( spep_1 + 16, ctsyun2, 1.34, 1.34 );
setEffScaleKey( spep_1 + 18, ctsyun2, 1.31, 1.31 );
setEffScaleKey( spep_1 + 20, ctsyun2, 1.29, 1.29 );

setEffRotateKey( spep_1 + 0, ctsyun2, 19.3 );
setEffRotateKey( spep_1 + 20, ctsyun2, 19.3 );

setEffAlphaKey( spep_1 + 0, ctsyun2, 0 );
setEffAlphaKey( spep_1 + 1, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 2, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 3, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 12, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 14, ctsyun2, 191 );
setEffAlphaKey( spep_1 + 16, ctsyun2, 128 );
setEffAlphaKey( spep_1 + 18, ctsyun2, 64 );
setEffAlphaKey( spep_1 + 20, ctsyun2, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+20 ; --エンドフェイズのフレーム数を置き換える
    playSe( SP_dodge-12, 1042);
    pauseAll( SP_dodge, 67);
    
    --敵の位置固定
    setMoveKey( SP_dodge, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+2, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+4, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+6, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+8, 1, 178.2, 15 , 0 );
    
    setRotateKey( SP_dodge, 1, 0 );
    setRotateKey( SP_dodge+8, 1, 0 );
    
    setScaleKey( spep_2 + 0, 1, 1.13, 1.13 );
    setScaleKey( spep_2 + 12, 1, 1.13, 1.13 );
    setScaleKey( spep_2 + 14, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+2, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+4, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+6, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+8, 1, 1.13, 1.13 );
    
    --changeAnime(  SP_dodge+9,    1,  100);
    setMoveKey(  SP_dodge+9,    1,  178.2, 15 , 0 );
    setMoveKey(  SP_dodge+10,    1,  178.2, 15 , 0 );
    setScaleKey( SP_dodge+9,    1,  1.13, 1.13 );
    setScaleKey( SP_dodge+10,    1,  1.13, 1.13 );
    setRotateKey(   SP_dodge+9,   1, 0);
    setRotateKey(   SP_dodge+10,   1, 0);
    
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

--***敵の動き***
setDisp( spep_1, 1, 1 );
setDisp( spep_1+226, 1, 0 );
setDisp(  spep_1+258,  1,  1);
setDisp(  spep_1+280,  1,  0);  --消す
setShakeChara(spep_1+40,  1,  298,  20); --揺れ

changeAnime( spep_1, 1, 100 );
changeAnime( spep_1-3+32, 1, 104 );
changeAnime( spep_1-3+44, 1, 108 );  --くの字
changeAnime( spep_1-3+52, 1, 104 );
changeAnime( spep_1-3+54, 1, 106 );  
changeAnime( spep_1-3+62, 1, 108 );
changeAnime( spep_1-3+70, 1, 106 );
changeAnime( spep_1-3+78, 1, 108 );
changeAnime( spep_1-3+90, 1, 106 );
changeAnime( spep_1-3+98, 1, 108 );
changeAnime( spep_1-3+104, 1, 104 );
changeAnime( spep_1-3+108, 1, 108 );
changeAnime( spep_1-3+114, 1, 106 );
changeAnime( spep_1-3+122, 1, 108 );
changeAnime( spep_1-3+130, 1, 104 );
changeAnime( spep_1-3+132, 1, 106 );
changeAnime( spep_1-3+140, 1, 108 );
changeAnime( spep_1-3+148, 1, 106 );
changeAnime( spep_1-3+156, 1, 108 );
changeAnime( spep_1-3+168, 1, 106 );
changeAnime( spep_1-3+176, 1, 108 );
changeAnime( spep_1-3+182, 1, 104 );
changeAnime( spep_1-3+186, 1, 108 );
changeAnime( spep_1-3+192, 1, 106 );
changeAnime( spep_1-3+200, 1, 108 );
changeAnime( spep_1-3+208, 1, 104 );
changeAnime( spep_1-3+210, 1, 106 );
changeAnime( spep_1-3+218, 1, 108 );
changeAnime(spep_1-3+258,  1,  107);   --手前吹っ飛び

setMoveKey(spep_1-3, 1, 172.1, 14.5 , 0 );
setMoveKey(spep_1-3+2, 1, 172.7, 14.6 , 0 );
setMoveKey(spep_1-3+4, 1, 173.3, 14.6 , 0 );
setMoveKey(spep_1-3+6, 1, 173.9, 14.7 , 0 );
setMoveKey(spep_1-3+8, 1, 174.5, 14.7 , 0 );
setMoveKey(spep_1-3+10, 1, 175.2, 14.8 , 0 );
setMoveKey(spep_1-3+12, 1, 175.8, 14.8 , 0 );
setMoveKey(spep_1-3+14, 1, 176.4, 14.9 , 0 );
setMoveKey(spep_1-3+16, 1, 177, 14.9 , 0 );
setMoveKey(spep_1-3+18, 1, 177.6, 15 , 0 );
setMoveKey(spep_1-3+20, 1, 178.2, 15 , 0 );
setMoveKey(spep_1-3+22, 1, 178.9, 15.1 , 0 );
setMoveKey(spep_1-3+24, 1, 179.5, 15.1 , 0 );
setMoveKey(spep_1-3+26, 1, 180.1, 15.2 , 0 );
setMoveKey(spep_1-3+28, 1, 180.7, 15.2 , 0 );
setMoveKey(spep_1-3+30, 1, 167.1, 16.8 , 0 );
setMoveKey(spep_1-3+32, 1, 152.2, 23 , 0 );
setMoveKey(spep_1-3+34, 1, 148, 24.8 , 0 );
setMoveKey(spep_1-3+36, 1, 144.7, 26.6 , 0 );
setMoveKey(spep_1-3+38, 1, 142.3, 28.4 , 0 );
setMoveKey(spep_1-3+40, 1, 140.8, 30.2 , 0 );
setMoveKey(spep_1-3+42, 1, 140.1, 32 , 0 );
setMoveKey(spep_1-3+44, 1, 150.4, 36 , 0 );
setMoveKey(spep_1-3+46, 1, 154.6, 31.7 , 0 );
setMoveKey(spep_1-3+48, 1, 167, 35.5 , 0 );
setMoveKey(spep_1-3+50, 1, 167.5, 27.2 , 0 );
setMoveKey(spep_1-3+52, 1, 162.2, 17.4 , 0 );
setMoveKey(spep_1-3+54, 1, 119.3, 52.1 , 0 );
setMoveKey(spep_1-3+56, 1, 129.3, 66.4 , 0 );
setMoveKey(spep_1-3+58, 1, 140.7, 50.7 , 0 );
setMoveKey(spep_1-3+60, 1, 150.7, 65.3 , 0 );
setMoveKey(spep_1-3+62, 1, 167.4, 58 , 0 );
setMoveKey(spep_1-3+64, 1, 175.5, 61.9 , 0 );
setMoveKey(spep_1-3+66, 1, 171.6, 57.8 , 0 );
setMoveKey(spep_1-3+68, 1, 183.9, 61.7 , 0 );
setMoveKey(spep_1-3+70, 1, 140.7, 83.2 , 0 );
setMoveKey(spep_1-3+72, 1, 141.5, 102.8 , 0 );
setMoveKey(spep_1-3+74, 1, 148.8, 92.2 , 0 );
setMoveKey(spep_1-3+76, 1, 145.1, 102.8 , 0 );
setMoveKey(spep_1-3+78, 1, 187.6, 53.1 , 0 );
setMoveKey(spep_1-3+80, 1, 209.9, 60.2 , 0 );
setMoveKey(spep_1-3+82, 1, 220.4, 55.3 , 0 );
setMoveKey(spep_1-3+84, 1, 239, 29.1 , 0 );
setMoveKey(spep_1-3+86, 1, 230.8, 24.8 , 0 );
setMoveKey(spep_1-3+88, 1, 238.5, 28.5 , 0 );

setMoveKey(spep_1-3+90, 1, 132.7, 68.2 , 0 );
setMoveKey(spep_1-3+92, 1, 133.4, 98.5 , 0 );
setMoveKey(spep_1-3+94, 1, 141.3, 97.8 , 0 );
setMoveKey(spep_1-3+96, 1, 137.2, 119.2 , 0 );
setMoveKey(spep_1-3+98, 1, 182.2, 55.8 , 0 );
setMoveKey(spep_1-3+100, 1, 205.3, 58.9 , 0 );
setMoveKey(spep_1-3+102, 1, 216.5, 50 , 0 );
setMoveKey(spep_1-3+104, 1, 174.3, 23.7 , 0 );
setMoveKey(spep_1-3+106, 1, 185.5, 19.4 , 0 );
setMoveKey(spep_1-3+108, 1, 187.5, 27.4 , 0 );
setMoveKey(spep_1-3+110, 1, 192.6, 23.1 , 0 );
setMoveKey(spep_1-3+112, 1, 205.8, 26.8 , 0 );
setMoveKey(spep_1-3+114, 1, 106.8, 55.5 , 0 );
setMoveKey(spep_1-3+116, 1, 105.5, 73.1 , 0 );
setMoveKey(spep_1-3+118, 1, 108.4, 58.5 , 0 );
setMoveKey(spep_1-3+120, 1, 27.9, 184.8 , 0 );
setMoveKey(spep_1-3+122, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1-3+124, 1, 34.5, 168.7 , 0 );
setMoveKey(spep_1-3+126, 1, 37.4, 168.7 , 0 );
setMoveKey(spep_1-3+128, 1, 40.3, 168.7 , 0 );
setMoveKey(spep_1-3+130, 1, 34.8, 161.9 , 0 );
setMoveKey(spep_1-3+132, 1, 19.2, 177 , 0 );
setMoveKey(spep_1-3+134, 1, 21.2, 181.1 , 0 );
setMoveKey(spep_1-3+136, 1, 28.4, 178.2 , 0 );
setMoveKey(spep_1-3+138, 1, 28.8, 180.8 , 0 );
setMoveKey(spep_1-3+140, 1, 36.3, 179.6 , 0 );
setMoveKey(spep_1-3+142, 1, 37.4, 179.6 , 0 );
setMoveKey(spep_1-3+144, 1, 38.6, 179.6 , 0 );
setMoveKey(spep_1-3+146, 1, 39.7, 179.6 , 0 );
setMoveKey(spep_1-3+148, 1, 24.6, 190.7 , 0 );
setMoveKey(spep_1-3+150, 1, 23.1, 194.9 , 0 );
setMoveKey(spep_1-3+152, 1, 26.9, 192.5 , 0 );
setMoveKey(spep_1-3+154, 1, 23.6, 194.9 , 0 );
setMoveKey(spep_1-3+156, 1, 41.7, 179.6 , 0 );
setMoveKey(spep_1-3+158, 1, 46.5, 179.3 , 0 );
setMoveKey(spep_1-3+160, 1, 51.2, 179 , 0 );
setMoveKey(spep_1-3+162, 1, 55.9, 168.2 , 0 );
setMoveKey(spep_1-3+164, 1, 55.3, 168.2 , 0 );
setMoveKey(spep_1-3+166, 1, 54.6, 168.2 , 0 );
setMoveKey(spep_1-3+168, 1, 17.8, 185.2 , 0 );
setMoveKey(spep_1-3+170, 1, 16.3, 193.1 , 0 );
setMoveKey(spep_1-3+172, 1, 20.1, 194.3 , 0 );
setMoveKey(spep_1-3+174, 1, 16.8, 200.3 , 0 );
setMoveKey(spep_1-3+176, 1, 34.9, 179.6 , 0 );
setMoveKey(spep_1-3+178, 1, 39.7, 179.3 , 0 );
setMoveKey(spep_1-3+180, 1, 44.4, 179 , 0 );
setMoveKey(spep_1-3+182, 1, 28, 167.3 , 0 );
setMoveKey(spep_1-3+184, 1, 32.7, 167.3 , 0 );
setMoveKey(spep_1-3+186, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1-3+188, 1, 34.1, 168.7 , 0 );
setMoveKey(spep_1-3+190, 1, 36.7, 168.7 , 0 );
setMoveKey(spep_1-3+192, 1, 4.3, 179.8 , 0 );
setMoveKey(spep_1-3+194, 1, 2.1, 184.4 , 0 );
setMoveKey(spep_1-3+196, 1, 5.3, 182.2 , 0 );
setMoveKey(spep_1-3+198, 1, 1.5, 184.8 , 0 );
setMoveKey(spep_1-3+200, 1, 5.1, 168.7 , 0 );
setMoveKey(spep_1-3+202, 1, 8, 168.7 , 0 );
setMoveKey(spep_1-3+204, 1, 11, 168.7 , 0 );
setMoveKey(spep_1-3+206, 1, 13.9, 168.7 , 0 );
setMoveKey(spep_1-3+208, 1, 8.3, 161.9 , 0 );
setMoveKey(spep_1-3+210, 1, -7.2, 177 , 0 );
setMoveKey(spep_1-3+212, 1, -5.2, 181.1 , 0 );
setMoveKey(spep_1-3+214, 1, 1.9, 178.2 , 0 );
setMoveKey(spep_1-3+216, 1, 2.3, 180.8 , 0 );
setMoveKey(spep_1-3+218, 1, 9.8, 179.6 , 0 );
setMoveKey(spep_1-3+220, 1, 11, 179.6 , 0 );
setMoveKey(spep_1-3+222, 1, 12.1, 179.6 , 0 );
setMoveKey(spep_1-3+224, 1, 13.3, 179.6 , 0 );
setMoveKey(spep_1-3+258, 1, -34.2, -24 , 0 );
setMoveKey(spep_1-3+260, 1, -30.1, -34 , 0 );
setMoveKey(spep_1-3+262, 1, -38.1, -56.1 , 0 );
setMoveKey(spep_1-3+264, 1, -30.1, -62.1 , 0 );
setMoveKey(spep_1-3+266, 1, -34.1, -80.1 , 0 );
setMoveKey(spep_1-3+268, 1, -30.1, -90.2 , 0 );
setMoveKey(spep_1-3+270, 1, -38, -185.1 , 0 );
setMoveKey(spep_1-3+272, 1, -30, -264.1 , 0 );
setMoveKey(spep_1-3+274, 1, -33.9, -355 , 0 );
setMoveKey(spep_1-3+276, 1, -29.9, -438 , 0 );
setMoveKey(spep_1-3+278, 1, -37.8, -533 , 0 );
setMoveKey(spep_1-3+280, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+282, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+284, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+286, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+288, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+290, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+292, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+294, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+296, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+298, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+300, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+302, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+304, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+306, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+308, 1, -29.8, -612 , 0 );


setMoveKey(spep_1-3+310, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+312, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+314, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+316, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+318, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+320, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+322, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+324, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+326, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+328, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+330, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+332, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+334, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+336, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+338, 1, -43.2, 161.4 , 0 );

setScaleKey(spep_1-3+0, 1, 1.29, 1.29 );
setScaleKey(spep_1-3+2, 1, 1.29, 1.29 );
setScaleKey(spep_1-3+4, 1, 1.3, 1.3 );
setScaleKey(spep_1-3+8, 1, 1.3, 1.3 );
setScaleKey(spep_1-3+10, 1, 1.31, 1.31 );
setScaleKey(spep_1-3+12, 1, 1.31, 1.31 );
setScaleKey(spep_1-3+14, 1, 1.32, 1.32 );
setScaleKey(spep_1-3+18, 1, 1.32, 1.32 );
setScaleKey(spep_1-3+20, 1, 1.33, 1.33 );
setScaleKey(spep_1-3+24, 1, 1.33, 1.33 );
setScaleKey(spep_1-3+26, 1, 1.34, 1.34 );
setScaleKey(spep_1-3+28, 1, 1.34, 1.34 );
setScaleKey(spep_1-3+30, 1, 1.5, 1.5 );
setScaleKey(spep_1-3+32, 1, 1.47, 1.47 );
setScaleKey(spep_1-3+34, 1, 1.53, 1.53 );
setScaleKey(spep_1-3+36, 1, 1.59, 1.59 );
setScaleKey(spep_1-3+38, 1, 1.65, 1.65 );
setScaleKey(spep_1-3+40, 1, 1.72, 1.72 );
setScaleKey(spep_1-3+42, 1, 1.78, 1.78 );
setScaleKey(spep_1-3+44, 1, 1.83, 1.83 );
setScaleKey(spep_1-3+46, 1, 1.84, 1.84 );
setScaleKey(spep_1-3+48, 1, 1.85, 1.85 );
setScaleKey(spep_1-3+50, 1, 1.86, 1.86 );
setScaleKey(spep_1-3+52, 1, 1.87, 1.87 );
setScaleKey(spep_1-3+54, 1, 1.74, 1.74 );
setScaleKey(spep_1-3+56, 1, 1.75, 1.75 );
setScaleKey(spep_1-3+58, 1, 1.76, 1.76 );
setScaleKey(spep_1-3+60, 1, 1.76, 1.76 );
setScaleKey(spep_1-3+62, 1, 1.91, 1.91 );
setScaleKey(spep_1-3+64, 1, 1.92, 1.92 );
setScaleKey(spep_1-3+66, 1, 1.93, 1.93 );
setScaleKey(spep_1-3+68, 1, 1.93, 1.93 );
setScaleKey(spep_1-3+70, 1, 1.81, 1.81 );
setScaleKey(spep_1-3+72, 1, 1.81, 1.81 );
setScaleKey(spep_1-3+74, 1, 1.82, 1.82 );
setScaleKey(spep_1-3+76, 1, 1.83, 1.83 );
setScaleKey(spep_1-3+78, 1, 1.98, 1.98 );
setScaleKey(spep_1-3+80, 1, 1.99, 1.99 );
setScaleKey(spep_1-3+82, 1, 2.0, 2.0 );
setScaleKey(spep_1-3+84, 1, 2.01, 2.01 );
setScaleKey(spep_1-3+86, 1, 2.01, 2.01 );
setScaleKey(spep_1-3+88, 1, 2.02, 2.02 );
setScaleKey(spep_1-3+90, 1, 1.89, 1.89 );
setScaleKey(spep_1-3+92, 1, 1.89, 1.89 );
setScaleKey(spep_1-3+94, 1, 1.9, 1.9 );
setScaleKey(spep_1-3+96, 1, 1.91, 1.91 );
setScaleKey(spep_1-3+98, 1, 2.07, 2.07 );
setScaleKey(spep_1-3+100, 1, 2.08, 2.08 );
setScaleKey(spep_1-3+102, 1, 2.08, 2.08 );
setScaleKey(spep_1-3+104, 1, 2.1, 2.1 );
setScaleKey(spep_1-3+106, 1, 2.11, 2.11 );
setScaleKey(spep_1-3+108, 1, 2.11, 2.11 );
setScaleKey(spep_1-3+110, 1, 2.12, 2.12 );
setScaleKey(spep_1-3+112, 1, 2.13, 2.13 );
setScaleKey(spep_1-3+114, 1, 1.98, 1.98 );
setScaleKey(spep_1-3+116, 1, 1.99, 1.99 );
setScaleKey(spep_1-3+118, 1, 2.0, 2.0 );
setScaleKey(spep_1-3+120, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+122, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+128, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+130, 1, 0.86, 0.86 );
setScaleKey(spep_1-3+132, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+138, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+140, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+146, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+148, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+154, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+156, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+166, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+168, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+174, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+176, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+180, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+182, 1, 0.86, 0.86 );
setScaleKey(spep_1-3+184, 1, 0.86, 0.86 );
setScaleKey(spep_1-3+186, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+190, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+192, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+198, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+200, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+206, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+208, 1, 0.86, 0.86 );
setScaleKey(spep_1-3+210, 1, 0.8, 0.8 );
setScaleKey(spep_1-3+218, 1, 0.85, 0.85 );

setScaleKey(spep_1-3+258, 1, 0.21, 0.21 );
setScaleKey(spep_1-3+260, 1, 0.37, 0.37 );
setScaleKey(spep_1-3+262, 1, 0.53, 0.53 );
setScaleKey(spep_1-3+264, 1, 0.69, 0.69 );
setScaleKey(spep_1-3+266, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+268, 1, 1.01, 1.01 );
setScaleKey(spep_1-3+270, 1, 1.4, 1.4 );
setScaleKey(spep_1-3+272, 1, 1.79, 1.79 );
setScaleKey(spep_1-3+274, 1, 2.17, 2.17 );
setScaleKey(spep_1-3+276, 1, 2.56, 2.56 );
setScaleKey(spep_1-3+278, 1, 2.95, 2.95 );
setScaleKey(spep_1-3+280, 1, 3.34, 3.34 );

setRotateKey(spep_1-3, 1, 0 );
setRotateKey(spep_1-3+18, 1, 0 );
setRotateKey(spep_1-3+20, 1, 0 );
setRotateKey(spep_1-3+30, 1, 0 );
setRotateKey(spep_1-3+32, 1, -2 );
setRotateKey(spep_1-3+34, 1, -1.6 );
setRotateKey(spep_1-3+36, 1, -1.2 );
setRotateKey(spep_1-3+38, 1, -0.8 );
setRotateKey(spep_1-3+40, 1, -0.4 );
setRotateKey(spep_1-3+42, 1, 0 );
setRotateKey(spep_1-3+44, 1, -0.2 );
setRotateKey(spep_1-3+50, 1, -0.2 );
setRotateKey(spep_1-3+52, 1, -2 );
setRotateKey(spep_1-3+54, 1, -41 );
setRotateKey(spep_1-3+56, 1, -37.7 );
setRotateKey(spep_1-3+58, 1, -34.4 );
setRotateKey(spep_1-3+60, 1, -31.1 );
setRotateKey(spep_1-3+62, 1, -15.9 );
setRotateKey(spep_1-3+64, 1, -18.3 );
setRotateKey(spep_1-3+66, 1, -20.8 );
setRotateKey(spep_1-3+68, 1, -23.2 );
setRotateKey(spep_1-3+70, 1, -41 );
setRotateKey(spep_1-3+72, 1, -40 );
setRotateKey(spep_1-3+74, 1, -39.1 );
setRotateKey(spep_1-3+76, 1, -38.1 );
setRotateKey(spep_1-3+78, 1, -5.7 );
setRotateKey(spep_1-3+82, 1, -5.7 );
setRotateKey(spep_1-3+84, 1, -3.8 );
setRotateKey(spep_1-3+86, 1, -0.5 );
setRotateKey(spep_1-3+88, 1, 2.9 );
setRotateKey(spep_1-3+90, 1, -41 );
setRotateKey(spep_1-3+92, 1, -40 );
setRotateKey(spep_1-3+94, 1, -39.1 );
setRotateKey(spep_1-3+96, 1, -38.1 );
setRotateKey(spep_1-3+98, 1, -5.7 );
setRotateKey(spep_1-3+102, 1, -5.7 );
setRotateKey(spep_1-3+104, 1, -2 );
setRotateKey(spep_1-3+106, 1, -2 );
setRotateKey(spep_1-3+108, 1, -5.7 );
setRotateKey(spep_1-3+112, 1, -5.7 );
setRotateKey(spep_1-3+114, 1, -41 );
setRotateKey(spep_1-3+116, 1, -40.4 );
setRotateKey(spep_1-3+118, 1, -39.7 );
setRotateKey(spep_1-3+120, 1, -39.1 );
setRotateKey(spep_1-3+122, 1, -0.2 );
setRotateKey(spep_1-3+128, 1, -0.2 );
setRotateKey(spep_1-3+130, 1, -2 );
setRotateKey(spep_1-3+132, 1, -41 );
setRotateKey(spep_1-3+134, 1, -37.7 );
setRotateKey(spep_1-3+136, 1, -34.4 );
setRotateKey(spep_1-3+138, 1, -31.1 );
setRotateKey(spep_1-3+140, 1, -15.9 );
setRotateKey(spep_1-3+142, 1, -18.3 );
setRotateKey(spep_1-3+144, 1, -20.8 );
setRotateKey(spep_1-3+146, 1, -23.2 );
setRotateKey(spep_1-3+148, 1, -41 );
setRotateKey(spep_1-3+150, 1, -40 );
setRotateKey(spep_1-3+152, 1, -39.1 );
setRotateKey(spep_1-3+154, 1, -38.1 );
setRotateKey(spep_1-3+156, 1, -5.7 );
setRotateKey(spep_1-3+160, 1, -5.7 );
setRotateKey(spep_1-3+162, 1, -3.8 );
setRotateKey(spep_1-3+164, 1, -0.5 );
setRotateKey(spep_1-3+166, 1, 2.9 );
setRotateKey(spep_1-3+168, 1, -41 );
setRotateKey(spep_1-3+170, 1, -40 );
setRotateKey(spep_1-3+172, 1, -39.1 );
setRotateKey(spep_1-3+174, 1, -38.1 );
setRotateKey(spep_1-3+176, 1, -5.7 );
setRotateKey(spep_1-3+180, 1, -5.7 );
setRotateKey(spep_1-3+182, 1, -2 );
setRotateKey(spep_1-3+184, 1, -2 );
setRotateKey(spep_1-3+186, 1, -5.7 );
setRotateKey(spep_1-3+190, 1, -5.7 );
setRotateKey(spep_1-3+192, 1, -41 );
setRotateKey(spep_1-3+194, 1, -40.4 );
setRotateKey(spep_1-3+196, 1, -39.7 );
setRotateKey(spep_1-3+198, 1, -39.1 );
setRotateKey(spep_1-3+200, 1, -0.2 );
setRotateKey(spep_1-3+206, 1, -0.2 );
setRotateKey(spep_1-3+208, 1, -2 );
setRotateKey(spep_1-3+210, 1, -41 );
setRotateKey(spep_1-3+212, 1, -37.7 );
setRotateKey(spep_1-3+214, 1, -34.4 );
setRotateKey(spep_1-3+216, 1, -31.1 );
setRotateKey(spep_1-3+218, 1, -15.9 );
setRotateKey(spep_1-3+220, 1, -18.3 );
setRotateKey(spep_1-3+222, 1, -20.8 );
setRotateKey(spep_1-3+224, 1, -23.2 );


setRotateKey(spep_1-3+258, 1, 4.7 );
setRotateKey(spep_1-3+262, 1, 4.7 );
setRotateKey(spep_1-3+264, 1, 4.6 );
setRotateKey(spep_1-3+272, 1, 4.6 );
setRotateKey(spep_1-3+274, 1, 4.7 );



--集中線
shuchusen2 = entryEffectLife( spep_1 + 40,  906, 208, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 248, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 40, shuchusen2, 1.34, 1.9 );
setEffScaleKey( spep_1 + 248, shuchusen2, 1.34, 1.9 );

setEffRotateKey( spep_1 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 + 248, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 40, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 41, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 42, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 248, shuchusen2, 255 );

ctdogagaga = entryEffectLife( spep_1 + 40,  10017, 172, 0x100, -1, 0, 12, 370.7 );--ドガガガッ

setEffMoveKey( spep_1 + 40, ctdogagaga, 12, 370.7 , 0 );
setEffMoveKey( spep_1 + 48, ctdogagaga, 11.8, 371.2 , 0 );
setEffMoveKey( spep_1 + 50, ctdogagaga, 4, 380.1 , 0 );
setEffMoveKey( spep_1 + 52, ctdogagaga, 11.8, 371 , 0 );
setEffMoveKey( spep_1 + 54, ctdogagaga, 4.8, 378.9 , 0 );
setEffMoveKey( spep_1 + 56, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 58, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 60, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 62, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 64, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 66, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 68, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 70, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 72, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 74, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 76, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 78, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 80, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 82, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 84, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 86, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 88, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 90, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 92, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 94, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 96, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 98, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 100, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 102, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 104, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 106, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 108, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 110, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 112, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 114, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 116, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 118, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 120, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 122, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 124, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 126, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 128, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 130, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 132, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 134, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 136, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 138, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 140, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 142, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 144, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 146, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 148, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 150, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 152, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 154, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 156, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 158, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 160, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 162, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 164, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 166, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 168, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 170, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 172, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 174, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 176, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 178, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 180, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 182, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 184, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 186, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 188, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 190, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 192, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 194, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 196, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 198, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 200, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 202, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 204, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 206, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 208, ctdogagaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 210, ctdogagaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 212, ctdogagaga, 11.9, 370.7 , 0 );

setEffScaleKey( spep_1 + 40, ctdogagaga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 48, ctdogagaga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 50, ctdogagaga, 3.06, 3.06 );
setEffScaleKey( spep_1 + 52, ctdogagaga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 54, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_1 + 56, ctdogagaga, 2.6, 2.6 );
setEffScaleKey( spep_1 + 212, ctdogagaga, 2.6, 2.6 );

setEffRotateKey( spep_1 + 40, ctdogagaga, 14.5 );
setEffRotateKey( spep_1 + 212, ctdogagaga, 14.5 );

setEffAlphaKey( spep_1 + 40, ctdogagaga, 0 );
setEffAlphaKey( spep_1 + 41, ctdogagaga, 0 );
setEffAlphaKey( spep_1 + 42, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 204, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 206, ctdogagaga, 191 );
setEffAlphaKey( spep_1 + 208, ctdogagaga, 128 );
setEffAlphaKey( spep_1 + 210, ctdogagaga, 64 );
setEffAlphaKey( spep_1 + 212, ctdogagaga, 0 );

setEffShake(spep_1 + 42,ctdogagaga,172,10);

--文字エントリー

ctka = entryEffectLife( spep_1 + 230,  10004, 20, 0x100, -1, 0, 104.2, 312.5 );--カッ
setEffMoveKey( spep_1 + 230, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 232, ctka, 98.8, 322.6 , 0 );
setEffMoveKey( spep_1 + 234, ctka, 104.2, 312.6 , 0 );
setEffMoveKey( spep_1 + 236, ctka, 99.5, 321.2 , 0 );
setEffMoveKey( spep_1 + 238, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 240, ctka, 99.5, 321.3 , 0 );
setEffMoveKey( spep_1 + 242, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 244, ctka, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1 + 246, ctka, 104.2, 312.4 , 0 );
setEffMoveKey( spep_1 + 248, ctka, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1 + 250, ctka, 99.4, 321.3 , 0 );

setEffScaleKey( spep_1 + 230, ctka, 1.02, 1.02 );
setEffScaleKey( spep_1 + 232, ctka, 2.98, 2.98 );
setEffScaleKey( spep_1 + 234, ctka, 4.16, 4.16 );
setEffScaleKey( spep_1 + 236, ctka, 2.61, 2.61 );
setEffScaleKey( spep_1 + 238, ctka, 2.62, 2.62 );
setEffScaleKey( spep_1 + 240, ctka, 2.63, 2.63 );
setEffScaleKey( spep_1 + 242, ctka, 2.64, 2.64 );
setEffScaleKey( spep_1 + 244, ctka, 2.64, 2.64 );
setEffScaleKey( spep_1 + 246, ctka, 2.65, 2.65 );
setEffScaleKey( spep_1 + 248, ctka, 2.66, 2.66 );
setEffScaleKey( spep_1 + 250, ctka, 2.67, 2.67 );

setEffRotateKey( spep_1 + 230, ctka, 35.2 );
setEffRotateKey( spep_1 + 250, ctka, 35.2 );

setEffAlphaKey( spep_1 + 230, ctka, 64 );
setEffAlphaKey( spep_1 + 232, ctka, 183 );
setEffAlphaKey( spep_1 + 234, ctka, 255 );
setEffAlphaKey( spep_1 + 244, ctka, 255 );
setEffAlphaKey( spep_1 + 246, ctka, 142 );
setEffAlphaKey( spep_1 + 248, ctka, 57 );
setEffAlphaKey( spep_1 + 250, ctka, 0 );

--[[
--集中線
shuchusen3_a = entryEffectLife( spep_1 + 44,  906, 204, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_1 + 44, shuchusen3_a, 0, 0 , 0 );
setEffMoveKey( spep_1 + 248, shuchusen3_a, 0, 0 , 0 );

setEffScaleKey( spep_1 + 44, shuchusen3_a, 1.34, 1.9 );
setEffScaleKey( spep_1 + 248, shuchusen3_a, 1.34, 1.9 );

setEffRotateKey( spep_1 + 44, shuchusen3_a, 0 );
setEffRotateKey( spep_1 + 248, shuchusen3_a, 0 );

setEffAlphaKey( spep_1 + 44, shuchusen3_a, 255 );
setEffAlphaKey( spep_1 + 248, shuchusen3_a, 255 );
]]
--***SE***
playSe(  spep_1,  43);
playSe(  spep_1+42,  1000);--パンチ
playSe(  spep_1+50,  1004);--振りかぶり
playSe(  spep_1+52,  1001);--パンチ
playSe(  spep_1+60,  1007);--蹴り
playSe(  spep_1+68,  1008);--蹴り
playSe(  spep_1+76,  1000);--パンチ
playSe(  spep_1+82,  1007);--蹴り
playSe(  spep_1+88,  1008);--蹴り
playSe(  spep_1+96,  1000);--パンチ
playSe(  spep_1+104,  1004);--振りかぶり
playSe(  spep_1+106,  1001);--パンチ
--ここまでアップ

playSe(  spep_1+126,  1000);--パンチ
playSe(  spep_1+132,  1001);--パンチ
playSe(  spep_1+138,  1007);--蹴り
playSe(  spep_1+146,  1008);--蹴り
playSe(  spep_1+154,  1001);--パンチ
playSe(  spep_1+160,  1007);--蹴り
playSe(  spep_1+166,  1008);--蹴り
playSe(  spep_1+172,  1004);--振りかぶり
playSe(  spep_1+174,  1001);--パンチ
playSe(  spep_1+184,  1000);--パンチ
playSe(  spep_1+190,  1007);--蹴り
playSe(  spep_1+198,  1001);--パンチ
playSe(  spep_1+204,  1007);--蹴り
playSe(  spep_1+210,  1008);--蹴り
playSe(  spep_1+220,  1011);

-- ** エフェクト等 ** --
entryFade(spep_1+41, 0,2, 4,fcolor_r,fcolor_g,fcolor_b,200);     -- whit_fe fade
entryFade(spep_1+110, 6,6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_1+242, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+250;
--------------------------------------
--飛び出してくる
--------------------------------------
--エフェクト
tackle_f=entryEffectLife(spep_2,SP_04x,90,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, tackle_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, tackle_f, 0, 0 , 0 );

setEffScaleKey(spep_2,tackle_f,-1.0,1.0);
setEffScaleKey(spep_2+90,tackle_f,-1.0,1.0);

setEffRotateKey(spep_2,tackle_f,0);
setEffRotateKey(spep_2+90,tackle_f,0);

setEffAlphaKey(spep_2,tackle_f,255);
setEffAlphaKey(spep_2+90,tackle_f,255);

--エフェクト
tackle_b=entryEffectLife(spep_2,SP_05x,90,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, tackle_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, tackle_b, 0, 0 , 0 );

setEffScaleKey(spep_2,tackle_b,-1.0,1.0);
setEffScaleKey(spep_2+90,tackle_b,-1.0,1.0);

setEffRotateKey(spep_2,tackle_b,0);
setEffRotateKey(spep_2+90,tackle_b,0);

setEffAlphaKey(spep_2,tackle_b,255);
setEffAlphaKey(spep_2+90,tackle_b,255);


--***SE***
playSe(  spep_2,  SE_04);

--白フェード
entryFade(spep_2+82, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_3=spep_2+90;
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
------------------------------------------------------
--岩にぶつかる
------------------------------------------------------
--エフェクト
hit_f=entryEffectLife(spep_4,SP_06x,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_f,1.0,1.0);
setEffScaleKey(spep_4+80,hit_f,1.0,1.0);

setEffRotateKey(spep_4,hit_f,0);
setEffRotateKey(spep_4+80,hit_f,0);

setEffAlphaKey(spep_4,hit_f,255);
setEffAlphaKey(spep_4+80,hit_f,255);

--流線
ryusen2 = entryEffectLife( spep_4 + 0,  921, 80, 0x80, -1, 0, -6.3, 20 );

setEffMoveKey( spep_4 + 0, ryusen2, -6.3, 20 , 0 );
setEffMoveKey( spep_4 + 80, ryusen2, -6.3, 20 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.51, 1.33 );
setEffScaleKey( spep_4 + 80, ryusen2, 1.51, 1.33 );

setEffRotateKey(  spep_4, ryusen2,  10 );
setEffRotateKey(  spep_4+80,  ryusen2,  10);

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 80, ryusen2, 255 );

--エフェクト
hit_b=entryEffectLife(spep_4,SP_07x,80,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_b,1.0,1.0);
setEffScaleKey(spep_4+80,hit_b,1.0,1.0);

setEffRotateKey(spep_4,hit_b,0);
setEffRotateKey(spep_4+80,hit_b,0);

setEffAlphaKey(spep_4,hit_b,255);
setEffAlphaKey(spep_4+80,hit_b,255);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4-3 + 0, 1, -439.4, 224.1 , 0 );
setMoveKey( spep_4-3 + 2, 1, -333.5, 189.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, -227.7, 155.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, -121.9, 120.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, -16.1, 86 , 0 );
setMoveKey( spep_4-3 + 10, 1, -1.1, 78.2 , 0 );
setMoveKey( spep_4-3 + 12, 1, 14, 70.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 29, 62.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 44.1, 55 , 0 );
setMoveKey( spep_4-3 + 18, 1, 59.1, 47.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 74.2, 39.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 89.2, 31.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 47.5, 81.1 , 0 );
setMoveKey( spep_4-3 + 26, 1, 71.3, 49.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 107.1, 34.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 127.6, 9.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, 137.1, 11.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 132.8, 1.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 142.2, 8.3 , 0 );
setMoveKey( spep_4-3 + 38, 1, 139.6, 3.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 144.9, 6.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 138.3, -2.8 , 0 );
setMoveKey( spep_4-3 + 44, 1, 147.7, 4.2 , 0 );
setMoveKey( spep_4-3 + 46, 1, 145, -0.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 150.4, 2.2 , 0 );
setMoveKey( spep_4-3 + 50, 1, 143.8, -6.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, 153.1, 0.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 150.5, -8.9 , 0 );
setMoveKey( spep_4-3 + 56, 1, 155.9, -1.9 , 0 );
setMoveKey( spep_4-2 + 58, 1, 149.2, -14.9 , 0 );-----------------------
setMoveKey( spep_4-3 + 60, 1, 158.6, -4 , 0 );
setMoveKey( spep_4-3 + 62, 1, 156, -13 , 0 );
setMoveKey( spep_4-3 + 64, 1, 161.3, -6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 154.7, -11 , 0 );
setMoveKey( spep_4-3 + 68, 1, 164.1, -8.1 , 0 );
setMoveKey( spep_4-3 + 70, 1, 161.4, -17.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, 166.8, -10.1 , 0 );
setMoveKey( spep_4-3 + 74, 1, 160.2, -19.1 , 0 );
setMoveKey( spep_4-3 + 76, 1, 169.6, -12.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 166.9, -21.2 , 0 );

setScaleKey( spep_4-3 + 0, 1, 8.87, 8.87 );
setScaleKey( spep_4-3 + 2, 1, 7.11, 7.11 );
setScaleKey( spep_4-3 + 4, 1, 5.34, 5.34 );
setScaleKey( spep_4-3 + 6, 1, 3.58, 3.58 );
setScaleKey( spep_4-3 + 8, 1, 1.82, 1.82 );
setScaleKey( spep_4-3 + 10, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_4-3 + 14, 1, 1.52, 1.52 );
setScaleKey( spep_4-3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_4-3 + 18, 1, 1.31, 1.31 );
setScaleKey( spep_4-3 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_4-3 + 22, 1, 1.11, 1.11 );
setScaleKey( spep_4-3 + 24, 1, 1.31, 1.31 );
setScaleKey( spep_4-3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 30, 1, 0.9, 0.9 );
setScaleKey( spep_4-3 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 46, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 48, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 54, 1, 0.83, 0.83 );
setScaleKey( spep_4-3 + 56, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 60, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 62, 1, 0.81, 0.81 );
setScaleKey( spep_4-3 + 66, 1, 0.81, 0.81 );
setScaleKey( spep_4-3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 70, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 72, 1, 0.79, 0.79 );
setScaleKey( spep_4-3 + 76, 1, 0.79, 0.79 );
setScaleKey( spep_4-3 + 78, 1, 0.78, 0.78 );

setRotateKey( spep_4-3 + 0, 1, 21.3 );
setRotateKey( spep_4-3 + 2, 1, 21.4 );
setRotateKey( spep_4-3 + 4, 1, 21.4 );
setRotateKey( spep_4-3 + 6, 1, 21.5 );
setRotateKey( spep_4-3 + 78, 1, 21.5 );

--文字エントリー
ctdogon = entryEffectLife( spep_4-4 + 26,  10018, 38, 0x100, -1, 0, -81.8, 345.2 );--ドゴォンッ

setEffMoveKey( spep_4-4 + 26, ctdogon, -81.8, 345.2 , 0 );
setEffMoveKey( spep_4-4 + 28, ctdogon, -80, 344.7 , 0 );
setEffMoveKey( spep_4-4 + 30, ctdogon, -80, 344.6 , 0 );
setEffMoveKey( spep_4-4 + 32, ctdogon, -83.4, 345.3 , 0 );
setEffMoveKey( spep_4-4 + 34, ctdogon, -80, 344.7 , 0 );
setEffMoveKey( spep_4-4 + 36, ctdogon, -82.9, 345.3 , 0 );
setEffMoveKey( spep_4-4 + 38, ctdogon, -80.1, 344.8 , 0 );
setEffMoveKey( spep_4-4 + 40, ctdogon, -82.8, 345.2 , 0 );
setEffMoveKey( spep_4-4 + 42, ctdogon, -80.1, 344.7 , 0 );
setEffMoveKey( spep_4-4 + 44, ctdogon, -82.8, 345.2 , 0 );
setEffMoveKey( spep_4-4 + 46, ctdogon, -80.1, 344.6 , 0 );
setEffMoveKey( spep_4-4 + 48, ctdogon, -82.7, 345.1 , 0 );
setEffMoveKey( spep_4-4 + 50, ctdogon, -80.1, 344.5 , 0 );
setEffMoveKey( spep_4-4 + 52, ctdogon, -80, 344.5 , 0 );
setEffMoveKey( spep_4-4 + 54, ctdogon, -82.6, 345 , 0 );
setEffMoveKey( spep_4-4 + 56, ctdogon, -80.1, 344.5 , 0 );
setEffMoveKey( spep_4-4 + 58, ctdogon, -82.6, 345.1 , 0 );
setEffMoveKey( spep_4-4 + 60, ctdogon, -80.1, 344.6 , 0 );
setEffMoveKey( spep_4-4 + 62, ctdogon, -82.6, 345.1 , 0 );
setEffMoveKey( spep_4-4 + 64, ctdogon, -82.6, 345.1 , 0 );

setEffScaleKey( spep_4-4 + 26, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_4-4 + 28, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_4-4 + 30, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_4-4 + 32, ctdogon, 4.05, 4.05 );
setEffScaleKey( spep_4-4 + 34, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_4-4 + 36, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_4-4 + 38, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_4-4 + 40, ctdogon, 3.29, 3.29 );
setEffScaleKey( spep_4-4 + 42, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_4-4 + 44, ctdogon, 3.19, 3.19 );
setEffScaleKey( spep_4-4 + 46, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_4-4 + 48, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_4-4 + 50, ctdogon, 3.05, 3.05 );
setEffScaleKey( spep_4-4 + 52, ctdogon, 3, 3 );
setEffScaleKey( spep_4-4 + 54, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_4-4 + 56, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_4-4 + 58, ctdogon, 2.97, 2.97 );
setEffScaleKey( spep_4-4 + 60, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_4-4 + 62, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_4-4 + 64, ctdogon, 2.93, 2.93 );

setEffRotateKey( spep_4-4 + 26, ctdogon, -24.7 );
setEffRotateKey( spep_4-4 + 42, ctdogon, -24.7 );
setEffRotateKey( spep_4-4 + 44, ctdogon, -24.6 );
setEffRotateKey( spep_4-4 + 64, ctdogon, -24.6 );

setEffAlphaKey( spep_4-4 + 26, ctdogon, 255 );
setEffAlphaKey( spep_4-4 + 27, ctdogon, 255 );
setEffAlphaKey( spep_4-4 + 28, ctdogon, 255 );
setEffAlphaKey( spep_4-4 + 52, ctdogon, 255 );
setEffAlphaKey( spep_4-4 + 54, ctdogon, 213 );
setEffAlphaKey( spep_4-4 + 56, ctdogon, 170 );
setEffAlphaKey( spep_4-4 + 58, ctdogon, 128 );
setEffAlphaKey( spep_4-4 + 60, ctdogon, 85 );
setEffAlphaKey( spep_4-4 + 62, ctdogon, 42 );
setEffAlphaKey( spep_4-4 + 64, ctdogon, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.16, 1.47 );
setEffScaleKey( spep_4 + 80, shuchusen3, 1.16, 1.47 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 80, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 80, shuchusen3, 255 );

--SE
playSe(  spep_4,  44);
playSe(  spep_4+22,  1011);

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+21, 0,2, 4,fcolor_r,fcolor_g,fcolor_b,200);     -- whit_f_fe fade
entryFade(spep_4+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade

--次の準備
spep_5=spep_4+80;

------------------------------------------------------
--てからビーム
------------------------------------------------------
--エフェクト(前)
beam_f=entryEffectLife(spep_5,SP_08x,200,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, beam_f, 0, 0 , 0 );

setEffScaleKey(spep_5,beam_f,1.0,1.0);
setEffScaleKey(spep_5+200,beam_f,1.0,1.0);

setEffRotateKey(spep_5,beam_f,0);
setEffRotateKey(spep_5+200,beam_f,0);

setEffAlphaKey(spep_5,beam_f,255);
setEffAlphaKey(spep_5+200,beam_f,255);

--流線
ryusen3 = entryEffectLife( spep_5 + 0,  921, 200, 0x80, -1, 0, -6.3, 20 );

setEffMoveKey( spep_5 + 0, ryusen3, -6.3, 20 , 0 );
setEffMoveKey( spep_5 + 200, ryusen3, -6.3, 20 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1.51, 1.33 );
setEffScaleKey( spep_5 + 200, ryusen3, 1.51, 1.33 );

setEffRotateKey( spep_5 + 0, ryusen3, 10 );
setEffRotateKey( spep_5 + 200, ryusen3, 10 );

setEffAlphaKey( spep_5 + 0, ryusen3, 255 );
setEffAlphaKey( spep_5 + 200, ryusen3, 255 );

--エフェクト
beam_b=entryEffectLife(spep_5,SP_09x,200,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, beam_b, 0, 0 , 0 );

setEffScaleKey(spep_5,beam_b,1.0,1.0);
setEffScaleKey(spep_5+200,beam_b,1.0,1.0);

setEffRotateKey(spep_5,beam_b,10);
setEffRotateKey(spep_5+200,beam_b,10);

setEffAlphaKey(spep_5,beam_b,255);
setEffAlphaKey(spep_5+200,beam_b,255);

setEffShake(spep_5,beam_b,255,10);

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 200, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.16, 1.47 );
setEffScaleKey( spep_5 + 200, shuchusen4, 1.16, 1.47 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5 + 200, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 200, shuchusen4, 255 );

--顔カットイン
--speff=entryEffect(spep_5+4,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_5+4,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_5+16,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_5+16,ctgogo,0,520,0);
setEffMoveKey(spep_5+88,ctgogo,0,520,0);

setEffScaleKey(spep_5+16, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_5+88, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_5 + 16, ctgogo, 0 );
setEffAlphaKey( spep_5 + 17, ctgogo, 255 );
setEffAlphaKey( spep_5 + 18, ctgogo, 255 );
setEffAlphaKey( spep_5 + 88, ctgogo, 255 );

setEffRotateKey(spep_5+16,ctgogo,0);
setEffRotateKey(spep_5+88,ctgogo,0);


--文字エントリー

ctzuo = entryEffectLife( spep_5 -80 + 172,  10012, 38, 0x100, -1, 0, 78.7, 260.5 );--ズオッ

setEffMoveKey( spep_5 -80 + 172, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_5 -80 + 178, ctzuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_5 -80 + 180, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 182, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 184, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 186, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 188, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 190, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 192, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 194, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 196, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 198, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 -80 + 200, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 -80 + 202, ctzuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_5 -80 + 204, ctzuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_5 -80 + 206, ctzuo, 211.6, 339 , 0 );
setEffMoveKey( spep_5 -80 + 208, ctzuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_5 -80 + 210, ctzuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_5 -80 + 172, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_5 -80 + 178, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_5 -80 + 180, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_5 -80 + 200, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_5 -80 + 202, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_5 -80 + 204, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_5 -80 + 206, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_5 -80 + 208, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_5 -80 + 210, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_5 -80 + 172, ctzuo, 27.2 );
setEffRotateKey( spep_5 -80 + 210, ctzuo, 27.2 );

setEffAlphaKey( spep_5 -80 + 172, ctzuo, 0 );
setEffAlphaKey( spep_5 -80 + 173, ctzuo, 255 );
setEffAlphaKey( spep_5 -80 + 174, ctzuo, 255 );
setEffAlphaKey( spep_5 -80 + 200, ctzuo, 255 );
setEffAlphaKey( spep_5 -80 + 202, ctzuo, 204 );
setEffAlphaKey( spep_5 -80 + 204, ctzuo, 153 );
setEffAlphaKey( spep_5 -80 + 206, ctzuo, 102 );
setEffAlphaKey( spep_5 -80 + 208, ctzuo, 51 );
setEffAlphaKey( spep_5 -80 + 210, ctzuo, 0 );

setEffShake(spep_5 -80 + 172,ctzuo,38,20);

--文字エントリー
ctzudododod2 = entryEffectLife( spep_5 -80 + 218,  10014, 60, 0x100, -1, 0, 54.8, 362 );--ズドドドッ

setEffMoveKey( spep_5 -80 + 218, ctzudododod2, 54.8, 362 , 0 );
setEffMoveKey( spep_5 -80 + 220, ctzudododod2, 66.4, 371 , 0 );
setEffMoveKey( spep_5 -80 + 222, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 224, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 226, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 228, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 230, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 232, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 234, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 236, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 238, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 240, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 242, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 244, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 246, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 248, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 250, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 252, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 254, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 256, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 258, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 260, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 262, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 264, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 266, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 268, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 270, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 272, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 274, ctzudododod2, 52.4, 351.2 , 0 );
setEffMoveKey( spep_5 -80 + 276, ctzudododod2, 67.7, 368.4 , 0 );
setEffMoveKey( spep_5 -80 + 278, ctzudododod2, 52.4, 351.2 , 0 );

setEffScaleKey( spep_5 -80 + 218, ctzudododod2, 1.73, 1.73 );
setEffScaleKey( spep_5 -80 + 220, ctzudododod2, 2.16, 2.16 );
setEffScaleKey( spep_5 -80 + 222, ctzudododod2, 2.59, 2.59 );
setEffScaleKey( spep_5 -80 + 278, ctzudododod2, 2.59, 2.59 );

setEffRotateKey( spep_5 -80 + 218, ctzudododod2, -14.7 );
setEffRotateKey( spep_5 -80 + 278, ctzudododod2, -14.7 );

setEffAlphaKey( spep_5 -80 + 218, ctzudododod2, 85 );
setEffAlphaKey( spep_5 -80 + 220, ctzudododod2, 170 );
setEffAlphaKey( spep_5 -80 + 222, ctzudododod2, 255 );
setEffAlphaKey( spep_5 -80 + 278, ctzudododod2, 278 );

setEffShake(spep_5 -80 + 218,ctzudododod2,60,20);

--敵の動き
setDisp(spep_5-82+82,1,1);
setDisp(spep_5-78+278,1,0);

changeAnime(spep_5,1,108);

setMoveKey( spep_5-82 + 82, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 84, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 86, 1, 747.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 88, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 90, 1, 751.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 92, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 94, 1, 751.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 96, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 98, 1, 747.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 100, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 102, 1, 751.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 104, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 106, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 108, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 110, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 112, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 114, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 116, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 118, 1, 747.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 120, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 122, 1, 751.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 124, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 126, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 128, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 130, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 132, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 134, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 136, 1, 755.3, -473.4 , 0 );
setMoveKey( spep_5-82 + 138, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 140, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 142, 1, 749.3, -485.4 , 0 );
setMoveKey( spep_5-82 + 144, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 146, 1, 747.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 148, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 150, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 152, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 154, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 156, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 158, 1, 747.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 160, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 162, 1, 749.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 164, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 166, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 168, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 170, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 172, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 174, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 176, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 178, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 180, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 182, 1, 749.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 184, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 186, 1, 747.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 188, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 190, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 192, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 194, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 196, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 198, 1, 749.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 200, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 202, 1, 747.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 204, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 206, 1, 749.3, -479.4 , 0 );
setMoveKey( spep_5-82 + 208, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 210, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 212, 1, 751.3, -477.4 , 0 );
setMoveKey( spep_5-82 + 214, 1, 747.3, -481.4 , 0 );
setMoveKey( spep_5-82 + 216, 1, 751.3, -477.4 , 0 );

--ここからを調整（+20,-10）
chousei_x = -20;
chousei_y = -10;

setMoveKey( spep_5-82 + 218, 1, 749.3+chousei_x, -479.4+chousei_y , 0 );
setMoveKey( spep_5-82 + 220, 1, 751.3+chousei_x, -477.4+chousei_y , 0 );
setMoveKey( spep_5-82 + 222, 1, 695+chousei_x, -443.4+chousei_y , 0 );
setMoveKey( spep_5-82 + 224, 1, 646.7+chousei_x, -405.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 226, 1, 592.3+chousei_x, -375.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 228, 1, 542+chousei_x, -333.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 230, 1, 487.7+chousei_x, -299.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 232, 1, 437.4+chousei_x, -261.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 234, 1, 381+chousei_x, -229.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 236, 1, 332.7+chousei_x, -189.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 238, 1, 276.4+chousei_x, -155.8+chousei_y , 0 );
setMoveKey( spep_5-82 + 240, 1, 277+chousei_x, -151.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 242, 1, 271.3+chousei_x, -153.1+chousei_y , 0 );
setMoveKey( spep_5-82 + 244, 1, 269.3+chousei_x, -146.4+chousei_y , 0 );
setMoveKey( spep_5-82 + 246, 1, 263+chousei_x, -145.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 248, 1, 260.4+chousei_x, -140.4+chousei_y, 0 );
setMoveKey( spep_5-82 + 250, 1, 251.4+chousei_x, -141.1+chousei_y , 0 );
setMoveKey( spep_5-82 + 252, 1, 250.1+chousei_x, -133.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 254, 1, 242.5+chousei_x, -131.8+chousei_y , 0 );
setMoveKey( spep_5-82 + 256, 1, 238.6+chousei_x, -125.9+chousei_y , 0 );
setMoveKey( spep_5-82 + 258, 1, 228.4+chousei_x, -125.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 260, 1, 221.8+chousei_x, -121.3+chousei_y , 0 );
setMoveKey( spep_5-82 + 262, 1, 207+chousei_x, -148.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 264, 1, 207.8+chousei_x, -111.9+chousei_y , 0 );
setMoveKey( spep_5-82 + 266, 1, 176.2+chousei_x, -114.9+chousei_y , 0 );
setMoveKey( spep_5-82 + 268, 1, 192.4+chousei_x, -101.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 270, 1, 168.2+chousei_x, -112.2+chousei_y , 0 );
setMoveKey( spep_5-82 + 272, 1, 175.8+chousei_x, -90.5+chousei_y , 0 );
setMoveKey( spep_5-82 + 274, 1, 151+chousei_x, -100.7+chousei_y , 0 );
setMoveKey( spep_5-82 + 276, 1, 157.8+chousei_x, -82.6+chousei_y , 0 );
setMoveKey( spep_5-82 + 278, 1, 140.4+chousei_x, -82.3+chousei_y , 0 );

-- 1
setScaleKey( spep_5-82 + 82, 1, 0.24, 0.24 );
setScaleKey( spep_5-82 + 220, 1, 0.24, 0.24 );
setScaleKey( spep_5-82 + 222, 1, 0.3, 0.3 );
setScaleKey( spep_5-82 + 224, 1, 0.36, 0.36 );
setScaleKey( spep_5-82 + 226, 1, 0.42, 0.42 );
setScaleKey( spep_5-82 + 228, 1, 0.48, 0.48 );
setScaleKey( spep_5-82 + 230, 1, 0.54, 0.54 );
setScaleKey( spep_5-82 + 232, 1, 0.6, 0.6 );
setScaleKey( spep_5-82 + 234, 1, 0.66, 0.66 );
setScaleKey( spep_5-82 + 236, 1, 0.72, 0.72 );
setScaleKey( spep_5-82 + 238, 1, 0.78, 0.78 );
setScaleKey( spep_5-82 + 240, 1, 0.78, 0.78 );
setScaleKey( spep_5-82 + 242, 1, 0.79, 0.79 );
setScaleKey( spep_5-82 + 244, 1, 0.8, 0.8 );
setScaleKey( spep_5-82 + 246, 1, 0.8, 0.8 );
setScaleKey( spep_5-82 + 248, 1, 0.81, 0.81 );
setScaleKey( spep_5-82 + 250, 1, 0.82, 0.82 );
setScaleKey( spep_5-82 + 252, 1, 0.82, 0.82 );
setScaleKey( spep_5-82 + 254, 1, 0.83, 0.83 );
setScaleKey( spep_5-82 + 256, 1, 0.84, 0.84 );
setScaleKey( spep_5-82 + 258, 1, 0.85, 0.85 );
setScaleKey( spep_5-82 + 260, 1, 0.86, 0.86 );
setScaleKey( spep_5-82 + 262, 1, 0.87, 0.87 );
setScaleKey( spep_5-82 + 264, 1, 0.88, 0.88 );
setScaleKey( spep_5-82 + 266, 1, 0.89, 0.89 );
setScaleKey( spep_5-82 + 268, 1, 0.9, 0.9 );
setScaleKey( spep_5-82 + 270, 1, 0.91, 0.91 );
setScaleKey( spep_5-82 + 272, 1, 0.92, 0.92 );
setScaleKey( spep_5-82 + 274, 1, 0.93, 0.93 );
setScaleKey( spep_5-82 + 276, 1, 0.95, 0.95 );
setScaleKey( spep_5-82 + 278, 1, 0.96, 0.96 );

-- 1
setRotateKey( spep_5-82 + 82, 1, 21.5 );
setRotateKey( spep_5-82 + 224, 1, 21.5 );
setRotateKey( spep_5-82 + 226, 1, 21.4 );
setRotateKey( spep_5-82 + 232, 1, 21.4 );
setRotateKey( spep_5-82 + 234, 1, 21.3 );
setRotateKey( spep_5-82 + 252, 1, 21.3 );
setRotateKey( spep_5-82 + 254, 1, 21.4 );
setRotateKey( spep_5-82 + 270, 1, 21.4 );
setRotateKey( spep_5-82 + 272, 1, 21.5 );

--se
playSe( spep_5+16, SE_04); --ゴゴゴ
playSe( spep_5+94, 1022); --なんか打つ

--黒背景
entryFadeBg(spep_5, 0, 200, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_5+92, 0, 2, 8,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_5+192, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_6=spep_5+200;
--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_6,  190011,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_6, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);
setEffShake( spep_6, ctgayn, 60, 10);

playSe(spep_6,SE_09);

entryFade( spep_6+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;
--------------------------------------
--爆発
--------------------------------------
--エフェクト
explosion=entryEffect(spep_7,SP_10x,0x100,-1,0,0,0);

setEffMoveKey( spep_7 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7 + 120, explosion, 0, 0 , 0 );

setEffScaleKey(spep_7,explosion,1.0,1.0);
setEffScaleKey(spep_7+120,explosion,1.0,1.0);

setEffRotateKey(spep_7,explosion,0);
setEffRotateKey(spep_7+120,explosion,0);

setEffAlphaKey(spep_7,explosion,255);
setEffAlphaKey(spep_7+120,explosion,255);


--集中線
shuchusen5 = entryEffectLife( spep_7 ,  906, 120, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_7 + 44, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 248, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 44, shuchusen5, 1.34, 1.9 );
setEffScaleKey( spep_7 + 248, shuchusen5, 1.34, 1.9 );

setEffRotateKey( spep_7 + 44, shuchusen5, 0 );
setEffRotateKey( spep_7 + 248, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 44, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 248, shuchusen5, 255 );

playSe(spep_7,1024);

-- ダメージ表示
dealDamage(spep_7+10);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);


end

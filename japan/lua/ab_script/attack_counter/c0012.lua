--　グレートサイヤマン3号　カウンター
-- sp_effect_b2_00024
print ("[lua]c0012");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01=	153685	;--	ガード
SP_02=	153686	;--	斬る
SP_03=	153687	;--	斬撃エフェクト
SP_04=	153688	;--	フィニッシュ・手前
SP_05=	153689	;--	フィニッシュ・後ろ



setVisibleUI(0, 0);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ガード
------------------------------------------------------
--はじめの準備
spep_0=28;

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(spep_0,1,5000,5000,0);
--エフェクトの再生
guard=entryEffect(spep_0,SP_01,0x100,-1,0,0,0);

setEffMoveKey(spep_0,guard,0,0,0);
setEffMoveKey(spep_0+70,guard,0,0,0);
setEffScaleKey(spep_0,guard,2.1,2.1);
setEffScaleKey(spep_0+70,guard,2.1,2.1);
setEffAlphaKey(spep_0,guard,255);
setEffAlphaKey(spep_0+70,guard,255);
setEffRotateKey(spep_0,guard,0);
setEffRotateKey(spep_0+70,guard,0);

--流線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 68, 0x100, -1, 0, 0, 0.2 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0.2 , 0 );
setEffMoveKey( spep_0 + 68, shuchusen1, 0, 0.2 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.79, 1.79 );
setEffScaleKey( spep_0 + 68, shuchusen1, 1.79, 1.79 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 68, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 68, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- ** エフェクト等 ** --
entryFade(spep_0,0,0,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fad
entryFade(spep_0+60,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fad

playSe( spep_0+0, 1061);

--次の準備
spep_1=spep_0+70;

------------------------------------------------------
-- 斬る
------------------------------------------------------
--エフェクトの再生
cut=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);

setEffMoveKey(spep_1,cut,0,0,0);
setEffMoveKey(spep_1+68,cut,0,0,0);
setEffScaleKey(spep_1,cut,1.0,1.0);
setEffScaleKey(spep_1+68,cut,1.0,1.0);
setEffAlphaKey(spep_1,cut,255);
setEffAlphaKey(spep_1+66,cut,255);
setEffAlphaKey(spep_1+67,cut,255);
setEffAlphaKey(spep_1+68,cut,0);
setEffRotateKey(spep_1,cut,0);
setEffRotateKey(spep_1+68,cut,0);

--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 46, 0x100, -1, 0, 0, 0.2 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0.2 , 0 );
setEffMoveKey( spep_1 + 46, shuchusen2, 0, 0.2 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.79, 1.79 );
setEffScaleKey( spep_1 + 46, shuchusen2, 1.79, 1.79 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 46, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 30, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 32, shuchusen2, 227 );
setEffAlphaKey( spep_1 + 34, shuchusen2, 198 );
setEffAlphaKey( spep_1 + 36, shuchusen2, 170 );
setEffAlphaKey( spep_1 + 38, shuchusen2, 141 );
setEffAlphaKey( spep_1 + 40, shuchusen2, 113 );
setEffAlphaKey( spep_1 + 42, shuchusen2, 85 );
setEffAlphaKey( spep_1 + 44, shuchusen2, 56 );
setEffAlphaKey( spep_1 + 46, shuchusen2, 28 );

--SE
playSe( spep_1+0, 1018);
playSe( spep_1+46, 1032);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+68;




------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
if (_IS_DEAD_ == 1) then

    setDisp( spep_1+66 , 1, 1);
    endPhase(spep_1+68);
    
    else

--エフェクトの再生(前)
finish_f=entryEffect(spep_2,SP_04,0x100,-1,0,0,0);

setEffMoveKey(spep_2,finish_f,0,0,0);
setEffMoveKey(spep_2+112,finish_f,0,0,0);
setEffScaleKey(spep_2,finish_f,1.0,1.0);
setEffScaleKey(spep_2+112,finish_f,1.0,1.0);
setEffAlphaKey(spep_2,finish_f,255);
setEffAlphaKey(spep_2+112,finish_f,255);
setEffRotateKey(spep_2,finish_f,0);
setEffRotateKey(spep_2+112,finish_f,0);

--エフェクトの再生
finish_b=entryEffect(spep_2,SP_05,0x80,-1,0,0,0);

setEffMoveKey(spep_2,finish_b,0,0,0);
setEffMoveKey(spep_2+112,finish_b,0,0,0);
setEffScaleKey(spep_2,finish_b,1.0,1.0);
setEffScaleKey(spep_2+112,finish_b,1.0,1.0);
setEffAlphaKey(spep_2,finish_b,255);
setEffAlphaKey(spep_2+112,finish_b,255);
setEffRotateKey(spep_2,finish_b,0);
setEffRotateKey(spep_2+112,finish_b,0);

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
changeAnime( spep_2  + 0, 1, 107 );

setMoveKey( spep_2  + 0, 1, 0, 0 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -50, -280 , 0 );
setMoveKey( spep_2  + 112, 1, -50, -280 , 0 );



setScaleKey( spep_2  + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_2 -3 + 2, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 6, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 16, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 20, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 22, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 24, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 26, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_2  + 112, 1, 1.18, 1.18 );

setRotateKey( spep_2  + 0, 1, 0 );
--setRotateKey( spep_2 -3 + 2, 1, 105 );
setRotateKey( spep_2 -3 + 4, 1, 240 );
setRotateKey( spep_2 -3 + 6, 1, 405 );
setRotateKey( spep_2 -3 + 8, 1, 600 );
setRotateKey( spep_2 -3 + 10, 1, 825 );
setRotateKey( spep_2 -3 + 12, 1, 1080 );
setRotateKey( spep_2  + 112, 1, 1080 );

--文字エントリー
ctga = entryEffectLife( spep_2 -3 + 14,  10005, 98 +3, 0x100, -1, 0, 3.9, 342.6 );--ガッ

setEffMoveKey( spep_2 -3 + 14, ctga, 3.9, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctga, 4, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctga, 3.9, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctga, 4, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctga, 3.9, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctga, 4, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctga, 3.9, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctga, 4, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctga, 3.9, 342.6 , 0 );
setEffMoveKey( spep_2  + 112, ctga, 3.9, 342.6 , 0 );

a=1.4;

setEffScaleKey( spep_2 -3 + 14, ctga, 2.2 + a, 2 + a );
setEffScaleKey( spep_2  + 112, ctga, 2.2 + a, 2 + a );

setEffRotateKey( spep_2 -3 + 14, ctga, -30.9 );
setEffRotateKey( spep_2 -3 + 16, ctga, -28.9 );
setEffRotateKey( spep_2 -3 + 18, ctga, -30.9 );
setEffRotateKey( spep_2 -3 + 20, ctga, -28.9 );
setEffRotateKey( spep_2 -3 + 22, ctga, -30.9 );
setEffRotateKey( spep_2 -3 + 24, ctga, -28.9 );
setEffRotateKey( spep_2 -3 + 26, ctga, -30.9 );
setEffRotateKey( spep_2 -3 + 28, ctga, -28.9 );
setEffRotateKey( spep_2 -3 + 30, ctga, -30.9 );
setEffRotateKey( spep_2  + 112, ctga, -30.9 );

--SE
playSe( spep_2+0, 1011);
playSe( spep_2+12, 1054);

-- ダメージ表示
dealDamage( spep_2+12);

entryFade( spep_2+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_2+110);


end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = 110; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    
        if (_IS_PLAYER_SIDE_ == 1) then
    
            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    
        else
    
            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
    
        end
    
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    setMoveKey(  SP_dodge+5, 0, -750,  70,   -30);-- 中央位置から
    setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
    --setDisp( SP_dodge+5, 0, 0);
    
    endPhase(SP_dodge+10);
    do return end
    else end
    
    print ("[lua]sp0012 end");

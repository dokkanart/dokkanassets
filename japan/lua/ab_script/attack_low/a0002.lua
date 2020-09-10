print ("[lua]exec a0003");

ATK_01 = 0;

----------------------------------------------
---会心の場合
----------------------------------------------

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 30, 10, 10, 10, 10, 180);          -- ベース暗め　背景
--shuchusen = entryEffectLife( 30+ATK_01, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 25+ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( 35+ATK_01, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


    setDrawFront( ATK_01, 1, 1);
    setMoveKey(   ATK_01,   0, -300,  0,    50);     -- 中間
    
    playSe(  ATK_01,1019);--SE
    setMoveKey(  10+ATK_01,   0, -100,150,    90);    

    setLastPosKey(ATK_01, 1);
    -- setMoveKey(  ATK_01,   1,  300,   0,    0);
    setMoveKey(  20+ATK_01 ,  1, -100,-100,  -60);


    --setEnvZoomEnable(0, 1);     -- ズーム許可
    
    changeAnime( ATK_01, 0, 1);  -- 右上向き
    changeAnime( ATK_01, 1, 18);  -- 左下向き
    changeAnime( ATK_01+10, 0, 100);  -- 左下向き
    changeAnime( ATK_01+8, 1, 2);  -- 左下向き

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 20; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, 250,200,   100);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

    setMoveKey(  25+ATK_01,   0,  250,200,   100);     -- 奥
    setMoveKey( 35+ATK_01,   0,  90, 80,    0);
    setMoveKey( 45+ATK_01,   0,  200, 150,   80);

    setMoveKey(  28+ATK_01,  1, -250,-200, -128);     --画面左下へ
    setMoveKey(  30+ATK_01, 1, -500,-400, -128);
    setMoveKey( 35+ATK_01,  1,  0,   0,    -30);     -- 激突
    --setMoveKey( 40+ATK_01,  1, -200,  -100, -50);     -- 吹っ飛び中
    --setMoveKey( 45+ATK_01,  1, -900,  -200, -128);     -- 吹っ飛び中

    entryEffect( 25+ATK_01,  908,  0x80,  0,  0,  0,  0);--波紋
    changeAnime( 25+ATK_01, 0,  16); -- タックル
    --changeAnime( 25+ATK_01, 1,  18);  -- 右上向き

    -----------------------------------------------------
    kame_flag = 0x00;
    if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
    -----------------------
    
    --entryEffectLife( 36+ATK_01, 906, 25, 0x00,  -1, 0,  0,  0);   -- 集中線
    entryEffect(  36+ATK_01,  908,  0,  -1,  0,  0,  0);--はもん
    changeAnime( 35+ATK_01, 1,  2); -- ダメ
    changeAnime( 38+ATK_01, 0,  117); -- ダメ後のかまえ
    
        -----------------------------------------------------
        kame_flag = 0x00;
        if (_IS_DEAD_ == 1) then
        -----------------------
        entryEffect(  35+ATK_01,  4,  0x80,  1,  0,  20,  -20);
        setMoveKey( 40+ATK_01,  1, -20,  -30, -128);     -- 吹っ飛び中
        else
        end
    
    setQuake( 36+ATK_01,5, 12);
    pauseChara(  36+ATK_01,  5);
    setDamage(  36+ATK_01,  1,  0);--ダメージ振動等
    geff = entryEffect( 35+ATK_01,  23,  0x80,  1,  0,  0,  0);--HIT
    setEffScaleKey( 35+ATK_01, geff, 2,1.1);
    setEffRotateKey( 35+ATK_01, geff, 180);
    playSe( 35+ATK_01,1009);--SE
    
    
    dealDamage(36+5+ATK_01);
    
    
    ----------------------------
    else
    setMoveKey( 40+ATK_01,  1, -200,  -100, -50);     -- 吹っ飛び中
    entryEffectLife( 36+ATK_01, 906, 25, 0x00,  -1, 0,  0,  0);   -- 集中線
    entryEffect(  36+ATK_01,  908,  0,  -1,  0,  0,  0);--はもん
    changeAnime( 35+ATK_01, 1,  7); -- ダメ
    changeAnime( 38+ATK_01, 0,  117); -- ダメ後のかまえ
    
    setQuake( 36+ATK_01,5, 12);
    pauseChara(  36+ATK_01,  5);
    setDamage(  36+ATK_01,  1,  0);--ダメージ振動等
    entryEffect( 35+ATK_01,  4,  0,  1,  0,  0,  0);--HIT
    playSe( 35+ATK_01,1009);--SE
    dealDamage(35+5+ATK_01);
    
    
    end
    --------------------------------
    --------------------------------死亡
    kame_flag = 0x00;
    
    if (_IS_DEAD_ == 1) then
        -- 死亡フェーズ (sys0002 / sys0003)
    
    ATK_dead = 35+5+ATK_01;
    	
            entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
       endPhase( ATK_dead+6);
       
    else
    
       -----------------------------------------------------
        kame_flag = 0x00;
        if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
        -----------------------
    
        setMoveKey( 45+ATK_01,  1, -230,  -200, -128);     -- 吹っ飛び中
    
       setMoveKey( 55+ATK_01,  1, -230,  -200, -128);     -- 吹っ飛び中
       setMoveKey( 56+ATK_01,  1, 1100,  0, 0);     -- 吹っ飛び中
      entryEffect( 50+ATK_01, 700, 0x00,  1, 0,    0,  0);
       playSe( 51+ATK_01,43);--SE
      setDisp(55, 1, 0);
      --setDisp(64, 1, 1);
       else
        
      setScaleKey( 34+ATK_01,   1, 1.0, 1.0 );
      setScaleKey( 35+ATK_01,   1, 0.5, 0.5 );
    --setScaleKey( 40+ATK_01,   1, 2.0, 2.0 );
    setScaleKey( 43+ATK_01,   1, 1, 1 );
    setDamage( 45+ATK_01, 1, 2 );  -- ダメージ
    setMoveKey( 45+ATK_01,  1, -900,  -200, -128);     -- 吹っ飛び中
    
    setMoveKey( 60+ATK_01,  1, -900,  -200, -128);     -- 吹っ飛び中
    setMoveKey( 61+ATK_01,  1, 1200,  0, 0);     -- 吹っ飛び中
    
    end
    
    endPhase(65+ATK_01);
    end




    print ("[lua]exec a0003");


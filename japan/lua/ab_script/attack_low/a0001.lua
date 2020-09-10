print ("[lua]exec a001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

----------------------------------------------
---会心の場合
----------------------------------------------

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 40, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 25, 906, 40, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 25, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( 53, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


    -- ズーム許可
    setEnvZoomEnable(0, 1);

    -- 味方登場
    --                f  eid,life, attr, tgt, tag,  x, y
    --entryEffectLife(  0, 907,  28,   64,    0,   0,  0,  0);
    changeAnime(  0,   0,  3);               -- モーション（ダッシュ）
    playSe( 0,1018);--ダッシュSE
    setMoveKey(   0,   0, -700,  0,   -128);   -- 画面外
    setMoveKey(  10,   0, -200,  0,   -128);   -- 中央に近づく
    changeAnime( 23,   0,  1);               -- モーション(立ち)
    setMoveKey(  25,   0, -80,  0,   0);      -- 画面中央 ＆ 元サイズ

    -- 敵登場
    --changeAnime(  0,   1,  103);               -- モーション（ダッシュ）
    setLastPosKey( 0, 1);
    setLastPosKey( 10, 1);
    -- setMoveKey(   0,   1,  800,  0,   0);      -- 画面外
    -- setMoveKey(  10,   1,  800,  0,   0);      --
    changeAnime( 0,   1,    101);               -- モーション(立ち)
    setMoveKey(  20,   1,  50,  0,   0);      -- 画面中央
    -------------------------------------------------------
    setEnvZoomEnable(25, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
setEffScaleKey( SP_dodge-12, speff, 1.0, 1.0);


kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

	if (_IS_PLAYER_SIDE_ == 1) then

		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

	else

		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

	end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5, 0, 30,  0,   0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


    -----------------------------------------------------
    kame_flag = 0x00;
    if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
        -- 攻撃
        entryFadeBg( 37, 5, 10, 5, 0,  0,  0, 100);

        setMoveKey(  37, 0, 30,  0,   0);-- 中央位置から
        setMoveKey(  37, 1, 150,  0,   0);-- 中央位置から
        changeAnime( 36,   0, 11);-- パンチ3
        setShake( 36, 10, 20);
     SE1 = playSe( 35,1003);--SE
        setSeVolume( 35, 1003, 70 );
     SE2 =  playSe( 36,1001);--SE
        setSeVolume( 36, 1001, 70 );
        entryEffect(  36,   23,   0,  1,   0,  -100,  0);
        changeAnime( 36,  1,   104);-- モーション
	
    else
        -- 攻撃 (ガード)
        entryFadeBg( 37, 5, 10, 5, 0,  0,  0, 100);

        setMoveKey(  37, 0, 30,  0,   0);-- 中央位置から
        setMoveKey(  37, 1, 170,  0,   0);-- 中央位置から
        changeAnime( 35,   0, 11);-- パンチ3
     SE1 =   playSe( 35,1003);--SE
        setSeVolume( 35, 1003, 70 );
     SE2 =   playSe( 37,1009);--SE
        setSeVolume( 37, 1009, 70 );

        entryEffect(  36,   1,   0,  1,   0,  0,  0);
        changeAnime( 37,  1,   106);-- モーション
        setDamage( 38, 1, 0);  -- ダメージ振動等
    end



    setMoveKey( 41, 0, 20,  0,   0);-- 中央位置から
    setMoveKey( 41, 1, 120,  0,   0);-- 中央位置から
    changeAnime( 40,   0, 9);--
    SE3=playSe( 40,1009);--SE
    setSeVolume( 40, 1009, 70 );
    stopSe( 40, SE1, 4 );

    entryEffect(  40,   2,   0,  1,  -20,  0,  0);
    setDamage( 42, 1, 0);  -- ダメージ振動等

    --entryFlashBg( 46, 1, 255,  255,  255);

    setMoveKey( 46, 0, -50,  0,   0);-- 中央位置から
    setMoveKey( 46, 1, 60,  0,   0);-- 中央位置から
    changeAnime( 45,   0, 11);-- パンチ3
    SE4=playSe( 46,1009);--SE
    setSeVolume( 46, 1009, 70 );
    stopSe( 46, SE2, 4 );
    entryEffect(  45,   1,   0,  1,   0,  0,  0);
    setDamage( 46, 1, 0);  -- ダメージ振動等

    setEnvZoomEnable(50, 1);
    setMoveKey( 50, 0, 0,  0,   0);-- 中央位置から
    setMoveKey( 50, 1, 110,  0,   0);-- 中央位置から
    changeAnime( 49,   0, 10);-- パンチ2
    SE5=playSe( 49,1003);--SE
    setSeVolume( 49, 1003, 70 );
    stopSe( 49, SE3, 4 );
    SE6=playSe( 50,1009);--SE
    setSeVolume( 50, 1009, 70 );
    stopSe( 50, SE4, 4 );
    entryEffect(  49,   2,   1,  0,   0,  0,  0);
    setDamage( 50, 1, 0);-- ダメージ振動等
    setMoveKey( 50, 0, -80,  0,   0);-- 中央位置から
    setMoveKey( 50, 1, 60,  0,   0);-- 中央位置から

    setMoveKey( 53, 0, -50,  0,   0);-- 中央位置から
    setMoveKey( 53, 1, 60,  0,   0);-- 中央位置から
    changeAnime( 53,   0, 14);-- キック3


    -----------------------------------------------------
    kame_flag = 0x00;
    if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
    -----------------------
     SE3 =   playSe( 55,1003);--SE
        setSeVolume( 55, 1003, 70 );
     SE4 =  playSe( 55,1009);--SE
        setSeVolume( 55, 1009, 70 );
        entryEffect(  55,   906,   0,  1,   0,  0,  0);
        entryEffect(  56,   23,   0x40,  1,  0,  -100,  0);
        setQuake( 56, 7, 18);
        pauseChara( 56, 5);
        dealDamage( 56);
        --popPowerBall( 56);
        setDamage( 57, 1, 0);  -- ダメージ振動

        entryEffectLife(  37, 913,  60,   0x80,     -1,  0,  0,  0);
        changeAnime(  57, 1,  104);  -- 吹っ飛び
        setMoveKey(   60, 1, 110,  0,   0);      -- 中央位置から
        setMoveKey( 60, 0, -100,  0,   0);-- 中央位置から

        startBgScroll(60, 7, 18);
        stopBgScroll(100, 8);
    ----------------------------
    else
        playSe( 53,1009);--SE
        setSeVolume( 53, 1009, 70 );
        stopSe( 53, SE2, 4 );
        entryEffect(  55,   906,   0,  1,   0,  0,  0);
        entryEffect(  56,   3,   0,  1,   0,  0,  0);
        setQuake( 56, 15, 10);
        pauseChara( 56, 5);
        dealDamage( 56);
        --popPowerBall( 56);
        setDamage( 57, 1, 0);  -- ダメージ振動

        entryEffectLife(  37, 913,  60,   0x80,     -1,  0,  0,  0);
        changeAnime(  57, 1,  108);  -- 吹っ飛び
        setMoveKey(   60, 1, 110,  0,   0);      -- 中央位置から
        setMoveKey( 60, 0, -100,  0,   0);-- 中央位置から

        startBgScroll( 10, 7, 32);
        stopBgScroll(100, 8);
    end

    --------------------------------
    kame_flag = 0x00;

    if (_IS_DEAD_ == 1) then
        -- 死亡フェーズ (sys0002 / sys0003)
        entryFade( 57, 2, 4, 5, 119,3,16,0);
        endPhase(59);
    else
    -- 受け------------------------------------------
    -- 味方移動（画面外へ)
    setMoveKey(   68, 0, -700,  0,   0);      -- 画面外へ
    setDisp( 68, 0, 0);--味方を非表示20170607
    --setMoveKey( 72, 1, 250,  0,   0);      -- 敵を若干後退

    setMoveKey(  72, 1, 250,  0,   0);      -- 吹っ飛び中
    changeAnime( 80, 1, 104);   
    changeAnime( 85, 1, 101);    			-- モーション(立ち)
    setMoveKey(  90, 1, 100,  0,   0);      -- 敵画面中央へゆっくり戻す

    endPhase(100);
    end



print ("[lua]exec a001");

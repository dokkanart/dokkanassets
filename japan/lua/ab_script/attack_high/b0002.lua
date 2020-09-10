print ("[lua]exec a0012");


ATK_01 = 12;
ATK_02 = ATK_01+46;
ATK_03 = ATK_02+33;
ATK_end = ATK_03+30;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 25; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, -600,  0,  -50);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 89, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 79, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_02+29, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

        ----------------------------------------------
        --パンチの応手鵜
        setEnvZoomEnable( ATK_01,1);--ズーム
        -------------------------------------------
        --アタック
        -------------------------------------------
        
        setDrawFront( ATK_01, 1, 0);
        
        -----------------------------------------------------
        kame_flag = 0x00;
        if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
        -----------------------
        entryEffectLife( ATK_01, 914, 85, 0x80,  -1,  0,  0,  0);--移動線
        
        --P移動
        setMoveKey(  ATK_01,  0,  -600,  100, 0);
        setMoveKey(  ATK_01+1,  0,  -600,  0,  -50);--位置
        changeAnime(  ATK_01+18,  0,  12);--キック１
        --攻撃に向かう
        setMoveKey(  ATK_01+18,  0,  -600,  0,  -50);
        setMoveKey(  ATK_01+21,  0,  -130,  0,  -50);--位置
        
        --E移動
        changeAnime(  ATK_01,   1,   101);--ふっとばされ
        setLastPosKey( ATK_01, 1);
        -- setMoveKey(  ATK_01,    1,  -660,  -200, -50);
        -- setMoveKey(  ATK_01+1,  1,  -200,  0,    -50);--位置
        -- setMoveKey(  ATK_01+5,  1,   130,  0,    -50);
        setMoveKey(  ATK_01+15, 1,     0,  0,    -50);
        --ヒット時移動
        setMoveKey(  ATK_01+21,  1,  0,  0,  -50);--位置
        setMoveKey(  ATK_01+22,  1,  15,  0,  -50);--位置
        
        --ダメージ
        entryEffect( ATK_01+21,  23,  0x40,  1,  0,  -100, 0);--HIT
        playSe( ATK_01+21,1010);--SE
        entryEffect( ATK_01+21,  908,  0,  1,  0,  0,  0);
        entryEffect( ATK_01+21,  906,  0,  -1,  0,  0, 0);
        
        
        --Eやられ
        changeAnime( ATK_01+22,  1,  104);--ダメージ
        
        pauseChara(  ATK_01+22,  3);--硬直
        
        setBgScroll(ATK_01+26,30);
        
        changeAnime(  ATK_01+26,  0,  0);--P 待機
        --Eふっ飛ばされ
        setMoveKey(  ATK_01+26,  1,  15,  0,  -50);
        setMoveKey(  ATK_01+35,  1,  350,  0,  -50);--画面外へ
        
        changeAnime(  ATK_01+36,  0,  3);--P 待機
        setMoveKey(  ATK_01+37,  0,  -120,  0, -50);
        setMoveKey(  ATK_02,  0,  250,  0,  0);    --画面外へ
        
        changeAnime(  ATK_02,  0,  13);--パンチ
        -------------------
        --追撃
        -------------------
        setMoveKey(  ATK_02+10,  0,  50,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+10,  1,  220,  0,  0);--画面外へ
        
        
        
        entryEffect(  ATK_02+1,  23,  0x40,  1,  0, -100,   0);
        SE1=playSe(ATK_02+1,1003);
        --entryEffect(  ATK_02+1,  908,  1,  1,  0,  0,  0);
        --entryKakimoji(  ATK_11+5,  19,  4,  1,  -1,  -25,  -250);--どん
        setDamage(  ATK_02+1,  1,  0);--ダメージ振動等
        
        
        changeAnime(  ATK_02+4,  0,  9);--パンチ
        --entryEffect(  ATK_02+4,  23,  0x40,  1,  0, -100,   0);
        SE2=playSe(ATK_02+4,1003);
        --entryEffect(  ATK_02+4,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+4,  1,  0);--ダメージ振動等
        
        
        changeAnime(  ATK_02+7,  0,  12);--パンチ
        --entryEffect(  ATK_02+7,  23,  0x40,  1,  0, -100,   0);
        SE3=playSe(ATK_02+7,1004);
        stopSe( ATK_02+7, SE1, 4 );
        --entryFlashBg( ATK_02+7,  1,  0,  0,  0);
        --entryEffect(  ATK_02+7,  906,  1,  -1,  0,  0,  0);
        --entryEffect(  ATK_02+7,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+7,  1,  0);--ダメージ振動等
        
        
        changeAnime(  ATK_02+10,  0,  10);--パンチ
        entryEffect(  ATK_02+10,  23,  0x40,  1,  0, -100,   0);
        SE4=playSe(ATK_02+10,1003);
        stopSe( ATK_02+10, SE2, 4 );
        --entryEffect(  ATK_02+10,  906,  1,  -1,  0,  0,  0);
        --entryEffect(  ATK_02+10,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+10,  1,  0);--ダメージ振動等
        
        
        setMoveKey(  ATK_02+10,  0,  120,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+10,  1,  220,  0,  0);--画面外へ
        setMoveKey(  ATK_02+13,  0,  50,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+13,  1,  150,  0,  0);--画面外へ
        
        changeAnime(  ATK_02+12,  0,  9);--パンチ
        
        --entryEffect(  ATK_02+12,  23,  0x40,   1,  0, -100,   0);
        SE5=playSe(ATK_02+12,1003);
        stopSe( ATK_02+12, SE3, 4 );
        --entryEffect(  ATK_02+12,  906,  1,  -1,  0,  0,  0);
        --entryEffect(  ATK_02+12,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+12,  1,  0);--ダメージ振動等
        
        
        changeAnime(  ATK_02+14,  0,  12);--パンチ
        --entryEffect(  ATK_02+14,  23,  0x40,   1,  0, -100,   0);
        SE6=playSe(ATK_02+14,1004);
        stopSe( ATK_02+12, SE4, 4 );
        --entryEffect(  ATK_02+14,  906,  1,  -1,  0,  0,  0);
        --entryEffect(  ATK_02+14,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+14,  1,  0);--ダメージ振動等
        
        
        setMoveKey(  ATK_02+18,  0,  50,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+18,  1,  150,  0,  0);--画面外へ
        setMoveKey(  ATK_02+21,  0,  -50,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+21,  1,  50,  0,  0);--画面外へ
        
        changeAnime(  ATK_02+18,  0,  13);--パンチ
        entryEffect(  ATK_02+18,  23,  0x40,  1,  0, -100,   0);
        SE7=playSe(ATK_02+18,1004);
        stopSe( ATK_02+18, SE5, 4 );
        --entryFlashBg( ATK_02+18,  1,  0,  0,  0);
        --entryEffect(  ATK_02+18,  906,  1,  -1,  0,  0,  0);
        --entryEffect(  ATK_02+18,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+18,  1,  0);--ダメージ振動等
        
        
        changeAnime(  ATK_02+20,  0,  10);--パンチ
        --entryEffect(  ATK_02+20,  23,  0x40,  1,  0, -100,   0);
        SE8=playSe(ATK_02+20,1003);
        stopSe( ATK_02+20, SE6, 4 );
        --entryEffect(  ATK_02+20,  906,  1,  -1,  0,  0,  0);
        --entryEffect(  ATK_02+20,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+20,  1,  0);--ダメージ振動等
        
        setMoveKey(  ATK_02+23,  0,  -120,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+23,  1,  20,  0,  0);--画面外へ
        changeAnime(  ATK_02+24,  0,  9);--パンチ
        entryEffect(  ATK_02+24,  23,  0x40,  1,  0, -100,   0);
        SE9=playSe(ATK_02+24,1003);
        stopSe( ATK_02+24, SE7, 4 );
        --entryEffect(  ATK_02+24,  906,  1,  -1,  0,  0,  0);
        --entryEffect(  ATK_02+24,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+24,  1,  0);--ダメージ振動等
        
        changeAnime(  ATK_02+29,  0,  13);--パンチ
        playSe(ATK_02+29,1010);
        stopSe( ATK_02+29, SE8, 4 );

        setMoveKey(  ATK_02+26,  0,  -120,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+26,  1,  20,  0,  0);--画面外へ
        setMoveKey(  ATK_02+29,  0,  -80,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+29,  1,  60,  0,  0);--画面外へ
        
        dealDamage(  ATK_02+28);
        playSe(ATK_02+28,1007);
        stopSe( ATK_02+28, SE9, 4 );
        entryEffect(  ATK_02+29,  23,  0x40,   1,  0, -100,   0);
        entryEffect(  ATK_02+30,  906,  0,  -1,  0,  0,  0);
        entryEffect(  ATK_02+30,  908,  0,  1,  0,  0,  0);
        changeAnime(  ATK_02+30,  1,  104);--モーション
        
        ------------------
        else
        entryEffectLife( ATK_01, 914, 120, 0x80,  -1,  0,  0,  0);--移動線
        
        --P移動
        setMoveKey(  ATK_01,  0,  -600,  100, 0);
        setMoveKey(  ATK_01+1,  0,  -600,  0,  -50);--位置
        
        --E移動
        changeAnime(  ATK_01,   1,   104);--ふっとばされ
        setLastPosKey( ATK_01, 1);
        -- setMoveKey(  ATK_01,    1,  -660,  -200, -50);
        setMoveKey(  ATK_01+1,  1,  -200,  0,    -50);--位置
        setMoveKey(  ATK_01+5,  1,   130,  0,    -50);
        

        setMoveKey(  ATK_01+15, 1,     0,  0,    -50);

        changeAnime(  ATK_01+18,  0,  12);--キック１
        --攻撃に向かう
        setMoveKey(  ATK_01+18,  0,  -600,  0,  -50);
        setMoveKey(  ATK_01+21,  0,  -130,  0,  -50);--位置

        --ヒット時移動
        setMoveKey(  ATK_01+21,  1,  0,  0,  -50);--位置
        setMoveKey(  ATK_01+22,  1,  15,  0,  -50);--位置
        
        --ダメージ
        entryEffect( ATK_01+21,  1,  0,  1,  0,  0, 0);--HIT
        SE1=playSe( ATK_01+21,1001);--SE
        entryEffect( ATK_01+21,  908,  0,  1,  0,  0,  0);
        entryEffect( ATK_01+21,  906,  0,  -1,  0,  0, 0);
        
        --文字
        entryKakimoji(  ATK_01+21,  20,  4,  1,  -1,  -20,  -240);--baki
        --Eやられ
        changeAnime( ATK_01+22,  1,  108);--ダメージ
        setDamage(  ATK_01+22,  1,  0);--ダメージ振動等
        pauseChara(  ATK_01+22,  3);--硬直
        
        setBgScroll(ATK_01+26,30);
        
        changeAnime(  ATK_01+26,  0,  0);--P 待機
        --Eふっ飛ばされ
        setMoveKey(  ATK_01+26,  1,  15,  0,  -50);
        setMoveKey(  ATK_01+35,  1,  600,  0,  -50);--画面外へ
        
        changeAnime(  ATK_01+36,  0,  3);--P 待機
        setMoveKey(  ATK_01+37,  0,  -120,  0, -50);
        setMoveKey(  ATK_01+40,  0,  800,  0,  0);    --画面外へ
        
        
        setMoveKey(  ATK_01+45,  0,  800,  0,  0);    --画面外へ
        setMoveKey(  ATK_01+46,  0,  600,  0,  0);    --画面外へ
        
        setMoveKey(  ATK_01+45,  1,  500,  0,  0);--画面外へ
        setMoveKey(  ATK_01+46,  1,  600,  0,  0);--画面外へ
        -------------------
        --追撃
        -------------------
        setMoveKey(  ATK_02+10,  0,  120,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+10,  1,  220,  0,  0);--画面外へ
        
        
        changeAnime(  ATK_02,  0,  13);--パンチ
        entryEffect(  ATK_02+1,  1,  1,  1,  -15,  0,  0);
        SE2=playSe(ATK_02+1,1001);
        entryEffect(  ATK_02+1,  908,  1,  1,  0,  0,  0);
        --entryKakimoji(  ATK_11+5,  19,  4,  1,  -1,  -25,  -250);--どん
        setDamage(  ATK_02+1,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+1,  1,  105);--モーション
        
        changeAnime(  ATK_02+4,  0,  9);--パンチ
        entryEffect(  ATK_02+4,  1,  0,  1,  0,  -5,  0);
        SE3=playSe(ATK_02+4,1000);
        stopSe( ATK_02+4, SE1, 4 );
        
        entryEffect(  ATK_02+4,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+4,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+4,  1,  108);--モーション
        
        changeAnime(  ATK_02+7,  0,  12);--パンチ
        entryEffect(  ATK_02+7,  2,  1,  1,  -15,  -10,  0);
        SE4=playSe(ATK_02+7,1001);
        stopSe( ATK_02+7, SE2, 4 );
        --entryFlashBg( ATK_02+7,  1,  0,  0,  0);
        entryEffect(  ATK_02+7,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_02+7,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+7,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+7,  1,  105);--モーション
        
        changeAnime(  ATK_02+10,  0,  10);--パンチ
        entryEffect(  ATK_02+10,  1,  0,  1,  0,  0,  0);
        SE5=playSe(ATK_02+10,1000);
        stopSe( ATK_02+10, SE3, 4 );
        entryEffect(  ATK_02+10,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_02+10,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+10,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+10,  1,  108);--モーション
        
        setMoveKey(  ATK_02+10,  0,  120,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+10,  1,  220,  0,  0);--画面外へ
        setMoveKey(  ATK_02+13,  0,  50,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+13,  1,  150,  0,  0);--画面外へ
        
        changeAnime(  ATK_02+12,  0,  9);--パンチ
        
        entryEffect(  ATK_02+12,  2,  0,  1,  5,  -10,  0);
        SE6=playSe(ATK_02+12,1000);
        stopSe( ATK_02+12, SE4, 4 );
        entryEffect(  ATK_02+12,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_02+12,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+12,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+12,  1,  105);--モーション
        
        
        changeAnime(  ATK_02+14,  0,  12);--パンチ
        entryEffect(  ATK_02+14,  3,  0,  1,  -10,  10,  0);
        SE7=playSe(ATK_02+14,1001);
        stopSe( ATK_02+14, SE5, 4 );
        entryEffect(  ATK_02+14,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_02+14,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+14,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+14,  1,  106);--モーション
        
        
        setMoveKey(  ATK_02+18,  0,  50,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+18,  1,  150,  0,  0);--画面外へ
        setMoveKey(  ATK_02+21,  0,  -50,  0,  0);    --画面外へ
        setMoveKey(  ATK_02+21,  1,  50,  0,  0);--画面外へ
        
        changeAnime(  ATK_02+18,  0,  13);--パンチ
        entryEffect(  ATK_02+18,  1,  0,  1,  0,  0,  0);
        SE8=playSe(ATK_02+18,1001);
        stopSe( ATK_02+18, SE6, 4 );
        --entryFlashBg( ATK_02+18,  1,  0,  0,  0);
        entryEffect(  ATK_02+18,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_02+18,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+18,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+18,  1,  105);--モーション
        
        
        changeAnime(  ATK_02+20,  0,  10);--パンチ
        entryEffect(  ATK_02+20,  2,  0,  1,  -10,  5,  0);
        SE9=playSe(ATK_02+20,1000);
        stopSe( ATK_02+20, SE7, 4 );
        entryEffect(  ATK_02+20,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_02+20,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+20,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+20,  1,  108);--モーション
        
        changeAnime(  ATK_02+24,  0,  9);--パンチ
        entryEffect(  ATK_02+24,  1,  0,  1,  10,  -10,  0);
        playSe(ATK_02+24,1000);
        stopSe( ATK_02+24, SE8, 4 );
        entryEffect(  ATK_02+24,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_02+24,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+24,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+24,  1,  105);--モーション
        
        changeAnime(  ATK_02+29,  0,  13);--キック
        playSe(ATK_02+29,1010);
        stopSe( ATK_02+29, SE9, 4 );
        setShake(  ATK_02+29,  8,  21);
        dealDamage(  ATK_02+29);
        entryEffect(  ATK_02+29,  3,  1,  1,  0,  0,  0);
        entryEffect(  ATK_02+30,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_02+30,  908,  1,  1,  0,  0,  0);
        setDamage(  ATK_02+30,  1,  0);--ダメージ振動等
        changeAnime(  ATK_02+30,  1,  108);--モーション
        
        end
        -----------------------------
        --------------------------------死亡
        kame_flag = 0x00;
        
        if (_IS_DEAD_ == 1) then
            -- 死亡フェーズ (sys0002 / sys0003)
        
        ATK_dead = ATK_02+30;
        	
                entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
           endPhase( ATK_dead+6);
           
        else
                -----------------------------------------------------
                kame_flag = 0x00;
                if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
                -----------------------
                
                stopBgScroll ( ATK_02+30, -16);
                
                setMoveKey(  ATK_02+30,  0,  -50,  0,  0);    --画面外へ
                setMoveKey(  ATK_02+30,  1,  50,  0,  0);--画面外へ
                setMoveKey(  ATK_02+35,  0,  -140,  0,  0);    --画面外へ
                setMoveKey(  ATK_02+33,  1,  150,  0,  0);--画面外へ
                ------------------------
                setEnvZoomEnable(  ATK_03,  0);
                setMoveKey(  ATK_03,  0,  -25,  0,  0);--P 中央に近づく
                setMoveKey(  ATK_03+13, 0,  -800,  120,  -50);
                setMoveKey(  ATK_03+14, 0,  -700,  0,  0);
                
                setMoveKey(  ATK_03,     1,  150,  0,  0);--E 中央に近づく
                setMoveKey(  ATK_03+15,  1,  280,  20,  0);
                
                setMoveKey(  ATK_03+20,  1,  290,  60,  0);
                entryEffect(  ATK_03+20,  700,  0,  0,  0,  0,  0);
                setDisp ( ATK_03+23, 0, 0);
                setDisp ( ATK_03+24, 0, 1);
                setDisp ( ATK_03+26, 0,0);
                stopBgScroll ( ATK_03+25, 1);
                changeAnime(  ATK_03+25,  1,  101);
                
                endPhase(  ATK_end+5);
                
                else
                ------------
                
                stopBgScroll ( ATK_02+30, -16);
                
                setMoveKey(  ATK_02+30,  0,  -50,  0,  0);    --画面外へ
                setMoveKey(  ATK_02+30,  1,  50,  0,  0);--画面外へ
                setMoveKey(  ATK_02+35,  0,  -140,  0,  0);    --画面外へ
                --setMoveKey(  ATK_02+33,  1,  280,  -120,  0);--画面外へ
                ------------------------
                setEnvZoomEnable(  ATK_03,  0);
                setMoveKey(  ATK_03,  0,  -25,  0,  0);--P 中央に近づく
                setMoveKey(  ATK_03+13, 0,  -800,  120,  -50);
                setMoveKey(  ATK_03+14, 0,  -700,  0,  0);
                
                setMoveKey(  ATK_03,     1,  50,  20,  0);--E 中央に近づく
                setMoveKey(  ATK_03+15,  1,  280,  -150,  66);
                
                entryEffect(  ATK_03+20,  700,  0,  0,  0,  0,  0);
                setDisp ( ATK_03+23, 0, 0);
                setDisp ( ATK_03+24, 0, 1);
                setDisp ( ATK_03+26, 0,0);
                stopBgScroll ( ATK_03+28, 1);
                changeAnime(  ATK_03+25,  1,  117);
                
                setMoveKey(  ATK_03+28,  1,  250,  -120,  66);
                setMoveKey(  ATK_03+30,  1,  230,  -100,  44);
                
                
                endPhase(  ATK_end+15);
                end
        end


print ("[lua]exec a0012");

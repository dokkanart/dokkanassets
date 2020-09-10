print(  "[lua]execa001");


rn_02 = 0;

ATK_01 = 25;--205
ATK_02 = ATK_01+3;--211
ATK_03 = ATK_02+4;--218
ATK_04 = ATK_03+4;--228
ATK_05 = ATK_04+5;--236
ATK_06 = ATK_05+10;--250
ATK_07 = ATK_06+3;--256
ATK_08 = ATK_07+4;--262
ATK_09 = ATK_08+4;--268
ATK_10 = ATK_09+12;--274
ATK_11 = ATK_10+23;--274
ATK_end = ATK_11+48;
B_01=10

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 127, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_11+33+B_01, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト


else

end

        --setEnvZoomEnable(  rn_02,  1);
        changeAnime(  rn_02,  0,  3);
        changeAnime(  rn_02,  1,  117);
        setLastPosKey( rn_02, 1);
        setMoveKey(  rn_02,  0,  -850,  0,  0);
        -- setMoveKey(  rn_02,  1,  100,  0,  0);--
        --entryKakimoji(  rn_02+3,  1,  2,  1,  0,  20,  150);--!!
        
        setMoveKey(  rn_02+10,  0,  -850,  0,  0);
        setMoveKey(  rn_02+15,  0,  -120,  0,  0);
        --setEnvZoomEnable(  rn_02+20,  0);
        changeAnime(  rn_02+12,  1,  104);
        -------------------------------------------

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
setMoveKey(  SP_dodge+5, 0, -30,  0,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


        setMoveKey(  ATK_01,  0,  -30,  0,  0);--
        setMoveKey(  ATK_01-1,  1,  60,  0,  0);
        
        changeAnime(  ATK_01,  0,  12);--キック
        setMoveKey(  ATK_01+1,  1,  65,  0,  0);--
        setMoveKey(  ATK_01+3,  0,  -45,  0,  0);--
        
        --エフェクト
        entryEffect(  ATK_01,  1,  0,  1,  0,  -30,  -15);
        SE1=playSe(ATK_01,1004);
        SE2=playSe(ATK_01,1001);
        entryEffect(  ATK_01+1,  908,  0,  -1,  0,  0,  0);
        entryEffect(  ATK_01+1,  906,  0,  -1,  0,  0,  0);
        entryKakimoji(  ATK_01+1,  20,  4,  1,  -1,  -20,  -240);--baki
        pauseChara(  ATK_01+2, 1);
        
        setMoveKey(  ATK_02+1,  1,  60,  0,  0);
        setMoveKey(  ATK_02,  0,  -40,  0,  0);
        setMoveKey(  ATK_02+1,  1,  80,  0,  0);
        setMoveKey(  ATK_02+2,  1,  77,  0,  0);
        setMoveKey(  ATK_02+2,  0,  -45,  0,  0);
        
        changeAnime(  ATK_02,  1,  111);--モーション
        changeAnime(  ATK_02+1,  0,  10);--パンチ1
        
        entryEffect(  ATK_02,  1,  0,  -1,  0,  10,  30);
        entryEffect(  ATK_02+1,  1,  0,  -1,  0,  -15,  -20);
        
        SE3=playSe(ATK_02,1000);
        --playSe(ATK_02+1,1000);
        
        entryEffect(  ATK_02,  908,  0,  -1,  0,  -150,  -150);
        entryEffect(  ATK_02+2,  908,  0,  -1,  0,  220,  250);
        entryEffect(  ATK_02,  906,  0,  -1,  0,  0,  0);
        entryKakimoji(  ATK_02+1,  2,  4,  -1,  -1,  -30,  240);--gagaga
        entryEffect(  ATK_02+3,  908,  0,  -1,  0,  180,  -250);
        pauseChara(  ATK_02+3, 1);
        
        setMoveKey(  ATK_03,  0,  -40,  0,  0);--
        setMoveKey(  ATK_03,  1,  66,  0,  0);
        
        --モーション
        changeAnime(  ATK_03+1,  0,  9);
        changeAnime(  ATK_03+2,  1,  113);
        
        entryEffect(  ATK_03+2,  1,  0,  -1,  0,  -5,  18);
        entryEffect(  ATK_03+1,  1,  0,  -1,  0,  5,  20);
        SE5=playSe(ATK_03+2,1001);
        stopSe( ATK_03+3, SE3, 6 );
        SE4=playSe(ATK_03+1,1000);
        stopSe( ATK_03+1, SE1, 6 );
        stopSe( ATK_03+1, SE2, 6 );

        entryEffect(  ATK_03,  906,  0,  -1,  0,  0,  0);
        entryEffect(  ATK_03,  908,  0,  -1,  0,  150,  -200);
        entryEffect(  ATK_03+2,  908,  0,  -1,  0,  -77,  150);
        entryEffect(  ATK_03+3,  908,  0,  -1,  0,  -240,  -210);
        pauseChara(  ATK_03+3,  1);
        
        
        setMoveKey(  ATK_03+3,  0,  -55,  0,  0);--
        setMoveKey(  ATK_03+3,  1,  72,  0,  0);
        
        setEnvZoomEnable(  ATK_04+3,  1);
        
        setMoveKey(  ATK_04,  0,  -36,  0,  0);
        
        changeAnime(  ATK_04+1,  0,  13);--キック
        SE6=playSe(ATK_04+1,1004);
        SE7=playSe(ATK_04+1,1001);
        stopSe( ATK_04+1, SE4, 6 );
        stopSe( ATK_04+1, SE5, 6 );

        --entryFlashBg(  ATK_04+1,  2,  0,  0,  0);
        entryEffect(  ATK_04+1,  1,  0,  1,  0,  0,  0);
        entryEffect(  ATK_04,  908,  0,  -1,  0,  -300,  100);
        entryEffect(  ATK_04+1,  908,  0,  -1,  0,  280,  -120);
        entryEffect(  ATK_04+2,  906,  0,  -1,  0,  0,  0);
        changeAnime(  ATK_04+2,  1,  106);--モーション
        setMoveKey(  ATK_04+3,  1,  88,  0,  0);
        pauseChara(  ATK_04+4,  1);
        
        setMoveKey(  ATK_05,  0,  -36,  0,  0);--
        setMoveKey(  ATK_05+1,  0,  -55,  0,  0);--
        setMoveKey(  ATK_05+1,  1,  69,  0,  0);--
        setMoveKey(  ATK_05+3,  0,  -89,  0,  0);--
        
        changeAnime(  ATK_05+1,  1,  111);--モーション
        changeAnime(  ATK_05+2,  0,  14);--蹴り
        
        entryEffect(  ATK_05+1,  1,  0,  -1,  0,  0,  20);
        entryEffect(  ATK_05+5,  1,  0,  -1,  0,  0,  0);
        SE8=playSe(ATK_05+1,1009);
        stopSe( ATK_05+1, SE6, 6 );
        SE9=playSe(ATK_05+5,1010);
        stopSe( ATK_05+5, SE7, 6 );

        entryEffect(  ATK_05+1,  906,  0,  -1,  0,  0,  0);
        entryEffect(  ATK_05+1,  908,  0,  -1,  0,  -110,  290);
        entryEffect(  ATK_05+5,  908,  0,  -1,  0,  160,  -120);
        entryEffect(  ATK_05+5,  908,  0,  -1,  0,  0,  0);
        entryKakimoji(  ATK_05+5,  13,  4,  -1,  0,  -25,  -250);--どん
        setQuake(  ATK_05+4,  7,  15);
        pauseChara(  ATK_05+7,  3);
        
        -----------------------------------
        setMoveKey(  ATK_06,  0,  -50,  0,  0);--
        setMoveKey(  ATK_06-1,  1,  60,  0,  0);
        
        changeAnime(  ATK_06,  0,  9);--パンチ3
        changeAnime(  ATK_06+1,  1,  112);--モーション
        
        entryEffect(  ATK_06,  2,  0,  -1,  0,  0,  50);
        SE10=playSe(ATK_06,1000);
        stopSe( ATK_06, SE8, 6 );
        SE11=playSe(ATK_06+1,1001);
        stopSe( ATK_06+1, SE9, 6 );
        entryEffect(  ATK_06+2,  908,  0,  -1,  0,  0,  -200);
        entryEffect(  ATK_06+1,  908,  0,  -1,  0,  190,  100);
        entryEffect(  ATK_06,  906,  0,  -1,  0,  0,  0);
        entryEffect(  ATK_06+1,  1,  0,  -1,  0,  -15,  0);
        
        entryKakimoji(  ATK_06+1,  20,  4,  -1,  0,  -20,  -240);--baki
        
        setMoveKey(  ATK_06+2,  0,  -44,  0,  0);
        setMoveKey(  ATK_06+2,  1,  69,  0,  0);
        pauseChara(  ATK_06+2,  1);
        
        
        setMoveKey(  ATK_07+1,  0,  -45,  0,  0);
        setMoveKey(  ATK_07,  1,  60,  0,  0);
        setMoveKey(  ATK_07+1,  1,  80,  0,  0);
        changeAnime(  ATK_07+1,  0,  14);--パンチ1
        changeAnime(  ATK_07+1,  1,  110);--モーション
        
        entryEffect(  ATK_07+1,  2,  0,  -1,  0,  0,  0);
        SE12=playSe(ATK_07+1,1010);
        SE13=playSe(ATK_07+1,1000);
        stopSe( ATK_07+1, SE10, 6 );
        stopSe( ATK_07+1, SE11, 6 );
        entryEffect(  ATK_07+1,  908,  0,  -1,  0,  -180,  -170);
        entryEffect(  ATK_07+2,  908,  0,  -1,  0,  10,  260);
        entryEffect(  ATK_07+1,  906,  0,  -1,  0,  0,  0);
        entryEffect(  ATK_07+3,  908,  0,  -1,  0,  -120,  -200);
        
        entryKakimoji(  ATK_07+1,  2,  4,  -1,  0,  -30,  240);--gagaga
        pauseChara(  ATK_07+3,  1);
        
        setMoveKey(  ATK_08,  0,  -32,  0,  0);--
        setMoveKey(  ATK_08,  1,  60,  0,  0);
        
        changeAnime(  ATK_08+1,  0,  10);
        changeAnime(  ATK_08+2,  1,  112);
        
        --entryFlashBg(  ATK_08+1,  2,  0,  0,  0);
        entryEffect(  ATK_08+1,  1,  0,  -1,  0,  21,  0);
        entryEffect(  ATK_08+2,  1,  0,  -1,  0,  -30,  -10);
        SE14=playSe(ATK_08+1,1000);
        stopSe( ATK_08+1, SE12, 6 );
        SE15=playSe(ATK_08+2,1001);
        stopSe( ATK_08+2, SE13, 6 );

        entryEffect(  ATK_08,  906,  0,  -1,  0,  0,  0);
        entryEffect(  ATK_08+1,  908,  0,  -1,  0,  -170,  50);
        entryEffect(  ATK_08+3,  908,  0,  -1,  0,  140,  -60);
        
        setMoveKey(  ATK_08+3,  0,  -48,  0,  0);--
        setMoveKey(  ATK_08+3,  1,  71,  0,  0);
        pauseChara(  ATK_08+3,  1);
        
        setMoveKey(  ATK_09,  0,  -36,  0,  0);--
        setMoveKey(  ATK_09,  1,  67,  0,  0);--
        
        changeAnime(  ATK_09+1,  0,  13);--パンチ2
        changeAnime(  ATK_09+2,  1,  112);--モーション
        
        entryEffect(  ATK_09+1,  2,  0,  -1,  0,  -25,  -20);
        entryEffect(  ATK_09+2,  1,  0,  -1,  0,  25,  20);
        playSe(ATK_09+1,1001);
        stopSe( ATK_09+1, SE14, 6 );
        entryEffect(  ATK_09+2,  908,  0,  -1,  0,  -210,  190);
        entryEffect(  ATK_09+1,  908,  0,  -1,  0,  200,  -100);
        entryEffect(  ATK_09+1,  906,  0,  -1,  0,  0,  00);
        
        setMoveKey(  ATK_09+4,  0,  -80,  0,  0);--
        setMoveKey(  ATK_09+4,  1,  80,  0,  0);--
        pauseChara(  ATK_09+4,  1);
        
        setMoveKey(  ATK_10,  0,  -80,  0,  0);--
        setMoveKey(  ATK_10+2,  0,  -120,  0,  0);--
        setMoveKey(  ATK_10,  1,  80,  0,  0);--
        setMoveKey(  ATK_10+2,  1,  120,  0,  0);--
        
        --------------------------------死亡
        kame_flag = 0x00;
        
        if (_IS_DEAD_ == 1) then
        ---------------------------------
        changeAnime(  ATK_10+3,  0,  11);
        
        changeAnime(  ATK_10+5,  1,  106);
        dealDamage(  ATK_10+5);
        entryEffect(  ATK_10+5,  1,  0,  -1,  0,  0,  20);
        playSe(ATK_10+5,1010);
        stopSe( ATK_10+5, SE15, 6 );
        entryEffect(  ATK_10+3,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_10+5,  908,  1,  -1,  0,  0,  20);
        setMoveKey(  ATK_10+5,  0,  -100,  0,  0);
        setMoveKey(  ATK_10+5,  1,  100,  0,  0);
        
        
        else
        changeAnime(  ATK_10+3,  0,  11);
        changeAnime(  ATK_10+3,  1,  111);
        if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
            dealDamage(  ATK_10+3);
        end
        setMoveKey(  ATK_10+5,  0,  -100,  0,  0);
        setMoveKey(  ATK_10+5,  1,  100,  0,  0);
        entryEffect(  ATK_10+4,  3,  0,  -1,  0,  0,  0);
        playSe(ATK_10+5,1010);
        entryEffect(  ATK_10+3,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_10+5,  908,  1,  -1,  0,  0,  20);
        entryKakimoji(  ATK_10+5,  4,  4,  1,  -1,  -10,  -70);
        
        nana = entryEffectLife( ATK_10+11, 913, 20, 0x80,  -1,  0,  0,  0); -- 流線斜め
        setEffScaleKey( ATK_10+11,nana,-1,1);
        startBgScroll(  ATK_10+4,  30,  3);
        --entryFlash( (ATK_10+6), 1, fcolor_r, fcolor_g, fcolor_b, 100);
        
        pauseChara( ATK_10+7,  5);
        setEnvZoomEnable( ATK_10+7,  0);
        
        setMoveKey(  ATK_10+10,  0,  -100,  0,  0);--
        setMoveKey(  ATK_10+11,  1,  100,  0,  0);--
        setMoveKey( ATK_10+11,  0,  -90,  0,  0);--
        setMoveKey( ATK_10+11,  1,  90,  0,  0);--
        changeAnime( ATK_10+15,  0,  4);--
        changeAnime( ATK_10+15,  1,  104);--モーション
        
        
        setMoveKey( ATK_10+20,  1,  700,  0,  0);--
        setMoveKey( ATK_10+20,  0,  -250,  0,  0);--
        setScaleKey( ATK_10+19, 0, 1, 1);
        setScaleKey( ATK_10+20, 0, 1.5, 1.5);
        changeAnime( ATK_10+20,  0,  17);--パンチ3
        changeAnime( ATK_10+20,  1,  117);--モーション
        
        --entryFlash( (ATK_10+19), 1, fcolor_r, fcolor_g, fcolor_b, 100);
        setMoveKey( ATK_10+23,  0,  -230,  0,  0);--
        end
        -----------------------------------------------------
        kame_flag = 0x00;
        if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
        -----------------------
        
        changeAnime( ATK_10+23,  0,  1);--待機
        endPhase( ATK_10+23+30);
        
        -----------------------
        else
        playSe(ATK_11+5,43)
        changeAnime(  ATK_11+2,  0,  0);
        entryEffect(  ATK_11+5,  700,  0,  0,  0,  0,  0);
        entryEffect(  ATK_11+4,  906,  0,  0,  0,  0,  0);
        
        setDisp ( ATK_11+6, 0, 0);
        
        
        setDisp ( ATK_11+7, 0, 1);
        setDisp ( ATK_11+8, 0,0);
        setDisp ( ATK_11+9, 0, 1);
        entryKakimoji(  ATK_11+7,  11,  1,  -1,  0,  -120,  180);
        setDisp ( ATK_11+10, 0, 0);
        entryEffectLife(  ATK_11+18, 913,  55,   0x80,  -1,  0,  0,  0);
        setEnvZoomEnable(  ATK_11+16,  1);
        setScaleKey( ATK_11+19, 0,  1.5, 1.5);
        setScaleKey( ATK_11+20, 0,  1, 1);
        setMoveKey(  ATK_11+15,  0,  -230,  0,  0);--
        setMoveKey(  ATK_11+16,  0,  -50,  50,  0);--
        setMoveKey( ATK_11+14,  1,  700,  0,  0);--
        setMoveKey( ATK_11+25,  1,  120,  0,  0);--
        
        
        
        entryEffect(  ATK_11+26+B_01,  700,  0,  0,  -50,  0,  0);
        --playSe(ATK_11+26+B_01,38);
        setMoveKey(  ATK_11+28+B_01,  0,  -50,  50,  0);--
        setMoveKey(  ATK_11+33+B_01,  0,  -50,  0,  0);--
        setDisp (ATK_11+28+B_01, 0, 1);
        setDisp (ATK_11+29+B_01, 0, 0);
        setDisp (ATK_11+30+B_01, 0, 1);
        setDisp (ATK_11+31+B_01, 0, 0);
        setDisp (ATK_11+32+B_01, 0, 1);
        entryKakimoji(  ATK_11+27+B_01,  0,  2,  1,  0,  20,  150);--!!
        
        changeAnime(  ATK_11+33+B_01,  0,  11);--パンチ3
        dealDamage(  ATK_11+36+B_01);
        --popPowerBall(ATK_11+36+B_01);
        entryKakimoji(  ATK_11+37+B_01,  20,  4,  -1,  0,  -90,  -230);--baki
        --entryFlashBg(  ATK_11+35+B_01,  3,  255,  255,  255);
        entryEffect(  ATK_11+36+B_01,  4,  0,  1,  0,  0,  0);
        playSe(ATK_11+35+B_01,1009);
        entryEffect(  ATK_11+35+B_01,  906,  1,  -1,  0,  0,  0);
        entryEffect(  ATK_11+36+B_01,  908,  1,  1,  0,  0,  0);
        
        changeAnime(  ATK_11+37+B_01,  1,  106);--モーション
        setShake(  ATK_11+36+B_01,  10,  21);
        
        pauseChara(  ATK_11+38+B_01,  10);
        end
        --------------------------------
        
        --------------------------------死亡
        kame_flag = 0x00;
        
        if (_IS_DEAD_ == 1) then
            -- 死亡フェーズ (sys0002 / sys0003)
        	
        	-----------------------------------------------------
        	kame_flag = 0x00;
        	if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
        	-----------------------	
        
        	ATK_dead = ATK_10+7;
        	else
        
        	ATK_dead = ATK_11+40+B_01;
        	end
        
           entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
           endPhase( ATK_dead+6);
           
        else
        
        	-----------------------------
        	-----------------------------------------------------
        	kame_flag = 0x00;
        	if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
        	-----------------------
        	setEnvZoomEnable(  ATK_end+5,  0);
        
        	endPhase( ATK_end+10);
        	-----------------------------
        	else
        
        	setEnvZoomEnable(  ATK_end+10,  0);
        	setMoveKey(  ATK_end,  0,  -42,  0,  0);--
        	setMoveKey(  ATK_end+10,  0,  -900,  0,  0);--画面外へ
        	setMoveKey(  ATK_end, 1,  100,    0,  0);
        
        	setMoveKey(  ATK_end+16, 1,  180,  0,  0);
        	setMoveKey(  ATK_end+20, 1,  180,   0,  0);
        
        	entryEffect(  ATK_end+24,  906,  1,  1,  0,  0,  0);
        	entryEffectLife( ATK_end+22, 913, 10, 0x80,  -1,  0,  0,  0); -- 流線斜め
        
        	stopBgScroll ( ATK_end+30, 1);
        
        	setDamage(  ATK_end+27,  1,  0);
        	setMoveKey(  ATK_end+30,  1,  270,  0,  0);--
        	setMoveKey(  ATK_end+35,  1,  180,  0,  0);--
        	setMoveKey(  ATK_end+40,  1,  100,  0,  0);--
        	changeAnime(  ATK_end+40,  1,  104);--モーション
        	changeAnime(  ATK_end+44,  1,  100);--モーション
        	endPhase( ATK_end+45);
        	end
        end



print(  "[lua]execa001");

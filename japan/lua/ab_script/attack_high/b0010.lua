print ("[lua]exec a0012");

ATK_01 = 0;
ATK_02 = 60;
ATK_02_1 = ATK_02+60;
--ATK_03 = ATK_02_1+30;
--ATK_06 = ATK_03+2;
ATK_06 = ATK_02_1+30;

ATK_04 = ATK_06+32;
ATK_end = ATK_04+60;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 182, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 182, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_06+28, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, 90, 80,    0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
setDrawFront( ATK_01, 1, 1);
setMoveKey(   ATK_01,   0, -300,  0,    50);     -- 中間

playSe(  ATK_01,1019);--SE
setMoveKey(  10+ATK_01,   0, -100,150,    90);
setMoveKey(  25+ATK_01,   0,  250,200,   100);     -- 奥
setLastPosKey( ATK_01, 1);
-- setMoveKey(  ATK_01,   1,  300,   0,    0);
setMoveKey(  20+ATK_01 ,  1, -100,-100,  -60);
setMoveKey(  28+ATK_01,  1, -250,-200, -128);     --画面左下へ
setMoveKey(  30+ATK_01, 1, -500,-400, -128);

changeAnime( ATK_01, 0, 1);  -- 右上向き
changeAnime( ATK_01, 1, 18);  -- 左下向き
changeAnime( ATK_01+10, 0, 100);  -- 左下向き
changeAnime( ATK_01+8, 1, 2);  -- 左下向き
entryEffect( 25+ATK_01,  908,  0x80,  0,  0,  0,  0);--波紋
changeAnime( 25+ATK_01, 0,  16); -- タックル
--changeAnime( 25+ATK_01, 1,  18);  -- 右上向き


setMoveKey( 35+ATK_01,   0,  90, 80,    0);
setMoveKey( 45+ATK_01,   0,  250, 150,   80);

setMoveKey( 35+ATK_01,  1,  0,   0,    -60);     -- 激突
setMoveKey( 40+ATK_01,  1, -200,  -100, -120);     -- 吹っ飛び中
--setMoveKey( 45+ATK_01,  1, -900,  -200, -128);     -- 吹っ飛び中

--setEnvZoomEnable(0, 1);     -- ズーム許可


entryEffectLife( 36+ATK_01, 906, 25, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect(  36+ATK_01,  908,  0,  -1,  0,  0,  0);--はもん
changeAnime( 35+ATK_01, 1,  2); -- ダメ
changeAnime( 38+ATK_01, 0,  117); -- ダメ後のかまえ

setQuake( 36+ATK_01,5, 12);
pauseChara(  36+ATK_01,  5);
setDamage(  36+ATK_01,  1,  0);--ダメージ振動等
geff = entryEffect( 35+ATK_01,  23,  0x80,  1,  0,-100,  0);
setEffScaleKey( 35+ATK_01, geff, 2.2,1);
playSe( 35+ATK_01,1009);--SE


-----------------------------------------------
--中央への移動：突進
setMoveKey( ATK_02, 0,  250, 150, 80);
setMoveKey( ATK_02+10, 0, 90,  80, 0);
changeAnime( ATK_02, 0, 116); -- タックル
entryEffect( ATK_02,  908,  0,  0,  0,  0,  0);--はもん
setMoveKey( ATK_02+59, 0, 90,  80, 0);
setMoveKey( ATK_02+60, 0, -600,  100, 0);

naname=entryEffectLife( ATK_02, 906, 41, 0x80,  -1,  0,  0,  0);--斜め線
--setEffRotateKey( ATK_02+2,naname,45);
--setEffScaleKey( ATK_02+2,naname,1.2,1.2);

setMoveKey( ATK_02+10,  1, -140,  -100, -50); 
--setMoveKey( ATK_02+10,  1, -660,  -200, -128); 
setMoveKey( ATK_02+20,  1, -130,  -100, -128); 
setMoveKey( ATK_02+40,  1, -50,  -50, -128); 
setMoveKey( ATK_02+59,  1, -50,  -50, -128); 
setMoveKey( ATK_02+60,  1, -660,  -200, -128);

--entryEffect( ATK_02+43,  910,  0,  -1,  0,  0,  0);


----------------------------------------------
--パンチの応手鵜

setEnvZoomEnable( ATK_02_1,1);--ズーム
entryFade(ATK_02+50,5,5,4,255,255,255,255 );
-------------------------------------------
--アタック
-------------------------------------------

entryEffectLife( ATK_02_1, 914, 120, 0x80,  -1,  0,  0,  0);--移動線
setDrawFront( ATK_02_1, 1, 0);

--P移動
setMoveKey(  ATK_02_1,  0,  -700,  100, 0);
setMoveKey(  ATK_02_1+1,  0,  -700,  0,  -128);--位置
changeAnime(  ATK_02_1+1,  0,  3);
setRotateKey( ATK_02,  0,  0);
setRotateKey( ATK_02_1+1,  0,  -10);

--攻撃に向かう
setMoveKey(  ATK_02_1+27,  0,  -600,  0,   0);
setMoveKey(  ATK_02_1+30,  0,  -120,  0,   0);--位置


--E処理
changeAnime(  ATK_02_1,  1,  104);--ふっとばされ
setMoveKey(  ATK_02_1,  1, -660,  -200, -128);
setMoveKey(  ATK_02_1+1,  1,  -200,  0,  -128);--位置


-----------------------
else


setDrawFront( ATK_01, 1, 1);
setMoveKey(   ATK_01,   0, -300,  0,    50);     -- 中間
setMoveKey(  10+ATK_01,   0, -100,150,    90);
setMoveKey(  25+ATK_01,   0,  250,200,   100);     -- 奥

setLastPosKey( ATK_01, 1);
-- setMoveKey(  ATK_01,   1,  300,   0,    0);
setMoveKey(  20+ATK_01 ,  1, -100,-100,  -60);
setMoveKey(  28+ATK_01,  1, -150,-180, -128);     --画面左下へ
setMoveKey(  30+ATK_01, 1, -160,-200, -128);

changeAnime( ATK_01, 0, 1);  -- 右上向き
changeAnime( ATK_01, 1, 2);  -- 左下向き
changeAnime( ATK_01+8, 0, 100);  -- 左下向き
--changeAnime( ATK_01+8, 1, 2);  -- 左下向き
entryEffect( 25+ATK_01,  908,  0x80,  0,  0,  0,  0);--波紋
changeAnime( 25+ATK_01, 0,  116); -- タックル
changeAnime( 25+ATK_01, 1,  18);  -- 右上向き
changeAnime( 30+ATK_01, 0,  16); -- タックル

setMoveKey( 35+ATK_01,  1,  0,   0,    -20);     -- 激突
setMoveKey( 35+ATK_01,   0,  90, 80,    0);
setScaleKey( 34+ATK_01,   1, 1.0, 1.0 );
setScaleKey( 35+ATK_01,   1, 0.5, 0.5 );

setMoveKey( 45+ATK_01,   0,  250, 150,   80);


setMoveKey( 40+ATK_01,  1, -140,  -100, -50);     -- 吹っ飛び中
--setMoveKey( 45+ATK_01,  1, -660,  -200, -128);     -- 吹っ飛び中

--setScaleKey( 40+ATK_01,   1, 2.0, 2.0 );
setScaleKey( 43+ATK_01,   1, 1, 1 );
setDamage( 45+ATK_01, 1, 2 );  -- ダメージ

--setEnvZoomEnable(0, 1);     -- ズーム許可

entryEffect(  36+ATK_01,  906,  0,  -1,  0,  0,  0);--集中線
entryEffect(  36+ATK_01,  908,  0,  -1,  0,  0,  0);--はもん
changeAnime( 35+ATK_01, 1,  7); -- ダメ
changeAnime( 38+ATK_01, 0,  117); -- ダメ後のかまえ

setQuake( 36+ATK_01,5, 12);
pauseChara(  36+ATK_01,  5);
setDamage(  36+ATK_01,  1,  0);--ダメージ振動等
entryEffect( 35+ATK_01,  4,  0,  1,  0,  0,  0);--HIT
playSe( 35+ATK_01,1025);--SE

-----------------------------------------------
--中央への移動：突進
setMoveKey( ATK_02, 0,  250, 150, 80);
setMoveKey( ATK_02+10, 0, 90,  80, 0);
changeAnime( ATK_02, 0, 116); -- タックル
entryEffect( ATK_02,  908,  0,  0,  0,  0,  0);--はもん
setMoveKey( ATK_02+59, 0, 90,  80, 0);
setMoveKey( ATK_02+60, 0, -600,  100, 0);

naname=entryEffectLife( ATK_02, 906, 41, 0x80,  -1,  0,  0,  0);--斜め線
--setEffRotateKey( ATK_02+2,naname,45);
--setEffScaleKey( ATK_02+2,naname,1.2,1.2);

setMoveKey( ATK_02+10,  1, -140,  -100, -50); 
--setMoveKey( ATK_02+10,  1, -660,  -200, -128); 
setMoveKey( ATK_02+20,  1, -130,  -100, 0); 
setMoveKey( ATK_02+40,  1, -50,  -50, 0); 
setMoveKey( ATK_02+59,  1, -50,  -50, 0); 
setMoveKey( ATK_02+60,  1, -660,  -200, -128);

--entryEffect( ATK_02+43,  910,  0,  -1,  0,  0,  0);

----------------------------------------------
--パンチの応手鵜

setEnvZoomEnable( ATK_02_1,1);--ズーム
entryFade(ATK_02+50,5,5,4,255,255,255,255 );
-------------------------------------------
--アタック
-------------------------------------------

entryEffectLife( ATK_02_1, 914, 120, 0x80,  -1,  0,  0,  0);--移動線
setDrawFront( ATK_02_1, 1, 0);

--P移動
setMoveKey(  ATK_02_1,  0,  -900,  100, 0);
setMoveKey(  ATK_02_1+1,  0,  -900,  0,  -128);--位置
changeAnime(  ATK_02_1+1,  0,  3);

setRotateKey( ATK_02,      0,  0);
setRotateKey( ATK_02_1,    0,  -10);

--攻撃に向かう
setMoveKey(  ATK_02_1+27,  0,  -600,  0,   0);
setMoveKey(  ATK_02_1+30,  0,  -120,  0,   0);--位置


--E処理
changeAnime(  ATK_02_1,  1,  106);--ふっとばされ
setMoveKey(  ATK_02_1,  1, -660,  -200, -128);
setMoveKey(  ATK_02_1+1,  1,  -200,  0,  -128);--位置

end
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------

setBgScroll(ATK_06,30);

setEnvZoomEnable( ATK_06,0);--ズーム
changeAnime(  ATK_06+7,  0,  12);--キック
entryEffect(  ATK_06+7,  23,  0x40,  1,  0,-100,  0);
playSe(ATK_06+7,1001);
entryEffect(  ATK_06+7,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+7,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+7,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+7,  1,  104);--モーション

changeAnime(  ATK_06+10,  0,  10);--パンチ
--entryEffect(  ATK_06+10, 23,  0x40,  1,  0,-100,  0);
playSe(ATK_06+10,1006);



changeAnime(  ATK_06+12,  0,  9);--パンチ
--entryEffect(  ATK_06+12,  23,  0x40, 1,  0,-100,  0);
playSe(ATK_06+12,1006);


changeAnime(  ATK_06+14,  0,  12);--キック
entryEffect(  ATK_06+14,  23,  0x40,  1,  0,-100,  0);
playSe(ATK_06+14,1007);

changeAnime(  ATK_06+18,  0,  13);--キック
--entryEffect(  ATK_06+18,  23,  0x40, 1,  0,-100,  0);
playSe(ATK_06+18,1007);

changeAnime(  ATK_06+20,  0,  12);--キック
--entryEffect(  ATK_06+20,  23,  0x40,  1,  0,-100,  0);
playSe(ATK_06+20,1007);

changeAnime(  ATK_06+24,  0,  9);--パンチ
--entryEffect(  ATK_06+24,  23,  0x40, 1,  0,-100,  0);
playSe(ATK_06+24,1006);
dealDamage(  ATK_06+28);
changeAnime(  ATK_06+28,  0,  14);--パンチ
-----------------------------------------------------
kame_flag = 0x00;
if (_IS_DEAD_ == 1) then
-----------------------
entryEffect(  ATK_06+30,  4,  0x40,  1,  0,-100,  0);
changeAnime(  ATK_06+30,  1,  108);--パンチ
else
entryEffect(  ATK_06+30,  23,  0x40,  1,  0,-100,  0);
end

playSe(ATK_06+30,1012);

--setMoveKey(  ATK_04,  0,  -42,  0,  25);--中央位置から
setMoveKey(  ATK_04,  0,  -42,  0,  -25);--中央位置から
setMoveKey(  ATK_04+10,  0,  -800,  0,  -128);--画面外へ
setMoveKey(  ATK_04, 1,  100,    0,  -25);
--setMoveKey(  ATK_04+16, 1,  180,   70,  -25);
setMoveKey(  ATK_04+16, 1,  180,   70,  -25);
setMoveKey(  ATK_04+40, 1,  180,   70,  55);


-----------------------
else

setBgScroll(ATK_06,30);

setEnvZoomEnable( ATK_06,0);--ズーム
changeAnime(  ATK_06+7,  0,  12);--キック
entryEffect(  ATK_06+7,  2,  1,  1,  0,  0,  0);
SE1=playSe(ATK_06+7,1001);
entryEffect(  ATK_06+7,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+7,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+7,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+7,  1,  105);--モーション

changeAnime(  ATK_06+10,  0,  10);--パンチ
entryEffect(  ATK_06+10,  1,  1,  1,  0,  0,  0);
SE2=playSe(ATK_06+10,1000);
entryEffect(  ATK_06+10,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+10,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+10,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+10,  1,  108);--モーション

changeAnime(  ATK_06+12,  0,  9);--パンチ
entryEffect(  ATK_06+12,  1,  1,  1,  5,  -5,  0);
SE3=playSe(ATK_06+12,1000);
stopSe( ATK_06+12, SE1, 6 );
entryEffect(  ATK_06+12,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+12,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+12,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+12,  1,  105);--モーション

changeAnime(  ATK_06+14,  0,  12);--キック
entryEffect(  ATK_06+14,  4,  1,  1,  -10,  0,  0);
SE4=playSe(ATK_06+14,1001);
stopSe( ATK_06+14, SE2, 6 );
entryEffect(  ATK_06+14,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+14,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+14,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+14,  1,  106);--モーション

changeAnime(  ATK_06+18,  0,  13);--キック
entryEffect(  ATK_06+18,  2,  1,  1,  10,  -15,  0);
SE5=playSe(ATK_06+18,1001);
stopSe( ATK_06+18, SE3, 6 );
entryEffect(  ATK_06+18,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+18,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+18,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+18,  1,  106);--モーション

changeAnime(  ATK_06+20,  0,  12);--キック
entryEffect(  ATK_06+20,  1,  1,  1,  0,  10,  0);
SE6=playSe(ATK_06+20,1001);
stopSe( ATK_06+20, SE4, 6 );
entryEffect(  ATK_06+20,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+20,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+20,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+20,  1,  108);--モーション

changeAnime(  ATK_06+24,  0,  9);--パンチ
entryEffect(  ATK_06+24,  1,  1,  1,  0,  -20,  0);
playSe(ATK_06+24,1000);
stopSe( ATK_06+24, SE5, 6 );
entryEffect(  ATK_06+24,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+24,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+24,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+24,  1,  105);--モーション

changeAnime(  ATK_06+28,  0,  14);--パンチ
entryEffect(  ATK_06+30,  4,  1,  1,  0,  0,  0);
dealDamage(ATK_06+30);
playSe(ATK_06+30,1010);
stopSe( ATK_06+30, SE6, 6 );
entryEffect(  ATK_06+30,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+30,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+30,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+30,  1,  108);--モーション
setShake(  ATK_06+30,  7,  16);

--setMoveKey(  ATK_04,  0,  -42,  0,  25);--中央位置から
setMoveKey(  ATK_04,  0,  -42,  0,  -25);--中央位置から
setMoveKey(  ATK_04+10,  0,  -1000,  0,  -128);--画面外へ
setMoveKey(  ATK_04, 1,  100,    0,  -25);
--setMoveKey(  ATK_04+16, 1,  180,   70,  -25);
setMoveKey(  ATK_04+16, 1,  180,   70,  -25);

setMoveKey(  ATK_04+40, 1,  180,   70,  55);


end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_06+30;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

---------------

entryEffect(  ATK_04+56,  906,  1,  -1,  0,  0,  0);
--changeAnime(  ATK_04+40,  1,  105);--モーション
changeAnime(  ATK_04+55,  1,  117);--モーション
stopBgScroll ( ATK_04+56, 1);
setDamage(  ATK_04+57,  1,  0);
--playSe(ATK_04+59,40);
setMoveKey(  ATK_04+57,  1,  270,  90,  55);--中央位置から
setMoveKey(  ATK_04+59,  1,  80,  10,  55);--中央位置から
setMoveKey(  ATK_04+65,  1,  100,  0,  5);--中央位置から
setScaleKey( ATK_04+59, 1,  1.0, 1.0);


changeAnime(  ATK_end+49,  1,  100);--モーション

endPhase(  ATK_end+50);
end


print ("[lua]exec a0012");

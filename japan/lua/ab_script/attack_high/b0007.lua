print(  "[lua]execa002");

rn_01 = 0;
rn_02 = 20;
ATK_01 = 20;
ATK_02 = ATK_01+8;
ATK_03 = ATK_02+5;
ATK_04 = ATK_03+6;
ATK_05 = ATK_04+6;
---------------
ATK_06 = ATK_05+10;
ATK_07 = 92;--256
ATK_08 = 97;--262
ATK_09 = 102;--268
ATK_10 = 107;--274

ATK_12 = ATK_06+31;
---------------
ATK_end = ATK_12+27;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 75, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 86, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_06+27, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入
-------------------------
--背景スクロール
setBgScroll( 0,40);
setDisp( 0, 0, 0);

--P初期位置
-- setMoveKey(  0,  0,  -700,  0,  -128);
setLastPosKey( 0, 1);
-- setMoveKey(  0,  1,  -700,  0,  0);
changeAnime(  rn_01,  0,  3);
setDisp( rn_01+5, 0, 1);

--E初期位置
setMoveKey(  rn_01+5,  0,  -40,  0,  -128);--中央に近づく
setMoveKey(  rn_01+8,  0,  -18,  0,  -128);--中央に近づく

entryEffectLife(  rn_01+3, 914,  13,  0x80,  -1,  0,  0,  0);
setMoveKey(  rn_01+10,  0,  -170,  0,  -128);--中央に近づく
playSe(rn_01+10,43);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 10; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0,  800,  100,  -128);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

entryKakimoji(  rn_01+11,  6,  4,  0,  -1,  -50,  200);

setMoveKey(  rn_01+15,  0,  800,  100,  -128);--中央に近づく
playSe(rn_01+11,1018);
-------------------------------------------
--連打応酬
-------------------------------------------

--------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
--P 連打初期位置
setMoveKey( ATK_01-1, 0,  800,   100, -128);
setMoveKey( ATK_01,   0,  -420, -150, 0);
setRotateKey( ATK_01, 0,  -10);--角度
changeAnime( ATK_01,  0,  9);--パンチ
SE1=playSe( ATK_01,1007);

--E 初期位置
setMoveKey(  ATK_01-1,  1,  -700,  0,  -128);
setMoveKey(  ATK_01,  1,  -320,  -120,  0);
setRotateKey( ATK_01,  1,  -10);--角度
changeAnime(  ATK_01,  1,  104);--ダメージ

--線
naname=entryEffectLife( ATK_01, 914, 61, 0x80,  -1,  0,  0,  0);
setEffRotateKey(ATK_01,naname,-35);

---------
setMoveKey(  ATK_01+3,  1,  -280,  -100,  0);--E 中央に近づく

setMoveKey(  ATK_01+2,  0,  -420,  -150,  0);
setMoveKey(  ATK_01+5,  0,  -320,  -120,  0);--P 中央に近づく

setEnvZoomEnable( ATK_01+5,1);--ズーム

setMoveKey(  ATK_01+5,  1,  -280,  -100, 0);
setMoveKey(  ATK_01+8,  1,  -250,  -90,  0);--E 中央に近づく

------------一撃目攻撃
setMoveKey(  ATK_01+6,  0,  -320,  -120,  0);
setMoveKey(  ATK_01+9,  0,  -300,  -105,  0);--P 中央に近づく
changeAnime(  ATK_01+7,  0,  10);--パンチ
SE2=playSe( ATK_01+7,1007);
--ダメージ処理
entryEffect( ATK_01+7,  23, 0x40,  1,  0,  -100,  0);


--------------二撃目
setMoveKey(  ATK_02,   1, -250, -156,  0);
setMoveKey(  ATK_02+4, 1, -180,  -112, 0);--E 中央に近づく

changeAnime( ATK_02+3,  0,  9);--パンチ
setMoveKey(  ATK_02+9,  0,  -300,  -187,  0);
setMoveKey(  ATK_02+5,  0,  -230,  -143,  0);--P 中央に近づく

--ダメージ処理
--entryEffect( ATK_02+3,  23,  0x40,  1,  0,  -100,  0);
SE3=playSe(ATK_02+3,1007);--SE
stopSe( ATK_02+3, SE1, 10 );
SE4=playSe(ATK_02+4,1007);
stopSe( ATK_02+4, SE2, 8 );
SE5=playSe(ATK_02+7,1008);
stopSe( ATK_02+7, SE3,8 );
SE6=playSe(ATK_02+10,1007);
stopSe( ATK_02+10, SE4, 8 );

--------------三撃目
setMoveKey(  ATK_03,    1,  -180, -112,  0);
setMoveKey(  ATK_03+4,  1,  -80,  -50,   0);--E 中央に近づく

changeAnime( ATK_03+3,  0,  12);--キック
setMoveKey(  ATK_03+2,  0,  -230, -143,  0);
setMoveKey(  ATK_03+6,  0,  -130, -81,   0);--P 中央に近づく

--ダメージ処理
--entryEffect( ATK_03+3,  23, 0x40,  1,  0,  -100,  0);
SE7=playSe(ATK_03+3,1008);--SE
stopSe( ATK_03+3, SE5, 8 );
SE8=playSe(ATK_02+12,1000 );
stopSe( ATK_02+12, SE6, 8 );
SE9=playSe(ATK_02+14,1008);
stopSe( ATK_02+14, SE7, 8 );
--------------4撃目

setMoveKey(  ATK_04,    1,  -80,  -50,  0);
setMoveKey(  ATK_04+5,  1,  0,     0,   0);--E 中央に近づく
changeAnime( ATK_04+3,  0,  13);--キック
setMoveKey(  ATK_04+2,  0,  -130, -81,  0);
setMoveKey(  ATK_04+6,  0,  -80,  -31,  0);--P 中央に近づく

--ダメージ処理
entryEffect( ATK_04+3,  23,  0x40,  1,  0,  -100,  0);
SE10=playSe(ATK_02+18,1008);
stopSe( ATK_02+18, SE8, 8 );
SE11=playSe(ATK_02+20,1007);
stopSe( ATK_02+20, SE9, 8 );
SE12=playSe(ATK_04+3,1008);--SE
stopSe( ATK_04+3, SE10, 8 );
---------------5撃目
setMoveKey(  ATK_05,  1,  0,  0,  0);
setMoveKey(  ATK_05+5,  1,  50,  20,  0);--E 中央に近づく

changeAnime(  ATK_05+3,  0,  11);--パンチ
setMoveKey(  ATK_05+2,  0,  -80,  -31,  0);
setMoveKey(  ATK_05+4,  0,  -25,  0,  0);--P 中央に近づく


--ダメージ処理
--entryEffect( ATK_05+5,  23,  0x40, 1,  0,  -100,  0);
SE13=playSe(ATK_05+3,1012);--SE
stopSe( ATK_05+3, SE11, 8 );
---------------連撃目
changeAnime(  ATK_06,  0,  13);--パンチ
--entryEffect(  ATK_06+1,  23,  0x40, 1,  0,  -100,  0);
SE14=playSe(ATK_06+1,1008);
stopSe( ATK_06+1, SE11, 8 );
entryEffect(  ATK_06+1,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+1,  908,  1,  1,  0,  0,  0);
-----------------


changeAnime(  ATK_06+4,  0,  9);--パンチ
--entryEffect(  ATK_06+4,  23,  0x40, 1,  0,  -100,  0);
entryEffect(  ATK_06+4,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_06+4,  908,  1,  1,  0,  0,  0);

changeAnime(  ATK_06+7,  0,  12);--パンチ
entryEffect(  ATK_06+7,  23,  0x40, 1,  0,  -100,  0);


changeAnime(  ATK_06+10,  0,  10);--パンチ
--entryEffect(  ATK_06+10,  23,  0x40, 1,  0,  -100,  0);

entryEffect(  ATK_06+10,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_06+10,  908,  1,  1,  0,  0,  0);

changeAnime(  ATK_06+12,  0,  9);--パンチ
--entryEffect(  ATK_06+12,  23,  0,  1,  0,  -100,  0);

changeAnime(  ATK_06+14,  0,  12);--パンチ
entryEffect(  ATK_06+14,  23,  0,  1,  0,  -100,  0);


changeAnime(  ATK_06+18,  0,  13);--パンチ
--entryEffect(  ATK_06+18,  23,  0x40, 1,  0,  -100,  0);
entryEffect(  ATK_06+18,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+18,  908,  1,  1,  0,  0,  0);



changeAnime(  ATK_06+20,  0,  10);--パンチ
--entryEffect(  ATK_06+20,  23,  0x40, 1,  0,  -100,  0);

entryEffect(  ATK_06+20,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_06+20,  908,  1,  1,  0,  0,  0);

changeAnime(  ATK_06+24,  0,  9);--パンチ
--entryEffect(  ATK_06+24,  23,  0,  1,  10,  -10,  0);
playSe(ATK_06+24,1007);
stopSe( ATK_06+24, SE12, 8 );

changeAnime(  ATK_06+27,  0,  14);--パンチ
dealDamage(  ATK_06+28);
entryEffect(  ATK_06+30,  23,  0x40,  1,  0,  -100,  0);
playSe(ATK_06+30,1013);
stopSe( ATK_06+30, SE13, 8 );
entryEffect(  ATK_06+30,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+30,  908,  1,  1,  0,  0,  0);


setEnvZoomEnable(  ATK_12,  0);

----------------------------
else

--P 連打初期位置
setMoveKey( ATK_01-1, 0,  800,   100, -128);
setMoveKey( ATK_01,   0,  -420, -150, 0);
setRotateKey( ATK_01, 0,  -10);--角度
changeAnime( ATK_01,  0,  9);--パンチ
SE1=playSe(ATK_01,1001);
setSeVolume( ATK_01, 1009, 80 );
--E 初期位置
setMoveKey(  ATK_01-1,  1,  -700,  0,  -128);
setMoveKey(  ATK_01,  1,  -320,  -120,  0);
setRotateKey( ATK_01,  1,  -10);--角度
changeAnime(  ATK_01,  1,  104);--ダメージ

--線
naname=entryEffectLife( ATK_01, 907, 61, 0x80,  -1,  0,  0,  0);
setEffRotateKey(ATK_01,naname,-35);

---------
setMoveKey(  ATK_01+3,  1,  -280,  -100,  0);--E 中央に近づく

setMoveKey(  ATK_01+2,  0,  -420,  -150,  0);
setMoveKey(  ATK_01+5,  0,  -320,  -120,  0);--P 中央に近づく

setEnvZoomEnable( ATK_01+5,1);--ズーム

setMoveKey(  ATK_01+5,  1,  -280,  -100, 0);
setMoveKey(  ATK_01+8,  1,  -250,  -90,  0);--E 中央に近づく

------------一撃目攻撃
setMoveKey(  ATK_01+6,  0,  -320,  -120,  0);
setMoveKey(  ATK_01+9,  0,  -300,  -105,  0);--P 中央に近づく
changeAnime(  ATK_01+7,  0,  10);--パンチ

--ダメージ処理
entryEffect( ATK_01+7,  2,  0,  1,  0,  0, 0);--HIT
--SE2=playSe(ATK_01+7,1000);--SE
entryEffect( ATK_01+7,  908,  0,  1,  0,  0,  0);
entryEffect( ATK_01+8,  906,  0,  -1,  0,  0, 0);
--文字
--entryKakimoji(  ATK_01+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK_01+8,  1,  106);--ダメージ
setDamage(  ATK_01+8,  1,  0);--ダメージ振動等

--------------二撃目
setMoveKey(  ATK_02,   1, -250, -156,  0);
setMoveKey(  ATK_02+4, 1, -180,  -112, 0);--E 中央に近づく

changeAnime( ATK_02+3,  0,  9);--パンチ
setMoveKey(  ATK_02+9,  0,  -300,  -187,  0);
setMoveKey(  ATK_02+5,  0,  -230,  -143,  0);--P 中央に近づく

--ダメージ処理
entryEffect( ATK_02+3,  2,  0,  1,  0,  -30, 0);--HIT
--SE3=playSe(ATK_02+3,1000);--SE
--stopSe( ATK_02+3, SE1, 10 );
SE4=playSe(ATK_02+4,1000);
--stopSe( ATK_02+4, SE2, 8 );
--SE5=playSe(ATK_02+7,1001);
--setSeVolume( ATK_02+7, 1001, 80 );
--stopSe( ATK_02+7, SE3, 8 );
--entryEffect( ATK_02+3,  908,  0,   1,  0,  0, 0);
entryEffect( ATK_02+3, 906,  0,  -1,  0,  0, 0);
--文字
--entryKakimoji(  ATK_01+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK_02+4,  1,  105);--ダメージ
setDamage( ATK_02+4,  1,  0);--ダメージ振動等

--------------三撃目
setMoveKey(  ATK_03,    1,  -180, -112,  0);
setMoveKey(  ATK_03+4,  1,  -80,  -50,   0);--E 中央に近づく

changeAnime( ATK_03+3,  0,  12);--キック
setMoveKey(  ATK_03+2,  0,  -230, -143,  0);
setMoveKey(  ATK_03+6,  0,  -130, -81,   0);--P 中央に近づく
--entryFlashBg( ATK_03+7, 1, 0, 0, 0);

--ダメージ処理
entryEffect( ATK_03+3,  3,  0,  1,  0,  -20, 0);--HIT
--SE6=playSe(ATK_02+10,1000);
---stopSe( ATK_02+10, SE4, 8 );
SE7=playSe(ATK_03+3,1001);--SE
setSeVolume( ATK_03+3, 1001, 80 );
--stopSe( ATK_03+3, SE5, 8 );
--SE8=playSe(ATK_02+12,1000);
--stopSe( ATK_02+12, SE6, 8 );
--SE9=playSe(ATK_02+14,1001);
setSeVolume( ATK_02+14, 1001, 80 );
--stopSe( ATK_02+14, SE7, 8 );

--entryEffect( ATK_03+3,  908,  0,  1,  0,  0, 0);
entryEffect( ATK_03+3, 906,  0, -1,  0,  0, 0);
--文字
--entryKakimoji(  ATK_01+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK_03+4,  1,  108);--ダメージ
setDamage( ATK_03+4,  1,  0);--ダメージ振動等

--------------4撃目

setMoveKey(  ATK_04,    1,  -80,  -50,  0);
setMoveKey(  ATK_04+5,  1,  0,     0,   0);--E 中央に近づく
changeAnime( ATK_04+3,  0,  13);--キック
setMoveKey(  ATK_04+2,  0,  -130, -81,  0);
setMoveKey(  ATK_04+6,  0,  -80,  -31,  0);--P 中央に近づく

--ダメージ処理
entryEffect( ATK_04+3,  1,  0,  1,  0,  -20, 0);--HIT
SE10=playSe(ATK_04+3,1001);--SE
setSeVolume( ATK_04+3, 1001, 80 );
--stopSe( ATK_04+3, SE8, 8);
--entryEffect( ATK_04+3,  908,  0,  1,  0,  0,  0);
entryEffect( ATK_04+3, 906,  0,  -1,  0,  0, 0);
--文字
--entryKakimoji(  ATK_01+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK_04+4,  1,  105);--ダメージ
setDamage( ATK_04+4,  1,  0);--ダメージ振動等

---------------5撃目
setMoveKey(  ATK_05,  1,  0,  0,  0);
setMoveKey(  ATK_05+5,  1,  50,  20,  0);--E 中央に近づく

changeAnime(  ATK_05+3,  0,  11);--パンチ
setMoveKey(  ATK_05+2,  0,  -80,  -31,  0);
setMoveKey(  ATK_05+4,  0,  -25,  0,  0);--P 中央に近づく


--ダメージ処理
entryEffect( ATK_05+5,  4,  0,  1,  0,  0, 0);--HIT
--SE11=playSe(ATK_02+18,1001);
--setSeVolume( ATK_02+18, 1001, 80 );
--stopSe( ATK_02+18, SE9, 8 );
SE12=playSe(ATK_05+3,1009);--SE
--stopSe( ATK_05+3, SE10, 8 );
--SE13=playSe(ATK_02+20,1000);
--stopSe( ATK_02+20, SE11, 8 );
entryEffect( ATK_05+5,  908,  0,  1,  0,  0,  0);
entryEffect( ATK_05+5,  906,  0,  -1,  0,  0, 0);
--文字
entryKakimoji(  ATK_05+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK_05+6,  1,  106);--ダメージ
setDamage( ATK_05+6,  1,  0);--ダメージ振動等

---------------連撃目
changeAnime(  ATK_06,  0,  13);--パンチ
entryEffect(  ATK_06+1,  1,  0,  1,  0,  -15,  0);
SE14=playSe(ATK_06+1,1001);
setSeVolume( ATK_06+1, 1001, 80 );
--stopSe( ATK_06+1, SE12, 8 );
entryEffect(  ATK_06+1,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_06+1,  908,  1,  1,  0,  0,  0);
--entryKakimoji(  ATK_11+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_06+1,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+1,  1,  105);--モーション
-----------------


changeAnime(  ATK_06+4,  0,  9);--パンチ
entryEffect(  ATK_06+4,  1,  0,  1,  0,  -10,  5);
entryEffect(  ATK_06+4,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_06+4,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+4,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+4,  1,  108);--モーション

changeAnime(  ATK_06+7,  0,  12);--パンチ
entryEffect(  ATK_06+7,  2,  0,  1,  0,  -15,  -10);
entryEffect(  ATK_06+7,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_06+7,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+7,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+7,  1,  105);--モーション
--entryFlashBg( ATK_06+7, 1, 0, 0, 0);

changeAnime(  ATK_06+10,  0,  10);--パンチ
entryEffect(  ATK_06+10,  1,  0,  1,  0,  0,  0);
entryEffect(  ATK_06+10,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_06+10,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_06+10,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+10,  1,  108);--モーション

changeAnime(  ATK_06+12,  0,  9);--パンチ
entryEffect(  ATK_06+12,  2,  0,  1,  0,  -5,  -5);
entryEffect(  ATK_06+12,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_06+12,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+12,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+12,  1,  105);--モーション


changeAnime(  ATK_06+14,  0,  12);--パンチ
entryEffect(  ATK_06+14,  3,  0,  1,  0,  0,  0);
entryEffect(  ATK_06+14,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_06+14,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_06+14,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+14,  1,  106);--モーション

changeAnime(  ATK_06+18,  0,  13);--パンチ
entryEffect(  ATK_06+18,  1,  0,  1,  0,  0,  0);
entryEffect(  ATK_06+18,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_06+18,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+18,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+18,  1,  105);--モーション
--entryFlashBg( ATK_06+18, 1, 0, 0, 0);

changeAnime(  ATK_06+20,  0,  10);--パンチ
entryEffect(  ATK_06+20,  2,  0,  1,  0,  -10,  5);
entryEffect(  ATK_06+20,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_06+20,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_06+20,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+20,  1,  108);--モーション

changeAnime(  ATK_06+24,  0,  9);--パンチ
entryEffect(  ATK_06+24,  1,  0,  1,  10,  -10,  0);
playSe(ATK_06+24,1000);
--stopSe( ATK_06+24, SE13, 8 );
entryEffect(  ATK_06+24,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_06+24,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_06+24,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+24,  1,  105);--モーション

changeAnime(  ATK_06+27,  0,  14);--パンチ
dealDamage(  ATK_06+28);
entryEffect(  ATK_06+30,  4,  0,  1,  0,  0,  0);
playSe(ATK_06+30,1010);
--stopSe( ATK_06+30, SE14, 8 );
entryEffect(  ATK_06+30,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_06+30,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_06+30,  1,  0);--ダメージ振動等
changeAnime(  ATK_06+30,  1,  108);--モーション
setQuake( ATK_06+30, 7, 19)
--entryFlash( ATK_06+30, 1, 255, 255, 255);

end
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_06+30;	
        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-----------------------
setEnvZoomEnable(  ATK_12,  0);
setMoveKey(  ATK_12,  0,  -25,  0,  0);--P 中央に近づく
setMoveKey(  ATK_12+13, 0,  -1000,  -200,  -128);
setMoveKey(  ATK_12+15, 0,  -1400,  -200,  -128);

setMoveKey(  ATK_12,     1,  50,  20,  0);--E 中央に近づく
setMoveKey(  ATK_12+15,  1,  280,  280,  66);

setBgScroll( ATK_12,40);
--playSe(ATK_12+20,38);
entryEffect(  ATK_12+20,  700,  0,  0,  0,  0,  0);
--setDisp ( ATK_12+23, 0, 0);
setDisp ( ATK_12+24, 0, 1);
setDisp ( ATK_12+26, 0,0);
setBgScroll( ATK_12+28,1);
changeAnime(  ATK_12+25,  1,  117);--パンチ
setMoveKey(  ATK_12+28,  1,  680,  680,  66);
setMoveKey(  ATK_12+30,  1,  650,  650,  20);
changeAnime(  ATK_end+25,  1,  100);--パンチ
endPhase( ATK_end+25 );
end


print(  "[lua]execa001");

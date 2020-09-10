print(  "[lua]execa002");

rn_01 = 0;
rn_02 = rn_01+48;
ATK_01 = rn_02+18;--205
ATK_02 = ATK_01+2;--211
ATK_03 = ATK_02+4;--218
ATK_04 = ATK_03+3;--228
ATK_05 = ATK_04+3;--236
ATK_06 = ATK_05+11;--250
ATK_07 = ATK_06+2;--256
ATK_08 = ATK_07+3;--262
ATK_09 = ATK_08+3;--268
ATK_101 = ATK_09+5;--205
ATK_102 = ATK_101+2;--211
ATK_103 = ATK_102+4;--218
ATK_104 = ATK_103+3;--228
ATK_105 = ATK_104+3;--236
ATK_106 = ATK_105+11;--250
ATK_107 = ATK_106+2;--256
ATK_108 = ATK_107+3;--262
ATK_109 = ATK_108+3;--268
rn_07 = ATK_108+4;
ATK_00 = rn_07+18;
ATK_000 = rn_07+28;

---------------

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 155, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( rn_01+43, 906, 143, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( rn_01+30, shuchusen, 1.0, 1.0);
--setEffAlphaKey( rn_01+18, shuchusen, 255);

kaisinn = entryEffect( rn_07+10+16, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入
-------------------------
--背景スクロール
setBgScroll( 0, 2);

--setDrawFront( 0, 1, 1);

--P　初期位置
setMoveKey(  0,  0,  -700,  20,  128);
setLastPosKey( 0, 1);
--setMoveKey(  0,  1,  700,  -50,  -128);

changeAnime(  rn_01,  0,  2);
changeAnime(  rn_01,  1,  102);

-------------------------
--蹴り向かう
-------------------------
setMoveKey(  rn_01+12,  0,  -700,  20,  128);
setMoveKey(  rn_01+13,  0,  -180,  50,  128);
setMoveKey(  rn_01+18,  1,  220,  -20,   -128);


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
setMoveKey(  SP_dodge+5, 0, -180,  50,  128);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

changeAnime(  rn_01+30,  0,  16);
--setScaleKey(rn_01+30,0,1,1);
--setScaleKey(rn_01+31,0,0.7,0.7);

--P突進
id1 = entryEffect(  rn_01+26,  908,  0x80,  0,  0,  0,  0);
setEffScaleKey( rn_01+26, id1, 0.5, 0.5);

setMoveKey(  rn_01+29,  0,  -180,  50,  128);
setMoveKey(  rn_01+33,  0,   -320,  -250,  50);

setMoveKey(  rn_01+37,  0,   -230,  -200,  40);
setMoveKey(  rn_01+40,  0,   0,  -180,  0);
changeAnime(  rn_01+40,  0,  12);
setMoveKey(  rn_01+43,  0,-30,   20,  -128);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
--E　いどう
entryKakimoji(  rn_01+20,  1,  4,  1,  0,  -100,  200);--!!

setMoveKey(  rn_01+33,  1,  220,  -20,   -128);
changeAnime(  rn_01+33,  1,  100);
changeAnime(  rn_01+38,  1,  104);
setMoveKey(  rn_01+40,  1,  120,  20,   -128);
entryEffect(  rn_01+44,  23,  0,  1,  0,-100,  0);
playSe(rn_01+44,1008);
--entryEffect(  rn_01+43,  908,  0,  1,  0,  0,  0);
setDamage(  rn_01+43,  1,  0);--ダメージ振動等
--changeAnime(  rn_01+40,  1,  104);
pauseChara(  rn_01+43,  5);

----------------------
--移動
---------------------
--P 移動
setMoveKey(  rn_02,  0,   20,  0,  -80);
changeAnime(  rn_02+5,  0,  1);
setMoveKey(  rn_02+9,  0,   -200,  -80,  0);

--E 移動
setMoveKey(  rn_02,  1,  120,  20,   -128);
setMoveKey(  rn_02+9,  1,  230,  70,   0);

else

-------------------
--E　いどう

entryKakimoji(  rn_01+20,  1,  4,  1,  0,  -100,  200);--!!

setMoveKey(  rn_01+33,  1,  220,  -20,   -128);
changeAnime(  rn_01+33,  1,  100);
changeAnime(  rn_01+38,  1,  104);
setMoveKey(  rn_01+40,  1,  120,  20,   -100);
entryEffect(  rn_01+44,  3,  0,  1,  0,  20,  0);
playSe(rn_01+44,1010);
--entryEffect(  rn_01+43,  908,  0,  1,  0,  0,  0);
setDamage(  rn_01+43,  1,  0);--ダメージ振動等
changeAnime(  rn_01+44,  1,  108);
pauseChara(  rn_01+43,  5);

----------------------
--移動
---------------------
--P 移動
setMoveKey(  rn_02,  0,   20,  0,  -80);
changeAnime(  rn_02+5,  0,  1);
setMoveKey(  rn_02+9,  0,   -200,  -80,  0);

--E 移動
setMoveKey(  rn_02,  1,  120,  20,   -128);
setMoveKey(  rn_02+6,  1,  250,  80,   0);
changeAnime(  rn_02+14,  1,  100);


end
-------------------
--連続攻撃
-------------------
--P 移動 
setMoveKey(  rn_02+15,  0,   -200,  -80,  0);
changeAnime(  rn_02+15,  0,  3);
setMoveKey(  rn_02+18,  0,  -180,  0,  0);

--E 移動
setMoveKey(  rn_02+15,  1,  230,  70,   0);
changeAnime(  rn_02+15,  1,  103);
setMoveKey(  rn_02+18,  1,  180,  0,  0);

tate=entryEffectLife( ATK_01, 907, 80, 0x80,  -1,  0,  0,  0);
setEffRotateKey( ATK_01,tate, -90);
setEffScaleKey( ATK_01,tate, 1.7, 1);

setMoveKey(  ATK_01,  0,  -30,  0,  0);--
setMoveKey(  ATK_01-1,  1,  60,  0,  0);
entryFadeBg( ATK_01+1,  15,  66,  30, 28,0,0,100);
changeAnime(  ATK_01,  0,  12);--キック
setQuake(  ATK_01+1,  9,  10);
setMoveKey(  ATK_01+1,  1,  65,  0,  0);--
setMoveKey(  ATK_01+3,  0,  -45,  0,  0);--

entryEffectLife( ATK_01, 911, 80, 0x80,  -1,  0,  0,  0); -- 流線
entryEffect(  ATK_01,  1,  0,  1,  0,  -30,  -15);
SE1=playSe(ATK_01,1001);
entryEffect(  ATK_01+1,  1,  0,  -1,  0,  0,  0);
entryEffect(  ATK_01+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_01+1,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_01+1,  20,  4,  1,  -1,  -20,  -240);--baki
----entryFlashBg(  ATK_01+1,  5,  255,  255,  255);

setMoveKey(  ATK_02+1,  1,  60,  0,  0);--
setMoveKey(  ATK_02,  0,  -40,  0,  0);--
changeAnime(  ATK_02,  1,  111);--モーション
setMoveKey(  ATK_02+1,  1,  80,  0,  0);
changeAnime(  ATK_02+1,  0,  10);--パンチ1
setMoveKey(  ATK_02+2,  1,  77,  0,  0);
setMoveKey(  ATK_02+2,  0,  -45,  0,  0);
entryEffect(  ATK_02,  1,  0,  -1,  0,  10,  30);
SE2=playSe(ATK_02,1000);
--SE3=playSe(ATK_02+1,1009);
--stopSe( ATK_02+1, SE1, 4 );
entryEffect(  ATK_02+1,  2,  0,  -1,  0,  -5,  -10);
entryEffect(  ATK_02,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_02+1,  2,  4,  -1,  -1,  -30,  240);--gagaga
--setShake(  ATK_02+1,  11,  25);
pauseChara(  ATK_02+3,  1);

setMoveKey(  ATK_03,  0,  -40,  0,  0);--
setMoveKey(  ATK_03,  1,  66,  0,  0);
changeAnime(  ATK_03+1,  0,  9);--パンチ
--setShake(  ATK_03+1,  8,  18)
SE4=playSe(ATK_03+1, 1000);
--stopSe( ATK_03+1, SE2, 4 );
--SE5=playSe(ATK_03+2,1001);
--stopSe( ATK_02+2, SE3, 4 );
entryEffect(  ATK_03+2,  1,  0,  -1,  0,  -5,  18);
entryEffect(  ATK_03,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_03+2,  908,  0,  -1,  0,  -5,  18);
changeAnime(  ATK_03+2,  1,  113);--モーション
pauseChara(  ATK_03+3,  2);
setMoveKey(  ATK_03+3,  0,  -55,  -5,  0);--
setMoveKey(  ATK_03+3,  1,  72,  -5,  0);

setEnvZoomEnable(  ATK_04+3,  1);
setMoveKey(  ATK_04,  0,  -36,  -5,  0);--
changeAnime(  ATK_04+1,  0,  13);--パンチ2
--entryFlashBg(  ATK_04+1,  1,  0,  0,  0);
entryEffect(  ATK_04+1,  1,  0,  1,  0,  0,  0);
SE6=playSe(ATK_04+1,1001);
--stopSe( ATK_04+1, SE4, 4 );
--entryEffect(  ATK_04+1,  908,  0,  1,  0,  0,  0);
entryEffect(  ATK_04+2,  906,  0,  -1,  0,  0,  0);
--entryEffectLife( ATK_04+2, 912, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
changeAnime(  ATK_04+2,  1,  106);--モーション
setMoveKey(  ATK_04+3,  1,  88,  0,  0);
--setShake(  ATK_04+1,  9,  55);

setMoveKey(  ATK_05,  0,  -36,  -10,  0);--
setMoveKey(  ATK_05+1,  0,  -55,  -10,  0);--
setMoveKey(  ATK_05+1,  1,  69,  -10,  0);--

changeAnime(  ATK_05+1,  1,  111);--モーション
changeAnime(  ATK_05+2,  0,  14);--パンチ3
setMoveKey(  ATK_05+3,  0,  -89,  -10,  0);--
entryEffect(  ATK_05+1,  1,  0,  -1,  0,  0,  20);
entryEffect(  ATK_05+5,  1,  0,  -1,  0,  0,  0);
--SE7=playSe(ATK_05+1,1009);
--stopSe( ATK_05+1, SE5, 4 );
SE8=playSe(ATK_05+4,1010);
--stopSe( ATK_05+4, SE6, 4 );
entryEffect(  ATK_05+1,  906,  0,  1,  0,  0,  0);
entryEffect(  ATK_05+5,  908,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_05+5,  19,  4,  -1,  0,  -25,  -250);--どん
--setQuake(  ATK_05+4,  12,  41);
--entryFlashBg(  ATK_05+5,  1,  255,  255,  255);
pauseChara(  ATK_05+7,  4);

-----------------------------------
setMoveKey(  ATK_06,  0,  -50,  -25,  0);--
setMoveKey(  ATK_06-1,  1,  60, -25,  0);

changeAnime(  ATK_06,  0,  9);--パンチ3
entryEffect(  ATK_06,  1,  0,  -1,  0,  0,  50);
--SE9=playSe(ATK_06,1000);
--stopSe( ATK_06, SE7, 4 );
--SE10=playSe(ATK_06+1,1001);
--stopSe( ATK_06+1, SE8, 4 );
--entryEffect(  ATK_06+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_06,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_06+1,  20,  4,  -1,  0,  -20,  -240);--baki
----entryFlashBg(  ATK_06,  5,  255,  255,  255);
changeAnime(  ATK_06+1,  1,  112);--モーション
setMoveKey(  ATK_06+2,  0,  -44,  0,  0);--
setMoveKey(  ATK_06+2,  1,  69,  0,  0);

setMoveKey(  ATK_07+1,  0,  -45,  -35,  0);--
setMoveKey(  ATK_07,  1,  60,  -35,  0);
setMoveKey(  ATK_07+1,  1,  80,  -35,  0);
changeAnime(  ATK_07+1,  0,  14);--パンチ1
entryEffect(  ATK_07+1,  4,  0,  -1,  0,  0,  0);
SE11=playSe(ATK_07,1010);
--stopSe( ATK_07, SE9, 4 );
--SE12=playSe(ATK_07+1,1000);
--stopSe( ATK_07+1, SE10, 4 );
entryEffect(  ATK_07+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_07+1,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_07+1,  2,  4,  -1,  0,  -30,  240);--gagaga
--setShake(  ATK_07+1,  12,  28);
changeAnime(  ATK_07+1,  1,  110);--モーション

setEnvZoomEnable(  ATK_08+3,  0);
setMoveKey(  ATK_08,  0,  -32,  -20,  0);
setMoveKey(  ATK_08,  1,  60,  -20,  0);
changeAnime(  ATK_08+1,  0,  10);--キック
--setShake(  ATK_08+1,  11,  20);
--entryFlashBg(  ATK_08+1,  1,  0,  0,  0);
entryEffect(  ATK_08+1,  1,  0,  -1,  0,  21,  0);
entryEffect(  ATK_08+2,  2,  0,  -1,  0,  -30,  -10);
--SE13=playSe(ATK_08+1,1000);
--stopSe( ATK_08+1, SE11, 4 );
--SE14=playSe(ATK_08+2,1001);
--stopSe( ATK_08+2, SE12, 4 );
entryEffect(  ATK_08,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_08+1,  908,  0,  -1,  0,  0,  0);
changeAnime(  ATK_08+2,  1,  112);--モーション
setMoveKey(  ATK_08+3,  0,  -48,  -40,  0);--
setMoveKey(  ATK_08+3,  1,  71,  -40,  0);

setMoveKey(  ATK_09,  0,  -36,  -10,  0);
setMoveKey(  ATK_09,  1,  67,  -10,  0);
changeAnime(  ATK_09+1,  0,  13);--パンチ2
entryEffect(  ATK_09+1,  1,  0,  -1,  0,  -25,  -20);
entryEffect(  ATK_09+2,  3,  0,  -1,  0,  25,  20);
SE15=playSe(ATK_09+1,1001);
--stopSe( ATK_09+1, SE13, 4 );
--SE16=playSe(ATK_09+2,1001);
--stopSe( ATK_09+2, SE14, 4 );
entryEffect(  ATK_09+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_09+1,  906,  0,  -1,  0,  0,  0);
changeAnime(  ATK_09+2,  1,  112);--モーション
setMoveKey(  ATK_09+4,  0,  -80,  0,  0);--
setMoveKey(  ATK_09+4,  1,  80,  0,  0);--
--setShake(  ATK_09+1,  8,  29);


-------------------
--連続攻撃
-------------------
--P 移動 
setMoveKey(  ATK_101,  0,  -50,  0,  0);

--E 移動
setMoveKey(  ATK_101,  1,  50,  0,  0);

setMoveKey(  ATK_101,  0,  -30,  0,  0);--
setMoveKey(  ATK_101-1,  1,  60,  0,  0);
--entryFadeBg( ATK_101+1,  15,  66,  30, 28,0,0,100);
changeAnime(  ATK_101,  0,  12);--キック
setQuake(  ATK_101+1,  9,  10);
setMoveKey(  ATK_101+1,  1,  65,  0,  0);--
setMoveKey(  ATK_101+3,  0,  -45,  0,  0);--
entryEffect(  ATK_101,  1,  0,  1,  0,  -30,  -15);
SE17=playSe(ATK_101,1001);
--stopSe( ATK_101, SE15, 4 );
entryEffect(  ATK_101+1,  1,  0,  -1,  0,  0,  0);
entryEffect(  ATK_101+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_101+1,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_101+1,  20,  4,  1,  -1,  -20,  -240);--baki
----entryFlashBg(  ATK_101+1,  5,  255,  255,  255);

setMoveKey(  ATK_102+1,  1,  60,  30,  0);--
setMoveKey(  ATK_102,  0,  -40,  30,  0);--
changeAnime(  ATK_102,  1,  111);--モーション
setMoveKey(  ATK_102+1,  1,  80,  -88,  0);
changeAnime(  ATK_102+1,  0,  10);--パンチ1
setMoveKey(  ATK_102+2,  1,  77,  20,  0);
setMoveKey(  ATK_102+2,  0,  -45,  20,  0);
entryEffect(  ATK_102,  1,  0,  -1,  0,  10,  30);
--SE18=playSe(ATK_102,1009);
--stopSe( ATK_102, SE16, 4 );
--SE19=playSe(ATK_102+1,1009);
--stopSe( ATK_102+1, SE17, 4 );
entryEffect(  ATK_102+1,  2,  0,  -1,  0,  -5,  -10);
--entryEffect(  ATK_102,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_102,  906,  0,  -1,  0,  0,  0);
--entryKakimoji(  ATK_102+1,  2,  4,  -1,  -1,  -30,  240);--gagaga
--setShake(  ATK_102+1,  11,  25);
pauseChara(  ATK_102+3,  1);

setMoveKey(  ATK_103,  0,  -40,  10,  0);--
setMoveKey(  ATK_103,  1,  66,  10,  0);
changeAnime(  ATK_103+1,  0,  9);--パンチ
--setShake(  ATK_103+1,  8,  18)
--SE20=playSe(ATK_103+1,1000);
--stopSe( ATK_103+1, SE18, 4 );
--SE21=playSe(ATK_103+2,1001);
--stopSe( ATK_103+2, SE19, 4 );
entryEffect(  ATK_103+2,  2,  0,  -1,  0,  -5,  18);
entryEffect(  ATK_103,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_103+2,  908,  0,  -1,  0,  -5,  18);
changeAnime(  ATK_103+2,  1,  113);--モーション
pauseChara(  ATK_103+3,  2);
setMoveKey(  ATK_103+3,  0,  -55,  0,  0);--
setMoveKey(  ATK_103+3,  1,  72,  0,  0);

setEnvZoomEnable(  ATK_104+3,  1);
setMoveKey(  ATK_104,  0,  -36, 0,  0);--
changeAnime(  ATK_104+1,  0,  13);--パンチ2
----entryFlashBg(  ATK_104+1,  3,  0,  0,  0);
entryEffect(  ATK_104+1,  1,  0,  1,  0,  0,  0);
SE22=playSe(ATK_104+1,1001);
--stopSe( ATK_104+1, SE20, 4 );
entryEffect(  ATK_104+1,  908,  0,  1,  0,  0,  0);
entryEffect(  ATK_104+2,  906,  0,  -1,  0,  0,  0);
changeAnime(  ATK_104+2,  1,  106);--モーション
setMoveKey(  ATK_104+3,  1,  88,  -14,  0);
--setShake(  ATK_104+1,  9,  55);

setMoveKey(  ATK_105,  0,  -36,  0,  0);--
setMoveKey(  ATK_105+1,  0,  -55,  0,  0);--
setMoveKey(  ATK_105+1,  1,  69,  0,  0);--

changeAnime(  ATK_105+1,  1,  111);--モーション
changeAnime(  ATK_105+2,  0,  11);--パンチ3
setMoveKey(  ATK_105+3,  0,  -89,  5,  0);--
entryEffect(  ATK_105+1,  1,  0,  -1,  0,  0,  20);
entryEffect(  ATK_105+5,  2,  0,  -1,  0,  0,  0);
--SE23=playSe( ATK_105+1,1000);
--stopSe( ATK_105+1, SE21, 4 );
--SE24=playSe( ATK_105+3,1009);
--stopSe( ATK_105+3, SE22, 4 );
entryEffect(  ATK_105+1,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_105+5,  908,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_105+5,  19,  4,  -1,  0,  -25,  -250);--どん
--setQuake(  ATK_105+4,  12,  41);
--entryFlashBg(  ATK_105+5,  1,  255,  255,  255);
pauseChara(  ATK_105+7,  4);

-----------------------------------
setMoveKey(  ATK_106,  0,  -50,  0,  0);--
setMoveKey(  ATK_106-1,  1,  60,  0,  0);

changeAnime(  ATK_106,  0,  10);--パンチ3
--setShake(  ATK_106,  10,  21);
entryEffect(  ATK_106,  2,  0,  -1,  0,  0,  50);
--SE25=playSe(ATK_106,1000);
--stopSe( ATK_106, SE23, 4 );
--SE26=playSe(ATK_106+1,1001);
--stopSe( ATK_106+1, SE24, 4 );
entryEffect(  ATK_106+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_106,  906,  0,  -1,  0,  0,  0);
--entryKakimoji(  ATK_106+1,  20,  4,  -1,  0,  -20,  -240);--baki
--entryFlashBg(  ATK_106,  1,  255,  255,  255);
changeAnime(  ATK_106+1,  1,  113);--モーション
setMoveKey(  ATK_106+2,  0,  -44,  30,  0);--
setMoveKey(  ATK_106+2,  1,  69,  30,  0);

setMoveKey(  ATK_107+1,  0,  -45,  20,  0);--
setMoveKey(  ATK_107,  1,  60,  20,  0);
setMoveKey(  ATK_107+1,  1,  80,  20,  0);
changeAnime(  ATK_107+1,  0,  14);--パンチ1
entryEffect(  ATK_107+1,  4,  0,  -1,  0,  0,  0);
--SE28=playSe(ATK_107+2,1010);
--stopSe( ATK_107+2, SE26, 4 );
SE27=playSe(ATK_107+1,1000);
--stopSe( ATK_107+1, SE25, 4 );
--entryEffect(  ATK_107+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_107+1,  906,  0,  -1,  0,  0,  0);
--setShake(  ATK_107+1,  12,  28);
changeAnime(  ATK_107+1,  1,  110);--モーション

setEnvZoomEnable(  ATK_108+3,  0);
setMoveKey(  ATK_108,  0,  -32,  10,  0);
setMoveKey(  ATK_108,  1,  60,  10,  0);
changeAnime(  ATK_108+1,  0,  10);--キック
--setShake(  ATK_108+1,  11,  20);
----entryFlashBg(  ATK_108+1,  2,  0,  0,  0);
entryEffect(  ATK_108+1,  2,  0,  -1,  0,  21,  0);
entryEffect(  ATK_108+2,  3,  0,  -1,  0,  -30,  -10);
--SE29=playSe(ATK_108+1,1000);
--stopSe( ATK_108+1, SE27, 4 );
--SE30=playSe(ATK_108+2,1000);
--stopSe( ATK_108+2, SE28, 4 );
entryEffect(  ATK_108,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_108+1,  908,  0,  -1,  0,  0,  0);
changeAnime(  ATK_108+2,  1,  109);--モーション
setMoveKey(  ATK_108+3,  0,  -48,  0,  0);--
setMoveKey(  ATK_108+3,  1,  71,  0,  0);


setMoveKey(  ATK_109,  0,  -36,  0,  0);
setMoveKey(  ATK_109,  1,  67,  0,  0);
changeAnime(  ATK_109+1,  0,  13);--パンチ2
--entryFlashBg(  ATK_109+1,  1,  0,  0,  0);
entryEffect(  ATK_109+1,  2,  0,  -1,  0,  -25,  -20);
entryEffect(  ATK_109+2,  3,  0,  -1,  0,  25,  20);
SE31=playSe(ATK_109+1,1001);
--stopSe( ATK_109+1, SE29, 4 );
--SE32=playSe(ATK_109+2,1001);
--stopSe( ATK_109+2, SE30, 4 );
entryEffect(  ATK_109+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_109+1,  906,  0,  -1,  0,  0,  0);
changeAnime(  ATK_109+2,  1,  112);--モーション
setMoveKey(  ATK_109+4,  0,  -80,  0,  0);--
setMoveKey(  ATK_109+4,  1,  80,  0,  0);--
--setShake(  ATK_109+1,  8,  29);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------

-------------------
--追撃
-------------------
changeAnime(  rn_07,  1,  104);--モーション
setBgScroll( rn_07, 16);
changeAnime(  rn_07,  0,  11);--モーション
entryEffect(  rn_07+1,  23,  0,   1,  -100,  0,0);
playSe(rn_07+1,1003);
--entryEffect(  rn_07+1,  908,  0,  1,  0,  0,  0);
setDamage(  rn_07+1,  1,  0);--ダメージ振動等

setMoveKey(  rn_07+1,  1,  80,  0,  0);
setMoveKey(  rn_07+3,  1,  130,  0,  0);

setMoveKey(  rn_07+1,  0,  -45,  0,  0);
setMoveKey(  rn_07+3,  0,  30,  0,  0);


changeAnime(  rn_07+4+8,  0,  13);--キック
entryEffect(  rn_07+4+8,  23,  0,   1,  -100,  0,0);
playSe(rn_07+4+8,1003);
--entryEffect(  rn_07+4+8,  908,  0,  1,  0,  0,  0);
setDamage(  rn_07+4+8,  1,  0);--ダメージ振動等


changeAnime(  rn_07+7+13,  0,  10);--パンチ
--entryEffect(  rn_07+7+13, 23,  0,  1,  -100,  0,0);
playSe(rn_07+7+13,1004);
--entryFlashBg( rn_07+7+13,  1,  0,  0,  0);
entryEffect(  rn_07+7+13,  906,  0,  -1,  0,  0,  0);
--entryEffect(  rn_07+7+13,  908,  0,  1,  0,  0,  0);
setDamage(  rn_07+7+13,  1,  0);--ダメージ振動等

setMoveKey(  rn_07+4+13,  0,  -55,  10,  0);
setMoveKey(  rn_07+9+13,  0,  -65,  10,  0);
setMoveKey(  rn_07+6+13, 1,  35,   10,  0);

changeAnime(  rn_07+10+16,  0,  11);--パンチ
--entryFlashBg( rn_07+10+16,  1,  255,  255,  255);
playSe(rn_07+10+16,1003);

entryEffect(  rn_07+11+17,  23,  0,   1,  -100,  0,0);
entryEffect(  rn_07+12+17,  908,  0,  -1,  0,  0,  0);
playSe(rn_07+11+16,1012);
dealDamage(  rn_07+11+16);
changeAnime(  rn_07+12+16,  1,  104);--モーション


else

-------------------
--追撃
-------------------
setBgScroll( rn_07, 16);
changeAnime(  rn_07,  0,  11);--モーション
entryEffect(  rn_07+1,  1,  0,  1,  0,  0,  0);
playSe(rn_07+1,1000);
entryEffect(  rn_07+1,  908,  0,  1,  0,  0,  0);
setDamage(  rn_07+1,  1,  0);--ダメージ振動等
changeAnime(  rn_07+1,  1,  105);--モーション

setMoveKey(  rn_07+1,  1,  80,  0,  0);
setMoveKey(  rn_07+3,  1,  130,  0,  0);

setMoveKey(  rn_07+1,  0,  -45,  0,  0);
setMoveKey(  rn_07+3,  0,  30,  0,  0);


changeAnime(  rn_07+4+8,  0,  13);--キック
entryEffect(  rn_07+4+8,  1,  0,  1,  0,  5,  0);
playSe(rn_07+4+8,1001);
--entryEffect(  rn_07+4+8,  908,  0,  1,  0,  0,  0);
setDamage(  rn_07+4+8,  1,  0);--ダメージ振動等
changeAnime(  rn_07+4+8,  1,  108);--モーション


changeAnime(  rn_07+7+13,  0,  10);--パンチ
entryEffect(  rn_07+7+13,  2,  0,  1,  0,  -5,  0);
playSe(rn_07+7+13,1000);
--entryFlashBg( rn_07+7+13,  1,  0,  0,  0);
entryEffect(  rn_07+7+13,  906,  0,  -1,  0,  0,  0);
--entryEffect(  rn_07+7+13,  908,  0,  1,  0,  0,  0);
setDamage(  rn_07+7+13,  1,  0);--ダメージ振動等
changeAnime(  rn_07+7+13,  1,  105);--モーション

setMoveKey(  rn_07+4+13,  0,  -55,  10,  0);
setMoveKey(  rn_07+9+13,  0,  -65,  10,  0);
setMoveKey(  rn_07+6+13, 1,  35,   10,  0);

changeAnime(  rn_07+10+16,  0,  11);--パンチ
--entryFlashBg( rn_07+10+16,  1,  255,  255,  255);
playSe(rn_07+10+16,1009);
-----------------------------------------------------


entryEffect(  rn_07+11+17,  1,  0,  1,  0,  0,  0);
dealDamage(  rn_07+11+16);
entryEffect(  rn_07+12+16,  906,  0,  -1,  0,  0,  0);
entryEffect(  rn_07+12+16,  908,  0,  1,  0,  0,  0);
setDamage(  rn_07+12+17,  1,  0);--ダメージ振動等
changeAnime(  rn_07+12+17,  1,  108);--モーション

end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = rn_07+12+16;
	
    entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
   

else

tate = entryEffectLife( ATK_000+1, 912, 30, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( ATK_000+1,tate,45);
--setEffScaleKey( ATK_000+1,tate, 1.3, 1.3);

setMoveKey(  ATK_000,  0,  -25,  0,  0);--P 中央に近づく
setMoveKey(  ATK_000+13, 0,  -900,  120,  -50);

setMoveKey(  ATK_000,     1,  50,  20,  0);--E 中央に近づく
setMoveKey(  ATK_000+15,  1,  280,  150,  66);

--playSe(ATK_000+20,38);
entryEffect(  ATK_000+20,  700,  0,  0,  0,  0,  0);
setDisp ( ATK_000+23, 0, 0);
setDisp ( ATK_000+24, 0, 1);
setDisp ( ATK_000+26, 0,0);
stopBgScroll ( ATK_000+28, 1);
setBgScroll( ATK_000+25, -8);
changeAnime(  ATK_000+25,  1,  117);
setMoveKey(  ATK_000+28,  1,  250,  120,  66);
setMoveKey(  ATK_000+30,  1,  230,  100,  44);

--------------------------
changeAnime(  ATK_000+30+44,  1,  100);--モーション

endPhase( ATK_000+30+45);
end


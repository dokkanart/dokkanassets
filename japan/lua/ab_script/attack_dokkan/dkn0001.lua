print ("[lua]exec a0003");

ATK_01 = 0;
ATK_02 = ATK_01+86;
ATK_03 = ATK_02+12;
ATK_04 = ATK_03+20;
ATK_05 = ATK_04+26;
ATK_06 = ATK_05+15;
ATK2_01 = ATK_06+5;
ATK2_02 = ATK2_01+4;
ATK2_03 = ATK2_02+4;
ATK2_04 = ATK2_03+4;
ATK2_05 = ATK2_04+5;
---------------
ATK2_06 = ATK2_05+12;
ATK2_07 = ATK2_06+3;
ATK2_08 = ATK2_07+3;
ATK2_09 = ATK2_08+3;
ATK2_10 = ATK2_09+5;
---------------
ATK2_11 = ATK2_10+65;--瞬間移動
ATK2_12 = ATK2_11+54;
ATK2_13 = ATK2_12+65;
ATK2_14 = ATK2_13+10;
ATK2_15 = ATK2_14+105;
----------------
ATK2_16 = ATK2_15+130;
ATK_dead = ATK2_16+131;
ATK_end = ATK_dead+79;


-----------------------------------------どっかんいくぜーーーい
-- 気合いタメ
setDrawFront( ATK_01, 1, 1);
setMoveKey(   ATK_01,   0, -100,-150,    90);
setMoveKey(  ATK_01,   1,  700,   0,    0);

setMoveKey(  10+ATK_01,   0, -100,-150,    90);
setMoveKey(  37+ATK_01,   0,  -100,-150,   100);
setMoveKey( 45+ATK_01,   0,  -190,-200,  0);
setMoveKey( 50+ATK_01,   0,  150, 200,   -128);
setMoveKey( 55+ATK_01,   0,  150, 200,   -128);

changeAnime( ATK_01, 0, 17);  -- 右上向き
changeAnime( ATK_01, 1, 102);  -- 左下向き

bigeff = entryEffectLife( ATK_01,  1501,  30,  0x80, 0,  0,  0,  90);
setEffScaleKey( ATK_01+20, bigeff, 1, 1);
setEffScaleKey( ATK_01+22, bigeff, 1.3, 1.3);
--entryEffect( ATK_01,   1500,   0,    -1,  0,  0,  90);    -- eff_001

-- ** エフェクト等 ** --
aura = entryEffectLife( ATK_01+5,  311,  28,  0x40, 0,  0,  0,  -35);--気力
setEffScaleKey( ATK_01+5, aura, 0.3, 0.3);
setEffScaleKey( ATK_01+28, aura, 0.3, 0.3);
setEffScaleKey( ATK_01+30, aura, 0.5, 0.5);
playSe( ATK_01+5,1035);

kieff = entryEffectLife( ATK_01+5,  1502, 50,  0,  0,  0,  0,  90);
setEffScaleKey( ATK_01, kieff, 1.5, 1.5);

--speff = entryEffect(  15+ATK_01,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

entryEffectLife( ATK_01+45,   707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002

entryEffect( 33+ATK_01,  11,  0x80,  0,  0,  0,  -10);--爆破
setShake(35+ATK_01, 13, 17);
entryEffect( 35+ATK_01,  908,  0x80,  0,  0,  0,  0);--集中線

changeAnime( 34+ATK_01, 0,  116); -- タックル開始

hiteff = entryEffect( 51+ATK_01,   1,   0,  -1,  0,  150,  200); 
setEffScaleKey( 51+ATK_01, hiteff, 5, 5);
hiteff2 = entryEffect( 51+ATK_01,   1703,   0,  -1,  0,  150,  200);--ガラス割れる演出
setEffScaleKey( 51+ATK_01, hiteff2, 1.5, 1.5);
playSe( 51+ATK_01,1054);

entryFade(50+ATK_01,4, 3, 1, 255,255,255,255);
setShake(54+ATK_01, 11, 20);
setMoveKey( 56+ATK_01,   0,  150, 200,   -128);
setMoveKey( 57+ATK_01,   0,  -700, 0,   0);
changeAnime( 45+ATK_01, 1,  118);  -- 右上向き

------------------------------------------突進部分
setDrawFront( ATK_02, 0, 1);
setDrawFront( ATK_02, 1, 0);
--ズーム
setEnvZoomEnable(ATK_02, 1);
setEnvZoomEnable(ATK_02+15, 0);

--Pダッシュ
changeAnime( ATK_02, 0,  3);  -- 右上向き
 setScaleKey( ATK_02, 0, 1.2, 1.2);--サイズ変更（大）
 playSe( ATK_01+5,1035);

--移動
   setMoveKey( ATK_02,   0,  -700, 0,   30);
   setMoveKey( ATK_02+4,   0,  0, 0,   -100);
   setMoveKey( ATK_02+10,   0,  150, 0,   -50);
   setMoveKey( ATK_02+15,   0,  -100, 0,   -50);
--ガード
changeAnime( ATK_02, 1,  104);  -- 右上向き


--P攻撃（パンチ）
changeAnime( ATK_02+10, 0,  11);
 setRotateKey( ATK_02+9,0,0);--角度調整
 setRotateKey( ATK_02+10,0,20);
 setScaleKey( ATK_02+20, 0, 1,1);--サイズ戻し
 playSe( ATK_02+10,1009);
 
 --P攻撃後の移動
  setMoveKey( ATK_02+18,  0,  -100, 0,   -50);
  setMoveKey( ATK_02+25,  0,  -50, 0,   30);
 
setShake(ATK_02+10,5,20);--シュエイク

--HIT(当たりました)
 entryEffect( ATK_02+15,  4,  0x40,  1,  0,  0,  -30);--大　HIT
 entryKakimoji( ATK_02+15, 21,1, 1, 100, -200);--バゴォッ

setShake(ATK_02+15,20,11);--シュエイク


--調整
pauseChara(ATK_02+10, 7);--硬直調整

--演出
entryEffect( ATK_02+13, 1500,  0,  -1,  0,  0,  0);

aura2 = entryEffectLife( ATK_02+10,  311,  28,  0x40+0x80, 0,  0,  0,  -120);--オーラ
setEffScaleKey( ATK_02+10, aura2, 1.3, 1.3);
setEffScaleKey( ATK_02+26, aura2, 1.3, 1.3);
setEffScaleKey( ATK_02+27, aura2, 1.3, 1.6);


--Eダメージ（ふっ飛び奥へ）
changeAnime( ATK_02+21, 1,  106);  -- 右上向き
 setRotateKey( ATK_02+9,1,0);
 setRotateKey( ATK_02+10,1,20);--角度20ど

 --Eダメージ後の移動
  setMoveKey( ATK_02+5,   1,  700, 0,   -50);
  setMoveKey( ATK_02+10,  1,  250, 0,   -50);
  setMoveKey( ATK_02+15,  1,  100, 0,   -50);

  setMoveKey( ATK_02+18,  1,  100, 0,   -50);
  setMoveKey( ATK_02+25,  1,  50, 0,   30);
  
----------------------------------------------------------
--[[

なし：隠れた亡霊

--]]
---------------------------------------------連打

--Pキャラ
changeAnime( ATK_04, 0,  17);  -- かまえ
changeAnime( ATK_04+3, 0,  3);  --ダッシュ

  --角度もどし
    setRotateKey( ATK_04+3,0,20);
    setRotateKey( ATK_04+4,0,0);

  --移動
    setMoveKey( ATK_04+3,   0,  -250, 40,   -40);
    setMoveKey( ATK_04+10,   0,  -300, 30,   0);
	
	setMoveKey( ATK_04+20,   0,  -280, 30,   0);
    setMoveKey( ATK_04+25,   0,  -200, 60,   -80);

setBgScroll(ATK_04+5,80);

--P移動
changeAnime( ATK_04+25, 0,  12);  -- 蹴り１

--HIT
  entryEffect( ATK_04+25,  3,  0x40,  1,  0,  0,  -30);--HIT
  weff = entryEffect( ATK_04+25,  1600,  0,  -1,  0,  250,  -200);--ガラス
  setEffScaleKey(ATK_04+25,  weff, 0.7,0.7);
  playSe( ATK_04+25,1010);
  
--Eダメージ
changeAnime( ATK_04, 1,  108);  -- 右上向き
 --角度変更
  setRotateKey( ATK_04,1,20);
  setRotateKey( ATK_04+1,1,-10);

 --E移動（ふっ飛んだあとからの〜追跡）
   setMoveKey( ATK_03+10,   1,  120, -20,   0);
   setMoveKey( ATK_04+20,   1,  400, -80,   50);
   setMoveKey( ATK_04+25,   1,  -50, 80,   -80);

changeAnime( ATK_04+25, 1,  106);  -- ダメージモーション


--------------------------------------連打

-----一撃目
--P攻撃
changeAnime( ATK_05,   0, 11);--パンチ１
 --HIT
   entryEffect( ATK_05+1,   2,   0x40,   1,  0, 0,0);
   playSe( ATK_05,1010);--SE

 entryFadeBg( ATK_05, 5, 10, 5, 255,  255,  255, 100);
 setShake( ATK_05, 10, 20);

--Eダメージ
changeAnime( ATK_05+1,  1,   106);-- モーション
 setDamage( ATK_05+1, 1, 0);  -- ダメージ振動等


--P攻撃
changeAnime( ATK_05+4,   0, 13);--蹴り２

--E
changeAnime( ATK_05+4,   1, 108);

 --移動
  setMoveKey( ATK_05+4, 0, -45,  20,  -30);-- 中央位置から
  setMoveKey( ATK_05+4, 1, 65,  20,  -30);-- 中央位置から

--演出
  entryEffect( ATK_05+4,  1,  0x40,  1,  0,-180, 0);
  playSe( ATK_05+4,1009);--SE
  weff2 = entryEffect( ATK_05+4,  1600,  0,  -1,  0,  150,  200);--HIT
  setEffScaleKey(ATK_05+4,  weff2, 0.8,0.8);
  playSe( ATK_05+4,1041);--SE

  entryKakimoji( ATK_05+5, 2,1,-1,0,-50,200);--ガガガガガガ

--攻撃後移動
changeAnime( ATK_05+6, 1, 105);
 
 --移動
  setMoveKey( ATK_05+5, 0, -45,  20,  -30);-- 中央位置から
  setMoveKey( ATK_05+8, 0, -60,  100,  -100);-- 中央位置から 
  setMoveKey( ATK_05+10, 1, 150,  100,  -100);-- 中央位置から  

  setMoveKey( ATK_05+5, 1, 65,  20,  -30);-- 中央位置から
  setMoveKey( ATK_05+8, 1, 150,  100,  -100);-- 中央位置から
  setMoveKey( ATK_05+10, 0, -60,  100,   -100);-- 中央位置から


--突っ込む
 --移動
   setMoveKey( ATK_06, 0, 50,  30,   -20);-- 中央位置から
   setMoveKey( ATK_06, 1, 140,  30,  -20);-- 中央位置から

--Flash
entryFlashBg( ATK_06, 5, 0,  0,  0, 0);

--P 攻撃
changeAnime( ATK_06,   0, 9);

  --HIT
    entryEffect( ATK_06, 1,  0x40,   1,  0, 0,0);
	playSe( ATK_06,1009);--SE
    weff3 = entryEffect( ATK_06,  1600,  0,  -1,  0,  30,  -200);--HIT
    setEffScaleKey(ATK_06,  weff3, 0.3,0.3);
	playSe( ATK_06,1041);--SE

--ダメージ
changeAnime( ATK_06+1, 1,  106);-- モーション
setDamage( ATK_06+2, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( ATK_06+4, 0, 11);
changeAnime( ATK_06+5, 1, 108);

 entryEffect( ATK_06+5, 3,  0,  1,   0,  -20,  0);
 playSe( ATK_06+4, 1009);--SE

--ダメージ
setDamage( ATK_06+5, 1, 0);  -- ダメージ振動等
entryFlashBg( ATK_06+4, 3, 255,  255,  255, 255);

---------------------------------------連撃(このククリは、別のとろころコピペなのでいじらない）
setQuake(  ATK2_01+1,  5,  12);
entryEffect(  ATK2_01,  1,  0,  1,  0,  0,  50);
playSe( ATK2_01,1009);--SE
changeAnime( ATK2_01, 0, 9);
entryEffect(  ATK2_01+1,  908,  0,  1,  0,  0,  50);
entryEffect(  ATK2_01+1,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK2_01+1,  20,  4,  1,  -1,  -20,  -240);--baki
changeAnime(  ATK2_01+1,  1,  106);--モーション
setDamage(  ATK2_01+1,  1,  0);--ダメージ振動等
pauseChara(  ATK2_01+2,  1);

setMoveKey(  ATK2_02,  0,  -35,  0,  -30);
setMoveKey(  ATK2_02,  1,  60,  0,  -100);
setMoveKey(  ATK2_02+1,  1,  80,  0,  -30);
changeAnime(  ATK2_02+1,  0,  10);--パンチ1
playSe(ATK2_02+1,1000);
entryEffect(  ATK2_02+1,  2,  0,  1,  0,  -30,  -20);
entryEffect(  ATK2_02+2,  908,  0,  1,  0,  -30,  -20);
entryEffect(  ATK2_02+2,  906,  0,  -1,  0,  0,  0);
weff4 = entryEffect( ATK2_02+2,  1600,  0x80,  -1,  0,  -250,  100);--HIT
playSe( ATK2_02+2,1041);--SE
setEffScaleKey(ATK2_02+2,  weff4, 1,1);
entryKakimoji(  ATK2_02+1,  2,  4,  1,  -1,  -30,  240);--gagaga
changeAnime(  ATK2_02+2,  1,  108);--モーション
setDamage(  ATK2_02+1,  1,  0);--ダメージ振動等
pauseChara(  ATK2_02+3,  1);

setMoveKey(  ATK2_03,  0,  -100,  -20,  -20);--
setMoveKey(  ATK2_03,  1,  20,  -20,  -20);
changeAnime(  ATK2_03+1,  0,  12);--キック
playSe(ATK2_03+1,1001);
entryEffect(  ATK2_03+1,  1,  0,  1,  10,  15,  20);
entryEffect(  ATK2_03+2,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK2_03+2,  908,  0,  1,  10,  15,  20);
changeAnime(  ATK2_03+2,  1,  106);--モーション

setDamage(  ATK2_03+2,  1,  0);--ダメージ振動等
pauseChara(  ATK2_03+3,  1);

setMoveKey(  ATK2_04,  0,  -50,  -50,  -4);--
setMoveKey(  ATK2_04,  1,  80,  -50,  -40);
changeAnime(  ATK2_04+1,  0,  13);--パンチ2
entryFlashBg(  ATK2_04+1,  3,  0,  0,  0);
playSe(ATK2_04+1,1001);
weff5 = entryEffect(ATK2_04+1,  2000,  0x80,  -1,  0,  200,  -150);--HIT
setEffScaleKey(ATK2_04+1,  weff5, 0.9,0.9);
entryEffect(  ATK2_04+1,  2,  0,  1,  0,  -50,  -30);
entryEffect(  ATK2_04+2,  908,  0,  1,  0,  -50,  -30);
entryEffect(  ATK2_04+2,  906,  0,  -1,  0,  0,  0);
changeAnime(  ATK2_04+2,  1,  105);--モーション
setDamage(  ATK2_04+2,  1,  0);--ダメージ振動等
pauseChara(  ATK2_04+4,  1);

setMoveKey(  ATK2_05,  0,  -30,  0,  0);--
setMoveKey(  ATK2_05+1,  0,  -55,  0,  0);--

changeAnime(  ATK2_05+2,  0,  11);--パンチ3
setMoveKey(  ATK2_05+3,  0,  -89,  0,  -10);--
entryEffect(  ATK2_05+4,  3,  0,  1,  0,  0,  0);
playSe(ATK2_05+4,1009);
entryEffect(  ATK2_05+5,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK2_05+5,  908,  1,  1,  0,  0,  0);
entryKakimoji(  ATK2_05+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK2_05+4,  1,  0);--ダメージ振動等
changeAnime(  ATK2_05+5,  1,  106);--モーション
pauseChara(  ATK2_05+7,  5);
setMoveKey(  ATK2_05+7,  0,  -89,  0,  0);--
-----------------------------------
setMoveKey(  ATK2_06,  0,  -28,  0,  0);--
setMoveKey(  ATK2_06-1,  1,  60,  0,  0);

changeAnime(  ATK2_06,  0,  9);--パンチ3
entryEffect(  ATK2_06,  2,  0,  1,  0,  0,  50);
playSe(ATK2_06,1000);
entryEffect(  ATK2_06+1,  908,  0,  1,  0,  0,  50);
entryEffect(  ATK2_06+1,  906,  0,  -1,  0,  0,  0);
weff6 = entryEffect(ATK2_06+1,  1600,  0x80,  -1,  0,  -40,  230);--HIT
setEffScaleKey(ATK2_06+1,  weff6, 0.2,0.2);

entryKakimoji(  ATK2_06+1,  20,  4,  1,  -1,  -20,  -240);--baki
--entryFlashBg(  ATK2_06,  5,  255,  255,  255);
changeAnime(  ATK2_06+1,  1,  106);--モーション
setDamage(  ATK2_06+1,  1,  0);--ダメージ振動等

setMoveKey(  ATK2_07+1,  0,  -45,  0,  -30);--
setMoveKey(  ATK2_07,  1,  60,  0,  0);
setMoveKey(  ATK2_07+1,  1,  80,  0,  -30);
changeAnime(  ATK2_07+1,  0,  10);--パンチ1
entryEffect(  ATK2_07+1,  3,  0,  1,  0,  -30,  0);

playSe(ATK2_07+1,1000);
entryEffect(  ATK2_07+2,  908,  0,  1,  0,  -30,  0);
entryEffect(  ATK2_07+2,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK2_07+1,  2,  4,  1,  -1,  -30,  240);--gagaga
changeAnime(  ATK2_07+1,  1,  108);--モーション
setDamage(  ATK2_07+2,  1,  0);--ダメージ振動等

setMoveKey(  ATK2_08,  0,  -32,  0,  -20);--
setMoveKey(  ATK2_08,  1,  60,  0,  -20);
changeAnime(  ATK2_08+1,  0,  12);--キック
entryFlashBg(  ATK2_08+1,  2,  0,  0,  0);
playSe(ATK2_08+1,1001);
weff7 = entryEffect(ATK2_08+1,  2000,  0x80,  -1,  0,  40,  120);--HIT
setEffScaleKey(ATK2_08+1,  weff7, 1.2,1.2);
entryEffect(  ATK2_08+1,  2,  0,  1,  10,  15,  20);
entryEffect(  ATK2_08+1,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK2_08+1,  908,  0,  1,  10,  15,  20);
changeAnime(  ATK2_08+2,  1,  106);--モーション
setDamage(  ATK2_08+2,  1,  0);--ダメージ振動等

entryEffect( ATK2_09+1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
setMoveKey(  ATK2_09,  0,  -36,  0,  -20);--
changeAnime(  ATK2_09+1,  0,  13);--パンチ2
playSe(ATK2_09+1,1001);
weff8 = entryEffect(ATK2_09+1,  1600,  0,  -1,  0,  0,  0);--HIT
setEffScaleKey(ATK2_09+1,  weff8, 1.3,1.3);
entryEffect(  ATK2_09+1,  1,  0,  1,  0,  -25,  -20);
entryEffect(  ATK2_09+1,  908,  0,  1,  0,  -25,  -20);
entryEffect(  ATK2_09+1,  906,  0,  -1,  0,  0,  0);
changeAnime(  ATK2_09+2,  1,  105);--モーション
setDamage(  ATK2_09+2,  1,  0);--ダメージ振動等

setMoveKey(  ATK2_10,  0,  -36,  0,  -20);--
setMoveKey(  ATK2_10+2,  0,  -32,  0,  -128);--

setMoveKey(  ATK2_10,  1,  60,  0,  -20);
setMoveKey(  ATK2_10+3,  1,  100,  0,  -128);

-------------------いじらないの終わり
--P攻撃
changeAnime(  ATK2_10+2,  0,  12);--キック

 --移動
  setMoveKey(  ATK2_10+5,  0,  -43,  0,  -128);--
  setMoveKey(  ATK2_10+10,  0,  -32,  0,  -128);

 --HIT
  entryEffect(  ATK2_10+3,  4,  0,  1,  0,  -25,  -20);
  playSe(ATK2_10+3,1009);
  entryEffect(  ATK2_10+3,  908,  0,  1,  0,  -25,  -20);
  entryEffect(  ATK2_10+3,  906,  0,  -1,  0,  0,  0);

--E
changeAnime(  ATK2_10+2,  1,  105);--モーション

 --移動
  setMoveKey(  ATK2_10+10,  1,  100,  0,  -128);

-- ガラス割れ
  entryEffect( ATK2_10,   1500,   0,  -1,  0,  0,  0);    -- 線

  hiteff3 = entryEffect( ATK2_10+20,   1703,   0,  -1,  0,  0,  0);   -- ガラス
  playSe(ATK2_10+20,1041);
  setEffScaleKey( ATK2_10+20, hiteff3, 1, 1);
  
  setEffScaleKey(ATK2_10+35,hiteff3, 1, 1); 
  setEffScaleKey(ATK2_10+37,hiteff3, 1.7, 1.7);
  playSe(ATK2_10+37,1054);
  
  entryFade( ATK2_10+48, 5, 15, 15, 255,  255,  255, 255);

--両者　離れる
 --P
  setMoveKey(  ATK2_10+49,  0,  -45,  0,  -128);
  setMoveKey(  ATK2_10+53,  0,  -145, 0,  -128);
 --E
  setMoveKey(  ATK2_10+49,  1,  110,  0,  -128);
  setMoveKey(  ATK2_10+53,  1,  200,  0,  -128);

----------------瞬間移動へんのまっきーー

entryFadeBg( ATK2_11,  2,  140,  20, 0,0,0,120);
-- (エフェクト全消し)
   removeAllEffect(ATK2_10+66);

setBgScroll(ATK2_11,8);

--P
changeAnime(  ATK2_11,  0,  0);
changeAnime(  ATK2_11+21,  0,  17);--かまえモーション
changeAnime(  ATK2_11+35,  0,  0);

  --サイズ調整
   setScaleKey(ATK2_11, 0, 1,1);
   setScaleKey(ATK2_11+1, 0, 2,2);
   setScaleKey(ATK2_11+20, 0, 1,1);
   
  --角度
   setRotateKey( ATK2_11, 0, 0);
   setRotateKey( ATK2_11+1, 0, 10);
   

  --位置調整
    setMoveKey(  ATK2_11,  0,  -45,  0,  -128);
    setMoveKey(  ATK2_11+1,  0,  100,  20,  -128);
	
	setMoveKey(  ATK2_11+13,  0,  100,  20,  -128);
	setMoveKey(  ATK2_11+18,  0,  -30,  0,  -128);

  --敵退去
    setMoveKey(  ATK2_11,  1,  200,  0,  -128);
    setMoveKey(  ATK2_11+1,  1,  900,  0,  -128);

--演出
  sen = entryEffectLife( ATK2_11+11, 913, 15, 0x80,  -1,  0,  0,  0);
  setEffRotateKey(ATK2_11+11,sen,180);

  entryEffect( ATK2_11,   1500,   0,  -1,  0,  0,  0);
  
  aura3 = entryEffectLife( ATK2_11,  311,  28,  0x40+0x80, 0,  0,  0,  -120);--オーラ
  setEffScaleKey( ATK2_11, aura3, 1.3, 1.3);
  setEffRotateKey(ATK2_11, aura3, -10);

--瞬間移動
  id = entryEffect(  ATK2_11+30, 700, 0x00,  0, 0,   0,  0);
  setEffRotateKey(ATK2_11+30, id, 10);
  setEffScaleKey( ATK2_11+32, id, 1, 1.3);
  playSe(ATK2_11+32,43);

  entryKakimoji( ATK2_11+28,  11,  1,  0,  0,  60,  240);--シュン！！

  --P消える
    setDisp(ATK2_11+35, 0, 0);
--F/o
entryFade( ATK2_11+45, 5, 5, 5, 0,  0,  0, 255);
----------------------------------------------瞬間移動からの出現、蹴り

--E入って来る
changeAnime(  ATK2_12,  1,  105);--モーション
  --角度
   setRotateKey( ATK2_12, 1, 0);
   setRotateKey( ATK2_12+1, 1, 15);

  --外から入って来る
   setMoveKey(  ATK2_12,  1,  900,  0,  -128);
   setMoveKey(  ATK2_12+1,  1,  -150,  -200,  -128);
   setMoveKey(  ATK2_12+20,  1,  0,  0,  0);

--P
changeAnime(  ATK2_12,  0,  112);--蹴り１
setDisp( ATK2_12+1, 0, 1);--消したものは元にもどします

  --角度
    setRotateKey( ATK2_12, 0, 0);
    setRotateKey( ATK2_12+1, 0, 15);

  --移動蹴り
    setMoveKey( ATK2_12,  0,  -170,  120,  -128);
    setMoveKey( ATK2_12+1,  0,  700,  -80,  0);

    setMoveKey( ATK2_12+18,  0,  700,  -80,  0);
    setMoveKey( ATK2_12+21,  0,  100,  -10,  0);

--演出
setEnvZoomEnable( ATK2_12+15,1);--カメラ

  --HIT
    entryEffect( ATK2_12+21,  2,  0,  1,  0,  30,  0);
    playSe(ATK2_12+21,1010); 
	setShake(ATK2_12+21,5,10); 
  --硬直調整
    pauseAll( ATK2_12+21,3);
	
    entryEffectLife( ATK2_12+21, 908,  20, 0x80, -1,  0,  0,  0);
    entryEffect( ATK2_12+21,  906,  0,  -1,  0,  0,  0);

    entryEffect( ATK2_12+22,  2000,   0x80,  -1,  0,  0,  0);--ヒビ
    playSe(ATK2_12+21,1041); 

entryFlashBg(ATK2_12+23,2,0,0,0);

--背景スクロール
setBgScroll( ATK2_12+25,-40)

--E
changeAnime( ATK2_12+21,  1,  8);--モーション
  --角度
   setRotateKey( ATK2_12+25, 1, 15);
   setRotateKey( ATK2_12+26, 1, -10);

  --移動
   setMoveKey(  ATK2_12+25,  1,  0,  0,  0);
   setMoveKey(  ATK2_12+45,  1,  -140,  120,  128);

--殴った後の瞬間移動の流れ

--P
changeAnime(  ATK2_12+40,  0,  118);

   --位置
     setMoveKey( ATK2_12+22,  0,  100,  -10,  0);--
     setMoveKey( ATK2_12+33,  0,  150,  -50,  0);--

     setMoveKey( ATK2_12+35,  0,  150,  -50,  0);--
     setMoveKey( ATK2_12+44,  0,  150,  -50,  -128);--

-------演出

--カメラ戻す
setEnvZoomEnable(ATK2_12+35, 0);
  --瞬間移動
   entryEffect( ATK2_12+45, 700, 0x00,  0, 0,   0,  0);
   playSe(ATK2_12+45,43); 
   entryKakimoji( ATK2_12+41,  11,  1,  0,  0,  -100,  240);--gagaga

--消える
setDisp(ATK2_12+48, 0, 0);

--F/o
entryFade( ATK2_12+50, 5, 5, 5, 0,  0,  0, 255);
-------------------------------------瞬間移動　2撃目
--アトリビの設定
setDrawFront( ATK2_14, 0, 0);

--E
changeAnime(  ATK2_14,  1,  8);--くの字

  --移動
   setMoveKey(  ATK2_14,  1,    -140,  120,  128);
   setMoveKey(  ATK2_14+1,  1,   300,  -50,  -128);

   setMoveKey(  ATK2_14+10,  1,  -30,  0,  50);
   setMoveKey(  ATK2_14+25,  1,  -30,  20,  50);

--P
changeAnime(  ATK2_14,  0,  0);
changeAnime( ATK2_14+26,  0,  14);--蹴り３

  --移動
   setMoveKey( ATK2_14,  0,  150,  -50,  -128);
   setMoveKey( ATK2_14+1,  0,  -130,  0,  60);

   setMoveKey( ATK2_14+24,  0,  -135,  5,  60);
   setMoveKey( ATK2_14+26,  0,  -125,  0,  60);--蹴りの瞬間

--瞬間移動
entryEffect(  ATK2_14+20, 700, 0x80,  0, 0,  0,  0);
playSe(ATK2_14+20,43);

  --キャラ表示
   setDisp(ATK2_14+23, 0, 1);

--演出
--カメラ
setEnvZoomEnable(ATK2_14+20,1);

 --HIT
   entryEffect( ATK2_14+27,  4,  0,  1,  0,  0,  0);
   playSe(ATK2_14+27,1010);  
   
   entryEffectLife( ATK2_14+27, 908,  20, 0x80, -1,  0,  0,  0);
   entryEffect( ATK2_14+27,  906,  0,  -1,  0,  0,  0);

   weff2 = entryEffect( ATK2_14+26,  2000,  0,  1,  0,  0,  0);    --ガラス
   setEffScaleKey(ATK2_14+26,weff2,0.7,0.7);
   setEffRotateKey(ATK2_14+26,weff2,180);
   playSe(ATK2_14+27,1041); 

  --背景スピード
   setBgScroll( ATK2_14+27,30)
  --シュエイク
   setQuake( ATK2_14+27,9,13)

--F/o
entryFlashBg(ATK2_14+28, 2, 0, 0, 0);

--E
changeAnime( ATK2_14+26,  1,  105);--モーション

  --移動
   setMoveKey( ATK2_14+29,  1,  -30,  0,  50);
   setMoveKey( ATK2_14+40,  1,  120,  60,  100);--ふっ飛び

--P
changeAnime( ATK2_14+32,  0,  2);
changeAnime( ATK2_14+42,  0,  18);

  --移動（追跡）
   setMoveKey( ATK2_14+29,  0,  -125,  -30,  60);
   setMoveKey( ATK2_14+35,  0,  -400,  -60,  30);

   setMoveKey( ATK2_14+42,  0,  -200,  -120,  -128);--手前に移動

   setMoveKey( ATK2_14+47,  0,  -200,  -120,  -128);
   setMoveKey( ATK2_14+48,  0,  -200,  -120,  128);--裏技、エフェクトに隠す用

   setMoveKey( ATK2_14+58,  0,  250,  0,  128);--向かう
   setMoveKey( ATK2_14+66,  0,  120,  60,  128);

--演出（光につつまれる）
  eff0 = entryEffectLife(ATK2_14+44, 707,50,0x40,0,0,0,0);
  setEffScaleKey(ATK2_14+44, eff0, 0.1, 0.1);--光をだす
  setEffScaleKey(ATK2_14+48, eff0, 1, 1);
    playSe(ATK2_14+48,1035); 
  
  
  setEffScaleKey(ATK2_14+50, eff0,1, 1);
  setEffScaleKey(ATK2_14+66, eff0, 0.3, 0.3);--遠近感のタメｗ
  
  entryEffect( ATK2_14+67,   4,   0x80,  1,  0,  0,  0);  
  
  --なんか調整？
   pauseAll(ATK2_14+49,10);

  koueff1 = entryEffect( ATK2_14+50,   1500,   0x80,  1,  0,  0,  0);  
  setEffScaleKey(ATK2_14+85,koueff1, 1.2, 1.2);
  entryEffectLife(ATK2_14+47, 908,30,0x80,-1,0,0,0);--集中線
  
  koueff2 = entryEffect( ATK2_14+66,   1500,   0x80,  1,  0,  0,  0);
  setEffScaleKey(ATK2_14+85,koueff2, 1.2, 1.2);
  
  entryEffect( ATK2_14+66,  2000,  0x80,  1,  0,  0,  0);    --ガラス割れ
 -- playSe(ATK2_14+66,1041); 
  playSe(ATK2_14+66,1045);   

 --ガラス割れ（大）
  hiteff5 = entryEffect( ATK2_14+69,   1703,   0x80,  1,  0,  0,  0);
  setEffScaleKey( ATK2_14+69, hiteff5, 1, 1);
  setEffScaleKey(ATK2_14+85,hiteff5, 1, 1);

  setEffScaleKey(ATK2_14+87,hiteff5, 1.4, 1.4);
  --playSe(ATK2_14+85,1054);
  
  --シュエイク
   setQuake( ATK2_14+66,9,13)

--カメラ
setEnvZoomEnable(ATK2_14+50,0);

--F/o
entryFade( ATK2_14+95, 5, 15, 3, 255,  255,  255, 255);
-------------------------------追撃たたき落とし
--エフェクト消す
removeAllEffect(ATK2_14+95+10);

--アトビE手前
setDrawFront( ATK2_15, 1, 1);

--背景移動
setBgScroll(ATK2_15,-20);

--カメラ
setEnvZoomEnable(ATK2_15+20,1);

--P
changeAnime(  ATK2_15,  0,  0);
changeAnime(  ATK2_15+21,  0,  17);
  playSe(ATK2_15+21,1034);
changeAnime(  ATK2_15+35,  0,  0);
changeAnime(  ATK2_15+77,  0,  15);--叩き付けます

  --サイズ
    setScaleKey(ATK2_15, 0, 1,1);
    setScaleKey(ATK2_15+1, 0, 2,2);
    setScaleKey(ATK2_15+20, 0, 1,1);
  --角度
    setRotateKey( ATK2_15, 0, 0);
    setRotateKey( ATK2_15+1, 0, -15);

 --移動
 setMoveKey(  ATK2_15,  0,  120,  60,  128);
 setMoveKey(  ATK2_15+1,  0,  150,  -300,  -128);
 
 setMoveKey(  ATK2_15+13,  0,  150,  -100,  -128);
 setMoveKey(  ATK2_15+20,  0,  -80,  200,  -128);

 setMoveKey(  ATK2_15+35,  0,  -20,  80,  -40);

 setMoveKey(  ATK2_15+39,  0,   -40,  80,  -40);
 setMoveKey(  ATK2_15+41,  0,   -50,  100,  -40);

 setMoveKey(  ATK2_15+55,  0,   -50,  100,  -40);
 setMoveKey(  ATK2_15+66,  0, -280,  230,  100);
 setMoveKey(  ATK2_15+76,  0, -150,  120,  30);


--E
changeAnime(  ATK2_15,  1,  8);--ふっ飛び
changeAnime(  ATK2_15+78,  1,  107);--やられます

  --サイズ
   setScaleKey( ATK2_15+60,1, 1,1);
   setScaleKey( ATK2_15+61,1, 2,2);
   setScaleKey( ATK2_15+75,1, 1,1);

  --角度
   setRotateKey( ATK2_15, 1, 0);
   setRotateKey( ATK2_15+1, 1, -15);

 --移動
 setMoveKey(  ATK2_15,  1,  120,  60,  100);
 setMoveKey(  ATK2_15+1,  1,  700,  0,  -128);

 setMoveKey(  ATK2_15+60,  1,  700,  0,  -128);
 setMoveKey(  ATK2_15+61,  1,  320,  -500,  -128);
 setMoveKey(  ATK2_15+75,  1,  -130,  90,  20);--HITのタイミング
 
 setMoveKey(  ATK2_15+80,  1,  -130,  90,  20);--ふっ飛ばされる
 setMoveKey(  ATK2_15+82,  1,  50,  -50,  0);
 
--演出
--背景スピード　超高速
setBgScroll(ATK2_15,100);

 entryEffect( ATK2_15,   1500,   0x80,  -1,  0,  0,  0);

 aura4 = entryEffectLife( ATK2_15,  311,  100,  0x40+0x80, 0,  0,  0,  -120);--オーラ
 setEffScaleKey( ATK2_15, aura4, 1.3, 1.3);
 setEffScaleKey( ATK2_15+76, aura4, 1.3, 1.3);
 setEffScaleKey( ATK2_15+78, aura4, 2, 2);--殴るタイミングで爆発
 setEffRotateKey(ATK2_15, aura4, -15);
 
 entryEffect( ATK2_15+66,   1501,   0x80,  -1,  0,  0,  0);
  
 entryEffect( ATK2_15+77,  908,  0x80,  0,  0,  0,  0);--集中線
 entryEffect( ATK2_15+77,   4,   0,  1,  0,  0,  0);    --HIT 
 playSe(ATK2_15+77,1052);
  
 entryEffect( ATK2_15+77,   1500,   0x80,  -1,  0,  0,  0);

  entryKakimoji( ATK2_15+77,  20,  1,  -1,  0,  60,  -170);--gagaga

  hiteff5 = entryEffect(ATK2_15+88,   1703,  0,  -1,  0,  0,  0);   --ガラス切り替え
  setEffScaleKey( ATK2_15+88, hiteff5, 1, 1);
  setEffScaleKey(ATK2_15+103,hiteff5, 1, 1);
  setEffScaleKey(ATK2_14+105,hiteff5, 1.4, 1.4);
  playSe(ATK2_14+103,1054);

--F/o
entryFade( ATK2_15+116, 5, 10, 5, 255,  255,  255, 255);
------------------------------叩き付け
--カメラ
setEnvZoomEnable(ATK2_16,0);

--P
  setMoveKey(  ATK2_16,  0,-250,  200,  56);
  setMoveKey(  ATK2_16+1,  0,-700,  0,  0);

--E
changeAnime(  ATK2_16,  1,  108);

 --角度
   setRotateKey(ATK2_16,1,0);
   setRotateKey(ATK2_16+1,1, 30);

   --ふっ飛び
    setMoveKey(  ATK2_16,  1,  -100,  150,  30);
    setMoveKey(  ATK2_16+1,  1,  -400,  300,  30);
    setMoveKey(  ATK2_16+20,  1,  350,  -500,  30);

--爆破演出1
  Bmeff = entryEffect(ATK2_16+20,    1509,  0,  -1,  0,  300,  -200);   -- HIT
  playSe(ATK2_16+20,1023);
  setEffMoveKey(ATK2_16+40, Bmeff,  -1500,-250);
  setEffScaleKey(ATK2_16+20,Bmeff,2,2);
--シェイク
  setShake(ATK2_16+25,10,15);

  entryFadeBg(ATK2_16+20,0,5,5,255,255,255,255);
  entryFlashBg(ATK2_16+25,3,255,255,255);

  weff5 = entryEffect( ATK2_16+20,  1600,  0,  -1,  0,  250,  -150);    -- eff_001
  setEffScaleKey(ATK2_16+20,weff5,1,1);
  setEffRotateKey(ATK2_16+20,weff5,80);

--爆破演出2
setBgScroll(ATK2_16+45,60);
  Bmeff2 = entryEffect(ATK2_16+45,    1509,  0,  -1,  0,  250,  -250);   -- HIT
  playSe(ATK2_16+45,1023);
  setEffScaleKey(ATK2_16+45,Bmeff2,1.2,1.2);
  setEffMoveKey(ATK2_16+79, Bmeff2,  -1400,-280);
  --シェイク
  setShake(ATK2_16+46,10,15);

  entryFadeBg(ATK2_16+45,2,5,5,0,0,0,255);
  entryFlashBg(ATK2_16+52,3,0,0,0);

  weff6 = entryEffect( ATK2_16+45,  1600,  0,  -1,  0,  -200,  -250);    -- eff_001
  setEffScaleKey(ATK2_16+45,weff6,0.6,0.6);
  setEffRotateKey(ATK2_16+45,weff6,0);


--爆破演出3
setBgScroll(ATK2_16+83,40);
  Bmeff2 = entryEffect(ATK2_16+83,    1509,  0,  -1,  0,  250,  -280);   -- HIT
  playSe(ATK2_16+83,1023);
  setEffScaleKey(ATK2_16+83,Bmeff2,0.7,0.7);
  setEffMoveKey(ATK2_16+100, Bmeff2,  -1200,-320);
    --シェイク
  setShake(ATK2_16+84,10,15);

  entryFadeBg(ATK2_16+83,2,5,5,0,0,0,255);
  entryFlashBg(ATK2_16+89,3,255,255,255);

  weff7 = entryEffect( ATK2_16+83,  2000,  0x80,  -1,  0,  -30,  -50);    -- eff_001
  setEffScaleKey(ATK2_16+83,weff7,1,1);
  setEffRotateKey(ATK2_16+83,weff7,-30);

--爆破演出4
setBgScroll(ATK2_16+105,20);
Bmeff3 = entryEffect(ATK2_16+105,    1509,  0,  -1,  0,  0,  -220);   -- HIT
  playSe(ATK2_16+110,1054);
setEffMoveKey(ATK2_16+130, Bmeff3,  -1300,-240);
  --シェイク
  setShake(ATK2_16+130,10,15);
entryFadeBg(ATK2_16+105,2,5,5,0,0,0,255);
entryFlashBg(ATK2_16+110,3,255,255,255);

-----------------------------------
--[[
--E
changeAnime(  ATK2_16+129,  1,  105);--モーション
changeAnime(  ATK2_16+135,  1,  108);--モーション
changeAnime(  ATK2_16+144,  1,  100);--モーション

  --角度
   setRotateKey(ATK2_16+128,1,0);
   setRotateKey(ATK2_16+129,1,-30);

   setRotateKey(ATK2_16+143,1,-30);
   setRotateKey(ATK2_16+144,1,0);

    --移動
     setMoveKey(  ATK2_16+129,  1,  350,  -350,  30);
     setMoveKey(  ATK2_16+130,  1,  -200,  -350, -128);
--   setMoveKey(  ATK2_16+135,  1,  120,  -150,  0);
     setMoveKey(  ATK2_16+145,  1,  240,  50,  0);--

endPhase(150+ATK2_16);

--]]
-- エフェクト全消し
removeAllEffect(ATK2_16+120);

entryEffect( ATK2_16+121,   1703,   0,  -1,  0,  0,  0);   --ガラス
playSe( ATK2_16+121, 1041);--SE
playSe( ATK_dead, 1040);--SE
playSe( ATK2_16+121, 1054);--SE

---------------

playSe( ATK_dead+25, 1035);--SE
playSe( ATK_dead+26, 1027);--SE
entryFade( ATK_dead, 5, 8, 7, 255,255,255,0);

--はじけ
bmeff1 = entryEffect( ATK_dead,  1509,  0,  -1,  0,  -300,  -300);
setEffScaleKey( ATK_dead+1, bmeff1, 1,1);
setEffScaleKey( ATK_dead+23, bmeff1, 1,1);
setEffScaleKey( ATK_dead+30, bmeff1, 1.8,1.8);

entryEffectLife( ATK_dead+2,  1501,  45,  0x80, -1,  0,  0,  0);
entryEffectLife( ATK_dead+25,  1500,  30,  0x80, -1,  0,  0,  0);

--[[
dead_st = entryEffect( ATK_dead+2,  702,  0,  -1,  0,  -280,  -320);
setEffRotateKey( ATK_dead+2, dead_st, 135);
setEffScaleKey( ATK_dead+2, dead_st, 2,2);
--]]

changeAnime( ATK_dead,  1,  108);--ダメージふっ飛び

changeAnime( ATK_dead+25,  1,  105);--ダメージふっ飛び
--サイズ
setScaleKey( ATK_dead, 1, 1.0, 1.0);--大きさ
setScaleKey( ATK_dead+1, 1, 1.1, 1.1);--大きさ

--角度
setRotateKey( ATK_dead+6,1,0);
setRotateKey( ATK_dead+7,1,-20);

--E移動（これは前回の位置を当てはめます）
setMoveKey(  ATK_dead+3,  1,   350,  -500,  30); 
setMoveKey(  ATK_dead+4,  1,  -350,  -250,  -128);
setMoveKey(  ATK_dead+25,  1,  120,  60,  0);
setShake( ATK_dead+25,10,15);

entryFlash( (ATK_dead+16), 1, fcolor_r, fcolor_g, fcolor_b, 200);
entryFlash( (ATK_dead+23), 1, fcolor_r, fcolor_g, fcolor_b, 200);
entryFlash( (ATK_dead+30), 1, fcolor_r, fcolor_g, fcolor_b, 200);

--集中線
dead_sen=entryEffectLife( ATK_dead+7, 921, 30+20, 0x80,  -1,  0,  0,  0);
setEffRotateKey( ATK_dead+7,dead_sen,-30);
setEffScaleKey( ATK_dead+7,dead_sen,1.25,1.25);

---------フェイド開け
setShakeChara( ATK_dead+13, 1, 120,20);--ゆれ
--フェイド白
entryFade( ATK_dead+30, 30, 10, 10, 255,255,255,0);

endPhase(ATK_end);

print ("[lua]exec a0003");

--[[
 修業のスクリプトです
 超大成功
-- ]]

print ("[lua]exec a001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

TIME_ITEM_IN = 60;
ENEMY_CENTER = 180;

-- ズーム許可
setEnvZoomEnable(0, 0);

-- 固有オーラ非表示
setEnableAura(0,  0,  0);
setEnableAura(0,  1,  0);

setBgScroll(0, 0);

entryFade(20, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 味方登場
changeAnime(0, 0, 1);               -- モーション(立ち)
--[[
-- テスト パンチの素振りをいれる
changeAnime(5, 0, 9);               -- パンチ2
changeAnime(10, 0, 1);               -- モーション(立ち)
changeAnime(15, 0, 9);               -- パンチ3
changeAnime(25, 0, 1);               -- モーション(立ち)

playSe(6,1003);
playSe(16,1003);
]]--
setMoveKey(0, 0, 0, 0,  0);      -- 画面中央 ＆ 元サイズ





-- アイテム吸収入ってくる時間と設定
--LE_ActionBankEffect::entryEffectTraining(int phase, int vFrame, int intervalFrame, int attr, int tagId)

--call_back_num = 0
call_back_num = entryEffectTraining(TIME_ITEM_IN, 10, 0,  0x80,  0);

-- atk_obj = Attack.new();
-- atk_obj.punch1();


-- アイテムを使った場合の分岐
ki_time = (call_back_num == 0) and 200 or 350;
-- ki_time = 330; --  * call_back_num;
print (string.format("ki_time %d だよ", ki_time));
entryFadeBg(0, 0,TIME_ITEM_IN + ki_time, 0, 10, 10, 10, 180);       -- 背景ベース暗め

-- not equal
if (call_back_num ~= 0) then
   -- for i = 0, call_back_num 1 do
   for i = 1, call_back_num do
      playSe((TIME_ITEM_IN + 200) + i * 12, 46); -- ポジティブ効果音
   end

end

changeAnime(TIME_ITEM_IN, 0, 17);
-- 気溜め(40F)
entryEffect(TIME_ITEM_IN, 310, 0x40, 0, 1, 0, 0);  -- オーラ出る
aura = entryEffectLife(TIME_ITEM_IN, 311, ki_time - 10, 0x40,  0,  1,  0,  0); -- オーラ中
entryEffect(ki_time + 5, 312, 0x40, 0, 1, 0, 0); -- オーラ終わり
playSe(TIME_ITEM_IN +5, 50); -- 気をためる音
playSe(TIME_ITEM_IN +5, 52); -- 気をためる音
playSeLife(TIME_ITEM_IN +5, 49, ki_time - 10, 0); -- 気をためる音
entryEffect(TIME_ITEM_IN + 25, 311, 0x40, 0, 1, 0, 0); --
setShake(TIME_ITEM_IN, TIME_ITEM_IN + ki_time, 5); -- 画面揺れ
shuchusen = entryEffectLife(TIME_ITEM_IN, 906, ki_time, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(TIME_ITEM_IN, shuchusen, 1.0, 1.0);
setEffScaleKey(TIME_ITEM_IN + 5, shuchusen, 1.0, 1.0);
setEffScaleKey(TIME_ITEM_IN + 20, shuchusen, 2.0, 2.0);



-- 敵登場
TIME_BATTLE_ACTION = TIME_ITEM_IN + ki_time + 20;
print(TIME_BATTLE_ACTION);

-- キャラバック
setMoveKey(TIME_BATTLE_ACTION, 0, 0,  0, 0);-- 中央位置から
changeAnime(TIME_BATTLE_ACTION, 0, 0);               -- モーション(立ち)
setMoveKey(TIME_BATTLE_ACTION + 5, 0, -100,  0,   0);-- 中央位置から


setMoveKey(0, 1, 800, 0, 0);      -- 画面外
setMoveKey(TIME_BATTLE_ACTION, 1, 800, 0, 0);
changeAnime(TIME_BATTLE_ACTION + 20,   1,    101);               -- モーション(立ち)
setMoveKey(TIME_BATTLE_ACTION + 40,   1,  ENEMY_CENTER,  0,   0);      -- 画面中央


-------------------------------------------------------
setEnvZoomEnable(TIME_BATTLE_ACTION + 40, 0);

-- entryFadeBg(TIME_BATTLE_ACTION + 50, 5, 10, 5, 0,  255,  255, 100);


-- -- パンチモーション
TIME_BATTLE_MOTION = TIME_BATTLE_ACTION + 120;

--ATK_01 = TIME_BATTLE_MOTION+25;--205

--ここから


--蹴り
ATK_10 = TIME_BATTLE_MOTION+12;

--連続攻撃
rn_01 = ATK_10+12;

ATK_01 = rn_01+8;--205

ATK_02 = ATK_01+2;--211
ATK_03 = ATK_02+4;--218
ATK_04 = ATK_03+3;--228
ATK_05 = ATK_04+3;
ATK_06 = ATK_05+11;--250
ATK_07 = ATK_06+2;--256
ATK_08 = ATK_07+3;--262
ATK_09 = ATK_08+3;--268

rn_02 = ATK_09+5;
--斜め蹴り上げ
rn_03 = rn_02+30;
rn_04 = rn_03+20;
ATK2_01 = rn_04;
ATK2_02 = ATK2_01+8;
ATK2_03 = ATK2_02+5;
ATK2_04 = ATK2_03+6;
ATK2_05 = ATK2_04+6;
---------------

--ATK2_06 = ATK2_05+10;


ATK3_01 = ATK2_05+10;
ATK3_02 = ATK3_01+20;
ATK3_03 = ATK3_02+54;
ATK3_04 = ATK3_03+75;


TIME_ATTACK_FINAL_BEFORE = ATK3_04 + 82;
TIME_ATTACK_FINAL = TIME_ATTACK_FINAL_BEFORE + 150;


-----------------------------
-- 蹴りのぶつかりから開始
------------------------------
setMoveKey(ATK_10+2,  0, -100,  0,   0);-- 中央位置から
setMoveKey(ATK_10+2,  1,  ENEMY_CENTER,  0,   0);      -- 画面中央

setEnvZoomEnable( ATK_10+3,  1);
changeAnime(  ATK_10+3,  0,  12);
changeAnime(  ATK_10+3,  1,  112);

setMoveKey(  ATK_10+5,  0,  -80,  0,  0);
setMoveKey(  ATK_10+5,  1,  80,  0,  0);
entryEffect(  ATK_10+5,  3,  0,  -1,  0,  0,  20);
playSe(ATK_10+5,107);
entryEffect(  ATK_10+3,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_10+5,  908,  1,  -1,  0,  0,  20);
entryKakimoji(  ATK_10+5,  4,  4,  1,  -1,  -10,  -70);
pauseAll(ATK_10+5,6);

--startBgScroll(  ATK_10+4,  30,  3);
--entryFlash( (ATK_10+6), 1, fcolor_r, fcolor_g, fcolor_b, 100);

setMoveKey(  ATK_10+12,  0,  -80,  0,  0);
setMoveKey(  ATK_10+12,  1,  80,  0,  0);


-------------------
--連続攻撃
-------------------
 --P 移動 
setMoveKey(  rn_01+5,  0,   -200,  -80,  0);
changeAnime(  rn_01+5,  0,  3);
setMoveKey(  rn_01+8,  0,  -180,  0,  0);

--E移動
setMoveKey(  rn_01+5,  1,  230,  70,   0);
changeAnime(  rn_01+5,  1,  103);
setMoveKey(  rn_01+8,  1,  180,  0,  0);

tate=entryEffectLife( ATK_01, 907, 40, 0x80,  -1,  0,  0,  0);
setEffRotateKey( ATK_01,tate, -90);

setEffScaleKey( ATK_01,tate, 1.7, 1);

setMoveKey(  ATK_01,  0,  -30,  0,  0);--
setMoveKey(  ATK_01-1,  1,  60,  0,  0);
entryFadeBg( ATK_01+1,  15,  66,  30, 28,0,0,100);
changeAnime(  ATK_01,  0,  12);--キック
setQuake(  ATK_01+1,  9,  10);
setMoveKey(  ATK_01+1,  1,  65,  0,  0);
setMoveKey(  ATK_01+3,  0,  -45,  0,  0);

entryEffectLife( ATK_01, 911, 40, 0x80,  -1,  0,  0,  0); 
entryEffect(  ATK_01,  1,  0,  1,  0,  -30,  -15);
playSe(ATK_01,101);
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
playSe(ATK_02,100);
playSe(ATK_02+1,106);
entryEffect(  ATK_02+1,  2,  0,  -1,  0,  -5,  -10);

entryEffect(  ATK_02,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_02+1,  2,  4,  -1,  -1,  -30,  240);--gagaga
--setShake(  ATK_02+1,  11,  25);
pauseChara(  ATK_02+3,  1);

setMoveKey(  ATK_03,  0,  -40,  0,  0);--
setMoveKey(  ATK_03,  1,  66,  0,  0);
changeAnime(  ATK_03+1,  0,  9);--パンチ
playSe(ATK_03+1, 100);
playSe(ATK_03+2,101);
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
playSe(ATK_04+1,101);
--entryEffect(  ATK_04+1,  908,  0,  1,  0,  0,  0);
--entryEffect(  ATK_04+2,  906,  0,  -1,  0,  0,  0);

entryEffectLife( ATK_04+2, 906, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
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
playSe(ATK_05+1,106);
playSe(ATK_05+4,107);
entryEffect(  ATK_05+1,  906,  0,  1,  0,  0,  0);

entryEffect(  ATK_05+5,  908,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_05+5,  19,  4,  -1,  0,  -25,  -250);--どん
--setQuake(  ATK_05+4,  12,  41);
--entryFlashBg(  ATK_05+5,  1,  255,  255,  255);
--pauseChara(  ATK_05+7,  4);

-----------------------------------
setMoveKey(  ATK_06,  0,  -50,  -25,  0);--
setMoveKey(  ATK_06-1,  1,  60, -25,  0);

changeAnime(  ATK_06,  0,  9);--パンチ3
entryEffect(  ATK_06,  1,  0,  -1,  0,  0,  50);
playSe(ATK_06,100);
playSe(ATK_06+1,101);
--entryEffect(  ATK_06+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_06,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_06+1,  20,  4,  -1,  0,  -20,  -240);--baki
----entryFlashBg(  ATK_06,  5,  255,  255,  255);
changeAnime(  ATK_06+1,  1,  112);
setMoveKey(  ATK_06+2,  0,  -44,  0,  0);--
setMoveKey(  ATK_06+2,  1,  69,  0,  0);

setMoveKey(  ATK_07+1,  0,  -45,  -35,  0);--
setMoveKey(  ATK_07,  1,  60,  -35,  0);
setMoveKey(  ATK_07+1,  1,  80,  -35,  0);
changeAnime(  ATK_07+1,  0,  14);--パンチ1
entryEffect(  ATK_07+1,  4,  0,  -1,  0,  0,  0);
playSe(ATK_07,107);
playSe(ATK_07+1,100);
entryEffect(  ATK_07+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_07+1,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_07+1,  2,  4,  -1,  0,  -30,  240);--gagaga
--setShake(  ATK_07+1,  12,  28);
changeAnime(  ATK_07+1,  1,  110);--モーション

setEnvZoomEnable(  ATK_08+3,  0);
setMoveKey(  ATK_08,  0,  -32,  -20,  0);

setMoveKey(  ATK_08,  1,  60,  -20,  0);
changeAnime(  ATK_08+1,  0,  10);--キック

entryEffect(  ATK_08+1,  1,  0,  -1,  0,  21,  0);
entryEffect(  ATK_08+2,  2,  0,  -1,  0,  -30,  -10);
playSe(ATK_08+1,100);
playSe(ATK_08+2,101);
entryEffect(  ATK_08,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_08+1,  908,  0,  -1,  0,  0,  0);
changeAnime(  ATK_08+2,  1,  112);
setMoveKey(  ATK_08+3,  0,  -48,  -40,  0);--
setMoveKey(  ATK_08+3,  1,  71,  -40,  0);

setMoveKey(  ATK_09,  0,  -36,  -10,  0);
setMoveKey(  ATK_09,  1,  67,  -10,  0);
changeAnime(  ATK_09+1,  0,  13);--パンチ2
entryEffect(  ATK_09+1,  1,  0,  -1,  0,  -25,  -20);
entryEffect(  ATK_09+2,  3,  0,  -1,  0,  25,  20);
playSe(ATK_09+1,101);
playSe(ATK_09+2,101);
entryEffect(  ATK_09+1,  908,  0,  -1,  0,  0,  0);
entryEffect(  ATK_09+1,  906,  0,  -1,  0,  0,  0);
changeAnime(  ATK_09+2,  1,  112);--モーション
setMoveKey(  ATK_09+4,  0,  -80,  0,  0);--
setMoveKey(  ATK_09+4,  1,  80,  0,  0);--
--setShake(  ATK_09+1,  8,  29);


 -------------------------
--ふっ飛び
-------------------------
--ふっとび
setMoveKey(  rn_02,  0,  -125,  -50,  -32);
setMoveKey(  rn_02,  1,  125,   100,  32);

--モーション
changeAnime(  rn_02+4,  0,  4);
changeAnime(  rn_02+4,  1,  104);

setMoveKey(  rn_02+2,  0,  -250,  -100,  -64);
setMoveKey(  rn_02+2,  1,  250,  250,   64);

setMoveKey(  rn_02+10,  0,  -250,  -100,  -96);
setMoveKey(  rn_02+15,  0,  -260,  -100,  -118);
setMoveKey(  rn_02+20,  0,  -267,  -100,  -126);
setMoveKey(  rn_02+30,  0,  -270,  -100,  -128);

changeAnime(  rn_02+10,  0,  18);

-------------------------
--導入
-------------------------
--背景スクロール
--setBgScroll( 0,40);

--P初期位置
-- setMoveKey(  0,  0,  -700,  0,  -128);
-- setMoveKey(  0,  1,  -700,  0,  0);
changeAnime(  rn_03,  0,  3);

--E初期位置

setMoveKey(  rn_03+5,  0,  -40,  0,  -128);--中央に近づく
setMoveKey(  rn_03+8,  0,  -18,  0,  -128);--中央に近づく

setMoveKey(  rn_03+5,  1,  450,  250,  64);--画面外へ

entryEffectLife(  rn_03+3, 914,  13,  0x80,  -1,  0,  0,  0);
entryKakimoji(  rn_03+11,  6,  4,  0,  -1,  -50,  200);

setMoveKey(  rn_03+10,  0,  -170,  0,  -128);--中央に近づく
setMoveKey(  rn_03+15,  0,  800,  100,  -128);--中央に近づく
playSe(rn_03+11,1018);
playSe(rn_03+10,43);
-------------------------------------------
--連打応酬
-------------------------------------------


--P 連打初期位置
setMoveKey( ATK2_01-1, 0,  800,   100, -128);
setMoveKey( ATK2_01,   0,  -420, -150, 0);
setRotateKey( ATK2_01, 0,  -10);--角度
changeAnime( ATK2_01,  0,  9);--パンチ
playSe(ATK2_01,101);
--E 初期位置
setMoveKey(  ATK2_01-1,  1,  450,  250,   64);
setMoveKey(  ATK2_01,  1,  -320,  -120,  0);
setRotateKey( ATK2_01,  1,  -10);--角度
changeAnime(  ATK2_01,  1,  104);--ダメージ

--線
naname=entryEffectLife( ATK2_01, 907, 61, 0x80,  -1,  0,  0,  0);
setEffRotateKey(ATK2_01,naname,-35);

---------
setMoveKey(  ATK2_01+3,  1,  -280,  -100,  0);--E 中央に近づく

setMoveKey(  ATK2_01+2,  0,  -420,  -150,  0);
setMoveKey(  ATK2_01+5,  0,  -320,  -120,  0);--P 中央に近づく

setEnvZoomEnable( ATK2_01+5,1);--ズーム

setMoveKey(  ATK2_01+5,  1,  -280,  -100, 0);
setMoveKey(  ATK2_01+8,  1,  -250,  -90,  0);--E 中央に近づく

------------一撃目攻撃
setMoveKey(  ATK2_01+6,  0,  -320,  -120,  0);
setMoveKey(  ATK2_01+9,  0,  -300,  -105,  0);--P 中央に近づく
changeAnime(  ATK2_01+7,  0,  10);--パンチ

--ダメージ処理
entryEffect( ATK2_01+7,  2,  0,  1,  0,  0, 0);--HIT
playSe(ATK2_01+7,100);--SE
entryEffect( ATK2_01+7,  908,  0,  1,  0,  0,  0);
entryEffect( ATK2_01+8,  906,  0,  -1,  0,  0, 0);
--文字
--entryKakimoji(  ATK2_01+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK2_01+8,  1,  106);--ダメージ
setDamage(  ATK2_01+8,  1,  0);--ダメージ振動等


--------------二撃目
setMoveKey(  ATK2_02,   1, -250, -156,  0);
setMoveKey(  ATK2_02+4, 1, -180,  -112, 0);--E 中央に近づく

changeAnime( ATK2_02+3,  0,  9);--パンチ
setMoveKey(  ATK2_02+9,  0,  -300,  -187,  0);
setMoveKey(  ATK2_02+5,  0,  -230,  -143,  0);--P 中央に近づく

--ダメージ処理
entryEffect( ATK2_02+3,  2,  0,  1,  0,  -30, 0);--HIT
playSe(ATK2_02+3,100);--SE
--entryEffect( ATK2_02+3,  908,  0,   1,  0,  0, 0);
entryEffect( ATK2_02+3, 906,  0,  -1,  0,  0, 0);
--文字
--entryKakimoji(  ATK2_01+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK2_02+4,  1,  105);--ダメージ
setDamage( ATK2_02+4,  1,  0);--ダメージ振動等

--------------三撃目
setMoveKey(  ATK2_03,    1,  -180, -112,  0);
setMoveKey(  ATK2_03+4,  1,  -80,  -50,   0);--E 中央に近づく

changeAnime( ATK2_03+3,  0,  12);--キック
setMoveKey(  ATK2_03+2,  0,  -230, -143,  0);
setMoveKey(  ATK2_03+6,  0,  -130, -81,   0);--P 中央に近づく
--entryFlashBg( ATK2_03+7, 1, 0, 0, 0);

--ダメージ処理
entryEffect( ATK2_03+3,  3,  0,  1,  0,  -20, 0);--HIT
playSe(ATK2_03+3,101);--SE
--entryEffect( ATK2_03+3,  908,  0,  1,  0,  0, 0);
entryEffect( ATK2_03+3, 906,  0, -1,  0,  0, 0);
--文字
--entryKakimoji(  ATK2_01+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK2_03+4,  1,  108);--ダメージ
setDamage( ATK2_03+4,  1,  0);--ダメージ振動等

--------------4撃目

setMoveKey(  ATK2_04,    1,  -80,  -50,  0);
setMoveKey(  ATK2_04+5,  1,  0,     0,   0);--E 中央に近づく
changeAnime( ATK2_04+3,  0,  13);--キック
setMoveKey(  ATK2_04+2,  0,  -130, -81,  0);
setMoveKey(  ATK2_04+6,  0,  -80,  -31,  0);--P 中央に近づく

--ダメージ処理
entryEffect( ATK2_04+3,  1,  0,  1,  0,  -20, 0);--HIT
playSe(ATK2_04+3,101);--SE
--entryEffect( ATK2_04+3,  908,  0,  1,  0,  0,  0);
entryEffect( ATK2_04+3, 906,  0,  -1,  0,  0, 0);
--文字
--entryKakimoji(  ATK2_01+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK2_04+4,  1,  105);--ダメージ
setDamage( ATK2_04+4,  1,  0);--ダメージ振動等

---------------5撃目
setMoveKey(  ATK2_05,  1,  0,  0,  0);
setMoveKey(  ATK2_05+5,  1,  50,  20,  0);--E 中央に近づく

changeAnime(  ATK2_05+3,  0,  11);--パンチ
setMoveKey(  ATK2_05+2,  0,  -80,  -31,  0);
setMoveKey(  ATK2_05+4,  0,  -25,  0,  0);--P 中央に近づく


--ダメージ処理
entryEffect( ATK2_05+5,  4,  0,  1,  0,  0, 0);--HIT
playSe(ATK2_05+3,106);--SE
entryEffect( ATK2_05+5,  908,  0,  1,  0,  0,  0);
entryEffect( ATK2_05+5,  906,  0,  -1,  0,  0, 0);
--文字
entryKakimoji(  ATK2_05+7,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK2_05+6,  1,  106);--ダメージ
setDamage( ATK2_05+6,  1,  0);--ダメージ振動等

---------------
setDrawFront( ATK3_01, 0, 1);
changeAnime(  ATK3_01,  1,  100);
changeAnime(  ATK3_01,  0,  3);
changeAnime(  ATK3_01+1,  0,  14);
playSe( ATK3_01+1,107);

entryEffectLife( ATK3_01+1, 906, 14, 0x80,  -1,  0,  0,  0);
--entryFlashBg(  ATK3_01+3,  2,  255,  255,  255);

setMoveKey(  ATK3_01,  0,  -30,  0,  -70);
setMoveKey(  ATK3_01,  1,  0,  0,  0);
--setMoveKey(  ATK3_01,  1, 150,  50,  -128);
setMoveKey(  ATK3_01+1,  0,  -50,  -10,  0);
setMoveKey(  ATK3_01+5,  1,  50,  20,  0);--E 中央に近づく
setMoveKey(  ATK3_01+15,  1,  400,  300,  64);
--setMoveKey(  ATK3_01+1,  1,  50,  35,  0);

-----------------------------------------------------


entryEffect(  ATK3_01+3,  4,  0,  1,  0,  0,  0);
entryEffect(  ATK3_01+4,  908,  0,  1,  0,  0,  0);
entryKakimoji( ATK3_01+4,  19,  4,  -1,  0,  -25,  -250);--どん
changeAnime(  ATK3_01+3,  1,  108);
setDamage(  ATK3_01+5,  1,  0);     --ダメージ振動等
pauseChara(  ATK3_01+7, 6);
--pauseAll(  ATK3_01+7, 10);

--setBgScroll(ATK3_01+3,3);

changeAnime(ATK3_01+30, 0, 1); -- モーション(構え)
setRotateKey( ATK3_01+30, 0,  0);--角度
setMoveKey(  ATK3_01+30,  0,  -50,  -10,  0);

---------------------------------------------------------------------------
--	瞬間移動で追撃
---------------------------------------------------------------------------
changeAnime(  ATK3_02+10,  0,  18);--モーション

--entryEffectLife( ATK3_02+14, 906, 32, 0x80,  1,  0,  0,  0); -- 流線斜め

setEnvZoomEnable(  ATK3_02,  0);
--setMoveKey(  ATK3_02+1,  0,  80,  -28,  0);
setMoveKey(  ATK3_02+1,  0,  -50,  -10,  0);
setMoveKey(  ATK3_02+13,  0,  -150,  -90,  -64);

--setMoveKey(  ATK3_02+13,  0,  -250,  -159,  -128);

--setMoveKey(  ATK3_02,  1,  -43,  0,  0);
--setMoveKey(  ATK3_02+15,  1,  -280,  280,  66);

playSe(ATK3_02+20,43);
entryEffect(  ATK3_02+20,  700,  0,  0,  0,  0,  0);
--entryEffect(  ATK3_02+21,  906,  0,  0,  0,  0,  0);
setDisp ( ATK3_02+23, 0, 0);
setDisp ( ATK3_02+24, 0, 1);
setDisp ( ATK3_02+26, 0,0);
entryKakimoji(  ATK3_02+22,  11,  1,  -1,  0,  40,  -50);

--P消える
 setDisp(ATK3_02+35, 0, 0);
--F/o
entryFade( ATK3_02+45, 5, 5, 5, 0,  0,  0, 255);
--entryEffect(  ATK3_02+30,  910,  0,  -1,  0,  0,  0);
---------------------
----------------------------------------------瞬間移動からの出現、蹴り

--E入って来る
changeAnime(  ATK3_03,  1,  105);--モーション
  --角度
   setRotateKey( ATK3_03, 1, 0);
   setRotateKey( ATK3_03+1, 1, 15);

  --外から入って来る
   setMoveKey(  ATK3_03,  1,  700,  0,  -128);
   setMoveKey(  ATK3_03+1,  1,  -150,  -200,  -128);
   setMoveKey(  ATK3_03+20,  1,  0,  0,  0);

--P
changeAnime(  ATK3_03,  0,  112);--蹴り１
setDisp( ATK3_03+1, 0, 1);--消したものは元にもどします

  --角度
    setRotateKey( ATK3_03, 0, 0);
    setRotateKey( ATK3_03+1, 0, 15);

  --移動蹴り
    setMoveKey( ATK3_03,  0,  -170,  120,  -128);
    setMoveKey( ATK3_03+1,  0,  700,  -80,  0);

    setMoveKey( ATK3_03+18,  0,  700,  -80,  0);
    setMoveKey( ATK3_03+21,  0,  100,  -10,  0);

--演出
setEnvZoomEnable( ATK3_03+15,1);--カメラ

  --HIT
    entryEffect( ATK3_03+21,  2,  0,  1,  0,  30,  0);
    playSe(ATK3_03+21,107); 
	setShake(ATK3_03+21,5,10); 
  --硬直調整
    pauseAll( ATK3_03+21,3);
	
    entryEffectLife( ATK3_03+21, 908,  20, 0x80, -1,  0,  0,  0);
    entryEffect( ATK3_03+21,  906,  0,  -1,  0,  0,  0);

 --   entryEffect( ATK3_03+22,  2000,   0x80,  -1,  0,  0,  0);--ヒビ
    playSe(ATK3_03+21,107); 

entryFlashBg(ATK3_03+23,2,0,0,0);

--背景スクロール
setBgScroll( ATK3_03+25,-40)

--E
changeAnime( ATK3_03+21,  1,  8);--モーション
  --角度
   setRotateKey( ATK3_03+25, 1, 15);
   setRotateKey( ATK3_03+26, 1, -10);

  --移動
   setMoveKey(  ATK3_03+25,  1,  0,  0,  0);
   setMoveKey(  ATK3_03+45,  1,  -140,  120,  128);

--殴った後の瞬間移動の流れ

--P
changeAnime(  ATK3_03+40,  0,  118);

   --位置
     setMoveKey( ATK3_03+22,  0,  100,  -10,  0);--
     setMoveKey( ATK3_03+33,  0,  150,  -50,  0);--

     setMoveKey( ATK3_03+35,  0,  150,  -50,  0);--
     setMoveKey( ATK3_03+44,  0,  150,  -50,  -128);--

-------演出

--カメラ戻す
setEnvZoomEnable(ATK3_03+35, 0);
  --瞬間移動
   entryEffect( ATK3_03+45, 700, 0x00,  0, 0,   0,  0);
   playSe(ATK3_03+45,43); 
   entryKakimoji( ATK3_03+41,  11,  1,  0,  0,  -100,  240);--gagaga

--消える
setDisp(ATK3_03+48, 0, 0);

--F/o
entryFade( ATK3_03+50, 5, 5, 5, 0,  0,  0, 255);
-------------------------------------瞬間移動　2撃目


--アトリビの設定
setDrawFront( ATK3_04, 0, 0);

--E
changeAnime(  ATK3_04,  1,  8);--くの字

  --移動
   setMoveKey(  ATK3_04,  1,    -140,  120,  128);
   setMoveKey(  ATK3_04+1,  1,   300,  -50,  -128);

   setMoveKey(  ATK3_04+10,  1,  -30,  0,  50);
   setMoveKey(  ATK3_04+25,  1,  -30,  20,  50);
   setMoveKey(  ATK3_04+47,  1,  30,  20,  0);

--P
changeAnime(  ATK3_04,  0,  0);


changeAnime(  ATK3_04+26,  0,  12);--蹴り1
changeAnime(  ATK3_04+29,  0,  10);--パンチ2
changeAnime(  ATK3_04+32,  0,  9);--パンチ1
changeAnime(  ATK3_04+34,  0,  12);--蹴り1
changeAnime(  ATK3_04+38,  0,  13);--蹴り2
changeAnime(  ATK3_04+40,  0,  12);--蹴り1
changeAnime(  ATK3_04+44,  0,  9);--パンチ1
changeAnime( ATK3_04+48,  0,  14);--蹴り３

  --移動
   setMoveKey( ATK3_04,  0,  150,  -50,  -128);
   setMoveKey( ATK3_04+1,  0,  -130,  0,  60);

   setMoveKey( ATK3_04+24,  0,  -115,  5,  60);
   setMoveKey( ATK3_04+26,  0,  -105,  0,  60);--蹴りの瞬間

   setMoveKey( ATK3_04+48,  0,  -70,  5,  10);
   setMoveKey( ATK3_04+48,  0,  -70,  0,  10);--蹴りの瞬間

--瞬間移動
entryEffect(  ATK3_04+20, 700, 0x80,  0, 0,  0,  0);
playSe(ATK3_04+20,43);

  --キャラ表示
   setDisp(ATK3_04+23, 0, 1);

--演出
--カメラ
setEnvZoomEnable(ATK3_04+20,1);



 --HIT
   entryEffect( ATK3_04+27,  6,  0,  1,  0,  0,  0);
   playSe(ATK3_04+37,101);  
   entryEffect( ATK3_04+27,  906,  0,  1,  0,  0,  0);
   entryEffect( ATK3_04+27,  908,  0,  1,  0,  0,  0);
   setDamage( ATK3_04+27,  1,  0);--ダメージ振動等
 
   entryEffect( ATK3_04+30,  2,  0,  1,  0,  0,  0);
   playSe(ATK3_04+30,102);  
   entryEffect( ATK3_04+30,  906,  0,  1,  0,  0,  0);
   entryEffect( ATK3_04+30,  908,  0,  1,  0,  0,  0);
   setDamage( ATK3_04+30,  1,  0);--ダメージ振動等

   entryEffect( ATK3_04+34,  3,  0,  1,  0,  0,  0);
   playSe(ATK3_04+34,101);  
   entryEffect( ATK3_04+34,  906,  0,  1,  0,  0,  0);
   entryEffect( ATK3_04+34,  908,  0,  1,  0,  0,  0);
   setDamage( ATK3_04+34,  1,  0);--ダメージ振動等

   entryEffect( ATK3_04+38,  6,  0,  1,  0,  0,  0);
   playSe(ATK3_04+38,102);  
   entryEffect( ATK3_04+38,  906,  0,  1,  0,  0,  0);
   entryEffect( ATK3_04+38,  908,  0,  1,  0,  0,  0);
   setDamage( ATK3_04+38,  1,  0);--ダメージ振動等

   playSe(ATK3_04+38,102);  
   entryEffect( ATK3_04+40,  906,  0,  1,  0,  0,  0);
   entryEffect( ATK3_04+40,  908,  0,  1,  0,  0,  0);
   setDamage( ATK3_04+40,  1,  0);--ダメージ振動等

   entryEffect( ATK3_04+48,  2,  0,  1,  0,  0,  0);
   playSe(ATK3_04+480,101);  
   entryEffect( ATK3_04+48,  906,  0,  1,  0,  0,  0);
   entryEffect( ATK3_04+48,  908,  0,  1,  0,  0,  0);
   setDamage( ATK3_04+48,  1,  0);--ダメージ振動等

   entryEffect( ATK3_04+49,  4,  0,  1,  0,  0,  0);
   playSe(ATK3_04+49,107);    
   entryEffectLife( ATK3_04+49, 908,  20, 0x80, -1,  0,  0,  0);
   entryEffect( ATK3_04+49,  906,  0,  -1,  0,  0,  0);
   entryKakimoji( ATK3_04+49,  19,  4,  -1,  0,  20,  -250);--どん
   pauseChara(  ATK3_04+49, 6);


  --背景スピード
   setBgScroll( ATK3_04+49,30)
  --シュエイク
   setQuake( ATK3_04+49,9,13)

--F/o
entryFlashBg(ATK3_04+50, 2, 0, 0, 0);

--E
changeAnime( ATK3_04+26,  1,  105);--モーション

  --移動
   setMoveKey( ATK3_04+51,  1,  -30,  0,  0);
   setMoveKey( ATK3_04+62,  1,  500,  150,  100);--ふっ飛び

--P
setEnvZoomEnable(ATK3_04+49,0);

changeAnime( ATK3_04+72,  0,  1);
setMoveKey( ATK3_04+72,  0,  -70,  0,  10);--蹴りの瞬間
--changeAnime( ATK3_04+42,  0,  18);



---------------------------------------------------------------------------
--	最後の気溜め演出
---------------------------------------------------------------------------

changeAnime(TIME_ATTACK_FINAL_BEFORE, 0, 17); -- モーション(構え)
setRotateKey( TIME_ATTACK_FINAL_BEFORE, 0,  0);--角度

setMoveKey(TIME_ATTACK_FINAL_BEFORE, 0, 0, 0,  0);      -- 画面中央 ＆ 元サイズ
entryEffect(TIME_ATTACK_FINAL_BEFORE, 310, 0x40, 0, 1, 0, 0);  -- オーラ出る
entryEffectLife(TIME_ATTACK_FINAL_BEFORE, 311, TIME_ATTACK_FINAL_BEFORE + 100, 0x40,  0,  1,  0,  0); -- オーラ中
entryEffect(TIME_ATTACK_FINAL_BEFORE + 100, 312, 0x40, 0, 1, 0, 0); -- オーラ終わり
playSe(TIME_ATTACK_FINAL_BEFORE, 50);

-- 敵がオーラでバーンってなる
changeAnime(TIME_ATTACK_FINAL_BEFORE + 10, 1, 108);
-- setDamage(TIME_ATTACK_FINAL_BEFORE + 10, 1, 0);  -- ダメージ振動等
--setMoveKey(TIME_ATTACK_FINAL_BEFORE + 10, 1, 50,  0,   0);-- 中央位置から
playSe(TIME_ATTACK_FINAL_BEFORE, 50);


-- 敵の残像
setZanzou(TIME_ATTACK_FINAL_BEFORE + 9, 1, 0);
setZanzouColor(TIME_ATTACK_FINAL_BEFORE + 9, 1, 200, 200, 255);
setZanzouSpeed(TIME_ATTACK_FINAL_BEFORE + 10, 1, 0, 0);
-- 敵が斜めに吹っ飛ぶ
--setRotateKey(TIME_ATTACK_FINAL_BEFORE + 9, 1, 0);
--setRotateKey(TIME_ATTACK_FINAL_BEFORE + 10, 1, 45);
--setMoveKey(TIME_ATTACK_FINAL_BEFORE + 40, 1, 700,  300,   0);-- 斜めに吹っ飛ぶ



end_time = TIME_ATTACK_FINAL + 80;




print (end_time);
print ("[lua] end")

endPhase(end_time);



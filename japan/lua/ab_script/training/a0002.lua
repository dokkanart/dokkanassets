--[[
 修業のスクリプトです
 大成功
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

---------------

--ATK2_06 = ATK2_05+10;


ATK2_01 = rn_04+16

TIME_ATTACK_FINAL_BEFORE = ATK2_01 + 35;
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
setMoveKey(  rn_03,  0,  -250,  -100,  -64);
changeAnime(  rn_03,  0,  3);

--E初期位置
setMoveKey(  rn_03+5,  0,  -40,  0,  -128);--中央に近づく
setMoveKey(  rn_03+8,  0,  -18,  0,  -128);--中央に近づく

setMoveKey(  rn_03+5,  1,  700,  250,  64);--画面外へ

entryEffectLife(  rn_03+3, 914,  13,  0x80,  -1,  0,  0,  0);
entryKakimoji(  rn_03+11,  6,  4,  0,  -1,  -50,  200);

setMoveKey(  rn_03+10,  0,  -170,  0,  -128);--中央に近づく
setMoveKey(  rn_03+15,  0,  800,  100,  -128);--中央に近づく
playSe(rn_03+11,1018);
playSe(rn_03+10,43);
-------------------------------------------
--追撃の蹴り
-------------------------------------------
-- ズーム許可
setEnvZoomEnable(rn_04, 1);

-- 味方登場
--                f  eid,life, attr, tgt, tag,  x, y
changeAnime( rn_04,  0,  3);               -- モーション（ダッシュ）
setMoveKey(  rn_04-1,  0,  800,  100,  -128);
setMoveKey( rn_04,   0, -700,  -400,   0);   -- 画面外
setMoveKey( rn_04+5,   0, -700,  -400,   0);   -- 画面外
changeAnime( rn_04+5,  0,  12);               -- モーション（ダッシュ）
setMoveKey( rn_04+13,  0, -50,  20,   0);      -- 画面中央 ＆ 元サイズ

-- 敵
-- setMoveKey( rn_04,   1,  800,  -20,   0);      -- 画面外
changeAnime( rn_04,  1,    101);               -- モーション(立ち)
setMoveKey(  rn_04-1,  1,  450,  250,  64);--画面外へ
setMoveKey( rn_04,  1,  -700,  0,   0);      -- 画面中央
setMoveKey( rn_04+10,  1,  50,  0,   0);      -- 画面中央

--集中線
dead_sen=entryEffectLife( rn_04+5, 913, 30+20, 0x80,  -1,  0,  0,  0);

-- 攻撃
setBgScroll(ATK2_01,44);
----entryFlashBg( ATK2_01, 1, 255,  255,  255, 200);
----entryFlashBg( ATK2_01+2, 1, 0,  0,  0, 200);
setShake( ATK2_01, 10, 20);
playSe( ATK2_01,106);--SE
entryEffect( ATK2_01+1,   1,   0x40,  1,   0,  0,  0);
entryEffect( ATK2_01+1,   908,   0,  -1,   0,  0,  0);
entryEffect( ATK2_01+1,   906,   0,  1,   0,  0,  0);

--Eダメージ
changeAnime( ATK2_01+1,  1,   108);-- モーション
setDamage( ATK2_01+1, 1, 0);  -- ダメージ振動等



-- 受け------------------------------------------
-- 味方移動（画面外へ)
setEnvZoomEnable(ATK2_01+9, 0);

--P ふっとび移動
setMoveKey( ATK2_01+6, 0, 0,  0,   0);      -- 中央位置から
--setMoveKey( ATK2_01+12, 0, -700,  70,  0);-- 中央位置から

--changeAnime( ATK2_01+11, 0, 4); 
changeAnime( ATK2_01+13, 0, 0); 

------------------
--E ふっとび移動
setMoveKey( ATK2_01+6, 1, 100,  30,   0);     -- 中央位置から
setMoveKey( ATK2_01+12, 1, 700,  300,  32);-- 画面外へ

changeAnime( ATK2_01+17+15, 1, 104); 
changeAnime( ATK2_01+19+15, 1, 100); 
setBgScroll(ATK2_01+17+15,8);
--setMoveKey( ATK2_01+30, 0, -0,  20,   0);      -- 中央位置から




--爆発演出をカメラ近づけた感じで消す。
--setMoveKey(TIME_ATTACK_FINAL_BEFORE-20, 0, -20,  300,  50);      -- 画面中央 ＆ 元サイズ


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

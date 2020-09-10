--[[
 修業のスクリプトです
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
entryEffectLife(TIME_ITEM_IN, 311, ki_time - 10, 0x40,  0,  1,  0,  0); -- オーラ中
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
TIME_ATTACK_1 = TIME_BATTLE_MOTION;
TIME_ATTACK_2 = TIME_BATTLE_MOTION + 10;
TIME_ATTACK_3 = TIME_BATTLE_MOTION + 20;
TIME_ATTACK_4 = TIME_BATTLE_MOTION + 30;
TIME_ATTACK_5 = TIME_BATTLE_MOTION + 40;
TIME_ATTACK_6 = TIME_BATTLE_MOTION + 50;
TIME_ATTACK_7 = TIME_BATTLE_MOTION + 60;
TIME_ATTACK_8 = TIME_BATTLE_MOTION + 70;
TIME_ATTACK_9 = TIME_BATTLE_MOTION + 80;

TIME_ATTACK_FINAL_BEFORE = TIME_ATTACK_9 + 10;
TIME_ATTACK_FINAL = TIME_BATTLE_MOTION + 150;


-- 攻撃1 パンチ
setMoveKey(TIME_ATTACK_1 - 10, 0, -100, 0,  0);
setMoveKey(TIME_ATTACK_1, 0, 100,  0, 0);-- 中央位置から
setMoveKey(TIME_ATTACK_1, 1, ENEMY_CENTER,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_1 - 2,   0, 11);-- パンチ3
setShake(TIME_ATTACK_1 - 2, 10, 20);
pauseChara(TIME_ATTACK_1 - 1, 3);
entryEffect(TIME_ATTACK_1 - 1,   1,   0,  1,   0,  0,  0);
changeAnime(TIME_ATTACK_1,  1,   106);-- モーション
setDamage(TIME_ATTACK_1 + 1, 1, 0);  -- ダメージ振動等せ
playSe(TIME_ATTACK_1, 100);

entryEffectLife(TIME_ATTACK_1 , 914,  100,   0x80,     -1,  0,  0,  0); -- 白い流線

-- 攻撃2 パンチ
setMoveKey(TIME_ATTACK_2, 0, 50,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_2, 1, 150,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_2 - 2,   0, 9);-- パンチ1
entryEffect(TIME_ATTACK_2,   2,   0,  1,   0,  0,  0);
setDamage(TIME_ATTACK_2 + 1, 1, 0);  -- ダメージ振動等
entryFlashBg(TIME_ATTACK_2 + 1, 5, 255,  255,  255, 255);
playSe(TIME_ATTACK_2, 100);

-- 攻撃3 パンチ
setMoveKey(TIME_ATTACK_3, 0, 50,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_3, 1, 150,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_3 - 1,   0, 11);-- パンチ3
entryEffect(TIME_ATTACK_3,   2,   0,  1,   0,  0,  0);
setDamage(TIME_ATTACK_3 + 1, 1, 0);  -- ダメージ振動等
playSe(TIME_ATTACK_3, 100);

-- 攻撃4 パンチ
setEnvZoomEnable(TIME_ATTACK_4, 1);
setMoveKey(TIME_ATTACK_4, 0, 0,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_4, 1, 100,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_4 - 1,   0, 10);-- パンチ2
entryEffect(TIME_ATTACK_4 - 1,   2,   1,  0,   0,  0,  0);
setDamage(TIME_ATTACK_4, 1, 0);-- ダメージ振動等
setMoveKey(TIME_ATTACK_4, 0, -100,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_4, 1, 50,  0,   0);-- 中央位置から
playSe(TIME_ATTACK_4, 101);

-- 攻撃5 キック
changeAnime(TIME_ATTACK_5, 0, 1);               -- モーション(立ち)
setMoveKey(TIME_ATTACK_5, 0, -100,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_5, 1, 50,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_5,   0, 14);-- キック3
entryEffect(TIME_ATTACK_5 + 2,   906,   0,  1,   0,  0,  0);
entryEffect(TIME_ATTACK_5 + 3,   4,   0,  1,   0,  0,  0);
setQuake(TIME_ATTACK_5 + 3, 15, 10);
pauseChara(TIME_ATTACK_5 + 3, 10);
setDamage(TIME_ATTACK_5 + 4, 1, 0);  -- ダメージ振動等
changeAnime(TIME_ATTACK_5, 1, 106);
playSe(TIME_ATTACK_5, 101);

-- 攻撃6
setMoveKey(TIME_ATTACK_6, 0, 50,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_6, 1, 150,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_6 - 2,   0, 9);-- パンチ1
entryEffect(TIME_ATTACK_6,   2,   0,  1,   0,  0,  0);
setDamage(TIME_ATTACK_6 + 1, 1, 0);  -- ダメージ振動等
entryFlashBg(TIME_ATTACK_6 + 1, 5, 255,  255,  255, 255);
playSe(TIME_ATTACK_6, 100);

-- 攻撃7
setMoveKey(TIME_ATTACK_7, 0, 50,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_7, 1, 150,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_7 - 1,   0, 11);-- パンチ3
entryEffect(TIME_ATTACK_7,   2,   0,  1,   0,  0,  0);
setDamage(TIME_ATTACK_7 + 1, 1, 0);  -- ダメージ振動等
playSe(TIME_ATTACK_7, 100);

-- 攻撃8
setEnvZoomEnable(TIME_ATTACK_8, 1);
setMoveKey(TIME_ATTACK_8, 0, 0,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_8, 1, 100,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_8 - 1,   0, 10);-- パンチ2
entryEffect(TIME_ATTACK_8 - 1,   2,   1,  0,   0,  0,  0);
setDamage(TIME_ATTACK_8, 1, 0);-- ダメージ振動等
setMoveKey(TIME_ATTACK_8, 0, -100,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_8, 1, 50,  0,   0);-- 中央位置から
playSe(TIME_ATTACK_8, 100);

-- 攻撃9
changeAnime(TIME_ATTACK_9, 0, 1);               -- モーション(立ち)
setMoveKey(TIME_ATTACK_9, 0, -100,  0,   0);-- 中央位置から
setMoveKey(TIME_ATTACK_9, 1, 50,  0,   0);-- 中央位置から
changeAnime(TIME_ATTACK_9,   0, 14);-- キック3
entryEffect(TIME_ATTACK_9 + 2,   906,   0,  1,   0,  0,  0);
entryEffect(TIME_ATTACK_9 + 3,   4,   0,  1,   0,  0,  0);
setQuake(TIME_ATTACK_9 + 3, 15, 10);
pauseChara(TIME_ATTACK_9 + 3, 10);
setDamage(TIME_ATTACK_9 + 4, 1, 0);  -- ダメージ振動等
-- changeAnime(TIME_ATTACK_9, 1, 106); -- ダメージ
changeAnime(TIME_ATTACK_9, 1, 104); -- ガード
playSe(TIME_ATTACK_9, 107);


changeAnime(TIME_ATTACK_FINAL_BEFORE, 0, 17); -- モーション(構え)
setMoveKey(TIME_ATTACK_FINAL_BEFORE, 0, 0, 0,  0);      -- 画面中央 ＆ 元サイズ
entryEffect(TIME_ATTACK_FINAL_BEFORE, 310, 0x40, 0, 1, 0, 0);  -- オーラ出る
entryEffectLife(TIME_ATTACK_FINAL_BEFORE, 311, TIME_ATTACK_FINAL_BEFORE + 100, 0x40,  0,  1,  0,  0); -- オーラ中
entryEffect(TIME_ATTACK_FINAL_BEFORE + 100, 312, 0x40, 0, 1, 0, 0); -- オーラ終わり
playSe(TIME_ATTACK_FINAL_BEFORE, 50);

-- 敵がオーラでバーンってなる
changeAnime(TIME_ATTACK_FINAL_BEFORE + 10, 1, 108);
-- setDamage(TIME_ATTACK_FINAL_BEFORE + 10, 1, 0);  -- ダメージ振動等
setMoveKey(TIME_ATTACK_FINAL_BEFORE + 10, 1, 50,  0,   0);-- 中央位置から
playSe(TIME_ATTACK_FINAL_BEFORE, 50);


-- 敵の残像
setZanzou(TIME_ATTACK_FINAL_BEFORE + 9, 1, 0);
setZanzouColor(TIME_ATTACK_FINAL_BEFORE + 9, 1, 200, 200, 255);
setZanzouSpeed(TIME_ATTACK_FINAL_BEFORE + 10, 1, 0, 0);
-- 敵が斜めに吹っ飛ぶ
setRotateKey(TIME_ATTACK_FINAL_BEFORE + 9, 1, 0);
setRotateKey(TIME_ATTACK_FINAL_BEFORE + 10, 1, 45);
setMoveKey(TIME_ATTACK_FINAL_BEFORE + 40, 1, 700,  300,   0);-- 斜めに吹っ飛ぶ



end_time = TIME_ATTACK_FINAL + 80;




print (end_time);
print ("[lua] end")

endPhase(end_time);



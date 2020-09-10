print ("[lua]exec a001");
print ("testtest");

TIME_IN = 0
TIME_IN_POWER = 120

setBgScroll(0, 0);
-- ズーム許可
setEnvZoomEnable(0, 0);

-- 固有オーラ非表示
setEnableAura(0,  0,  0);
setEnableAura(0,  1,  0);

-- 味方登場
--                f  eid,life, attr, tgt, tag,  x, y
changeAnime(0, 0, 3);               -- モーション（ダッシュ）
setMoveKey(0, 0, -700, 0, -128);    -- 画面外

setMoveKey(0, 1, -700, 0, 0);    -- 画面外

setMoveKey(20, 0, 0, 0, -128);      -- 中央に近づく
changeAnime(23, 0, 1);              -- モーション(立ち)
setMoveKey(25, 0, 0, 0, 0);         -- 画面中央 ＆ 元サイズ


------------------------------------------------------
-- 力を貯めてキャラが入ってくる
------------------------------------------------------
ANIM_INTERVAL = 150;
-- 第一引数 int vFrame 開始フレーム
-- 第一引数 int intervalFrame エフェクトの間隔
-- 第一引数 int attr 0x80 ??
-- 第一引数 int tagId 0 固定
call_back_num = entryEffectAwaken(TIME_IN_POWER + 100, ANIM_INTERVAL, 0x80, 0);
ki_time = 300 * call_back_num;


-- 350で音がなるように
for i = 1, call_back_num do
   stime1 = (TIME_IN_POWER - 50) + i * ANIM_INTERVAL;
   stime2 = (TIME_IN_POWER + 120) + i * ANIM_INTERVAL;
   playSe(stime1, 44);
   playSe(stime2, 46); -- 回復アイテム使用効果音
   setShake(TIME_IN_POWER, TIME_IN_POWER + 120); -- 画面揺れ
   entryEffect(stime2, 312, 0x40, 0, 1, 0, 0); -- オーラ終わり
end

changeAnime(TIME_IN_POWER, 0, 17);
-- 気溜め(40F)
playSe(ki_time + 120, 49); -- 気をためる音
playSe(ki_time + 121, 50); -- 気をためる音
entryEffect(TIME_IN_POWER, 310, 0x40, 0, 1, 0, 0);
entryEffectLife(TIME_IN_POWER, 311, ki_time, 0x40,  0,  1,  0,  0); -- オーラ
entryEffect(TIME_IN_POWER + 20, 311, 0x40, 0, 1, 0, 0);
-- 集中線
shuchusen = entryEffectLife(TIME_IN_POWER, 906, ki_time, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(TIME_IN_POWER, shuchusen, 1.0, 1.0);
setEffScaleKey(TIME_IN_POWER + 5, shuchusen, 1.0, 1.0);
setEffScaleKey(TIME_IN_POWER + 20, shuchusen, 2.0, 2.0);

-- 気が爆発してホワイてフェイド
fcolor_r = 255;
fcolor_g = 255;
fcolor_b = 255;
-- white 気が爆発するエフェクト 80frames 覚醒専用エフェクト
if (_IS_ZAWAKEN_ == 1) then
   -- Z覚醒の時
   kakusei_effect = entryEffect(TIME_IN_POWER + ki_time, 31012, 0x40, 0, 1, 0, 0);
else
   -- 普通の覚醒の時
   -- white_effect = entryEffectLife(TIME_IN_POWER + ki_time, 31011, ki_time, 0x00,  -1, 0,  0,  0);   -- 集中線
   kakusei_effect = entryEffect(TIME_IN_POWER + ki_time, 31011, 0x40, 0, 1, 0, 0);
end

setEffScaleKey(TIME_IN_POWER + ki_time + 20, kakusei_effect, 1.0, 1.0);
setEffScaleKey(TIME_IN_POWER + ki_time + 80, kakusei_effect, 1.0, 1.0);
setEffScaleKey(TIME_IN_POWER + ki_time + 100, kakusei_effect, 2.0, 2.0);

-- white fade
entryFade(TIME_IN_POWER + ki_time + 90, 5, 180, 20, fcolor_r, fcolor_g, fcolor_b, 255);


playSeLife(TIME_IN_POWER - 10, 50, TIME_IN_POWER + ki_time, 50); -- 気合い溜め
endPhase(TIME_IN_POWER + ki_time + 140);

print ("[lua]exec a001");

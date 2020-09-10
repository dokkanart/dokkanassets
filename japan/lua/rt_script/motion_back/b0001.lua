if (is_player == 1) then
sign = 1.0
else
sign = -1.0
end

-- 乱数初期化
math.randomseed(r_value)

-- 攻撃
start(setMovie(TARGET_CHARACTER, ATC_KICK_1))
after(moveTo(TARGET_CHARACTER, 0.2, 30 * sign, 0))
after(setMovie(TARGET_CHARACTER, ATC_KICK_3))
after(delay(0.2))
after(setMovie(TARGET_CHARACTER, ATC_KICK_1))
after(delay(0.2))

-- とばされ

s = after(setMovie(TARGET_CHARACTER, DAM_GUARD))

num = math.random(2)

if (num == 1) then
signY = 1.0
else
signY = -1.0
end

after(easeOut(moveTo(TARGET_CHARACTER, 0.25, -100 * sign, -60 * signY), 3.0))
after(setMovie(TARGET_CHARACTER, HEAPUP))

-- 横移動
after(easeIn(moveTo(TARGET_CHARACTER, 0.45, -100 * sign, 60 * signY), 2.0))
after(setMovie(TARGET_CHARACTER, DASH))

after(easeIn(moveTo(TARGET_CHARACTER, 0.5, 30 * sign, 0), 2.0))


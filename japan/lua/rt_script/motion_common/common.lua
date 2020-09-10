-- 初期化

-- 乱数初期化
math.randomseed(r_value)
if is_player == 1 then
sign = 1.0
else
sign = -1.0
end

if is_player == 1 or is_destroy then

num = math.random(3)
kakimoji = { 10005, 10019, 10020 }

-- 書き文字 Load
loadEffect(TARGET_EFFECT2, kakimoji[num])
end

if is_destroy == false then
loadEffect(TARGET_EFFECT1, 1)
end

-- 書き文字表示メソッド
function showKakimoji()
local b = moveTo(TARGET_EFFECT2, 0, 130, 80)
branch(b, scaleTo(TARGET_EFFECT2, 0, 0.7, 0))
after(fadeTo(TARGET_EFFECT2, 0, 0))
local x = after(setVisible(TARGET_EFFECT2, true))
branch(x, fadeTo(TARGET_EFFECT2, 0.1, 255))
branch(x, scaleTo(TARGET_EFFECT2, 0.1, 0.7, 0.7))
after(shake(TARGET_EFFECT2, 0.3, 10, 10))
after(setVisible(TARGET_EFFECT2, false))
return b
end

function randomPosition()
return { 120 + math.random(30, 50) * sign, math.random(10, 50) }
end

function randomSmallPosition()
return { 120 + math.random(30, 50) * sign, math.random(10, 50) }
end


function randomHitEffect()
if is_destroy == false then
after(setMovie(TARGET_EFFECT1, EF_001, false))
pos = randomPosition()
after(moveTo(TARGET_EFFECT1, 0, pos[1], pos[2]))
after(scaleTo(TARGET_EFFECT1, 0, 0.5))
after(setVisible(TARGET_EFFECT1, true))
end
end


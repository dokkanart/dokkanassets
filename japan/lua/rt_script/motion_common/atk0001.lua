-- 攻撃
start(setMovie(TARGET_CHARACTER, ATC_PUNCH_3))
if is_destroy == false then
after(setVisible(TARGET_EFFECT1, false))
end
after(moveTo(TARGET_CHARACTER, 0.1, 30 * sign, 0))
after(setMovie(TARGET_CHARACTER, ATC_PUNCH_4))
randomHitEffect()
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_ENERGYBALL_2))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_PUNCH_1))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_PUNCH_3))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_PUNCH_4))
randomHitEffect()
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_ENERGYBALL_2))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_PUNCH_2))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_DOWN_1))
after(easeOut(moveBy(0, 0.2, 0, 50), 2.5))
after(setMovie(TARGET_CHARACTER, ATC_DOWN_2))
if is_player == 1 or is_destroy then
after(playSe(math.random(100, 109)))
end
randomHitEffect()
after(easeIn(moveBy(TARGET_CHARACTER, 0.1, 0, -70), 2.5))
after(setMovie(TARGET_CHARACTER, DASH))
after(moveBy(TARGET_CHARACTER, 0.1, 20 * sign, 0))
after(moveBy(TARGET_CHARACTER, 0.1, -20 * sign, 0))
after(moveBy(TARGET_CHARACTER, 0, 0, 20))
after(setMovie(TARGET_CHARACTER, ATC_KICK_3))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_ENERGYBALL_2))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_ENERGYBALL_1))
randomHitEffect()
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_PUNCH_3))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_PUNCH_4))
after(delay(0.1))
after(setMovie(TARGET_CHARACTER, ATC_PUNCH_3))
after(easeOut(moveBy(TARGET_CHARACTER, 0.16, -50 * sign, -20), 1.5))

x = after(moveBy(TARGET_CHARACTER, 0.14, 50 * sign, 20))

if is_player == 1 or is_destroy then
branch(x, showKakimoji())
end

if is_destroy == false then
branch(x, setMovie(TARGET_EFFECT1, EF_001, false))
after(moveTo(TARGET_EFFECT1, 0, 120 + 30 * sign, 30))
after(scaleTo(TARGET_EFFECT1, 0, 1.0))
after(setVisible(TARGET_EFFECT1, true))
end
branch(x, setMovie(TARGET_CHARACTER, ATC_PUNCH_4))
if is_player == 1 then
after(playSe(math.random(100, 109)))
end
after(delay(0.16))
if is_destroy == false then
after(setVisible(TARGET_EFFECT1, false))
end

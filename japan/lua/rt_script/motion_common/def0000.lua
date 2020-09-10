-- とばされ
s = after(setMovie(TARGET_CHARACTER, DAM_SIDE))

branch(s, easeOut(moveTo(TARGET_CHARACTER, 0.25, -100 * sign, -50), 3.0))
branch(s, rotateTo(TARGET_CHARACTER, 0.25, -45 * sign, -45 * sign))
after(setMovie(TARGET_CHARACTER, HEAPUP))
after(rotateTo(TARGET_CHARACTER, 0, 0))
after(moveTo(TARGET_CHARACTER, 0.1, -100 * sign, 0))
after(delay(0.15))
after(setMovie(TARGET_CHARACTER, DASH))

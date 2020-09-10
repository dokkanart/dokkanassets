fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

CNT_COUNT_START = 30;
CNT_COUNT_END = 280;

setEnvZoomEnable(0, 0);

entryFade(20, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

changeAnime(0,              0, 3);

-- 画面中央位置
setMoveKey(0,               0,   -850,   0,  0);
setMoveKey(CNT_COUNT_START,  0,      0,   0,  0);

entryFadeBg(0, 0, CNT_COUNT_START, 0, 10, 10, 10, 180);
playSe(CNT_COUNT_START, 46);
changeAnime(CNT_COUNT_START, 0, 17);

-- カウントダウン
showMessageLabel(CNT_COUNT_START);
hideMessageLabel(CNT_COUNT_END - 10);

endPhase(CNT_COUNT_END);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


CNT_HEAL_START = 30;
CNT_HEAL_END = 180;

-- ズーム許可
setEnvZoomEnable(0, 0);

entryFade(20, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( 0, 0, 0);
changeAnime(0, 0, 0); --待機正面向き
syunkan=entryEffect( 0, 700, 0x00,  0, 0,  0,  -20); --瞬間移動
setEffScaleKey( 0, syunkan, 1.5, 1.5);
setDisp( 5, 0, 1);

setMoveKey(CNT_HEAL_START,  0,      0,   0,  0);      -- 画面中央 ＆ 元サイズ

entryFadeBg(0, 0, CNT_HEAL_START, 0, 10, 10, 10, 180);       -- 背景ベース暗め
playSe(CNT_HEAL_START, 46); -- ポジティブ効果音

changeAnime(CNT_HEAL_START, 0, 17);

entryEffect(CNT_HEAL_START+15, 502,0x100, 0, 1, 0, 0);  -- 回復オーラ出る
entryEffect(CNT_HEAL_START+20, 502,0x100, 0, 1, 0, 0);  -- 回復オーラ出る

entryEffect(CNT_HEAL_START+65, 502,0x100, 0, 1, 0, 0);  -- 回復オーラ出る
entryEffect(CNT_HEAL_START+70, 502,0x100, 0, 1, 0, 0);  -- 回復オーラ出る

auraa=entryEffectLife( CNT_HEAL_START,  311, 150 , 0x40, 0,  1,  0,  0);    -- eff_002
setEffScaleKey( CNT_HEAL_START, auraa, 1.7, 1.7);
--setShakeChara( CNT_HEAL_START, 0, 19, 5);

playSe(CNT_HEAL_START, 50); -- 気をためる音
recover(CNT_HEAL_START);

endPhase(CNT_HEAL_END);
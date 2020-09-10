setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

CNT_HEAL_START = 30;
CNT_HEAL_END = 180;

SP_01 = 360;--吸収だよ

SE_03 = 1036; --かめはめ
SE_07 = 1022; --のびる発射

-- ズーム許可
setEnvZoomEnable(0, 0);



setVisibleUI(0, 0);

--removeAllFade(2);
--removeAllFadeBg(2);
removeAllEffect(2);

entryFade(20, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 3, 10, 330, 2, 10, 10, 10, 200);       --ベース暗め　背景

SP_Start = -244;		--気ダメ

--pauseAll( 0, 10);
------------------------------------------------------
-- 吸収エフェクト
------------------------------------------------------
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setScaleKey(   SP_Start+260,   1, 1.0, 1.0);
setScaleKey(   SP_Start+244+100,   1, 1.5, 1.5);
setScaleKey(   SP_Start+244+330,   1, 1.5, 1.5);
setDisp( SP_Start+260, 1, 1);
changeAnime( SP_Start+260, 1,117);                                    -- かめはめ発射ポーズ
--changeAnime( SP_Start+244+100, 0, 1); 
setMoveKey(  SP_Start+259,    1,      0,  -54,   0);
setMoveKey(  SP_Start+270,    1,      0,  -54,   0);
setRotateKey( 2,  1,  0);
--setMoveKey(  SP_Start+290,    0,   -54,  0,   20);

setShakeChara(  SP_Start+244, 1, 4, 0);
setShakeChara(  SP_Start+244+4, 1, 146, 15);

playSe( 50, SE_03);
playSe( 60, SE_03);
playSe( 70, SE_03);
playSe( 80, SE_03);

kamehame_beam = entryEffect( SP_Start+260, SP_01, 0x40,  1,  300,  0,  0);   -- 伸びるかめはめ波

shuchusen = entryEffectLife( SP_Start+260, 906, 132, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start+260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start+300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start+309, shuchusen, 1.3, 1.3);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start+268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_Start+268, ct, 32, 5);
setEffAlphaKey(SP_Start+268, ct, 255);
setEffAlphaKey(SP_Start+290, ct, 255);
setEffAlphaKey(SP_Start+300, ct, 0);
setEffScaleKey(SP_Start+268, ct, 0.0, 0.0);
setEffScaleKey(SP_Start+272, ct, 1.5, 1.5);
setEffScaleKey(SP_Start+292, ct, 1.5, 1.5);
setEffScaleKey(SP_Start+300, ct, 6.0, 6.0);
--playSe( SP_Start+300, SE_07);

entryFade( 140, 9,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_end = 150;

------------------------------------------------------------------------------------------

--entryFade(SP_end+20, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_end+0, 0, 0);
changeAnime(SP_end+0, 1, 101); --待機正面向き
--syunkan=entryEffect( SP_end+0, 700, 0x00,  0, 0,  0,  -20); --瞬間移動
--setEffScaleKey( SP_end+0, syunkan, 1.5, 1.5);

setShakeChara(  SP_end+1, 1, 180, 0);

setMoveKey(SP_end+CNT_HEAL_START,  0,      0,   0,  0);      -- 画面中央 ＆ 元サイズ

entryFadeBg(SP_end+0, 0, CNT_HEAL_START, 0, 10, 10, 10, 180);       -- 背景ベース暗め
playSe(SP_end+CNT_HEAL_START, 46); -- ポジティブ効果音

changeAnime(SP_end+CNT_HEAL_START, 1, 101);

entryEffect(SP_end+CNT_HEAL_START+15, 502,0x40+0x100, 1, 300, 0, -300);  -- 回復オーラ出る
entryEffect(SP_end+CNT_HEAL_START+20, 502,0x40+0x100, 1, 300, 0, -300);  -- 回復オーラ出る

entryEffect(SP_end+CNT_HEAL_START+65, 502,0x40+0x100, 1, 300, 0, -300);  -- 回復オーラ出る
entryEffect(SP_end+CNT_HEAL_START+70, 502,0x40+0x100, 1, 300, 0, -300);  -- 回復オーラ出る

auraa=entryEffectLife( SP_end+CNT_HEAL_START,  311, 150 , 0x40, 1,  300,  0,  -300);    -- eff_002
setEffScaleKey( SP_end+CNT_HEAL_START, auraa, 1.7, 1.7);

playSe(SP_end+CNT_HEAL_START, 50); -- 気をためる音
recover(SP_end+CNT_HEAL_START);

entryFade( 320, 9,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_end+CNT_HEAL_END);
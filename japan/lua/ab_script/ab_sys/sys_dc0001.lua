-- アクションバンク位置戻す用スクリプト
setPhase(0);

--cutin = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffMoveKey( 0,  cutin,  0,  -230,  0);
--setEffReplaceTexture( cutin, 3, 2);                           -- カットイン差し替え

--playSe(0,1026);
setDisp( 0, 1, 0);
setDisp( 1, 1, 0);
changeAnime(  0,  0,  0);
changeAnime(  0,  1,  101);
setMoveKey(  -1,  0,      0,    0,   0);
setMoveKey(  -1,  0,      1000,    0,   0);

entryFadeBg( 0, 0, 30, 20, 10, 10, 10, 180);       -- ベース暗め　背景

endPhase(60);

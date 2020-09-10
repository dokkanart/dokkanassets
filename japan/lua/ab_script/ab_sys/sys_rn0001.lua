-- アクションバンク位置戻す用スクリプト
setPhase(0);


cutin = entryEffect(  0,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffMoveKey( 0,  cutin,  0,  -230,  0);
setEffReplaceTexture( cutin, 3, 2);                           -- カットイン差し替え

--2016/11/15　スクリプトを連続で再生する際に、初期状態に戻す関数を追加
setBgScroll( 0,0);
setShakeChara( 0, 1,1, 0);
setShakeChara( 0, 0, 1, 0);
setShake( 0,1,0);
setMoveKey(  0,  0,      -2000,    0,   0);
setMoveKey(  0,  1,      -2000,    0,   0);

setMoveKey(  60,  0,      -2000,    0,   0);
setMoveKey(  60,  1,      -2000,    0,   0);
--removeAllFade(0);
--removeAllFadeBg(0);
--removeAllEffect(0);
--2016/11/15　スクリプトを連続で再生する際に、初期状態に戻す関数を追加

playSe(0,1026);
changeAnime(  0,  0,  0);
changeAnime(  0,  1,  101);
setMoveKey(  -1,  0,      0,    0,   0);

entryFadeBg( 0, 0, 30, 20, 10, 10, 10, 180);       -- ベース暗め　背景

endPhase(60);

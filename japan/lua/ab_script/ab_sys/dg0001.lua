setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

kame_flag = 0x00;

----------------------------------------------
--回避のジャンプ先
----------------------------------------------

entryFade( 0, 1,  1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setBgScroll( 0,0);

pauseAll( 0, 10);
setShakeChara( 0, 1, 80, 0);
setShakeChara( 0, 0, 80, 0);
setShake( 0,80,0);

changeAnime( 0, 1, 104); -- ガード 仮
setDisp( 0, 0, 0);--仮

setMoveKey(  0,   1, 0,  0,   0); --中央座標に 仮
setRotateKey( 0,  1,  0);

removeAllFade(2);
removeAllFadeBg(2);
removeAllEffect(2);

setDisp( 2, 1, 0);
setRotateKey( 2,  1,  0);
setMoveKey(  2,   1, 0,  0,   0);     --中央座標に 仮
setMoveKey(  3,   1, 0,  20,   0);     --中央座標に
setMoveKey(  22,   1, 0,  20,   0);     --中央座標に

entryEffect( 17, 109054, 0x40+0x100,  1, 300,  0, 0); --瞬間移動
setDisp( 22, 1, 1);
playSe( 27, 43);

setMoveKey(  47,   1, 0,  0,   0);     --中央座標に
changeAnime( 37, 1, 100);                         -- アイドリング


endPhase(77);

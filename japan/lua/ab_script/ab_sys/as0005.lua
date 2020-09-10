--五星龍気弾無効演出
--エフェクトは敵側用につくったけど回避後は敵味方が入れ替わるので、反転しませんでした。
--見せたい演出をつくってください

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 153000;--五星龍が気弾を弾く
--SP_02 = 151946;--

-- ズーム許可
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);--必要

-- ** 冒頭に白フェードを出す ** --
entryFade(4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeシーン切り替わり予定

------------------------------------------------------
-- 五星龍が気弾を弾く(130F)
------------------------------------------------------
spep_1 = 4;

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 130, 0, 0, 0, 0, 255);       --ベース暗め　背景

-- ** 敵を消す ** --
setDisp( spep_1+0, 1, 0);
setDisp( spep_1+0, 0, 0);--キャラ込みのエフェクトのため非表示

-- ** 書き文字 ** --
ct_zudodo = entryEffectLife( spep_1 + 0,  10014, 46, 0x100, -1, 0, -140.1, 289.9 );  --ズドド

setEffShake(  spep_1+0,  ct_zudodo,  46,  20);  --揺れ
setEffMoveKey( spep_1 + 0, ct_zudodo, -140.1, 289.9 , 0 );
setEffMoveKey( spep_1 + 2, ct_zudodo, -143, 295.5 , 0 );
setEffMoveKey( spep_1 + 4, ct_zudodo, -140.1, 288.2 , 0 );
setEffMoveKey( spep_1 + 6, ct_zudodo, -143, 293.8 , 0 );
setEffMoveKey( spep_1 + 40, ct_zudodo, -140, 272.6 , 0 );
setEffMoveKey( spep_1 + 42, ct_zudodo, -142.9, 278.2 , 0 );
setEffMoveKey( spep_1 + 44, ct_zudodo, -140.1, 270.8 , 0 );
setEffMoveKey( spep_1 + 46, ct_zudodo, -140.1, 269.9 , 0 );

setEffScaleKey( spep_1 + 0, ct_zudodo, 1.8, 1.8 );
setEffScaleKey( spep_1 + 46, ct_zudodo, 1.8, 1.8 );
setEffRotateKey( spep_1 + 0, ct_zudodo, 50 );
setEffRotateKey( spep_1 + 46, ct_zudodo, 50 );

setEffAlphaKey( spep_1 + 0, ct_zudodo, 255 );
setEffAlphaKey( spep_1 + 38, ct_zudodo, 255 );
setEffAlphaKey( spep_1 + 40, ct_zudodo, 191 );
setEffAlphaKey( spep_1 + 42, ct_zudodo, 128 );
setEffAlphaKey( spep_1 + 44, ct_zudodo, 64 );
setEffAlphaKey( spep_1 + 46, ct_zudodo, 0 );

-- ** 集中線 ** --
shuchusen = entryEffectLife(  spep_1+98,  906,  12,  0x100,  -1,  100,  0,  0);  --集中線

setEffScaleKey( spep_1+98,  shuchusen,  1.5,  1.2);
setEffScaleKey( spep_1+110,  shuchusen,  1.5,  1.2);
setEffMoveKey(  spep_1+98,  shuchusen,  100,  0,  0);
setEffMoveKey(  spep_1+110,  shuchusen,  100,  0,  0);
setEffRotateKey(  spep_1+98,  shuchusen,  0);
setEffRotateKey(  spep_1+110,  shuchusen,  0);
setEffAlphaKey(  spep_1+98,  shuchusen,  255);
setEffAlphaKey(  spep_1+110,  shuchusen,  255);


-- ** 流線 ** --
nanamesen = entryEffectLife(spep_1, 921, 130, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_1, nanamesen, 1.3, 1.2);
setEffScaleKey(spep_1+130, nanamesen, 1.3, 1.2);
setEffAlphaKey(spep_1,nanamesen,255);
setEffAlphaKey(spep_1+130,nanamesen,255);
setEffRotateKey(spep_1, nanamesen, -9);
setEffRotateKey(spep_1+130, nanamesen, -9);

-- ** エフェクト等 ** --
guard = entryEffect(spep_1, SP_01, 0x100, -1,0,0,0);--五星龍が防ぐ

setEffMoveKey(spep_1,guard,0,0,0);
setEffMoveKey(spep_1+130,guard,0,0,0);
setEffScaleKey(spep_1,guard,1.0,1.0);
setEffScaleKey(spep_1+130,guard,1.0,1.0);
setEffAlphaKey(spep_1, guard, 255);
setEffAlphaKey(spep_1+130,guard, 255);
setEffRotateKey(spep_1, guard,0);
setEffRotateKey(spep_1+130, guard,0);

entryFade(spep_1+96, 2, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeシーン切り替わり予定

-- ** SE ** --
playSe( spep_1, 1022);--お腹に気弾があたる
SE=playSe(  spep_1+50,  1050); --受け止める
stopSe(  spep_1+99,  SE,  0);
playSe( spep_1+100, 1026);--弾く


endPhase(130);
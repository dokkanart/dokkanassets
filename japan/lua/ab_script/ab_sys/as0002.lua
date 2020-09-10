--超激戦17号気弾無効演出
--エフェクトは敵側用につくったけど回避後は敵味方が入れ替わるので、反転しませんでした。
--見せたい演出をつくってください

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 151945;--17号が防ぎます
SP_02 = 151946;--17号が防いだ後

-- ズーム許可
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);--必要

-- ** 冒頭に白フェードを出す ** --
entryFade(4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeシーン切り替わり予定

------------------------------------------------------
-- 17号が防ぎます(98F)
------------------------------------------------------
spep_1 = 4;

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 98, 0, 10, 10, 10, 180);       --ベース暗め　背景

-- ** 敵を消す ** --
setDisp( spep_1+0, 1, 0);
setDisp( spep_1+0, 0, 0);--味方の17号はeffectにいれこんだのでここで消す

-- ** 流線 ** --
nanamesen = entryEffectLife(spep_1, 921, 98, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_1, nanamesen, 1.4, 1.4);
setEffScaleKey(spep_1+98, nanamesen, 1.4, 1.4);
setEffAlphaKey(spep_1,nanamesen,255);
setEffAlphaKey(spep_1+98,nanamesen,255);
setEffAlphaKey(spep_1+99,nanamesen,0);
setEffRotateKey(spep_1, nanamesen, 210);
setEffRotateKey(spep_1+98, nanamesen, 210);

-- ** エフェクト等 ** --
guard = entryEffectLife(spep_1, SP_01, 98, 0x100, -1,0,0,0);--17号が防ぐ

setEffMoveKey(spep_1,guard,0,0,0);
setEffMoveKey(spep_1+98,guard,0,0,0);
setEffScaleKey(spep_1,guard,-1.0,1.0);
setEffScaleKey(spep_1+98,guard,-1.0,1.0);
setEffAlphaKey(spep_1, guard, 255);
setEffAlphaKey(spep_1+98,guard, 255);
setEffAlphaKey(spep_1+99,guard, 0);
setEffRotateKey(spep_1, guard,0);
setEffRotateKey(spep_1+98, guard,0);

-- ** SE ** --
playSe( spep_1+10, 1023);--ホワイトフェードが明けて気弾が爆発する
playSe( spep_1+60, 8);--爆煙が広がる

------------------------------------------------------
-- 17号が防いだ後(140F)
------------------------------------------------------
spep_2=spep_1+98;

-- ** フェードイン ** --
entryFade(spep_2-6, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeシーン切り替わり予定

-- ** 背景 ** --
entryFadeBg(spep_2+0, 0, 140, 0, 10, 10, 10, 180);       --ベース暗め　背景

-- ** エフェクト等 ** --
barrier = entryEffectLife(spep_2+0,SP_02,140,0x100,-1,0,0,0);--17号が防ぐ

setEffMoveKey(spep_2,barrier,0,0,0);
setEffMoveKey(spep_2+140,barrier,0,0,0);
setEffScaleKey(spep_2,barrier,-1.0,1.0);
setEffScaleKey(spep_2+140,barrier,-1.0,1.0);
setEffAlphaKey(spep_2,barrier,255);
setEffAlphaKey(spep_2+140,barrier,255);
setEffAlphaKey(spep_2+141,barrier,0);
setEffRotateKey(spep_2,barrier,0);
setEffRotateKey(spep_2+140,barrier,0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2, 906, 140, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_2, shuchusen, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen, 2.2, 2.2);
setEffScaleKey( spep_2+140, shuchusen, 2.2, 2.2);
setEffAlphaKey( spep_2, shuchusen, 255);
setEffRotateKey( spep_2, shuchusen, 0);

-- ** SE ** --
playSe( spep_2+16, 1056);--バリアへダメージがあり点滅する
playSe( spep_2+68, 32);--バリアの点滅がなくなる

endPhase(234);
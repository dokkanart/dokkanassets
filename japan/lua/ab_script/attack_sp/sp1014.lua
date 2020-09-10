print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150014;
SP_02 = 150015;
SP_03 = 150016;
SP_04 = 150017;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

---------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

SP_ATK_1 = 15;
Card = SP_ATK_1+122;
rn_02 = 200;
SP_ATK_3 = rn_02+40;
SP_ATK_4 = SP_ATK_3+78;

else

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+55;
SP_ATK_2 = SP_ATK_1+45;
SP_ATK_3 = SP_ATK_2+70;
SP_ATK_4 = SP_ATK_3+79;

end
------------------------------------------------------
-- 突進
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

entryFadeBg( 0, 10, 70, 2, 10, 10, 10, 150);       --ベース暗め　背景

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 104);                       -- 立ち
setDisp( 0, 1, 0);
entryEffect(  5,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   1,   0,    0, 0,   100);
setMoveKey(   2,   0,    0, 0,   100);
setMoveKey(   0,   1,    700, 0,   -128);
setMoveKey(   1,   1,    700, 0,   -128);
setScaleKey(   0,   0, 1.5, 1.5);
SE0=playSe( 0, SE_01);
--setMoveKey(  0,    1,  700,  0,   0);
entryEffect(  10,   1502,   0x80,     -1,  0,  0,  0);   -- eff_003 (気)

--or1 = entryEffectLife( 15, SP_02, 39, 0x40+0x80,  0,  0,  0,  0);   --オーラ
--setEffRotateKey(15, or1, -10);

or2 = entryEffectLife( 15, SP_01, 100, 0x40,  0,  0,  0,  0);   --オーラ
setEffRotateKey(15, or2,0);

setQuake(8,10,20);
setMoveKey( 15, 0,    0, -54,   80);
setMoveKey( 25, 0,  0, 0,   60);
setMoveKey( 30, 0,  -100, 180,  0);

changeAnime(  5, 0, 17);                  
entryEffect(  20,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  20,   1500,   0x80,    -1,  0,  0,  0);    -- eff_001

changeAnime( 10, 0, 16);  

setVisibleUI(49, 0);
setMoveKey( 40, 0,  0, 0,   -128);
setShakeChara( 30, 0, 50, 12);
setScaleKey(   40,   0, 1.5, 1.5);
setScaleKey(   90,   0, 1.8, 1.8);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade
setMoveKey( 67, 0,  0, 0,   -128);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-14,SE0,0);--音を止める

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey( SP_dodge+10, 0,  -2000, 180,  0);

endPhase(SP_dodge+10);
do return end
else end

playSe( 30, SE_02);
playSe( 30, SE_01);

--setVisibleUI(69, 0);
--changeAnime( 70, 0, 16);                       -- 溜め!
orr = entryEffectLife(  50,   1503, 210, 0x80,  -1,  0,  0,  0); -- オーラ
setEffAlphaKey( 50, orr, 255);
--entryEffect(  50,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  50,   1502,   0x80,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  45,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  45,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

setShakeChara( 70, 0, 49, 5);



-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン表示
------------------------------------------------------
setMoveKey( SP_ATK_1+95, 0,  0, 0,   -58);
playSe( SP_ATK_1+95,  SE_05);

setScaleKey( SP_ATK_1+95,   0, 1.2, 1.2);
setScaleKey( SP_ATK_1+105,   0, 5, 5);
setMoveKey( SP_ATK_1+110, 0,  0, 0,   -128);

setMoveKey( SP_ATK_1+100, 0,  0, 0,   -128);
entryFade( SP_ATK_1+105, 7, 10, 8, 0, 0, 0, 255);     -- white fade

setEffAlphaKey(SP_ATK_1+118,orr,255);
setEffAlphaKey(SP_ATK_1+119,orr,0);
-----------------------------------------------------
--カード
-----------------------------------------------------
crd = entryEffect( Card,  1507,  0x100,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( crd, 1, 1);
setEffReplaceTexture( crd, 2, 0);                         -- カード差し替え
setEffReplaceTexture( crd, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( Card, SE_05);
setEffAlphaKey(Card,crd,255);

--味方
--entryEffectLife( Card+5, SP_02, 100, 0x40,  0,  0,  0,  0);
changeAnime( Card+5, 0, 31);

--setEnvZoomEnable( Card+10,  1);
setScaleKey( Card+5,   0, 5, 5);
setScaleKey( Card+6,   0, 1, 1);
setMoveKey( Card+5, 0,  0, 0,   -128);
setMoveKey( Card+6, 0,  -250, -1100,   0);

sen = entryEffectLife( Card+6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( Card+6,sen,2.5,2.5);
setEffRotateKey( Card+6,sen,-60);

--敵
changeAnime(  Card+5, 1, 104);    
setMoveKey( Card+5, 1,  800,  0,  -128);
setMoveKey( Card+6, 1,  50, 0,   0);
setZanzou(Card+6, 0,  1);
setScaleKey( Card+5,    1,  1, 1);
setScaleKey( Card+6,    1, 2.5, 2.5);

entryFade( 190, 7,  3, 5, 255, 255, 255, 255);     -- white fade



------------------------------------------------------
-- ATK
------------------------------------------------------
entryFadeBg( rn_02, 0, 50, 4, 0, 0, 0, 255);          -- ベース暗め　背景

setMoveKey( rn_02, 0,  -250, -1100,   0);
setMoveKey( rn_02+15, 0,  -250, -1100,   0);

db = entryEffect( rn_02+25, SP_03,  0x80, -1,  0,  0,  0);   -- doragon
setEffScaleKey(rn_02+25, db,  1,1);
setEffScaleKey(SP_ATK_3, db,  1,1);

entryEffect( SP_ATK_3+20,   1500, 0,  -1,  0,  0,  0); -- オーラ
setEffScaleKey(SP_ATK_3+30, db,  2,2);

setEffAlphaKey(rn_02+25,db,255);
setEffAlphaKey(SP_ATK_3+40,db,255);
setEffAlphaKey(SP_ATK_3+75,db,0);

setEnvZoomEnable( rn_02+30,  1);
setMoveKey( rn_02+30, 0,  -100, -150,   0);

setDisp( rn_02+5, 1, 1);
setMoveKey( rn_02, 1,  50, 0,   0);
setMoveKey( rn_02+15, 1,  150, 200,   0);
setMoveKey( rn_02+30, 1,  10, 150,   0);
changeAnime(  rn_02+31, 1, 108);

aura = entryEffectLife(   rn_02+30,   1500, 39, 0x80,  -1,  0,  0,  0); -- オーラ
--[[
entryEffect( rn_02+20, 2,   0, 1,  0,  0,  0);
entryEffect( rn_02+27, 1,   0, 1,  0,  0,  -100);
entryEffect( rn_02+30, 4,   0, 1,  0,  0,  0);
--]]
playSe( rn_02+35, SE_05);
playSe( rn_02+30, 1052);
-----------------------------------------
Dragon = entryEffect( rn_02+30, SP_04,  0x40+0x80, 1,  0,  0,  0);   -- 迫るかめはめ波
playSe( rn_02+30, SE_08);
setZanzou(Card+6, 0,  0);
setEnvZoomEnable( SP_ATK_3,  0)
--playSe( SP_ATK_3, 1050);

--playSe( SP_ATK_3+27, SE_09);
-- 敵吹っ飛ぶモーション
setMoveKey(  SP_ATK_3+20+5, 1,  10, 150,   0);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+20+5, 1, 99, 20);
entryFadeBg( SP_ATK_3, 0, 64, 4, 0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10021, 99, 0, -1, 0, -130, 330); -- bako
setEffShake(SP_ATK_3, ct, 99, 35);
setEffScaleKey( SP_ATK_3, ct, 2.4, 2.4);
setEffAlphaKey(SP_ATK_3, ct, 255);
setEffAlphaKey(SP_ATK_3+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+25+5, ct, 0);

--エフェクト消滅
setEffAlphaKey( (SP_ATK_3), kamehame_beam3,255);
setEffAlphaKey( (SP_ATK_3+28), kamehame_beam3,255);

--ご飯カット
setEffAlphaKey( (SP_ATK_3+34), kamehame_beam3,0);
entryFadeBg(SP_ATK_3+36,0,43,3,0,0,0);
setQuake(SP_ATK_3+36,30,20);
--playSe( SP_ATK_3+36, 1044);
setDisp( SP_ATK_3+36, 0, 1);
setMoveKey(  SP_ATK_3+36, 1,  10, 150,   0);
setShakeChara(SP_ATK_3+40,0,30,14);
setShakeChara(SP_ATK_3+40,1,30,11);

entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFade( SP_ATK_3+40, 30,  10, 1, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4, 1, 1);
setDisp( SP_ATK_4, 0, 0);
setScaleKey( SP_ATK_4, 0, 0.7, 0.7);
setScaleKey( SP_ATK_4+1, 0, 1.0, 1.0);
setEnvZoomEnable( SP_ATK_4+10,  0);
setMoveKey(  SP_ATK_4,    1,  10, 150,   0);
setScaleKey( SP_ATK_4,    1,  2.5, 2.5);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);-- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);
setShake(SP_ATK_4+14,6,15);
setShake(SP_ATK_4+20,15,10);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+10);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+104);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
setDisp( 0, 1, 0);
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 1,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey( 5,0,1.5,1.5);

entryFade( 0, 2, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_ATK_0, 0);
changeAnime( SP_ATK_0, 0, 17);                       -- 溜め!
playSe( SP_ATK_0, SE_01);

entryEffect( SP_ATK_0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_ATK_0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_ATK_0,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( SP_ATK_0, aura, 1.5, 1.5);
setShakeChara( SP_ATK_0+15, 0, 49, 5);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
speff = entryEffect(  SP_ATK_1,   1507,   0x100,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_ATK_1, SE_05);

spname = entryEffect( SP_ATK_1+10, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
--entryFlash( (SP_ATK_1+10), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+22), 1, fcolor_r, fcolor_g, fcolor_b, 100);

--entryFlash( (SP_ATK_1+36), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_1+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffAlphaKey( (SP_ATK_1), speff, 255);
setEffAlphaKey( (SP_ATK_1+45), speff, 255);
setEffAlphaKey( SP_ATK_1+47, speff, 0);
entryFade( SP_ATK_1+45, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_ATK_1+45,    0,      0,  0,   0);


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setScaleKey( SP_ATK_1+46,0,1.5,1.5);
setScaleKey( SP_ATK_1+47,0,2,2);
--setScaleKey( SP_ATK_2,0,2,2);
changeAnime( SP_ATK_2, 0, 3);

entryEffectLife( SP_ATK_2, SP_01, 50, 0x40+0x80,  0,  0,  0,  0);   --オーラ

--P移動
setMoveKey(  SP_ATK_2,    0,      0,  0,   0);
setMoveKey(  SP_ATK_2+1,    0,   -600,  0,   -100);
setMoveKey(  SP_ATK_2+2,    0,   -600,  0,   -100);
setMoveKey(  SP_ATK_2+16,    0,   0,  0,   -100);
setMoveKey(  SP_ATK_2+23,  0,   100,  0,   -100);
setMoveKey(  SP_ATK_2+34,  0,   -200,  0,   -100);
setMoveKey(  SP_ATK_2+43,  0,   -300,  0,   -100);
--setScaleKey( SP_ATK_1+49,0,1.5,1.5);
setScaleKey( SP_ATK_2+50,0,1.5,1.5);
setScaleKey( SP_ATK_2+51,0,1,1);
playSe( SP_ATK_2+47, SE_06);
--setScaleKey( SP_ATK_2+49,0,2,2);
setMoveKey( SP_ATK_2+50,  0, 700,  0,  -100);

kamehame_beam = entryEffectLife( SP_ATK_2+1, SP_02, 90, 0x40+0x80,  0,  0,  -1100,  0);   -- 伸びるかめはめ波
setEffScaleKey(SP_ATK_2+1,kamehame_beam,1.3,1.3);

SE0=playSe(SP_ATK_2+1, SE_07);

--spname = entryEffect( SP_ATK_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
entryFade( SP_ATK_2+5, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_ATK_2, 0, 109, 0, 10, 10, 10, 255);       -- ベース暗め　背景
entryFadeBg( SP_ATK_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_ATK_2+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_ATK_2, 920, 75, 0x80,  -1,  0,  0,  0); -- 流線
setShakeChara( SP_ATK_2+5, 0, 54, 50);

shuchusen = entryEffectLife( SP_ATK_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_ATK_2, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_2+46, shuchusen, 2.0, 2.0);

--entryFlash( (SP_ATK_2+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_2+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_2+90), 1, fcolor_r, fcolor_g, fcolor_b, 255);
--playSe( SP_ATK_2+90, SE_06);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_ATK_2+8, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+8, ct, 255);
setEffAlphaKey(SP_ATK_2+30, ct, 255);
setEffAlphaKey(SP_ATK_2+40, ct, 0);
setEffScaleKey(SP_ATK_2+8, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+12, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+32, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+40, ct, 6.0, 6.0);
setEffAlphaKey(SP_ATK_2+71,spname,1);

setEffAlphaKey(SP_ATK_2+1,kamehame_beam,255);
setEffAlphaKey(SP_ATK_2+69,kamehame_beam,255);
setEffAlphaKey(SP_ATK_2+70,kamehame_beam,0);

entryFade( SP_ATK_2+64, 5, 8, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffScaleKey(SP_ATK_2+45,kamehame_beam,1.3,1.3);
setEffScaleKey(SP_ATK_2+50,kamehame_beam,4,1.3);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
kamehame_beam3 = entryEffect( SP_ATK_3, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_ATK_3, kamehame_beam3, 1, 1);
setEffScaleKey(SP_ATK_3+28, kamehame_beam3, 1, 1);
setEffScaleKey(SP_ATK_3+31, kamehame_beam3, 3, 3);

entryEffect( SP_ATK_3,SP_04,  0x80, -1,  0,  0,  0);

playSe( SP_ATK_3, SE_08);

setDisp( SP_ATK_3, 0, 0);
setDisp( SP_ATK_3, 1, 1);
changeAnime( SP_ATK_3, 1, 104); -- ガード
setMoveKey(  SP_ATK_3,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3+1,    1,  235,  0,   0);
setScaleKey( SP_ATK_3,    1,  0.7, 0.7);

setMoveKey(  SP_ATK_3+15,    1,   120,  0,   0);
setScaleKey( SP_ATK_3+15,   1,   2.5,  2.5);
playSe( SP_ATK_3+12, SE_01);

entryFade( SP_ATK_3+27, 10,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( SP_ATK_3+27, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( SP_ATK_3+20+5, 1, 108);
setMoveKey( SP_ATK_3+20+4,  0, 700,  0,   -100);
setMoveKey(  SP_ATK_3+20+5, 1,  120,    0,  0);
--entryFlash( (SP_ATK_3+25), 2, 0, 0, 0, 200);
--setMoveKey(  SP_ATK_3+31, 1,  120,    0,  128);
--setScaleKey( SP_ATK_3+22+5, 1,  1.6, 1.6);
--setScaleKey( SP_ATK_3+24+5, 1,  1, 1);
--setScaleKey( SP_ATK_3+28+5, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+20+5, 1, 99, 20);

entryFadeBg( SP_ATK_3, 0, 34, 4, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_ATK_3, 921, 34, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK_3, ct, -70);
setEffAlphaKey(SP_ATK_3, ct, 255);
setEffAlphaKey(SP_ATK_3+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+25+5, ct, 0);

--エフェクト消滅
setEffAlphaKey( (SP_ATK_3), kamehame_beam3,255);
setEffAlphaKey( (SP_ATK_3+28), kamehame_beam3,255);
setEffAlphaKey( (SP_ATK_3+34), kamehame_beam3,0);

--ご飯カット
setEffAlphaKey( (SP_ATK_3+34), kamehame_beam3,0);
entryFadeBg(SP_ATK_3+36,0,43,3,0,0,0);

setDisp( SP_ATK_3+36, 0, 1);


-- 書き文字エントリー
ct = entryEffectLife( 217, 10021, 99, 0, -1, 0, -130, 480); -- bako
setEffShake(217, ct, 99, 35);
setEffScaleKey( 217, ct, 2.4, 2.4);
setEffAlphaKey(217, ct, 255);
setEffAlphaKey(217+20+4, ct, 255);
setEffAlphaKey(217+25+5, ct, 0);



setMoveKey(  SP_ATK_3+36, 1,  0,    0,  0);
setMoveKey(  SP_ATK_3+37, 1,  120,    0,  0);
--setMoveKey(  SP_ATK_3+72, 1,  150,    0,  0);
changeAnime( SP_ATK_3+36, 1, 108);
entryEffectLife(   SP_ATK_3+36,   1500, 39, 0x80,  -1,  0,  0,  0); -- オーラ
Dragon_en = entryEffect( SP_ATK_3+15, SP_03,  0x80, -1,  0,  0,  0);   -- doragon
setEffScaleKey(SP_ATK_3+15, Dragon_en,  1,1);
setEffScaleKey(SP_ATK_3+40, Dragon_en,  1,1);
setEffScaleKey(SP_ATK_3+70, Dragon_en,  1.5,1.5);

setEffAlphaKey(SP_ATK_3+15,Dragon_en,255);
setEffAlphaKey(SP_ATK_3+50,Dragon_en,255);
setEffAlphaKey(SP_ATK_3+75,Dragon_en,0);

setMoveKey(  SP_ATK_3+36,  0, -1700,  0,   0);
setMoveKey(  SP_ATK_3+37,  0, -120,  0,   0);
setMoveKey(  SP_ATK_3+65,  0, -80,  0,   -60);
changeAnime( SP_ATK_3+36, 0, 31);

setShakeChara(SP_ATK_3+40,0,30,14);
setShakeChara(SP_ATK_3+40,1,30,11);

entryEffectLife(   SP_ATK_3+40,   1500,  0,  -1,  0,  0,  0); -- オーラ
entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( SP_ATK_3+70, 4,  10, 12, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

--SP_dodge = 181; --エンドフェイズのフレーム数を置き換える
SP_dodge = 125; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-14,SE0,0);--音を止める

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0,  3000, 180,  0);
setMoveKey( SP_dodge+10, 1,  0, 180,  0);
endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4, 1, 1);
setDisp( SP_ATK_4, 0, 0);
setScaleKey(   SP_ATK_4,   0, 0.7, 0.7);
setScaleKey(   SP_ATK_4+1,   0, 1.0, 1.0);

setMoveKey(  SP_ATK_4,    1,  70,    0,  -120);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);
setShake(SP_ATK_4+14,6,15);
setShake(SP_ATK_4+20,15,9);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+10);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+104);

end

print ("[lua]sp0001 end");

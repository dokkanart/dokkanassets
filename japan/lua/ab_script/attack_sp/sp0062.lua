--人造人間18号(未来)_サディスティック１８
print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150010
SP_02 = 103003
SP_03 = 150011

SP_04 = 3
SP_05 = 2

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

SP_ATK_1 = 140;
SP_ATK_2 = 260;
rn_01 = SP_ATK_2+20;
ATK_01 = rn_01+12;
ATK_02 = ATK_01+30;
ATK_03 = ATK_02+18;
ATK_04 = ATK_03+20;
---------------
rn_03 = ATK_04+20;
rn_04 = rn_03+70;
sp_ATK_03 = rn_04+70;
SP_ATK_4 = sp_ATK_03+345-259;

else
SP_ATK_0 = 0;
SP_ATK_1 = SP_ATK_0+32;
SP_ATK_2 = SP_ATK_1+124;
rn_01 = SP_ATK_2+20;
ATK_01 = rn_01+12;--205
ATK_02 = ATK_01+30;--211
ATK_03 = ATK_02+18;--218
ATK_04 = ATK_03+20;--228
---------------
rn_03 = ATK_04+20;
rn_04 = rn_03+70;
sp_ATK_03 = rn_04+70;
SP_ATK_4 = sp_ATK_03+345-259;

end
------------------
multi_frm = 2;

--テンプレ構文
setVisibleUI( 0, 0);

changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

entryFadeBg( 0, 10, 70, 2, 10, 10, 10, 150);       --ベース暗め　背景
changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 1, 0);
entryEffect(  5,   908,   0x80, -1,  0,  0,  0);    -- eff_002
setMoveKey(   1,   0,    0, 0,   128);
setMoveKey(   0,   1,    700, 0,   -128);
setScaleKey(   0,   0, 1.5, 1.5);
playSe( 0, SE_01);
setMoveKey(  0,    1,  700,  0,   0);
entryEffect(  10,   1502,   0x80,     -1,  0,  0,  0);   -- eff_003 (気)
--or1 = entryEffectLife( 10, SP_03,30, 0x40+0x80,  0,  0,  0,  0);   --オーラ
--setEffRotateKey(10, or1, 60);
setQuake(8,10,20);
setMoveKey( 15, 0,    0, -54,   128);
setMoveKey( 25, 0,  0, 0,   60);
setMoveKey( 30, 0,  -100, 180,   0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------


--  frame, eff, atr,tgt, tag,  x, y
changeAnime(  5, 0, 17);                       -- 溜め!
entryEffect(  20,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  20,   1500,   0x80,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);
changeAnime( 10, 0, 16);  
--setVisibleUI(49, 0);					 -- 溜め!
setMoveKey( 40, 0,  0, 0,   -128);
setScaleKey(   40,   0, 1.5, 1.5);
setScaleKey(   90,   0, 1.8, 1.8);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40+0x80,  0,  0,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 50, 12);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
--setVisibleUI(69, 0);
--changeAnime( 70, 0, 16);                       -- 溜め!
entryEffectLife(  50,   1503, 210, 0x80,  -1,  0,  0,  0); -- オーラ
entryEffect(  50,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  50,   1502,   0x80,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  45,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  45,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 190, 0x40+0x80,  0,  1,  0,  0); -- オーラ
--entryEffectLife( 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--[[ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);]]
ctgogo = entryEffectLife( 90,  190006, 39, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( 90, ctgogo, 39, 10 );
setEffMoveKey( 90, ctgogo, -9.9, 521.8 , 0 );
setEffScaleKey( 90, ctgogo, 0.7, 0.7 );
setEffRotateKey( 90, ctgogo, 0 );
setEffAlphaKey( 90, ctgogo, 255 );


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
entryFade( SP_ATK_1 -6, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

setScaleKey( SP_ATK_1,   0, 1.2, 1.2);

cr = entryEffect( SP_ATK_1,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_ATK_1, SE_05);

--[[setEffScaleKey(	SP_ATK_1,cr, 1,1);
setEffScaleKey(	SP_ATK_1+70,cr, 1,1);
--setEffShake( SP_ATK_1+70, ct, 3, 12);
setEffScaleKey(	SP_ATK_1+73,cr, 1.2,1.2);
setEffScaleKey(	SP_ATK_1+78,cr, 1.2,1.2);
--setEffShake( SP_ATK_1+78, ct, 3, 8);
setEffScaleKey(	SP_ATK_1+80,cr, 1.4,1.4);
setEffScaleKey(	SP_ATK_1+80,cr, 1.4,1.4);
--setEffShake( SP_ATK_1+75, ct, 8, 15);
setEffScaleKey(	SP_ATK_1+88,cr, 2,2);]]
setMoveKey( SP_ATK_1+95, 0,  0, 0,   -58);
playSe( SP_ATK_1+95,  SE_05);
setScaleKey( SP_ATK_1+95,   0, 1.2, 1.2);
setScaleKey( SP_ATK_1+105,   0, 5, 5);
setMoveKey( SP_ATK_1+110, 0,  0, 0,   -128);
sen1 = entryEffect(  SP_ATK_1+95,   1502,   0,  -1,  0,  0,  0); 
setEffAlphaKey(SP_ATK_1+95,sen1,255);
entryFade( SP_ATK_1+105, 7, 10, 8, 0, 0, 0, 255);     -- white fade
setEffAlphaKey(259,sen1,255);
setEffAlphaKey(260,sen1,0);

-- ** 次の準備 ** --
entryFade( SP_ATK_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 突進
------------------------------------------------------
changeAnime( SP_ATK_2, 0, 3);                            
setScaleKey( SP_ATK_2,   0, 5, 5);
setScaleKey( SP_ATK_2+1,   0, 1.5, 1.5);

setEnvZoomEnable( SP_ATK_2,  1);

--P移動
setMoveKey( 259, 0,  0, 0,   -128);
setMoveKey(  SP_ATK_2,    0,   -100,  0,   -128);
setMoveKey(  SP_ATK_2+5,    0,   50,  0,   -128);
setMoveKey(  SP_ATK_2+7,  0,   200,  0,   -128);
setMoveKey(  SP_ATK_2+10,  0,   -200,  0,   -128);
setMoveKey(  SP_ATK_2+14,  0,   -180,  0,   -128);
setScaleKey( SP_ATK_2+16,   0, 1, 1);
playSe( SP_ATK_2+23, SE_06);

playSe( SP_ATK_2, SE_07);

spname = entryEffect( SP_ATK_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFadeBg( SP_ATK_2, 0, 209, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_ATK_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_ATK_2+23, 0, 2, 8, 255, 255, 250, 250);     -- 青い　背景

entryEffectLife( SP_ATK_2, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_ATK_2+8, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+8, ct, 255);
setEffAlphaKey(SP_ATK_2+10, ct, 255);
setEffAlphaKey(SP_ATK_2+23, ct, 0);
setEffScaleKey(SP_ATK_2+8, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+12, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+20, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+23, ct, 6.0, 6.0);
setEffAlphaKey(	SP_ATK_2+23,spname, 1);
playSe( SP_ATK_2+28, SE_07);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+3,    0,  0, 0,   -128);
setMoveKey( SP_dodge+9,    0,   -1600,  0,   80);
setDisp( SP_dodge+9, 0, 0);

endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setMoveKey(  rn_01,  0,  -170,  0,  -128);--中央に近づく
setMoveKey(  rn_01+5,  1,  800,  0,  -128);--中央に近づく
playSe(rn_01+5,1018);
--------------------------------------------------------------
setDisp( rn_01, 1, 1);
changeAnime(  rn_01,  1,  104);
-------------------------------------------

setMoveKey(  ATK_01,  0,  -50,  0,  -128);
setMoveKey(  ATK_01,  1,  120,  0,  -128);
changeAnime(  ATK_01,  0,  14);--kikku 
playSe(ATK_01,1000);
entryFadeBg( ATK_01+2, 0, 10, 0, 255, 0, 0, 255);       --ベース暗め　背景
entryFadeBg(  ATK_01+1, 0, 35, 8, 0, 0, 0, 255);     -- 　背景

--setEnvZoomEnable( ATK_01+5,  0);
--setQuake(  ATK_01+1,  5,  12);
entryEffect(  ATK_01,  1,  0,  1,  0,  0,  50);
entryEffect(  ATK_01+1,  908,  0,  1,  0,  0,  0);
entryEffect(  ATK_01+1,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_01+1,  20,  4,  1,  -1,  -20,  -240);--baki
changeAnime(  ATK_01+1,  1,  108);--モーション
setDamage(  ATK_01+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_01+2,  1);


-----------------------------------------------
setMoveKey(  ATK_02,  0,  -45,  30,  -128);
setMoveKey(  ATK_02,  1,  100,  -50,  -128);
changeAnime(  ATK_02+1,  0,  10);--パンチ1
playSe(ATK_02+1,1000);

entryEffect(  ATK_02+1,  2,  0,  1,  0,  -30,  40);
entryEffect(  ATK_02+2,  908,  0,  1,  0,  -30,  40);
entryEffect(  ATK_02+2,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_02+1,  2,  4,  1,  -1,  -30,  240);--gagaga
changeAnime(  ATK_02+2,  1,  108);--モーション
setDamage(  ATK_02+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_02+3,  1);


setMoveKey(  ATK_03,  0,  -35,  20,  -128);
setMoveKey(  ATK_03,  1,  120,  -60,  -128);
changeAnime(  ATK_03+1,  0,  2);



setMoveKey(  ATK_03+10,  0,  -90,  -100,  -128);
setMoveKey(  ATK_03+10,  1,  100,  -40,  -128);

changeAnime(  ATK_03+13,  0,  12);--キック
entryFadeBg(  ATK_03+13, 0, 15, 8, 255, 0, 0, 255);     -- 　背景
playSe(ATK_03+13,1001);
entryEffect(  ATK_03+13,  1,  0,  1,  10,  15,  20);
entryEffect(  ATK_03+14,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_03+14,  908,  0,  1,  10,  15,  20);
changeAnime(  ATK_03+14,  1,  106);--モーション

setDamage(  ATK_03+14,  1,  0);--ダメージ振動等
pauseChara(  ATK_03+15,  1);


setMoveKey(  ATK_04,  0,  -36,  0,  -128);
setMoveKey(  ATK_04+1,  0,  -55,  0,  -128);

--setMoveKey(  ATK_04,  1,  60,  30,  -128);
changeAnime(  ATK_04+2,  0,  11);--パンチ3

setMoveKey(  ATK_04+3,  0,  -89,  0,  -128);
entryEffect(  ATK_04+4,  3,  0,  1,  0,  0,  0);
playSe(ATK_04+4,1009);

entryEffect(  ATK_04+5,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_04+5,  908,  1,  1,  0,  0,  0);
entryKakimoji(  ATK_04+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_04+4,  1,  0);--ダメージ振動等
changeAnime(  ATK_04+5,  1,  108);--モーション
pauseChara(  ATK_04+7,  5);
setMoveKey(  ATK_04+7,  0,  -89,  0,  -128);

-----------------------------------

setMoveKey(  rn_03+5,  0,  -120,  0,  -128);
setMoveKey(  rn_03+8,  0,  -130,  0,  -128);
setMoveKey(  rn_03+8,  1,  150,  -10,  -128);

changeAnime(  rn_03+7,  0,  0);

setDrawFront( rn_03, 1, 1);

entryEffectLife(  rn_03+3, 914,  15,  0x80,  -1,  0,  0,  0);
--entryKakimoji(  rn_03+11,  6,  4,  0,  -1,  -50,  200);
--playSe(rn_03+15,1015);
setMoveKey(  rn_03+10,  0,  -170,  40,  -100);
setMoveKey(  rn_03+15,  0,  -180,  80,  -80);
changeAnime(  rn_03+18,  0,  16);
changeAnime(  rn_03+18,  1,  118);

setMoveKey(  rn_03+20,  0,  -100,  -35,  -80);
setMoveKey(  rn_03+30,  0,  -50,  25,  -90);
setMoveKey(  rn_03+30,  1,  55,  0,  -128);

--setEnvZoomEnable( rn_03+30,  1);--カメラON
changeAnime(  rn_03+32,  0,  0);
setMoveKey(  rn_03+35,  0,  -35,  30,  -128);
--entryFlashBg( rn_03+36,  1,  0,  0,  0);
setMoveKey(  rn_03+37,  0,  -35,  40,  -128);
setMoveKey(  rn_03+45,  0,  -35,  10,  -128);
changeAnime( rn_03+35,  0,  15);
entryFadeBg( rn_03+35, 0, 20, 8, 255, 255, 250, 255);     -- 青い　背景
pauseChara( rn_03+35,10)

entryEffect(  rn_03+36,  908,  0,  1,  0,  0,  0);

setDamage(  rn_03+35,  1,  0);--ダメージ振動等
changeAnime(  rn_03+37,  1,  107);--モーション
setRotateKey( rn_03+37, 1, 0);
setRotateKey( rn_03+37, 1, -45);
entryEffect(  rn_03+37,  3,  0,  1,  0,  0,  0);
playSe(rn_03+37,1009);

entryEffect(  rn_03+37,  908,  0,  1,  0,  0,  0);
entryKakimoji( rn_03+37,  19,  4,  1,  0,  0,  -150);--どん

pauseAll(  rn_03+45, 4);

setMoveKey(  rn_03+49,  0,  -25,  0,  50);
setMoveKey(  rn_03+55,  0,  -100,  30,  0);
setMoveKey(  rn_03+49,  1,  25,  0,  50);
setMoveKey(  rn_03+55,  1, 500,  -100,  0);

setEnvZoomEnable( rn_03+60,  0);--カメラOFF
entryFade( rn_03+53, 7, 12, 5, 0, 0, 0, 255);     -- white fade


--敵非表示
setDisp( rn_03+55, 1, 0 );

--キャラ移動
setRotateKey( rn_04,  0,  0);
setRotateKey( rn_04+1,  0,  10);
setRotateKey( rn_04, 1, -45);
setRotateKey( rn_04+1, 1, 0);
setMoveKey(  rn_04,  0,  -100,  30,  0);
setMoveKey(  rn_04+1,  0,  150,  250,  -80);
changeAnime(  rn_04,  0,  1);
setMoveKey(  rn_04+20,  0,  -120,  0,  -50);
changeAnime(  rn_04+22,  0,  17);

setMoveKey(  rn_04+24,  0,  -120,  0,  -50);
setMoveKey(  rn_04+30,  0,  -150,  10,  -28);
--entryEffect(  rn_04+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryFadeBg( rn_04+30, 0, 20, 0, 165, 5, 5, 255);       --ベース暗め　背景
entryEffect(  rn_04+30,   1500,   0x80,    -1,  0,  0,  0);    -- eff_001
setRotateKey( rn_04+19,  0,  10);
setRotateKey( rn_04+31,  0,  0);
changeAnime(  rn_04+31,  0,  0);
playSe( rn_04+35, SE_05);
changeAnime(  rn_04+31,  1,  118);
setMoveKey(  sp_ATK_03-259+259,  0,  0,  10,  -128);

------------------------------------------------------
--カメハメハ発射( sp_ATK_03-259+110F)
------------------------------------------------------

changeAnime( sp_ATK_03-259+260, 0, 31);                                    --かめはめ発射ポーズ
setMoveKey( sp_ATK_03-259+259,    0,     20,  10,  -30);
setMoveKey( sp_ATK_03-259+270,    0,      0,  0,   0);
setMoveKey( sp_ATK_03-259+290,    0,   -30,  0,   20);

entryEffect( sp_ATK_03-259+262, SP_02, 0x40,  0,  300,  0,  0);   --伸びるかめはめ波
playSe( sp_ATK_03-259+262, SE_07);

--敵表示
setDisp( sp_ATK_03-259+326, 1, 1 );

--途中からカメハメハが伸びる
setMoveKey( sp_ATK_03-259+300,    0,   -150,  0,   50);
setMoveKey( sp_ATK_03-259+305,    0,   -500,  0,   80);
setMoveKey( sp_ATK_03-259+326,   1, 500,  -100,  0);
setMoveKey( sp_ATK_03-259+327,    1,  800,    -330,  -120);
setMoveKey( sp_ATK_03-259+332,    1,  200,    -100,  -120);
entryFade( sp_ATK_03-259+365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     --white fade

--** エフェクト等 ** --
entryFadeBg( sp_ATK_03-259+260, 0, 85, 0, 255, 255, 255, 255);       --ベース暗め　背景
entryFadeBg( sp_ATK_03-259+260, 0, 40, 0, 230, 230, 230, 255);    --最初だけ明るい　背景

sen2 = entryEffectLife( sp_ATK_03-259+260, 921, 85, 0x80,  -1,  0,  0,  0); --流線
setEffRotateKey( sp_ATK_03-259+260, sen2, 185);
setShakeChara( sp_ATK_03-259+305, 0, 54, 50);
setEffScaleKey( sp_ATK_03-259+260, sen2, 1.4, 1.4);

shuchusen = entryEffectLife( sp_ATK_03-259+260, 906, 49, 0x00,  -1, 0,  0,  0);   --集中線
setEffScaleKey( sp_ATK_03-259+260, shuchusen, 1.0, 1.0);
setEffScaleKey( sp_ATK_03-259+300, shuchusen, 1.0, 1.0);
setEffScaleKey( sp_ATK_03-259+309, shuchusen, 2.0, 2.0);

--書き文字エントリー
ct = entryEffectLife( sp_ATK_03-259+268, 10012, 32, 0, -1, 0, 200, 300); --ズオッ
setEffShake( sp_ATK_03-259+268, ct, 32, 5);
setEffAlphaKey( sp_ATK_03-259+268, ct, 255);
setEffAlphaKey( sp_ATK_03-259+290, ct, 255);
setEffAlphaKey( sp_ATK_03-259+300, ct, 0);
setEffScaleKey( sp_ATK_03-259+268, ct, 0.0, 0.0);
setEffScaleKey( sp_ATK_03-259+272, ct, 1.3, 1.3);
setEffScaleKey( sp_ATK_03-259+292, ct, 1.3, 1.3);
setEffScaleKey( sp_ATK_03-259+300, ct, 6.0, 6.0);
playSe( sp_ATK_03-259+300, SE_07);
bm = entryEffect( sp_ATK_03-259+335, 1509,  0x40,  1,  0,  0,  0);   -- 爆発
entryFade( sp_ATK_03-259+330, 10,  8, 10, fcolor_r, fcolor_g, fcolor_b, 255);     --white fade
setShake(sp_ATK_03-259+330,10,15);
setEffAlphaKey(sp_ATK_03-259+335,bm,255);
setEffAlphaKey(sp_ATK_03-259+340,bm,255);
setEffAlphaKey(sp_ATK_03-259+345,bm,0);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4, 1, 1);
setDisp( SP_ATK_4, 0, 0);
--setScaleKey( SP_ATK_4, 0, 0.7, 0.7);
--setScaleKey( SP_ATK_4+1, 0, 1.0, 1.0);

setMoveKey(  SP_ATK_4,    1,  150,    -100,  -120);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);-- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_4,  1,  0);
setRotateKey( SP_ATK_4+1,  1,  30 );
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

--entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+110);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
entryFadeBg( SP_ATK_0, 10, 70, 2, 10, 10, 10, 150);       --ベース暗め　背景
changeAnime( SP_ATK_0, 0, 1);                       -- 立ち
changeAnime( SP_ATK_0, 1, 101);                       -- 立ち
setDisp( SP_ATK_0, 1, 0);
setMoveKey(   SP_ATK_0+1,   0,    0, 0,   128);
setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   SP_ATK_0,   0, 1.5, 1.5);
playSe( SP_ATK_0, SE_01);
setMoveKey(  SP_ATK_0,    1,  700,  0,   0);
setQuake(SP_ATK_0,10,20);
setMoveKey( SP_ATK_0, 0,  0, 0,   60);
changeAnime( SP_ATK_0, 0, 16); 
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
entryEffect(  SP_ATK_0+1,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  SP_ATK_0+1,   1500,   0x80,    -1,  0,  0,  0);    -- eff_001
 
--setVisibleUI(SP_ATK_0+49, 0);					 -- 溜め!
setMoveKey( SP_ATK_0+20, 0,  0, 0,   -128);
setScaleKey(   SP_ATK_0+10,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_0+25,   0, 1.8, 1.8);

entryFade( SP_ATK_0+25, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

setShakeChara( SP_ATK_0, 0, 50, 12);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_0+5, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(SP_ATK_0+5, ct, 40, 7);
setEffAlphaKey(SP_ATK_0+5, ct, 255);
setEffAlphaKey(SP_ATK_0+10, ct, 255);
setEffAlphaKey(SP_ATK_0+30, ct, 0);
setEffScaleKey( SP_ATK_0+15, ct, 0.1, 0.1);
setEffScaleKey( SP_ATK_0+5, ct, 2.0, 2.0);
playSe( SP_ATK_0+5, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------

eff_or = entryEffectLife(  SP_ATK_0+20,   1503, 210, 0x80,  -1,  0,  0,  0); -- オーラ
eff_or1 = entryEffect( SP_ATK_0+20,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
eff_or2 = entryEffect( SP_ATK_0+20,   1502,   0x80,     -1,  0,  0,  0);   -- eff_003 (気)
setEffAlphaKey(SP_ATK_0+20,eff_or,255);
setEffAlphaKey(SP_ATK_0+20,eff_or1,255);
setEffAlphaKey(SP_ATK_0+20,eff_or2,255);


--playSe( SP_ATK_0+40, SE_03);
--playSe( SP_ATK_0+50, SE_04);
setShakeChara( SP_ATK_0+40, 0, 49, 5);

-- 書き文字エントリー
--[[ct = entryEffectLife( SP_ATK_0+60, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_ATK_0+60, ct, 40, 8);
setEffScaleKey(SP_ATK_0+60, ct, 1.4, 1.4);]]



------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
entryFade( SP_ATK_1 -6, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

setScaleKey( SP_ATK_1,   0, 1.2, 1.2);

cr = entryEffect( SP_ATK_1,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_ATK_1, SE_05);

--[[setEffScaleKey(	SP_ATK_1,cr, 1,1);
setEffScaleKey(	SP_ATK_1+70,cr, 1,1);
--setEffShake( SP_ATK_1+70, ct, 3, 12);
setEffScaleKey(	SP_ATK_1+73,cr, 1.2,1.2);
setEffScaleKey(	SP_ATK_1+78,cr, 1.2,1.2);
--setEffShake( SP_ATK_1+78, ct, 3, 8);
setEffScaleKey(	SP_ATK_1+80,cr, 1.4,1.4);
setEffScaleKey(	SP_ATK_1+80,cr, 1.4,1.4);
--setEffShake( SP_ATK_1+75, ct, 8, 15);
setEffScaleKey(	SP_ATK_1+88,cr, 2,2);]]
setMoveKey( SP_ATK_1+95, 0,  0, 0,   -58);
playSe( SP_ATK_1+95,  SE_05);
setScaleKey( SP_ATK_1+95,   0, 1.2, 1.2);
setScaleKey( SP_ATK_1+105,   0, 5, 5);
setMoveKey( SP_ATK_1+110, 0,  0, 0,   -128);
sen1 = entryEffect(  SP_ATK_1+95,   1502,   0,  -1,  0,  0,  0); 
setEffAlphaKey(SP_ATK_1+95,sen1,255);
entryFade( SP_ATK_1+105, 7, 10, 8, 0, 0, 0, 255);     -- white fade
setEffAlphaKey(SP_ATK_1+113,sen1,255);
setEffAlphaKey(SP_ATK_1+114,sen1,0);
setEffAlphaKey(SP_ATK_1+113,eff_or,255);
setEffAlphaKey(SP_ATK_1+113,eff_or1,255);
setEffAlphaKey(SP_ATK_1+113,eff_or2,255);
setEffAlphaKey(SP_ATK_1+114,eff_or,0);
setEffAlphaKey(SP_ATK_1+114,eff_or1,0);
setEffAlphaKey(SP_ATK_1+114,eff_or2,0);

-- ** 次の準備 ** --
entryFade( SP_ATK_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 突進
------------------------------------------------------
removeAllEffect( SP_ATK_2 );

changeAnime( SP_ATK_2, 0, 3);                            
setScaleKey( SP_ATK_2,   0, 5, 5);
setScaleKey( SP_ATK_2+1,   0, 1.5, 1.5);

setEnvZoomEnable( SP_ATK_2,  1);

--P移動
setMoveKey( 259, 0,  0, 0,   -128);
setMoveKey(  SP_ATK_2,    0,   -100,  0,   -128);
setMoveKey(  SP_ATK_2+5,    0,   50,  0,   -128);
setMoveKey(  SP_ATK_2+7,  0,   200,  0,   -128);
setMoveKey(  SP_ATK_2+10,  0,   -200,  0,   -128);
setMoveKey(  SP_ATK_2+14,  0,   -180,  0,   -128);
setScaleKey( SP_ATK_2+16,   0, 1, 1);

playSe( SP_ATK_2, SE_07);

spname = entryEffect( SP_ATK_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFadeBg( SP_ATK_2, 0, 209, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_ATK_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_ATK_2+23, 0, 2, 8, 255, 255, 250, 250);     -- 青い　背景

entryEffectLife( SP_ATK_2, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_ATK_2+8, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+8, ct, 255);
setEffAlphaKey(SP_ATK_2+10, ct, 255);
setEffAlphaKey(SP_ATK_2+23, ct, 0);
setEffScaleKey(SP_ATK_2+8, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+12, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+20, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+23, ct, 6.0, 6.0);
setEffAlphaKey(	SP_ATK_2+23,spname, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 175; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+3,    0,  0, 0,   -128);
setMoveKey( SP_dodge+9,    0,   1600,  0,   80);
setDisp( SP_dodge+9, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

playSe( SP_ATK_2+28, SE_07);
playSe( SP_ATK_2+23, SE_06);


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setMoveKey(  rn_01,  0,  -170,  0,  -128);--中央に近づく
setMoveKey(  rn_01+5,  1,  800,  0,  -128);--中央に近づく
playSe(rn_01+5,1018);
--------------------------------------------------------------
setDisp( rn_01, 1, 1);
changeAnime(  rn_01,  1,  104);
-------------------------------------------

setMoveKey(  ATK_01,  0,  -50,  0,  -128);
setMoveKey(  ATK_01,  1,  120,  0,  -128);
changeAnime(  ATK_01,  0,  14);--kikku 
playSe(ATK_01,1000);
entryFadeBg( ATK_01+2, 0, 10, 0, 255, 0, 0, 255);       --ベース暗め　背景
entryFadeBg(  ATK_01+1, 0, 35, 8, 0, 0, 0, 255);     -- 　背景

--setEnvZoomEnable( ATK_01+5,  0);
--setQuake(  ATK_01+1,  5,  12);
entryEffect(  ATK_01,  1,  0,  1,  0,  0,  50);
entryEffect(  ATK_01+1,  908,  0,  1,  0,  0,  0);
entryEffect(  ATK_01+1,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_01+1,  20,  4,  1,  -1,  -20,  -240);--baki
changeAnime(  ATK_01+1,  1,  108);--モーション
setDamage(  ATK_01+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_01+2,  1);

-----------------------------------------------
setMoveKey(  ATK_02,  0,  -45,  30,  -128);
setMoveKey(  ATK_02,  1,  100,  -50,  -128);
changeAnime(  ATK_02+1,  0,  10);--パンチ1
playSe(ATK_02+1,1000);

entryEffect(  ATK_02+1,  2,  0,  1,  0,  -30,  40);
entryEffect(  ATK_02+2,  908,  0,  1,  0,  -30,  40);
entryEffect(  ATK_02+2,  906,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_02+1,  2,  4,  1,  -1,  -30,  240);--gagaga
changeAnime(  ATK_02+2,  1,  108);--モーション
setDamage(  ATK_02+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_02+3,  1);


setMoveKey(  ATK_03,  0,  -35,  20,  -128);
setMoveKey(  ATK_03,  1,  120,  -60,  -128);
changeAnime(  ATK_03+1,  0,  2);

setMoveKey(  ATK_03+10,  0,  -90,  -100,  -128);
setMoveKey(  ATK_03+10,  1,  100,  -40,  -128);

changeAnime(  ATK_03+13,  0,  12);--キック
entryFadeBg(  ATK_03+13, 0, 15, 8, 255, 0, 0, 255);     -- 　背景
playSe(ATK_03+13,1001);
entryEffect(  ATK_03+13,  1,  0,  1,  10,  15,  20);
entryEffect(  ATK_03+14,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_03+14,  908,  0,  1,  10,  15,  20);
changeAnime(  ATK_03+14,  1,  106);--モーション

setDamage(  ATK_03+14,  1,  0);--ダメージ振動等
pauseChara(  ATK_03+15,  1);


setMoveKey(  ATK_04,  0,  -36,  0,  -128);
setMoveKey(  ATK_04+1,  0,  -55,  0,  -128);

--setMoveKey(  ATK_04,  1,  60,  30,  -128);
changeAnime(  ATK_04+2,  0,  11);--パンチ3

setMoveKey(  ATK_04+3,  0,  -89,  0,  -128);
entryEffect(  ATK_04+4,  3,  0,  1,  0,  0,  0);
playSe(ATK_04+4,1009);

entryEffect(  ATK_04+5,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_04+5,  908,  1,  1,  0,  0,  0);
entryKakimoji(  ATK_04+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_04+4,  1,  0);--ダメージ振動等
changeAnime(  ATK_04+5,  1,  108);--モーション
pauseChara(  ATK_04+7,  5);
setMoveKey(  ATK_04+7,  0,  -89,  0,  -128);

-----------------------------------

setMoveKey(  rn_03+5,  0,  -120,  0,  -128);
setMoveKey(  rn_03+8,  0,  -130,  0,  -128);
setMoveKey(  rn_03+8,  1,  150,  -10,  -128);

changeAnime(  rn_03+7,  0,  0);

setDrawFront( rn_03, 1, 1);

entryEffectLife(  rn_03+3, 914,  15,  0x80,  -1,  0,  0,  0);
--entryKakimoji(  rn_03+11,  6,  4,  0,  -1,  -50,  200);
--playSe(rn_03+15,1015);
setMoveKey(  rn_03+10,  0,  -170,  40,  -100);
setMoveKey(  rn_03+15,  0,  -180,  80,  -80);
changeAnime(  rn_03+18,  0,  16);
changeAnime(  rn_03+18,  1,  118);

setMoveKey(  rn_03+20,  0,  -100,  -35,  -80);
setMoveKey(  rn_03+30,  0,  -50,  25,  -90);
setMoveKey(  rn_03+30,  1,  55,  0,  -128);

--setEnvZoomEnable( rn_03+30,  1);--カメラON
changeAnime(  rn_03+32,  0,  0);
setMoveKey(  rn_03+35,  0,  -35,  30,  -128);
--entryFlashBg( rn_03+36,  1,  0,  0,  0);
setMoveKey(  rn_03+37,  0,  -35,  40,  -128);
setMoveKey(  rn_03+45,  0,  -35,  10,  -128);
changeAnime( rn_03+35,  0,  15);
entryFadeBg( rn_03+35, 0, 20, 8, 255, 255, 250, 255);     -- 青い　背景
pauseChara( rn_03+35,10)

entryEffect(  rn_03+36,  908,  0,  1,  0,  0,  0);

setDamage(  rn_03+35,  1,  0);--ダメージ振動等
changeAnime(  rn_03+37,  1,  107);--モーション
setRotateKey( rn_03+37, 1, 0);
setRotateKey( rn_03+37, 1, -45);
entryEffect(  rn_03+37,  3,  0,  1,  0,  0,  0);
playSe(rn_03+37,1009);

entryEffect(  rn_03+37,  908,  0,  1,  0,  0,  0);
entryKakimoji( rn_03+37,  19,  4,  1,  0,  0,  -150);--どん

pauseAll(  rn_03+45, 4);

setMoveKey(  rn_03+49,  0,  -25,  0,  50);
setMoveKey(  rn_03+55,  0,  -100,  30,  0);
setMoveKey(  rn_03+49,  1,  25,  0,  50);
setMoveKey(  rn_03+55,  1, 500,  -100,  0);

setEnvZoomEnable( rn_03+60,  0);--カメラOFF
entryFade( rn_03+53, 7, 12, 5, 0, 0, 0, 255);     -- white fade

--敵非表示
setDisp( rn_03+55, 1, 0 );

--キャラ移動
setRotateKey( rn_04,  0,  0);
setRotateKey( rn_04+1,  0,  10);
setRotateKey( rn_04, 1, -45);
setRotateKey( rn_04+1, 1, 0);
setMoveKey(  rn_04,  0,  -100,  30,  0);
setMoveKey(  rn_04+1,  0,  150,  250,  -80);
changeAnime(  rn_04,  0,  1);
setMoveKey(  rn_04+20,  0,  -120,  0,  -50);
changeAnime(  rn_04+22,  0,  17);

setMoveKey(  rn_04+24,  0,  -120,  0,  -50);
setMoveKey(  rn_04+30,  0,  -150,  10,  -28);
--entryEffect(  rn_04+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryFadeBg( rn_04+30, 0, 20, 0, 161, 5, 5, 255);       --ベース暗め　背景
entryEffect(  rn_04+30,   1500,   0x80,    -1,  0,  0,  0);    -- eff_001
setRotateKey( rn_04+19,  0,  10);
setRotateKey( rn_04+31,  0,  0);
changeAnime(  rn_04+31,  0,  0);
playSe( rn_04+35, SE_05);
changeAnime(  rn_04+31,  1,  118);
setMoveKey(  sp_ATK_03-259+259,  0,  0,  10,  -128);

------------------------------------------------------
--カメハメハ発射( sp_ATK_03-259+110F)
------------------------------------------------------

changeAnime( sp_ATK_03-259+260, 0, 31);                                    --かめはめ発射ポーズ
setMoveKey( sp_ATK_03-259+259,    0,     20,  10,  -30);
setMoveKey( sp_ATK_03-259+270,    0,      0,  0,   0);
setMoveKey( sp_ATK_03-259+290,    0,   -30,  0,   20);

entryEffect( sp_ATK_03-259+262, SP_02, 0x40,  0,  300,  0,  0);   --伸びるかめはめ波
playSe( sp_ATK_03-259+262, SE_07);

--敵表示
setDisp( sp_ATK_03-259+326, 1, 1 );

--途中からカメハメハが伸びる
setMoveKey( sp_ATK_03-259+300,    0,   -150,  0,   50);
setMoveKey( sp_ATK_03-259+305,    0,   -500,  0,   80);
setMoveKey( sp_ATK_03-259+326,   1, 500,  -100,  0);
setMoveKey( sp_ATK_03-259+327,    1,  800,    -330,  -120);
setMoveKey( sp_ATK_03-259+332,    1,  200,    -100,  -120);
entryFade( sp_ATK_03-259+365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     --white fade

--** エフェクト等 ** --
entryFadeBg( sp_ATK_03-259+260, 0, 85, 0, 255, 255, 255, 255);       --ベース暗め　背景
entryFadeBg( sp_ATK_03-259+260, 0, 40, 0, 230, 230, 230, 255);    --最初だけ明るい　背景

sen2 = entryEffectLife( sp_ATK_03-259+260, 921, 85, 0x80,  -1,  0,  0,  0); --流線
setEffRotateKey( sp_ATK_03-259+260, sen2, 185);
setShakeChara( sp_ATK_03-259+305, 0, 54, 50);
setEffScaleKey( sp_ATK_03-259+260, sen2, 1.4, 1.4);

shuchusen = entryEffectLife( sp_ATK_03-259+260, 906, 49, 0x00,  -1, 0,  0,  0);   --集中線
setEffScaleKey( sp_ATK_03-259+260, shuchusen, 1.0, 1.0);
setEffScaleKey( sp_ATK_03-259+300, shuchusen, 1.0, 1.0);
setEffScaleKey( sp_ATK_03-259+309, shuchusen, 2.0, 2.0);

--書き文字エントリー
ct = entryEffectLife( sp_ATK_03-259+268, 10012, 32, 0, -1, 0, 200, 300); --ズオッ
setEffShake( sp_ATK_03-259+268, ct, 32, 5);
setEffAlphaKey( sp_ATK_03-259+268, ct, 255);
setEffAlphaKey( sp_ATK_03-259+290, ct, 255);
setEffAlphaKey( sp_ATK_03-259+300, ct, 0);
setEffScaleKey( sp_ATK_03-259+268, ct, 0.0, 0.0);
setEffScaleKey( sp_ATK_03-259+272, ct, 1.3, 1.3);
setEffScaleKey( sp_ATK_03-259+292, ct, 1.3, 1.3);
setEffScaleKey( sp_ATK_03-259+300, ct, 6.0, 6.0);
playSe( sp_ATK_03-259+300, SE_07);
bm = entryEffect( sp_ATK_03-259+335, 1509,  0x40,  1,  0,  0,  0);   -- 爆発
entryFade( sp_ATK_03-259+330, 10,  8, 10, fcolor_r, fcolor_g, fcolor_b, 255);     --white fade
setShake(sp_ATK_03-259+330,10,15);
setEffAlphaKey(sp_ATK_03-259+335,bm,255);
setEffAlphaKey(sp_ATK_03-259+340,bm,255);
setEffAlphaKey(sp_ATK_03-259+345,bm,0);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4, 1, 1);
setDisp( SP_ATK_4, 0, 0);
--setScaleKey( SP_ATK_4, 0, 0.7, 0.7);
--setScaleKey( SP_ATK_4+1, 0, 1.0, 1.0);

setMoveKey(  SP_ATK_4,    1,  150,    -100,  -120);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);-- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_4,  1,  0);
setRotateKey( SP_ATK_4+1,  1,  30 );
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

--entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+110);
end

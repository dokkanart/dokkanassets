print ("[lua]sp0034");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SP_01 = 150052;--溜め
SP_02 = 150053;--発射
SP_03 = 150054;--迫る

--[[
SP_04 = 150048;--17号出現
SP_05 = 150050;--17号連続攻撃
SP_06 = 150061;--17号手前突進

SP_04e = 150055;--17号出現
SP_05e = 150057;--17号連続攻撃
SP_06e = 150061;--17号手前突進
--]]

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0, -30, 0,   0);
setMoveKey(   1,   0, -30, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
changeAnime(  46, 0, 17);                       -- 溜め!

entryEffect(  46,   1503,   0x80,    -1,  0,  0,  0);    -- eff_001
entryEffect(  46,   1502,   0x80, -1,  0,  0,  0);    -- eff_002

playSe( 46, SE_01);
setVisibleUI(0, 0);

speff = entryEffect(  46,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  46,   1505,   0,     -1,  0,  0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 46, SE_04);

entryFade( 122, 5, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
ct = entryEffectLife( 46, 10013, 76, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(46, ct, 40, 7);
setEffAlphaKey(46, ct, 255);
setEffAlphaKey(66, ct, 255);
setEffAlphaKey(125, ct, 0);
setEffScaleKey( 66, ct, 0.1, 0.1);
setEffScaleKey( 125, ct, 2.0, 2.0);
playSe( 46, SE_02);

setMoveKey(   130,   0, -30, 0,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 130,   0, 1.5, 1.5);
setScaleKey( 131,   0, 1.5, 1.5);

playSe( 130, SE_05);
speff = entryEffect(  130,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( 220, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 130+64, SE_06);

setMoveKey(   227,   0, 100, 0,   0);
setScaleKey(   227,   0, 1.5, 1.5);

ATK_01=228;

-----------------------------------------どっかんいくぜーーーい（ダッシュ）
-- 気合いタメ
--setDrawFront( ATK_01, 1, 1);
changeAnime( ATK_01, 0, 16);  -- タックル開始
setMoveKey(   ATK_01,   0, 0, 0, 128);
setMoveKey(  ATK_01,   1,  700,  0,  0);
entryEffectLife( ATK_01,  911,  20,  0x100, -1,  0,  0,  0); 
setScaleKey(   ATK_01,   0, 1, 1);

setMoveKey(  1+ATK_01,   0,  0,0, 128);
setMoveKey(  15+ATK_01,   0,  0,0, 128);
setMoveKey( 25+ATK_01,   0,  0,0,  60);
setMoveKey( 30+ATK_01,   0,  0, 0,   0);

setScaleKey( 35+ATK_01,   0, 1, 1);
setMoveKey( 35+ATK_01,   0,  -10, 0,  -118);

setScaleKey( 40+ATK_01,   0, 1.3, 1.3);
setMoveKey( 40+ATK_01,   0,  -20, 0,  -128);

setScaleKey( 45+ATK_01,   0, 2, 2);
setMoveKey( 45+ATK_01,   0,  -30, 0,  -128);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,   0,  -30, 0,  -128);
setMoveKey( SP_dodge+9,   0,  -1100, 0,  -128);
setDisp( SP_dodge+9, 0, 0);

endPhase(SP_dodge+10);

do return end
else end


setScaleKey( 50+ATK_01,   0, 2.5, 2.5);
setMoveKey( 50+ATK_01,   0,  -30, 0,  -128);

setEffRotateKey(50+ATK_01,   dash, 45);


entryEffect( ATK_01,  11,  0x80,  -1,  0,  0,  -20);--爆破
setShake(ATK_01+1, 13, 17);
entryEffect( 2+ATK_01,  908,  0x80,  -1,  0,  0,  0);--集中線
playSe( ATK_01, 1033);--SE

--playSe( 51+ATK_01,1054);

setShake(30+ATK_01, 11, 20);

removeAllEffect(ATK_01+55);

entryFade( 50+ATK_01, 3, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( 56+ATK_01,   0,  -30, 0,  -128);

SP_Start_1 = ATK_01+60;

-----------------------------------------------------

-- 攻撃

setBgScroll( SP_Start_1, 100);
setDisp( SP_Start_1, 1, 1);
setScaleKey(   SP_Start_1,   0, 1.1, 1.1);
setMoveKey(  SP_Start_1, 0, -600,  0,   0);-- 中央位置から
setMoveKey(  SP_Start_1, 1, -500,  0,   0);-- 中央位置から

ryusen_1=entryEffectLife( SP_Start_1, 920, 155, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_Start_1,ryusen_1,-10);
setEffScaleKey( SP_Start_1, ryusen_1, 1.3, 1.3);

setShake( SP_Start_1, 98, 30);
playSe( SP_Start_1,1003);--SE
playSe( SP_Start_1,1001);--SE
--entryEffect(  SP_Start_1,   22,   0,  1,   0,  -100,  0);
changeAnime( SP_Start_1,  1,   106);-- 敵モーション
setDrawFront( SP_Start_1, 0, 1);


setMoveKey( SP_Start_1, 0, -600,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1, 1, -480,  0,   0);-- 中央位置から
changeAnime( SP_Start_1,   0, 13);-- キック2
playSe( SP_Start_1,1009);--SE
entryEffect(  SP_Start_1,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1, 1, 0);  -- ダメージ振動等

--
setMoveKey( SP_Start_1+8, 0, -500,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+8, 1, -380,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+7,   0, 11);-- パンチ3
playSe( SP_Start_1+8,1009);--SE
entryEffect(  SP_Start_1+7,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+8, 1, 0);  -- ダメージ振動等
setBgScroll( SP_Start_1+8, -10);

setMoveKey( SP_Start_1+16, 0, -400,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+16, 1, -280,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+15,   0, 9);--パンチ1
playSe( SP_Start_1+16,1006);--SE
entryEffect(  SP_Start_1+15,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+16, 1, 0);  -- ダメージ振動等

--
setMoveKey( SP_Start_1+24, 0, -300,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+24, 1, -180,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+23,   0, 13);--キック2
playSe( SP_Start_1+24,1010);--SE
entryEffect(  SP_Start_1+23,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+24, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+24, 1, 108);  --敵モーション

setMoveKey( SP_Start_1+32, 0, -200,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+32, 1, -80,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+31,   0, 11);--パンチ3
playSe( SP_Start_1+32,1009);--SE
entryEffect(  SP_Start_1+31,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+32, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+32,  1,   106);-- 敵モーション
--
setEnvZoomEnable(SP_Start_1+40,1);

setMoveKey( SP_Start_1+40, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+40, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+39,   0, 12);--キック1
playSe( SP_Start_1+40,1001);--SE
entryEffect(  SP_Start_1+39,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+40, 1, 0);  -- ダメージ振動等

setMoveKey( SP_Start_1+48, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+48, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+47,   0, 14);--キック3
playSe( SP_Start_1+48,1010);--SE
entryEffect(  SP_Start_1+47,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+48, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+48, 1, 108);  --敵モーション

--
setMoveKey( SP_Start_1+56, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+56, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+55,   0, 11);--パンチ3
playSe( SP_Start_1+56,1009);--SE
entryEffect(  SP_Start_1+55,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+56, 1, 0);  -- ダメージ振動等

setMoveKey( SP_Start_1+64, 0, -50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+64, 1, 70,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+63,   0, 9);--パンチ1  392
playSe( SP_Start_1+64,1012);--SE
entryEffect(  SP_Start_1+63,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+64, 1, 0);  -- ダメージ振動等

setMoveKey( SP_Start_1+72, 0, 0,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+72, 1, 120,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+71,   0, 11);--キック3 
playSe( SP_Start_1+72,1013);--SE
entryEffect(  SP_Start_1+71,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+72, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+72,  1,   106);-- 敵モーション


setMoveKey( SP_Start_1+80, 0, 50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+80, 1, 170,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+79,   0, 13);--キック2
playSe( SP_Start_1+80,1001);--SE
entryEffect(  SP_Start_1+79,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+80, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+80, 1, 108);  --敵モーション

--
setMoveKey( SP_Start_1+88, 0, 100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+88, 1, 220,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+87,   0, 9);--パンチ1
playSe( SP_Start_1+88,1000);--SE
entryEffect(  SP_Start_1+87,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+88, 1, 0);  -- ダメージ振動等

setMoveKey( SP_Start_1+96, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+96, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+95,   0, 11);--パンチ3
playSe( SP_Start_1+96,1009);--SE
entryEffect(  SP_Start_1+95,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+96, 1, 0);  -- ダメージ振動等

--
setMoveKey( SP_Start_1+104, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+104, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+103,   0, 10);--パンチ2
playSe( SP_Start_1+104,1006);--SE
entryEffect(  SP_Start_1+103,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+104, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+104, 1, 106);  --敵モーション

setMoveKey( SP_Start_1+112, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+112, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+111,   0, 12);--キック1
playSe( SP_Start_1+112,1001);--SE
entryEffect(  SP_Start_1+111,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+112, 1, 0);  -- ダメージ振動等
--
setMoveKey( SP_Start_1+120, 0, 100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+120, 1, 220,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+119,   0, 11);--パンチ3
playSe( SP_Start_1+120,1009);--SE
entryEffect(  SP_Start_1+119,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+120, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+120, 1, 108);  --敵モーション

setMoveKey( SP_Start_1+128, 0, 50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+128, 1, 170,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+127,   0, 14);--キック3
playSe( SP_Start_1+128,1010);--SE
entryEffect(  SP_Start_1+127,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+128, 1, 0);  -- ダメージ振動等

--
setMoveKey( SP_Start_1+136, 0, 0,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+136, 1, 120,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+135,   0, 12);--キック1
playSe( SP_Start_1+136,1001);--SE
entryEffect(  SP_Start_1+135,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+136, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+136, 1, 106);  --敵モーション

setMoveKey( SP_Start_1+144, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+144, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+143,   0, 9);--パンチ1
playSe( SP_Start_1+144,1000);--SE
entryEffect(  SP_Start_1+143,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+144, 1, 0);  -- ダメージ振動等

setDrawFront( SP_Start_1+149, 0, 0);
changeAnime( SP_Start_1+149,   0, 0);--移動
setRotateKey( SP_Start_1+93, 0,10);
setEnvZoomEnable(SP_Start_1+94,1);

setMoveKey( SP_Start_1+154, 0, 30,  150,   0);-- 中央位置から
setMoveKey( SP_Start_1+154, 1, 150,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+153,   0, 15);--撃ち落とし
playSe( SP_Start_1+154,1009);--SE
entryEffect(  SP_Start_1+153,   905,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+153, 1, 0);  -- ダメージ振動等


-- 受け------------------------------------------
-- 味方移動（画面外へ)
setMoveKey( SP_Start_1+154, 1, 130,  0,   0);      -- 敵を若干後退

setMoveKey(  SP_Start_1+164, 1, 600,  0,   0);      -- 吹っ飛び中
changeAnime( SP_Start_1+154, 1, 108);    			-- モーション(立ち)

endPhase(SP_Start_1+164);

setDisp( SP_Start_1+164, 1, 0);

-- ** エフェクト等 ** ------------------------------------
entryFadeBg( SP_Start_1, 0, 155, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( SP_Start_1, 906, 154, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start_1, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_1, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_1+154, shuchusen, 2.0, 2.0);

-----------------------------------------------------------

entryFade( SP_Start_1+155, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_Start_2 = SP_Start_1+163; --367


--吹っ飛びからの爆発--------------------------

setDisp( SP_Start_1+160, 0, 0);
setDisp( SP_Start_2, 1, 1);
setRotateKey( SP_Start_1+160, 0,0);
setMoveKey(  SP_Start_1+160, 0, -30,  -10,  0); 
setScaleKey(  SP_Start_1+159,  0, 1.1, 1.1);
setScaleKey( SP_Start_1+160, 0, 1.5, 1.5);

setRotateKey(  SP_Start_2+1,1,20);
setMoveKey(  SP_Start_2+3, 1, -500,  250,   30); 
setMoveKey(  SP_Start_2+6, 1, 50,  -100,   0); 
setMoveKey(  SP_Start_2+10, 1, 350,  -350,   -100); 

setDisp( SP_Start_2+11, 1, 0);
--setRotateKey(SP_Start_2+11,1,0);


--爆破演出1
  Bmeff = entryEffect(SP_Start_2+10,    1509,  0,  -1,  0,  300,  -200);   -- HIT
  playSe(SP_Start_2+10,1023);
  setEffMoveKey(SP_Start_2+20, Bmeff,  -1500,-250);
  setEffScaleKey(SP_Start_2,Bmeff,2,2);
--シェイク
  setShake(SP_Start_2+5,10,15);

  entryFadeBg(SP_Start_2,0,5,5,255,255,255,255);
  entryFlashBg(SP_Start_2+5,3,255,255,255);


--爆破演出2
setBgScroll(SP_Start_2+25,60);
  Bmeff2 = entryEffect(SP_Start_2+25,    1509,  0,  -1,  0,  250,  -250);   -- HIT
  playSe(SP_Start_2+25,1023);
  setEffScaleKey(SP_Start_2+25,Bmeff2,1.2,1.2);
  setEffMoveKey(SP_Start_2+59, Bmeff2,  -1400,-280);
  --シェイク
  setShake(SP_Start_2+26,10,15);

  entryFadeBg(SP_Start_2+25,2,5,5,0,0,0,255);
  entryFlashBg(SP_Start_2+32,3,0,0,0);
  
 
--------------------------------------

entryFade( SP_Start_2+59, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_Start_2+63, 1, 0);
setRotateKey(SP_Start_2,1,0); 
setEnvZoomEnable(SP_Start_2+63,0);

SP_Start_3 = SP_Start_2+67; --443

removeAllEffect(SP_Start_3-1);
setBgScroll( SP_Start_3, 0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setMoveKey(  SP_Start_3, 0, -150,  -10,  0); 
entryEffect( SP_Start_3+2, 700, 0x00,  0, 0,  0,  -20); --瞬間移動
setDisp( SP_Start_3+5, 0, 1);
setVisibleUI(SP_Start_3, 0);
changeAnime( SP_Start_3, 0, 30);                       -- 溜め!
setScaleKey(  SP_Start_3,   0, 1.5, 1.5);
playSe( SP_Start_3, 43);

--changeAnime( SP_Start_3+35, 0, 30);     

kame_hand = entryEffect( SP_Start_3+30, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_Start_3+30, kame_hand, 0.5, 0.5);

setShakeChara( SP_Start_3+30, 0,100,10);

playSe( SP_Start_3+30, SE_03);
playSe( SP_Start_3+55, SE_03);
playSe( SP_Start_3+80, SE_03);
playSe( SP_Start_3+105, SE_03);
playSe( SP_Start_3+130, SE_03);

setMoveKey(  SP_Start_3+130, 0, -120,  -10,  0); 

entryFade( SP_Start_3+130, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_3+30, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_Start_3+30, ct, 40, 8);
setEffScaleKey(SP_Start_3+30, ct, 1.4, 1.4);

--setMoveKey(  SP_Start_3+134, 0, -100,  -30,  0); 

setScaleKey(  SP_Start_3+133,   0, 1.5, 1.5);
setMoveKey(  SP_Start_3+133, 0, -10,  -10,  0); 
setScaleKey(  SP_Start_3+134,   0, 1, 1);

SP_Start_4 = SP_Start_3+138;--599


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_Start_4, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  SP_Start_4-1,    0,      0,  -80,   0);
setMoveKey(  SP_Start_4,    0,   -600,  -80,   0);
setMoveKey(  SP_Start_4+1,    0,   -600,  -80,   0);
setMoveKey(  SP_Start_4+10,    0,   -100,  -80,   0);

kamehame_beam = entryEffectLife( SP_Start_4, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( SP_Start_4, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  SP_Start_4+39,    0,   -100,  -80,   0);
setMoveKey(  SP_Start_4+40,    0,   -100,  -80,   0);
setMoveKey(  SP_Start_4+48,    0,   -1100,  -80,   0);

entryFade( SP_Start_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_Start_4, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_Start_4, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_Start_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_Start_4, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen = entryEffectLife( SP_Start_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start_4, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_Start_4+8, ct, 32, 5);

setEffAlphaKey(SP_Start_4+8, ct, 255);
setEffAlphaKey(SP_Start_4+30, ct, 255);
setEffAlphaKey(SP_Start_4+40, ct, 0);

setEffScaleKey(SP_Start_4+8, ct, 0.0, 0.0);
setEffScaleKey(SP_Start_4+12, ct, 1.3, 1.3);
setEffScaleKey(SP_Start_4+32, ct, 1.3, 1.3);
setEffScaleKey(SP_Start_4+40, ct, 6.0, 6.0);
playSe( SP_Start_4+40, SE_07);

--704

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_Start_4+110, 0, 0);
setDisp( SP_Start_4+110, 1, 1);
setRotateKey(SP_Start_4+111,1,0);  

changeAnime( SP_Start_4+110, 1, 104);                        -- ガード
setMoveKey(  SP_Start_4+109,    1,  235,  0,   0);
setMoveKey(  SP_Start_4+110,    1,  235,  0,   0);
setMoveKey(  SP_Start_4+111,    1,  235,  0,   0);
setScaleKey( SP_Start_4+109,    1,  0.7, 0.7);
setScaleKey( SP_Start_4+110,    1,  0.7, 0.7);

setMoveKey(  SP_Start_4+140,    1,   120,  0,   0);
setScaleKey(  SP_Start_4+140,   1,   1.6,  1.6);
setRotateKey(SP_Start_4+140,1,0);  

playSe( SP_Start_4+130, SE_06);

kamehame_beam2 = entryEffect( SP_Start_4+110, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_Start_4+110, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start_4+192, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start_4+194, kamehame_beam2, 2.5, 2.5);
setDamage( SP_Start_4+192, 1, 0);  -- ダメージ振動等

playSe( SP_Start_4+195, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( SP_Start_4+195, 1, 108);
setMoveKey(  SP_Start_4+195, 1,  120,    0,  0);
setMoveKey(  SP_Start_4+209, 1,  400,    0,  0);
setScaleKey( SP_Start_4+195, 1,  1.6, 1.6);
setScaleKey( SP_Start_4+198, 1,  1.5, 1.5);
setScaleKey( SP_Start_4+208, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_Start_4+110, 1, 99, 20);

entryFadeBg( SP_Start_4+110, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_Start_4+110, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+110, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_Start_4+110, ct, 99, 20);
setEffScaleKey( SP_Start_4+110, ct, 2.4, 2.4);
setEffRotateKey(SP_Start_4+110, ct, 70);
setEffAlphaKey(SP_Start_4+110, ct, 255);
setEffAlphaKey(SP_Start_4+170, ct, 255);
setEffAlphaKey(SP_Start_4+190, ct, 0);

entryFade( SP_Start_4+202, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey(SP_Start_4+208,1,0);  

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_Start_4+209, 1, 1);
setMoveKey(  SP_Start_4+209,    1,  100,  0,   0);
setScaleKey( SP_Start_4+209,    1,  1.0, 1.0);
setMoveKey(  SP_Start_4+210,    1,    0,   0,   128);
setScaleKey( SP_Start_4+210,    1,  0.1, 0.1);

changeAnime( SP_Start_4+210, 1, 107);                         -- 手前ダメージ
entryEffect( SP_Start_4+218, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_Start_4+218, SE_10);

setMoveKey(  SP_Start_4+218,   1,    0,   0,   128);
setMoveKey(  SP_Start_4+225,   1,  -60,  -200,  -100);
--setMoveKey(  SP_Start_4+226,   1,  -60,  -200,  -100);
setDamage( SP_Start_4+226, 1, 0);  -- ダメージ振動等
setShake(SP_Start_4+217,6,15);
setShake(SP_Start_4+223,15,10);

setRotateKey( SP_Start_4+210,  1,  30 );
setRotateKey( SP_Start_4+212,  1,  80 );
setRotateKey( SP_Start_4+214,  1, 120 );
setRotateKey( SP_Start_4+216,  1, 160 );
setRotateKey( SP_Start_4+218,  1, 200 );
setRotateKey( SP_Start_4+220,  1, 260 );
setRotateKey( SP_Start_4+222,  1, 320 );
setRotateKey( SP_Start_4+224,  1,   0 );

setShakeChara( SP_Start_4+225, 1, 5,  10);
setShakeChara( SP_Start_4+230, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+225, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_Start_4+225, ct, 30, 10);
setEffRotateKey( SP_Start_4+225, ct, -40);
setEffScaleKey( SP_Start_4+225, ct, 4.0, 4.0);
setEffScaleKey( SP_Start_4+226, ct, 2.0, 2.0);
setEffScaleKey( SP_Start_4+227, ct, 2.6, 2.6);
setEffScaleKey( SP_Start_4+228, ct, 4.0, 4.0);
setEffScaleKey( SP_Start_4+229, ct, 2.6, 2.6);
setEffScaleKey( SP_Start_4+230, ct, 3.8, 3.8);
setEffScaleKey( SP_Start_4+310, ct, 3.8, 3.8);
setEffAlphaKey( SP_Start_4+225, ct, 255);
setEffAlphaKey( SP_Start_4+310, ct, 255);
setEffAlphaKey( SP_Start_4+310, ct, 0);

playSe( SP_Start_4+213, SE_11);
shuchusen = entryEffectLife( SP_Start_4+213, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_Start_4+213, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_Start_4+226);

entryFade( SP_Start_4+310, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_Start_4+310);

else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
--気を貯める
changeAnime(  46, 0, 17);                       -- 溜め!

entryEffect(  46,   1503,   0x80,    -1,  0,  0,  0);    -- eff_001
entryEffect(  46,   1502,   0x80, -1,  0,  0,  0);    -- eff_002

playSe( 46, SE_01);
setVisibleUI(0, 0);

--[[
speff = entryEffect(  46,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  46,   1505,   0,     -1,  0,  0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 46, SE_04);

entryFade( 122, 5, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
ct = entryEffectLife( 46, 10013, 76, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(46, ct, 40, 7);
setEffAlphaKey(46, ct, 255);
setEffAlphaKey(66, ct, 255);
setEffAlphaKey(125, ct, 0);
setEffScaleKey( 66, ct, 0.1, 0.1);
setEffScaleKey( 125, ct, 2.0, 2.0);
playSe( 46, SE_02);

setMoveKey(   130,   0, -30, 0,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 130,   0, 1.5, 1.5);
setScaleKey( 131,   0, 1.5, 1.5);

playSe( 130, SE_05);
speff = entryEffect(  130,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( 220, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 130+64, SE_06);

setMoveKey(   227,   0, 100, 0,   0);
setScaleKey(   227,   0, 1.5, 1.5);

ATK_01=228;

-----------------------------------------どっかんいくぜーーーい（ダッシュ）
-- 気合いタメ
--setDrawFront( ATK_01, 1, 1);
changeAnime( ATK_01, 0, 16);  -- タックル開始
setMoveKey(   ATK_01,   0, 0, 0, 128);
setMoveKey(  ATK_01,   1,  700,  0,  0);
entryEffectLife( ATK_01,  911,  20,  0x100, -1,  0,  0,  0); 
setScaleKey(   ATK_01,   0, 1, 1);

setMoveKey(  1+ATK_01,   0,  0,0, 128);
setMoveKey(  15+ATK_01,   0,  0,0, 128);
setMoveKey( 25+ATK_01,   0,  0,0,  60);
setMoveKey( 30+ATK_01,   0,  0, 0,   0);

setScaleKey( 35+ATK_01,   0, 1, 1);
setMoveKey( 35+ATK_01,   0,  -10, 0,  -118);

setScaleKey( 40+ATK_01,   0, 1.3, 1.3);
setMoveKey( 40+ATK_01,   0,  -20, 0,  -128);

setScaleKey( 45+ATK_01,   0, 2, 2);
setMoveKey( 45+ATK_01,   0,  -30, 0,  -128);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,   0,  -30, 0,  -128);
setMoveKey( SP_dodge+9,   0,  -1100, 0,  -128);
setDisp( SP_dodge+9, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

setScaleKey( 50+ATK_01,   0, 2.5, 2.5);
setMoveKey( 50+ATK_01,   0,  -30, 0,  -128);

setEffRotateKey(50+ATK_01,   dash, 45);


entryEffect( ATK_01,  11,  0x80,  -1,  0,  0,  -20);--爆破
setShake(ATK_01+1, 13, 17);
entryEffect( 2+ATK_01,  908,  0x80,  -1,  0,  0,  0);--集中線
playSe( ATK_01, 1033);--SE

--playSe( 51+ATK_01,1054);

setShake(30+ATK_01, 11, 20);

removeAllEffect(ATK_01+55);

entryFade( 50+ATK_01, 3, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( 56+ATK_01,   0,  -30, 0,  -128);

SP_Start_1 = ATK_01+60;


-----------------------------------------------------

-- 攻撃

setBgScroll( SP_Start_1, 100);
setDisp( SP_Start_1, 1, 1);
setScaleKey(   SP_Start_1,   0, 1.1, 1.1);
setMoveKey(  SP_Start_1, 0, -600,  0,   0);-- 中央位置から
setMoveKey(  SP_Start_1, 1, -500,  0,   0);-- 中央位置から

ryusen_1=entryEffectLife( SP_Start_1, 920, 155, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_Start_1,ryusen_1,-10);
setEffScaleKey( SP_Start_1, ryusen_1, 1.3, 1.3);

setShake( SP_Start_1, 98, 30);
playSe( SP_Start_1,1003);--SE
playSe( SP_Start_1,1001);--SE
--entryEffect(  SP_Start_1,   22,   0,  1,   0,  -100,  0);
changeAnime( SP_Start_1,  1,   106);-- 敵モーション
setDrawFront( SP_Start_1, 0, 1);


setMoveKey( SP_Start_1, 0, -600,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1, 1, -480,  0,   0);-- 中央位置から
changeAnime( SP_Start_1,   0, 13);-- キック2
playSe( SP_Start_1,1009);--SE
entryEffect(  SP_Start_1,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1, 1, 0);  -- ダメージ振動等

--
setMoveKey( SP_Start_1+8, 0, -500,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+8, 1, -380,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+7,   0, 11);-- パンチ3
playSe( SP_Start_1+8,1009);--SE
entryEffect(  SP_Start_1+7,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+8, 1, 0);  -- ダメージ振動等
setBgScroll( SP_Start_1+8, -10);

setMoveKey( SP_Start_1+16, 0, -400,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+16, 1, -280,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+15,   0, 9);--パンチ1
playSe( SP_Start_1+16,1006);--SE
entryEffect(  SP_Start_1+15,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+16, 1, 0);  -- ダメージ振動等

--
setMoveKey( SP_Start_1+24, 0, -300,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+24, 1, -180,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+23,   0, 13);--キック2
playSe( SP_Start_1+24,1010);--SE
entryEffect(  SP_Start_1+23,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+24, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+24, 1, 108);  --敵モーション

setMoveKey( SP_Start_1+32, 0, -200,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+32, 1, -80,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+31,   0, 11);--パンチ3
playSe( SP_Start_1+32,1009);--SE
entryEffect(  SP_Start_1+31,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+32, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+32,  1,   106);-- 敵モーション
--
setEnvZoomEnable(SP_Start_1+40,1);

setMoveKey( SP_Start_1+40, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+40, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+39,   0, 12);--キック1
playSe( SP_Start_1+40,1001);--SE
entryEffect(  SP_Start_1+39,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+40, 1, 0);  -- ダメージ振動等

setMoveKey( SP_Start_1+48, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+48, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+47,   0, 14);--キック3
playSe( SP_Start_1+48,1010);--SE
entryEffect(  SP_Start_1+47,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+48, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+48, 1, 108);  --敵モーション

--
setMoveKey( SP_Start_1+56, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+56, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+55,   0, 11);--パンチ3
playSe( SP_Start_1+56,1009);--SE
entryEffect(  SP_Start_1+55,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+56, 1, 0);  -- ダメージ振動等

setMoveKey( SP_Start_1+64, 0, -50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+64, 1, 70,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+63,   0, 9);--パンチ1  392
playSe( SP_Start_1+64,1012);--SE
entryEffect(  SP_Start_1+63,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+64, 1, 0);  -- ダメージ振動等

setMoveKey( SP_Start_1+72, 0, 0,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+72, 1, 120,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+71,   0, 11);--キック3 
playSe( SP_Start_1+72,1013);--SE
entryEffect(  SP_Start_1+71,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+72, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+72,  1,   106);-- 敵モーション


setMoveKey( SP_Start_1+80, 0, 50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+80, 1, 170,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+79,   0, 13);--キック2
playSe( SP_Start_1+80,1001);--SE
entryEffect(  SP_Start_1+79,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+80, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+80, 1, 108);  --敵モーション

--
setMoveKey( SP_Start_1+88, 0, 100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+88, 1, 220,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+87,   0, 9);--パンチ1
playSe( SP_Start_1+88,1000);--SE
entryEffect(  SP_Start_1+87,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+88, 1, 0);  -- ダメージ振動等

setMoveKey( SP_Start_1+96, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+96, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+95,   0, 11);--パンチ3
playSe( SP_Start_1+96,1009);--SE
entryEffect(  SP_Start_1+95,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+96, 1, 0);  -- ダメージ振動等

--
setMoveKey( SP_Start_1+104, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+104, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+103,   0, 10);--パンチ2
playSe( SP_Start_1+104,1006);--SE
entryEffect(  SP_Start_1+103,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+104, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+104, 1, 106);  --敵モーション

setMoveKey( SP_Start_1+112, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+112, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+111,   0, 12);--キック1
playSe( SP_Start_1+112,1001);--SE
entryEffect(  SP_Start_1+111,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+112, 1, 0);  -- ダメージ振動等
--
setMoveKey( SP_Start_1+120, 0, 100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+120, 1, 220,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+119,   0, 11);--パンチ3
playSe( SP_Start_1+120,1009);--SE
entryEffect(  SP_Start_1+119,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+120, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+120, 1, 108);  --敵モーション

setMoveKey( SP_Start_1+128, 0, 50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+128, 1, 170,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+127,   0, 14);--キック3
playSe( SP_Start_1+128,1010);--SE
entryEffect(  SP_Start_1+127,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+128, 1, 0);  -- ダメージ振動等

--
setMoveKey( SP_Start_1+136, 0, 0,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+136, 1, 120,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+135,   0, 12);--キック1
playSe( SP_Start_1+136,1001);--SE
entryEffect(  SP_Start_1+135,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+136, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+136, 1, 106);  --敵モーション

setMoveKey( SP_Start_1+144, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+144, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+143,   0, 9);--パンチ1
playSe( SP_Start_1+144,1000);--SE
entryEffect(  SP_Start_1+143,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+144, 1, 0);  -- ダメージ振動等

setDrawFront( SP_Start_1+149, 0, 0);
changeAnime( SP_Start_1+149,   0, 0);--移動
setRotateKey( SP_Start_1+93, 0,10);
setEnvZoomEnable(SP_Start_1+94,1);

setMoveKey( SP_Start_1+154, 0, 30,  150,   0);-- 中央位置から
setMoveKey( SP_Start_1+154, 1, 150,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+153,   0, 15);--撃ち落とし
playSe( SP_Start_1+154,1009);--SE
entryEffect(  SP_Start_1+153,   905,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+153, 1, 0);  -- ダメージ振動等


-- 受け------------------------------------------
-- 味方移動（画面外へ)
setMoveKey( SP_Start_1+154, 1, 130,  0,   0);      -- 敵を若干後退

setMoveKey(  SP_Start_1+164, 1, 600,  0,   0);      -- 吹っ飛び中
changeAnime( SP_Start_1+154, 1, 108);    			-- モーション(立ち)

endPhase(SP_Start_1+164);

setDisp( SP_Start_1+164, 1, 0);

-- ** エフェクト等 ** ------------------------------------
entryFadeBg( SP_Start_1, 0, 155, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( SP_Start_1, 906, 154, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start_1, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_1, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_1+154, shuchusen, 2.0, 2.0);

-----------------------------------------------------------

entryFade( SP_Start_1+155, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_Start_2 = SP_Start_1+163; --367


--吹っ飛びからの爆発--------------------------

setDisp( SP_Start_1+160, 0, 0);
setDisp( SP_Start_2, 1, 1);
setRotateKey( SP_Start_1+160, 0,0);
setMoveKey(  SP_Start_1+160, 0, -30,  -10,  0); 
setScaleKey(  SP_Start_1+159,  0, 1.1, 1.1);
setScaleKey( SP_Start_1+160, 0, 1.5, 1.5);

setRotateKey(  SP_Start_2+1,1,20);
setMoveKey(  SP_Start_2+3, 1, -500,  250,   30); 
setMoveKey(  SP_Start_2+6, 1, 50,  -100,   0); 
setMoveKey(  SP_Start_2+10, 1, 350,  -350,   -100); 

setDisp( SP_Start_2+11, 1, 0);
--setRotateKey(SP_Start_2+11,1,0);


--爆破演出1
  Bmeff = entryEffect(SP_Start_2+10,    1509,  0,  -1,  0,  300,  -200);   -- HIT
  playSe(SP_Start_2+10,1023);
  setEffMoveKey(SP_Start_2+20, Bmeff,  -1500,-250);
  setEffScaleKey(SP_Start_2,Bmeff,2,2);
--シェイク
  setShake(SP_Start_2+5,10,15);

  entryFadeBg(SP_Start_2,0,5,5,255,255,255,255);
  entryFlashBg(SP_Start_2+5,3,255,255,255);


--爆破演出2
setBgScroll(SP_Start_2+25,60);
  Bmeff2 = entryEffect(SP_Start_2+25,    1509,  0,  -1,  0,  250,  -250);   -- HIT
  playSe(SP_Start_2+25,1023);
  setEffScaleKey(SP_Start_2+25,Bmeff2,1.2,1.2);
  setEffMoveKey(SP_Start_2+59, Bmeff2,  -1400,-280);
  --シェイク
  setShake(SP_Start_2+26,10,15);

  entryFadeBg(SP_Start_2+25,2,5,5,0,0,0,255);
  entryFlashBg(SP_Start_2+32,3,0,0,0);
  
 
--------------------------------------

entryFade( SP_Start_2+59, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_Start_2+63, 1, 0);
setRotateKey(SP_Start_2,1,0); 
setEnvZoomEnable(SP_Start_2+63,0);

SP_Start_3 = SP_Start_2+67; --443

removeAllEffect(SP_Start_3-1);
setBgScroll( SP_Start_3, 0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setMoveKey(  SP_Start_3, 0, -150,  -10,  0); 
entryEffect( SP_Start_3+2, 700, 0x00,  0, 0,  0,  -20); --瞬間移動
setDisp( SP_Start_3+5, 0, 1);
setVisibleUI(SP_Start_3, 0);
changeAnime( SP_Start_3, 0, 30);                       -- 溜め!
setScaleKey(  SP_Start_3,   0, 1.5, 1.5);
playSe( SP_Start_3, 43);

--changeAnime( SP_Start_3+35, 0, 30);     

kame_hand = entryEffect( SP_Start_3+30, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_Start_3+30, kame_hand, 0.5, 0.5);

setShakeChara( SP_Start_3+30, 0,100,10);

playSe( SP_Start_3+30, SE_03);
playSe( SP_Start_3+55, SE_03);
playSe( SP_Start_3+80, SE_03);
playSe( SP_Start_3+105, SE_03);
playSe( SP_Start_3+130, SE_03);

setMoveKey(  SP_Start_3+130, 0, -120,  -10,  0); 

entryFade( SP_Start_3+130, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_3+30, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_Start_3+30, ct, 40, 8);
setEffScaleKey(SP_Start_3+30, ct, 1.4, 1.4);

--setMoveKey(  SP_Start_3+134, 0, -100,  -30,  0); 

setScaleKey(  SP_Start_3+133,   0, 1.5, 1.5);
setMoveKey(  SP_Start_3+133, 0, -10,  -10,  0); 
setScaleKey(  SP_Start_3+134,   0, 1, 1);

SP_Start_4 = SP_Start_3+138;--599


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_Start_4, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  SP_Start_4-1,    0,      0,  -80,   0);
setMoveKey(  SP_Start_4,    0,   -600,  -80,   0);
setMoveKey(  SP_Start_4+1,    0,   -600,  -80,   0);
setMoveKey(  SP_Start_4+10,    0,   -100,  -80,   0);

kamehame_beam = entryEffectLife( SP_Start_4, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( SP_Start_4, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  SP_Start_4+39,    0,   -100,  -80,   0);
setMoveKey(  SP_Start_4+40,    0,   -100,  -80,   0);
setMoveKey(  SP_Start_4+48,    0,   -1100,  -80,   0);

entryFade( SP_Start_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_Start_4, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_Start_4, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_Start_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_Start_4, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen = entryEffectLife( SP_Start_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start_4, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_Start_4+8, ct, 32, 5);

setEffAlphaKey(SP_Start_4+8, ct, 255);
setEffAlphaKey(SP_Start_4+30, ct, 255);
setEffAlphaKey(SP_Start_4+40, ct, 0);

setEffScaleKey(SP_Start_4+8, ct, 0.0, 0.0);
setEffScaleKey(SP_Start_4+12, ct, 1.3, 1.3);
setEffScaleKey(SP_Start_4+32, ct, 1.3, 1.3);
setEffScaleKey(SP_Start_4+40, ct, 6.0, 6.0);
playSe( SP_Start_4+40, SE_07);

--704

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_Start_4+110, 0, 0);
setDisp( SP_Start_4+110, 1, 1);
setRotateKey(SP_Start_4+111,1,0);  

changeAnime( SP_Start_4+110, 1, 104);                        -- ガード
setMoveKey(  SP_Start_4+109,    1,  235,  0,   0);
setMoveKey(  SP_Start_4+110,    1,  235,  0,   0);
setMoveKey(  SP_Start_4+111,    1,  235,  0,   0);
setScaleKey( SP_Start_4+109,    1,  0.7, 0.7);
setScaleKey( SP_Start_4+110,    1,  0.7, 0.7);

setMoveKey(  SP_Start_4+140,    1,   120,  0,   0);
setScaleKey(  SP_Start_4+140,   1,   1.6,  1.6);
setRotateKey(SP_Start_4+140,1,0);  

playSe( SP_Start_4+130, SE_06);

kamehame_beam2 = entryEffect( SP_Start_4+110, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_Start_4+110, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start_4+192, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start_4+194, kamehame_beam2, 2.5, 2.5);
setDamage( SP_Start_4+192, 1, 0);  -- ダメージ振動等

playSe( SP_Start_4+195, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( SP_Start_4+195, 1, 108);
setMoveKey(  SP_Start_4+195, 1,  120,    0,  0);
setMoveKey(  SP_Start_4+209, 1,  400,    0,  0);
setScaleKey( SP_Start_4+195, 1,  1.6, 1.6);
setScaleKey( SP_Start_4+198, 1,  1.5, 1.5);
setScaleKey( SP_Start_4+208, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_Start_4+110, 1, 99, 20);

entryFadeBg( SP_Start_4+110, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_Start_4+110, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+110, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_Start_4+110, ct, 99, 20);
setEffScaleKey( SP_Start_4+110, ct, 2.4, 2.4);
setEffRotateKey(SP_Start_4+110, ct, -70);
setEffAlphaKey(SP_Start_4+110, ct, 255);
setEffAlphaKey(SP_Start_4+170, ct, 255);
setEffAlphaKey(SP_Start_4+190, ct, 0);

entryFade( SP_Start_4+202, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey(SP_Start_4+208,1,0);  

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_Start_4+209, 1, 1);
setMoveKey(  SP_Start_4+209,    1,  100,  0,   0);
setScaleKey( SP_Start_4+209,    1,  1.0, 1.0);
setMoveKey(  SP_Start_4+210,    1,    0,   0,   128);
setScaleKey( SP_Start_4+210,    1,  0.1, 0.1);

changeAnime( SP_Start_4+210, 1, 107);                         -- 手前ダメージ
entryEffect( SP_Start_4+218, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_Start_4+218, SE_10);

setMoveKey(  SP_Start_4+218,   1,    0,   0,   128);
setMoveKey(  SP_Start_4+225,   1,  -60,  -200,  -100);
--setMoveKey(  SP_Start_4+226,   1,  -60,  -200,  -100);
setDamage( SP_Start_4+226, 1, 0);  -- ダメージ振動等
setShake(SP_Start_4+217,6,15);
setShake(SP_Start_4+223,15,10);

setRotateKey( SP_Start_4+210,  1,  30 );
setRotateKey( SP_Start_4+212,  1,  80 );
setRotateKey( SP_Start_4+214,  1, 120 );
setRotateKey( SP_Start_4+216,  1, 160 );
setRotateKey( SP_Start_4+218,  1, 200 );
setRotateKey( SP_Start_4+220,  1, 260 );
setRotateKey( SP_Start_4+222,  1, 320 );
setRotateKey( SP_Start_4+224,  1,   0 );

setShakeChara( SP_Start_4+225, 1, 5,  10);
setShakeChara( SP_Start_4+230, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+225, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_Start_4+225, ct, 30, 10);
setEffRotateKey( SP_Start_4+225, ct, -40);
setEffScaleKey( SP_Start_4+225, ct, 4.0, 4.0);
setEffScaleKey( SP_Start_4+226, ct, 2.0, 2.0);
setEffScaleKey( SP_Start_4+227, ct, 2.6, 2.6);
setEffScaleKey( SP_Start_4+228, ct, 4.0, 4.0);
setEffScaleKey( SP_Start_4+229, ct, 2.6, 2.6);
setEffScaleKey( SP_Start_4+230, ct, 3.8, 3.8);
setEffScaleKey( SP_Start_4+310, ct, 3.8, 3.8);
setEffAlphaKey( SP_Start_4+225, ct, 255);
setEffAlphaKey( SP_Start_4+310, ct, 255);
setEffAlphaKey( SP_Start_4+310, ct, 0);

playSe( SP_Start_4+213, SE_11);
shuchusen = entryEffectLife( SP_Start_4+213, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_Start_4+213, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_Start_4+226);

entryFade( SP_Start_4+310, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_Start_4+310);

end

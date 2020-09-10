
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

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

tyo = -30;
tyo2 = -40;

SP_01 = 150151; --クウラの溜めエフェクト
SP_02 = 150152; --地面
SP_03 = 150153; --岩が巻き上がる
SP_06 = 150154; --クウラが突っ込む
SP_04 = 1551; --地球上でエネルギー波
--SP_04 = 150134; --発射 _光弾のエフェクト
SP_05 = 1576; --エクスプロージョン = 

multi_frm = 2;

changeAnime( 0, 0, 3);                       -- ダッシュ
setDisp( 0, 1, 0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setMoveKey(  0,  0, -2500,  -2500,   0);
setMoveKey(  1,  0, -2500,  -2500,   0);

setRotateKey( 0,  0,  -30 );
setRotateKey( 1,  0,  -30 );

------------------------------------------------------
-- 突っ込む(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setScaleKey(   100,   0, 1.5, 1.5);

setMoveKey(  25,  0, 50,  -50,   0);
setMoveKey(  110,  0, 50,  -50,   0);
--setMoveKey(  100,  0, 1650,  -50,   0);

setRotateKey( 105,  0,  -30 );

-- ** エフェクト等 ** --

playSe( 0, 1018);

--playSe(0,SE_07);
--playSe(75,SE_07);

speff = entryEffect(15,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(15,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--entryFadeBg( 0, 0, 105, 0, 255, 255, 255, 255);       -- ベース白　背景
entryFadeBg( 0, 0, 110, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryu9 = entryEffectLife(0, 920, 110, 0x80,  -1,  300,  0,  0); -- 流線
setEffRotateKey(0, ryu9, -50);
setEffScaleKey(0, ryu9, 2.0, 2.0);


--shuchusen = entryEffectLife(0, 911, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.5, 1.5);

entryFade(  100, 8, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife(15, 10008, 80, 0x100, -1, 0, -230, 250);    -- ゴゴゴ・・・
setEffShake(15, ct, 70, 8);
setEffScaleKey(15, ct, 1.4, 1.4);

spep_1 =110;

------------------------------------------------------
-- ラッシュ(100F)
------------------------------------------------------
playSe( spep_1, 1018);
setDisp( spep_1, 0, 1);
--setDisp( spep_1+200, 0, 0);
setDisp( spep_1, 1, 1);
--setDisp( spep_1+250, 1, 0);

setScaleKey(   spep_1,   0, 1.5, 1.5);

setMoveKey(  spep_1,  0, 0,  -50,   0);
changeAnime( spep_1, 1, 100);
setScaleKey( spep_1,   1,   1.5,  1.5);
setRotateKey( spep_1,  0,  -30 );
setAnimeLoop( spep_1+1, 1, 1);
setRotateKey( spep_1,  1,  0 );
setMoveKey(  spep_1,  1, 2000,  2000,   -60);

ryuryu = entryEffectLife(spep_1, 920, 22, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, ryuryu, -50);
setEffScaleKey(spep_1, ryuryu, 2.0, 2.0);

shuchusen8 = entryEffectLife(spep_1, 906, 290, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen8, 1.5, 1.5);

entryFadeBg(  spep_1, 0, 290, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

setMoveKey(  spep_1+19,  0, -114,  -126,   0);--

setScaleKey( spep_1+19,   1,   1.5,  1.5);--

setRotateKey( spep_1+19,  0,  -30 );--

setRotateKey( spep_1+19,  1,  0 );--

SP_dodge = 129; --エンドフェイズのフレーム数を置き換える 129 spep_1+19

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_dodge+10,1,0);


ryu9 = entryEffectLife(SP_dodge, 920, 110, 0x80,  -1,  300,  0,  0); -- 流線
setEffRotateKey(SP_dodge, ryu9, -50);
setEffScaleKey(SP_dodge, ryu9, 2.0, 2.0);

setMoveKey(  SP_dodge,  0, 50,  -50,   0);
setMoveKey(  SP_dodge+8,  0, 50,  -50,   0);
setMoveKey(  SP_dodge+9,  0, 0,  -5000,   0);


endPhase(SP_dodge+10);

--[[
setMoveKey(  SP_dodge+10,  1, 100,  100,   -30);--
setDisp(SP_dodge+11,1,0);
setMoveKey(SP_dodge+12,1,0,-800,0);
]]--

do return end
else end

playSe(spep_1+22,1009);
playSe(spep_1+63,1010);
playSe( spep_1+64, 1018);
playSe(spep_1+143,1009);

------------------------------------------------------
setScaleKey(   spep_1+62,   0, 1.5, 1.5);
setScaleKey(   spep_1+63,   0, 1.2, 1.2);
setScaleKey(   spep_1+189,   0, 1.2, 1.2);

setMoveKey(  spep_1+25,  0, -150,  -150,   0);
setMoveKey(  spep_1+35,  0, -650,  -150,   0);
setMoveKey(  spep_1+63,  0, -50,  80,   0);
setMoveKey(  spep_1+70,  0, -250,  -80,   0);
setMoveKey(  spep_1+143,  0, -50,  80,   0);
setMoveKey(  spep_1+144,  0, -50,  80,   0);
setMoveKey(  spep_1+190,  0, -150,  200,   0);

changeAnime( spep_1+20, 0, 11);
changeAnime( spep_1+35, 0, 3);
changeAnime( spep_1+63, 0, 30);
changeAnime( spep_1+143, 0, 31);

changeAnime( spep_1+22, 1, 108); 
changeAnime( spep_1+65, 1, 108);
changeAnime( spep_1+147, 1, 108);

setAnimeLoop( spep_1+23, 1, 1);
setAnimeLoop( spep_1+66, 1, 1);
setAnimeLoop( spep_1+148, 1, 1);

setScaleKey( spep_1+245,   1,   1.5,  1.5);

setRotateKey( spep_1+62,  0,  -30 );
setRotateKey( spep_1+63,  0,  20 );
setRotateKey( spep_1+143,  0,  20 );
setRotateKey( spep_1+144,  0,  0 );
setRotateKey( spep_1+194,  0,  0 );

setRotateKey( spep_1+64,  1,  0 );
setRotateKey( spep_1+142,  1,  0 );
setRotateKey( spep_1+143,  1,  30 );

--setShakeChara( spep_1+65 ,1 ,100 ,10);

setMoveKey(  spep_1+21,  1, 10,  10,   0);
setMoveKey(  spep_1+53,  1, 200,  200,   0);
setMoveKey(  spep_1+63,  1, 100,  50,   0);
setMoveKey(  spep_1+73,  1, 200,  100,   0);
setMoveKey(  spep_1+143,  1, 150,  0,   0);
setMoveKey(  spep_1+170,  1, 500,  -1500,   0);
--setMoveKey(  spep_1+158,  1, -600,  50,   0);
--setMoveKey(  spep_1+218,  1, -600,  50,   0);
--setMoveKey(  spep_1+245,  1, 0,  -50,   0);

eff = entryEffect( spep_1+22, 4,  0, -1,  0,  50,  10);   -- 攻撃1
eff = entryEffect( spep_1+63, 4,  0, -1,  0,  70,  70);   -- 攻撃1
eff = entryEffect( spep_1+143, 4,  0, -1,  0,  100,  0);   -- 攻撃1

-- ** 揺れ等 ** --
setShake(spep_1+22, 20, 25);
setShake(spep_1+63, 20, 25);
setShake(spep_1+143, 20, 25);

--playSe(spep_1,SE_07);
--playSe(spep_1+95,1009);
--playSe(spep_1+125,1009);
--playSe(spep_1+150,1010);
--playSe(365,1021);
--playSe(393,1021);
--playSe(spep_1+245,1014);

ct = entryEffectLife(spep_1+63,SP_01,80,0x40+0x80,0,300,0,0);     --ラッシュ

ryuryu1 = entryEffectLife(spep_1+20, 920, 122, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1+24, ryuryu1, -35);
setEffScaleKey(spep_1+24, ryuryu1, 2.0, 2.0);

ryuryu2 = entryEffectLife(spep_1+143, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1+24, ryuryu2, 50);
setEffScaleKey(spep_1+24, ryuryu2, 2.0, 2.0);

ct = entryEffectLife( spep_1+22, 10019, 62, 0, -1, 0, 10, 200); -- ドンッ
setEffShake( spep_1+22, ct, 32, 5);
setEffAlphaKey( spep_1+22, ct, 255);
setEffAlphaKey( spep_1+49, ct, 255);--290
setEffAlphaKey( spep_1+59, ct, 0);--300
setEffScaleKey( spep_1+22, ct, 0.0, 0.0);
setEffScaleKey( spep_1+32, ct, 2.3, 2.3);
setEffScaleKey( spep_1+49, ct, 2.3, 2.3);
setEffScaleKey( spep_1+59, ct, 6.0, 6.0);

ct = entryEffectLife( spep_1+22+41, 10020, 62, 0, -1, 0, 10, 100); -- バキ！
setEffShake( spep_1+22+41, ct, 32, 5);
setEffAlphaKey( spep_1+22+41, ct, 255);
setEffAlphaKey( spep_1+49+41, ct, 255);--290
setEffAlphaKey( spep_1+59+41, ct, 0);--300
setEffScaleKey( spep_1+22+41, ct, 0.0, 0.0);
setEffScaleKey( spep_1+32+41, ct, 2.3, 2.3);
setEffScaleKey( spep_1+49+41, ct, 2.3, 2.3);
setEffScaleKey( spep_1+59+41, ct, 6.0, 6.0);

ct = entryEffectLife( spep_1+22+41+80, 10018, 62, 0, -1, 0, 10, 200); -- どごん
setEffShake( spep_1+22+41, ct, 32, 5);
setEffAlphaKey( spep_1+22+41+80, ct, 255);
setEffAlphaKey( spep_1+49+41+80, ct, 255);--290
setEffAlphaKey( spep_1+59+41+80, ct, 0);--300
setEffScaleKey( spep_1+22+41+80, ct, 0.0, 0.0);
setEffScaleKey( spep_1+32+41+80, ct, 2.3, 2.3);
setEffScaleKey( spep_1+49+41+80, ct, 2.3, 2.3);
setEffScaleKey( spep_1+59+41+80, ct, 6.0, 6.0);

entryFade(  spep_1+174, 6, 12, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_start = spep_1+190; --211 260

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start-1,   0, 1.5, 1.5);
setScaleKey( SP_start,   0, 1.0, 1.0);

playSe( SP_start, SE_05);
speff = entryEffect(  SP_start,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--setEffAlphaKey(170, speff, 255);
--setEffScaleKey(170, speff, 1.0, 1.0);


entryFade( SP_start+85, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEffScaleKey(259, speff, 1.0, 1.0);
--setEffScaleKey(260, speff, 0.0, 0.0);

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start+64, SE_06);

spep_6 = SP_start+90;  --390

------------------------------------------------------
-- 突っ込む(60F)
------------------------------------------------------
playSe( spep_6, 1018);

setDisp( spep_6, 0, 0);
setDisp( spep_6, 1, 1);
--setDisp( spep_6+100, 1, 0);

--setRotateKey(spep_6,0,0);

--changeAnime( spep_6, 0, 16); 

--changeAnime( spep_6, 1, 102);
--changeAnime( spep_6+50, 1, 107);

--setMoveKey(  spep_6,  0, 400, 300 ,  0);
--setMoveKey(  spep_6+50,  0, 0,  0,   0);
--setMoveKey(  spep_6+100,  0, -400,  -300,   0);

--setScaleKey(  spep_6-1, 0 , 1, 1 );
--setScaleKey(  spep_6, 0 , 0.5, 0.5 );
--setScaleKey(  spep_6+60, 0 , 1.0, 1.0 );
--setScaleKey(  spep_6+80,  0, 2.7, 2.7);
--setScaleKey(  spep_6+100 ,0, 0.5, 0.5 );

setMoveKey(  spep_6-9,  1, -700, 700 ,  0);
setMoveKey(  spep_6+35,  1, 150,  -150,   0);
--setMoveKey(  spep_6+39,  1, 100,  -100,   0);
setMoveKey(  spep_6+45,  1, 250,  -300,   0);
--setMoveKey(  spep_6+100,  1, 500, 500 ,   0);

setScaleKey(  spep_6, 1 , 1.5, 1.5 );
setScaleKey(  spep_6+109,  1, 1.5, 1.5);
--setScaleKey(  spep_6+50,  1, 1, 1);
--setScaleKey(  spep_6+100,  1, 2, 2);
--setScaleKey(  spep_6+100,  1, 1.2, 1.2);

-- ** エフェクト等 ** --

playSe( spep_6+20, 1018);
playSe( spep_6+48, 1024);

setShakeChara( spep_6+47, 1 , 72 , 20);

--playSe(spep_6+50,SE_07);
--playSe( spep_6+50, 1010);--キックの音
--playSe( spep_6+51, 1054);--飛ばされる音

ryuryu3 = entryEffectLife(spep_6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryuryu3, 50);
setEffScaleKey(spep_6, ryuryu3, 2.0, 2.0);

shuchusen11 = entryEffectLife(spep_6+46, 906, 79, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen11, 1.0, 1.0);

ct1 = entryEffect(spep_6+47,SP_02 ,0x80 ,0 ,300 , 170 ,-170);     --地面
setEffShake(spep_6+48, ct1, 100, 40);
ct3 = entryEffect(spep_6+10,SP_06 ,0x100 ,0 ,300 , 170 ,-170);     --クウラ
setEffShake(spep_6+48, ct3, 100, 40);
ct2 = entryEffect(spep_6+47,SP_03 ,0x100 ,0 ,300 , 170 ,-170);     --岩
setEffShake(spep_6+48, ct2, 100, 40);

--arare_kick = entryEffect(spep_6+50,3,0x40+0x100,0,300,100,0); --キック衝撃
--setEffScaleKey(SP_start, arare_kick, 3, 3);

--entryFade( spep_6+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6, 0, 180, 0, 0, 0, 0, 255);       -- ベース暗い　背景

--setRotateKey(spep_6+95,0,0);

--entryFade(spep_6+72, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_6+15, 79, 15);

-- 書き文字エントリー
--ct = entryEffectLife( spep_6, 10008, 99, 0, -1, 0, -150, 260); -- ゴゴゴゴ…
--setEffShake(spep_6, ct, 81, 20);
--setEffScaleKey( spep_6, ct, 2.4, 2.4);
--setEffRotateKey(spep_6, ct, -30);
--setEffAlphaKey(spep_6, ct, 255);
--setEffAlphaKey(spep_6+50, ct, 255);
--setEffAlphaKey(spep_6+72, ct, 0);

-- ** 揺れ等 ** --
setShake(spep_6+48, 20, 25);

-- ダメージ表示
dealDamage(spep_6+48);
setDamage( spep_6+48, 1, 0);  -- ダメージ振動等

entryFade( spep_6+105, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);             -- ホワイト

endPhase(spep_6+120);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突っ込む(40F)
-----------------------------------------------------

setVisibleUI(0, 0);

setScaleKey(   100,   0, 1.5, 1.5);

setMoveKey(  25,  0, 50,  -50,   0);
setMoveKey(  110,  0, 50,  -50,   0);
--setMoveKey(  100,  0, 1650,  -50,   0);

setRotateKey( 105,  0,  -30 );

-- ** エフェクト等 ** --

playSe( 0, 1018);

--playSe(0,SE_07);
--playSe(75,SE_07);

--[[
speff = entryEffect(15,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(15,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

--entryFadeBg( 0, 0, 105, 0, 255, 255, 255, 255);       -- ベース白　背景
entryFadeBg( 0, 0, 110, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryu9 = entryEffectLife(0, 920, 110, 0x80,  -1,  300,  0,  0); -- 流線
setEffRotateKey(0, ryu9, -50);
setEffScaleKey(0, ryu9, 2.0, 2.0);


--shuchusen = entryEffectLife(0, 911, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.5, 1.5);

entryFade(  100, 8, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife(15, 10008, 80, 0x100, -1, 0, -230, 250);    -- ゴゴゴ・・・
setEffShake(15, ct, 70, 8);
setEffScaleKey(15, ct, 1.4, 1.4);

spep_1 =110;


------------------------------------------------------
-- ラッシュ(100F)
------------------------------------------------------
playSe( spep_1, 1018);
setDisp( spep_1, 0, 1);
--setDisp( spep_1+200, 0, 0);
setDisp( spep_1, 1, 1);
--setDisp( spep_1+250, 1, 0);

setScaleKey(   spep_1,   0, 1.5, 1.5);

setMoveKey(  spep_1,  0, 0,  -50,   0);
changeAnime( spep_1, 1, 100);
setScaleKey( spep_1,   1,   1.5,  1.5);
setRotateKey( spep_1,  0,  -30 );
setAnimeLoop( spep_1+1, 1, 1);
setRotateKey( spep_1,  1,  0 );
setMoveKey(  spep_1,  1, 2000,  2000,   -60);

ryuryu = entryEffectLife(spep_1, 920, 22, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, ryuryu, -50);
setEffScaleKey(spep_1, ryuryu, 2.0, 2.0);

shuchusen8 = entryEffectLife(spep_1, 906, 290, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen8, 1.5, 1.5);

entryFadeBg(  spep_1, 0, 290, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setMoveKey(  SP_dodge,  0, 50,  -50,   0);
setMoveKey(  SP_dodge+8,  0, 50,  -50,   0);
setMoveKey(  SP_dodge+9,  0, 0,  -5000,   0);


endPhase(SP_dodge+10);

do return end
else end

playSe(spep_1+22,1009);
playSe(spep_1+63,1010);
playSe( spep_1+64, 1018);
playSe(spep_1+143,1009);

------------------------------------------------------
setScaleKey(   spep_1+62,   0, 1.5, 1.5);
setScaleKey(   spep_1+63,   0, 1.2, 1.2);
setScaleKey(   spep_1+189,   0, 1.2, 1.2);

setMoveKey(  spep_1+25,  0, -150,  -150,   0);
setMoveKey(  spep_1+35,  0, -650,  -150,   0);
setMoveKey(  spep_1+63,  0, -50,  80,   0);
setMoveKey(  spep_1+70,  0, -250,  -80,   0);
setMoveKey(  spep_1+143,  0, -50,  80,   0);
setMoveKey(  spep_1+144,  0, -50,  80,   0);
setMoveKey(  spep_1+190,  0, -150,  200,   0);

changeAnime( spep_1+20, 0, 11);
changeAnime( spep_1+35, 0, 3);
changeAnime( spep_1+63, 0, 30);
changeAnime( spep_1+143, 0, 31);

changeAnime( spep_1+22, 1, 108); 
changeAnime( spep_1+65, 1, 108);
changeAnime( spep_1+147, 1, 108);

setAnimeLoop( spep_1+23, 1, 1);
setAnimeLoop( spep_1+66, 1, 1);
setAnimeLoop( spep_1+148, 1, 1);

setScaleKey( spep_1+245,   1,   1.5,  1.5);

setRotateKey( spep_1+62,  0,  -30 );
setRotateKey( spep_1+63,  0,  20 );
setRotateKey( spep_1+143,  0,  20 );
setRotateKey( spep_1+144,  0,  0 );
setRotateKey( spep_1+194,  0,  0 );

setRotateKey( spep_1+64,  1,  0 );
setRotateKey( spep_1+142,  1,  0 );
setRotateKey( spep_1+143,  1,  30 );

--setShakeChara( spep_1+65 ,1 ,100 ,10);

setMoveKey(  spep_1+21,  1, 10,  10,   0);
setMoveKey(  spep_1+53,  1, 200,  200,   0);
setMoveKey(  spep_1+63,  1, 100,  50,   0);
setMoveKey(  spep_1+73,  1, 200,  100,   0);
setMoveKey(  spep_1+143,  1, 150,  0,   0);
setMoveKey(  spep_1+170,  1, 500,  -1500,   0);
--setMoveKey(  spep_1+158,  1, -600,  50,   0);
--setMoveKey(  spep_1+218,  1, -600,  50,   0);
--setMoveKey(  spep_1+245,  1, 0,  -50,   0);

eff = entryEffect( spep_1+22, 4,  0, -1,  0,  50,  10);   -- 攻撃1
eff = entryEffect( spep_1+63, 4,  0, -1,  0,  70,  70);   -- 攻撃1
eff = entryEffect( spep_1+143, 4,  0, -1,  0,  100,  0);   -- 攻撃1

-- ** 揺れ等 ** --
setShake(spep_1+22, 20, 25);
setShake(spep_1+63, 20, 25);
setShake(spep_1+143, 20, 25);

--playSe(spep_1,SE_07);
--playSe(spep_1+95,1009);
--playSe(spep_1+125,1009);
--playSe(spep_1+150,1010);
--playSe(365,1021);
--playSe(393,1021);
--playSe(spep_1+245,1014);

ct = entryEffectLife(spep_1+63,SP_01,80,0x40+0x80,0,300,0,0);     --ラッシュ

ryuryu1 = entryEffectLife(spep_1+20, 920, 122, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1+24, ryuryu1, -35);
setEffScaleKey(spep_1+24, ryuryu1, 2.0, 2.0);

ryuryu2 = entryEffectLife(spep_1+143, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1+24, ryuryu2, 50);
setEffScaleKey(spep_1+24, ryuryu2, 2.0, 2.0);

ct = entryEffectLife( spep_1+22, 10019, 62, 0, -1, 0, 10, 200); -- ドンッ
setEffShake( spep_1+22, ct, 32, 5);
setEffAlphaKey( spep_1+22, ct, 255);
setEffAlphaKey( spep_1+49, ct, 255);--290
setEffAlphaKey( spep_1+59, ct, 0);--300
setEffScaleKey( spep_1+22, ct, 0.0, 0.0);
setEffScaleKey( spep_1+32, ct, 2.3, 2.3);
setEffScaleKey( spep_1+49, ct, 2.3, 2.3);
setEffScaleKey( spep_1+59, ct, 6.0, 6.0);

ct = entryEffectLife( spep_1+22+41, 10020, 62, 0, -1, 0, 10, 100); -- バキ！
setEffShake( spep_1+22+41, ct, 32, 5);
setEffAlphaKey( spep_1+22+41, ct, 255);
setEffAlphaKey( spep_1+49+41, ct, 255);--290
setEffAlphaKey( spep_1+59+41, ct, 0);--300
setEffScaleKey( spep_1+22+41, ct, 0.0, 0.0);
setEffScaleKey( spep_1+32+41, ct, 2.3, 2.3);
setEffScaleKey( spep_1+49+41, ct, 2.3, 2.3);
setEffScaleKey( spep_1+59+41, ct, 6.0, 6.0);

ct = entryEffectLife( spep_1+22+41+80, 10018, 62, 0, -1, 0, 10, 200); -- どごん
setEffShake( spep_1+22+41, ct, 32, 5);
setEffAlphaKey( spep_1+22+41+80, ct, 255);
setEffAlphaKey( spep_1+49+41+80, ct, 255);--290
setEffAlphaKey( spep_1+59+41+80, ct, 0);--300
setEffScaleKey( spep_1+22+41+80, ct, 0.0, 0.0);
setEffScaleKey( spep_1+32+41+80, ct, 2.3, 2.3);
setEffScaleKey( spep_1+49+41+80, ct, 2.3, 2.3);
setEffScaleKey( spep_1+59+41+80, ct, 6.0, 6.0);

entryFade(  spep_1+174, 6, 12, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_start = spep_1+190; --211 260

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start-1,   0, 1.5, 1.5);
setScaleKey( SP_start,   0, 1.0, 1.0);

playSe( SP_start, SE_05);
speff = entryEffect(  SP_start,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--setEffAlphaKey(170, speff, 255);
--setEffScaleKey(170, speff, 1.0, 1.0);


entryFade( SP_start+85, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEffScaleKey(259, speff, 1.0, 1.0);
--setEffScaleKey(260, speff, 0.0, 0.0);

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start+64, SE_06);

spep_6 = SP_start+90;  --390

------------------------------------------------------
-- 突っ込む(60F)
------------------------------------------------------
playSe( spep_6, 1018);

setDisp( spep_6, 0, 0);
setDisp( spep_6, 1, 1);
--setDisp( spep_6+100, 1, 0);

--setRotateKey(spep_6,0,0);

--changeAnime( spep_6, 0, 16); 

--changeAnime( spep_6, 1, 102);
--changeAnime( spep_6+50, 1, 107);

--setMoveKey(  spep_6,  0, 400, 300 ,  0);
--setMoveKey(  spep_6+50,  0, 0,  0,   0);
--setMoveKey(  spep_6+100,  0, -400,  -300,   0);

--setScaleKey(  spep_6-1, 0 , 1, 1 );
--setScaleKey(  spep_6, 0 , 0.5, 0.5 );
--setScaleKey(  spep_6+60, 0 , 1.0, 1.0 );
--setScaleKey(  spep_6+80,  0, 2.7, 2.7);
--setScaleKey(  spep_6+100 ,0, 0.5, 0.5 );

setMoveKey(  spep_6-9,  1, -700, 700 ,  0);
setMoveKey(  spep_6+35,  1, 150,  -150,   0);
--setMoveKey(  spep_6+39,  1, 100,  -100,   0);
setMoveKey(  spep_6+45,  1, 250,  -300,   0);
--setMoveKey(  spep_6+100,  1, 500, 500 ,   0);

setScaleKey(  spep_6, 1 , 1.5, 1.5 );
setScaleKey(  spep_6+109,  1, 1.5, 1.5);
--setScaleKey(  spep_6+50,  1, 1, 1);
--setScaleKey(  spep_6+100,  1, 2, 2);
--setScaleKey(  spep_6+100,  1, 1.2, 1.2);

-- ** エフェクト等 ** --

playSe( spep_6+20, 1018);
playSe( spep_6+48, 1024);

setShakeChara( spep_6+47, 1 , 72 , 20);


--playSe(spep_6+50,SE_07);
--playSe( spep_6+50, 1010);--キックの音
--playSe( spep_6+51, 1054);--飛ばされる音

ryuryu3 = entryEffectLife(spep_6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryuryu3, 50);
setEffScaleKey(spep_6, ryuryu3, 2.0, 2.0);

shuchusen11 = entryEffectLife(spep_6+46, 906, 79, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen11, 1.0, 1.0);

ct1 = entryEffect(spep_6+47,SP_02 ,0x80 ,0 ,300 , 170 ,-170);     --地面
setEffShake(spep_6+48, ct1, 100, 40);
ct3 = entryEffect(spep_6+10,SP_06 ,0x100 ,0 ,300 , 170 ,-170);     --クウラ
setEffShake(spep_6+48, ct3, 100, 40);
ct2 = entryEffect(spep_6+47,SP_03 ,0x100 ,0 ,300 , 170 ,-170);     --岩
setEffShake(spep_6+48, ct2, 100, 40);

--arare_kick = entryEffect(spep_6+50,3,0x40+0x100,0,300,100,0); --キック衝撃
--setEffScaleKey(SP_start, arare_kick, 3, 3);

--entryFade( spep_6+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6, 0, 180, 0, 0, 0, 0, 255);       -- ベース暗い　背景

--setRotateKey(spep_6+95,0,0);

--entryFade(spep_6+72, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_6+15, 79, 15);

-- 書き文字エントリー
--ct = entryEffectLife( spep_6, 10008, 99, 0, -1, 0, -150, 260); -- ゴゴゴゴ…
--setEffShake(spep_6, ct, 81, 20);
--setEffScaleKey( spep_6, ct, 2.4, 2.4);
--setEffRotateKey(spep_6, ct, -30);
--setEffAlphaKey(spep_6, ct, 255);
--setEffAlphaKey(spep_6+50, ct, 255);
--setEffAlphaKey(spep_6+72, ct, 0);

-- ** 揺れ等 ** --
setShake(spep_6+48, 20, 25);

-- ダメージ表示
dealDamage(spep_6+48);
setDamage( spep_6+48, 1, 0);  -- ダメージ振動等

entryFade( spep_6+105, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);             -- ホワイト

endPhase(spep_6+120);
end
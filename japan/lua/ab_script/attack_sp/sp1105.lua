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
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

tyo = -30;
tyo2 = -40;

SP_01 = 150407;--舞空術(正面に向かう)
SP_02 = 150408;--マークして連打する
SP_03 = 150409;--連打前の時とばし背景
SP_04 = 150410;--時が動き出す
SP_05 = 150411;--やられエフェクト


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

entryFadeBg( 0, 0, 100, 0, 10, 10, 10, 180); -- ベース暗め　背景

setVisibleUI(0, 0);
changeAnime( 0, 0, 0); -- 溜め!
changeAnime( 10, 0, 17); -- 気合顔!
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, -54, 0);
setMoveKey(   1,   0, 0, -54, 0);
setMoveKey(   2,   0, 0, -54, 0);
setMoveKey(   3,   0, 0, -54, 0);
setMoveKey(   4,   0, 0, -54, 0);
setMoveKey(   5,   0, 0, -54, 0);
setMoveKey(  100,   0,  0, -54, 0);

-- ** 気の音 ** --
playSe( 10, 1035);  
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);

-- ** エフェクト等 ** --
aura = entryEffectLife(  10,   341, 130, 0x100,  0,  -1,  -5,  -280); -- オーラ
setEffScaleKey( 10, aura, 2.2, 2.2);

-- ** 揺れ等 ** --
setShakeChara( 10, 0, 160, 7);
setShake( 10, 1, 5);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( 10, 906, 90, 0x00,  -1, 0,  0,  0); -- 集中線
setEffScaleKey( 10, shuchusen5, 1.0, 1.0);
setEffScaleKey( 160, shuchusen5, 1.0, 1.0);

-- ** カットイン ** --
speff = entryEffect(  10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 書き文字 ** --
ct = entryEffectLife( 22, 190006, 90, 0x100, -1, 0, 240, 500);    -- ゴゴゴ
setEffShake(22, ct, 90, 8);
setEffScaleKey(22, ct, 0.8, 0.8);

-- ** ホワイトフェード ** --
entryFade( 93, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = 100;
setScaleKey( 100,   0, 1.5, 1.5);

setDisp(spep_2, 0, 0); --味方消す

------------------------------------------------------
-- カードカットイン(100F)
------------------------------------------------------

setScaleKey( spep_2-1,   0, 1.5, 1.5); -- キャラの大きさ指定

-- ** カードカットイン音 ** --
playSe( spep_2, SE_05);

-- ** カードカットイン ** --
speff = entryEffect(  spep_2, 1507,   0,  -1,  0,  0,  0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


setDisp( spep_2, 0, 0);

-- ** エフェクト等 ** --
removeAllEffect(spep_2+90);

spep_3 = spep_2+90; -- 引数

------------------------------------------------------
-- 向かう(190F)
------------------------------------------------------
entryFadeBg( spep_3, 0, 50, 0, 74, 233, 219); -- ベース暗め　背景

-- ** エフェクト ** --
bukujutsu = entryEffect( spep_3, SP_01, 0x100,  0, -1,  0,  40);   -- 正面に向かう


-- ** エフェクト音 ** --
playSe( spep_3, 1018);

-- ** ホワイトフェード ** --
entryFade( spep_3+53, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_4 = spep_3+60; -- 引数
setMoveKey( spep_4-1,   0,  0, -54, 0); -- 回避カウンターのため
--setMoveKey( spep_4,   0,  2000, 0, 0); -- 回避カウンターのため


------------------------------------------------------
-- マーキング連打(250F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1); -- 敵表示
changeAnime( spep_4, 1, 100); -- 待機

-- ** 敵の大きさ指定 ** --
setScaleKey( spep_4, 1, 1.6, 1.6);
setScaleKey( spep_4+124, 1, 1.6, 1.6);

-- ** キャラの移動 ** --
setMoveKey( spep_4, 1, 0, 0, 0);
setMoveKey( spep_4+22, 1, 0, 0, 0);
setMoveKey( spep_4+32, 1, 135, 0, 0);

-- ** 敵の揺れ ** --
setShakeChara( spep_4+47, 1, 77, 9);

-- ** エフェクト(背景) ** --
bk = entryEffect( spep_4, SP_03, 0x80,  0,  -1,  0,  30);   -- 時とばし背景
entryFadeBg(spep_4+30, 3, 250, 0, 102, 8, 2);       -- ベース暗め　背景


-- ** 流線 ** --
entryEffectLife( spep_4, 920, 124, 0x80,  -1,  0,  0,  0); -- 流線

-- ** 集中線 ** --
entryEffectLife( spep_4, 906, 30, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ** エフェクト ** --
mark = entryEffect( spep_4, SP_02, 0x100,  0,  -1,  -5, 65);   -- 正面に向かう
setEffScaleKey( spep_4, mark, 0.9, 0.9);

spep_5 = spep_4+125; -- 引数


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 272; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);
setDisp(SP_dodge, 0, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10,   0,  2000, 0, 0); -- 回避カウンターのヒット消すため
endPhase(SP_dodge+10);

do return end
else end

-- ** 星マーク音 ** --
playSe( spep_4+5, 44);
--playSe( spep_4+7, 44);
--playSe( spep_4+9, 44);
--playSe( spep_4+11,44);
--playSe( spep_4+13,44);
--playSe( spep_4+15,44);

-- ** 連打音 ** --
playSe( spep_4+52,1000);--SE1
playSe( spep_4+57,1001);--SE2
playSe( spep_4+65,1009);--SE3
playSe( spep_4+75,1006);--SE4
playSe( spep_4+81,1007);--SE5
playSe( spep_4+89,1010);--SE6
playSe( spep_4+95,1000);--SE7
playSe( spep_4+101,1001);--SE8
playSe( spep_4+109,1009);--SE9
playSe( spep_4+119,1006);--SE10
playSe( spep_4+122,1007);--SE11
playSe( spep_4+124,1025);--SE12

------------------------------------------------------
-- 吹き飛び(375F)
------------------------------------------------------
setMoveKey( spep_4+124, 1, 160, 0, 0);
changeAnime( spep_5, 1, 108); -- 吹き飛び
setMoveKey( spep_5, 1, 160, 100, 0);
setScaleKey( spep_5, 1, 1.6, 1.6);
setRotateKey( spep_5, 1, 0);
setScaleKey( spep_5+24, 1, 1.8, 1.8);


-- ** 集中線 ** --
entryEffectLife( spep_5, 906, 60, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ** 流線 ** --
entryEffectLife( spep_5, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- ** ホワイトフェード ** --
entryFade( spep_5+22, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+30; -- 引数

------------------------------------------------------
-- やられ(405F)
------------------------------------------------------
entryFadeBg( spep_6, 0, 120, 0, 10, 10, 10);       -- ベース暗め　背景

-- ** 敵の位置/角度/移動の指定 ** --
--setRotateKey( spep_6-1, 1, -45);
setRotateKey( spep_6, 1, 0);
setMoveKey( spep_6-1, 1, 160, 100, 0);
setMoveKey( spep_6, 1, 100, 100, 0);
setMoveKey( spep_6+10, 1, 100, 100, 0);
setMoveKey( spep_6+120, 1, 220, 100, 0);
changeAnime( spep_6, 1, 108); -- 吹き飛び
setScaleKey( spep_6, 1, 1.6, 1.6);
setScaleKey( spep_6+120, 1, 1.3, 1.3);
-- ** エフェクト ** --
tokitobashi = entryEffect( spep_6, SP_04, 0x100,  0,  -1,  0, 100);   -- 時が動き出す
yarare = entryEffect( spep_6+5, SP_05, 0x80, 0,  -1,  0,  120);   -- やられエフェクト

-- ** 揺れ等 ** --
setEffShake(spep_6, tokitobashi, 120, 10);
setEffShake(spep_6, yarare, 120, 10);
setShakeChara(spep_6, 1, 120, 10);


-- ** 流線 ** --
entryEffectLife( spep_6, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- ** 集中線 ** --
entryEffectLife( spep_6, 906, 30, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ** ホワイトフェード ** --
entryFade( spep_6+120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** やられエフェクト音 ** --
playSe( spep_6+5,1019);
playSe( spep_6+65,1019);

-- ** やられエフェクトその2 ** --
--[[
playSe( spep_6+6,1025);
playSe( spep_6+16,1027);
playSe( spep_6+26,1025);
playSe( spep_6+36,1027);
playSe( spep_6+46,1025);
playSe( spep_6+56,1027);
playSe( spep_6+66,1025);
playSe( spep_6+76,1027);
playSe( spep_6+86,1025);
playSe( spep_6+96,1027);
playSe( spep_6+106,1025);
playSe( spep_6+116,1027);
playSe( spep_6+126,1025);
]]
SE001 = playSe( spep_6+6,1025);
SE002 = playSe( spep_6+16,1027);
stopSe(spep_6+36,SE001,5);
stopSe(spep_6+46,SE002,5);

SE003 = playSe( spep_6+26,1025);
SE004 = playSe( spep_6+36,1027);
stopSe(spep_6+56,SE003,5);
stopSe(spep_6+66,SE004,5);

SE005 = playSe( spep_6+46,1025);
SE006 = playSe( spep_6+56,1027);
stopSe(spep_6+76,SE005,5);
stopSe(spep_6+86,SE006,5);

SE007 = playSe( spep_6+66,1025);
SE008 = playSe( spep_6+76,1027);
stopSe(spep_6+96,SE007,5);
stopSe(spep_6+106,SE008,5);

SE009 = playSe( spep_6+86,1025);
SE010 = playSe( spep_6+96,1027);
stopSe(spep_6+116,SE009,5);
stopSe(spep_6+126,SE010,5);

SE011 = playSe( spep_6+106,1025);
SE012 = playSe( spep_6+116,1027);
stopSe(spep_6+136,SE011,5);

SE013 = playSe( spep_6+126,1025);

spep_7 = spep_6+124; -- 引数

------------------------------------------------------
-- 爆発(530F)
------------------------------------------------------
setRotateKey( spep_7-1, 1, 0);
setDisp( spep_7-1, 1, 1);
--setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_7-1,    1,  100,  0,   0);
setScaleKey( spep_7-1,    1,  1, 1);
setMoveKey(  spep_7,    1,    0,   0,   128);
setScaleKey( spep_7,    1,  0.1, 0.1);

changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey(  spep_7+8,   1,    0,   0,   128);
setMoveKey(  spep_7+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_7+16,   1,  -60,  -200,  -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake(spep_7+7,6,15);
setShake(spep_7+13,15,10);

setRotateKey( spep_7,  1,  30 );
setRotateKey( spep_7+2,  1,  80 );
setRotateKey( spep_7+4,  1, 120 );
setRotateKey( spep_7+6,  1, 160 );
setRotateKey( spep_7+8,  1, 200 );
setRotateKey( spep_7+10,  1, 260 );
setRotateKey( spep_7+12,  1, 320 );
setRotateKey( spep_7+14,  1,   0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+13, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_7+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_7+16);
--entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
entryFadeBg( 0, 0, 100, 0, 10, 10, 10, 180); -- ベース暗め　背景

setVisibleUI(0, 0);
changeAnime( 0, 0, 0); -- 溜め!
changeAnime( 10, 0, 17); -- 気合顔!
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, -54, 0);
setMoveKey(   1,   0, 0, -54, 0);
setMoveKey(   2,   0, 0, -54, 0);
setMoveKey(   3,   0, 0, -54, 0);
setMoveKey(   4,   0, 0, -54, 0);
setMoveKey(   5,   0, 0, -54, 0);
setMoveKey(  100,   0,  0, -54, 0);

-- ** 気の音 ** --
playSe( 10, 1035);  
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);

-- ** エフェクト等 ** --
aura = entryEffectLife(  10,   341, 130, 0x100,  0,  -1,  -5,  -280); -- オーラ
setEffScaleKey( 10, aura, 2.2, 2.2);

-- ** 揺れ等 ** --
setShakeChara( 10, 0, 160, 7);
setShake( 10, 1, 5);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( 10, 906, 90, 0x00,  -1, 0,  0,  0); -- 集中線
setEffScaleKey( 10, shuchusen5, 1.0, 1.0);
setEffScaleKey( 160, shuchusen5, 1.0, 1.0);


-- ** 書き文字 ** --
ct = entryEffectLife( 22, 190006, 90, 0x100, -1, 0, 240, 500);    -- ゴゴゴ
setEffShake(22, ct, 90, 8);
setEffScaleKey(22, ct, -0.8, 0.8);
-- ** ホワイトフェード ** --
entryFade( 93, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = 100;
setScaleKey( 100,   0, 1.5, 1.5);

setDisp(spep_2, 0, 0); --味方消す

------------------------------------------------------
-- カードカットイン(100F)
------------------------------------------------------

setScaleKey( spep_2-1,   0, 1.5, 1.5); -- キャラの大きさ指定

-- ** カードカットイン音 ** --
playSe( spep_2, SE_05);

-- ** カードカットイン ** --
speff = entryEffect(  spep_2, 1507,   0,  -1,  0,  0,  0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


setDisp( spep_2, 0, 0);

-- ** エフェクト等 ** --
removeAllEffect(spep_2+90);

spep_3 = spep_2+90; -- 引数

------------------------------------------------------
-- 向かう(190F)
------------------------------------------------------
entryFadeBg( spep_3, 0, 50, 0, 74, 233, 219); -- ベース暗め　背景

-- ** エフェクト ** --
bukujutsu = entryEffect( spep_3, SP_01, 0x100,  0, -1,  0,  40);   -- 正面に向かう


-- ** エフェクト音 ** --
playSe( spep_3, 1018);

-- ** ホワイトフェード ** --
entryFade( spep_3+53, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_4 = spep_3+60; -- 引数
setMoveKey( spep_4-1,   0,  0, -54, 0); -- 回避カウンターのため
--setMoveKey( spep_4,   0,  2000, 0, 0); -- 回避カウンターのため


------------------------------------------------------
-- マーキング連打(250F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1); -- 敵表示
changeAnime( spep_4, 1, 100); -- 待機

-- ** 敵の大きさ指定 ** --
setScaleKey( spep_4, 1, 1.6, 1.6);
setScaleKey( spep_4+124, 1, 1.6, 1.6);

-- ** キャラの移動 ** --
setMoveKey( spep_4, 1, 0, 0, 0);
setMoveKey( spep_4+22, 1, 0, 0, 0);
setMoveKey( spep_4+32, 1, 135, 0, 0);


-- ** 敵の揺れ ** --
setShakeChara( spep_4+47, 1, 77, 9);

-- ** エフェクト(背景) ** --
bk = entryEffect( spep_4, SP_03, 0x80,  0,  -1,  0,  30);   -- 時とばし背景
entryFadeBg(spep_4+30, 3, 250, 0, 102, 8, 2);       -- ベース暗め　背景


-- ** 流線 ** --
entryEffectLife( spep_4, 920, 124, 0x80,  -1,  0,  0,  0); -- 流線

-- ** 集中線 ** --
entryEffectLife( spep_4, 906, 30, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ** エフェクト ** --
mark = entryEffect( spep_4, SP_02, 0x100,  0,  -1,  -5, 65);   -- 正面に向かう
setEffScaleKey( spep_4, mark, 0.9, 0.9);



spep_5 = spep_4+125; -- 引数


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 272; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);
setDisp(SP_dodge, 0, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10,   0,  2000, 0, 0); -- 回避カウンターのヒット消すため
endPhase(SP_dodge+10);

do return end
else end
-- ** 星マーク音 ** --
playSe( spep_4+5, 44);
--[[playSe( spep_4+7, 44);
playSe( spep_4+9, 44);
playSe( spep_4+11,44);
playSe( spep_4+13,44);
playSe( spep_4+15,44);
]]

-- ** 連打音 ** --
playSe( spep_4+52,1000);--SE1
playSe( spep_4+57,1001);--SE2
playSe( spep_4+65,1009);--SE3
playSe( spep_4+75,1006);--SE4
playSe( spep_4+81,1007);--SE5
playSe( spep_4+89,1010);--SE6
playSe( spep_4+95,1000);--SE7
playSe( spep_4+101,1001);--SE8
playSe( spep_4+109,1009);--SE9
playSe( spep_4+119,1006);--SE10
playSe( spep_4+122,1007);--SE11
playSe( spep_4+124,1025);--SE12
------------------------------------------------------
-- 吹き飛び(375F)
------------------------------------------------------
setMoveKey( spep_4+124, 1, 160, 0, 0);
changeAnime( spep_5, 1, 108); -- 吹き飛び
setMoveKey( spep_5, 1, 160, 100, 0);
setScaleKey( spep_5, 1, 1.6, 1.6);
setRotateKey( spep_5, 1, 0);
setScaleKey( spep_5+24, 1, 1.8, 1.8);


-- ** 集中線 ** --
entryEffectLife( spep_5, 906, 60, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ** 流線 ** --
entryEffectLife( spep_5, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- ** ホワイトフェード ** --
entryFade( spep_5+22, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+30; -- 引数

------------------------------------------------------
-- やられ(405F)
------------------------------------------------------
entryFadeBg( spep_6, 0, 120, 0, 10, 10, 10);       -- ベース暗め　背景

-- ** 敵の位置/角度/移動の指定 ** --
--setRotateKey( spep_6-1, 1, -45);
setRotateKey( spep_6, 1, 0);
setMoveKey( spep_6-1, 1, 160, 100, 0);
setMoveKey( spep_6, 1, 100, 100, 0);
setMoveKey( spep_6+10, 1, 100, 100, 0);
setMoveKey( spep_6+120, 1, 220, 100, 0);
changeAnime( spep_6, 1, 108); -- 吹き飛び
setScaleKey( spep_6, 1, 1.6, 1.6);
setScaleKey( spep_6+120, 1, 1.3, 1.3);
-- ** エフェクト ** --
tokitobashi = entryEffect( spep_6, SP_04, 0x100,  0,  -1,  0, 100);   -- 時が動き出す
yarare = entryEffect( spep_6+5, SP_05, 0x80, 0,  -1,  0,  120);   -- やられエフェクト

-- ** 揺れ等 ** --
setEffShake(spep_6, tokitobashi, 120, 10);
setEffShake(spep_6, yarare, 120, 10);
setShakeChara(spep_6, 1, 120, 10);


-- ** 流線 ** --
entryEffectLife( spep_6, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- ** 集中線 ** --
entryEffectLife( spep_6, 906, 30, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ** ホワイトフェード ** --
entryFade( spep_6+120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** やられエフェクト音 ** --
playSe( spep_6+5,1019);
playSe( spep_6+65,1019);

-- ** やられエフェクトその2 ** --
--[[
playSe( spep_6+6,1025);
playSe( spep_6+16,1027);
playSe( spep_6+26,1025);
playSe( spep_6+36,1027);
playSe( spep_6+46,1025);
playSe( spep_6+56,1027);
playSe( spep_6+66,1025);
playSe( spep_6+76,1027);
playSe( spep_6+86,1025);
playSe( spep_6+96,1027);
playSe( spep_6+106,1025);
playSe( spep_6+116,1027);
playSe( spep_6+126,1025);
]]
SE001 = playSe( spep_6+6,1025);
SE002 = playSe( spep_6+16,1027);
stopSe(spep_6+36,SE001,5);
stopSe(spep_6+46,SE002,5);

SE003 = playSe( spep_6+26,1025);
SE004 = playSe( spep_6+36,1027);
stopSe(spep_6+56,SE003,5);
stopSe(spep_6+66,SE004,5);

SE005 = playSe( spep_6+46,1025);
SE006 = playSe( spep_6+56,1027);
stopSe(spep_6+76,SE005,5);
stopSe(spep_6+86,SE006,5);

SE007 = playSe( spep_6+66,1025);
SE008 = playSe( spep_6+76,1027);
stopSe(spep_6+96,SE007,5);
stopSe(spep_6+106,SE008,5);

SE009 = playSe( spep_6+86,1025);
SE010 = playSe( spep_6+96,1027);
stopSe(spep_6+116,SE009,5);
stopSe(spep_6+126,SE010,5);

SE011 = playSe( spep_6+106,1025);
SE012 = playSe( spep_6+116,1027);
stopSe(spep_6+136,SE011,5);

SE013 = playSe( spep_6+126,1025);

spep_7 = spep_6+124; -- 引数

------------------------------------------------------
-- 爆発(530F)
------------------------------------------------------
setRotateKey( spep_7-1, 1, 0);
setDisp( spep_7-1, 1, 1);
--setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_7-1,    1,  100,  0,   0);
setScaleKey( spep_7-1,    1,  1, 1);
setMoveKey(  spep_7,    1,    0,   0,   128);
setScaleKey( spep_7,    1,  0.1, 0.1);

changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey(  spep_7+8,   1,    0,   0,   128);
setMoveKey(  spep_7+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_7+16,   1,  -60,  -200,  -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake(spep_7+7,6,15);
setShake(spep_7+13,15,10);

setRotateKey( spep_7,  1,  30 );
setRotateKey( spep_7+2,  1,  80 );
setRotateKey( spep_7+4,  1, 120 );
setRotateKey( spep_7+6,  1, 160 );
setRotateKey( spep_7+8,  1, 200 );
setRotateKey( spep_7+10,  1, 260 );
setRotateKey( spep_7+12,  1, 320 );
setRotateKey( spep_7+14,  1,   0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+13, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_7+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_7+16);
--entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);


end

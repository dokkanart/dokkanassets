--参考sp0346超4ゴジータ100倍ビッグバンかめはめ

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;


SP_01 = 150966;--挑発
SP_02 = 150967;--挑発ポーズカメラ引き
SP_03 = 150968;--敵が向かってくるカット
SP_04 = 150969;--突き刺しエフェクト
SP_05 = 150970;--シルエット
SP_06 = 150971;--剣しまう
SP_01e = 150966;--挑発（敵）
SP_02e = 150967;--挑発ポーズカメラ引き（敵）
SP_03e = 150968;--敵が向かってくるカット（敵）
SP_05e = 150970;--シルエット（敵）
SP_06e = 150976;--剣しまう（敵）

multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 縦に出る流線(20F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0=0;

entryFadeBg( spep_0, 0, 40, 0, 0, 0, 0, 255);  -- ベース黒　背景　ホワイトフェード消えるまで

shuchusentate=entryEffectLife( spep_0, 914, 39, 0x100,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_0, shuchusentate, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusentate, 255);
setEffRotateKey(spep_0, shuchusentate, 90);

--カメラ視点移動（音）
playSe( spep_0,SE_01);


--(0-39F)
------------------------------------------------------
-- 挑発(90F)
------------------------------------------------------
spep_1=spep_0+20;

entryFade( spep_1-4, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);          -- ベース黒　背景

--
entryFade( spep_1+69, 17, 2, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

come = entryEffect(  spep_1,   SP_01,   0x100,  -1,  0,  0,  0);   --味方側挑発モーション
setEffScaleKey( spep_1, come, 1.0, 1.0);
setEffAlphaKey( spep_1, come, 255);

shuchusen1=entryEffectLife( spep_1+20, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+20, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1+20, shuchusen1, 255);

--挑発（音）
playSe( spep_1+35,4);
playSe( spep_1+60,4);

--(20-110F)
------------------------------------------------------
-- 挑発ポーズカメラ引き(50F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 50, 0, 0, 0, 0, 255);          -- ベース黒　背景

come2 = entryEffect(  spep_2,   SP_02,   0x80,  -1,  0,  0,  0);   --味方側挑発移動
setEffScaleKey( spep_2, come2, 1.0, 1.0);
setEffAlphaKey( spep_2, come2, 255);

shuchusen2 = entryEffectLife( spep_2+20, 906, 30, 0x80,  -1, 0,  200,  0);   -- 集中線 敵キャラクターにフォーカスするため右側へ配置
setEffScaleKey( spep_2+20, shuchusen2, 2, 2);
setEffAlphaKey( spep_2+20, shuchusen2, 255);
setEffAlphaKey( spep_2+50, shuchusen2, 255);
setEffMoveKey( spep_2+20, shuchusen2, 200 , 0);--敵キャラクターにフォーカスするため右側へ配置
setEffMoveKey( spep_2+50, shuchusen2, 200 , 0);--敵キャラクターにフォーカスするため右側へ配置

setDisp( spep_2+14, 1, 1);--敵表示
changeAnime( spep_2+14, 1, 102);  --待機
setRotateKey(   spep_2+14,   1, 0);
setMoveKey(   spep_2+14,   1,    500, -250,  0);--画面外から中へ移動するように表現
setScaleKey(   spep_2+14,   1, 3, 3);--画面外から中へ移動するように表現

setMoveKey(   spep_2+50,   1,    150,  0,  0);--画面外から中へ移動するように表現
setScaleKey(   spep_2+50,   1, 1.8, 1.8);--画面外から中へ移動するように表現

--(110-160F)
------------------------------------------------------
-- 敵が向かってくるカット(50F)
------------------------------------------------------
spep_3=spep_2+50;

setEffAlphaKey( spep_3, shuchusen2, 0);


entryFade( spep_3-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 50, 0, 0, 0, 0, 255);   -- ベース黒　背景

come3 = entryEffect(  spep_3,   SP_03,   0,  -1,  0,  0,  0);   --味方側敵が向かってくる
setEffScaleKey( spep_3, come3, 1.0, 1.0);
setEffAlphaKey( spep_3, come3, 255);

setDisp( spep_3+2, 1, 1);--敵表示、画面右上
setRotateKey(   spep_3+2,   1, 0);
changeAnime( spep_3+2, 1, 117);  --気ため
setMoveKey(   spep_3+2,   1,   250, 300,  0);
setScaleKey(   spep_3+2,   1, 0.5, 0.5);

setMoveKey(   spep_3+10,   1,   250, 300,  0);
setScaleKey(   spep_3+10,   1, 0.5, 0.5);
setRotateKey(   spep_3+10,   1,0);
setRotateKey(   spep_3+13,   1, 0);

changeAnime( spep_3+14, 1, 103);  --ダッシュ
setRotateKey(   spep_3+14,   1, 330);
setMoveKey(   spep_3+14,   1,   230, 260,  0);
setScaleKey(   spep_3+14,   1, 0.5, 0.5);

-- ダッシュタイミングでぶっ飛ばし流線　--
buttobashi = entryEffectLife( spep_3+16, 924, 36, 0x80,  -1,  0,  400,  -300); -- 流線斜め
setEffRotateKey( spep_3+16, buttobashi, -90);
setEffScaleKey( spep_3+16, buttobashi, 1.5, 1.5);
setEffAlphaKey( spep_3+16, buttobashi, 255);

-- 敵が向かってくる（音）
playSe( spep_3+17,44);

--(160-210F)
------------------------------------------------------
-- 回避(spep_3+22)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 188; --エンドフェイズのフレーム数を置き換える

setMoveKey(   SP_dodge,   1,   180, 210,  0);
setScaleKey(   SP_dodge,   1, 0.75, 0.75);
setRotateKey(   SP_dodge,   1, 330);

setEffScaleKey( SP_dodge, buttobashi, 1.5, 1.5);
setEffAlphaKey( SP_dodge, buttobashi, 255);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+1,   1,   180, 210,  0);
setScaleKey(   SP_dodge+1,   1, 0.75, 0.75);
setRotateKey(   SP_dodge+1,   1, 330);

setMoveKey(   SP_dodge+8,   1,   180, 210,  0);
setScaleKey(   SP_dodge+8,   1, 0.75, 0.75);
setRotateKey(   SP_dodge+8,   1, 330);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
--回避されなかった場合
------------------------------------------------------
setRotateKey(   spep_3+30,   1, 330);
setRotateKey(   spep_3+31,   1, 330);
setMoveKey(   spep_3+30,   1,   130, 160,  0);
setScaleKey(   spep_3+30,   1, 1, 1);

changeAnime( spep_3+32, 1, 109);  --パンチ
setRotateKey(   spep_3+32,   1, 300);
setMoveKey(   spep_3+32,   1,   130, 160,  0);
setScaleKey(   spep_3+32,   1, 1, 1);

setRotateKey(   spep_3+50,   1, 300);
setMoveKey(   spep_3+50,   1,   80, 120,  0);
setScaleKey(   spep_3+50,   1, 1.3, 1.3);

-- ダッシュタイミングでぶっ飛ばし流線　--
setEffAlphaKey( spep_3+48, buttobashi, 255);
setEffAlphaKey( spep_3+50, buttobashi, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+44;

shuchusenct = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct, 2, 2);
setEffAlphaKey( spep_4, shuchusenct, 255);

playSe( spep_4+4, SE_05);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

setDisp( spep_4+4, 1, 0);

--(194-284F)
------------------------------------------------------
-- 突き刺しエフェクト(40F)
------------------------------------------------------
spep_5=spep_4+90;

entryFade( spep_5-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 40, 0, 0, 0, 0, 255);          -- ベース暗め　背景

tukisashi = entryEffect(  spep_5,   SP_04,   0,  -1,  0,  0,  0);   --突き刺しエフェクト
setEffScaleKey( spep_5, tukisashi, 1.0, 1.0);
setEffAlphaKey( spep_5, tukisashi, 255);
setEffAlphaKey( spep_5+40, tukisashi, 255);

shuchusen3 = entryEffectLife( spep_5, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_5, shuchusen3, 2, 2);
setEffAlphaKey( spep_5, shuchusen3, 255);
setEffAlphaKey( spep_5+40, shuchusen3, 255);
setEffAlphaKey( spep_5+41, shuchusen3, 0);

--Hit音
playSe(spep_5+16,1026);

--(284-324F)
------------------------------------------------------
-- シルエット(240F)
------------------------------------------------------
spep_6 = spep_5+40;

entryFade( spep_6-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 240, 0, 245, 245, 245, 255);          -- ベース白　背景

shill = entryEffect(  spep_6,   SP_05,   0,  -1,  0,  0,  0);   --突き刺しエフェクト
setEffScaleKey( spep_6, shill, 1.0, 1.0);
setEffAlphaKey( spep_6, shill, 255);


speff = entryEffect(  spep_6+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_6+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_6, 1032);
playSe( spep_6+80, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_6+90, 190006, 70, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_6+90, ctgogo, 70, 8);
setEffScaleKey(spep_6+90, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_6+90, ctgogo, 0);
setEffAlphaKey( spep_6+90, ctgogo, 255);

shuchusenyoko = entryEffectLife( spep_6+200, 920, 40, 0x80,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_6+200, shuchusenyoko, 1.2, 1.2);
setEffAlphaKey( spep_6+200, shuchusenyoko, 255);
setEffRotateKey(spep_6+200, shuchusenyoko, -10);

--(324-564F)
------------------------------------------------------
-- 剣しまう(50F)
------------------------------------------------------
spep_7 = spep_6+236;

entryFade( spep_7-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 50, 0, 0, 0, 0, 255);          -- ベース暗め　背景

shuchusenyoko2 = entryEffectLife( spep_7, 920, 36, 0x80,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_7, shuchusenyoko2, 1.2, 1.2);
setEffAlphaKey( spep_7, shuchusenyoko2, 255);
setEffRotateKey(spep_7, shuchusenyoko2, -10);

shimau = entryEffect(  spep_7,   SP_06,   0,  -1,  0,  0,  0);   --突き刺しエフェクト
setEffScaleKey( spep_7, shimau, 1.0, 1.0);
setEffAlphaKey( spep_7, shimau, 255);

--抜く音
playSe(spep_7+20,1020);

--(560-610F)
------------------------------------------------------
-- ガッ(110F)
------------------------------------------------------
spep_8 = spep_7+50;

entryFade( spep_8-6, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_8-1, 1, 1);
setMoveKey(  spep_8, 1, 0, 0, 128);

setScaleKey( spep_8-1, 1, 0.5, 0.5);
setRotateKey( spep_8-1, 1, 60);
setMoveKey(  spep_8, 1, 0, 0, 128);
setScaleKey( spep_8, 1, 0.1, 0.1);
changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
entryEffect( spep_8+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_8+8, SE_10);

setMoveKey( spep_8+8, 1, 0, 0, 128); --478
setMoveKey( spep_8+15, 1, -60, -200, -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake( spep_8+7, 6, 15);
setShake( spep_8+13, 15, 10);

setRotateKey( spep_8, 1, 30 );
setRotateKey( spep_8+2, 1, 80 );
setRotateKey( spep_8+4, 1, 120 );
setRotateKey( spep_8+6, 1, 160 );
setRotateKey( spep_8+8, 1, 200 );
setRotateKey( spep_8+10, 1, 260 );
setRotateKey( spep_8+12, 1, 320 );
setRotateKey( spep_8+14, 1, 0 );

setShakeChara( spep_8+15, 1, 5,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct, 30, 10);
setEffRotateKey( spep_8+15, ct, -40);
setEffScaleKey( spep_8+15, ct, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct, 255);
setEffAlphaKey( spep_8+105, ct, 255);
setEffAlphaKey( spep_8+115, ct, 0);

playSe( spep_8+11, SE_11);
shuchusen = entryEffectLife( spep_8+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_8+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_8+16);
entryFade( spep_8+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 縦に出る流線(20F)
------------------------------------------------------
kame_flag = 0x00;

spep_0=0;

entryFadeBg( spep_0, 0, 40, 0, 0, 0, 0, 255);  -- ベース黒　背景　ホワイトフェード消えるまで

shuchusentate=entryEffectLife( spep_0, 914, 39, 0x100,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_0, shuchusentate, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusentate, 255);
setEffRotateKey(spep_0, shuchusentate, 90);

--カメラ視点移動（音）
playSe( spep_0,SE_01);


--(0-39F)
------------------------------------------------------
-- 挑発(90F)
------------------------------------------------------
spep_1=spep_0+20;

entryFade( spep_1-4, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);          -- ベース黒　背景

--
entryFade( spep_1+69, 17, 2, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

come = entryEffect(  spep_1,   SP_01,   0x100,  -1,  0,  0,  0);   --味方側挑発モーション
setEffScaleKey( spep_1, come, 1.0, 1.0);
setEffAlphaKey( spep_1, come, 255);

shuchusen1=entryEffectLife( spep_1+20, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+20, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1+20, shuchusen1, 255);

--挑発（音）
playSe( spep_1+35,4);
playSe( spep_1+60,4);

--(20-110F)
------------------------------------------------------
-- 挑発ポーズカメラ引き(50F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 50, 0, 0, 0, 0, 255);          -- ベース黒　背景

come2 = entryEffect(  spep_2,   SP_02,   0x80,  -1,  0,  0,  0);   --味方側挑発移動
setEffScaleKey( spep_2, come2, 1.0, 1.0);
setEffAlphaKey( spep_2, come2, 255);

shuchusen2 = entryEffectLife( spep_2+20, 906, 30, 0x80,  -1, 0,  200,  0);   -- 集中線 敵キャラクターにフォーカスするため右側へ配置
setEffScaleKey( spep_2+20, shuchusen2, 2, 2);
setEffAlphaKey( spep_2+20, shuchusen2, 255);
setEffAlphaKey( spep_2+50, shuchusen2, 255);
setEffMoveKey( spep_2+20, shuchusen2, 200 , 0);--敵キャラクターにフォーカスするため右側へ配置
setEffMoveKey( spep_2+50, shuchusen2, 200 , 0);--敵キャラクターにフォーカスするため右側へ配置

setDisp( spep_2+14, 1, 1);--敵表示
changeAnime( spep_2+14, 1, 102);  --待機
setRotateKey(   spep_2+14,   1, 0);
setMoveKey(   spep_2+14,   1,    500, -250,  0);--画面外から中へ移動するように表現
setScaleKey(   spep_2+14,   1, 3, 3);--画面外から中へ移動するように表現

setMoveKey(   spep_2+50,   1,    150,  0,  0);--画面外から中へ移動するように表現
setScaleKey(   spep_2+50,   1, 1.8, 1.8);--画面外から中へ移動するように表現

--(110-160F)
------------------------------------------------------
-- 敵が向かってくるカット(50F)
------------------------------------------------------
spep_3=spep_2+50;

setEffAlphaKey( spep_3, shuchusen2, 0);


entryFade( spep_3-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 50, 0, 0, 0, 0, 255);   -- ベース黒　背景

come3 = entryEffect(  spep_3,   SP_03e,   0,  -1,  0,  0,  0);   --味方側敵が向かってくる
setEffScaleKey( spep_3, come3, 1.0, 1.0);
setEffAlphaKey( spep_3, come3, 255);

setDisp( spep_3+2, 1, 1);--敵表示、画面右上
setRotateKey(   spep_3+2,   1, 0);
changeAnime( spep_3+2, 1, 117);  --気ため
setMoveKey(   spep_3+2,   1,   250, 300,  0);
setScaleKey(   spep_3+2,   1, 0.5, 0.5);

setMoveKey(   spep_3+10,   1,   250, 300,  0);
setScaleKey(   spep_3+10,   1, 0.5, 0.5);
setRotateKey(   spep_3+10,   1, 0);
setRotateKey(   spep_3+13,   1, 0);

changeAnime( spep_3+14, 1, 103);  --ダッシュ
setRotateKey(   spep_3+14,   1, 330);
setMoveKey(   spep_3+14,   1,   230, 260,  0);
setScaleKey(   spep_3+14,   1, 0.5, 0.5);

-- ダッシュタイミングでぶっ飛ばし流線　--
buttobashi = entryEffectLife( spep_3+16, 924, 36, 0x80,  -1,  0,  400,  -300); -- 流線斜め
setEffRotateKey( spep_3+16, buttobashi, -90);
setEffScaleKey( spep_3+16, buttobashi, 1.5, 1.5);
setEffAlphaKey( spep_3+16, buttobashi, 255);

-- 敵が向かってくる（音）
playSe( spep_3+17,44);

--(160-210F)
------------------------------------------------------
-- 回避(spep_3+22)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 188; --エンドフェイズのフレーム数を置き換える

setMoveKey(   SP_dodge,   1,   180, 210,  0);
setScaleKey(   SP_dodge,   1, 0.75, 0.75);
setRotateKey(   SP_dodge,   1, 330);

setEffScaleKey( SP_dodge, buttobashi, 1.5, 1.5);
setEffAlphaKey( SP_dodge, buttobashi, 255);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+1,   1,   180, 210,  0);
setScaleKey(   SP_dodge+1,   1, 0.75, 0.75);
setRotateKey(   SP_dodge+1,   1, 330);

setMoveKey(   SP_dodge+8,   1,   180, 210,  0);
setScaleKey(   SP_dodge+8,   1, 0.75, 0.75);
setRotateKey(   SP_dodge+8,   1, 330);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
--回避されなかった場合
------------------------------------------------------
setRotateKey(   spep_3+30,   1, 330);
setRotateKey(   spep_3+31,   1, 330);
setMoveKey(   spep_3+30,   1,   130, 160,  0);
setScaleKey(   spep_3+30,   1, 1, 1);

changeAnime( spep_3+32, 1, 109);  --パンチ
setRotateKey(   spep_3+32,   1, 300);
setMoveKey(   spep_3+32,   1,   130, 160,  0);
setScaleKey(   spep_3+32,   1, 1, 1);

setRotateKey(   spep_3+50,   1, 300);
setMoveKey(   spep_3+50,   1,   80, 120,  0);
setScaleKey(   spep_3+50,   1, 1.3, 1.3);

-- ダッシュタイミングでぶっ飛ばし流線　--
setEffAlphaKey( spep_3+48, buttobashi, 255);
setEffAlphaKey( spep_3+50, buttobashi, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+44;

shuchusenct = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct, 2, 2);
setEffAlphaKey( spep_4, shuchusenct, 255);

playSe( spep_4+4, SE_05);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

setDisp( spep_4+4, 1, 0);

--(194-284F)
------------------------------------------------------
-- 突き刺しエフェクト(40F)
------------------------------------------------------
spep_5=spep_4+90;

entryFade( spep_5-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 40, 0, 0, 0, 0, 255);          -- ベース暗め　背景

tukisashi = entryEffect(  spep_5,   SP_04,   0,  -1,  0,  0,  0);   --突き刺しエフェクト
setEffScaleKey( spep_5, tukisashi, 1.0, 1.0);
setEffAlphaKey( spep_5, tukisashi, 255);
setEffAlphaKey( spep_5+40, tukisashi, 255);

shuchusen3 = entryEffectLife( spep_5, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_5, shuchusen3, 2, 2);
setEffAlphaKey( spep_5, shuchusen3, 255);
setEffAlphaKey( spep_5+40, shuchusen3, 255);
setEffAlphaKey( spep_5+41, shuchusen3, 0);

--Hit音
playSe(spep_5+16,1026);

--(284-324F)
------------------------------------------------------
-- シルエット(240F)
------------------------------------------------------
spep_6 = spep_5+40;

entryFade( spep_6-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 240, 0, 245, 245, 245, 255);          -- ベース白　背景

shill = entryEffect(  spep_6,   SP_05,   0,  -1,  0,  0,  0);   --突き刺しエフェクト
setEffScaleKey( spep_6, shill, 1.0, 1.0);
setEffAlphaKey( spep_6, shill, 255);


--[[
speff = entryEffect(  spep_6+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_6+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep_6, 1032);
playSe( spep_6+80, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_6+90, 190006, 70, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_6+90, ctgogo, 70, 8);
setEffScaleKey(spep_6+90, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_6+90, ctgogo, 0);
setEffAlphaKey( spep_6+90, ctgogo, 255);

shuchusenyoko = entryEffectLife( spep_6+200, 920, 40, 0x80,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_6+200, shuchusenyoko, 1.2, 1.2);
setEffAlphaKey( spep_6+200, shuchusenyoko, 255);
setEffRotateKey(spep_6+200, shuchusenyoko, -10);

--(324-564F)
------------------------------------------------------
-- 剣しまう(50F)
------------------------------------------------------
spep_7 = spep_6+236;

entryFade( spep_7-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 50, 0, 0, 0, 0, 255);          -- ベース暗め　背景

shuchusenyoko2 = entryEffectLife( spep_7, 920, 36, 0x80,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_7, shuchusenyoko2, 1.2, 1.2);
setEffAlphaKey( spep_7, shuchusenyoko2, 255);
setEffRotateKey(spep_7, shuchusenyoko2, -10);

shimau = entryEffect(  spep_7,   SP_06e,   0,  -1,  0,  0,  0);   --突き刺しエフェクト
setEffScaleKey( spep_7, shimau, 1.0, 1.0);
setEffAlphaKey( spep_7, shimau, 255);

--抜く音
playSe(spep_7+20,1020);

--(560-610F)
------------------------------------------------------
-- ガッ(110F)
------------------------------------------------------
spep_8 = spep_7+50;

entryFade( spep_8-6, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_8-1, 1, 1);
setMoveKey(  spep_8, 1, 0, 0, 128);

setScaleKey( spep_8-1, 1, 0.5, 0.5);
setRotateKey( spep_8-1, 1, 60);
setMoveKey(  spep_8, 1, 0, 0, 128);
setScaleKey( spep_8, 1, 0.1, 0.1);
changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
entryEffect( spep_8+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_8+8, SE_10);

setMoveKey( spep_8+8, 1, 0, 0, 128); --478
setMoveKey( spep_8+15, 1, -60, -200, -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake( spep_8+7, 6, 15);
setShake( spep_8+13, 15, 10);

setRotateKey( spep_8, 1, 30 );
setRotateKey( spep_8+2, 1, 80 );
setRotateKey( spep_8+4, 1, 120 );
setRotateKey( spep_8+6, 1, 160 );
setRotateKey( spep_8+8, 1, 200 );
setRotateKey( spep_8+10, 1, 260 );
setRotateKey( spep_8+12, 1, 320 );
setRotateKey( spep_8+14, 1, 0 );

setShakeChara( spep_8+15, 1, 5,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct, 30, 10);
setEffRotateKey( spep_8+15, ct, -40);
setEffScaleKey( spep_8+15, ct, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct, 255);
setEffAlphaKey( spep_8+105, ct, 255);
setEffAlphaKey( spep_8+115, ct, 0);

playSe( spep_8+11, SE_11);
shuchusen = entryEffectLife( spep_8+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_8+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_8+16);
entryFade( spep_8+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+110);

end
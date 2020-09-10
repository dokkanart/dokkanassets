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


SP_01 = 150995;--鎌引き抜き(敵味方同じ)
SP_02 = 150997;--登場(敵味方同じ)
SP_03 = 150999;--放つロゼ
SP_04 = 151001;--斬撃
SP_05 = 151002;--分身登場
SP_06 = 151004;--分身連撃
SP_07 = 151006;--カットイン時タメ
SP_08 = 151008;--斬撃２
SP_09 = 151009;--ラストカット
SP_10 = 151011;--深緑背景

SP_01e = 150995;--鎌引き抜き(敵味方同じ)
SP_02e = 150997;--登場(敵味方同じ)
SP_03e = 151000;--放つロゼ
SP_04e = 151001;--斬撃
SP_05e = 151003;--分身登場
SP_06e = 151005;--分身連撃
SP_07e = 151007;--カットイン時タメ
SP_08e = 151008;--斬撃２
SP_09e = 151010;--ラストカット



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
-- 鎌引き抜き(110F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

entryFadeBg( spep_0, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背景　

kamadasu = entryEffect(  spep_0,  SP_01,   0,  -1,  0,  0,  0);   --鎌引き抜き
setEffScaleKey( spep_0, kamadasu, 1, 1);
setEffAlphaKey( spep_0, kamadasu, 255);

tate = entryEffectLife( spep_0, 914, 110, 0x80,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_0, tate, 1.5, 1.5);
setEffAlphaKey( spep_0, tate, 255);
setEffRotateKey(spep_0, tate, 90);

shuchusen1 = entryEffectLife( spep_0, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusen1, 255);

playSe( spep_0, SE_02);
playSe( spep_0+20, SE_02);
playSe( spep_0+40, SE_02);
playSe( spep_0+60, SE_02);
playSe( spep_0+80, SE_02);


------------------------------------------------------
-- 登場(140F)
------------------------------------------------------
spep_1 = spep_0+110;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 140, 0, 10, 10, 10, 210);          -- やや暗い　背景

touzyo = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --構え溜め
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); --ロゼ揺らす

shuchusen2 = entryEffectLife( spep_1, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen2, 255);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+10, 10012, 72, 0, -1, 0, -100, 350); -- ズオッ
setEffRotateKey(spep_1+10, ct, -10);
setEffShake(spep_1+10, ct, 72, 5);
setEffAlphaKey(spep_1+10, ct, 255);
setEffAlphaKey(spep_1+42, ct, 255);
setEffAlphaKey(spep_1+52, ct, 0);
setEffScaleKey(spep_1+10, ct, 0.0, 0.0);
setEffScaleKey(spep_1+14, ct, 2.0, 2.0);
setEffScaleKey(spep_1+44, ct, 2.0, 2.0);
setEffScaleKey(spep_1+62, ct, 6.0, 6.0);
--[[
speff = entryEffect(  spep_1+50,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+50,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]

playSe( spep_1+24, 1042);


------------------------------------------------------
-- 放つロゼ(120F)
------------------------------------------------------
spep_3 = spep_1+80;

entryFade( spep_3-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);          -- ベース黒　背景

roze = entryEffect(  spep_3,   SP_03,   0,  -1,  0,  0,  0);   --放つロゼだけ
setEffScaleKey( spep_3, roze, 1.0, 1.0);
setEffAlphaKey( spep_3, roze, 255);
setEffShake(spep_3+24, roze, 116, 10); --ロゼ揺らす

ryuusen = entryEffectLife( spep_3+20, 921, 100, 0x80,  -1, 0,  0,  0);   -- 流線斜めを縦にする
setEffScaleKey( spep_3+20, ryuusen, 1.6, 1.6);
setEffAlphaKey( spep_3+20, ryuusen, 255);
setEffRotateKey(spep_3+20, ryuusen, -90);

zangeki1 = entryEffect(  spep_3,   SP_04,   0x100,  -1,  0,  0,  0);   --斬撃
setEffScaleKey( spep_3, zangeki1, 1.0, 1.0);
setEffAlphaKey( spep_3, zangeki1, 255);
setEffShake(spep_3, zangeki1, 140, 10); --斬撃揺らす

shuchusen3 = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);



-- 書き文字エントリー
ct = entryEffectLife( spep_3+24, 10012, 72, 0, -1, 0, -100, 300); -- ズオッ
setEffRotateKey(spep_3+24, ct, -20);
setEffShake(spep_3+24, ct, 72, 5);
setEffAlphaKey(spep_3+24, ct, 255);
setEffAlphaKey(spep_3+46, ct, 255);
setEffAlphaKey(spep_3+66, ct, 0);
setEffScaleKey(spep_3+24, ct, 0.0, 0.0);
setEffScaleKey(spep_3+28, ct, 1.3, 1.3);
setEffScaleKey(spep_3+48, ct, 1.3, 1.3);
setEffScaleKey(spep_3+66, ct, 6.0, 6.0);

playSe( spep_3+24, SE_06);

------------------------------------------------------
-- 空間からクローン(80F)
------------------------------------------------------
spep_4 = spep_3+120;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 10, 10, 10, 180);          -- 暗め　背景

haikei4 = entryEffectLife(  spep_4,   SP_10, 120,  0x80,  -1,  0,  0,  0);   --背景
setEffScaleKey( spep_4, haikei4, 1.0, 1.0);
setEffAlphaKey( spep_4, haikei4, 255);

kuukan = entryEffect(  spep_4,   SP_05,   0x80,  -1,  0,  0,  0);   --分身登場
setEffScaleKey( spep_4, kuukan, 1.0, 1.0);
setEffAlphaKey( spep_4, kuukan, 255);


shuchusen4 = entryEffectLife( spep_4, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 2.3, 2.3);
setEffAlphaKey( spep_4, shuchusen4, 255);

playSe( spep_4+6, SE_07);


------------------------------------------------------
-- クローンの攻撃(80F)
------------------------------------------------------
spep_5 = spep_4+120;

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 134, 0, 10, 10, 10, 180);          -- 暗め　背景

haikei5 = entryEffectLife(  spep_5,   SP_10, 130,  0x80,  -1,  0,  0,  0);   --背景
setEffScaleKey( spep_5, haikei5, 1.0, 1.0);
setEffAlphaKey( spep_5, haikei5, 255);

setDisp( spep_5, 1, 1);--敵表示
setRotateKey(   spep_5,   1, 0);
setRotateKey(   spep_5+40,   1, 0);
--setRotateKey(   spep_5+40,   1, -10);
setRotateKey(   spep_5+41,   1, -20);
setRotateKey(   spep_5+84,   1, -20);
setRotateKey(   spep_5+85,   1, -90);
setRotateKey(   spep_5+125,   1, -90);

setMoveKey(   spep_5,   1,    40,  25,  0);
setMoveKey(   spep_5+21,   1,    40, 25,  0);

setMoveKey(   spep_5+22,   1,    80,  50,  0);
setMoveKey(   spep_5+40,   1,    80,  50,  0);

setMoveKey(   spep_5+41,   1,    0,  100,  0);
setMoveKey(   spep_5+60,   1,    0,  100,  0);

setMoveKey(   spep_5+61,   1,    0,  100,  0);
setMoveKey(   spep_5+84,   1,    40,  100,  0);
setMoveKey(   spep_5+85,   1,    0,  100,  0);
setMoveKey(   spep_5+100,   1,    0,  100,  0);
setMoveKey(   spep_5+125,   1,    0,  800,  0);
setDisp( spep_5+125, 1, 0);

setScaleKey(   spep_5,   1, 1.3, 1.3);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_5+1, 1, 19 , 5 );
setShakeChara( spep_5+22, 1, 17 , 10 );
setShakeChara( spep_5+41, 1, 18 , 10 );
setShakeChara( spep_5+61, 1, 44 , 10 );

changeAnime( spep_5, 1, 100);  --待機
changeAnime( spep_5+21, 1, 108);  --ダメージ（吹き飛び） 
changeAnime( spep_5+41, 1, 106);  --ダメージ
changeAnime( spep_5+85, 1, 108);  --ダメージ（吹き飛び） 

entryFade( spep_5+84, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey(   spep_5+60,   1,    0,  0,  0);
--setMoveKey(   spep_5+60,   1,    0,  500,  0);


kougeki = entryEffect(  spep_5,   SP_06,   0x100,  -1,  0,  0,  0);   --迫る斬撃
setEffScaleKey( spep_5, kougeki, 1.0, 1.0);
setEffAlphaKey( spep_5, kougeki, 255);
setEffMoveKey( spep_5, kougeki, 0, 0, 0);

yokosen = entryEffectLife( spep_5, 914, 84, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_5, yokosen, 1.6, 1.6);
setEffAlphaKey( spep_5, yokosen, 255);
setEffRotateKey(spep_5, yokosen, 0);
setEffMoveKey( spep_5, yokosen, 0, 0, 0);

tatesen = entryEffectLife( spep_5+85, 914, 45, 0x80,  -1, 0,  0,  0);   -- 縦線
setEffScaleKey( spep_5+85, tatesen, 1.6, 1.6);
setEffAlphaKey( spep_5+85, tatesen, 255);
setEffRotateKey(spep_5+85, tatesen, 90);
setEffMoveKey( spep_5+85, tatesen, 0, 0, 0);

shuchusen5 = entryEffectLife( spep_5, 906, 134, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.6, 1.6);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);

playSe( spep_5+21, 1009);
playSe( spep_5+41, 1010);
playSe( spep_5+57, 1010);
playSe( spep_5+85, 1010);

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_5+21, 10017, 50, 0, -1, 0, 150, 400); -- ドガガガッ
setEffRotateKey(spep_5+21, ctDokgaga, 20);
setEffShake(spep_5+21, ctDokgaga, 72, 5);
setEffAlphaKey(spep_5+21, ctDokgaga, 255);
setEffScaleKey(spep_5+21, ctDokgaga, 0.5, 0.5);
setEffScaleKey(spep_5+22, ctDokgaga, 2.8, 2.8);
setEffScaleKey(spep_5+23, ctDokgaga, 2.8, 2.8);

ctDokgaga1 = entryEffectLife( spep_5+85, 10020, 72, 0, -1, 0, 0, 400); -- バキッ
setEffRotateKey(spep_5+85, ctDokgaga1, -10);
setEffRotateKey(spep_5+95, ctDokgaga1, -10);
setEffRotateKey(spep_5+96, ctDokgaga1, 0);
setEffRotateKey(spep_5+97, ctDokgaga1, 0);
setEffRotateKey(spep_5+98, ctDokgaga1, -10);
setEffRotateKey(spep_5+99, ctDokgaga1, -10);
setEffRotateKey(spep_5+100, ctDokgaga1, 0);
setEffRotateKey(spep_5+101, ctDokgaga1, 0);
setEffRotateKey(spep_5+104, ctDokgaga1, -10);
setEffShake(spep_5+86, ctDokgaga1, 72, 5);
setEffAlphaKey(spep_5+85, ctDokgaga1, 255);
setEffAlphaKey(spep_5+95, ctDokgaga1, 255);
setEffAlphaKey(spep_5+105, ctDokgaga1, 0);
setEffScaleKey(spep_5+85, ctDokgaga1, 2.4, 2.4);
setEffScaleKey(spep_5+95, ctDokgaga1, 2.5, 2.5);
setEffScaleKey(spep_5+96, ctDokgaga1, 3.5, 3.5);
setEffScaleKey(spep_5+97, ctDokgaga1, 2.4, 2.4);
setEffScaleKey(spep_5+105, ctDokgaga1, 2.4, 2.4);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_6 = spep_5+130;

entryFade( spep_6-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
shuchusenct6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 2, 2);
setEffAlphaKey( spep_6, shuchusenct6, 255);

setScaleKey(   spep_6-1,   1, 1.6, 1.6);
setRotateKey(   spep_6-1,   1, 0);
setMoveKey(   spep_6-1,   1,    0,  0,  0);

playSe( spep_6+4, SE_05);

speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


shuchusen6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_6, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen6, 255);


------------------------------------------------------
-- 斬りかかり
------------------------------------------------------
spep_7 = spep_6+90;

entryFade( spep_7-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7+19, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 120, 0, 0, 0, 0, 255);          -- ベース黒　背景

haikei7 = entryEffectLife(  spep_7,   SP_10, 100,  0x80,  -1,  0,  0,  0);   --背景
setEffScaleKey( spep_7, haikei7, 1.0, 1.0);
setEffAlphaKey( spep_7, haikei7, 255);

ryuusen7 = entryEffectLife( spep_7, 921, 99, 0x80,  -1, 0,  0,  0);   -- 流線斜めを縦にする
setEffScaleKey( spep_7, ryuusen7, 1.6, 1.6);
setEffAlphaKey( spep_7, ryuusen7, 255);
setEffRotateKey(spep_7, ryuusen7, -90);


roze7 = entryEffect(  spep_7,   SP_07,   0x80,  -1,  0,  0,  0);   --放つロゼだけ
setEffScaleKey( spep_7, roze7, 1.0, 1.0);
setEffAlphaKey( spep_7, roze7, 255);
setEffShake(spep_7+24, roze7, 116, 10); --ロゼ揺らす

setDisp( spep_7, 1, 1);--敵表示
changeAnime( spep_7, 1, 108);  --ダメージ（吹き飛び）
setScaleKey(   spep_7,   1, 1.8, 1.8);
setScaleKey(   spep_7+99,   1, 1.8, 1.8);
setRotateKey(   spep_7,   1, -70);
setMoveKey(   spep_7-1,   1,    0,  -1500,  0);
setMoveKey(   spep_7,   1,    0,  -800,  0);
setMoveKey(   spep_7+5,   1,    0,  -800,  0);
setMoveKey(   spep_7+25,   1,    0, -300,  0);
setShakeChara( spep_7+1, 1, 100 , 5 );


setDisp( spep_7+99, 1, 0);--敵非表示



shuchusen7 = entryEffectLife( spep_7, 906, 99, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_7, shuchusen7, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen7, 255);


speff = entryEffect(  spep_7+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_7+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_7+23, 190006, 65, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_7+23, gogogo, 0.8, 0.8);
setEffAlphaKey( spep_7+23, gogogo, 255);
setEffRotateKey( spep_7+23, gogogo, 20);

playSe( spep_7+10, SE_04);

------------------------------------------------------
-- 斬撃
------------------------------------------------------
spep_8 = spep_7+95;
entryFadeBg( spep_8, 0, 40, 0, 0, 0, 0, 255);          -- ベース黒　背景

setDisp( spep_8, 1, 0);
entryFade( spep_8-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

zanngeki2 = entryEffect(  spep_8,   SP_08,   0,  -1,  0,  0,  0);
setEffMoveKey( spep_8, zanngeki2, 0, 0, 0);
setEffScaleKey( spep_8, zanngeki2,1.0, 1.0);
setEffAlphaKey( spep_8, zanngeki2, 255);
setEffShake( spep_8, zanngeki2, 10);

shuchusen8 = entryEffectLife( spep_8, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_8, shuchusen8, 2.3, 2.3);
setEffAlphaKey( spep_8, shuchusen8, 255);

-- ** 音 ** --
playSe( spep_8+8, SE_09);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 360; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  SP_dodge-1,    1,  0,  -10000,   0);
setMoveKey(  SP_dodge,    1,  0,  -20000,   0);
setMoveKey(  SP_dodge-1,    0,  0,  -10000,   0);
setMoveKey(  SP_dodge,    0,  0,  -20000,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_9 = spep_8+40;



entryFade( spep_9-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

haikei9 = entryEffectLife(  spep_9,   SP_10, 120,  0x80,  -1,  0,  0,  0);   --背景
setEffScaleKey( spep_9, haikei9, 1.0, 1.0);
setEffAlphaKey( spep_9, haikei9, 255);

ryuusen9 = entryEffectLife( spep_9, 921, 120, 0x80,  -1, 0,  0,  0);   -- 流線斜めを縦にする
setEffScaleKey( spep_9, ryuusen9, 1.7, 1.7);
setEffAlphaKey( spep_9, ryuusen9, 255);
setEffRotateKey(spep_9, ryuusen9, -60);


bom = entryEffect(  spep_9,   SP_09,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_9, bom, 1.0, 1.0);
setEffAlphaKey( spep_9, bom, 255);


shuchusen9 = entryEffectLife( spep_9, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9, shuchusen9, 2.0, 2.0);
setEffAlphaKey( spep_9, shuchusen9, 255);

playSe( spep_9+5, SE_10);

-- ダメージ表示
dealDamage( spep_9+16);
entryFade( spep_9+96, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+106);


else
------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

entryFadeBg( spep_0, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背景　

kamadasu = entryEffect(  spep_0,  SP_01,   0,  -1,  0,  0,  0);   --鎌引き抜き
setEffScaleKey( spep_0, kamadasu, -1, 1);
setEffAlphaKey( spep_0, kamadasu, 255);

tate = entryEffectLife( spep_0, 914, 110, 0x80,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_0, tate, 1.5, 1.5);
setEffAlphaKey( spep_0, tate, 255);
setEffRotateKey(spep_0, tate, 90);

shuchusen1 = entryEffectLife( spep_0, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusen1, 255);

playSe( spep_0, SE_02);
playSe( spep_0+20, SE_02);
playSe( spep_0+40, SE_02);
playSe( spep_0+60, SE_02);
playSe( spep_0+80, SE_02);


------------------------------------------------------
-- 登場(140F)
------------------------------------------------------
spep_1 = spep_0+110;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 140, 0, 10, 10, 10, 210);          -- やや暗い　背景

touzyo = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --構え溜め
setEffScaleKey( spep_1, touzyo, -1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); --ロゼ揺らす

shuchusen2 = entryEffectLife( spep_1, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen2, 255);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+10, 10012, 72, 0, -1, 0, -100, 350); -- ズオッ
setEffRotateKey(spep_1+10, ct, -10);
setEffShake(spep_1+10, ct, 72, 5);
setEffAlphaKey(spep_1+10, ct, 255);
setEffAlphaKey(spep_1+42, ct, 255);
setEffAlphaKey(spep_1+52, ct, 0);
setEffScaleKey(spep_1+10, ct, 0.0, 0.0);
setEffScaleKey(spep_1+14, ct, 2.0, 2.0);
setEffScaleKey(spep_1+44, ct, 2.0, 2.0);
setEffScaleKey(spep_1+62, ct, 6.0, 6.0);
--[[
speff = entryEffect(  spep_1+50,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+50,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]

playSe( spep_1+24, 1042);


------------------------------------------------------
-- 放つロゼ(120F)
------------------------------------------------------
spep_3 = spep_1+80;

entryFade( spep_3-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);          -- ベース黒　背景

roze = entryEffect(  spep_3,   SP_03,   0,  -1,  0,  0,  0);   --放つロゼだけ
setEffScaleKey( spep_3, roze, -1.0, 1.0);
setEffAlphaKey( spep_3, roze, 255);
setEffShake(spep_3+24, roze, 116, 10); --ロゼ揺らす

ryuusen = entryEffectLife( spep_3+20, 921, 100, 0x80,  -1, 0,  0,  0);   -- 流線斜めを縦にする
setEffScaleKey( spep_3+20, ryuusen, 1.6, 1.6);
setEffAlphaKey( spep_3+20, ryuusen, 255);
setEffRotateKey(spep_3+20, ryuusen, -90);

zangeki1 = entryEffect(  spep_3,   SP_04,   0x100,  -1,  0,  0,  0);   --斬撃
setEffScaleKey( spep_3, zangeki1, 1.0, 1.0);
setEffAlphaKey( spep_3, zangeki1, 255);
setEffShake(spep_3, zangeki1, 140, 10); --斬撃揺らす

shuchusen3 = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);



-- 書き文字エントリー
ct = entryEffectLife( spep_3+24, 10012, 72, 0, -1, 0, 100, 300); -- ズオッ
setEffRotateKey(spep_3+24, ct, 20);
setEffShake(spep_3+24, ct, 72, 5);
setEffAlphaKey(spep_3+24, ct, 255);
setEffAlphaKey(spep_3+46, ct, 255);
setEffAlphaKey(spep_3+66, ct, 0);
setEffScaleKey(spep_3+24, ct, 0.0, 0.0);
setEffScaleKey(spep_3+28, ct, 1.3, 1.3);
setEffScaleKey(spep_3+48, ct, 1.3, 1.3);
setEffScaleKey(spep_3+66, ct, 6.0, 6.0);

playSe( spep_3+24, SE_06);

------------------------------------------------------
-- 空間からクローン(80F)
------------------------------------------------------
spep_4 = spep_3+120;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 10, 10, 10, 180);          -- 暗め　背景

haikei4 = entryEffectLife(  spep_4,   SP_10, 120,  0x80,  -1,  0,  0,  0);   --背景
setEffScaleKey( spep_4, haikei4, 1.0, 1.0);
setEffAlphaKey( spep_4, haikei4, 255);

kuukan = entryEffect(  spep_4,   SP_05,   0x80,  -1,  0,  0,  0);   --分身登場
setEffScaleKey( spep_4, kuukan, -1.0, 1.0);
setEffAlphaKey( spep_4, kuukan, 255);


shuchusen4 = entryEffectLife( spep_4, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 2.3, 2.3);
setEffAlphaKey( spep_4, shuchusen4, 255);

playSe( spep_4+6, SE_07);


------------------------------------------------------
-- クローンの攻撃(80F)
------------------------------------------------------
spep_5 = spep_4+120;

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 134, 0, 10, 10, 10, 180);          -- 暗め　背景

haikei5 = entryEffectLife(  spep_5,   SP_10, 130,  0x80,  -1,  0,  0,  0);   --背景
setEffScaleKey( spep_5, haikei5, 1.0, 1.0);
setEffAlphaKey( spep_5, haikei5, 255);

setDisp( spep_5, 1, 1);--敵表示
setRotateKey(   spep_5,   1, 0);
setRotateKey(   spep_5+40,   1, 0);
--setRotateKey(   spep_5+40,   1, -10);
setRotateKey(   spep_5+41,   1, -20);
setRotateKey(   spep_5+84,   1, -20);
setRotateKey(   spep_5+85,   1, -90);
setRotateKey(   spep_5+125,   1, -90);

setMoveKey(   spep_5,   1,    40,  25,  0);
setMoveKey(   spep_5+21,   1,    40, 25,  0);

setMoveKey(   spep_5+22,   1,    80,  50,  0);
setMoveKey(   spep_5+40,   1,    80,  50,  0);

setMoveKey(   spep_5+41,   1,    0,  100,  0);
setMoveKey(   spep_5+60,   1,    0,  100,  0);

setMoveKey(   spep_5+61,   1,    0,  100,  0);
setMoveKey(   spep_5+84,   1,    40,  100,  0);
setMoveKey(   spep_5+85,   1,    0,  100,  0);
setMoveKey(   spep_5+100,   1,    0,  100,  0);
setMoveKey(   spep_5+125,   1,    0,  800,  0);
setDisp( spep_5+125, 1, 0);

setScaleKey(   spep_5,   1, 1.3, 1.3);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_5+1, 1, 19 , 5 );
setShakeChara( spep_5+22, 1, 17 , 10 );
setShakeChara( spep_5+41, 1, 18 , 10 );
setShakeChara( spep_5+61, 1, 44 , 10 );

changeAnime( spep_5, 1, 100);  --待機
changeAnime( spep_5+21, 1, 108);  --ダメージ（吹き飛び） 
changeAnime( spep_5+41, 1, 106);  --ダメージ
changeAnime( spep_5+85, 1, 108);  --ダメージ（吹き飛び） 

entryFade( spep_5+84, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey(   spep_5+60,   1,    0,  0,  0);
--setMoveKey(   spep_5+60,   1,    0,  500,  0);


kougeki = entryEffect(  spep_5,   SP_06e,   0x100,  -1,  0,  0,  0);   --迫る斬撃
setEffScaleKey( spep_5, kougeki, 1.0, 1.0);
setEffAlphaKey( spep_5, kougeki, 255);
setEffMoveKey( spep_5, kougeki, 0, 0, 0);

yokosen = entryEffectLife( spep_5, 914, 84, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_5, yokosen, 1.6, 1.6);
setEffAlphaKey( spep_5, yokosen, 255);
setEffRotateKey(spep_5, yokosen, 0);
setEffMoveKey( spep_5, yokosen, 0, 0, 0);

tatesen = entryEffectLife( spep_5+85, 914, 45, 0x80,  -1, 0,  0,  0);   -- 縦線
setEffScaleKey( spep_5+85, tatesen, 1.6, 1.6);
setEffAlphaKey( spep_5+85, tatesen, 255);
setEffRotateKey(spep_5+85, tatesen, 90);
setEffMoveKey( spep_5+85, tatesen, 0, 0, 0);

shuchusen5 = entryEffectLife( spep_5, 906, 134, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.6, 1.6);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);

playSe( spep_5+21, 1009);
playSe( spep_5+41, 1010);
playSe( spep_5+57, 1010);
playSe( spep_5+85, 1010);

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_5+21, 10017, 50, 0, -1, 0, 150, 400); -- ドガガガッ
setEffRotateKey(spep_5+21, ctDokgaga, 20);
setEffShake(spep_5+21, ctDokgaga, 72, 5);
setEffAlphaKey(spep_5+21, ctDokgaga, 255);
setEffScaleKey(spep_5+21, ctDokgaga, 0.5, 0.5);
setEffScaleKey(spep_5+22, ctDokgaga, 2.8, 2.8);
setEffScaleKey(spep_5+23, ctDokgaga, 2.8, 2.8);

ctDokgaga1 = entryEffectLife( spep_5+85, 10020, 72, 0, -1, 0, 0, 400); -- バキッ
setEffRotateKey(spep_5+85, ctDokgaga1, -10);
setEffRotateKey(spep_5+95, ctDokgaga1, -10);
setEffRotateKey(spep_5+96, ctDokgaga1, 0);
setEffRotateKey(spep_5+97, ctDokgaga1, 0);
setEffRotateKey(spep_5+98, ctDokgaga1, -10);
setEffRotateKey(spep_5+99, ctDokgaga1, -10);
setEffRotateKey(spep_5+100, ctDokgaga1, 0);
setEffRotateKey(spep_5+101, ctDokgaga1, 0);
setEffRotateKey(spep_5+104, ctDokgaga1, -10);
setEffShake(spep_5+86, ctDokgaga1, 72, 5);
setEffAlphaKey(spep_5+85, ctDokgaga1, 255);
setEffAlphaKey(spep_5+95, ctDokgaga1, 255);
setEffAlphaKey(spep_5+105, ctDokgaga1, 0);
setEffScaleKey(spep_5+85, ctDokgaga1, 2.4, 2.4);
setEffScaleKey(spep_5+95, ctDokgaga1, 2.5, 2.5);
setEffScaleKey(spep_5+96, ctDokgaga1, 3.5, 3.5);
setEffScaleKey(spep_5+97, ctDokgaga1, 2.4, 2.4);
setEffScaleKey(spep_5+105, ctDokgaga1, 2.4, 2.4);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_6 = spep_5+130;

entryFade( spep_6-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
shuchusenct6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 2, 2);
setEffAlphaKey( spep_6, shuchusenct6, 255);

setScaleKey(   spep_6-1,   1, 1.6, 1.6);
setRotateKey(   spep_6-1,   1, 0);
setMoveKey(   spep_6-1,   1,    0,  0,  0);

playSe( spep_6+4, SE_05);

speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


shuchusen6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_6, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen6, 255);


------------------------------------------------------
-- 斬りかかり
------------------------------------------------------
spep_7 = spep_6+90;

entryFade( spep_7-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7+19, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 120, 0, 0, 0, 0, 255);          -- ベース黒　背景

haikei7 = entryEffectLife(  spep_7,   SP_10, 100,  0x80,  -1,  0,  0,  0);   --背景
setEffScaleKey( spep_7, haikei7, 1.0, 1.0);
setEffAlphaKey( spep_7, haikei7, 255);

ryuusen7 = entryEffectLife( spep_7, 921, 99, 0x80,  -1, 0,  0,  0);   -- 流線斜めを縦にする
setEffScaleKey( spep_7, ryuusen7, 1.6, 1.6);
setEffAlphaKey( spep_7, ryuusen7, 255);
setEffRotateKey(spep_7, ryuusen7, -90);


roze7 = entryEffect(  spep_7,   SP_07,   0x80,  -1,  0,  0,  0);   --放つロゼだけ
setEffScaleKey( spep_7, roze7, -1.0, 1.0);
setEffAlphaKey( spep_7, roze7, 255);
setEffShake(spep_7+24, roze7, 116, 10); --ロゼ揺らす

setDisp( spep_7, 1, 1);--敵表示
changeAnime( spep_7, 1, 108);  --ダメージ（吹き飛び）
setScaleKey(   spep_7,   1, 1.8, 1.8);
setScaleKey(   spep_7+99,   1, 1.8, 1.8);
setRotateKey(   spep_7,   1, -70);
setMoveKey(   spep_7-1,   1,    0,  -1500,  0);
setMoveKey(   spep_7,   1,    0,  -800,  0);
setMoveKey(   spep_7+5,   1,    0,  -800,  0);
setMoveKey(   spep_7+25,   1,    0, -300,  0);
setShakeChara( spep_7+1, 1, 100 , 5 );


setDisp( spep_7+99, 1, 0);--敵非表示



shuchusen7 = entryEffectLife( spep_7, 906, 99, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_7, shuchusen7, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen7, 255);

--[[
speff = entryEffect(  spep_7+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_7+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_7+23, 190006, 65, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_7+23, gogogo, -0.8, 0.8);
setEffAlphaKey( spep_7+23, gogogo, 255);
setEffRotateKey( spep_7+23, gogogo, 20);

playSe( spep_7+10, SE_04);

------------------------------------------------------
-- 斬撃
------------------------------------------------------
spep_8 = spep_7+95;
entryFadeBg( spep_8, 0, 40, 0, 0, 0, 0, 255);          -- ベース黒　背景

setDisp( spep_8, 1, 0);
entryFade( spep_8-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

zanngeki2 = entryEffect(  spep_8,   SP_08,   0,  -1,  0,  0,  0);
setEffMoveKey( spep_8, zanngeki2, 0, 0, 0);
setEffScaleKey( spep_8, zanngeki2,-1.0, 1.0);
setEffAlphaKey( spep_8, zanngeki2, 255);
setEffShake( spep_8, zanngeki2, 10);

shuchusen8 = entryEffectLife( spep_8, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_8, shuchusen8, 2.3, 2.3);
setEffAlphaKey( spep_8, shuchusen8, 255);

-- ** 音 ** --
playSe( spep_8+8, SE_09);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 360; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  SP_dodge-1,    1,  0,  -10000,   0);
setMoveKey(  SP_dodge,    1,  0,  -20000,   0);
setMoveKey(  SP_dodge-1,    0,  0,  -10000,   0);
setMoveKey(  SP_dodge,    0,  0,  -20000,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_9 = spep_8+40;



entryFade( spep_9-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

haikei9 = entryEffectLife(  spep_9,   SP_10, 120,  0x80,  -1,  0,  0,  0);   --背景
setEffScaleKey( spep_9, haikei9, 1.0, 1.0);
setEffAlphaKey( spep_9, haikei9, 255);

ryuusen9 = entryEffectLife( spep_9, 921, 120, 0x80,  -1, 0,  0,  0);   -- 流線斜めを縦にする
setEffScaleKey( spep_9, ryuusen9, -1.7, 1.7);
setEffAlphaKey( spep_9, ryuusen9, 255);
setEffRotateKey(spep_9, ryuusen9, 60);


bom = entryEffect(  spep_9,   SP_09,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_9, bom, -1.0, 1.0);
setEffAlphaKey( spep_9, bom, 255);


shuchusen9 = entryEffectLife( spep_9, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9, shuchusen9, -2.0, 2.0);
setEffAlphaKey( spep_9, shuchusen9, 255);

playSe( spep_9+5, SE_10);

-- ダメージ表示
dealDamage( spep_9+16);
entryFade( spep_9+96, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+106);

end







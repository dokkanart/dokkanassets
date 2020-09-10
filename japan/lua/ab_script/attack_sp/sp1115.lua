
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン 高速ダッシュ移動
SE_05 = 1035; --カットイン攻撃
SE_06 = 1018; --発射
SE_07 = 1018; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1025; --HIT 気をまとった打撃攻撃。通常のパンチ、キック強打よりも爆発音よりの音
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;
SE_13 = 43; --!!音
SE_14 = 46; --ぶりっ娘音


SP_01 = 150521; --ぶりっ娘(90F)
SP_02 = 150522; --敵が喰らうハート(20F/60F)
SP_03 = 150523; --前方ダッシュ(54F)
SP_04 = 150524; --ダッシュ＆パンチ(64F/hit28F)
SP_05 = 150535; --ダッシュ＆パンチ(敵側)

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,   -50,   0);
setMoveKey(   1,   0,    0,   -50,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

--[[ 構成
  0F〜:気溜(100F) 途中コメントカットイン
       ピンクフェイド
101F〜:SP_01 = 150521; --ぶりっ娘(90F)
       ピンクフェイド
192F〜:敵待機（30F）+ SP_02 = 150522; --敵が喰らうハート(20F/60F)
       ピンクフェイド
252F〜:カードカットイン（90F）
342F〜:SP_03 = 150523; --前方ダッシュ(54F)
       白フェイド
376F〜:SP_04 = 150524; --ダッシュ＆パンチ(64F/hit28F)
　　　　敵吹っ飛び
440F〜:Finish
]]--
------------------------------------------------------
-- 気溜(100F) 途中コメントカットイン & ピンクフェイド
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

kitamestart = 0;

setVisibleUI(kitamestart,0);
--気を貯める

changeAnime(  kitamestart, 0, 17); -- 溜め!
setShakeChara( kitamestart, 0, 101, 12);

kitame1 = entryEffectLife(  kitamestart,   1501, 100,  0x80, -1,  0,  0,  0);
setEffScaleKey( kitamestart, kitame1, 1.5, 1.5);
setEffMoveKey( kitamestart, kitame1,  0,  0,  0);
setEffAlphaKey( kitamestart, kitame1,  255);

kitame2 = entryEffectLife(  kitamestart,   1500, 100,  0,    -1,  0,  0,  0);
setEffScaleKey( kitamestart, kitame2, 1.5, 1.5);
setEffMoveKey( kitamestart, kitame2,  0,  0,  0);
setEffAlphaKey( kitamestart, kitame2,  255);

playSe( kitamestart, SE_01);

-- 背景 --
entryFadeBg( kitamestart, 0, 100, 0,  0, 0, 0, 220);          -- ベース暗め　背景

syuA = entryEffectLife( kitamestart, 906, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuA,0,0,0);
setEffScaleKey(kitamestart,syuA,1.0,1.0);
setEffAlphaKey(kitamestart,syuA,255);

syuB = entryEffectLife( kitamestart, 1503, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuB,0,0,0);
setEffScaleKey(kitamestart,syuB,1.0,1.0);
setEffAlphaKey(kitamestart,syuB,255);

syuC = entryEffectLife( kitamestart, 1502, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuC,0,0,0);
setEffScaleKey(kitamestart,syuC,1.0,1.0);
setEffAlphaKey(kitamestart,syuC,255);

-- 書き文字エントリー
ctgogo = entryEffectLife( kitamestart+28, 190006, 85, 0x100, -1, 0, -200, 480);    -- ゴゴゴゴ 
setEffShake( kitamestart+28, ctgogo, 80, 8);
setEffRotateKey( kitamestart+28, ctgogo, 0);

setEffScaleKey( kitamestart+28, ctgogo, 0.7, 0.7);
setEffAlphaKey( kitamestart+28, ctgogo, 255);

setEffScaleKey( kitamestart+91, ctgogo, 0.7, 0.7);
setEffAlphaKey( kitamestart+91, ctgogo, 255);

setEffScaleKey( kitamestart+99, ctgogo, 3.0, 3.0);
setEffAlphaKey( kitamestart+99, ctgogo, 0);

speff1 = entryEffect(  kitamestart+13,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え 
speff2 = entryEffect(  kitamestart+13,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ) 
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

setMoveKey(   kitamestart+99,   0,    0,   -50,   0);
setScaleKey(   kitamestart+99,   0, 1.5, 1.5);

setDisp(kitamestart+100,  0,  0);
setMoveKey(   kitamestart+100,   0,    0,   -600,   0);
setScaleKey(   kitamestart+100,   0, 1.5, 1.5);
--setMove(kitamestart+100,  0,  0,  -800,  0);
--setScaleKey(kitamestart+100,   0, 1.5, 1.5);

playSe( kitamestart+13, SE_04);
----------------------------------------------
-- 101F〜:SP_01 = 150521; --ぶりっ娘(90F) ピンクフェイド
----------------------------------------------
buristart = 101;
buri = entryEffectLife(  buristart,  SP_01, 90,  0x100, -1,  0,  0,  0);
setEffMoveKey( buristart, buri, 0, 0, 0);
setEffScaleKey( buristart, buri, 1.0, 1.0);
setEffAlphaKey( buristart, buri, 255);

playSe(buristart, SE_14);

----------------------------------------------
-- 192F〜:敵待機（30F）+ SP_02 = 150522; --敵が喰らうハート(20F/60F) ピンクフェイド
----------------------------------------------
heartstart = 192;

changeAnime(heartstart,1,100);
setDisp(heartstart,1,1);
setMoveKey( heartstart,   1,    0,   0,   0);
setScaleKey( heartstart,   1, 1.5, 1.5);

setMoveKey(  heartstart+19,   1,    0,   0,   0);
setMoveKey(  heartstart+21,   1,    0,   20,   0);
setMoveKey(  heartstart+23,   1,    0,   0,   0);
setMoveKey(  heartstart+60,   1,    0,   0,   0);

playSe(heartstart+21, SE_13);

setDisp( heartstart+60,1,0);

heart = entryEffectLife(  heartstart,  SP_02, 60,  0x100, -1,  0,  0,  0);
setEffMoveKey( heartstart, heart, 0, 0, 0);
setEffScaleKey( heartstart, heart, 1.0, 1.0);
setEffAlphaKey( heartstart, heart, 255);
setEffAlphaKey( heartstart+30, heart, 255);
setEffAlphaKey( heartstart+31, heart, 0);

-- 背景 --
syuA = entryEffectLife( heartstart, 906, 60, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(heartstart,syuA,0,0,0);
setEffScaleKey(heartstart,syuA,1.0,1.0);
setEffAlphaKey(heartstart,syuA,255);

-- 書き文字エントリー
exp = entryEffectLife( heartstart+18, 10000, 20, 0, -1, 30, 200, 0); -- !!
setEffMoveKey( heartstart+18, exp, 30, 300, 0);
setEffScaleKey( heartstart+18, exp, 1.8, 1.8);
setEffAlphaKey( heartstart+18, exp, 255);

setEffMoveKey( heartstart+20, exp, 30, 300, 0);
setEffScaleKey( heartstart+20, exp, 2.5, 2.5);
setEffAlphaKey( heartstart+20, exp, 255);

setEffMoveKey( heartstart+22, exp, 30, 300, 0);
setEffScaleKey( heartstart+22, exp, 2.5, 2.5);
setEffAlphaKey( heartstart+22, exp, 255);

setEffMoveKey( heartstart+23, exp, 30, 300, 0);
setEffScaleKey( heartstart+23, exp, 1.8, 1.8);
setEffAlphaKey( heartstart+23, exp, 255);

setEffMoveKey( heartstart+48, exp, 30, 300, 0);
setEffScaleKey( heartstart+48, exp, 1.8, 1.8);
setEffAlphaKey( heartstart+48, exp, 255);

setEffMoveKey( heartstart+49, exp, 30, 300, 0);
setEffScaleKey( heartstart+49, exp, 1.8, 1.8);
setEffAlphaKey( heartstart+49, exp, 0);

entryFade( heartstart+46, 2, 3, 2, 250, 107, 255, 180);     -- pink fade
entryFade( heartstart+56, 2, 2, 2, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 252F〜:カードカットイン（90F）
------------------------------------------------------
cardcutin = 252;

setScaleKey( cardcutin-1,   0, 1.5, 1.5);
setScaleKey( cardcutin,   0, 1.0, 1.0);

playSe( cardcutin, SE_05);
speff = entryEffectLife(  cardcutin,   1507, 90,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( cardcutin+85, 3, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--playSe( cardcutin+64, SE_06);
------------------------------------------------------
-- 342F〜:SP_03 = 150523; --前方ダッシュ(54F)  白フェイド
------------------------------------------------------
dashstart = 342;

dash = entryEffectLife(  dashstart,  SP_03, 54,  0x100, -1,  0,  0,  0);
setEffMoveKey( dashstart, dash, 0, 0, 0);
setEffScaleKey( dashstart, dash, 1.0, 1.0);
setEffAlphaKey( dashstart, dash, 255);

setEffAlphaKey( dashstart+50, dash, 255);
setEffAlphaKey( dashstart+51, dash, 0);

-- 背景 --
syuA = entryEffectLife( dashstart, 906, 54, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( dashstart, syuA, 0 , 0, 0);
setEffScaleKey( dashstart, syuA, 1.0, 1.0);
setEffAlphaKey( dashstart, syuA, 255);

-- 背景 --
entryFadeBg( dashstart, 0, 54, 0,  0, 0, 0, 180);          -- ベース暗め　背景

-- 書き文字エントリー
zuo = entryEffectLife( dashstart+3, 10012, 48, 0x100, -1, 30, 200, 0); -- ズオ
setEffMoveKey( dashstart+3, zuo, 100, 300, 0);
setEffScaleKey( dashstart+3, zuo, 0.4, 0.4);
setEffAlphaKey( dashstart+3, zuo, 255);
setEffRotateKey( dashstart+3, zuo, 20);

setEffMoveKey( dashstart+9, zuo, 150, 400, 0);
setEffScaleKey( dashstart+9, zuo, 2.8, 2.8);
setEffAlphaKey( dashstart+9, zuo, 255);
setEffRotateKey( dashstart+9, zuo, 20);

setEffMoveKey( dashstart+53, zuo, 150, 400, 0);
setEffScaleKey( dashstart+53, zuo, 2.8, 2.8);
setEffAlphaKey( dashstart+53, zuo, 255);
setEffRotateKey( dashstart+53, zuo, 20);

setEffShake( dashstart+5, zuo, 48, 20);

entryFade(dashstart+49,2,4,2,fcolor_r, fcolor_g, fcolor_b, 255);
playSe(dashstart,SE_07);
------------------------------------------------------
-- 396F〜:SP_04 = 150524; --ダッシュ＆パンチ(64F/hit28F)
------------------------------------------------------
punchstart = 396;

changeAnime(punchstart,1,104);
setDisp(punchstart,1,1);
setMoveKey( punchstart,   1,    800,   0,   0);
setScaleKey( punchstart,   1, 1.5, 1.5);

changeAnime(punchstart+27,1,104);
setDisp(punchstart+27,1,1);
setMoveKey( punchstart+27,   1,    54,   0,   0);
setScaleKey( punchstart+27,   1, 1.5, 1.5);

punch = entryEffectLife(  punchstart,  SP_04, 64,  0x100, -1,  0,  0,  0);
setEffMoveKey( punchstart, punch, 0, 0, 0);
setEffScaleKey( punchstart, punch, 1.0, 1.0);
setEffAlphaKey( punchstart, punch, 255);

-- 背景 --
entryFadeBg( punchstart, 0, 64, 0,  0, 0, 0, 180);          -- ベース暗め　背景

yoko = entryEffectLife( punchstart, 920, 64, 0x80,  -1,  0,  0,  0);       -- 流線
setEffMoveKey( punchstart, yoko, 0, 0, 0);
setEffScaleKey( punchstart, yoko, 1.0, 1.0);
setEffAlphaKey( punchstart, yoko, 255);

-- 書き文字エントリー
zudo = entryEffectLife( punchstart, 10014, 28, 0, -1, -100, 350, 0); -- ズドド
setEffMoveKey( punchstart, zudo, -100, 350, 0);
setEffScaleKey( punchstart, zudo, 1.7, 1.7);
setEffAlphaKey( punchstart, zudo, 255);
setEffRotateKey( punchstart, zudo, 40);

setEffMoveKey( punchstart+27, zudo, -100, 350, 0);
setEffScaleKey( punchstart+27, zudo, 1.7, 1.7);
setEffAlphaKey( punchstart+27, zudo, 255);
setEffRotateKey( punchstart+27, zudo, 40);

setEffMoveKey( punchstart+28, zudo, -100, 350, 0);
setEffScaleKey( punchstart+28, zudo, 1.7, 1.7);
setEffAlphaKey( punchstart+28, zudo, 0);
setEffRotateKey( punchstart+28, zudo, 40);

setEffShake( punchstart, zudo, 28, 10);

playSe(punchstart,SE_07);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 414; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

-------------------------------------------------------
--回避されなかった世界 459では白
-------------------------------------------------------
changeAnime(punchstart+28,1,108);
setDisp(punchstart+28,1,1);
setMoveKey( punchstart+28,   1,    54,   0,   0);
setScaleKey( punchstart+28,   1, 1.5, 1.5);

changeAnime(punchstart+62,1,108);
setDisp(punchstart+62,1,1);
setMoveKey( punchstart+62,   1,    1500,   0,   0);
setScaleKey( punchstart+62,   1, 1.5, 1.5);

baki = entryEffectLife( punchstart+28, 10020, 36, 0, -1, 130, 270, 0); -- バキ
setEffMoveKey( punchstart+28, baki, 130, 200, 0);
setEffScaleKey( punchstart+28, baki, 1.8, 1.8);
setEffAlphaKey( punchstart+28, baki, 255);
setEffRotateKey( punchstart+28, baki, 40);

setEffMoveKey( punchstart+63, baki, 130, 270, 0);
setEffScaleKey( punchstart+63, baki, 1.8, 1.8);
setEffAlphaKey( punchstart+63, baki, 255);
setEffRotateKey( punchstart+63, baki, 40);

setEffShake( punchstart+28, baki, 36, 15);

playSe(punchstart+28,1023);

entryFade(punchstart+60,2,6,2,fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 440F〜 爆発 (110F)
------------------------------------------------------
Finish = 460;

setDisp( Finish-1, 1, 1); --469
setMoveKey(  Finish-1,    1,  100,  0,   0);
setScaleKey( Finish-1,    1,  1.0, 1.0);
setMoveKey(  Finish,    1,    0,   0,   128);
setScaleKey( Finish,    1,  0.1, 0.1);

changeAnime( Finish, 1, 107);                         -- 手前ダメージ
entryEffect( Finish+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( Finish+8, SE_10);

setMoveKey(  Finish+8,   1,    0,   0,   128);
setMoveKey(  Finish+15,   1,  -60,  -200,  -100);
setDamage( Finish+16, 1, 0);  -- ダメージ振動等
setShake(Finish+7,6,15);
setShake(Finish+13,15,10);

setRotateKey( Finish,  1,  30 );
setRotateKey( Finish+2,  1,  80 );
setRotateKey( Finish+4,  1, 120 );
setRotateKey( Finish+6,  1, 160 );
setRotateKey( Finish+8,  1, 200 );
setRotateKey( Finish+10,  1, 260 );
setRotateKey( Finish+12,  1, 320 );
setRotateKey( Finish+14,  1,   0 );

setShakeChara( Finish+15, 1, 5,  10);
setShakeChara( Finish+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( Finish+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(Finish+15, ct, 30, 10);
setEffRotateKey( Finish+15, ct, -40);
setEffScaleKey( Finish+15, ct, 4.0, 4.0);
setEffScaleKey( Finish+16, ct, 2.0, 2.0);
setEffScaleKey( Finish+17, ct, 2.6, 2.6);
setEffScaleKey( Finish+18, ct, 4.0, 4.0);
setEffScaleKey( Finish+19, ct, 2.6, 2.6);
setEffScaleKey( Finish+20, ct, 3.8, 3.8);
setEffScaleKey( Finish+110, ct, 3.8, 3.8);
setEffAlphaKey( Finish+15, ct, 255);
setEffAlphaKey( Finish+105, ct, 255);
setEffAlphaKey( Finish+115, ct, 0);

playSe( Finish+3, SE_11);
shuchusen = entryEffectLife( Finish+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( Finish+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(477);

entryFade( Finish+90, 9,  10, 1, 8, 8, 8, 255);             -- black fade
--setMove(Finish+90,  0,  0,  -800,  0);
--setScaleKey(Finish+90,   0, 1.5, 1.5);
endPhase(Finish+100);

else

-----------------------------------------------------------
-----------------------------------------------------------
kame_flag = 0x00;

kitamestart = 0;

setVisibleUI(kitamestart,0);
--気を貯める

changeAnime(  kitamestart, 0, 17); -- 溜め!
setShakeChara( kitamestart, 0, 101, 12);

kitame1 = entryEffectLife(  kitamestart,   1501, 100,  0x80, -1,  0,  0,  0);
setEffScaleKey( kitamestart, kitame1, 1.5, 1.5);
setEffMoveKey( kitamestart, kitame1,  0,  0,  0);
setEffAlphaKey( kitamestart, kitame1,  255);

kitame2 = entryEffectLife(  kitamestart,   1500, 100,  0,    -1,  0,  0,  0);
setEffScaleKey( kitamestart, kitame2, 1.5, 1.5);
setEffMoveKey( kitamestart, kitame2,  0,  0,  0);
setEffAlphaKey( kitamestart, kitame2,  255);

playSe( kitamestart, SE_01);

-- 背景 --
entryFadeBg( kitamestart, 0, 100, 0,  0, 0, 0, 220);          -- ベース暗め　背景

syuA = entryEffectLife( kitamestart, 906, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuA,0,0,0);
setEffScaleKey(kitamestart,syuA,1.0,1.0);
setEffAlphaKey(kitamestart,syuA,255);

syuB = entryEffectLife( kitamestart, 1503, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuB,0,0,0);
setEffScaleKey(kitamestart,syuB,1.0,1.0);
setEffAlphaKey(kitamestart,syuB,255);

syuC = entryEffectLife( kitamestart, 1502, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuC,0,0,0);
setEffScaleKey(kitamestart,syuC,1.0,1.0);
setEffAlphaKey(kitamestart,syuC,255);

-- 書き文字エントリー
ctgogo = entryEffectLife( kitamestart+28, 190006, 85, 0x100, -1, 0, 0, 480);    -- ゴゴゴゴ 
setEffShake( kitamestart+28, ctgogo, 80, 8);
setEffRotateKey( kitamestart+28, ctgogo, 0);

setEffScaleKey( kitamestart+28, ctgogo, -0.7, 0.7);
setEffAlphaKey( kitamestart+28, ctgogo, 255);

setEffScaleKey( kitamestart+91, ctgogo, -0.7, 0.7);
setEffAlphaKey( kitamestart+91, ctgogo, 255);

setEffScaleKey( kitamestart+99, ctgogo, -3.0, 3.0);
setEffAlphaKey( kitamestart+99, ctgogo, 0);
--[[
speff1 = entryEffect(  kitamestart+13,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え 
speff2 = entryEffect(  kitamestart+13,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ) 
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え
]]
setMoveKey(   kitamestart+99,   0,    0,   -50,   0);
setScaleKey(   kitamestart+99,   0, 1.5, 1.5);

setDisp(kitamestart+100,  0,  0);
setMoveKey(   kitamestart+100,   0,    0,   -600,   0);
setScaleKey(   kitamestart+100,   0, 1.5, 1.5);
--setMove(kitamestart+100,  0,  0,  -800,  0);
--setScaleKey(kitamestart+100,   0, 1.5, 1.5);

playSe( kitamestart+13, SE_04);
----------------------------------------------
-- 101F〜:SP_01 = 150521; --ぶりっ娘(90F) ピンクフェイド
----------------------------------------------
buristart = 101;
buri = entryEffectLife(  buristart,  SP_01, 90,  0x100, -1,  0,  0,  0);
setEffMoveKey( buristart, buri, 0, 0, 0);
setEffScaleKey( buristart, buri, -1.0, 1.0);
setEffAlphaKey( buristart, buri, 255);

playSe(buristart, SE_14);

----------------------------------------------
-- 192F〜:敵待機（30F）+ SP_02 = 150522; --敵が喰らうハート(20F/60F) ピンクフェイド
----------------------------------------------
heartstart = 192;

changeAnime(heartstart,1,100);
setDisp(heartstart,1,1);
setMoveKey( heartstart,   1,    0,   0,   0);
setScaleKey( heartstart,   1, 1.5, 1.5);

setMoveKey(  heartstart+19,   1,    0,   0,   0);
setMoveKey(  heartstart+21,   1,    0,   20,   0);
setMoveKey(  heartstart+23,   1,    0,   0,   0);
setMoveKey(  heartstart+60,   1,    0,   0,   0);

playSe(heartstart+21, SE_13);

setDisp( heartstart+60,1,0);

heart = entryEffectLife(  heartstart,  SP_02, 60,  0x100, -1,  0,  0,  0);
setEffMoveKey( heartstart, heart, 0, 0, 0);
setEffScaleKey( heartstart, heart, 1.0, 1.0);
setEffAlphaKey( heartstart, heart, 255);
setEffAlphaKey( heartstart+30, heart, 255);
setEffAlphaKey( heartstart+31, heart, 0);

-- 背景 --
syuA = entryEffectLife( heartstart, 906, 60, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(heartstart,syuA,0,0,0);
setEffScaleKey(heartstart,syuA,1.0,1.0);
setEffAlphaKey(heartstart,syuA,255);

-- 書き文字エントリー
exp = entryEffectLife( heartstart+18, 10000, 20, 0, -1, 30, 200, 0); -- !!
setEffMoveKey( heartstart+18, exp, 30, 300, 0);
setEffScaleKey( heartstart+18, exp, 1.8, 1.8);
setEffAlphaKey( heartstart+18, exp, 255);

setEffMoveKey( heartstart+20, exp, 30, 300, 0);
setEffScaleKey( heartstart+20, exp, 2.5, 2.5);
setEffAlphaKey( heartstart+20, exp, 255);

setEffMoveKey( heartstart+22, exp, 30, 300, 0);
setEffScaleKey( heartstart+22, exp, 2.5, 2.5);
setEffAlphaKey( heartstart+22, exp, 255);

setEffMoveKey( heartstart+23, exp, 30, 300, 0);
setEffScaleKey( heartstart+23, exp, 1.8, 1.8);
setEffAlphaKey( heartstart+23, exp, 255);

setEffMoveKey( heartstart+48, exp, 30, 300, 0);
setEffScaleKey( heartstart+48, exp, 1.8, 1.8);
setEffAlphaKey( heartstart+48, exp, 255);

setEffMoveKey( heartstart+49, exp, 30, 300, 0);
setEffScaleKey( heartstart+49, exp, 1.8, 1.8);
setEffAlphaKey( heartstart+49, exp, 0);

entryFade( heartstart+46, 2, 3, 2, 250, 107, 255, 180);     -- pink fade
entryFade( heartstart+56, 2, 2, 2, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 252F〜:カードカットイン（90F）
------------------------------------------------------
cardcutin = 252;

setScaleKey( cardcutin-1,   0, 1.5, 1.5);
setScaleKey( cardcutin,   0, 1.0, 1.0);

playSe( cardcutin, SE_05);
speff = entryEffectLife(  cardcutin,   1507, 90,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( cardcutin+85, 3, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--playSe( cardcutin+64, SE_06);
------------------------------------------------------
-- 342F〜:SP_03 = 150523; --前方ダッシュ(54F)  白フェイド
------------------------------------------------------
dashstart = 342;

dash = entryEffectLife(  dashstart,  SP_03, 54,  0x100, -1,  0,  0,  0);
setEffMoveKey( dashstart, dash, 0, 0, 0);
setEffScaleKey( dashstart, dash, -1.0, 1.0);
setEffAlphaKey( dashstart, dash, 255);

setEffAlphaKey( dashstart+50, dash, 255);
setEffAlphaKey( dashstart+51, dash, 0);

-- 背景 --
syuA = entryEffectLife( dashstart, 906, 54, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( dashstart, syuA, 0 , 0, 0);
setEffScaleKey( dashstart, syuA, 1.0, 1.0);
setEffAlphaKey( dashstart, syuA, 255);

-- 背景 --
entryFadeBg( dashstart, 0, 54, 0,  0, 0, 0, 180);          -- ベース暗め　背景

-- 書き文字エントリー
zuo = entryEffectLife( dashstart+3, 10012, 48, 0x100, -1, 30, 200, 0); -- ズオ
setEffMoveKey( dashstart+3, zuo, -100, 300, 0);
setEffScaleKey( dashstart+3, zuo, 0.4, 0.4);
setEffAlphaKey( dashstart+3, zuo, 255);
setEffRotateKey( dashstart+3, zuo, -20);

setEffMoveKey( dashstart+9, zuo, -150, 400, 0);
setEffScaleKey( dashstart+9, zuo, 2.8, 2.8);
setEffAlphaKey( dashstart+9, zuo, 255);
setEffRotateKey( dashstart+9, zuo, -20);

setEffMoveKey( dashstart+53, zuo, -150, 400, 0);
setEffScaleKey( dashstart+53, zuo, 2.8, 2.8);
setEffAlphaKey( dashstart+53, zuo, 255);
setEffRotateKey( dashstart+53, zuo, -20);

setEffShake( dashstart+5, zuo, 48, 20);

entryFade(dashstart+49,2,4,2,fcolor_r, fcolor_g, fcolor_b, 255);
playSe(dashstart,SE_07);
------------------------------------------------------
-- 396F〜:SP_04 = 150524; --ダッシュ＆パンチ(64F/hit28F)
------------------------------------------------------
punchstart = 396;

changeAnime(punchstart,1,104);
setDisp(punchstart,1,1);
setMoveKey( punchstart,   1,    800,   0,   0);
setScaleKey( punchstart,   1, 1.5, 1.5);

changeAnime(punchstart+27,1,104);
setDisp(punchstart+27,1,1);
setMoveKey( punchstart+27,   1,    54,   0,   0);
setScaleKey( punchstart+27,   1, 1.5, 1.5);

punch = entryEffectLife(  punchstart,  SP_05, 64,  0x100, -1,  0,  0,  0);
setEffMoveKey( punchstart, punch, 0, 0, 0);
setEffScaleKey( punchstart, punch, 1.0, 1.0);
setEffAlphaKey( punchstart, punch, 255);

-- 背景 --
entryFadeBg( punchstart, 0, 64, 0,  0, 0, 0, 180);          -- ベース暗め　背景

yoko = entryEffectLife( punchstart, 920, 64, 0x80,  -1,  0,  0,  0);       -- 流線
setEffMoveKey( punchstart, yoko, 0, 0, 0);
setEffScaleKey( punchstart, yoko, 1.0, 1.0);
setEffAlphaKey( punchstart, yoko, 255);

-- 書き文字エントリー
zudo = entryEffectLife( punchstart, 10014, 28, 0, -1, -100, 350, 0); -- ズドド
setEffMoveKey( punchstart, zudo, -100, 350, 0);
setEffScaleKey( punchstart, zudo, 1.7, 1.7);
setEffAlphaKey( punchstart, zudo, 255);
setEffRotateKey( punchstart, zudo, -35);

setEffMoveKey( punchstart+27, zudo, -100, 350, 0);
setEffScaleKey( punchstart+27, zudo, 1.7, 1.7);
setEffAlphaKey( punchstart+27, zudo, 255);
setEffRotateKey( punchstart+27, zudo, -35);

setEffMoveKey( punchstart+28, zudo, -100, 350, 0);
setEffScaleKey( punchstart+28, zudo, 1.7, 1.7);
setEffAlphaKey( punchstart+28, zudo, 0);
setEffRotateKey( punchstart+28, zudo, -35);

setEffShake( punchstart, zudo, 28, 10);

playSe(punchstart,SE_07);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 414; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

-------------------------------------------------------
--回避されなかった世界 459では白
-------------------------------------------------------
changeAnime(punchstart+28,1,108);
setDisp(punchstart+28,1,1);
setMoveKey( punchstart+28,   1,    54,   0,   0);
setScaleKey( punchstart+28,   1, 1.5, 1.5);

changeAnime(punchstart+62,1,108);
setDisp(punchstart+62,1,1);
setMoveKey( punchstart+62,   1,    1500,   0,   0);
setScaleKey( punchstart+62,   1, 1.5, 1.5);

baki = entryEffectLife( punchstart+28, 10020, 36, 0, -1, 130, 270, 0); -- バキ
setEffMoveKey( punchstart+28, baki, 130, 200, 0);
setEffScaleKey( punchstart+28, baki, 1.8, 1.8);
setEffAlphaKey( punchstart+28, baki, 255);
setEffRotateKey( punchstart+28, baki, -5);

setEffMoveKey( punchstart+63, baki, 130, 270, 0);
setEffScaleKey( punchstart+63, baki, 1.8, 1.8);
setEffAlphaKey( punchstart+63, baki, 255);
setEffRotateKey( punchstart+63, baki, -5);

setEffShake( punchstart+28, baki, 36, 15);

playSe(punchstart+28,1023);

entryFade(punchstart+60,2,6,2,fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 440F〜 爆発 (110F)
------------------------------------------------------
Finish = 460;

setDisp( Finish-1, 1, 1); --469
setMoveKey(  Finish-1,    1,  100,  0,   0);
setScaleKey( Finish-1,    1,  1.0, 1.0);
setMoveKey(  Finish,    1,    0,   0,   128);
setScaleKey( Finish,    1,  0.1, 0.1);

changeAnime( Finish, 1, 107);                         -- 手前ダメージ
entryEffect( Finish+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( Finish+8, SE_10);

setMoveKey(  Finish+8,   1,    0,   0,   128);
setMoveKey(  Finish+15,   1,  -60,  -200,  -100);
setDamage( Finish+16, 1, 0);  -- ダメージ振動等
setShake(Finish+7,6,15);
setShake(Finish+13,15,10);

setRotateKey( Finish,  1,  30 );
setRotateKey( Finish+2,  1,  80 );
setRotateKey( Finish+4,  1, 120 );
setRotateKey( Finish+6,  1, 160 );
setRotateKey( Finish+8,  1, 200 );
setRotateKey( Finish+10,  1, 260 );
setRotateKey( Finish+12,  1, 320 );
setRotateKey( Finish+14,  1,   0 );

setShakeChara( Finish+15, 1, 5,  10);
setShakeChara( Finish+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( Finish+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(Finish+15, ct, 30, 10);
setEffRotateKey( Finish+15, ct, 40);
setEffScaleKey( Finish+15, ct, 4.0, 4.0);
setEffScaleKey( Finish+16, ct, 2.0, 2.0);
setEffScaleKey( Finish+17, ct, 2.6, 2.6);
setEffScaleKey( Finish+18, ct, 4.0, 4.0);
setEffScaleKey( Finish+19, ct, 2.6, 2.6);
setEffScaleKey( Finish+20, ct, 3.8, 3.8);
setEffScaleKey( Finish+110, ct, 3.8, 3.8);
setEffAlphaKey( Finish+15, ct, 255);
setEffAlphaKey( Finish+105, ct, 255);
setEffAlphaKey( Finish+115, ct, 0);

playSe( Finish+3, SE_11);
shuchusen = entryEffectLife( Finish+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( Finish+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(477);

entryFade( Finish+90, 9,  10, 1, 8, 8, 8, 255);             -- black fade
--setMove(Finish+90,  0,  0,  -800,  0);
--setScaleKey(Finish+90,   0, 1.5, 1.5);
endPhase(Finish+110);

end

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
SE_08 = 1031; --huru
SE_09 = 1032; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

----------------------------
SP_01 = 150667; --手前へ突っ込んでくる
SP_02 = 150668; --手前へ突っ込んでくる(敵側)
SP_03 = 150669; --ラリアット〜構えまで
SP_04 = 150670; --ラリアット〜構えまで(敵側)
SP_05 = 150671; --斬撃モーション
SP_06 = 150672; --斬撃モーション(敵側)

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setDisp( 0, 1, 0);
changeAnime( 0, 1, 101); -- 立ち

-- 敵
setMoveKey( 0, 1, -5000, -5000, 0);
setMoveKey( 1, 1, -5000, -5000, 0);
setMoveKey( 2, 1, -5000, -5000, 0);
setMoveKey( 3, 1, -5000, -5000, 0);
setMoveKey( 4, 1, -5000, -5000, 0);
setMoveKey( 5, 1, -5000, -5000, 0);
setMoveKey( 6, 1, -5000, -5000, 0);
setScaleKey( 1, 1, 1.5, 1.5);
setScaleKey( 2, 1, 1.5, 1.5);
setScaleKey( 3, 1, 1.5, 1.5);
setScaleKey( 4, 1, 1.5, 1.5);
setScaleKey( 5, 1, 1.5, 1.5);
setScaleKey( 6, 1, 1.5, 1.5);

------------------------------------------------------
-- 気溜め 0-69
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0=0;
setVisibleUI(spep_0,0);

setDisp( spep_0, 0, 1);
setDisp( spep_0, 1, 0);
changeAnime( spep_0, 0, 0);                       -- 立ち

setMoveKey(   spep_0,   0,    0, 0,   0);
--setMoveKey(   spep_0,   1,    0, 0,   0);
setScaleKey(   spep_0,  0, 1.5, 1.5);
--setScaleKey(   spep_0,   1, 1.5, 1.5);

setMoveKey(   spep_0+1,   0,    0, 0,   0);
setScaleKey(   spep_0+1,  0, 1.5, 1.5);
setMoveKey(   spep_0+2,   0,    0, 0,   0);
--setMoveKey(   spep_0+2,   1,    0, 0,   0);
setScaleKey(   spep_0+2,  0, 1.5, 1.5);
--setScaleKey(   spep_0+2,   1, 1.5, 1.5);

setMoveKey(   spep_0+3,   0,    0, 0,   0);
--setMoveKey(   spep_0+3,   1,    0, 0,   0);
setScaleKey(   spep_0+3,  0, 1.5, 1.5);
--setScaleKey(   spep_0+3,   1, 1.5, 1.5);

setMoveKey(   spep_0+4,   0,    0, 0,   0);
--setMoveKey(   spep_0+4,   1,    0, 0,   0);
setScaleKey(   spep_0+4,  0, 1.5, 1.5);
--setScaleKey(   spep_0+4,   1, 1.5, 1.5);

setMoveKey(   spep_0+5,   0,    0, 0,   0);
--setMoveKey(   spep_0+5,   1,    0, 0,   0);
setScaleKey(   spep_0+5,  0, 1.5, 1.5);
--setScaleKey(   spep_0+5,   1, 1.5, 1.5);

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_0+30, 0, 39, 0, 10, 10, 10, 230);       -- ベース暗め　背景

changeAnime(  spep_0+30, 0, 17); -- 溜め!

ki1=entryEffectLife(spep_0+30,1501,39,0x80, -1,0,0,0);    -- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(spep_0+30,ki1,0,0,0);
setEffScaleKey(spep_0+30,ki1,1.0,1.0);
setEffRotateKey(spep_0+30,ki1,0);
setEffAlphaKey(spep_0+30,ki1,255);

setEffMoveKey(spep_0+69,ki1,0,0,0);
setEffScaleKey(spep_0+69,ki1,1.0,1.0);
setEffRotateKey(spep_0+69,ki1,0);
setEffAlphaKey(spep_0+69,ki1,255);

ki2=entryEffectLife(spep_0+30, 1500, 40, 0,    -1,  0,  0,  0);    -- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(spep_0+30,ki2,0,0,0);
setEffScaleKey(spep_0+30,ki2,1.0,1.0);
setEffRotateKey(spep_0+30,ki2,0);
setEffAlphaKey(spep_0+30,ki2,255);

setEffMoveKey(spep_0+69,ki2,0,0,0);
setEffScaleKey(spep_0+69,ki2,1.0,1.0);
setEffRotateKey(spep_0+69,ki2,0);
setEffAlphaKey(spep_0+69,ki2,255);

playSe(spep_0+30, SE_01);--気を貯める

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_0+30,  311, 39, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( spep_0+30, aura, 2.3, 2.3);

setShakeChara( spep_0+30, 0, 39, 10);

------------------------------------------------
-- 書き文字エントリー
ct = entryEffectLife( spep_0+30, 10013, 39, 0, -1, 0, 0, 250); -- ズズンッ
setEffShake(spep_0+30, ct, 40, 7);
setEffAlphaKey(spep_0+30, ct, 255);
setEffAlphaKey(spep_0+50, ct, 255);
setEffAlphaKey(spep_0+70, ct, 255);
setEffScaleKey( spep_0+30, ct, 0.1, 0.1);
setEffScaleKey( spep_0+50, ct, 2.0, 2.0);

playSe(spep_0+50, SE_02);--気が広がる

setEffScaleKey( spep_0+70, ct, 2.5, 2.5);
setEffRotateKey(spep_0+30, ct, 350);
setEffScaleKey( spep_0+70, ct, 350);
--setEffScaleKey( spep_0+70, ct, 6.0, 6.0);playSe( spep_0+30, SE_02);

entryFadeBg( spep_0+30, 0, 39, 0, 0, 0, 0, 210);       -- ベース暗め　背景
entryFade( spep_0+67, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
setDisp(spep_0+69,0,0);

setMoveKey(spep_0+69,0,0,0,0);
setScaleKey(spep_0+69,  0, 1.5, 1.5);

setMoveKey(spep_0+69,0,0,-800,0);
------------------------------------------------------
-- 手前へ突っ込んでくる (70-117)
------------------------------------------------------
spep_1 =spep_0+70;

tame1 = entryEffectLife( spep_1 , SP_01,  46,  0x100, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_1 ,tame1,255);
setEffScaleKey(spep_1 ,tame1, 1, 1);
setEffMoveKey(spep_1 ,tame1,0,0);
setEffShake(spep_1 ,tame1, 47,10);

shuchusen1 = entryEffectLife( spep_1, 906, 46, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_1, shuchusen1, 0 ,0 ,0);
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

entryFadeBg( spep_1, 0, 47, 0, 10, 10, 10, 200);

playSe(spep_1,SE_07); -- SE_07 = 1022 --のびる発射

--書き文字（ズオッ）
zuo_1= entryEffectLife(spep_1, 10012,46,0x100, -1,  0,  0,  0);   -- 発射

setEffAlphaKey(spep_1, zuo_1, 255);
setEffScaleKey(spep_1, zuo_1, 1.0, 1.0);
setEffMoveKey(spep_1, zuo_1, 100,300);
setEffRotateKey( spep_1,zuo_1, 30);

setEffAlphaKey(spep_1+10,zuo_1, 255);
setEffScaleKey(spep_1+10,zuo_1, 2.5, 2.5);
setEffMoveKey(spep_1+10,zuo_1, 130,420);
setEffRotateKey(spep_1+10,zuo_1, 30);

setEffScaleKey(spep_1+26,zuo_1, 2.5, 2.5);
setEffMoveKey(spep_1+26,zuo_1, 130,420);
setEffRotateKey(spep_1+26,zuo_1, 30);

setEffAlphaKey(spep_1+36,zuo_1, 255);

setEffAlphaKey(spep_1+46,zuo_1, 0);
setEffScaleKey(spep_1+46,zuo_1, 4.5, 4.5);
setEffMoveKey(spep_1+46,zuo_1, 130,420);
setEffRotateKey(spep_1+46,zuo_1, 30);

setEffShake(spep_1,zuo_1,46,30);

entryFade( spep_1+38, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
------------------------------------------------------
-- ラリアット〜構えまで 118-383
------------------------------------------------------
spep_2 =spep_1+48;
rari2a= entryEffectLife( spep_2 , SP_03,  265,  0x80, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_2 ,rari2a, 255);
setEffScaleKey(spep_2 ,rari2a, 1, 1);
setEffMoveKey(spep_2 ,rari2a, 0,0);
setEffShake(spep_2 ,rari2a, 268, 10);

rari2b= entryEffectLife( spep_2 , SP_03,  265,  0x100, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_2 ,rari2b, 0);
setEffScaleKey(spep_2 ,rari2b, 1, 1);
setEffMoveKey(spep_2 ,rari2b, 0,0);
setEffShake(spep_2 ,rari2b, 268, 10);

entryFadeBg( spep_2, 0, 265, 0, 10, 10, 10, 200);

--139から中央に向かって小さくなっていく
changeAnime(spep_2,1,118);
setDisp(spep_2,1,1);

setMoveKey(spep_2,1,100,-600,0);
setScaleKey(spep_2,1,4.0,4.0);
setRotateKey(spep_2,1,0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 130; --エンドフェイズのフレーム数を置き換える
setEffAlphaKey(SP_dodge ,semaru ,255);
stopSe(SP_dodge-12, seId,   4);

playSe(SP_dodge-12, 1042);
---------------------------------
setMoveKey(spep_2+22,1,50,-300,0);
setScaleKey(spep_2+22,1,2.5,2.5);
setRotateKey(spep_2+22,1,0);

setDisp(SP_dodge+10,1,0);
setScaleKey(SP_dodge+10,1,2.5,2.5);

setMoveKey(SP_dodge+10,0,0,-800,0);
setScaleKey(SP_dodge+10,  0, 1.5, 1.5);
---------------------------------
speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffAlphaKey(SP_dodge+10 ,semaru ,255);
setEffAlphaKey(SP_dodge+11 ,semaru ,0);

endPhase(SP_dodge+10);

do return end
else end
---------------------------------------------------------

--162でHIT
entryFade(spep_2+24,0,2,0,255,255,255,255);

setMoveKey(spep_2+24,1,0,0,0);
setScaleKey(spep_2+24,1,1.5,1.5);
setRotateKey(spep_2+24,1,0);

--
playSe(spep_2+24,1014);  --SE_09 = 1023; --HIT

--書き文字（がっ）　10005--------------------
ga_2 = entryEffectLife( spep_2+24, 10005, 23, 0, -1, 0, 400, 0); -- ガッ
setEffAlphaKey(spep_2+24 , ga_2, 255);
setEffScaleKey(spep_2+24 , ga_2, 3.0, 3.0);
setEffMoveKey(spep_2+24 , ga_2, 0,400,0);
setEffRotateKey( spep_2+24 , ga_2, 330);

setEffAlphaKey(spep_2+41 , ga_2, 255);
setEffScaleKey(spep_2+41 , ga_2, 3.0, 3.0);
setEffMoveKey(spep_2+41 , ga_2, 0,400,0);
setEffRotateKey( spep_2+41 , ga_2, 330);

setEffAlphaKey(spep_2+47 , ga_2, 0);
setEffScaleKey(spep_2+47 , ga_2, 3.0, 3.0);
setEffMoveKey(spep_2+47 , ga_2, 0,400,0);
setEffRotateKey( spep_2+47 , ga_2, 330);

setEffShake(spep_2+24 , ga_2, 20, 10);
--------------------------------------------
changeAnime(spep_2+25,1,107);
setScaleKey(spep_2+25,1,0.6,0.6);
setRotateKey(spep_2+25,1,300);

setMoveKey(spep_2+28,1,0,0,0);
setScaleKey(spep_2+28,1,0.6,0.6);
setRotateKey(spep_2+28,1,300);

setEffAlphaKey(spep_2+47 ,rari2a, 255);
setEffScaleKey(spep_2+47 ,rari2a, 1, 1);
setEffMoveKey(spep_2+47 ,rari2a, 0,0);

setEffAlphaKey(spep_2+47 ,rari2b, 0);
setEffScaleKey(spep_2+47 ,rari2b, 1, 1);
setEffMoveKey(spep_2+47 ,rari2b, 0,0);

ryuusen2a = entryEffectLife( spep_2+48, 921, 60, 0x80,  -1,  0,  0,  20); -- 流線斜め

setEffRotateKey( spep_2+48, ryuusen2a, 260);
setEffScaleKey( spep_2+48, ryuusen2a, 1.5, 1.3);
setEffMoveKey(spep_2+48, ryuusen2a, 0 ,0,0);
setEffAlphaKey(spep_2+48, ryuusen2a, 255);

setEffAlphaKey(spep_2+48 ,rari2a, 0);
setEffScaleKey(spep_2+48 ,rari2a, 1, 1);
setEffMoveKey(spep_2+48 ,rari2a, 0,0);

setEffAlphaKey(spep_2+48 ,rari2b, 255);
setEffScaleKey(spep_2+48 ,rari2b, 1, 1);
setEffMoveKey(spep_2+48 ,rari2b, 0,0);

playSe(spep_1+50,SE_07); -- SE_07 = 1022 --のびる発射
--194で枠外
setMoveKey(spep_2+53,1,100,-1000,0);
setScaleKey(spep_2+53,1,2.5,2.5);
setRotateKey(spep_2+53,1,300);

setDisp(spep_2+54,1,0);

playSe(spep_2+70,SE_07)

--253で戻り
setDisp(spep_2+77,1,1);
setMoveKey(spep_2+77,1,100,-1000,0);
setScaleKey(spep_2+77,1,2.5,2.5);
setRotateKey(spep_2+77,1,320);

--entryFade( spep_2+108, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setEffRotateKey( spep_2+108, ryuusen2a, 260);
setEffScaleKey( spep_2+108, ryuusen2a, 1.5, 1.3);
setEffMoveKey(spep_2+108, ryuusen2a, 0 ,0,0);
setEffAlphaKey(spep_2+108, ryuusen2a, 255);

setMoveKey(spep_2+111,1,0,0,0);
setScaleKey(spep_2+111,1,0.6,0.6);
setRotateKey(spep_2+109,1,320);

entryFade( spep_2+113, 1, 4, 1, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

--
playSe(spep_2+117,1014);  --SE_09 = 1023; --HIT

--書き文字（ばき）　10020----------------------
baki2= entryEffectLife( spep_2+117 , 10020,20,  0x100, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_2+117 , baki2, 255);
setEffScaleKey(spep_2+117 , baki2, 2.0, 2.0);
setEffMoveKey(spep_2+117 , baki2, 200,200,0);

setEffAlphaKey(spep_2+131 , baki2, 255);
setEffScaleKey(spep_2+131 , baki2, 2.0, 2.0);
setEffMoveKey(spep_2+131 , baki2, 200,200,0);

--setEffShake(spep_2+111 , baki2, 30, 10);
setEffAlphaKey(spep_2+137 , baki2, 0);
setEffScaleKey(spep_2+137 , baki2, 2.0, 2.0);
setEffMoveKey(spep_2+137 , baki2, 200,200,0);

setEffShake(spep_2+117 , baki2, 20, 10);

ryuusen2b = entryEffectLife( spep_2+113, 920, 41, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffRotateKey( spep_2+113, ryuusen2b, 40);
setEffScaleKey( spep_2+113, ryuusen2b, 1.7, 1.5);
setEffMoveKey(spep_2+113, ryuusen2b, 0 ,0 ,0);
setEffAlphaKey(spep_2+113, ryuusen2b, 255);

--entryFade( spep_2+118, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setScaleKey(spep_2+141,1,2.5,2.5);
setRotateKey(spep_2+141,1,320);
setMoveKey(spep_2+141,1,600,-800,0);

setDisp(spep_2+141,1,0);

setRotateKey(spep_2+142,1,0);

entryFade( spep_2+157, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

--298
speff = entryEffect(  spep_2+182,   1504,   0x100,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+182,   1505,   0x100,  -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_2+182, SE_04);

ctgogo = entryEffectLife( spep_2+185, 190006, 80, 0x100, -1, 0, -100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_2+185, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_2+185, ctgogo, 10);
setEffAlphaKey( spep_2+185, ctgogo, 255);

setEffScaleKey( spep_2+260, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_2+260, ctgogo, 10);
setEffAlphaKey( spep_2+260, ctgogo, 255);

setEffScaleKey( spep_2+265, ctgogo, 2.0, 2.0);
setEffRotateKey( spep_2+265, ctgogo, 10);
setEffAlphaKey( spep_2+265, ctgogo, 255);

shuchusen2 = entryEffectLife( spep_2, 906, 265, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_2, shuchusen2, 0 ,0 ,0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

entryFade( spep_2+261, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
--230 
------------------------------------------------------
-- カードカットイン(90F) 384-474
------------------------------------------------------
spep_3 =spep_2+265;

playSe( spep_3, 1035);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
--speff = entryEffectLife( spep_1, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景

shuchusen2 = entryEffectLife( spep_3, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen2, 1.5, 1.5);

-- ** エフェクト等 ** --
entryFade( spep_3+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 斬撃モーション 58 475-533
------------------------------------------------------
spep_4 =spep_3+90;
zan4= entryEffectLife( spep_4 , SP_05,  57,  0x100, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_4 , zan4, 255);
setEffScaleKey(spep_4 , zan4, 1, 1);
setEffMoveKey(spep_4 , zan4, 0,0);
--setEffShake(spep_4 , zan4, 57, 10);

entryFadeBg( spep_4, 0, 57, 0, 10, 10, 10, 200);

shuchusen4 = entryEffectLife( spep_4, 906, 57, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_4, shuchusen4, 0 ,0 ,0);
setEffScaleKey( spep_4, shuchusen4, 1.6, 1.6);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

sen4 = entryEffectLife( spep_4, 921, 58, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_4, sen4, 1.8, 1.5);
setEffRotateKey(spep_4, sen4, 220);
setEffMoveKey(spep_4, sen4, 0 ,0 ,0);
setEffAlphaKey( spep_4, sen4, 255);

playSe( spep_4+39,1032);

setEffScaleKey( spep_4+57, sen4, 1.8, 1.5);
setEffRotateKey(spep_4+57, sen4, 220);
setEffMoveKey( spep_4+57, sen4, 0 ,0 ,0);
setEffAlphaKey( spep_4+57, sen4, 255);

entryFade( spep_4+55, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-------------------------------------------------------
--攻撃演出-- -534-
-------------------------------------------------------
spep_5 = spep_4+58;
--SP_zan=150705;

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                     -- ガード
setMoveKey(  spep_5,    1,  0,  0,   -100);

-- 書き文字エントリー
ct = entryEffectLife(spep_5, 10014, 34, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5, ct, 34, 20);
setEffScaleKey( spep_5, ct, 2.2, 2.2);
setEffRotateKey(spep_5, ct, 0);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+34, ct, 255);

--setEffShake(spep_5, 10014, 113,10);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

shuchusen5 = entryEffectLife( spep_5, 906, 121, 0x80,  -1, 0,  0,  0);   -- 集中線
sen5 = entryEffectLife( spep_5, 921, 121, 0x80,  -1,  0,  0,  0); -- 流線斜め

setMoveKey(  spep_5+15,  1,  50,  0,   -128);

eff02 = entryEffect( spep_5+18, 150705,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( spep_5+18, eff02,0.4,3);--サイズ
setEffRotateKey(spep_5+18, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+18, SE_08);
changeAnime( spep_5+18, 1, 105);--やられ 
setShake( spep_5+18, 3, 14);
setMoveKey(  spep_5+18, 1, 0,  0,  -50);
setMoveKey(  spep_5+19, 1, 50,  -50,  -60);

eff02 = entryEffect( spep_5+25, 150705,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( spep_5+25, eff02,0.4,3);--サイズ
setEffRotateKey(spep_5+25, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+25, SE_08);
changeAnime( spep_5+25, 1, 105);--やられ 
setShake( spep_5+25, 3, 14);
setMoveKey( spep_5+25, 1, 0,  0,  -60);
setMoveKey(  spep_5+26, 1, 50,  -50,  -80);

eff03 = entryEffect( spep_5+32, 150705,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey(spep_5+32, eff03, 0.4,3);--サイズ
setEffRotateKey(spep_5+32, eff03, -80);--角度
playSe( spep_5+32, SE_09);
changeAnime(spep_5+32, 1, 108);--やられ 
setShake(spep_5+32, 3, 14);
setMoveKey(spep_5+32, 1, 50,  -50,  -128);
setMoveKey(spep_5+33, 1, -80,  30,  -128);

entryEffectLife( spep_5+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線

eff01 = entryEffect( spep_5+35, 150705, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( spep_5+35, eff01,1,2);--サイズ
setEffRotateKey(spep_5+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( spep_5+36, 1, 106);--やられ   
playSe(spep_5+35, SE_09);
entryFadeBg( spep_5, 0, 121, 0, 0, 0, 0, 200);          -- ベース暗め　背景
pauseAll(spep_5+36,7);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+35, 10014, 4, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+35, ct, 33, 20);
setEffScaleKey( spep_5+35, ct, 2.2, 2.2);
setEffRotateKey(spep_5+35, ct, 0);
setEffAlphaKey(spep_5+35, ct, 255);
setEffAlphaKey(spep_5+39, ct, 255);

setDamage(  spep_5+39,  1,  0);   --ダメージ振動等

eff04 = entryEffect( spep_5+40, 150705,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( spep_5+40, eff04, 0.4,2.5);--サイズ
setEffRotateKey(spep_5+40, eff04, 45);--角度
playSe( spep_5+40, SE_08);
changeAnime( spep_5+40, 1, 106);--やられ 
setShake( spep_5+40, 3, 14);
setMoveKey(  spep_5+40, 1, -80,  30,  -128);
setMoveKey(  spep_5+41, 1, 40,  -35,  -128);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+40, 10014, 8, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+40, ct, 33, 20);
setEffScaleKey( spep_5+40, ct, 2.2, 2.2);
setEffRotateKey(spep_5+40, ct, 0);
setEffAlphaKey(spep_5+40, ct, 255);
setEffAlphaKey(spep_5+48, ct, 255);

eff05 = entryEffect( spep_5+49, 150705,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( spep_5+49, eff05, 0.4,3);--サイズ
setEffRotateKey(spep_5+49, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+47, SE_09);
setShake( spep_5+47, 3, 14);
setMoveKey(  spep_5+47, 1, 40,  -35,  -128);
setMoveKey(  spep_5+48, 1, -90,  -90,  -128);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+49, 10014, 1, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+49, ct, 33, 20);
setEffScaleKey( spep_5+49, ct, 2.2, 2.2);
setEffRotateKey(spep_5+49, ct, 0);
setEffAlphaKey(spep_5+49, ct, 255);
setEffAlphaKey(spep_5+50, ct, 255);

eff06 = entryEffect( spep_5+51, 150705,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( spep_5+51, eff06, 0.4,2);--サイズ
setEffRotateKey(spep_5+51, eff06, 130);--角度
playSe( spep_5+51, SE_08);
changeAnime( spep_5+51, 1, 105);--やられ 
setShake( spep_5+51, 3, 14);
setMoveKey(  spep_5+51, 1, 90,  -90,  -128);
setMoveKey(  spep_5+52, 1, -60, 80,  -128);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+51, 10014, 3, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+51, ct, 33, 20);
setEffScaleKey( spep_5+51, ct, 2.2, 2.2);
setEffRotateKey(spep_5+51, ct, 0);
setEffAlphaKey(spep_5+51, ct, 255);
setEffAlphaKey(spep_5+54, ct, 255);

eff07 = entryEffect( spep_5+55, 150705,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( spep_5+55, eff07, 0.4,2.5);--サイズ
setEffRotateKey(spep_5+55, eff07, 88);--角度
playSe( spep_5+55, SE_08);
--entryFlashBg( (SP_ATK01+80-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( spep_5+55, 1, 106);--やられ 
setShake( spep_5+55, 3, 14);
setMoveKey(  spep_5+55, 1, -60, 80,  -128);
setMoveKey(  spep_5+56, 1, 80,  60,  -128);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+55, 10014, 23, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+55, ct, 33, 20);
setEffScaleKey( spep_5+55, ct, 2.2, 2.2);
setEffRotateKey(spep_5+55, ct, 0);
setEffAlphaKey(spep_5+55, ct, 255);
setEffAlphaKey(spep_5+74, ct, 255);
setEffAlphaKey(spep_5+79, ct, 0);

eff08 = entryEffect( spep_5+73, 150706,  0, -1,  0,  0,  0);   -- 攻撃3
playSe( spep_5+73, SE_09);
playSe( spep_5+73, SE_08);
setShake( spep_5+73, 3, 14);
--entryFadeBg( spep_5+92-18, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
--entryEffectLife( spep_5+91-18, 906, 10, 0x80,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( spep_5+91-18, 908, 32, 0x80,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( spep_5+92-18, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94-18, 1, 255, 255, 255, 100);

setMoveKey(  spep_5+74, 1, 0,  0,  -128);
pauseAll(spep_5+74,3);

-- 敵吹っ飛ぶモーション
changeAnime( spep_5+74, 1, 108);
setMoveKey(  spep_5+95, 1, 0,  0,  -128);

--entryEffectLife( spep_5+110-25+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setDamage(  spep_5+109,  1,  0);   --ダメージ振動等
setMoveKey(  spep_5+119, 1, 800,    0,  0);

--entryFadeBg( spep_5, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--2撃目--
--entryEffectLife( spep_5+43-25, 906, 45, 0x80,  -1, 0,  0,  0);   -- 集中線

--2撃目--
--entryEffectLife( spep_5+50-25, 906, 45, 0x80,  -1, 0,  0,  0);   -- 集中線

--setEffShake(spep_5, 10014, 79,10);

--entryFadeBg(spep_5+92-18, 3, 5, 4, 255, 0, 0, 255); 
-- ** エフェクト等 ** --
entryFade( spep_5+113, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6 = spep_5+121;

setDisp( spep_6-1, 0, 0);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1, 1);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
setDisp( spep_6, 1, 1);

entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+13, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(765);
else

------------------------------------------------------
-- 気溜め 0-69
------------------------------------------------------

spep_0=0;

setVisibleUI(spep_0,0);

setDisp( spep_0, 0, 1);
--setDisp( spep_0, 1, 0);
changeAnime( spep_0, 0, 0);                       -- 立ち

setMoveKey(   spep_0,   0,    0, 0,   0);
--setMoveKey(   spep_0,   1,    0, -800,   0);
setScaleKey(   spep_0,  0, 1.5, 1.5);
--setScaleKey(   spep_0,   1, 1.5, 1.5);

setMoveKey(   spep_0+1,   0,    0, 0,   0);
setScaleKey(   spep_0+1,  0, 1.5, 1.5);
setMoveKey(   spep_0+2,   0,    0, 0,   0);
--setMoveKey(   spep_0+2,   1,    0, -800,   0);
setScaleKey(   spep_0+2,  0, 1.5, 1.5);
--setScaleKey(   spep_0+2,   1, 1.5, 1.5);

setMoveKey(   spep_0+3,   0,    0, 0,   0);
--setMoveKey(   spep_0+3,   1,    0, -800,   0);
setScaleKey(   spep_0+3,  0, 1.5, 1.5);
--setScaleKey(   spep_0+3,   1, 1.5, 1.5);

setMoveKey(   spep_0+4,   0,    0, 0,   0);
--setMoveKey(   spep_0+4,   1,    0, -800,   0);
setScaleKey(   spep_0+4,  0, 1.5, 1.5);
--setScaleKey(   spep_0+4,   1, 1.5, 1.5);

setMoveKey(   spep_0+5,   0,    0, 0,   0);
--setMoveKey(   spep_0+5,   1,    0, -800,   0);
setScaleKey(   spep_0+5,  0, 1.5, 1.5);
--setScaleKey(   spep_0+5,   1, 1.5, 1.5);

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_0+30, 0, 39, 0, 10, 10, 10, 230);       -- ベース暗め　背景


changeAnime(  spep_0+30, 0, 17); -- 溜め!

ki1=entryEffectLife(spep_0+30,1501,39,0x80, -1,0,0,0);    -- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(spep_0+30,ki1,0,0,0);
setEffScaleKey(spep_0+30,ki1,1.0,1.0);
setEffRotateKey(spep_0+30,ki1,0);
setEffAlphaKey(spep_0+30,ki1,255);

setEffMoveKey(spep_0+69,ki1,0,0,0);
setEffScaleKey(spep_0+69,ki1,1.0,1.0);
setEffRotateKey(spep_0+69,ki1,0);
setEffAlphaKey(spep_0+69,ki1,255);

ki2=entryEffectLife(spep_0+30, 1500, 40, 0,    -1,  0,  0,  0);    -- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(spep_0+30,ki2,0,0,0);
setEffScaleKey(spep_0+30,ki2,1.0,1.0);
setEffRotateKey(spep_0+30,ki2,0);
setEffAlphaKey(spep_0+30,ki2,255);

setEffMoveKey(spep_0+69,ki2,0,0,0);
setEffScaleKey(spep_0+69,ki2,1.0,1.0);
setEffRotateKey(spep_0+69,ki2,0);
setEffAlphaKey(spep_0+69,ki2,255);

playSe(spep_0+30, SE_01);--気を貯める

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_0+30,  311, 39, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( spep_0+30, aura, 2.3, 2.3);

setShakeChara( spep_0+30, 0, 39, 10);

------------------------------------------------
-- 書き文字エントリー
ct = entryEffectLife( spep_0+30, 10013, 39, 0, -1, 0, 0, 250); -- ズズンッ
setEffShake(spep_0+30, ct, 40, 7);
setEffAlphaKey(spep_0+30, ct, 255);
setEffAlphaKey(spep_0+50, ct, 255);
setEffAlphaKey(spep_0+70, ct, 255);
setEffScaleKey( spep_0+30, ct, 0.1, 0.1);
setEffScaleKey( spep_0+50, ct, 2.0, 2.0);

playSe(spep_0+50, SE_02);--気が広がる

setEffScaleKey( spep_0+70, ct, 2.5, 2.5);
setEffRotateKey(spep_0+30, ct, 350);
setEffScaleKey( spep_0+70, ct, 350);
--setEffScaleKey( spep_0+70, ct, 6.0, 6.0);playSe( spep_0+30, SE_02);

entryFadeBg( spep_0+30, 0, 39, 0, 0, 0, 0, 210);       -- ベース暗め　背景
entryFade( spep_0+67, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
setDisp(spep_0+69,0,0);

setMoveKey(spep_0+69,0,0,0,0);
setScaleKey(spep_0+69, 0, 1.5, 1.5);

setMoveKey(spep_0+69,0,0,-800,0);
------------------------------------------------------
-- 手前へ突っ込んでくる (70-117)
------------------------------------------------------
spep_1 =spep_0+70;

tame1 = entryEffectLife( spep_1 , SP_02,  46,  0x100, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_1 ,tame1,255);
setEffScaleKey(spep_1 ,tame1, 1, 1);
setEffMoveKey(spep_1 ,tame1,0,0);
setEffShake(spep_1 ,tame1, 47,10);

shuchusen1 = entryEffectLife( spep_1, 906, 46, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_1, shuchusen1, 0 ,0 ,0);
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

entryFadeBg( spep_1, 0, 47, 0, 10, 10, 10, 200);

playSe(spep_1,SE_07); -- SE_07 = 1022 --のびる発射

--書き文字（ズオッ）
zuo_1= entryEffectLife(spep_1, 10012,46,0x100, -1,  0,  0,  0);   -- 発射

setEffAlphaKey(spep_1, zuo_1, 255);
setEffScaleKey(spep_1, zuo_1, 1.0, 1.0);
setEffMoveKey(spep_1, zuo_1, 100,300);
setEffRotateKey( spep_1,zuo_1, 30);

setEffAlphaKey(spep_1+10,zuo_1, 255);
setEffScaleKey(spep_1+10,zuo_1, 2.5, 2.5);
setEffMoveKey(spep_1+10,zuo_1, 130,420);
setEffRotateKey(spep_1+10,zuo_1, 30);

setEffScaleKey(spep_1+26,zuo_1, 2.5, 2.5);
setEffMoveKey(spep_1+26,zuo_1, 130,420);
setEffRotateKey(spep_1+26,zuo_1, 30);

setEffAlphaKey(spep_1+36,zuo_1, 255);

setEffAlphaKey(spep_1+46,zuo_1, 0);
setEffScaleKey(spep_1+46,zuo_1, 4.5, 4.5);
setEffMoveKey(spep_1+46,zuo_1, 130,420);
setEffRotateKey(spep_1+46,zuo_1, 30);

setEffShake(spep_1,zuo_1,46,30);

entryFade( spep_1+38, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
------------------------------------------------------
-- ラリアット〜構えまで 118-383
------------------------------------------------------
spep_2 =spep_1+48;
rari2a= entryEffectLife( spep_2 , SP_04,  265,  0x80, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_2 ,rari2a, 255);
setEffScaleKey(spep_2 ,rari2a, 1, 1);
setEffMoveKey(spep_2 ,rari2a, 0,0);
setEffShake(spep_2 ,rari2a, 268, 10);

rari2b= entryEffectLife( spep_2 , SP_04,  265,  0x100, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_2 ,rari2b, 0);
setEffScaleKey(spep_2 ,rari2b, 1, 1);
setEffMoveKey(spep_2 ,rari2b, 0,0);
setEffShake(spep_2 ,rari2b, 268, 10);

entryFadeBg( spep_2, 0, 265, 0, 10, 10, 10, 200);

--139から中央に向かって小さくなっていく
changeAnime(spep_2,1,118);
setDisp(spep_2,1,1);

setMoveKey(spep_2,1,100,-600,0);
setScaleKey(spep_2,1,4.0,4.0);
setRotateKey(spep_2,1,0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 130; --エンドフェイズのフレーム数を置き換える
setEffAlphaKey(SP_dodge ,semaru ,255);
stopSe(SP_dodge-12, seId,   4);

playSe(SP_dodge-12, 1042);
---------------------------------
setMoveKey(spep_2+22,1,50,-300,0);
setScaleKey(spep_2+22,1,2.5,2.5);
setRotateKey(spep_2+22,1,0);

setDisp(SP_dodge+10,1,0);
setScaleKey(SP_dodge+10,1,2.5,2.5);

setMoveKey(SP_dodge+10,0,0,-800,0);
setScaleKey(SP_dodge+10,  0, 1.5, 1.5);
---------------------------------
speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffAlphaKey(SP_dodge+10 ,semaru ,255);
setEffAlphaKey(SP_dodge+11 ,semaru ,0);

endPhase(SP_dodge+10);

do return end
else end
---------------------------------------------------------

--162でHIT
entryFade(spep_2+24,0,2,0,255,255,255,255);

setMoveKey(spep_2+24,1,0,0,0);
setScaleKey(spep_2+24,1,1.5,1.5);
setRotateKey(spep_2+24,1,0);

--
playSe(spep_2+24,1014);  --SE_09 = 1023; --HIT

--書き文字（がっ）　10005--------------------
ga_2 = entryEffectLife( spep_2+24, 10005, 23, 0, -1, 0, 400, 0); -- ガッ
setEffAlphaKey(spep_2+24 , ga_2, 255);
setEffScaleKey(spep_2+24 , ga_2, 3.0, 3.0);
setEffMoveKey(spep_2+24 , ga_2, 0,400,0);
setEffRotateKey( spep_2+24 , ga_2, 330);

setEffAlphaKey(spep_2+41 , ga_2, 255);
setEffScaleKey(spep_2+41 , ga_2, 3.0, 3.0);
setEffMoveKey(spep_2+41 , ga_2, 0,400,0);
setEffRotateKey( spep_2+41 , ga_2, 330);

setEffAlphaKey(spep_2+47 , ga_2, 0);
setEffScaleKey(spep_2+47 , ga_2, 3.0, 3.0);
setEffMoveKey(spep_2+47 , ga_2, 0,400,0);
setEffRotateKey( spep_2+47 , ga_2, 330);

setEffShake(spep_2+24 , ga_2, 20, 10);
--------------------------------------------
changeAnime(spep_2+25,1,107);
setScaleKey(spep_2+25,1,0.6,0.6);
setRotateKey(spep_2+25,1,300);

setMoveKey(spep_2+28,1,0,0,0);
setScaleKey(spep_2+28,1,0.6,0.6);
setRotateKey(spep_2+28,1,300);

setEffAlphaKey(spep_2+47 ,rari2a, 255);
setEffScaleKey(spep_2+47 ,rari2a, 1, 1);
setEffMoveKey(spep_2+47 ,rari2a, 0,0);

setEffAlphaKey(spep_2+47 ,rari2b, 0);
setEffScaleKey(spep_2+47 ,rari2b, 1, 1);
setEffMoveKey(spep_2+47 ,rari2b, 0,0);

ryuusen2a = entryEffectLife( spep_2+48, 921, 60, 0x80,  -1,  0,  0,  20); -- 流線斜め

setEffRotateKey( spep_2+48, ryuusen2a, 260);
setEffScaleKey( spep_2+48, ryuusen2a, 1.5, 1.3);
setEffMoveKey(spep_2+48, ryuusen2a, 0 ,0,0);
setEffAlphaKey(spep_2+48, ryuusen2a, 255);

setEffAlphaKey(spep_2+48 ,rari2a, 0);
setEffScaleKey(spep_2+48 ,rari2a, 1, 1);
setEffMoveKey(spep_2+48 ,rari2a, 0,0);

setEffAlphaKey(spep_2+48 ,rari2b, 255);
setEffScaleKey(spep_2+48 ,rari2b, 1, 1);
setEffMoveKey(spep_2+48 ,rari2b, 0,0);

playSe(spep_1+50,SE_07); -- SE_07 = 1022 --のびる発射
--194で枠外
setMoveKey(spep_2+53,1,100,-1000,0);
setScaleKey(spep_2+53,1,2.5,2.5);
setRotateKey(spep_2+53,1,300);

setDisp(spep_2+54,1,0);

playSe(spep_2+70,SE_07)

--253で戻り
setDisp(spep_2+77,1,1);
setMoveKey(spep_2+77,1,100,-1000,0);
setScaleKey(spep_2+77,1,2.5,2.5);
setRotateKey(spep_2+77,1,320);

--entryFade( spep_2+108, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setEffRotateKey( spep_2+108, ryuusen2a, 260);
setEffScaleKey( spep_2+108, ryuusen2a, 1.5, 1.3);
setEffMoveKey(spep_2+108, ryuusen2a, 0 ,0,0);
setEffAlphaKey(spep_2+108, ryuusen2a, 255);

setMoveKey(spep_2+111,1,0,0,0);
setScaleKey(spep_2+111,1,0.6,0.6);
setRotateKey(spep_2+109,1,320);

entryFade( spep_2+113, 1, 4, 1, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

--
playSe(spep_2+117,1014);  --SE_09 = 1023; --HIT

--書き文字（ばき）　10020----------------------
baki2= entryEffectLife( spep_2+117 , 10020,20,  0x100, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_2+117 , baki2, 255);
setEffScaleKey(spep_2+117 , baki2, 2.0, 2.0);
setEffMoveKey(spep_2+117 , baki2, 200,200,0);

setEffAlphaKey(spep_2+131 , baki2, 255);
setEffScaleKey(spep_2+131 , baki2, 2.0, 2.0);
setEffMoveKey(spep_2+131 , baki2, 200,200,0);

--setEffShake(spep_2+111 , baki2, 30, 10);
setEffAlphaKey(spep_2+137 , baki2, 0);
setEffScaleKey(spep_2+137 , baki2, 2.0, 2.0);
setEffMoveKey(spep_2+137 , baki2, 200,200,0);

setEffShake(spep_2+117 , baki2, 20, 10);

ryuusen2b = entryEffectLife( spep_2+113, 920, 41, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffRotateKey( spep_2+113, ryuusen2b, 40);
setEffScaleKey( spep_2+113, ryuusen2b, 1.7, 1.5);
setEffMoveKey(spep_2+113, ryuusen2b, 0 ,0 ,0);
setEffAlphaKey(spep_2+113, ryuusen2b, 255);

--entryFade( spep_2+118, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setScaleKey(spep_2+141,1,2.5,2.5);
setRotateKey(spep_2+141,1,320);
setMoveKey(spep_2+141,1,600,-800,0);

setDisp(spep_2+141,1,0);

setRotateKey(spep_2+142,1,0);

entryFade( spep_2+157, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

--[[
--298
speff = entryEffect(  spep_2+182,   1504,   0x100,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+182,   1505,   0x100,  -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_2+182, SE_04);

ctgogo = entryEffectLife( spep_2+185, 190006, 80, 0x100, -1, 0, -100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_2+185, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_2+185, ctgogo, 10);
setEffAlphaKey( spep_2+185, ctgogo, 255);

setEffScaleKey( spep_2+260, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_2+260, ctgogo, 10);
setEffAlphaKey( spep_2+260, ctgogo, 255);

setEffScaleKey( spep_2+265, ctgogo, -2.0, 2.0);
setEffRotateKey( spep_2+265, ctgogo, 10);
setEffAlphaKey( spep_2+265, ctgogo, 255);

shuchusen2 = entryEffectLife( spep_2, 906, 265, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_2, shuchusen2, 0 ,0 ,0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

entryFade( spep_2+261, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
--230 
------------------------------------------------------
-- カードカットイン(90F) 384-474
------------------------------------------------------
spep_3 =spep_2+265;

playSe( spep_3, 1035);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
--speff = entryEffectLife( spep_1, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景

shuchusen2 = entryEffectLife( spep_3, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen2, 1.5, 1.5);

-- ** エフェクト等 ** --
entryFade( spep_3+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 斬撃モーション 58 475-533
------------------------------------------------------
spep_4 =spep_3+90;
zan4= entryEffectLife( spep_4 , SP_06,  57,  0x100, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_4 , zan4, 255);
setEffScaleKey(spep_4 , zan4, 1, 1);
setEffMoveKey(spep_4 , zan4, 0,0);
--setEffShake(spep_4 , zan4, 57, 10);

entryFadeBg( spep_4, 0, 57, 0, 10, 10, 10, 200);

shuchusen4 = entryEffectLife( spep_4, 906, 57, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_4, shuchusen4, 0 ,0 ,0);
setEffScaleKey( spep_4, shuchusen4, 1.6, 1.6);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

sen4 = entryEffectLife( spep_4, 921, 58, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_4, sen4, 1.8, 1.5);
setEffRotateKey(spep_4, sen4, 220);
setEffMoveKey(spep_4, sen4, 0 ,0 ,0);
setEffAlphaKey( spep_4, sen4, 255);

playSe( spep_4+39,1032);

setEffScaleKey( spep_4+57, sen4, 1.8, 1.5);
setEffRotateKey(spep_4+57, sen4, 220);
setEffMoveKey( spep_4+57, sen4, 0 ,0 ,0);
setEffAlphaKey( spep_4+57, sen4, 255);

entryFade( spep_4+55, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-------------------------------------------------------
--攻撃演出-- -534-
-------------------------------------------------------
spep_5 = spep_4+58;
--SP_zan=150705;

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                     -- ガード
setMoveKey(  spep_5,    1,  0,  0,   -100);

-- 書き文字エントリー
ct = entryEffectLife(spep_5, 10014, 34, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5, ct, 34, 20);
setEffScaleKey( spep_5, ct, 2.2, 2.2);
setEffRotateKey(spep_5, ct, 0);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+34, ct, 255);

--setEffShake(spep_5, 10014, 113,10);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

shuchusen5 = entryEffectLife( spep_5, 906, 121, 0x80,  -1, 0,  0,  0);   -- 集中線
sen5 = entryEffectLife( spep_5, 921, 121, 0x80,  -1,  0,  0,  0); -- 流線斜め

setMoveKey(  spep_5+15,  1,  50,  0,   -128);

eff02 = entryEffect( spep_5+18, 150705,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( spep_5+18, eff02,0.4,3);--サイズ
setEffRotateKey(spep_5+18, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+18, SE_08);
changeAnime( spep_5+18, 1, 105);--やられ 
setShake( spep_5+18, 3, 14);
setMoveKey(  spep_5+18, 1, 0,  0,  -50);
setMoveKey(  spep_5+19, 1, 50,  -50,  -60);

eff02 = entryEffect( spep_5+25, 150705,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( spep_5+25, eff02,0.4,3);--サイズ
setEffRotateKey(spep_5+25, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+25, SE_08);
changeAnime( spep_5+25, 1, 105);--やられ 
setShake( spep_5+25, 3, 14);
setMoveKey( spep_5+25, 1, 0,  0,  -60);
setMoveKey(  spep_5+26, 1, 50,  -50,  -80);

eff03 = entryEffect( spep_5+32, 150705,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey(spep_5+32, eff03, 0.4,3);--サイズ
setEffRotateKey(spep_5+32, eff03, -80);--角度
playSe( spep_5+32, SE_09);
changeAnime(spep_5+32, 1, 108);--やられ 
setShake(spep_5+32, 3, 14);
setMoveKey(spep_5+32, 1, 50,  -50,  -128);
setMoveKey(spep_5+33, 1, -80,  30,  -128);

entryEffectLife( spep_5+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線

eff01 = entryEffect( spep_5+35, 150705, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( spep_5+35, eff01,1,2);--サイズ
setEffRotateKey(spep_5+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( spep_5+36, 1, 106);--やられ   
playSe(spep_5+35, SE_09);
entryFadeBg( spep_5, 0, 121, 0, 0, 0, 0, 200);          -- ベース暗め　背景
pauseAll(spep_5+36,7);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+35, 10014, 4, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+35, ct, 33, 20);
setEffScaleKey( spep_5+35, ct, 2.2, 2.2);
setEffRotateKey(spep_5+35, ct, 0);
setEffAlphaKey(spep_5+35, ct, 255);
setEffAlphaKey(spep_5+39, ct, 255);

setDamage(  spep_5+39,  1,  0);   --ダメージ振動等

eff04 = entryEffect( spep_5+40, 150705,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( spep_5+40, eff04, 0.4,2.5);--サイズ
setEffRotateKey(spep_5+40, eff04, 45);--角度
playSe( spep_5+40, SE_08);
changeAnime( spep_5+40, 1, 106);--やられ 
setShake( spep_5+40, 3, 14);
setMoveKey(  spep_5+40, 1, -80,  30,  -128);
setMoveKey(  spep_5+41, 1, 40,  -35,  -128);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+40, 10014, 8, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+40, ct, 33, 20);
setEffScaleKey( spep_5+40, ct, 2.2, 2.2);
setEffRotateKey(spep_5+40, ct, 0);
setEffAlphaKey(spep_5+40, ct, 255);
setEffAlphaKey(spep_5+48, ct, 255);

eff05 = entryEffect( spep_5+49, 150705,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( spep_5+49, eff05, 0.4,3);--サイズ
setEffRotateKey(spep_5+49, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+47, SE_09);
setShake( spep_5+47, 3, 14);
setMoveKey(  spep_5+47, 1, 40,  -35,  -128);
setMoveKey(  spep_5+48, 1, -90,  -90,  -128);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+49, 10014, 1, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+49, ct, 33, 20);
setEffScaleKey( spep_5+49, ct, 2.2, 2.2);
setEffRotateKey(spep_5+49, ct, 0);
setEffAlphaKey(spep_5+49, ct, 255);
setEffAlphaKey(spep_5+50, ct, 255);

eff06 = entryEffect( spep_5+51, 150705,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( spep_5+51, eff06, 0.4,2);--サイズ
setEffRotateKey(spep_5+51, eff06, 130);--角度
playSe( spep_5+51, SE_08);
changeAnime( spep_5+51, 1, 105);--やられ 
setShake( spep_5+51, 3, 14);
setMoveKey(  spep_5+51, 1, 90,  -90,  -128);
setMoveKey(  spep_5+52, 1, -60, 80,  -128);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+51, 10014, 3, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+51, ct, 33, 20);
setEffScaleKey( spep_5+51, ct, 2.2, 2.2);
setEffRotateKey(spep_5+51, ct, 0);
setEffAlphaKey(spep_5+51, ct, 255);
setEffAlphaKey(spep_5+54, ct, 255);

eff07 = entryEffect( spep_5+55, 150705,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( spep_5+55, eff07, 0.4,2.5);--サイズ
setEffRotateKey(spep_5+55, eff07, 88);--角度
playSe( spep_5+55, SE_08);
--entryFlashBg( (SP_ATK01+80-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( spep_5+55, 1, 106);--やられ 
setShake( spep_5+55, 3, 14);
setMoveKey(  spep_5+55, 1, -60, 80,  -128);
setMoveKey(  spep_5+56, 1, 80,  60,  -128);

-- 書き文字エントリー
ct = entryEffectLife(spep_5+55, 10014, 23, 0x100, -1, 0, -200, 360); -- ズドドッ
setEffShake(spep_5+55, ct, 33, 20);
setEffScaleKey( spep_5+55, ct, 2.2, 2.2);
setEffRotateKey(spep_5+55, ct, 0);
setEffAlphaKey(spep_5+55, ct, 255);
setEffAlphaKey(spep_5+74, ct, 255);
setEffAlphaKey(spep_5+79, ct, 0);

eff08 = entryEffect( spep_5+73, 150706,  0, -1,  0,  0,  0);   -- 攻撃3
playSe( spep_5+73, SE_09);
playSe( spep_5+73, SE_08);
setShake( spep_5+73, 3, 14);
--entryFadeBg( spep_5+92-18, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
--entryEffectLife( spep_5+91-18, 906, 10, 0x80,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( spep_5+91-18, 908, 32, 0x80,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( spep_5+92-18, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94-18, 1, 255, 255, 255, 100);

setMoveKey(  spep_5+74, 1, 0,  0,  -128);
pauseAll(spep_5+74,3);

-- 敵吹っ飛ぶモーション
changeAnime( spep_5+74, 1, 108);
setMoveKey(  spep_5+95, 1, 0,  0,  -128);

--entryEffectLife( spep_5+110-25+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setDamage(  spep_5+109,  1,  0);   --ダメージ振動等
setMoveKey(  spep_5+119, 1, 800,    0,  0);

--entryFadeBg( spep_5, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--2撃目--
--entryEffectLife( spep_5+43-25, 906, 45, 0x80,  -1, 0,  0,  0);   -- 集中線

--2撃目--
--entryEffectLife( spep_5+50-25, 906, 45, 0x80,  -1, 0,  0,  0);   -- 集中線

--setEffShake(spep_5, 10014, 79,10);

--entryFadeBg(spep_5+92-18, 3, 5, 4, 255, 0, 0, 255); 
-- ** エフェクト等 ** --
entryFade( spep_5+113, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6 = spep_5+121;

setDisp( spep_6-1, 0, 0);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1, 1);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
setDisp( spep_6, 1, 1);

entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+13, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(765);
end
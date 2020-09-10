--1013770 LR ビルス＆ウイス sp0448

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


SP_01 = 151499;--パフェ食べる120F
SP_02 = 151500;--気溜め90F
SP_03 = 151501;--発射70F
SP_04 = 151502;--着弾72F
SP_05 = 151503;--デコピン前180F
SP_06 = 151504;--デコピン後60F
SP_07 = 151505;--爆発196F
SP_08 = 151505;--爆発196F　　


--敵側追記予定
SP_01x = 151512;--パフェ食べる120F
SP_02x = 151513;--気溜め90F
SP_03x = 151514;--発射70F

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   4,   0,    0, -900,   0);
setMoveKey(   5,   0,    0, -900,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- パフェ食べるビルス(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

-- ** エフェクト等 ** --
taberu = entryEffect( spep_0, SP_01, 0, -1, 0, 0, 0);   --気溜め１　19f
setEffScaleKey( spep_0, taberu, 1.0, 1.0);
setEffScaleKey( spep_0+120, taberu, 1.0, 1.0);
setEffAlphaKey( spep_0, taberu, 255);
setEffAlphaKey( spep_0+120, taberu, 255);
setEffAlphaKey( spep_0+121, taberu, 0);

playSe( spep_0+40, 24);
playSe( spep_0+100, 4);

------------------------------------------------------
-- 気を溜める(90F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_1 = spep_0+120;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffect( spep_1, SP_02, 0, -1, 0, 0, 0); 
setEffScaleKey( spep_1, kidame, 1, 1);
setEffAlphaKey( spep_1, kidame, 255);
setEffAlphaKey( spep_1+90, kidame, 255);
setEffAlphaKey( spep_1+91, kidame, 0);
setEffShake(spep_1, kidame, 90, 10);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

playSe( spep_1+24, SE_01);

------------------------------------------------------
-- 発射(70F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+90;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** 背景 ** --
entryFadeBg( spep_2, 0, 70, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** エフェクト等 ** --
hana = entryEffect( spep_2, SP_03, 0, -1, 0, 0, 0);
setEffScaleKey( spep_2, hana, 1, 1);
setEffAlphaKey( spep_2, hana, 255);
setEffAlphaKey( spep_2+70, hana, 255);
setEffAlphaKey( spep_2+71, hana, 0);
setEffShake(spep_2, hana, 70, 10);


-- ** 流線(斜めのやつ横にする) ** --
yokosen2 = entryEffectLife( spep_2, 921, 70, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_2, yokosen2, 1.2, 1.2);
setEffRotateKey( spep_2, yokosen2, 180);

-- ** 音 ** --
--playSe( spep_2+11, SE_04);
playSe( spep_2+14, 1004);
playSe( spep_2+26, 1007);
playSe( spep_2+34, 1004);
playSe( spep_2+40, 1007);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_2, 10012, 62, 0, -1, 0, 100, 300); -- ズオッ
setEffRotateKey( spep_2, ctZuo, 20);
setEffShake(spep_2, ctZuo, 72, 15);
setEffAlphaKey(spep_2, ctZuo, 255);
setEffAlphaKey(spep_2+42, ctZuo, 255);
setEffAlphaKey(spep_2+62, ctZuo, 0);
setEffScaleKey(spep_2, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_2+4, ctZuo, 2.5, 2.5);
setEffScaleKey(spep_2+44, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_2+62, ctZuo, 6.0, 6.0);


------------------------------------------------------
-- 着弾(70F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+70;
--entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
dan = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_3, dan, 1, 1);
setEffAlphaKey( spep_3, dan, 255);
setEffAlphaKey( spep_3+70, dan, 255);
setEffAlphaKey( spep_3+71, dan, 0);
--setEffShake(spep_3, dan, 70, 10);

-- ** 敵 ** --

setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 100);
setShakeChara( spep_3, 1, 34, 10);
setMoveKey(  spep_3,    1,   400,  -100,   0);
setMoveKey(  spep_3+34,    1,   0,  0,   0);
setMoveKey(  spep_3+36,    1,   0,  0,   0);
setScaleKey(  spep_3,   1,   0.3,  0.3);
setScaleKey(  spep_3+36,   1,   1.5,  1.5);
setDisp( spep_3+36, 1, 0);


-- ** 流線(斜めのやつ横にする) ** --
ryusen3 = entryEffectLife( spep_3, 921, 34, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_3, ryusen3, 1.8, 1.8);
setEffRotateKey( spep_3, ryusen3, 20);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffAlphaKey( spep_3+33, ryusen3, 255);
setEffAlphaKey( spep_3+34, ryusen3, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3+34, 906, 31, 0x100,  -1, 0,  0,  0); -- 集中線
setEffScaleKey( spep_3+34, shuchusen4, 1.2, 1.2);
setEffAlphaKey( spep_3+34, shuchusen4, 255);
setEffRotateKey( spep_3+34, shuchusen4, 0);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_3, 10014, 33, 0x100, -1, 0, 50, 255); -- ズドドッ
setEffShake(spep_3, ctzudodo, 33, 20);
setEffScaleKey( spep_3, ctzudodo, 2.4, 2.4);
setEffRotateKey(spep_3, ctzudodo, 70);
setEffAlphaKey(spep_3, ctzudodo, 255);
setEffAlphaKey(spep_3+33, ctzudodo, 255);
setEffAlphaKey(spep_3+34, ctzudodo, 0);

dogn = entryEffectLife(spep_3+34,10018,36,0x100,-1,0,0,0);-- ドゴォン
setEffMoveKey(spep_3+34,dogn, 0,300,0);
setEffScaleKey(spep_3+34,dogn,2.5,2,5);
setEffRotateKey(spep_3+34,dogn,0);
setEffAlphaKey(spep_3+34,dogn,255);

setEffAlphaKey(spep_3+70,dogn,255);
setEffAlphaKey(spep_3+71,dogn,0);

setEffShake(spep_3+34,dogn,36,10);

playSe( spep_3, 1022);

SE000 = playSe( spep_3+38, 1011);
setSeVolume( spep_3+38, 1011, 130 );
stopSe( spep_3+48, SE000, 10 );

SE001 = playSe( spep_3+46, 1011);
setSeVolume( spep_3+46, 1011, 90 );
stopSe( spep_3+54, SE001, 10 );

SE002 = playSe( spep_3+52, 1011);
setSeVolume( spep_3+52, 1011, 100 );
stopSe( spep_3+60, SE002, 10 );

SE003 = playSe( spep_3+58, 1011);
setSeVolume( spep_3+58, 1011, 90 );
stopSe( spep_3+84, SE003, 10 );

playSe( spep_3+66, 1024);
setSeVolume( spep_3+66, 1011, 70 );

entryFade(spep_3+25,6,4,6,255,255,255,255);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 294; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+8, 0,    0, 0,   0);
setMoveKey( SP_dodge+9, 0,  -1500,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 正面(180F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_4 = spep_3+70;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 180, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
tama5 = entryEffect( spep_4, SP_05, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_4, tama5, 1, 1);
setEffMoveKey( spep_4, tama5, 0, 0, 0);
setEffAlphaKey( spep_4, tama5, 255);
setEffAlphaKey( spep_4+180, tama5, 255);
setEffAlphaKey( spep_4+181, tama5, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4+60, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_4+60, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4+60, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_4+60, shuchusen5, 255);
setEffRotateKey( spep_4+60, shuchusen5, 0);

speff = entryEffect(  spep_4+94,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4+94,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+100, 190006, 70, 0x100, -1,  0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_4+100, ctgogo, 70, 10);
setEffScaleKey(spep_4+100, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_4+100, ctgogo, 0);
setEffAlphaKey( spep_4+100, ctgogo, 255);

-- ** 音 ** --
playSe( spep_4+94, SE_04);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_5 = spep_4+180;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- カードカットイン
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_5, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep_5, shuchusen3, 255);
setEffRotateKey( spep_5, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_5+5, SE_05);

------------------------------------------------------
-- 正面に放つ(60F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_6 = spep_5+88;
entryFade( spep_6-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
hasi6 = entryEffect( spep_6, SP_06, 0x80, -1, 0, 0, 0);   --発射　50f
setEffMoveKey( spep_6, hasi6, 0, 0, 0);
setEffScaleKey( spep_6, hasi6, 1, 1);
setEffAlphaKey( spep_6, hasi6, 255);
setEffAlphaKey( spep_6+60, hasi6, 255);
setEffAlphaKey( spep_6+61, hasi6, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.3, 1.3);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 音 ** --
playSe( spep_6+5, 1011);

bagon = entryEffectLife(spep_6,10021,60,0x100,-1,0,0,0);-- bago
setEffMoveKey(spep_6,bagon, 0,300,0);
setEffScaleKey(spep_6,bagon,2.5,2,5);
setEffRotateKey(spep_6,bagon,0);
setEffAlphaKey(spep_6,bagon,255);
setEffShake(spep_6,bagon,60,10);

-- ** てき ** --
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 107);   
setMoveKey(  spep_6,  1,  0,  0, 0);
setMoveKey(  spep_6+59,  1,  -100,  -600, 0);
setScaleKey( spep_6,    1,  0.3, 0.3);
setScaleKey( spep_6+46,    1,  2.0, 2.0);
setScaleKey( spep_6+59,    1,  2.5, 2.5);
setShakeChara( spep_6,  1,  58, 10);
setDisp( spep_6+59, 1, 0);


------------------------------------------------------
-- 大爆発(160F)
------------------------------------------------------
spep_7 = spep_6+60;

-- ** フェード
entryFadeBg( spep_7 , 0, 160, 0,0, 0, 0, 255);          -- ベース暗め　背景
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7+16, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** てき ** --
setDisp(spep_7,1,1);
changeAnime(spep_7,1,108);
setMoveKey(spep_7,1,-450,-150,0);
setScaleKey(spep_7,1,3.0,3.0);
setRotateKey(spep_7,1,0);
setMoveKey(spep_7+22,1,50,0,0); --21
setScaleKey(spep_7+22,1,0.6,0.6);
setRotateKey(spep_7+22,1,0);
setDisp(spep_7+22,1,0);



ryusen_7a = entryEffectLife( spep_7, 914, 24, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7, ryusen_7a, 0, 0, 0);
setEffScaleKey( spep_7, ryusen_7a, 1.2, 1.2);
setEffAlphaKey( spep_7, ryusen_7a, 255);
setEffRotateKey( spep_7, ryusen_7a, 355);

yokosen_7b = entryEffectLife( spep_7, 921, 24, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7, yokosen_7b, 0, 0, 0);
setEffScaleKey( spep_7, yokosen_7b, 1.2, 1.2);
setEffAlphaKey( spep_7, yokosen_7b, 255);
setEffRotateKey( spep_7, yokosen_7b, 350);

exp = entryEffect( spep_7, SP_07, 0x80,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep_7, exp, 0, 0, 0);
setEffScaleKey( spep_7, exp, 1.1, 1.1);
setEffAlphaKey( spep_7, exp, 255);
setEffRotateKey( spep_7, exp, 0);
setEffShake(spep_7 , exp, 180, 10);

playSe( spep_7+26, SE_10);

shuchusen7 = entryEffectLife(spep_7+26, 906, 134, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_7+26, shuchusen7, 1.3, 1.3);


dogn_7=entryEffectLife(spep_7+26,10018,30,0,-1,0,0,0);
setEffMoveKey(spep_7+26,dogn_7,0,300,0);
setEffScaleKey(spep_7+26,dogn_7,4.0,4,0);
setEffRotateKey(spep_7+26,dogn_7,0);
setEffAlphaKey(spep_7+26,dogn_7,255);
setEffAlphaKey(spep_7+46,dogn_7,255);
setEffAlphaKey(spep_7+56,dogn_7,0);
setEffShake(spep_7+26,dogn_7,30,20);

-- ダメージ表示
dealDamage(spep_7+66);
entryFade( spep_7+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+160);

else

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   4,   0,    0, -900,   0);
setMoveKey(   5,   0,    0, -900,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- パフェ食べるビルス(120F)
------------------------------------------------------
kame_flag = 0x00;

spep_0 = 0;

-- ** エフェクト等 ** --
taberu = entryEffect( spep_0, SP_01x, 0, -1, 0, 0, 0);   --気溜め１　19f
setEffScaleKey( spep_0, taberu, 1.0, 1.0);
setEffScaleKey( spep_0+120, taberu, 1.0, 1.0);
setEffAlphaKey( spep_0, taberu, 255);
setEffAlphaKey( spep_0+120, taberu, 255);
setEffAlphaKey( spep_0+121, taberu, 0);

playSe( spep_0+40, 24);
playSe( spep_0+100, 4);

------------------------------------------------------
-- 気を溜める(90F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_1 = spep_0+120;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffect( spep_1, SP_02x, 0, -1, 0, 0, 0); 
setEffScaleKey( spep_1, kidame, 1, 1);
setEffAlphaKey( spep_1, kidame, 255);
setEffAlphaKey( spep_1+90, kidame, 255);
setEffAlphaKey( spep_1+91, kidame, 0);
setEffShake(spep_1, kidame, 90, 10);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

playSe( spep_1+24, SE_01);

------------------------------------------------------
-- 発射(70F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+90;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** 背景 ** --
entryFadeBg( spep_2, 0, 70, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** エフェクト等 ** --
hana = entryEffect( spep_2, SP_03x, 0, -1, 0, 0, 0);
setEffScaleKey( spep_2, hana, 1, 1);
setEffAlphaKey( spep_2, hana, 255);
setEffAlphaKey( spep_2+70, hana, 255);
setEffAlphaKey( spep_2+71, hana, 0);
setEffShake(spep_2, hana, 70, 10);


-- ** 流線(斜めのやつ横にする) ** --
yokosen2 = entryEffectLife( spep_2, 921, 70, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_2, yokosen2, 1.2, 1.2);
setEffRotateKey( spep_2, yokosen2, 180);

-- ** 音 ** --
--playSe( spep_2+11, SE_04);
playSe( spep_2, SE_06);


-- 書き文字エントリー
ctZuo = entryEffectLife( spep_2, 10012, 62, 0, -1, 0, 100, 300); -- ズオッ
setEffRotateKey( spep_2, ctZuo, 20);
setEffShake(spep_2, ctZuo, 72, 15);
setEffAlphaKey(spep_2, ctZuo, 255);
setEffAlphaKey(spep_2+42, ctZuo, 255);
setEffAlphaKey(spep_2+62, ctZuo, 0);
setEffScaleKey(spep_2, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_2+4, ctZuo, 2.5, 2.5);
setEffScaleKey(spep_2+44, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_2+62, ctZuo, 6.0, 6.0);


------------------------------------------------------
-- 着弾(70F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+70;
--entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
dan = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_3, dan, 1, 1);
setEffAlphaKey( spep_3, dan, 255);
setEffAlphaKey( spep_3+70, dan, 255);
setEffAlphaKey( spep_3+71, dan, 0);
--setEffShake(spep_3, dan, 70, 10);

-- ** 敵 ** --

setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 100);
setShakeChara( spep_3, 1, 34, 10);
setMoveKey(  spep_3,    1,   400,  -100,   0);
setMoveKey(  spep_3+34,    1,   0,  0,   0);
setMoveKey(  spep_3+36,    1,   0,  0,   0);
setScaleKey(  spep_3,   1,   0.3,  0.3);
setScaleKey(  spep_3+36,   1,   1.5,  1.5);
setDisp( spep_3+36, 1, 0);


-- ** 流線(斜めのやつ横にする) ** --
ryusen3 = entryEffectLife( spep_3, 921, 34, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_3, ryusen3, 1.8, 1.8);
setEffRotateKey( spep_3, ryusen3, 20);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffAlphaKey( spep_3+33, ryusen3, 255);
setEffAlphaKey( spep_3+34, ryusen3, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3+34, 906, 31, 0x100,  -1, 0,  0,  0); -- 集中線
setEffScaleKey( spep_3+34, shuchusen4, 1.2, 1.2);
setEffAlphaKey( spep_3+34, shuchusen4, 255);
setEffRotateKey( spep_3+34, shuchusen4, 0);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_3, 10014, 33, 0x100, -1, 0, 50, 255); -- ズドドッ
setEffShake(spep_3, ctzudodo, 33, 20);
setEffScaleKey( spep_3, ctzudodo, 2.4, 2.4);
setEffRotateKey(spep_3, ctzudodo, 0);
setEffAlphaKey(spep_3, ctzudodo, 255);
setEffAlphaKey(spep_3+33, ctzudodo, 255);
setEffAlphaKey(spep_3+34, ctzudodo, 0);

dogn = entryEffectLife(spep_3+34,10018,36,0x100,-1,0,0,0);-- ドゴォン
setEffMoveKey(spep_3+34,dogn, 0,300,0);
setEffScaleKey(spep_3+34,dogn,2.5,2,5);
setEffRotateKey(spep_3+34,dogn,0);
setEffAlphaKey(spep_3+34,dogn,255);

setEffAlphaKey(spep_3+70,dogn,255);
setEffAlphaKey(spep_3+71,dogn,0);

setEffShake(spep_3+34,dogn,36,10);

playSe( spep_3, 1022);
SE000 = playSe( spep_3+38, 1011);
setSeVolume( spep_3+38, 1011, 130 );
stopSe( spep_3+48, SE000, 10 );

SE001 = playSe( spep_3+46, 1011);
setSeVolume( spep_3+46, 1011, 90 );
stopSe( spep_3+54, SE001, 10 );

SE002 = playSe( spep_3+52, 1011);
setSeVolume( spep_3+52, 1011, 100 );
stopSe( spep_3+60, SE002, 10 );

SE003 = playSe( spep_3+58, 1011);
setSeVolume( spep_3+58, 1011, 90 );
stopSe( spep_3+84, SE003, 10 );

playSe( spep_3+66, 1024);
setSeVolume( spep_3+66, 1011, 70 );

entryFade(spep_3+25,6,4,6,255,255,255,255);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 294; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+8, 0,    0, 0,   0);
setMoveKey( SP_dodge+9, 0,  -1500,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 正面(180F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_4 = spep_3+70;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 180, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
tama5 = entryEffect( spep_4, SP_05, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_4, tama5, -1, 1);
setEffMoveKey( spep_4, tama5, 0, 0, 0);
setEffAlphaKey( spep_4, tama5, 255);
setEffAlphaKey( spep_4+180, tama5, 255);
setEffAlphaKey( spep_4+181, tama5, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4+60, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_4+60, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4+60, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_4+60, shuchusen5, 255);
setEffRotateKey( spep_4+60, shuchusen5, 0);

--speff = entryEffect(  spep_4+94,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_4+94,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+100, 190006, 70, 0x100, -1,  0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_4+100, ctgogo, 70, 10);
setEffScaleKey(spep_4+100, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_4+100, ctgogo, 0);
setEffAlphaKey( spep_4+100, ctgogo, 255);

-- ** 音 ** --
playSe( spep_4+94, SE_04);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_5 = spep_4+180;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- カードカットイン
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_5, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep_5, shuchusen3, 255);
setEffRotateKey( spep_5, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_5+5, SE_05);

------------------------------------------------------
-- 正面に放つ(60F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_6 = spep_5+88;
entryFade( spep_6-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
hasi6 = entryEffect( spep_6, SP_06, 0x80, -1, 0, 0, 0);   --発射　50f
setEffMoveKey( spep_6, hasi6, 0, 0, 0);
setEffScaleKey( spep_6, hasi6, -1, 1);
setEffAlphaKey( spep_6, hasi6, 255);
setEffAlphaKey( spep_6+60, hasi6, 255);
setEffAlphaKey( spep_6+61, hasi6, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.3, 1.3);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 音 ** --
playSe( spep_6+5, 1011);

bagon = entryEffectLife(spep_6,10021,60,0x100,-1,0,0,0);-- bago
setEffMoveKey(spep_6,bagon, 0,300,0);
setEffScaleKey(spep_6,bagon,2.5,2,5);
setEffRotateKey(spep_6,bagon,0);
setEffAlphaKey(spep_6,bagon,255);
setEffShake(spep_6,bagon,60,10);

-- ** てき ** --
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 107);   
setMoveKey(  spep_6,  1,  0,  0, 0);
setMoveKey(  spep_6+59,  1,  -100,  -600, 0);
setScaleKey( spep_6,    1,  0.3, 0.3);
setScaleKey( spep_6+46,    1,  2.0, 2.0);
setScaleKey( spep_6+59,    1,  2.5, 2.5);
setShakeChara( spep_6,  1,  58, 10);
setDisp( spep_6+59, 1, 0);


------------------------------------------------------
-- 大爆発(160F)
------------------------------------------------------
spep_7 = spep_6+60;

-- ** フェード
entryFadeBg( spep_7 , 0, 160, 0,0, 0, 0, 255);          -- ベース暗め　背景
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7+16, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** てき ** --
setDisp(spep_7,1,1);
changeAnime(spep_7,1,108);
setMoveKey(spep_7,1,-450,-150,0);
setScaleKey(spep_7,1,3.0,3.0);
setRotateKey(spep_7,1,0);
setMoveKey(spep_7+22,1,50,0,0); --21
setScaleKey(spep_7+22,1,0.6,0.6);
setRotateKey(spep_7+22,1,0);
setDisp(spep_7+22,1,0);



ryusen_7a = entryEffectLife( spep_7, 914, 24, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7, ryusen_7a, 0, 0, 0);
setEffScaleKey( spep_7, ryusen_7a, 1.2, 1.2);
setEffAlphaKey( spep_7, ryusen_7a, 255);
setEffRotateKey( spep_7, ryusen_7a, 355);

yokosen_7b = entryEffectLife( spep_7, 921, 24, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7, yokosen_7b, 0, 0, 0);
setEffScaleKey( spep_7, yokosen_7b, 1.2, 1.2);
setEffAlphaKey( spep_7, yokosen_7b, 255);
setEffRotateKey( spep_7, yokosen_7b, 350);

exp = entryEffect( spep_7, SP_07, 0x80,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep_7, exp, 0, 0, 0);
setEffScaleKey( spep_7, exp, 1.1, 1.1);
setEffAlphaKey( spep_7, exp, 255);
setEffRotateKey( spep_7, exp, 0);
setEffShake(spep_7 , exp, 180, 10);

playSe( spep_7+26, SE_10);

shuchusen7 = entryEffectLife(spep_7+26, 906, 134, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_7+26, shuchusen7, 1.3, 1.3);


dogn_7=entryEffectLife(spep_7+26,10018,30,0,-1,0,0,0);
setEffMoveKey(spep_7+26,dogn_7,0,300,0);
setEffScaleKey(spep_7+26,dogn_7,4.0,4,0);
setEffRotateKey(spep_7+26,dogn_7,0);
setEffAlphaKey(spep_7+26,dogn_7,255);
setEffAlphaKey(spep_7+46,dogn_7,255);
setEffAlphaKey(spep_7+56,dogn_7,0);
setEffShake(spep_7+26,dogn_7,30,20);

-- ダメージ表示
dealDamage(spep_7+66);
entryFade( spep_7+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+160);

end

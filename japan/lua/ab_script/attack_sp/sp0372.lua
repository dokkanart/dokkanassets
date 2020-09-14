
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

SP_01 =150564;	--溜め	ef_001	60
SP_02 =150565;	--ef_001の敵用	ef_001e	60
SP_03 =150566;	--両足	ef_002	98
SP_04 =150567;	--ef_002の敵用	ef_002e	98
SP_05 =150568;	--片足	ef_003	60
SP_06 =150569;	--ef_003の敵用	ef_003e	60
SP_07 =150570;	--着弾	ef_004	60

multi_frm = 2;
-------------------------------------------------------
-------------------------------------------------------
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,   -600,   0);
setMoveKey(   0,   1,    0,   -600,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,1, 1.5, 1.5);

-------------------------------------------------------
-------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
setVisibleUI(0, 0);

setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 0, -600, 0); --味方位置

-------------------------------------------------------
--SP_01 =150564;	溜め	ef_001	0〜118
-------------------------------------------------------
step_1 = 0;
speff_01 = entryEffect( step_1,  SP_01, 0,     -1,  0,  0,  0);--導入

setEffMoveKey( step_1, speff_01, 0, 0, 0);
setEffScaleKey( step_1, speff_01, 1.0, 1.0);
setEffAlphaKey( step_1, speff_01, 255);
setEffRotateKey( step_1, speff_01, 0);

setEffShake(step_1,speff_01,118,10);
--集中線
shuchusen1 = entryEffectLife( step_1+18, 906, 118, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_1+18, shuchusen1, 0, 0, 0);
setEffScaleKey( step_1+18, shuchusen1, 1.4, 1.4);
setEffAlphaKey( step_1+18, shuchusen1, 255);
setEffRotateKey( step_1+18, shuchusen1, 0);

--背景
entryFadeBg( step_1, 0,118, 0, 10, 10, 10, 180);
entryFade( step_1+15, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_1+115, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(step_1,SE_01);
playSe(step_1+18,SE_02);--気が広がる

--------------------------------------------------------------------
--カードカットイン (119~209)—90F
--------------------------------------------------------------------
step_2 = step_1+119;

setScaleKey( step_2-9,   0, 1.5, 1.5);
setScaleKey( step_2-8,   0, 1.0, 1.0);

speff = entryEffect(  step_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe(step_2,1018);

entryFade( step_2+85, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------------------------------------------
--SP_03 =150566;(210~416)	両足	ef_002	206
-------------------------------------------------------
step_3 = step_2+90;

changeAnime(step_3-1,1,102);
setDisp(step_3-1,1,1);
setMoveKey(step_3-1,1,400,-400);
setScaleKey(step_3-1,1,2.5,2.5);
setRotateKey(step_3-1,0);

setMoveKey(step_3+13,1,300,-270);
setScaleKey(step_3+13,1,2.5,2.5);
setRotateKey(step_3+13,0);

setMoveKey(step_3+28,1,300,-270);
setScaleKey(step_3+28,1,2.5,2.5);
setRotateKey(step_3+28,0);

setMoveKey(step_3+39,1,300,-800);
setScaleKey(step_3+39,1,2.5,2.5);
setRotateKey(step_3+39,0);

setDisp(step_3+45,1,0);

speff_02 = entryEffect(step_3,   SP_03,  0,     -1,  0,  0,  0);--導入
setEffMoveKey(step_3, speff_02, 0, 0, 0);
setEffScaleKey( step_3, speff_02, 1.0, 1.0);
setEffAlphaKey( step_3, speff_02, 255);
setEffRotateKey( step_3, speff_02, 0);

setEffShake(step_3,speff_02,206,10);

--集中線
shuchusen3 = entryEffectLife( step_3, 906, 206, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_3, shuchusen3, 0, 0, 0);
setEffScaleKey( step_3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( step_3, shuchusen3, 255);
setEffRotateKey( step_3, shuchusen3, 0);

--縦線
ryusen3 = entryEffectLife( step_3+39, 920, 54, 0x80,  -1,  0,  0,  0); -- 流線　303まで
setEffMoveKey(step_3+39, ryusen3, 0, 0, 0);
setEffRotateKey( step_3+39, ryusen3, 90);
setEffScaleKey( step_3+39, ryusen3, 1.5, 1.5);
setEffAlphaKey( step_3+39, ryusen3, 255);

setEffMoveKey(step_3+93, ryusen3, 0, 0, 0);
setEffRotateKey( step_3+93, ryusen3, 90);
setEffScaleKey( step_3+93, ryusen3, 1.5, 1.5);
setEffAlphaKey( step_3+93, ryusen3, 255);

--斜線
ryusen3 = entryEffectLife( step_3+94, 920, 112, 0x80,  -1,  0,  0,  0); -- 流線　303まで
setEffMoveKey(step_3+94, ryusen3, 0, 0, 0);
setEffRotateKey( step_3+94, ryusen3, 240);
setEffScaleKey( step_3+94, ryusen3, 2.0, 1.5);
setEffAlphaKey( step_3+94, ryusen3, 255);

setEffMoveKey(step_3+206, ryusen3, 0, 0, 0);
setEffRotateKey( step_3+206, ryusen3, 240);
setEffScaleKey( step_3+206, ryusen3, 2.0, 1.5);
setEffAlphaKey( step_3+206, ryusen3, 255);

entryFadeBg( step_3, 0,206, 0, 10, 10, 10, 200);

entryFade( step_3+63, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_3+95, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_3+131, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_3+164, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_3+197, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--シュン（２３８F）
syun=entryEffectLife( step_3+25, 10011, 13, 0x100,  -1,  0,  0,  0); 
setEffMoveKey(step_3+25, syun, 50, 300, 0);
setEffRotateKey( step_3+25, syun, 30);
setEffScaleKey( step_3+25, syun, 0.3, 0.3);
setEffAlphaKey( step_3+25, syun, 255);

setEffMoveKey(step_3+29, syun, 50, 300, 0);
setEffRotateKey( step_3+29, syun, 30);
setEffScaleKey( step_3+29, syun, 3.0, 3.0);
setEffAlphaKey( step_3+29, syun, 255);

setEffMoveKey(step_3+35, syun, 50, 300, 0);
setEffRotateKey( step_3+35, syun, 30);
setEffScaleKey( step_3+35, syun, 3.0, 3.0);
setEffAlphaKey( step_3+35, syun, 255);

setEffMoveKey(step_3+38, syun, 50, 300, 0);
setEffRotateKey( step_3+38, syun, 30);
setEffScaleKey( step_3+38, syun, 2.0,2.0);
setEffAlphaKey( step_3+38, syun, 80);

playSe(step_3+25,1042);
playSe(step_3+135,1018);
playSe(step_3+175,1018);
--playSe(step_3+199,1018);

-------------------------------------------------------
--SP_05 =150568;(411~531)	片足	ef_003	120
-------------------------------------------------------
step_4 = step_3+207;

speff_04 = entryEffect(step_4,   SP_05,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(step_4, speff_04, 0, 0, 0);
setEffScaleKey( step_4, speff_04, 1.0, 1.0);
setEffAlphaKey( step_4, speff_04, 255);
setEffRotateKey( step_4, speff_04, 0);

setEffShake(step_4,speff_04,120,10);
--集中線
shuchusen4 = entryEffectLife( step_4, 906, 120, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_4, shuchusen4, 0, 0, 0);
setEffScaleKey( step_4, shuchusen4, 1.4, 1.4);
setEffAlphaKey( step_4, shuchusen4, 255);
setEffRotateKey( step_4, shuchusen4, 0);

--横線
ryusen4 = entryEffectLife( step_4, 920, 120, 0x80,  -1,  0,  0,  0); -- 流線　303まで
setEffMoveKey(step_4, ryusen4, 0, 0, 0);
setEffRotateKey( step_4, ryusen4, 240);
setEffScaleKey( step_4, ryusen4, 2.0, 1.5);
setEffAlphaKey( step_4, ryusen4, 255);

setEffMoveKey(step_4+120, ryusen4, 0, 0, 0);
setEffRotateKey( step_4+120, ryusen4, 240);
setEffScaleKey( step_4+120, ryusen4, 2.0, 1.5);
setEffAlphaKey( step_4+120, ryusen4, 255);

entryFadeBg( step_4, 0,120, 0, 10, 10, 10, 200);

entryFade( step_4+70, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_4+112, 4, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--[[
entryFade( step_4+76, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_4+118, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_4+106, 0, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]--

--ズオッ
zuo = entryEffectLife( step_4+78, 10012, 28, 0x100,  -1,  0,  0,  0);
setEffMoveKey(step_4+78, zuo, 100, 350, 0);
setEffRotateKey( step_4+78, zuo, 30);
setEffScaleKey( step_4+78, zuo, 0.3, 0.3);
setEffAlphaKey( step_4+78, zuo, 255);

setEffMoveKey(step_4+88, zuo, 100, 350, 0);
setEffRotateKey( step_4+88, zuo, 30);
setEffScaleKey( step_4+88, zuo, 3.0,3.0);
setEffAlphaKey( step_4+88, zuo, 255);

setEffMoveKey(step_4+98, zuo, 100, 350, 0);
setEffRotateKey( step_4+98, zuo, 30);
setEffScaleKey( step_4+98, zuo, 3.0,3.0);
setEffAlphaKey( step_4+98, zuo, 255);

setEffMoveKey(step_4+107, zuo, 100, 350, 0);
setEffRotateKey( step_4+107, zuo, 30);
setEffScaleKey( step_4+107, zuo, 6.0, 6.0);
setEffAlphaKey( step_4+107, zuo, 0);

playSe(step_4+86,1018);

-------------------------------------------------------
--SP_07 =150570;(532~652)	着弾	ef_004	120
-------------------------------------------------------
step_5 = step_4+120;

changeAnime(step_5-1,1,102);
setDisp(step_5-1,1,1);
setMoveKey(step_5-1,1,300,-250);
setScaleKey(step_5-1,1,2.0,2.0);
setRotateKey(step_5-1,0);

setShakeChara(step_5,1,22,10);

--setShakeChara(step_5-1,1,23,20);

ryusen5 = entryEffectLife( step_5, 921, 116, 0x80,  -1, 0,  0,  0);  
setEffMoveKey(step_5, ryusen5, 0, 0, 0);
setEffScaleKey( step_5, ryusen5, 1.7, 1.7);
setEffAlphaKey( step_5, ryusen5, 255);
setEffRotateKey( step_5, ryusen5, -130);


speff_05 = entryEffect(  step_5,   SP_07,  0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(step_5, speff_05, 0, 0, 0);
setEffScaleKey( step_5, speff_05, 1.0, 1.0);
setEffAlphaKey( step_5, speff_05, 255);
setEffAlphaKey( step_5+28, speff_05, 255);
setEffAlphaKey( step_5+29, speff_05, 0);
setEffRotateKey( step_5, speff_05, 0);
setEffShake(step_5,speff_05,120,10);

speff_05_2 = entryEffect(  step_5,   SP_07,  0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(step_5, speff_05_2, 0, 0, 0);
setEffScaleKey( step_5, speff_05_2, 1.0, 1.0);
setEffAlphaKey( step_5, speff_05_2, 0);
setEffAlphaKey( step_5+28, speff_05_2, 0);
setEffAlphaKey( step_5+29, speff_05_2, 255);
setEffRotateKey( step_5, speff_05_2, 0);
setEffShake(step_5,speff_05_2,120,10);


shuchusen5 = entryEffectLife( step_5, 906, 120, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_5, shuchusen5, 0, 0, 0);
setEffScaleKey( step_5, shuchusen5, 1.4, 1.4);
setEffAlphaKey( step_5, shuchusen5, 255);
setEffRotateKey( step_5, shuchusen5, 0);



--entryFade( step_5, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( step_5, 0,120, 0, 10, 10, 10, 200);

setMoveKey(step_5+12,1,300,-250);
setScaleKey(step_5+12,1,2.0,2.0);
setRotateKey(step_5+12,0);

--[[
playSe(step_5+32,9);
playSe(step_5+48,9);
]]
--4.11
SE001 = playSe(step_5+32,9);
stopSe(step_5+48+3,SE001,5);
SE002 = playSe(step_5+48,9);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 555; --エンドフェイズのフレーム数を置き換える (step_5+23)

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(SP_dodge+91,1,2.0,2.0);

--setScaleKey(SP_dodge+5-1,1,2.0,2.0);
endPhase(SP_dodge+9);

do return end
else end

------------------------------------------------------
setMoveKey(step_5+23,1,300,-250);
setScaleKey(step_5+23,1,2.0,2.0);
setRotateKey(step_5+23,0);

setShakeChara(step_5+23,1,37,20);

setDisp(step_5+60,1,0);
setMoveKey(step_5+60,1,300,-250);
setScaleKey(step_5+60,1,2.0,2.0);
setRotateKey(step_5+60,0);

setEffMoveKey(step_5+60, speff_05, 0, 0, 0);
setEffScaleKey( step_5+60, speff_05, 1.0, 1.0);
setEffAlphaKey( step_5+60, speff_05, 255);
setEffRotateKey( step_5+60, speff_05, 0);

entryFade( step_5+27, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_5+43, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_5+105, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
entryFade( step_5+34, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_5+47, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_5+115, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]--

------------------------------------------------------
-- 爆発 (110F)(使い回し)
------------------------------------------------------
exp=step_5+111;

setDisp( exp-1, 1, 1);
setMoveKey(  exp-1,    1,  100,  0,   0);
setScaleKey( exp-1,    1,  1.0, 1.0);
setMoveKey(  exp,    1,    0,   0,   128);
setScaleKey( exp,    1,  0.1, 0.1);

changeAnime( exp, 1, 107);                         -- 手前ダメージ
entryEffect( exp+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( exp+8, SE_10);

setMoveKey(  exp+8,   1,    0,   0,   128);
setMoveKey(  exp+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( exp+16, 1, 0);  -- ダメージ振動等
setShake(exp+7,6,15);
setShake(exp+13,15,10);

setRotateKey( exp,  1,  30 );
setRotateKey( exp+2,  1,  80 );
setRotateKey( exp+4,  1, 120 );
setRotateKey( exp+6,  1, 160 );
setRotateKey( exp+8,  1, 200 );
setRotateKey( exp+10,  1, 260 );
setRotateKey( exp+12,  1, 320 );
setRotateKey( exp+14,  1,   0 );

setShakeChara( exp+15, 1, 5,  10);
setShakeChara( exp+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( exp+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(exp+15, ct, 30, 10);
setEffRotateKey( exp+15, ct, -40);
setEffScaleKey( exp+15, ct, 4.0, 4.0);
setEffScaleKey( exp+16, ct, 2.0, 2.0);
setEffScaleKey( exp+17, ct, 2.6, 2.6);
setEffScaleKey( exp+18, ct, 4.0, 4.0);
setEffScaleKey( exp+19, ct, 2.6, 2.6);
setEffScaleKey( exp+20, ct, 3.8, 3.8);
setEffScaleKey( exp+110, ct, 3.8, 3.8);
setEffAlphaKey( exp+15, ct, 255);
setEffAlphaKey( exp+115, ct, 255);
setEffAlphaKey( exp+115, ct, 0);

playSe( exp+3, SE_11);
shuchusen7 = entryEffectLife( exp+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( exp+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(exp+16);--(1110/1126)

entryFade( exp+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(exp+110);

else

-------------------------------------------------------
--敵側対応
-------------------------------------------------------
setVisibleUI(0, 0);

setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 0, -600, 0); --味方位置

-------------------------------------------------------
--SP_02 =150564;	溜め	ef_001	0〜118
-------------------------------------------------------
step_1 = 0;
speff_01 = entryEffect( step_1,  SP_02, 0,     -1,  0,  0,  0);--導入

setEffMoveKey( step_1, speff_01, 0, 0, 0);
setEffScaleKey( step_1, speff_01, 1.0, 1.0);
setEffAlphaKey( step_1, speff_01, 255);
setEffRotateKey( step_1, speff_01, 0);

setEffShake(step_1,speff_01,118,10);
--集中線
shuchusen1 = entryEffectLife( step_1+18, 906, 118, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_1+18, shuchusen1, 0, 0, 0);
setEffScaleKey( step_1+18, shuchusen1, 1.4, 1.4);
setEffAlphaKey( step_1+18, shuchusen1, 255);
setEffRotateKey( step_1+18, shuchusen1, 0);

--背景
entryFadeBg( step_1, 0,118, 0, 10, 10, 10, 180);
entryFade( step_1+15, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_1+115, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(step_1,SE_01);
playSe(step_1+18,SE_02);--気が広がる

--------------------------------------------------------------------
--カードカットイン (119~209)—90F
--------------------------------------------------------------------
step_2 = step_1+119;

setScaleKey( step_2-9,   0, 1.5, 1.5);
setScaleKey( step_2-8,   0, 1.0, 1.0);

speff = entryEffect(  step_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe(step_2,1018);

entryFade( step_2+85, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------------------------------------------
--SP_04 =150566;(210~416)	両足	ef_002	206
-------------------------------------------------------
step_3 = step_2+90;

changeAnime(step_3-1,1,102);
setDisp(step_3-1,1,1);
setMoveKey(step_3-1,1,400,-400);
setScaleKey(step_3-1,1,2.5,2.5);
setRotateKey(step_3-1,0);

setMoveKey(step_3+13,1,300,-270);
setScaleKey(step_3+13,1,2.5,2.5);
setRotateKey(step_3+13,0);

setMoveKey(step_3+28,1,300,-270);
setScaleKey(step_3+28,1,2.5,2.5);
setRotateKey(step_3+28,0);

setMoveKey(step_3+39,1,300,-800);
setScaleKey(step_3+39,1,2.5,2.5);
setRotateKey(step_3+39,0);

setDisp(step_3+45,1,0);

speff_02 = entryEffect(step_3,   SP_04,  0,     -1,  0,  0,  0);--導入
setEffMoveKey(step_3, speff_02, 0, 0, 0);
setEffScaleKey( step_3, speff_02, 1.0, 1.0);
setEffAlphaKey( step_3, speff_02, 255);
setEffRotateKey( step_3, speff_02, 0);

setEffShake(step_3,speff_02,206,10);

--集中線
shuchusen3 = entryEffectLife( step_3, 906, 206, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_3, shuchusen3, 0, 0, 0);
setEffScaleKey( step_3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( step_3, shuchusen3, 255);
setEffRotateKey( step_3, shuchusen3, 0);

--縦線
ryusen3 = entryEffectLife( step_3+39, 920, 54, 0x80,  -1,  0,  0,  0); -- 流線　303まで
setEffMoveKey(step_3+39, ryusen3, 0, 0, 0);
setEffRotateKey( step_3+39, ryusen3, 90);
setEffScaleKey( step_3+39, ryusen3, 1.5, 1.5);
setEffAlphaKey( step_3+39, ryusen3, 255);

setEffMoveKey(step_3+93, ryusen3, 0, 0, 0);
setEffRotateKey( step_3+93, ryusen3, 90);
setEffScaleKey( step_3+93, ryusen3, 1.5, 1.5);
setEffAlphaKey( step_3+93, ryusen3, 255);

--斜線
ryusen3 = entryEffectLife( step_3+94, 920, 112, 0x80,  -1,  0,  0,  0); -- 流線　303まで
setEffMoveKey(step_3+94, ryusen3, 0, 0, 0);
setEffRotateKey( step_3+94, ryusen3, 240);
setEffScaleKey( step_3+94, ryusen3, 2.0, 1.5);
setEffAlphaKey( step_3+94, ryusen3, 255);

setEffMoveKey(step_3+206, ryusen3, 0, 0, 0);
setEffRotateKey( step_3+206, ryusen3, 240);
setEffScaleKey( step_3+206, ryusen3, 2.0, 1.5);
setEffAlphaKey( step_3+206, ryusen3, 255);

entryFadeBg( step_3, 0,206, 0, 10, 10, 10, 200);

entryFade( step_3+63, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_3+95, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_3+131, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_3+164, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_3+197, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--シュン（２３８F）
syun=entryEffectLife( step_3+25, 10011, 13, 0x100,  -1,  0,  0,  0); 
setEffMoveKey(step_3+25, syun, 50, 300, 0);
setEffRotateKey( step_3+25, syun, 30);
setEffScaleKey( step_3+25, syun, 0.3, 0.3);
setEffAlphaKey( step_3+25, syun, 255);

setEffMoveKey(step_3+29, syun, 50, 300, 0);
setEffRotateKey( step_3+29, syun, 30);
setEffScaleKey( step_3+29, syun, 3.0, 3.0);
setEffAlphaKey( step_3+29, syun, 255);

setEffMoveKey(step_3+35, syun, 50, 300, 0);
setEffRotateKey( step_3+35, syun, 30);
setEffScaleKey( step_3+35, syun, 3.0, 3.0);
setEffAlphaKey( step_3+35, syun, 255);

setEffMoveKey(step_3+38, syun, 50, 300, 0);
setEffRotateKey( step_3+38, syun, 30);
setEffScaleKey( step_3+38, syun, 2.0,2.0);
setEffAlphaKey( step_3+38, syun, 80);

playSe(step_3+25,1042);
playSe(step_3+135,1018);
playSe(step_3+175,1018);
--playSe(step_3+199,1018);

-------------------------------------------------------
--SP_06 =150568;(411~531)	片足	ef_003	120
-------------------------------------------------------
step_4 = step_3+207;

speff_04 = entryEffect(step_4,   SP_06,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(step_4, speff_04, 0, 0, 0);
setEffScaleKey( step_4, speff_04, 1.0, 1.0);
setEffAlphaKey( step_4, speff_04, 255);
setEffRotateKey( step_4, speff_04, 0);

setEffShake(step_4,speff_04,120,10);
--集中線
shuchusen4 = entryEffectLife( step_4, 906, 120, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_4, shuchusen4, 0, 0, 0);
setEffScaleKey( step_4, shuchusen4, 1.4, 1.4);
setEffAlphaKey( step_4, shuchusen4, 255);
setEffRotateKey( step_4, shuchusen4, 0);

--横線
ryusen4 = entryEffectLife( step_4, 920, 120, 0x80,  -1,  0,  0,  0); -- 流線　303まで
setEffMoveKey(step_4, ryusen4, 0, 0, 0);
setEffRotateKey( step_4, ryusen4, 240);
setEffScaleKey( step_4, ryusen4, 2.0, 1.5);
setEffAlphaKey( step_4, ryusen4, 255);

setEffMoveKey(step_4+120, ryusen4, 0, 0, 0);
setEffRotateKey( step_4+120, ryusen4, 240);
setEffScaleKey( step_4+120, ryusen4, 2.0, 1.5);
setEffAlphaKey( step_4+120, ryusen4, 255);

entryFadeBg( step_4, 0,120, 0, 10, 10, 10, 200);

entryFade( step_4+70, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_4+112, 4, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--[[
entryFade( step_4+76, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_4+118, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_4+106, 0, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]--

--ズオッ
zuo = entryEffectLife( step_4+78, 10012, 28, 0x100,  -1,  0,  0,  0);
setEffMoveKey(step_4+78, zuo, 100, 350, 0);
setEffRotateKey( step_4+78, zuo, 30);
setEffScaleKey( step_4+78, zuo, 0.3, 0.3);
setEffAlphaKey( step_4+78, zuo, 255);

setEffMoveKey(step_4+88, zuo, 100, 350, 0);
setEffRotateKey( step_4+88, zuo, 30);
setEffScaleKey( step_4+88, zuo, 3.0,3.0);
setEffAlphaKey( step_4+88, zuo, 255);

setEffMoveKey(step_4+98, zuo, 100, 350, 0);
setEffRotateKey( step_4+98, zuo, 30);
setEffScaleKey( step_4+98, zuo, 3.0,3.0);
setEffAlphaKey( step_4+98, zuo, 255);

setEffMoveKey(step_4+107, zuo, 100, 350, 0);
setEffRotateKey( step_4+107, zuo, 30);
setEffScaleKey( step_4+107, zuo, 6.0, 6.0);
setEffAlphaKey( step_4+107, zuo, 0);

playSe(step_4+86,1018);

-------------------------------------------------------
--SP_07 =150570;(532~652)	着弾	ef_004	120
-------------------------------------------------------
step_5 = step_4+120;

changeAnime(step_5-1,1,102);
setDisp(step_5-1,1,1);
setMoveKey(step_5-1,1,300,-250);
setScaleKey(step_5-1,1,2.0,2.0);
setRotateKey(step_5-1,0);

setShakeChara(step_5,1,22,10);

--setShakeChara(step_5-1,1,23,20);

ryusen5 = entryEffectLife( step_5, 921, 116, 0x80,  -1, 0,  0,  0);  
setEffMoveKey(step_5, ryusen5, 0, 0, 0);
setEffScaleKey( step_5, ryusen5, 1.7, 1.7);
setEffAlphaKey( step_5, ryusen5, 255);
setEffRotateKey( step_5, ryusen5, -130);


speff_05 = entryEffect(  step_5,   SP_07,  0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(step_5, speff_05, 0, 0, 0);
setEffScaleKey( step_5, speff_05, 1.0, 1.0);
setEffAlphaKey( step_5, speff_05, 255);
setEffAlphaKey( step_5+28, speff_05, 255);
setEffAlphaKey( step_5+29, speff_05, 0);
setEffRotateKey( step_5, speff_05, 0);
setEffShake(step_5,speff_05,120,10);

speff_05_2 = entryEffect(  step_5,   SP_07,  0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(step_5, speff_05_2, 0, 0, 0);
setEffScaleKey( step_5, speff_05_2, 1.0, 1.0);
setEffAlphaKey( step_5, speff_05_2, 0);
setEffAlphaKey( step_5+28, speff_05_2, 0);
setEffAlphaKey( step_5+29, speff_05_2, 255);
setEffRotateKey( step_5, speff_05_2, 0);
setEffShake(step_5,speff_05_2,120,10);


shuchusen5 = entryEffectLife( step_5, 906, 120, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_5, shuchusen5, 0, 0, 0);
setEffScaleKey( step_5, shuchusen5, 1.4, 1.4);
setEffAlphaKey( step_5, shuchusen5, 255);
setEffRotateKey( step_5, shuchusen5, 0);



--entryFade( step_5, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( step_5, 0,120, 0, 10, 10, 10, 200);

setMoveKey(step_5+12,1,300,-250);
setScaleKey(step_5+12,1,2.0,2.0);
setRotateKey(step_5+12,0);

--[[
playSe(step_5+32,9);
playSe(step_5+48,9);
]]
--4.11
SE001 = playSe(step_5+32,9);
stopSe(step_5+48+3,SE001,5);
SE002 = playSe(step_5+48,9);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 555; --エンドフェイズのフレーム数を置き換える (step_5+23)

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(SP_dodge+91,1,2.0,2.0);

--setScaleKey(SP_dodge+5-1,1,2.0,2.0);
endPhase(SP_dodge+9);

do return end
else end

------------------------------------------------------
setMoveKey(step_5+23,1,300,-250);
setScaleKey(step_5+23,1,2.0,2.0);
setRotateKey(step_5+23,0);

setShakeChara(step_5+23,1,37,20);

setDisp(step_5+60,1,0);
setMoveKey(step_5+60,1,300,-250);
setScaleKey(step_5+60,1,2.0,2.0);
setRotateKey(step_5+60,0);

setEffMoveKey(step_5+60, speff_05, 0, 0, 0);
setEffScaleKey( step_5+60, speff_05, 1.0, 1.0);
setEffAlphaKey( step_5+60, speff_05, 255);
setEffRotateKey( step_5+60, speff_05, 0);

entryFade( step_5+27, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_5+43, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_5+105, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
entryFade( step_5+34, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_5+47, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( step_5+115, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]--

------------------------------------------------------
-- 爆発 (110F)(使い回し)
------------------------------------------------------
exp=step_5+111;

setDisp( exp-1, 1, 1);
setMoveKey(  exp-1,    1,  100,  0,   0);
setScaleKey( exp-1,    1,  1.0, 1.0);
setMoveKey(  exp,    1,    0,   0,   128);
setScaleKey( exp,    1,  0.1, 0.1);

changeAnime( exp, 1, 107);                         -- 手前ダメージ
entryEffect( exp+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( exp+8, SE_10);

setMoveKey(  exp+8,   1,    0,   0,   128);
setMoveKey(  exp+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( exp+16, 1, 0);  -- ダメージ振動等
setShake(exp+7,6,15);
setShake(exp+13,15,10);

setRotateKey( exp,  1,  30 );
setRotateKey( exp+2,  1,  80 );
setRotateKey( exp+4,  1, 120 );
setRotateKey( exp+6,  1, 160 );
setRotateKey( exp+8,  1, 200 );
setRotateKey( exp+10,  1, 260 );
setRotateKey( exp+12,  1, 320 );
setRotateKey( exp+14,  1,   0 );

setShakeChara( exp+15, 1, 5,  10);
setShakeChara( exp+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( exp+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(exp+15, ct, 30, 10);
setEffRotateKey( exp+15, ct, -40);
setEffScaleKey( exp+15, ct, 4.0, 4.0);
setEffScaleKey( exp+16, ct, 2.0, 2.0);
setEffScaleKey( exp+17, ct, 2.6, 2.6);
setEffScaleKey( exp+18, ct, 4.0, 4.0);
setEffScaleKey( exp+19, ct, 2.6, 2.6);
setEffScaleKey( exp+20, ct, 3.8, 3.8);
setEffScaleKey( exp+110, ct, 3.8, 3.8);
setEffAlphaKey( exp+15, ct, 255);
setEffAlphaKey( exp+115, ct, 255);
setEffAlphaKey( exp+115, ct, 0);

playSe( exp+3, SE_11);
shuchusen7 = entryEffectLife( exp+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( exp+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(exp+16);--(1110/1126)

entryFade( exp+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(exp+110);

end
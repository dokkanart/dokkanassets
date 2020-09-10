print ("[lua]sp1130");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
SP_01 = 150808;
--[[
SP_01 = 150606;--溜め
SP_02 = 150607;--左右ビーム放出
SP_03 = 150608;--しなるビーム
SP_04 = 150609;--刺さるビーム（前）
SP_05 = 150610;--刺さるビーム（後）
SP_06 = 150611;--溜め2回目
SP_07 = 150612;--溜め2回目用背景
SP_08 = 150613;--ビームを放つ
SP_09 = 150614;--迫るビーム～爆発
]]

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

multi_frm = 2;


------------------------------------------------------
--準備運動(90f)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -54, 0); --味方位置
setMoveKey( 1, 0, 0, -54, 0); --味方位置
setMoveKey( 2, 0, 0, -54, 0); --味方位置
setMoveKey( 3, 0, 0, -54, 0); --味方位置
setMoveKey( 4, 0, 0, -54, 0); --味方位置
setMoveKey( 5, 0, 0, -54, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  1,  0 );





setMoveKey(0, 0, 0, -54, 0);
setMoveKey(23, 0, 0, -54, 0);

setRotateKey( 0,  0,   0 );
setRotateKey( 24,  0,   0 );

--パンチ
changeAnime(25,0,9);
pauseChara(  26,  7);

setMoveKey(24, 0, 50, -64, 0);
setMoveKey(32, 0, 50, -64, 0);

setRotateKey( 25,  0,   16 );
setRotateKey( 32,  0,   16 );

--待機

changeAnime(34,0,0);

setMoveKey(34, 0, 0, -54, 0);
setMoveKey(47, 0, 0, -54, 0);

setRotateKey( 33,  0,   0 );
setRotateKey( 48,  0,   0 );

--パンチ

changeAnime(50,0,9);
pauseChara(  50, 10);

setMoveKey(48, 0, 50, -64, 0);
setMoveKey(57, 0, 50, -64, 0);

setRotateKey( 49,  0,   16 );
setRotateKey( 58,  0,   16 );


--待機 
changeAnime(60,0,0);
setMoveKey(58, 0, 0, -54, 0);
setMoveKey(63, 0, 0, -54, 0);

setRotateKey( 59,  0,   0 );
setRotateKey( 64,  0,   0 );

--パンチ３ 

changeAnime(66,0,11);
setMoveKey(64, 0, 0, -74, 0);
setMoveKey(71, 0, 0, -74, 0);

setRotateKey( 65,  0,   0 );
setRotateKey( 72,  0,   0 );


--パンチ

changeAnime(74,0,9);
pauseChara(  74, 6);

setMoveKey(72, 0, 50, -64, 0);
setMoveKey(76, 0, 50, -64, 0);

setRotateKey( 73,  0,   17 );
setRotateKey( 78,  0,   17 );

--パンチ３ 
setMoveKey(77, 0, 0, -74, 0);

changeAnime(80,0,11);

setMoveKey(78, 0, 10, -74, 0);
setMoveKey(90, 0, 10, -74, 0);

setRotateKey( 79,  0,   0 );
setRotateKey( 90,  0,   0 );



tame =26;

-- 書き文字エントリー
ct = entryEffectLife( 0+tame, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame, ct, 255);
setEffAlphaKey(7+tame, ct, 255);
setEffAlphaKey(8+tame, ct, 0);
setEffShake(1+tame, ct, 8, 7);
setEffScaleKey( 0+tame, ct, 0.7, 0.7);
setEffScaleKey( 8+tame, ct,0.7, 0.7);

tame2 =50;

-- 書き文字エントリー
ct2 = entryEffectLife( 0+tame2, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame2, ct2, 255);
setEffAlphaKey(7+tame2, ct2, 255);
setEffAlphaKey(8+tame2, ct2, 0);
setEffShake(1+tame2, ct2, 8, 7);
setEffScaleKey( 0+tame2, ct2, 0.7, 0.7);
setEffScaleKey( 8+tame2, ct2,0.7, 0.7);

tame3 =66;

-- 書き文字エントリー
ct3 = entryEffectLife( 0+tame3, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame3, ct3, 255);
setEffAlphaKey(7+tame3, ct3, 255);
setEffAlphaKey(8+tame3, ct3, 0);
setEffShake(1+tame3, ct3, 8, 7);
setEffScaleKey( 0+tame3, ct3, 0.7, 0.7);
setEffScaleKey( 8+tame3, ct3,0.7, 0.7);


tame4 =74;

-- 書き文字エントリー
ct4 = entryEffectLife( 0+tame4, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame4, ct4, 255);
setEffAlphaKey(7+tame4, ct4, 255);
setEffAlphaKey(8+tame4, ct4, 0);
setEffShake(1+tame4, ct4, 8, 7);
setEffScaleKey( 0+tame4, ct4, 0.7, 0.7);
setEffScaleKey( 8+tame4, ct4,0.7, 0.7);

tame5 =80;

-- 書き文字エントリー
ct5 = entryEffectLife( 0+tame5, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame5, ct5, 255);
setEffAlphaKey(7+tame5, ct5, 255);
setEffAlphaKey(8+tame5, ct5, 0);
setEffShake(1+tame5, ct5, 8, 7);
setEffScaleKey( 0+tame5, ct5, 0.7, 0.7);
setEffScaleKey( 8+tame5, ct5,0.7, 0.7);

playSe( tame, 1003);
playSe( tame2, 1003);
playSe( tame3, 1003);
playSe( tame4, 1003);
playSe( tame5, 1003);

------------------------------------------------------
-- 溜め(85f)
------------------------------------------------------

spep_1=90;
setRotateKey( spep_1,  0,   0 );
changeAnime(spep_1,0,17);
setMoveKey(spep_1, 0, 0, -54, 0);

--entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setShakeChara( spep_1 ,0 ,85 ,12);


-- ** エフェクト等 ** --
aura1503 = entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_1, aura1503, 0, 0, 0);
setEffScaleKey( spep_1, aura1503, 1.0, 1.0);
setEffAlphaKey( spep_1, aura1503, 255);
setEffRotateKey( spep_1, aura1503, 0);

-- ** エフェクト等 ** --
aura1502 = entryEffect( spep_1, 1502, 0, -1, 0, 0, 0); 
setEffMoveKey( spep_1, aura1502, 0, 0, 0);
setEffScaleKey( spep_1, aura1502, 1.0, 1.0);
setEffAlphaKey( spep_1, aura1502, 255);
setEffRotateKey( spep_1, aura1502, 0);

sayuushuchu = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1, sayuushuchu, 0, 0, 0);
setEffScaleKey( spep_1, sayuushuchu, 1.0, 1.0);
setEffAlphaKey( spep_1, sayuushuchu, 255);
setEffRotateKey( spep_1, sayuushuchu, 0);

speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+13, 190006, 85, 0x100, -1, 0, -300, 480);    -- ゴゴゴゴ 
setEffShake( spep_1+13, ctgogo, 80, 8);
setEffRotateKey( spep_1+13, ctgogo, 0);

setEffScaleKey( spep_1+13, ctgogo, 0.7, 0.7);
setEffAlphaKey( spep_1+13, ctgogo, 255);

setEffScaleKey( spep_1+91, ctgogo, 0.7, 0.7);
setEffAlphaKey( spep_1+91, ctgogo, 255);

setEffScaleKey( spep_1+99, ctgogo, 3.0, 3.0);
setEffAlphaKey( spep_1+99, ctgogo, 0);

playSe( spep_1+5, SE_06);




------------------------------------------------------
--カードイラスト	(90f)
------------------------------------------------------

spep_2=spep_1+85;

entryFade( spep_2-10, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setDisp( spep_2, 0, 0);

--カード絵＋技名
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

------------------------------------------------------
-- ダッシュ(96F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10,180);          -- ベース暗め　背景

totugeki = entryEffectLife( spep_3, SP_01, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_3, totugeki, 0, 0, 0);
setEffScaleKey( spep_3, totugeki, 1.5, 1.5);
setEffAlphaKey( spep_3, totugeki, 255);
setEffRotateKey( spep_3, totugeki, 0);
setEffRotateKey( spep_3+55, totugeki, 0);
setEffScaleKey( spep_3+55, totugeki, 1.5, 1.5);
setEffRotateKey( spep_3+60, totugeki, 30);
setEffScaleKey( spep_3+60, totugeki, 1.0, 1.0);


shuchusen3 = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

ruysen3 = entryEffectLife( spep_3+60, 920, 60, 0x80,  -1, 0,  0,  0);   
setEffMoveKey( spep_3+60, ruysen3, 0, 0, 0);
setEffScaleKey( spep_3+60, ruysen3, 1.6, 1.6);
setEffAlphaKey( spep_3+60, ruysen3, 255);
setEffRotateKey( spep_3+60, ruysen3, -20);

ctzuo = entryEffectLife( spep_3+59, 10012, 41, 0x100, -1, 0, 0, 400);    -- ズオッ
setEffAlphaKey( spep_3+59, ctzuo, 255);
setEffScaleKey( spep_3+59, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_3+100, ctzuo, 3.0, 3.0);
setEffAlphaKey( spep_3+59, ctzuo, 255);
setEffAlphaKey( spep_3+95, ctzuo, 255);
setEffAlphaKey( spep_3+100, ctzuo, 0);
setEffShake( spep_3+59, ctzuo, 45, 8);
setEffRotateKey(spep_3+100, ctzuo, 20);

playSe( spep_3+2, 1034);
playSe( spep_3+20, 1034);
playSe( spep_3+40, 1034);
playSe( spep_3+60, 1030);

------------------------------------------------------
-- 迫る(100F)
------------------------------------------------------
spep_4=spep_3+110;

entryFade( spep_4-15, 3, 12, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 40, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setEffAlphaKey( spep_4-1, totugeki, 255);
setEffAlphaKey( spep_4, totugeki, 0);
setEffAlphaKey( spep_4, ctzuo, 0);
setEffAlphaKey( spep_4-1, ruysen3, 255);
setEffAlphaKey( spep_4, ruysen3, 0);

setDisp( spep_4, 0, 1);
setShakeChara( spep_4 ,0 ,20 ,8);

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

setMoveKey( spep_4-1, 0, 0, -54, 0); --味方位置
setScaleKey( spep_4-1,    0,  1.5, 1.5);

changeAnime(spep_4,0,16);
setMoveKey( spep_4, 0, 0, -54, 0); --味方位置
setScaleKey( spep_4,    0,  1.0, 1.0);

setMoveKey( spep_4+20, 0, 0, -54, 0); --味方位置
setScaleKey( spep_4+20,    0,  2.0, 2.0);


setShakeChara( spep_4 ,0 ,40 ,12);
ctzuo2 = entryEffectLife( spep_4+0, 10012, 30, 0x100, -1, 0, 0, 400);    -- ズオッ
setEffAlphaKey( spep_4+0, ctzuo2, 255);
setEffScaleKey( spep_4+0, ctzuo2, 2.0, 2.0);
setEffScaleKey( spep_4+40, ctzuo2, 3.0, 3.0);
setEffAlphaKey( spep_4+0, ctzuo2, 255);
setEffAlphaKey( spep_4+40, ctzuo, 255);
setEffAlphaKey( spep_4+45, ctzuo2, 0);
setEffShake( spep_4+0, ctzuo2, 45, 8);
setEffRotateKey(spep_4+40, ctzuo2, 20);

playSe( spep_4, 1018);

------------------------------------------------------
-- ため(120F)
------------------------------------------------------
spep_5=spep_4+40;

entryFade( spep_5-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 40, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey( spep_5-1, 0, 0, -54, 0); --味方位置
setScaleKey( spep_5-1,    0,  2.0, 2.0);
setEffAlphaKey(spep_5-1, ctzudo, 255);
setEffAlphaKey(spep_5, ctzudo, 0);

ruysen5 = entryEffectLife( spep_5, 920, 36, 0x80,  -1, 0,  0,  0);   
setEffMoveKey( spep_5, ruysen5, 0, 0, 0);
setEffScaleKey( spep_5, ruysen5, 1.0, 1.0);
setEffAlphaKey( spep_5, ruysen5, 255);
setEffRotateKey( spep_5, ruysen5, 0);

changeAnime(spep_5,0,30);
changeAnime(spep_5,1,104);
setScaleKey( spep_5,    0,  1.5, 1.5);
setScaleKey( spep_5,    1,  1.5, 1.5);


setDisp( spep_5+10, 1, 1);

setMoveKey( spep_5+2, 0, -1000, -54, 0); --味方位置
setMoveKey( spep_5+10, 1, 1000, -54, 0); --敵位置

setMoveKey( spep_5+40, 0, -100, -54, 0); --味方位置
setMoveKey( spep_5+40, 1, 100, -54, 0); --敵位置



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 450; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------
setMoveKey( spep_5+41, 1, 100, 0, 0); --敵位置

changeAnime(spep_5+40,0,31);
changeAnime(spep_5+40,1,108);

setShakeChara( spep_5+40 ,0 ,20 ,8);
setShakeChara( spep_5+40 ,1 ,20 ,8);

entryFadeBg( spep_5+40, 0,30, 0, fcolor_r, fcolor_g, fcolor_b, 255);          -- ベース暗め　背景

hit5 = entryEffectLife( spep_5+40, 3, 10, 0x100,  -1, 100,  0,  0);   
setEffMoveKey( spep_5+40, hit5, 100, 0, 0);
setEffScaleKey( spep_5+40, hit5, 2.0, 2.0);
setEffAlphaKey( spep_5+40, hit5, 255);
setEffRotateKey( spep_5+40, hit5, 0);


kurosyuutyu5 = entryEffectLife( spep_5+40, 911, 20, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_5+40, kurosyuutyu5, 0, 0, 0);
setEffScaleKey( spep_5+40, kurosyuutyu5, 1.0, 1.0);
setEffAlphaKey( spep_5+40, kurosyuutyu5, 255);
setEffRotateKey( spep_5+40, kurosyuutyu5, 0);

ctbago = entryEffectLife( spep_5+40, 10021, 30, 0, -1, 0, -160, 300); -- バゴォッ
setEffShake(spep_5+40, ctbago, 32, 5);
setEffAlphaKey(spep_5+40, ctbago, 255);
setEffAlphaKey(spep_5+69, ctbago, 255);
setEffAlphaKey(spep_5+70, ctbago, 0);
setEffScaleKey(spep_5+40, ctbago, 0.0, 0.0);
setEffScaleKey(spep_5+44, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+60, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+70, ctbago, 6.0, 6.0);
setEffShake( spep_5+30 , ctbago , 110 , 20);
playSe( spep_5+40, SE_07);




------------------------------------------------------
-- 発射(74)
------------------------------------------------------
spep_7=spep_5+70;

entryFade( spep_7-10, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




-- ** 敵キャラの前の終点 ** --
setDisp( spep_7-2, 0, 0);
setScaleKey( spep_7-2,    0,  1.5, 1.5);
setRotateKey( spep_7-2, 1, 0);
setMoveKey(  spep_7-2, 1, 100, 0, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 1.5, 1.5);
setRotateKey( spep_7-1, 1, 60);

setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_07);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

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

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);



------------------------------------------------------
-- 敵側
------------------------------------------------------
else

setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -54, 0); --味方位置
setMoveKey( 1, 0, 0, -54, 0); --味方位置
setMoveKey( 2, 0, 0, -54, 0); --味方位置
setMoveKey( 3, 0, 0, -54, 0); --味方位置
setMoveKey( 4, 0, 0, -54, 0); --味方位置
setMoveKey( 5, 0, 0, -54, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  1,  0 );





setMoveKey(0, 0, 0, -54, 0);
setMoveKey(23, 0, 0, -54, 0);

setRotateKey( 0,  0,   0 );
setRotateKey( 24,  0,   0 );

--パンチ
changeAnime(25,0,9);
pauseChara(  26,  7);

setMoveKey(24, 0, 50, -64, 0);
setMoveKey(32, 0, 50, -64, 0);

setRotateKey( 25,  0,   16 );
setRotateKey( 32,  0,   16 );

--待機

changeAnime(34,0,0);

setMoveKey(34, 0, 0, -54, 0);
setMoveKey(47, 0, 0, -54, 0);

setRotateKey( 33,  0,   0 );
setRotateKey( 48,  0,   0 );

--パンチ

changeAnime(50,0,9);
pauseChara(  50, 10);

setMoveKey(48, 0, 50, -64, 0);
setMoveKey(57, 0, 50, -64, 0);

setRotateKey( 49,  0,   16 );
setRotateKey( 58,  0,   16 );


--待機 
changeAnime(60,0,0);
setMoveKey(58, 0, 0, -54, 0);
setMoveKey(63, 0, 0, -54, 0);

setRotateKey( 59,  0,   0 );
setRotateKey( 64,  0,   0 );

--パンチ３ 

changeAnime(66,0,11);
setMoveKey(64, 0, 0, -74, 0);
setMoveKey(71, 0, 0, -74, 0);

setRotateKey( 65,  0,   0 );
setRotateKey( 72,  0,   0 );


--パンチ

changeAnime(74,0,9);
pauseChara(  74, 6);

setMoveKey(72, 0, 50, -64, 0);
setMoveKey(76, 0, 50, -64, 0);

setRotateKey( 73,  0,   17 );
setRotateKey( 78,  0,   17 );

--パンチ３ 
setMoveKey(77, 0, 0, -74, 0);

changeAnime(80,0,11);

setMoveKey(78, 0, 10, -74, 0);
setMoveKey(90, 0, 10, -74, 0);

setRotateKey( 79,  0,   0 );
setRotateKey( 90,  0,   0 );



tame =26;

-- 書き文字エントリー
ct = entryEffectLife( 0+tame, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame, ct, 255);
setEffAlphaKey(7+tame, ct, 255);
setEffAlphaKey(8+tame, ct, 0);
setEffShake(1+tame, ct, 8, 7);
setEffScaleKey( 0+tame, ct, 0.7, 0.7);
setEffScaleKey( 8+tame, ct,0.7, 0.7);

tame2 =50;

-- 書き文字エントリー
ct2 = entryEffectLife( 0+tame2, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame2, ct2, 255);
setEffAlphaKey(7+tame2, ct2, 255);
setEffAlphaKey(8+tame2, ct2, 0);
setEffShake(1+tame2, ct2, 8, 7);
setEffScaleKey( 0+tame2, ct2, 0.7, 0.7);
setEffScaleKey( 8+tame2, ct2,0.7, 0.7);

tame3 =66;

-- 書き文字エントリー
ct3 = entryEffectLife( 0+tame3, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame3, ct3, 255);
setEffAlphaKey(7+tame3, ct3, 255);
setEffAlphaKey(8+tame3, ct3, 0);
setEffShake(1+tame3, ct3, 8, 7);
setEffScaleKey( 0+tame3, ct3, 0.7, 0.7);
setEffScaleKey( 8+tame3, ct3,0.7, 0.7);


tame4 =74;

-- 書き文字エントリー
ct4 = entryEffectLife( 0+tame4, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame4, ct4, 255);
setEffAlphaKey(7+tame4, ct4, 255);
setEffAlphaKey(8+tame4, ct4, 0);
setEffShake(1+tame4, ct4, 8, 7);
setEffScaleKey( 0+tame4, ct4, 0.7, 0.7);
setEffScaleKey( 8+tame4, ct4,0.7, 0.7);

tame5 =80;

-- 書き文字エントリー
ct5 = entryEffectLife( 0+tame5, 10011, 7, 0x100, -1, 0, 170, 50); -- シュンッ
setEffAlphaKey(0+tame5, ct5, 255);
setEffAlphaKey(7+tame5, ct5, 255);
setEffAlphaKey(8+tame5, ct5, 0);
setEffShake(1+tame5, ct5, 8, 7);
setEffScaleKey( 0+tame5, ct5, 0.7, 0.7);
setEffScaleKey( 8+tame5, ct5,0.7, 0.7);

playSe( tame, 1003);
playSe( tame2, 1003);
playSe( tame3, 1003);
playSe( tame4, 1003);
playSe( tame5, 1003);

------------------------------------------------------
-- 溜め(85f)
------------------------------------------------------

spep_1=90;
setRotateKey( spep_1,  0,   0 );
changeAnime(spep_1,0,17);
setMoveKey(spep_1, 0, 0, -54, 0);

--entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setShakeChara( spep_1 ,0 ,85 ,12);


-- ** エフェクト等 ** --
aura1503 = entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_1, aura1503, 0, 0, 0);
setEffScaleKey( spep_1, aura1503, 1.0, 1.0);
setEffAlphaKey( spep_1, aura1503, 255);
setEffRotateKey( spep_1, aura1503, 0);

-- ** エフェクト等 ** --
aura1502 = entryEffect( spep_1, 1502, 0, -1, 0, 0, 0); 
setEffMoveKey( spep_1, aura1502, 0, 0, 0);
setEffScaleKey( spep_1, aura1502, 1.0, 1.0);
setEffAlphaKey( spep_1, aura1502, 255);
setEffRotateKey( spep_1, aura1502, 0);

sayuushuchu = entryEffectLife( spep_1+1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1+1, sayuushuchu, 0, 0, 0);
setEffScaleKey( spep_1+1, sayuushuchu, 1.0, 1.0);
setEffAlphaKey( spep_1+1, sayuushuchu, 255);
setEffRotateKey( spep_1+1, sayuushuchu, 0);
--[[
speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+28, 190006, 85, 0x100, -1, 0, -300, 480);    -- ゴゴゴゴ 
setEffShake( spep_1+28, ctgogo, 80, 8);
setEffRotateKey( spep_1+28, ctgogo, 0);

setEffScaleKey( spep_1+28, ctgogo, 0.7, 0.7);
setEffAlphaKey( spep_1+28, ctgogo, 255);

setEffScaleKey( spep_1+91, ctgogo, 0.7, 0.7);
setEffAlphaKey( spep_1+91, ctgogo, 255);

setEffScaleKey( spep_1+99, ctgogo, 3.0, 3.0);
setEffAlphaKey( spep_1+99, ctgogo, 0);
]]
playSe( spep_1+5, SE_06);




------------------------------------------------------
--カードイラスト	(90f)
------------------------------------------------------

spep_2=spep_1+85;

entryFade( spep_2-10, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setDisp( spep_2, 0, 0);

--カード絵＋技名
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

------------------------------------------------------
-- ダッシュ(96F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10,180);          -- ベース暗め　背景

totugeki = entryEffectLife( spep_3, SP_01, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_3, totugeki, 0, 0, 0);
setEffScaleKey( spep_3, totugeki, 1.5, 1.5);
setEffAlphaKey( spep_3, totugeki, 255);
setEffRotateKey( spep_3, totugeki, 0);
setEffRotateKey( spep_3+55, totugeki, 0);
setEffScaleKey( spep_3+55, totugeki, 1.5, 1.5);
setEffRotateKey( spep_3+60, totugeki, 30);
setEffScaleKey( spep_3+60, totugeki, 1.0, 1.0);


shuchusen3 = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

ruysen3 = entryEffectLife( spep_3+60, 920, 60, 0x80,  -1, 0,  0,  0);   
setEffMoveKey( spep_3+60, ruysen3, 0, 0, 0);
setEffScaleKey( spep_3+60, ruysen3, 1.6, 1.6);
setEffAlphaKey( spep_3+60, ruysen3, 255);
setEffRotateKey( spep_3+60, ruysen3, -20);

ctzuo = entryEffectLife( spep_3+59, 10012, 41, 0x100, -1, 0, 0, 400);    -- ズオッ
setEffAlphaKey( spep_3+59, ctzuo, 255);
setEffScaleKey( spep_3+59, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_3+100, ctzuo, 3.0, 3.0);
setEffAlphaKey( spep_3+59, ctzuo, 255);
setEffAlphaKey( spep_3+95, ctzuo, 255);
setEffAlphaKey( spep_3+100, ctzuo, 0);
setEffShake( spep_3+59, ctzuo, 45, 8);
setEffRotateKey(spep_3+100, ctzuo, 20);

playSe( spep_3+2, 1034);
playSe( spep_3+20, 1034);
playSe( spep_3+40, 1034);
playSe( spep_3+60, 1030);

------------------------------------------------------
-- 迫る(100F)
------------------------------------------------------
spep_4=spep_3+110;

entryFade( spep_4-15, 3, 12, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 40, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setEffAlphaKey( spep_4-1, totugeki, 255);
setEffAlphaKey( spep_4, totugeki, 0);
setEffAlphaKey( spep_4, ctzuo, 0);
setEffAlphaKey( spep_4-1, ruysen3, 255);
setEffAlphaKey( spep_4, ruysen3, 0);

setDisp( spep_4, 0, 1);
setShakeChara( spep_4 ,0 ,20 ,8);

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

setMoveKey( spep_4-1, 0, 0, -54, 0); --味方位置
setScaleKey( spep_4-1,    0,  1.5, 1.5);

changeAnime(spep_4,0,16);
setMoveKey( spep_4, 0, 0, -54, 0); --味方位置
setScaleKey( spep_4,    0,  1.0, 1.0);

setMoveKey( spep_4+20, 0, 0, -54, 0); --味方位置
setScaleKey( spep_4+20,    0,  2.0, 2.0);


setShakeChara( spep_4 ,0 ,40 ,12);
ctzuo2 = entryEffectLife( spep_4+0, 10012, 30, 0x100, -1, 0, 0, 400);    -- ズオッ
setEffAlphaKey( spep_4+0, ctzuo2, 255);
setEffScaleKey( spep_4+0, ctzuo2, 2.0, 2.0);
setEffScaleKey( spep_4+40, ctzuo2, 3.0, 3.0);
setEffAlphaKey( spep_4+0, ctzuo2, 255);
setEffAlphaKey( spep_4+40, ctzuo, 255);
setEffAlphaKey( spep_4+45, ctzuo2, 0);
setEffShake( spep_4+0, ctzuo2, 45, 8);
setEffRotateKey(spep_4+40, ctzuo2, 20);

playSe( spep_4, 1018);

------------------------------------------------------
-- ため(120F)
------------------------------------------------------
spep_5=spep_4+40;

entryFade( spep_5-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 40, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey( spep_5-1, 0, 0, -54, 0); --味方位置
setScaleKey( spep_5-1,    0,  2.0, 2.0);
setEffAlphaKey(spep_5-1, ctzudo, 255);
setEffAlphaKey(spep_5, ctzudo, 0);

ruysen5 = entryEffectLife( spep_5, 920, 36, 0x80,  -1, 0,  0,  0);   
setEffMoveKey( spep_5, ruysen5, 0, 0, 0);
setEffScaleKey( spep_5, ruysen5, 1.0, 1.0);
setEffAlphaKey( spep_5, ruysen5, 255);
setEffRotateKey( spep_5, ruysen5, 0);

changeAnime(spep_5,0,30);
changeAnime(spep_5,1,104);
setScaleKey( spep_5,    0,  1.5, 1.5);
setScaleKey( spep_5,    1,  1.5, 1.5);


setDisp( spep_5+10, 1, 1);

setMoveKey( spep_5+2, 0, -1000, -54, 0); --味方位置
setMoveKey( spep_5+10, 1, 1000, -54, 0); --敵位置

setMoveKey( spep_5+40, 0, -100, -54, 0); --味方位置
setMoveKey( spep_5+40, 1, 100, -54, 0); --敵位置



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 450; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------
setMoveKey( spep_5+41, 1, 100, 0, 0); --敵位置

changeAnime(spep_5+40,0,31);
changeAnime(spep_5+40,1,108);

setShakeChara( spep_5+40 ,0 ,20 ,8);
setShakeChara( spep_5+40 ,1 ,20 ,8);

entryFadeBg( spep_5+40, 0,30, 0, fcolor_r, fcolor_g, fcolor_b, 255);          -- ベース暗め　背景

hit5 = entryEffectLife( spep_5+40, 3, 10, 0x100,  -1, 100,  0,  0);   
setEffMoveKey( spep_5+40, hit5, 100, 0, 0);
setEffScaleKey( spep_5+40, hit5, 2.0, 2.0);
setEffAlphaKey( spep_5+40, hit5, 255);
setEffRotateKey( spep_5+40, hit5, 0);


kurosyuutyu5 = entryEffectLife( spep_5+40, 911, 20, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_5+40, kurosyuutyu5, 0, 0, 0);
setEffScaleKey( spep_5+40, kurosyuutyu5, 1.0, 1.0);
setEffAlphaKey( spep_5+40, kurosyuutyu5, 255);
setEffRotateKey( spep_5+40, kurosyuutyu5, 0);

ctbago = entryEffectLife( spep_5+40, 10021, 30, 0, -1, 0, -160, 300); -- バゴォッ
setEffShake(spep_5+40, ctbago, 32, 5);
setEffAlphaKey(spep_5+40, ctbago, 255);
setEffAlphaKey(spep_5+69, ctbago, 255);
setEffAlphaKey(spep_5+70, ctbago, 0);
setEffScaleKey(spep_5+40, ctbago, 0.0, 0.0);
setEffScaleKey(spep_5+44, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+60, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+70, ctbago, 6.0, 6.0);
setEffShake( spep_5+30 , ctbago , 110 , 20);
playSe( spep_5+40, SE_07);




------------------------------------------------------
-- 発射(74)
------------------------------------------------------
spep_7=spep_5+70;

entryFade( spep_7-10, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




-- ** 敵キャラの前の終点 ** --
setDisp( spep_7-2, 0, 0);
setScaleKey( spep_7-2,    0,  1.5, 1.5);
setRotateKey( spep_7-2, 1, 0);
setMoveKey(  spep_7-2, 1, 100, 0, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 1.5, 1.5);
setRotateKey( spep_7-1, 1, 60);

setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_07);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

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

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);



end



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

SP_01 = 150156;--冒頭突進
SP_02 = 150157;--蹴り
SP_03 = 150158;--背後に回る
SP_04 = 150159;--撃ち落とし
SP_05 = 150160;--遠景爆発
SP_06 = 150161;--昇る悟空
SP_07 = 150162;--突進悟空
SP_08 = 150163;--気弾的な悟空
SP_09 = 150164;--地面
SP_10 = 1509;--爆発

multi_frm = 2;

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

changeAnime( 0, 0, 16);                       -- 立ち
setAnimeLoop(0, 0, 1)

setMoveKey(  0,   0,    0, -54,   0);
setMoveKey(  1,   0,    0, -54,   0);
setScaleKey(  0,   0, 0.5, 0.5);
setScaleKey(  1,   0, 0.5, 0.5);

------------------------------------------------------
-- 冒頭突進
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

entryFade( 125, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryEffect(  0,  SP_01,  0x100,   -1,  0,  0,  0);
entryEffectLife( 50, SP_10, 80, 0x80,  -1,  0,  0,  0);

playSe( 0, SE_04 );
playSe( 50, SE_10 );

shuchusen = entryEffectLife( 0, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.3, 1.3);

setShakeChara( 0, 0, 95 , 8);

entryFadeBg(0, 0, 130, 0, 10, 10, 10, 255);       -- ベース暗め　背景

spep_1 = 130;

------------------------------------------------------
-- 蹴り
------------------------------------------------------

setDisp( spep_1, 1, 1);
changeAnime( spep_1, 1, 100);  
setAnimeLoop( spep_1, 1, 1);

changeAnime( spep_1+48, 1, 108);  
setAnimeLoop( spep_1+48, 1, 1);

setMoveKey(  spep_1, 1,  -800, 0,  0);
setMoveKey(  spep_1+30, 1,  100, 100,  0);
setMoveKey(  spep_1+75, 1,  100, 100,  0);
setMoveKey(  spep_1+90, 1,  -300, -300,  0);
setMoveKey(  spep_1+115, 1,  200, 200,  0);

setScaleKey( spep_1, 1,  3.5, 3.5);
setScaleKey( spep_1+30, 1,  1.5, 1.5);
setScaleKey( spep_1+75, 1,  1.5, 1.5);
setScaleKey( spep_1+90, 1,  3.0, 3.0);
setScaleKey( spep_1+115, 1,  2.0, 2.0);

playSe( spep_1, SE_04 );

entryEffect(  spep_1,  SP_02,  0x100,   -1,  0,  0,  0);

ryusen_1 = entryEffectLife( spep_1, 920, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1,ryusen_1, 0);
setEffRotateKey(spep_1+50,ryusen_1, 0);

ryusen_5 = entryEffectLife( spep_1+75, 920, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1+75,ryusen_5, -45);
setEffScaleKey(spep_1+75, ryusen_5, 1.5, 1.5);

entryFadeBg(spep_1, 0, 125, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_1+45, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.3, 1.3);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 147; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end


-- ** エフェクト等 ** --

playSe( spep_1+48, 1010 );

spep_2 = spep_1+125;

------------------------------------------------------
-- 背後に回る(110F)
------------------------------------------------------

setMoveKey(  spep_2, 1,  -100, -100,  0);
setMoveKey(  spep_2+74, 1,  -100, -100,  0);

setScaleKey( spep_2, 1,  2.5, 2.5);
setScaleKey( spep_2+74, 1,  2.5, 2.5);

-- ** エフェクト等 ** --

playSe( spep_2-10, SE_04 );
playSe( spep_2, 1043 );

setShakeChara( spep_2,1, 70,5 );

entryEffect( spep_2-10,SP_03,0x80,-1,0,0,0);--背後に回る

entryFadeBg( spep_2, 0, 75, 0, 10, 10, 10, 200);       -- ベース暗め　背景

-- 書き文字エントリ

entryFade( spep_2+70, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+75;

------------------------------------------------------
--撃ち落とし
------------------------------------------------------

setMoveKey( spep_3, 1,  0, -300,  0);
setMoveKey( spep_3+25, 1,  0, -200,  0);
setMoveKey( spep_3+58, 1,  0, -800,  0);
setMoveKey( spep_3+70, 1,  0, -1000,  0);

setScaleKey( spep_3, 1,  2.5, 2.5);
setScaleKey( spep_3+25, 1,  2.0, 2.0);
setScaleKey( spep_3+58, 1,  2.0, 2.0);
setScaleKey( spep_3+70, 1,  2.0, 2.0);

setRotateKey( spep_3, 1, 90);
setRotateKey( spep_3+70, 1, 90);

-- ** エフェクト等 ** --

playSe( spep_3, 1025 );
playSe( spep_3+25, SE_07 );

setShakeChara( spep_3,1, 70,5 );
 
entryEffect( spep_3, SP_04, 0x100, -1,  0,  0,  0);   --撃ち落とし

shuchusen = entryEffectLife( spep_3, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.3, 1.3);--260

entryFade( spep_3+65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリ

spep_4 = spep_3+70;

------------------------------------------------------
--遠景爆発
------------------------------------------------------

setDisp( spep_4, 1, 0);

eff = entryEffect( spep_4, SP_05, 0x00, -1,  0,  0,  0);   -- 遠景爆発
setEffScaleKey( spep_4, eff, 1.1, 1.1);--260

shuchusen = entryEffectLife( spep_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.3, 1.3);--260

entryFade( spep_4+115, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_4+30, SE_10 );

-- 書き文字エントリー

ct = entryEffectLife( spep_4+30, 10012, 80, 0, -1, 0, 100, -300); -- ズオッ
setEffShake( spep_4+30, ct, 80, 5);
setEffAlphaKey( spep_4+30, ct, 255);
setEffAlphaKey( spep_4+90, ct, 255);--290
setEffAlphaKey( spep_4+100, ct, 0);--300
setEffScaleKey( spep_4, ct, 0.0, 0.0);
setEffScaleKey( spep_4+42, ct, 2.3, 2.3);
setEffScaleKey( spep_4+90, ct, 2.3, 2.3);
setEffScaleKey( spep_4+100, ct, 6.0, 6.0);

spep_5 = spep_4+120;

------------------------------------------------------
--昇る悟空
------------------------------------------------------

entryEffect( spep_5, SP_06, 0x00, -1,  0,  0,  0);   --撃ち落とし

speff = entryEffect(  spep_5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_5, SE_04);
playSe( spep_5+20, SE_03);
playSe( spep_5+40, SE_03);
playSe( spep_5+60, SE_03);

shuchusen = entryEffectLife( spep_5, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( sspep_5, shuchusen, 1.3, 1.3);--260

entryFadeBg(spep_5, 0, 80, 0, 10, 10, 10, 255);       -- ベース暗め　背景

entryFade( spep_5+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ryusen3 = entryEffectLife( spep_5, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_5,ryusen3,1.5,1.5);
setEffRotateKey(  spep_5,ryusen3, 90);

-- 書き文字エントリ

ct = entryEffectLife( spep_5, 10008, 80, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_5, ct, 80, 8);
setEffScaleKey(spep_5, ct, 1.4, 1.4);

spep_6 = spep_5+80;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_6, SE_05);
speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_6+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--playSe( spep_6+64, SE_06);

spep_7 = spep_6+90;

------------------------------------------------------
-- 突進悟空(90F)
------------------------------------------------------

entryEffect( spep_7, SP_07, 0x00, -1,  0,  0,  0);   --突進悟空

playSe( spep_7+5, SE_06);
playSe( spep_7+95, SE_06);

shuchusen = entryEffectLife( spep_7, 906, 105, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( sspep_7, shuchusen, 1.3, 1.3);--260

entryFadeBg(spep_7, 0, 105, 0, 10, 10, 10, 255);       -- ベース暗め　背景

entryFade( spep_7+115, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_8 = spep_7+120;

------------------------------------------------------
-- 地面&気弾的な悟空(110F)
------------------------------------------------------

setDisp( spep_8, 1, 1);
setDisp( spep_8+150, 1, 0);

setMoveKey( spep_8, 1,  0, -200,  0);
setMoveKey( spep_8+45, 1,  0, -300,  0);
--setMoveKey( spep_8+60, 1,  0, -300,  0);
setMoveKey( spep_8+55, 1,  0, -440,  0);
setMoveKey( spep_8+93, 1,  0, -460,  0);
setMoveKey( spep_8+100, 1,  0, -300,  0);
setMoveKey( spep_8+149, 1,  0, -300,  0);

setScaleKey( spep_8, 1,  2.0, 2.0);
--setScaleKey( spep_8+10, 1,  1.9, 1.9);
setScaleKey( spep_8+45, 1,  1.9, 1.9);
setScaleKey( spep_8+55, 1,  0.8, 0.8);
setScaleKey( spep_8+93, 1,  0.5, 0.5);
setScaleKey( spep_8+100, 1,  2.5, 2.5);
setScaleKey( spep_8+149, 1,  2.5, 2.5);

entryEffect( spep_8,SP_08,0x100,-1,0,0,0);
entryEffect( spep_8,SP_09,0x80,-1,0,0,0);

iwa1 = entryEffect( spep_8+150,909,0x100,-1,0,0,-300);
setEffScaleKey(spep_8, iwa1, 1.5, 1.5);

iwa2 = entryEffect( spep_8+170,909,0x100,-1,0,200,200);
setEffScaleKey(spep_8+170, iwa2, 1.5, 1.5);

iwa3 = entryEffect( spep_8+190,909,0x100,-1,0,-350,0);
setEffScaleKey( spep_8+180, iwa3, 1.5, 1.5);

iwa4 =entryEffect( spep_8+210,909,0x100,-1,0,0,0);
setEffScaleKey( spep_8+200, iwa4, 1.5, 1.5);

--[[
iwa5 =entryEffect( spep_8+230,909,0x100,-1,0,0,0);
setEffScaleKey( spep_8+220, iwa5, 1.5, 1.5);
]]--

playSe( spep_8, SE_07 );
playSe( spep_8+110, SE_10 );

playSe( spep_8+150, 1014 );
playSe( spep_8+170, 1014 );
playSe( spep_8+190, 1014 );
playSe( spep_8+210, SE_10 );
--playSe( spep_8+230, SE_10 );

entryFadeBg(spep_8, 0, 260, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( spep_8, 10012, 80, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_8, ct, 80, 5);
setEffAlphaKey( spep_8, ct, 255);
setEffAlphaKey( spep_8+60, ct, 255);--290
setEffAlphaKey( spep_8+70, ct, 0);--300
setEffScaleKey( spep_8, ct, 0.0, 0.0);
setEffScaleKey( spep_8+12, ct, 2.3, 2.3);
setEffScaleKey( spep_8+60, ct, 2.3, 2.3);
setEffScaleKey( spep_8+70, ct, 6.0, 6.0);

--playSe( spep_9+9, 1023);
shuchusen = entryEffectLife( spep_8+4, 906, 160, 0x00,  -1, 0,  0,  0);--集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--playSe( spep_9+149, SE_10);

-- ダメージ表示
dealDamage(spep_8+120);

setDamage( spep_8+120);-- ダメージ振動等

entryFade( spep_8+250, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);-- ホワイト

endPhase(spep_8+260);

else

------------------------------------------------------
-- 冒頭突進
------------------------------------------------------

setVisibleUI(0, 0);

entryFade( 125, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryEffect(  0,  SP_01,  0x100,   -1,  0,  0,  0);

entryEffectLife( 50, SP_10, 80, 0x80,  -1,  0,  0,  0);

playSe( 0, SE_04 );
playSe( 50, SE_10 );

shuchusen = entryEffectLife( 0, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.3, 1.3);

setShakeChara( 0, 0, 95 , 8);

entryFadeBg(0, 0, 130, 0, 10, 10, 10, 255);       -- ベース暗め　背景

spep_1 = 130;

------------------------------------------------------
-- 蹴り
------------------------------------------------------

setDisp( spep_1, 1, 1);
changeAnime( spep_1, 1, 100); 
setAnimeLoop( spep_1, 1, 1); 

changeAnime( spep_1+48, 1, 108);  
setAnimeLoop( spep_1+48, 1, 1); 

setMoveKey(  spep_1, 1,  -800, 0,  0);
setMoveKey(  spep_1+30, 1,  100, 100,  0);
setMoveKey(  spep_1+75, 1,  100, 100,  0);
setMoveKey(  spep_1+90, 1,  -300, -300,  0);
setMoveKey(  spep_1+115, 1,  200, 200,  0);

setScaleKey( spep_1, 1,  3.5, 3.5);
setScaleKey( spep_1+30, 1,  1.5, 1.5);
setScaleKey( spep_1+75, 1,  1.5, 1.5);
setScaleKey( spep_1+90, 1,  3.0, 3.0);
setScaleKey( spep_1+115, 1,  2.0, 2.0);

playSe( spep_1, SE_04 );

entryEffect(  spep_1,  SP_02,  0x100,   -1,  0,  0,  0);

ryusen_1 = entryEffectLife( spep_1, 920, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1,ryusen_1, 0);
setEffRotateKey(spep_1+50,ryusen_1, 0);

ryusen_5 = entryEffectLife( spep_1+75, 920, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1+75,ryusen_5, -45);
setEffScaleKey(spep_1+75, ryusen_5, 1.5, 1.5);

entryFadeBg(spep_1, 0, 125, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_1+45, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.3, 1.3);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 147; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end


-- ** エフェクト等 ** --

playSe( spep_1+48, 1010 );

spep_2 = spep_1+125;

------------------------------------------------------
-- 背後に回る(110F)
------------------------------------------------------

setMoveKey(  spep_2, 1,  -100, -100,  0);
setMoveKey(  spep_2+74, 1,  -100, -100,  0);

setScaleKey( spep_2, 1,  2.5, 2.5);
setScaleKey( spep_2+74, 1,  2.5, 2.5);

-- ** エフェクト等 ** --

playSe( spep_2-10, SE_04 );
playSe( spep_2, 1043 );

setShakeChara( spep_2,1, 70,5 );

entryEffect( spep_2-10,SP_03,0x80,-1,0,0,0);--背後に回る

entryFadeBg( spep_2, 0, 75, 0, 10, 10, 10, 200);       -- ベース暗め　背景

-- 書き文字エントリ

entryFade( spep_2+70, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+75;

------------------------------------------------------
--撃ち落とし
------------------------------------------------------

setMoveKey( spep_3, 1,  0, -300,  0);
setMoveKey( spep_3+25, 1,  0, -200,  0);
setMoveKey( spep_3+58, 1,  0, -800,  0);
setMoveKey( spep_3+70, 1,  0, -1000,  0);

setScaleKey( spep_3, 1,  2.5, 2.5);
setScaleKey( spep_3+25, 1,  2.0, 2.0);
setScaleKey( spep_3+58, 1,  2.0, 2.0);
setScaleKey( spep_3+70, 1,  2.0, 2.0);

setRotateKey( spep_3, 1, 90);
setRotateKey( spep_3+70, 1, 90);

-- ** エフェクト等 ** --

playSe( spep_3, 1025 );
playSe( spep_3+25, SE_07 );

setShakeChara( spep_3,1, 70,5 );
 
entryEffect( spep_3, SP_04, 0x100, -1,  0,  0,  0);   --撃ち落とし

shuchusen = entryEffectLife( spep_3, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.3, 1.3);--260

entryFade( spep_3+65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリ

spep_4 = spep_3+70;

------------------------------------------------------
--遠景爆発
------------------------------------------------------

setDisp( spep_4, 1, 0);

eff = entryEffect( spep_4, SP_05, 0x00, -1,  0,  0,  0);   -- 遠景爆発
setEffScaleKey( spep_4, eff, 1.1, 1.1);--260

shuchusen = entryEffectLife( spep_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.3, 1.3);--260

entryFade( spep_4+115, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_4+30, SE_10 );

-- 書き文字エントリー

ct = entryEffectLife( spep_4+30, 10012, 80, 0, -1, 0, 100, -300); -- ズオッ
setEffShake( spep_4+30, ct, 80, 5);
setEffAlphaKey( spep_4+30, ct, 255);
setEffAlphaKey( spep_4+90, ct, 255);--290
setEffAlphaKey( spep_4+100, ct, 0);--300
setEffScaleKey( spep_4, ct, 0.0, 0.0);
setEffScaleKey( spep_4+42, ct, 2.3, 2.3);
setEffScaleKey( spep_4+90, ct, 2.3, 2.3);
setEffScaleKey( spep_4+100, ct, 6.0, 6.0);

spep_5 = spep_4+120;

------------------------------------------------------
--昇る悟空
------------------------------------------------------

goku3 = entryEffect( spep_5, SP_06, 0x00, -1,  0,  0,  0);   --撃ち落とし
setEffScaleKey( spep_5, goku3, -1.0, 1.0);

--[[
speff = entryEffect(  spep_5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_5, SE_04);
playSe( spep_5+20, SE_03);
playSe( spep_5+40, SE_03);
playSe( spep_5+60, SE_03);

shuchusen = entryEffectLife( spep_5, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( sspep_5, shuchusen, 1.3, 1.3);--260

entryFadeBg(spep_5, 0, 80, 0, 10, 10, 10, 255);       -- ベース暗め　背景

entryFade( spep_5+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ryusen3 = entryEffectLife( spep_5, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_5,ryusen3,1.5,1.5);
setEffRotateKey(  spep_5,ryusen3, 90);

-- 書き文字エントリ

ct = entryEffectLife( spep_5, 10008, 80, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_5, ct, 80, 8);
setEffScaleKey(spep_5, ct, 1.4, 1.4);

spep_6 = spep_5+80;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_6, SE_05);
speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_6+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--playSe( spep_6+64, SE_06);

spep_7 = spep_6+90;

------------------------------------------------------
-- 突進悟空(90F)
------------------------------------------------------

goku4 = entryEffect( spep_7, SP_07, 0x00, -1,  0,  0,  0);   --突進悟空
setEffScaleKey( spep_7, goku4, -1.0, 1.0);

playSe( spep_7+5, SE_06);
playSe( spep_7+95, SE_06);

shuchusen = entryEffectLife( spep_7, 906, 105, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( sspep_7, shuchusen, 1.3, 1.3);--260

entryFadeBg(spep_7, 0, 105, 0, 10, 10, 10, 255);       -- ベース暗め　背景

entryFade( spep_7+115, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_8 = spep_7+120;

------------------------------------------------------
-- 地面&気弾的な悟空(110F)
------------------------------------------------------

setDisp( spep_8, 1, 1);
setDisp( spep_8+150, 1, 0);

setMoveKey( spep_8, 1,  0, -200,  0);
setMoveKey( spep_8+45, 1,  0, -300,  0);
--setMoveKey( spep_8+60, 1,  0, -300,  0);
setMoveKey( spep_8+55, 1,  0, -440,  0);
setMoveKey( spep_8+93, 1,  0, -460,  0);
setMoveKey( spep_8+100, 1,  0, -300,  0);
setMoveKey( spep_8+149, 1,  0, -300,  0);

setScaleKey( spep_8, 1,  2.0, 2.0);
--setScaleKey( spep_8+10, 1,  1.9, 1.9);
setScaleKey( spep_8+45, 1,  1.9, 1.9);
setScaleKey( spep_8+55, 1,  0.8, 0.8);
setScaleKey( spep_8+93, 1,  0.5, 0.5);
setScaleKey( spep_8+100, 1,  2.5, 2.5);
setScaleKey( spep_8+149, 1,  2.5, 2.5);

entryEffect( spep_8,SP_08,0x100,-1,0,0,0);
entryEffect( spep_8,SP_09,0x80,-1,0,0,0);

iwa1 = entryEffect( spep_8+150,909,0x100,-1,0,0,-300);
setEffScaleKey(spep_8, iwa1, 1.5, 1.5);

iwa2 = entryEffect( spep_8+170,909,0x100,-1,0,200,200);
setEffScaleKey(spep_8+170, iwa2, 1.5, 1.5);

iwa3 = entryEffect( spep_8+190,909,0x100,-1,0,-350,0);
setEffScaleKey( spep_8+180, iwa3, 1.5, 1.5);

iwa4 =entryEffect( spep_8+210,909,0x100,-1,0,0,0);
setEffScaleKey( spep_8+200, iwa4, 1.5, 1.5);

--[[
iwa5 =entryEffect( spep_8+230,909,0x100,-1,0,0,0);
setEffScaleKey( spep_8+220, iwa5, 1.5, 1.5);
]]--

playSe( spep_8, SE_07 );
playSe( spep_8+110, SE_10 );

playSe( spep_8+150, 1014 );
playSe( spep_8+170, 1014 );
playSe( spep_8+190, 1014 );
playSe( spep_8+210, SE_10 );
--playSe( spep_8+230, SE_10 );

entryFadeBg(spep_8, 0, 260, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( spep_8, 10012, 80, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_8, ct, 80, 5);
setEffAlphaKey( spep_8, ct, 255);
setEffAlphaKey( spep_8+60, ct, 255);--290
setEffAlphaKey( spep_8+70, ct, 0);--300
setEffScaleKey( spep_8, ct, 0.0, 0.0);
setEffScaleKey( spep_8+12, ct, 2.3, 2.3);
setEffScaleKey( spep_8+60, ct, 2.3, 2.3);
setEffScaleKey( spep_8+70, ct, 6.0, 6.0);

--playSe( spep_9+9, 1023);
shuchusen = entryEffectLife( spep_8+4, 906, 160, 0x00,  -1, 0,  0,  0);--集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--playSe( spep_9+149, SE_10);

-- ダメージ表示
dealDamage(spep_8+120);

setDamage( spep_8+120);-- ダメージ振動等

entryFade( spep_8+250, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);-- ホワイト

endPhase(spep_8+260);

end

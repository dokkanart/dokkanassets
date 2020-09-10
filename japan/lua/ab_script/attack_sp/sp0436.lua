--ジレン_パワーインパクト sp0436
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
SE_12 = 09; --43瞬間移動

SP_01 = 151344; --瞬間移動
SP_02 = 151345; --合気道(手前)
SP_03 = 151346; --合気道(奥)
SP_04 = 151347; --吹っ飛ばし(手前)
SP_05 = 151348; --吹っ飛ばし(奥)
SP_06 = 151349; --大爆発

SP_02e = 151377; --合気道(手前)(敵)
SP_04e = 151378; --吹っ飛ばし(手前)(敵)
SP_06e = 151379; --大爆発(敵)

setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -54, 0); --味方位置
setMoveKey( 1, 0, 0, -54, 0); --味方位置
setMoveKey( 2, 0, 0, -54, 0); --味方位置
setMoveKey( 3, 0, 0, -54, 0); --味方位置
setMoveKey( 4, 0, 0, -54, 0); --味方位置
setMoveKey( 5, 0, 0, -54, 0); --味方位置
setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 1, 1.5, 1.5);
setRotateKey( 0,  1,  0 );

------------------------------------------------------
-- 気溜め(60F)(0-60F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1 = 0;

kitame = entryEffectLife( spep1, SP_01, 60, 0x100, -1, 0,  0,  0);   -- きため
setEffScaleKey( spep1, kitame, 1, 1);
setEffScaleKey( spep1+60, kitame, 1, 1);
setEffAlphaKey( spep1, kitame, 255);
setEffAlphaKey( spep1+60, kitame, 255);

shuchusen1 = entryEffectLife( spep1+31, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake( spep1 + 31,  shuchusen1,  30,  20);
setEffScaleKey( spep1+31, shuchusen1, 1.2, 1.2);
setEffScaleKey( spep1+60, shuchusen1, 1.2, 1.2);

entryFade( spep1+55, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

playSe( spep1+34, 43);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep1+40 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 敵に接近し気弾で包む(120F)(61-180F)
------------------------------------------------------
spep2 = spep1+60;

--敵の動き
setDisp(spep2,1,1);
changeAnime(spep2,1,100);
setMoveKey( spep2, 1, 60, 0, 0); --敵位置
changeAnime(spep2+50,1,106);
setShakeChara( spep2+50, 1, 70, 15);--敵揺れる

setMoveKey( spep2+120, 1, 60, 0, 0); --敵位置固定

setScaleKey( spep2, 1, 1.5, 1.5);
setScaleKey( spep2+49, 1, 1.5, 1.5);
setScaleKey( spep2+50, 1, 1.5, 1.5);
setScaleKey( spep2+120, 1, 1.5, 1.5);

setRotateKey( spep2, 1, 0);
setRotateKey( spep2+49, 1, 0);
setRotateKey( spep2+50, 1, 300);
setRotateKey( spep2+120, 1, 300);

-- ** SE ** --

playSe( spep2+16, 43);
--playSe( spep2+28, 15);--気弾生成
--playSe( spep2+48, 1035);--気弾当たる

seID0 = playSe( spep2+28, 15);
stopSe( spep2+116, seID0, 6);

-- ** エフェクト等 ** --

temae = entryEffectLife( spep2, SP_02, 120, 0x100, -1, 0,  0,  0);   -- 手前
setEffScaleKey( spep2, temae, 1, 1);
setEffScaleKey( spep2+120, temae, 1, 1);
setEffAlphaKey( spep2, temae, 255);
setEffAlphaKey( spep2+120, temae, 255);

oku = entryEffectLife( spep2, SP_03, 120, 0x80, -1, 0,  0,  0);   -- 奥
setEffScaleKey( spep2, oku , 1, 1);
setEffScaleKey( spep2+120, oku , 1, 1);
setEffAlphaKey( spep2, oku , 255);
setEffAlphaKey( spep2+120, oku , 255);

shuchusen2 = entryEffectLife( spep2+50, 906, 70, 0x100,  -1, 0,  100,  0);   -- 集中線
setEffShake( spep2 + 50,  shuchusen2,  70,  20);
setEffScaleKey( spep2+50, shuchusen2, 1.2, 1.2);
setEffScaleKey( spep2+120, shuchusen2, 1.2, 1.2);

-- 書き文字エントリー
ctZuo2= entryEffectLife( spep2+50, 10012, 50, 0, -1, 0, 50, 250); -- ズオッ
setEffShake( spep2+50, ctZuo2, 75, 10);
setEffAlphaKey( spep2+50, ctZuo2, 255);
setEffAlphaKey( spep2+100, ctZuo2, 255);
setEffScaleKey( spep2+50, ctZuo2, 0.0, 0.0);
setEffScaleKey( spep2+55, ctZuo2, 1.5, 1.5);
setEffScaleKey( spep2+100, ctZuo2, 1.5, 1.5);

entryFade( spep2+114, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(spep2+120,1,0);

------------------------------------------------------
-- カードカットイン(90F)(181-290F)
------------------------------------------------------
spep3 = spep2+120;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

playSe( spep3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep3+81, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 吹き飛ばし(70F) (290-350F)
------------------------------------------------------
spep4 = spep3+90;

setDisp(spep4,1,1);
changeAnime(spep4,1,106);
setShakeChara( spep4, 1, 28, 15);--敵揺れる

changeAnime(spep4+28,1,108);
setDisp( spep4+70, 1,0);

setMoveKey( spep4, 1, 60, 0 ,0);
setMoveKey( spep4+27, 1, 60, 0,0);
setMoveKey( spep4+28, 1, 70, 10,0);
setMoveKey( spep4+70, 1, 260, 470, 0);

setScaleKey( spep4, 1, 1.5, 1.5);
setScaleKey( spep4+28, 1, 1.5, 1.5);
setScaleKey( spep4+29, 1, 1.5, 1.5);
--setScaleKey( spep4+130, 1, 0.1, 0.1);
setScaleKey( spep4+70, 1, 0.01, 0.01);

setRotateKey( spep4, 1, 300);
setRotateKey( spep4+28, 1, 300);
setRotateKey( spep4+29, 1, 340);
setRotateKey( spep4+70, 1, 340);

-- ** エフェクト等 ** --

temae2 = entryEffectLife( spep4, SP_04, 70, 0x100, -1, 0,  0,  0);   -- 手前
setEffScaleKey( spep4, temae2, 1, 1);
setEffScaleKey( spep4+70, temae2, 1, 1);
setEffAlphaKey( spep4, temae2, 255);
setEffAlphaKey( spep4+70, temae2, 255);

oku2 = entryEffectLife( spep4, SP_05, 70, 0x80, -1, 0,  0,  0);   -- 奥
setEffScaleKey( spep4, oku2 , 1, 1);
setEffScaleKey( spep4+70, oku2 , 1, 1);
setEffAlphaKey( spep4, oku2 , 255);
setEffAlphaKey( spep4+70, oku2 , 255);


shuchusen4 = entryEffectLife( spep4, 906, 28, 0x100,  -1, 0,  100,  0);   -- 集中線
setEffShake( spep4 + 0,  shuchusen4,  28,  20);
setEffScaleKey( spep4, shuchusen4, 1.2, 1.2);
setEffScaleKey( spep4+28, shuchusen4, 1.2, 1.2);

hukitobi4 = entryEffectLife( spep4+28, 924, 42, 0x80,  -1, 0,  -60,  -100);   -- 吹き飛ばし流線
setEffScaleKey( spep4+28, hukitobi4 , 1.2, 1.2);
setEffScaleKey( spep4+70, hukitobi4 , 1.2, 1.2);

setEffRotateKey( spep4+28, hukitobi4 , 300);
setEffRotateKey( spep4+70, hukitobi4 , 300);
--setEffMoveKey( spep4+28, hukitobi4 , 0,  0,  0);
--setEffMoveKey( spep4+70, hukitobi4 , 0,  0,  0);

-- 書き文字エントリー
ctDon4= entryEffectLife( spep4+30, 10019, 35, 0, -1, 0, 100, 300); -- ドン

setEffMoveKey( spep4+30,ctDon4, 100,300);
--setEffMoveKey( spep4+45,ctDon4, 100,330);

setEffShake( spep4+30, ctDon4, 35, 10);
setEffAlphaKey( spep4+30, ctDon4, 255);
setEffAlphaKey( spep4+70, ctDon4, 255);
setEffScaleKey( spep4+30, ctDon4, 0.0, 0.0);
--setEffScaleKey( spep4+40, ctDon4, 1.3, 1.3);
--setEffScaleKey( spep4+60, ctDon4, 1.3, 1.3);
setEffScaleKey( spep4+40, ctDon4, 2.0, 2.0);
setEffScaleKey( spep4+70, ctDon4, 2.0, 2.0);

--entryFade( spep4+81, 40, 9, 11, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep4+62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

playSe( spep4+28, SE_06);
--playSe( spep4+44, SE_07);

------------------------------------------------------
-- 爆破（210）
------------------------------------------------------
spep5=spep4+70;

speff = entryEffect( spep5+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep5+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

shuchusen5a = entryEffectLife( spep5, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake( spep5 + 0,  shuchusen5a,  20,  20);
setEffScaleKey( spep5, shuchusen5a, 1.2, 1.2);
setEffScaleKey( spep5+20, shuchusen5a, 1.2, 1.2);

shuchusen5b = entryEffectLife( spep5+140, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake( spep5 + 140,  shuchusen5b,  100,  20);
setEffScaleKey( spep5+140, shuchusen5b, 1.0, 1.0);
setEffScaleKey( spep5+260, shuchusen5b, 1.0, 1.0);

--bakuha = entryEffectLife( spep5, SP_06, 300, 0x80, -1, 0,  0,  0);   -- 手前
bakuha = entryEffect( spep5, SP_06, 0x80, -1, 0,  0,  0);   -- 手前
setEffScaleKey( spep5, bakuha, 1, 1);
setEffScaleKey( spep5+300, bakuha, 1, 1);
setEffAlphaKey( spep5, bakuha, 255);
setEffAlphaKey( spep5+300, bakuha, 255);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep5+22, 190006, 70, 0x100, -1, 0, 100,530, 0);    -- ゴゴゴゴ
setEffShake(spep5+22, ctgogo, 70, 10);
setEffScaleKey(spep5+22, ctgogo, 0.8, 0.8);
setEffRotateKey(spep5+22, ctgogo, 0);
setEffAlphaKey( spep5+22, ctgogo, 255);

playSe( spep5+22, SE_04);
playSe( spep5+140, SE_10);

-- ダメージ表示
dealDamage(spep5+140);

entryFade( spep5+270, 5, 10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep5+280);

else
------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(60F)(0-60F)
------------------------------------------------------

spep1 = 0;

kitame = entryEffectLife( spep1, SP_01, 60, 0x100, -1, 0,  0,  0);   -- きため
setEffScaleKey( spep1, kitame, 1, 1);
setEffScaleKey( spep1+60, kitame, 1, 1);
setEffAlphaKey( spep1, kitame, 255);
setEffAlphaKey( spep1+60, kitame, 255);

shuchusen1 = entryEffectLife( spep1+31, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake( spep1 + 31,  shuchusen1,  20,  20);
setEffScaleKey( spep1+31, shuchusen1, 1.2, 1.2);
setEffScaleKey( spep1+60, shuchusen1, 1.2, 1.2);

entryFade( spep1+55, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

playSe( spep1+34, 43);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep1+40 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 敵に接近し気弾で包む(120F)(61-180F)
------------------------------------------------------
spep2 = spep1+60;

--敵の動き
setDisp(spep2,1,1);
changeAnime(spep2,1,100);
setMoveKey( spep2, 1, 60, 0, 0); --敵位置
changeAnime(spep2+50,1,106);
setShakeChara( spep2+50, 1, 70, 15);--敵揺れる

setMoveKey( spep2+120, 1, 60, 0, 0); --敵位置固定

setScaleKey( spep2, 1, 1.5, 1.5);
setScaleKey( spep2+49, 1, 1.5, 1.5);
setScaleKey( spep2+50, 1, 1.5, 1.5);
setScaleKey( spep2+120, 1, 1.5, 1.5);

setRotateKey( spep2, 1, 0);
setRotateKey( spep2+49, 1, 0);
setRotateKey( spep2+50, 1, 300);
setRotateKey( spep2+120, 1, 300);

-- ** SE ** --

playSe( spep2+16, 43);
--playSe( spep2+28, 15);--気弾生成
--playSe( spep2+48, 1035);--気弾当たる

seID0 = playSe( spep2+28, 15);
stopSe( spep2+116, seID0, 6);

-- ** エフェクト等 ** --

temae = entryEffectLife( spep2, SP_02e, 120, 0x100, -1, 0,  0,  0);   -- 手前
setEffScaleKey( spep2, temae, 1, 1);
setEffScaleKey( spep2+120, temae, 1, 1);
setEffAlphaKey( spep2, temae, 255);
setEffAlphaKey( spep2+120, temae, 255);

oku = entryEffectLife( spep2, SP_03, 120, 0x80, -1, 0,  0,  0);   -- 奥
setEffScaleKey( spep2, oku , 1, 1);
setEffScaleKey( spep2+120, oku , 1, 1);
setEffAlphaKey( spep2, oku , 255);
setEffAlphaKey( spep2+120, oku , 255);

shuchusen2 = entryEffectLife( spep2+50, 906, 70, 0x100,  -1, 0,  100,  0);   -- 集中線
setEffShake( spep2 + 50,  shuchusen2,  70,  20);
setEffScaleKey( spep2+50, shuchusen2, 1.2, 1.2);
setEffScaleKey( spep2+120, shuchusen2, 1.2, 1.2);

-- 書き文字エントリー
ctZuo2= entryEffectLife( spep2+50, 10012, 50, 0, -1, 0, 50, 250); -- ズオッ
setEffShake( spep2+50, ctZuo2, 75, 10);
setEffAlphaKey( spep2+50, ctZuo2, 255);
setEffAlphaKey( spep2+100, ctZuo2, 255);
setEffScaleKey( spep2+50, ctZuo2, 0.0, 0.0);
setEffScaleKey( spep2+55, ctZuo2, 1.5, 1.5);
setEffScaleKey( spep2+100, ctZuo2, 1.5, 1.5);

entryFade( spep2+114, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(spep2+120,1,0);

------------------------------------------------------
-- カードカットイン(90F)(181-290F)
------------------------------------------------------
spep3 = spep2+120;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

playSe( spep3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep3+81, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 吹き飛ばし(70F) (290-350F)
------------------------------------------------------
spep4 = spep3+90;

setDisp(spep4,1,1);
changeAnime(spep4,1,106);
setShakeChara( spep4, 1, 28, 15);--敵揺れる

changeAnime(spep4+28,1,108);
setDisp( spep4+70, 1,0);

setMoveKey( spep4, 1, 60, 0 ,0);
setMoveKey( spep4+27, 1, 60, 0,0);
setMoveKey( spep4+28, 1, 70, 10,0);
setMoveKey( spep4+70, 1, 260, 470, 0);

setScaleKey( spep4, 1, 1.5, 1.5);
setScaleKey( spep4+28, 1, 1.5, 1.5);
setScaleKey( spep4+29, 1, 1.5, 1.5);
--setScaleKey( spep4+130, 1, 0.1, 0.1);
setScaleKey( spep4+70, 1, 0.01, 0.01);

setRotateKey( spep4, 1, 300);
setRotateKey( spep4+28, 1, 300);
setRotateKey( spep4+29, 1, 340);
setRotateKey( spep4+70, 1, 340);

-- ** エフェクト等 ** --

temae2 = entryEffectLife( spep4, SP_04e, 70, 0x100, -1, 0,  0,  0);   -- 手前
setEffScaleKey( spep4, temae2, 1, 1);
setEffScaleKey( spep4+70, temae2, 1, 1);
setEffAlphaKey( spep4, temae2, 255);
setEffAlphaKey( spep4+70, temae2, 255);

oku2 = entryEffectLife( spep4, SP_05, 70, 0x80, -1, 0,  0,  0);   -- 奥
setEffScaleKey( spep4, oku2 , 1, 1);
setEffScaleKey( spep4+70, oku2 , 1, 1);
setEffAlphaKey( spep4, oku2 , 255);
setEffAlphaKey( spep4+70, oku2 , 255);


shuchusen4 = entryEffectLife( spep4, 906, 28, 0x100,  -1, 0,  100,  0);   -- 集中線
setEffShake( spep4 + 0,  shuchusen4,  28,  20);
setEffScaleKey( spep4, shuchusen4, 1.2, 1.2);
setEffScaleKey( spep4+28, shuchusen4, 1.2, 1.2);

hukitobi4 = entryEffectLife( spep4+28, 924, 42, 0x80,  -1, 0,  -60,  -100);   -- 吹き飛ばし流線
setEffScaleKey( spep4+28, hukitobi4 , 1.2, 1.2);
setEffScaleKey( spep4+70, hukitobi4 , 1.2, 1.2);

setEffRotateKey( spep4+28, hukitobi4 , 300);
setEffRotateKey( spep4+70, hukitobi4 , 300);
--setEffMoveKey( spep4+28, hukitobi4 , 0,  0,  0);
--setEffMoveKey( spep4+70, hukitobi4 , 0,  0,  0);

-- 書き文字エントリー
ctDon4= entryEffectLife( spep4+30, 10019, 35, 0, -1, 0, 100, 300); -- ドン

setEffMoveKey( spep4+30,ctDon4, 100,300);
--setEffMoveKey( spep4+45,ctDon4, 100,330);

setEffShake( spep4+30, ctDon4, 35, 10);
setEffAlphaKey( spep4+30, ctDon4, 255);
setEffAlphaKey( spep4+70, ctDon4, 255);
setEffScaleKey( spep4+30, ctDon4, 0.0, 0.0);
--setEffScaleKey( spep4+40, ctDon4, 1.3, 1.3);
--setEffScaleKey( spep4+60, ctDon4, 1.3, 1.3);
setEffScaleKey( spep4+40, ctDon4, 2.0, 2.0);
setEffScaleKey( spep4+70, ctDon4, 2.0, 2.0);

--entryFade( spep4+81, 40, 9, 11, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep4+62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

playSe( spep4+28, SE_06);
--playSe( spep4+44, SE_07);

------------------------------------------------------
-- 爆破（210）
------------------------------------------------------
spep5=spep4+70;

--speff = entryEffect( spep5+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep5+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

shuchusen5a = entryEffectLife( spep5, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake( spep5 + 0,  shuchusen5a,  20,  20);
setEffScaleKey( spep5, shuchusen5a, 1.2, 1.2);
setEffScaleKey( spep5+20, shuchusen5a, 1.2, 1.2);

shuchusen5b = entryEffectLife( spep5+140, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake( spep5 + 140,  shuchusen5b,  100,  20);
setEffScaleKey( spep5+140, shuchusen5b, 1.0, 1.0);
setEffScaleKey( spep5+260, shuchusen5b, 1.0, 1.0);

bakuha = entryEffect( spep5, SP_06e, 0x80, -1, 0,  0,  0);   -- 手前
setEffScaleKey( spep5, bakuha, 1, 1);
setEffScaleKey( spep5+300, bakuha, 1, 1);
setEffAlphaKey( spep5, bakuha, 255);
setEffAlphaKey( spep5+300, bakuha, 255);

-- 書き文字エントリー
--ctgogo = entryEffectLife( spep5+22, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
--setEffShake(spep5+22, ctgogo, 70, 10);
--setEffScaleKey(spep5+22, ctgogo, 0.8, 0.8);
--setEffRotateKey(spep5+22, ctgogo, 0);
--setEffAlphaKey( spep5+22, ctgogo, 255);

--playSe( spep5+22, SE_04);
playSe( spep5+140, SE_10);

-- ダメージ表示
dealDamage(spep5+140);

entryFade( spep5+270, 5, 10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep5+280);

end

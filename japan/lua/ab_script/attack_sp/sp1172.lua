--9013960 ジレン　sp1172 ヒートウェーブマグネトロン

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

SE_13 = 1010; --殴る音


SP_01 =151584;--溜め(200)
SP_02 =151585;--超右フック・手前(170)
SP_03 =151586;--超右フック・奥(170)
SP_04 =151587;--構え(200)
SP_05 =151588;--発射(200)
SP_06 =151589;--爆発(150)

SP_01x =151590;--敵用：溜め(180)
SP_02x =151591;--敵用：超右フック・手前(170)
SP_03x =151592;--敵用：超右フック・奥(170)
SP_04x =151593;--敵用：構え(200)
SP_05x =151594;--敵用：発射(200)
SP_06x =151589;--爆発(150)

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

------------------------------------------------------
--溜め(180)
------------------------------------------------------
spep_1=0;

Tame = entryEffectLife(spep_1,SP_01,176,0x100,-1,0,0,0); -- 溜め(180)

setEffAlphaKey(spep_1,Tame,255);
setEffAlphaKey(spep_1+176,Tame,255);
setEffScaleKey(spep_1,Tame,1.0,1.0);
setEffScaleKey(spep_1+176,Tame,1.0,1.0);
setEffRotateKey(spep_1,Tame,0);
setEffRotateKey(spep_1+176,Tame,0);

ctzuo_1 = entryEffectLife( spep_1+42, 10012, 80, 0, -1, 0, 150, 350); -- ズオッ

setEffShake( spep_1, ctzuo_1, 60, 20);

setEffRotateKey( spep_1+42, ctzuo_1, 30);
setEffAlphaKey( spep_1+42, ctzuo_1, 255);
setEffAlphaKey( spep_1+80, ctzuo_1, 255);
setEffAlphaKey( spep_1+90, ctzuo_1, 0);
setEffScaleKey( spep_1+42, ctzuo_1, 0.1, 0.1);
setEffScaleKey( spep_1+52, ctzuo_1, 3.0, 3.0);
setEffScaleKey( spep_1+80, ctzuo_1, 3.0, 3.0);
setEffScaleKey( spep_1+90, ctzuo_1, 6.0, 6.0);

-- 集中線 --
shuchusen1 = entryEffectLife( spep_1, 906, 180, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_1,  shuchusen1,  1.6,  1.6);
setEffScaleKey(  spep_1+180,  shuchusen1,  1.6,  1.6);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+180,  shuchusen1,  255);

playSe(spep_1+38, SE_01);
playSe(spep_1+28, SE_04);


entryFadeBg(spep_1,0,180,0,10,10,10,230);
entryFade(spep_1+38,0,2,10,255,255,255,255);
entryFade(spep_1+170,4,6,4,255,255,255,255);

------------------------------------------------------
--超右フック・手前(170)
------------------------------------------------------
------------------------------------------------------
--超右フック・奥 (170)
------------------------------------------------------
spep_2=spep_1+180;

setDisp( spep_2,     1, 1); --敵表示
setDisp( spep_2+108, 1, 0); --敵表示
changeAnime( spep_2,    1, 100); --敵立ちポーズ
changeAnime( spep_2+48, 1, 108); --敵やられポーズ

setScaleKey( spep_2-1,      1,  1.0, 1.0);
setScaleKey( spep_2+46,     1,  1.0, 1.0);
setScaleKey( spep_2+47,     1,  1.3, 1.3);
setScaleKey( spep_2+57,     1,  1.0, 1.0);
setScaleKey( spep_2+67,     1,  1.0, 1.0);
setScaleKey( spep_2+108,    1,  1.2, 1.2);

setMoveKey(  spep_2,        1,  -300, 0,  0);
setMoveKey(  spep_2+16,     1,    50, 0,  0);
setMoveKey(  spep_2+48,     1,   120, 0,  0);
setMoveKey(  spep_2+67,     1,   120, 0,  0);
setMoveKey(  spep_2+107,    1,   130,10,  0);

setShakeChara( spep_2+48, 1, 35, 20);


RighthookF = entryEffectLife(spep_2,SP_02,170,0x100,-1,0,0,0); -- 超右フック・手前(170)

setEffAlphaKey(spep_2,     RighthookF, 255);
setEffAlphaKey(spep_2+170, RighthookF, 255);
setEffScaleKey(spep_2,     RighthookF, 1.0, 1.0);
setEffScaleKey(spep_2+170, RighthookF, 1.0, 1.0);
setEffRotateKey(spep_2,    RighthookF, 0);
setEffRotateKey(spep_2+170,RighthookF, 0);

----
RighthookB = entryEffectLife(spep_2,SP_03,170,0x80,-1,0,0,0); -- 超右フック・奥 (170)

setEffAlphaKey(spep_2,RighthookB,255);
setEffAlphaKey(spep_2+170,RighthookB,255);
setEffScaleKey(spep_2,RighthookB,1.0,1.0);
setEffScaleKey(spep_2+170,RighthookB,1.0,1.0);
setEffRotateKey(spep_2,RighthookB,0);
setEffRotateKey(spep_2+170,RighthookB,0);

--バキ
ctBaki = entryEffectLife( spep_2+52, 10020, 32, 0x100, -1, 0, 50, 300); -- バキ

setEffShake( spep_2+52, ctBaki, 36, 15);
setEffAlphaKey( spep_2+52, ctBaki, 255);
setEffAlphaKey( spep_2+69, ctBaki, 255);
setEffAlphaKey( spep_2+79, ctBaki, 0);
setEffScaleKey( spep_2+52, ctBaki, 2.0, 2.0);
setEffScaleKey( spep_2+56, ctBaki, 3.2,3.2);
setEffScaleKey( spep_2+60, ctBaki, 2.0, 2.0);
setEffScaleKey( spep_2+79, ctBaki, 2.0, 2.0);
setEffRotateKey( spep_2+52, ctBaki, 20);
setEffRotateKey( spep_2+53, ctBaki, 20);
setEffRotateKey( spep_2+54, ctBaki, 0);
setEffRotateKey( spep_2+55, ctBaki, 0);
setEffRotateKey( spep_2+56, ctBaki, 20);
setEffRotateKey( spep_2+73, ctBaki, 20);

--ドゴォン
ctdogon = entryEffectLife( spep_2+107, 10018, 53, 0x100,-1,0,0,300); -- ドゴォン

setEffAlphaKey( spep_2+107, ctdogon, 255);
setEffAlphaKey( spep_2+145, ctdogon, 255);
setEffAlphaKey( spep_2+164, ctdogon,   0);
setEffScaleKey( spep_2, ctdogon, 3.5, 3.5);
setEffScaleKey( spep_2+164, ctdogon, 3.5, 3.5);
setEffRotateKey( spep_2, ctdogon, 0);
setEffRotateKey( spep_2+164, ctdogon, 0);

setEffShake(spep_2+108, ctdogon, 52, 30)

shuchusen2 = entryEffectLife( spep_2, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_2,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+67,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+108,  shuchusen2,  3.0,  3.0);
setEffScaleKey(  spep_2+170,  shuchusen2,  1.6,  1.6);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+170,  shuchusen2,  255);

playSe( spep_2+52, SE_13);
playSe( spep_2+107, SE_09);

entryFadeBg(spep_2,0,170,0,10,10,10,230);
entryFade(spep_2+47,0,4,8,255,255,255,255);
entryFade(spep_2+107,0,4,8,255,255,255,255);
entryFade(spep_2+164,4,4,4,255,255,255,255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+ 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey( SP_dodge-1, 1, 120, 0);
setScaleKey( SP_dodge-1, 1, 1.0, 1.0);

setMoveKey( SP_dodge, 1, 0, 0);
setScaleKey( SP_dodge, 1, 1.0, 1.0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+9, 1, 120, 0);
setScaleKey( SP_dodge+9, 1, 1.0, 1.0);

endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);

do return end
else end

------------------------------------------------------
--構え(100)
------------------------------------------------------
spep_3=spep_2+170;

Kamae = entryEffectLife(spep_3,SP_04,100,0x100,-1,0,0,0);  -- 構え(100)

setEffAlphaKey(spep_3,Kamae,255);
setEffAlphaKey(spep_3+100,Kamae,255);
setEffScaleKey(spep_3,Kamae,1.0,1.0);
setEffScaleKey(spep_3+100,Kamae,1.0,1.0);
setEffRotateKey(spep_3,Kamae,0);
setEffRotateKey(spep_3+100,Kamae,0);

shuchusen3 = entryEffectLife( spep_3, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+170,  shuchusen3,  1.6,  1.6);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+170,  shuchusen3,  255);


playSe( spep_3+22, SE_03);

--speff = entryEffect(spep_3+34,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(spep_3+34,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_3+37, 190006, 54, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffMoveKey( spep_3+34,ctgogo,0,500,0);
setEffScaleKey( spep_3+34, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_3+34, ctgogo, 0);
setEffRotateKey(  spep_3+91,  ctgogo,  0);
setEffAlphaKey( spep_3+34, ctgogo, 255);

setEffScaleKey( spep_3+85, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_3+85, ctgogo, 10);
setEffAlphaKey( spep_3+85, ctgogo, 255);

setEffShake(spep_3+20, ctgogo, 69, 10);


entryFadeBg(spep_3,0,100,0,10,10,10,230);
entryFade(spep_3+16,4,4,4,255,255,255,255);
entryFade(spep_3+94,4,4,4,255,255,255,255);
------------------------------------------------------
--カードカットイン(90)
------------------------------------------------------
spep_4=spep_3+100;

entryFadeBg( spep_4, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_4, SE_05);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_4+80, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--発射(137)
------------------------------------------------------
spep_5=spep_4+90;

Burst = entryEffectLife(spep_5,SP_05,137,0x100,-1,0,0,0);  -- 発射(137)

setEffAlphaKey(spep_5,Burst,255);
setEffAlphaKey(spep_5+137,Burst,255);
setEffScaleKey(spep_5,Burst,1.0,1.0);
setEffScaleKey(spep_5+137,Burst,1.0,1.0);
setEffRotateKey(spep_5,Burst,0);
setEffRotateKey(spep_5+137,Burst,0);

ctzuo_5 = entryEffectLife( spep_5+50, 10012, 80, 0, -1, 0, 150, 350); -- ズオッ

setEffShake( spep_5+50, ctzuo_5, 80, 30);

setEffRotateKey( spep_5+50, ctzuo_5, 30);
setEffAlphaKey( spep_5+50, ctzuo_5, 255);
setEffAlphaKey( spep_5+120, ctzuo_5, 255);
setEffAlphaKey( spep_5+130, ctzuo_5, 0);
setEffScaleKey( spep_5+50, ctzuo_5, 0.1, 0.1);
setEffScaleKey( spep_5+60, ctzuo_5, 3.0, 3.0);
setEffScaleKey( spep_5+120, ctzuo_5, 3.0, 3.0);
setEffScaleKey( spep_5+130, ctzuo_5, 6.0, 6.0);


shuchusen5 = entryEffectLife( spep_5, 906, 137, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_5,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_5+137,  shuchusen5,  1.6,  1.6);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+137,  shuchusen5,  255);

playSe(  spep_5+50, SE_06);

entryFadeBg(spep_5,0,137,0,10,10,10,230);
entryFade(spep_5+41,4,4,4,255,255,255,255);
entryFade(spep_5+131,4,4,4,255,255,255,255);
------------------------------------------------------
--ギャン(58)
------------------------------------------------------
spep_6=spep_5+137;

gyan = entryEffect(  spep_6,  190002,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ct6 = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_6, ct6, 3.0, 3.0);
setEffScaleKey( spep_6+58, ct6, 4.0, 4.0);
setEffAlphaKey( spep_6, ct6, 255);
setEffAlphaKey( spep_6+58, ct6, 0);
setEffShake( spep_6, ct6, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--爆発
------------------------------------------------------
spep_7=spep_6+58;

Exp = entryEffect(spep_7,SP_06,0x100,-1,0,0,0); 

setEffAlphaKey(spep_7,Exp,255);
setEffAlphaKey(spep_7+150,Exp,255);
setEffScaleKey(spep_7,Exp,1.0,1.0);
setEffScaleKey(spep_7+150,Exp,1.0,1.0);
setEffRotateKey(spep_7,Exp,0);
setEffRotateKey(spep_7+150,Exp,0);


shuchusen7 = entryEffectLife( spep_7+52, 906, 98, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_7,  shuchusen7,  1.6,  1.6);
setEffScaleKey(  spep_7+150,  shuchusen7,  1.6,  1.6);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffAlphaKey(  spep_7+150,  shuchusen7,  255);

entryFade(  spep_7+52,  0,  2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_7+52, SE_10);

-- ダメージ表示
dealDamage( spep_7+56);

entryFade( spep_7+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+140);

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

------------------------------------------------------
--溜め(180)
------------------------------------------------------
spep_1=0;

Tame = entryEffectLife(spep_1,SP_01x,176,0x100,-1,0,0,0); -- 溜め(180)

setEffAlphaKey(spep_1,Tame,255);
setEffAlphaKey(spep_1+176,Tame,255);
setEffScaleKey(spep_1,Tame,-1.0,1.0);
setEffScaleKey(spep_1+176,Tame,-1.0,1.0);
setEffRotateKey(spep_1,Tame,0);
setEffRotateKey(spep_1+176,Tame,0);

ctzuo_1 = entryEffectLife( spep_1+42, 10012, 80, 0, -1, 0, 150, 350); -- ズオッ

setEffShake( spep_1, ctzuo_1, 60, 20);

setEffRotateKey( spep_1+42, ctzuo_1, 30);
setEffAlphaKey( spep_1+42, ctzuo_1, 255);
setEffAlphaKey( spep_1+80, ctzuo_1, 255);
setEffAlphaKey( spep_1+90, ctzuo_1, 0);
setEffScaleKey( spep_1+42, ctzuo_1, 0.1, 0.1);
setEffScaleKey( spep_1+52, ctzuo_1, 3.0, 3.0);
setEffScaleKey( spep_1+80, ctzuo_1, 3.0, 3.0);
setEffScaleKey( spep_1+90, ctzuo_1, 6.0, 6.0);

-- 集中線 --
shuchusen1 = entryEffectLife( spep_1, 906, 180, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_1,  shuchusen1,  1.6,  1.6);
setEffScaleKey(  spep_1+180,  shuchusen1,  1.6,  1.6);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+180,  shuchusen1,  255);

playSe(spep_1+38, SE_01);
playSe(spep_1+28, SE_04);


entryFadeBg(spep_1,0,180,0,10,10,10,230);
entryFade(spep_1+38,0,2,10,255,255,255,255);
entryFade(spep_1+170,4,6,4,255,255,255,255);

------------------------------------------------------
--超右フック・手前(170)
------------------------------------------------------
------------------------------------------------------
--超右フック・奥 (170)
------------------------------------------------------
spep_2=spep_1+180;

setDisp( spep_2,     1, 1); --敵表示
setDisp( spep_2+108, 1, 0); --敵表示
changeAnime( spep_2,    1, 100); --敵立ちポーズ
changeAnime( spep_2+48, 1, 108); --敵やられポーズ

setScaleKey( spep_2-1,      1,  1.0, 1.0);
setScaleKey( spep_2+46,     1,  1.0, 1.0);
setScaleKey( spep_2+47,     1,  1.3, 1.3);
setScaleKey( spep_2+57,     1,  1.0, 1.0);
setScaleKey( spep_2+67,     1,  1.0, 1.0);
setScaleKey( spep_2+108,    1,  1.2, 1.2);

setMoveKey(  spep_2,        1,  -300, 0,  0);
setMoveKey(  spep_2+16,     1,    50, 0,  0);
setMoveKey(  spep_2+48,     1,   120, 0,  0);
setMoveKey(  spep_2+67,     1,   120, 0,  0);
setMoveKey(  spep_2+107,    1,   130,10,  0);

setShakeChara( spep_2+48, 1, 35, 20);


RighthookF = entryEffectLife(spep_2,SP_02x,170,0x100,-1,0,0,0); -- 超右フック・手前(170)

setEffAlphaKey(spep_2,     RighthookF, 255);
setEffAlphaKey(spep_2+170, RighthookF, 255);
setEffScaleKey(spep_2,     RighthookF, 1.0, 1.0);
setEffScaleKey(spep_2+170, RighthookF, 1.0, 1.0);
setEffRotateKey(spep_2,    RighthookF, 0);
setEffRotateKey(spep_2+170,RighthookF, 0);

----
RighthookB = entryEffectLife(spep_2,SP_03x,170,0x80,-1,0,0,0); -- 超右フック・奥 (170)

setEffAlphaKey(spep_2,RighthookB,255);
setEffAlphaKey(spep_2+170,RighthookB,255);
setEffScaleKey(spep_2,RighthookB,1.0,1.0);
setEffScaleKey(spep_2+170,RighthookB,1.0,1.0);
setEffRotateKey(spep_2,RighthookB,0);
setEffRotateKey(spep_2+170,RighthookB,0);

--バキ
ctBaki = entryEffectLife( spep_2+52, 10020, 32, 0x100, -1, 0, 50, 300); -- バキ

setEffShake( spep_2+52, ctBaki, 36, 15);
setEffAlphaKey( spep_2+52, ctBaki, 255);
setEffAlphaKey( spep_2+69, ctBaki, 255);
setEffAlphaKey( spep_2+79, ctBaki, 0);
setEffScaleKey( spep_2+52, ctBaki, 2.0, 2.0);
setEffScaleKey( spep_2+56, ctBaki, 3.2,3.2);
setEffScaleKey( spep_2+60, ctBaki, 2.0, 2.0);
setEffScaleKey( spep_2+79, ctBaki, 2.0, 2.0);
setEffRotateKey( spep_2+52, ctBaki, 20);
setEffRotateKey( spep_2+53, ctBaki, 20);
setEffRotateKey( spep_2+54, ctBaki, 0);
setEffRotateKey( spep_2+55, ctBaki, 0);
setEffRotateKey( spep_2+56, ctBaki, 20);
setEffRotateKey( spep_2+73, ctBaki, 20);

--ドゴォン
ctdogon = entryEffectLife( spep_2+107, 10018, 53, 0x100,-1,0,0,300); -- ドゴォン

setEffAlphaKey( spep_2+107, ctdogon, 255);
setEffAlphaKey( spep_2+145, ctdogon, 255);
setEffAlphaKey( spep_2+164, ctdogon,   0);
setEffScaleKey( spep_2, ctdogon, 3.5, 3.5);
setEffScaleKey( spep_2+164, ctdogon, 3.5, 3.5);
setEffRotateKey( spep_2, ctdogon, 0);
setEffRotateKey( spep_2+164, ctdogon, 0);

setEffShake(spep_2+108, ctdogon, 52, 30)

shuchusen2 = entryEffectLife( spep_2, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_2,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+67,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+108,  shuchusen2,  3.0,  3.0);
setEffScaleKey(  spep_2+170,  shuchusen2,  1.6,  1.6);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+170,  shuchusen2,  255);

playSe( spep_2+52, SE_13);
playSe( spep_2+107, SE_09);

entryFadeBg(spep_2,0,170,0,10,10,10,230);
entryFade(spep_2+47,0,4,8,255,255,255,255);
entryFade(spep_2+107,0,4,8,255,255,255,255);
entryFade(spep_2+164,4,4,4,255,255,255,255);


------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+ 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey( SP_dodge-1, 1, 120, 0);
setScaleKey( SP_dodge-1, 1, 1.0, 1.0);

setMoveKey( SP_dodge, 1, 0, 0);
setScaleKey( SP_dodge, 1, 1.0, 1.0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+9, 1, 120, 0);
setScaleKey( SP_dodge+9, 1, 1.0, 1.0);

endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);

do return end
else end

------------------------------------------------------
--構え(100)
------------------------------------------------------
spep_3=spep_2+170;

Kamae = entryEffectLife(spep_3,SP_04x,100,0x100,-1,0,0,0);  -- 構え(100)

setEffAlphaKey(spep_3,Kamae,255);
setEffAlphaKey(spep_3+100,Kamae,255);
setEffScaleKey(spep_3,Kamae,-1.0,1.0);
setEffScaleKey(spep_3+100,Kamae,-1.0,1.0);
setEffRotateKey(spep_3,Kamae,0);
setEffRotateKey(spep_3+100,Kamae,0);

shuchusen3 = entryEffectLife( spep_3, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+170,  shuchusen3,  1.6,  1.6);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+170,  shuchusen3,  255);


playSe( spep_3+22, SE_03);

--speff = entryEffect(spep_3+34,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(spep_3+34,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_3+37, 190006, 54, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffMoveKey( spep_3+34,ctgogo,0,500,0);
setEffScaleKey( spep_3+34, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_3+34, ctgogo, 0);
setEffRotateKey(  spep_3+91,  ctgogo,  0);
setEffAlphaKey( spep_3+34, ctgogo, 255);

setEffScaleKey( spep_3+85, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_3+85, ctgogo, 10);
setEffAlphaKey( spep_3+85, ctgogo, 255);

setEffShake(spep_3+20, ctgogo, 69, 10);


entryFadeBg(spep_3,0,100,0,10,10,10,230);
entryFade(spep_3+16,4,4,4,255,255,255,255);
entryFade(spep_3+94,4,4,4,255,255,255,255);
------------------------------------------------------
--カードカットイン(90)
------------------------------------------------------
spep_4=spep_3+100;

entryFadeBg( spep_4, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_4, SE_05);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_4+80, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--発射(137)
------------------------------------------------------
spep_5=spep_4+90;

Burst = entryEffectLife(spep_5,SP_05x,137,0x100,-1,0,0,0);  -- 発射(137)

setEffAlphaKey(spep_5,Burst,255);
setEffAlphaKey(spep_5+137,Burst,255);
setEffScaleKey(spep_5,Burst,1.0,1.0);
setEffScaleKey(spep_5+137,Burst,1.0,1.0);
setEffRotateKey(spep_5,Burst,0);
setEffRotateKey(spep_5+137,Burst,0);

ctzuo_5 = entryEffectLife( spep_5+50, 10012, 80, 0, -1, 0, 150, 350); -- ズオッ

setEffShake( spep_5+50, ctzuo_5, 80, 30);

setEffRotateKey( spep_5+50, ctzuo_5, 30);
setEffAlphaKey( spep_5+50, ctzuo_5, 255);
setEffAlphaKey( spep_5+120, ctzuo_5, 255);
setEffAlphaKey( spep_5+130, ctzuo_5, 0);
setEffScaleKey( spep_5+50, ctzuo_5, 0.1, 0.1);
setEffScaleKey( spep_5+60, ctzuo_5, 3.0, 3.0);
setEffScaleKey( spep_5+120, ctzuo_5, 3.0, 3.0);
setEffScaleKey( spep_5+130, ctzuo_5, 6.0, 6.0);


shuchusen5 = entryEffectLife( spep_5, 906, 137, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_5,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_5+137,  shuchusen5,  1.6,  1.6);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+137,  shuchusen5,  255);

playSe(  spep_5+50, SE_06);

entryFadeBg(spep_5,0,137,0,10,10,10,230);
entryFade(spep_5+41,4,4,4,255,255,255,255);
entryFade(spep_5+131,4,4,4,255,255,255,255);
------------------------------------------------------
--ギャン(58)
------------------------------------------------------
spep_6=spep_5+137;

gyan = entryEffect(  spep_6,  190002,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ct6 = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_6, ct6, 3.0, 3.0);
setEffScaleKey( spep_6+58, ct6, 4.0, 4.0);
setEffAlphaKey( spep_6, ct6, 255);
setEffAlphaKey( spep_6+58, ct6, 0);
setEffShake( spep_6, ct6, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--爆発
------------------------------------------------------
spep_7=spep_6+58;

Exp = entryEffect(spep_7,SP_06x,0x100,-1,0,0,0); 

setEffAlphaKey(spep_7,Exp,255);
setEffAlphaKey(spep_7+150,Exp,255);
setEffScaleKey(spep_7,Exp,1.0,1.0);
setEffScaleKey(spep_7+150,Exp,1.0,1.0);
setEffRotateKey(spep_7,Exp,0);
setEffRotateKey(spep_7+150,Exp,0);


shuchusen7 = entryEffectLife( spep_7+52, 906, 98, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_7,  shuchusen7,  1.6,  1.6);
setEffScaleKey(  spep_7+150,  shuchusen7,  1.6,  1.6);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffAlphaKey(  spep_7+150,  shuchusen7,  255);

entryFade(  spep_7+52,  0,  2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_7+52, SE_10);

-- ダメージ表示
dealDamage( spep_7+56);

entryFade( spep_7+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+140);

end

--  sp1177 孫悟空_界王拳アタック

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--基本いじらない--
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン・セリフカットイン時に使用
SE_05 = 1035; --カードカットイン時に使用
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --回避時の気づきに使用
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;


SP_01 =151619; --溜め
SP_02 =151620; --突進
SP_03 =151621; --hit
SP_04 =151622; --突き抜け前
SP_05 =151623; --突き抜け後

SP_06 =151624; --敵用：溜め
SP_07 =151625; --敵用：突進
SP_08 =151626; --敵用：hit
SP_09 =151627; --敵用：突き抜け後

multi_frm = 2;



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);

setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 溜め(250F)
------------------------------------------------------

spep_1 = 0;

playSe(  spep_1,  SE_01);

tame = entryEffect( spep_1,  SP_01,   0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+250,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+250,  tame,  0,  0);
setEffRotateKey(  spep_1+250,  tame,  0);
setEffAlphaKey(  spep_1+250,  tame,  255);


-- 書き文字エントリー
ct_01 = entryEffectLife( spep_1, 10013, 40, 0x100, -1, 0, 40, 300); -- ズズンッ
setEffShake( spep_1, ct_01, 40, 7);

setEffAlphaKey(  spep_1,  ct_01,  255);
setEffScaleKey(  spep_1,  ct_01,  2.0,  2.0);
setEffMoveKey(  spep_1,  ct_01,  40,  300);
setEffRotateKey(  spep_1,  ct_01,  -3);

setEffAlphaKey(  spep_1+2,  ct_01,  255);
setEffScaleKey(  spep_1+2,  ct_01,  2.5,  2.5);
setEffMoveKey(  spep_1+2,  ct_01,  40,  320);
setEffRotateKey(  spep_1+2,  ct_01,  -3);

setEffAlphaKey(  spep_1+3,  ct_01,  255);
setEffScaleKey(  spep_1+3,  ct_01,  3.0,  3.0);
setEffMoveKey(  spep_1+3,  ct_01,  40,  300);
setEffRotateKey(  spep_1+3,  ct_01,  -3);

setEffAlphaKey( spep_1+40, ct_01, 255);
setEffScaleKey( spep_1+40, ct_01, 3.0, 3.0);
setEffMoveKey( spep_1+40,ct_01, 40, 300);
setEffRotateKey( spep_1+40, ct_01, -3);


shuchusen1 = entryEffectLife( spep_1, 906, 250, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.5,  1.5);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffScaleKey(  spep_1+250,  shuchusen1,  1.5,  1.5);
setEffMoveKey(  spep_1+250,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+250,  shuchusen1,  0);
setEffAlphaKey(  spep_1+250,  shuchusen1,  255);

entryFade( spep_1+30, 5, 7, 17, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- カットイン
speff = entryEffect(  spep_1+48,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+48,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+61, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffShake(spep_1+61, ctgogo, 71, 10);
setEffScaleKey(spep_1+61, ctgogo, 0.6, 0.6);
setEffRotateKey(spep_1+61, ctgogo, 0);
setEffAlphaKey( spep_1+61, ctgogo, 255);

setEffScaleKey(  spep_1+127,  ctgogo,  0.6,  0.6);
setEffRotateKey(  spep_1+127,  ctgogo,  0);
setEffAlphaKey(  spep_1+127,  ctgogo,  255);

setEffScaleKey(  spep_1+128,  ctgogo,  1.0,  1.0);
setEffRotateKey(  spep_1+128,  ctgogo,  0);
setEffAlphaKey(  spep_1+128,  ctgogo,  200);

setEffScaleKey(  spep_1+130,  ctgogo,  1.3,  1.3);
setEffRotateKey(  spep_1+130,  ctgogo,  0);
setEffAlphaKey(  spep_1+130,  ctgogo,  180);

setEffScaleKey(  spep_1+131,  ctgogo,  1.3,  1.3);
setEffRotateKey(  spep_1+131,  ctgogo,  0);
setEffAlphaKey(  spep_1+131,  ctgogo,  0);


playSe(  spep_1+48,  SE_04);  --カットイン音
playSe(  spep_1+140,  SE_01);

entryFade( spep_1+141, 0, 1, 18, fcolor_r, fcolor_g, fcolor_b,  200);     -- white fade

entryFadeBg( spep_1, 0, 250, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_1+240, 8, 6, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- 突進(90F)
------------------------------------------------------

spep_2 = spep_1+250;

playSe(  spep_2,  8);

tosshin = entryEffectLife(  spep_2,  SP_02,  90,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_2,  tosshin,  0,  0);
setEffRotateKey(  spep_2,  tosshin,  0);
setEffAlphaKey(  spep_2,  tosshin,  255);
setEffScaleKey(  spep_2+90,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_2+90,  tosshin,  0,  0);
setEffRotateKey(  spep_2+90,  tosshin,  0);
setEffAlphaKey(  spep_2+90,  tosshin,  255);


--書き文字エントリー
ctzuon = entryEffectLife(  spep_2+10,  10012, 50,  0x100,  -1,  0,  0,  0);  --ズオッ

setEffShake(  spep_2+10,  ctzuon,  50,  15);

setEffScaleKey(  spep_2+10,  ctzuon,  0.4,  0.4);
setEffMoveKey(  spep_2+10,  ctzuon,  -100,  220);
setEffRotateKey(  spep_2+10,  ctzuon,  -10);
setEffAlphaKey(  spep_2+10,  ctzuon,  255);

setEffScaleKey(  spep_2+11,  ctzuon,  1.1,  1.1);
setEffMoveKey(  spep_2+11,  ctzuon,  -80,  280);
setEffRotateKey(  spep_2+11,  ctzuon,  -15);
setEffAlphaKey(  spep_2+11,  ctzuon,  255);

setEffScaleKey(  spep_2+12,  ctzuon,  2.0,  2.0);
setEffMoveKey(  spep_2+12,  ctzuon,  -80,  330);
setEffRotateKey(  spep_2+12,  ctzuon,  -10);
setEffAlphaKey(  spep_2+12,  ctzuon,  255);

setEffScaleKey(  spep_2+13,  ctzuon,  2.8,  2.8);
setEffMoveKey(  spep_2+13,  ctzuon,  -80,  350);
setEffRotateKey(  spep_2+13,  ctzuon,  -10);
setEffAlphaKey(  spep_2+13,  ctzuon,  255);

setEffScaleKey(  spep_2+53,  ctzuon,  2.8,  2.8);
setEffMoveKey(  spep_2+53,  ctzuon,  -80,  350);
setEffRotateKey(  spep_2+53,  ctzuon,  -10);
setEffAlphaKey(  spep_2+53,  ctzuon,  255);

setEffScaleKey(  spep_2+54,  ctzuon,  4.0,  4.0);
setEffMoveKey(  spep_2+54,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+54,  ctzuon,  -10);
setEffAlphaKey(  spep_2+54,  ctzuon,  255);

setEffScaleKey(  spep_2+55,  ctzuon,  4.5,  4.5);
setEffMoveKey(  spep_2+55,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+55,  ctzuon,  -10);
setEffAlphaKey(  spep_2+55,  ctzuon,  180);

setEffScaleKey(  spep_2+56,  ctzuon,  5.5,  5.5);
setEffMoveKey(  spep_2+56,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+56,  ctzuon,  -10);
setEffAlphaKey(  spep_2+56,  ctzuon,  140);

setEffScaleKey(  spep_2+57,  ctzuon,  6.0,  6.0);
setEffMoveKey(  spep_2+57,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+57,  ctzuon,  -10);
setEffAlphaKey(  spep_2+57,  ctzuon,  80);

setEffScaleKey(  spep_2+60,  ctzuon,  6.0,  6.0);
setEffMoveKey(  spep_2+60,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+60,  ctzuon,  -10);
setEffAlphaKey(  spep_2+60,  ctzuon,  0);


shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.7,  1.7);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.7,  1.7);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);



ryu1 = entryEffectLife(  spep_2,  921,  90,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  ryu1,  1.8,  1.3);
setEffMoveKey(  spep_2,  ryu1,  0,  30);
setEffRotateKey(  spep_2,  ryu1,  130);
setEffAlphaKey(  spep_2,  ryu1,  255);
setEffScaleKey(  spep_2+90,  ryu1,  1.8,  1.3);
setEffMoveKey(  spep_2+90,  ryu1,  0,  30);
setEffRotateKey(  spep_2+90,  ryu1,  130);
setEffAlphaKey(  spep_2+90,  ryu1,  255);


entryFade( spep_2+80, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);          -- 黒　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

spep_3 = spep_2+90;
--[[
playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線--
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);
]]

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen3, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep_3+80, 8, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 突進HIT(60F)
------------------------------------------------------

spep_4 = spep_3+90;

hit = entryEffectLife(  spep_4,  SP_03,  56,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_4,  hit,  1.0,  1.0);
setEffMoveKey(  spep_4,  hit,  0,  0);
setEffRotateKey(  spep_4,  hit,  0);
setEffAlphaKey(  spep_4,  hit,  255);
setEffScaleKey(  spep_4+56,  hit,  1.0,  1.0);
setEffMoveKey(  spep_4+56,  hit,  0,  0);
setEffRotateKey(  spep_4+56,  hit,  0);
setEffAlphaKey(  spep_4+56,  hit,  255);


--　敵
setDisp(  spep_4+26,  1,  1);
changeAnime(  spep_4+26,  1,  100);
setShakeChara(  spep_4+26,  1,  15, 10);

setScaleKey(  spep_4+26,  1,  1.3,  1.3);
setMoveKey(  spep_4+26,  1,  350,  400,  0);
setRotateKey(  spep_4+26,  1,  -25);

entryFade( spep_4+36, 0, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--書き文字エントリー
ctdogon1 = entryEffectLife(  spep_4+41,  10018, 15,  0x100,  -1,  0,  0,  0);  --ドゴォン

setEffShake(  spep_4+41,  ctdogon1,  15,  10);

setEffScaleKey(  spep_4+41,  ctdogon1,  6.0,  6.0);
setEffMoveKey(  spep_4+41,  ctdogon1,  0,  320);
setEffRotateKey(  spep_4+41,  ctdogon1,  -10);
setEffAlphaKey(  spep_4+41,  ctdogon1,  255);

setEffScaleKey(  spep_4+42,  ctdogon1,  5.0,  5.0);
setEffMoveKey(  spep_4+42,  ctdogon1,  0,  320);
setEffRotateKey(  spep_4+42,  ctdogon1,  -10);
setEffAlphaKey(  spep_4+42,  ctdogon1,  255);

setEffScaleKey(  spep_4+43,  ctdogon1,  4.0,  4.0);
setEffMoveKey(  spep_4+43,  ctdogon1,  0,  320);
setEffRotateKey(  spep_4+43,  ctdogon1,  -10);
setEffAlphaKey(  spep_4+43,  ctdogon1,  255);

setEffScaleKey(  spep_4+56,  ctdogon1,  4.0,  4.0);
setEffMoveKey(  spep_4+56,  ctdogon1,  0,  320);
setEffRotateKey(  spep_4+56,  ctdogon1,  -10);
setEffAlphaKey(  spep_4+56,  ctdogon1,  255);

playSe(  spep_4,  9);  --ダッシュ
playSe(  spep_4+41,  SE_09);  --hit音

ryu2 = entryEffectLife(  spep_4,  914,  56,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_4,  ryu2,  7.0,  1.3);
setEffMoveKey(  spep_4,  ryu2,  0,  -100);
setEffRotateKey(  spep_4,  ryu2,  135);
setEffAlphaKey(  spep_4,  ryu2,  255);
setEffScaleKey(  spep_4+56,  ryu2,  7.0,  1.3);
setEffMoveKey(  spep_4+56,  ryu2,  0,  -100);
setEffRotateKey(  spep_4+56,  ryu2,  135);
setEffAlphaKey(  spep_4+56,  ryu2,  255);


entryFadeBg( spep_4, 0, 60, 0, 0, 0, 0, 255);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+28; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,    0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

setScaleKey(  SP_dodge,  1,  1.3,  1.3);
setMoveKey(  SP_dodge,  1,  175,  200,  0);
setRotateKey(  SP_dodge,  1,  -25);

setScaleKey(  SP_dodge+8,  1,  1.3,  1.3);
setMoveKey(  SP_dodge+8,  1,  175,  200,  0);
setRotateKey(  SP_dodge+8,  1,  -25);

changeAnime(  SP_dodge+9,  1,  100);
setScaleKey(  SP_dodge+9,  1,  1.0,  1.0);
setMoveKey(  SP_dodge+9,  1,  0,  0,  0);
setRotateKey(  SP_dodge+9,  1,  0);

setScaleKey(  SP_dodge+10,  1,  1.0,  1.0);
setMoveKey(  SP_dodge+10,  1,  0,  0,  0);
setRotateKey(  SP_dodge+10,  1,  0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------

-- 敵・回避されなかった場合
setScaleKey(  spep_4+40,  1,  1.3,  1.3);
setMoveKey(  spep_4+40,  1,  0,  0,  0);
setRotateKey(  spep_4+40,  1, -25);

changeAnime(  spep_4+41,  1,  108); --くの字
setShakeChara(  spep_4+41,  1,  15, 20);

setScaleKey(  spep_4+41,  1,  1.3,  1.3);
setMoveKey(  spep_4+41,  1,  -40,  -50,  0);
setRotateKey(  spep_4+41,  1,  -25);

setScaleKey(  spep_4+56,  1,  1.3,  1.3);
setMoveKey(  spep_4+56,  1,  -40,  -50,  0);
setRotateKey(  spep_4+56,  1,  -25);



------------------------------------------------------
-- 突き抜け(50F)
------------------------------------------------------

spep_5 = spep_4+56;

--playSe(  spep_5,  1018);

ryu3 = entryEffectLife(  spep_5,  914,  40,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_5,  ryu3,  7.0,  1.3);
setEffMoveKey(  spep_5,  ryu3,  0,  -100);
setEffRotateKey(  spep_5,  ryu3,  135);
setEffAlphaKey(  spep_5,  ryu3,  255);
setEffScaleKey(  spep_5+40,  ryu3,  7.0,  1.3);
setEffMoveKey(  spep_5+40,  ryu3,  0,  -100);
setEffRotateKey(  spep_5+40,  ryu3,  135);
setEffAlphaKey(  spep_5+40,  ryu3,  255);

--書き文字エントリー
ctdogon2 = entryEffectLife(  spep_5,  10018,  30,  0x100,  -1,  0,  0,  0);  --ドゴォン

setEffShake(  spep_5,  ctdogon2,  28,  10);

setEffScaleKey(  spep_5,  ctdogon2,  4.0,  4.0);
setEffMoveKey(  spep_5,  ctdogon2,  0,  310);
setEffRotateKey(  spep_5,  ctdogon2,  -10);
setEffAlphaKey(  spep_5,  ctdogon2,  255);

setEffScaleKey(  spep_5+22,  ctdogon2,  4.0,  4.0);
setEffMoveKey(  spep_5+22,  ctdogon2,  0,  310);
setEffRotateKey(  spep_5+22,  ctdogon2,  -10);
setEffAlphaKey(  spep_5+22,  ctdogon2,  255);

setEffScaleKey(  spep_5+30,  ctdogon2,  4.0,  4.0);
setEffMoveKey(  spep_5+30,  ctdogon2,  0,  310);
setEffRotateKey(  spep_5+30,  ctdogon2,  -10);
setEffAlphaKey(  spep_5+30,  ctdogon2,  0);


tsuki_f = entryEffectLife(  spep_5,  SP_04,  40,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_5,  tsuki_f,  1.0,  1.0);
setEffMoveKey(  spep_5,  tsuki_f,  0,  0);
setEffRotateKey(  spep_5,  tsuki_f,  0);
setEffAlphaKey(  spep_5,  tsuki_f,  255);
setEffScaleKey(  spep_5+40,  tsuki_f,  1.0,  1.0);
setEffMoveKey(  spep_5+40,  tsuki_f,  0,  0);
setEffRotateKey(  spep_5+40,  tsuki_f,  0);
setEffAlphaKey(  spep_5+40,  tsuki_f,  255);

tsuki_b = entryEffectLife(  spep_5,  SP_05,  40,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_5,  tsuki_b,  1.0,  1.0);
setEffMoveKey(  spep_5,  tsuki_b,  0,  0);
setEffRotateKey(  spep_5,  tsuki_b,  0);
setEffAlphaKey(  spep_5,  tsuki_b,  255);
setEffScaleKey(  spep_5+40,  tsuki_b,  1.0,  1.0);
setEffMoveKey(  spep_5+40,  tsuki_b,  0,  0);
setEffRotateKey(  spep_5+40,  tsuki_b,  0);
setEffAlphaKey(  spep_5+40,  tsuki_b,  255);

--敵
changeAnime(  spep_5,  1,  108);
setShakeChara(  spep_5,  1,  40, 20);

setScaleKey(  spep_5,  1,  1.3,  1.3);
setMoveKey(  spep_5,  1,  -40,  -50,  0);
setRotateKey(  spep_5,  1,  -25);

setScaleKey(  spep_5+28,  1,  1.3,  1.3);
setMoveKey(  spep_5+28,  1,  -40,  -50,  0);
setRotateKey(  spep_5+28,  1,  -25);

setScaleKey(  spep_5+32,  1,  1.3,  1.3);
setMoveKey(  spep_5+32,  1,  -400,  -500,  0);
setRotateKey(  spep_5+32,  1,  -25);

setScaleKey(  spep_5+38,  1,  1.3,  1.3);
setMoveKey(  spep_5+38,  1,  -600,  -700,  0);
setRotateKey(  spep_5+38,  1,  -25);


entryFade( spep_5+32, 3, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_5, 0, 40, 0, 0, 0, 0, 255);          -- 黒　背景

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6=spep_5+40;


setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1.0, 1.0);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
--setShake(spep_6+7,6,15);
--setShake(spep_6+13,15,10);

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

playSe( spep_6+3, SE_11);
shuchusen4 = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_6+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6+15,  shuchusenkuro,  1.0,  1.0);
setEffMoveKey(  spep_6+15,  shuchusenkuro,  0,  0);
setEffRotateKey(  spep_6+15,  shuchusenkuro,  0);
setEffAlphaKey(  spep_6+15,  shuchusenkuro,  255);
setEffScaleKey(  spep_6+135,  shuchusenkuro,  1.0,  1.0);
setEffMoveKey(  spep_6+135,  shuchusenkuro,  0,  0);
setEffRotateKey(  spep_6+135,  shuchusenkuro,  0);
setEffAlphaKey(  spep_6+135,  shuchusenkuro,  255);


-- ダメージ表示
dealDamage(spep_6);
--entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+100);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------


------------------------------------------------------
-- 溜め(250F)
------------------------------------------------------

spep_1 = 0;

playSe(  spep_1,  SE_01);

tame = entryEffect( spep_1,  SP_06,   0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+250,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+250,  tame,  0,  0);
setEffRotateKey(  spep_1+250,  tame,  0);
setEffAlphaKey(  spep_1+250,  tame,  255);


-- 書き文字エントリー
ct_01 = entryEffectLife( spep_1, 10013, 40, 0, -1, 0, 50, 200); -- ズズンッ
setEffShake( spep_1, ct_01, 40, 7);

setEffAlphaKey(  spep_1,  ct_01,  255);
setEffScaleKey(  spep_1,  ct_01,  2.0,  2.0);
setEffMoveKey(  spep_1,  ct_01,  40,  300);
setEffRotateKey(  spep_1,  ct_01,  -3);

setEffAlphaKey(  spep_1+2,  ct_01,  255);
setEffScaleKey(  spep_1+2,  ct_01,  2.5,  2.5);
setEffMoveKey(  spep_1+2,  ct_01,  40,  320);
setEffRotateKey(  spep_1+2,  ct_01,  -3);

setEffAlphaKey(  spep_1+3,  ct_01,  255);
setEffScaleKey(  spep_1+3,  ct_01,  3.0,  3.0);
setEffMoveKey(  spep_1+3,  ct_01,  40,  300);
setEffRotateKey(  spep_1+3,  ct_01,  -3);

setEffAlphaKey( spep_1+40, ct_01, 255);
setEffScaleKey( spep_1+40, ct_01, 3.0, 3.0);
setEffMoveKey( spep_1+40,ct_01, 40, 300);
setEffRotateKey( spep_1+40, ct_01, -3);



shuchusen1 = entryEffectLife( spep_1, 906, 250, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.5,  1.5);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffScaleKey(  spep_1+250,  shuchusen1,  1.5,  1.5);
setEffMoveKey(  spep_1+250,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+250,  shuchusen1,  0);
setEffAlphaKey(  spep_1+250,  shuchusen1,  255);

entryFade( spep_1+30, 5, 7, 17, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- カットイン
-- speff = entryEffect(  spep_1+48,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
-- setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
-- speff = entryEffect(  spep_1+48,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
-- setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+61, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffShake(spep_1+61, ctgogo, 71, 10);
setEffScaleKey(spep_1+61, ctgogo, -0.6, 0.6);
setEffRotateKey(spep_1+61, ctgogo, 0);
setEffAlphaKey( spep_1+61, ctgogo, 255);

setEffScaleKey(  spep_1+127,  ctgogo,  -0.6,  0.6);
setEffRotateKey(  spep_1+127,  ctgogo,  0);
setEffAlphaKey(  spep_1+127,  ctgogo,  255);

setEffScaleKey(  spep_1+128,  ctgogo,  -1.0,  1.0);
setEffRotateKey(  spep_1+128,  ctgogo,  0);
setEffAlphaKey(  spep_1+128,  ctgogo,  200);

setEffScaleKey(  spep_1+130,  ctgogo,  -1.3,  1.3);
setEffRotateKey(  spep_1+130,  ctgogo,  0);
setEffAlphaKey(  spep_1+130,  ctgogo,  180);

setEffScaleKey(  spep_1+131,  ctgogo,  -1.3,  1.3);
setEffRotateKey(  spep_1+131,  ctgogo,  0);
setEffAlphaKey(  spep_1+131,  ctgogo,  0);

playSe(  spep_1+48,  SE_04);  --カットイン音
playSe(  spep_1+140,  SE_01);

entryFade( spep_1+141, 0, 1, 18, fcolor_r, fcolor_g, fcolor_b,  200);     -- white fade

entryFadeBg( spep_1, 0, 250, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_1+240, 8, 6, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- 突進(90F)
------------------------------------------------------

spep_2 = spep_1+250;

playSe(  spep_2,  8);

tosshin = entryEffectLife(  spep_2,  SP_07,  90,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_2,  tosshin,  0,  0);
setEffRotateKey(  spep_2,  tosshin,  0);
setEffAlphaKey(  spep_2,  tosshin,  255);
setEffScaleKey(  spep_2+90,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_2+90,  tosshin,  0,  0);
setEffRotateKey(  spep_2+90,  tosshin,  0);
setEffAlphaKey(  spep_2+90,  tosshin,  255);


--書き文字エントリー
ctzuon = entryEffectLife(  spep_2+10,  10012, 50,  0x100,  -1,  0,  0,  0);  --ズオッ

setEffShake(  spep_2+10,  ctzuon,  50,  15);

setEffScaleKey(  spep_2+10,  ctzuon,  0.4,  0.4);
setEffMoveKey(  spep_2+10,  ctzuon,  -100,  220);
setEffRotateKey(  spep_2+10,  ctzuon,  -10);
setEffAlphaKey(  spep_2+10,  ctzuon,  255);

setEffScaleKey(  spep_2+11,  ctzuon,  1.1,  1.1);
setEffMoveKey(  spep_2+11,  ctzuon,  -80,  280);
setEffRotateKey(  spep_2+11,  ctzuon,  -15);
setEffAlphaKey(  spep_2+11,  ctzuon,  255);

setEffScaleKey(  spep_2+12,  ctzuon,  2.0,  2.0);
setEffMoveKey(  spep_2+12,  ctzuon,  -80,  330);
setEffRotateKey(  spep_2+12,  ctzuon,  -10);
setEffAlphaKey(  spep_2+12,  ctzuon,  255);

setEffScaleKey(  spep_2+13,  ctzuon,  2.8,  2.8);
setEffMoveKey(  spep_2+13,  ctzuon,  -80,  350);
setEffRotateKey(  spep_2+13,  ctzuon,  -10);
setEffAlphaKey(  spep_2+13,  ctzuon,  255);

setEffScaleKey(  spep_2+53,  ctzuon,  2.8,  2.8);
setEffMoveKey(  spep_2+53,  ctzuon,  -80,  350);
setEffRotateKey(  spep_2+53,  ctzuon,  -10);
setEffAlphaKey(  spep_2+53,  ctzuon,  255);

setEffScaleKey(  spep_2+54,  ctzuon,  4.0,  4.0);
setEffMoveKey(  spep_2+54,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+54,  ctzuon,  -10);
setEffAlphaKey(  spep_2+54,  ctzuon,  255);

setEffScaleKey(  spep_2+55,  ctzuon,  4.5,  4.5);
setEffMoveKey(  spep_2+55,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+55,  ctzuon,  -10);
setEffAlphaKey(  spep_2+55,  ctzuon,  180);

setEffScaleKey(  spep_2+56,  ctzuon,  5.5,  5.5);
setEffMoveKey(  spep_2+56,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+56,  ctzuon,  -10);
setEffAlphaKey(  spep_2+56,  ctzuon,  140);

setEffScaleKey(  spep_2+57,  ctzuon,  6.0,  6.0);
setEffMoveKey(  spep_2+57,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+57,  ctzuon,  -10);
setEffAlphaKey(  spep_2+57,  ctzuon,  80);

setEffScaleKey(  spep_2+60,  ctzuon,  6.0,  6.0);
setEffMoveKey(  spep_2+60,  ctzuon,  -80,  380);
setEffRotateKey(  spep_2+60,  ctzuon,  -10);
setEffAlphaKey(  spep_2+60,  ctzuon,  0);


shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.7,  1.7);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.7,  1.7);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);



ryu1 = entryEffectLife(  spep_2,  921,  90,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  ryu1,  1.8,  1.3);
setEffMoveKey(  spep_2,  ryu1,  0,  30);
setEffRotateKey(  spep_2,  ryu1,  130);
setEffAlphaKey(  spep_2,  ryu1,  255);
setEffScaleKey(  spep_2+90,  ryu1,  1.8,  1.3);
setEffMoveKey(  spep_2+90,  ryu1,  0,  30);
setEffRotateKey(  spep_2+90,  ryu1,  130);
setEffAlphaKey(  spep_2+90,  ryu1,  255);


entryFade( spep_2+80, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);          -- 黒　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

spep_3 = spep_2+90;
--[[
playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線--
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);
]]

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen3, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep_3+80, 8, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 突進HIT(60F)
------------------------------------------------------

spep_4 = spep_3+90;

hit = entryEffectLife(  spep_4,  SP_08,  56,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_4,  hit,  1.0,  1.0);
setEffMoveKey(  spep_4,  hit,  0,  0);
setEffRotateKey(  spep_4,  hit,  0);
setEffAlphaKey(  spep_4,  hit,  255);
setEffScaleKey(  spep_4+56,  hit,  1.0,  1.0);
setEffMoveKey(  spep_4+56,  hit,  0,  0);
setEffRotateKey(  spep_4+56,  hit,  0);
setEffAlphaKey(  spep_4+56,  hit,  255);


--　敵

setDisp(  spep_4+26,  1,  1);
changeAnime(  spep_4+26,  1,  100);
setShakeChara(  spep_4+26,  1,  15, 10);

setScaleKey(  spep_4+26,  1,  1.3,  1.3);
setMoveKey(  spep_4+26,  1,  350,  400,  0);
setRotateKey(  spep_4+26,  1,  -25);


entryFade( spep_4+36, 0, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--書き文字エントリー
ctdogon1 = entryEffectLife(  spep_4+41,  10018, 15,  0x100,  -1,  0,  0,  0);  --ドゴォン

setEffShake(  spep_4+41,  ctdogon1,  15,  10);

setEffScaleKey(  spep_4+41,  ctdogon1,  6.0,  6.0);
setEffMoveKey(  spep_4+41,  ctdogon1,  0,  320);
setEffRotateKey(  spep_4+41,  ctdogon1,  -10);
setEffAlphaKey(  spep_4+41,  ctdogon1,  255);

setEffScaleKey(  spep_4+42,  ctdogon1,  5.0,  5.0);
setEffMoveKey(  spep_4+42,  ctdogon1,  0,  320);
setEffRotateKey(  spep_4+42,  ctdogon1,  -10);
setEffAlphaKey(  spep_4+42,  ctdogon1,  255);

setEffScaleKey(  spep_4+43,  ctdogon1,  4.0,  4.0);
setEffMoveKey(  spep_4+43,  ctdogon1,  0,  320);
setEffRotateKey(  spep_4+43,  ctdogon1,  -10);
setEffAlphaKey(  spep_4+43,  ctdogon1,  255);

setEffScaleKey(  spep_4+56,  ctdogon1,  4.0,  4.0);
setEffMoveKey(  spep_4+56,  ctdogon1,  0,  320);
setEffRotateKey(  spep_4+56,  ctdogon1,  -10);
setEffAlphaKey(  spep_4+56,  ctdogon1,  255);

playSe(  spep_4,  9);  --ダッシュ
playSe(  spep_4+41,  SE_09);  --hit音

ryu2 = entryEffectLife(  spep_4,  914,  56,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_4,  ryu2,  7.0,  1.3);
setEffMoveKey(  spep_4,  ryu2,  0,  -100);
setEffRotateKey(  spep_4,  ryu2,  135);
setEffAlphaKey(  spep_4,  ryu2,  255);
setEffScaleKey(  spep_4+56,  ryu2,  7.0,  1.3);
setEffMoveKey(  spep_4+56,  ryu2,  0,  -100);
setEffRotateKey(  spep_4+56,  ryu2,  135);
setEffAlphaKey(  spep_4+56,  ryu2,  255);

entryFadeBg( spep_4, 0, 60, 0, 0, 0, 0, 255);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+28; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,    0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

setScaleKey(  SP_dodge,  1,  1.3,  1.3);
setMoveKey(  SP_dodge,  1,  175,  200,  0);
setRotateKey(  SP_dodge,  1,  -25);

setScaleKey(  SP_dodge+8,  1,  1.3,  1.3);
setMoveKey(  SP_dodge+8,  1,  175,  200,  0);
setRotateKey(  SP_dodge+8,  1,  -25);

changeAnime(  SP_dodge+9,  1,  100);
setScaleKey(  SP_dodge+9,  1,  1.0,  1.0);
setMoveKey(  SP_dodge+9,  1,  0,  0,  0);
setRotateKey(  SP_dodge+9,  1,  0);

setScaleKey(  SP_dodge+10,  1,  1.0,  1.0);
setMoveKey(  SP_dodge+10,  1,  0,  0,  0);
setRotateKey(  SP_dodge+10,  1,  0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------

-- 敵・回避されなかった場合
setScaleKey(  spep_4+40,  1,  1.3,  1.3);
setMoveKey(  spep_4+40,  1,  0,  0,  0);
setRotateKey(  spep_4+40,  1, -25);

changeAnime(  spep_4+41,  1,  108); --くの字
setShakeChara(  spep_4+41,  1,  15, 20);

setScaleKey(  spep_4+41,  1,  1.3,  1.3);
setMoveKey(  spep_4+41,  1,  -40,  -50,  0);
setRotateKey(  spep_4+41,  1,  -25);

setScaleKey(  spep_4+56,  1,  1.3,  1.3);
setMoveKey(  spep_4+56,  1,  -40,  -50,  0);
setRotateKey(  spep_4+56,  1,  -25);




------------------------------------------------------
-- 突き抜け(50F)
------------------------------------------------------

spep_5 = spep_4+56;

--playSe(  spep_5,  1018);

ryu3 = entryEffectLife(  spep_5,  914,  40,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_5,  ryu3,  7.0,  1.3);
setEffMoveKey(  spep_5,  ryu3,  0,  -100);
setEffRotateKey(  spep_5,  ryu3,  135);
setEffAlphaKey(  spep_5,  ryu3,  255);
setEffScaleKey(  spep_5+40,  ryu3,  7.0,  1.3);
setEffMoveKey(  spep_5+40,  ryu3,  0,  -100);
setEffRotateKey(  spep_5+40,  ryu3,  135);
setEffAlphaKey(  spep_5+40,  ryu3,  255);

--書き文字エントリー
ctdogon2 = entryEffectLife(  spep_5,  10018,  30,  0x100,  -1,  0,  0,  0);

setEffShake(  spep_5,  ctdogon2,  28,  10);

setEffScaleKey(  spep_5,  ctdogon2,  4.0,  4.0);
setEffMoveKey(  spep_5,  ctdogon2,  0,  310);
setEffRotateKey(  spep_5,  ctdogon2,  -10);
setEffAlphaKey(  spep_5,  ctdogon2,  255);

setEffScaleKey(  spep_5+22,  ctdogon2,  4.0,  4.0);
setEffMoveKey(  spep_5+22,  ctdogon2,  0,  310);
setEffRotateKey(  spep_5+22,  ctdogon2,  -10);
setEffAlphaKey(  spep_5+22,  ctdogon2,  255);

setEffScaleKey(  spep_5+30,  ctdogon2,  4.0,  4.0);
setEffMoveKey(  spep_5+30,  ctdogon2,  0,  310);
setEffRotateKey(  spep_5+30,  ctdogon2,  -10);
setEffAlphaKey(  spep_5+30,  ctdogon2,  0);


tsuki_f = entryEffectLife(  spep_5,  SP_04,  40,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_5,  tsuki_f,  1.0,  1.0);
setEffMoveKey(  spep_5,  tsuki_f,  0,  0);
setEffRotateKey(  spep_5,  tsuki_f,  0);
setEffAlphaKey(  spep_5,  tsuki_f,  255);
setEffScaleKey(  spep_5+40,  tsuki_f,  1.0,  1.0);
setEffMoveKey(  spep_5+40,  tsuki_f,  0,  0);
setEffRotateKey(  spep_5+40,  tsuki_f,  0);
setEffAlphaKey(  spep_5+40,  tsuki_f,  255);

tsuki_b = entryEffectLife(  spep_5,  SP_09,  40,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_5,  tsuki_b,  1.0,  1.0);
setEffMoveKey(  spep_5,  tsuki_b,  0,  0);
setEffRotateKey(  spep_5,  tsuki_b,  0);
setEffAlphaKey(  spep_5,  tsuki_b,  255);
setEffScaleKey(  spep_5+40,  tsuki_b,  1.0,  1.0);
setEffMoveKey(  spep_5+40,  tsuki_b,  0,  0);
setEffRotateKey(  spep_5+40,  tsuki_b,  0);
setEffAlphaKey(  spep_5+40,  tsuki_b,  255);

--敵
changeAnime(  spep_5,  1,  108);
setShakeChara(  spep_5,  1,  40, 20);

setScaleKey(  spep_5,  1,  1.3,  1.3);
setMoveKey(  spep_5,  1,  -40,  -50,  0);
setRotateKey(  spep_5,  1,  -25);

setScaleKey(  spep_5+28,  1,  1.3,  1.3);
setMoveKey(  spep_5+28,  1,  -40,  -50,  0);
setRotateKey(  spep_5+28,  1,  -25);

setScaleKey(  spep_5+32,  1,  1.3,  1.3);
setMoveKey(  spep_5+32,  1,  -400,  -500,  0);
setRotateKey(  spep_5+32,  1,  -25);

setScaleKey(  spep_5+38,  1,  1.3,  1.3);
setMoveKey(  spep_5+38,  1,  -600,  -700,  0);
setRotateKey(  spep_5+38,  1,  -25);


entryFade( spep_5+32, 3, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryFadeBg( spep_5, 0, 40, 0, 0, 0, 0, 255);          -- 黒　背景


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6=spep_5+40;


setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1.0, 1.0);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
--setShake(spep_6+7,6,15);
--setShake(spep_6+13,15,10);

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

playSe( spep_6+3, SE_11);
shuchusen4 = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_6+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6+15,  shuchusenkuro,  1.0,  1.0);
setEffMoveKey(  spep_6+15,  shuchusenkuro,  0,  0);
setEffRotateKey(  spep_6+15,  shuchusenkuro,  0);
setEffAlphaKey(  spep_6+15,  shuchusenkuro,  255);
setEffScaleKey(  spep_6+135,  shuchusenkuro,  1.0,  1.0);
setEffMoveKey(  spep_6+135,  shuchusenkuro,  0,  0);
setEffRotateKey(  spep_6+135,  shuchusenkuro,  0);
setEffAlphaKey(  spep_6+135,  shuchusenkuro,  255);


-- ダメージ表示
dealDamage(spep_6);
--entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+100);

end

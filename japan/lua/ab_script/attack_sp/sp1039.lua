
print ("[lua]sp1039");

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
SE_11 = 1044; --割れる音

SE_12 = 09;

tyo = -30;
tyo2 = -40;

SP_01 = 150075; --悟空が横に飛んで行く時に纏うオーラ
SP_02 = 150076; --悟空が横に飛んで行く時に纏うオーラ
SP_03 = 150077; --龍拳爆発
SP_04 = 150078; --龍が敵目掛けて飛んでいき、太い光線に変化
SP_05 = 150079; --背景にほとばしる火柱エフェクト、最後はbattle_150004/ef_006へ繋ぐ
SP_06 = 1561; --宇宙からの俯瞰視点で黄色い光弾が昇る

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                  -- かめはめ波溜め
setScaleKey(   0,   0, 1.5, 1.5);
--setRotateKey( 0, 0 , -30);

setMoveKey(   0,   0,  -550, -650,  0);

setMoveKey(  20,   0,  0, 0,  0);
setMoveKey(  90,   0,  0, 0,  0);
setMoveKey(  100,   0,  -150, -100,  0);
setMoveKey(  125,   0,  550, 550,  0);

playSe( 0, 1036);
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);
playSe( 100, 1018);

--playSe( 0, SE_03); --かめはめ波
--playSe( 25, SE_03); 
--playSe( 50, SE_03);
--playSe( 75, SE_03); 
--playSe( 100, SE_03);  


speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了 87
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 125, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   SP_01, 125, 0x40+0x100,  0,  300,  -70,  -180); -- オーラ
setEffScaleKey( 0, aura, 1.7, 1.7);
setEffRotateKey( 0, aura, -10);

setShakeChara( 0, 0, 125, 10);
setShake( 0, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 145, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 135, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 125, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

sen6 = entryEffectLife( 0, 921, 125, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 0, sen6, 130);
setEffScaleKey( 0, sen6, 1.7, 1.7);


entryFadeBg( 0, 0, 131, 0, 0, 0, 0, 190);       -- ベース暗め　背景

setScaleKey(   126,   0, 1.5, 1.5);
--setRotateKey( 126, 0 , -30);
setRotateKey( 127, 0 , 0);

spep_2 = 132;
setScaleKey(  spep_2,  0,  1.5,  1.5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);


if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end
entryFade( spep_2+85, 3, 2+2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  0.8,  0.8);
setMoveKey(  spep_3,    0,  0,  550,  -180);

setMoveKey(  spep_3+60,    0,   0,  -650,   120);
setScaleKey(  spep_3+60,  0,  1,  1);

sen2 = entryEffectLife( spep_3, 923, 175, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -180);
setEffScaleKey( spep_3, sen2, 1.2, 1.2);

aura23=entryEffectLife( spep_3, SP_02,  61 , 0x40+0x80,  0,  300,  400,  -250);  --オーラ
setEffScaleKey( spep_3, aura23, 1, 1);
setEffMoveKey( spep_3+61,  aura23,  0, 0,   0);
--setEffRotateKey( 0, aura23, -180);

setDisp( spep_3+61 , 0 , 0 );

bom1=entryEffect( spep_3+61, SP_03,  0,  -1,  0,  0,  0);  --爆発→ドラゴン
--setEffScaleKey( spep_3+61, bom1, 3, 3);

setShakeChara( spep_3+10, 0, 60, 30);

playSe( spep_3, 1021);


-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 175, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


shuchusen = entryEffectLife( spep_3, 906, 170, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+65, 10012, 120, 0, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_3+65, ct, 32, 15);
setEffAlphaKey(spep_3+65, ct, 255);
setEffAlphaKey(spep_3+135, ct, 255);
setEffAlphaKey(spep_3+145, ct, 0);
setEffScaleKey(spep_3+65, ct, 0.0, 0.0);
setEffScaleKey(spep_3+70, ct, 1.8, 1.8);
setEffScaleKey(spep_3+135, ct, 1.8, 1.8);
setEffScaleKey(spep_3+145, ct, 6.5, 6.5);

playSe( spep_3+60, 1024); --爆発音

entryFade( spep_3+170, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+175; --175

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 100);                        -- 待機正面向き
setRotateKey( spep_4, 1, -5); 
setMoveKey(  spep_4,  1,  550,  300,   0);
--setMoveKey(  spep_4+15,  1,  150,  0,   0);
setMoveKey(  spep_4+55,  1,  150,  50,   0);

setDisp( spep_4+110, 1, 0);
setScaleKey( spep_4, 1,  1.8, 1.8);
setScaleKey( spep_4+100, 1,  1.8, 1.8);

--setMoveKey(  spep_4+30,    1,   80,  150,   0);
--setScaleKey(  spep_4+30,   1,   1.6,  1.6);



--entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( spep_4+50, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 166, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, -40);
setEffScaleKey( spep_4-1, ryusen, 1.7, 1.7);

hibasira = entryEffect( spep_4+35, SP_05,   0x80, -1,  0,  0,  -650);   -- 火柱
setEffScaleKey( spep_4+35, hibasira, 1.3, 1.3);
playSe( spep_4+35, 1014);
playSe( spep_4+50, 1014);
playSe( spep_4+65, 1014);

kamehame_beam2 = entryEffect( spep_4+85, SP_04,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+50, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+50, 1, 0);  -- ダメージ振動等

--playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_4+85, 1, 108);
setMoveKey(  spep_4+85, 1,  120,    -150,  0);
setMoveKey(  spep_4+99, 1,  400,    0,  0);
setScaleKey( spep_4+85, 1,  1.6, 1.6);
setScaleKey( spep_4+88, 1,  1.5, 1.5);
setScaleKey( spep_4+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 165, 20);

entryFadeBg( spep_4, 0, 165, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_4+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+85, 10014, 80, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4+85, ct, 99, 25);
setEffScaleKey( spep_4+85, ct, 2.8, 2.8);
setEffRotateKey(spep_4+85, ct, 20);
setEffAlphaKey(spep_4+85, ct, 255);
setEffAlphaKey(spep_4+150, ct, 255);
setEffAlphaKey(spep_4+160, ct, 0);

--playSe( spep_4+48, 1024);

entryFade( spep_4+160, 5, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+165, 1, 0);

removeAllEffect(spep_4+165);

spep_5=spep_4+170 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 470; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_4+85, SE_06);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_5, SP_06, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

else


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                  -- かめはめ波溜め
setScaleKey(   0,   0, 1.5, 1.5);
--setRotateKey( 0, 0 , -30);

setMoveKey(   0,   0,  -550, -650,  0);

setMoveKey(  20,   0,  0, 0,  0);
setMoveKey(  90,   0,  0, 0,  0);
setMoveKey(  100,   0,  -150, -100,  0);
setMoveKey(  125,   0,  550, 550,  0);

playSe( 0, 1036);
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);
playSe( 100, 1018);

--playSe( 0, SE_03); --かめはめ波
--playSe( 25, SE_03); 
--playSe( 50, SE_03);
--playSe( 75, SE_03); 
--playSe( 100, SE_03);  

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 145, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 135, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了 87
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 125, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   SP_01, 125, 0x40+0x100,  0,  300,  -170,  -180); -- オーラ
setEffScaleKey( 0, aura, 1.7, 1.7);
setEffRotateKey( 0, aura, -10);

setShakeChara( 0, 0, 125, 10);
setShake( 0, 125, 15);

shuchusen5 = entryEffectLife( 0, 906, 125, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

sen6 = entryEffectLife( 0, 921, 125, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 0, sen6, 130);
setEffScaleKey( 0, sen6, 1.7, 1.7);


entryFadeBg( 0, 0, 131, 0, 0, 0, 0, 190);       -- ベース暗め　背景

setScaleKey(   126,   0, 1.5, 1.5);
--setRotateKey( 126, 0 , -30);
setRotateKey( 127, 0 , 0);

spep_2 = 132;
setScaleKey(  spep_2,  0,  1.5,  1.5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);
--[[
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
setEffScaleKey( spep_2, speff, 1.0, 1.0);   -- 技名テクスチャ差し替え
--setEffScaleKey( spep_2, speff, -1.0, 1.0);

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);
setEffScaleKey( spep_2, speff, 1.0, 1.0);   -- 技名テクスチャ差し替え
--setEffScaleKey( spep_2, speff, -1.0, 1.0);
end

entryFade( spep_2+85, 3, 2 +2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  0.8,  0.8);
setMoveKey(  spep_3,    0,  0,  550,  -180);

setMoveKey(  spep_3+60,    0,   0,  -650,   120);
setScaleKey(  spep_3+60,  0,  1,  1);

sen2 = entryEffectLife( spep_3, 923, 175, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -180);
setEffScaleKey( spep_3, sen2, 1.2, 1.2);

aura23=entryEffectLife( spep_3, SP_02,  61 , 0x40+0x80,  0,  300,  -370,  -360);  --オーラ
setEffScaleKey( spep_3, aura23, 1, 1);
setEffMoveKey( spep_3+61,  aura23,  0, 0,   0);
--setEffRotateKey( 0, aura23, -180);

setDisp( spep_3+61 , 0 , 0 );

bom1=entryEffect( spep_3+61, SP_03,  0,  -1,  0,  0,  0);  --爆発→ドラゴン
setEffMoveKey( spep_3+61,  aura23,  -1, 0,   0);
--setEffScaleKey( spep_3+61, bom1, 3, 3);

setShakeChara( spep_3+10, 0, 60, 30);

playSe( spep_3, 1021);


-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 175, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


shuchusen = entryEffectLife( spep_3, 906, 170, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+65, 10012, 120, 0, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_3+65, ct, 32, 15);
setEffAlphaKey(spep_3+65, ct, 255);
setEffAlphaKey(spep_3+140, ct, 255);
setEffAlphaKey(spep_3+150, ct, 0);
setEffScaleKey(spep_3+65, ct, 0.0, 0.0);
setEffScaleKey(spep_3+70, ct, 1.7, 1.7);
setEffScaleKey(spep_3+140, ct, 1.7, 1.7);
setEffScaleKey(spep_3+150, ct, 6.5, 6.5);

playSe( spep_3+60, 1024); --爆発音

entryFade( spep_3+170, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+175; --175

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 100);                        -- 待機正面向き
setRotateKey( spep_4, 1, -5); 
setMoveKey(  spep_4,  1,  550,  300,   0);
--setMoveKey(  spep_4+15,  1,  150,  0,   0);
setMoveKey(  spep_4+55,  1,  150,  50,   0);

setDisp( spep_4+110, 1, 0);
setScaleKey( spep_4, 1,  1.8, 1.8);
setScaleKey( spep_4+100, 1,  1.8, 1.8);

--setMoveKey(  spep_4+30,    1,   80,  150,   0);
--setScaleKey(  spep_4+30,   1,   1.6,  1.6);

--entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( spep_4+50, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 166, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, -40);
setEffScaleKey( spep_4-1, ryusen, 1.7, 1.7);

hibasira = entryEffect( spep_4+35, SP_05,   0x80, -1,  0,  0,  -650);   -- 火柱
setEffScaleKey( spep_4+35, hibasira, 1.3, 1.3);
playSe( spep_4+35, 1014);
playSe( spep_4+50, 1014);
playSe( spep_4+65, 1014);

kamehame_beam2 = entryEffect( spep_4+85, SP_04,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+50, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+50, 1, 0);  -- ダメージ振動等

--playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_4+85, 1, 108);
setMoveKey(  spep_4+85, 1,  120,    -150,  0);
setMoveKey(  spep_4+99, 1,  400,    0,  0);
setScaleKey( spep_4+85, 1,  1.6, 1.6);
setScaleKey( spep_4+88, 1,  1.5, 1.5);
setScaleKey( spep_4+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 165, 20);

entryFadeBg( spep_4, 0, 165, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_4+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+85, 10014, 80, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4+85, ct, 99, 25);
setEffScaleKey( spep_4+85, ct, 2.8, 2.8);
setEffRotateKey(spep_4+85, ct, -10);
setEffAlphaKey(spep_4+85, ct, 255);
setEffAlphaKey(spep_4+150, ct, 255);
setEffAlphaKey(spep_4+160, ct, 0);


--playSe( spep_4+48, 1024);

entryFade( spep_4+160, 5, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+165, 1, 0);

removeAllEffect(spep_4+165);

spep_5=spep_4+170 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 470; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_4+85, SE_06);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_5, SP_06, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

end

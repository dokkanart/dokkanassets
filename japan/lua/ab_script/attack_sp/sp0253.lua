--ゴクウブラック_ブラックパワーボール

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

SP_01 = 102152; --溜め
SP_02 = 102153;--突撃
SP_03 = 102154;--発射
SP_04 = 102155;--迫る
SP_05 = 190003;--ギャン

SP_02e = 102156;

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI(0, 0);
setMoveKey(   0,   0,   40, 0,   0);
setMoveKey(   1,   0,   40, 0,   0);
setMoveKey(   2,   0,   40, 0,   0);
setMoveKey(   3,   0,   40, 0,   0);
setMoveKey(   4,   0,   40, 0,   0);
setMoveKey(   5,   0,   40, 0,   0);
setMoveKey(   6,   0,   40, 0,   0);

--kuro = entryEffect(  0,   356,   0x40+0x100,     0,  0,  0,  0);

--playSe( 0, SE_03); --かめはめ波
--playSe( 25, SE_03); 
playSe( 50, SE_04);
--playSe( 75, SE_03); 
--playSe( 100, SE_03);  

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 20, SE_04);

--kame_hand = entryEffect( 0, SP_01, 0x100, -1, 0,  0, 0);   -- 手のカメハメ波部 50end
kame_hand = entryEffectLife( 0, SP_01, 98,0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  0,  kame_hand,  0,  0,   0);

aura = entryEffectLife(  0,   356, 99, 0x40+0x80,  0,  300,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 6.6, 6.6);
setEffScaleKey( 30, aura, 2.2, 2.2);
setEffAlphaKey(0, aura, 255);
setEffMoveKey(  0,  aura,  -20,  -800,   0);
setEffMoveKey(  30,  aura,  -20,  -300,   0);

setEffScaleKey( 0, kame_hand, 4.5, 4.5);
setEffScaleKey( 30, kame_hand, 1.5, 1.5);

entryFade( 94, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setScaleKey(   117,   0, 2.5, 2.5);
--setEffScaleKey( 117, kame_hand, 0.6, 0.6);
setEffAlphaKey(98, aura, 255);

-- ** エフェクト等 ** --
--setShakeChara( 0, 0, 117, 8);
setShake( 0, 94, 15);
setEffShake( 0, kame_hand, 94, 8);

-- 書き文字エントリー
ct = entryEffectLife( 30 + 14, 10008, 64 -14, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30 +14, ct, 64 -14, 8);
setEffScaleKey(30 +14, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 94, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 94, shuchusen5, 1.0, 1.0);

entryFadeBg( 0, 0, 97, 0, 20, 20, 20, 150);       -- ベース暗め　背景

spep_2 = 101;
setEffMoveKey(  spep_2,  kame_hand,  0,  0,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setMoveKey(   spep_2,   0,    40, 0,   0);

--[[playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

--極限Z対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep_2+82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_1=spep_2+85+5; --211 260

--214
------------------------------------------------------
-- ピッチャー振りかぶって…
------------------------------------------------------
--setDisp( 0, 0, 0);
setMoveKey(   spep_1,   0,    0, 0,   0);

--setEffRotateKey(spep_1, aura, -30);

sen2 = entryEffectLife( spep_1, 921, 81, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 150);
setEffScaleKey( spep_1, sen2, 1.6, 1.6);

playSe( spep_1+10, 1018);

--kame_hand = entryEffect( spep_1, SP_02, 0x40+0x100, 0,  300,  0,  0);
kame_hand = entryEffect( spep_1, SP_02, 0x40+0x100, 0,  0,  0,  0);
setEffAlphaKey(spep_1, kame_hand, 255);
setEffScaleKey( spep_1, kame_hand, 0.8, 0.8);
--setEffScaleKey( spep_1+80, kame_hand, 0.5, 0.5);


aura = entryEffectLife(  spep_1,   356, 122, 0x40+0x80,  0,  300,  50,  -230); -- オーラ
setEffScaleKey( spep_1+3, aura, 2.8, 2.8);
setEffScaleKey( spep_1+8, aura, 3.0, 3.0);
setEffScaleKey( spep_1+9, aura, 3.0, 3.0);
setEffScaleKey( spep_1+39, aura, 2.8, 2.8);
setEffScaleKey( spep_1+40, aura, 2.8, 2.8);
setEffScaleKey( spep_1+59, aura, 3.0, 3.0);
setEffScaleKey( spep_1+60, aura, 3.0, 3.0);
setEffScaleKey( spep_1+62, aura, 3.2, 3.2);
setEffScaleKey( spep_1+64, aura, 4.4, 4.4);
setEffScaleKey( spep_1+66, aura, 4.8, 4.8);
--setEffScaleKey( spep_1, aura, 2.2, 2.2);
setEffAlphaKey(spep_1, aura, 255);
setEffMoveKey(  spep_1+2,  aura,  50,  -230,   0);
setEffMoveKey(  spep_1+8,  aura,  150,  -150,   0);
setEffMoveKey(  spep_1+9,  aura,  150,  -150,   0);
setEffMoveKey(  spep_1+39,  aura,  50,  -230,   0);
setEffMoveKey(  spep_1+40,  aura,  50,  -230,   0);
setEffMoveKey(  spep_1+59,  aura,  170,  -170,   0);
setEffMoveKey(  spep_1+64,  aura,  300,  -250,   0);
setEffMoveKey(  spep_1+66,  aura,  600,  -300,   0);
--setEffMoveKey(  spep_1+5,  aura,  640,  300,   0);
--setEffMoveKey(  spep_1+8,  aura,  630,  300,   0);
--setEffMoveKey(  spep_1+35,  aura,  464,  350,   0);
--setEffMoveKey(  spep_1+50,  aura,  520,  300,   0);
--setEffMoveKey(  spep_1+60,  aura,  530,  300,   0);

setEffRotateKey(spep_1, aura, -15);
--setEffMoveKey(  spep_1,  aura,  -20,  -300,   0);


--setShakeChara( spep_1, 0, 70, 15);
setShake( spep_1, 60, 10);
--setEffShake( spep_1, kame_hand, 70, 15);
--setEffShake( spep_1, aura, 70, 15);

entryFadeBg( spep_1, 0, 82, 0, 20, 20, 20, 150);       -- ベース暗め　背景
setMoveKey(   spep_1+80,   0,    0, 0,   0);

setEffRotateKey(spep_1+80, aura, -15);
setEffMoveKey(  spep_1+100,  aura,  1700,  400,   0);
setEffScaleKey( spep_1+150, aura, 5.0, 5.0);

--entryFade( spep_1+60, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_1+80+2; --211 260

--setEffScaleKey( spep_3-1, aura, 5.0, 5.0);
--setEffMoveKey(  spep_1+80,  aura,  1700,  400,   0);

------------------------------------------------------
-- 投げた！
------------------------------------------------------
setDisp( spep_3, 0, 1);

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  1.0, 1.0);

setMoveKey(  spep_3-1,    0,   1000,  100,  160);

aura = entryEffectLife(  spep_3,   356, 31, 0x40+0x100,  0,  300,  80,  -380);
setEffScaleKey( spep_3, aura, 4.2, 4.0);
setEffRotateKey(spep_3, aura, -15);

sen2 = entryEffectLife( spep_3-1, 921, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3-1, sen2, 30);
setEffScaleKey( spep_3-1, sen2, 1.6, 1.6);
setEffAlphaKey(spep_3-1, sen2, 0);
setEffAlphaKey(spep_3, sen2, 255);

setShakeChara( spep_3, 0, 34, 30);
setShake( spep_3, 60, 15);

kamehame_beam_st = entryEffectLife( spep_3, SP_03, 61, 0x40+0x80,  0,  300,  0,  270);   -- 伸びるかめはめ波

playSe( spep_3, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -700,  100,   -100); --600
setMoveKey(  spep_3+60,    0,   -1100,  200,   -130); --1000
setDisp( spep_3+30, 0, 0);

-- 相手が画面に現れる

setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  0,   0);
setMoveKey(  spep_3+60,    1,  170,  -100,   -20);

--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 20, 20, 20, 150);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);

entryFade( spep_3+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+65; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   1.6,  1.6);
setScaleKey(  spep_4+75,   1,   1.6,  1.6);


playSe( spep_4+20, SE_06);

entryFade( spep_4+35, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+41, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

playSe( spep_4+60, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0, 10, 10, 10, 155);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+35, ct, 0);

kamehame_beam = entryEffect( spep_4+40, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+55, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+55, ct, 99, 20);
setEffScaleKey( spep_4+55, ct, 0.1, 0.1);
setEffScaleKey( spep_4+60, ct, 2.4, 2.4);
setEffScaleKey( spep_4+85, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+55, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+85, ct, 0);

entryFade( spep_4+77, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+83, 1, 0);

removeAllEffect(spep_4+85);

spep_5=spep_4+77+10; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 365; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5, 1550, 0,  -1,  0,  0,  0);  

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setMoveKey(   0,   0,    -50, 0,   0);
setMoveKey(   1,   0,    -50, 0,   0);
setMoveKey(   101,   0,    -50, 0,   0);

--kuro = entryEffect(  0,   356,   0x40+0x100,     0,  0,  0,  0);

--playSe( 0, SE_03); --かめはめ波
--playSe( 25, SE_03); 
playSe( 50, SE_04);
--playSe( 75, SE_03); 
--playSe( 100, SE_03);  

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 20, SE_04);

--kame_hand = entryEffect( 0, SP_01, 0x100, -1, 0,  0, 0);   -- 手のカメハメ波部 50end
kame_hand = entryEffectLife( 0, SP_01, 98,0x40+0x100,  0,  300,  -40,  0);   -- 伸びるかめはめ波
setEffMoveKey(  0,  kame_hand,  0,  0,   0);

aura = entryEffectLife(  0,   356, 99, 0x80,  0,  300,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 6.6, 6.6);
setEffScaleKey( 30, aura, 2.2, 2.2);
setEffAlphaKey(0, aura, 255);
setEffMoveKey(  0,  aura,  20,  -800,   0);
setEffMoveKey(  30,  aura,  20,  -300,   0);

setEffScaleKey( 0, kame_hand, -4.5, 4.5);
setEffScaleKey( 30, kame_hand, -1.5, 1.5);

entryFade( 94, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setScaleKey(   117,   0, 2.5, 2.5);
--setEffScaleKey( 117, kame_hand, 0.6, 0.6);
setEffAlphaKey(98, aura, 255);

-- ** エフェクト等 ** --
--setShakeChara( 0, 0, 117, 8);
setShake( 0, 94, 15);
setEffShake( 0, kame_hand, 94, 8);

-- 書き文字エントリー
ct = entryEffectLife( 30 +14, 10008, 64 -14, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30 +14, ct, 64 -14, 8);
setEffScaleKey(30 +14, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 94, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 94, shuchusen5, 1.0, 1.0);

entryFadeBg( 0, 0, 97, 0, 20, 20, 20, 150);       -- ベース暗め　背景

spep_2 = 101;
setEffMoveKey(  spep_2,  kame_hand,  0,  0,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setMoveKey(   spep_2,   0,    40, 0,   0);

--[[playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

--極限Z対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep_2+82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_1=spep_2+85+5; --211 260

--214
------------------------------------------------------
-- ピッチャー振りかぶって…
------------------------------------------------------
setDisp( 0, 0, 0);
setMoveKey(   spep_1,   0,    0, 0,   0);

--setEffRotateKey(spep_1, aura, -30);

sen2 = entryEffectLife( spep_1, 921, 81, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 150);
setEffScaleKey( spep_1, sen2, 1.6, 1.6);

playSe( spep_1+10, 1018);

--kame_hand = entryEffect( spep_1, SP_02, 0x40+0x100, 0,  300,  0,  0);
kame_hand = entryEffect( spep_1, SP_02e, 0x40+0x100, 0,  0,  0,  0);
setEffAlphaKey(spep_1, kame_hand, 255);
setEffScaleKey( spep_1, kame_hand, 0.8, 0.8);
--setEffScaleKey( spep_1+80, kame_hand, 0.5, 0.5);


aura = entryEffectLife(  spep_1,   356, 122, 0x40+0x80,  0,  300,  50,  -230); -- オーラ
setEffScaleKey( spep_1+3, aura, -2.8, 2.8);
setEffScaleKey( spep_1+8, aura, -3.0, 3.0);
setEffScaleKey( spep_1+9, aura, -3.0, 3.0);
setEffScaleKey( spep_1+39, aura, -2.8, 2.8);
setEffScaleKey( spep_1+40, aura, -2.8, 2.8);
setEffScaleKey( spep_1+59, aura, -3.0, 3.0);
setEffScaleKey( spep_1+60, aura, -3.0, 3.0);
setEffScaleKey( spep_1+62, aura, -3.2, 3.2);
setEffScaleKey( spep_1+64, aura, -4.4, 4.4);
setEffScaleKey( spep_1+66, aura, -4.8, 4.8);
--setEffScaleKey( spep_1, aura, 2.2, 2.2);
setEffAlphaKey(spep_1, aura, 255);
setEffMoveKey(  spep_1+2,  aura,  -150,  -230,   0);
setEffMoveKey(  spep_1+8,  aura,  50,  -180,   0);
setEffMoveKey(  spep_1+9,  aura,  50,  -180,   0);
setEffMoveKey(  spep_1+39,  aura,  -120,  -260,   0);
setEffMoveKey(  spep_1+40,  aura,  -120,  -260,   0);
setEffMoveKey(  spep_1+59,  aura,  20,  -200,   0);
setEffMoveKey(  spep_1+64,  aura,  150,  -280,   0);
setEffMoveKey(  spep_1+66,  aura,  450,  -330,   0);
--setEffMoveKey(  spep_1+5,  aura,  640,  300,   0);
--setEffMoveKey(  spep_1+8,  aura,  630,  300,   0);
--setEffMoveKey(  spep_1+35,  aura,  464,  350,   0);
--setEffMoveKey(  spep_1+50,  aura,  520,  300,   0);
--setEffMoveKey(  spep_1+60,  aura,  530,  300,   0);

setEffRotateKey(spep_1, aura, 15);
--setEffMoveKey(  spep_1,  aura,  -20,  -300,   0);


--setShakeChara( spep_1, 0, 70, 15);
setShake( spep_1, 60, 10);
--setEffShake( spep_1, kame_hand, 70, 15);
--setEffShake( spep_1, aura, 70, 15);

entryFadeBg( spep_1, 0, 82, 0, 20, 20, 20, 150);       -- ベース暗め　背景
setMoveKey(   spep_1+80,   0,    0, 0,   0);

setEffRotateKey(spep_1+80, aura, 15);
setEffMoveKey(  spep_1+100,  aura,  1700,  400,   0);
setEffScaleKey( spep_1+150, aura, -5.0, 5.0);

--entryFade( spep_1+60, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_1+80+2; --211 260

--setEffScaleKey( spep_3-1, aura, 5.0, 5.0);
--setEffMoveKey(  spep_1+80,  aura,  1700,  400,   0);

------------------------------------------------------
-- 投げた！
------------------------------------------------------
setDisp( spep_3, 0, 1);

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  1.0, 1.0);

setMoveKey(  spep_3-1,    0,   1000,  100,  160);

aura = entryEffectLife(  spep_3,   356, 31, 0x40+0x100,  0,  150, 0,  -400);
setEffScaleKey( spep_3, aura, 4.2, 4.0);
setEffRotateKey(spep_3, aura, 20);

sen2 = entryEffectLife( spep_3-1, 921, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3-1, sen2, 30);
setEffScaleKey( spep_3-1, sen2, 1.6, 1.6);
setEffAlphaKey(spep_3-1, sen2, 0);
setEffAlphaKey(spep_3, sen2, 255);

setShakeChara( spep_3, 0, 34, 30);
setShake( spep_3, 60, 15);

kamehame_beam_st = entryEffectLife( spep_3, SP_03, 61, 0x40+0x80,  0,  300,  0,  270);   -- 伸びるかめはめ波

playSe( spep_3, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -700,  100,   -100); --600
setMoveKey(  spep_3+60,    0,   -1100,  200,   -130); --1000
setDisp( spep_3+30, 0, 0);

-- 相手が画面に現れる

setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  0,   0);
setMoveKey(  spep_3+60,    1,  170,  -100,   -20);

--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 20, 20, 20, 150);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);

entryFade( spep_3+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+65; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   1.6,  1.6);
setScaleKey(  spep_4+75,   1,   1.6,  1.6);


playSe( spep_4+20, SE_06);

entryFade( spep_4+35, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+41, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

playSe( spep_4+60, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0, 10, 10, 10, 155);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+35, ct, 0);

kamehame_beam = entryEffect( spep_4+40, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+55, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+55, ct, 99, 20);
setEffScaleKey( spep_4+55, ct, 0.1, 0.1);
setEffScaleKey( spep_4+60, ct, 2.4, 2.4);
setEffScaleKey( spep_4+85, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+55, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+85, ct, 0);

entryFade( spep_4+77, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+83, 1, 0);

removeAllEffect(spep_4+85);

spep_5=spep_4+77+10; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 365; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5, 1550, 0,  -1,  0,  0,  0);  

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

end
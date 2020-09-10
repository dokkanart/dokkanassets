
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
SE_11 = 1015; --気弾発射
SE_12 = 1018; --高速ダッシュ
SE_13 = 1020; --気弾溜め
SE_14 = 1054; --割れる音

--味方側
SP_01 = 152252;--気溜め
SP_02 = 152253;--急上昇
SP_03 = 152254;--発射
SP_04 = 152251;--気弾迫る

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000,   0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   0,    0, -2000,   0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000,   0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   1, 0);
setRotateKey(   6,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(80F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

--背景暗め
entryFadeBg( spep_0+26, 5, 50, 0, 10, 10, 10, 180);          -- ベース暗め　背景

charge = entryEffect( spep_0, SP_01, 0x100, -1, 0, 0, 0);   -- ef_001気溜め

setEffScaleKey(  spep_0,  charge,  1.0, 1.0);
setEffMoveKey(  spep_0,  charge,  0,  0);
setEffRotateKey(  spep_0,  charge,  0);
setEffAlphaKey(  spep_0,  charge,  255);

setEffScaleKey(  spep_0+80,  charge,  1.0, 1.0);
setEffMoveKey(  spep_0+80,  charge,  0,  0);
setEffRotateKey(  spep_0+80,  charge,  0);
setEffAlphaKey(  spep_0+80,  charge,  255);

--気溜めSE
playSe( spep_0+26, SE_01);

shuchusen1 = entryEffectLife( spep_0+26, 906, 54, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_0+26,  shuchusen1,  1.0, 1.0);
setEffMoveKey(  spep_0+26,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0+26,  shuchusen1,  0);
setEffAlphaKey(  spep_0+26,  shuchusen1,  255);

setEffScaleKey(  spep_0+80,  shuchusen1,  1.0, 1.0);
setEffMoveKey(  spep_0+80,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0+80,  shuchusen1,  0);
setEffAlphaKey(  spep_0+80,  shuchusen1,  255);

spep_1 = spep_0 + 80;

--白フェードが入る--
entryFade( spep_1-10, 5, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 急上昇(122F)
------------------------------------------------------

--背景暗め→黒
entryFadeBg( spep_1, 0, 122, 0, 0, 0, 0, 190);          -- ベース暗め　背景
entryFadeBg( spep_1+20, 20, 92, 0, 0, 0, 0, 0);          -- ベース暗め　背景

--顔カットイン&文字
speff = entryEffect( spep_1+16,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect( spep_1+16,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff1, 4, 5); 

--カットインSE
playSe( spep_1+30, SE_04);
--上昇SE
--playSe( spep_1, SE_12);

ctGo = entryEffectLife( spep_1+30, 190006, 72, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_1+30, ctGo, 89, 8);

setEffScaleKey( spep_1+30, ctGo, 0.7, 0.7);
setEffMoveKey(  spep_1+30,  ctGo, 50, 490);
setEffRotateKey(  spep_1+30,  ctGo,  0);
setEffAlphaKey(  spep_1+30,  ctGo,  255);

setEffScaleKey( spep_1+102, ctGo, 0.7, 0.7);
setEffMoveKey(  spep_1+102,  ctGo, 50, 490);
setEffRotateKey(  spep_1+102,  ctGo,  0);
setEffAlphaKey(  spep_1+102,  ctGo,  255);

--急上昇
jump  = entryEffect( spep_1,   SP_02,   0x100,     -1,  0,  0,  0);   -- ef_002急上昇
setEffScaleKey(  spep_1,  jump,  1.0, 1.0);
setEffMoveKey(  spep_1,  jump,  0,  0);
setEffRotateKey(  spep_1,  jump,  0);
setEffAlphaKey(  spep_1,  jump,  255);

setEffScaleKey(  spep_1+122,  jump,  1.0, 1.0);
setEffMoveKey(  spep_1+122,  jump,  0,  0);
setEffRotateKey(  spep_1+122,  jump,  0);
setEffAlphaKey(  spep_1+122,  jump,  255);

shuchusen2 = entryEffectLife( spep_1, 906, 122, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.3, 1.3);
setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffRotateKey(  spep_1,  shuchusen2,  0);
setEffAlphaKey( spep_1, shuchusen2, 255);

setEffScaleKey( spep_1+122, shuchusen2, 1.3, 1.3);
setEffMoveKey(  spep_1+122,  shuchusen2,  0,  0);
setEffRotateKey(  spep_1+122,  shuchusen2,  0);
setEffAlphaKey( spep_1+122, shuchusen2, 255);

ryusen = entryEffectLife( spep_1, 914, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_1, ryusen, 1.9, 1.0);
setEffMoveKey(  spep_1,  ryusen,  0,  0);
setEffRotateKey( spep_1, ryusen, -85);
setEffAlphaKey( spep_1, ryusen, 255);

setEffScaleKey( spep_1+90, ryusen, 1.9, 1.0);
setEffMoveKey(  spep_1+90,  ryusen,  0,  0);
setEffRotateKey( spep_1+90, ryusen, -85);
setEffAlphaKey( spep_1+90, ryusen, 255);

spep_2 = spep_1 + 122;

--白フェードが入る--
entryFade( spep_2-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                             -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen3, 1.5, 1.5);
setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
setEffRotateKey( spep_2, shuchusen3, 0);
setEffAlphaKey( spep_2, shuchusen3, 255);

setEffScaleKey( spep_2+90, shuchusen3, 1.5, 1.5);
setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
setEffRotateKey( spep_2+90, shuchusen3, 0);
setEffAlphaKey( spep_2+90, shuchusen3, 255);

playSe( spep_2, SE_05);

spep_3 = spep_2 + 90;

--白フェードが入る--
entryFade( spep_3-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 発射(70F)
------------------------------------------------------

--背景黒
entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0);          -- ベース暗め　背景

--書き文字(ズオッ)
ctZuo = entryEffectLife(  spep_3+46, 10012, 24, 0x100, -1, 0, 0, 0);    -- ズオッ
setEffShake( spep_3+46, ctZuo, 24, 8);

setEffScaleKey( spep_3+46, ctZuo, 0.2, 0.2);
setEffMoveKey(  spep_3+46,  ctZuo, 130, 430);
setEffRotateKey( spep_3+46, ctZuo, 20);
setEffAlphaKey( spep_3+46, ctZuo, 255);

setEffScaleKey( spep_3+48, ctZuo, 2.7, 2.7);

setEffScaleKey( spep_3+70, ctZuo, 2.7, 2.7);
setEffMoveKey(  spep_3+70,  ctZuo, 130, 430);
setEffRotateKey( spep_3+70, ctZuo, 20);
setEffAlphaKey( spep_3+70, ctZuo, 255);

--気弾発射
shoot = entryEffect( spep_3,   SP_03,   0x100,     -1,  0,  0,  0);   -- ef_003発射
setEffScaleKey(  spep_3,  shoot,  1.0, 1.0);
setEffMoveKey(  spep_3,  shoot,  0,  0);
setEffRotateKey(  spep_3,  shoot,  0);
setEffAlphaKey(  spep_3,  shoot,  255);

setEffScaleKey(  spep_3+70,  shoot,  1.0, 1.0);
setEffMoveKey(  spep_3+70,  shoot,  0,  0);
setEffRotateKey(  spep_3+70,  shoot,  0);
setEffAlphaKey(  spep_3+70,  shoot,  255);

playSe( spep_3, SE_13);
playSe( spep_3+20, SE_13);
playSe( spep_3+46, SE_06);

shuchusen4 = entryEffectLife( spep_3, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen4, 1.2, 1.2);
setEffMoveKey(  spep_3,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3,  shuchusen4,  0);
setEffAlphaKey( spep_3, shuchusen4, 255);

setEffScaleKey( spep_3+70, shuchusen4, 1.2, 1.2);
setEffMoveKey(  spep_3+70,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3+70,  shuchusen4,  0);
setEffAlphaKey( spep_3+70, shuchusen4, 255);

ryusen2 = entryEffectLife( spep_3, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_3, ryusen2, 1.9, 1.3);
setEffMoveKey(  spep_3,  ryusen2,  0,  0);
setEffRotateKey( spep_3, ryusen2, 240);
setEffAlphaKey( spep_3, ryusen2, 225);

setEffScaleKey( spep_3+70, ryusen2, 1.9, 1.3);
setEffMoveKey(  spep_3+70,  ryusen2,  0,  0);
setEffRotateKey( spep_3+70, ryusen2, 240);
setEffAlphaKey( spep_3+70, ryusen2, 225);

spep_4 = spep_3 + 70;

--白フェードが入る--
entryFade( spep_4-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 気弾迫る(70F)
------------------------------------------------------

--背景黒
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0);          -- ベース暗め　背景

--敵後ろ姿
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 102);

setShakeChara( spep_4, 1, 70, 20); 

setScaleKey( spep_4, 1, 1.7, 1.7);
setMoveKey( spep_4, 1, 390, -700, 0);
setRotateKey( spep_4, 1, 0);

setMoveKey( spep_4+30, 1, 190, -310, 0);

setScaleKey( spep_4+68, 1, 1.7, 1.7);
setMoveKey( spep_4+68, 1, 160, -280, 0);
setRotateKey( spep_4+68, 1, 0);

setDisp( spep_4 + 68, 1, 1 );

shuchusen5 = entryEffectLife( spep_4, 906, 68, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen5, 1.5, 1.5);
setEffMoveKey(  spep_4,  shuchusen5,  0,  0);
setEffRotateKey( spep_4, shuchusen5, 0);
setEffAlphaKey( spep_4, shuchusen5, 255);

setEffScaleKey( spep_4+68, shuchusen5, 1.5, 1.5);
setEffMoveKey(  spep_4+68,  shuchusen5,  0,  0);
setEffRotateKey( spep_4+68, shuchusen5, 0);
setEffAlphaKey( spep_4+68, shuchusen5, 255);

--書き文字(ズドドドッ)
ctZud = entryEffectLife(  spep_4, 10014, 68, 0x100, -1, 0, 0, 0);    -- ズドドドッ
setEffShake( spep_4, ctZud, 68, 20);

setEffScaleKey( spep_4, ctZud, 3.0, 3.0);
setEffMoveKey(  spep_4,  ctZud, 130, 310);
setEffRotateKey( spep_4, ctZud, 70);
setEffAlphaKey( spep_4, ctZud, 225);

setEffScaleKey( spep_4+68, ctZud, 3.0, 3.0);
setEffMoveKey(  spep_4+68,  ctZud, 130, 310);
setEffRotateKey( spep_4+68, ctZud, 70);
setEffAlphaKey( spep_4+68, ctZud, 225);

ryusen3 = entryEffectLife( spep_4, 921, 68, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_4, ryusen3, 1.9, 1.3);
setEffMoveKey(  spep_4,  ryusen3,  0,  0);
setEffRotateKey( spep_4, ryusen3, 240);
setEffAlphaKey( spep_4, ryusen3, 225);

setEffScaleKey( spep_4+68, ryusen3, 1.9, 1.3);
setEffMoveKey(  spep_4+68,  ryusen3,  0,  0);
setEffRotateKey( spep_4+68, ryusen3, 240);
setEffAlphaKey( spep_4+68, ryusen3, 225);

--気弾迫る
beam = entryEffect( spep_4,   SP_04,   0x80,     -1,  0,  0,  0);   -- ef_004迫る
setEffShake( spep_4, beam, 68, 20);

setEffScaleKey(  spep_4,  beam,  1.0, 1.0);
setEffMoveKey(  spep_4,  beam,  0,  0);
setEffRotateKey(  spep_4,  beam,  0);
setEffAlphaKey(  spep_4,  beam,  255);

setEffScaleKey(  spep_4+68,  beam,  1.0, 1.0);
setEffMoveKey(  spep_4+68,  beam,  0,  0);
setEffRotateKey(  spep_4+68,  beam,  0);
setEffAlphaKey(  spep_4+68,  beam,  255);

playSe( spep_4, SE_07);

spep_5 = spep_4 + 70;

--白フェードが入る--
entryFade( spep_5-10, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 50; --エンドフェイズのフレーム数を置き換える

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

--迫るビームのSE
playSe( spep_4, SE_07);

------------------------------------------------------
-- 敵吹っ飛び(110F)
------------------------------------------------------

--吹っ飛びヤムチャ--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 110, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
--setShake(spep_5+8,6,15);
--setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 110, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+110, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );
setEffRotateKey( spep_5 + 110, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );
setEffAlphaKey( spep_5 + 110, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+14, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe( spep_5+13, SE_14);

-- ダメージ表示
dealDamage(spep_5+16);
--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

--背景暗め
entryFadeBg( spep_0+26, 5, 50, 0, 10, 10, 10, 180);          -- ベース暗め　背景

charge = entryEffect( spep_0, SP_01, 0x100, -1, 0, 0, 0);   -- ef_001気溜め

setEffScaleKey(  spep_0,  charge,  1.0, 1.0);
setEffMoveKey(  spep_0,  charge,  0,  0);
setEffRotateKey(  spep_0,  charge,  0);
setEffAlphaKey(  spep_0,  charge,  255);

setEffScaleKey(  spep_0+80,  charge,  1.0, 1.0);
setEffMoveKey(  spep_0+80,  charge,  0,  0);
setEffRotateKey(  spep_0+80,  charge,  0);
setEffAlphaKey(  spep_0+80,  charge,  255);

--気溜めSE
playSe( spep_0+26, SE_01);

shuchusen1 = entryEffectLife( spep_0+26, 906, 54, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_0+26,  shuchusen1,  1.0, 1.0);
setEffMoveKey(  spep_0+26,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0+26,  shuchusen1,  0);
setEffAlphaKey(  spep_0+26,  shuchusen1,  255);

setEffScaleKey(  spep_0+80,  shuchusen1,  1.0, 1.0);
setEffMoveKey(  spep_0+80,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0+80,  shuchusen1,  0);
setEffAlphaKey(  spep_0+80,  shuchusen1,  255);

spep_1 = spep_0 + 80;

--白フェードが入る--
entryFade( spep_1-10, 5, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 急上昇(122F)
------------------------------------------------------

--背景暗め→黒
entryFadeBg( spep_1, 0, 122, 0, 0, 0, 0, 190);          -- ベース暗め　背景
entryFadeBg( spep_1+20, 20, 92, 0, 0, 0, 0, 0);          -- ベース暗め　背景

--顔カットイン&文字
--speff = entryEffect( spep_1+16,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
--speff1 = entryEffect( spep_1+16,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
--setEffReplaceTexture(  speff1, 4, 5); 

--カットインSE
playSe( spep_1+30, SE_04);
--上昇SE
--playSe( spep_1, SE_12);

ctGo = entryEffectLife( spep_1+30, 190006, 72, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_1+30, ctGo, 89, 8);

setEffScaleKey( spep_1+30, ctGo, -0.7, 0.7);
setEffMoveKey(  spep_1+30,  ctGo, 50, 490);
setEffRotateKey(  spep_1+30,  ctGo,  0);
setEffAlphaKey(  spep_1+30,  ctGo,  255);

setEffScaleKey( spep_1+102, ctGo, -0.7, 0.7);
setEffMoveKey(  spep_1+102,  ctGo, 50, 490);
setEffRotateKey(  spep_1+102,  ctGo,  0);
setEffAlphaKey(  spep_1+102,  ctGo,  255);

--急上昇
jump  = entryEffect( spep_1,   SP_02,   0x100,     -1,  0,  0,  0);   -- ef_002急上昇
setEffScaleKey(  spep_1,  jump,  1.0, 1.0);
setEffMoveKey(  spep_1,  jump,  0,  0);
setEffRotateKey(  spep_1,  jump,  0);
setEffAlphaKey(  spep_1,  jump,  255);

setEffScaleKey(  spep_1+122,  jump,  1.0, 1.0);
setEffMoveKey(  spep_1+122,  jump,  0,  0);
setEffRotateKey(  spep_1+122,  jump,  0);
setEffAlphaKey(  spep_1+122,  jump,  255);

shuchusen2 = entryEffectLife( spep_1, 906, 122, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.3, 1.3);
setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffRotateKey(  spep_1,  shuchusen2,  0);
setEffAlphaKey( spep_1, shuchusen2, 255);

setEffScaleKey( spep_1+122, shuchusen2, 1.3, 1.3);
setEffMoveKey(  spep_1+122,  shuchusen2,  0,  0);
setEffRotateKey(  spep_1+122,  shuchusen2,  0);
setEffAlphaKey( spep_1+122, shuchusen2, 255);

ryusen = entryEffectLife( spep_1, 914, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_1, ryusen, 1.9, 1.0);
setEffMoveKey(  spep_1,  ryusen,  0,  0);
setEffRotateKey( spep_1, ryusen, -85);
setEffAlphaKey( spep_1, ryusen, 255);

setEffScaleKey( spep_1+90, ryusen, 1.9, 1.0);
setEffMoveKey(  spep_1+90,  ryusen,  0,  0);
setEffRotateKey( spep_1+90, ryusen, -85);
setEffAlphaKey( spep_1+90, ryusen, 255);

spep_2 = spep_1 + 122;

--白フェードが入る--
entryFade( spep_2-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                             -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen3, 1.5, 1.5);
setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
setEffRotateKey( spep_2, shuchusen3, 0);
setEffAlphaKey( spep_2, shuchusen3, 255);

setEffScaleKey( spep_2+90, shuchusen3, 1.5, 1.5);
setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
setEffRotateKey( spep_2+90, shuchusen3, 0);
setEffAlphaKey( spep_2+90, shuchusen3, 255);

playSe( spep_2, SE_05);

spep_3 = spep_2 + 90;

--白フェードが入る--
entryFade( spep_3-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 発射(70F)
------------------------------------------------------

--背景黒
entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0);          -- ベース暗め　背景

--書き文字(ズオッ)
ctZuo = entryEffectLife(  spep_3+46, 10012, 24, 0x100, -1, 0, 0, 0);    -- ズオッ
setEffShake( spep_3+46, ctZuo, 24, 8);

setEffScaleKey( spep_3+46, ctZuo, 0.2, 0.2);
setEffMoveKey(  spep_3+46,  ctZuo, 130, 430);
setEffRotateKey( spep_3+46, ctZuo, 20);
setEffAlphaKey( spep_3+46, ctZuo, 255);

setEffScaleKey( spep_3+48, ctZuo, 2.7, 2.7);

setEffScaleKey( spep_3+70, ctZuo, 2.7, 2.7);
setEffMoveKey(  spep_3+70,  ctZuo, 130, 430);
setEffRotateKey( spep_3+70, ctZuo, 20);
setEffAlphaKey( spep_3+70, ctZuo, 255);

--気弾発射
shoot = entryEffect( spep_3,   SP_03,   0x100,     -1,  0,  0,  0);   -- ef_003発射
setEffScaleKey(  spep_3,  shoot,  1.0, 1.0);
setEffMoveKey(  spep_3,  shoot,  0,  0);
setEffRotateKey(  spep_3,  shoot,  0);
setEffAlphaKey(  spep_3,  shoot,  255);

setEffScaleKey(  spep_3+70,  shoot,  1.0, 1.0);
setEffMoveKey(  spep_3+70,  shoot,  0,  0);
setEffRotateKey(  spep_3+70,  shoot,  0);
setEffAlphaKey(  spep_3+70,  shoot,  255);

playSe( spep_3, SE_13);
playSe( spep_3+20, SE_13);
playSe( spep_3+46, SE_06);

shuchusen4 = entryEffectLife( spep_3, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen4, 1.2, 1.2);
setEffMoveKey(  spep_3,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3,  shuchusen4,  0);
setEffAlphaKey( spep_3, shuchusen4, 255);

setEffScaleKey( spep_3+70, shuchusen4, 1.2, 1.2);
setEffMoveKey(  spep_3+70,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3+70,  shuchusen4,  0);
setEffAlphaKey( spep_3+70, shuchusen4, 255);

ryusen2 = entryEffectLife( spep_3, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_3, ryusen2, 1.9, 1.3);
setEffMoveKey(  spep_3,  ryusen2,  0,  0);
setEffRotateKey( spep_3, ryusen2, 240);
setEffAlphaKey( spep_3, ryusen2, 225);

setEffScaleKey( spep_3+70, ryusen2, 1.9, 1.3);
setEffMoveKey(  spep_3+70,  ryusen2,  0,  0);
setEffRotateKey( spep_3+70, ryusen2, 240);
setEffAlphaKey( spep_3+70, ryusen2, 225);

spep_4 = spep_3 + 70;

--白フェードが入る--
entryFade( spep_4-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 気弾迫る(70F)
------------------------------------------------------

--背景黒
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0);          -- ベース暗め　背景

--敵後ろ姿
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 102);

setShakeChara( spep_4, 1, 70, 20); 

setScaleKey( spep_4, 1, 1.7, 1.7);
setMoveKey( spep_4, 1, 390, -700, 0);
setRotateKey( spep_4, 1, 0);

setMoveKey( spep_4+30, 1, 190, -310, 0);

setScaleKey( spep_4+68, 1, 1.7, 1.7);
setMoveKey( spep_4+68, 1, 160, -280, 0);
setRotateKey( spep_4+68, 1, 0);

setDisp( spep_4 + 68, 1, 1 );

shuchusen5 = entryEffectLife( spep_4, 906, 68, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen5, 1.5, 1.5);
setEffMoveKey(  spep_4,  shuchusen5,  0,  0);
setEffRotateKey( spep_4, shuchusen5, 0);
setEffAlphaKey( spep_4, shuchusen5, 255);

setEffScaleKey( spep_4+68, shuchusen5, 1.5, 1.5);
setEffMoveKey(  spep_4+68,  shuchusen5,  0,  0);
setEffRotateKey( spep_4+68, shuchusen5, 0);
setEffAlphaKey( spep_4+68, shuchusen5, 255);

--書き文字(ズドドドッ)
ctZud = entryEffectLife(  spep_4, 10014, 68, 0x100, -1, 0, 0, 0);    -- ズドドドッ
setEffShake( spep_4, ctZud, 68, 20);

setEffScaleKey( spep_4, ctZud, 3.0, 3.0);
setEffMoveKey(  spep_4,  ctZud, 50, 330);
setEffRotateKey( spep_4, ctZud, 10);
setEffAlphaKey( spep_4, ctZud, 225);

setEffScaleKey( spep_4+68, ctZud, 3.0, 3.0);
setEffMoveKey(  spep_4+68,  ctZud, 50, 330);
setEffRotateKey( spep_4+68, ctZud, 10);
setEffAlphaKey( spep_4+68, ctZud, 225);

ryusen3 = entryEffectLife( spep_4, 921, 68, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_4, ryusen3, 1.9, 1.3);
setEffMoveKey(  spep_4,  ryusen3,  0,  0);
setEffRotateKey( spep_4, ryusen3, 240);
setEffAlphaKey( spep_4, ryusen3, 225);

setEffScaleKey( spep_4+68, ryusen3, 1.9, 1.3);
setEffMoveKey(  spep_4+68,  ryusen3,  0,  0);
setEffRotateKey( spep_4+68, ryusen3, 240);
setEffAlphaKey( spep_4+68, ryusen3, 225);

--気弾迫る
beam = entryEffect( spep_4,   SP_04,   0x80,     -1,  0,  0,  0);   -- ef_004迫る
setEffShake( spep_4, beam, 68, 20);

setEffScaleKey(  spep_4,  beam,  1.0, 1.0);
setEffMoveKey(  spep_4,  beam,  0,  0);
setEffRotateKey(  spep_4,  beam,  0);
setEffAlphaKey(  spep_4,  beam,  255);

setEffScaleKey(  spep_4+68,  beam,  1.0, 1.0);
setEffMoveKey(  spep_4+68,  beam,  0,  0);
setEffRotateKey(  spep_4+68,  beam,  0);
setEffAlphaKey(  spep_4+68,  beam,  255);

playSe( spep_4, SE_07);

spep_5 = spep_4 + 70;

--白フェードが入る--
entryFade( spep_5-10, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 50; --エンドフェイズのフレーム数を置き換える

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

--迫るビームのSE
playSe( spep_4, SE_07);

------------------------------------------------------
-- 敵吹っ飛び(110F)
------------------------------------------------------

--吹っ飛びヤムチャ--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 110, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
--setShake(spep_5+8,6,15);
--setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 110, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+110, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );
setEffRotateKey( spep_5 + 110, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );
setEffAlphaKey( spep_5 + 110, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+14, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe( spep_5+13, SE_14);

-- ダメージ表示
dealDamage(spep_5+16);
--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);

end
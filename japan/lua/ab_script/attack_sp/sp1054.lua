

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

SP_01 = 103056;--剣出現
SP_02 = 103057;--マズル
SP_03 = 103058;--手前用１
SP_04 = 103059;--手前用２
SP_05 = 109054;--敵が光弾を避ける時の瞬間移動エフェクト
SP_06 = 103061;--正面向きのエフェクト　
SP_07 = 103060;--爆発
SP_08 = 103062;--斬撃

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

--[[
setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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
]]
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 0, 0, 3);                  -- ダッシュ
setScaleKey(  0,   0,  1.6, 1.6 );
entryFadeBg( 0, 0, 130, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--setVisibleUI(0, 0);
--playSe( 0, 1018);
setMoveKey(  0,   0,  0, -54,  0);
setMoveKey(  1,   0,  0, -54,  0);
setMoveKey(  2,   0,  0, -54,  0);
setMoveKey(  3,   0,  0, -54,  0);
setMoveKey(  4,   0,  0, -54,  0);
setMoveKey(  5,   0,  0, -54,  0);

setMoveKey(  10,   0,  0, -54,  0);
setMoveKey(  100,   0,  0, -54,  0);
setMoveKey(  105,   0,  -150, -54,  -10);
setMoveKey(  115,   0,  1050, -54,  -20);

setBgScroll(105,100);

playSe( 0, 1036);
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);
playSe( 100, 1018);

--playSe( 30, 1035); --かめはめ波


-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   350, 127, 0x40,  0,  1,  200,  0); -- オーラ　311
setEffScaleKey( 0, aura, 1.7, 1.7);
setEffRotateKey( 0, aura, -90);
setEffAlphaKey(0, aura, 255);

shuchusen5 = entryEffectLife( 0, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);


ryusen_1=entryEffectLife( 0, 920, 128, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  0, ryusen_1, 1.3, 1.3);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 28; --エンドフェイズのフレーム数を置き換える

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
-- 回避しなかった場合
------------------------------------------------------

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);



spep_6=127; --211 260


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
setScaleKey(  spep_6,  0,  1.6,  1.6);

--setScaleKey( spep_6-1,   0, 1.5, 1.5);
setMoveKey(  spep_6-1,    0,      100,  -54,   0);
setMoveKey(  spep_6,    0,      0,  0,   0);

playSe( spep_6+8, 1018);

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.0, 1.0);
setMoveKey(  spep_6,  1, 1700,  0,   0);
setRotateKey( spep_6,  1,  -5 );
setRotateKey( spep_6,  0,  -10 );
setDisp( spep_6, 0, 1);

--P移動

--setBgScroll(spep_6,100);

setScaleKey( spep_6, 0, 1.4, 1.4);
setScaleKey( spep_6+1, 0, 1.2, 1.2);


setMoveKey(  spep_6+1,  0, -1700,  0,   0);
setMoveKey(  spep_6+2,  0, -700,  0,   0);
setMoveKey(  spep_6+12,  0, -100,  0,   0);

setMoveKey(  spep_6+1,  1, 1700,  0,   0);
setMoveKey(  spep_6+2,  1, 550,  0,   0);
setMoveKey(  spep_6+12,  1, 70,  0,   0);

--右大パンチ

setEffAlphaKey(spep_6+6, aura1, 255);
setEffAlphaKey(spep_6+12, aura1, 0);

setEnvZoomEnable(spep_6+11,1);


changeAnime( spep_6+11,   0, 13 );--キック2
playSe( spep_6+12,1009);--SE
hit1 = entryEffect(  spep_6+11,   3,   0,  1,   0,  -30,  0);
hit2 = entryEffect(  spep_6+11,   908,   0,  1,   0,  -30,  0);

setEffScaleKey(spep_6+11, hit1, 1.4, 1.4);
setEffScaleKey(spep_6+11, hit2, 1.4, 1.4);

setDamage( spep_6+12, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+12,   1, 108 ); --敵モーション

setMoveKey(  spep_6+12,  0, -160,  0,   0);
setMoveKey(  spep_6+22,  0, -120,  0,   0);

setMoveKey(  spep_6+12,  1, 0,  0,   0);
setMoveKey(  spep_6+22,  1, 30,  0,   0);

changeAnime( spep_6+19,   0, 12 );--キック1
playSe( spep_6+20,1009);--SE
hit1 = entryEffect(  spep_6+19,   3,   0,  1,   0,  -30,  0);
hit2 = entryEffect(  spep_6+19,   908,   0,  1,   0,  -30,  0);

setEffScaleKey(spep_6+19, hit1, 1.4, 1.4);
setEffScaleKey(spep_6+19, hit2, 1.4, 1.4);

setDamage( spep_6+20, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+20,   1, 108 ); --敵モーション

setMoveKey(  spep_6+19,  0, -120,  0,   0);
setMoveKey(  spep_6+27,  0, -80,  0,   0);

setMoveKey(  spep_6+19,  1, 30,  0,   0);
setMoveKey(  spep_6+27,  1, 60,  30,   0);

spep_9=spep_6+19; --パンチの開始

changeAnime( spep_9+10,   0, 14);--キック3
setRotateKey( spep_9+10 , 0 , -20);

playSe( spep_9+11,1000);--SE
hit3 = entryEffect(  spep_9+10,   1,   0,  1,   0,  0,  0);
hit4 = entryEffect(  spep_9+10,   908,   0,  1,   0,  0,  0);

setEffScaleKey(spep_9+10, hit3, 1.4, 1.4);
setEffScaleKey(spep_9+10, hit4, 1.4, 1.4);

setDamage( spep_9+11, 1, 0);  -- ダメージ振動等
changeAnime( spep_9+11,   1, 106 ); --敵モーション

setMoveKey(  spep_9+11,  0, -80,  0,   0);
setMoveKey(  spep_9+21,  0, -40,  0,   0);

setMoveKey(  spep_9+11,  1, 60,  30,   0);
setMoveKey(  spep_9+21,  1, 500,  800,   100);
setDisp( spep_9+22, 1, 0);

setScaleKey( spep_9+11, 1,  1.4, 1.4);
setScaleKey( spep_9+21, 1,  0.5, 0.5);

--setRotateKey( spep_9+21 , 0 , 20);
setRotateKey( spep_9+22 , 0 , -20);
changeAnime( spep_9+23,   0, 2 ); --右向きの待機モーション
setRotateKey( spep_9+23 , 0 , 0);

setBgScroll(spep_9+23,0);

ct = entryEffectLife( spep_9+35, 10011, 14, 0x100, -1, 0, -200, 300);    -- シュンッ
setEffScaleKey( spep_9+35, ct, 1.4, 1.4);

syunkan1=entryEffect( spep_9+35, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setMoveKey(  spep_9+34,  1, 600,  800,   100);

setDisp( spep_9+35, 0, 0);
playSe( spep_9+35, 37);
setDisp( spep_9+35, 1, 0);
setMoveKey(  spep_9+35,   1, -300, -1036, -60);

setEnvZoomEnable(spep_9+35,0);

ryusen_1=entryEffectLife( spep_6, 920, 29, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);
--setEffRotateKey( spep_6, ryusen_1, -40);

shuchusen8 = entryEffectLife( spep_6, 906, 42, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+11, 10017, 10, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_6+11, ct, 32, 5);
setEffAlphaKey(spep_6+11, ct, 255);
setEffAlphaKey(spep_9+21, ct, 0);
--setEffAlphaKey(spep_9+31, ct, 0);
setEffScaleKey(spep_6+9, ct, 0.0, 0.0);
setEffScaleKey(spep_6+15, ct, 1.8, 1.8);
--setEffScaleKey(spep_9+21, ct, 1.8, 1.8);
setEffScaleKey(spep_9+21, ct, 6.0, 6.0);

--２回目の連撃

ryusen_1=entryEffectLife( spep_9+10, 920, 48, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey(spep_9,ryusen_1,-70);
setEffScaleKey(  spep_9, ryusen_1, 1.6, 1.6);


spep_10=spep_9+50; --２カット目の開始 90-30

--演出
--背景スピード　超高速
setBgScroll(spep_10,100);
changeAnime( spep_10,   0, 1);--叩き落とし

setDisp( spep_10, 1, 1);

setScaleKey( spep_10, 1,  1.8, 1.8);
setScaleKey( spep_10+20, 1,  1.4, 1.4);
setScaleKey( spep_10+10, 0,  1.4, 1.4);


setEffAlphaKey(spep_10+10, aura1, 0);
setEffAlphaKey(spep_10+11, aura1, 255);
setEffAlphaKey(spep_10+19, aura1, 0);


setMoveKey(  spep_10+20,  0, -100,  100,   0);
setRotateKey( spep_10+19 , 0 , 0);
setScaleKey( spep_10+19, 0,  1.2, 1.2);

ct = entryEffectLife( spep_10+10, 10011, 6, 0x100, -1, 0, -200, 300);    -- シュンッ
setEffScaleKey(spep_10+10, ct, 1.4, 1.4);

syunkan1=entryEffect( spep_10+10, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( spep_10+10, 37);
setDisp( spep_10+15, 0, 1);

setEnvZoomEnable(spep_10+20,1);


setMoveKey(  spep_10+20,  1, 120,  100,   0);

changeAnime( spep_10+19,   0, 15);--叩き落とし
playSe( spep_10+20,1052);--SE
hit5 = entryEffect(  spep_10+19,  2,   0,  1,   0,  0,  0);
hit6 = entryEffect(  spep_10+19,   908,   0,  1,   0,  0,  0);

setEffScaleKey(spep_10+19, hit5, 1.6, 1.6);
setEffScaleKey(spep_10+19, hit6, 1.6, 1.6);

setDamage( spep_10+20, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+19,   1, 107 ); --敵モーション
--changeAnime( spep_10+19,   1, 108 ); --敵モーション

setMoveKey(  spep_10+20,  0, -70,  0,   0);
setMoveKey(  spep_10+30,  0, -300,  300,   0);

setMoveKey(  spep_10+20,  1, 120,  100,   0);
setMoveKey(  spep_10+47,  1,  400,  -700,  -120);
setMoveKey(  spep_10+47,  0, -700,  400,   0);

setEnvZoomEnable(spep_10+30,0);-- 18

shuchusen8 = entryEffectLife( spep_10, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_10+19, 10021, 52, 0, -1, 0, 220, 400); -- バゴォ
setEffShake(spep_10+19, ct, 32, 5);
setEffAlphaKey(spep_10+19, ct, 255);
setEffAlphaKey(spep_10+29, ct, 255);
setEffAlphaKey(spep_10+40, ct, 0);
setEffScaleKey(spep_10+17, ct, 0.0, 0.0);
setEffScaleKey(spep_10+23, ct, 1.8, 1.8);
setEffScaleKey(spep_10+31, ct, 1.8, 1.8);
setEffScaleKey(spep_10+40, ct, 6.0, 6.0);

ryusen_1=entryEffectLife( spep_10, 920, 19, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey( spep_10,ryusen_1,-70);
setEffScaleKey(  spep_10, ryusen_1, 1.6, 1.6);

ryusen_2=entryEffectLife( spep_10+20, 921, 30, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffScaleKey(  spep_10+20, ryusen_2, 1.6, 1.6);
setEffRotateKey( spep_10+20,ryusen_2,-140);


setShakeChara( spep_6, 0, 105, 15);
setShakeChara( spep_6, 1, 105, 15);
setShake(spep_6,105, 10);

-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 118, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406


spep_2=spep_10+45; --

--setMoveKey(  spep_2,  1,  -400,  300,  30);
setMoveKey(  spep_2,  1,  400,  -700,  -120);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
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
    
    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_2 + 0, shuchusen, 90, 20 );
    
    setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
    
    setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
    
    setEffRotateKey( spep_2 + 0, shuchusen, 0 );
    setEffRotateKey( spep_2 + 90, shuchusen, 0 );
    
    setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
    setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
    
    -- ** 音 ** --
    --playSe( spep_2 + 0, SE_05 );
    
    -- ** 次の準備 ** --
    entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
    entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
    

------------------------------------------------------
--ソードぶっ刺し
------------------------------------------------------


spep_11=spep_2+87; 

SP_start = 25; --

setScaleKey( spep_11, 0,  1.5, 1.5);
setDisp( spep_11, 0, 1);
setMoveKey(  spep_11,  0, 600,  -600,   -40);
changeAnime( spep_11,   0, 1001);--構え
kame_hand5 = entryEffectLife( spep_11, SP_02, 22, 0x40+0x80,  0,  300, 0,  120);   -- マズル
setEffScaleKey( spep_11, kame_hand5, 0.3, 0.3);
setEffAlphaKey( spep_11, kame_hand5, 255);
setEffRotateKey( spep_11,kame_hand5, 20);

playSe( spep_11, 1034);

changeAnime( SP_start+ spep_11,   0, 30);--ぶっ刺し


kame_hand6 = entryEffectLife( SP_start+ spep_11, SP_02, 9, 0x40+0x100,  0,  300, 130,  -20);   -- マズル
setEffScaleKey( SP_start+ spep_11, kame_hand6, 0.3, 0.3);
setEffAlphaKey( SP_start+ spep_11, kame_hand6, 200);
setEffRotateKey( SP_start+spep_11,kame_hand6, 50);

kame_hand = entryEffectLife( SP_start+ spep_11+10, SP_01, 16, 0x40+0x100,  0,  300,  160,  -60);   -- 剣出現
setEffAlphaKey( SP_start+spep_11+10, kame_hand, 255);
setEffRotateKey( SP_start+spep_11+10,kame_hand, 50);
setEffScaleKey( SP_start+spep_11+10, kame_hand, 0.8, 0.8);



playSe( SP_start+ spep_11+10, 1042);


setMoveKey( SP_start+  spep_11+10,  0, 0,  0,   -40);
setMoveKey( SP_start+  spep_11+15,  0, 0,  0,   -40);

setMoveKey( SP_start+  spep_11+35,  0, -600,  600,   -40);

entryFade( SP_start+ spep_11+22, 3, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ spep_11+26, 0, 0);

setEnvZoomEnable(SP_start+ spep_11+35,1);

setEnvZoomEnable(SP_start+ spep_11+55,0);

zanngeki2 = entryEffect( SP_start+ spep_11+30, 7, 0x40,  1,  300,  0,  0);   -- 斬撃
setEffRotateKey( SP_start+spep_11+30,zanngeki2,-55);
setEffScaleKey( SP_start+ spep_11+30, zanngeki2, 1.8, 1.8);

setShakeChara( SP_start+ spep_11+30, 1, 20, 15);

playSe( SP_start+ spep_11+50, 1034);
playSe( SP_start+ spep_11+70, 1034);
playSe( SP_start+ spep_11+90, 1034);
playSe( SP_start+ spep_11+110, 1034);


changeAnime( SP_start+ spep_11+20,   1, 106);--横向き倒れ
setMoveKey( SP_start+  spep_11+20,  1, 650,  -840,   -80);
setRotateKey( SP_start+ spep_11+20 , 1 , -20);
setRotateKey( SP_start+ spep_11+50 , 1 , -20);

setDisp( SP_start+ spep_11+30, 1, 1);

setMoveKey( SP_start+  spep_11+30,  1, 0,  -150,   -80);
setMoveKey( SP_start+  spep_11+50,  1, 0,  -150,   -80);

playSe( SP_start+ spep_11+30, 1031);

kame_hand2 = entryEffectLife( SP_start+ spep_11+30, SP_03, 75, 0x40+0x100,  1,  300,  -460,  700);   -- 剣手前
setEffScaleKey( SP_start+ spep_11+30, kame_hand2, 1.7, 1.0);
setEffAlphaKey( SP_start+spep_11+30, kame_hand2, 255);
setEffRotateKey( SP_start+spep_11+30,kame_hand2,55);
setEffMoveKey( SP_start+spep_11+30, kame_hand2,-460,  700, 0);

setEffScaleKey( SP_start+ spep_11+50, kame_hand2, 1.7, 1.0);
setEffAlphaKey( SP_start+spep_11+50, kame_hand2, 255);
setEffRotateKey( SP_start+spep_11+50,kame_hand2,55);
setEffMoveKey( SP_start+spep_11+50, kame_hand2,-460,  700, 0);

kame_hand3 = entryEffectLife( SP_start+ spep_11+30, SP_04, 75, 0x40+0x80,  1, 300,  -340,  500);   -- 剣後ろ
setEffScaleKey( SP_start+ spep_11+30, kame_hand3, 1.0, 1.0);
setEffAlphaKey( SP_start+spep_11+30, kame_hand3, 255);
setEffRotateKey( SP_start+spep_11+30,kame_hand3,55);
setEffMoveKey( SP_start+spep_11+30, kame_hand3,-340,  500, 0);

setEffScaleKey( SP_start+ spep_11+50, kame_hand3, 1.0, 1.0);
setEffAlphaKey( SP_start+spep_11+50, kame_hand3, 255);
setEffRotateKey( SP_start+spep_11+50,kame_hand3,55);
setEffMoveKey( SP_start+spep_11+50, kame_hand3, -340,  500, 0);

--[[
SP_start3 = 20; --持ち上げまでの間隔調整
SP_start4 = 20; --振り上げ速度調整
SP_start5 = SP_start4+5; --振り上げた後の速度調整
--]]

SP_start3 = 20; --持ち上げまでの間隔調整
SP_start4 = 7; --振り上げ速度調整
SP_start5 = SP_start4+3; --振り上げた後の速度調整


--振り上げ中の移動調整
setMoveKey( SP_start4+ SP_start3+ SP_start+  spep_11+65,  1, 70,  0,   -80);
setMoveKey( SP_start5+ SP_start3+ SP_start+  spep_11+70,  1, 100,  0,   -80);

setEffRotateKey( SP_start4+ SP_start3+ SP_start+spep_11+65,kame_hand2,0);
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+80,kame_hand2,-45);

setEffMoveKey( SP_start4+ SP_start3+ SP_start+spep_11+65, kame_hand2, -850,  -10, 0);
setEffMoveKey( SP_start5+ SP_start3+ SP_start+spep_11+80, kame_hand2, -660,  -626, 0);

setEffRotateKey( SP_start4+ SP_start3+ SP_start+spep_11+65,kame_hand3,0);
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+80,kame_hand3,-45);

setEffMoveKey( 428, kame_hand3, -440,  220, 0);
--setEffMoveKey( 433, kame_hand3, -370,  254, 0);

setEffMoveKey( SP_start4+ SP_start3+ SP_start+spep_11+65, kame_hand3, -600,  -13, 0);
setEffMoveKey( SP_start5+ SP_start3+ SP_start+spep_11+73, kame_hand3, -510,  -265, 0);


--setEnvZoomEnable( SP_start3+SP_start+spep_11+75+40,0);

--吹っ飛ばし時のホワイトフェード
entryFade( SP_start5+ SP_start3+ SP_start+ spep_11+72, 4, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffMoveKey( SP_start5+ SP_start3+ SP_start+spep_11+77, kame_hand3, -500,  -160, 0);
--setEffAlphaKey( SP_start5+ SP_start3+ SP_start+ spep_11+76, zanngeki3, 255);
--setEffAlphaKey( SP_start5+ SP_start3+ SP_start+ spep_11+77, zanngeki3, 0);

zanngeki3 = entryEffect( SP_start5+ SP_start3+ SP_start+ spep_11+77, 7, 0x00,  -1, 0,  20,  150);   -- 斬撃
setEffRotateKey( SP_start5+ SP_start3+ SP_start+ spep_11+77,zanngeki3,-55);
setEffScaleKey( SP_start5+ SP_start3+ SP_start+ spep_11+77, zanngeki3, 1.8, 1.8);
playSe( SP_start5+ SP_start3+ SP_start+ spep_11+77, 1032);
setEffAlphaKey( SP_start5+ SP_start3+ SP_start+ spep_11+77, zanngeki3, 255);

setShakeChara( SP_start5+ SP_start3+ SP_start+ spep_11+77, 1, 10, 25);



kame_hand7 = entryEffectLife( SP_start5+ SP_start3+ SP_start+ spep_11+80, SP_03, 26, 0x40+0x100,  -1, 0,  -100,  480, 0);   -- 剣手前2
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+80,kame_hand7,-45);
setEffScaleKey( SP_start5+ SP_start3+ SP_start+ spep_11+80, kame_hand7, 1.0, 1.0);
setEffAlphaKey( SP_start5+ SP_start3+ SP_start+spep_11+80, kame_hand7, 255);

kame_hand8 = entryEffectLife( SP_start5+ SP_start3+ SP_start+ spep_11+80, SP_04, 26, 0x40+0x80,  -1,  0,  -140,  440);   -- 剣後ろ2
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+80,kame_hand8,-45);
setEffScaleKey( SP_start5+ SP_start3+ SP_start+ spep_11+80, kame_hand8, 1.0, 1.0);
setEffAlphaKey( SP_start5+ SP_start3+ SP_start+spep_11+80, kame_hand8, 255);


ryusen_1=entryEffectLife( spep_11, 920, 166, 0x80,  -1,  0,  0,  0); -- 流線 406
setEffRotateKey( spep_11,ryusen_1,60);
setEffScaleKey( spep_11, ryusen_1, 1.6, 1.6);

setEffRotateKey( SP_start3+ SP_start+spep_11+45,ryusen_1,60);
setEffRotateKey( SP_start4+ SP_start3+ SP_start+spep_11+65,ryusen_1,0);
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+85,ryusen_1,-60);

setMoveKey( SP_start4+ SP_start3+ SP_start+  spep_11+65,  1, 100,  0,   0);
setRotateKey( SP_start4+ SP_start3+ SP_start+ spep_11+65, 1 , -80);
setRotateKey( SP_start5+ SP_start3+ SP_start+ spep_11+80, 1 , -80);

setMoveKey( SP_start5+ SP_start3+ SP_start+  spep_11+80,  1, 280,  400,   20);
changeAnime( SP_start5+ SP_start3+ SP_start+ spep_11+80,   1, 108);--吹き飛び
setRotateKey( SP_start5+ SP_start3+ SP_start+ spep_11+85, 1 , -30);


entryFadeBg( spep_11, 0, 166, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

setMoveKey( SP_start5+ SP_start3+ SP_start+  spep_11+100,  1, 480,  600,   100);

entryFade( SP_start5+ SP_start3+ SP_start+ spep_11+102, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start5+ SP_start3+ SP_start+ spep_11+106, 0, 0);
setDisp( SP_start5+ SP_start3+ SP_start+ spep_11+106, 1, 0);
setMoveKey( SP_start5+ SP_start3+ SP_start+  spep_11+106,  1,650,  -200,   0);
setEffAlphaKey( SP_start5+ SP_start3+ SP_start+spep_11+106, kame_hand3, 255);
setScaleKey( SP_start5+ SP_start3+ SP_start+spep_11+106, 0,  1.5, 1.5);


spep_5 = SP_start5+ SP_start3+ SP_start+spep_11+110;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setMoveKey( spep_5,  0, 0,  0,   0);
playSe( spep_5, 1018);
playSe( spep_5+75, 1018);


shuchusen5 = entryEffectLife( spep_5, 906, 127, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+60, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+125, shuchusen5, 1.0, 1.0);


entryFadeBg( spep_5-1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--[[
sen2 = entryEffectLife( spep_5-1, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5-1, sen2, -60);
setEffScaleKey( spep_5-1, sen2, 1.6, 1.6);
--]]

bejitto = entryEffect( spep_5,   SP_06, 0x80,  -1,  0,  0,  0);   -- 斬撃
bejitto2 = entryEffect( spep_5,   SP_06, 0x80,  -1,  0,  0,  0);   -- 斬撃
setEffScaleKey( spep_5, bejitto2, 1.0, 1.0);
setEffScaleKey( spep_5+30, bejitto2, 1.2, 1.2);
setEffScaleKey( spep_5+49, bejitto2, 1.2, 1.2);
setEffScaleKey( spep_5+60, bejitto2, 4.8, 4.8);
setEffAlphaKey( spep_5, bejitto2, 0);
setEffAlphaKey( spep_5+49, bejitto2, 0);
setEffAlphaKey( spep_5+50, bejitto2, 100);
setEffAlphaKey( spep_5+70, bejitto2, 0);

setEffScaleKey( spep_5, bejitto, 1.0, 1.0);
setEffScaleKey( spep_5+30, bejitto, 1.2, 1.2);
setEffScaleKey( spep_5+60, bejitto, 1.2, 1.2);
setEffScaleKey( spep_5+70, bejitto, 3.6, 3.6);
setEffScaleKey( spep_5+75, bejitto, 3.6, 3.6);

setEffMoveKey( spep_5, bejitto, 0,  0, 0);
setEffMoveKey( spep_5+65, bejitto, 0,  0, 0);
setEffMoveKey( spep_5+68, bejitto, -150,  -150, 0);
setEffMoveKey( spep_5+72, bejitto, 1200, -640, 0);


SP_start2 = -2;
spep_15 = SP_start2+ spep_5;

entryFade( spep_15+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey( spep_15+90,  0, 0,  0,   0);
removeAllEffect( spep_15+90);

------------------------------------------------------
-- 爆発 (110F)　
------------------------------------------------------


zanngeki = entryEffect( spep_15+99, SP_08, 0,  -1,  0,  0,  0);   -- 斬撃
setEffScaleKey( spep_15+99, zanngeki, 3.0, 3.0);
setEffRotateKey( spep_15+99,zanngeki,-30);


setShake(spep_15+104,10, 20);
playSe( spep_15+104, 1032);

entryFadeBg( spep_15+99-1, 0, 22, 0, 10, 10, 10, 230);       -- ベース暗め　背景

spep_16 = spep_15+10;

entryFade( spep_16+108, 1,  1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- black fade

setDisp( spep_16+110, 1, 1);
changeAnime( spep_16+110, 0, 31);                        -- 気ダメ後ろ
changeAnime( spep_16+110, 1, 106);                        -- 気ダメ後ろ
setMoveKey( spep_16+110,    0,   0,  0,   0);

setMoveKey( spep_16+110,    1,   250,  350,   0);

setScaleKey( spep_16+110,   1,   0.8,  0.8);

entryFadeBg( spep_16+110, 0, 120, 0, 10, 10, 10, 180);       -- ベース暗め　背景

bakuhatu = entryEffect( spep_16+110, SP_07, 0x00,  -1, 0,  -50,  -50);   -- 爆発
setEffScaleKey( spep_16+110, bakuhatu, 1.2, 1.2);
--setQuake(spep_16+110,40, 22);

playSe( spep_16+128, SE_10);

setDamage( spep_16+146, 1, 0);  -- ダメージ振動等

shuchusen = entryEffectLife( spep_16+103, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
--dealDamage( spep_16+146);
dealDamage( spep_16+146 -56);

--entryFade( spep_16+168, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_16+188);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 0, 0, 3);                  -- ダッシュ
setScaleKey(  0,   0,  1.6, 1.6 );
entryFadeBg( 0, 0, 130, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setVisibleUI(0, 0);
--playSe( 0, 1018);
setMoveKey(  0,   0,  0, -54,  0);
setMoveKey(  1,   0,  0, -54,  0);
setMoveKey(  2,   0,  0, -54,  0);
setMoveKey(  3,   0,  0, -54,  0);
setMoveKey(  4,   0,  0, -54,  0);
setMoveKey(  5,   0,  0, -54,  0);

setMoveKey(  10,   0,  0, -54,  0);
setMoveKey(  100,   0,  0, -54,  0);
setMoveKey(  105,   0,  -150, -54,  -10);
setMoveKey(  115,   0,  1050, -54,  -20);

setBgScroll(105,100);

playSe( 0, 1036);
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);
playSe( 100, 1018);

--playSe( 30, 1035); --かめはめ波


-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   350, 127, 0x40,  0,  1,  200,  0); -- オーラ　311
setEffScaleKey( 0, aura, 1.7, 1.7);
setEffRotateKey( 0, aura, -90);
setEffAlphaKey(0, aura, 255);

shuchusen5 = entryEffectLife( 0, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);


ryusen_1=entryEffectLife( 0, 920, 128, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  0, ryusen_1, 1.3, 1.3);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 28; --エンドフェイズのフレーム数を置き換える

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
-- 回避しなかった場合
------------------------------------------------------

--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);


spep_6=127; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
setScaleKey(  spep_6,  0,  1.6,  1.6);

--setScaleKey( spep_6-1,   0, 1.5, 1.5);
setMoveKey(  spep_6-1,    0,      100,  -54,   0);
setMoveKey(  spep_6,    0,      0,  0,   0);

playSe( spep_6+8, 1018);

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.0, 1.0);
setMoveKey(  spep_6,  1, 1700,  0,   0);
setRotateKey( spep_6,  1,  -5 );
setRotateKey( spep_6,  0,  -10 );
setDisp( spep_6, 0, 1);

--P移動

--setBgScroll(spep_6,100);

setScaleKey( spep_6, 0, 1.4, 1.4);
setScaleKey( spep_6+1, 0, 1.2, 1.2);


setMoveKey(  spep_6+1,  0, -1700,  0,   0);
setMoveKey(  spep_6+2,  0, -700,  0,   0);
setMoveKey(  spep_6+12,  0, -100,  0,   0);

setMoveKey(  spep_6+1,  1, 1700,  0,   0);
setMoveKey(  spep_6+2,  1, 550,  0,   0);
setMoveKey(  spep_6+12,  1, 70,  0,   0);

--右大パンチ

setEffAlphaKey(spep_6+6, aura1, 255);
setEffAlphaKey(spep_6+12, aura1, 0);

setEnvZoomEnable(spep_6+11,1);


changeAnime( spep_6+11,   0, 13 );--キック2
playSe( spep_6+12,1009);--SE
hit1 = entryEffect(  spep_6+11,   3,   0,  1,   0,  -30,  0);
hit2 = entryEffect(  spep_6+11,   908,   0,  1,   0,  -30,  0);

setEffScaleKey(spep_6+11, hit1, 1.4, 1.4);
setEffScaleKey(spep_6+11, hit2, 1.4, 1.4);

setDamage( spep_6+12, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+12,   1, 108 ); --敵モーション

setMoveKey(  spep_6+12,  0, -160,  0,   0);
setMoveKey(  spep_6+22,  0, -120,  0,   0);

setMoveKey(  spep_6+12,  1, 0,  0,   0);
setMoveKey(  spep_6+22,  1, 30,  0,   0);

changeAnime( spep_6+19,   0, 12 );--キック1
playSe( spep_6+20,1009);--SE
hit1 = entryEffect(  spep_6+19,   3,   0,  1,   0,  -30,  0);
hit2 = entryEffect(  spep_6+19,   908,   0,  1,   0,  -30,  0);

setEffScaleKey(spep_6+19, hit1, 1.4, 1.4);
setEffScaleKey(spep_6+19, hit2, 1.4, 1.4);

setDamage( spep_6+20, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+20,   1, 108 ); --敵モーション

setMoveKey(  spep_6+19,  0, -120,  0,   0);
setMoveKey(  spep_6+27,  0, -80,  0,   0);

setMoveKey(  spep_6+19,  1, 30,  0,   0);
setMoveKey(  spep_6+27,  1, 60,  30,   0);

spep_9=spep_6+19; --パンチの開始

changeAnime( spep_9+10,   0, 14);--キック3
setRotateKey( spep_9+10 , 0 , -20);

playSe( spep_9+11,1000);--SE
hit3 = entryEffect(  spep_9+10,   1,   0,  1,   0,  0,  0);
hit4 = entryEffect(  spep_9+10,   908,   0,  1,   0,  0,  0);

setEffScaleKey(spep_9+10, hit3, 1.4, 1.4);
setEffScaleKey(spep_9+10, hit4, 1.4, 1.4);

setDamage( spep_9+11, 1, 0);  -- ダメージ振動等
changeAnime( spep_9+11,   1, 106 ); --敵モーション

setMoveKey(  spep_9+11,  0, -80,  0,   0);
setMoveKey(  spep_9+21,  0, -40,  0,   0);

setMoveKey(  spep_9+11,  1, 60,  30,   0);
setMoveKey(  spep_9+21,  1, 500,  800,   100);
setDisp( spep_9+22, 1, 0);

setScaleKey( spep_9+11, 1,  1.4, 1.4);
setScaleKey( spep_9+21, 1,  0.5, 0.5);

--setRotateKey( spep_9+21 , 0 , 20);
setRotateKey( spep_9+22 , 0 , -20);
changeAnime( spep_9+23,   0, 2 ); --右向きの待機モーション
setRotateKey( spep_9+23 , 0 , 0);

setBgScroll(spep_9+23,0);

ct = entryEffectLife( spep_9+35, 10011, 14, 0x100, -1, 0, -200, 300);    -- シュンッ
setEffScaleKey( spep_9+35, ct, 1.4, 1.4);

syunkan1=entryEffect( spep_9+35, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setMoveKey(  spep_9+34,  1, 600,  800,   100);

setDisp( spep_9+35, 0, 0);
playSe( spep_9+35, 37);
setDisp( spep_9+35, 1, 0);
setMoveKey(  spep_9+35,   1, -300, -1036, -60);

setEnvZoomEnable(spep_9+35,0);

ryusen_1=entryEffectLife( spep_6, 920, 29, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);
--setEffRotateKey( spep_6, ryusen_1, -40);

shuchusen8 = entryEffectLife( spep_6, 906, 42, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+11, 10017, 10, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_6+11, ct, 32, 5);
setEffAlphaKey(spep_6+11, ct, 255);
setEffAlphaKey(spep_9+21, ct, 0);
--setEffAlphaKey(spep_9+31, ct, 0);
setEffScaleKey(spep_6+9, ct, 0.0, 0.0);
setEffScaleKey(spep_6+15, ct, 1.8, 1.8);
--setEffScaleKey(spep_9+21, ct, 1.8, 1.8);
setEffScaleKey(spep_9+21, ct, 6.0, 6.0);

--２回目の連撃

ryusen_1=entryEffectLife( spep_9+10, 920, 48, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey(spep_9,ryusen_1,-70);
setEffScaleKey(  spep_9, ryusen_1, 1.6, 1.6);


spep_10=spep_9+50; --２カット目の開始 90-30

--演出
--背景スピード　超高速
setBgScroll(spep_10,100);
changeAnime( spep_10,   0, 1);--叩き落とし

setDisp( spep_10, 1, 1);

setScaleKey( spep_10, 1,  1.8, 1.8);
setScaleKey( spep_10+20, 1,  1.4, 1.4);
setScaleKey( spep_10+10, 0,  1.4, 1.4);


setEffAlphaKey(spep_10+10, aura1, 0);
setEffAlphaKey(spep_10+11, aura1, 255);
setEffAlphaKey(spep_10+19, aura1, 0);


setMoveKey(  spep_10+20,  0, -100,  100,   0);
setRotateKey( spep_10+19 , 0 , 0);
setScaleKey( spep_10+19, 0,  1.2, 1.2);

ct = entryEffectLife( spep_10+10, 10011, 6, 0x100, -1, 0, -200, 300);    -- シュンッ
setEffScaleKey(spep_10+10, ct, 1.4, 1.4);

syunkan1=entryEffect( spep_10+10, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( spep_10+10, 37);
setDisp( spep_10+15, 0, 1);

setEnvZoomEnable(spep_10+20,1);


setMoveKey(  spep_10+20,  1, 120,  100,   0);

changeAnime( spep_10+19,   0, 15);--叩き落とし
playSe( spep_10+20,1052);--SE
hit5 = entryEffect(  spep_10+19,  2,   0,  1,   0,  0,  0);
hit6 = entryEffect(  spep_10+19,   908,   0,  1,   0,  0,  0);

setEffScaleKey(spep_10+19, hit5, 1.6, 1.6);
setEffScaleKey(spep_10+19, hit6, 1.6, 1.6);

setDamage( spep_10+20, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+19,   1, 107 ); --敵モーション
--changeAnime( spep_10+19,   1, 108 ); --敵モーション

setMoveKey(  spep_10+20,  0, -70,  0,   0);
setMoveKey(  spep_10+30,  0, -300,  300,   0);

setMoveKey(  spep_10+20,  1, 120,  100,   0);
setMoveKey(  spep_10+47,  1,  400,  -700,  -120);
setMoveKey(  spep_10+47,  0, -700,  400,   0);

setEnvZoomEnable(spep_10+30,0);-- 18

shuchusen8 = entryEffectLife( spep_10, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_10+19, 10021, 52, 0, -1, 0, 220, 400); -- バゴォ
setEffShake(spep_10+19, ct, 32, 5);
setEffAlphaKey(spep_10+19, ct, 255);
setEffAlphaKey(spep_10+29, ct, 255);
setEffAlphaKey(spep_10+40, ct, 0);
setEffScaleKey(spep_10+17, ct, 0.0, 0.0);
setEffScaleKey(spep_10+23, ct, 1.8, 1.8);
setEffScaleKey(spep_10+31, ct, 1.8, 1.8);
setEffScaleKey(spep_10+40, ct, 6.0, 6.0);

ryusen_1=entryEffectLife( spep_10, 920, 19, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey( spep_10,ryusen_1,-70);
setEffScaleKey(  spep_10, ryusen_1, 1.6, 1.6);

ryusen_2=entryEffectLife( spep_10+20, 921, 30, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffScaleKey(  spep_10+20, ryusen_2, 1.6, 1.6);
setEffRotateKey( spep_10+20,ryusen_2,-140);


setShakeChara( spep_6, 0, 105, 15);
setShakeChara( spep_6, 1, 105, 15);
setShake(spep_6,105, 10);

-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 118, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406


spep_2=spep_10+45; --

--setMoveKey(  spep_2,  1,  -400,  300,  30);
setMoveKey(  spep_2,  1,  400,  -700,  -120);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
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
    
    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_2 + 0, shuchusen, 90, 20 );
    
    setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
    
    setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
    
    setEffRotateKey( spep_2 + 0, shuchusen, 0 );
    setEffRotateKey( spep_2 + 90, shuchusen, 0 );
    
    setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
    setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
    
    -- ** 音 ** --
    --playSe( spep_2 + 0, SE_05 );
    
    -- ** 次の準備 ** --
    entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
    entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
    

------------------------------------------------------
--ソードぶっ刺し
------------------------------------------------------


spep_11=spep_2+87; 

SP_start = 25; --

setScaleKey( spep_11, 0,  1.5, 1.5);
setDisp( spep_11, 0, 1);
setMoveKey(  spep_11,  0, 600,  -600,   -40);
changeAnime( spep_11,   0, 30);--構え
--[[
kame_hand5 = entryEffectLife( spep_11, SP_02, 22, 0x40+0x80,  0,  300, 0,  120);   -- マズル
setEffScaleKey( spep_11, kame_hand5, 0.3, 0.3);
setEffAlphaKey( spep_11, kame_hand5, 255);
setEffRotateKey( spep_11,kame_hand5, 20);
--]]
playSe( spep_11, 1034);

changeAnime( SP_start+ spep_11,   0, 30);--ぶっ刺し


kame_hand6 = entryEffectLife( spep_11, SP_02, 34, 0x40+0x100,  0,  300, 180,  -20);   -- マズル
setEffScaleKey( SP_start+ spep_11, kame_hand6, 0.3, 0.3);
setEffAlphaKey( SP_start+ spep_11, kame_hand6, 200);
setEffRotateKey( SP_start+spep_11,kame_hand6, 50);

kame_hand = entryEffectLife( SP_start+ spep_11+10, SP_01, 16, 0x40+0x100,  0,  300,  210,  -60);   -- 剣出現
setEffAlphaKey( SP_start+spep_11+10, kame_hand, 255);
setEffRotateKey( SP_start+spep_11+10,kame_hand, 50);
setEffScaleKey( SP_start+spep_11+10, kame_hand, 0.8, 0.8);



playSe( SP_start+ spep_11+10, 1042);


setMoveKey( SP_start+  spep_11+10,  0, 0,  0,   -40);
setMoveKey( SP_start+  spep_11+15,  0, 0,  0,   -40);

setMoveKey( SP_start+  spep_11+35,  0, -600,  600,   -40);

entryFade( SP_start+ spep_11+22, 3, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ spep_11+26, 0, 0);

setEnvZoomEnable(SP_start+ spep_11+35,1);

setEnvZoomEnable(SP_start+ spep_11+55,0);

zanngeki2 = entryEffect( SP_start+ spep_11+30, 7, 0x40,  1,  300,  0,  0);   -- 斬撃
setEffRotateKey( SP_start+spep_11+30,zanngeki2,-55);
setEffScaleKey( SP_start+ spep_11+30, zanngeki2, 1.8, 1.8);

setShakeChara( SP_start+ spep_11+30, 1, 20, 15);

playSe( SP_start+ spep_11+50, 1034);
playSe( SP_start+ spep_11+70, 1034);
playSe( SP_start+ spep_11+90, 1034);
playSe( SP_start+ spep_11+110, 1034);


changeAnime( SP_start+ spep_11+20,   1, 106);--横向き倒れ
setMoveKey( SP_start+  spep_11+20,  1, 650,  -840,   -80);
setRotateKey( SP_start+ spep_11+20 , 1 , -20);
setRotateKey( SP_start+ spep_11+50 , 1 , -20);

setDisp( SP_start+ spep_11+30, 1, 1);

setMoveKey( SP_start+  spep_11+30,  1, 0,  -150,   -80);
setMoveKey( SP_start+  spep_11+50,  1, 0,  -150,   -80);

playSe( SP_start+ spep_11+30, 1031);

kame_hand2 = entryEffectLife( SP_start+ spep_11+30, SP_03, 75, 0x40+0x100,  1,  300,  -460,  700);   -- 剣手前
setEffScaleKey( SP_start+ spep_11+30, kame_hand2, 1.7, 1.0);
setEffAlphaKey( SP_start+spep_11+30, kame_hand2, 255);
setEffRotateKey( SP_start+spep_11+30,kame_hand2,55);
setEffMoveKey( SP_start+spep_11+30, kame_hand2,-460,  700, 0);

setEffScaleKey( SP_start+ spep_11+50, kame_hand2, 1.7, 1.0);
setEffAlphaKey( SP_start+spep_11+50, kame_hand2, 255);
setEffRotateKey( SP_start+spep_11+50,kame_hand2,55);
setEffMoveKey( SP_start+spep_11+50, kame_hand2,-460,  700, 0);

kame_hand3 = entryEffectLife( SP_start+ spep_11+30, SP_04, 75, 0x40+0x80,  1, 300,  -340,  500);   -- 剣後ろ
setEffScaleKey( SP_start+ spep_11+30, kame_hand3, 1.0, 1.0);
setEffAlphaKey( SP_start+spep_11+30, kame_hand3, 255);
setEffRotateKey( SP_start+spep_11+30,kame_hand3,55);
setEffMoveKey( SP_start+spep_11+30, kame_hand3,-340,  500, 0);

setEffScaleKey( SP_start+ spep_11+50, kame_hand3, 1.0, 1.0);
setEffAlphaKey( SP_start+spep_11+50, kame_hand3, 255);
setEffRotateKey( SP_start+spep_11+50,kame_hand3,55);
setEffMoveKey( SP_start+spep_11+50, kame_hand3, -340,  500, 0);

--[[
SP_start3 = 20; --持ち上げまでの間隔調整
SP_start4 = 20; --振り上げ速度調整
SP_start5 = SP_start4+5; --振り上げた後の速度調整
--]]

SP_start3 = 20; --持ち上げまでの間隔調整
SP_start4 = 7; --振り上げ速度調整
SP_start5 = SP_start4+3; --振り上げた後の速度調整


--振り上げ中の移動調整
setMoveKey( SP_start4+ SP_start3+ SP_start+  spep_11+65,  1, 70,  0,   -80);
setMoveKey( SP_start5+ SP_start3+ SP_start+  spep_11+70,  1, 100,  0,   -80);

setEffRotateKey( SP_start4+ SP_start3+ SP_start+spep_11+65,kame_hand2,0);
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+80,kame_hand2,-45);

setEffMoveKey( SP_start4+ SP_start3+ SP_start+spep_11+65, kame_hand2, -850,  -10, 0);
setEffMoveKey( SP_start5+ SP_start3+ SP_start+spep_11+80, kame_hand2, -660,  -626, 0);

setEffRotateKey( SP_start4+ SP_start3+ SP_start+spep_11+65,kame_hand3,0);
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+80,kame_hand3,-45);

setEffMoveKey( 428, kame_hand3, -440,  215, 0);
--setEffMoveKey( 433, kame_hand3, -370,  254, 0);

setEffMoveKey( SP_start4+ SP_start3+ SP_start+spep_11+65, kame_hand3, -600,  -13, 0);
setEffMoveKey( SP_start5+ SP_start3+ SP_start+spep_11+73, kame_hand3, -510,  -265, 0);


--setEnvZoomEnable( SP_start3+SP_start+spep_11+75+40,0);

--吹っ飛ばし時のホワイトフェード
entryFade( SP_start5+ SP_start3+ SP_start+ spep_11+72, 4, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffMoveKey( SP_start5+ SP_start3+ SP_start+spep_11+77, kame_hand3, -500,  -160, 0);
--setEffAlphaKey( SP_start5+ SP_start3+ SP_start+ spep_11+76, zanngeki3, 255);
--setEffAlphaKey( SP_start5+ SP_start3+ SP_start+ spep_11+77, zanngeki3, 0);

zanngeki3 = entryEffect( SP_start5+ SP_start3+ SP_start+ spep_11+77, 7, 0x00,  -1, 0,  20,  150);   -- 斬撃
setEffRotateKey( SP_start5+ SP_start3+ SP_start+ spep_11+77,zanngeki3,-55);
setEffScaleKey( SP_start5+ SP_start3+ SP_start+ spep_11+77, zanngeki3, 1.8, 1.8);
playSe( SP_start5+ SP_start3+ SP_start+ spep_11+77, 1032);
setEffAlphaKey( SP_start5+ SP_start3+ SP_start+ spep_11+77, zanngeki3, 255);

setShakeChara( SP_start5+ SP_start3+ SP_start+ spep_11+77, 1, 10, 25);



kame_hand7 = entryEffectLife( SP_start5+ SP_start3+ SP_start+ spep_11+80, SP_03, 26, 0x40+0x100,  -1, 0,  -900,  480, 0);   -- 剣手前2
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+80,kame_hand7,-45);
setEffScaleKey( SP_start5+ SP_start3+ SP_start+ spep_11+80, kame_hand7, 1.0, 1.0);
setEffAlphaKey( SP_start5+ SP_start3+ SP_start+spep_11+80, kame_hand7, 255);

kame_hand8 = entryEffectLife( SP_start5+ SP_start3+ SP_start+ spep_11+80, SP_04, 26, 0x40+0x80,  -1,  0,  -940,  440);   -- 剣後ろ2
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+80,kame_hand8,-45);
setEffScaleKey( SP_start5+ SP_start3+ SP_start+ spep_11+80, kame_hand8, 1.0, 1.0);
setEffAlphaKey( SP_start5+ SP_start3+ SP_start+spep_11+80, kame_hand8, 255);


ryusen_1=entryEffectLife( spep_11, 920, 166, 0x80,  -1,  0,  0,  0); -- 流線 406
setEffRotateKey( spep_11,ryusen_1,60);
setEffScaleKey( spep_11, ryusen_1, 1.6, 1.6);

setEffRotateKey( SP_start3+ SP_start+spep_11+45,ryusen_1,60);
setEffRotateKey( SP_start4+ SP_start3+ SP_start+spep_11+65,ryusen_1,0);
setEffRotateKey( SP_start5+ SP_start3+ SP_start+spep_11+85,ryusen_1,-60);

setMoveKey( SP_start4+ SP_start3+ SP_start+  spep_11+65,  1, 100,  0,   0);
setRotateKey( SP_start4+ SP_start3+ SP_start+ spep_11+65, 1 , -80);
setRotateKey( SP_start5+ SP_start3+ SP_start+ spep_11+80, 1 , -80);

setMoveKey( SP_start5+ SP_start3+ SP_start+  spep_11+80,  1, 280,  400,   20);
changeAnime( SP_start5+ SP_start3+ SP_start+ spep_11+80,   1, 108);--吹き飛び
setRotateKey( SP_start5+ SP_start3+ SP_start+ spep_11+85, 1 , -30);


entryFadeBg( spep_11, 0, 166, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

setMoveKey( SP_start5+ SP_start3+ SP_start+  spep_11+100,  1, 480,  600,   100);

entryFade( SP_start5+ SP_start3+ SP_start+ spep_11+102, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start5+ SP_start3+ SP_start+ spep_11+106, 0, 0);
setDisp( SP_start5+ SP_start3+ SP_start+ spep_11+106, 1, 0);
setMoveKey( SP_start5+ SP_start3+ SP_start+  spep_11+106,  1,650,  -200,   0);
setEffAlphaKey( SP_start5+ SP_start3+ SP_start+spep_11+106, kame_hand3, 255);
setScaleKey( SP_start5+ SP_start3+ SP_start+spep_11+106, 0,  1.5, 1.5);


spep_5 = SP_start5+ SP_start3+ SP_start+spep_11+110;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setMoveKey( spep_5,  0, 0,  0,   0);
playSe( spep_5, 1018);
playSe( spep_5+75, 1018);


shuchusen5 = entryEffectLife( spep_5, 906, 127, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+60, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+125, shuchusen5, 1.0, 1.0);


entryFadeBg( spep_5-1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--[[
sen2 = entryEffectLife( spep_5-1, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5-1, sen2, -60);
setEffScaleKey( spep_5-1, sen2, 1.6, 1.6);
--]]

bejitto = entryEffect( spep_5,   SP_06, 0x80,  -1,  0,  0,  0);   -- 斬撃
bejitto2 = entryEffect( spep_5,   SP_06, 0x80,  -1,  0,  0,  0);   -- 斬撃

setEffScaleKey( spep_5, bejitto2, -1.0, 1.0);
setEffScaleKey( spep_5+30, bejitto2, -1.2, 1.2);
setEffScaleKey( spep_5+49, bejitto2, -1.2, 1.2);
setEffScaleKey( spep_5+60, bejitto2, -4.8, 4.8);
setEffAlphaKey( spep_5, bejitto2, 0);
setEffAlphaKey( spep_5+49, bejitto2, 0);
setEffAlphaKey( spep_5+50, bejitto2, 100);
setEffAlphaKey( spep_5+70, bejitto2, 0);

setEffScaleKey( spep_5, bejitto, -1.0, 1.0);
setEffScaleKey( spep_5+30, bejitto, -1.2, 1.2);
setEffScaleKey( spep_5+60, bejitto, -1.2, 1.2);
setEffScaleKey( spep_5+70, bejitto, -3.6, 3.6);
setEffScaleKey( spep_5+75, bejitto, -3.6, 3.6);

setEffMoveKey( spep_5, bejitto, 0,  0, 0);
setEffMoveKey( spep_5+65, bejitto, 0,  0, 0);
setEffMoveKey( spep_5+68, bejitto, 150,  -150, 0);
setEffMoveKey( spep_5+72, bejitto, -1200, -640, 0);



SP_start2 = -2;
spep_15 = SP_start2+ spep_5;

entryFade( spep_15+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey( spep_15+90,  0, 0,  0,   0);
removeAllEffect( spep_15+90);

------------------------------------------------------
-- 爆発 (110F)　
------------------------------------------------------


zanngeki = entryEffect( spep_15+99, SP_08, 0,  -1,  0,  0,  0);   -- 斬撃
setEffScaleKey( spep_15+99, zanngeki, 3.0, 3.0);
setEffRotateKey( spep_15+99,zanngeki,30);


setShake(spep_15+104,10, 20);
playSe( spep_15+104, 1032);

entryFadeBg( spep_15+99-1, 0, 22, 0, 10, 10, 10, 230);       -- ベース暗め　背景

spep_16 = spep_15+10;

entryFade( spep_16+108, 1,  1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- black fade

setDisp( spep_16+110, 1, 1);
changeAnime( spep_16+110, 0, 31);                        -- 気ダメ後ろ
changeAnime( spep_16+110, 1, 106);                        -- 気ダメ後ろ
setMoveKey( spep_16+110,    0,   0,  0,   0);

setMoveKey( spep_16+110,    1,   -250,  350,   0);

setScaleKey( spep_16+110,   1,   0.8,  0.8);

entryFadeBg( spep_16+110, 0, 120, 0, 10, 10, 10, 180);       -- ベース暗め　背景

bakuhatu = entryEffect( spep_16+110, SP_07, 0x00,  -1, 0,  -50,  -50);   -- 爆発
setEffScaleKey( spep_16+110, bakuhatu, -1.2, 1.2);
--setQuake(spep_16+110,40, 22);

playSe( spep_16+128, SE_10);

setDamage( spep_16+146, 1, 0);  -- ダメージ振動等

shuchusen = entryEffectLife( spep_16+103, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage( spep_16+146 -56);

--entryFade( spep_16+168, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_16+188);

end

--パン(GT)　1010130
--かめはめ波

fcolor_r = 245 ;
fcolor_g = 245 ;
fcolor_b = 245 ;
 
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 100000
SP_02 = 100001
SP_03 = 100002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI( 0, 0);

setDisp( 0, 1, 0);

setMoveKey( 0, 1, 0, -2000, 0);
setMoveKey( 1, 1, 0, -2000, 0);
setMoveKey( 2, 1, 0, -2000, 0);
setMoveKey( 3, 1, 0, -2000, 0);
setMoveKey( 4, 1, 0, -2000, 0);
setMoveKey( 5, 1, 0, -2000, 0);
setMoveKey( 6, 1, 0, -2000, 0);
setMoveKey( 0, 1, 0, -2000, 0);

setScaleKey( 0, 1, 1.6, 1.6);
setScaleKey( 1, 1, 1.6, 1.6);
setScaleKey( 2, 1, 1.6, 1.6);
setScaleKey( 3, 1, 1.6, 1.6);
setScaleKey( 4, 1, 1.6, 1.6);
setScaleKey( 5, 1, 1.6, 1.6);
setScaleKey( 6, 1, 1.6, 1.6);

setRotateKey( 0, 1, 0);
setRotateKey( 1, 1, 0);
setRotateKey( 2, 1, 0);
setRotateKey( 3, 1, 0);
setRotateKey( 4, 1, 0);
setRotateKey( 5, 1, 0);
setRotateKey( 6, 1, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--味方側
------------------------------------------------------
------------------------------------------------------
-- アイドリング
------------------------------------------------------
--アイドリング
setDisp( 0, 0, 1);
changeAnime( 0, 0, 0);

setMoveKey( 0, 0, 0, -54, 0);
setMoveKey( 1, 0, 0, -54, 0);
setMoveKey( 2, 0, 0, -54, 0);
setMoveKey( 3, 0, 0, -54, 0);
setMoveKey( 4, 0, 0, -54, 0);
setMoveKey( 5, 0, 0, -54, 0);
setMoveKey( 6, 0, 0, -54, 0);

setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 0, 1.5, 1.5);
setScaleKey( 6, 0, 1.5, 1.5);

setRotateKey( 0, 0, 0);
setRotateKey( 1, 0, 0);
setRotateKey( 2, 0, 0);
setRotateKey( 3, 0, 0);
setRotateKey( 4, 0, 0);
setRotateKey( 5, 0, 0);
setRotateKey( 6, 0, 0);

setMoveKey( 20, 0, 0, -54, 0);
setScaleKey( 20, 0, 1.5, 1.5);
setRotateKey( 20, 0, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
spep_0 = 20;

--気溜め
changeAnime( spep_0, 0, 17);
setDisp( spep_0+61, 0, 0);

setMoveKey( spep_0, 0, 0, -54, 0);
setScaleKey( spep_0, 0, 1.5, 1.5);
setRotateKey( spep_0, 0, 0);

setMoveKey( spep_0+60, 0, 0, -54, 0);
setScaleKey( spep_0+60, 0, 1.5, 1.5);
setRotateKey( spep_0+60, 0, 0);

--eff_001
ef2 = entryEffectLife( spep_0, 1502, 60, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_0, ef2, 0, 0);
setEffScaleKey( spep_0, ef2, 1, 1);
setEffRotateKey( spep_0, ef2, 0);
setEffAlphaKey( spep_0, ef2, 255);

setEffMoveKey( spep_0+60, ef2, 0, 0);
setEffScaleKey( spep_0+60, ef2, 1, 1);
setEffRotateKey( spep_0+60, ef2, 0);
setEffAlphaKey( spep_0+60, ef2, 255);

--オーラ
aura0 = entryEffectLife( spep_0, 311, 60, 0x80, -1, 0, 0, -200);

setEffMoveKey( spep_0, aura0, 0, -200);
setEffScaleKey( spep_0, aura0, 1.5, 1.5);
setEffRotateKey( spep_0, aura0, 0);
setEffAlphaKey( spep_0, aura0, 255);

setEffMoveKey( spep_0+60, aura0, 0, -200);
setEffScaleKey( spep_0+60, aura0, 1.5, 1.5);
setEffRotateKey( spep_0+60, aura0, 0);
setEffAlphaKey( spep_0+60, aura0, 255);

-- 書き文字エントリー
ctzu = entryEffectLife( spep_0, 10013, 40, 0x100, -1, 0, 0, 146); -- ズズンッ

setEffShake( spep_0, ctzu, 30, 7);
setEffAlphaKey( spep_0, ctzu, 255);
setEffAlphaKey( spep_0+30, ctzu, 255);
setEffAlphaKey( spep_0+40, ctzu, 0);
setEffScaleKey( spep_0, ctzu, 0.1, 0.1);
setEffScaleKey( spep_0+10, ctzu, 2.0, 2.0);
setEffScaleKey( spep_0+40, ctzu, 2.0, 2.0);

--画面揺れ
setShakeChara( spep_0, 0, 60, 5);

--瞬間移動エフェクト
syun1 = entryEffectLife( spep_0+58, 700, 10, 0x100, -1, 0, 0, -54);
setEffMoveKey( spep_0+58, syun1, 0, 0, -54);
setEffScaleKey( spep_0+58, syun1, 1.0, 1.0);
setEffRotateKey( spep_0+58, syun1, 0);
setEffAlphaKey( spep_0+58, syun1, 255);

setEffMoveKey( spep_0+68, syun1, 0, 0, -54);
setEffScaleKey( spep_0+68, syun1, 1.0, 1.0);
setEffRotateKey( spep_0+68, syun1, 0);
setEffAlphaKey( spep_0+68, syun1, 255);

--シュンッ(書き文字)
ctsyun1 = entryEffectLife( spep_0+58, 10011, 10, 0x100, -1, 0, 200, 100);
setEffMoveKey( spep_0+58, ctsyun1, 200, 100);
setEffScaleKey( spep_0+58, ctsyun1, 1.4, 1.4);
setEffRotateKey( spep_0+58, ctsyun1, 0);
setEffAlphaKey( spep_0+58, ctsyun1, 255);

setEffMoveKey( spep_0+68, ctsyun1, 200, 100);
setEffScaleKey( spep_0+68, ctsyun1, 1.4, 1.4);
setEffRotateKey( spep_0+68, ctsyun1, 0);
setEffAlphaKey( spep_0+68, ctsyun1, 255);

--white fade
entryFade( spep_0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_0+70, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--暗め背景
--entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 200);

--SE
playSe( spep_0+58, 43);
playSe( spep_0, SE_02);
playSe( spep_0, SE_01);

------------------------------------------------------
-- カメラ移動(100F)
------------------------------------------------------
spep_1a = spep_0+80;

--敵キャラ
setDisp( spep_1a, 1, 1);
setDisp( spep_1a+50, 1, 0);
changeAnime( spep_1a, 1, 102);

setMoveKey( spep_1a, 1, 100, -100, 0);
setMoveKey( spep_1a+20, 1, 100, -100, 0);
setMoveKey( spep_1a+40, 1, 100, -700, 0);
setScaleKey( spep_1a, 1, 1, 1);
setScaleKey( spep_1a+50, 1, 1, 1);
setRotateKey( spep_1a, 1, 0);
setRotateKey( spep_1a+50, 1, 0);

--縦流線
ryusen_t = entryEffectLife( spep_1a+20, 922, 30, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_1a+20, ryusen_t, 0, 0);
setEffScaleKey( spep_1a+20, ryusen_t, 1.0, 1.0);
setEffRotateKey( spep_1a+20, ryusen_t, 0);
setEffAlphaKey( spep_1a+20, ryusen_t, 255);

setEffMoveKey( spep_1a+50, ryusen_t, -0, 0);
setEffScaleKey( spep_1a+50, ryusen_t, 1.0, 1.0);
setEffRotateKey( spep_1a+50, ryusen_t, 0);
setEffAlphaKey( spep_1a+50, ryusen_t, 255);

--[[集中線
shuchusen_1 = entryEffectLife( spep_1a+60, 906, 10, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_1a+60, shuchusen_1, 0, 0);
setEffScaleKey( spep_1a+60, shuchusen_1, 1.5, 1.5);
setEffRotateKey( spep_1a+60,shuchusen_1, 0);
setEffAlphaKey( spep_1a+60, shuchusen_1, 255);

setEffMoveKey( spep_1a+70, shuchusen_1, 0, 0);
setEffScaleKey( spep_1a+70, shuchusen_1, 1.5, 1.5);
setEffRotateKey( spep_1a+70,shuchusen_1, 0);
setEffAlphaKey( spep_1a+70, shuchusen_1, 255);]]

--瞬間移動エフェクト
syun2 = entryEffectLife( spep_1a+62, 700, 10, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_1a+62, syun2, 0, 0);
setEffScaleKey( spep_1a+62, syun2, 2.0, 2.0);
setEffRotateKey( spep_1a+62, syun2, 0);
setEffAlphaKey( spep_1a+62, syun2, 255);

setEffMoveKey( spep_1a+72, syun2, 0, 0);
setEffScaleKey( spep_1a+72, syun2, 1.5, 1.5);
setEffRotateKey( spep_1a+72, syun2, 0);
setEffAlphaKey( spep_1a+72, syun2, 255);

--シュンッ(書き文字)
ctsyun2 = entryEffectLife( spep_1a+62, 10011, 10, 0x100, -1, 0, 200, 100);
setEffMoveKey( spep_1a+62, ctsyun2, 200, 100);
setEffScaleKey( spep_1a+62, ctsyun2, 1.4, 1.4);
setEffRotateKey( spep_1a+62, ctsyun2, 0);
setEffAlphaKey( spep_1a+62, ctsyun2, 255);

setEffMoveKey( spep_1a+72, ctsyun2, 200, 100);
setEffScaleKey( spep_1a+72, ctsyun2, 1.4, 1.4);
setEffRotateKey( spep_1a+72, ctsyun2, 0);
setEffAlphaKey( spep_1a+72, ctsyun2, 255);

--徐々に暗くなる背景
entryFadeBg( spep_1a+20, 10, 50, 0, 0, 0, 0, 255);

--SE
playSe( spep_1a+10, 1072);
playSe( spep_1a+58, 43);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_1 = spep_1a+70

--かめはめ波溜め
setDisp( spep_1, 0, 1);
setDisp( spep_1+100, 0, 0);

changeAnime( spep_1, 0, 30);

setMoveKey( spep_1, 0, 0, 0, 0);
setMoveKey( spep_1+100, 0, 0, 0, 0);

setScaleKey( spep_1, 0, 2.0, 2.0);
setScaleKey( spep_1+100, 0, 2.0, 2.0);

setRotateKey( spep_1, 0, 0);
setRotateKey( spep_1+100, 0, 0);

--集中線
shuchusen1 = entryEffectLife( spep_1-8, 906, 108, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_1-8, shuchusen1, 0, 0);
setEffScaleKey( spep_1-8, shuchusen1, 1.0, 1.0);
setEffRotateKey( spep_1-8,shuchusen1, 0);
setEffAlphaKey( spep_1-8, shuchusen1, 255);

setEffMoveKey( spep_1+100, shuchusen1, 0, 0);
setEffScaleKey( spep_1+100, shuchusen1, 1.0, 1.0);
setEffRotateKey( spep_1+100,shuchusen1, 0);
setEffAlphaKey( spep_1+100, shuchusen1, 255);

--オーラ
--[[aura1 = entryEffectLife( spep_1, 311, 10, 0x80, -1, 0, 0, -150);

setEffMoveKey( spep_1, aura1, 0, -150);
setEffScaleKey( spep_1, aura1, 2.0, 2.0);
setEffRotateKey( spep_1, aura1, 0);
setEffAlphaKey( spep_1, aura1, 255);

setEffMoveKey( spep_1+10, aura1, 0, -150);
setEffScaleKey( spep_1+10, aura1, 2.0, 2.0);
setEffRotateKey( spep_1+10, aura1, 0);
setEffAlphaKey( spep_1+10, aura1, 255);

setShakeChara( spep_1+10, 0, 80, 5);]]

--かめはめ波エフェクト
kame_hand = entryEffectLife( spep_1, SP_01, 90, 0x100, -1, 0, -30, 75);

setEffMoveKey( spep_1, kame_hand, -30, 75);
setEffMoveKey( spep_1+90, kame_hand, -30, 75);

setEffScaleKey( spep_1, kame_hand, 0.3, 0.3);
setEffScaleKey( spep_1+90, kame_hand, 0.3, 0.3);

setEffRotateKey( spep_1, kame_hand, 0);
setEffRotateKey( spep_1+90, kame_hand, 0);

setEffAlphaKey( spep_1, kame_hand, 255);
setEffAlphaKey( spep_1+90, kame_hand, 255);

--setEffShake( spep_1+10, kame_hand, 80, 10);

--顔カットイン・セリフカットイン
speff1 = entryEffect( spep_1, 1504, 0x100, -1, 0, 0, 0);
setEffReplaceTexture( speff1, 3, 2);                     
speff2 = entryEffect( spep_1, 1505, 0x100, -1, 0, 0, 0);
setEffReplaceTexture( speff2, 4, 5);

-- eff_004 (気)
efe1 = entryEffectLife( spep_1, 1503, 90, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_1, efe1, 0, 0);
setEffScaleKey( spep_1, efe1, 1, 1);
setEffRotateKey( spep_1, efe1, 0);
setEffAlphaKey( spep_1, efe1, 255);

setEffMoveKey( spep_1+90, efe1, 0, 0);
setEffScaleKey( spep_1+90, efe1, 1, 1);
setEffRotateKey( spep_1+90, efe1, 0);
setEffAlphaKey( spep_1+90, efe1, 255);

-- eff_003 (気)
efe2 = entryEffectLife( spep_1, 1502, 90, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_1, efe2, 0, 0);
setEffScaleKey( spep_1, efe2, 1, 1);
setEffRotateKey( spep_1, efe2, 0);
setEffAlphaKey( spep_1, efe2, 255);

setEffMoveKey( spep_1+90, efe2, 0, 0);
setEffScaleKey( spep_1+90, efe2, 1, 1);
setEffRotateKey( spep_1+90, efe2, 0);
setEffAlphaKey( spep_1+90, efe2, 255);

--オーラ
aura1 = entryEffectLife( spep_1, 311, 90, 0x80, -1, 0, 0, -150);

setEffMoveKey( spep_1, aura1, 0, -150);
setEffScaleKey( spep_1, aura1, 2.0, 2.0);
setEffRotateKey( spep_1, aura1, 0);
setEffAlphaKey( spep_1, aura1, 255);

setEffMoveKey( spep_1+90, aura1, 0, -150);
setEffScaleKey( spep_1+90, aura1, 2.0, 2.0);
setEffRotateKey( spep_1+90, aura1, 0);
setEffAlphaKey( spep_1+90, aura1, 255);

setShakeChara( spep_1, 0, 90, 5);

--ゴゴゴゴ
ct2 = entryEffectLife( spep_1+12, 190006, 74, 0x100, -1, 0, 130, 512);

setEffMoveKey( spep_1+12, ct2, 130, 512);
setEffMoveKey( spep_1+86, ct2, 130, 512);

setEffScaleKey( spep_1+12, ct2, 0.8, 0.8);
setEffScaleKey( spep_1+80, ct2, 0.8, 0.8);
setEffScaleKey( spep_1+86, ct2, 4, 4);

setEffRotateKey( spep_1+12, ct2, 0);
setEffRotateKey( spep_1+86, ct2, 0);

setEffAlphaKey( spep_1+12, ct2, 0);
setEffAlphaKey( spep_1+13, ct2, 255);
setEffAlphaKey( spep_1+14, ct2, 255);
setEffAlphaKey( spep_1+34, ct2, 255 );
setEffAlphaKey( spep_1+80, ct2, 255 );
setEffAlphaKey( spep_1+86, ct2, 0 );

setEffShake( spep_1+12, ct2, 74, 8);

--white fade
entryFade( spep_1+82, 8, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--暗め背景
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 200);

--SE
playSe( spep_1, SE_03);
playSe( spep_1+18, SE_04);
playSe( spep_1+21, SE_03);
playSe( spep_1+41, SE_03);
playSe( spep_1+61, SE_03);


--playSe( spep_1+11, SE_04);

--playSe( spep_1+21, SE_03);
--playSe( spep_1+41, SE_03);
--playSe( spep_1+61, SE_03);
--playSe( spep_1+81, SE_03);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_2 = spep_1+100;

--カード
speff2 = entryEffect( spep_2, 1507, 0x80, -1, 0, 0, 0);   
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade( spep_2+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);

--SE
playSe( spep_2, SE_05);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_3 = spep_2+90;

setDisp( spep_3, 0, 1);
changeAnime( spep_3, 0, 31);

setMoveKey( spep_3-1, 0, 0, 0, 0);
setMoveKey( spep_3, 0, 0, -600, 0);
setMoveKey( spep_3+1, 0, 0, -600, 0);
setMoveKey( spep_3+10, 0, 0, 100, 0);

kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  300,  0,  -200);   -- 伸びるかめはめ波
setEffRotateKey( spep_3, kamehame_beam, 90);

-- 途中からカメハメハが伸び 
setMoveKey( spep_3+39, 0, 0, 100, 0);
setMoveKey( spep_3+40, 0, 0, 100, 0);--300
setMoveKey( spep_3+48, 0, 0, 1000, 0);

--流線
ryusen = entryEffectLife( spep_3, 920, 109, 0x80,  -1,  0,  0,  0);
setEffRotateKey( spep_3 ,ryusen, 90);
setEffScaleKey( spep_3, ryusen, 1.5, 1.5);

setShakeChara( spep_3+45, 0, 54, 50);

--集中線
shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);

setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

--ズオッ
ctzuo = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300);

setEffShake(spep_3+8, ctzuo, 32, 5);
setEffAlphaKey(spep_3+8, ctzuo, 255);
setEffAlphaKey(spep_3+20, ctzuo, 255);
setEffAlphaKey(spep_3+40, ctzuo, 0);
setEffScaleKey(spep_3+8, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_3+12, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3+32, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3+40, ctzuo, 6.0, 6.0);

--white fade
entryFade( spep_3+105, 3, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255);

--暗め背景
entryFadeBg( spep_3, 0, 109, 0, 0, 0, 0, 200);

playSe( spep_3+4, SE_07);
playSe( spep_3+40, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_4 = spep_3+110;

--[[setDisp( spep_4, 0, 0);--370
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  0,  -200,   0);
setMoveKey(  spep_4,    1,  0,  -200,   0);
setMoveKey(  spep_4+1,    1,  0,  -200,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

setMoveKey(  spep_4+50,    1,   0,  0,   0);
setMoveKey(  spep_4+97,    1,  0,   0,   0);
setScaleKey(  spep_4+97,   1,   1.6,  1.6);]]

setDisp( spep_4, 0, 0);--味方消し

setDisp( spep_4, 1, 1);--敵表示
changeAnime( spep_4, 1, 118);

setMoveKey( spep_4, 1, 100, -400, 0);
setMoveKey( spep_4+90, 1, 100, -400, 0);
setScaleKey( spep_4, 1, 1.0, 1.0);
setScaleKey( spep_4+90, 1, 2.5, 2.5);

--斜め流線
ryusen_2 = entryEffectLife( spep_4, 921, 99, 0x80,  -1,  0,  0,  0);
setEffRotateKey(spep_4 ,ryusen_2 ,270);
setEffScaleKey(spep_4, ryusen_2, 2, 2);

--迫るかめはめ波
kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  300);
setEffRotateKey(spep_4 ,kamehame_beam2 ,90);
setEffScaleKey(spep_4, kamehame_beam2, 0.3, 0.3);
setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+60, ct, 255);
setEffAlphaKey(spep_4+80, ct, 0);

--white fade
entryFade( spep_4+70, 20, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);
--entryFade( spep_4+92, 6, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--暗め背景
entryFadeBg( spep_4, 0, 99, 0, 0, 0, 0, 200);


spep_5=spep_4+100
------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+40; --エンドフェイズのフレーム数を置き換える

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

--SE
--playSe( spep_4, SE_09);
playSe( spep_4, SE_06);

------------------------------------------------------
-- 爆発
------------------------------------------------------
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, -4.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

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
setScaleKey( spep_5 + 112, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);
playSe( spep_5, SE_10);

setDamage( spep_5 + 16, 1, 0);
setShake(spep_5 + 8,6,15);
setShake(spep_5 + 14,15,10);

setShakeChara( spep_5+30, 1, 5,  10);
setShakeChara( spep_5+35, 1, 10, 20);

--ガッ
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 20, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 16, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 17, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 18, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 19, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 20, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 112, ctGa, 4.0, 4.0 );

setEffRotateKey( spep_5 + 14, ctGa, -30 );
setEffRotateKey( spep_5 + 16, ctGa,   0 );
setEffRotateKey( spep_5 + 18, ctGa, -30 );
setEffRotateKey( spep_5 + 20, ctGa,   0 );
setEffRotateKey( spep_5 + 22, ctGa, -30 );
setEffRotateKey( spep_5 + 24, ctGa,   0 );
setEffRotateKey( spep_5 + 26, ctGa, -30 );
setEffRotateKey( spep_5 + 28, ctGa,   0 );
setEffRotateKey( spep_5 + 30, ctGa, -30 );
setEffRotateKey( spep_5 + 112, ctGa, -30 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（黒）
shuchusen4 = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1,  0,  0,  0);

--集中線（白）
shuchusen3 = entryEffectLife( spep_5+14, 906, 120, 0x80,  -1,  0,  0,  0);

--ひび割れ
hibi = entryEffect( spep_5+4, 1600,  0x00,  -1,  0,  30, -130);

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10,  1,  8,  8,  8, 255);
endPhase( spep_5+110);

else

------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング
------------------------------------------------------
--アイドリング
setDisp( 0, 0, 1);
changeAnime( 0, 0, 0);

setMoveKey( 0, 0, 0, -54, 0);
setMoveKey( 1, 0, 0, -54, 0);
setMoveKey( 2, 0, 0, -54, 0);
setMoveKey( 3, 0, 0, -54, 0);
setMoveKey( 4, 0, 0, -54, 0);
setMoveKey( 5, 0, 0, -54, 0);
setMoveKey( 6, 0, 0, -54, 0);

setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 0, 1.5, 1.5);
setScaleKey( 6, 0, 1.5, 1.5);

setRotateKey( 0, 0, 0);
setRotateKey( 1, 0, 0);
setRotateKey( 2, 0, 0);
setRotateKey( 3, 0, 0);
setRotateKey( 4, 0, 0);
setRotateKey( 5, 0, 0);
setRotateKey( 6, 0, 0);

setMoveKey( 20, 0, 0, -54, 0);
setScaleKey( 20, 0, 1.5, 1.5);
setRotateKey( 20, 0, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
spep_0 = 20;

--気溜め
changeAnime( spep_0, 0, 17);
setDisp( spep_0+61, 0, 0);

setMoveKey( spep_0, 0, 0, -54, 0);
setScaleKey( spep_0, 0, 1.5, 1.5);
setRotateKey( spep_0, 0, 0);

setMoveKey( spep_0+60, 0, 0, -54, 0);
setScaleKey( spep_0+60, 0, 1.5, 1.5);
setRotateKey( spep_0+60, 0, 0);

--eff_001
ef2 = entryEffectLife( spep_0, 1502, 60, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_0, ef2, 0, 0);
setEffScaleKey( spep_0, ef2, 1, 1);
setEffRotateKey( spep_0, ef2, 0);
setEffAlphaKey( spep_0, ef2, 255);

setEffMoveKey( spep_0+60, ef2, 0, 0);
setEffScaleKey( spep_0+60, ef2, 1, 1);
setEffRotateKey( spep_0+60, ef2, 0);
setEffAlphaKey( spep_0+60, ef2, 255);

--オーラ
aura0 = entryEffectLife( spep_0, 311, 60, 0x80, -1, 0, 0, -200);

setEffMoveKey( spep_0, aura0, 0, -200);
setEffScaleKey( spep_0, aura0, 1.5, 1.5);
setEffRotateKey( spep_0, aura0, 0);
setEffAlphaKey( spep_0, aura0, 255);

setEffMoveKey( spep_0+60, aura0, 0, -200);
setEffScaleKey( spep_0+60, aura0, 1.5, 1.5);
setEffRotateKey( spep_0+60, aura0, 0);
setEffAlphaKey( spep_0+60, aura0, 255);

-- 書き文字エントリー
ctzu = entryEffectLife( spep_0, 10013, 40, 0x100, -1, 0, 0, 146); -- ズズンッ

setEffShake( spep_0, ctzu, 30, 7);
setEffAlphaKey( spep_0, ctzu, 255);
setEffAlphaKey( spep_0+30, ctzu, 255);
setEffAlphaKey( spep_0+40, ctzu, 0);
setEffScaleKey( spep_0, ctzu, 0.1, 0.1);
setEffScaleKey( spep_0+10, ctzu, 2.0, 2.0);
setEffScaleKey( spep_0+40, ctzu, 2.0, 2.0);

--画面揺れ
setShakeChara( spep_0, 0, 60, 5);

--瞬間移動エフェクト
syun1 = entryEffectLife( spep_0+58, 700, 10, 0x100, -1, 0, 0, -54);
setEffMoveKey( spep_0+58, syun1, 0, 0, -54);
setEffScaleKey( spep_0+58, syun1, 1.0, 1.0);
setEffRotateKey( spep_0+58, syun1, 0);
setEffAlphaKey( spep_0+58, syun1, 255);

setEffMoveKey( spep_0+68, syun1, 0, 0, -54);
setEffScaleKey( spep_0+68, syun1, 1.0, 1.0);
setEffRotateKey( spep_0+68, syun1, 0);
setEffAlphaKey( spep_0+68, syun1, 255);

--シュンッ(書き文字)
ctsyun1 = entryEffectLife( spep_0+58, 10011, 10, 0x100, -1, 0, 200, 100);
setEffMoveKey( spep_0+58, ctsyun1, 200, 100);
setEffScaleKey( spep_0+58, ctsyun1, 1.4, 1.4);
setEffRotateKey( spep_0+58, ctsyun1, 0);
setEffAlphaKey( spep_0+58, ctsyun1, 255);

setEffMoveKey( spep_0+68, ctsyun1, 200, 100);
setEffScaleKey( spep_0+68, ctsyun1, 1.4, 1.4);
setEffRotateKey( spep_0+68, ctsyun1, 0);
setEffAlphaKey( spep_0+68, ctsyun1, 255);

--white fade
entryFade( spep_0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_0+70, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--暗め背景
--entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 200);

--SE
playSe( spep_0+58, 43);
playSe( spep_0, SE_02);
playSe( spep_0, SE_01);

------------------------------------------------------
-- カメラ移動(100F)
------------------------------------------------------
spep_1a = spep_0+80;

--敵キャラ
setDisp( spep_1a, 1, 1);
setDisp( spep_1a+50, 1, 0);
changeAnime( spep_1a, 1, 102);

setMoveKey( spep_1a, 1, 100, -100, 0);
setMoveKey( spep_1a+20, 1, 100, -100, 0);
setMoveKey( spep_1a+40, 1, 100, -700, 0);
setScaleKey( spep_1a, 1, 1, 1);
setScaleKey( spep_1a+50, 1, 1, 1);
setRotateKey( spep_1a, 1, 0);
setRotateKey( spep_1a+50, 1, 0);

--縦流線
ryusen_t = entryEffectLife( spep_1a+20, 922, 30, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_1a+20, ryusen_t, 0, 0);
setEffScaleKey( spep_1a+20, ryusen_t, 1.0, 1.0);
setEffRotateKey( spep_1a+20, ryusen_t, 0);
setEffAlphaKey( spep_1a+20, ryusen_t, 255);

setEffMoveKey( spep_1a+50, ryusen_t, -0, 0);
setEffScaleKey( spep_1a+50, ryusen_t, 1.0, 1.0);
setEffRotateKey( spep_1a+50, ryusen_t, 0);
setEffAlphaKey( spep_1a+50, ryusen_t, 255);

--[[集中線
shuchusen_1 = entryEffectLife( spep_1a+60, 906, 10, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_1a+60, shuchusen_1, 0, 0);
setEffScaleKey( spep_1a+60, shuchusen_1, 1.5, 1.5);
setEffRotateKey( spep_1a+60,shuchusen_1, 0);
setEffAlphaKey( spep_1a+60, shuchusen_1, 255);

setEffMoveKey( spep_1a+70, shuchusen_1, 0, 0);
setEffScaleKey( spep_1a+70, shuchusen_1, 1.5, 1.5);
setEffRotateKey( spep_1a+70,shuchusen_1, 0);
setEffAlphaKey( spep_1a+70, shuchusen_1, 255);]]

--瞬間移動エフェクト
syun2 = entryEffectLife( spep_1a+62, 700, 10, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_1a+62, syun2, 0, 0);
setEffScaleKey( spep_1a+62, syun2, 2.0, 2.0);
setEffRotateKey( spep_1a+62, syun2, 0);
setEffAlphaKey( spep_1a+62, syun2, 255);

setEffMoveKey( spep_1a+72, syun2, 0, 0);
setEffScaleKey( spep_1a+72, syun2, 1.5, 1.5);
setEffRotateKey( spep_1a+72, syun2, 0);
setEffAlphaKey( spep_1a+72, syun2, 255);

--シュンッ(書き文字)
ctsyun2 = entryEffectLife( spep_1a+62, 10011, 10, 0x100, -1, 0, 200, 100);
setEffMoveKey( spep_1a+62, ctsyun2, 200, 100);
setEffScaleKey( spep_1a+62, ctsyun2, 1.4, 1.4);
setEffRotateKey( spep_1a+62, ctsyun2, 0);
setEffAlphaKey( spep_1a+62, ctsyun2, 255);

setEffMoveKey( spep_1a+72, ctsyun2, 200, 100);
setEffScaleKey( spep_1a+72, ctsyun2, 1.4, 1.4);
setEffRotateKey( spep_1a+72, ctsyun2, 0);
setEffAlphaKey( spep_1a+72, ctsyun2, 255);

--徐々に暗くなる背景
entryFadeBg( spep_1a+20, 10, 50, 0, 0, 0, 0, 255);

--SE
playSe( spep_1a+10, 1072);
playSe( spep_1a+58, 43);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_1 = spep_1a+70

--かめはめ波溜め
setDisp( spep_1, 0, 1);
setDisp( spep_1+100, 0, 0);

changeAnime( spep_1, 0, 30);

setMoveKey( spep_1, 0, 0, 0, 0);
setMoveKey( spep_1+100, 0, 0, 0, 0);

setScaleKey( spep_1, 0, 2.0, 2.0);
setScaleKey( spep_1+100, 0, 2.0, 2.0);

setRotateKey( spep_1, 0, 0);
setRotateKey( spep_1+100, 0, 0);

--集中線
shuchusen1 = entryEffectLife( spep_1-8, 906, 108, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_1-8, shuchusen1, 0, 0);
setEffScaleKey( spep_1-8, shuchusen1, 1.0, 1.0);
setEffRotateKey( spep_1-8,shuchusen1, 0);
setEffAlphaKey( spep_1-8, shuchusen1, 255);

setEffMoveKey( spep_1+100, shuchusen1, 0, 0);
setEffScaleKey( spep_1+100, shuchusen1, 1.0, 1.0);
setEffRotateKey( spep_1+100,shuchusen1, 0);
setEffAlphaKey( spep_1+100, shuchusen1, 255);

--オーラ
--[[aura1 = entryEffectLife( spep_1, 311, 10, 0x80, -1, 0, 0, -150);

setEffMoveKey( spep_1, aura1, 0, -150);
setEffScaleKey( spep_1, aura1, 2.0, 2.0);
setEffRotateKey( spep_1, aura1, 0);
setEffAlphaKey( spep_1, aura1, 255);

setEffMoveKey( spep_1+10, aura1, 0, -150);
setEffScaleKey( spep_1+10, aura1, 2.0, 2.0);
setEffRotateKey( spep_1+10, aura1, 0);
setEffAlphaKey( spep_1+10, aura1, 255);

setShakeChara( spep_1+10, 0, 80, 5);]]

--かめはめ波エフェクト
kame_hand = entryEffectLife( spep_1, SP_01, 90, 0x100, -1, 0, -30, 75);

setEffMoveKey( spep_1, kame_hand, 30, 75);
setEffMoveKey( spep_1+90, kame_hand, 30, 75);

setEffScaleKey( spep_1, kame_hand, 0.3, 0.3);
setEffScaleKey( spep_1+90, kame_hand, 0.3, 0.3);

setEffRotateKey( spep_1, kame_hand, 0);
setEffRotateKey( spep_1+90, kame_hand, 0);

setEffAlphaKey( spep_1, kame_hand, 255);
setEffAlphaKey( spep_1+90, kame_hand, 255);

--setEffShake( spep_1+10, kame_hand, 80, 10);

--顔カットイン・セリフカットイン
--speff1 = entryEffect( spep_1, 1504, 0x100, -1, 0, 0, 0);
--setEffReplaceTexture( speff1, 3, 2);                     
--speff2 = entryEffect( spep_1, 1505, 0x100, -1, 0, 0, 0);
--setEffReplaceTexture( speff2, 4, 5);

-- eff_004 (気)
efe1 = entryEffectLife( spep_1, 1503, 90, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_1, efe1, 0, 0);
setEffScaleKey( spep_1, efe1, 1, 1);
setEffRotateKey( spep_1, efe1, 0);
setEffAlphaKey( spep_1, efe1, 255);

setEffMoveKey( spep_1+90, efe1, 0, 0);
setEffScaleKey( spep_1+90, efe1, 1, 1);
setEffRotateKey( spep_1+90, efe1, 0);
setEffAlphaKey( spep_1+90, efe1, 255);

-- eff_003 (気)
efe2 = entryEffectLife( spep_1, 1502, 90, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_1, efe2, 0, 0);
setEffScaleKey( spep_1, efe2, 1, 1);
setEffRotateKey( spep_1, efe2, 0);
setEffAlphaKey( spep_1, efe2, 255);

setEffMoveKey( spep_1+90, efe2, 0, 0);
setEffScaleKey( spep_1+90, efe2, 1, 1);
setEffRotateKey( spep_1+90, efe2, 0);
setEffAlphaKey( spep_1+90, efe2, 255);

--オーラ
aura1 = entryEffectLife( spep_1, 311, 90, 0x80, -1, 0, 0, -150);

setEffMoveKey( spep_1, aura1, 0, -150);
setEffScaleKey( spep_1, aura1, 2.0, 2.0);
setEffRotateKey( spep_1, aura1, 0);
setEffAlphaKey( spep_1, aura1, 255);

setEffMoveKey( spep_1+90, aura1, 0, -150);
setEffScaleKey( spep_1+90, aura1, 2.0, 2.0);
setEffRotateKey( spep_1+90, aura1, 0);
setEffAlphaKey( spep_1+90, aura1, 255);

setShakeChara( spep_1, 0, 90, 5);

--ゴゴゴゴ
ct2 = entryEffectLife( spep_1+12, 190006, 74, 0x100, -1, 0, 130, 512);

setEffMoveKey( spep_1+12, ct2, 130, 512);
setEffMoveKey( spep_1+86, ct2, 130, 512);

setEffScaleKey( spep_1+12, ct2, -0.8, 0.8);
setEffScaleKey( spep_1+80, ct2, -0.8, 0.8);
setEffScaleKey( spep_1+86, ct2, -4, 4);

setEffRotateKey( spep_1+12, ct2, 0);
setEffRotateKey( spep_1+86, ct2, 0);

setEffAlphaKey( spep_1+12, ct2, 0);
setEffAlphaKey( spep_1+13, ct2, 255);
setEffAlphaKey( spep_1+14, ct2, 255);
setEffAlphaKey( spep_1+34, ct2, 255 );
setEffAlphaKey( spep_1+80, ct2, 255 );
setEffAlphaKey( spep_1+86, ct2, 0 );

setEffShake( spep_1+12, ct2, 74, 8);

--white fade
entryFade( spep_1+82, 8, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--暗め背景
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 200);

--SE
playSe( spep_1, SE_03);
playSe( spep_1+18, SE_04);
playSe( spep_1+21, SE_03);
playSe( spep_1+41, SE_03);
playSe( spep_1+61, SE_03);


--playSe( spep_1+11, SE_04);

--playSe( spep_1+21, SE_03);
--playSe( spep_1+41, SE_03);
--playSe( spep_1+61, SE_03);
--playSe( spep_1+81, SE_03);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_2 = spep_1+100;

--カード
speff2 = entryEffect( spep_2, 1507, 0x80, -1, 0, 0, 0);   
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade( spep_2+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);

--SE
playSe( spep_2, SE_05);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_3 = spep_2+90;

setDisp( spep_3, 0, 1);
changeAnime( spep_3, 0, 31);

setMoveKey( spep_3-1, 0, 0, 0, 0);
setMoveKey( spep_3, 0, 0, -600, 0);
setMoveKey( spep_3+1, 0, 0, -600, 0);
setMoveKey( spep_3+10, 0, 0, 100, 0);

kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  300,  0,  -200);   -- 伸びるかめはめ波
setEffRotateKey( spep_3, kamehame_beam, 90);

-- 途中からカメハメハが伸び 
setMoveKey( spep_3+39, 0, 0, 100, 0);
setMoveKey( spep_3+40, 0, 0, 100, 0);--300
setMoveKey( spep_3+48, 0, 0, 1000, 0);

--流線
ryusen = entryEffectLife( spep_3, 920, 109, 0x80,  -1,  0,  0,  0);
setEffRotateKey( spep_3 ,ryusen, 90);
setEffScaleKey( spep_3, ryusen, 1.5, 1.5);

setShakeChara( spep_3+45, 0, 54, 50);

--集中線
shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);

setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

--ズオッ
ctzuo = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300);

setEffShake(spep_3+8, ctzuo, 32, 5);
setEffAlphaKey(spep_3+8, ctzuo, 255);
setEffAlphaKey(spep_3+20, ctzuo, 255);
setEffAlphaKey(spep_3+40, ctzuo, 0);
setEffScaleKey(spep_3+8, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_3+12, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3+32, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3+40, ctzuo, 6.0, 6.0);

--white fade
entryFade( spep_3+105, 3, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255);

--暗め背景
entryFadeBg( spep_3, 0, 109, 0, 0, 0, 0, 200);

playSe( spep_3+4, SE_07);
playSe( spep_3+40, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_4 = spep_3+110;

--[[setDisp( spep_4, 0, 0);--370
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  0,  -200,   0);
setMoveKey(  spep_4,    1,  0,  -200,   0);
setMoveKey(  spep_4+1,    1,  0,  -200,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

setMoveKey(  spep_4+50,    1,   0,  0,   0);
setMoveKey(  spep_4+97,    1,  0,   0,   0);
setScaleKey(  spep_4+97,   1,   1.6,  1.6);]]

setDisp( spep_4, 0, 0);--味方消し

setDisp( spep_4, 1, 1);--敵表示
changeAnime( spep_4, 1, 118);

setMoveKey( spep_4, 1, 100, -400, 0);
setMoveKey( spep_4+100, 1, 100, -400, 0);
setScaleKey( spep_4, 1, 1.0, 1.0);
setScaleKey( spep_4+100, 1, 2.5, 2.5);

--斜め流線
ryusen_2 = entryEffectLife( spep_4, 921, 99, 0x80,  -1,  0,  0,  0);
setEffRotateKey(spep_4 ,ryusen_2 ,270);
setEffScaleKey(spep_4, ryusen_2, 2, 2);

--迫るかめはめ波
kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  300);
setEffRotateKey(spep_4 ,kamehame_beam2 ,90);
setEffScaleKey(spep_4, kamehame_beam2, 0.3, 0.3);
setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+60, ct, 255);
setEffAlphaKey(spep_4+80, ct, 0);

--white fade
entryFade( spep_4+70, 20, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);
--entryFade( spep_4+92, 6, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--暗め背景
entryFadeBg( spep_4, 0, 99, 0, 0, 0, 0, 200);

spep_5=spep_4+100

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+40; --エンドフェイズのフレーム数を置き換える

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

--SE
--playSe( spep_4, SE_09);
playSe( spep_4, SE_06);

------------------------------------------------------
-- 爆発
------------------------------------------------------
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, -4.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

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

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);
playSe( spep_5, SE_10);

setDamage( spep_5 + 16, 1, 0);
setShake(spep_5 + 8,6,15);
setShake(spep_5 + 14,15,10);

setShakeChara( spep_5+30, 1, 5,  10);
setShakeChara( spep_5+35, 1, 10, 20);
--ガッ
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 20, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 16, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 17, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 18, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 19, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 20, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_5 + 112, ctGa, 4.0, 4.0 );

setEffRotateKey( spep_5 + 14, ctGa, -30 );
setEffRotateKey( spep_5 + 16, ctGa,   0 );
setEffRotateKey( spep_5 + 18, ctGa, -30 );
setEffRotateKey( spep_5 + 20, ctGa,   0 );
setEffRotateKey( spep_5 + 22, ctGa, -30 );
setEffRotateKey( spep_5 + 24, ctGa,   0 );
setEffRotateKey( spep_5 + 26, ctGa, -30 );
setEffRotateKey( spep_5 + 28, ctGa,   0 );
setEffRotateKey( spep_5 + 30, ctGa, -30 );
setEffRotateKey( spep_5 + 112, ctGa, -30 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（黒）
shuchusen4 = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1,  0,  0,  0);

--集中線（白）
shuchusen3 = entryEffectLife( spep_5+14, 906, 120, 0x80,  -1,  0,  0,  0);

--ひび割れ
hibi = entryEffect( spep_5+4, 1600,  0x00,  -1,  0,  30, -130);

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10,  1,  8,  8,  8, 255);
endPhase( spep_5+110);

end

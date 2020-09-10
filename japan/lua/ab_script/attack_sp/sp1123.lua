color_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150745;	--手前に突っ込む  35
SP_02 = 150746;	--パンチ→蹴り 55
SP_03 = 150747;	--ef_002の敵用 
SP_04 = 150748;	--地面 55
SP_05 = 150749;	--横移動 30
SP_06 = 150750;	--ef_004の敵用
SP_07 = 150751;	--溜めパンチ 70
SP_08 = 150752;	--直撃 40
SP_09 = 150753;	--ef_006の敵用
SP_10 = 150754;	--青オーラ 35
SP_11 = 150755;	--ラスト前面 85
SP_12 = 150756;	--ラスト背面 155

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

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,   600, -800,   0);
setMoveKey(   0,   1,   600, -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.2, 1.2);

------------------------------------------------------
-- SP_01 = 150745;	--手前に突っ込む 0-66
------------------------------------------------------
if (_IS_PLAYER_SIDE_ == 1) then
	
kame_flag = 0x00;
setVisibleUI(0, 0);

spep_1=0;

spatack_1 = entryEffectLife(spep_1, SP_01 , 66, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_1, spatack_1, 0, 0, 0);
setEffScaleKey(spep_1, spatack_1, 1.0 ,1.0);
setEffAlphaKey(spep_1, spatack_1, 255);

setEffScaleKey(spep_1+66, spatack_1, 1.0 ,1.0);

entryFadeBg( spep_1, 0, 66, 0, 10, 10, 10, 150);

--集中線
shuchusen1 = entryEffectLife( spep_1, 906, 66, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.4, 1.4);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

playSe(spep_1+1,1018);

--entryFade( spep_1+60,5,3,5,255,255,255,255);
------------------------------------------------------
-- カードカットイン(75F開始 164終わり) 67-156
------------------------------------------------------
spep_2=spep_1+64;

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 89, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** カードカットイン ** --
speff_2 = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff_2, 1, 1);
setEffReplaceTexture( speff_2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff_2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2+1, 906, 89, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_2+1, shuchusen_2, 0, 0, 0);
setEffScaleKey( spep_2+1, shuchusen_2, 1.2, 1.2);
setEffAlphaKey( spep_2+1, shuchusen_2, 255);
setEffRotateKey( spep_2+1, shuchusen_2, 0);

-- ** 音 ** --
playSe(spep_2+5,SE_05);

entryFade(spep_2+83,5,7,5,255,255,255,255);
------------------------------------------------------
-- SP_02 = 150746;	--パンチ→蹴り 敵の手前に配置 162-272
------------------------------------------------------
-- SP_04 = 150748;	--地面 敵の背面に配置
------------------------------------------------------
--背景：黒
--集中線：斜め　撃ち落とすまで 
--集中線：205Fから
--縦線：234Fまで

spep_3=spep_2+95;

changeAnime(spep_3,1,102);
setDisp(spep_3,1,1);
setMoveKey(spep_3,1,500,-600,0);
setScaleKey(spep_3,1,2.2,2.2);
setRotateKey(spep_3,1,0);

spatack_2a = entryEffectLife(spep_3, SP_02 , 110, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_2a, 0, 0, 0);
setEffScaleKey(spep_3, spatack_2a, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_2a, 255);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10, 255); -- ベース暗め　黒
-- ** 集中線 ** --
------------------------------------------------------
shuchusen_3c = entryEffectLife( spep_3, 923, 30, 0x80, -1, 0, 0, 0); -- 集中線

setEffMoveKey( spep_3, shuchusen_3c, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3c, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen_3c, 255);
setEffRotateKey( spep_3, shuchusen_3c, 328);
--------------------------------------------------------
shuchusen_3b = entryEffectLife( spep_3, 914, 63, 0x80, -1, 0, 0, 0); -- 流線

setEffMoveKey( spep_3, shuchusen_3b, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3b, 2.0, 1.0);
setEffAlphaKey( spep_3, shuchusen_3b, 0);
setEffRotateKey( spep_3, shuchusen_3b, 60)
------------------------------------------------------
shuchusen_3a = entryEffectLife( spep_3, 906, 110, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_3, shuchusen_3a, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3a, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen_3a, 0);
setEffRotateKey( spep_3, shuchusen_3a, 0);
-----------------------------------------------------
spatack_3 = entryEffectLife(spep_3, SP_04 , 110, 0x80, -1 ,0,0,0);
setEffMoveKey(spep_3, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_3, 255);
-----------------------------------------------------
spatack_2b = entryEffectLife(spep_3, SP_02 , 110, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_2b, 0, 0, 0);
setEffScaleKey(spep_3, spatack_2b, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_2b, 0);
-----------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = 168; --エンドフェイズのフレーム数を置き換える +6

setMoveKey(SP_dodge,1,50,50,0);
setScaleKey(SP_dodge,1,1.6,1.6);
setRotateKey(SP_dodge,1,0);

setMoveKey(SP_dodge+10,1,50,50,0);
setScaleKey(SP_dodge+10,1,1.6,1.6);
setRotateKey(SP_dodge+10,1,0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

-----------------------------------------------------
setMoveKey(spep_3+13,1,50,50,0);
setScaleKey(spep_3+13,1,1.6,1.6);
setRotateKey(spep_3+13,1,0);

setMoveKey(spep_3+14,1,50,50,0);
setScaleKey(spep_3+14,1,1.6,1.6);
setRotateKey(spep_3+14,1,0);

changeAnime(spep_3+15,1,108);
setMoveKey(spep_3+15,1,150,50,0);
setScaleKey(spep_3+15,1,1.6,1.6);
setRotateKey(spep_3+15,1,0);

entryFadeBg(spep_3+15,0,1,7,47,228,255,150);
--entryFade(spep_3+15,0,1,7,255,255,255,150);

playSe(spep_3+15,1009);
--書き文字--

zun_3=entryEffectLife(spep_3+15,10016,7, 0, -1, 0, 0, 0);
setEffMoveKey(spep_3+15,zun_3,100,300,0);
setEffScaleKey(spep_3+15,zun_3,1.0,1.0);
setEffRotateKey(spep_3+15,zun_3,20);
setEffAlphaKey(spep_3+15,zun_3,255);

setEffScaleKey(spep_3+16,zun_3,2.0,2.0);
setEffMoveKey(spep_3+16,zun_3,100,300,0);
setEffRotateKey(spep_3+16,zun_3,20);
setEffAlphaKey(spep_3+16,zun_3,255);

setEffScaleKey(spep_3+17,zun_3,1.0,1.0);
setEffMoveKey(spep_3+17,zun_3,100,300,0);
setEffRotateKey(spep_3+17,zun_3,20);
setEffAlphaKey(spep_3+17,zun_3,255);

setEffScaleKey(spep_3+18,zun_3,1.5,1.5);
setEffMoveKey(spep_3+18,zun_3,100,300,0);
setEffRotateKey(spep_3+18,zun_3,20);
setEffAlphaKey(spep_3+18,zun_3,255);

setEffAlphaKey(spep_3+19,zun_3,255);

setEffMoveKey(spep_3+22,zun_3,100,300,0);
setEffScaleKey(spep_3+22,zun_3,1.5,1.5);
setEffRotateKey(spep_3+22,zun_3,10);
setEffAlphaKey(spep_3+22,zun_3,0);

setEffShake(spep_3+15, zun_3, 7, 20);

-----------------------------------------------------

setMoveKey(spep_3+15,1,170,30,0);
setScaleKey(spep_3+15,1,1.6,1.6);
setRotateKey(spep_3+15,1,0);

setMoveKey(spep_3+30,1,170,30,0);
setScaleKey(spep_3+30,1,1.6,1.6);
setRotateKey(spep_3+30,1,0);

--entryFade(spep_3+30,0,2,0,255,255,255,180);

--203
setMoveKey(spep_3+31,1,50,-100,0);
setScaleKey(spep_3+31,1,1.6,1.6);
setRotateKey(spep_3+31,1,90);

-----------------------------------------------------
--書き文字--
zuo_3 = entryEffectLife(spep_3+31,10012,14, 0, -1, 0, 0, 0);
setEffMoveKey(spep_3+31,zuo_3,-200,400,0);
setEffScaleKey(spep_3+31,zuo_3,1.0,1.0);
setEffRotateKey(spep_3+31,zuo_3,350);
setEffAlphaKey(spep_3+31,zuo_3,255);

setEffMoveKey(spep_3+32,zuo_3,-200,400,0);
setEffScaleKey(spep_3+32,zuo_3,2.5,2.5);
setEffRotateKey(spep_3+32,zuo_3,350);
setEffAlphaKey(spep_3+32,zuo_3,255);

setEffAlphaKey(spep_3+43,zuo_3,255);

setEffMoveKey(spep_3+45,zuo_3,-200,400,0);
setEffScaleKey(spep_3+45,zuo_3,2.5,2.5);
setEffRotateKey(spep_3+45,zuo_3,350);
setEffAlphaKey(spep_3+45,zuo_3,0);

setEffShake(spep_3+31, zuo_3, 14, 20);

-----------------------------------------------------

--211(+40)
setMoveKey(spep_3+40,1,34,-137,0);--　一致　
setScaleKey(spep_3+40,1,1.6,1.6);
setRotateKey(spep_3+40,1,90);

setMoveKey(spep_3+43,1,30,-151,0); --一致
setScaleKey(spep_3+43,1,1.6,1.6);
setRotateKey(spep_3+43,1,90);

setMoveKey(spep_3+45,1,30,-151,0); --一致
setScaleKey(spep_3+45,1,1.6,1.6);
setRotateKey(spep_3+45,1,90);
--218
setMoveKey(spep_3+47,1,30,-151,0); --一致
setScaleKey(spep_3+47,1,1.6,1.6);
setRotateKey(spep_3+47,1,90);
--219
setMoveKey(spep_3+48,1,30,-185,0); --一致
setScaleKey(spep_3+48,1,1.6,1.6);
setRotateKey(spep_3+48,1,90);
--220
setMoveKey(spep_3+49,1,30,-190,0); --一致
setScaleKey(spep_3+49,1,1.6,1.6);
setRotateKey(spep_3+49,1,90);
--221
setMoveKey(spep_3+50,1,30,-200,0); --一致
setScaleKey(spep_3+50,1,1.6,1.6);
setRotateKey(spep_3+50,1,90);
--222
setMoveKey(spep_3+51,1,30,-230,0); --一致
setScaleKey(spep_3+51,1,1.6,1.6);
setRotateKey(spep_3+51,1,90);
--223
setMoveKey(spep_3+52,1,30,-240,0);
setScaleKey(spep_3+52,1,1.6,1.6);
setRotateKey(spep_3+52,1,90);
--224(大きく動く) OK
setMoveKey(spep_3+53,1,30,-330,0);
setScaleKey(spep_3+53,1,1.6,1.6);
setRotateKey(spep_3+53,1,90);
--225 
setMoveKey(spep_3+54,1,30,-330,0);
setScaleKey(spep_3+54,1,1.6,1.6);
setRotateKey(spep_3+54,1,90);
--226(大きく動く) OK
setMoveKey(spep_3+55,1,30,-430,0);
setScaleKey(spep_3+55,1,1.6,1.6);
setRotateKey(spep_3+55,1,90);
--227
setMoveKey(spep_3+56,1,30,-430,0);
setScaleKey(spep_3+56,1,1.6,1.6);
setRotateKey(spep_3+56,1,90);

playSe(spep_3+55,1027);

--230(大きく動く)
changeAnime(spep_3+57,1,106);
setMoveKey(spep_3+57,1,30,-230,0);
setScaleKey(spep_3+57,1,1.6,1.6);
setRotateKey(spep_3+57,1,0);--角度調整

changeAnime(spep_3+60,1,106);
setMoveKey(spep_3+60,1,30,-230,0);
setScaleKey(spep_3+60,1,1.6,1.6);
setRotateKey(spep_3+60,1,0);--角度調整

--246(大きく動く)
setMoveKey(spep_3+74,1,120,-100,0);--OK
setScaleKey(spep_3+74,1,1.6,1.6);
setRotateKey(spep_3+74,1,0);--角度調整

changeAnime(spep_3+75,1,108);--OK
setMoveKey(spep_3+75,1,120,-100,0);
setScaleKey(spep_3+75,1,1.5,1.5);
setRotateKey(spep_3+75,1,0);

baki_3=entryEffectLife(spep_3+75,10020,20, 0, -1, 0, 0, 0);
setEffMoveKey(spep_3+75,baki_3,150,300,0);
setEffScaleKey(spep_3+75,baki_3,2.0,2.0);
setEffRotateKey(spep_3+75,baki_3,10);
setEffAlphaKey(spep_3+75,baki_3,255);

setEffMoveKey(spep_3+77,baki_3,150,300,0);
setEffScaleKey(spep_3+77,baki_3,2.0,2.0);
setEffRotateKey(spep_3+77,baki_3,10);
setEffAlphaKey(spep_3+77,baki_3,255);

setEffRotateKey(spep_3+78,baki_3,0);

setEffMoveKey(spep_3+79,baki_3,150,300,0);
setEffScaleKey(spep_3+79,baki_3,2.0,2.0);
setEffRotateKey(spep_3+79,baki_3,340);
setEffAlphaKey(spep_3+79,baki_3,255);

setEffRotateKey(spep_3+80,baki_3,340);

setEffMoveKey(spep_3+81,baki_3,150,300,0);
setEffScaleKey(spep_3+81,baki_3,3.5,3.5);
setEffRotateKey(spep_3+81,baki_3,10);
setEffAlphaKey(spep_3+81,baki_3,255);

setEffMoveKey(spep_3+83,baki_3,150,300,0);
setEffScaleKey(spep_3+83,baki_3,2.0,2.0);
setEffRotateKey(spep_3+83,baki_3,10);
setEffAlphaKey(spep_3+83,baki_3,255);

setEffMoveKey(spep_3+88,baki_3,150,300,0);

setEffMoveKey(spep_3+95,baki_3,150,300,0);
setEffScaleKey(spep_3+95,baki_3,2.0,2.0);
setEffRotateKey(spep_3+95,baki_3,10);
setEffAlphaKey(spep_3+95,baki_3,0);

entryFadeBg(spep_3+74,0,3,5,47,228,255,150);
--entryFade(spep_3+74,0,3,5,255,255,255,150);

playSe(spep_3+74,1010);

setMoveKey(spep_3+83,1,600,0,0);
setScaleKey(spep_3+83,1,1.5,1.5);
setRotateKey(spep_3+83,1,0);

setMoveKey(spep_3+85,1,800,100,0);
setScaleKey(spep_3+85,1,1.5,1.5);
setRotateKey(spep_3+85,1,0);

setDisp(spep_3+85,1,0);
--[[
spatack_2a = entryEffectLife(spep_3, SP_02 , 110, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_2a, 0, 0, 0);
setEffScaleKey(spep_3, spatack_2a, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_2a, 255);
]]--
setEffAlphaKey(spep_3+56, spatack_2a, 255);
setEffAlphaKey(spep_3+57, spatack_2a, 0);
setEffAlphaKey(spep_3+72, spatack_2a, 0);
setEffAlphaKey(spep_3+73, spatack_2a, 255);

setEffScaleKey(spep_3+110, spatack_2a, 1.0 ,1.0);
--[[
-- ** 集中線 ** --
------------------------------------------------------
shuchusen_3c = entryEffectLife( spep_3, 923, 30, 0x80, -1, 0, 0, 0); -- 集中線

setEffMoveKey( spep_3, shuchusen_3c, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3c, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen_3c, 255);
setEffRotateKey( spep_3, shuchusen_3c, 328);

--------------------------------------------------------
shuchusen_3b = entryEffectLife( spep_3, 914, 63, 0x80, -1, 0, 0, 0); -- 流線

setEffMoveKey( spep_3, shuchusen_3b, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3b, 2.0, 1.0);
setEffAlphaKey( spep_3, shuchusen_3b, 0);
setEffRotateKey( spep_3, shuchusen_3b, 60)
]]--
setEffAlphaKey( spep_3+22, shuchusen_3b, 0);

setEffMoveKey( spep_3+23, shuchusen_3b, 0, 0, 0);
setEffScaleKey( spep_3+23, shuchusen_3b, 2.0, 1.0);
setEffAlphaKey( spep_3+23, shuchusen_3b, 255);
setEffRotateKey( spep_3+23, shuchusen_3b, 60)

setEffMoveKey( spep_3+34, shuchusen_3b, 0, 0, 0);
setEffScaleKey( spep_3+34, shuchusen_3b, 2.0, 1.0);
setEffAlphaKey( spep_3+34, shuchusen_3b, 255);
setEffRotateKey( spep_3+34, shuchusen_3b, 90);
setEffRotateKey( spep_3+63, shuchusen_3b, 90);
--[[
------------------------------------------------------
shuchusen_3a = entryEffectLife( spep_3, 906, 110, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_3, shuchusen_3a, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3a, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen_3a, 0);
setEffRotateKey( spep_3, shuchusen_3a, 0);
]]--
setEffAlphaKey( spep_3+33, shuchusen_3a, 0);

setEffMoveKey( spep_3+34, shuchusen_3a, 0, 0, 0);
setEffScaleKey( spep_3+34, shuchusen_3a, 1.2, 1.2);
setEffAlphaKey( spep_3+34, shuchusen_3a, 255);
setEffRotateKey( spep_3+34, shuchusen_3a, 0);
--[[
spatack_3 = entryEffectLife(spep_3, SP_04 , 110, 0x80, -1 ,0,0,0);
setEffMoveKey(spep_3, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_3, 255);
]]--
setEffScaleKey(spep_3+110, spatack_3, 1.0 ,1.0);
--[[
spatack_2b = entryEffectLife(spep_3, SP_02 , 110, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_2b, 0, 0, 0);
setEffScaleKey(spep_3, spatack_2b, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_2b, 0);
]]--
setEffScaleKey(spep_3+110, spatack_2b, 1.0 ,1.0);

setEffAlphaKey(spep_3+56, spatack_2b, 0);
setEffAlphaKey(spep_3+57, spatack_2b, 255);
setEffAlphaKey(spep_3+72, spatack_2b, 255);
setEffAlphaKey(spep_3+73, spatack_2b, 0);

entryFade( spep_3+100,5,6,5,255,255,255,255);

------------------------------------------------------
-- SP_05 = 150749;	--横移動　282-342
------------------------------------------------------
spep_4=spep_3+111;

spatack_4 = entryEffectLife(spep_4, SP_05 , 56, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_4, spatack_4, 0, 0, 0);
setEffScaleKey(spep_4, spatack_4, 1.0 ,1.0);
setEffAlphaKey(spep_4, spatack_4, 255);

setEffScaleKey(spep_4+56, spatack_4, 1.0 ,1.0);

playSe(spep_4,1018);
------------------------------------------------------
shuchusen_4a = entryEffectLife( spep_4, 923, 56, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_4, shuchusen_4a, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen_4a, 1.6, 1.6);
setEffAlphaKey( spep_4, shuchusen_4a, 255);
setEffRotateKey( spep_4, shuchusen_4a, 297);

shuchusen_4b = entryEffectLife( spep_4, 906, 56, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_4, shuchusen_4b, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen_4b, 1.2, 1.2);
setEffAlphaKey( spep_4, shuchusen_4b, 255);
setEffRotateKey( spep_4, shuchusen_4b, 0);

entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 150);

--entryFade( spep_4+54,5,2,5,255,255,255,255);

------------------------------------------------------
-- SP_07 = 150751;	--溜めパンチ 343-483
------------------------------------------------------
spep_5=spep_4+57;

spatack_5 = entryEffectLife(spep_5, SP_07 , 132, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_5, spatack_5, 0, 0, 0);
setEffScaleKey(spep_5, spatack_5, 1.0 ,1.0);
setEffAlphaKey(spep_5, spatack_5, 255);

setEffScaleKey(spep_5+136, spatack_5, 1.0 ,1.0);

entryFadeBg( spep_5, 0, 136, 0, 10, 10, 10, 150);

--[[
entryFadeBg( spep_5+2, 0, 2, 9, 47, 228, 255, 200);
entryFadeBg( spep_5+15, 9, 1, 7, 47, 228, 255, 200); 
entryFadeBg( spep_5+33, 5, 2, 3, 47, 228, 255, 200); 
entryFadeBg( spep_5+45, 5, 2, 7, 47, 228, 255, 200); 
entryFadeBg( spep_5+61, 5, 2, 5, 47, 228, 255, 200); 
entryFadeBg( spep_5+75, 7, 3, 5, 47, 228, 255, 200); 
]]--
entryFadeBg( spep_5+2, 0, 7, 14, 47, 228, 255, 200);
--entryFadeBg( spep_5+15, 9, 1, 7, 47, 228, 255, 200); 
entryFadeBg( spep_5+33, 9, 8, 7, 47, 228, 255, 200); 
--entryFadeBg( spep_5+45, 5, 2, 7, 47, 228, 255, 200); 
entryFadeBg( spep_5+61, 10, 7, 10, 47, 228, 255, 200); 
--entryFadeBg( spep_5+75, 7, 3, 5, 47, 228, 255, 200); 

-- ** 集中線 ** --
shuchusen_5a = entryEffectLife( spep_5, 906, 86, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_5, shuchusen_5a, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen_5a, 1.2, 1.2);
setEffAlphaKey( spep_5, shuchusen_5a, 255);
setEffRotateKey( spep_5, shuchusen_5a, 0);

shuchusen_5b = entryEffectLife( spep_5+87, 906, 45, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_5+87, shuchusen_5b, 0, 0, 0);
setEffScaleKey( spep_5+87, shuchusen_5b, 1.2, 1.2);
setEffAlphaKey( spep_5+87, shuchusen_5b, 255);
setEffRotateKey( spep_5+87, shuchusen_5b, 0);

speff = entryEffect(  spep_5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_5,SE_04);

ctgogo = entryEffectLife( spep_5+13, 190006, 69, 0x100, -1, 0, 100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_5+13, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_5+13, ctgogo, 10);
setEffAlphaKey( spep_5+13, ctgogo, 255);

setEffScaleKey( spep_5+75, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_5+75, ctgogo, 10);
setEffAlphaKey( spep_5+75, ctgogo, 255);

setEffScaleKey( spep_5+82, ctgogo, 2.0, 2.0);
setEffRotateKey( spep_5+82, ctgogo, 10);
setEffAlphaKey( spep_5+82, ctgogo, 255);

--entryFade( spep_5+82,0,5,5,255,255,255,255);
entryFade( spep_5+128,4,8,4,255,255,255,255);
------------------------------------------------------
-- SP_08 = 150752;	--直撃 敵の手前に配置 484-564
------------------------------------------------------
-- SP_10 = 150754;	--青オーラ 敵の背面に配置
------------------------------------------------------
spep_6=spep_5+134;

changeAnime(spep_6,1,108);--OK

setDisp(spep_6,1,1);

setMoveKey(spep_6,1,600,50,0);
setScaleKey(spep_6,1,1.5,1.5);
setRotateKey(spep_6,1,0);

setMoveKey(spep_6+11,1,100,50,0);
setScaleKey(spep_6+11,1,1.5,1.5);
setRotateKey(spep_6+11,1,0);

--entryFade( spep_6+8,0,3,5,255,255,255,255);
playSe(spep_6+12,1025);

dogn_6=entryEffectLife(spep_6+11,10018,55,0,-1,0,0,0);
setEffMoveKey(spep_6+11,dogn_6,0,400,0);
setEffScaleKey(spep_6+11,dogn_6,4.5,4.5);
setEffRotateKey(spep_6+11,dogn_6,0);
setEffAlphaKey(spep_6+11,dogn_6,255);

setEffScaleKey(spep_6+14,dogn_6,3.5,3.5);
setEffRotateKey(spep_6+14,dogn_6,0);

setEffScaleKey(spep_6+59,dogn_6,3.5,3.5);
setEffRotateKey(spep_6+59,dogn_6,0);

setEffAlphaKey(spep_6+58,dogn_6,255);
setEffAlphaKey(spep_6+59,dogn_6,0);

setEffShake(spep_6+11,dogn_6,55,20);

setMoveKey(spep_6+51,1,100,50,0);
setScaleKey(spep_6+53,1,1.5,1.5);
setRotateKey(spep_6+53,1,0);

setMoveKey(spep_6+61,1,600,50,0);
setScaleKey(spep_6+63,1,1.5,1.5);
setRotateKey(spep_6+63,1,0);

setMoveKey(spep_6+65,1,800,50,0);
setScaleKey(spep_6+65,1,1.5,1.5);
setRotateKey(spep_6+65,1,0);

setDisp(spep_6+65,1,0);

spatack_6 = entryEffectLife(spep_6, SP_08 , 80, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_6, spatack_6, 0, 0, 0);
setEffScaleKey(spep_6, spatack_6, 1.0 ,1.0);
setEffAlphaKey(spep_6, spatack_6, 255);

setEffScaleKey(spep_6+80, spatack_6, 1.0 ,1.0);
------------------------------------------------------
-- ** 集中線 ** --
shuchusen_6a = entryEffectLife( spep_6+9, 906, 71, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_6+9, shuchusen_6a, 0, 0, 0);
setEffScaleKey( spep_6+9, shuchusen_6a, 1.2, 1.2);
setEffAlphaKey( spep_6+9, shuchusen_6a, 255);
setEffRotateKey( spep_6+9, shuchusen_6a, 0);

shuchusen_6b = entryEffectLife( spep_6, 914, 80, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_6, shuchusen_6b, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen_6b, 1.2, 1.2);
setEffAlphaKey( spep_6, shuchusen_6b, 255);
setEffRotateKey( spep_6, shuchusen_6b, 0);

------------------------------------------------------
spatack_7 = entryEffectLife(spep_6, SP_10 , 70, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_6, spatack_7, 0, 0, 0);
setEffScaleKey(spep_6, spatack_7,1.0,1.0);
setEffAlphaKey(spep_6, spatack_7, 255);

setEffScaleKey(spep_6+70, spatack_7,1.0,1.0);

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 10, 2, 10, 10, 10, 150); -- ベース暗め　黒
entryFadeBg( spep_6+9, 2, 70, 0, 10, 10, 10, 255); -- ベース暗め　黒

entryFade( spep_6+72,5,4,5,255,255,255,255);
------------------------------------------------------
-- SP_11 = 150755;	--ラスト前面 (背景揺れのために1.1倍で使用) 565-875
------------------------------------------------------
-- SP_12 = 150756;	--ラスト背面 (背景揺れのために1.1倍で使用)
------------------------------------------------------
--背景：黒
spep_7=spep_6+81;

changeAnime(spep_7,1,108);
setDisp(spep_7,1,1);

setMoveKey(spep_7,1,-450,-150,0);
setScaleKey(spep_7,1,4.0,4.0);
setRotateKey(spep_7,1,0);

--586
--entryFade(spep_7+21,1,4,1,255,255,255,255);

setMoveKey(spep_7+22,1,50,0,0); --21
setScaleKey(spep_7+22,1,0.6,0.6);
setRotateKey(spep_7+22,1,0);

setMoveKey(spep_7+23,1,130,90,0);
setScaleKey(spep_7+23,1,0.6,0.6);
setRotateKey(spep_7+23,1,0);

playSe(spep_7+19,1033);

dogn_7a=entryEffectLife(spep_7+19,10018,10,0,-1,0,0,0);
setEffMoveKey(spep_7+19,dogn_7a,-100,300,0);
setEffScaleKey(spep_7+19,dogn_7a,2.0,2,0);
setEffRotateKey(spep_7+19,dogn_7a,0);
setEffAlphaKey(spep_7+19,dogn_7a,255);

setEffAlphaKey(spep_7+26,dogn_7a,255);
setEffAlphaKey(spep_7+29,dogn_7a,0);

setEffShake(spep_7+19,dogn_7a,10,20);

--619
setMoveKey(spep_7+55,1,-50,0,0);
setScaleKey(spep_7+55,1,0.6,0.6);
setRotateKey(spep_7+55,1,0);

setMoveKey(spep_7+56,1,-55,0,0);
setScaleKey(spep_7+56,1,0.6,0.6);
setRotateKey(spep_7+56,1,0);

--entryFade(spep_7+51,0,4,0,255,255,255,255);
playSe(spep_7+50,1033);

dogn_7b=entryEffectLife(spep_7+52,10018,14,0,-1,0,0,0);
setEffMoveKey(spep_7+52,dogn_7b,-100,300,0);
setEffScaleKey(spep_7+52,dogn_7b,2.0,2,0);
setEffRotateKey(spep_7+52,dogn_7b,0);
setEffAlphaKey(spep_7+52,dogn_7b,255);

setEffAlphaKey(spep_7+61,dogn_7b,255);
setEffAlphaKey(spep_7+66,dogn_7b,0);

setEffShake(spep_7+52,dogn_7b,14,20);

--668
setMoveKey(spep_7+103,1,10,0,0);
setScaleKey(spep_7+103,1,0.6,0.6);
setRotateKey(spep_7+103,1,0);

--entryFade(spep_7+97,0,4,0,255,255,255,255);
playSe(spep_7+98,1033);

dogn_7c=entryEffectLife(spep_7+100,10018,16,0,-1,0,0,0);
setEffMoveKey(spep_7+100,dogn_7c,-90,300,0);
setEffScaleKey(spep_7+100,dogn_7c,2.0,2,0);
setEffRotateKey(spep_7+100,dogn_7c,0);
setEffAlphaKey(spep_7+100,dogn_7c,255);

setEffAlphaKey(spep_7+113,dogn_7c,255);
setEffAlphaKey(spep_7+116,dogn_7c,0);

setEffShake(spep_7+100,dogn_7c,16,20);

changeAnime(spep_7+105,1,106);
setMoveKey(spep_7+105,1,-50,-30,0);
setScaleKey(spep_7+103,1,0.6,0.6);
setRotateKey(spep_7+103,1,0);

setMoveKey(spep_7+155,1,0,50,0);
setScaleKey(spep_7+155,1,0.5,0.5);
setRotateKey(spep_7+155,1,0);

setDisp(spep_7+155,1,0);

--spatack_8 = entryEffectLife(spep_7, SP_11 , 160, 0x100, -1 ,0,0,0);
spatack_8 = entryEffect(spep_7, SP_11 , 0x100, -1 ,0,0,0);

setEffMoveKey(spep_7, spatack_8, 0, 0, 0);
setEffScaleKey(spep_7, spatack_8, 1.1,1.1);
setEffAlphaKey(spep_7, spatack_8, 255);

setEffScaleKey(spep_7+160, spatack_8,1.1,1.1);

-- ** 集中線 ** --
shuchusen_7a = entryEffectLife( spep_7, 914, 156, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7, shuchusen_7a, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen_7a, 1.2, 1.2);
setEffAlphaKey( spep_7, shuchusen_7a, 255);
setEffRotateKey( spep_7, shuchusen_7a, 355);

shuchusen_7b = entryEffectLife( spep_7, 921, 156, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7, shuchusen_7b, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen_7b, 1.2, 1.2);
setEffAlphaKey( spep_7, shuchusen_7b, 255);
setEffRotateKey( spep_7, shuchusen_7b, 350);

shuchusen_7c = entryEffectLife( spep_7+157, 906, 153, 0x100, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7+157, shuchusen_7c, 0, 0, 0);
setEffScaleKey( spep_7+157, shuchusen_7c, 1.2, 1.2);
setEffAlphaKey( spep_7+157, shuchusen_7c, 255);
setEffRotateKey( spep_7+157, shuchusen_7c, 355);

entryFade(spep_7+152,0,4,8,255,255,255,255);
playSe(spep_7+155,1024);

dogn_7d=entryEffectLife(spep_7+155,10018,30,0,-1,0,0,0);
setEffMoveKey(spep_7+155,dogn_7d,0,300,0);
setEffScaleKey(spep_7+155,dogn_7d,4.0,4,0);
setEffRotateKey(spep_7+155,dogn_7d,0);
setEffAlphaKey(spep_7+155,dogn_7d,255);
setEffAlphaKey(spep_7+175,dogn_7d,255);
setEffAlphaKey(spep_7+185,dogn_7d,0);

setEffShake(spep_7+155,dogn_7d,30,20);

------------------------------------------------------
--spatack_9 = entryEffectLife(spep_7, SP_12 , 310, 0x80, -1 ,0,0,0);
spatack_9 = entryEffect(spep_7, SP_12 , 0x80, -1 ,0,0,0);

setEffMoveKey(spep_7, spatack_9, 0, 0, 0);
setEffScaleKey(spep_7, spatack_9, 1.1,1.1);
setEffAlphaKey(spep_7, spatack_9, 255);

setEffScaleKey(spep_7+310, spatack_9, 1.1,1.1);
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 310, 0, 10, 10, 10, 255); -- ベース暗め　黒

-- ダメージ表示
dealDamage(spep_7+206);

entryFade( spep_7+290, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+300);

else
------------------------------------------------------
-- SP_01 = 150745;	--手前に突っ込む 0-66
------------------------------------------------------
kame_flag = 0x00;
setVisibleUI(0, 0);

spep_1=0;

spatack_1 = entryEffectLife(spep_1, SP_01 , 66, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_1, spatack_1, 0, 0, 0);
setEffScaleKey(spep_1, spatack_1, -1.0 ,1.0);
setEffAlphaKey(spep_1, spatack_1, 255);

setEffScaleKey(spep_1+66, spatack_1, -1.0 ,1.0);

entryFadeBg( spep_1, 0, 66, 0, 10, 10, 10, 150);

--集中線
shuchusen1 = entryEffectLife( spep_1, 906, 66, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.4, 1.4);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

playSe(spep_1+1,1018);

--entryFade( spep_1+60,5,3,5,255,255,255,255);
------------------------------------------------------
-- カードカットイン(75F開始 164終わり) 67-156
------------------------------------------------------
spep_2=spep_1+64;

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 89, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** カードカットイン ** --
speff_2 = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff_2, 1, 1);
setEffReplaceTexture( speff_2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff_2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2+1, 906, 89, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_2+1, shuchusen_2, 0, 0, 0);
setEffScaleKey( spep_2+1, shuchusen_2, 1.2, 1.2);
setEffAlphaKey( spep_2+1, shuchusen_2, 255);
setEffRotateKey( spep_2+1, shuchusen_2, 0);

-- ** 音 ** --
playSe(spep_2+5,SE_05);

entryFade(spep_2+83,5,7,5,255,255,255,255);
------------------------------------------------------
-- SP_03 = 150747;	--ef_002の敵用 
------------------------------------------------------
-- SP_04 = 150748;	--地面 敵の背面に配置
------------------------------------------------------
--背景：黒
--集中線：斜め　撃ち落とすまで 
--集中線：205Fから
--縦線：234Fまで

spep_3=spep_2+95;

changeAnime(spep_3,1,102);
setDisp(spep_3,1,1);
setMoveKey(spep_3,1,500,-600,0);
setScaleKey(spep_3,1,2.2,2.2);
setRotateKey(spep_3,1,0);

spatack_2a = entryEffectLife(spep_3, SP_03 , 110, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_2a, 0, 0, 0);
setEffScaleKey(spep_3, spatack_2a, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_2a, 255);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10, 255); -- ベース暗め　黒
-- ** 集中線 ** --
------------------------------------------------------
shuchusen_3c = entryEffectLife( spep_3, 923, 30, 0x80, -1, 0, 0, 0); -- 集中線

setEffMoveKey( spep_3, shuchusen_3c, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3c, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen_3c, 255);
setEffRotateKey( spep_3, shuchusen_3c, 328);
--------------------------------------------------------
shuchusen_3b = entryEffectLife( spep_3, 914, 63, 0x80, -1, 0, 0, 0); -- 流線

setEffMoveKey( spep_3, shuchusen_3b, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3b, 2.0, 1.0);
setEffAlphaKey( spep_3, shuchusen_3b, 0);
setEffRotateKey( spep_3, shuchusen_3b, 60)
------------------------------------------------------
shuchusen_3a = entryEffectLife( spep_3, 906, 110, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_3, shuchusen_3a, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3a, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen_3a, 0);
setEffRotateKey( spep_3, shuchusen_3a, 0);
-----------------------------------------------------
spatack_3 = entryEffectLife(spep_3, SP_04 , 110, 0x80, -1 ,0,0,0);
setEffMoveKey(spep_3, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_3, 255);
-----------------------------------------------------
spatack_2b = entryEffectLife(spep_3, SP_02 , 110, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_2b, 0, 0, 0);
setEffScaleKey(spep_3, spatack_2b, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_2b, 0);
-----------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = 168; --エンドフェイズのフレーム数を置き換える +6

setMoveKey(SP_dodge,1,50,50,0);
setScaleKey(SP_dodge,1,1.6,1.6);
setRotateKey(SP_dodge,1,0);

setMoveKey(SP_dodge+10,1,50,50,0);
setScaleKey(SP_dodge+10,1,1.6,1.6);
setRotateKey(SP_dodge+10,1,0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

-----------------------------------------------------
setMoveKey(spep_3+13,1,50,50,0);
setScaleKey(spep_3+13,1,1.6,1.6);
setRotateKey(spep_3+13,1,0);

setMoveKey(spep_3+14,1,50,50,0);
setScaleKey(spep_3+14,1,1.6,1.6);
setRotateKey(spep_3+14,1,0);

changeAnime(spep_3+15,1,108);
setMoveKey(spep_3+15,1,150,50,0);
setScaleKey(spep_3+15,1,1.6,1.6);
setRotateKey(spep_3+15,1,0);

entryFadeBg(spep_3+15,0,1,7,47,228,255,150);
--entryFade(spep_3+15,0,1,7,255,255,255,150);

playSe(spep_3+15,1009);
--書き文字--

zun_3=entryEffectLife(spep_3+15,10016,7, 0, -1, 0, 0, 0);
setEffMoveKey(spep_3+15,zun_3,100,300,0);
setEffScaleKey(spep_3+15,zun_3,1.0,1.0);
setEffRotateKey(spep_3+15,zun_3,20);
setEffAlphaKey(spep_3+15,zun_3,255);

setEffScaleKey(spep_3+16,zun_3,2.0,2.0);
setEffMoveKey(spep_3+16,zun_3,100,300,0);
setEffRotateKey(spep_3+16,zun_3,20);
setEffAlphaKey(spep_3+16,zun_3,255);

setEffScaleKey(spep_3+17,zun_3,1.0,1.0);
setEffMoveKey(spep_3+17,zun_3,100,300,0);
setEffRotateKey(spep_3+17,zun_3,20);
setEffAlphaKey(spep_3+17,zun_3,255);

setEffScaleKey(spep_3+18,zun_3,1.5,1.5);
setEffMoveKey(spep_3+18,zun_3,100,300,0);
setEffRotateKey(spep_3+18,zun_3,20);
setEffAlphaKey(spep_3+18,zun_3,255);

setEffAlphaKey(spep_3+19,zun_3,255);

setEffMoveKey(spep_3+22,zun_3,100,300,0);
setEffScaleKey(spep_3+22,zun_3,1.5,1.5);
setEffRotateKey(spep_3+22,zun_3,10);
setEffAlphaKey(spep_3+22,zun_3,0);

setEffShake(spep_3+15, zun_3, 7, 20);

-----------------------------------------------------

setMoveKey(spep_3+15,1,170,30,0);
setScaleKey(spep_3+15,1,1.6,1.6);
setRotateKey(spep_3+15,1,0);

setMoveKey(spep_3+30,1,170,30,0);
setScaleKey(spep_3+30,1,1.6,1.6);
setRotateKey(spep_3+30,1,0);

--entryFade(spep_3+30,0,2,0,255,255,255,180);

--203
setMoveKey(spep_3+31,1,50,-100,0);
setScaleKey(spep_3+31,1,1.6,1.6);
setRotateKey(spep_3+31,1,90);

-----------------------------------------------------
--書き文字--
zuo_3 = entryEffectLife(spep_3+31,10012,14, 0, -1, 0, 0, 0);
setEffMoveKey(spep_3+31,zuo_3,-200,400,0);
setEffScaleKey(spep_3+31,zuo_3,1.0,1.0);
setEffRotateKey(spep_3+31,zuo_3,350);
setEffAlphaKey(spep_3+31,zuo_3,255);

setEffMoveKey(spep_3+32,zuo_3,-200,400,0);
setEffScaleKey(spep_3+32,zuo_3,2.5,2.5);
setEffRotateKey(spep_3+32,zuo_3,350);
setEffAlphaKey(spep_3+32,zuo_3,255);

setEffAlphaKey(spep_3+43,zuo_3,255);

setEffMoveKey(spep_3+45,zuo_3,-200,400,0);
setEffScaleKey(spep_3+45,zuo_3,2.5,2.5);
setEffRotateKey(spep_3+45,zuo_3,350);
setEffAlphaKey(spep_3+45,zuo_3,0);

setEffShake(spep_3+31, zuo_3, 14, 20);

-----------------------------------------------------

--211(+40)
setMoveKey(spep_3+40,1,34,-137,0);--　一致　
setScaleKey(spep_3+40,1,1.6,1.6);
setRotateKey(spep_3+40,1,90);

setMoveKey(spep_3+43,1,30,-151,0); --一致
setScaleKey(spep_3+43,1,1.6,1.6);
setRotateKey(spep_3+43,1,90);

setMoveKey(spep_3+45,1,30,-151,0); --一致
setScaleKey(spep_3+45,1,1.6,1.6);
setRotateKey(spep_3+45,1,90);
--218
setMoveKey(spep_3+47,1,30,-151,0); --一致
setScaleKey(spep_3+47,1,1.6,1.6);
setRotateKey(spep_3+47,1,90);
--219
setMoveKey(spep_3+48,1,30,-185,0); --一致
setScaleKey(spep_3+48,1,1.6,1.6);
setRotateKey(spep_3+48,1,90);
--220
setMoveKey(spep_3+49,1,30,-190,0); --一致
setScaleKey(spep_3+49,1,1.6,1.6);
setRotateKey(spep_3+49,1,90);
--221
setMoveKey(spep_3+50,1,30,-200,0); --一致
setScaleKey(spep_3+50,1,1.6,1.6);
setRotateKey(spep_3+50,1,90);
--222
setMoveKey(spep_3+51,1,30,-230,0); --一致
setScaleKey(spep_3+51,1,1.6,1.6);
setRotateKey(spep_3+51,1,90);
--223
setMoveKey(spep_3+52,1,30,-240,0);
setScaleKey(spep_3+52,1,1.6,1.6);
setRotateKey(spep_3+52,1,90);
--224(大きく動く) OK
setMoveKey(spep_3+53,1,30,-330,0);
setScaleKey(spep_3+53,1,1.6,1.6);
setRotateKey(spep_3+53,1,90);
--225 
setMoveKey(spep_3+54,1,30,-330,0);
setScaleKey(spep_3+54,1,1.6,1.6);
setRotateKey(spep_3+54,1,90);
--226(大きく動く) OK
setMoveKey(spep_3+55,1,30,-430,0);
setScaleKey(spep_3+55,1,1.6,1.6);
setRotateKey(spep_3+55,1,90);
--227
setMoveKey(spep_3+56,1,30,-430,0);
setScaleKey(spep_3+56,1,1.6,1.6);
setRotateKey(spep_3+56,1,90);

playSe(spep_3+55,1027);

--230(大きく動く)
changeAnime(spep_3+57,1,106);
setMoveKey(spep_3+57,1,30,-230,0);
setScaleKey(spep_3+57,1,1.6,1.6);
setRotateKey(spep_3+57,1,0);--角度調整

changeAnime(spep_3+60,1,106);
setMoveKey(spep_3+60,1,30,-230,0);
setScaleKey(spep_3+60,1,1.6,1.6);
setRotateKey(spep_3+60,1,0);--角度調整

--246(大きく動く)
setMoveKey(spep_3+74,1,120,-100,0);--OK
setScaleKey(spep_3+74,1,1.6,1.6);
setRotateKey(spep_3+74,1,0);--角度調整

changeAnime(spep_3+75,1,108);--OK
setMoveKey(spep_3+75,1,120,-100,0);
setScaleKey(spep_3+75,1,1.5,1.5);
setRotateKey(spep_3+75,1,0);

baki_3=entryEffectLife(spep_3+75,10020,20, 0, -1, 0, 0, 0);
setEffMoveKey(spep_3+75,baki_3,150,300,0);
setEffScaleKey(spep_3+75,baki_3,2.0,2.0);
setEffRotateKey(spep_3+75,baki_3,10);
setEffAlphaKey(spep_3+75,baki_3,255);

setEffMoveKey(spep_3+77,baki_3,150,300,0);
setEffScaleKey(spep_3+77,baki_3,2.0,2.0);
setEffRotateKey(spep_3+77,baki_3,10);
setEffAlphaKey(spep_3+77,baki_3,255);

setEffRotateKey(spep_3+78,baki_3,0);

setEffMoveKey(spep_3+79,baki_3,150,300,0);
setEffScaleKey(spep_3+79,baki_3,2.0,2.0);
setEffRotateKey(spep_3+79,baki_3,340);
setEffAlphaKey(spep_3+79,baki_3,255);

setEffRotateKey(spep_3+80,baki_3,340);

setEffMoveKey(spep_3+81,baki_3,150,300,0);
setEffScaleKey(spep_3+81,baki_3,3.5,3.5);
setEffRotateKey(spep_3+81,baki_3,10);
setEffAlphaKey(spep_3+81,baki_3,255);

setEffMoveKey(spep_3+83,baki_3,150,300,0);
setEffScaleKey(spep_3+83,baki_3,2.0,2.0);
setEffRotateKey(spep_3+83,baki_3,10);
setEffAlphaKey(spep_3+83,baki_3,255);

setEffMoveKey(spep_3+88,baki_3,150,300,0);

setEffMoveKey(spep_3+95,baki_3,150,300,0);
setEffScaleKey(spep_3+95,baki_3,2.0,2.0);
setEffRotateKey(spep_3+95,baki_3,10);
setEffAlphaKey(spep_3+95,baki_3,0);

entryFadeBg(spep_3+74,0,3,5,47,228,255,150);
--entryFade(spep_3+74,0,3,5,255,255,255,150);

playSe(spep_3+74,1010);

setMoveKey(spep_3+83,1,600,0,0);
setScaleKey(spep_3+83,1,1.5,1.5);
setRotateKey(spep_3+83,1,0);

setMoveKey(spep_3+85,1,800,100,0);
setScaleKey(spep_3+85,1,1.5,1.5);
setRotateKey(spep_3+85,1,0);

setDisp(spep_3+85,1,0);
--[[
spatack_2a = entryEffectLife(spep_3, SP_02 , 110, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_2a, 0, 0, 0);
setEffScaleKey(spep_3, spatack_2a, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_2a, 255);
]]--
setEffAlphaKey(spep_3+56, spatack_2a, 255);
setEffAlphaKey(spep_3+57, spatack_2a, 0);
setEffAlphaKey(spep_3+72, spatack_2a, 0);
setEffAlphaKey(spep_3+73, spatack_2a, 255);

setEffScaleKey(spep_3+110, spatack_2a, 1.0 ,1.0);
--[[
-- ** 集中線 ** --
------------------------------------------------------
shuchusen_3c = entryEffectLife( spep_3, 923, 30, 0x80, -1, 0, 0, 0); -- 集中線

setEffMoveKey( spep_3, shuchusen_3c, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3c, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen_3c, 255);
setEffRotateKey( spep_3, shuchusen_3c, 328);

--------------------------------------------------------
shuchusen_3b = entryEffectLife( spep_3, 914, 63, 0x80, -1, 0, 0, 0); -- 流線

setEffMoveKey( spep_3, shuchusen_3b, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3b, 2.0, 1.0);
setEffAlphaKey( spep_3, shuchusen_3b, 0);
setEffRotateKey( spep_3, shuchusen_3b, 60)
]]--
setEffAlphaKey( spep_3+22, shuchusen_3b, 0);

setEffMoveKey( spep_3+23, shuchusen_3b, 0, 0, 0);
setEffScaleKey( spep_3+23, shuchusen_3b, 2.0, 1.0);
setEffAlphaKey( spep_3+23, shuchusen_3b, 255);
setEffRotateKey( spep_3+23, shuchusen_3b, 60)

setEffMoveKey( spep_3+34, shuchusen_3b, 0, 0, 0);
setEffScaleKey( spep_3+34, shuchusen_3b, 2.0, 1.0);
setEffAlphaKey( spep_3+34, shuchusen_3b, 255);
setEffRotateKey( spep_3+34, shuchusen_3b, 90);
setEffRotateKey( spep_3+63, shuchusen_3b, 90);
--[[
------------------------------------------------------
shuchusen_3a = entryEffectLife( spep_3, 906, 110, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_3, shuchusen_3a, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen_3a, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen_3a, 0);
setEffRotateKey( spep_3, shuchusen_3a, 0);
]]--
setEffAlphaKey( spep_3+33, shuchusen_3a, 0);

setEffMoveKey( spep_3+34, shuchusen_3a, 0, 0, 0);
setEffScaleKey( spep_3+34, shuchusen_3a, 1.2, 1.2);
setEffAlphaKey( spep_3+34, shuchusen_3a, 255);
setEffRotateKey( spep_3+34, shuchusen_3a, 0);
--[[
spatack_3 = entryEffectLife(spep_3, SP_04 , 110, 0x80, -1 ,0,0,0);
setEffMoveKey(spep_3, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_3, 255);
]]--
setEffScaleKey(spep_3+110, spatack_3, 1.0 ,1.0);
--[[
spatack_2b = entryEffectLife(spep_3, SP_02 , 110, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_2b, 0, 0, 0);
setEffScaleKey(spep_3, spatack_2b, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_2b, 0);
]]--
setEffScaleKey(spep_3+110, spatack_2b, 1.0 ,1.0);

setEffAlphaKey(spep_3+56, spatack_2b, 0);
setEffAlphaKey(spep_3+57, spatack_2b, 255);
setEffAlphaKey(spep_3+72, spatack_2b, 255);
setEffAlphaKey(spep_3+73, spatack_2b, 0);

entryFade( spep_3+100,5,6,5,255,255,255,255);

------------------------------------------------------
-- SP_06 = 150750;	--ef_004の敵用
------------------------------------------------------
spep_4=spep_3+111;

spatack_4 = entryEffectLife(spep_4, SP_06 , 56, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_4, spatack_4, 0, 0, 0);
setEffScaleKey(spep_4, spatack_4, 1.0 ,1.0);
setEffAlphaKey(spep_4, spatack_4, 255);

setEffScaleKey(spep_4+56, spatack_4, 1.0 ,1.0);

playSe(spep_4,1018);
------------------------------------------------------
shuchusen_4a = entryEffectLife( spep_4, 923, 56, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_4, shuchusen_4a, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen_4a, 1.6, 1.6);
setEffAlphaKey( spep_4, shuchusen_4a, 255);
setEffRotateKey( spep_4, shuchusen_4a, 297);

shuchusen_4b = entryEffectLife( spep_4, 906, 56, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_4, shuchusen_4b, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen_4b, 1.2, 1.2);
setEffAlphaKey( spep_4, shuchusen_4b, 255);
setEffRotateKey( spep_4, shuchusen_4b, 0);

entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 150);

--entryFade( spep_4+54,5,2,5,255,255,255,255);

------------------------------------------------------
-- SP_07 = 150751;	--溜めパンチ 343-483
------------------------------------------------------
spep_5=spep_4+57;

spatack_5 = entryEffectLife(spep_5, SP_07 , 132, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_5, spatack_5, 0, 0, 0);
setEffScaleKey(spep_5, spatack_5, -1.0 ,1.0);
setEffAlphaKey(spep_5, spatack_5, 255);

setEffScaleKey(spep_5+136, spatack_5, -1.0 ,1.0);

entryFadeBg( spep_5, 0, 136, 0, 10, 10, 10, 150);

--[[
entryFadeBg( spep_5+2, 0, 2, 9, 47, 228, 255, 200);
entryFadeBg( spep_5+15, 9, 1, 7, 47, 228, 255, 200); 
entryFadeBg( spep_5+33, 5, 2, 3, 47, 228, 255, 200); 
entryFadeBg( spep_5+45, 5, 2, 7, 47, 228, 255, 200); 
entryFadeBg( spep_5+61, 5, 2, 5, 47, 228, 255, 200); 
entryFadeBg( spep_5+75, 7, 3, 5, 47, 228, 255, 200); 
]]--
entryFadeBg( spep_5+2, 0, 7, 14, 47, 228, 255, 200);
--entryFadeBg( spep_5+15, 9, 1, 7, 47, 228, 255, 200); 
entryFadeBg( spep_5+33, 9, 8, 7, 47, 228, 255, 200); 
--entryFadeBg( spep_5+45, 5, 2, 7, 47, 228, 255, 200); 
entryFadeBg( spep_5+61, 10, 7, 10, 47, 228, 255, 200); 
--entryFadeBg( spep_5+75, 7, 3, 5, 47, 228, 255, 200); 

-- ** 集中線 ** --
shuchusen_5a = entryEffectLife( spep_5, 906, 86, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_5, shuchusen_5a, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen_5a, 1.2, 1.2);
setEffAlphaKey( spep_5, shuchusen_5a, 255);
setEffRotateKey( spep_5, shuchusen_5a, 0);

shuchusen_5b = entryEffectLife( spep_5+87, 906, 45, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_5+87, shuchusen_5b, 0, 0, 0);
setEffScaleKey( spep_5+87, shuchusen_5b, 1.2, 1.2);
setEffAlphaKey( spep_5+87, shuchusen_5b, 255);
setEffRotateKey( spep_5+87, shuchusen_5b, 0);

playSe(spep_5,SE_04);

ctgogo = entryEffectLife( spep_5+13, 190006, 69, 0x100, -1, 0, 100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_5+13, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_5+13, ctgogo, 10);
setEffAlphaKey( spep_5+13, ctgogo, 255);

setEffScaleKey( spep_5+75, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_5+75, ctgogo, 10);
setEffAlphaKey( spep_5+75, ctgogo, 255);

setEffScaleKey( spep_5+82, ctgogo, -2.0, 2.0);
setEffRotateKey( spep_5+82, ctgogo, 10);
setEffAlphaKey( spep_5+82, ctgogo, 255);

--entryFade( spep_5+82,0,5,5,255,255,255,255);
entryFade( spep_5+130,3,6,4,255,255,255,255);
------------------------------------------------------
-- SP_09 = 150753;	--ef_006の敵用
------------------------------------------------------
-- SP_10 = 150754;	--青オーラ 敵の背面に配置
------------------------------------------------------
spep_6=spep_5+134;

changeAnime(spep_6,1,108);--OK

setDisp(spep_6,1,1);

setMoveKey(spep_6,1,600,50,0);
setScaleKey(spep_6,1,1.5,1.5);
setRotateKey(spep_6,1,0);

setMoveKey(spep_6+11,1,100,50,0);
setScaleKey(spep_6+11,1,1.5,1.5);
setRotateKey(spep_6+11,1,0);

--entryFade( spep_6+8,0,3,5,255,255,255,255);
playSe(spep_6+12,1025);

dogn_6=entryEffectLife(spep_6+11,10018,55,0,-1,0,0,0);
setEffMoveKey(spep_6+11,dogn_6,0,400,0);
setEffScaleKey(spep_6+11,dogn_6,4.5,4.5);
setEffRotateKey(spep_6+11,dogn_6,0);
setEffAlphaKey(spep_6+11,dogn_6,255);

setEffScaleKey(spep_6+14,dogn_6,3.5,3.5);
setEffRotateKey(spep_6+14,dogn_6,0);

setEffScaleKey(spep_6+59,dogn_6,3.5,3.5);
setEffRotateKey(spep_6+59,dogn_6,0);

setEffAlphaKey(spep_6+58,dogn_6,255);
setEffAlphaKey(spep_6+59,dogn_6,0);

setEffShake(spep_6+11,dogn_6,55,20);

setMoveKey(spep_6+51,1,100,50,0);
setScaleKey(spep_6+53,1,1.5,1.5);
setRotateKey(spep_6+53,1,0);

setMoveKey(spep_6+61,1,600,50,0);
setScaleKey(spep_6+63,1,1.5,1.5);
setRotateKey(spep_6+63,1,0);

setMoveKey(spep_6+65,1,800,50,0);
setScaleKey(spep_6+65,1,1.5,1.5);
setRotateKey(spep_6+65,1,0);

setDisp(spep_6+65,1,0);

spatack_6 = entryEffectLife(spep_6, SP_09 , 80, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_6, spatack_6, 0, 0, 0);
setEffScaleKey(spep_6, spatack_6, 1.0 ,1.0);
setEffAlphaKey(spep_6, spatack_6, 255);

setEffScaleKey(spep_6+80, spatack_6, 1.0 ,1.0);
------------------------------------------------------
-- ** 集中線 ** --
shuchusen_6a = entryEffectLife( spep_6+9, 906, 71, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_6+9, shuchusen_6a, 0, 0, 0);
setEffScaleKey( spep_6+9, shuchusen_6a, 1.2, 1.2);
setEffAlphaKey( spep_6+9, shuchusen_6a, 255);
setEffRotateKey( spep_6+9, shuchusen_6a, 0);

shuchusen_6b = entryEffectLife( spep_6, 914, 80, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_6, shuchusen_6b, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen_6b, 1.2, 1.2);
setEffAlphaKey( spep_6, shuchusen_6b, 255);
setEffRotateKey( spep_6, shuchusen_6b, 0);

------------------------------------------------------
spatack_7 = entryEffectLife(spep_6, SP_10 , 70, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_6, spatack_7, 0, 0, 0);
setEffScaleKey(spep_6, spatack_7,1.0,1.0);
setEffAlphaKey(spep_6, spatack_7, 255);

setEffScaleKey(spep_6+70, spatack_7,1.0,1.0);

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 10, 2, 10, 10, 10, 150); -- ベース暗め　黒
entryFadeBg( spep_6+9, 2, 70, 0, 10, 10, 10, 255); -- ベース暗め　黒

entryFade( spep_6+72,5,4,5,255,255,255,255);
------------------------------------------------------
-- SP_11 = 150755;	--ラスト前面 (背景揺れのために1.1倍で使用) 565-875
------------------------------------------------------
-- SP_12 = 150756;	--ラスト背面 (背景揺れのために1.1倍で使用)
------------------------------------------------------
--背景：黒
spep_7=spep_6+81;

changeAnime(spep_7,1,108);
setDisp(spep_7,1,1);

setMoveKey(spep_7,1,-450,-150,0);
setScaleKey(spep_7,1,4.0,4.0);
setRotateKey(spep_7,1,0);

--586
--entryFade(spep_7+21,1,4,1,255,255,255,255);

setMoveKey(spep_7+22,1,50,0,0); --21
setScaleKey(spep_7+22,1,0.6,0.6);
setRotateKey(spep_7+22,1,0);

setMoveKey(spep_7+23,1,130,90,0);
setScaleKey(spep_7+23,1,0.6,0.6);
setRotateKey(spep_7+23,1,0);

playSe(spep_7+19,1033);

dogn_7a=entryEffectLife(spep_7+19,10018,10,0,-1,0,0,0);
setEffMoveKey(spep_7+19,dogn_7a,-100,300,0);
setEffScaleKey(spep_7+19,dogn_7a,2.0,2,0);
setEffRotateKey(spep_7+19,dogn_7a,0);
setEffAlphaKey(spep_7+19,dogn_7a,255);

setEffAlphaKey(spep_7+26,dogn_7a,255);
setEffAlphaKey(spep_7+29,dogn_7a,0);

setEffShake(spep_7+19,dogn_7a,10,20);

--619
setMoveKey(spep_7+55,1,-50,0,0);
setScaleKey(spep_7+55,1,0.6,0.6);
setRotateKey(spep_7+55,1,0);

setMoveKey(spep_7+56,1,-55,0,0);
setScaleKey(spep_7+56,1,0.6,0.6);
setRotateKey(spep_7+56,1,0);

--entryFade(spep_7+51,0,4,0,255,255,255,255);
playSe(spep_7+50,1033);

dogn_7b=entryEffectLife(spep_7+52,10018,14,0,-1,0,0,0);
setEffMoveKey(spep_7+52,dogn_7b,-100,300,0);
setEffScaleKey(spep_7+52,dogn_7b,2.0,2,0);
setEffRotateKey(spep_7+52,dogn_7b,0);
setEffAlphaKey(spep_7+52,dogn_7b,255);

setEffAlphaKey(spep_7+61,dogn_7b,255);
setEffAlphaKey(spep_7+66,dogn_7b,0);

setEffShake(spep_7+52,dogn_7b,14,20);

--668
setMoveKey(spep_7+103,1,10,0,0);
setScaleKey(spep_7+103,1,0.6,0.6);
setRotateKey(spep_7+103,1,0);

--entryFade(spep_7+97,0,4,0,255,255,255,255);
playSe(spep_7+98,1033);

dogn_7c=entryEffectLife(spep_7+100,10018,16,0,-1,0,0,0);
setEffMoveKey(spep_7+100,dogn_7c,-90,300,0);
setEffScaleKey(spep_7+100,dogn_7c,2.0,2,0);
setEffRotateKey(spep_7+100,dogn_7c,0);
setEffAlphaKey(spep_7+100,dogn_7c,255);

setEffAlphaKey(spep_7+113,dogn_7c,255);
setEffAlphaKey(spep_7+116,dogn_7c,0);

setEffShake(spep_7+100,dogn_7c,16,20);

changeAnime(spep_7+105,1,106);
setMoveKey(spep_7+105,1,-50,-30,0);
setScaleKey(spep_7+103,1,0.6,0.6);
setRotateKey(spep_7+103,1,0);

setMoveKey(spep_7+155,1,0,50,0);
setScaleKey(spep_7+155,1,0.5,0.5);
setRotateKey(spep_7+155,1,0);

setDisp(spep_7+155,1,0);

--spatack_8 = entryEffectLife(spep_7, SP_11 , 160, 0x100, -1 ,0,0,0);
spatack_8 = entryEffect(spep_7, SP_11 , 0x100, -1 ,0,0,0);

setEffMoveKey(spep_7, spatack_8, 0, 0, 0);
setEffScaleKey(spep_7, spatack_8, 1.1,1.1);
setEffAlphaKey(spep_7, spatack_8, 255);

setEffScaleKey(spep_7+160, spatack_8,1.1,1.1);

-- ** 集中線 ** --
shuchusen_7a = entryEffectLife( spep_7, 914, 156, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7, shuchusen_7a, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen_7a, 1.2, 1.2);
setEffAlphaKey( spep_7, shuchusen_7a, 255);
setEffRotateKey( spep_7, shuchusen_7a, 355);

shuchusen_7b = entryEffectLife( spep_7, 921, 156, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7, shuchusen_7b, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen_7b, 1.2, 1.2);
setEffAlphaKey( spep_7, shuchusen_7b, 255);
setEffRotateKey( spep_7, shuchusen_7b, 350);

shuchusen_7c = entryEffectLife( spep_7+157, 906, 153, 0x100, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_7+157, shuchusen_7c, 0, 0, 0);
setEffScaleKey( spep_7+157, shuchusen_7c, 1.2, 1.2);
setEffAlphaKey( spep_7+157, shuchusen_7c, 255);
setEffRotateKey( spep_7+157, shuchusen_7c, 355);

entryFade(spep_7+152,0,4,8,255,255,255,255);
playSe(spep_7+155,1024);

dogn_7d=entryEffectLife(spep_7+155,10018,30,0,-1,0,0,0);
setEffMoveKey(spep_7+155,dogn_7d,0,300,0);
setEffScaleKey(spep_7+155,dogn_7d,4.0,4,0);
setEffRotateKey(spep_7+155,dogn_7d,0);
setEffAlphaKey(spep_7+155,dogn_7d,255);
setEffAlphaKey(spep_7+175,dogn_7d,255);
setEffAlphaKey(spep_7+185,dogn_7d,0);

setEffShake(spep_7+155,dogn_7d,30,20);

------------------------------------------------------
--spatack_9 = entryEffectLife(spep_7, SP_12 , 310, 0x80, -1 ,0,0,0);
spatack_9 = entryEffect(spep_7, SP_12 , 0x80, -1 ,0,0,0);

setEffMoveKey(spep_7, spatack_9, 0, 0, 0);
setEffScaleKey(spep_7, spatack_9, 1.1,1.1);
setEffAlphaKey(spep_7, spatack_9, 255);

setEffScaleKey(spep_7+310, spatack_9, 1.1,1.1);
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 310, 0, 10, 10, 10, 255); -- ベース暗め　黒

-- ダメージ表示
dealDamage(spep_7+206);

entryFade( spep_7+290, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+300);

end
--1012130
--sp1127
color_r = 245;
fcolor_g = 245;
fcolor_b = 245;
SP_01=150764;	--ダッシュ	ef_001
SP_02=150765;	--ダッシュ（敵）	ef_001r
SP_03=150766;	--ラッシュ	ef_002
SP_04=150767;	--ラッシュ（敵）	ef_002r
SP_05=150768;	--太陽拳	ef_003
SP_06=150769;	--気功砲	ef_004
SP_07=150770;	--気功砲（敵）	ef_004r
SP_08=150771;	--閃光	ef_005
SP_09=150772;	--地面	ef_006

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
setScaleKey(   0,   1, 1.5, 1.5);
------------------------------------------------------
-- SP_01=150764;	--ダッシュ	ef_001 0-42
------------------------------------------------------
if (_IS_PLAYER_SIDE_ == 1) then

kame_flag = 0x00;
setVisibleUI(0, 0);
spep_1=0;
spatack_1 = entryEffect(spep_1, SP_01 , 0x100, -1 ,0,0,0); --Life42
setEffMoveKey(spep_1, spatack_1, 0, 0, 0);
setEffScaleKey(spep_1, spatack_1, 1.0 ,1.0);
setEffAlphaKey(spep_1, spatack_1, 255);

setEffShake(spep_1, spatack_1 , 42, 10);

playSe(spep_1+1,1018);

if(_IS_DODGE_ == 1) then
SP_dodge = 38; --エンドフェイズのフレーム数を置き換える +6
setMoveKey(SP_dodge,1,0,0,0);
setScaleKey(SP_dodge,1,1.5,1.5);
setRotateKey(SP_dodge,1,0);
playSe( SP_dodge-12, 1042);--136
speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);-- white fade
endPhase(SP_dodge+10);
do return end
else end

--集中線
shuchusen1 = entryEffectLife( spep_1, 921, 40, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.1, 1.1);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 180);
entryFadeBg( spep_1, 0, 40, 0, 10, 10, 10, 230);-- ベース暗め　背景

entryFade(spep_1+36,4,6,4,255,255,255,255);

------------------------------------------------------
-- カードカットイン 43-137
------------------------------------------------------
spep_c=spep_1+43;

-- ** 背景 ** --
entryFadeBg( spep_c, 0, 89, 0, 10, 10, 10, 210); -- ベース暗め　背景

-- ** カードカットイン ** --
speff_c = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff_c, 1, 1);
setEffReplaceTexture( speff_c, 2, 0); -- カード差し替え
setEffReplaceTexture( speff_c, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_c = entryEffectLife( spep_c+1, 906, 89, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_c+1, shuchusen_c, 0, 0, 0);
setEffScaleKey( spep_c+1, shuchusen_c, 1.2, 1.2);
setEffAlphaKey( spep_c+1, shuchusen_c, 255);
setEffRotateKey( spep_c+1, shuchusen_c, 0);

-- ** 音 ** --
playSe(spep_c+5,SE_05);

entryFade(spep_c+83,5,7,5,255,255,255,255);
------------------------------------------------------
--SP_03=150766;	--ラッシュ	ef_002 138-480
------------------------------------------------------
spep_2=spep_c+95;--138

changeAnime(spep_2,1,101);
setDisp(spep_2,1,1);
setMoveKey(spep_2,1,200,-50,0);
setScaleKey(spep_2,1,1.2,1.2);
setRotateKey(spep_2,1,0);

spatack_2 = entryEffectLife(spep_2, SP_03 , 342, 0x100, -1 ,0,0,0);
setEffMoveKey(spep_2, spatack_2, 0, 0, 0);
setEffScaleKey(spep_2, spatack_2, 1.0 ,1.0);
setEffAlphaKey(spep_2, spatack_2, 255);

setEffShake(spep_2, spatack_2, 342, 10);

--集中線
shuchusen2a = entryEffectLife( spep_2, 921, 40, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2, shuchusen2a, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2a, 1.7, 1.7);
setEffAlphaKey( spep_2, shuchusen2a, 255);
setEffRotateKey( spep_2, shuchusen2a, 210);
entryFadeBg( spep_2, 0, 342, 0, 10, 10, 10, 200); -- ベース暗め　背景

------------------------------------------------------
playSe(spep_2+19,1001);

setMoveKey(spep_2+19,1,100,50,0);
setScaleKey(spep_2+19,1,1.2,1.2);
setRotateKey(spep_2+19,1,0);

setShakeChara(spep_2+19,1,98,10);

changeAnime(spep_2+19,1,108);
setScaleKey(spep_2+20,1,1.2,1.2);
setRotateKey(spep_2+20,1,0);

playSe(spep_2+31,1000);

setScaleKey(spep_2+40,1,1.2,1.2);
setRotateKey(spep_2+40,1,0);

setScaleKey(spep_2+41,1,2.0,2.0);
setRotateKey(spep_2+41,1,0);

playSe(spep_2+41,1010);

setScaleKey(spep_2+44,1,2.0,2.0);
setRotateKey(spep_2+44,1,0);

setScaleKey(spep_2+53,1,1.2,1.2);
setRotateKey(spep_2+53,1,0);
setMoveKey(spep_2+53,1,100,50,0);

changeAnime(spep_2+57,1,101);
setScaleKey(spep_2+57,1,0.6,0.6);
setRotateKey(spep_2+57,1,0);
setMoveKey(spep_2+57,1,150,300,0);

playSe(spep_2+83,43);

changeAnime(spep_2+87,1,103);
setScaleKey(spep_2+87,1,0.6,0.6);
setRotateKey(spep_2+87,1,0);
setMoveKey(spep_2+87,1,150,300,0);

setScaleKey(spep_2+97,1,1.2,1.2);
setRotateKey(spep_2+97,1,0);
setMoveKey(spep_2+97,1,100,50,0);

changeAnime(spep_2+99,1,108);

setScaleKey(spep_2+99,1,1.2,1.2);
setRotateKey(spep_2+99,1,0);
setMoveKey(spep_2+99,1,120,100,0);

setShakeChara(spep_2+99,1,91,15);

playSe(spep_2+99,1034);--超能力

ctexp = entryEffectLife( spep_2+99, 10001, 83, 0x100, -1, 0, 0, 0);    -- !?
setEffScaleKey( spep_2+99, ctexp, 1.3, 1.3);
setEffRotateKey( spep_2+99, ctexp, 0);
setEffAlphaKey( spep_2+99, ctexp, 255);
--setEffMoveKey( spep_2+99, ctexp, -50,200,0);
setEffMoveKey( spep_2+99, ctexp, 200,260,0);
setEffShake(spep_2+99, ctexp, 90, 10);

playSe(spep_2+183,1010);

changeAnime(spep_2+183,1,106);
setRotateKey(spep_2+183,1,-10);
setMoveKey(spep_2+183,1,120,100,0);
setScaleKey(spep_2+183,1,1.2,1.2);

ctbaki = entryEffectLife( spep_2+183, 10020, 12, 0x100, -1, 0, 0, 0);    -- バキ
setEffScaleKey( spep_2+183, ctbaki, 1.6, 1.6);
setEffRotateKey( spep_2+183, ctbaki, 330);
setEffAlphaKey( spep_2+183, ctbaki, 255);
setEffMoveKey( spep_2+183, ctbaki, -120,150,0);

setEffShake(spep_2+183, ctbaki, 12, 10);

playSe(spep_2+206,1035);
--playSe(spep_2+226,1035);

setRotateKey(spep_2+207,1,0);
setMoveKey(spep_2+207,1,550,700,0);
setScaleKey(spep_2+207,1,1.2,1.2);

setDisp(spep_2+208,1,0);

playSe(spep_2+248,1021);

setDisp(spep_2+264,1,1);
setRotateKey(spep_2+264,1,0);
setMoveKey(spep_2+264,1,500,500,0);
setScaleKey(spep_2+264,1,0.6,0.6);

playSe(spep_2+282,1011);

setRotateKey(spep_2+283,1,0);
setMoveKey(spep_2+283,1,0,0,0);
setScaleKey(spep_2+283,1,0.6,0.6);

playSe(spep_2+288,1024);

setDisp(spep_2+293,1,0);
setRotateKey(spep_2+299,1,0);

changeAnime(spep_2+300,1,108);
setDisp(spep_2+300,1,1);
setRotateKey(spep_2+300,1,340);
setMoveKey(spep_2+300,1,0,0,0);
setScaleKey(spep_2+300,1,1.0,1.0);

setDisp(spep_2+342,1,0);
setRotateKey(spep_2+342,1,340);
setMoveKey(spep_2+342,1,0,0,0);
setScaleKey(spep_2+342,1,1.0,1.0);

setShakeChara(spep_2+300,1,42,20);

--(180F)
shuchusen2b = entryEffectLife( spep_2+41, 921, 19, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+41, shuchusen2b, 0, 0, 0);
setEffScaleKey( spep_2+41, shuchusen2b, 1.7, 1.7);
setEffAlphaKey( spep_2+41, shuchusen2b, 255);
setEffRotateKey( spep_2+41, shuchusen2b, -32);

--334F
shuchusen2c = entryEffectLife( spep_2+183, 923, 27, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+183, shuchusen2c, 0, 0, 0);
setEffScaleKey( spep_2+183, shuchusen2c, 1.6, 1.6);
setEffAlphaKey( spep_2+183, shuchusen2c, 255);
setEffRotateKey( spep_2+183, shuchusen2c, 40);

--345
shuchusen2d = entryEffectLife( spep_2+211, 906, 35, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+211, shuchusen2d, 0, 0, 0);
setEffScaleKey( spep_2+211, shuchusen2d, 1.1, 1.1);
setEffAlphaKey( spep_2+211, shuchusen2d, 255);
setEffRotateKey( spep_2+211, shuchusen2d, 0);

shuchusen2e = entryEffectLife( spep_2+246, 921, 38, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+246, shuchusen2e, 0, 0, 0);
setEffScaleKey( spep_2+246, shuchusen2e, 1.6, 1.6);
setEffAlphaKey( spep_2+246, shuchusen2e, 255);
setEffRotateKey( spep_2+246, shuchusen2e, 330);

entryFade(spep_2+279,1,10,5,255,255,255,255);

ctdgn = entryEffectLife( spep_2+285, 10018, 5, 0x100, -1, 0, 0, 0);    -- ドゴン
setEffScaleKey( spep_2+285, ctdgn, 4.0, 4.0);
setEffRotateKey( spep_2+285, ctdgn, 0);
setEffAlphaKey( spep_2+285, ctdgn, 60);
setEffMoveKey( spep_2+285, ctdgn, 0,300,0);

setEffScaleKey( spep_2+290, ctdgn, 4.0, 4.0);
setEffRotateKey( spep_2+290, ctdgn, 0);
setEffAlphaKey( spep_2+290, ctdgn, 60);
setEffMoveKey( spep_2+290, ctdgn, 0,300,0);

ctdgn2 = entryEffectLife( spep_2+288, 10018, 28, 0x100, -1, 0, 0, 0);    -- ドゴン
setEffScaleKey( spep_2+288, ctdgn2, 1.5, 1.5);
setEffRotateKey( spep_2+288, ctdgn2, 0);
setEffAlphaKey( spep_2+288, ctdgn2, 80);
setEffMoveKey( spep_2+288, ctdgn2, 0,300,0);

setEffScaleKey( spep_2+296, ctdgn2, 3.5, 3.5);
setEffRotateKey( spep_2+296, ctdgn2, 0);
setEffAlphaKey( spep_2+296, ctdgn2, 255);
setEffMoveKey( spep_2+296, ctdgn2, 0,300,0);

setEffShake(spep_2+288, ctdgn2, 28, 10);

shuchusen2f = entryEffectLife( spep_2+288, 906, 54, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+288, shuchusen2f, 0, 0, 0);
setEffScaleKey( spep_2+288, shuchusen2f, 1.1, 1.1);
setEffAlphaKey( spep_2+288, shuchusen2f, 255);
setEffRotateKey( spep_2+288, shuchusen2f, 0);

entryFade(spep_2+330,5,8,5,255,255,255,255);
------------------------------------------------------
--SP_05=150768;	--太陽拳	ef_003 481-621
------------------------------------------------------
spep_3=spep_2+343;

playSe(spep_3,1018);

spatack_3 = entryEffectLife(spep_3, SP_05 , 140, 0x100, -1 ,0,0,0);
setEffMoveKey(spep_3, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_3, 255);

playSe(spep_3+66,1062);

ctca = entryEffectLife( spep_3+66, 10004, 78, 0x100, -1, 0, 0, 0);    -- カッ
setEffScaleKey( spep_3+66, ctca, 1.6, 1.6);
setEffRotateKey( spep_3+66, ctca, 10);
setEffAlphaKey( spep_3+66, ctca, 255);
setEffMoveKey( spep_3+66, ctca, -200,420,0);

setEffShake(spep_3+66, ctca, 78, 10);

--集中線
shuchusen3 = entryEffectLife( spep_3, 906, 140, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, -1.1, 1.1);
setEffAlphaKey( spep_3, shuchusen3,255);
setEffRotateKey( spep_3, shuchusen3,180);

entryFadeBg( spep_3, 0, 87, 0, 10, 10, 10, 160); -- ベース暗め　背景
entryFadeBg( spep_3+88, 0, 52, 0, 10, 10, 10, 160); -- ベース暗め　背景

entryFade(spep_3+133,5,7,30,255,255,255,255);
------------------------------------------------------
--SP_06=150769;	--気功砲	ef_004 622-848
------------------------------------------------------
spep_4=spep_3+141;

changeAnime(spep_4,1,108);
setDisp(spep_4,1,1);
setRotateKey(spep_4,1,0);
setMoveKey(spep_4,1,0,0,0);
setScaleKey(spep_4,1,1.2,1.2);

setRotateKey(spep_4+20,1,0);
setMoveKey(spep_4+20,1,0,0,0);
setScaleKey(spep_4+20,1,1.2,1.2);

setRotateKey(spep_4+21,1,90);
setMoveKey(spep_4+21,1,-50,-50,0);
setScaleKey(spep_4+21,1,1.2,1.2);

playSe(spep_4+22,1009);

setRotateKey(spep_4+46,1,90);
setMoveKey(spep_4+48,1,0,-600,0);
setScaleKey(spep_4+60,1,0.8,0.8);
setShakeChara(spep_4,1,21,15);
setDisp(spep_4+48,1,0);

playSe(spep_4+48,43);

spatack_4 = entryEffectLife(spep_4, SP_06 , 226, 0x100, -1 ,0,0,0);
setEffMoveKey(spep_4, spatack_4, 0, 0, 0);
setEffScaleKey(spep_4, spatack_4, 1.0 ,1.0);
setEffAlphaKey(spep_4, spatack_4, 255);

setEffShake(spep_4, spatack_4, 226, 10);

--集中線
--645
shuchusen4a = entryEffectLife( spep_4+21, 923, 34, 0x80,  -1, 0,  0,  0); 
setEffMoveKey( spep_4+21, shuchusen4a, 0, 0, 0);
setEffScaleKey( spep_4+21, shuchusen4a, 1.1, 1.1);
setEffAlphaKey( spep_4+21, shuchusen4a, 255);
setEffRotateKey( spep_4+21, shuchusen4a, 180);

--698
shuchusen4b = entryEffectLife( spep_4+84, 906, 120, 0x80,  -1, 0,  0,  0); 
setEffMoveKey( spep_4+84, shuchusen4b, 0, 0, 0);
setEffScaleKey( spep_4+84, shuchusen4b, 1.4, 1.4);
setEffAlphaKey( spep_4+84, shuchusen4b, 255);
setEffRotateKey( spep_4+84, shuchusen4b, 255);
entryFadeBg( spep_4+74, 0, 225, 0, 10, 10, 10, 255); --ベース暗め　背景

speff = entryEffect(  spep_4+74,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4+74,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_4+74,SE_04);

ctgogo = entryEffectLife( spep_4+87, 190006, 69, 0x100, -1, 0, 100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_4+87, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_4+87, ctgogo, 10);
setEffAlphaKey( spep_4+87, ctgogo, 255);

setEffScaleKey( spep_4+149, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_4+149, ctgogo, 10);
setEffAlphaKey( spep_4+149, ctgogo, 255);

setEffScaleKey( spep_4+156, ctgogo, 2.0, 2.0);
setEffRotateKey( spep_4+156, ctgogo, 10);
setEffAlphaKey( spep_4+156, ctgogo, 255);

setEffShake(spep_4+87, ctgogo, 69, 10);

--810
ctzuo = entryEffectLife( spep_4+177, 10012, 38, 0x100, -1, 0, 0, 0);    -- ズオ
setEffScaleKey( spep_4+177, ctzuo, 1.8, 1.8);
setEffRotateKey( spep_4+177, ctzuo, 30);
setEffAlphaKey( spep_4+177, ctzuo, 255);
setEffMoveKey( spep_4+177, ctzuo, 150,350,0);

setEffScaleKey( spep_4+208, ctzuo, 3.8, 3.8);
setEffRotateKey( spep_4+208, ctzuo, 30);
setEffAlphaKey( spep_4+188, ctzuo, 255);
setEffAlphaKey( spep_4+208, ctzuo, 0);
setEffMoveKey( spep_4+208, ctzuo, 150,350,0);

setEffShake(spep_4+177, ctzuo, 38, 20);

playSe(spep_4+170,1021);

--816
shuchusen4c = entryEffectLife( spep_4+194, 923, 32, 0x80,  -1, 0,  0,  0); 
setEffMoveKey( spep_4+194, shuchusen4c, 0, 0, 0);
setEffScaleKey( spep_4+194, shuchusen4c, 1.4, 1.4);
setEffAlphaKey( spep_4+194, shuchusen4c, 255);
setEffRotateKey( spep_4+194, shuchusen4c, 320);
entryFadeBg( spep_4, 0, 89, 0, 10, 10, 10, 180); --ベース暗め　背景
entryFadeBg( spep_4+60, 15, 225, 0, 10, 10, 10, 255); --ベース暗め　背景
entryFade(spep_4+176,2,2,0,255,255,255,255);
entryFadeBg( spep_4+177, 3, 3, 24, 160, 52, 36, 255); --ベース暗め　背景

entryFade(spep_4+220,5,4,5,255,255,255,255);

------------------------------------------------------
--SP_08=150771;	--閃光	ef_005 849-
------------------------------------------------------
spep_5=spep_4+227;

playSe(spep_5+20,1022);

changeAnime(spep_5,1,108);
setDisp(spep_5,1,1);
setScaleKey(spep_5,1,1.2,1.2);
setMoveKey(spep_5,1,-50,100,0);
setRotateKey(spep_5,1,60);
setShakeChara(spep_5,1,140,20);

setScaleKey(spep_5+20,1,1.2,1.2);
setMoveKey(spep_5+20,1,-50,100,0);
setRotateKey(spep_5+20,1,60);

setScaleKey(spep_5+23,1,1.2,1.2);
setMoveKey(spep_5+23,1,150,-500,0);
setRotateKey(spep_5+23,1,60);
setDisp(spep_5+23,1,0);

entryFade(spep_5+37, 6, 5, 5,255,255,255,255);

setDisp(spep_5+26,1,1);

setMoveKey(spep_5+26,1,0,75,0);
setScaleKey(spep_5+26,1,1.2,1.2);
setRotateKey(spep_5+26,1,60);

setMoveKey(spep_5+46,1,100,-380,0);
setScaleKey(spep_5+46,1,1.2,1.2);
setRotateKey(spep_5+46,1,60);

playSe(spep_5+56,1024);

setMoveKey(spep_5+140,1,100,-380,0);
setScaleKey(spep_5+140,1,1.2,1.2);
setRotateKey(spep_5+140,1,60);

spatack_5 = entryEffect(spep_5+20, SP_08,0x100, -1 ,0,0,0);
setEffMoveKey(spep_5+20, spatack_5, 0, 0, 0);
setEffScaleKey(spep_5+20, spatack_5, 1.0 ,1.0);
setEffAlphaKey(spep_5+20, spatack_5, 255);
--setEffAlphaKey(spep_5+120, spatack_5, 255);

--集中線
shuchusen5a=entryEffectLife(spep_5,906,22, 0x80,-1,0,0,0);
setEffMoveKey(spep_5,shuchusen5a,0,0,0);
setEffScaleKey(spep_5,shuchusen5a,1.7, 1.7);
setEffAlphaKey(spep_5,shuchusen5a,255);
setEffRotateKey(spep_5,shuchusen5a,0);

setEffAlphaKey(spep_5+24,shuchusen5a,255);
setEffScaleKey(spep_5+24,shuchusen5a,1.4,1.4);
setEffRotateKey(spep_5+24,shuchusen5a,0);
setEffMoveKey(spep_5+24,shuchusen5a,0,0,0);

shuchusen5c=entryEffectLife(spep_5+27,906,113, 0x80,-1,0,0,0);
setEffMoveKey(spep_5+27,shuchusen5c,150,-150,0);
setEffScaleKey(spep_5+27,shuchusen5c,1.7, 1.7);
setEffAlphaKey(spep_5+27,shuchusen5c,255);
setEffRotateKey(spep_5+27,shuchusen5c,0);

setEffAlphaKey(spep_5+140,shuchusen5c,255);
setEffScaleKey(spep_5+140,shuchusen5c,1.7,1.7);
setEffRotateKey(spep_5+140,shuchusen5c,0);
setEffMoveKey(spep_5+140,shuchusen5c,150,-150,0);

------------------------------------------------------
--SP_09=150772;	--地面	ef_006
------------------------------------------------------
--集中線
shuchusen5b = entryEffectLife( spep_5, 920, 140, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_5, shuchusen5b, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5b, 1.7, 2.5);
setEffAlphaKey( spep_5, shuchusen5b, 255);
setEffRotateKey( spep_5, shuchusen5b, 80);
setEffAlphaKey( spep_5+140, shuchusen5b, 255);

spatack_6 = entryEffect(spep_5+26, SP_09 , 0x80, -1 ,0,0,0); --Life 120
setEffMoveKey(spep_5+26, spatack_6, 0, 0, 0);
setEffScaleKey(spep_5+26, spatack_6, 1.0 ,1.0);
setEffAlphaKey(spep_5+26, spatack_6, 255);

entryFadeBg(spep_5, 0, 140, 0, 10, 10, 10, 255);--ベース暗め背景

-- ダメージ表示
dealDamage(spep_5+42);
entryFade(spep_5+101, 9, 10, 1, 8, 8, 8, 255);
endPhase(spep_5+111);
else

------------------------------------------------------
-- SP_01=150764;	--ダッシュ	ef_001 0-42
------------------------------------------------------
kame_flag = 0x00;
setVisibleUI(0, 0);
spep_1=0;
spatack_1 = entryEffect(spep_1, SP_02 , 0x100, -1 ,0,0,0); --Life42
setEffMoveKey(spep_1, spatack_1, 0, 0, 0);
setEffScaleKey(spep_1, spatack_1, 1.0 ,1.0);
setEffAlphaKey(spep_1, spatack_1, 255);

setEffShake(spep_1, spatack_1 , 42, 10);

playSe(spep_1+1,1018);

if(_IS_DODGE_ == 1) then
SP_dodge = 38; --エンドフェイズのフレーム数を置き換える +6
setMoveKey(SP_dodge,1,0,0,0);
setScaleKey(SP_dodge,1,1.5,1.5);
setRotateKey(SP_dodge,1,0);
playSe( SP_dodge-12, 1042);--136
speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);-- white fade
endPhase(SP_dodge+10);
do return end
else end

--集中線
shuchusen1 = entryEffectLife( spep_1, 921, 40, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.1, 1.1);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 180);
entryFadeBg( spep_1, 0, 40, 0, 10, 10, 10, 230);-- ベース暗め　背景

entryFade(spep_1+36,4,6,4,255,255,255,255);

------------------------------------------------------
-- カードカットイン 43-137
------------------------------------------------------
spep_c=spep_1+43;

-- ** 背景 ** --
entryFadeBg( spep_c, 0, 89, 0, 10, 10, 10, 210); -- ベース暗め　背景

-- ** カードカットイン ** --
speff_c = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff_c, 1, 1);
setEffReplaceTexture( speff_c, 2, 0); -- カード差し替え
setEffReplaceTexture( speff_c, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_c = entryEffectLife( spep_c+1, 906, 89, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_c+1, shuchusen_c, 0, 0, 0);
setEffScaleKey( spep_c+1, shuchusen_c, 1.2, 1.2);
setEffAlphaKey( spep_c+1, shuchusen_c, 255);
setEffRotateKey( spep_c+1, shuchusen_c, 0);

-- ** 音 ** --
playSe(spep_c+5,SE_05);

entryFade(spep_c+83,5,7,5,255,255,255,255);
------------------------------------------------------
--SP_03=150766;	--ラッシュ	ef_002 138-480
------------------------------------------------------
spep_2=spep_c+95;--138

changeAnime(spep_2,1,101);
setDisp(spep_2,1,1);
setMoveKey(spep_2,1,200,-50,0);
setScaleKey(spep_2,1,1.2,1.2);
setRotateKey(spep_2,1,0);

spatack_2 = entryEffectLife(spep_2, SP_04 , 342, 0x100, -1 ,0,0,0);
setEffMoveKey(spep_2, spatack_2, 0, 0, 0);
setEffScaleKey(spep_2, spatack_2, 1.0 ,1.0);
setEffAlphaKey(spep_2, spatack_2, 255);

setEffShake(spep_2, spatack_2, 342, 10);

--集中線
shuchusen2a = entryEffectLife( spep_2, 921, 40, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2, shuchusen2a, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2a, 1.7, 1.7);
setEffAlphaKey( spep_2, shuchusen2a, 255);
setEffRotateKey( spep_2, shuchusen2a, 210);
entryFadeBg( spep_2, 0, 342, 0, 10, 10, 10, 200); -- ベース暗め　背景

------------------------------------------------------
playSe(spep_2+19,1001);

setMoveKey(spep_2+19,1,100,50,0);
setScaleKey(spep_2+19,1,1.2,1.2);
setRotateKey(spep_2+19,1,0);

setShakeChara(spep_2+19,1,98,10);

changeAnime(spep_2+19,1,108);
setScaleKey(spep_2+20,1,1.2,1.2);
setRotateKey(spep_2+20,1,0);

playSe(spep_2+31,1000);

setScaleKey(spep_2+40,1,1.2,1.2);
setRotateKey(spep_2+40,1,0);

setScaleKey(spep_2+41,1,2.0,2.0);
setRotateKey(spep_2+41,1,0);

playSe(spep_2+41,1010);

setScaleKey(spep_2+44,1,2.0,2.0);
setRotateKey(spep_2+44,1,0);

setScaleKey(spep_2+53,1,1.2,1.2);
setRotateKey(spep_2+53,1,0);
setMoveKey(spep_2+53,1,100,50,0);

changeAnime(spep_2+57,1,101);
setScaleKey(spep_2+57,1,0.6,0.6);
setRotateKey(spep_2+57,1,0);
setMoveKey(spep_2+57,1,150,300,0);

playSe(spep_2+83,43);

changeAnime(spep_2+87,1,103);
setScaleKey(spep_2+87,1,0.6,0.6);
setRotateKey(spep_2+87,1,0);
setMoveKey(spep_2+87,1,150,300,0);

setScaleKey(spep_2+97,1,1.2,1.2);
setRotateKey(spep_2+97,1,0);
setMoveKey(spep_2+97,1,100,50,0);

changeAnime(spep_2+99,1,108);

setScaleKey(spep_2+99,1,1.2,1.2);
setRotateKey(spep_2+99,1,0);
setMoveKey(spep_2+99,1,120,100,0);

setShakeChara(spep_2+99,1,91,15);

playSe(spep_2+99,1034);--超能力

ctexp = entryEffectLife( spep_2+99, 10001, 83, 0x100, -1, 0, 0, 0);    -- !?
setEffScaleKey( spep_2+99, ctexp, 1.3, 1.3);
setEffRotateKey( spep_2+99, ctexp, 0);
setEffAlphaKey( spep_2+99, ctexp, 255);
--setEffMoveKey( spep_2+99, ctexp, -50,200,0);
setEffMoveKey( spep_2+99, ctexp, 200,260,0);
setEffShake(spep_2+99, ctexp, 90, 10);

playSe(spep_2+183,1010);

changeAnime(spep_2+183,1,106);
setRotateKey(spep_2+183,1,-10);
setMoveKey(spep_2+183,1,120,100,0);
setScaleKey(spep_2+183,1,1.2,1.2);

ctbaki = entryEffectLife( spep_2+183, 10020, 12, 0x100, -1, 0, 0, 0);    -- バキ
setEffScaleKey( spep_2+183, ctbaki, 1.6, 1.6);
setEffRotateKey( spep_2+183, ctbaki, 330);
setEffAlphaKey( spep_2+183, ctbaki, 255);
setEffMoveKey( spep_2+183, ctbaki, -120,150,0);

setEffShake(spep_2+183, ctbaki, 12, 10);

playSe(spep_2+206,1035);
--playSe(spep_2+226,1035);

setRotateKey(spep_2+207,1,0);
setMoveKey(spep_2+207,1,550,700,0);
setScaleKey(spep_2+207,1,1.2,1.2);

setDisp(spep_2+208,1,0);

playSe(spep_2+248,1021);

setDisp(spep_2+264,1,1);
setRotateKey(spep_2+264,1,0);
setMoveKey(spep_2+264,1,500,500,0);
setScaleKey(spep_2+264,1,0.6,0.6);

playSe(spep_2+282,1011);

setRotateKey(spep_2+283,1,0);
setMoveKey(spep_2+283,1,0,0,0);
setScaleKey(spep_2+283,1,0.6,0.6);

playSe(spep_2+288,1024);

setDisp(spep_2+293,1,0);
setRotateKey(spep_2+299,1,0);

changeAnime(spep_2+300,1,108);
setDisp(spep_2+300,1,1);
setRotateKey(spep_2+300,1,340);
setMoveKey(spep_2+300,1,0,0,0);
setScaleKey(spep_2+300,1,1.0,1.0);

setDisp(spep_2+342,1,0);
setRotateKey(spep_2+342,1,340);
setMoveKey(spep_2+342,1,0,0,0);
setScaleKey(spep_2+342,1,1.0,1.0);

setShakeChara(spep_2+300,1,42,20);

--(180F)
shuchusen2b = entryEffectLife( spep_2+41, 921, 19, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+41, shuchusen2b, 0, 0, 0);
setEffScaleKey( spep_2+41, shuchusen2b, 1.7, 1.7);
setEffAlphaKey( spep_2+41, shuchusen2b, 255);
setEffRotateKey( spep_2+41, shuchusen2b, -32);

--334F
shuchusen2c = entryEffectLife( spep_2+183, 923, 27, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+183, shuchusen2c, 0, 0, 0);
setEffScaleKey( spep_2+183, shuchusen2c, 1.6, 1.6);
setEffAlphaKey( spep_2+183, shuchusen2c, 255);
setEffRotateKey( spep_2+183, shuchusen2c, 40);

--345
shuchusen2d = entryEffectLife( spep_2+211, 906, 35, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+211, shuchusen2d, 0, 0, 0);
setEffScaleKey( spep_2+211, shuchusen2d, 1.1, 1.1);
setEffAlphaKey( spep_2+211, shuchusen2d, 255);
setEffRotateKey( spep_2+211, shuchusen2d, 0);

shuchusen2e = entryEffectLife( spep_2+246, 921, 38, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+246, shuchusen2e, 0, 0, 0);
setEffScaleKey( spep_2+246, shuchusen2e, 1.6, 1.6);
setEffAlphaKey( spep_2+246, shuchusen2e, 255);
setEffRotateKey( spep_2+246, shuchusen2e, 330);

entryFade(spep_2+279,1,10,5,255,255,255,255);

ctdgn = entryEffectLife( spep_2+285, 10018, 5, 0x100, -1, 0, 0, 0);    -- ドゴン
setEffScaleKey( spep_2+285, ctdgn, 4.0, 4.0);
setEffRotateKey( spep_2+285, ctdgn, 0);
setEffAlphaKey( spep_2+285, ctdgn, 60);
setEffMoveKey( spep_2+285, ctdgn, 0,300,0);

setEffScaleKey( spep_2+290, ctdgn, 4.0, 4.0);
setEffRotateKey( spep_2+290, ctdgn, 0);
setEffAlphaKey( spep_2+290, ctdgn, 60);
setEffMoveKey( spep_2+290, ctdgn, 0,300,0);

ctdgn2 = entryEffectLife( spep_2+288, 10018, 28, 0x100, -1, 0, 0, 0);    -- ドゴン
setEffScaleKey( spep_2+288, ctdgn2, 1.5, 1.5);
setEffRotateKey( spep_2+288, ctdgn2, 0);
setEffAlphaKey( spep_2+288, ctdgn2, 80);
setEffMoveKey( spep_2+288, ctdgn2, 0,300,0);

setEffScaleKey( spep_2+296, ctdgn2, 3.5, 3.5);
setEffRotateKey( spep_2+296, ctdgn2, 0);
setEffAlphaKey( spep_2+296, ctdgn2, 255);
setEffMoveKey( spep_2+296, ctdgn2, 0,300,0);

setEffShake(spep_2+288, ctdgn2, 28, 10);

shuchusen2f = entryEffectLife( spep_2+288, 906, 54, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_2+288, shuchusen2f, 0, 0, 0);
setEffScaleKey( spep_2+288, shuchusen2f, 1.1, 1.1);
setEffAlphaKey( spep_2+288, shuchusen2f, 255);
setEffRotateKey( spep_2+288, shuchusen2f, 0);

entryFade(spep_2+330,5,8,5,255,255,255,255);
------------------------------------------------------
--SP_05=150768;	--太陽拳	ef_003 481-621
------------------------------------------------------
spep_3=spep_2+343;

playSe(spep_3,1018);

spatack_3 = entryEffectLife(spep_3, SP_05 , 140, 0x100, -1 ,0,0,0);
setEffMoveKey(spep_3, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3, spatack_3, -1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_3, 255);

playSe(spep_3+66,1062);

ctca = entryEffectLife( spep_3+66, 10004, 78, 0x100, -1, 0, 0, 0);    -- カッ
setEffScaleKey( spep_3+66, ctca, 1.6, 1.6);
setEffRotateKey( spep_3+66, ctca, 10);
setEffAlphaKey( spep_3+66, ctca, 255);
setEffMoveKey( spep_3+66, ctca, -200,420,0);

setEffShake(spep_3+66, ctca, 78, 10);

--集中線
shuchusen3 = entryEffectLife( spep_3, 906, 140, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, -1.1, 1.1);
setEffAlphaKey( spep_3, shuchusen3,255);
setEffRotateKey( spep_3, shuchusen3,180);

entryFadeBg( spep_3, 0, 87, 0, 10, 10, 10, 160); -- ベース暗め　背景
entryFadeBg( spep_3+88, 0, 52, 0, 10, 10, 10, 160); -- ベース暗め　背景

entryFade(spep_3+133,5,7,30,255,255,255,255);
------------------------------------------------------
--SP_06=150769;	--気功砲	ef_004 622-848
------------------------------------------------------
spep_4=spep_3+141;

changeAnime(spep_4,1,108);
setDisp(spep_4,1,1);
setRotateKey(spep_4,1,0);
setMoveKey(spep_4,1,0,0,0);
setScaleKey(spep_4,1,1.2,1.2);

setRotateKey(spep_4+20,1,0);
setMoveKey(spep_4+20,1,0,0,0);
setScaleKey(spep_4+20,1,1.2,1.2);

setRotateKey(spep_4+21,1,90);
setMoveKey(spep_4+21,1,-50,-50,0);
setScaleKey(spep_4+21,1,1.2,1.2);

playSe(spep_4+22,1009);

setRotateKey(spep_4+46,1,90);
setMoveKey(spep_4+48,1,0,-600,0);
setScaleKey(spep_4+60,1,0.8,0.8);
setShakeChara(spep_4,1,21,15);
setDisp(spep_4+48,1,0);

playSe(spep_4+48,43);

spatack_4 = entryEffectLife(spep_4, SP_07 , 226, 0x100, -1 ,0,0,0);
setEffMoveKey(spep_4, spatack_4, 0, 0, 0);
setEffScaleKey(spep_4, spatack_4, 1.0 ,1.0);
setEffAlphaKey(spep_4, spatack_4, 255);

setEffShake(spep_4, spatack_4, 226, 10);

--集中線
--645
shuchusen4a = entryEffectLife( spep_4+21, 923, 34, 0x80,  -1, 0,  0,  0); 
setEffMoveKey( spep_4+21, shuchusen4a, 0, 0, 0);
setEffScaleKey( spep_4+21, shuchusen4a, 1.1, 1.1);
setEffAlphaKey( spep_4+21, shuchusen4a, 255);
setEffRotateKey( spep_4+21, shuchusen4a, 180);

--698
shuchusen4b = entryEffectLife( spep_4+84, 906, 120, 0x80,  -1, 0,  0,  0); 
setEffMoveKey( spep_4+84, shuchusen4b, 0, 0, 0);
setEffScaleKey( spep_4+84, shuchusen4b, 1.4, 1.4);
setEffAlphaKey( spep_4+84, shuchusen4b, 255);
setEffRotateKey( spep_4+84, shuchusen4b, 255);
entryFadeBg( spep_4+74, 0, 225, 0, 10, 10, 10, 255); --ベース暗め　背景
--[[]
speff = entryEffect(  spep_4+74,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4+74,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe(spep_4+74,SE_04);

ctgogo = entryEffectLife( spep_4+87, 190006, 69, 0x100, -1, 0, 100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_4+87, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_4+87, ctgogo, 10);
setEffAlphaKey( spep_4+87, ctgogo, 255);

setEffScaleKey( spep_4+149, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_4+149, ctgogo, 10);
setEffAlphaKey( spep_4+149, ctgogo, 255);

setEffScaleKey( spep_4+156, ctgogo, -2.0, 2.0);
setEffRotateKey( spep_4+156, ctgogo, 10);
setEffAlphaKey( spep_4+156, ctgogo, 255);

setEffShake(spep_4+87, ctgogo, 69, 10);

--810
ctzuo = entryEffectLife( spep_4+177, 10012, 38, 0x100, -1, 0, 0, 0);    -- ズオ
setEffScaleKey( spep_4+177, ctzuo, 1.8, 1.8);
setEffRotateKey( spep_4+177, ctzuo, 30);
setEffAlphaKey( spep_4+177, ctzuo, 255);
setEffMoveKey( spep_4+177, ctzuo, 150,350,0);

setEffScaleKey( spep_4+208, ctzuo, 3.8, 3.8);
setEffRotateKey( spep_4+208, ctzuo, 30);
setEffAlphaKey( spep_4+188, ctzuo, 255);
setEffAlphaKey( spep_4+208, ctzuo, 0);
setEffMoveKey( spep_4+208, ctzuo, 150,350,0);

setEffShake(spep_4+177, ctzuo, 38, 20);

playSe(spep_4+170,1021);

--816
shuchusen4c = entryEffectLife( spep_4+194, 923, 32, 0x80,  -1, 0,  0,  0); 
setEffMoveKey( spep_4+194, shuchusen4c, 0, 0, 0);
setEffScaleKey( spep_4+194, shuchusen4c, 1.4, 1.4);
setEffAlphaKey( spep_4+194, shuchusen4c, 255);
setEffRotateKey( spep_4+194, shuchusen4c, 320);
entryFadeBg( spep_4, 0, 89, 0, 10, 10, 10, 180); --ベース暗め　背景
entryFadeBg( spep_4+60, 15, 225, 0, 10, 10, 10, 255); --ベース暗め　背景
entryFade(spep_4+176,2,2,0,255,255,255,255);
entryFadeBg( spep_4+177, 3, 3, 24, 160, 52, 36, 255); --ベース暗め　背景

entryFade(spep_4+220,5,4,5,255,255,255,255);

------------------------------------------------------
--SP_08=150771;	--閃光	ef_005 849-
------------------------------------------------------
spep_5=spep_4+227;

playSe(spep_5+20,1022);

changeAnime(spep_5,1,108);
setDisp(spep_5,1,1);
setScaleKey(spep_5,1,1.2,1.2);
setMoveKey(spep_5,1,-50,100,0);
setRotateKey(spep_5,1,60);
setShakeChara(spep_5,1,140,20);

setScaleKey(spep_5+20,1,1.2,1.2);
setMoveKey(spep_5+20,1,-50,100,0);
setRotateKey(spep_5+20,1,60);

setScaleKey(spep_5+23,1,1.2,1.2);
setMoveKey(spep_5+23,1,150,-500,0);
setRotateKey(spep_5+23,1,60);
setDisp(spep_5+23,1,0);

entryFade(spep_5+37, 6, 5, 5,255,255,255,255);

setDisp(spep_5+26,1,1);

setMoveKey(spep_5+26,1,0,75,0);
setScaleKey(spep_5+26,1,1.2,1.2);
setRotateKey(spep_5+26,1,60);

setMoveKey(spep_5+46,1,100,-380,0);
setScaleKey(spep_5+46,1,1.2,1.2);
setRotateKey(spep_5+46,1,60);

playSe(spep_5+56,1024);

setMoveKey(spep_5+140,1,100,-380,0);
setScaleKey(spep_5+140,1,1.2,1.2);
setRotateKey(spep_5+140,1,60);

spatack_5 = entryEffect(spep_5+20, SP_08,0x100, -1 ,0,0,0);
setEffMoveKey(spep_5+20, spatack_5, 0, 0, 0);
setEffScaleKey(spep_5+20, spatack_5, 1.0 ,1.0);
setEffAlphaKey(spep_5+20, spatack_5, 255);
--setEffAlphaKey(spep_5+120, spatack_5, 255);

--集中線
shuchusen5a=entryEffectLife(spep_5,906,22, 0x80,-1,0,0,0);
setEffMoveKey(spep_5,shuchusen5a,0,0,0);
setEffScaleKey(spep_5,shuchusen5a,1.7, 1.7);
setEffAlphaKey(spep_5,shuchusen5a,255);
setEffRotateKey(spep_5,shuchusen5a,0);

setEffAlphaKey(spep_5+24,shuchusen5a,255);
setEffScaleKey(spep_5+24,shuchusen5a,1.4,1.4);
setEffRotateKey(spep_5+24,shuchusen5a,0);
setEffMoveKey(spep_5+24,shuchusen5a,0,0,0);

shuchusen5c=entryEffectLife(spep_5+27,906,113, 0x80,-1,0,0,0);
setEffMoveKey(spep_5+27,shuchusen5c,150,-150,0);
setEffScaleKey(spep_5+27,shuchusen5c,1.7, 1.7);
setEffAlphaKey(spep_5+27,shuchusen5c,255);
setEffRotateKey(spep_5+27,shuchusen5c,0);

setEffAlphaKey(spep_5+140,shuchusen5c,255);
setEffScaleKey(spep_5+140,shuchusen5c,1.7,1.7);
setEffRotateKey(spep_5+140,shuchusen5c,0);
setEffMoveKey(spep_5+140,shuchusen5c,150,-150,0);

------------------------------------------------------
--SP_09=150772;	--地面	ef_006
------------------------------------------------------
--集中線
shuchusen5b = entryEffectLife( spep_5, 920, 140, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_5, shuchusen5b, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5b, 1.7, 2.5);
setEffAlphaKey( spep_5, shuchusen5b, 255);
setEffRotateKey( spep_5, shuchusen5b, 80);
setEffAlphaKey( spep_5+140, shuchusen5b, 255);

spatack_6 = entryEffect(spep_5+26, SP_09 , 0x80, -1 ,0,0,0); --Life 120
setEffMoveKey(spep_5+26, spatack_6, 0, 0, 0);
setEffScaleKey(spep_5+26, spatack_6, 1.0 ,1.0);
setEffAlphaKey(spep_5+26, spatack_6, 255);

entryFadeBg(spep_5, 0, 140, 0, 10, 10, 10, 255);--ベース暗め背景

-- ダメージ表示
dealDamage(spep_5+42);
entryFade(spep_5+101, 9, 10, 1, 8, 8, 8, 255);
endPhase(spep_5+111);
end
--1013940 ジレン　sp1173 オーバーヒート・マグネトロン

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
---必要なSEがあれば以降に追記----

SP_00 =151595;--120
SP_01 =151596;--30
SP_02 =151597;--120
SP_03 =151598;--120
SP_04 =151599;--70
SP_05 =151600;--70
SP_06 =151601;--80
SP_07 =151602;--90
SP_08 =151603;--90
SP_09 =151604;--120
SP_10 =151605;--120
SP_11 =151606;--100

SP_00x =151595;--120
SP_01x =151596;--30
SP_02x =151607;--120
SP_03x =151598;--120
SP_04x =151608;--70
SP_05x =151600;--70
SP_06x =151601;--80
SP_07x =151602;--90
SP_08x =151603;--90
SP_09x =151604;--120
SP_10x =151609;--120
SP_11x =151606;--100

multi_frm = 2;

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
--瞬間移動
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1=0;

SyunkanIDO = entryEffectLife(spep_1,SP_01,26,0x100,-1,0,0,0); -- 瞬間移動

setEffAlphaKey(spep_1,SyunkanIDO,255);
setEffAlphaKey(spep_1+26,SyunkanIDO,255);
setEffScaleKey(spep_1,SyunkanIDO,1.0,1.0);
setEffScaleKey(spep_1+26,SyunkanIDO,1.0,1.0);
setEffRotateKey(spep_1,SyunkanIDO,0);
setEffRotateKey(spep_1+26,SyunkanIDO,0);

setEffShake(spep_1,SyunkanIDO,10);

playSe(spep_1+20,43);

--集中線
shuchusen1 = entryEffectLife(spep_1+8,906,50,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_1+8,shuchusen1,0,0,0);
setEffMoveKey(spep_1+58,shuchusen1,0,0,0);
setEffScaleKey(spep_1+8,shuchusen1,1.2,1.2);
setEffScaleKey(spep_1+58,shuchusen1,1.2,1.2);
setEffAlphaKey(spep_1+8,shuchusen1,255);
setEffAlphaKey(spep_1+58,shuchusen1,255);
setEffRotateKey(spep_1+8,shuchusen1,0);
setEffRotateKey(spep_1+58,shuchusen1,0);

entryFadeBg(spep_1,0,60,0,10,10,10,230);
entryFade(spep_1+52,4,6,4,255,255,255,255);

------------------------------------------------------
--連撃（前）
------------------------------------------------------
------------------------------------------------------
--連撃（後）
------------------------------------------------------
spep_2=spep_1+60;

--敵位置
changeAnime(spep_2,1,100);
setDisp(spep_2,1,1);

setMoveKey(spep_2,1,150,-100,0);
setRotateKey(spep_2,1,0);
setScaleKey(spep_2,1,1.1,1.1);

Rengekifront = entryEffectLife(spep_2,SP_02,118,0x100,-1,0,0,0); -- 連撃（前）

setEffAlphaKey(spep_2,Rengekifront,255);
setEffScaleKey(spep_2,Rengekifront,1.0,1.0);
setEffRotateKey(spep_2,Rengekifront,0);

setEffShake(spep_2,Rengekifront,118,10);

Rengekibehind = entryEffectLife(spep_2,SP_03,118,0x80,-1,0,0,0); -- 連撃（後）
setEffAlphaKey(spep_2,Rengekibehind,255);
setEffScaleKey(spep_2,Rengekibehind,1.0,1.0);
setEffRotateKey(spep_2,Rengekibehind,0);

Ryusen2 = entryEffectLife(spep_2,922,64,0x80,-1,0,0,0);-- 流線
setEffMoveKey(spep_2,Ryusen2,0,0,0);
setEffScaleKey(spep_2,Ryusen2,1.4,1.4);
setEffAlphaKey(spep_2,Ryusen2,0);
setEffRotateKey(spep_2,Ryusen2,195);

--集中線
shuchusen2A = entryEffectLife(spep_2,906,22,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_2,shuchusen2A,0,0,0);
setEffScaleKey(spep_2,shuchusen2A,1.0,1.0);
setEffAlphaKey(spep_2,shuchusen2A,255);

entryFadeBg(spep_2,0,120,0,10,10,10,230);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

setMoveKey(SP_dodge,1,150,-100,0);
setMoveKey(SP_dodge+8,1,150,-100,0);

setScaleKey(SP_dodge,1,1.1,1.1);
setScaleKey(SP_dodge+8,1,1.1,1.1);

setRotateKey(SP_dodge,1,0);
setRotateKey(SP_dodge+8,1,0);

setDisp(SP_dodge+9,1,0);

setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setRotateKey(SP_dodge+9,1,0);

setMoveKey(SP_dodge+10,1,0,0,0);
setScaleKey(SP_dodge+10,1,1.0,1.0);
setRotateKey(SP_dodge+10,1,0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);

do return end
else end

------------------------------------------------------
--回避されなかった場合
------------------------------------------------------

--敵位置
changeAnime(spep_2+24,1,106);
setShakeChara(spep_2+24,1,41,23);--連撃の揺れ
setShakeChara(spep_2+65,1,53,18);--気弾の揺れ
setDisp(spep_2+118,1,0);

setMoveKey(spep_2+23,1,150,-100,0);
setMoveKey(spep_2+24,1,90,0,0);
setMoveKey(spep_2+65,1,100,110,0);
setMoveKey(spep_2+118,1,100,120,0);

setRotateKey(spep_2+23,1,0);
setRotateKey(spep_2+24,1,335);
setRotateKey(spep_2+118,1,335);

setScaleKey(spep_2+23,1,1.1,1.1);
setScaleKey(spep_2+24,1,1.1,1.1);
setScaleKey(spep_2+118,1,1.1,1.1);


setEffAlphaKey(spep_2+118,Rengekifront,255);
setEffScaleKey(spep_2+118,Rengekifront,1.0,1.0);
setEffRotateKey(spep_2+118,Rengekifront,0);

setEffAlphaKey(spep_2+118,Rengekibehind,255);
setEffScaleKey(spep_2+118,Rengekibehind,1.0,1.0);
setEffRotateKey(spep_2+118,Rengekibehind,0);

--流線
setEffMoveKey(spep_2+64,Ryusen2,0,0,0);
setEffScaleKey(spep_2+64,Ryusen2,1.4,1.4);
setEffAlphaKey(spep_2+27,Ryusen2,0);
setEffAlphaKey(spep_2+28,Ryusen2,100);
setEffAlphaKey(spep_2+64,Ryusen2,100);
setEffRotateKey(spep_2+64,Ryusen2,195);

setEffMoveKey(spep_2+22,shuchusen2A,0,0,0);
setEffScaleKey(spep_2+22,shuchusen2A,1.0,1.0);
setEffAlphaKey(spep_2+22,shuchusen2A,255);

--集中線
shuchusen2B = entryEffectLife(spep_2+65,906,53,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_2+65,shuchusen2B,0,0,0);
setEffMoveKey(spep_2+118,shuchusen2B,0,0,0);
setEffScaleKey(spep_2+65,shuchusen2B,1.3,1.3);
setEffScaleKey(spep_2+118,shuchusen2B,1.3,1.3);
setEffAlphaKey(spep_2+65,shuchusen2B,255);
setEffAlphaKey(spep_2+118,shuchusen2B,255);
setEffRotateKey(spep_2+65,shuchusen2B,0);
setEffRotateKey(spep_2+118,shuchusen2B,0);

--ドガガ
ctDogaga = entryEffectLife(spep_2+23,10017,41,0x100,-1,0,0,0);-- ドガ

setEffMoveKey(spep_2+23,ctDogaga,50,300,0);
setEffMoveKey(spep_2+64,ctDogaga ,50,300,0);
setEffScaleKey(spep_2+23,ctDogaga,2.0,2.0);
setEffScaleKey(spep_2+64,ctDogaga ,2.0,2.0);
setEffAlphaKey(spep_2+23,ctDogaga,255);
setEffAlphaKey(spep_2+64,ctDogaga ,255);
setEffRotateKey(spep_2+23,ctDogaga,30);
setEffRotateKey(spep_2+64,ctDogaga,30);

setEffShake(spep_2+23,ctDogaga,41,20);

--バッ
ctBa = entryEffectLife(spep_2+65,10022,23,0x100,-1,-50,100,0);-- バッ

setEffMoveKey(spep_2+65,ctBa,-80,170,0);
setEffMoveKey(spep_2+88,ctBa ,-80,170,0);
setEffScaleKey(spep_2+65,ctBa,1.0,1.0);
setEffScaleKey(spep_2+88,ctBa ,1.2,1.2);
setEffAlphaKey(spep_2+65,ctBa,255);
setEffAlphaKey(spep_2+88,ctBa,255);
setEffRotateKey(spep_2+65,ctBa,350);
setEffRotateKey(spep_2+88,ctBa,350);

setEffShake(spep_2+65,ctBa,23,20);

playSe(spep_2+10,43);
setSeVolume(spep_2+10 ,43, 70 );
playSe(spep_2+28,1008);
setSeVolume(spep_2+28 ,1008, 70 );
playSe(spep_2+34,1009);
setSeVolume(spep_2+34 ,1009, 70 );
playSe(spep_2+38,1008);
setSeVolume(spep_2+38 ,1008, 70 );
playSe(spep_2+42,1009);
setSeVolume(spep_2+42 ,1009, 70 );
playSe(spep_2+46,1008);
setSeVolume(spep_2+46 ,1008, 70 );
playSe(spep_2+50,1009);
setSeVolume(spep_2+50 ,1009, 70 );
playSe(spep_2+54,1008);
setSeVolume(spep_2+54 ,1008, 70 );
playSe(spep_2+58,1008);
setSeVolume(spep_2+58 ,1008, 70 );
playSe(spep_2+62,1009);
setSeVolume(spep_2+62 ,1009, 70 );
playSe(spep_2+70,1035);
setSeVolume(spep_2+70 ,1035, 70 );

entryFade(spep_2+18,3,4,3,245,245,245,255);
entryFade(spep_2+112,4,6,4,245,245,245,255);
------------------------------------------------------
--打ち上げ
------------------------------------------------------
spep_3=spep_2+120;

Uchiage = entryEffectLife(spep_3,SP_04,66,0x100,-1,0,0,0); --打ち上げ

setEffAlphaKey(spep_3,Uchiage,255);
setEffAlphaKey(spep_3+66,Uchiage,255);
setEffScaleKey(spep_3,Uchiage,1.0,1.0);
setEffScaleKey(spep_3+66,Uchiage,1.0,1.0);
setEffRotateKey(spep_3,Uchiage,0);
setEffRotateKey(spep_3+66,Uchiage,0);

setEffShake(spep_3,Uchiage,66,10);

BgB = entryEffectLife(spep_3,SP_00,68,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_3,BgB,255);
setEffAlphaKey(spep_3+68,BgB,255);
setEffScaleKey(spep_3,BgB,1.0,1.0);
setEffScaleKey(spep_3+68,BgB,1.0,1.0);
setEffRotateKey(spep_3,BgB,0);
setEffRotateKey(spep_3+68,BgB,0);

--吹き飛ばし流線
hukitobasi3 = entryEffectLife(spep_3+6,924,62,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_3+6,hukitobasi3,0,0,0);
setEffMoveKey(spep_3+68,hukitobasi3,0,0,0);
setEffScaleKey(spep_3+6,hukitobasi3,1.4,1.4);
setEffScaleKey(spep_3+68,hukitobasi3,1.4,1.4);
setEffAlphaKey(spep_3+6,hukitobasi3,200);
setEffAlphaKey(spep_3+68,hukitobasi3,200);
setEffRotateKey(spep_3+6,hukitobasi3,310);
setEffRotateKey(spep_3+68,hukitobasi3,310);

--カッ
ctKa = entryEffectLife(spep_3+6,10004,36,0x100,-1,50,250,0);-- カッ

setEffMoveKey(spep_3+6,ctKa,50,200,0);
setEffMoveKey(spep_3+42,ctKa ,50,200,0);
setEffScaleKey(spep_3+6,ctKa,2.5,2.5);
setEffScaleKey(spep_3+42,ctKa ,3.0,3.0);
setEffAlphaKey(spep_3+6,ctKa,255);
setEffAlphaKey(spep_3+42,ctKa,255);
setEffRotateKey(spep_3+6,ctKa,0);
setEffRotateKey(spep_3+42,ctKa,0);

setEffShake(spep_3+6,ctKa,36,10);

playSe(spep_3+10,1024);

entryFade(spep_3+60,4,6,4,255,255,255,255);

------------------------------------------------------
--吹っ飛び追いかけ
------------------------------------------------------
spep_4=spep_3+68;

setDisp(spep_4,1,1);
setDisp(spep_4+68,1,0);

changeAnime(spep_4,1,108);
setShakeChara(spep_4,1,68,15);

setMoveKey(spep_4,1,-300,-400,0);
setMoveKey(spep_4+20,1,80,160,0);
setMoveKey(spep_4+30,1,80,160,0);
setMoveKey(spep_4+68,1,100,200,0);

setRotateKey(spep_4,1,345);
setRotateKey(spep_4+68,1,345);

setScaleKey(spep_4,1,3.0,3.0);
setScaleKey(spep_4+20,1,1.2,1.2);
setScaleKey(spep_4+30,1,1.2,1.2);
setScaleKey(spep_4+68,1,1.1,1.1);

setShakeChara(spep_4+68,1,68,10);


BgC = entryEffectLife(spep_4,SP_00,70,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_4,BgC,255);
setEffAlphaKey(spep_4+70,BgC,255);
setEffScaleKey(spep_4,BgC,1.0,1.0);
setEffScaleKey(spep_4+70,BgC,1.0,1.0);
setEffRotateKey(spep_4,BgC,0);
setEffRotateKey(spep_4+70,BgC,0);

--吹き飛ばし流線
hukitobasi4 = entryEffectLife(spep_4,924,70,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep_4,hukitobasi4,-150,-100,0);
setEffMoveKey(spep_4+70,hukitobasi4,-150,-100,0);
setEffScaleKey(spep_4,hukitobasi4,1.2,1.2);
setEffScaleKey(spep_4+70,hukitobasi4,1.2,1.2);
setEffAlphaKey(spep_4,hukitobasi4,255);
setEffAlphaKey(spep_4+70,hukitobasi4,255);
setEffRotateKey(spep_4,hukitobasi4,305);
setEffRotateKey(spep_4+70,hukitobasi4,305);

Okkake = entryEffectLife(spep_4,SP_05,68,0x80,-1,0,0,0); --吹っ飛び追いかけ

setEffAlphaKey(spep_4,Okkake,255);
setEffAlphaKey(spep_4+68,Okkake,255);
setEffScaleKey(spep_4,Okkake,1.0,1.0);
setEffScaleKey(spep_4+68,Okkake,1.0,1.0);
setEffRotateKey(spep_4,Okkake,0);
setEffRotateKey(spep_4+68,Okkake,0);

setEffShake(spep_4,Okkake,68,10);

playSe(spep_4+12,4);
playSe(spep_4+20,4);
playSe(spep_4+32,4);

entryFade(spep_4+62,4,6,4,255,255,255,255);
------------------------------------------------------
--千手観音
------------------------------------------------------
spep_5=spep_4+70;

Kannon = entryEffectLife(spep_5,SP_06,72,0x100,-1,0,0,0); --千手観音

setEffAlphaKey(spep_5,Kannon,255);
setEffAlphaKey(spep_5+72,Kannon,255);
setEffScaleKey(spep_5,Kannon,1.0,1.0);
setEffScaleKey(spep_5+72,Kannon,1.0,1.0);
setEffRotateKey(spep_5,Kannon,0);
setEffRotateKey(spep_5+72,Kannon,0);

setEffShake(spep_5,Kannon,72,10);

BgD = entryEffectLife(spep_5,SP_00,74,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_5,BgD,255);
setEffAlphaKey(spep_5+74,BgD,255);
setEffScaleKey(spep_5,BgD,1.0,1.0);
setEffScaleKey(spep_5+74,BgD,1.0,1.0);
setEffRotateKey(spep_5,BgD,0);
setEffRotateKey(spep_5+74,BgD,0);

--集中線
shuchusen5 = entryEffectLife(spep_5,906,74,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_5,shuchusen5,0,0,0);
setEffMoveKey(spep_5+74,shuchusen5,0,0,0);
setEffScaleKey(spep_5,shuchusen5,1.0,1.0);
setEffScaleKey(spep_5+74,shuchusen5,1.0,1.0);
setEffAlphaKey(spep_5,shuchusen5,255);
setEffAlphaKey(spep_5+74,shuchusen5,255);
setEffRotateKey(spep_5,shuchusen5,0);
setEffRotateKey(spep_5+74,shuchusen5,0);

--SE
playSe(spep_5,SE_01);

playSe(spep_5+20,4);
playSe(spep_5+26,4);
playSe(spep_5+32,4);
playSe(spep_5+38,4);
playSe(spep_5+44,4);
playSe(spep_5+50,4);
playSe(spep_5+56,4);
playSe(spep_5+62,4);

entryFade(spep_5+66,4,6,4,255,255,255,255);
------------------------------------------------------
--風圧攻撃（前）
------------------------------------------------------
spep_6=spep_5+74;

--敵y軸落下
setDisp(spep_6,1,1);
setDisp(spep_6+57,1,0);

changeAnime(spep_6,1,108);

setMoveKey(spep_6,1,0,1200,0);
setMoveKey(spep_6+17,1,0,0,0);
setMoveKey(spep_6+51,1,0,0,0);
setMoveKey(spep_6+57,1,0,-350,0);
setRotateKey(spep_6,1,80);
setRotateKey(spep_6+57,1,80);
setScaleKey(spep_6,1,1.0,1.0);
setScaleKey(spep_6+57,1,1.0,1.0);

setShakeChara(spep_6,1,56,20);

Huuatsufront = entryEffectLife(spep_6,SP_07,86,0x100,-1,0,0,0); --風圧攻撃（前）

setEffAlphaKey(spep_6,Huuatsufront,255);
setEffAlphaKey(spep_6+86,Huuatsufront,255);
setEffScaleKey(spep_6,Huuatsufront,1.0,1.0);
setEffScaleKey(spep_6+86,Huuatsufront,1.0,1.0);
setEffRotateKey(spep_6,Huuatsufront,0);
setEffRotateKey(spep_6+86,Huuatsufront,0);

setEffShake(spep_6,Huuatsufront,86,10);

BgE = entryEffectLife(spep_6,SP_00,88,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_6,BgE,255);
setEffAlphaKey(spep_6+88,BgE,255);
setEffScaleKey(spep_6,BgE,1.0,1.0);
setEffScaleKey(spep_6+88,BgE,1.0,1.0);
setEffRotateKey(spep_6,BgE,0);
setEffRotateKey(spep_6+88,BgE,0);

Huuatsubehind = entryEffectLife(spep_6,SP_08,86,0x80,-1,0,0,0); --風圧攻撃（後）

setEffAlphaKey(spep_6,Huuatsubehind,255);
setEffAlphaKey(spep_6+86,Huuatsubehind,255);
setEffScaleKey(spep_6,Huuatsubehind,1.0,1.0);
setEffScaleKey(spep_6+86,Huuatsubehind,1.0,1.0);
setEffRotateKey(spep_6,Huuatsubehind,0);
setEffRotateKey(spep_6+86,Huuatsubehind,0);

--流線
ryusen6 = entryEffectLife(spep_6,922,60,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_6,ryusen6,0,0,0);
setEffMoveKey(spep_6+60,ryusen6 ,0,0,0);
setEffScaleKey(spep_6,ryusen6,1.0,1.0);
setEffScaleKey(spep_6+60,ryusen6 ,1.0,1.0);
setEffAlphaKey(spep_6,ryusen6,100);
setEffAlphaKey(spep_6+60,ryusen6 ,100);
setEffRotateKey(spep_6,ryusen6,0);
setEffRotateKey(spep_6+60,ryusen6,0);

--集中線
shuchusen6 = entryEffectLife(spep_6+61,906,27,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_6+61,shuchusen6,0,0,0);
setEffMoveKey(spep_6+88,shuchusen6,0,0,0);
setEffScaleKey(spep_6+61,shuchusen6,1.0,1.0);
setEffScaleKey(spep_6+88,shuchusen6,1.0,1.0);
setEffAlphaKey(spep_6+61,shuchusen6,255);
setEffAlphaKey(spep_6+88,shuchusen6,255);
setEffRotateKey(spep_6+61,shuchusen6,0);
setEffRotateKey(spep_6+88,shuchusen6,0);

playSe(spep_6+20,1008);
setSeVolume(spep_6+20 ,1008, 70 );
playSe(spep_6+26,1009);
setSeVolume(spep_6+26 ,1009, 70 );
playSe(spep_6+32,1008);
setSeVolume(spep_6+32 ,1008, 70 );
playSe(spep_6+38,1009);
setSeVolume(spep_6+38 ,1009, 70 );
playSe(spep_6+44,1008);
setSeVolume(spep_6+44 ,1008, 70 );
playSe(spep_6+50,1009);
setSeVolume(spep_6+50 ,1009, 70 );
playSe(spep_6+56,1008);
setSeVolume(spep_6+56 ,1008, 70 );
playSe(spep_6+62,1009);
setSeVolume(spep_6+62 ,1009, 70 );
playSe(spep_6+68,1008);
setSeVolume(spep_6+68 ,1008, 70 );
playSe(spep_6+74,1009);
setSeVolume(spep_6+74 ,1009, 70 );

entryFade(spep_6+80,4,6,4,255,255,255,255);
------------------------------------------------------
--気合入れ
------------------------------------------------------
spep_7=spep_6+88;

Kiai = entryEffectLife(spep_7,SP_09,118,0x100,-1,0,0,0); --気合入れ

setEffAlphaKey(spep_7,Kiai,255);
setEffAlphaKey(spep_7+118,Kiai,255);
setEffScaleKey(spep_7,Kiai,1.0,1.0);
setEffScaleKey(spep_7+118,Kiai,1.0,1.0);
setEffRotateKey(spep_7,Kiai,0);
setEffRotateKey(spep_7+118,Kiai,0);

--setEffShake(spep_7,Kiai,118,10);

BgF = entryEffectLife(spep_7,SP_00,120,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_7,BgF,255);
setEffAlphaKey(spep_7+120,BgF,255);
setEffScaleKey(spep_7,BgF,1.0,1.0);
setEffScaleKey(spep_7+120,BgF,1.0,1.0);
setEffRotateKey(spep_7,BgF,0);
setEffRotateKey(spep_7+120,BgF,0);

--集中線
shuchusen7 = entryEffectLife(spep_7,906,120,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_7,shuchusen7,0,0,0);
setEffMoveKey(spep_7+120,shuchusen7,0,0,0);
setEffScaleKey(spep_7,shuchusen7,1.0,1.0);
setEffScaleKey(spep_7+120,shuchusen7,1.0,1.0);
setEffAlphaKey(spep_7,shuchusen7,255);
setEffAlphaKey(spep_7+120,shuchusen7,255);
setEffRotateKey(spep_7,shuchusen7,0);
setEffRotateKey(spep_7+120,shuchusen7,0);

--ゴゴゴ
ctgogo=entryEffectLife(spep_7+39,190006,69,0x100,-1,50,500);--ゴゴゴ

setEffShake(spep_7+39,ctgogo,69,15);
setEffMoveKey(spep_7+39,ctgogo,50,500);
setEffMoveKey(spep_7+108,ctgogo,50,500);
setEffScaleKey(spep_7+39,ctgogo,0.8,0.8);
setEffScaleKey(spep_7+108,ctgogo,0.8,0.8);
setEffAlphaKey(spep_7+39,ctgogo,255);
setEffAlphaKey(spep_7+108,ctgogo,255);
setEffRotateKey(spep_7+39,ctgogo,0);
setEffRotateKey(spep_7+108,ctgogo,0);

setEffShake(spep_7+39,ctgogo,69,10);

--SE
playSe(spep_7,SE_01);
playSe(spep_7+39,SE_04);

--顔＆セリフカットイン
speff=entryEffect(spep_7+29,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_7+29,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

entryFade(spep_7+112,4,8,4,255,255,255,255);
------------------------------------------------------
--カードカットイン
------------------------------------------------------
spep_8=spep_7+120;

entryFadeBg( spep_8, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_8, SE_05);

speff = entryEffect(  spep_8,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_8+80, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--集中線
shuchusen8 = entryEffectLife(spep_8,906,120,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_8,shuchusen8,0,0,0);
setEffMoveKey(spep_8+120,shuchusen8,0,0,0);
setEffScaleKey(spep_8,shuchusen8,1.0,1.0);
setEffScaleKey(spep_8+120,shuchusen8,1.0,1.0);
setEffAlphaKey(spep_8,shuchusen8,255);
setEffAlphaKey(spep_8+120,shuchusen8,255);
setEffRotateKey(spep_8,shuchusen8,0);
setEffRotateKey(spep_8+120,shuchusen8,0);

entryFade(spep_8+82,4,6,0,255,255,255,255);
------------------------------------------------------
--気溜め～発射
------------------------------------------------------
spep_9=spep_8+90;

Burst = entryEffectLife(spep_9,SP_10,116,0x100,-1,0,0,0); --気溜め～発射

setEffAlphaKey(spep_9,Burst,255);
setEffAlphaKey(spep_9+116,Burst,255);
setEffScaleKey(spep_9,Burst,1.0,1.0);
setEffScaleKey(spep_9+116,Burst,1.0,1.0);
setEffRotateKey(spep_9,Burst,0);
setEffRotateKey(spep_9+116,Burst,0);

BgG = entryEffectLife(spep_9,SP_00,120,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_9,BgG,255);
setEffAlphaKey(spep_9+116,BgG,255);
setEffScaleKey(spep_9,BgG,1.0,1.0);
setEffScaleKey(spep_9+116,BgG,1.0,1.0);
setEffRotateKey(spep_9,BgG,0);
setEffRotateKey(spep_9+116,BgG,0);

--集中線
shuchusen9 = entryEffectLife(spep_9,906,78,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_9,shuchusen9,100,0,0);
setEffMoveKey(spep_9+68,shuchusen9,100,0,0);
setEffScaleKey(spep_9,shuchusen9,1.8,1.8);
setEffScaleKey(spep_9+68,shuchusen9,1.8,1.8);
setEffAlphaKey(spep_9,shuchusen9,255);
setEffAlphaKey(spep_9+68,shuchusen9,255);
setEffRotateKey(spep_9,shuchusen9,0);
setEffRotateKey(spep_9+68,shuchusen9,0);

--バッ
ctBa = entryEffectLife(spep_9+20,10022,16,0x100,-1,-100,200,0);-- バッ

setEffMoveKey(spep_9+20,ctBa,-50,150,0);
setEffMoveKey(spep_9+36,ctBa ,-100,200,0);
setEffScaleKey(spep_9+20,ctBa,0.2,0.2);
setEffScaleKey(spep_9+36,ctBa ,1.2,1.2);
setEffAlphaKey(spep_9+20,ctBa,255);
setEffAlphaKey(spep_9+36,ctBa,255);
setEffRotateKey(spep_9+20,ctBa,0);
setEffRotateKey(spep_9+36,ctBa,0);

setEffShake(spep_9+20,ctBa,16,15);

--ドン
ctDon= entryEffectLife(spep_9+78,10019,24,0x100,-1,-100,250,0);-- ドン

setEffMoveKey(spep_9+78,ctDon,-100,250,0);
setEffMoveKey(spep_9+92,ctDon ,-100,250,0);
setEffScaleKey(spep_9+78,ctDon,2.5,2.5);
setEffScaleKey(spep_9+92,ctDon ,2.5,2.5);
setEffAlphaKey(spep_9+78,ctDon,255);
setEffAlphaKey(spep_9+92,ctDon,255);
setEffRotateKey(spep_9+78,ctDon,0);
setEffRotateKey(spep_9+92,ctDon,0);

setEffShake(spep_9+78,ctDon,24,10);

--吹き飛ばし流線
hukitobasi9 = entryEffectLife(spep_9+78,924,34,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep_9+78,hukitobasi9,-150,0,0);
setEffMoveKey(spep_9+112,hukitobasi9,-150,0,0);
setEffScaleKey(spep_9+78,hukitobasi9,1.2,1.2);
setEffScaleKey(spep_9+112,hukitobasi9,1.2,1.2);
setEffAlphaKey(spep_9+78,hukitobasi9,255);
setEffAlphaKey(spep_9+112,hukitobasi9,255);
setEffRotateKey(spep_9+78,hukitobasi9,305);
setEffRotateKey(spep_9+112,hukitobasi9,305);

--SE
playSe(spep_9,SE_01);
playSe(spep_9+20,SE_04);
playSe(spep_9+78,SE_06);

entryFade(spep_9+110,4,6,4,255,255,255,255);
------------------------------------------------------
--着弾
------------------------------------------------------
spep_10=spep_9+116;

Hit = entryEffect(spep_10,SP_11,0x100,-1,0,0,0); --着弾

setEffAlphaKey(spep_10,Hit,255);
setEffAlphaKey(spep_10+100,Hit,255);
setEffScaleKey(spep_10,Hit,1.0,1.0);
setEffScaleKey(spep_10+100,Hit,1.0,1.0);
setEffRotateKey(spep_10,Hit,0);
setEffRotateKey(spep_10+100,Hit,0);

setEffShake(spep_10,Hit,100,10);

BgH = entryEffectLife(spep_10,SP_00,100,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_10,BgH,255);
setEffAlphaKey(spep_10+100,BgH,255);
setEffScaleKey(spep_10,BgH,1.0,1.0);
setEffScaleKey(spep_10+100,BgH,1.0,1.0);
setEffRotateKey(spep_10,BgH,0);
setEffRotateKey(spep_10+100,BgH,0);

--吹き飛ばし流線
hukitobasi10 = entryEffectLife(spep_10,924,100,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep_10,hukitobasi10,0,-50,0);
setEffMoveKey(spep_10+100,hukitobasi10,0,-50,0);
setEffScaleKey(spep_10,hukitobasi10,1.3,1.2);
setEffScaleKey(spep_10+100,hukitobasi10,1.3,1.2);
setEffAlphaKey(spep_10,hukitobasi10,255);
setEffAlphaKey(spep_10+100,hukitobasi10,255);
setEffRotateKey(spep_10,hukitobasi10,275);
setEffRotateKey(spep_10+100,hukitobasi10,275);

--集中線
shuchusen10 = entryEffectLife(spep_10+48,906,52,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_10+48,shuchusen10,50,-50,0);
setEffMoveKey(spep_10+100,shuchusen10,50,-50,0);
setEffScaleKey(spep_10+48,shuchusen10,1.2,1.2);
setEffScaleKey(spep_10+100,shuchusen10,1.2,1.2);
setEffAlphaKey(spep_10+48,shuchusen10,255);
setEffAlphaKey(spep_10+100,shuchusen10,255);
setEffRotateKey(spep_10+48,shuchusen10,0);
setEffRotateKey(spep_10+100,shuchusen10,0);

--SE
playSe(spep_10,SE_07);
playSe(spep_10+48,SE_09);

entryFade(spep_10+92,4,6,4,255,255,255,255);
------------------------------------------------------
--爆発
------------------------------------------------------
spep_11=spep_10+98;

Exp=entryEffect(spep_11,1684,0x100,-1,0,0,0);--爆発

setEffMoveKey(spep_11,Exp,0,0,0);
setEffMoveKey(spep_11+120,Exp,0,0,0);
setEffScaleKey(spep_11,Exp,1.1,1.1);
setEffScaleKey(spep_11+120,Exp,1.1,1.1);
setEffAlphaKey(spep_11,Exp,255);
setEffAlphaKey(spep_11+120,Exp,255);
setEffRotateKey(spep_11,Exp,0);
setEffRotateKey(spep_11+120,Exp,0);

--集中線
shuchusen11 = entryEffectLife(spep_11,906,100,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_11,shuchusen11,0,0,0);
setEffMoveKey(spep_11+100,shuchusen11,0,0,0);
setEffScaleKey(spep_11,shuchusen11,1.0,1.0);
setEffScaleKey(spep_11+100,shuchusen11,1.0,1.0);
setEffAlphaKey(spep_11,shuchusen11,255);
setEffAlphaKey(spep_11+100,shuchusen11,255);
setEffRotateKey(spep_11,shuchusen11,0);
setEffRotateKey(spep_11+100,shuchusen11,0);

playSe(spep_11,SE_10);

-- ダメージ表示
dealDamage( spep_11+6);
entryFade( spep_11+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_11+110);

else
------------------------------------------------------
--瞬間移動
------------------------------------------------------
spep_1=0;

SyunkanIDO = entryEffectLife(spep_1,SP_01x,26,0x100,-1,0,0,0); -- 瞬間移動

setEffAlphaKey(spep_1,SyunkanIDO,255);
setEffAlphaKey(spep_1+26,SyunkanIDO,255);
setEffScaleKey(spep_1,SyunkanIDO,1.0,1.0);
setEffScaleKey(spep_1+26,SyunkanIDO,1.0,1.0);
setEffRotateKey(spep_1,SyunkanIDO,0);
setEffRotateKey(spep_1+26,SyunkanIDO,0);

setEffShake(spep_1,SyunkanIDO,10);

playSe(spep_1+20,43);

--集中線
shuchusen1 = entryEffectLife(spep_1+8,906,50,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_1+8,shuchusen1,0,0,0);
setEffMoveKey(spep_1+58,shuchusen1,0,0,0);
setEffScaleKey(spep_1+8,shuchusen1,1.2,1.2);
setEffScaleKey(spep_1+58,shuchusen1,1.2,1.2);
setEffAlphaKey(spep_1+8,shuchusen1,255);
setEffAlphaKey(spep_1+58,shuchusen1,255);
setEffRotateKey(spep_1+8,shuchusen1,0);
setEffRotateKey(spep_1+58,shuchusen1,0);

entryFadeBg(spep_1,0,60,0,10,10,10,230);
entryFade(spep_1+52,4,6,4,255,255,255,255);

------------------------------------------------------
--連撃（前）
------------------------------------------------------
------------------------------------------------------
--連撃（後）
------------------------------------------------------
spep_2=spep_1+60;

--敵位置
changeAnime(spep_2,1,100);
setDisp(spep_2,1,1);

setMoveKey(spep_2,1,150,-100,0);
setRotateKey(spep_2,1,0);
setScaleKey(spep_2,1,1.1,1.1);

Rengekifront = entryEffectLife(spep_2,SP_02x,118,0x100,-1,0,0,0); -- 連撃（前）

setEffAlphaKey(spep_2,Rengekifront,255);
setEffScaleKey(spep_2,Rengekifront,1.0,1.0);
setEffRotateKey(spep_2,Rengekifront,0);

setEffShake(spep_2,Rengekifront,118,10);

Rengekibehind = entryEffectLife(spep_2,SP_03x,118,0x80,-1,0,0,0); -- 連撃（後）
setEffAlphaKey(spep_2,Rengekibehind,255);
setEffScaleKey(spep_2,Rengekibehind,1.0,1.0);
setEffRotateKey(spep_2,Rengekibehind,0);

Ryusen2 = entryEffectLife(spep_2,922,64,0x80,-1,0,0,0);-- 流線
setEffMoveKey(spep_2,Ryusen2,0,0,0);
setEffScaleKey(spep_2,Ryusen2,1.4,1.4);
setEffAlphaKey(spep_2,Ryusen2,0);
setEffRotateKey(spep_2,Ryusen2,195);

--集中線
shuchusen2A = entryEffectLife(spep_2,906,22,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_2,shuchusen2A,0,0,0);
setEffScaleKey(spep_2,shuchusen2A,1.0,1.0);
setEffAlphaKey(spep_2,shuchusen2A,255);

entryFadeBg(spep_2,0,120,0,10,10,10,230);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

setMoveKey(SP_dodge,1,150,-100,0);
setMoveKey(SP_dodge+8,1,150,-100,0);

setScaleKey(SP_dodge,1,1.1,1.1);
setScaleKey(SP_dodge+8,1,1.1,1.1);

setRotateKey(SP_dodge,1,0);
setRotateKey(SP_dodge+8,1,0);

setDisp(SP_dodge+9,1,0);

setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setRotateKey(SP_dodge+9,1,0);

setMoveKey(SP_dodge+10,1,0,0,0);
setScaleKey(SP_dodge+10,1,1.0,1.0);
setRotateKey(SP_dodge+10,1,0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);

do return end
else end

------------------------------------------------------
--回避されなかった場合
------------------------------------------------------

--敵位置
changeAnime(spep_2+24,1,106);
setShakeChara(spep_2+24,1,41,23);--連撃の揺れ
setShakeChara(spep_2+65,1,53,18);--気弾の揺れ
setDisp(spep_2+118,1,0);

setMoveKey(spep_2+23,1,150,-100,0);
setMoveKey(spep_2+24,1,90,0,0);
setMoveKey(spep_2+65,1,100,110,0);
setMoveKey(spep_2+118,1,100,120,0);

setRotateKey(spep_2+23,1,0);
setRotateKey(spep_2+24,1,335);
setRotateKey(spep_2+118,1,335);

setScaleKey(spep_2+23,1,1.1,1.1);
setScaleKey(spep_2+24,1,1.1,1.1);
setScaleKey(spep_2+118,1,1.1,1.1);


setEffAlphaKey(spep_2+118,Rengekifront,255);
setEffScaleKey(spep_2+118,Rengekifront,1.0,1.0);
setEffRotateKey(spep_2+118,Rengekifront,0);

setEffAlphaKey(spep_2+118,Rengekibehind,255);
setEffScaleKey(spep_2+118,Rengekibehind,1.0,1.0);
setEffRotateKey(spep_2+118,Rengekibehind,0);

--流線
setEffMoveKey(spep_2+64,Ryusen2,0,0,0);
setEffScaleKey(spep_2+64,Ryusen2,1.4,1.4);
setEffAlphaKey(spep_2+27,Ryusen2,0);
setEffAlphaKey(spep_2+28,Ryusen2,100);
setEffAlphaKey(spep_2+64,Ryusen2,100);
setEffRotateKey(spep_2+64,Ryusen2,195);

setEffMoveKey(spep_2+22,shuchusen2A,0,0,0);
setEffScaleKey(spep_2+22,shuchusen2A,1.0,1.0);
setEffAlphaKey(spep_2+22,shuchusen2A,255);

--集中線
shuchusen2B = entryEffectLife(spep_2+65,906,53,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_2+65,shuchusen2B,0,0,0);
setEffMoveKey(spep_2+118,shuchusen2B,0,0,0);
setEffScaleKey(spep_2+65,shuchusen2B,1.3,1.3);
setEffScaleKey(spep_2+118,shuchusen2B,1.3,1.3);
setEffAlphaKey(spep_2+65,shuchusen2B,255);
setEffAlphaKey(spep_2+118,shuchusen2B,255);
setEffRotateKey(spep_2+65,shuchusen2B,0);
setEffRotateKey(spep_2+118,shuchusen2B,0);

--ドガガ
ctDogaga = entryEffectLife(spep_2+23,10017,41,0x100,-1,0,0,0);-- ドガ

setEffMoveKey(spep_2+23,ctDogaga,50,300,0);
setEffMoveKey(spep_2+64,ctDogaga ,50,300,0);
setEffScaleKey(spep_2+23,ctDogaga,2.0,2.0);
setEffScaleKey(spep_2+64,ctDogaga ,2.0,2.0);
setEffAlphaKey(spep_2+23,ctDogaga,255);
setEffAlphaKey(spep_2+64,ctDogaga ,255);
setEffRotateKey(spep_2+23,ctDogaga,0);
setEffRotateKey(spep_2+64,ctDogaga,0);

setEffShake(spep_2+23,ctDogaga,41,20);

--バッ
ctBa = entryEffectLife(spep_2+65,10022,23,0x100,-1,-50,100,0);-- バッ

setEffMoveKey(spep_2+65,ctBa,-80,170,0);
setEffMoveKey(spep_2+88,ctBa ,-80,170,0);
setEffScaleKey(spep_2+65,ctBa,1.0,1.0);
setEffScaleKey(spep_2+88,ctBa ,1.2,1.2);
setEffAlphaKey(spep_2+65,ctBa,255);
setEffAlphaKey(spep_2+88,ctBa,255);
setEffRotateKey(spep_2+65,ctBa,350);
setEffRotateKey(spep_2+88,ctBa,350);

setEffShake(spep_2+65,ctBa,23,20);

playSe(spep_2+10,43);
setSeVolume(spep_2+10 ,43, 70 );
playSe(spep_2+28,1008);
setSeVolume(spep_2+28 ,1008, 70 );
playSe(spep_2+34,1009);
setSeVolume(spep_2+34 ,1009, 70 );
playSe(spep_2+38,1008);
setSeVolume(spep_2+38 ,1008, 70 );
playSe(spep_2+42,1009);
setSeVolume(spep_2+42 ,1009, 70 );
playSe(spep_2+46,1008);
setSeVolume(spep_2+46 ,1008, 70 );
playSe(spep_2+50,1009);
setSeVolume(spep_2+50 ,1009, 70 );
playSe(spep_2+54,1008);
setSeVolume(spep_2+54 ,1008, 70 );
playSe(spep_2+58,1008);
setSeVolume(spep_2+58 ,1008, 70 );
playSe(spep_2+62,1009);
setSeVolume(spep_2+62 ,1009, 70 );
playSe(spep_2+70,1035);
setSeVolume(spep_2+70 ,1035, 70 );

entryFade(spep_2+18,3,4,3,245,245,245,255);
entryFade(spep_2+112,4,6,4,245,245,245,255);
------------------------------------------------------
--打ち上げ
------------------------------------------------------
spep_3=spep_2+120;

Uchiage = entryEffectLife(spep_3,SP_04x,66,0x100,-1,0,0,0); --打ち上げ

setEffAlphaKey(spep_3,Uchiage,255);
setEffAlphaKey(spep_3+66,Uchiage,255);
setEffScaleKey(spep_3,Uchiage,1.0,1.0);
setEffScaleKey(spep_3+66,Uchiage,1.0,1.0);
setEffRotateKey(spep_3,Uchiage,0);
setEffRotateKey(spep_3+66,Uchiage,0);

setEffShake(spep_3,Uchiage,66,10);

BgB = entryEffectLife(spep_3,SP_00,68,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_3,BgB,255);
setEffAlphaKey(spep_3+68,BgB,255);
setEffScaleKey(spep_3,BgB,1.0,1.0);
setEffScaleKey(spep_3+68,BgB,1.0,1.0);
setEffRotateKey(spep_3,BgB,0);
setEffRotateKey(spep_3+68,BgB,0);

--吹き飛ばし流線
hukitobasi3 = entryEffectLife(spep_3+6,924,62,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_3+6,hukitobasi3,0,0,0);
setEffMoveKey(spep_3+68,hukitobasi3,0,0,0);
setEffScaleKey(spep_3+6,hukitobasi3,1.4,1.4);
setEffScaleKey(spep_3+68,hukitobasi3,1.4,1.4);
setEffAlphaKey(spep_3+6,hukitobasi3,200);
setEffAlphaKey(spep_3+68,hukitobasi3,200);
setEffRotateKey(spep_3+6,hukitobasi3,310);
setEffRotateKey(spep_3+68,hukitobasi3,310);

--カッ
ctKa = entryEffectLife(spep_3+6,10004,36,0x100,-1,50,250,0);-- カッ

setEffMoveKey(spep_3+6,ctKa,50,200,0);
setEffMoveKey(spep_3+42,ctKa ,50,200,0);
setEffScaleKey(spep_3+6,ctKa,2.5,2.5);
setEffScaleKey(spep_3+42,ctKa ,3.0,3.0);
setEffAlphaKey(spep_3+6,ctKa,255);
setEffAlphaKey(spep_3+42,ctKa,255);
setEffRotateKey(spep_3+6,ctKa,0);
setEffRotateKey(spep_3+42,ctKa,0);

setEffShake(spep_3+6,ctKa,36,10);

playSe(spep_3+10,1024);

entryFade(spep_3+60,4,6,4,255,255,255,255);

------------------------------------------------------
--吹っ飛び追いかけ
------------------------------------------------------
spep_4=spep_3+68;

setDisp(spep_4,1,1);
setDisp(spep_4+68,1,0);

changeAnime(spep_4,1,108);
setShakeChara(spep_4,1,68,15);

setMoveKey(spep_4,1,-300,-400,0);
setMoveKey(spep_4+20,1,80,160,0);
setMoveKey(spep_4+30,1,80,160,0);
setMoveKey(spep_4+68,1,100,200,0);

setRotateKey(spep_4,1,345);
setRotateKey(spep_4+68,1,345);

setScaleKey(spep_4,1,3.0,3.0);
setScaleKey(spep_4+20,1,1.2,1.2);
setScaleKey(spep_4+30,1,1.2,1.2);
setScaleKey(spep_4+68,1,1.1,1.1);

setShakeChara(spep_4+68,1,68,10);


BgC = entryEffectLife(spep_4,SP_00,70,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_4,BgC,255);
setEffAlphaKey(spep_4+70,BgC,255);
setEffScaleKey(spep_4,BgC,1.0,1.0);
setEffScaleKey(spep_4+70,BgC,1.0,1.0);
setEffRotateKey(spep_4,BgC,0);
setEffRotateKey(spep_4+70,BgC,0);

--吹き飛ばし流線
hukitobasi4 = entryEffectLife(spep_4,924,70,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep_4,hukitobasi4,-150,-100,0);
setEffMoveKey(spep_4+70,hukitobasi4,-150,-100,0);
setEffScaleKey(spep_4,hukitobasi4,1.2,1.2);
setEffScaleKey(spep_4+70,hukitobasi4,1.2,1.2);
setEffAlphaKey(spep_4,hukitobasi4,255);
setEffAlphaKey(spep_4+70,hukitobasi4,255);
setEffRotateKey(spep_4,hukitobasi4,305);
setEffRotateKey(spep_4+70,hukitobasi4,305);

Okkake = entryEffectLife(spep_4,SP_05x,68,0x80,-1,0,0,0); --吹っ飛び追いかけ

setEffAlphaKey(spep_4,Okkake,255);
setEffAlphaKey(spep_4+68,Okkake,255);
setEffScaleKey(spep_4,Okkake,1.0,1.0);
setEffScaleKey(spep_4+68,Okkake,1.0,1.0);
setEffRotateKey(spep_4,Okkake,0);
setEffRotateKey(spep_4+68,Okkake,0);

setEffShake(spep_4,Okkake,68,10);

playSe(spep_4+12,4);
playSe(spep_4+20,4);
playSe(spep_4+32,4);

entryFade(spep_4+62,4,6,4,255,255,255,255);
------------------------------------------------------
--千手観音
------------------------------------------------------
spep_5=spep_4+70;

Kannon = entryEffectLife(spep_5,SP_06x,72,0x100,-1,0,0,0); --千手観音

setEffAlphaKey(spep_5,Kannon,255);
setEffAlphaKey(spep_5+72,Kannon,255);
setEffScaleKey(spep_5,Kannon,1.0,1.0);
setEffScaleKey(spep_5+72,Kannon,1.0,1.0);
setEffRotateKey(spep_5,Kannon,0);
setEffRotateKey(spep_5+72,Kannon,0);

setEffShake(spep_5,Kannon,72,10);

BgD = entryEffectLife(spep_5,SP_00,74,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_5,BgD,255);
setEffAlphaKey(spep_5+74,BgD,255);
setEffScaleKey(spep_5,BgD,1.0,1.0);
setEffScaleKey(spep_5+74,BgD,1.0,1.0);
setEffRotateKey(spep_5,BgD,0);
setEffRotateKey(spep_5+74,BgD,0);

--集中線
shuchusen5 = entryEffectLife(spep_5,906,74,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_5,shuchusen5,0,0,0);
setEffMoveKey(spep_5+74,shuchusen5,0,0,0);
setEffScaleKey(spep_5,shuchusen5,1.0,1.0);
setEffScaleKey(spep_5+74,shuchusen5,1.0,1.0);
setEffAlphaKey(spep_5,shuchusen5,255);
setEffAlphaKey(spep_5+74,shuchusen5,255);
setEffRotateKey(spep_5,shuchusen5,0);
setEffRotateKey(spep_5+74,shuchusen5,0);

--SE
playSe(spep_5,SE_01);

playSe(spep_5+20,4);
playSe(spep_5+26,4);
playSe(spep_5+32,4);
playSe(spep_5+38,4);
playSe(spep_5+44,4);
playSe(spep_5+50,4);
playSe(spep_5+56,4);
playSe(spep_5+62,4);

entryFade(spep_5+66,4,6,4,255,255,255,255);
------------------------------------------------------
--風圧攻撃（前）
------------------------------------------------------
spep_6=spep_5+74;

--敵y軸落下
setDisp(spep_6,1,1);
setDisp(spep_6+57,1,0);

changeAnime(spep_6,1,108);

setMoveKey(spep_6,1,0,1200,0);
setMoveKey(spep_6+17,1,0,0,0);
setMoveKey(spep_6+51,1,0,0,0);
setMoveKey(spep_6+57,1,0,-350,0);
setRotateKey(spep_6,1,80);
setRotateKey(spep_6+57,1,80);
setScaleKey(spep_6,1,1.0,1.0);
setScaleKey(spep_6+57,1,1.0,1.0);

setShakeChara(spep_6,1,56,20);

Huuatsufront = entryEffectLife(spep_6,SP_07x,86,0x100,-1,0,0,0); --風圧攻撃（前）

setEffAlphaKey(spep_6,Huuatsufront,255);
setEffAlphaKey(spep_6+86,Huuatsufront,255);
setEffScaleKey(spep_6,Huuatsufront,1.0,1.0);
setEffScaleKey(spep_6+86,Huuatsufront,1.0,1.0);
setEffRotateKey(spep_6,Huuatsufront,0);
setEffRotateKey(spep_6+86,Huuatsufront,0);

setEffShake(spep_6,Huuatsufront,86,10);

BgE = entryEffectLife(spep_6,SP_00,88,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_6,BgE,255);
setEffAlphaKey(spep_6+88,BgE,255);
setEffScaleKey(spep_6,BgE,1.0,1.0);
setEffScaleKey(spep_6+88,BgE,1.0,1.0);
setEffRotateKey(spep_6,BgE,0);
setEffRotateKey(spep_6+88,BgE,0);

Huuatsubehind = entryEffectLife(spep_6,SP_08x,86,0x80,-1,0,0,0); --風圧攻撃（後）

setEffAlphaKey(spep_6,Huuatsubehind,255);
setEffAlphaKey(spep_6+86,Huuatsubehind,255);
setEffScaleKey(spep_6,Huuatsubehind,1.0,1.0);
setEffScaleKey(spep_6+86,Huuatsubehind,1.0,1.0);
setEffRotateKey(spep_6,Huuatsubehind,0);
setEffRotateKey(spep_6+86,Huuatsubehind,0);

--流線
ryusen6 = entryEffectLife(spep_6,922,60,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_6,ryusen6,0,0,0);
setEffMoveKey(spep_6+60,ryusen6 ,0,0,0);
setEffScaleKey(spep_6,ryusen6,1.0,1.0);
setEffScaleKey(spep_6+60,ryusen6 ,1.0,1.0);
setEffAlphaKey(spep_6,ryusen6,100);
setEffAlphaKey(spep_6+60,ryusen6 ,100);
setEffRotateKey(spep_6,ryusen6,0);
setEffRotateKey(spep_6+60,ryusen6,0);

--集中線
shuchusen6 = entryEffectLife(spep_6+61,906,27,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_6+61,shuchusen6,0,0,0);
setEffMoveKey(spep_6+88,shuchusen6,0,0,0);
setEffScaleKey(spep_6+61,shuchusen6,1.0,1.0);
setEffScaleKey(spep_6+88,shuchusen6,1.0,1.0);
setEffAlphaKey(spep_6+61,shuchusen6,255);
setEffAlphaKey(spep_6+88,shuchusen6,255);
setEffRotateKey(spep_6+61,shuchusen6,0);
setEffRotateKey(spep_6+88,shuchusen6,0);

playSe(spep_6+20,1008);
setSeVolume(spep_6+20 ,1008, 70 );
playSe(spep_6+26,1009);
setSeVolume(spep_6+26 ,1009, 70 );
playSe(spep_6+32,1008);
setSeVolume(spep_6+32 ,1008, 70 );
playSe(spep_6+38,1009);
setSeVolume(spep_6+38 ,1009, 70 );
playSe(spep_6+44,1008);
setSeVolume(spep_6+44 ,1008, 70 );
playSe(spep_6+50,1009);
setSeVolume(spep_6+50 ,1009, 70 );
playSe(spep_6+56,1008);
setSeVolume(spep_6+56 ,1008, 70 );
playSe(spep_6+62,1009);
setSeVolume(spep_6+62 ,1009, 70 );
playSe(spep_6+68,1008);
setSeVolume(spep_6+68 ,1008, 70 );
playSe(spep_6+74,1009);
setSeVolume(spep_6+74 ,1009, 70 );

entryFade(spep_6+80,4,6,4,255,255,255,255);
------------------------------------------------------
--気合入れ
------------------------------------------------------
spep_7=spep_6+88;

Kiai = entryEffectLife(spep_7,SP_09,118,0x100,-1,0,0,0); --気合入れ

setEffAlphaKey(spep_7,Kiai,255);
setEffAlphaKey(spep_7+118,Kiai,255);
setEffScaleKey(spep_7,Kiai,-1.0,1.0);
setEffScaleKey(spep_7+118,Kiai,-1.0,1.0);
setEffRotateKey(spep_7,Kiai,0);
setEffRotateKey(spep_7+118,Kiai,0);

--setEffShake(spep_7,Kiai,118,10);

BgF = entryEffectLife(spep_7,SP_00,120,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_7,BgF,255);
setEffAlphaKey(spep_7+120,BgF,255);
setEffScaleKey(spep_7,BgF,1.0,1.0);
setEffScaleKey(spep_7+120,BgF,1.0,1.0);
setEffRotateKey(spep_7,BgF,0);
setEffRotateKey(spep_7+120,BgF,0);

--集中線
shuchusen7 = entryEffectLife(spep_7,906,120,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_7,shuchusen7,0,0,0);
setEffMoveKey(spep_7+120,shuchusen7,0,0,0);
setEffScaleKey(spep_7,shuchusen7,1.0,1.0);
setEffScaleKey(spep_7+120,shuchusen7,1.0,1.0);
setEffAlphaKey(spep_7,shuchusen7,255);
setEffAlphaKey(spep_7+120,shuchusen7,255);
setEffRotateKey(spep_7,shuchusen7,0);
setEffRotateKey(spep_7+120,shuchusen7,0);

--ゴゴゴ
ctgogo=entryEffectLife(spep_7+39,190006,69,0x100,-1,50,500);--ゴゴゴ

setEffShake(spep_7+39,ctgogo,69,15);
setEffMoveKey(spep_7+39,ctgogo,50,500);
setEffMoveKey(spep_7+108,ctgogo,50,500);
setEffScaleKey(spep_7+39,ctgogo,-0.8,0.8);
setEffScaleKey(spep_7+108,ctgogo,-0.8,0.8);
setEffAlphaKey(spep_7+39,ctgogo,255);
setEffAlphaKey(spep_7+108,ctgogo,255);
setEffRotateKey(spep_7+39,ctgogo,0);
setEffRotateKey(spep_7+108,ctgogo,0);

setEffShake(spep_7+39,ctgogo,69,10);

--SE
playSe(spep_7,SE_01);
playSe(spep_7+39,SE_04);

--顔＆セリフカットイン
--speff=entryEffect(spep_7+29,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_7+29,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

entryFade(spep_7+112,4,8,4,255,255,255,255);
------------------------------------------------------
--カードカットイン
------------------------------------------------------
spep_8=spep_7+120;

entryFadeBg( spep_8, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_8, SE_05);

speff = entryEffect(  spep_8,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_8+80, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--集中線
shuchusen8 = entryEffectLife(spep_8,906,120,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_8,shuchusen8,0,0,0);
setEffMoveKey(spep_8+120,shuchusen8,0,0,0);
setEffScaleKey(spep_8,shuchusen8,1.0,1.0);
setEffScaleKey(spep_8+120,shuchusen8,1.0,1.0);
setEffAlphaKey(spep_8,shuchusen8,255);
setEffAlphaKey(spep_8+120,shuchusen8,255);
setEffRotateKey(spep_8,shuchusen8,0);
setEffRotateKey(spep_8+120,shuchusen8,0);

entryFade(spep_8+82,4,6,0,255,255,255,255);
------------------------------------------------------
--気溜め～発射
------------------------------------------------------
spep_9=spep_8+90;

Burst = entryEffectLife(spep_9,SP_10x,116,0x100,-1,0,0,0); --気溜め～発射

setEffAlphaKey(spep_9,Burst,255);
setEffAlphaKey(spep_9+116,Burst,255);
setEffScaleKey(spep_9,Burst,1.0,1.0);
setEffScaleKey(spep_9+116,Burst,1.0,1.0);
setEffRotateKey(spep_9,Burst,0);
setEffRotateKey(spep_9+116,Burst,0);

BgG = entryEffectLife(spep_9,SP_00,120,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_9,BgG,255);
setEffAlphaKey(spep_9+116,BgG,255);
setEffScaleKey(spep_9,BgG,1.0,1.0);
setEffScaleKey(spep_9+116,BgG,1.0,1.0);
setEffRotateKey(spep_9,BgG,0);
setEffRotateKey(spep_9+116,BgG,0);

--集中線
shuchusen9 = entryEffectLife(spep_9,906,78,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_9,shuchusen9,100,0,0);
setEffMoveKey(spep_9+68,shuchusen9,100,0,0);
setEffScaleKey(spep_9,shuchusen9,1.8,1.8);
setEffScaleKey(spep_9+68,shuchusen9,1.8,1.8);
setEffAlphaKey(spep_9,shuchusen9,255);
setEffAlphaKey(spep_9+68,shuchusen9,255);
setEffRotateKey(spep_9,shuchusen9,0);
setEffRotateKey(spep_9+68,shuchusen9,0);

--バッ
ctBa = entryEffectLife(spep_9+20,10022,16,0x100,-1,-100,200,0);-- バッ

setEffMoveKey(spep_9+20,ctBa,-50,150,0);
setEffMoveKey(spep_9+36,ctBa ,-100,200,0);
setEffScaleKey(spep_9+20,ctBa,0.2,0.2);
setEffScaleKey(spep_9+36,ctBa ,1.2,1.2);
setEffAlphaKey(spep_9+20,ctBa,255);
setEffAlphaKey(spep_9+36,ctBa,255);
setEffRotateKey(spep_9+20,ctBa,0);
setEffRotateKey(spep_9+36,ctBa,0);

setEffShake(spep_9+20,ctBa,16,15);

--ドン
ctDon= entryEffectLife(spep_9+78,10019,24,0x100,-1,-100,250,0);-- ドン

setEffMoveKey(spep_9+78,ctDon,-100,250,0);
setEffMoveKey(spep_9+92,ctDon ,-100,250,0);
setEffScaleKey(spep_9+78,ctDon,2.5,2.5);
setEffScaleKey(spep_9+92,ctDon ,2.5,2.5);
setEffAlphaKey(spep_9+78,ctDon,255);
setEffAlphaKey(spep_9+92,ctDon,255);
setEffRotateKey(spep_9+78,ctDon,0);
setEffRotateKey(spep_9+92,ctDon,0);

setEffShake(spep_9+78,ctDon,24,10);

--吹き飛ばし流線
hukitobasi9 = entryEffectLife(spep_9+78,924,34,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep_9+78,hukitobasi9,-150,0,0);
setEffMoveKey(spep_9+112,hukitobasi9,-150,0,0);
setEffScaleKey(spep_9+78,hukitobasi9,1.2,1.2);
setEffScaleKey(spep_9+112,hukitobasi9,1.2,1.2);
setEffAlphaKey(spep_9+78,hukitobasi9,255);
setEffAlphaKey(spep_9+112,hukitobasi9,255);
setEffRotateKey(spep_9+78,hukitobasi9,305);
setEffRotateKey(spep_9+112,hukitobasi9,305);

--SE
playSe(spep_9,SE_01);
playSe(spep_9+20,SE_04);
playSe(spep_9+78,SE_06);

entryFade(spep_9+110,4,6,4,255,255,255,255);
------------------------------------------------------
--着弾
------------------------------------------------------
spep_10=spep_9+116;

Hit = entryEffect(spep_10,SP_11x,0x100,-1,0,0,0); --着弾

setEffAlphaKey(spep_10,Hit,255);
setEffAlphaKey(spep_10+100,Hit,255);
setEffScaleKey(spep_10,Hit,1.0,1.0);
setEffScaleKey(spep_10+100,Hit,1.0,1.0);
setEffRotateKey(spep_10,Hit,0);
setEffRotateKey(spep_10+100,Hit,0);

setEffShake(spep_10,Hit,100,10);

BgH = entryEffectLife(spep_10,SP_00,100,0x80,-1,0,0,0); -- 共通背景

setEffAlphaKey(spep_10,BgH,255);
setEffAlphaKey(spep_10+100,BgH,255);
setEffScaleKey(spep_10,BgH,1.0,1.0);
setEffScaleKey(spep_10+100,BgH,1.0,1.0);
setEffRotateKey(spep_10,BgH,0);
setEffRotateKey(spep_10+100,BgH,0);

--吹き飛ばし流線
hukitobasi10 = entryEffectLife(spep_10,924,100,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep_10,hukitobasi10,0,-50,0);
setEffMoveKey(spep_10+100,hukitobasi10,0,-50,0);
setEffScaleKey(spep_10,hukitobasi10,1.3,1.2);
setEffScaleKey(spep_10+100,hukitobasi10,1.3,1.2);
setEffAlphaKey(spep_10,hukitobasi10,255);
setEffAlphaKey(spep_10+100,hukitobasi10,255);
setEffRotateKey(spep_10,hukitobasi10,275);
setEffRotateKey(spep_10+100,hukitobasi10,275);

--集中線
shuchusen10 = entryEffectLife(spep_10+48,906,52,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_10+48,shuchusen10,50,-50,0);
setEffMoveKey(spep_10+100,shuchusen10,50,-50,0);
setEffScaleKey(spep_10+48,shuchusen10,1.2,1.2);
setEffScaleKey(spep_10+100,shuchusen10,1.2,1.2);
setEffAlphaKey(spep_10+48,shuchusen10,255);
setEffAlphaKey(spep_10+100,shuchusen10,255);
setEffRotateKey(spep_10+48,shuchusen10,0);
setEffRotateKey(spep_10+100,shuchusen10,0);

--SE
playSe(spep_10,SE_07);
playSe(spep_10+48,SE_09);

entryFade(spep_10+92,4,6,4,255,255,255,255);
------------------------------------------------------
--爆発
------------------------------------------------------
spep_11=spep_10+98;

Exp=entryEffect(spep_11,1684,0x100,-1,0,0,0);--爆発

setEffMoveKey(spep_11,Exp,0,0,0);
setEffMoveKey(spep_11+120,Exp,0,0,0);
setEffScaleKey(spep_11,Exp,-1.1,1.1);
setEffScaleKey(spep_11+120,Exp,-1.1,1.1);
setEffAlphaKey(spep_11,Exp,255);
setEffAlphaKey(spep_11+120,Exp,255);
setEffRotateKey(spep_11,Exp,0);
setEffRotateKey(spep_11+120,Exp,0);

--集中線
shuchusen11 = entryEffectLife(spep_11,906,100,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_11,shuchusen11,0,0,0);
setEffMoveKey(spep_11+100,shuchusen11,0,0,0);
setEffScaleKey(spep_11,shuchusen11,1.0,1.0);
setEffScaleKey(spep_11+100,shuchusen11,1.0,1.0);
setEffAlphaKey(spep_11,shuchusen11,255);
setEffAlphaKey(spep_11+100,shuchusen11,255);
setEffRotateKey(spep_11,shuchusen11,0);
setEffRotateKey(spep_11+100,shuchusen11,0);

playSe(spep_11,SE_10);

-- ダメージ表示
dealDamage( spep_11+6);
entryFade( spep_11+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_11+110);

end
--1013880 トッポ(破壊神モード) 破壊玉 sp1166

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

SP_01 = 151546; --手前に突進
SP_02 = 151547; --右ストレート
SP_03 = 151548; --後方から波動・手前
SP_04 = 151549; --後方から波動・奥
SP_05 = 151550; --上からハンマー
SP_06 = 151551; --敵落下・手前
SP_07 = 151552; --敵落下・奥
SP_08 = 151553; --構え
SP_09 = 151554; --発射

SP_01x = 151555; --手前に突進
SP_02x = 151556; --右ストレート
SP_03x = 151557; --後方から波動・手前
SP_04x = 151558; --後方から波動・奥
SP_05x = 151559; --上からハンマー
SP_06x = 151551; --敵落下・手前
SP_07x = 151552; --敵落下・奥
SP_08x = 151560; --構え
SP_09x = 151561; --発射

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
--SP_01 = 151546; --手前に突進 
------------------------------------------------------
spep_1=0;

Tossin = entryEffectLife(spep_1,SP_01,68,0x100,-1,0,0,0); -- SP_01手前に突進

setEffAlphaKey(spep_1,Tossin,255);
setEffAlphaKey(spep_1+68,Tossin,255);
setEffScaleKey(spep_1,Tossin,1.0,1.0);
setEffScaleKey(spep_1+68,Tossin,1.0,1.0);
setEffRotateKey(spep_1,Tossin,0);
setEffRotateKey(spep_1+68,Tossin,0);

setEffShake(spep_1,Tossin,68,15);

-- 書き文字エントリー
ctZuo1 = entryEffectLife(spep_1,10012,40,0x100,-1,0,120,350); -- ズオッ

setEffShake(spep_1,ctZuo1,40,20);

setEffAlphaKey(spep_1,ctZuo1,255);
setEffAlphaKey(spep_1+30,ctZuo1,255);
setEffAlphaKey(spep_1+40,ctZuo1,0);
setEffScaleKey(spep_1,ctZuo1,0.1,0.1);
setEffScaleKey(spep_1+6,ctZuo1,2.5,2.5);
setEffScaleKey(spep_1+30,ctZuo1,2.5,2.5);
setEffScaleKey(spep_1+40,ctZuo1,6.5,6.5);
setEffRotateKey(spep_1,ctZuo1,30);
setEffRotateKey(spep_1+40,ctZuo1,30);

--集中線
shuchusen1 = entryEffectLife(spep_1,906,68,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_1,shuchusen1,0,0,0);
setEffMoveKey(spep_1+68,shuchusen1,0,0,0);
setEffScaleKey(spep_1,shuchusen1,1.0,1.0);
setEffScaleKey(spep_1+68,shuchusen1,1.0,1.0);
setEffAlphaKey(spep_1,shuchusen1,255);
setEffAlphaKey(spep_1+68,shuchusen1,255);
setEffRotateKey(spep_1,shuchusen1,0);
setEffRotateKey(spep_1+68,shuchusen1,0);

--SE
SE01 = playSe(spep_1+2,9);

--背景・ホワイトフェイド
-- 背景（黒220）
entryFadeBg( spep_1, 0, 68, 0, 10, 10, 10, 210);  -- 黒　背景
entryFade( spep_1+60, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

--------------------------------------
--回避
--------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 55;

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE01, 0 );

setMoveKey(SP_dodge,1,-900,0,0);
setScaleKey(   SP_dodge,   1, 1.5, 1.5);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,-900,0,0);
setScaleKey(   SP_dodge+8,   1, 1.5, 1.5);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
--SP_02 = 151547; --右ストレート
------------------------------------------------------
spep_2=spep_1+70;

setDisp(spep_2,1,1);

changeAnime(spep_2,1,100);
changeAnime(spep_2+31,1,108);

setMoveKey(spep_2,1,590,-150,0);
setMoveKey(spep_2+30,1,140,100,0);
setMoveKey(spep_2+31,1,140,100,0);
setMoveKey(spep_2+77,1,1040,-400,0);

setScaleKey(spep_2,1,1.2,1.2);
setScaleKey(spep_2+30,1,1.2,1.2);
setScaleKey(spep_2+31,1,1.2,1.2);
setScaleKey(spep_2+77,1,1.2,1.2);

setRotateKey(spep_2,1,0);
setRotateKey(spep_2+30,1,0);
setRotateKey(spep_2+31,1,20);
setRotateKey(spep_2+77,1,20);

setShakeChara(spep_2+31,1,47,15);

--流線
ryusen2 = entryEffectLife(spep_2, 914, 77, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2, ryusen2, 1.4, 1.4);
setEffScaleKey(spep_2+77, ryusen2, 1.4, 1.4);
setEffRotateKey(spep_2, ryusen2, 25);
setEffRotateKey(spep_2+77, ryusen2, 25);

-- SP_02右ストレート
MigiStraight = entryEffectLife(spep_2,SP_02,77,0x100,-1,0,0,0); 

setEffAlphaKey(spep_2,MigiStraight,255);
setEffAlphaKey(spep_2+77,MigiStraight,255);
setEffScaleKey(spep_2,MigiStraight,1.0,1.0);
setEffScaleKey(spep_2+77,MigiStraight,1.0,1.0);
setEffRotateKey(spep_2,MigiStraight,0);
setEffRotateKey(spep_2+77,MigiStraight,0);

setEffShake(spep_2,MigiStraight,78,15);

--集中線
shuchusen2 = entryEffectLife(spep_2,906,77,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_2,shuchusen2,0,0,0);
setEffMoveKey(spep_2+77,shuchusen2,0,0,0);
setEffScaleKey(spep_2,shuchusen2,1.0,1.0);
setEffScaleKey(spep_2+77,shuchusen2,1.0,1.0);
setEffAlphaKey(spep_2,shuchusen2,255);
setEffAlphaKey(spep_2+77,shuchusen2,255);
setEffRotateKey(spep_2,shuchusen2,0);
setEffRotateKey(spep_2+77,shuchusen2,0);

--バキ
ctBaki = entryEffectLife( spep_2+31, 10020, 29, 0x100, -1, 0, 0, 300); -- バキ

setEffShake( spep_2+31, ctBaki, 36, 15);
setEffAlphaKey( spep_2+31, ctBaki, 255);
setEffAlphaKey( spep_2+50, ctBaki, 255);
setEffAlphaKey( spep_2+60, ctBaki, 100);
setEffScaleKey( spep_2+34, ctBaki, 1.8, 1.8);
setEffScaleKey( spep_2+39, ctBaki, 2.2,2.2);
setEffScaleKey( spep_2+44, ctBaki, 1.8, 1.8);
setEffScaleKey( spep_2+60, ctBaki, 1.8, 1.8);
setEffRotateKey( spep_2+31, ctBaki, 20);
setEffRotateKey( spep_2+32, ctBaki, 20);
setEffRotateKey( spep_2+33, ctBaki, 0);
setEffRotateKey( spep_2+34, ctBaki, 0);
setEffRotateKey( spep_2+36, ctBaki, 20);
setEffRotateKey( spep_2+60, ctBaki, 20);

--SE
playSe(spep_2,9);
playSe(spep_2+31,1010);

-- 背景（黒255）
entryFadeBg( spep_2, 0, 77, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_2+29, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_2+68, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--SP_03 = 151548; --後方から波動・手前
------------------------------------------------------
------------------------------------------------------
--SP_04 = 151549; --後方から波動・奥
------------------------------------------------------
spep_3=spep_2+78;

changeAnime(spep_3,1,108);
changeAnime(spep_3+48,1,106);

setShakeChara(spep_3,1,47,15);
setShakeChara(spep_3+48,1,56,15);

setMoveKey(spep_3,1,-900,450,0);
setMoveKey(spep_3+47,1,-100,150,0);
setMoveKey(spep_3+48,1,-100,150,0);
setMoveKey(spep_3+104,1,-900,450,0);

setScaleKey(spep_3,1,1.2,1.2);
setScaleKey(spep_3+47,1,1.2,1.2);
setScaleKey(spep_3+48,1,1.2,1.2);
setScaleKey(spep_3+104,1,1.2,1.2);
setRotateKey(spep_3,1,0);
setRotateKey(spep_3+47,1,0);
setRotateKey(spep_3+48,1,325);
setRotateKey(spep_3+53,1,325);
setRotateKey(spep_3+54,1,320);
setRotateKey(spep_3+57,1,320);
setRotateKey(spep_3+58,1,325);
setRotateKey(spep_3+61,1,325);
setRotateKey(spep_3+62,1,330);
setRotateKey(spep_3+65,1,330);
setRotateKey(spep_3+66,1,325);
setRotateKey(spep_3+69,1,325);
setRotateKey(spep_3+79,1,320);
setRotateKey(spep_3+82,1,320);
setRotateKey(spep_3+83,1,325);
setRotateKey(spep_3+86,1,325);
setRotateKey(spep_3+87,1,330);
setRotateKey(spep_3+90,1,330);
setRotateKey(spep_3+91,1,325);
setRotateKey(spep_3+94,1,325);
setRotateKey(spep_3+95,1,320);
setRotateKey(spep_3+98,1,320);
setRotateKey(spep_3+99,1,325);
setRotateKey(spep_3+100,1,325);
setRotateKey(spep_3+104,1,325);

--流線
ryusen3 = entryEffectLife(spep_3, 914, 104, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_3, ryusen3, 1.4, 1.4);
setEffScaleKey(spep_3+104, ryusen3, 1.4, 1.4);
setEffRotateKey(spep_3, ryusen3, 25);
setEffRotateKey(spep_3+104, ryusen3, 25);

-- SP_03後方から波動・手前
HadouFront = entryEffectLife(spep_3,SP_03,104,0x100,-1,0,0,0); 

setEffAlphaKey(spep_3,HadouFront,255);
setEffAlphaKey(spep_3+104,HadouFront,255);
setEffScaleKey(spep_3,HadouFront,1.0,1.0);
setEffScaleKey(spep_3+104,HadouFront,1.0,1.0);
setEffRotateKey(spep_3,HadouFront,0);
setEffRotateKey(spep_3+104,HadouFront,0);

setEffShake(spep_3,HadouFront,104,15);

-- SP_04後方から波動・奥
HadouBehind = entryEffectLife(spep_3,SP_04,104,0x80,-1,0,0,0); 

setEffAlphaKey(spep_3,HadouBehind,255);
setEffAlphaKey(spep_3+104,HadouBehind,255);
setEffScaleKey(spep_3,HadouBehind,1.0,1.0);
setEffScaleKey(spep_3+104,HadouBehind,1.0,1.0);
setEffRotateKey(spep_3,HadouBehind,0);
setEffRotateKey(spep_3+104,HadouBehind,0);

setEffShake(spep_3,HadouBehind,104,15);

--集中線
shuchusen3 = entryEffectLife(spep_3,906,104,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_3,shuchusen3,0,0,0);
setEffMoveKey(spep_3+104,shuchusen3,0,0,0);
setEffScaleKey(spep_3,shuchusen3,1.2,1.2);
setEffScaleKey(spep_3+104,shuchusen3,1.2,1.2);
setEffAlphaKey(spep_3,shuchusen3,255);
setEffAlphaKey(spep_3+104,shuchusen3,255);
setEffRotateKey(spep_3,shuchusen3,0);
setEffRotateKey(spep_3+104,shuchusen3,0);

--ズオッ
ctZuo3 = entryEffectLife(spep_3+52,10012,41,0x100,-1,0,120,300); -- ズオッ

setEffShake(spep_3+52,ctZuo3,41,20);

setEffAlphaKey(spep_3+52,ctZuo3,255);
setEffAlphaKey(spep_3+88,ctZuo3,255);
setEffAlphaKey(spep_3+93,ctZuo3,0);
setEffScaleKey(spep_3+52,ctZuo3,0.1,0.1);
setEffScaleKey(spep_3+61,ctZuo3,3.0,3.0);
setEffScaleKey(spep_3+88,ctZuo3,3.0,3.0);
setEffScaleKey(spep_3+93,ctZuo3,6.0,6.0);
setEffRotateKey(spep_3+52,ctZuo3,30);
setEffRotateKey(spep_3+93,ctZuo3,30);

--SE
playSe(spep_3+52,SE_06);

-- 背景（黒255）
entryFadeBg( spep_3, 0, 104, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_3+96, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--SP_05 = 151550; --上からハンマー
------------------------------------------------------
spep_4=spep_3+104;

changeAnime(spep_4+1,1,106);
changeAnime(spep_4+37,1,108);

setShakeChara(spep_4+1,1,36,15);
setShakeChara(spep_4+37,1,51,15);

setMoveKey(spep_4+1,1,1040,-400,0);
setMoveKey(spep_4+36,1,0,0,0);
setMoveKey(spep_4+37,1,0,0,0);
setMoveKey(spep_4+88,1,0,-1200,0);

setScaleKey(spep_4+1,1,1.2,1.2);
setScaleKey(spep_4+37,1,1.2,1.2);
setScaleKey(spep_4+58,1,1.2,1.2);

setRotateKey(spep_4+1,1,325);
setRotateKey(spep_4+36,1,325);
setRotateKey(spep_4+37,1,90);
setRotateKey(spep_4+58,1,90);

Hummer = entryEffectLife(spep_4,SP_05,88,0x100,-1,0,0,0); -- SP_05上からハンマー

setEffAlphaKey(spep_4,Hummer,255);
setEffAlphaKey(spep_4+88,Hummer,255);
setEffScaleKey(spep_4,Hummer,1.0,1.0);
setEffScaleKey(spep_4+88,Hummer,1.0,1.0);
setEffRotateKey(spep_4,Hummer,0);
setEffRotateKey(spep_4+88,Hummer,0);

setEffShake(spep_4,Hummer,88,15);

--流線
ryusen4 = entryEffectLife(spep_4, 914, 88, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_4, ryusen4, 1.4, 1.4);
setEffScaleKey(spep_4+88, ryusen4, 1.4, 1.4);
setEffRotateKey(spep_4, ryusen4, 25);
setEffRotateKey(spep_4+35, ryusen4, 25);
setEffRotateKey(spep_4+36, ryusen4, 90);
setEffRotateKey(spep_4+88, ryusen4, 90);

--集中線
shuchusen4 = entryEffectLife(spep_4,906,88,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_4,shuchusen4,0,0,0);
setEffMoveKey(spep_4+88,shuchusen4,0,0,0);
setEffScaleKey(spep_4,shuchusen4,1.2,1.2);
setEffScaleKey(spep_4+88,shuchusen4,1.2,1.2);
setEffAlphaKey(spep_4,shuchusen4,255);
setEffAlphaKey(spep_4+88,shuchusen4,255);
setEffRotateKey(spep_4,shuchusen4,0);
setEffRotateKey(spep_4+88,shuchusen4,0);

--ガッ
ctGa = entryEffectLife( spep_4+36, 10005, 24, 0, -1, 0, 50, 300); -- ガッ
setEffShake( spep_4+36, ctGa, 24, 20);
setEffRotateKey( spep_4+36, ctGa, 20);
setEffRotateKey( spep_4+60, ctGa, 20);
setEffScaleKey( spep_4+36, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+48, ctGa, 5.0, 5.0);
setEffScaleKey( spep_4+60, ctGa, 2.0, 2.0);
setEffAlphaKey( spep_4+30, ctGa, 255);
setEffAlphaKey( spep_4+50, ctGa, 255);
setEffAlphaKey( spep_4+60, ctGa, 0);

--SE
playSe(spep_4+36,1009);

-- 背景（黒255）
entryFadeBg( spep_4, 0, 88, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_4+80, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--SP_06 = 151551; --敵落下・手前
------------------------------------------------------
------------------------------------------------------
--SP_07 = 151552; --敵落下・奥
------------------------------------------------------
spep_5=spep_4+89;

--敵キャラクター
setDisp(spep_5+58,1,0);

setMoveKey(spep_5,1,0,1200,0);
setMoveKey(spep_5+20,1,0,-290,0);
setMoveKey(spep_5+58,1,0,-290,0);
setScaleKey(spep_5,1,1.2,1.2);
setScaleKey(spep_5+58,1,1.2,1.2);
setRotateKey(spep_5,1,90);
setRotateKey(spep_5+58,1,90);

setShakeChara(spep_5,1,58,20);

--流線（縦）
ryusen5 = entryEffectLife(spep_5, 914, 58, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_5, ryusen5, 1.4, 1.4);
setEffScaleKey(spep_5+58, ryusen5, 1.4, 1.4);
setEffRotateKey(spep_5, ryusen5, 90);
setEffRotateKey(spep_5+58, ryusen5, 90);

-- SP_06敵落下・手前
RakkaFront = entryEffectLife(spep_5,SP_06,58,0x100,-1,0,0,0); 

setEffAlphaKey(spep_5,RakkaFront,255);
setEffAlphaKey(spep_5+58,RakkaFront,255);
setEffScaleKey(spep_5,RakkaFront,1.0,1.0);
setEffScaleKey(spep_5+58,RakkaFront,1.0,1.0);
setEffRotateKey(spep_5,RakkaFront,0);
setEffRotateKey(spep_5+58,RakkaFront,0);

setEffShake(spep_5,RakkaFront,58,25);

-- SP_07敵落下・奥
RakkaBehind = entryEffectLife(spep_5,SP_07,58,0x80,-1,0,0,0); 

setEffAlphaKey(spep_5,RakkaBehind,255);
setEffAlphaKey(spep_5+58,RakkaBehind,255);
setEffScaleKey(spep_5,RakkaBehind,1.0,1.0);
setEffScaleKey(spep_5+58,RakkaBehind,1.0,1.0);
setEffRotateKey(spep_5,RakkaBehind,0);
setEffRotateKey(spep_5+58,RakkaBehind,0);

setEffShake(spep_5,RakkaBehind,58,25);

--集中線
shuchusen5 = entryEffectLife(spep_5,906,58,0x100,-1,0,0,0);

setEffMoveKey(spep_5,shuchusen5,0,0,0);
setEffMoveKey(spep_5+58,shuchusen5,0,0,0);
setEffScaleKey(spep_5,shuchusen5,1.2,1.2);
setEffScaleKey(spep_5+58,shuchusen5,1.2,1.2);
setEffAlphaKey(spep_5,shuchusen5,255);
setEffAlphaKey(spep_5+58,shuchusen5,255);
setEffRotateKey(spep_5,shuchusen5,0);
setEffRotateKey(spep_5+58,shuchusen5,0);

--SE
playSe(spep_5+20,1054);

-- 背景（黒255）
entryFadeBg( spep_5, 0, 58, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_5+50, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--SP_08 = 151553; --構え
------------------------------------------------------
spep_6=spep_5+58;

-- SP_08構え
Kamae = entryEffectLife(spep_6,SP_08,198,0x100,-1,0,0,0); 

setEffAlphaKey(spep_6,Kamae,255);
setEffAlphaKey(spep_6+198,Kamae,255);
setEffScaleKey(spep_6,Kamae,1.0,1.0);
setEffScaleKey(spep_6+198,Kamae,1.0,1.0);
setEffRotateKey(spep_6,Kamae,0);
setEffRotateKey(spep_6+198,Kamae,0);

setEffShake(spep_6,Kamae,198,15);

--書き文字エントリー
ctgogo=entryEffectLife(spep_6+140,190006,58,0x100,-1,0,530);

setEffShake(spep_6+140,ctgogo,58,15);

setEffMoveKey(spep_6+140,ctgogo,0,530);
setEffMoveKey(spep_6+198,ctgogo,0,530);
setEffScaleKey(spep_6+140,ctgogo,0.8,0.8);
setEffScaleKey(spep_6+198,ctgogo,0.8,0.8);
setEffAlphaKey(spep_6+140,ctgogo,255);
setEffAlphaKey(spep_6+198,ctgogo,255);
setEffRotateKey(spep_6+140,ctgogo,0);
setEffRotateKey(spep_6+198,ctgogo,0);

--顔カットイン・セリフカットイン
speff=entryEffect(spep_6+130,1504,0x100,-1,0,0,0);
setEffReplaceTexture(speff,3,2);
speff=entryEffect(spep_6+130,1505,0x100,-1,0,0,0);
setEffReplaceTexture(speff,4,5);

--集中線
shuchusen6 = entryEffectLife(spep_6,906,198,0x100,-1,0,0,0);

setEffMoveKey(spep_6,shuchusen6,0,0,0);
setEffMoveKey(spep_6+198,shuchusen6,0,0,0);
setEffScaleKey(spep_6,shuchusen6,1.2,1.2);
setEffScaleKey(spep_6+198,shuchusen6,1.2,1.2);
setEffAlphaKey(spep_6,shuchusen6,255);
setEffAlphaKey(spep_6+198,shuchusen6,255);
setEffRotateKey(spep_6,shuchusen6,0);
setEffRotateKey(spep_6+198,shuchusen6,0);

--SE
playSe(spep_6,SE_02);
playSe(spep_6+32,SE_02);
playSe(spep_6+76,SE_02);
playSe(spep_6+86,SE_02);
playSe(spep_6+130,SE_04);

-- 背景（黒255）
entryFadeBg( spep_6, 0, 198, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_6+190, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--カードカットイン
------------------------------------------------------
spep_7=spep_6+198;

entryFadeBg( spep_7, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景
--[[
playSe( spep_7, SE_05);

speff = entryEffect(  spep_7,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    

entryFade( spep_7+80, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--SP_09 = 151554; --発射
------------------------------------------------------
spep_8=spep_7+88;

-- SP_09発射
Burst = entryEffectLife(spep_8,SP_09,196,0x100,-1,0,0,0); 

setEffAlphaKey(spep_8,Burst,255);
setEffAlphaKey(spep_8+196,Burst,255);
setEffScaleKey(spep_8,Burst,1.0,1.0);
setEffScaleKey(spep_8+196,Burst,1.0,1.0);
setEffRotateKey(spep_8,Burst,0);
setEffRotateKey(spep_8+196,Burst,0);

setEffShake(spep_8,Burst,196,15);

-- 背景（黒255）
entryFadeBg( spep_8, 0, 196, 0, 10, 10, 10, 255);  -- 黒　背景

--集中線
shuchusen8 = entryEffectLife(spep_8,906,196,0x100,-1,0,0,0);

setEffMoveKey(spep_8,shuchusen8,0,0,0);
setEffMoveKey(spep_8+196,shuchusen8,0,0,0);
setEffScaleKey(spep_8,shuchusen8,1.2,1.2);
setEffScaleKey(spep_8+196,shuchusen8,1.2,1.2);
setEffAlphaKey(spep_8,shuchusen8,255);
setEffAlphaKey(spep_8+196,shuchusen8,255);
setEffRotateKey(spep_8,shuchusen8,0);
setEffRotateKey(spep_8+196,shuchusen8,0);

-- ズオッ
ctZuo8 = entryEffectLife(spep_8,10012,68,0x100,-1,0,-200,300); 

setEffShake(spep_8,ctZuo8,68,20);

setEffAlphaKey(spep_8,ctZuo8,255);
setEffAlphaKey(spep_8+60,ctZuo8,255);
setEffAlphaKey(spep_8+68,ctZuo8,0);
setEffScaleKey(spep_8,ctZuo8,0.1,0.1);
setEffScaleKey(spep_8+6,ctZuo8,1.5,1.5);
setEffScaleKey(spep_8+12,ctZuo8,3.5,3.5);
setEffScaleKey(spep_8+60,ctZuo8,3.5,3.5);
setEffScaleKey(spep_8+68,ctZuo8,6.5,6.5);
setEffRotateKey(spep_8,ctZuo8,-30);
setEffRotateKey(spep_8+68,ctZuo8,-30);

--SE
playSe(spep_8,SE_06);
playSe(spep_8+88,SE_06);

-- 背景（黒255）
entryFadeBg( spep_8, 0, 196, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_8+190, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--ギャン
------------------------------------------------------
spep_9=spep_8+196;

gyan = entryEffect(  spep_9,  190001,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_9,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_9,  gyan,  255);

-- 書き文字エントリー --
ct6 = entryEffectLife( spep_9, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_9, ct6, 3.0, 3.0);
setEffScaleKey( spep_9+58, ct6, 4.0, 4.0);
setEffAlphaKey( spep_9, ct6, 255);
setEffAlphaKey( spep_9+58, ct6, 0);
setEffShake( spep_9, ct6, 58, 10);

playSe(  spep_9, SE_09);

entryFade(  spep_9+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--爆発
------------------------------------------------------
spep_10=spep_9+58;

bakuhatsu = entryEffect(  spep_10,  1679,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_10,  bakuhatsu,  1.0,  1.0);
setEffAlphaKey(  spep_10,  bakuhatsu,  255);
setEffAlphaKey(  spep_10+190,  bakuhatsu,  255);

shuchusen = entryEffectLife(  spep_10,  906,  200,  0x100,  -1,  0,  0,  0);  --集中線

setEffScaleKey(  spep_10,  shuchusen,  1.5,  1.5);
setEffScaleKey(  spep_10+190,  shuchusen,  1.5,  1.5);
setEffAlphaKey(  spep_10,  shuchusen,  255);
setEffAlphaKey(  spep_10+190,  shuchusen,  255);

-- 背景 --
entryFadeBg( spep_10, 0, 190, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( spep_10,  SE_10);

-- ダメージ表示
dealDamage( spep_10+86);

--entryFade( spep_10+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_10+170);

else

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
--SP_01 = 151546; --手前に突進 
------------------------------------------------------
spep_1=0;

Tossin = entryEffectLife(spep_1,SP_01x,68,0x100,-1,0,0,0); -- SP_01手前に突進

setEffAlphaKey(spep_1,Tossin,255);
setEffAlphaKey(spep_1+68,Tossin,255);
setEffScaleKey(spep_1,Tossin,1.0,1.0);
setEffScaleKey(spep_1+68,Tossin,1.0,1.0);
setEffRotateKey(spep_1,Tossin,0);
setEffRotateKey(spep_1+68,Tossin,0);

setEffShake(spep_1,Tossin,68,15);

-- 書き文字エントリー
ctZuo1 = entryEffectLife(spep_1,10012,40,0x100,-1,0,120,350); -- ズオッ

setEffShake(spep_1,ctZuo1,40,20);

setEffAlphaKey(spep_1,ctZuo1,255);
setEffAlphaKey(spep_1+30,ctZuo1,255);
setEffAlphaKey(spep_1+40,ctZuo1,0);
setEffScaleKey(spep_1,ctZuo1,0.1,0.1);
setEffScaleKey(spep_1+6,ctZuo1,2.5,2.5);
setEffScaleKey(spep_1+30,ctZuo1,2.5,2.5);
setEffScaleKey(spep_1+40,ctZuo1,6.5,6.5);
setEffRotateKey(spep_1,ctZuo1,30);
setEffRotateKey(spep_1+40,ctZuo1,30);

--集中線
shuchusen1 = entryEffectLife(spep_1,906,68,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_1,shuchusen1,0,0,0);
setEffMoveKey(spep_1+68,shuchusen1,0,0,0);
setEffScaleKey(spep_1,shuchusen1,1.0,1.0);
setEffScaleKey(spep_1+68,shuchusen1,1.0,1.0);
setEffAlphaKey(spep_1,shuchusen1,255);
setEffAlphaKey(spep_1+68,shuchusen1,255);
setEffRotateKey(spep_1,shuchusen1,0);
setEffRotateKey(spep_1+68,shuchusen1,0);

--SE
SE01 = playSe(spep_1+2,9);

--背景・ホワイトフェイド
-- 背景（黒220）
entryFadeBg( spep_1, 0, 68, 0, 10, 10, 10, 210);  -- 黒　背景
entryFade( spep_1+60, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

--------------------------------------
--回避
--------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 55;

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE01, 0 );

setMoveKey(SP_dodge,1,-900,0,0);
setScaleKey(   SP_dodge,   1, 1.5, 1.5);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,-900,0,0);
setScaleKey(   SP_dodge+8,   1, 1.5, 1.5);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
--SP_02 = 151547; --右ストレート
------------------------------------------------------
spep_2=spep_1+70;

setDisp(spep_2,1,1);

changeAnime(spep_2,1,100);
changeAnime(spep_2+31,1,108);

setMoveKey(spep_2,1,590,-150,0);
setMoveKey(spep_2+30,1,140,100,0);
setMoveKey(spep_2+31,1,140,100,0);
setMoveKey(spep_2+77,1,1040,-400,0);

setScaleKey(spep_2,1,1.2,1.2);
setScaleKey(spep_2+30,1,1.2,1.2);
setScaleKey(spep_2+31,1,1.2,1.2);
setScaleKey(spep_2+77,1,1.2,1.2);

setRotateKey(spep_2,1,0);
setRotateKey(spep_2+30,1,0);
setRotateKey(spep_2+31,1,20);
setRotateKey(spep_2+77,1,20);

setShakeChara(spep_2+31,1,46,15);

--流線
ryusen2 = entryEffectLife(spep_2, 914, 77, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2, ryusen2, 1.4, 1.4);
setEffScaleKey(spep_2+77, ryusen2, 1.4, 1.4);
setEffRotateKey(spep_2, ryusen2, 25);
setEffRotateKey(spep_2+77, ryusen2, 25);

-- SP_02右ストレート
MigiStraight = entryEffectLife(spep_2,SP_02x,77,0x100,-1,0,0,0); 

setEffAlphaKey(spep_2,MigiStraight,255);
setEffAlphaKey(spep_2+77,MigiStraight,255);
setEffScaleKey(spep_2,MigiStraight,1.0,1.0);
setEffScaleKey(spep_2+77,MigiStraight,1.0,1.0);
setEffRotateKey(spep_2,MigiStraight,0);
setEffRotateKey(spep_2+77,MigiStraight,0);

setEffShake(spep_2,MigiStraight,77,15);

--集中線
shuchusen2 = entryEffectLife(spep_2,906,77,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_2,shuchusen2,0,0,0);
setEffMoveKey(spep_2+77,shuchusen2,0,0,0);
setEffScaleKey(spep_2,shuchusen2,1.0,1.0);
setEffScaleKey(spep_2+77,shuchusen2,1.0,1.0);
setEffAlphaKey(spep_2,shuchusen2,255);
setEffAlphaKey(spep_2+77,shuchusen2,255);
setEffRotateKey(spep_2,shuchusen2,0);
setEffRotateKey(spep_2+77,shuchusen2,0);

--バキ
ctBaki = entryEffectLife( spep_2+31, 10020, 29, 0x100, -1, 0, 0, 300); -- バキ

setEffShake( spep_2+31, ctBaki, 36, 15);
setEffAlphaKey( spep_2+31, ctBaki, 255);
setEffAlphaKey( spep_2+50, ctBaki, 255);
setEffAlphaKey( spep_2+60, ctBaki, 100);
setEffScaleKey( spep_2+34, ctBaki, 1.8, 1.8);
setEffScaleKey( spep_2+39, ctBaki, 2.2,2.2);
setEffScaleKey( spep_2+44, ctBaki, 1.8, 1.8);
setEffScaleKey( spep_2+60, ctBaki, 1.8, 1.8);
setEffRotateKey( spep_2+31, ctBaki, 20);
setEffRotateKey( spep_2+32, ctBaki, 20);
setEffRotateKey( spep_2+33, ctBaki, 0);
setEffRotateKey( spep_2+34, ctBaki, 0);
setEffRotateKey( spep_2+36, ctBaki, 20);
setEffRotateKey( spep_2+60, ctBaki, 20);

--SE
playSe(spep_2,9);
playSe(spep_2+31,1010);

-- 背景（黒255）
entryFadeBg( spep_2, 0, 77, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_2+29, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_2+68, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--SP_03 = 151548; --後方から波動・手前
------------------------------------------------------
------------------------------------------------------
--SP_04 = 151549; --後方から波動・奥
------------------------------------------------------
spep_3=spep_2+78;

changeAnime(spep_3,1,108);
changeAnime(spep_3+48,1,106);

setShakeChara(spep_3,1,47,15);
setShakeChara(spep_3+48,1,56,15);

setMoveKey(spep_3,1,-900,450,0);
setMoveKey(spep_3+47,1,-100,150,0);
setMoveKey(spep_3+48,1,-100,150,0);
setMoveKey(spep_3+104,1,-900,450,0);

setScaleKey(spep_3,1,1.2,1.2);
setScaleKey(spep_3+47,1,1.2,1.2);
setScaleKey(spep_3+48,1,1.2,1.2);
setScaleKey(spep_3+104,1,1.2,1.2);
setRotateKey(spep_3,1,0);
setRotateKey(spep_3+47,1,0);
setRotateKey(spep_3+48,1,325);
setRotateKey(spep_3+53,1,325);
setRotateKey(spep_3+54,1,320);
setRotateKey(spep_3+57,1,320);
setRotateKey(spep_3+58,1,325);
setRotateKey(spep_3+61,1,325);
setRotateKey(spep_3+62,1,330);
setRotateKey(spep_3+65,1,330);
setRotateKey(spep_3+66,1,325);
setRotateKey(spep_3+69,1,325);
setRotateKey(spep_3+79,1,320);
setRotateKey(spep_3+82,1,320);
setRotateKey(spep_3+83,1,325);
setRotateKey(spep_3+86,1,325);
setRotateKey(spep_3+87,1,330);
setRotateKey(spep_3+90,1,330);
setRotateKey(spep_3+91,1,325);
setRotateKey(spep_3+94,1,325);
setRotateKey(spep_3+95,1,320);
setRotateKey(spep_3+98,1,320);
setRotateKey(spep_3+99,1,325);
setRotateKey(spep_3+100,1,325);
setRotateKey(spep_3+104,1,325);

--流線
ryusen3 = entryEffectLife(spep_3, 914, 104, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_3, ryusen3, 1.4, 1.4);
setEffScaleKey(spep_3+104, ryusen3, 1.4, 1.4);
setEffRotateKey(spep_3, ryusen3, 25);
setEffRotateKey(spep_3+104, ryusen3, 25);

-- SP_03後方から波動・手前
HadouFront = entryEffectLife(spep_3,SP_03x,104,0x100,-1,0,0,0); 

setEffAlphaKey(spep_3,HadouFront,255);
setEffAlphaKey(spep_3+104,HadouFront,255);
setEffScaleKey(spep_3,HadouFront,1.0,1.0);
setEffScaleKey(spep_3+104,HadouFront,1.0,1.0);
setEffRotateKey(spep_3,HadouFront,0);
setEffRotateKey(spep_3+104,HadouFront,0);

setEffShake(spep_3,HadouFront,104,15);

-- SP_04後方から波動・奥
HadouBehind = entryEffectLife(spep_3,SP_04x,104,0x80,-1,0,0,0); 

setEffAlphaKey(spep_3,HadouBehind,255);
setEffAlphaKey(spep_3+104,HadouBehind,255);
setEffScaleKey(spep_3,HadouBehind,1.0,1.0);
setEffScaleKey(spep_3+104,HadouBehind,1.0,1.0);
setEffRotateKey(spep_3,HadouBehind,0);
setEffRotateKey(spep_3+104,HadouBehind,0);

setEffShake(spep_3,HadouBehind,104,15);

--集中線
shuchusen3 = entryEffectLife(spep_3,906,104,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_3,shuchusen3,0,0,0);
setEffMoveKey(spep_3+104,shuchusen3,0,0,0);
setEffScaleKey(spep_3,shuchusen3,1.2,1.2);
setEffScaleKey(spep_3+104,shuchusen3,1.2,1.2);
setEffAlphaKey(spep_3,shuchusen3,255);
setEffAlphaKey(spep_3+104,shuchusen3,255);
setEffRotateKey(spep_3,shuchusen3,0);
setEffRotateKey(spep_3+104,shuchusen3,0);

--ズオッ
ctZuo3 = entryEffectLife(spep_3+52,10012,41,0x100,-1,0,120,300); -- ズオッ

setEffShake(spep_3+52,ctZuo3,41,20);

setEffAlphaKey(spep_3+52,ctZuo3,255);
setEffAlphaKey(spep_3+88,ctZuo3,255);
setEffAlphaKey(spep_3+93,ctZuo3,0);
setEffScaleKey(spep_3+52,ctZuo3,0.1,0.1);
setEffScaleKey(spep_3+61,ctZuo3,3.0,3.0);
setEffScaleKey(spep_3+88,ctZuo3,3.0,3.0);
setEffScaleKey(spep_3+93,ctZuo3,6.0,6.0);
setEffRotateKey(spep_3+52,ctZuo3,30);
setEffRotateKey(spep_3+93,ctZuo3,30);

--SE
playSe(spep_3+52,SE_06);

-- 背景（黒255）
entryFadeBg( spep_3, 0, 104, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_3+96, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--SP_05 = 151550; --上からハンマー
------------------------------------------------------
spep_4=spep_3+104;

changeAnime(spep_4+1,1,106);
changeAnime(spep_4+37,1,108);

setShakeChara(spep_4+1,1,36,15);
setShakeChara(spep_4+37,1,51,15);

setMoveKey(spep_4+1,1,1040,-400,0);
setMoveKey(spep_4+36,1,0,0,0);
setMoveKey(spep_4+37,1,0,0,0);
setMoveKey(spep_4+88,1,0,-1200,0);

setScaleKey(spep_4+1,1,1.2,1.2);
setScaleKey(spep_4+37,1,1.2,1.2);
setScaleKey(spep_4+58,1,1.2,1.2);

setRotateKey(spep_4+1,1,325);
setRotateKey(spep_4+36,1,325);
setRotateKey(spep_4+37,1,90);
setRotateKey(spep_4+58,1,90);

Hummer = entryEffectLife(spep_4,SP_05x,88,0x100,-1,0,0,0); -- SP_05上からハンマー

setEffAlphaKey(spep_4,Hummer,255);
setEffAlphaKey(spep_4+88,Hummer,255);
setEffScaleKey(spep_4,Hummer,1.0,1.0);
setEffScaleKey(spep_4+88,Hummer,1.0,1.0);
setEffRotateKey(spep_4,Hummer,0);
setEffRotateKey(spep_4+88,Hummer,0);

setEffShake(spep_4,Hummer,88,15);

--流線
ryusen4 = entryEffectLife(spep_4, 914, 88, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_4, ryusen4, 1.4, 1.4);
setEffScaleKey(spep_4+88, ryusen4, 1.4, 1.4);
setEffRotateKey(spep_4, ryusen4, 25);
setEffRotateKey(spep_4+35, ryusen4, 25);
setEffRotateKey(spep_4+36, ryusen4, 90);
setEffRotateKey(spep_4+88, ryusen4, 90);

--集中線
shuchusen4 = entryEffectLife(spep_4,906,88,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep_4,shuchusen4,0,0,0);
setEffMoveKey(spep_4+88,shuchusen4,0,0,0);
setEffScaleKey(spep_4,shuchusen4,1.2,1.2);
setEffScaleKey(spep_4+88,shuchusen4,1.2,1.2);
setEffAlphaKey(spep_4,shuchusen4,255);
setEffAlphaKey(spep_4+88,shuchusen4,255);
setEffRotateKey(spep_4,shuchusen4,0);
setEffRotateKey(spep_4+88,shuchusen4,0);

--ガッ
ctGa = entryEffectLife( spep_4+36, 10005, 24, 0, -1, 0, 50, 300); -- ガッ
setEffShake( spep_4+36, ctGa, 24, 20);
setEffRotateKey( spep_4+36, ctGa, 20);
setEffRotateKey( spep_4+60, ctGa, 20);
setEffScaleKey( spep_4+36, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+48, ctGa, 5.0, 5.0);
setEffScaleKey( spep_4+60, ctGa, 2.0, 2.0);
setEffAlphaKey( spep_4+30, ctGa, 255);
setEffAlphaKey( spep_4+50, ctGa, 255);
setEffAlphaKey( spep_4+60, ctGa, 0);

--SE
playSe(spep_4+36,1009);

-- 背景（黒255）
entryFadeBg( spep_4, 0, 88, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_4+80, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--SP_06 = 151551; --敵落下・手前
------------------------------------------------------
------------------------------------------------------
--SP_07 = 151552; --敵落下・奥
------------------------------------------------------
spep_5=spep_4+89;

--敵キャラクター
setDisp(spep_5+58,1,0);

setMoveKey(spep_5,1,0,1200,0);
setMoveKey(spep_5+20,1,0,-290,0);
setMoveKey(spep_5+58,1,0,-290,0);
setScaleKey(spep_5,1,1.2,1.2);
setScaleKey(spep_5+58,1,1.2,1.2);
setRotateKey(spep_5,1,90);
setRotateKey(spep_5+58,1,90);

setShakeChara(spep_5,1,58,20);

--流線（縦）
ryusen5 = entryEffectLife(spep_5, 914, 58, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_5, ryusen5, 1.4, 1.4);
setEffScaleKey(spep_5+58, ryusen5, 1.4, 1.4);
setEffRotateKey(spep_5, ryusen5, 90);
setEffRotateKey(spep_5+58, ryusen5, 90);

-- SP_06敵落下・手前
RakkaFront = entryEffectLife(spep_5,SP_06x,58,0x100,-1,0,0,0); 

setEffAlphaKey(spep_5,RakkaFront,255);
setEffAlphaKey(spep_5+58,RakkaFront,255);
setEffScaleKey(spep_5,RakkaFront,1.0,1.0);
setEffScaleKey(spep_5+58,RakkaFront,1.0,1.0);
setEffRotateKey(spep_5,RakkaFront,0);
setEffRotateKey(spep_5+58,RakkaFront,0);

setEffShake(spep_5,RakkaFront,58,25);

-- SP_07敵落下・奥
RakkaBehind = entryEffectLife(spep_5,SP_07x,58,0x80,-1,0,0,0); 

setEffAlphaKey(spep_5,RakkaBehind,255);
setEffAlphaKey(spep_5+58,RakkaBehind,255);
setEffScaleKey(spep_5,RakkaBehind,1.0,1.0);
setEffScaleKey(spep_5+58,RakkaBehind,1.0,1.0);
setEffRotateKey(spep_5,RakkaBehind,0);
setEffRotateKey(spep_5+58,RakkaBehind,0);

setEffShake(spep_5,RakkaBehind,58,25);

--集中線
shuchusen5 = entryEffectLife(spep_5,906,58,0x100,-1,0,0,0);

setEffMoveKey(spep_5,shuchusen5,0,0,0);
setEffMoveKey(spep_5+58,shuchusen5,0,0,0);
setEffScaleKey(spep_5,shuchusen5,1.2,1.2);
setEffScaleKey(spep_5+58,shuchusen5,1.2,1.2);
setEffAlphaKey(spep_5,shuchusen5,255);
setEffAlphaKey(spep_5+58,shuchusen5,255);
setEffRotateKey(spep_5,shuchusen5,0);
setEffRotateKey(spep_5+58,shuchusen5,0);

--SE
playSe(spep_5+20,1054);

-- 背景（黒255）
entryFadeBg( spep_5, 0, 58, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_5+50, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--SP_08 = 151553; --構え
------------------------------------------------------
spep_6=spep_5+58;

-- SP_08構え
Kamae = entryEffectLife(spep_6,SP_08x,198,0x100,-1,0,0,0); 

setEffAlphaKey(spep_6,Kamae,255);
setEffAlphaKey(spep_6+198,Kamae,255);
setEffScaleKey(spep_6,Kamae,1.0,1.0);
setEffScaleKey(spep_6+198,Kamae,1.0,1.0);
setEffRotateKey(spep_6,Kamae,0);
setEffRotateKey(spep_6+198,Kamae,0);

setEffShake(spep_6,Kamae,198,15);

--書き文字エントリー
ctgogo=entryEffectLife(spep_6+140,190006,58,0x100,-1,0,530);

setEffShake(spep_6+140,ctgogo,58,15);

setEffMoveKey(spep_6+140,ctgogo,0,530);
setEffMoveKey(spep_6+198,ctgogo,0,530);
setEffScaleKey(spep_6+140,ctgogo,-0.8,0.8);
setEffScaleKey(spep_6+198,ctgogo,-0.8,0.8);
setEffAlphaKey(spep_6+140,ctgogo,255);
setEffAlphaKey(spep_6+198,ctgogo,255);
setEffRotateKey(spep_6+140,ctgogo,0);
setEffRotateKey(spep_6+198,ctgogo,0);

--顔カットイン・セリフカットイン
--speff=entryEffect(spep_6+130,1504,0x100,-1,0,0,0);
--setEffReplaceTexture(speff,3,2);
--speff=entryEffect(spep_6+130,1505,0x100,-1,0,0,0);
--setEffReplaceTexture(speff,4,5);

--集中線
shuchusen6 = entryEffectLife(spep_6,906,198,0x100,-1,0,0,0);

setEffMoveKey(spep_6,shuchusen6,0,0,0);
setEffMoveKey(spep_6+198,shuchusen6,0,0,0);
setEffScaleKey(spep_6,shuchusen6,1.2,1.2);
setEffScaleKey(spep_6+198,shuchusen6,1.2,1.2);
setEffAlphaKey(spep_6,shuchusen6,255);
setEffAlphaKey(spep_6+198,shuchusen6,255);
setEffRotateKey(spep_6,shuchusen6,0);
setEffRotateKey(spep_6+198,shuchusen6,0);

--SE
playSe(spep_6,SE_02);
playSe(spep_6+32,SE_02);
playSe(spep_6+76,SE_02);
playSe(spep_6+86,SE_02);
playSe(spep_6+130,SE_04);

-- 背景（黒255）
entryFadeBg( spep_6, 0, 198, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_6+190, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--カードカットイン
------------------------------------------------------
spep_7=spep_6+198;

entryFadeBg( spep_7, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景
--[[
playSe( spep_7, SE_05);

speff = entryEffect(  spep_7,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    

entryFade( spep_7+80, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--SP_09 = 151554; --発射
------------------------------------------------------
spep_8=spep_7+88;

-- SP_09発射
Burst = entryEffectLife(spep_8,SP_09x,196,0x100,-1,0,0,0); 

setEffAlphaKey(spep_8,Burst,255);
setEffAlphaKey(spep_8+196,Burst,255);
setEffScaleKey(spep_8,Burst,1.0,1.0);
setEffScaleKey(spep_8+196,Burst,1.0,1.0);
setEffRotateKey(spep_8,Burst,0);
setEffRotateKey(spep_8+196,Burst,0);

setEffShake(spep_8,Burst,196,15);

-- 背景（黒255）
entryFadeBg( spep_8, 0, 196, 0, 10, 10, 10, 255);  -- 黒　背景

--集中線
shuchusen8 = entryEffectLife(spep_8,906,196,0x100,-1,0,0,0);

setEffMoveKey(spep_8,shuchusen8,0,0,0);
setEffMoveKey(spep_8+196,shuchusen8,0,0,0);
setEffScaleKey(spep_8,shuchusen8,1.2,1.2);
setEffScaleKey(spep_8+196,shuchusen8,1.2,1.2);
setEffAlphaKey(spep_8,shuchusen8,255);
setEffAlphaKey(spep_8+196,shuchusen8,255);
setEffRotateKey(spep_8,shuchusen8,0);
setEffRotateKey(spep_8+196,shuchusen8,0);

-- ズオッ
ctZuo8 = entryEffectLife(spep_8,10012,68,0x100,-1,0,-200,300); 

setEffShake(spep_8,ctZuo8,68,20);

setEffAlphaKey(spep_8,ctZuo8,255);
setEffAlphaKey(spep_8+60,ctZuo8,255);
setEffAlphaKey(spep_8+68,ctZuo8,0);
setEffScaleKey(spep_8,ctZuo8,0.1,0.1);
setEffScaleKey(spep_8+6,ctZuo8,1.5,1.5);
setEffScaleKey(spep_8+12,ctZuo8,3.5,3.5);
setEffScaleKey(spep_8+60,ctZuo8,3.5,3.5);
setEffScaleKey(spep_8+68,ctZuo8,6.5,6.5);
setEffRotateKey(spep_8,ctZuo8,-30);
setEffRotateKey(spep_8+68,ctZuo8,-30);

--SE
playSe(spep_8,SE_06);
playSe(spep_8+88,SE_06);

-- 背景（黒255）
entryFadeBg( spep_8, 0, 196, 0, 10, 10, 10, 255);  -- 黒　背景
entryFade( spep_8+190, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--ギャン
------------------------------------------------------
spep_9=spep_8+196;

gyan = entryEffect(  spep_9,  190001,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_9,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_9,  gyan,  255);

-- 書き文字エントリー --
ct6 = entryEffectLife( spep_9, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_9, ct6, 3.0, 3.0);
setEffScaleKey( spep_9+58, ct6, 4.0, 4.0);
setEffAlphaKey( spep_9, ct6, 255);
setEffAlphaKey( spep_9+58, ct6, 0);
setEffShake( spep_9, ct6, 58, 10);

playSe(  spep_9, SE_09);

entryFade(  spep_9+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--爆発
------------------------------------------------------
spep_10=spep_9+58;

bakuhatsu = entryEffect(  spep_10,  1679,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_10,  bakuhatsu,  1.0,  1.0);
setEffAlphaKey(  spep_10,  bakuhatsu,  255);
setEffAlphaKey(  spep_10+190,  bakuhatsu,  255);

shuchusen = entryEffectLife(  spep_10,  906,  200,  0x100,  -1,  0,  0,  0);  --集中線

setEffScaleKey(  spep_10,  shuchusen,  1.5,  1.5);
setEffScaleKey(  spep_10+190,  shuchusen,  1.5,  1.5);
setEffAlphaKey(  spep_10,  shuchusen,  255);
setEffAlphaKey(  spep_10+190,  shuchusen,  255);

-- 背景 --
entryFadeBg( spep_10, 0, 190, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( spep_10,  SE_10);

-- ダメージ表示
dealDamage( spep_10+86);

--entryFade( spep_10+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_10+170);

end
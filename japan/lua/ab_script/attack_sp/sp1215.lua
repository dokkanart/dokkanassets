--ボンゴ 1015340 チェーンスマッシュ
--sp_effect_b1_00055
--プライオリティとかエフェクトとか間違ってたらごめんね


fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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
SP_01=	152319	;--	殴って飛ばす
SP_02=	152320	;--	ハンマー命中

--敵側
SP_01x=	152321	;--	殴って飛ばす	(敵)
SP_02x=	152320	;--	ハンマー命中	


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);



setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
spep_0=0;

setDisp( spep_0, 0, 1);
--setDisp( spep_0+14, 0, 0);
changeAnime(spep_0,0,1);

setMoveKey(   spep_0+0,   0,    0, -16,   0);
setMoveKey(   spep_0+1,   0,    0, -16,   0);
setMoveKey(   spep_0+2,   0,    0, -16,   0);
setMoveKey(   spep_0+3,   0,    0, -16,   0);
setMoveKey(   spep_0+12,   0,    0, -16,   0);
setMoveKey(   spep_0+13,   0,    0, -16,   0);

setScaleKey(   spep_0+0,   0, 1.1, 1.1);
setScaleKey(   spep_0+1,   0, 1.1, 1.1);
setScaleKey(   spep_0+2,   0, 1.1, 1.1);
setScaleKey(   spep_0+3,   0, 1.1, 1.1);
setScaleKey(   spep_0+12,   0, 1.1, 1.1);
setScaleKey(   spep_0+13,   0, 1.1, 1.1);

setRotateKey(   spep_0+0,   0, 0);
setRotateKey(   spep_0+1,   0, 0);
setRotateKey(   spep_0+2,   0, 0);
setRotateKey(   spep_0+3,   0, 0);
setRotateKey(   spep_0+12,   0, 0);
setRotateKey(   spep_0+13,   0, 0);

spep_1=spep_0+14;
--SE
--[[
playSe( spep_0 , SE_02);
playSe( spep_0+20 , SE_02);
--playSe( spep_0+40 , SE_02);]]
------------------------------------------------------
-- 溜め
------------------------------------------------------
--spep_1=0;
--[[
--エフェクト再生
tame=entryEffectLife(spep_1,SP_01,100,0x100,-1,0,0,0);

setEffMoveKey(spep_1,tame,0,0,0);
setEffMoveKey(spep_1+100,tame,0,0,0);

setEffScaleKey(spep_1,tame,1.0,1.0);
setEffScaleKey(spep_1+100,tame,1.0,1.0);

setEffAlphaKey(spep_1,tame,255);
setEffAlphaKey(spep_1+100,tame,255);

setEffRotateKey(spep_1,tame,0);
setEffRotateKey(spep_1+100,tame,0);]]
setDisp( spep_1+100, 0, 0);

changeAnime(spep_1,0,17);

setMoveKey(   spep_1+0,   0,    0, -16,   0);
setMoveKey(   spep_1+100,   0,    0, -16,   0);

setScaleKey(   spep_1+0,   0, 1.4, 1.4);
setScaleKey(   spep_1+100,   0, 1.4, 1.4);

setRotateKey(   spep_1+0,   0, 0);
setRotateKey(   spep_1+100,   0, 0);

setShakeChara(spep_1,0,100,15);

--後ろの気
ef_ki=entryEffectLife(spep_1, 1503, 97,0x80,-1,0,0,0);   

setEffMoveKey(spep_1,ef_ki,0,0,0);
setEffMoveKey(spep_1+97,ef_ki,0,0,0);

setEffScaleKey(spep_1, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_1+97,ef_ki, 1.0, 1.0);

setEffAlphaKey(spep_1,ef_ki,255);
setEffAlphaKey(spep_1+97,ef_ki,255);

setEffRotateKey(spep_1,ef_ki,0);
setEffRotateKey(spep_1+97,ef_ki,0);

--バチバチ
ef_bati=entryEffectLife(spep_1, 1502, 97,0x100,-1,0,0,0);   

setEffMoveKey(spep_1,ef_bati,0,0,0);
setEffMoveKey(spep_1+97,ef_bati,0,0,0);

setEffScaleKey(spep_1,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_1+97,ef_bati, 1.0, 1.0);

setEffAlphaKey(spep_1,ef_bati,255);
setEffAlphaKey(spep_1+97,ef_bati,255);

setEffRotateKey(spep_1,ef_bati,0);
setEffRotateKey(spep_1+97,ef_bati,0);

--顔カットイン
speff=entryEffect(spep_1+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_1+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_1+24,190006,70,0x100,-1,-100,520);--ゴゴゴ
setEffMoveKey(spep_1+24,ctgogo,-100,520,0);
setEffMoveKey(spep_1+94,ctgogo,-100,520,0);

setEffScaleKey(spep_1+24, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_1+94, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_1 + 24, ctgogo, 0 );
setEffAlphaKey( spep_1 + 25, ctgogo, 255 );
setEffAlphaKey( spep_1 + 26, ctgogo, 255 );
setEffAlphaKey( spep_1 + 94, ctgogo, 255 );

--SE
playSe( spep_1 , SE_02);
playSe( spep_1 + 24, SE_04);

-- ** エフェクト等 ** --
entryFade(spep_1, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+100;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;

------------------------------------------------------
-- 殴る
------------------------------------------------------
--集中線
shuchusen1 = entryEffectLife( spep_3 + 28,  906, 102, 0x100, -1, 0, 159.5, 0 );

setEffMoveKey( spep_3 + 28, shuchusen1, 99.5, 0 , 0 );
setEffMoveKey( spep_3 + 130, shuchusen1, 99.5, 0 , 0 );

setEffScaleKey( spep_3 + 28, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_3 + 130, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_3 + 28, shuchusen1, 180 );
setEffRotateKey( spep_3 + 130, shuchusen1, 180 );

setEffAlphaKey( spep_3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 40, shuchusen1, 255 );

setEffAlphaKey( spep_3 + 41, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 42, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 58, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 59, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 60, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 78, shuchusen1, 255 );

setEffAlphaKey( spep_3 + 79, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 80, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 108, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 109, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 110, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 130, shuchusen1, 255 );


--流線(奥行き)
rhuusen = entryEffectLife( spep_3 + 0,  921, 128, 0x80, -1, 0, 0, 300 );

setEffMoveKey( spep_3 + 0, rhuusen, 0, 0 , 300 );
setEffMoveKey( spep_3 + 128, rhuusen, 0, 0 , 300 );

setEffScaleKey( spep_3 + 0, rhuusen, 1.8, 1.0 );
setEffScaleKey( spep_3 + 128, rhuusen, 1.8, 1.0 );

setEffRotateKey( spep_3 + 0, rhuusen, 180 );
setEffRotateKey( spep_3 + 128, rhuusen, 180 );

setEffAlphaKey( spep_3 + 0, rhuusen, 255 );
setEffAlphaKey( spep_3 + 128, rhuusen, 255 );

--エフェクト再生
punch=entryEffectLife(spep_3,SP_01,130,0x80,-1,0,0,0);

setEffMoveKey(spep_3,punch,0,0,0);
setEffMoveKey(spep_3+130,punch,0,0,0);

setEffScaleKey(spep_3,punch,1.0,1.0);
setEffScaleKey(spep_3+130,punch,1.0,1.0);

setEffAlphaKey(spep_3,punch,255);
setEffAlphaKey(spep_3+130,punch,255);

setEffRotateKey(spep_3,punch,0);
setEffRotateKey(spep_3+130,punch,0);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 48, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 + 25, 1, 107 );
changeAnime( spep_3 + 26, 1, 107 );

setMoveKey( spep_3 + 0, 1, 174.5, 9.6 , 0 );
setMoveKey( spep_3 + 2, 1, 173.3, 11.1 , 0 );
setMoveKey( spep_3 + 4, 1, 163.5, 8.1 , 0 );
setMoveKey( spep_3 + 6, 1, 162.4, 9.6 , 0 );
setMoveKey( spep_3 + 8, 1, 161.2, 11 , 0 );
setMoveKey( spep_3 + 10, 1, 151.6, 8.2 , 0 );
setMoveKey( spep_3 + 12, 1, 150.4, 9.6 , 0 );


setScaleKey( spep_3 + 0, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 2, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 4, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 8, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 10, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 12, 1, 1.37, 1.37 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 12, 1, 0 );


--黒背景
entryFadeBg(spep_3, 0, 130, 0, 0, 0, 0, 200);  -- 黒　背
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+12 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,150.4, 9.6 , 0 );
setScaleKey(SP_dodge , 1, 1.37, 1.37);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,150.4, 9.6 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.37, 1.37);
setRotateKey(SP_dodge+8,   1, 0 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,1,0.9,0.9);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);
setMoveKey(SP_dodge+10, 0, 1000 , 1000, 0);


speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------
setMoveKey( spep_3 + 14, 1, 149.1, 10.9 , 0 );
setMoveKey( spep_3 + 16, 1, 139.7, 8.3 , 0 );
setMoveKey( spep_3 + 18, 1, 138.4, 9.6 , 0 );
setMoveKey( spep_3 + 20, 1, 137, 10.9 , 0 );
setMoveKey( spep_3 + 22, 1, 127.9, 8.3 , 0 );
setMoveKey( spep_3 + 24, 1, 126.4, 9.6 , 0 );
--setMoveKey( spep_3 + 27, 1, 124.9, 10.8 , 0 );
setMoveKey( spep_3 + 25, 1, 177.4, -33.4 , 0 );
setMoveKey( spep_3 + 26, 1, 177.4, -33.4 , 0 );
setMoveKey( spep_3 + 30, 1, 237.8, -39.8 , 0 );
setMoveKey( spep_3 + 32, 1, 298.2, -46.2 , 0 );
setMoveKey( spep_3 + 34, 1, 358.5, -52.6 , 0 );
setMoveKey( spep_3 + 36, 1, 419, -59 , 0 );
setMoveKey( spep_3 + 38, 1, 479.4, -65.4 , 0 );
setMoveKey( spep_3 + 40, 1, 539.8, -71.8 , 0 );
setMoveKey( spep_3 + 42, 1, 600.2, -78.2 , 0 );
setMoveKey( spep_3 + 44, 1, 660.7, -84.6 , 0 );
setMoveKey( spep_3 + 46, 1, 721.1, -91 , 0 );
setMoveKey( spep_3 + 48, 1, 781.5, -97.4 , 0 );

setScaleKey( spep_3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 16, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 18, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 20, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 22, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 23, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 24, 1, 1.25, 1.25 );
--setScaleKey( spep_3 + 27, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 25, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 26, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 30, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 32, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 34, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 36, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 38, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 40, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 42, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 44, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 46, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 48, 1, 1.44, 1.44 );

setRotateKey( spep_3 + 24, 1, 0 );
setRotateKey( spep_3 + 25, 1, -43.4 );
setRotateKey( spep_3 + 26, 1, -43.4 );
setRotateKey( spep_3 + 30, 1, -43.5 );

--文字エントリー
ctga = entryEffectLife( spep_3 + 24,  10005, 22, 0x100, -1, 0, 58.4, 183.7 );--ガッ

setEffMoveKey( spep_3 + 24, ctga, 58.4, 183.7 , 0 );
setEffMoveKey( spep_3 + 30, ctga, 76.6, 217.8 , 0 );
setEffMoveKey( spep_3 + 32, ctga, 106.4, 241.7 , 0 );
setEffMoveKey( spep_3 + 34, ctga, 99.4, 250.2 , 0 );
setEffMoveKey( spep_3 + 36, ctga, 108.7, 244.5 , 0 );
setEffMoveKey( spep_3 + 38, ctga, 101.5, 253.2 , 0 );
setEffMoveKey( spep_3 + 40, ctga, 111, 247.4 , 0 );
setEffMoveKey( spep_3 + 42, ctga, 103.6, 256.2 , 0 );
setEffMoveKey( spep_3 + 44, ctga, 113.3, 250.2 , 0 );
setEffMoveKey( spep_3 + 46, ctga, 105.8, 259.3 , 0 );

setEffScaleKey( spep_3 + 24, ctga, 0.95, 0.95 );
setEffScaleKey( spep_3 + 30, ctga, 1.47, 1.47 );
setEffScaleKey( spep_3 + 32, ctga, 2, 2 );
setEffScaleKey( spep_3 + 34, ctga, 2.03, 2.03 );
setEffScaleKey( spep_3 + 36, ctga, 2.05, 2.05 );
setEffScaleKey( spep_3 + 38, ctga, 2.08, 2.08 );
setEffScaleKey( spep_3 + 40, ctga, 2.1, 2.1 );
setEffScaleKey( spep_3 + 42, ctga, 2.13, 2.13 );
setEffScaleKey( spep_3 + 44, ctga, 2.15, 2.15 );
setEffScaleKey( spep_3 + 46, ctga, 2.17, 2.17 );

setEffRotateKey( spep_3 + 24, ctga, 0 );
setEffRotateKey( spep_3 + 46, ctga, 0 );

setEffAlphaKey( spep_3 + 24, ctga, 0 );
setEffAlphaKey( spep_3 + 25, ctga, 255 );
setEffAlphaKey( spep_3 + 26, ctga, 255 );
setEffAlphaKey( spep_3 + 32, ctga, 255 );
setEffAlphaKey( spep_3 + 34, ctga, 222 );
setEffAlphaKey( spep_3 + 36, ctga, 189 );
setEffAlphaKey( spep_3 + 38, ctga, 157 );
setEffAlphaKey( spep_3 + 40, ctga, 124 );
setEffAlphaKey( spep_3 + 42, ctga, 91 );
setEffAlphaKey( spep_3 + 44, ctga, 58 );
setEffAlphaKey( spep_3 + 46, ctga, 26 );

--文字エントリー
ctzuo = entryEffectLife( spep_3 + 60,  10012, 38, 0x100, -1, 0, 28.4, 233.7 );--ズオッ

setEffMoveKey( spep_3 + 60, ctzuo, 28.4, 233.7 , 0 );
setEffMoveKey( spep_3 + 64, ctzuo, 66.1, 292.7 , 0 );
setEffMoveKey( spep_3 + 66, ctzuo, 98.4, 345.7 , 0 );
setEffMoveKey( spep_3 + 68, ctzuo, 103.9, 352.4 , 0 );
setEffMoveKey( spep_3 + 70, ctzuo, 99.1, 347.5 , 0 );
setEffMoveKey( spep_3 + 72, ctzuo, 104.7, 354.1 , 0 );
setEffMoveKey( spep_3 + 74, ctzuo, 99.9, 349.2 , 0 );
setEffMoveKey( spep_3 + 76, ctzuo, 105.5, 355.9 , 0 );
setEffMoveKey( spep_3 + 78, ctzuo, 100.7, 351 , 0 );
setEffMoveKey( spep_3 + 80, ctzuo, 106.2, 357.7 , 0 );
setEffMoveKey( spep_3 + 82, ctzuo, 101.3, 352.7 , 0 );
setEffMoveKey( spep_3 + 84, ctzuo, 107.1, 359.5 , 0 );
setEffMoveKey( spep_3 + 86, ctzuo, 102.1, 354.4 , 0 );
setEffMoveKey( spep_3 + 88, ctzuo, 107.8, 361.3 , 0 );
setEffMoveKey( spep_3 + 90, ctzuo, 102.9, 356.2 , 0 );
setEffMoveKey( spep_3 + 92, ctzuo, 108.6, 363.1 , 0 );
setEffMoveKey( spep_3 + 94, ctzuo, 103.6, 358 , 0 );
setEffMoveKey( spep_3 + 96, ctzuo, 109.4, 364.8 , 0 );
setEffMoveKey( spep_3 + 98, ctzuo, 104.4, 359.7 , 0 );

setEffScaleKey( spep_3 + 60, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_3 + 64, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_3 + 66, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_3 + 68, ctzuo, 2.91, 2.91 );
setEffScaleKey( spep_3 + 70, ctzuo, 2.91, 2.91 );
setEffScaleKey( spep_3 + 72, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_3 + 74, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_3 + 76, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_3 + 78, ctzuo, 2.94, 2.94 );
setEffScaleKey( spep_3 + 80, ctzuo, 2.94, 2.94 );
setEffScaleKey( spep_3 + 82, ctzuo, 2.95, 2.95 );
setEffScaleKey( spep_3 + 84, ctzuo, 2.96, 2.96 );
setEffScaleKey( spep_3 + 86, ctzuo, 2.96, 2.96 );
setEffScaleKey( spep_3 + 88, ctzuo, 2.97, 2.97 );
setEffScaleKey( spep_3 + 90, ctzuo, 2.98, 2.98 );
setEffScaleKey( spep_3 + 92, ctzuo, 2.98, 2.98 );
setEffScaleKey( spep_3 + 94, ctzuo, 2.99, 2.99 );
setEffScaleKey( spep_3 + 96, ctzuo, 2.99, 2.99 );
setEffScaleKey( spep_3 + 98, ctzuo, 3, 3 );

setEffRotateKey( spep_3 + 60, ctzuo, 0 );
setEffRotateKey( spep_3 + 98, ctzuo, 0 );

setEffAlphaKey( spep_3 + 60, ctzuo, 0 );
setEffAlphaKey( spep_3 + 61, ctzuo, 255 );
setEffAlphaKey( spep_3 + 62, ctzuo, 255 );
setEffAlphaKey( spep_3 + 90, ctzuo, 255 );
setEffAlphaKey( spep_3 + 92, ctzuo, 196 );
setEffAlphaKey( spep_3 + 94, ctzuo, 136 );
setEffAlphaKey( spep_3 + 96, ctzuo, 77 );
setEffAlphaKey( spep_3 + 98, ctzuo, 18 );

--SE
playSe( spep_3 , 8);
playSe( spep_3 + 24, 1010);
playSe( spep_3 + 62, 44);


-- ** エフェクト等 ** --
entryFade(spep_3+122,6,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+130;

------------------------------------------------------
-- 追撃
------------------------------------------------------
--エフェクト再生
hit=entryEffectLife(spep_4,SP_02,70,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit,0,0,0);
setEffMoveKey(spep_4+70,hit,0,0,0);

setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+70,hit,1.0,1.0);

setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+70,hit,255);

setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+70,hit,0);

--流線(奥行き)
rhuusen2 = entryEffectLife( spep_4 + 0,  921, 70, 0x80, -1, 0, 0, 200 );

setEffMoveKey( spep_4 + 0, rhuusen2, 0, 0 , 200 );
setEffMoveKey( spep_4 + 70, rhuusen2, 0, 0 , 200 );

setEffScaleKey( spep_4 + 0, rhuusen2, 1, 1 );
setEffScaleKey( spep_4 + 70, rhuusen2, 1, 1 );

setEffRotateKey( spep_4 + 0, rhuusen2, 0 );
setEffRotateKey( spep_4 + 70, rhuusen2, 0 );

setEffAlphaKey( spep_4 + 0, rhuusen2, 255 );
setEffAlphaKey( spep_4 + 70, rhuusen2, 255 );



--集中線
shuchusen2 = entryEffectLife( spep_4 + 38,  906, 24, 0x100, -1, 0, 158.6, 0 );

setEffMoveKey( spep_4 + 38, shuchusen2, 158.6, 0 , 0 )
setEffMoveKey( spep_4 + 60, shuchusen2, 158.6, 0 , 0 );

setEffScaleKey( spep_4 + 38, shuchusen2, 1.26, 1.26 );
setEffScaleKey( spep_4 + 60, shuchusen2, 1.26, 1.26 );

setEffRotateKey( spep_4 + 38, shuchusen2, 180 );
setEffRotateKey( spep_4 + 60, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 38, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 40, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 41, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 42, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 60, shuchusen2, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_4 + 38,  10021, 32, 0x100, -1, 0, 80.9, 230.3 );--バゴォッ

setEffMoveKey( spep_4 + 38, ctbago, 80.9, 230.3 , 0 );
setEffMoveKey( spep_4 + 44, ctbago, 81.9, 266.8 , 0 );
setEffMoveKey( spep_4 + 46, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 48, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 50, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 52, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 54, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 56, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 58, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 60, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 62, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 64, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 66, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 68, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 70, ctbago, 73.9, 312.3 , 0 );
--setEffMoveKey( spep_4 + 72, ctbago, 80.1, 306.1 , 0 );
--setEffMoveKey( spep_4 + 74, ctbago, 73.9, 312.3 , 0 );
--setEffMoveKey( spep_4 + 76, ctbago, 80.1, 306.1 , 0 );
--setEffMoveKey( spep_4 + 78, ctbago, 73.9, 312.3 , 0 );

setEffScaleKey( spep_4 + 38, ctbago, 1, 1 );
setEffScaleKey( spep_4 + 44, ctbago, 1.62, 1.62 );
setEffScaleKey( spep_4 + 46, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_4 + 70, ctbago, 2.23, 2.23 );

setEffRotateKey( spep_4 + 38, ctbago, 0 );
setEffRotateKey( spep_4 + 70, ctbago, 0 );

setEffAlphaKey( spep_4 + 38, ctbago, 0);
setEffAlphaKey( spep_4 + 39, ctbago, 255 );
setEffAlphaKey( spep_4 + 40, ctbago, 255 );
setEffAlphaKey( spep_4 + 70, ctbago, 255 );


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 + 41, 1, 108 );
changeAnime( spep_4 + 42, 1, 108 );

setMoveKey( spep_4 + 0, 1, -853.5, 8.9 , 0 );
setMoveKey( spep_4 + 2, 1, -663.5, 24 , 0 );
setMoveKey( spep_4 + 4, 1, -461.1, -6.5 , 0 );
setMoveKey( spep_4 + 6, 1, -261.8, 8.2 , 0 );
setMoveKey( spep_4 + 8, 1, -69.1, 17.7 , 0 );
setMoveKey( spep_4 + 10, 1, -53.2, -2.7 , 0 );
setMoveKey( spep_4 + 12, 1, -38.8, 7.5 , 0 );
setMoveKey( spep_4 + 14, 1, -30, 15.7 , 0 );
setMoveKey( spep_4 + 16, 1, -14.3, -2.5 , 0 );
setMoveKey( spep_4 + 18, 1, -0.2, 6.5 , 0 );
setMoveKey( spep_4 + 20, 1, 9, 13.9 , 0 );
setMoveKey( spep_4 + 22, 1, 24.3, -2.3 , 0 );
setMoveKey( spep_4 + 24, 1, 38.4, 5.5 , 0 );
setMoveKey( spep_4 + 26, 1, 37.1, 12.5 , 0 );
setMoveKey( spep_4 + 28, 1, 41.2, -2.1 , 0 );
setMoveKey( spep_4 + 30, 1, 44.3, 5.5 , 0 );
setMoveKey( spep_4 + 32, 1, 43, 12.4 , 0 );
setMoveKey( spep_4 + 34, 1, 47.2, -1.8 , 0 );
setMoveKey( spep_4 + 36, 1, 50.1, 5.6 , 0 );
setMoveKey( spep_4 + 38, 1, 49.1, 12.1 , 0 );
setMoveKey( spep_4 + 40, 1, 53.1, -1.6 , 0 );
setMoveKey( spep_4 + 41, 1, 56.1, 5.6 , 0 );
setMoveKey( spep_4 + 42, 1, 62.5, 0.8 , 0 );
setMoveKey( spep_4 + 46, 1, 116.3, -4.5 , 0 );
setMoveKey( spep_4 + 48, 1, 115.8, -6.8 , 0 );
setMoveKey( spep_4 + 50, 1, 119.6, -10 , 0 );
setMoveKey( spep_4 + 52, 1, 118.6, -14.3 , 0 );
setMoveKey( spep_4 + 54, 1, 127.1, -10 , 0 );
setMoveKey( spep_4 + 56, 1, 142.5, -10.7 , 0 );
setMoveKey( spep_4 + 58, 1, 158.8, -9.6 , 0 );
setMoveKey( spep_4 + 60, 1, 167.4, -8.5 , 0 );
setMoveKey( spep_4 + 62, 1, 182.6, -9.1 , 0 );
setMoveKey( spep_4 + 64, 1, 198.5, -8 , 0 );
setMoveKey( spep_4 + 66, 1, 207.8, -7.1 , 0 );
setMoveKey( spep_4 + 68, 1, 222.7, -7.4 , 0 );

setScaleKey( spep_4 + 0, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 2, 1, 2.4, 2.4 );
setScaleKey( spep_4 + 4, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 6, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 8, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 10, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 12, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 22, 1, 1.15, 1.15 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 32, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 34, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 36, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 38, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 40, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 41, 1, 1, 1 );
setScaleKey( spep_4 + 42, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 46, 1, 1.61, 1.61 );
setScaleKey( spep_4 + 48, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 50, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 52, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 54, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 58, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 60, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 62, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 64, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 66, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 68, 1, 0.6, 0.6 );

setRotateKey( spep_4 + 0, 1, -52.9 );
setRotateKey( spep_4 + 40, 1, -52.9 );
setRotateKey( spep_4 + 41, 1, -52.9 );
setRotateKey( spep_4 + 42, 1, 0 );
setRotateKey( spep_4 + 46, 1, -19.2 );
setRotateKey( spep_4 + 48, 1, 16.2 );
setRotateKey( spep_4 + 50, 1, -13.4 );
setRotateKey( spep_4 + 52, 1, 21.7 );
setRotateKey( spep_4 + 54, 1, -9.4 );
setRotateKey( spep_4 + 56, 1, -10 );
setRotateKey( spep_4 + 58, 1, -10.5 );
setRotateKey( spep_4 + 60, 1, -11 );
setRotateKey( spep_4 + 62, 1, -11.6 );
setRotateKey( spep_4 + 64, 1, -12.1 );
setRotateKey( spep_4 + 66, 1, -12.7 );
setRotateKey( spep_4 + 68, 1, -13.2 );

--SE
playSe( spep_4+38 , 1011);
playSe( spep_4, 44);

--黒背景
entryFadeBg(spep_4, 0, 70, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+60,8,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+70;

------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_5+ 0, 1, 1 );

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+110, ct, 0);

playSe( spep_5+14, SE_11);
shuchusen = entryEffectLife( spep_5+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+106);


else 
------------------------------------------------------
--敵側
------------------------------------------------------
spep_0=0;

setDisp( spep_0, 0, 1);
--setDisp( spep_0+14, 0, 0);
changeAnime(spep_0,0,1);

setMoveKey(   spep_0+0,   0,    0, -16,   0);
setMoveKey(   spep_0+1,   0,    0, -16,   0);
setMoveKey(   spep_0+2,   0,    0, -16,   0);
setMoveKey(   spep_0+3,   0,    0, -16,   0);
setMoveKey(   spep_0+12,   0,    0, -16,   0);
setMoveKey(   spep_0+13,   0,    0, -16,   0);

setScaleKey(   spep_0+0,   0, 1.1, 1.1);
setScaleKey(   spep_0+1,   0, 1.1, 1.1);
setScaleKey(   spep_0+2,   0, 1.1, 1.1);
setScaleKey(   spep_0+3,   0, 1.1, 1.1);
setScaleKey(   spep_0+12,   0, 1.1, 1.1);
setScaleKey(   spep_0+13,   0, 1.1, 1.1);

setRotateKey(   spep_0+0,   0, 0);
setRotateKey(   spep_0+1,   0, 0);
setRotateKey(   spep_0+2,   0, 0);
setRotateKey(   spep_0+3,   0, 0);
setRotateKey(   spep_0+12,   0, 0);
setRotateKey(   spep_0+13,   0, 0);

spep_1=spep_0+14;
--SE
--[[
playSe( spep_0 , SE_02);
playSe( spep_0+20 , SE_02);
--playSe( spep_0+40 , SE_02);]]
------------------------------------------------------
-- 溜め
------------------------------------------------------
--spep_1=0;
--[[
--エフェクト再生
tame=entryEffectLife(spep_1,SP_01,100,0x100,-1,0,0,0);

setEffMoveKey(spep_1,tame,0,0,0);
setEffMoveKey(spep_1+100,tame,0,0,0);

setEffScaleKey(spep_1,tame,1.0,1.0);
setEffScaleKey(spep_1+100,tame,1.0,1.0);

setEffAlphaKey(spep_1,tame,255);
setEffAlphaKey(spep_1+100,tame,255);

setEffRotateKey(spep_1,tame,0);
setEffRotateKey(spep_1+100,tame,0);]]
setDisp( spep_1+100, 0, 0);

changeAnime(spep_1,0,17);

setMoveKey(   spep_1+0,   0,    0, -16,   0);
setMoveKey(   spep_1+100,   0,    0, -16,   0);

setScaleKey(   spep_1+0,   0, 1.4, 1.4);
setScaleKey(   spep_1+100,   0, 1.4, 1.4);

setRotateKey(   spep_1+0,   0, 0);
setRotateKey(   spep_1+100,   0, 0);

setShakeChara(spep_1,0,100,15);

--後ろの気
ef_ki=entryEffectLife(spep_1, 1503, 97,0x80,-1,0,0,0);   

setEffMoveKey(spep_1,ef_ki,0,0,0);
setEffMoveKey(spep_1+97,ef_ki,0,0,0);

setEffScaleKey(spep_1, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_1+97,ef_ki, 1.0, 1.0);

setEffAlphaKey(spep_1,ef_ki,255);
setEffAlphaKey(spep_1+97,ef_ki,255);

setEffRotateKey(spep_1,ef_ki,0);
setEffRotateKey(spep_1+97,ef_ki,0);

--バチバチ
ef_bati=entryEffectLife(spep_1, 1502, 97,0x100,-1,0,0,0);   

setEffMoveKey(spep_1,ef_bati,0,0,0);
setEffMoveKey(spep_1+97,ef_bati,0,0,0);

setEffScaleKey(spep_1,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_1+97,ef_bati, 1.0, 1.0);

setEffAlphaKey(spep_1,ef_bati,255);
setEffAlphaKey(spep_1+97,ef_bati,255);

setEffRotateKey(spep_1,ef_bati,0);
setEffRotateKey(spep_1+97,ef_bati,0);

--顔カットイン
--speff=entryEffect(spep_1+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_1+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_1+24,190006,70,0x100,-1,-100,520);--ゴゴゴ
setEffMoveKey(spep_1+24,ctgogo,-100,520,0);
setEffMoveKey(spep_1+94,ctgogo,-100,520,0);

setEffScaleKey(spep_1+24, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_1+94, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_1 + 24, ctgogo, 0 );
setEffAlphaKey( spep_1 + 25, ctgogo, 255 );
setEffAlphaKey( spep_1 + 26, ctgogo, 255 );
setEffAlphaKey( spep_1 + 94, ctgogo, 255 );

--SE
playSe( spep_1 , SE_02);
playSe( spep_1 + 24, SE_04);

-- ** エフェクト等 ** --
entryFade(spep_1, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+100;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;

------------------------------------------------------
-- 殴る
------------------------------------------------------
--集中線
shuchusen1 = entryEffectLife( spep_3 + 28,  906, 102, 0x100, -1, 0, 159.5, 0 );

setEffMoveKey( spep_3 + 28, shuchusen1, 99.5, 0 , 0 );
setEffMoveKey( spep_3 + 130, shuchusen1, 99.5, 0 , 0 );

setEffScaleKey( spep_3 + 28, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_3 + 130, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_3 + 28, shuchusen1, 180 );
setEffRotateKey( spep_3 + 130, shuchusen1, 180 );

setEffAlphaKey( spep_3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 40, shuchusen1, 255 );

setEffAlphaKey( spep_3 + 41, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 42, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 58, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 59, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 60, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 78, shuchusen1, 255 );

setEffAlphaKey( spep_3 + 79, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 80, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 108, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 109, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 110, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 130, shuchusen1, 255 );


--流線(奥行き)
rhuusen = entryEffectLife( spep_3 + 0,  921, 128, 0x80, -1, 0, 0, 300 );

setEffMoveKey( spep_3 + 0, rhuusen, 0, 0 , 300 );
setEffMoveKey( spep_3 + 128, rhuusen, 0, 0 , 300 );

setEffScaleKey( spep_3 + 0, rhuusen, 1.8, 1.0 );
setEffScaleKey( spep_3 + 128, rhuusen, 1.8, 1.0 );

setEffRotateKey( spep_3 + 0, rhuusen, 180 );
setEffRotateKey( spep_3 + 128, rhuusen, 180 );

setEffAlphaKey( spep_3 + 0, rhuusen, 255 );
setEffAlphaKey( spep_3 + 128, rhuusen, 255 );

--エフェクト再生
punch=entryEffectLife(spep_3,SP_01x,130,0x80,-1,0,0,0);

setEffMoveKey(spep_3,punch,0,0,0);
setEffMoveKey(spep_3+130,punch,0,0,0);

setEffScaleKey(spep_3,punch,1.0,1.0);
setEffScaleKey(spep_3+130,punch,1.0,1.0);

setEffAlphaKey(spep_3,punch,255);
setEffAlphaKey(spep_3+130,punch,255);

setEffRotateKey(spep_3,punch,0);
setEffRotateKey(spep_3+130,punch,0);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 48, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 + 25, 1, 107 );
changeAnime( spep_3 + 26, 1, 107 );

setMoveKey( spep_3 + 0, 1, 174.5, 9.6 , 0 );
setMoveKey( spep_3 + 2, 1, 173.3, 11.1 , 0 );
setMoveKey( spep_3 + 4, 1, 163.5, 8.1 , 0 );
setMoveKey( spep_3 + 6, 1, 162.4, 9.6 , 0 );
setMoveKey( spep_3 + 8, 1, 161.2, 11 , 0 );
setMoveKey( spep_3 + 10, 1, 151.6, 8.2 , 0 );
setMoveKey( spep_3 + 12, 1, 150.4, 9.6 , 0 );


setScaleKey( spep_3 + 0, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 2, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 4, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 8, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 10, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 12, 1, 1.37, 1.37 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 12, 1, 0 );


--黒背景
entryFadeBg(spep_3, 0, 130, 0, 0, 0, 0, 200);  -- 黒　背
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+12 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,150.4, 9.6 , 0 );
setScaleKey(SP_dodge , 1, 1.37, 1.37);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,150.4, 9.6 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.37, 1.37);
setRotateKey(SP_dodge+8,   1, 0 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,1,0.9,0.9);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);
setMoveKey(SP_dodge+10, 0, 1000 , 1000, 0);


speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------
setMoveKey( spep_3 + 14, 1, 149.1, 10.9 , 0 );
setMoveKey( spep_3 + 16, 1, 139.7, 8.3 , 0 );
setMoveKey( spep_3 + 18, 1, 138.4, 9.6 , 0 );
setMoveKey( spep_3 + 20, 1, 137, 10.9 , 0 );
setMoveKey( spep_3 + 22, 1, 127.9, 8.3 , 0 );
setMoveKey( spep_3 + 24, 1, 126.4, 9.6 , 0 );
--setMoveKey( spep_3 + 27, 1, 124.9, 10.8 , 0 );
setMoveKey( spep_3 + 25, 1, 177.4, -33.4 , 0 );
setMoveKey( spep_3 + 26, 1, 177.4, -33.4 , 0 );
setMoveKey( spep_3 + 30, 1, 237.8, -39.8 , 0 );
setMoveKey( spep_3 + 32, 1, 298.2, -46.2 , 0 );
setMoveKey( spep_3 + 34, 1, 358.5, -52.6 , 0 );
setMoveKey( spep_3 + 36, 1, 419, -59 , 0 );
setMoveKey( spep_3 + 38, 1, 479.4, -65.4 , 0 );
setMoveKey( spep_3 + 40, 1, 539.8, -71.8 , 0 );
setMoveKey( spep_3 + 42, 1, 600.2, -78.2 , 0 );
setMoveKey( spep_3 + 44, 1, 660.7, -84.6 , 0 );
setMoveKey( spep_3 + 46, 1, 721.1, -91 , 0 );
setMoveKey( spep_3 + 48, 1, 781.5, -97.4 , 0 );

setScaleKey( spep_3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 16, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 18, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 20, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 22, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 23, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 24, 1, 1.25, 1.25 );
--setScaleKey( spep_3 + 27, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 25, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 26, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 30, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 32, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 34, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 36, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 38, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 40, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 42, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 44, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 46, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 48, 1, 1.44, 1.44 );

setRotateKey( spep_3 + 24, 1, 0 );
setRotateKey( spep_3 + 25, 1, -43.4 );
setRotateKey( spep_3 + 26, 1, -43.4 );
setRotateKey( spep_3 + 30, 1, -43.5 );

--文字エントリー
ctga = entryEffectLife( spep_3 + 24,  10005, 22, 0x100, -1, 0, 58.4, 183.7 );--ガッ

setEffMoveKey( spep_3 + 24, ctga, 58.4, 183.7 , 0 );
setEffMoveKey( spep_3 + 30, ctga, 76.6, 217.8 , 0 );
setEffMoveKey( spep_3 + 32, ctga, 106.4, 241.7 , 0 );
setEffMoveKey( spep_3 + 34, ctga, 99.4, 250.2 , 0 );
setEffMoveKey( spep_3 + 36, ctga, 108.7, 244.5 , 0 );
setEffMoveKey( spep_3 + 38, ctga, 101.5, 253.2 , 0 );
setEffMoveKey( spep_3 + 40, ctga, 111, 247.4 , 0 );
setEffMoveKey( spep_3 + 42, ctga, 103.6, 256.2 , 0 );
setEffMoveKey( spep_3 + 44, ctga, 113.3, 250.2 , 0 );
setEffMoveKey( spep_3 + 46, ctga, 105.8, 259.3 , 0 );

setEffScaleKey( spep_3 + 24, ctga, 0.95, 0.95 );
setEffScaleKey( spep_3 + 30, ctga, 1.47, 1.47 );
setEffScaleKey( spep_3 + 32, ctga, 2, 2 );
setEffScaleKey( spep_3 + 34, ctga, 2.03, 2.03 );
setEffScaleKey( spep_3 + 36, ctga, 2.05, 2.05 );
setEffScaleKey( spep_3 + 38, ctga, 2.08, 2.08 );
setEffScaleKey( spep_3 + 40, ctga, 2.1, 2.1 );
setEffScaleKey( spep_3 + 42, ctga, 2.13, 2.13 );
setEffScaleKey( spep_3 + 44, ctga, 2.15, 2.15 );
setEffScaleKey( spep_3 + 46, ctga, 2.17, 2.17 );

setEffRotateKey( spep_3 + 24, ctga, 0 );
setEffRotateKey( spep_3 + 46, ctga, 0 );

setEffAlphaKey( spep_3 + 24, ctga, 0 );
setEffAlphaKey( spep_3 + 25, ctga, 255 );
setEffAlphaKey( spep_3 + 26, ctga, 255 );
setEffAlphaKey( spep_3 + 32, ctga, 255 );
setEffAlphaKey( spep_3 + 34, ctga, 222 );
setEffAlphaKey( spep_3 + 36, ctga, 189 );
setEffAlphaKey( spep_3 + 38, ctga, 157 );
setEffAlphaKey( spep_3 + 40, ctga, 124 );
setEffAlphaKey( spep_3 + 42, ctga, 91 );
setEffAlphaKey( spep_3 + 44, ctga, 58 );
setEffAlphaKey( spep_3 + 46, ctga, 26 );

--文字エントリー
ctzuo = entryEffectLife( spep_3 + 60,  10012, 38, 0x100, -1, 0, 28.4, 233.7 );--ズオッ

setEffMoveKey( spep_3 + 60, ctzuo, 28.4, 233.7 , 0 );
setEffMoveKey( spep_3 + 64, ctzuo, 66.1, 292.7 , 0 );
setEffMoveKey( spep_3 + 66, ctzuo, 98.4, 345.7 , 0 );
setEffMoveKey( spep_3 + 68, ctzuo, 103.9, 352.4 , 0 );
setEffMoveKey( spep_3 + 70, ctzuo, 99.1, 347.5 , 0 );
setEffMoveKey( spep_3 + 72, ctzuo, 104.7, 354.1 , 0 );
setEffMoveKey( spep_3 + 74, ctzuo, 99.9, 349.2 , 0 );
setEffMoveKey( spep_3 + 76, ctzuo, 105.5, 355.9 , 0 );
setEffMoveKey( spep_3 + 78, ctzuo, 100.7, 351 , 0 );
setEffMoveKey( spep_3 + 80, ctzuo, 106.2, 357.7 , 0 );
setEffMoveKey( spep_3 + 82, ctzuo, 101.3, 352.7 , 0 );
setEffMoveKey( spep_3 + 84, ctzuo, 107.1, 359.5 , 0 );
setEffMoveKey( spep_3 + 86, ctzuo, 102.1, 354.4 , 0 );
setEffMoveKey( spep_3 + 88, ctzuo, 107.8, 361.3 , 0 );
setEffMoveKey( spep_3 + 90, ctzuo, 102.9, 356.2 , 0 );
setEffMoveKey( spep_3 + 92, ctzuo, 108.6, 363.1 , 0 );
setEffMoveKey( spep_3 + 94, ctzuo, 103.6, 358 , 0 );
setEffMoveKey( spep_3 + 96, ctzuo, 109.4, 364.8 , 0 );
setEffMoveKey( spep_3 + 98, ctzuo, 104.4, 359.7 , 0 );

setEffScaleKey( spep_3 + 60, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_3 + 64, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_3 + 66, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_3 + 68, ctzuo, 2.91, 2.91 );
setEffScaleKey( spep_3 + 70, ctzuo, 2.91, 2.91 );
setEffScaleKey( spep_3 + 72, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_3 + 74, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_3 + 76, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_3 + 78, ctzuo, 2.94, 2.94 );
setEffScaleKey( spep_3 + 80, ctzuo, 2.94, 2.94 );
setEffScaleKey( spep_3 + 82, ctzuo, 2.95, 2.95 );
setEffScaleKey( spep_3 + 84, ctzuo, 2.96, 2.96 );
setEffScaleKey( spep_3 + 86, ctzuo, 2.96, 2.96 );
setEffScaleKey( spep_3 + 88, ctzuo, 2.97, 2.97 );
setEffScaleKey( spep_3 + 90, ctzuo, 2.98, 2.98 );
setEffScaleKey( spep_3 + 92, ctzuo, 2.98, 2.98 );
setEffScaleKey( spep_3 + 94, ctzuo, 2.99, 2.99 );
setEffScaleKey( spep_3 + 96, ctzuo, 2.99, 2.99 );
setEffScaleKey( spep_3 + 98, ctzuo, 3, 3 );

setEffRotateKey( spep_3 + 60, ctzuo, 0 );
setEffRotateKey( spep_3 + 98, ctzuo, 0 );

setEffAlphaKey( spep_3 + 60, ctzuo, 0 );
setEffAlphaKey( spep_3 + 61, ctzuo, 255 );
setEffAlphaKey( spep_3 + 62, ctzuo, 255 );
setEffAlphaKey( spep_3 + 90, ctzuo, 255 );
setEffAlphaKey( spep_3 + 92, ctzuo, 196 );
setEffAlphaKey( spep_3 + 94, ctzuo, 136 );
setEffAlphaKey( spep_3 + 96, ctzuo, 77 );
setEffAlphaKey( spep_3 + 98, ctzuo, 18 );

--SE
playSe( spep_3 , 8);
playSe( spep_3 + 24, 1010);
playSe( spep_3 + 62, 44);


-- ** エフェクト等 ** --
entryFade(spep_3+122,6,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+130;

------------------------------------------------------
-- 追撃
------------------------------------------------------
--エフェクト再生
hit=entryEffectLife(spep_4,SP_02x,70,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit,0,0,0);
setEffMoveKey(spep_4+70,hit,0,0,0);

setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+70,hit,1.0,1.0);

setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+70,hit,255);

setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+70,hit,0);

--流線(奥行き)
rhuusen2 = entryEffectLife( spep_4 + 0,  921, 70, 0x80, -1, 0, 0, 200 );

setEffMoveKey( spep_4 + 0, rhuusen2, 0, 0 , 200 );
setEffMoveKey( spep_4 + 70, rhuusen2, 0, 0 , 200 );

setEffScaleKey( spep_4 + 0, rhuusen2, 1, 1 );
setEffScaleKey( spep_4 + 70, rhuusen2, 1, 1 );

setEffRotateKey( spep_4 + 0, rhuusen2, 0 );
setEffRotateKey( spep_4 + 70, rhuusen2, 0 );

setEffAlphaKey( spep_4 + 0, rhuusen2, 255 );
setEffAlphaKey( spep_4 + 70, rhuusen2, 255 );


--集中線
shuchusen2 = entryEffectLife( spep_4 + 38,  906, 24, 0x100, -1, 0, 158.6, 0 );

setEffMoveKey( spep_4 + 38, shuchusen2, 158.6, 0 , 0 )
setEffMoveKey( spep_4 + 60, shuchusen2, 158.6, 0 , 0 );

setEffScaleKey( spep_4 + 38, shuchusen2, 1.26, 1.26 );
setEffScaleKey( spep_4 + 60, shuchusen2, 1.26, 1.26 );

setEffRotateKey( spep_4 + 38, shuchusen2, 180 );
setEffRotateKey( spep_4 + 60, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 38, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 40, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 41, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 42, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 60, shuchusen2, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_4 + 38,  10021, 32, 0x100, -1, 0, 80.9, 230.3 );--バゴォッ

setEffMoveKey( spep_4 + 38, ctbago, 80.9, 230.3 , 0 );
setEffMoveKey( spep_4 + 44, ctbago, 81.9, 266.8 , 0 );
setEffMoveKey( spep_4 + 46, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 48, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 50, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 52, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 54, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 56, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 58, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 60, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 62, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 64, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 66, ctbago, 73.9, 312.3 , 0 );
setEffMoveKey( spep_4 + 68, ctbago, 80.1, 306.1 , 0 );
setEffMoveKey( spep_4 + 70, ctbago, 73.9, 312.3 , 0 );
--setEffMoveKey( spep_4 + 72, ctbago, 80.1, 306.1 , 0 );
--setEffMoveKey( spep_4 + 74, ctbago, 73.9, 312.3 , 0 );
--setEffMoveKey( spep_4 + 76, ctbago, 80.1, 306.1 , 0 );
--setEffMoveKey( spep_4 + 78, ctbago, 73.9, 312.3 , 0 );

setEffScaleKey( spep_4 + 38, ctbago, 1, 1 );
setEffScaleKey( spep_4 + 44, ctbago, 1.62, 1.62 );
setEffScaleKey( spep_4 + 46, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_4 + 70, ctbago, 2.23, 2.23 );

setEffRotateKey( spep_4 + 38, ctbago, 0 );
setEffRotateKey( spep_4 + 70, ctbago, 0 );

setEffAlphaKey( spep_4 + 38, ctbago, 0);
setEffAlphaKey( spep_4 + 39, ctbago, 255 );
setEffAlphaKey( spep_4 + 40, ctbago, 255 );
setEffAlphaKey( spep_4 + 70, ctbago, 255 );


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 + 41, 1, 108 );
changeAnime( spep_4 + 42, 1, 108 );

setMoveKey( spep_4 + 0, 1, -853.5, 8.9 , 0 );
setMoveKey( spep_4 + 2, 1, -663.5, 24 , 0 );
setMoveKey( spep_4 + 4, 1, -461.1, -6.5 , 0 );
setMoveKey( spep_4 + 6, 1, -261.8, 8.2 , 0 );
setMoveKey( spep_4 + 8, 1, -69.1, 17.7 , 0 );
setMoveKey( spep_4 + 10, 1, -53.2, -2.7 , 0 );
setMoveKey( spep_4 + 12, 1, -38.8, 7.5 , 0 );
setMoveKey( spep_4 + 14, 1, -30, 15.7 , 0 );
setMoveKey( spep_4 + 16, 1, -14.3, -2.5 , 0 );
setMoveKey( spep_4 + 18, 1, -0.2, 6.5 , 0 );
setMoveKey( spep_4 + 20, 1, 9, 13.9 , 0 );
setMoveKey( spep_4 + 22, 1, 24.3, -2.3 , 0 );
setMoveKey( spep_4 + 24, 1, 38.4, 5.5 , 0 );
setMoveKey( spep_4 + 26, 1, 37.1, 12.5 , 0 );
setMoveKey( spep_4 + 28, 1, 41.2, -2.1 , 0 );
setMoveKey( spep_4 + 30, 1, 44.3, 5.5 , 0 );
setMoveKey( spep_4 + 32, 1, 43, 12.4 , 0 );
setMoveKey( spep_4 + 34, 1, 47.2, -1.8 , 0 );
setMoveKey( spep_4 + 36, 1, 50.1, 5.6 , 0 );
setMoveKey( spep_4 + 38, 1, 49.1, 12.1 , 0 );
setMoveKey( spep_4 + 40, 1, 53.1, -1.6 , 0 );
setMoveKey( spep_4 + 41, 1, 56.1, 5.6 , 0 );
setMoveKey( spep_4 + 42, 1, 62.5, 0.8 , 0 );
setMoveKey( spep_4 + 46, 1, 116.3, -4.5 , 0 );
setMoveKey( spep_4 + 48, 1, 115.8, -6.8 , 0 );
setMoveKey( spep_4 + 50, 1, 119.6, -10 , 0 );
setMoveKey( spep_4 + 52, 1, 118.6, -14.3 , 0 );
setMoveKey( spep_4 + 54, 1, 127.1, -10 , 0 );
setMoveKey( spep_4 + 56, 1, 142.5, -10.7 , 0 );
setMoveKey( spep_4 + 58, 1, 158.8, -9.6 , 0 );
setMoveKey( spep_4 + 60, 1, 167.4, -8.5 , 0 );
setMoveKey( spep_4 + 62, 1, 182.6, -9.1 , 0 );
setMoveKey( spep_4 + 64, 1, 198.5, -8 , 0 );
setMoveKey( spep_4 + 66, 1, 207.8, -7.1 , 0 );
setMoveKey( spep_4 + 68, 1, 222.7, -7.4 , 0 );

setScaleKey( spep_4 + 0, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 2, 1, 2.4, 2.4 );
setScaleKey( spep_4 + 4, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 6, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 8, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 10, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 12, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 22, 1, 1.15, 1.15 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 32, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 34, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 36, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 38, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 40, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 41, 1, 1, 1 );
setScaleKey( spep_4 + 42, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 46, 1, 1.61, 1.61 );
setScaleKey( spep_4 + 48, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 50, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 52, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 54, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 58, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 60, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 62, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 64, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 66, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 68, 1, 0.6, 0.6 );

setRotateKey( spep_4 + 0, 1, -52.9 );
setRotateKey( spep_4 + 40, 1, -52.9 );
setRotateKey( spep_4 + 41, 1, -52.9 );
setRotateKey( spep_4 + 42, 1, 0 );
setRotateKey( spep_4 + 46, 1, -19.2 );
setRotateKey( spep_4 + 48, 1, 16.2 );
setRotateKey( spep_4 + 50, 1, -13.4 );
setRotateKey( spep_4 + 52, 1, 21.7 );
setRotateKey( spep_4 + 54, 1, -9.4 );
setRotateKey( spep_4 + 56, 1, -10 );
setRotateKey( spep_4 + 58, 1, -10.5 );
setRotateKey( spep_4 + 60, 1, -11 );
setRotateKey( spep_4 + 62, 1, -11.6 );
setRotateKey( spep_4 + 64, 1, -12.1 );
setRotateKey( spep_4 + 66, 1, -12.7 );
setRotateKey( spep_4 + 68, 1, -13.2 );



--SE
playSe( spep_4+38 , 1011);
playSe( spep_4, 44);

--黒背景
entryFadeBg(spep_4, 0, 70, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+60,8,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+70;

------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_5+ 0, 1, 1 );

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+110, ct, 0);

playSe( spep_5+14, SE_11);
shuchusen = entryEffectLife( spep_5+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+106);




end





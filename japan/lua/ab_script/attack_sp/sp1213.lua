--孫悟空(少年期)
--sp_effect_b4_00073

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
SP_01=	152257	;--	突進
SP_02=	152258	;--	振りかぶり
SP_03=	152259	;--	棒で叩く
SP_04=	152260	;--	グー、チョキ
SP_05=	152261	;--	パー


--敵側
SP_01x= 152262	;--	棒で叩く(敵)
SP_02x= 152263	;--	グー、チョキ(敵)


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

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進 90f
------------------------------------------------------
spep_0=0;

--突進ef
toshi = entryEffectLife( spep_0, SP_01, 90, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_0, toshi, 0, 0, 0);
setEffScaleKey( spep_0, toshi, 1.0, 1.0);
setEffRotateKey( spep_0, toshi, 0);
setEffAlphaKey( spep_0, toshi, 255);

setEffMoveKey( spep_0+90, toshi, 0, 0, 0);
setEffScaleKey( spep_0+90, toshi, 1.0, 1.0);
setEffRotateKey( spep_0+90, toshi, 0);
setEffAlphaKey( spep_0+90, toshi, 255);

--顔カットイン・セリフカットイン
spkao = entryEffectLife(  spep_0+4, 1504, 86, 0x100, -1, 0, 0, 0, 0);
setEffReplaceTexture(  spkao, 3, 2);

spserifu = entryEffectLife(  spep_0+4, 1505, 86, 0x100, -1, 0, 0, 0, 0);
setEffReplaceTexture(  spserifu, 4, 5);

--ゴゴゴゴ
ctgogo = entryEffectLife( spep_0+18, 190006, 72, 0x100, -1, 0, 50, 510, 0);

setEffMoveKey( spep_0+18, ctgogo, 50, 510, 0);
setEffScaleKey( spep_0+18, ctgogo, 0.5, 0.5);
setEffRotateKey( spep_0+18, ctgogo, 0);
setEffAlphaKey( spep_0+18, ctgogo, 255);

setEffScaleKey( spep_0+86, ctgogo, 0.5, 0.5);
setEffAlphaKey( spep_0+86, ctgogo, 255);

setEffMoveKey( spep_0+90, ctgogo, 50, 510, 0);
setEffScaleKey( spep_0+90, ctgogo, 4.0, 4.0);
setEffRotateKey( spep_0+90, ctgogo, 0);
setEffAlphaKey( spep_0+90, ctgogo, 0);

setEffShake( spep_0+18, ctgogo, 72, 8);

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 90, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_0, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5);
setEffRotateKey( spep_0, shuchusen1, 0);
setEffAlphaKey( spep_0, shuchusen1, 255);

setEffMoveKey( spep_0+90, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0+90, shuchusen1, 1.5, 1.5);
setEffRotateKey( spep_0+90, shuchusen1, 0);
setEffAlphaKey( spep_0+90, shuchusen1, 255);

--白フェード
entryFade( spep_0+86, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);

--薄暗背景
entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 200);

--SE
playSe( spep_0+12, SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_1=spep_0+90;

--カード
spcard = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0, 0);   
setEffReplaceTexture( spcard, 1, 1);
setEffReplaceTexture( spcard, 2, 0);-- カード差し替え
setEffReplaceTexture( spcard, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade( spep_1+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);

--集中線
shuchusenc = entryEffectLife( spep_1, 906, 80, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_1, shuchusenc, 0, 0, 0);
setEffScaleKey( spep_1, shuchusenc, 1.5, 1.5);
setEffRotateKey( spep_1, shuchusenc, 0);
setEffAlphaKey( spep_1, shuchusenc, 255);

setEffMoveKey( spep_1+90, shuchusenc, 0, 0, 0);
setEffScaleKey( spep_1+90, shuchusenc, 1.5, 1.5);
setEffRotateKey( spep_1+90, shuchusenc, 0);
setEffAlphaKey( spep_1+90, shuchusenc, 255);

--SE
playSe( spep_1, SE_05);

------------------------------------------------------
-- 振りかぶり 80f
------------------------------------------------------
spep_2=spep_1+90;

--振りかぶりef
huri = entryEffectLife( spep_2, SP_02, 78, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_2, huri, 0, 0, 0);
setEffScaleKey( spep_2, huri, 1.0, 1.0);
setEffRotateKey( spep_2, huri, 0);
setEffAlphaKey( spep_2, huri, 255);

setEffMoveKey( spep_2+78, huri, 0, 0, 0);
setEffScaleKey( spep_2+78, huri, 1.0, 1.0);
setEffRotateKey( spep_2+78, huri, 0);
setEffAlphaKey( spep_2+78, huri, 255);

--集中線
shuchusen2 = entryEffectLife( spep_2, 906, 80, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffRotateKey( spep_2, shuchusen2, 0);
setEffAlphaKey( spep_2, shuchusen2, 255);

setEffMoveKey( spep_2+80, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2+80, shuchusen2, 1.5, 1.5);
setEffRotateKey( spep_2+80, shuchusen2, 0);
setEffAlphaKey( spep_2+80, shuchusen2, 255);

--白フェード
entryFade( spep_2+70, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--薄暗背景
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 200);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speffyoke = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speffyoke, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

--SE
playSe( spep_2+46, 1003);

------------------------------------------------------
-- 棒で叩く 60f
------------------------------------------------------
spep_3=spep_2+80;

--敵キャラ
setDisp( spep_3, 1, 1);
setDisp( spep_3+58, 1, 0);
changeAnime( spep_3, 1, 106);--仰け反り

setMoveKey( spep_3 + 0, 1, 121.6, -0.7 , 0 );
setMoveKey( spep_3 + 2, 1, 152.2, 1.2 , 0 );
setMoveKey( spep_3 + 4, 1, 167.4, 7.8 , 0 );
setMoveKey( spep_3 + 6, 1, 165.3, -18.4 , 0 );
setMoveKey( spep_3 + 8, 1, 173.5, -28.4 , 0 );
setMoveKey( spep_3 + 10, 1, 167.9, -26.9 , 0 );
setMoveKey( spep_3 + 12, 1, 175, -49.3 , 0 );
setMoveKey( spep_3 + 14, 1, 194.3, -40 , 0 );
setMoveKey( spep_3 + 16, 1, 187.3, -45.6 , 0 );
setMoveKey( spep_3 + 18, 1, 193.3, -38.4 , 0 );
setMoveKey( spep_3 + 20, 1, 209.2, -53.2 , 0 );
setMoveKey( spep_3 + 22, 1, 220.7, -40.2 , 0 );
setMoveKey( spep_3 + 24, 1, 213.6, -55.7 , 0 );
setMoveKey( spep_3 + 26, 1, 226.2, -42.6 , 0 );
setMoveKey( spep_3 + 28, 1, 236.3, -54.9 , 0 );
setMoveKey( spep_3 + 30, 1, 242.1, -48.2 , 0 );
setMoveKey( spep_3 + 32, 1, 234.4, -58.4 , 0 );
setMoveKey( spep_3 + 34, 1, 237.2, -42 , 0 );
setMoveKey( spep_3 + 36, 1, 241.1, -59.2 , 0 );
setMoveKey( spep_3 + 38, 1, 251.2, -49.4 , 0 );
setMoveKey( spep_3 + 40, 1, 240.1, -57.3 , 0 );
setMoveKey( spep_3 + 42, 1, 242.2, -46.2 , 0 );
setMoveKey( spep_3 + 44, 1, 250, -60.4 , 0 );
setMoveKey( spep_3 + 46, 1, 257, -48.5 , 0 );
setMoveKey( spep_3 + 48, 1, 245.3, -61.2 , 0 );
setMoveKey( spep_3 + 50, 1, 250.9, -47.3 , 0 );
setMoveKey( spep_3 + 52, 1, 255.8, -59.8 , 0 );
setMoveKey( spep_3 + 54, 1, 262.3, -52.1 , 0 );
setMoveKey( spep_3 + 56, 1, 253.7, -62.4 , 0 );
setMoveKey( spep_3 + 58, 1, 254.7, -61.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 2, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 4, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 6, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 8, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 14, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 16, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 20, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 22, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 24, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 26, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 28, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 30, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 32, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 34, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 36, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 38, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 40, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 42, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 44, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 46, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 48, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 50, 1, 0.32, 0.32 );
setScaleKey( spep_3 + 52, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 54, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 56, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 58, 1, 0.27, 0.27 );

setRotateKey( spep_3 + 0, 1, -54.2 );
setRotateKey( spep_3 + 2, 1, -49.3 );
setRotateKey( spep_3 + 4, 1, -44.4 );
setRotateKey( spep_3 + 6, 1, -36.6 );
setRotateKey( spep_3 + 8, 1, -28.7 );
setRotateKey( spep_3 + 10, 1, -20.8 );
setRotateKey( spep_3 + 58, 1, -20.8 );

--棒で叩くef
tataku = entryEffectLife( spep_3, SP_03, 60, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3, tataku, 0, 0, 0);
setEffScaleKey( spep_3, tataku, 1.0, 1.0);
setEffRotateKey( spep_3, tataku, 0);
setEffAlphaKey( spep_3, tataku, 255);

setEffMoveKey( spep_3+60, tataku, 0, 0, 0);
setEffScaleKey( spep_3+60, tataku, 1.0, 1.0);
setEffRotateKey( spep_3+60, tataku, 0);
setEffAlphaKey( spep_3+60, tataku, 255);

--バゴォッ
ctbago = entryEffectLife(  spep_3+8, 10021, 48, 0x100, -1, 0, 50, 350, 0);

setEffMoveKey( spep_3+8, ctbago, 50, 350, 0);
setEffScaleKey( spep_3+8, ctbago, 0, 0);
setEffRotateKey( spep_3+8, ctbago, 0);
setEffAlphaKey( spep_3+8, ctbago, 255);

setEffScaleKey( spep_3+12, ctbago, 2.0, 2.0);

setEffMoveKey( spep_3+56, ctbago, 50, 350, 0);
setEffScaleKey( spep_3+56, ctbago, 2.0, 2.0);
setEffRotateKey( spep_3+56, ctbago, 0);
setEffAlphaKey( spep_3+56, ctbago, 255);

setEffShake( spep_3+12, ctbago, 48, 8);

--集中線
shuchusen3 = entryEffectLife( spep_3, 906, 12, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.75, 1.75);
setEffRotateKey( spep_3, shuchusen3, 0);
setEffAlphaKey( spep_3, shuchusen3, 255);

setEffMoveKey( spep_3+12, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3+12, shuchusen3, 1.5, 1.5);
setEffRotateKey( spep_3+12, shuchusen3, 0);
setEffAlphaKey( spep_3+12, shuchusen3, 255);

--斜め流線
ryusen1 = entryEffectLife( spep_3+12, 921, 48, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3+12, ryusen1, 0, 0, 0);
setEffScaleKey( spep_3+12, ryusen1, 1.0, 1,0);
setEffRotateKey( spep_3+12, ryusen1, 0);
setEffAlphaKey( spep_3+12, ryusen1, 255);

setEffMoveKey( spep_3+60, ryusen1, 0, 0, 0);
setEffScaleKey( spep_3+60, ryusen1, 1.0, 1.0);
setEffRotateKey( spep_3+60, ryusen1, 0);
setEffAlphaKey( spep_3+60, ryusen1, 255);

--白フェード
entryFade( spep_3+54, 4, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

--黒背景
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 255);

--SE
playSe( spep_3, 1009);

------------------------------------------------------
-- グー、チョキ 114f
------------------------------------------------------
spep_4=spep_3+60;

--敵キャラ
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 108);--くの字
changeAnime( spep_4 + 64, 1, 106);--仰け反り

setMoveKey( spep_4, 1, -100, 10, 0);
setMoveKey( spep_4 + 10, 1, -10, 10, 0);
setMoveKey( spep_4 + 11, 1, 100, 10, 0);
setMoveKey( spep_4 + 10, 1, 100, 10, 0);
setMoveKey( spep_4 + 74, 1, 100, 10, 0);
setMoveKey( spep_4 + 86, 1, 150, 10, 0);
setMoveKey( spep_4 + 114, 1, 150, 10, 0);

setScaleKey( spep_4, 1, 1.0, 1.0);
setScaleKey( spep_4 + 10, 1, 1.0, 1.0);
setScaleKey( spep_4 + 11, 1, 1.5, 1.5);
setScaleKey( spep_4 + 12, 1, 1.5, 1.5);
setScaleKey( spep_4 + 16, 1, 1.0, 1.0);
setScaleKey( spep_4 + 60, 1, 1.0, 1.0);
setScaleKey( spep_4 + 60, 1, 1.0, 1.0);
setScaleKey( spep_4 + 61, 1, 1.5, 1.5);
setScaleKey( spep_4 + 64, 1, 1.5, 1.5);
setScaleKey( spep_4 + 66, 1, 1.0, 1.0);
setScaleKey( spep_4 + 74, 1, 1.0, 1.0);
setScaleKey( spep_4 + 114, 1, 1.0, 1.0);

setRotateKey( spep_4, 1, -10);
setRotateKey( spep_4 + 12, 1, -10);
setRotateKey( spep_4 + 14, 1, 10);
setRotateKey( spep_4 + 62, 1, 10);
setRotateKey( spep_4 + 64, 1, -30);
setRotateKey( spep_4 + 114, 1, -30);

setShakeChara( spep_4, 1, 114, 8);

--グー、チョキef
gucho = entryEffectLife( spep_4, SP_04, 114, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_4, gucho, 0, 0, 0);
setEffScaleKey( spep_4, gucho, 1.0, 1.0);
setEffRotateKey( spep_4, gucho, 0);
setEffAlphaKey( spep_4, gucho, 255);

setEffMoveKey( spep_4+114, gucho, 0, 0, 0);
setEffScaleKey( spep_4+114, gucho, 1.0, 1.0);
setEffRotateKey( spep_4+114, gucho, 0);
setEffAlphaKey( spep_4+114, gucho, 255);

--グー
ctgu = entryEffectLife( spep_4+8, 10038, 32, 0x100, -1, 0, 0, 300, 0);

setEffMoveKey( spep_4+8, ctgu, 0, 300, 0);
setEffScaleKey( spep_4+8, ctgu, 0, 0);
setEffRotateKey( spep_4+8, ctgu, 0);
setEffAlphaKey( spep_4+8, ctgu, 255);

setEffScaleKey( spep_4+10, ctgu, 2.0, 2.0);
setEffScaleKey( spep_4+36, ctgu, 2.0, 2.0);
setEffAlphaKey( spep_4+36, ctgu, 255);

setEffMoveKey( spep_4+40, ctgu, 0, 300, 0);
setEffScaleKey( spep_4+40, ctgu, 3.0, 3.0);
setEffRotateKey( spep_4+40, ctgu, 0);
setEffAlphaKey( spep_4+40, ctgu, 0);

setEffShake( spep_4+8, ctgu, 32, 8);

--チョキ
ctchoki = entryEffectLife( spep_4+60, 10039, 38, 0x100, -1, 0, 0, 300, 0);

setEffMoveKey( spep_4+60, ctchoki, 0, 300, 0);
setEffScaleKey( spep_4+60, ctchoki, 0, 0);
setEffRotateKey( spep_4+60, ctchoki, 0);
setEffAlphaKey( spep_4+60, ctchoki, 255);

setEffScaleKey( spep_4+62, ctchoki, 2.0, 2.0);
setEffScaleKey( spep_4+90, ctchoki, 2.0, 2.0);
setEffAlphaKey( spep_4+90, ctchoki, 255);

setEffMoveKey( spep_4+98, ctchoki, 0, 300, 0);
setEffScaleKey( spep_4+98, ctchoki, 3.0, 3.0);
setEffRotateKey( spep_4+98, ctchoki, 0);
setEffAlphaKey( spep_4+98, ctchoki, 0);

setEffShake( spep_4+60, ctchoki, 38, 8);

--横流線
ryusen2 = entryEffectLife( spep_4, 920, 114, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_4, ryusen2, 0, 0, 0);
setEffScaleKey( spep_4, ryusen2, 1.0, 1.0);
setEffRotateKey( spep_4, ryusen2, 0);
setEffAlphaKey( spep_4, ryusen2, 255);

setEffMoveKey( spep_4+114, ryusen2, 0, 0, 0);
setEffScaleKey( spep_4+114, ryusen2, 1.0, 1.0);
setEffRotateKey( spep_4+114, ryusen2, 0);
setEffAlphaKey( spep_4+114, ryusen2, 255);

--集中線
shuchusen4 = entryEffectLife( spep_4+8, 906, 90, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_4+8, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4+8, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_4+8, shuchusen4, 0);
setEffAlphaKey( spep_4+8, shuchusen4, 255);

setEffAlphaKey( spep_4+40, shuchusen4, 255);
setEffAlphaKey( spep_4+42, shuchusen4, 0);
setEffAlphaKey( spep_4+58, shuchusen4, 0);
setEffAlphaKey( spep_4+60, shuchusen4, 255);

setEffMoveKey( spep_4+98, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4+98, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_4+98, shuchusen4, 0);
setEffAlphaKey( spep_4+98, shuchusen4, 255);

--白フェード
entryFade( spep_4+106, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--黒背景
entryFadeBg( spep_4, 0, 114, 0, 0, 0, 0, 255);

--SE
playSe( spep_4+10, 1000);
playSe( spep_4+60, 1006);

------------------------------------------------------
-- パー 90f
------------------------------------------------------
spep_5=spep_4+114;

--敵消す
setDisp( spep_5, 1, 0);

--集中線
shuchusen4 = entryEffectLife( spep_5+54, 906, 32, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_5+54, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_5+54, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_5+54, shuchusen4, 0);
setEffAlphaKey( spep_5+54, shuchusen4, 255);

setEffMoveKey( spep_5+86, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_5+86, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_5+86, shuchusen4, 0);
setEffAlphaKey( spep_5+86, shuchusen4, 255);

--パーef
pa = entryEffectLife( spep_5, SP_05, 86, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_5, pa, 0, 0, 0);
setEffScaleKey( spep_5, pa, 1.0, 1.0);
setEffRotateKey( spep_5, pa, 0);
setEffAlphaKey( spep_5, pa, 255);

setEffMoveKey( spep_5+86, pa, 0, 0, 0);
setEffScaleKey( spep_5+86, pa, 1.0, 1.0);
setEffRotateKey( spep_5+86, pa, 0);
setEffAlphaKey( spep_5+86, pa, 255);

--パー
ctpa = entryEffectLife( spep_5+12, 10040, 42, 0x100, -1, 0, 0, 330, 0);

setEffMoveKey( spep_5+12, ctpa, 0, 330, 0);
setEffScaleKey( spep_5+12, ctpa, 0, 0);
setEffRotateKey( spep_5+12, ctpa, 0);
setEffAlphaKey( spep_5+12, ctpa, 255);

setEffScaleKey( spep_5+18, ctpa, 2.0, 2.0);

setEffMoveKey( spep_5+54, ctpa, 0, 330, 0);
setEffScaleKey( spep_5+54, ctpa, 2.0, 2.0);
setEffRotateKey( spep_5+54, ctpa, 0);
setEffAlphaKey( spep_5+54, ctpa, 255);

setEffShake( spep_5+12, ctpa, 42, 8);

--集中線
shuchusen4 = entryEffectLife( spep_5, 906, 60, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_5, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_5, shuchusen4, 0);
setEffAlphaKey( spep_5, shuchusen4, 255);

setEffMoveKey( spep_5+60, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_5+60, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_5+60, shuchusen4, 0);
setEffAlphaKey( spep_5+60, shuchusen4, 255);

--薄暗背景
entryFadeBg( spep_5, 0, 84, 0, 0, 0, 0, 200);

--SE
playSe( spep_5, SE_04);
playSe( spep_5+54, 1010);

------------------------------------------------------
-- 爆発
------------------------------------------------------
spep_6=spep_5+86;

--敵の動き--
setDisp( spep_6, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 36.2, -4.9 , 0 );
setMoveKey( spep_6 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_6 + 112, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 112, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 2, 1, 105 );
setRotateKey( spep_6 + 4, 1, 240 );
setRotateKey( spep_6 + 6, 1, 405 );
setRotateKey( spep_6 + 8, 1, 600 );
setRotateKey( spep_6 + 10, 1, 825 );
setRotateKey( spep_6 + 12, 1, 1080 );
setRotateKey( spep_6 + 112, 1, 1080 );

--爆発エフェクト
entryEffect( spep_6, 1509,  0x80,  -1,  0,  0,  0);

setDamage( spep_6 + 16, 1, 0);
setShake(spep_6 + 8,6,15);
setShake(spep_6 + 14,15,10);

--ガッ
ctGa = entryEffectLife( spep_6 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_6 + 14, ctGa, 20, 10);

setEffMoveKey( spep_6 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 112, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 16, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 17, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 18, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 19, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 20, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 112, ctGa, 4.0, 4.0 );

setEffRotateKey( spep_6 + 14, ctGa, -30 );
setEffRotateKey( spep_6 + 16, ctGa,   0 );
setEffRotateKey( spep_6 + 18, ctGa, -30 );
setEffRotateKey( spep_6 + 20, ctGa,   0 );
setEffRotateKey( spep_6 + 22, ctGa, -30 );
setEffRotateKey( spep_6 + 24, ctGa,   0 );
setEffRotateKey( spep_6 + 26, ctGa, -30 );
setEffRotateKey( spep_6 + 28, ctGa,   0 );
setEffRotateKey( spep_6 + 30, ctGa, -30 );
setEffRotateKey( spep_6 + 112, ctGa, -30 );

setEffAlphaKey( spep_6 + 14, ctGa, 255 );
setEffAlphaKey( spep_6 + 112, ctGa, 255 );

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_6+14, 1657, 120, 0x80,  -1,  0,  0,  0);

--集中線（白）
shuchusensiro = entryEffectLife( spep_6+14, 906, 120, 0x80,  -1,  0,  0,  0);

--ひび割れ
hibi = entryEffect( spep_6+4, 1600,  0x00,  -1,  0,  30, -130);

--SE
playSe( spep_6, SE_10);
playSe( spep_6+4, SE_11);

-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+100, 9,  10,  1,  8,  8,  8, 255);
endPhase( spep_6+110);

else



------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進 90f
------------------------------------------------------
spep_0=0;

--突進ef
toshi = entryEffectLife( spep_0, SP_01, 90, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_0, toshi, 0, 0, 0);
setEffScaleKey( spep_0, toshi, -1.0, 1.0);
setEffRotateKey( spep_0, toshi, 0);
setEffAlphaKey( spep_0, toshi, 255);

setEffMoveKey( spep_0+90, toshi, 0, 0, 0);
setEffScaleKey( spep_0+90, toshi, -1.0, 1.0);
setEffRotateKey( spep_0+90, toshi, 0);
setEffAlphaKey( spep_0+90, toshi, 255);

--顔カットイン・セリフカットイン
--spkao = entryEffectLife(  spep_0+4, 1504, 86, 0x100, -1, 0, 0, 0, 0);
--setEffReplaceTexture(  spkao, 3, 2);

--spserifu = entryEffectLife(  spep_0+4, 1505, 86, 0x100, -1, 0, 0, 0, 0);
--setEffReplaceTexture(  spserifu, 4, 5);

--ゴゴゴゴ
ctgogo = entryEffectLife( spep_0+18, 190006, 72, 0x100, -1, 0, 50, 510, 0);

setEffMoveKey( spep_0+18, ctgogo, 50, 510, 0);
setEffScaleKey( spep_0+18, ctgogo, -0.5, 0.5);
setEffRotateKey( spep_0+18, ctgogo, 0);
setEffAlphaKey( spep_0+18, ctgogo, 255);

setEffScaleKey( spep_0+86, ctgogo, -0.5, 0.5);
setEffAlphaKey( spep_0+86, ctgogo, 255);

setEffMoveKey( spep_0+90, ctgogo, 50, 510, 0);
setEffScaleKey( spep_0+90, ctgogo, -4.0, 4.0);
setEffRotateKey( spep_0+90, ctgogo, 0);
setEffAlphaKey( spep_0+90, ctgogo, 0);

setEffShake( spep_0+18, ctgogo, 72, 8);

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 90, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_0, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5);
setEffRotateKey( spep_0, shuchusen1, 0);
setEffAlphaKey( spep_0, shuchusen1, 255);

setEffMoveKey( spep_0+90, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0+90, shuchusen1, 1.5, 1.5);
setEffRotateKey( spep_0+90, shuchusen1, 0);
setEffAlphaKey( spep_0+90, shuchusen1, 255);

--白フェード
entryFade( spep_0+86, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);

--薄暗背景
entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 200);

--SE
playSe( spep_0+12, SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_1=spep_0+90;

--カード
spcard = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0, 0);   
setEffReplaceTexture( spcard, 1, 1);
setEffReplaceTexture( spcard, 2, 0);-- カード差し替え
setEffReplaceTexture( spcard, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade( spep_1+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);

--集中線
shuchusenc = entryEffectLife( spep_1, 906, 80, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_1, shuchusenc, 0, 0, 0);
setEffScaleKey( spep_1, shuchusenc, 1.5, 1.5);
setEffRotateKey( spep_1, shuchusenc, 0);
setEffAlphaKey( spep_1, shuchusenc, 255);

setEffMoveKey( spep_1+90, shuchusenc, 0, 0, 0);
setEffScaleKey( spep_1+90, shuchusenc, 1.5, 1.5);
setEffRotateKey( spep_1+90, shuchusenc, 0);
setEffAlphaKey( spep_1+90, shuchusenc, 255);

--SE
playSe( spep_1, SE_05);

------------------------------------------------------
-- 振りかぶり 80f
------------------------------------------------------
spep_2=spep_1+90;

--振りかぶりef
huri = entryEffectLife( spep_2, SP_02, 78, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_2, huri, 0, 0, 0);
setEffScaleKey( spep_2, huri, -1.0, 1.0);
setEffRotateKey( spep_2, huri, 0);
setEffAlphaKey( spep_2, huri, 255);

setEffMoveKey( spep_2+78, huri, 0, 0, 0);
setEffScaleKey( spep_2+78, huri, -1.0, 1.0);
setEffRotateKey( spep_2+78, huri, 0);
setEffAlphaKey( spep_2+78, huri, 255);

--集中線
shuchusen2 = entryEffectLife( spep_2, 906, 80, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffRotateKey( spep_2, shuchusen2, 0);
setEffAlphaKey( spep_2, shuchusen2, 255);

setEffMoveKey( spep_2+80, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2+80, shuchusen2, 1.5, 1.5);
setEffRotateKey( spep_2+80, shuchusen2, 0);
setEffAlphaKey( spep_2+80, shuchusen2, 255);

--白フェード
entryFade( spep_2+70, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--薄暗背景
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 200);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speffyoke = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speffyoke, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

--SE
playSe( spep_2+46, 1003);

------------------------------------------------------
-- 棒で叩く 60f
------------------------------------------------------
spep_3=spep_2+80;

--敵キャラ
setDisp( spep_3, 1, 1);
setDisp( spep_3+58, 1, 0);
changeAnime( spep_3, 1, 106);--仰け反り

setMoveKey( spep_3 + 0, 1, 121.6, -0.7 , 0 );
setMoveKey( spep_3 + 2, 1, 152.2, 1.2 , 0 );
setMoveKey( spep_3 + 4, 1, 167.4, 7.8 , 0 );
setMoveKey( spep_3 + 6, 1, 165.3, -18.4 , 0 );
setMoveKey( spep_3 + 8, 1, 173.5, -28.4 , 0 );
setMoveKey( spep_3 + 10, 1, 167.9, -26.9 , 0 );
setMoveKey( spep_3 + 12, 1, 175, -49.3 , 0 );
setMoveKey( spep_3 + 14, 1, 194.3, -40 , 0 );
setMoveKey( spep_3 + 16, 1, 187.3, -45.6 , 0 );
setMoveKey( spep_3 + 18, 1, 193.3, -38.4 , 0 );
setMoveKey( spep_3 + 20, 1, 209.2, -53.2 , 0 );
setMoveKey( spep_3 + 22, 1, 220.7, -40.2 , 0 );
setMoveKey( spep_3 + 24, 1, 213.6, -55.7 , 0 );
setMoveKey( spep_3 + 26, 1, 226.2, -42.6 , 0 );
setMoveKey( spep_3 + 28, 1, 236.3, -54.9 , 0 );
setMoveKey( spep_3 + 30, 1, 242.1, -48.2 , 0 );
setMoveKey( spep_3 + 32, 1, 234.4, -58.4 , 0 );
setMoveKey( spep_3 + 34, 1, 237.2, -42 , 0 );
setMoveKey( spep_3 + 36, 1, 241.1, -59.2 , 0 );
setMoveKey( spep_3 + 38, 1, 251.2, -49.4 , 0 );
setMoveKey( spep_3 + 40, 1, 240.1, -57.3 , 0 );
setMoveKey( spep_3 + 42, 1, 242.2, -46.2 , 0 );
setMoveKey( spep_3 + 44, 1, 250, -60.4 , 0 );
setMoveKey( spep_3 + 46, 1, 257, -48.5 , 0 );
setMoveKey( spep_3 + 48, 1, 245.3, -61.2 , 0 );
setMoveKey( spep_3 + 50, 1, 250.9, -47.3 , 0 );
setMoveKey( spep_3 + 52, 1, 255.8, -59.8 , 0 );
setMoveKey( spep_3 + 54, 1, 262.3, -52.1 , 0 );
setMoveKey( spep_3 + 56, 1, 253.7, -62.4 , 0 );
setMoveKey( spep_3 + 58, 1, 254.7, -61.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 2, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 4, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 6, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 8, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 14, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 16, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 20, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 22, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 24, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 26, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 28, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 30, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 32, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 34, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 36, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 38, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 40, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 42, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 44, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 46, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 48, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 50, 1, 0.32, 0.32 );
setScaleKey( spep_3 + 52, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 54, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 56, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 58, 1, 0.27, 0.27 );

setRotateKey( spep_3 + 0, 1, -54.2 );
setRotateKey( spep_3 + 2, 1, -49.3 );
setRotateKey( spep_3 + 4, 1, -44.4 );
setRotateKey( spep_3 + 6, 1, -36.6 );
setRotateKey( spep_3 + 8, 1, -28.7 );
setRotateKey( spep_3 + 10, 1, -20.8 );
setRotateKey( spep_3 + 58, 1, -20.8 );

--棒で叩くef
tataku = entryEffectLife( spep_3, SP_01x, 60, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3, tataku, 0, 0, 0);
setEffScaleKey( spep_3, tataku, 1.0, 1.0);
setEffRotateKey( spep_3, tataku, 0);
setEffAlphaKey( spep_3, tataku, 255);

setEffMoveKey( spep_3+60, tataku, 0, 0, 0);
setEffScaleKey( spep_3+60, tataku, 1.0, 1.0);
setEffRotateKey( spep_3+60, tataku, 0);
setEffAlphaKey( spep_3+60, tataku, 255);

--バゴォッ
ctbago = entryEffectLife(  spep_3+8, 10021, 48, 0x100, -1, 0, 50, 350, 0);

setEffMoveKey( spep_3+8, ctbago, 50, 350, 0);
setEffScaleKey( spep_3+8, ctbago, 0, 0);
setEffRotateKey( spep_3+8, ctbago, 0);
setEffAlphaKey( spep_3+8, ctbago, 255);

setEffScaleKey( spep_3+12, ctbago, 2.0, 2.0);

setEffMoveKey( spep_3+56, ctbago, 50, 350, 0);
setEffScaleKey( spep_3+56, ctbago, 2.0, 2.0);
setEffRotateKey( spep_3+56, ctbago, 0);
setEffAlphaKey( spep_3+56, ctbago, 255);

setEffShake( spep_3+12, ctbago, 48, 8);

--集中線
shuchusen3 = entryEffectLife( spep_3, 906, 12, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.75, 1.75);
setEffRotateKey( spep_3, shuchusen3, 0);
setEffAlphaKey( spep_3, shuchusen3, 255);

setEffMoveKey( spep_3+12, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3+12, shuchusen3, 1.5, 1.5);
setEffRotateKey( spep_3+12, shuchusen3, 0);
setEffAlphaKey( spep_3+12, shuchusen3, 255);

--斜め流線
ryusen1 = entryEffectLife( spep_3+12, 921, 48, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3+12, ryusen1, 0, 0, 0);
setEffScaleKey( spep_3+12, ryusen1, 1.0, 1,0);
setEffRotateKey( spep_3+12, ryusen1, 0);
setEffAlphaKey( spep_3+12, ryusen1, 255);

setEffMoveKey( spep_3+60, ryusen1, 0, 0, 0);
setEffScaleKey( spep_3+60, ryusen1, 1.0, 1.0);
setEffRotateKey( spep_3+60, ryusen1, 0);
setEffAlphaKey( spep_3+60, ryusen1, 255);

--白フェード
entryFade( spep_3+54, 4, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

--黒背景
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 255);

--SE
playSe( spep_3, 1009);

------------------------------------------------------
-- グー、チョキ 114f
------------------------------------------------------
spep_4=spep_3+60;

--敵キャラ
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 108);--くの字
changeAnime( spep_4 + 64, 1, 106);--仰け反り

setMoveKey( spep_4, 1, -100, 10, 0);
setMoveKey( spep_4 + 10, 1, -10, 10, 0);
setMoveKey( spep_4 + 11, 1, 100, 10, 0);
setMoveKey( spep_4 + 10, 1, 100, 10, 0);
setMoveKey( spep_4 + 74, 1, 100, 10, 0);
setMoveKey( spep_4 + 86, 1, 150, 10, 0);
setMoveKey( spep_4 + 114, 1, 150, 10, 0);

setScaleKey( spep_4, 1, 1.0, 1.0);
setScaleKey( spep_4 + 10, 1, 1.0, 1.0);
setScaleKey( spep_4 + 11, 1, 1.5, 1.5);
setScaleKey( spep_4 + 12, 1, 1.5, 1.5);
setScaleKey( spep_4 + 16, 1, 1.0, 1.0);
setScaleKey( spep_4 + 60, 1, 1.0, 1.0);
setScaleKey( spep_4 + 60, 1, 1.0, 1.0);
setScaleKey( spep_4 + 61, 1, 1.5, 1.5);
setScaleKey( spep_4 + 64, 1, 1.5, 1.5);
setScaleKey( spep_4 + 66, 1, 1.0, 1.0);
setScaleKey( spep_4 + 74, 1, 1.0, 1.0);
setScaleKey( spep_4 + 114, 1, 1.0, 1.0);

setRotateKey( spep_4, 1, -10);
setRotateKey( spep_4 + 12, 1, -10);
setRotateKey( spep_4 + 14, 1, 10);
setRotateKey( spep_4 + 62, 1, 10);
setRotateKey( spep_4 + 64, 1, -30);
setRotateKey( spep_4 + 114, 1, -30);

setShakeChara( spep_4, 1, 114, 8);

--グー、チョキef
gucho = entryEffectLife( spep_4, SP_02x, 114, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_4, gucho, 0, 0, 0);
setEffScaleKey( spep_4, gucho, 1.0, 1.0);
setEffRotateKey( spep_4, gucho, 0);
setEffAlphaKey( spep_4, gucho, 255);

setEffMoveKey( spep_4+114, gucho, 0, 0, 0);
setEffScaleKey( spep_4+114, gucho, 1.0, 1.0);
setEffRotateKey( spep_4+114, gucho, 0);
setEffAlphaKey( spep_4+114, gucho, 255);

--グー
ctgu = entryEffectLife( spep_4+8, 10038, 32, 0x100, -1, 0, 0, 300, 0);

setEffMoveKey( spep_4+8, ctgu, 0, 300, 0);
setEffScaleKey( spep_4+8, ctgu, 0, 0);
setEffRotateKey( spep_4+8, ctgu, 0);
setEffAlphaKey( spep_4+8, ctgu, 255);

setEffScaleKey( spep_4+10, ctgu, 2.0, 2.0);
setEffScaleKey( spep_4+36, ctgu, 2.0, 2.0);
setEffAlphaKey( spep_4+36, ctgu, 255);

setEffMoveKey( spep_4+40, ctgu, 0, 300, 0);
setEffScaleKey( spep_4+40, ctgu, 3.0, 3.0);
setEffRotateKey( spep_4+40, ctgu, 0);
setEffAlphaKey( spep_4+40, ctgu, 0);

setEffShake( spep_4+8, ctgu, 32, 8);

--チョキ
ctchoki = entryEffectLife( spep_4+60, 10039, 38, 0x100, -1, 0, 0, 300, 0);

setEffMoveKey( spep_4+60, ctchoki, 0, 300, 0);
setEffScaleKey( spep_4+60, ctchoki, 0, 0);
setEffRotateKey( spep_4+60, ctchoki, 0);
setEffAlphaKey( spep_4+60, ctchoki, 255);

setEffScaleKey( spep_4+62, ctchoki, 2.0, 2.0);
setEffScaleKey( spep_4+90, ctchoki, 2.0, 2.0);
setEffAlphaKey( spep_4+90, ctchoki, 255);

setEffMoveKey( spep_4+98, ctchoki, 0, 300, 0);
setEffScaleKey( spep_4+98, ctchoki, 3.0, 3.0);
setEffRotateKey( spep_4+98, ctchoki, 0);
setEffAlphaKey( spep_4+98, ctchoki, 0);

setEffShake( spep_4+60, ctchoki, 38, 8);

--横流線
ryusen2 = entryEffectLife( spep_4, 920, 114, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_4, ryusen2, 0, 0, 0);
setEffScaleKey( spep_4, ryusen2, 1.0, 1.0);
setEffRotateKey( spep_4, ryusen2, 0);
setEffAlphaKey( spep_4, ryusen2, 255);

setEffMoveKey( spep_4+114, ryusen2, 0, 0, 0);
setEffScaleKey( spep_4+114, ryusen2, 1.0, 1.0);
setEffRotateKey( spep_4+114, ryusen2, 0);
setEffAlphaKey( spep_4+114, ryusen2, 255);

--集中線
shuchusen4 = entryEffectLife( spep_4+8, 906, 90, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_4+8, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4+8, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_4+8, shuchusen4, 0);
setEffAlphaKey( spep_4+8, shuchusen4, 255);

setEffAlphaKey( spep_4+40, shuchusen4, 255);
setEffAlphaKey( spep_4+42, shuchusen4, 0);
setEffAlphaKey( spep_4+58, shuchusen4, 0);
setEffAlphaKey( spep_4+60, shuchusen4, 255);

setEffMoveKey( spep_4+98, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4+98, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_4+98, shuchusen4, 0);
setEffAlphaKey( spep_4+98, shuchusen4, 255);

--白フェード
entryFade( spep_4+106, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--黒背景
entryFadeBg( spep_4, 0, 114, 0, 0, 0, 0, 255);

--SE
playSe( spep_4+10, 1000);
playSe( spep_4+60, 1006);

------------------------------------------------------
-- パー 90f
------------------------------------------------------
spep_5=spep_4+114;

--敵消す
setDisp( spep_5, 1, 0);

--集中線
shuchusen4 = entryEffectLife( spep_5+54, 906, 32, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_5+54, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_5+54, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_5+54, shuchusen4, 0);
setEffAlphaKey( spep_5+54, shuchusen4, 255);

setEffMoveKey( spep_5+86, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_5+86, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_5+86, shuchusen4, 0);
setEffAlphaKey( spep_5+86, shuchusen4, 255);

--パーef
pa = entryEffectLife( spep_5, SP_05, 86, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_5, pa, 0, 0, 0);
setEffScaleKey( spep_5, pa, -1.0, 1.0);
setEffRotateKey( spep_5, pa, 0);
setEffAlphaKey( spep_5, pa, 255);

setEffMoveKey( spep_5+86, pa, 0, 0, 0);
setEffScaleKey( spep_5+86, pa, -1.0, 1.0);
setEffRotateKey( spep_5+86, pa, 0);
setEffAlphaKey( spep_5+86, pa, 255);

--パー
ctpa = entryEffectLife( spep_5+12, 10040, 42, 0x100, -1, 0, 0, 330, 0);

setEffMoveKey( spep_5+12, ctpa, 0, 330, 0);
setEffScaleKey( spep_5+12, ctpa, 0, 0);
setEffRotateKey( spep_5+12, ctpa, 0);
setEffAlphaKey( spep_5+12, ctpa, 255);

setEffScaleKey( spep_5+18, ctpa, 2.0, 2.0);

setEffMoveKey( spep_5+54, ctpa, 0, 330, 0);
setEffScaleKey( spep_5+54, ctpa, 2.0, 2.0);
setEffRotateKey( spep_5+54, ctpa, 0);
setEffAlphaKey( spep_5+54, ctpa, 255);

setEffShake( spep_5+12, ctpa, 42, 8);

--集中線
shuchusen4 = entryEffectLife( spep_5, 906, 60, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_5, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_5, shuchusen4, 0);
setEffAlphaKey( spep_5, shuchusen4, 255);

setEffMoveKey( spep_5+60, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_5+60, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_5+60, shuchusen4, 0);
setEffAlphaKey( spep_5+60, shuchusen4, 255);

--薄暗背景
entryFadeBg( spep_5, 0, 84, 0, 0, 0, 0, 200);

--SE
playSe( spep_5, SE_04);
playSe( spep_5+54, 1010);

------------------------------------------------------
-- 爆発
------------------------------------------------------
spep_6=spep_5+86;

--敵の動き--
setDisp( spep_6, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 36.2, -4.9 , 0 );
setMoveKey( spep_6 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_6 + 112, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 112, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 2, 1, 105 );
setRotateKey( spep_6 + 4, 1, 240 );
setRotateKey( spep_6 + 6, 1, 405 );
setRotateKey( spep_6 + 8, 1, 600 );
setRotateKey( spep_6 + 10, 1, 825 );
setRotateKey( spep_6 + 12, 1, 1080 );
setRotateKey( spep_6 + 112, 1, 1080 );

--爆発エフェクト
entryEffect( spep_6, 1509,  0x80,  -1,  0,  0,  0);

setDamage( spep_6 + 16, 1, 0);
setShake(spep_6 + 8,6,15);
setShake(spep_6 + 14,15,10);

--ガッ
ctGa = entryEffectLife( spep_6 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_6 + 14, ctGa, 20, 10);

setEffMoveKey( spep_6 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 112, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 16, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 17, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 18, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 19, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 20, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 112, ctGa, 4.0, 4.0 );

setEffRotateKey( spep_6 + 14, ctGa, -30 );
setEffRotateKey( spep_6 + 16, ctGa,   0 );
setEffRotateKey( spep_6 + 18, ctGa, -30 );
setEffRotateKey( spep_6 + 20, ctGa,   0 );
setEffRotateKey( spep_6 + 22, ctGa, -30 );
setEffRotateKey( spep_6 + 24, ctGa,   0 );
setEffRotateKey( spep_6 + 26, ctGa, -30 );
setEffRotateKey( spep_6 + 28, ctGa,   0 );
setEffRotateKey( spep_6 + 30, ctGa, -30 );
setEffRotateKey( spep_6 + 112, ctGa, -30 );

setEffAlphaKey( spep_6 + 14, ctGa, 255 );
setEffAlphaKey( spep_6 + 112, ctGa, 255 );

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_6+14, 1657, 120, 0x80,  -1,  0,  0,  0);

--集中線（白）
shuchusensiro = entryEffectLife( spep_6+14, 906, 120, 0x80,  -1,  0,  0,  0);


--ひび割れ
hibi = entryEffect( spep_6+4, 1600,  0x00,  -1,  0,  30, -130);

--SE
playSe( spep_6, SE_10);
playSe( spep_6+4, SE_11);


-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+100, 9,  10,  1,  8,  8,  8, 255);
endPhase( spep_6+110);

end
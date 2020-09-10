--パスタ 1015350 ビームマシンガン
--sp_effect_a8_00031
--プライオリティとかエフェクトとか間違ってたらごめんね
--ラストの爆発でエフェクトの変更が必要

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
SE_13 = 1029; --発射SE
SE_14 = 1006; --被弾SE
SE_15 = 1005; --弾SE

--味方側
SP_01=	152332	;--	構え
SP_02=	152333	;--	射撃
SP_03=	152334	;--	瞬間移動中
SP_04=	152335	;--	掴みかかり
SP_05=	152336	;--	飛び蹴り
SP_06=	152337	;--	爆弾投げ
SP_07=	152338	;--	爆弾飛んでく
SP_08=	152339	;--	爆発
SP_09=  152360  ;-- 背景赤フェード

SP_01x=	152340	;--	構え
SP_02x=	152341	;--	射撃
SP_03x=	152342	;--	瞬間移動中
SP_04x=	152335	;--	掴みかかり
SP_05x=	152343	;--	飛び蹴り
SP_06x=	152337	;--	爆弾投げ
SP_07x=	152338	;--	爆弾飛んでく
SP_08x=	152339	;--	爆発
SP_09x= 152360  ;-- 背景赤フェード

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);

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
setMoveKey(   spep_0+14,   0,    0, -16,   0);

setScaleKey(   spep_0+0,   0, 1.4, 1.4);
setScaleKey(   spep_0+1,   0, 1.4, 1.4);
setScaleKey(   spep_0+2,   0, 1.4, 1.4);
setScaleKey(   spep_0+3,   0, 1.4, 1.4);
setScaleKey(   spep_0+12,   0, 1.4, 1.4);
setScaleKey(   spep_0+14,   0, 1.4, 1.4);

setRotateKey(   spep_0+0,   0, 0);
setRotateKey(   spep_0+1,   0, 0);
setRotateKey(   spep_0+2,   0, 0);
setRotateKey(   spep_0+3,   0, 0);
setRotateKey(   spep_0+12,   0, 0);
setRotateKey(   spep_0+14,   0, 0);

entryFade(spep_0+14, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

spep_1=spep_0+16;

------------------------------------------------------
-- 溜め
------------------------------------------------------
setDisp( spep_1, 0, 0);
setMoveKey(  spep_1, 0, 0, -2000, 0);

setScaleKey(  spep_1, 0, 1.4, 1.4);

setRotateKey(  spep_1, 0, 0);

--エフェクト再生
tame=entryEffectLife(spep_1,SP_01,98,0x100,-1,0,0,0);

setEffMoveKey(spep_1,tame,0,0,0);
setEffMoveKey(spep_1+98,tame,0,0,0);

setEffScaleKey(spep_1,tame,1.0,1.0);
setEffScaleKey(spep_1+98,tame,1.0,1.0);

setEffAlphaKey(spep_1,tame,255);
setEffAlphaKey(spep_1+98,tame,255);

setEffRotateKey(spep_1,tame,0);
setEffRotateKey(spep_1+98,tame,0);

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

--ゴゴゴ
ctgogo=entryEffectLife(spep_1+24,190006,70,0x100,-1,90,520);--ゴゴゴ

setEffMoveKey(spep_1+24,ctgogo,90,520,0);
setEffMoveKey(spep_1+94,ctgogo,90,520,0);

setEffScaleKey(spep_1+24, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_1+94, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_1 + 24, ctgogo, 0 );
setEffAlphaKey( spep_1 + 25, ctgogo, 255 );
setEffAlphaKey( spep_1 + 26, ctgogo, 255 );
setEffAlphaKey( spep_1 + 94, ctgogo, 255 );

setEffRotateKey(spep_1+24,ctgogo,0);
setEffRotateKey(spep_1+94,ctgogo,0);

--顔カットイン
speff=entryEffect(spep_1+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_1+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_1 , SE_02);
playSe( spep_1 + 24, SE_04);

--黒背景
entryFadeBg(spep_1, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_2=spep_1+100;

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

--次の準備
spep_3=spep_2+90;

--白フェードが入る--
entryFade( spep_3-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 連射
------------------------------------------------------
--エフェクト再生
firing=entryEffectLife(spep_3,SP_02,90,0x100,-1,0,0,0);

setEffMoveKey(spep_3,firing,0,0,0);
setEffMoveKey(spep_3+90,firing,0,0,0);

setEffScaleKey(spep_3,firing,1.0,1.0);
setEffScaleKey(spep_3+90,firing,1.0,1.0);

setEffAlphaKey(spep_3,firing,255);
setEffAlphaKey(spep_3+90,firing,255);

setEffRotateKey(spep_3,firing,0);
setEffRotateKey(spep_3+90,firing,0);

--流線(横)
ryusen = entryEffectLife( spep_3 + 0,  914, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen, 2.1, 1.32 );
setEffScaleKey( spep_3 + 88, ryusen, 2.1, 1.32 );

setEffRotateKey( spep_3 + 0, ryusen, -180 );
setEffRotateKey( spep_3 + 88, ryusen, -180 );

setEffAlphaKey( spep_3 + 0, ryusen, 255 );
setEffAlphaKey( spep_3 + 88, ryusen, 255 );

--文字エントリー
ctzubababa = entryEffectLife( spep_3 + 4,  10015, 42, 0x100, -1, 0, 183.6, 184.2 );--ズバババ
setEffMoveKey( spep_3 + 4, ctzubababa, 183.6, 184.2 , 0 );
setEffMoveKey( spep_3 + 6, ctzubababa, 149, 206 , 0 );
setEffMoveKey( spep_3 + 8, ctzubababa, 120.4, 232 , 0 );
setEffMoveKey( spep_3 + 10, ctzubababa, 82.6, 251.8 , 0 );
setEffMoveKey( spep_3 + 12, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 14, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 16, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 18, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 20, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 22, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 24, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 26, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 28, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 30, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 32, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 34, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 36, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 38, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 40, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 42, ctzubababa, 32.3, 286.5 , 0 );
setEffMoveKey( spep_3 + 44, ctzubababa, 24.3, 304.3 , 0 );
setEffMoveKey( spep_3 + 46, ctzubababa, 8, 316.7 , 0 );

setEffScaleKey( spep_3 + 4, ctzubababa, 0.46, 0.46 );
setEffScaleKey( spep_3 + 6, ctzubababa, 0.91, 0.91 );
setEffScaleKey( spep_3 + 8, ctzubababa, 1.36, 1.36 );
setEffScaleKey( spep_3 + 10, ctzubababa, 1.8, 1.8 );
setEffScaleKey( spep_3 + 12, ctzubababa, 2.25, 2.25 );
setEffScaleKey( spep_3 + 40, ctzubababa, 2.25, 2.25 );
setEffScaleKey( spep_3 + 42, ctzubababa, 2.48, 2.48 );
setEffScaleKey( spep_3 + 44, ctzubababa, 2.71, 2.71 );
setEffScaleKey( spep_3 + 46, ctzubababa, 2.95, 2.95 );

setEffRotateKey( spep_3 + 4, ctzubababa, 33.4 );
setEffRotateKey( spep_3 + 6, ctzubababa, 33.5 );
setEffRotateKey( spep_3 + 46, ctzubababa, 33.5 );

setEffAlphaKey( spep_3 + 4, ctzubababa, 255 );
setEffAlphaKey( spep_3 + 40, ctzubababa, 255 );
setEffAlphaKey( spep_3 + 42, ctzubababa, 170 );
setEffAlphaKey( spep_3 + 44, ctzubababa, 85 );
setEffAlphaKey( spep_3 + 46, ctzubababa, 0 );

-- ** エフェクト等 ** --
entryFade(spep_3+80, 6, 4, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
for cnt = 6, 56, 4 do
	playSe( spep_3+cnt, SE_13);
end
playSe( spep_3+62, SE_04);

--黒背景
entryFadeBg(spep_3, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_4=spep_3+90;

------------------------------------------------------
-- 被弾
------------------------------------------------------
--エフェクト再生
hit=entryEffectLife(spep_4,SP_03,80,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit,0,0,0);
setEffMoveKey(spep_4+80,hit,0,0,0);

setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+80,hit,1.0,1.0);

setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+80,hit,255);

setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+80,hit,0);

--流線(奥行き)
ryusen2 = entryEffectLife( spep_4 + 0,  921, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_4 + 78, ryusen2, 1, 1 );

setEffRotateKey( spep_4 + 0, ryusen2, 0 );
setEffRotateKey( spep_4 + 78, ryusen2, 0 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 78, ryusen2, 255 );

--背景赤フェード
redFade = entryEffectLife(spep_4,SP_09,80,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, redFade, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, redFade, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, redFade, 1, 1 );
setEffScaleKey( spep_4 + 80, redFade, 1, 1 );

setEffRotateKey( spep_4 + 0, redFade, 0 );
setEffRotateKey( spep_4 + 80, redFade, 0 );

setEffAlphaKey( spep_4 + 0, redFade, 255 );
setEffAlphaKey( spep_4 + 80, redFade, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 46,  906, 32, 0x100, -1, 0, 252.3, -20 ,0);

setEffMoveKey( spep_4 + 46, shuchusen2, 252.3, -20 , 0 );
setEffMoveKey( spep_4 + 78, shuchusen2, 252.3, -20 , 0 );

setEffScaleKey( spep_4 + 46, shuchusen2, 1.65, 1.06 );
setEffScaleKey( spep_4 + 78, shuchusen2, 1.65, 1.06 );

setEffRotateKey( spep_4 + 46, shuchusen2, 180 );
setEffRotateKey( spep_4 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 46, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 78, shuchusen2, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 + 46, 1, 108 );

setMoveKey( spep_4 + 0, 1, 257.9, -23.8 , 0 );
setMoveKey( spep_4 + 2, 1, 229.8, -18.9 , 0 );
setMoveKey( spep_4 + 4, 1, 198.2, -23 , 0 );
setMoveKey( spep_4 + 6, 1, 173.8, -24.5 , 0 );
setMoveKey( spep_4 + 8, 1, 145.9, -16.6 , 0 );
setMoveKey( spep_4 + 10, 1, 112.5, -23 , 0 );
setMoveKey( spep_4 + 12, 1, 115.6, -24.8 , 0 );
setMoveKey( spep_4 + 14, 1, 113.5, -15.7 , 0 );
setMoveKey( spep_4 + 16, 1, 105.6, -23 , 0 );
setMoveKey( spep_4 + 18, 1, 109, -24.9 , 0 );
setMoveKey( spep_4 + 20, 1, 106.8, -15.4 , 0 );
setMoveKey( spep_4 + 22, 1, 98.7, -23 , 0 );
setMoveKey( spep_4 + 24, 1, 102.3, -25 , 0 );
setMoveKey( spep_4 + 26, 1, 100, -15.2 , 0 );
setMoveKey( spep_4 + 28, 1, 91.9, -23.1 , 0 );
setMoveKey( spep_4 + 30, 1, 95.6, -25 , 0 );
setMoveKey( spep_4 + 32, 1, 93.4, -15 , 0 );
setMoveKey( spep_4 + 34, 1, 85, -23.1 , 0 );
setMoveKey( spep_4 + 36, 1, 89, -25 , 0 );
setMoveKey( spep_4 + 38, 1, 86.7, -14.7 , 0 );
setMoveKey( spep_4 + 40, 1, 78.2, -23.1 , 0 );
setMoveKey( spep_4 + 42, 1, 82.3, -25.1 , 0 );
setMoveKey( spep_4 + 44, 1, 80.1, -14.4 , 0 );
setMoveKey( spep_4 + 45, 1, 71.4, -23 , 0 );
setMoveKey( spep_4 + 46, 1, 107.8, -21.4 , 0 );
setMoveKey( spep_4 + 50, 1, 129.9, -26.9 , 0 );
setMoveKey( spep_4 + 52, 1, 146.1, -20.4 , 0 );
setMoveKey( spep_4 + 54, 1, 167.7, -24.7 , 0 );
setMoveKey( spep_4 + 56, 1, 184.4, -19.3 , 0 );
setMoveKey( spep_4 + 58, 1, 205.4, -22.6 , 0 );
setMoveKey( spep_4 + 60, 1, 222.6, -18.2 , 0 );
setMoveKey( spep_4 + 62, 1, 227.7, -21.4 , 0 );
setMoveKey( spep_4 + 64, 1, 229.8, -18.3 , 0 );
setMoveKey( spep_4 + 66, 1, 234.7, -21.2 , 0 );
setMoveKey( spep_4 + 68, 1, 237, -18.4 , 0 );
setMoveKey( spep_4 + 70, 1, 241.7, -20.9 , 0 );
setMoveKey( spep_4 + 72, 1, 244.1, -18.5 , 0 );
setMoveKey( spep_4 + 74, 1, 248.8, -20.7 , 0 );
setMoveKey( spep_4 + 76, 1, 251.3, -18.5 , 0 );
setMoveKey( spep_4 + 78, 1, 255.9, -20.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 2, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 6, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 10, 1, 1, 1 );
setScaleKey( spep_4 + 12, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 18, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 26, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 28, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 32, 1, 1.12, 1.12 );
setScaleKey( spep_4 + 34, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 36, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 38, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 40, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 44, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 45, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 50, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 52, 1, 1, 1 );
setScaleKey( spep_4 + 54, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 58, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 60, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 62, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 64, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 66, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 68, 1, 0.49, 0.49 );
setScaleKey( spep_4 + 70, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 72, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 74, 1, 0.41, 0.41 );
setScaleKey( spep_4 + 76, 1, 0.38, 0.38 );
setScaleKey( spep_4 + 78, 1, 0.35, 0.35 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 78, 1, 0 );


-- ** エフェクト等 ** --
entryFade(spep_4+68, 8, 6, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 210);  -- 黒　背
--entryFadeBg(spep_4, 4, 16, 4,255,0,0,90);     -- red fade
--entryFadeBg(spep_4+40, 4, 16, 4,255,0,0,90);     -- red fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 36; --エンドフェイズのフレーム数を置き換える

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
-- 被弾続き
------------------------------------------------------

--SE
playSe( spep_4+46, SE_14);
for cnt = 4, 72, 4 do
	playSe( spep_4+cnt, SE_13);
end

--次の準備
spep_5=spep_4+80;

------------------------------------------------------
-- 接近
------------------------------------------------------
--エフェクト再生
approach=entryEffectLife(spep_5,SP_04,60,0x100,-1,0,0,0);

setEffMoveKey(spep_5,approach,0,0,0);
setEffMoveKey(spep_5+60,approach,0,0,0);

setEffScaleKey(spep_5,approach,1.0,1.0);
setEffScaleKey(spep_5+60,approach,1.0,1.0);

setEffAlphaKey(spep_5,approach,255);
setEffAlphaKey(spep_5+60,approach,255);

setEffRotateKey(spep_5,approach,0);
setEffRotateKey(spep_5+60,approach,0);

--集中線
shuthusen3 = entryEffectLife( spep_5 + 0,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuthusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, shuthusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuthusen3, 1, 1 );
setEffScaleKey( spep_5 + 40, shuthusen3, 1, 1 );
setEffScaleKey( spep_5 + 42, shuthusen3, 1.35, 1.35 );
setEffScaleKey( spep_5 + 58, shuthusen3, 1.35, 1.35 );

setEffRotateKey( spep_5 + 0, shuthusen3, 180 );
setEffRotateKey( spep_5 + 58, shuthusen3, 180 );

setEffAlphaKey( spep_5 + 0, shuthusen3, 255 );
setEffAlphaKey( spep_5 + 58, shuthusen3, 255 );


-- ** エフェクト等 ** --
entryFade(spep_5+52, 6, 6, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_5, SE_04);

--黒背景
entryFadeBg(spep_5, 0, 60, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_6=spep_5+60;

------------------------------------------------------
-- 蹴り
------------------------------------------------------
--エフェクト再生
kick=entryEffectLife(spep_6,SP_05,80,0x100,-1,0,0,0);

setEffMoveKey(spep_6,kick,0,0,0);
setEffMoveKey(spep_6+80,kick,0,0,0);

setEffScaleKey(spep_6,kick,1.0,1.0);
setEffScaleKey(spep_6+80,kick,1.0,1.0);

setEffAlphaKey(spep_6,kick,255);
setEffAlphaKey(spep_6+80,kick,255);

setEffRotateKey(spep_6,kick,0);
setEffRotateKey(spep_6+80,kick,0);


--文字エントリー
ctga = entryEffectLife( spep_6 + 37,  10005, 25, 0x100, -1, 0, 120.4, 165.7 );--ガッ

setEffMoveKey( spep_6 + 37, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 38, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 42, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 44, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 46, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 48, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 50, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 52, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 54, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 56, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 58, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 60, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 62, ctga, 128.3, 154.2 , 0 );

setEffScaleKey( spep_6 + 37, ctga, 1.9, 1.9 );
setEffScaleKey( spep_6 + 38, ctga, 1.9, 1.9 );
setEffScaleKey( spep_6 + 62, ctga, 1.9, 1.9 );

setEffRotateKey( spep_6 + 37, ctga, -28.2 );
setEffRotateKey( spep_6 + 38, ctga, -28.2 );
setEffRotateKey( spep_6 + 62, ctga, -28.2 );

setEffAlphaKey( spep_6 + 37, ctga, 255 );
setEffAlphaKey( spep_6 + 62, ctga, 255 );

--流線(横)
ryusen3 = entryEffectLife( spep_6 + 0,  914, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen3, 2.1, 1.32 );
setEffScaleKey( spep_6 + 78, ryusen3, 2.1, 1.32 );

setEffRotateKey( spep_6 + 0, ryusen3, -180 );
setEffRotateKey( spep_6 + 78, ryusen3, -180 );

setEffAlphaKey( spep_6 + 0, ryusen3, 255 );
setEffAlphaKey( spep_6 + 78, ryusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6 + 37,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 37, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 62, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 37, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 62, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 37, shuchusen4, 180 );
setEffRotateKey( spep_6 + 62, shuchusen4, 180 );

setEffAlphaKey( spep_6 + 37, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 62, shuchusen4, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 78, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );
changeAnime( spep_6 + 37, 1, 106 );

setMoveKey( spep_6 + 0, 1, -663.1, -56.9 , 0 );
setMoveKey( spep_6 + 2, 1, -562.1, -62.8 , 0 );
setMoveKey( spep_6 + 4, 1, -467, -56.8 , 0 );
setMoveKey( spep_6 + 6, 1, -366.1, -62.8 , 0 );
setMoveKey( spep_6 + 8, 1, -271, -56.8 , 0 );
setMoveKey( spep_6 + 10, 1, -170, -62.8 , 0 );
setMoveKey( spep_6 + 12, 1, -74.9, -56.8 , 0 );
setMoveKey( spep_6 + 14, 1, 26, -62.8 , 0 );
setMoveKey( spep_6 + 16, 1, 121.1, -56.8 , 0 );
setMoveKey( spep_6 + 18, 1, 124.8, -62.8 , 0 );
setMoveKey( spep_6 + 20, 1, 122.7, -56.8 , 0 );
setMoveKey( spep_6 + 22, 1, 126.5, -62.8 , 0 );
setMoveKey( spep_6 + 24, 1, 124.4, -56.8 , 0 );
setMoveKey( spep_6 + 26, 1, 128.1, -62.8 , 0 );
setMoveKey( spep_6 + 28, 1, 126, -56.8 , 0 );
setMoveKey( spep_6 + 30, 1, 129.7, -62.8 , 0 );
setMoveKey( spep_6 + 32, 1, 127.6, -56.8 , 0 );
setMoveKey( spep_6 + 34, 1, 131.4, -62.8 , 0 );
setMoveKey( spep_6 + 36, 1, 129.3, -56.8 , 0 );
setMoveKey( spep_6 + 39, 1, 133, -62.8 , 0 );
setMoveKey( spep_6 + 40, 1, 165.6, -55 , 0 );
setMoveKey( spep_6 + 42, 1, 209, -58.5 , 0 );
setMoveKey( spep_6 + 44, 1, 247.4, -55 , 0 );
setMoveKey( spep_6 + 46, 1, 290.8, -58.5 , 0 );
setMoveKey( spep_6 + 48, 1, 329.2, -55 , 0 );
setMoveKey( spep_6 + 50, 1, 372.6, -58.5 , 0 );
setMoveKey( spep_6 + 52, 1, 411, -55 , 0 );
setMoveKey( spep_6 + 54, 1, 454.4, -58.5 , 0 );
setMoveKey( spep_6 + 56, 1, 492.9, -55 , 0 );
setMoveKey( spep_6 + 58, 1, 536.3, -58.5 , 0 );
setMoveKey( spep_6 + 60, 1, 574.7, -55 , 0 );
setMoveKey( spep_6 + 62, 1, 618.1, -58.5 , 0 );
setMoveKey( spep_6 + 64, 1, 615.6, -55 , 0 );
setMoveKey( spep_6 + 66, 1, 618.1, -58.5 , 0 );
setMoveKey( spep_6 + 68, 1, 615.6, -55 , 0 );
setMoveKey( spep_6 + 70, 1, 618.1, -58.5 , 0 );
setMoveKey( spep_6 + 72, 1, 615.6, -55 , 0 );
setMoveKey( spep_6 + 74, 1, 618.1, -58.5 , 0 );
setMoveKey( spep_6 + 76, 1, 615.6, -55 , 0 );
setMoveKey( spep_6 + 78, 1, 618.1, -58.5 , 0 );

setScaleKey( spep_6 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 39, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 40, 1, 1.19, 1.19 );
setScaleKey( spep_6 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 78, 1, 1.2, 1.2 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 39, 1, 0 );
setRotateKey( spep_6 + 40, 1, -19 );
setRotateKey( spep_6 + 78, 1, -19 );

-- ** エフェクト等 ** --
entryFade(spep_6+70, 6, 4, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_6+37, 1009);


--黒背景
entryFadeBg(spep_6, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_7=spep_6+80;

------------------------------------------------------
-- 投げ
------------------------------------------------------
--エフェクト再生
throwing=entryEffectLife(spep_7,SP_06,90,0x100,-1,0,0,0);

setEffMoveKey(spep_7,throwing,0,0,0);
setEffMoveKey(spep_7+90,throwing,0,0,0);

setEffScaleKey(spep_7,throwing,1.0,1.0);
setEffScaleKey(spep_7+90,throwing,1.0,1.0);

setEffAlphaKey(spep_7,throwing,255);
setEffAlphaKey(spep_7+90,throwing,255);

setEffRotateKey(spep_7,throwing,0);
setEffRotateKey(spep_7+90,throwing,0);

--集中線
shuchusen5 = entryEffectLife( spep_7 + 0,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 88, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen5, 1.2, 1.2 );
setEffScaleKey( spep_7 + 88, shuchusen5, 1.2, 1.2 );

setEffRotateKey( spep_7 + 0, shuchusen5, 0 );
setEffRotateKey( spep_7 + 88, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 88, shuchusen5, 255 );

--SE
playSe( spep_7+28, 7);

-- ** エフェクト等 ** --
entryFade(spep_7+82, 6, 4, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_7, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_8=spep_7+90;

------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクト再生
explosion=entryEffectLife(spep_8,SP_07,80,0x100,-1,0,0,0);

setEffMoveKey(spep_8,explosion,0,0,0);
setEffMoveKey(spep_8+80,explosion,0,0,0);

setEffScaleKey(spep_8,explosion,1.0,1.0);
setEffScaleKey(spep_8+80,explosion,1.0,1.0);

setEffAlphaKey(spep_8,explosion,255);
setEffAlphaKey(spep_8+80,explosion,255);

setEffRotateKey(spep_8,explosion,0);
setEffRotateKey(spep_8+80,explosion,0);


shuchusen6 = entryEffectLife( spep_8 + 0,  906, 78, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 78, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_8 + 78, shuchusen6, 1, 1 );

setEffRotateKey( spep_8 + 0, shuchusen6, 0 );
setEffRotateKey( spep_8 + 78, shuchusen6, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_8 + 78, shuchusen6, 255 );


--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 38, 1, 0);
changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 0.7, 159.6 , 0 );
setMoveKey( spep_8 + 2, 1, 0.7, 139.6 , 0 );
setMoveKey( spep_8 + 4, 1, 0.6, 119.6 , 0 );
setMoveKey( spep_8 + 6, 1, 0.5, 99.7 , 0 );
setMoveKey( spep_8 + 8, 1, 0.5, 79.7 , 0 );
setMoveKey( spep_8 + 10, 1, 0.4, 59.7 , 0 );
setMoveKey( spep_8 + 12, 1, 0.4, 39.8 , 0 );
setMoveKey( spep_8 + 14, 1, 0.3, 19.8 , 0 );
setMoveKey( spep_8 + 16, 1, 0.2, -0.2 , 0 );
setMoveKey( spep_8 + 18, 1, 0.2, -2.4 , 0 );
setMoveKey( spep_8 + 20, 1, 0.2, -4.6 , 0 );
setMoveKey( spep_8 + 22, 1, 0.2, -6.8 , 0 );
setMoveKey( spep_8 + 24, 1, 0.2, -9 , 0 );
setMoveKey( spep_8 + 26, 1, 0.3, -11.3 , 0 );
setMoveKey( spep_8 + 28, 1, 0.3, -13.5 , 0 );
setMoveKey( spep_8 + 30, 1, 0.2, -15.7 , 0 );
setMoveKey( spep_8 + 32, 1, 0.2, -17.9 , 0 );
setMoveKey( spep_8 + 34, 1, 0.2, -20.1 , 0 );
setMoveKey( spep_8 + 36, 1, 0.2, -20.1 , 0 );

setScaleKey( spep_8 + 0, 1, 4.04, 4.04 );
setScaleKey( spep_8 + 2, 1, 3.66, 3.66 );
setScaleKey( spep_8 + 4, 1, 3.28, 3.28 );
setScaleKey( spep_8 + 6, 1, 2.9, 2.9 );
setScaleKey( spep_8 + 8, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 10, 1, 2.14, 2.14 );
setScaleKey( spep_8 + 12, 1, 1.76, 1.76 );
setScaleKey( spep_8 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_8 + 16, 1, 1, 1 );
setScaleKey( spep_8 + 18, 1, 0.99, 0.99 );
setScaleKey( spep_8 + 20, 1, 0.98, 0.98 );
setScaleKey( spep_8 + 22, 1, 0.97, 0.97 );
setScaleKey( spep_8 + 24, 1, 0.96, 0.96 );
setScaleKey( spep_8 + 26, 1, 0.94, 0.94 );
setScaleKey( spep_8 + 28, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 30, 1, 0.92, 0.92 );
setScaleKey( spep_8 + 32, 1, 0.91, 0.91 );
setScaleKey( spep_8 + 36, 1, 0.9, 0.9 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 36, 1, 0 );

--黒背景
entryFadeBg(spep_8, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe( spep_8, 7);
playSe( spep_8+32, 1023);

-- ** エフェクト等 ** --
entryFade(spep_8+70, 4, 10, 4,170,0,0,255);     -- red fade

--次の準備
spep_9=spep_8+80;

------------------------------------------------------
-- ガ
------------------------------------------------------

--吹っ飛びヤムチャ--
setDisp( spep_9 + 0, 1, 1 );
changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_9 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_9 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_9 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_9 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_9 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_9 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_9 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_9 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_9 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_9 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_9 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_9 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_9 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_9 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 2, 1, 105 );
setRotateKey( spep_9 + 4, 1, 240 );
setRotateKey( spep_9 + 6, 1, 405 );
setRotateKey( spep_9 + 8, 1, 600 );
setRotateKey( spep_9 + 10, 1, 825 );
setRotateKey( spep_9 + 12, 1, 1080 );
setRotateKey( spep_9 + 110, 1, 1080 );

--爆発エフェクト
entryEffect( spep_9, SP_08,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9, SE_10);

setDamage( spep_9 +16, 1, 0);  -- ダメージ振動等
--setShake(spep_9+8,6,15);
--setShake(spep_9+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_9 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_9 + 14, ctGa, 30, 10);

setEffMoveKey( spep_9 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 110, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_9 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_9+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_9+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_9+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_9+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_9+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_9+110, ctGa, 3.8, 3.8);

setEffRotateKey( spep_9 + 14, ctGa, -40 );
setEffRotateKey( spep_9 + 16, ctGa, -31 );
setEffRotateKey( spep_9 + 18, ctGa, -40 );
setEffRotateKey( spep_9 + 20, ctGa, -31 );
setEffRotateKey( spep_9 + 22, ctGa, -40 );
setEffRotateKey( spep_9 + 24, ctGa, -31);
setEffRotateKey( spep_9 + 26, ctGa, -40 );
setEffRotateKey( spep_9 + 28, ctGa, -31);
setEffRotateKey( spep_9 + 30, ctGa, -40 );
setEffRotateKey( spep_9 + 110, ctGa, -40 );

setEffAlphaKey( spep_9 + 14, ctGa, 255 );
setEffAlphaKey( spep_9 + 110, ctGa, 255 );

--集中線（白）
shuchusen7 = entryEffectLife( spep_9+14, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_9+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_9+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe( spep_9+13, SE_11);

-- ダメージ表示
dealDamage(spep_9+16);
--entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+110);

else 

------------------------------------------------------
-- 敵側
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
setMoveKey(   spep_0+14,   0,    0, -16,   0);

setScaleKey(   spep_0+0,   0, 1.4, 1.4);
setScaleKey(   spep_0+1,   0, 1.4, 1.4);
setScaleKey(   spep_0+2,   0, 1.4, 1.4);
setScaleKey(   spep_0+3,   0, 1.4, 1.4);
setScaleKey(   spep_0+12,   0, 1.4, 1.4);
setScaleKey(   spep_0+14,   0, 1.4, 1.4);

setRotateKey(   spep_0+0,   0, 0);
setRotateKey(   spep_0+1,   0, 0);
setRotateKey(   spep_0+2,   0, 0);
setRotateKey(   spep_0+3,   0, 0);
setRotateKey(   spep_0+12,   0, 0);
setRotateKey(   spep_0+14,   0, 0);

entryFade(spep_0+14, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

spep_1=spep_0+16;

------------------------------------------------------
-- 溜め
------------------------------------------------------
setDisp( spep_1, 0, 0);
setMoveKey(  spep_1, 0, 0, -2000, 0);

setScaleKey(  spep_1, 0, 1.4, 1.4);

setRotateKey(  spep_1, 0, 0);

--エフェクト再生
tame=entryEffectLife(spep_1,SP_01x,98,0x100,-1,0,0,0);

setEffMoveKey(spep_1,tame,0,0,0);
setEffMoveKey(spep_1+98,tame,0,0,0);

setEffScaleKey(spep_1,tame,1.0,1.0);
setEffScaleKey(spep_1+98,tame,1.0,1.0);

setEffAlphaKey(spep_1,tame,255);
setEffAlphaKey(spep_1+98,tame,255);

setEffRotateKey(spep_1,tame,0);
setEffRotateKey(spep_1+98,tame,0);

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

--ゴゴゴ
ctgogo=entryEffectLife(spep_1+24,190006,70,0x100,-1,20,520);--ゴゴゴ

setEffMoveKey(spep_1+24,ctgogo,20,520,0);
setEffMoveKey(spep_1+94,ctgogo,20,520,0);

setEffScaleKey(spep_1+24, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_1+94, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_1 + 24, ctgogo, 0 );
setEffAlphaKey( spep_1 + 25, ctgogo, 255 );
setEffAlphaKey( spep_1 + 26, ctgogo, 255 );
setEffAlphaKey( spep_1 + 94, ctgogo, 255 );

setEffRotateKey(spep_1+24,ctgogo,0);
setEffRotateKey(spep_1+94,ctgogo,0);

--顔カットイン
--speff=entryEffect(spep_1+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_1+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_1 , SE_02);
playSe( spep_1 + 24, SE_04);

--黒背景
entryFadeBg(spep_1, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_2=spep_1+100;

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

--次の準備
spep_3=spep_2+90;

--白フェードが入る--
entryFade( spep_3-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 連射
------------------------------------------------------
--エフェクト再生
firing=entryEffectLife(spep_3,SP_02x,90,0x100,-1,0,0,0);

setEffMoveKey(spep_3,firing,0,0,0);
setEffMoveKey(spep_3+90,firing,0,0,0);

setEffScaleKey(spep_3,firing,1.0,1.0);
setEffScaleKey(spep_3+90,firing,1.0,1.0);

setEffAlphaKey(spep_3,firing,255);
setEffAlphaKey(spep_3+90,firing,255);

setEffRotateKey(spep_3,firing,0);
setEffRotateKey(spep_3+90,firing,0);

--流線(横)
ryusen = entryEffectLife( spep_3 + 0,  914, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen, 2.1, 1.32 );
setEffScaleKey( spep_3 + 88, ryusen, 2.1, 1.32 );

setEffRotateKey( spep_3 + 0, ryusen, -180 );
setEffRotateKey( spep_3 + 88, ryusen, -180 );

setEffAlphaKey( spep_3 + 0, ryusen, 255 );
setEffAlphaKey( spep_3 + 88, ryusen, 255 );

--文字エントリー
ctzubababa = entryEffectLife( spep_3 + 4,  10015, 42, 0x100, -1, 0, 183.6, 184.2 );--ズバババ
setEffMoveKey( spep_3 + 4, ctzubababa, 183.6, 184.2 , 0 );
setEffMoveKey( spep_3 + 6, ctzubababa, 149, 206 , 0 );
setEffMoveKey( spep_3 + 8, ctzubababa, 120.4, 232 , 0 );
setEffMoveKey( spep_3 + 10, ctzubababa, 82.6, 251.8 , 0 );
setEffMoveKey( spep_3 + 12, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 14, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 16, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 18, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 20, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 22, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 24, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 26, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 28, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 30, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 32, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 34, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 36, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 38, ctzubababa, 49.5, 274.7 , 0 );
setEffMoveKey( spep_3 + 40, ctzubababa, 57.1, 279.7 , 0 );
setEffMoveKey( spep_3 + 42, ctzubababa, 32.3, 286.5 , 0 );
setEffMoveKey( spep_3 + 44, ctzubababa, 24.3, 304.3 , 0 );
setEffMoveKey( spep_3 + 46, ctzubababa, 8, 316.7 , 0 );

setEffScaleKey( spep_3 + 4, ctzubababa, 0.46, 0.46 );
setEffScaleKey( spep_3 + 6, ctzubababa, 0.91, 0.91 );
setEffScaleKey( spep_3 + 8, ctzubababa, 1.36, 1.36 );
setEffScaleKey( spep_3 + 10, ctzubababa, 1.8, 1.8 );
setEffScaleKey( spep_3 + 12, ctzubababa, 2.25, 2.25 );
setEffScaleKey( spep_3 + 40, ctzubababa, 2.25, 2.25 );
setEffScaleKey( spep_3 + 42, ctzubababa, 2.48, 2.48 );
setEffScaleKey( spep_3 + 44, ctzubababa, 2.71, 2.71 );
setEffScaleKey( spep_3 + 46, ctzubababa, 2.95, 2.95 );

setEffRotateKey( spep_3 + 4, ctzubababa, 33.4 );
setEffRotateKey( spep_3 + 6, ctzubababa, 33.5 );
setEffRotateKey( spep_3 + 46, ctzubababa, 33.5 );

setEffAlphaKey( spep_3 + 4, ctzubababa, 255 );
setEffAlphaKey( spep_3 + 40, ctzubababa, 255 );
setEffAlphaKey( spep_3 + 42, ctzubababa, 170 );
setEffAlphaKey( spep_3 + 44, ctzubababa, 85 );
setEffAlphaKey( spep_3 + 46, ctzubababa, 0 );

-- ** エフェクト等 ** --
entryFade(spep_3+80, 6, 4, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
for cnt = 6, 56, 4 do
	playSe( spep_3+cnt, SE_13);
end
playSe( spep_3+62, SE_04);

--黒背景
entryFadeBg(spep_3, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_4=spep_3+90;

------------------------------------------------------
-- 被弾
------------------------------------------------------
--エフェクト再生
hit=entryEffectLife(spep_4,SP_03x,80,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit,0,0,0);
setEffMoveKey(spep_4+80,hit,0,0,0);

setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+80,hit,1.0,1.0);

setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+80,hit,255);

setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+80,hit,0);

--流線(奥行き)
ryusen2 = entryEffectLife( spep_4 + 0,  921, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_4 + 78, ryusen2, 1, 1 );

setEffRotateKey( spep_4 + 0, ryusen2, 0 );
setEffRotateKey( spep_4 + 78, ryusen2, 0 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 78, ryusen2, 255 );

--背景赤フェード
redFade = entryEffectLife(spep_4,SP_09x,80,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, redFade, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, redFade, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, redFade, 1, 1 );
setEffScaleKey( spep_4 + 80, redFade, 1, 1 );

setEffRotateKey( spep_4 + 0, redFade, 0 );
setEffRotateKey( spep_4 + 80, redFade, 0 );

setEffAlphaKey( spep_4 + 0, redFade, 255 );
setEffAlphaKey( spep_4 + 80, redFade, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 46,  906, 32, 0x100, -1, 0, 252.3, -20 ,0);

setEffMoveKey( spep_4 + 46, shuchusen2, 252.3, -20 , 0 );
setEffMoveKey( spep_4 + 78, shuchusen2, 252.3, -20 , 0 );

setEffScaleKey( spep_4 + 46, shuchusen2, 1.65, 1.06 );
setEffScaleKey( spep_4 + 78, shuchusen2, 1.65, 1.06 );

setEffRotateKey( spep_4 + 46, shuchusen2, 180 );
setEffRotateKey( spep_4 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 46, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 78, shuchusen2, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 + 46, 1, 108 );

setMoveKey( spep_4 + 0, 1, 257.9, -23.8 , 0 );
setMoveKey( spep_4 + 2, 1, 229.8, -18.9 , 0 );
setMoveKey( spep_4 + 4, 1, 198.2, -23 , 0 );
setMoveKey( spep_4 + 6, 1, 173.8, -24.5 , 0 );
setMoveKey( spep_4 + 8, 1, 145.9, -16.6 , 0 );
setMoveKey( spep_4 + 10, 1, 112.5, -23 , 0 );
setMoveKey( spep_4 + 12, 1, 115.6, -24.8 , 0 );
setMoveKey( spep_4 + 14, 1, 113.5, -15.7 , 0 );
setMoveKey( spep_4 + 16, 1, 105.6, -23 , 0 );
setMoveKey( spep_4 + 18, 1, 109, -24.9 , 0 );
setMoveKey( spep_4 + 20, 1, 106.8, -15.4 , 0 );
setMoveKey( spep_4 + 22, 1, 98.7, -23 , 0 );
setMoveKey( spep_4 + 24, 1, 102.3, -25 , 0 );
setMoveKey( spep_4 + 26, 1, 100, -15.2 , 0 );
setMoveKey( spep_4 + 28, 1, 91.9, -23.1 , 0 );
setMoveKey( spep_4 + 30, 1, 95.6, -25 , 0 );
setMoveKey( spep_4 + 32, 1, 93.4, -15 , 0 );
setMoveKey( spep_4 + 34, 1, 85, -23.1 , 0 );
setMoveKey( spep_4 + 36, 1, 89, -25 , 0 );
setMoveKey( spep_4 + 38, 1, 86.7, -14.7 , 0 );
setMoveKey( spep_4 + 40, 1, 78.2, -23.1 , 0 );
setMoveKey( spep_4 + 42, 1, 82.3, -25.1 , 0 );
setMoveKey( spep_4 + 44, 1, 80.1, -14.4 , 0 );
setMoveKey( spep_4 + 45, 1, 71.4, -23 , 0 );
setMoveKey( spep_4 + 46, 1, 107.8, -21.4 , 0 );
setMoveKey( spep_4 + 50, 1, 129.9, -26.9 , 0 );
setMoveKey( spep_4 + 52, 1, 146.1, -20.4 , 0 );
setMoveKey( spep_4 + 54, 1, 167.7, -24.7 , 0 );
setMoveKey( spep_4 + 56, 1, 184.4, -19.3 , 0 );
setMoveKey( spep_4 + 58, 1, 205.4, -22.6 , 0 );
setMoveKey( spep_4 + 60, 1, 222.6, -18.2 , 0 );
setMoveKey( spep_4 + 62, 1, 227.7, -21.4 , 0 );
setMoveKey( spep_4 + 64, 1, 229.8, -18.3 , 0 );
setMoveKey( spep_4 + 66, 1, 234.7, -21.2 , 0 );
setMoveKey( spep_4 + 68, 1, 237, -18.4 , 0 );
setMoveKey( spep_4 + 70, 1, 241.7, -20.9 , 0 );
setMoveKey( spep_4 + 72, 1, 244.1, -18.5 , 0 );
setMoveKey( spep_4 + 74, 1, 248.8, -20.7 , 0 );
setMoveKey( spep_4 + 76, 1, 251.3, -18.5 , 0 );
setMoveKey( spep_4 + 78, 1, 255.9, -20.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 2, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 6, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 10, 1, 1, 1 );
setScaleKey( spep_4 + 12, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 18, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 26, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 28, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 32, 1, 1.12, 1.12 );
setScaleKey( spep_4 + 34, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 36, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 38, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 40, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 44, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 45, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 50, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 52, 1, 1, 1 );
setScaleKey( spep_4 + 54, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 58, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 60, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 62, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 64, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 66, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 68, 1, 0.49, 0.49 );
setScaleKey( spep_4 + 70, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 72, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 74, 1, 0.41, 0.41 );
setScaleKey( spep_4 + 76, 1, 0.38, 0.38 );
setScaleKey( spep_4 + 78, 1, 0.35, 0.35 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 78, 1, 0 );


-- ** エフェクト等 ** --
entryFade(spep_4+68, 8, 6, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 210);  -- 黒　背
--entryFadeBg(spep_4, 4, 16, 4,255,0,0,90);     -- red fade
--entryFadeBg(spep_4+40, 4, 16, 4,255,0,0,90);     -- red fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 36; --エンドフェイズのフレーム数を置き換える

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
-- 被弾続き
------------------------------------------------------

--SE
playSe( spep_4+46, SE_14);
for cnt = 4, 72, 4 do
	playSe( spep_4+cnt, SE_13);
end

--次の準備
spep_5=spep_4+80;

------------------------------------------------------
-- 接近
------------------------------------------------------
--エフェクト再生
approach=entryEffectLife(spep_5,SP_04x,60,0x100,-1,0,0,0);

setEffMoveKey(spep_5,approach,0,0,0);
setEffMoveKey(spep_5+60,approach,0,0,0);

setEffScaleKey(spep_5,approach,-1.0,1.0);
setEffScaleKey(spep_5+60,approach,-1.0,1.0);

setEffAlphaKey(spep_5,approach,255);
setEffAlphaKey(spep_5+60,approach,255);

setEffRotateKey(spep_5,approach,0);
setEffRotateKey(spep_5+60,approach,0);

--集中線
shuthusen3 = entryEffectLife( spep_5 + 0,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuthusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, shuthusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuthusen3, 1, 1 );
setEffScaleKey( spep_5 + 40, shuthusen3, 1, 1 );
setEffScaleKey( spep_5 + 42, shuthusen3, 1.35, 1.35 );
setEffScaleKey( spep_5 + 58, shuthusen3, 1.35, 1.35 );

setEffRotateKey( spep_5 + 0, shuthusen3, 180 );
setEffRotateKey( spep_5 + 58, shuthusen3, 180 );

setEffAlphaKey( spep_5 + 0, shuthusen3, 255 );
setEffAlphaKey( spep_5 + 58, shuthusen3, 255 );


-- ** エフェクト等 ** --
entryFade(spep_5+52, 6, 6, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_5, SE_04);

--黒背景
entryFadeBg(spep_5, 0, 60, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_6=spep_5+60;

------------------------------------------------------
-- 蹴り
------------------------------------------------------
--エフェクト再生
kick=entryEffectLife(spep_6,SP_05x,80,0x100,-1,0,0,0);

setEffMoveKey(spep_6,kick,0,0,0);
setEffMoveKey(spep_6+80,kick,0,0,0);

setEffScaleKey(spep_6,kick,1.0,1.0);
setEffScaleKey(spep_6+80,kick,1.0,1.0);

setEffAlphaKey(spep_6,kick,255);
setEffAlphaKey(spep_6+80,kick,255);

setEffRotateKey(spep_6,kick,0);
setEffRotateKey(spep_6+80,kick,0);


--文字エントリー
ctga = entryEffectLife( spep_6 + 37,  10005, 25, 0x100, -1, 0, 120.4, 165.7 );--ガッ

setEffMoveKey( spep_6 + 37, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 38, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 42, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 44, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 46, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 48, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 50, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 52, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 54, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 56, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 58, ctga, 128.3, 154.2 , 0 );
setEffMoveKey( spep_6 + 60, ctga, 120.4, 165.7 , 0 );
setEffMoveKey( spep_6 + 62, ctga, 128.3, 154.2 , 0 );

setEffScaleKey( spep_6 + 37, ctga, 1.9, 1.9 );
setEffScaleKey( spep_6 + 38, ctga, 1.9, 1.9 );
setEffScaleKey( spep_6 + 62, ctga, 1.9, 1.9 );

setEffRotateKey( spep_6 + 37, ctga, -28.2 );
setEffRotateKey( spep_6 + 38, ctga, -28.2 );
setEffRotateKey( spep_6 + 62, ctga, -28.2 );

setEffAlphaKey( spep_6 + 37, ctga, 255 );
setEffAlphaKey( spep_6 + 38, ctga, 255 );
setEffAlphaKey( spep_6 + 62, ctga, 255 );

--流線(横)
ryusen3 = entryEffectLife( spep_6 + 0,  914, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen3, 2.1, 1.32 );
setEffScaleKey( spep_6 + 78, ryusen3, 2.1, 1.32 );

setEffRotateKey( spep_6 + 0, ryusen3, -180 );
setEffRotateKey( spep_6 + 78, ryusen3, -180 );

setEffAlphaKey( spep_6 + 0, ryusen3, 255 );
setEffAlphaKey( spep_6 + 78, ryusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6 + 37,  906, 25, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 37, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 38, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 62, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 37, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 38, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 62, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 37, shuchusen4, 180 );
setEffRotateKey( spep_6 + 38, shuchusen4, 180 );
setEffRotateKey( spep_6 + 62, shuchusen4, 180 );

setEffAlphaKey( spep_6 + 37, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 62, shuchusen4, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 78, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );
changeAnime( spep_6 + 37, 1, 106 );

setMoveKey( spep_6 + 0, 1, -663.1, -56.9 , 0 );
setMoveKey( spep_6 + 2, 1, -562.1, -62.8 , 0 );
setMoveKey( spep_6 + 4, 1, -467, -56.8 , 0 );
setMoveKey( spep_6 + 6, 1, -366.1, -62.8 , 0 );
setMoveKey( spep_6 + 8, 1, -271, -56.8 , 0 );
setMoveKey( spep_6 + 10, 1, -170, -62.8 , 0 );
setMoveKey( spep_6 + 12, 1, -74.9, -56.8 , 0 );
setMoveKey( spep_6 + 14, 1, 26, -62.8 , 0 );
setMoveKey( spep_6 + 16, 1, 121.1, -56.8 , 0 );
setMoveKey( spep_6 + 18, 1, 124.8, -62.8 , 0 );
setMoveKey( spep_6 + 20, 1, 122.7, -56.8 , 0 );
setMoveKey( spep_6 + 22, 1, 126.5, -62.8 , 0 );
setMoveKey( spep_6 + 24, 1, 124.4, -56.8 , 0 );
setMoveKey( spep_6 + 26, 1, 128.1, -62.8 , 0 );
setMoveKey( spep_6 + 28, 1, 126, -56.8 , 0 );
setMoveKey( spep_6 + 30, 1, 129.7, -62.8 , 0 );
setMoveKey( spep_6 + 32, 1, 127.6, -56.8 , 0 );
setMoveKey( spep_6 + 34, 1, 131.4, -62.8 , 0 );
setMoveKey( spep_6 + 36, 1, 129.3, -56.8 , 0 );
setMoveKey( spep_6 + 39, 1, 133, -62.8 , 0 );
setMoveKey( spep_6 + 40, 1, 165.6, -55 , 0 );
setMoveKey( spep_6 + 42, 1, 209, -58.5 , 0 );
setMoveKey( spep_6 + 44, 1, 247.4, -55 , 0 );
setMoveKey( spep_6 + 46, 1, 290.8, -58.5 , 0 );
setMoveKey( spep_6 + 48, 1, 329.2, -55 , 0 );
setMoveKey( spep_6 + 50, 1, 372.6, -58.5 , 0 );
setMoveKey( spep_6 + 52, 1, 411, -55 , 0 );
setMoveKey( spep_6 + 54, 1, 454.4, -58.5 , 0 );
setMoveKey( spep_6 + 56, 1, 492.9, -55 , 0 );
setMoveKey( spep_6 + 58, 1, 536.3, -58.5 , 0 );
setMoveKey( spep_6 + 60, 1, 574.7, -55 , 0 );
setMoveKey( spep_6 + 62, 1, 618.1, -58.5 , 0 );
setMoveKey( spep_6 + 64, 1, 615.6, -55 , 0 );
setMoveKey( spep_6 + 66, 1, 618.1, -58.5 , 0 );
setMoveKey( spep_6 + 68, 1, 615.6, -55 , 0 );
setMoveKey( spep_6 + 70, 1, 618.1, -58.5 , 0 );
setMoveKey( spep_6 + 72, 1, 615.6, -55 , 0 );
setMoveKey( spep_6 + 74, 1, 618.1, -58.5 , 0 );
setMoveKey( spep_6 + 76, 1, 615.6, -55 , 0 );
setMoveKey( spep_6 + 78, 1, 618.1, -58.5 , 0 );

setScaleKey( spep_6 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 39, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 40, 1, 1.19, 1.19 );
setScaleKey( spep_6 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 78, 1, 1.2, 1.2 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 39, 1, 0 );
setRotateKey( spep_6 + 40, 1, -19 );
setRotateKey( spep_6 + 78, 1, -19 );

-- ** エフェクト等 ** --
entryFade(spep_6+70, 6, 4, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_6+37, 1009);


--黒背景
entryFadeBg(spep_6, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_7=spep_6+80;

------------------------------------------------------
-- 投げ
------------------------------------------------------
--エフェクト再生
throwing=entryEffectLife(spep_7,SP_06x,90,0x100,-1,0,0,0);

setEffMoveKey(spep_7,throwing,0,0,0);
setEffMoveKey(spep_7+90,throwing,0,0,0);

setEffScaleKey(spep_7,throwing,-1.0,1.0);
setEffScaleKey(spep_7+90,throwing,-1.0,1.0);

setEffAlphaKey(spep_7,throwing,255);
setEffAlphaKey(spep_7+90,throwing,255);

setEffRotateKey(spep_7,throwing,0);
setEffRotateKey(spep_7+90,throwing,0);

--集中線
shuchusen5 = entryEffectLife( spep_7 + 0,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 88, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen5, 1.2, 1.2 );
setEffScaleKey( spep_7 + 88, shuchusen5, 1.2, 1.2 );

setEffRotateKey( spep_7 + 0, shuchusen5, 0 );
setEffRotateKey( spep_7 + 88, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 88, shuchusen5, 255 );

--SE
playSe( spep_7+28, 7);

-- ** エフェクト等 ** --
entryFade(spep_7+82, 6, 4, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_7, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_8=spep_7+90;

------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクト再生
explosion=entryEffectLife(spep_8,SP_07x,80,0x100,-1,0,0,0);

setEffMoveKey(spep_8,explosion,0,0,0);
setEffMoveKey(spep_8+80,explosion,0,0,0);

setEffScaleKey(spep_8,explosion,-1.0,1.0);
setEffScaleKey(spep_8+80,explosion,-1.0,1.0);

setEffAlphaKey(spep_8,explosion,255);
setEffAlphaKey(spep_8+80,explosion,255);

setEffRotateKey(spep_8,explosion,0);
setEffRotateKey(spep_8+80,explosion,0);


shuchusen6 = entryEffectLife( spep_8 + 0,  906, 78, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 78, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_8 + 78, shuchusen6, 1, 1 );

setEffRotateKey( spep_8 + 0, shuchusen6, 0 );
setEffRotateKey( spep_8 + 78, shuchusen6, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_8 + 78, shuchusen6, 255 );


--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 38, 1, 0);
changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 0.7, 159.6 , 0 );
setMoveKey( spep_8 + 2, 1, 0.7, 139.6 , 0 );
setMoveKey( spep_8 + 4, 1, 0.6, 119.6 , 0 );
setMoveKey( spep_8 + 6, 1, 0.5, 99.7 , 0 );
setMoveKey( spep_8 + 8, 1, 0.5, 79.7 , 0 );
setMoveKey( spep_8 + 10, 1, 0.4, 59.7 , 0 );
setMoveKey( spep_8 + 12, 1, 0.4, 39.8 , 0 );
setMoveKey( spep_8 + 14, 1, 0.3, 19.8 , 0 );
setMoveKey( spep_8 + 16, 1, 0.2, -0.2 , 0 );
setMoveKey( spep_8 + 18, 1, 0.2, -2.4 , 0 );
setMoveKey( spep_8 + 20, 1, 0.2, -4.6 , 0 );
setMoveKey( spep_8 + 22, 1, 0.2, -6.8 , 0 );
setMoveKey( spep_8 + 24, 1, 0.2, -9 , 0 );
setMoveKey( spep_8 + 26, 1, 0.3, -11.3 , 0 );
setMoveKey( spep_8 + 28, 1, 0.3, -13.5 , 0 );
setMoveKey( spep_8 + 30, 1, 0.2, -15.7 , 0 );
setMoveKey( spep_8 + 32, 1, 0.2, -17.9 , 0 );
setMoveKey( spep_8 + 34, 1, 0.2, -20.1 , 0 );
setMoveKey( spep_8 + 36, 1, 0.2, -20.1 , 0 );

setScaleKey( spep_8 + 0, 1, 4.04, 4.04 );
setScaleKey( spep_8 + 2, 1, 3.66, 3.66 );
setScaleKey( spep_8 + 4, 1, 3.28, 3.28 );
setScaleKey( spep_8 + 6, 1, 2.9, 2.9 );
setScaleKey( spep_8 + 8, 1, 2.52, 2.52 );
setScaleKey( spep_8 + 10, 1, 2.14, 2.14 );
setScaleKey( spep_8 + 12, 1, 1.76, 1.76 );
setScaleKey( spep_8 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_8 + 16, 1, 1, 1 );
setScaleKey( spep_8 + 18, 1, 0.99, 0.99 );
setScaleKey( spep_8 + 20, 1, 0.98, 0.98 );
setScaleKey( spep_8 + 22, 1, 0.97, 0.97 );
setScaleKey( spep_8 + 24, 1, 0.96, 0.96 );
setScaleKey( spep_8 + 26, 1, 0.94, 0.94 );
setScaleKey( spep_8 + 28, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 30, 1, 0.92, 0.92 );
setScaleKey( spep_8 + 32, 1, 0.91, 0.91 );
setScaleKey( spep_8 + 36, 1, 0.9, 0.9 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 36, 1, 0 );

--黒背景
entryFadeBg(spep_8, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe( spep_8, 7);
playSe( spep_8+32, 1023);

-- ** エフェクト等 ** --
entryFade(spep_8+70, 4, 10, 4,170,0,0,255);     -- red fade

--次の準備
spep_9=spep_8+80;

------------------------------------------------------
-- ガ
------------------------------------------------------

--吹っ飛びヤムチャ--
setDisp( spep_9 + 0, 1, 1 );
changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_9 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_9 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_9 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_9 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_9 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_9 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_9 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_9 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_9 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_9 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_9 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_9 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_9 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_9 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 2, 1, 105 );
setRotateKey( spep_9 + 4, 1, 240 );
setRotateKey( spep_9 + 6, 1, 405 );
setRotateKey( spep_9 + 8, 1, 600 );
setRotateKey( spep_9 + 10, 1, 825 );
setRotateKey( spep_9 + 12, 1, 1080 );
setRotateKey( spep_9 + 110, 1, 1080 );

--爆発エフェクト
entryEffect( spep_9, SP_08x,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9, SE_10);

setDamage( spep_9 +16, 1, 0);  -- ダメージ振動等
--setShake(spep_9+8,6,15);
--setShake(spep_9+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_9 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_9 + 14, ctGa, 30, 10);

setEffMoveKey( spep_9 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 110, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_9 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_9+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_9+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_9+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_9+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_9+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_9+110, ctGa, 3.8, 3.8);

setEffRotateKey( spep_9 + 14, ctGa, -40 );
setEffRotateKey( spep_9 + 16, ctGa, -31 );
setEffRotateKey( spep_9 + 18, ctGa, -40 );
setEffRotateKey( spep_9 + 20, ctGa, -31 );
setEffRotateKey( spep_9 + 22, ctGa, -40 );
setEffRotateKey( spep_9 + 24, ctGa, -31);
setEffRotateKey( spep_9 + 26, ctGa, -40 );
setEffRotateKey( spep_9 + 28, ctGa, -31);
setEffRotateKey( spep_9 + 30, ctGa, -40 );
setEffRotateKey( spep_9 + 110, ctGa, -40 );

setEffAlphaKey( spep_9 + 14, ctGa, 255 );
setEffAlphaKey( spep_9 + 110, ctGa, 255 );

--集中線（白）
shuchusen7 = entryEffectLife( spep_9+14, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_9+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_9+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe( spep_9+13, SE_11);

-- ダメージ表示
dealDamage(spep_9+16);
--entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+110);

end
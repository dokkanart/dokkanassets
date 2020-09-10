--魔人ブウ(悪)　1015040　ミスティックボールアタック
--sp_effect_b4_00068

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
SP_01=	152173	;--	ボール化
SP_02=	152174	;--	突撃ラッシュ
SP_03=	152175	;--	ラッシュ遠景
SP_04=	152176	;--	突き落とし（前）
SP_05=	152177	;--	突き落とし（後）
SP_06=	152178	;--	ビーム
SP_07=	152179	;--	ビーム遠景

--敵側
SP_01x=	152173	;--	ボール化	(敵)
SP_02x=	152234	;--	突撃ラッシュ	(敵)
SP_03x=	152175	;--	ラッシュ遠景	(敵)
SP_04x=	152235	;--	突き落とし（前）	(敵)
SP_05x=	152177	;--	突き落とし（後）	(敵)
SP_06x=	152178	;--	ビーム	(敵)
SP_07x=	152179	;--	ビーム遠景	(敵)

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

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
--------------------------------------
--ボールになる
--------------------------------------
spep_0=0;

--エフェクトの再生
ball=entryEffectLife(spep_0,SP_01,88,0x100,-1,0,0,0);

setEffMoveKey(spep_0,ball,0,0,0);
setEffMoveKey(spep_0+88,ball,0,0,0);
setEffScaleKey(spep_0,ball,1.0,1.0);
setEffScaleKey(spep_0+88,ball,1.0,1.0);
setEffAlphaKey(spep_0,ball,255);
setEffAlphaKey(spep_0+88,ball,255);
setEffRotateKey(spep_0,ball,0);
setEffRotateKey(spep_0+88,ball,0);

--集中線
shuchuse = entryEffectLife( spep_0 + 0,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, shuchuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchuse, 1, 1.11 );
setEffScaleKey( spep_0 + 88, shuchuse, 1, 1.11 );

setEffRotateKey( spep_0 + 0, shuchuse, 180 );
setEffRotateKey( spep_0 + 88, shuchuse, 180 );

setEffAlphaKey( spep_0 + 0, shuchuse, 255 );
setEffAlphaKey( spep_0 + 88, shuchuse, 255 );

--顔カットイン
speff=entryEffect(spep_0+2,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+2,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+14,190006,70,0x100,-1,-30,535);--ゴゴゴ
setEffMoveKey(spep_0+14,ctgogo,-30,535,0);
setEffMoveKey(spep_0+84,ctgogo,-30,535,0);
setEffScaleKey(spep_0+14, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+84, ctgogo, 0.7, 0.7);


--白フェード
entryFade(spep_0+82, 4, 4, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0+16, 4, 80, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_0+14, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+90;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen9=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

--------------------------------------
--敵に攻撃をする
--------------------------------------
--エフェクトの再生
hit=entryEffectLife(spep_2,SP_02,190,0x100,-1,0,0,0);

setEffMoveKey(spep_2,hit,0,0,0);
setEffMoveKey(spep_2+190,hit,0,0,0);
setEffScaleKey(spep_2,hit,1.0,1.0);
setEffScaleKey(spep_2+190,hit,1.0,1.0);
setEffAlphaKey(spep_2,hit,255);
setEffAlphaKey(spep_2+190,hit,255);
setEffRotateKey(spep_2,hit,0);
setEffRotateKey(spep_2+190,hit,0);

--流線
rhuusen = entryEffectLife( spep_2 + 0,  914, 190, 0x80, -1, 0, -164.4, -49.3 );

setEffMoveKey( spep_2 + 0, rhuusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 190, rhuusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, rhuusen, 3.92, 1.96 );
setEffScaleKey( spep_2 + 108, rhuusen, 3.92, 1.96 );
setEffScaleKey( spep_2 + 109, rhuusen, 3.92, 1.96 );
setEffScaleKey( spep_2 + 110, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 125, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 126, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 126, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 136, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 137, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 138, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 148, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 149, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 150, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 158, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 159, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 160, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 190, rhuusen, 3.93, 1.96 );

setEffRotateKey( spep_2 + 0, rhuusen, 40.9 );
setEffRotateKey( spep_2 + 2, rhuusen, 41 );
setEffRotateKey( spep_2 + 106, rhuusen, 41 );
--setEffRotateKey( spep_2 + 107, rhuusen, 41 );
--setEffRotateKey( spep_2 + 113, rhuusen, 41 );
--setEffRotateKey( spep_2 + 110, rhuusen, 27.6 );
--setEffRotateKey( spep_2 + 112, rhuusen, 27.6 );
--setEffRotateKey( spep_2 + 113, rhuusen, 27.6 );
setEffRotateKey( spep_2 + 107, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 108, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 122, rhuusen, -50.6 );
--setEffRotateKey( spep_2 + 125, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 123, rhuusen, 38.6 );
setEffRotateKey( spep_2 + 124, rhuusen, 38.6 );
setEffRotateKey( spep_2 + 134, rhuusen, 38.6 );
setEffRotateKey( spep_2 + 135, rhuusen, 38.6 );
setEffRotateKey( spep_2 + 136, rhuusen, 20.9 );
setEffRotateKey( spep_2 + 138, rhuusen, 20.9  );
setEffRotateKey( spep_2 + 139, rhuusen, 20.9 );
setEffRotateKey( spep_2 + 140, rhuusen, 20.9 );
setEffRotateKey( spep_2 + 148, rhuusen, 20.9 );
--setEffRotateKey( spep_2 + 149, rhuusen, 20.9 );
--setEffRotateKey( spep_2 + 148, rhuusen, 23.9 );
--setEffRotateKey( spep_2 + 149, rhuusen, 23.9 );
--setEffRotateKey( spep_2 + 150, rhuusen, 27.6 );
setEffRotateKey( spep_2 + 149, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 150, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 156, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 157, rhuusen, -7.6 );
--setEffRotateKey( spep_2 + 163, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 158, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 164, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 165, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 166, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 190, rhuusen, -7.6 );
--setEffRotateKey( spep_2 + 159, rhuusen, 27.6 );
--setEffRotateKey( spep_2 + 160, rhuusen, 27.6 );
--setEffRotateKey( spep_2 + 168, rhuusen, 27.6 );

setEffAlphaKey( spep_2 + 0, rhuusen, 255 );
setEffAlphaKey( spep_2 + 104, rhuusen, 255 );
setEffAlphaKey( spep_2 + 105, rhuusen, 255 );
setEffAlphaKey( spep_2 + 106, rhuusen, 0 );
setEffAlphaKey( spep_2 + 106, rhuusen, 0 );
setEffAlphaKey( spep_2 + 107, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 108, rhuusen, 255 );
setEffAlphaKey( spep_2 + 120, rhuusen, 255 );
setEffAlphaKey( spep_2 + 121, rhuusen, 0 );
setEffAlphaKey( spep_2 + 122, rhuusen, 0 );
--setEffAlphaKey( spep_2 + 122, rhuusen, 0 );
setEffAlphaKey( spep_2 + 123, rhuusen, 255 );
setEffAlphaKey( spep_2 + 132, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 133, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 134, rhuusen, 0 );
--setEffAlphaKey( spep_2 + 13, rhuusen, 0 );
setEffAlphaKey( spep_2 + 136, rhuusen, 0 );
setEffAlphaKey( spep_2 + 137, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 138, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 146, rhuusen, 255 );
setEffAlphaKey( spep_2 + 147, rhuusen, 0 );
setEffAlphaKey( spep_2 + 148, rhuusen, 0 );
--setEffAlphaKey( spep_2 + 149, rhuusen, 0 );
setEffAlphaKey( spep_2 + 149, rhuusen, 255 );
setEffAlphaKey( spep_2 + 150, rhuusen, 255 );
setEffAlphaKey( spep_2 + 154, rhuusen, 255 );
setEffAlphaKey( spep_2 + 155, rhuusen, 255 );
setEffAlphaKey( spep_2 + 156, rhuusen, 0 );
setEffAlphaKey( spep_2 + 157, rhuusen, 0 );
--setEffAlphaKey( spep_2 + 159, rhuusen, 0 );
setEffAlphaKey( spep_2 + 158, rhuusen, 255 );
setEffAlphaKey( spep_2 + 160, rhuusen, 255 );
setEffAlphaKey( spep_2 + 164, rhuusen, 0 );
setEffAlphaKey( spep_2 + 165, rhuusen, 0 );
setEffAlphaKey( spep_2 + 166, rhuusen, 255 );
setEffAlphaKey( spep_2 + 190, rhuusen, 255 );

--黒背景
entryFadeBg(spep_2, 0, 190, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_2+4, 44); --移動

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 190, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 526, -639.8 , 0 );
setMoveKey( spep_2 + 80, 1, 526, -639.8 , 0 );
setMoveKey( spep_2 + 82, 1, 454.3, -553.9 , 0 );
setMoveKey( spep_2 + 84, 1, 382.6, -468.1 , 0 );
setMoveKey( spep_2 + 86, 1, 310.9, -382.3 , 0 );
setMoveKey( spep_2 + 88, 1, 239.2, -296.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 88, 1, 1.3, 1.3 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 88, 1, 0 );



--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+88 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,239.2, -296.4 , 0 );
setScaleKey(SP_dodge , 1,1.3, 1.3  );
setRotateKey(SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1, 239.2, -296.4 , 0 );
setScaleKey(SP_dodge+8 , 1,1.3, 1.3  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );
--setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);
--setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
--setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
--setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


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
changeAnime( spep_2 + 95, 1, 108 );
changeAnime( spep_2 + 96, 1, 108 );
changeAnime( spep_2 + 113, 1, 106 );
changeAnime( spep_2 + 114, 1, 106 );--
changeAnime( spep_2 + 127, 1, 108 );
changeAnime( spep_2 + 128, 1, 108 );--
changeAnime( spep_2 + 140, 1, 106 );--
changeAnime( spep_2 + 151, 1, 108 );
changeAnime( spep_2 + 152, 1, 108 );
--changeAnime( spep_2 + 154, 1, 108 );
changeAnime( spep_2 + 159, 1, 106 );--
changeAnime( spep_2 + 160, 1, 106 );--
--changeAnime( spep_2 + 156, 1, 106 );--
changeAnime( spep_2 + 169, 1, 108 );--
changeAnime( spep_2 + 170, 1, 108 );--

setMoveKey( spep_2 + 90, 1, 167.5, -210.5 , 0 );
setMoveKey( spep_2 + 94, 1, 95.8, -124.8 , 0 );
setMoveKey( spep_2 + 98, 1, 40, -59.7 , 0 );
setMoveKey( spep_2 + 100, 1, 46.9, -71.1 , 0 );
setMoveKey( spep_2 + 102, 1, 53.9, -63.9 , 0 );
setMoveKey( spep_2 + 104, 1, 49.7, -75.2 , 0 );
setMoveKey( spep_2 + 106, 1, 53, -68 , 0 );
setMoveKey( spep_2 + 108, 1, 59.9, -79.4 , 0 );
setMoveKey( spep_2 + 110, 1, 66.8, -72.2 , 0 );
setMoveKey( spep_2 + 112, 1, 62.7, -83.6 , 0 );
--setMoveKey( spep_2 + 115, 1, 65.9, -76.4 , 0 );
setMoveKey( spep_2 + 113, 1, -16.8, -69.9 , 0 );
setMoveKey( spep_2 + 114, 1, -16.8, -69.9 , 0 );
setMoveKey( spep_2 + 118, 1, -25.8, -68.6 , 0 );
setMoveKey( spep_2 + 120, 1, -20.4, -78.4 , 0 );
setMoveKey( spep_2 + 122, 1, -23.7, -72.1 , 0 );
setMoveKey( spep_2 + 124, 1, -29.1, -77.2 , 0 );
setMoveKey( spep_2 + 126, 1, -38.1, -76 , 0 );
--setMoveKey( spep_2 + 129, 1, -32.7, -85.8 , 0 );
setMoveKey( spep_2 + 127, 1, 40.1, -83.1 , 0 );
setMoveKey( spep_2 + 138, 1, 40.1, -83.1 , 0 );
setMoveKey( spep_2 + 139, 1, 40.1, -83.1 , 0 );
--setMoveKey( spep_2 + 132, 1, 46.6, -96 , 0 );
--setMoveKey( spep_2 + 134, 1, 60.2, -91.9 , 0 );
--setMoveKey( spep_2 + 136, 1, 56.5, -100.5 , 0 );
--setMoveKey( spep_2 + 138, 1, 66.7, -94.9 , 0 );
--setMoveKey( spep_2 + 141, 1, 73.2, -107.8 , 0 );
--setMoveKey( spep_2 + 142, 1, 44.3, -34.1 , 0 );
--setMoveKey( spep_2 + 144, 1, 29.9, -27.5 , 0 );
setMoveKey( spep_2 + 140, 1, 29.9, -32 , 0 );
setMoveKey( spep_2 + 148, 1, 21.2, -20.3 , 0 );
--setMoveKey( spep_2 + 150, 1, 10.3, -20.1 , 0 );
--setMoveKey( spep_2 + 153, 1, -4.1, -13.5 , 0 );
setMoveKey( spep_2 + 150, 1, 21.2, -20.3 , 0 );
setMoveKey( spep_2 + 151, 1, 23.3, -73.2 , 0 );
setMoveKey( spep_2 + 152, 1, 23.3, -73.2 , 0 );
setMoveKey( spep_2 + 156, 1, 33.7, -79.4 , 0 );
setMoveKey( spep_2 + 158, 1, 51.4, -68.5 , 0 );
setMoveKey( spep_2 + 160, 1, 51.6, -70.5 , 0 );
setMoveKey( spep_2 + 163, 1, 65.9, -58.1 , 0 );
setMoveKey( spep_2 + 164, 1, 44.3, -31.6 , 0 );
setMoveKey( spep_2 + 166, 1, 19.2, -38.5 , 0 );
setMoveKey( spep_2 + 168, 1, 8.5, -56.5 , 0 );
setMoveKey( spep_2 + 171, 1, -10.8, -58.3 , 0 );
setMoveKey( spep_2 + 172, 1, 23.3, -73.2 , 0 );
setMoveKey( spep_2 + 174, 1, 35, -79.4 , 0 );
setMoveKey( spep_2 + 176, 1, 53.9, -68.5 , 0 );
setMoveKey( spep_2 + 178, 1, 55.4, -70.5 , 0 );
setMoveKey( spep_2 + 180, 1, 70.9, -58.1 , 0 );
setMoveKey( spep_2 + 182, 1, 70.7, -68.1 , 0 );
setMoveKey( spep_2 + 184, 1, 77.7, -61 , 0 );
setMoveKey( spep_2 + 186, 1, 67.3, -66.7 , 0 );
setMoveKey( spep_2 + 188, 1, 70.9, -58.1 , 0 );
setMoveKey( spep_2 + 190, 1, 70.9, -58.1 , 0 );

setScaleKey( spep_2 + 190, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 112, 1, 0 );
setRotateKey( spep_2 + 113, 1, -68.1 );
setRotateKey( spep_2 + 114, 1, -68.1 );--
setRotateKey( spep_2 + 116, 1, -68.2 );
setRotateKey( spep_2 + 126, 1, -68.2 );
setRotateKey( spep_2 + 127, 1, 22.6 );
setRotateKey( spep_2 + 128, 1, 22.6 );
setRotateKey( spep_2 + 130, 1, 22.7 );
setRotateKey( spep_2 + 139, 1, 22.7 );
--setRotateKey( spep_2 + 144, 1, 22.7 );
setRotateKey( spep_2 + 140, 1, -68.2 );
setRotateKey( spep_2 + 148, 1, -68.2 );--
setRotateKey( spep_2 + 149, 1, -68.2 );--
setRotateKey( spep_2 + 150, 1, -68.2 );--
--setRotateKey( spep_2 + 151, 1, -68.2 );--
setRotateKey( spep_2 + 151, 1, 22.6 );
setRotateKey( spep_2 + 152, 1, 22.6 );
setRotateKey( spep_2 + 156, 1, 22.7 );
setRotateKey( spep_2 + 158, 1, 22.7 );
--setRotateKey( spep_2 + 159, 1, 22.7 );
setRotateKey( spep_2 + 159, 1, -68.1 );
setRotateKey( spep_2 + 160, 1, -68.1 );
setRotateKey( spep_2 + 168, 1, -68.2 );
--setRotateKey( spep_2 + 171, 1, -68.2 );
setRotateKey( spep_2 + 169, 1, 22.6 );
setRotateKey( spep_2 + 170, 1, 22.7 );
setRotateKey( spep_2 + 174, 1, 22.7 );
setRotateKey( spep_2 + 178, 1, 22.7 );
setRotateKey( spep_2 + 188, 1, 22.7 );
setRotateKey( spep_2 + 190, 1, 22.7 );

--集中線
shuchuse2 = entryEffectLife( spep_2 + 94,  906, 94, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 94, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 94, shuchuse2, 1, 1.11 );
setEffScaleKey( spep_2 + 188, shuchuse2, 1, 1.11 );

setEffRotateKey( spep_2 + 94, shuchuse2, 180 );
setEffRotateKey( spep_2 + 188, shuchuse2, 180 );

setEffAlphaKey( spep_2 + 94, shuchuse2, 0 );
setEffAlphaKey( spep_2 + 95, shuchuse2, 255 );
setEffAlphaKey( spep_2 + 96, shuchuse2, 255 );
setEffAlphaKey( spep_2 + 188, shuchuse2, 255 );

--白フェード
entryFade(spep_2+184, 4, 4, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_2+95, 1009); --殴り
playSe( spep_2+113, 1010); --殴り
playSe( spep_2+127, 1009); --殴り
playSe( spep_2+140, 1010); --殴り
playSe( spep_2+151, 1009); --殴り
playSe( spep_2+159, 1010); --殴り
playSe( spep_2+169, 1009); --殴り

--次の準備
spep_3=spep_2+190;

--------------------------------------
--軌道を見せる
--------------------------------------
--エフェクトの再生
orbit=entryEffectLife(spep_3,SP_03,100,0x100,-1,0,0,0);

setEffMoveKey(spep_3,orbit,0,0,0);
setEffMoveKey(spep_3+100,orbit,0,0,0);
setEffScaleKey(spep_3,orbit,1.0,1.0);
setEffScaleKey(spep_3+100,orbit,1.0,1.0);
setEffAlphaKey(spep_3,orbit,255);
setEffAlphaKey(spep_3+100,orbit,255);
setEffRotateKey(spep_3,orbit,0);
setEffRotateKey(spep_3+100,orbit,0);

--集中線
shuchuse3 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchuse3, 1.36, 1.82 );
setEffScaleKey( spep_3 + 98, shuchuse3, 1.36, 1.82 );

setEffRotateKey( spep_3 + 0, shuchuse3, 180 );
setEffRotateKey( spep_3 + 98, shuchuse3, 180 );

setEffAlphaKey( spep_3 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_3 + 98, shuchuse3, 255 );

--白フェード
entryFade(spep_3+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_3, 1009); --殴り
playSe( spep_3+20, 1010); --殴り
playSe( spep_3+40, 1009); --殴り
playSe( spep_3+60, 1010); --殴り
playSe( spep_3+80, 1009); --殴り
--playSe( spep_2+159, 1010); --殴り

--次の準備
spep_4=spep_3+100;

--------------------------------------
--叩き落とす
--------------------------------------
--エフェクトの再生(前)
drop_front=entryEffectLife(spep_4,SP_04,80,0x100,-1,0,0,0);

setEffMoveKey(spep_4,drop_front,0,0,0);
setEffMoveKey(spep_4+80,drop_front,0,0,0);
setEffScaleKey(spep_4,drop_front,1.0,1.0);
setEffScaleKey(spep_4+80,drop_front,1.0,1.0);
setEffAlphaKey(spep_4,drop_front,255);
setEffAlphaKey(spep_4+80,drop_front,255);
setEffRotateKey(spep_4,drop_front,0);
setEffRotateKey(spep_4+80,drop_front,0);

--流線
rhusen2 = entryEffectLife( spep_4 + 0,  914, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, rhusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, rhusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, rhusen2, 2.93, 1.32 );
setEffScaleKey( spep_4 + 78, rhusen2, 2.93, 1.32 );

setEffRotateKey( spep_4 + 0, rhusen2, -90 );
setEffRotateKey( spep_4 + 78, rhusen2, -90 );

setEffAlphaKey( spep_4 + 0, rhusen2, 255 );
setEffAlphaKey( spep_4 + 78, rhusen2, 255 );

--エフェクトの再生(後)
drop_back=entryEffectLife(spep_4,SP_05,80,0x80,-1,0,0,0);

setEffMoveKey(spep_4,drop_back,0,0,0);
setEffMoveKey(spep_4+80,drop_back,0,0,0);
setEffScaleKey(spep_4,drop_back,1.0,1.0);
setEffScaleKey(spep_4+80,drop_back,1.0,1.0);
setEffAlphaKey(spep_4,drop_back,255);
setEffAlphaKey(spep_4+80,drop_back,255);
setEffRotateKey(spep_4,drop_back,0);
setEffRotateKey(spep_4+80,drop_back,0);


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 + 53, 1, 106 );
changeAnime( spep_4 + 54, 1, 106 );

--------------------------------------------------
--setMoveKey( spep_4 + 0, 1, 5.7, -157.1 , 0 );
setMoveKey( spep_4 + 0, 1, -3.6, -156.6 , 0 );
setMoveKey( spep_4 + 2, 1, 5.7, -156.2 , 0 );
setMoveKey( spep_4 + 4, 1, -3.6, -144.7 , 0 );
setMoveKey( spep_4 + 6, 1, 5.7, -140.6 , 0 );
setMoveKey( spep_4 + 8, 1, -3.6, -140.1 , 0 );
setMoveKey( spep_4 + 10, 1, 5.7, -139.7 , 0 );
setMoveKey( spep_4 + 12, 1, -3.6, -215.5 , 0 );
setMoveKey( spep_4 + 14, 1, 5.7, -298.7 , 0 );
setMoveKey( spep_4 + 16, 1, -3.6, -385.6 , 0 );
setMoveKey( spep_4 + 18, 1, 5.7, -472.5 , 0 );
setMoveKey( spep_4 + 20, 1, -3.6, -410.5 , 0 );
setMoveKey( spep_4 + 22, 1, 5.7, -356 , 0 );
setMoveKey( spep_4 + 24, 1, -3.6, -305.2 , 0 );
setMoveKey( spep_4 + 26, 1, 5.7, -254.4 , 0 );
setMoveKey( spep_4 + 28, 1, -3.6, -192.4 , 0 );
setMoveKey( spep_4 + 30, 1, 5.7, -137.8 , 0 );
setMoveKey( spep_4 + 32, 1, -3.6, -87 , 0 );
setMoveKey( spep_4 + 34, 1, 5.7, -36.2 , 0 );
setMoveKey( spep_4 + 36, 1, -3.6, 25.7 , 0 );
setMoveKey( spep_4 + 38, 1, 5.7, 80.3 , 0 );
setMoveKey( spep_4 + 40, 1, -3.6, 131.1 , 0 );
setMoveKey( spep_4 + 42, 1, 5.7, 181.9 , 0 );
--setMoveKey( spep_4 + 44, 1, -3.6, 62.7 , 0 );
setMoveKey( spep_4 + 44, 1, 5.7, -33.8 , 0 );
setMoveKey( spep_4 + 46, 1, -3.6, -105.9 , 0 );
setMoveKey( spep_4 + 48, 1, 5.7, -168 , 0 );
setMoveKey( spep_4 + 50, 1, -3.6, -178.9 , 0 );
setMoveKey( spep_4 + 56, 1, 32.1, -92.3 , 0 );
setMoveKey( spep_4 + 58, 1, 43.1, -32.3 , 0 );
setMoveKey( spep_4 + 60, 1, 34.8, 50.6 , 0 );
setMoveKey( spep_4 + 62, 1, 33.9, 108.7 , 0 );
setMoveKey( spep_4 + 64, 1, 32.1, 198.9 , 0 );
setMoveKey( spep_4 + 66, 1, 43.1, 259 , 0 );
setMoveKey( spep_4 + 68, 1, 34.8, 326.7 , 0 );
setMoveKey( spep_4 + 70, 1, 33.9, 369.6 , 0 );
setMoveKey( spep_4 + 72, 1, 32.1, 444.5 , 0 );
setMoveKey( spep_4 + 74, 1, 43.1, 489.4 , 0 );
setMoveKey( spep_4 + 76, 1, 34.8, 557.1 , 0 );
setMoveKey( spep_4 + 78, 1, 33.9, 599.9 , 0 );
--------------------------------------------------

setScaleKey( spep_4 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 78, 1, 1.3, 1.3 );

setRotateKey( spep_4 + 0, 1, 90 );
setRotateKey( spep_4 + 52, 1, 90 );
--setRotateKey( spep_4 + 49, 1, 90 );
setRotateKey( spep_4 + 53, 1, 50 );
setRotateKey( spep_4 + 54, 1, 50 );
setRotateKey( spep_4 + 78, 1, 50 );


--白フェード
entryFade(spep_4+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_4+4, 1014); --煙の中を中を通る
playSe( spep_4+12, 1014); --煙の中を中を通る
--playSe( spep_4+22, 44);--下に落ちる
playSe( spep_4+53, SE_10);--地面に衝突する

--次の準備
spep_5=spep_4+80;

--------------------------------------
--ビームを撃つ
--------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_5,SP_06,98,0x100,-1,0,0,0);

setEffMoveKey(spep_5,beam,0,0,0);
setEffMoveKey(spep_5+98,beam,0,0,0);
setEffScaleKey(spep_5,beam,1.0,1.0);
setEffScaleKey(spep_5+98,beam,1.0,1.0);
setEffAlphaKey(spep_5,beam,255);
setEffAlphaKey(spep_5+98,beam,255);
setEffRotateKey(spep_5,beam,0);
setEffRotateKey(spep_5+98,beam,0);

--エフェクトの再生
shuchuse4 = entryEffectLife( spep_5 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchuse4, 1, 1.45 );
setEffScaleKey( spep_5 + 98, shuchuse4, 1, 1.45 );

setEffRotateKey( spep_5 + 0, shuchuse4, 180 );
setEffRotateKey( spep_5 + 98, shuchuse4, 180 );

setEffAlphaKey( spep_5 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_5 + 98, shuchuse4, 255 );

--白フェード
entryFade(spep_5+90, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背景

SE1=playSe( spep_5+20, 15); --きを貯める
stopSe(spep_5+44,SE1,0);
playSe( spep_5+53, SE_07); --発射

--次の準備
spep_6=spep_5+100;

--------------------------------------
--爆発
--------------------------------------

--エフェクトの再生
explosion=entryEffect(spep_6,SP_07,0x100,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+150,explosion,0,0,0);
setEffScaleKey(spep_6,explosion,1.0,1.0);
setEffScaleKey(spep_6+150,explosion,1.0,1.0);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+150,explosion,255);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+150,explosion,0);

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 30, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 18.3, -85.7 , 0 );
setMoveKey( spep_6 + 2, 1, 20.2, -81 , 0 );
setMoveKey( spep_6 + 4, 1, 16.1, -80.2 , 0 );
setMoveKey( spep_6 + 6, 1, 19.2, -78.3 , 0 );
setMoveKey( spep_6 + 8, 1, 18.3, -74 , 0 );
setMoveKey( spep_6 + 10, 1, 20.2, -69.3 , 0 );
setMoveKey( spep_6 + 12, 1, 16.1, -68.5 , 0 );
setMoveKey( spep_6 + 14, 1, 19.2, -66.7 , 0 );
setMoveKey( spep_6 + 16, 1, 18.3, -62.3 , 0 );
setMoveKey( spep_6 + 18, 1, 20.2, -57.6 , 0 );
setMoveKey( spep_6 + 20, 1, 18.3, -56.5 , 0 );
setMoveKey( spep_6 + 22, 1, 20.2, -51.8 , 0 );
setMoveKey( spep_6 + 24, 1, 16.1, -50.9 , 0 );
setMoveKey( spep_6 + 26, 1, 19.2, -49.1 , 0 );
setMoveKey( spep_6 + 28, 1, 18.3, -44.8 , 0 );
setMoveKey( spep_6 + 30, 1, 18.3, -44.8 , 0 );

setScaleKey( spep_6 + 0, 1, 0.52, 0.52 );
setScaleKey( spep_6 + 30, 1, 0.52, 0.52 );

setRotateKey( spep_6 + 0, 1, 41.2 );
setRotateKey( spep_6 + 30, 1, 41.2 );


--流線
rhusen3 = entryEffectLife( spep_6 + 26,  914, 122, 0x80, -1, 0, -2.3, -1276.4 );

setEffMoveKey( spep_6 + 26, rhusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 148, rhusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 26, rhusen3, 2.93, 1.32 );
setEffScaleKey( spep_6 + 148, rhusen3, 2.93, 1.32 );

setEffRotateKey( spep_6 + 26, rhusen3, -90 );
setEffRotateKey( spep_6 + 148, rhusen3, -90 );

setEffAlphaKey(spep_6+26,rhusen3,0);
setEffAlphaKey(spep_6+27,rhusen3,255);
setEffAlphaKey(spep_6+28,rhusen3,255);
setEffAlphaKey(spep_6+148,rhusen3,255);

playSe( spep_6, 1024); --発車



-- ダメージ表示
dealDamage(spep_6+30);
entryFade( spep_6+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+140);


else 


------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--ボールになる
--------------------------------------
spep_0=0;

--エフェクトの再生
ball=entryEffectLife(spep_0,SP_01x,88,0x100,-1,0,0,0);

setEffMoveKey(spep_0,ball,0,0,0);
setEffMoveKey(spep_0+88,ball,0,0,0);
setEffScaleKey(spep_0,ball,-1.0,1.0);
setEffScaleKey(spep_0+88,ball,-1.0,1.0);
setEffAlphaKey(spep_0,ball,255);
setEffAlphaKey(spep_0+88,ball,255);
setEffRotateKey(spep_0,ball,0);
setEffRotateKey(spep_0+88,ball,0);

--集中線
shuchuse = entryEffectLife( spep_0 + 0,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, shuchuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchuse, 1, 1.11 );
setEffScaleKey( spep_0 + 88, shuchuse, 1, 1.11 );

setEffRotateKey( spep_0 + 0, shuchuse, 180 );
setEffRotateKey( spep_0 + 88, shuchuse, 180 );

setEffAlphaKey( spep_0 + 0, shuchuse, 255 );
setEffAlphaKey( spep_0 + 88, shuchuse, 255 );

--顔カットイン
--speff=entryEffect(spep_0+4,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+4,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+14,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+14,ctgogo,-10,520,0);
setEffMoveKey(spep_0+84,ctgogo,-10,520,0);
setEffScaleKey(spep_0+14, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+84, ctgogo, -0.7, 0.7);


--白フェード
entryFade(spep_0+82, 4, 4, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0+16, 4, 80, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_0+14, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+90;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen9=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

--------------------------------------
--敵に攻撃をする
--------------------------------------
--エフェクトの再生
hit=entryEffectLife(spep_2,SP_02x,190,0x100,-1,0,0,0);

setEffMoveKey(spep_2,hit,0,0,0);
setEffMoveKey(spep_2+190,hit,0,0,0);
setEffScaleKey(spep_2,hit,1.0,1.0);
setEffScaleKey(spep_2+190,hit,1.0,1.0);
setEffAlphaKey(spep_2,hit,255);
setEffAlphaKey(spep_2+190,hit,255);
setEffRotateKey(spep_2,hit,0);
setEffRotateKey(spep_2+190,hit,0);

--流線
rhuusen = entryEffectLife( spep_2 + 0,  914, 190, 0x80, -1, 0, -164.4, -49.3 );

setEffMoveKey( spep_2 + 0, rhuusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 190, rhuusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, rhuusen, 3.92, 1.96 );
setEffScaleKey( spep_2 + 108, rhuusen, 3.92, 1.96 );
setEffScaleKey( spep_2 + 109, rhuusen, 3.92, 1.96 );
setEffScaleKey( spep_2 + 110, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 125, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 126, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 126, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 136, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 137, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 138, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 148, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 149, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 150, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 158, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 159, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 160, rhuusen, 3.93, 1.96 );
setEffScaleKey( spep_2 + 190, rhuusen, 3.93, 1.96 );

setEffRotateKey( spep_2 + 0, rhuusen, 40.9 );
setEffRotateKey( spep_2 + 2, rhuusen, 41 );
setEffRotateKey( spep_2 + 106, rhuusen, 41 );
--setEffRotateKey( spep_2 + 107, rhuusen, 41 );
--setEffRotateKey( spep_2 + 113, rhuusen, 41 );
--setEffRotateKey( spep_2 + 110, rhuusen, 27.6 );
--setEffRotateKey( spep_2 + 112, rhuusen, 27.6 );
--setEffRotateKey( spep_2 + 113, rhuusen, 27.6 );
setEffRotateKey( spep_2 + 107, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 108, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 122, rhuusen, -50.6 );
--setEffRotateKey( spep_2 + 125, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 123, rhuusen, 38.6 );
setEffRotateKey( spep_2 + 124, rhuusen, 38.6 );
setEffRotateKey( spep_2 + 134, rhuusen, 38.6 );
setEffRotateKey( spep_2 + 135, rhuusen, 38.6 );
setEffRotateKey( spep_2 + 136, rhuusen, 20.9 );
setEffRotateKey( spep_2 + 138, rhuusen, 20.9  );
setEffRotateKey( spep_2 + 139, rhuusen, 20.9 );
setEffRotateKey( spep_2 + 140, rhuusen, 20.9 );
setEffRotateKey( spep_2 + 148, rhuusen, 20.9 );
--setEffRotateKey( spep_2 + 149, rhuusen, 20.9 );
--setEffRotateKey( spep_2 + 148, rhuusen, 23.9 );
--setEffRotateKey( spep_2 + 149, rhuusen, 23.9 );
--setEffRotateKey( spep_2 + 150, rhuusen, 27.6 );
setEffRotateKey( spep_2 + 149, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 150, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 156, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 157, rhuusen, -7.6 );
--setEffRotateKey( spep_2 + 163, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 158, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 164, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 165, rhuusen, -50.6 );
setEffRotateKey( spep_2 + 166, rhuusen, -7.6 );
setEffRotateKey( spep_2 + 190, rhuusen, -7.6 );
--setEffRotateKey( spep_2 + 159, rhuusen, 27.6 );
--setEffRotateKey( spep_2 + 160, rhuusen, 27.6 );
--setEffRotateKey( spep_2 + 168, rhuusen, 27.6 );

setEffAlphaKey( spep_2 + 0, rhuusen, 255 );
setEffAlphaKey( spep_2 + 104, rhuusen, 255 );
setEffAlphaKey( spep_2 + 105, rhuusen, 255 );
setEffAlphaKey( spep_2 + 106, rhuusen, 0 );
setEffAlphaKey( spep_2 + 106, rhuusen, 0 );
setEffAlphaKey( spep_2 + 107, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 108, rhuusen, 255 );
setEffAlphaKey( spep_2 + 120, rhuusen, 255 );
setEffAlphaKey( spep_2 + 121, rhuusen, 0 );
setEffAlphaKey( spep_2 + 122, rhuusen, 0 );
--setEffAlphaKey( spep_2 + 122, rhuusen, 0 );
setEffAlphaKey( spep_2 + 123, rhuusen, 255 );
setEffAlphaKey( spep_2 + 132, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 133, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 134, rhuusen, 0 );
--setEffAlphaKey( spep_2 + 13, rhuusen, 0 );
setEffAlphaKey( spep_2 + 136, rhuusen, 0 );
setEffAlphaKey( spep_2 + 137, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 138, rhuusen, 255 );--
setEffAlphaKey( spep_2 + 146, rhuusen, 255 );
setEffAlphaKey( spep_2 + 147, rhuusen, 0 );
setEffAlphaKey( spep_2 + 148, rhuusen, 0 );
--setEffAlphaKey( spep_2 + 149, rhuusen, 0 );
setEffAlphaKey( spep_2 + 149, rhuusen, 255 );
setEffAlphaKey( spep_2 + 150, rhuusen, 255 );
setEffAlphaKey( spep_2 + 154, rhuusen, 255 );
setEffAlphaKey( spep_2 + 155, rhuusen, 255 );
setEffAlphaKey( spep_2 + 156, rhuusen, 0 );
setEffAlphaKey( spep_2 + 157, rhuusen, 0 );
--setEffAlphaKey( spep_2 + 159, rhuusen, 0 );
setEffAlphaKey( spep_2 + 158, rhuusen, 255 );
setEffAlphaKey( spep_2 + 160, rhuusen, 255 );
setEffAlphaKey( spep_2 + 164, rhuusen, 0 );
setEffAlphaKey( spep_2 + 165, rhuusen, 0 );
setEffAlphaKey( spep_2 + 166, rhuusen, 255 );
setEffAlphaKey( spep_2 + 190, rhuusen, 255 );

--黒背景
entryFadeBg(spep_2, 0, 190, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_2+4, 44); --移動

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 190, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 526, -639.8 , 0 );
setMoveKey( spep_2 + 80, 1, 526, -639.8 , 0 );
setMoveKey( spep_2 + 82, 1, 454.3, -553.9 , 0 );
setMoveKey( spep_2 + 84, 1, 382.6, -468.1 , 0 );
setMoveKey( spep_2 + 86, 1, 310.9, -382.3 , 0 );
setMoveKey( spep_2 + 88, 1, 239.2, -296.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 88, 1, 1.3, 1.3 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 88, 1, 0 );



--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+88 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,239.2, -296.4 , 0 );
setScaleKey(SP_dodge , 1,1.3, 1.3  );
setRotateKey(SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1, 239.2, -296.4 , 0 );
setScaleKey(SP_dodge+8 , 1,1.3, 1.3  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );
--setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);
--setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
--setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
--setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


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
changeAnime( spep_2 + 95, 1, 108 );
changeAnime( spep_2 + 96, 1, 108 );
changeAnime( spep_2 + 113, 1, 106 );
changeAnime( spep_2 + 114, 1, 106 );--
changeAnime( spep_2 + 127, 1, 108 );
changeAnime( spep_2 + 128, 1, 108 );--
changeAnime( spep_2 + 140, 1, 106 );--
changeAnime( spep_2 + 151, 1, 108 );
changeAnime( spep_2 + 152, 1, 108 );
--changeAnime( spep_2 + 154, 1, 108 );
changeAnime( spep_2 + 159, 1, 106 );--
changeAnime( spep_2 + 160, 1, 106 );--
--changeAnime( spep_2 + 156, 1, 106 );--
changeAnime( spep_2 + 169, 1, 108 );--
changeAnime( spep_2 + 170, 1, 108 );--

setMoveKey( spep_2 + 90, 1, 167.5, -210.5 , 0 );
setMoveKey( spep_2 + 94, 1, 95.8, -124.8 , 0 );
setMoveKey( spep_2 + 98, 1, 40, -59.7 , 0 );
setMoveKey( spep_2 + 100, 1, 46.9, -71.1 , 0 );
setMoveKey( spep_2 + 102, 1, 53.9, -63.9 , 0 );
setMoveKey( spep_2 + 104, 1, 49.7, -75.2 , 0 );
setMoveKey( spep_2 + 106, 1, 53, -68 , 0 );
setMoveKey( spep_2 + 108, 1, 59.9, -79.4 , 0 );
setMoveKey( spep_2 + 110, 1, 66.8, -72.2 , 0 );
setMoveKey( spep_2 + 112, 1, 62.7, -83.6 , 0 );
--setMoveKey( spep_2 + 115, 1, 65.9, -76.4 , 0 );
setMoveKey( spep_2 + 113, 1, -16.8, -69.9 , 0 );
setMoveKey( spep_2 + 114, 1, -16.8, -69.9 , 0 );
setMoveKey( spep_2 + 118, 1, -25.8, -68.6 , 0 );
setMoveKey( spep_2 + 120, 1, -20.4, -78.4 , 0 );
setMoveKey( spep_2 + 122, 1, -23.7, -72.1 , 0 );
setMoveKey( spep_2 + 124, 1, -29.1, -77.2 , 0 );
setMoveKey( spep_2 + 126, 1, -38.1, -76 , 0 );
--setMoveKey( spep_2 + 129, 1, -32.7, -85.8 , 0 );
setMoveKey( spep_2 + 127, 1, 40.1, -83.1 , 0 );
setMoveKey( spep_2 + 138, 1, 40.1, -83.1 , 0 );
setMoveKey( spep_2 + 139, 1, 40.1, -83.1 , 0 );
--setMoveKey( spep_2 + 132, 1, 46.6, -96 , 0 );
--setMoveKey( spep_2 + 134, 1, 60.2, -91.9 , 0 );
--setMoveKey( spep_2 + 136, 1, 56.5, -100.5 , 0 );
--setMoveKey( spep_2 + 138, 1, 66.7, -94.9 , 0 );
--setMoveKey( spep_2 + 141, 1, 73.2, -107.8 , 0 );
--setMoveKey( spep_2 + 142, 1, 44.3, -34.1 , 0 );
--setMoveKey( spep_2 + 144, 1, 29.9, -27.5 , 0 );
setMoveKey( spep_2 + 140, 1, 29.9, -32 , 0 );
setMoveKey( spep_2 + 148, 1, 21.2, -20.3 , 0 );
--setMoveKey( spep_2 + 150, 1, 10.3, -20.1 , 0 );
--setMoveKey( spep_2 + 153, 1, -4.1, -13.5 , 0 );
setMoveKey( spep_2 + 150, 1, 21.2, -20.3 , 0 );
setMoveKey( spep_2 + 151, 1, 23.3, -73.2 , 0 );
setMoveKey( spep_2 + 152, 1, 23.3, -73.2 , 0 );
setMoveKey( spep_2 + 156, 1, 33.7, -79.4 , 0 );
setMoveKey( spep_2 + 158, 1, 51.4, -68.5 , 0 );
setMoveKey( spep_2 + 160, 1, 51.6, -70.5 , 0 );
setMoveKey( spep_2 + 163, 1, 65.9, -58.1 , 0 );
setMoveKey( spep_2 + 164, 1, 44.3, -31.6 , 0 );
setMoveKey( spep_2 + 166, 1, 19.2, -38.5 , 0 );
setMoveKey( spep_2 + 168, 1, 8.5, -56.5 , 0 );
setMoveKey( spep_2 + 171, 1, -10.8, -58.3 , 0 );
setMoveKey( spep_2 + 172, 1, 23.3, -73.2 , 0 );
setMoveKey( spep_2 + 174, 1, 35, -79.4 , 0 );
setMoveKey( spep_2 + 176, 1, 53.9, -68.5 , 0 );
setMoveKey( spep_2 + 178, 1, 55.4, -70.5 , 0 );
setMoveKey( spep_2 + 180, 1, 70.9, -58.1 , 0 );
setMoveKey( spep_2 + 182, 1, 70.7, -68.1 , 0 );
setMoveKey( spep_2 + 184, 1, 77.7, -61 , 0 );
setMoveKey( spep_2 + 186, 1, 67.3, -66.7 , 0 );
setMoveKey( spep_2 + 188, 1, 70.9, -58.1 , 0 );
setMoveKey( spep_2 + 190, 1, 70.9, -58.1 , 0 );

setScaleKey( spep_2 + 190, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 112, 1, 0 );
setRotateKey( spep_2 + 113, 1, -68.1 );
setRotateKey( spep_2 + 114, 1, -68.1 );--
setRotateKey( spep_2 + 116, 1, -68.2 );
setRotateKey( spep_2 + 126, 1, -68.2 );
setRotateKey( spep_2 + 127, 1, 22.6 );
setRotateKey( spep_2 + 128, 1, 22.6 );
setRotateKey( spep_2 + 130, 1, 22.7 );
setRotateKey( spep_2 + 139, 1, 22.7 );
--setRotateKey( spep_2 + 144, 1, 22.7 );
setRotateKey( spep_2 + 140, 1, -68.2 );
setRotateKey( spep_2 + 148, 1, -68.2 );--
setRotateKey( spep_2 + 149, 1, -68.2 );--
setRotateKey( spep_2 + 150, 1, -68.2 );--
--setRotateKey( spep_2 + 151, 1, -68.2 );--
setRotateKey( spep_2 + 151, 1, 22.6 );
setRotateKey( spep_2 + 152, 1, 22.6 );
setRotateKey( spep_2 + 156, 1, 22.7 );
setRotateKey( spep_2 + 158, 1, 22.7 );
--setRotateKey( spep_2 + 159, 1, 22.7 );
setRotateKey( spep_2 + 159, 1, -68.1 );
setRotateKey( spep_2 + 160, 1, -68.1 );
setRotateKey( spep_2 + 168, 1, -68.2 );
--setRotateKey( spep_2 + 171, 1, -68.2 );
setRotateKey( spep_2 + 169, 1, 22.6 );
setRotateKey( spep_2 + 170, 1, 22.7 );
setRotateKey( spep_2 + 174, 1, 22.7 );
setRotateKey( spep_2 + 178, 1, 22.7 );
setRotateKey( spep_2 + 188, 1, 22.7 );
setRotateKey( spep_2 + 190, 1, 22.7 );

--集中線
shuchuse2 = entryEffectLife( spep_2 + 94,  906, 94, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 94, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 94, shuchuse2, 1, 1.11 );
setEffScaleKey( spep_2 + 188, shuchuse2, 1, 1.11 );

setEffRotateKey( spep_2 + 94, shuchuse2, 180 );
setEffRotateKey( spep_2 + 188, shuchuse2, 180 );

setEffAlphaKey( spep_2 + 94, shuchuse2, 0 );
setEffAlphaKey( spep_2 + 95, shuchuse2, 255 );
setEffAlphaKey( spep_2 + 96, shuchuse2, 255 );
setEffAlphaKey( spep_2 + 188, shuchuse2, 255 );

--白フェード
entryFade(spep_2+184, 4, 4, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_2+95, 1009); --殴り
playSe( spep_2+113, 1010); --殴り
playSe( spep_2+127, 1009); --殴り
playSe( spep_2+140, 1010); --殴り
playSe( spep_2+151, 1009); --殴り
playSe( spep_2+159, 1010); --殴り
playSe( spep_2+169, 1009); --殴り

--次の準備
spep_3=spep_2+190;

--------------------------------------
--軌道を見せる
--------------------------------------
--エフェクトの再生
orbit=entryEffectLife(spep_3,SP_03x,100,0x100,-1,0,0,0);

setEffMoveKey(spep_3,orbit,0,0,0);
setEffMoveKey(spep_3+100,orbit,0,0,0);
setEffScaleKey(spep_3,orbit,1.0,1.0);
setEffScaleKey(spep_3+100,orbit,1.0,1.0);
setEffAlphaKey(spep_3,orbit,255);
setEffAlphaKey(spep_3+100,orbit,255);
setEffRotateKey(spep_3,orbit,0);
setEffRotateKey(spep_3+100,orbit,0);

--集中線
shuchuse3 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchuse3, 1.36, 1.82 );
setEffScaleKey( spep_3 + 98, shuchuse3, 1.36, 1.82 );

setEffRotateKey( spep_3 + 0, shuchuse3, 180 );
setEffRotateKey( spep_3 + 98, shuchuse3, 180 );

setEffAlphaKey( spep_3 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_3 + 98, shuchuse3, 255 );

--白フェード
entryFade(spep_3+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_3, 1009); --殴り
playSe( spep_3+20, 1010); --殴り
playSe( spep_3+40, 1009); --殴り
playSe( spep_3+60, 1010); --殴り
playSe( spep_3+80, 1009); --殴り
--playSe( spep_2+159, 1010); --殴り

--次の準備
spep_4=spep_3+100;

--------------------------------------
--叩き落とす
--------------------------------------
--エフェクトの再生(前)
drop_front=entryEffectLife(spep_4,SP_04x,80,0x100,-1,0,0,0);

setEffMoveKey(spep_4,drop_front,0,0,0);
setEffMoveKey(spep_4+80,drop_front,0,0,0);
setEffScaleKey(spep_4,drop_front,1.0,1.0);
setEffScaleKey(spep_4+80,drop_front,1.0,1.0);
setEffAlphaKey(spep_4,drop_front,255);
setEffAlphaKey(spep_4+80,drop_front,255);
setEffRotateKey(spep_4,drop_front,0);
setEffRotateKey(spep_4+80,drop_front,0);

--流線
rhusen2 = entryEffectLife( spep_4 + 0,  914, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, rhusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, rhusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, rhusen2, 2.93, 1.32 );
setEffScaleKey( spep_4 + 78, rhusen2, 2.93, 1.32 );

setEffRotateKey( spep_4 + 0, rhusen2, -90 );
setEffRotateKey( spep_4 + 78, rhusen2, -90 );

setEffAlphaKey( spep_4 + 0, rhusen2, 255 );
setEffAlphaKey( spep_4 + 78, rhusen2, 255 );


--エフェクトの再生(後)
drop_back=entryEffectLife(spep_4,SP_05x,80,0x80,-1,0,0,0);

setEffMoveKey(spep_4,drop_back,0,0,0);
setEffMoveKey(spep_4+80,drop_back,0,0,0);
setEffScaleKey(spep_4,drop_back,1.0,1.0);
setEffScaleKey(spep_4+80,drop_back,1.0,1.0);
setEffAlphaKey(spep_4,drop_back,255);
setEffAlphaKey(spep_4+80,drop_back,255);
setEffRotateKey(spep_4,drop_back,0);
setEffRotateKey(spep_4+80,drop_back,0);


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 + 53, 1, 106 );
changeAnime( spep_4 + 54, 1, 106 );

--------------------------------------------------
--setMoveKey( spep_4 + 0, 1, 5.7, -157.1 , 0 );
setMoveKey( spep_4 + 0, 1, -3.6, -156.6 , 0 );
setMoveKey( spep_4 + 2, 1, 5.7, -156.2 , 0 );
setMoveKey( spep_4 + 4, 1, -3.6, -144.7 , 0 );
setMoveKey( spep_4 + 6, 1, 5.7, -140.6 , 0 );
setMoveKey( spep_4 + 8, 1, -3.6, -140.1 , 0 );
setMoveKey( spep_4 + 10, 1, 5.7, -139.7 , 0 );
setMoveKey( spep_4 + 12, 1, -3.6, -215.5 , 0 );
setMoveKey( spep_4 + 14, 1, 5.7, -298.7 , 0 );
setMoveKey( spep_4 + 16, 1, -3.6, -385.6 , 0 );
setMoveKey( spep_4 + 18, 1, 5.7, -472.5 , 0 );
setMoveKey( spep_4 + 20, 1, -3.6, -410.5 , 0 );
setMoveKey( spep_4 + 22, 1, 5.7, -356 , 0 );
setMoveKey( spep_4 + 24, 1, -3.6, -305.2 , 0 );
setMoveKey( spep_4 + 26, 1, 5.7, -254.4 , 0 );
setMoveKey( spep_4 + 28, 1, -3.6, -192.4 , 0 );
setMoveKey( spep_4 + 30, 1, 5.7, -137.8 , 0 );
setMoveKey( spep_4 + 32, 1, -3.6, -87 , 0 );
setMoveKey( spep_4 + 34, 1, 5.7, -36.2 , 0 );
setMoveKey( spep_4 + 36, 1, -3.6, 25.7 , 0 );
setMoveKey( spep_4 + 38, 1, 5.7, 80.3 , 0 );
setMoveKey( spep_4 + 40, 1, -3.6, 131.1 , 0 );
setMoveKey( spep_4 + 42, 1, 5.7, 181.9 , 0 );
--setMoveKey( spep_4 + 44, 1, -3.6, 62.7 , 0 );
setMoveKey( spep_4 + 44, 1, 5.7, -33.8 , 0 );
setMoveKey( spep_4 + 46, 1, -3.6, -105.9 , 0 );
setMoveKey( spep_4 + 48, 1, 5.7, -168 , 0 );
setMoveKey( spep_4 + 50, 1, -3.6, -178.9 , 0 );
setMoveKey( spep_4 + 56, 1, 32.1, -92.3 , 0 );
setMoveKey( spep_4 + 58, 1, 43.1, -32.3 , 0 );
setMoveKey( spep_4 + 60, 1, 34.8, 50.6 , 0 );
setMoveKey( spep_4 + 62, 1, 33.9, 108.7 , 0 );
setMoveKey( spep_4 + 64, 1, 32.1, 198.9 , 0 );
setMoveKey( spep_4 + 66, 1, 43.1, 259 , 0 );
setMoveKey( spep_4 + 68, 1, 34.8, 326.7 , 0 );
setMoveKey( spep_4 + 70, 1, 33.9, 369.6 , 0 );
setMoveKey( spep_4 + 72, 1, 32.1, 444.5 , 0 );
setMoveKey( spep_4 + 74, 1, 43.1, 489.4 , 0 );
setMoveKey( spep_4 + 76, 1, 34.8, 557.1 , 0 );
setMoveKey( spep_4 + 78, 1, 33.9, 599.9 , 0 );
--------------------------------------------------

setScaleKey( spep_4 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 78, 1, 1.3, 1.3 );

setRotateKey( spep_4 + 0, 1, 90 );
setRotateKey( spep_4 + 52, 1, 90 );
--setRotateKey( spep_4 + 49, 1, 90 );
setRotateKey( spep_4 + 53, 1, 50 );
setRotateKey( spep_4 + 54, 1, 50 );
setRotateKey( spep_4 + 78, 1, 50 );


--白フェード
entryFade(spep_4+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_4+4, 1014); --煙の中を中を通る
playSe( spep_4+12, 1014); --煙の中を中を通る
--playSe( spep_4+22, 44);--下に落ちる
playSe( spep_4+53, SE_10);--地面に衝突する

--次の準備
spep_5=spep_4+80;

--------------------------------------
--ビームを撃つ
--------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_5,SP_06x,98,0x100,-1,0,0,0);

setEffMoveKey(spep_5,beam,0,0,0);
setEffMoveKey(spep_5+98,beam,0,0,0);
setEffScaleKey(spep_5,beam,-1.0,1.0);
setEffScaleKey(spep_5+98,beam,-1.0,1.0);
setEffAlphaKey(spep_5,beam,255);
setEffAlphaKey(spep_5+98,beam,255);
setEffRotateKey(spep_5,beam,0);
setEffRotateKey(spep_5+98,beam,0);

--エフェクトの再生
shuchuse4 = entryEffectLife( spep_5 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchuse4, 1, 1.45 );
setEffScaleKey( spep_5 + 98, shuchuse4, 1, 1.45 );

setEffRotateKey( spep_5 + 0, shuchuse4, 180 );
setEffRotateKey( spep_5 + 98, shuchuse4, 180 );

setEffAlphaKey( spep_5 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_5 + 98, shuchuse4, 255 );

--白フェード
entryFade(spep_5+90, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背景

SE1=playSe( spep_5+20, 15); --きを貯める
stopSe(spep_5+44,SE1,0);
playSe( spep_5+53, SE_07); --発射

--次の準備
spep_6=spep_5+100;

--------------------------------------
--爆発
--------------------------------------

--エフェクトの再生
explosion=entryEffect(spep_6,SP_07x,0x100,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+150,explosion,0,0,0);
setEffScaleKey(spep_6,explosion,1.0,1.0);
setEffScaleKey(spep_6+150,explosion,1.0,1.0);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+150,explosion,255);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+150,explosion,0);

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 30, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 18.3, -85.7 , 0 );
setMoveKey( spep_6 + 2, 1, 20.2, -81 , 0 );
setMoveKey( spep_6 + 4, 1, 16.1, -80.2 , 0 );
setMoveKey( spep_6 + 6, 1, 19.2, -78.3 , 0 );
setMoveKey( spep_6 + 8, 1, 18.3, -74 , 0 );
setMoveKey( spep_6 + 10, 1, 20.2, -69.3 , 0 );
setMoveKey( spep_6 + 12, 1, 16.1, -68.5 , 0 );
setMoveKey( spep_6 + 14, 1, 19.2, -66.7 , 0 );
setMoveKey( spep_6 + 16, 1, 18.3, -62.3 , 0 );
setMoveKey( spep_6 + 18, 1, 20.2, -57.6 , 0 );
setMoveKey( spep_6 + 20, 1, 18.3, -56.5 , 0 );
setMoveKey( spep_6 + 22, 1, 20.2, -51.8 , 0 );
setMoveKey( spep_6 + 24, 1, 16.1, -50.9 , 0 );
setMoveKey( spep_6 + 26, 1, 19.2, -49.1 , 0 );
setMoveKey( spep_6 + 28, 1, 18.3, -44.8 , 0 );
setMoveKey( spep_6 + 30, 1, 18.3, -44.8 , 0 );

setScaleKey( spep_6 + 0, 1, 0.52, 0.52 );
setScaleKey( spep_6 + 30, 1, 0.52, 0.52 );

setRotateKey( spep_6 + 0, 1, 41.2 );
setRotateKey( spep_6 + 30, 1, 41.2 );

--流線
rhusen3 = entryEffectLife( spep_6 + 26,  914, 122, 0x80, -1, 0, -2.3, -1276.4 );

setEffMoveKey( spep_6 + 26, rhusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 148, rhusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 26, rhusen3, 2.93, 1.32 );
setEffScaleKey( spep_6 + 148, rhusen3, 2.93, 1.32 );

setEffRotateKey( spep_6 + 26, rhusen3, -90 );
setEffRotateKey( spep_6 + 148, rhusen3, -90 );

setEffAlphaKey(spep_6+26,rhusen3,0);
setEffAlphaKey(spep_6+27,rhusen3,255);
setEffAlphaKey(spep_6+28,rhusen3,255);
setEffAlphaKey(spep_6+148,rhusen3,255);


playSe( spep_6, 1024); --発車



-- ダメージ表示
dealDamage(spep_6+30);
entryFade( spep_6+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+140);


end
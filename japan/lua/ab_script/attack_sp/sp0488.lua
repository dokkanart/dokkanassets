--ブリアンデシャトー　1014060　ビッグアムール
--sp_effect_a9_00044

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
SP_01=	152140	;--	光弾溜め
SP_02=	152141	;--	光弾飛び～命中
SP_03=	152142	;--	地面
SP_04=	152143	;--	地面に罠
SP_05=	152144	;--	絡みつく輪（前）
SP_06=	152145	;--	絡みつく輪（後）
SP_07=	152146	;--	地面
SP_08=	152147	;--	ハートが上昇
SP_09=	152148	;--	とどめの光弾発射
SP_10=	152149	;--	命中

--敵側
SP_01x=	152140	;--	光弾溜め
SP_02x=	152141	;--	光弾飛び～命中
SP_03x=	152142	;--	地面
SP_04x=	152143	;--	地面に罠
SP_05x=	152144	;--	絡みつく輪（前）
SP_06x=	152145	;--	絡みつく輪（後）
SP_07x=	152146	;--	地面
SP_08x=	152147	;--	ハートが上昇
SP_09x=	152148	;--	とどめの光弾発射
SP_10x=	152149	;--	命中

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
--光弾溜め
--------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01,64,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+64,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+64,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+64,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+64,tame,0);

--集中線
shuchuse = entryEffectLife( spep_0 + 16,  906, 48, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 16, shuchuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 64, shuchuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchuse, 1, 1 );
setEffScaleKey( spep_0 + 64, shuchuse, 1, 1 );

setEffRotateKey( spep_0 + 16, shuchuse, 180 );
setEffRotateKey( spep_0 + 64, shuchuse, 180 );

setEffAlphaKey( spep_0 + 16, shuchuse, 0 );
setEffAlphaKey( spep_0 + 17, shuchuse, 255 );
setEffAlphaKey( spep_0 + 18, shuchuse, 255 );
setEffAlphaKey( spep_0 + 64, shuchuse, 255 );

--流線
ryuusen = entryEffectLife( spep_0 + 48,  914, 16, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 48, ryuusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 64, ryuusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 48, ryuusen, 2.1, 1.3 );
setEffScaleKey( spep_0 + 64, ryuusen, 2.1, 1.3 );

setEffRotateKey( spep_0 + 48, ryuusen, 0 );
setEffRotateKey( spep_0 + 64, ryuusen, 0 );

setEffAlphaKey( spep_0 + 48, ryuusen, 255 );
setEffAlphaKey( spep_0 + 64, ryuusen, 255 );

--SE
SE1=playSe(spep_0+18,17);
stopSe(spep_0+60,SE1,10);

--黒背景
entryFadeBg(spep_0, 0, 64, 0, 0, 0, 0, 255);  -- 黒　背
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+48 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 0, 0, 0 );
setScaleKey(SP_dodge , 1, 1.6, 1.6 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 0, 0, 0 );
setScaleKey(SP_dodge+8 , 1, 1.6, 1.6  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.6, 1.6);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.6, 1.6);
setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 1, 0 , -54,   0);
setMoveKey(SP_dodge+9, 1, 5000 , 5000, 0);
setMoveKey(SP_dodge+10, 1, 5000 , 5000, 0);


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

-- ** エフェクト等 ** --
entryFade(spep_0+56, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe(spep_0+50,1049);

--次の準備
spep_1=spep_0+64;

--------------------------------------
--光弾飛び
--------------------------------------
--黒背景
entryFadeBg(spep_1, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背

--エフェクトの再生(前)
flash_front=entryEffectLife(spep_1,SP_02,70,0x100,-1,0,0,0);

setEffMoveKey(spep_1,flash_front,0,0,0);
setEffMoveKey(spep_1+70,flash_front,0,0,0);
setEffScaleKey(spep_1,flash_front,1.0,1.0);
setEffScaleKey(spep_1+70,flash_front,1.0,1.0);
setEffAlphaKey(spep_1,flash_front,255);
setEffAlphaKey(spep_1+70,flash_front,255);
setEffRotateKey(spep_1,flash_front,0);
setEffRotateKey(spep_1+70,flash_front,0);

--流線
ryusen2 = entryEffectLife( spep_1 + 0,  914, 16, 0x80, -1, 0, 216.9, 116 );
setEffMoveKey( spep_1 + 0, ryusen2, 216.9, 116 , 0 );
setEffMoveKey( spep_1 + 16, ryusen2, 216.9, 116 , 0 );

setEffScaleKey( spep_1 + 0, ryusen2, 2.1, 1.4 );
setEffScaleKey( spep_1 + 16, ryusen2, 2.1, 1.4 );

setEffRotateKey( spep_1 + 0, ryusen2, 0 );
setEffRotateKey( spep_1 + 16, ryusen2, 0 );

setEffAlphaKey( spep_1 + 0, ryusen2, 255 );
setEffAlphaKey( spep_1 + 16, ryusen2, 255 );

--エフェクトの再生(後)
flash_back=entryEffectLife(spep_1,SP_03,80,0x80,-1,0,0,0);

setEffMoveKey(spep_1,flash_back,0,0,0);
setEffMoveKey(spep_1+80,flash_back,0,0,0);
setEffScaleKey(spep_1,flash_back,1.0,1.0);
setEffScaleKey(spep_1+80,flash_back,1.0,1.0);
setEffAlphaKey(spep_1,flash_back,255);
setEffAlphaKey(spep_1+80,flash_back,255);
setEffRotateKey(spep_1,flash_back,0);
setEffRotateKey(spep_1+80,flash_back,0);

--集中線
shuhuse2 = entryEffectLife( spep_1 + 16,  906, 52, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 16, shuhuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, shuhuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 16, shuhuse2, 1, 1 );
setEffScaleKey( spep_1 + 68, shuhuse2, 1, 1 );

setEffRotateKey( spep_1 + 16, shuhuse2, 180 );
setEffRotateKey( spep_1 + 68, shuhuse2, 180 );

setEffAlphaKey( spep_1 + 16, shuhuse2, 0 );
setEffAlphaKey( spep_1 + 17, shuhuse2, 255 );
setEffAlphaKey( spep_1 + 18, shuhuse2, 255 );
setEffAlphaKey( spep_1 + 20, shuhuse2, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 70, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
--changeAnime( spep_1 + 15, 1, 104 );
changeAnime( spep_1 + 17, 1, 104 );
changeAnime( spep_1 + 18, 1, 104 );


--setMoveKey( spep_1 + 0, 1, 763.1, -44.6 , 0 );
setMoveKey( spep_1 + 0, 1, 664.6, -44.6 , 0 );
setMoveKey( spep_1 + 2, 1, 566.2, -44.6 , 0 );
setMoveKey( spep_1 + 4, 1, 467.7, -44.6 , 0 );
setMoveKey( spep_1 + 6, 1, 369.2, -44.6 , 0 );
setMoveKey( spep_1 + 8, 1, 270.8, -44.6 , 0 );


setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 10, 1, 1.5, 1.5 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 10, 1, 0 );

setMoveKey( spep_1 + 10, 1, 172.3, -44.6 , 0 );
setMoveKey( spep_1 + 12, 1, 154.5, -44.6 , 0 );
setMoveKey( spep_1 + 16, 1, 136.7, -44.6 , 0 );
--setMoveKey( spep_1 + 19, 1, 119, -44.6 , 0 );
--setMoveKey( spep_1 + 15, 1, 95, -18.6 , 0 );
setMoveKey( spep_1 + 17, 1, 95, -18.6 , 0 );
setMoveKey( spep_1 + 18, 1, 95, -18.6 , 0 );
setMoveKey( spep_1 + 22, 1, 108.3, -18.6 , 0 );
setMoveKey( spep_1 + 24, 1, 121.6, -18.6 , 0 );
setMoveKey( spep_1 + 26, 1, 135, -18.6 , 0 );
setMoveKey( spep_1 + 28, 1, 133.5, -16.6 , 0 );
setMoveKey( spep_1 + 30, 1, 138, -20.6 , 0 );
setMoveKey( spep_1 + 32, 1, 138.5, -16.6 , 0 );
setMoveKey( spep_1 + 34, 1, 135, -20.6 , 0 );
setMoveKey( spep_1 + 36, 1, 137.6, -18.4 , 0 );
setMoveKey( spep_1 + 38, 1, 134.3, -22.3 , 0 );
setMoveKey( spep_1 + 40, 1, 139, -20.1 , 0 );
setMoveKey( spep_1 + 42, 1, 135.6, -21.9 , 0 );
setMoveKey( spep_1 + 44, 1, 138.3, -19.8 , 0 );
setMoveKey( spep_1 + 46, 1, 138.9, -19.6 , 0 );
setMoveKey( spep_1 + 48, 1, 139.6, -19.4 , 0 );
setMoveKey( spep_1 + 50, 1, 140.3, -19.3 , 0 );
setMoveKey( spep_1 + 52, 1, 140.9, -19.1 , 0 );
setMoveKey( spep_1 + 54, 1, 141.6, -18.9 , 0 );
setMoveKey( spep_1 + 56, 1, 142.3, -18.8 , 0 );
setMoveKey( spep_1 + 58, 1, 143, -18.6 , 0 );
setMoveKey( spep_1 + 70, 1, 143, -18.6 , 0 );


setScaleKey( spep_1 + 70, 1, 1.5, 1.5 );


setRotateKey( spep_1 + 70, 1, 0 );


-- ** エフェクト等 ** --
entryFade(spep_1+60, 6, 4, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

playSe(spep_1+18,1011);


--次の準備
spep_2=spep_1+70;
--------------------------------------
--地面に罠
--------------------------------------
--エフェクトの再生
trap=entryEffectLife(spep_2,SP_04,110,0x100,-1,0,0,0);

setEffMoveKey(spep_2,trap,0,0,0);
setEffMoveKey(spep_2+110,trap,0,0,0);
setEffScaleKey(spep_2,trap,1.0,1.0);
setEffScaleKey(spep_2+110,trap,1.0,1.0);
setEffAlphaKey(spep_2,trap,255);
setEffAlphaKey(spep_2+110,trap,255);
setEffRotateKey(spep_2,trap,0);
setEffRotateKey(spep_2+110,trap,0);

--集中線
shuchuse3 = entryEffectLife( spep_2 + 0,  906, 110, 0x100, -1, 0, -206.3, -0 );

setEffMoveKey( spep_2 + 0, shuchuse3, 0, -206.3 , 0 );
setEffMoveKey( spep_2 + 110, shuchuse3, 0, -206.3 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse3, 1, 1.56 );
setEffScaleKey( spep_2 + 110, shuchuse3, 1, 1.56 );

setEffRotateKey( spep_2 + 0, shuchuse3, 180 );
setEffRotateKey( spep_2 + 110, shuchuse3, 180 );

setEffAlphaKey( spep_2 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_2 + 110, shuchuse3, 255 );


--顔カットイン
speff=entryEffect(spep_2+19,1504,0x100,-1,0,0,-50);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+19,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_2+32,190006,69,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_2+32,ctgogo,-10,520,0);
setEffMoveKey(spep_2+101,ctgogo,-10,520,0);
setEffScaleKey(spep_2+32, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+101, ctgogo, 0.7, 0.7);

--SE
SE3=playSe( spep_2, 44); --罠を張る
stopSe(spep_2+32,SE3,0);
playSe( spep_2+32, SE_04); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_2+99, 6, 6, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背

--次の準備
spep_3=spep_2+110;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;

--------------------------------------
--絡みつく輪
--------------------------------------
--集中線
shuchuse4 = entryEffectLife( spep_4 + 0,  906, 74, 0x100, -1, 0, -206.3, -0 );

setEffMoveKey( spep_4 + 0, shuchuse4, 0, -206.3 , 0 );
setEffMoveKey( spep_4 + 74, shuchuse4, 0, -206.3 , 0 );

setEffScaleKey( spep_4 + 0, shuchuse4, 1, 1.56 );
setEffScaleKey( spep_4 + 74, shuchuse4, 1, 1.56 );

setEffRotateKey( spep_4 + 0, shuchuse4, 180 );
setEffRotateKey( spep_4 + 74, shuchuse4, 180 );

setEffAlphaKey( spep_4 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 74, shuchuse4, 255 );


--エフェクトの再生(前)
ioop_front=entryEffectLife(spep_4,SP_05,74,0x100,-1,0,0,0);

setEffMoveKey(spep_4,ioop_front,0,0,0);
setEffMoveKey(spep_4+74,ioop_front,0,0,0);
setEffScaleKey(spep_4,ioop_front,1.0,1.0);
setEffScaleKey(spep_4+74,ioop_front,1.0,1.0);
setEffAlphaKey(spep_4,ioop_front,255);
setEffAlphaKey(spep_4+74,ioop_front,255);
setEffRotateKey(spep_4,ioop_front,0);
setEffRotateKey(spep_4+74,ioop_front,0);

--エフェクトの再生(地面)
ground=entryEffectLife(spep_4,SP_07,74,0x80,-1,0,0,0);

setEffMoveKey(spep_4,ground,0,0,0);
setEffMoveKey(spep_4+74,ground,0,0,0);
setEffScaleKey(spep_4,ground,1.0,1.0);
setEffScaleKey(spep_4+74,ground,1.0,1.0);
setEffAlphaKey(spep_4,ground,255);
setEffAlphaKey(spep_4+74,ground,255);
setEffRotateKey(spep_4,ground,0);
setEffRotateKey(spep_4+74,ground,0);


--エフェクトの再生(後)
ioop_back=entryEffectLife(spep_4,SP_06,74,0x80,-1,0,0,0);

setEffMoveKey(spep_4,ioop_back,0,0,0);
setEffMoveKey(spep_4+74,ioop_back,0,0,0);
setEffScaleKey(spep_4,ioop_back,1.0,1.0);
setEffScaleKey(spep_4+74,ioop_back,1.0,1.0);
setEffAlphaKey(spep_4,ioop_back,255);
setEffAlphaKey(spep_4+74,ioop_back,255);
setEffRotateKey(spep_4,ioop_back,0);
setEffRotateKey(spep_4+74,ioop_back,0);

--文字エントリー
ctbikkuri = entryEffectLife( spep_4 + 32,  10001, 34, 0x100, -1, 0, -103.1, 197.6 );--!?
setEffMoveKey( spep_4 + 32, ctbikkuri, -103.1, 197.6 , 0 );
setEffMoveKey( spep_4 + 34, ctbikkuri, -112.2, 211 , 0 );
setEffMoveKey( spep_4 + 36, ctbikkuri, -129.4, 212.9 , 0 );
setEffMoveKey( spep_4 + 38, ctbikkuri, -128.1, 221.2 , 0 );
setEffMoveKey( spep_4 + 40, ctbikkuri, -123.6, 219.3 , 0 );
setEffMoveKey( spep_4 + 42, ctbikkuri, -122.1, 222.7 , 0 );
setEffMoveKey( spep_4 + 44, ctbikkuri, -127.5, 215 , 0 );
setEffMoveKey( spep_4 + 46, ctbikkuri, -127, 220.8 , 0 );
setEffMoveKey( spep_4 + 48, ctbikkuri, -123.6, 219.3 , 0 );
setEffMoveKey( spep_4 + 50, ctbikkuri, -122.1, 222.7 , 0 );
setEffMoveKey( spep_4 + 52, ctbikkuri, -127.5, 215 , 0 );
setEffMoveKey( spep_4 + 54, ctbikkuri, -127, 220.8 , 0 );
setEffMoveKey( spep_4 + 56, ctbikkuri, -123.6, 219.3 , 0 );
setEffMoveKey( spep_4 + 58, ctbikkuri, -122.1, 222.7 , 0 );
setEffMoveKey( spep_4 + 60, ctbikkuri, -127.5, 215 , 0 );
setEffMoveKey( spep_4 + 62, ctbikkuri, -127, 220.8 , 0 );
setEffMoveKey( spep_4 + 64, ctbikkuri, -123.6, 219.3 , 0 );
setEffMoveKey( spep_4 + 66, ctbikkuri, -122.1, 222.7 , 0 );

setEffScaleKey( spep_4 + 32, ctbikkuri, 0.1, 0.1 );
setEffScaleKey( spep_4 + 34, ctbikkuri, 1.55, 1.55 );
setEffScaleKey( spep_4 + 36, ctbikkuri, 3, 3 );
setEffScaleKey( spep_4 + 38, ctbikkuri, 2.67, 2.67 );
setEffScaleKey( spep_4 + 40, ctbikkuri, 2.33, 2.33 );
setEffScaleKey( spep_4 + 42, ctbikkuri, 2, 2 );
setEffScaleKey( spep_4 + 66, ctbikkuri, 2, 2 );

setEffRotateKey( spep_4 + 32, ctbikkuri, -21.3 );
setEffRotateKey( spep_4 + 66, ctbikkuri, -21.5 );

setEffAlphaKey( spep_4 + 32, ctbikkuri, 255 );
setEffAlphaKey( spep_4 + 66, ctbikkuri, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 74, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 0, -85.1 , 0 );
setMoveKey( spep_4 + 2, 1, 0, -88.5 , 0 );
setMoveKey( spep_4 + 4, 1, 0, -91.9 , 0 );
setMoveKey( spep_4 + 6, 1, 0, -95.3 , 0 );
setMoveKey( spep_4 + 8, 1, 0, -98.7 , 0 );
setMoveKey( spep_4 + 10, 1, 0, -102.1 , 0 );
setMoveKey( spep_4 + 12, 1, 0, -102.3 , 0 );
setMoveKey( spep_4 + 14, 1, 0, -102.4 , 0 );
setMoveKey( spep_4 + 16, 1, 0, -102.5 , 0 );
setMoveKey( spep_4 + 18, 1, 0, -102.7 , 0 );
setMoveKey( spep_4 + 20, 1, 0, -102.8 , 0 );
setMoveKey( spep_4 + 22, 1, 0, -102.9 , 0 );
setMoveKey( spep_4 + 24, 1, 0, -103.1 , 0 );
setMoveKey( spep_4 + 26, 1, 0, -103.2 , 0 );
setMoveKey( spep_4 + 28, 1, 0, -103.4 , 0 );
setMoveKey( spep_4 + 30, 1, 0, -103.5 , 0 );
setMoveKey( spep_4 + 32, 1, 0, -103.6 , 0 );
setMoveKey( spep_4 + 34, 1, 0, -103.8 , 0 );
setMoveKey( spep_4 + 36, 1, -2.1, -101.8 , 0 );
setMoveKey( spep_4 + 38, 1, 2.2, -106.2 , 0 );
setMoveKey( spep_4 + 40, 1, 0, -102.1 , 0 );
setMoveKey( spep_4 + 42, 1, 2.2, -106.5 , 0 );
setMoveKey( spep_4 + 44, 1, -2.1, -102.4 , 0 );
setMoveKey( spep_4 + 46, 1, 2.2, -106.8 , 0 );
setMoveKey( spep_4 + 48, 1, 0, -102.6 , 0 );
setMoveKey( spep_4 + 50, 1, 2.2, -107.1 , 0 );
setMoveKey( spep_4 + 52, 1, -2.1, -102.9 , 0 );
setMoveKey( spep_4 + 54, 1, 2.2, -107.3 , 0 );
setMoveKey( spep_4 + 56, 1, 0, -103.2 , 0 );
setMoveKey( spep_4 + 58, 1, 2.2, -107.6 , 0 );
setMoveKey( spep_4 + 60, 1, -2.1, -103.5 , 0 );
setMoveKey( spep_4 + 62, 1, 2.2, -107.9 , 0 );
setMoveKey( spep_4 + 64, 1, 0, -103.7 , 0 );
setMoveKey( spep_4 + 66, 1, 2.2, -108.2 , 0 );
setMoveKey( spep_4 + 68, 1, 2.2, -108.3 , 0 );
setMoveKey( spep_4 + 70, 1, 2.2, -108.4 , 0 );
setMoveKey( spep_4 + 74, 1, 2.2, -108.6 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 2, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 4, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 6, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 8, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 10, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 14, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 26, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 28, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 40, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 42, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 52, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 54, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 64, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 74, 1, 1.5, 1.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 74, 1, 0 );

--SE
playSe(spep_4,17);
--stopSe(spep_4+64,SE3,0);

--黒背景
entryFadeBg(spep_4, 0, 74, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+66, 2, 8, 0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+74;
--------------------------------------
--ハートが上昇
--------------------------------------
--エフェクトの再生
heart=entryEffectLife(spep_5,SP_08,70,0x100,-1,0,0,0);

setEffMoveKey(spep_5,heart,0,0,0);
setEffMoveKey(spep_5+70,heart,0,0,0);
setEffScaleKey(spep_5,heart,1.0,1.0);
setEffScaleKey(spep_5+70,heart,1.0,1.0);
setEffAlphaKey(spep_5,heart,255);
setEffAlphaKey(spep_5+70,heart,255);
setEffRotateKey(spep_5,heart,0);
setEffRotateKey(spep_5+70,heart,0);

--集中線
shuchuse5 = entryEffectLife( spep_5 + 0,  906, 70, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchuse5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, shuchuse5, 0, 0, 0 );

setEffScaleKey( spep_5 + 0, shuchuse5, 1.32, 1.41 );
setEffScaleKey( spep_5 + 70, shuchuse5, 1.32, 1.41 );

setEffRotateKey( spep_5 + 0, shuchuse5, 0 );
setEffRotateKey( spep_5 + 70, shuchuse5, 0 );

setEffAlphaKey( spep_5 + 0, shuchuse5, 255 );
setEffAlphaKey( spep_5 + 70, shuchuse5, 255 );

--黒背景
entryFadeBg(spep_5, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_5+62, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe(spep_5,46);

--次の準備
spep_6=spep_5+70;
--------------------------------------
--とどめの光弾発射
--------------------------------------
--エフェクトの再生
firing=entryEffectLife(spep_6,SP_09,70,0x100,-1,0,0,0);

setEffMoveKey(spep_6,firing,0,0,0);
setEffMoveKey(spep_6+70,firing,0,0,0);
setEffScaleKey(spep_6,firing,1.0,1.0);
setEffScaleKey(spep_6+70,firing,1.0,1.0);
setEffAlphaKey(spep_6,firing,255);
setEffAlphaKey(spep_6+70,firing,255);
setEffRotateKey(spep_6,firing,0);
setEffRotateKey(spep_6+70,firing,0);

--集中線
shuthuse6 = entryEffectLife( spep_6 + 0,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuthuse6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuthuse6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuthuse6, 1.12, 1.21 );
setEffScaleKey( spep_6 + 46, shuthuse6, 1.12, 1.21 );

setEffRotateKey( spep_6 + 0, shuthuse6, 0 );
setEffRotateKey( spep_6 + 46, shuthuse6, 0 );

--流線
ryusen3 = entryEffectLife( spep_6 + 46,  921, 22, 0x80, -1, 0, -133.9, 21.9 );
setEffMoveKey( spep_6 + 46, ryusen3, -133.9, 21.9 , 0 );
setEffMoveKey( spep_6 + 68, ryusen3, -133.9, 21.9 , 0 );

setEffScaleKey( spep_6 + 46, ryusen3, 1.55, 1.54 );
setEffScaleKey( spep_6 + 68, ryusen3, 1.55, 1.54 );

setEffRotateKey( spep_6 + 46, ryusen3, -10.7 );
setEffRotateKey( spep_6 + 68, ryusen3, -10.7 );

setEffAlphaKey( spep_6 + 46, ryusen3, 0 );
setEffAlphaKey( spep_6 + 47, ryusen3, 255 );
setEffAlphaKey( spep_6 + 48, ryusen3, 255 );
setEffAlphaKey( spep_6 + 68, ryusen3, 255 );

--黒背景
entryFadeBg(spep_6, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_6+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
SE2=playSe(spep_6,15);
stopSe(spep_6+40,SE2,0);
playSe(spep_6+48,1049);

--次の準備
spep_7=spep_6+70;
--------------------------------------
--命中
--------------------------------------
--エフェクトの再生
hit=entryEffect(spep_7,SP_10,0x100,-1,0,0,0);

setEffMoveKey(spep_7,hit,0,0,0);
setEffMoveKey(spep_7+130,hit,0,0,0);
setEffScaleKey(spep_7,hit,1.0,1.0);
setEffScaleKey(spep_7+130,hit,1.0,1.0);
setEffAlphaKey(spep_7,hit,255);
setEffAlphaKey(spep_7+130,hit,255);
setEffRotateKey(spep_7,hit,0);
setEffRotateKey(spep_7+130,hit,0);

--流線
ryusen4 = entryEffectLife( spep_7 + 0,  921, 128, 0x80, -1, 0, 0, 4 );
setEffMoveKey( spep_7 + 0, ryusen4, 0, 4 , 0 );
setEffMoveKey( spep_7 + 128, ryusen4, 0, 4 , 0 );

setEffScaleKey( spep_7 + 0, ryusen4, 1, 1.54 );
setEffScaleKey( spep_7 + 128, ryusen4, 1, 1.54 );

setEffRotateKey( spep_7 + 0, ryusen4, 0 );
setEffRotateKey( spep_7 + 128, ryusen4, 0 );

setEffAlphaKey( spep_7 + 0, ryusen4, 255 );
setEffAlphaKey( spep_7 + 128, ryusen4, 255 );

--黒背景
entryFadeBg(spep_7, 0, 120, 0, 0, 0, 0, 255);  -- 黒　背

--SE
playSe(spep_7+18,1023);

-- ダメージ表示
dealDamage(spep_7+18);
entryFade( spep_7+118, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+120);


else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--光弾溜め
--------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01x,64,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+64,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+64,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+64,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+64,tame,0);

--集中線
shuchuse = entryEffectLife( spep_0 + 16,  906, 48, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 16, shuchuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 64, shuchuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchuse, 1, 1 );
setEffScaleKey( spep_0 + 64, shuchuse, 1, 1 );

setEffRotateKey( spep_0 + 16, shuchuse, 180 );
setEffRotateKey( spep_0 + 64, shuchuse, 180 );

setEffAlphaKey( spep_0 + 16, shuchuse, 0 );
setEffAlphaKey( spep_0 + 17, shuchuse, 255 );
setEffAlphaKey( spep_0 + 18, shuchuse, 255 );
setEffAlphaKey( spep_0 + 64, shuchuse, 255 );

--流線
ryuusen = entryEffectLife( spep_0 + 48,  914, 16, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 48, ryuusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 64, ryuusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 48, ryuusen, 2.1, 1.3 );
setEffScaleKey( spep_0 + 64, ryuusen, 2.1, 1.3 );

setEffRotateKey( spep_0 + 48, ryuusen, 0 );
setEffRotateKey( spep_0 + 64, ryuusen, 0 );

setEffAlphaKey( spep_0 + 48, ryuusen, 255 );
setEffAlphaKey( spep_0 + 64, ryuusen, 255 );

--SE
SE1=playSe(spep_0+18,17);
stopSe(spep_0+60,SE1,10);


--黒背景
entryFadeBg(spep_0, 0, 64, 0, 0, 0, 0, 255);  -- 黒　背
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+48 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 0, 0, 0 );
setScaleKey(SP_dodge , 1, 1.6, 1.6 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 0, 0, 0 );
setScaleKey(SP_dodge+8 , 1, 1.6, 1.6  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.6, 1.6);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.6, 1.6);
setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 1, 5000 , 1000, 0);
setMoveKey(SP_dodge+10, 1, 5000 , 1000, 0);


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

-- ** エフェクト等 ** --
entryFade(spep_0+56, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe(spep_0+50,1049);

--次の準備
spep_1=spep_0+64;

--------------------------------------
--光弾飛び
--------------------------------------
--黒背景
entryFadeBg(spep_1, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背

--エフェクトの再生(前)
flash_front=entryEffectLife(spep_1,SP_02x,70,0x100,-1,0,0,0);

setEffMoveKey(spep_1,flash_front,0,0,0);
setEffMoveKey(spep_1+70,flash_front,0,0,0);
setEffScaleKey(spep_1,flash_front,1.0,1.0);
setEffScaleKey(spep_1+70,flash_front,1.0,1.0);
setEffAlphaKey(spep_1,flash_front,255);
setEffAlphaKey(spep_1+70,flash_front,255);
setEffRotateKey(spep_1,flash_front,0);
setEffRotateKey(spep_1+70,flash_front,0);

--流線
ryusen2 = entryEffectLife( spep_1 + 0,  914, 16, 0x80, -1, 0, 216.9, 116 );
setEffMoveKey( spep_1 + 0, ryusen2, 216.9, 116 , 0 );
setEffMoveKey( spep_1 + 16, ryusen2, 216.9, 116 , 0 );

setEffScaleKey( spep_1 + 0, ryusen2, 2.1, 1.4 );
setEffScaleKey( spep_1 + 16, ryusen2, 2.1, 1.4 );

setEffRotateKey( spep_1 + 0, ryusen2, 0 );
setEffRotateKey( spep_1 + 16, ryusen2, 0 );

setEffAlphaKey( spep_1 + 0, ryusen2, 255 );
setEffAlphaKey( spep_1 + 16, ryusen2, 255 );

--エフェクトの再生(後)
flash_back=entryEffectLife(spep_1,SP_03x,80,0x80,-1,0,0,0);

setEffMoveKey(spep_1,flash_back,0,0,0);
setEffMoveKey(spep_1+80,flash_back,0,0,0);
setEffScaleKey(spep_1,flash_back,1.0,1.0);
setEffScaleKey(spep_1+80,flash_back,1.0,1.0);
setEffAlphaKey(spep_1,flash_back,255);
setEffAlphaKey(spep_1+80,flash_back,255);
setEffRotateKey(spep_1,flash_back,0);
setEffRotateKey(spep_1+80,flash_back,0);

--集中線
shuhuse2 = entryEffectLife( spep_1 + 16,  906, 52, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 16, shuhuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, shuhuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 16, shuhuse2, 1, 1 );
setEffScaleKey( spep_1 + 68, shuhuse2, 1, 1 );

setEffRotateKey( spep_1 + 16, shuhuse2, 180 );
setEffRotateKey( spep_1 + 68, shuhuse2, 180 );

setEffAlphaKey( spep_1 + 16, shuhuse2, 0 );
setEffAlphaKey( spep_1 + 17, shuhuse2, 255 );
setEffAlphaKey( spep_1 + 18, shuhuse2, 255 );
setEffAlphaKey( spep_1 + 20, shuhuse2, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 70, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
--changeAnime( spep_1 + 15, 1, 104 );
changeAnime( spep_1 + 17, 1, 104 );
changeAnime( spep_1 + 18, 1, 104 );


--setMoveKey( spep_1 + 0, 1, 763.1, -44.6 , 0 );
setMoveKey( spep_1 + 0, 1, 664.6, -44.6 , 0 );
setMoveKey( spep_1 + 2, 1, 566.2, -44.6 , 0 );
setMoveKey( spep_1 + 4, 1, 467.7, -44.6 , 0 );
setMoveKey( spep_1 + 6, 1, 369.2, -44.6 , 0 );
setMoveKey( spep_1 + 8, 1, 270.8, -44.6 , 0 );


setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 10, 1, 1.5, 1.5 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 10, 1, 0 );

setMoveKey( spep_1 + 10, 1, 172.3, -44.6 , 0 );
setMoveKey( spep_1 + 12, 1, 154.5, -44.6 , 0 );
setMoveKey( spep_1 + 16, 1, 136.7, -44.6 , 0 );
--setMoveKey( spep_1 + 19, 1, 119, -44.6 , 0 );
--setMoveKey( spep_1 + 15, 1, 95, -18.6 , 0 );
setMoveKey( spep_1 + 17, 1, 95, -18.6 , 0 );
setMoveKey( spep_1 + 18, 1, 95, -18.6 , 0 );
setMoveKey( spep_1 + 22, 1, 108.3, -18.6 , 0 );
setMoveKey( spep_1 + 24, 1, 121.6, -18.6 , 0 );
setMoveKey( spep_1 + 26, 1, 135, -18.6 , 0 );
setMoveKey( spep_1 + 28, 1, 133.5, -16.6 , 0 );
setMoveKey( spep_1 + 30, 1, 138, -20.6 , 0 );
setMoveKey( spep_1 + 32, 1, 138.5, -16.6 , 0 );
setMoveKey( spep_1 + 34, 1, 135, -20.6 , 0 );
setMoveKey( spep_1 + 36, 1, 137.6, -18.4 , 0 );
setMoveKey( spep_1 + 38, 1, 134.3, -22.3 , 0 );
setMoveKey( spep_1 + 40, 1, 139, -20.1 , 0 );
setMoveKey( spep_1 + 42, 1, 135.6, -21.9 , 0 );
setMoveKey( spep_1 + 44, 1, 138.3, -19.8 , 0 );
setMoveKey( spep_1 + 46, 1, 138.9, -19.6 , 0 );
setMoveKey( spep_1 + 48, 1, 139.6, -19.4 , 0 );
setMoveKey( spep_1 + 50, 1, 140.3, -19.3 , 0 );
setMoveKey( spep_1 + 52, 1, 140.9, -19.1 , 0 );
setMoveKey( spep_1 + 54, 1, 141.6, -18.9 , 0 );
setMoveKey( spep_1 + 56, 1, 142.3, -18.8 , 0 );
setMoveKey( spep_1 + 58, 1, 143, -18.6 , 0 );
setMoveKey( spep_1 + 70, 1, 143, -18.6 , 0 );


setScaleKey( spep_1 + 70, 1, 1.5, 1.5 );


setRotateKey( spep_1 + 70, 1, 0 );


-- ** エフェクト等 ** --
entryFade(spep_1+60, 6, 4, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

playSe(spep_1+18,1011);


--次の準備
spep_2=spep_1+70;
--------------------------------------
--地面に罠
--------------------------------------
--エフェクトの再生
trap=entryEffectLife(spep_2,SP_04x,110,0x100,-1,0,0,0);

setEffMoveKey(spep_2,trap,0,0,0);
setEffMoveKey(spep_2+110,trap,0,0,0);
setEffScaleKey(spep_2,trap,1.0,1.0);
setEffScaleKey(spep_2+110,trap,1.0,1.0);
setEffAlphaKey(spep_2,trap,255);
setEffAlphaKey(spep_2+110,trap,255);
setEffRotateKey(spep_2,trap,0);
setEffRotateKey(spep_2+110,trap,0);

--集中線
shuchuse3 = entryEffectLife( spep_2 + 0,  906, 110, 0x100, -1, 0, -206.3, -0 );

setEffMoveKey( spep_2 + 0, shuchuse3, 0, -206.3 , 0 );
setEffMoveKey( spep_2 + 110, shuchuse3, 0, -206.3 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse3, 1, 1.56 );
setEffScaleKey( spep_2 + 110, shuchuse3, 1, 1.56 );

setEffRotateKey( spep_2 + 0, shuchuse3, 180 );
setEffRotateKey( spep_2 + 110, shuchuse3, 180 );

setEffAlphaKey( spep_2 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_2 + 110, shuchuse3, 255 );


--顔カットイン
--speff=entryEffect(spep_2+19,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+19,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_2+32,190006,69,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_2+32,ctgogo,-10,520,0);
setEffMoveKey(spep_2+101,ctgogo,-10,520,0);
setEffScaleKey(spep_2+32, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+101, ctgogo, -0.7, 0.7);

--SE
SE3=playSe( spep_2, 44); --罠を張る
stopSe(spep_2+32,SE3,0);
playSe( spep_2+32, SE_04); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_2+99, 6, 6, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背

--次の準備
spep_3=spep_2+110;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;

--------------------------------------
--絡みつく輪
--------------------------------------
--集中線
shuchuse4 = entryEffectLife( spep_4 + 0,  906, 74, 0x100, -1, 0, -206.3, -0 );

setEffMoveKey( spep_4 + 0, shuchuse4, 0, -206.3 , 0 );
setEffMoveKey( spep_4 + 74, shuchuse4, 0, -206.3 , 0 );

setEffScaleKey( spep_4 + 0, shuchuse4, 1, 1.56 );
setEffScaleKey( spep_4 + 74, shuchuse4, 1, 1.56 );

setEffRotateKey( spep_4 + 0, shuchuse4, 180 );
setEffRotateKey( spep_4 + 74, shuchuse4, 180 );

setEffAlphaKey( spep_4 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 74, shuchuse4, 255 );


--エフェクトの再生(前)
ioop_front=entryEffectLife(spep_4,SP_05x,74,0x100,-1,0,0,0);

setEffMoveKey(spep_4,ioop_front,0,0,0);
setEffMoveKey(spep_4+74,ioop_front,0,0,0);
setEffScaleKey(spep_4,ioop_front,1.0,1.0);
setEffScaleKey(spep_4+74,ioop_front,1.0,1.0);
setEffAlphaKey(spep_4,ioop_front,255);
setEffAlphaKey(spep_4+74,ioop_front,255);
setEffRotateKey(spep_4,ioop_front,0);
setEffRotateKey(spep_4+74,ioop_front,0);

--エフェクトの再生(地面)
ground=entryEffectLife(spep_4,SP_07x,74,0x80,-1,0,0,0);

setEffMoveKey(spep_4,ground,0,0,0);
setEffMoveKey(spep_4+74,ground,0,0,0);
setEffScaleKey(spep_4,ground,1.0,1.0);
setEffScaleKey(spep_4+74,ground,1.0,1.0);
setEffAlphaKey(spep_4,ground,255);
setEffAlphaKey(spep_4+74,ground,255);
setEffRotateKey(spep_4,ground,0);
setEffRotateKey(spep_4+74,ground,0);


--エフェクトの再生(後)
ioop_back=entryEffectLife(spep_4,SP_06x,74,0x80,-1,0,0,0);

setEffMoveKey(spep_4,ioop_back,0,0,0);
setEffMoveKey(spep_4+74,ioop_back,0,0,0);
setEffScaleKey(spep_4,ioop_back,1.0,1.0);
setEffScaleKey(spep_4+74,ioop_back,1.0,1.0);
setEffAlphaKey(spep_4,ioop_back,255);
setEffAlphaKey(spep_4+74,ioop_back,255);
setEffRotateKey(spep_4,ioop_back,0);
setEffRotateKey(spep_4+74,ioop_back,0);

--文字エントリー
ctbikkuri = entryEffectLife( spep_4 + 32,  10001, 34, 0x100, -1, 0, -103.1, 197.6 );--!?
setEffMoveKey( spep_4 + 32, ctbikkuri, -103.1, 197.6 , 0 );
setEffMoveKey( spep_4 + 34, ctbikkuri, -112.2, 211 , 0 );
setEffMoveKey( spep_4 + 36, ctbikkuri, -129.4, 212.9 , 0 );
setEffMoveKey( spep_4 + 38, ctbikkuri, -128.1, 221.2 , 0 );
setEffMoveKey( spep_4 + 40, ctbikkuri, -123.6, 219.3 , 0 );
setEffMoveKey( spep_4 + 42, ctbikkuri, -122.1, 222.7 , 0 );
setEffMoveKey( spep_4 + 44, ctbikkuri, -127.5, 215 , 0 );
setEffMoveKey( spep_4 + 46, ctbikkuri, -127, 220.8 , 0 );
setEffMoveKey( spep_4 + 48, ctbikkuri, -123.6, 219.3 , 0 );
setEffMoveKey( spep_4 + 50, ctbikkuri, -122.1, 222.7 , 0 );
setEffMoveKey( spep_4 + 52, ctbikkuri, -127.5, 215 , 0 );
setEffMoveKey( spep_4 + 54, ctbikkuri, -127, 220.8 , 0 );
setEffMoveKey( spep_4 + 56, ctbikkuri, -123.6, 219.3 , 0 );
setEffMoveKey( spep_4 + 58, ctbikkuri, -122.1, 222.7 , 0 );
setEffMoveKey( spep_4 + 60, ctbikkuri, -127.5, 215 , 0 );
setEffMoveKey( spep_4 + 62, ctbikkuri, -127, 220.8 , 0 );
setEffMoveKey( spep_4 + 64, ctbikkuri, -123.6, 219.3 , 0 );
setEffMoveKey( spep_4 + 66, ctbikkuri, -122.1, 222.7 , 0 );

setEffScaleKey( spep_4 + 32, ctbikkuri, 0.1, 0.1 );
setEffScaleKey( spep_4 + 34, ctbikkuri, 1.55, 1.55 );
setEffScaleKey( spep_4 + 36, ctbikkuri, 3, 3 );
setEffScaleKey( spep_4 + 38, ctbikkuri, 2.67, 2.67 );
setEffScaleKey( spep_4 + 40, ctbikkuri, 2.33, 2.33 );
setEffScaleKey( spep_4 + 42, ctbikkuri, 2, 2 );
setEffScaleKey( spep_4 + 66, ctbikkuri, 2, 2 );

setEffRotateKey( spep_4 + 32, ctbikkuri, -21.3 );
setEffRotateKey( spep_4 + 66, ctbikkuri, -21.5 );

setEffAlphaKey( spep_4 + 32, ctbikkuri, 255 );
setEffAlphaKey( spep_4 + 66, ctbikkuri, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 74, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 0, -85.1 , 0 );
setMoveKey( spep_4 + 2, 1, 0, -88.5 , 0 );
setMoveKey( spep_4 + 4, 1, 0, -91.9 , 0 );
setMoveKey( spep_4 + 6, 1, 0, -95.3 , 0 );
setMoveKey( spep_4 + 8, 1, 0, -98.7 , 0 );
setMoveKey( spep_4 + 10, 1, 0, -102.1 , 0 );
setMoveKey( spep_4 + 12, 1, 0, -102.3 , 0 );
setMoveKey( spep_4 + 14, 1, 0, -102.4 , 0 );
setMoveKey( spep_4 + 16, 1, 0, -102.5 , 0 );
setMoveKey( spep_4 + 18, 1, 0, -102.7 , 0 );
setMoveKey( spep_4 + 20, 1, 0, -102.8 , 0 );
setMoveKey( spep_4 + 22, 1, 0, -102.9 , 0 );
setMoveKey( spep_4 + 24, 1, 0, -103.1 , 0 );
setMoveKey( spep_4 + 26, 1, 0, -103.2 , 0 );
setMoveKey( spep_4 + 28, 1, 0, -103.4 , 0 );
setMoveKey( spep_4 + 30, 1, 0, -103.5 , 0 );
setMoveKey( spep_4 + 32, 1, 0, -103.6 , 0 );
setMoveKey( spep_4 + 34, 1, 0, -103.8 , 0 );
setMoveKey( spep_4 + 36, 1, -2.1, -101.8 , 0 );
setMoveKey( spep_4 + 38, 1, 2.2, -106.2 , 0 );
setMoveKey( spep_4 + 40, 1, 0, -102.1 , 0 );
setMoveKey( spep_4 + 42, 1, 2.2, -106.5 , 0 );
setMoveKey( spep_4 + 44, 1, -2.1, -102.4 , 0 );
setMoveKey( spep_4 + 46, 1, 2.2, -106.8 , 0 );
setMoveKey( spep_4 + 48, 1, 0, -102.6 , 0 );
setMoveKey( spep_4 + 50, 1, 2.2, -107.1 , 0 );
setMoveKey( spep_4 + 52, 1, -2.1, -102.9 , 0 );
setMoveKey( spep_4 + 54, 1, 2.2, -107.3 , 0 );
setMoveKey( spep_4 + 56, 1, 0, -103.2 , 0 );
setMoveKey( spep_4 + 58, 1, 2.2, -107.6 , 0 );
setMoveKey( spep_4 + 60, 1, -2.1, -103.5 , 0 );
setMoveKey( spep_4 + 62, 1, 2.2, -107.9 , 0 );
setMoveKey( spep_4 + 64, 1, 0, -103.7 , 0 );
setMoveKey( spep_4 + 66, 1, 2.2, -108.2 , 0 );
setMoveKey( spep_4 + 68, 1, 2.2, -108.3 , 0 );
setMoveKey( spep_4 + 70, 1, 2.2, -108.4 , 0 );
setMoveKey( spep_4 + 74, 1, 2.2, -108.6 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 2, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 4, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 6, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 8, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 10, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 14, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 26, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 28, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 40, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 42, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 52, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 54, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 64, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 74, 1, 1.5, 1.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 74, 1, 0 );

--SE
playSe(spep_4,17);
--stopSe(spep_4+64,SE3,0);

--黒背景
entryFadeBg(spep_4, 0, 74, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+66, 2, 8, 0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+74;
--------------------------------------
--ハートが上昇
--------------------------------------
--エフェクトの再生
heart=entryEffectLife(spep_5,SP_08x,70,0x100,-1,0,0,0);

setEffMoveKey(spep_5,heart,0,0,0);
setEffMoveKey(spep_5+70,heart,0,0,0);
setEffScaleKey(spep_5,heart,1.0,1.0);
setEffScaleKey(spep_5+70,heart,1.0,1.0);
setEffAlphaKey(spep_5,heart,255);
setEffAlphaKey(spep_5+70,heart,255);
setEffRotateKey(spep_5,heart,0);
setEffRotateKey(spep_5+70,heart,0);

--集中線
shuchuse5 = entryEffectLife( spep_5 + 0,  906, 70, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchuse5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, shuchuse5, 0, 0, 0 );

setEffScaleKey( spep_5 + 0, shuchuse5, 1.32, 1.41 );
setEffScaleKey( spep_5 + 70, shuchuse5, 1.32, 1.41 );

setEffRotateKey( spep_5 + 0, shuchuse5, 0 );
setEffRotateKey( spep_5 + 70, shuchuse5, 0 );

setEffAlphaKey( spep_5 + 0, shuchuse5, 255 );
setEffAlphaKey( spep_5 + 70, shuchuse5, 255 );

--黒背景
entryFadeBg(spep_5, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_5+62, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe(spep_5,46);

--次の準備
spep_6=spep_5+70;
--------------------------------------
--とどめの光弾発射
--------------------------------------
--エフェクトの再生
firing=entryEffectLife(spep_6,SP_09x,70,0x100,-1,0,0,0);

setEffMoveKey(spep_6,firing,0,0,0);
setEffMoveKey(spep_6+70,firing,0,0,0);
setEffScaleKey(spep_6,firing,1.0,1.0);
setEffScaleKey(spep_6+70,firing,1.0,1.0);
setEffAlphaKey(spep_6,firing,255);
setEffAlphaKey(spep_6+70,firing,255);
setEffRotateKey(spep_6,firing,0);
setEffRotateKey(spep_6+70,firing,0);

--集中線
shuthuse6 = entryEffectLife( spep_6 + 0,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuthuse6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuthuse6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuthuse6, 1.12, 1.21 );
setEffScaleKey( spep_6 + 46, shuthuse6, 1.12, 1.21 );

setEffRotateKey( spep_6 + 0, shuthuse6, 0 );
setEffRotateKey( spep_6 + 46, shuthuse6, 0 );


--流線
ryusen3 = entryEffectLife( spep_6 + 46,  921, 22, 0x80, -1, 0, -133.9, 21.9 );
setEffMoveKey( spep_6 + 46, ryusen3, -133.9, 21.9 , 0 );
setEffMoveKey( spep_6 + 68, ryusen3, -133.9, 21.9 , 0 );

setEffScaleKey( spep_6 + 46, ryusen3, 1.55, 1.54 );
setEffScaleKey( spep_6 + 68, ryusen3, 1.55, 1.54 );

setEffRotateKey( spep_6 + 46, ryusen3, -10.7 );
setEffRotateKey( spep_6 + 68, ryusen3, -10.7 );

setEffAlphaKey( spep_6 + 46, ryusen3, 0 );
setEffAlphaKey( spep_6 + 47, ryusen3, 255 );
setEffAlphaKey( spep_6 + 48, ryusen3, 255 );
setEffAlphaKey( spep_6 + 68, ryusen3, 255 );

--黒背景
entryFadeBg(spep_6, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_6+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
SE2=playSe(spep_6,15);
stopSe(spep_6+40,SE2,0);
playSe(spep_6+48,1049);

--次の準備
spep_7=spep_6+70;
--------------------------------------
--命中
--------------------------------------
--エフェクトの再生
hit=entryEffect(spep_7,SP_10x,0x100,-1,0,0,0);

setEffMoveKey(spep_7,hit,0,0,0);
setEffMoveKey(spep_7+130,hit,0,0,0);
setEffScaleKey(spep_7,hit,1.0,1.0);
setEffScaleKey(spep_7+130,hit,1.0,1.0);
setEffAlphaKey(spep_7,hit,255);
setEffAlphaKey(spep_7+130,hit,255);
setEffRotateKey(spep_7,hit,0);
setEffRotateKey(spep_7+130,hit,0);

--流線
ryusen4 = entryEffectLife( spep_7 + 0,  921, 128, 0x80, -1, 0, 0, 4 );
setEffMoveKey( spep_7 + 0, ryusen4, 0, 4 , 0 );
setEffMoveKey( spep_7 + 128, ryusen4, 0, 4 , 0 );

setEffScaleKey( spep_7 + 0, ryusen4, 1, 1.54 );
setEffScaleKey( spep_7 + 128, ryusen4, 1, 1.54 );

setEffRotateKey( spep_7 + 0, ryusen4, 0 );
setEffRotateKey( spep_7 + 128, ryusen4, 0 );

setEffAlphaKey( spep_7 + 0, ryusen4, 255 );
setEffAlphaKey( spep_7 + 128, ryusen4, 255 );

--黒背景
entryFadeBg(spep_7, 0, 120, 0, 0, 0, 0, 255);  -- 黒　背

--SE
playSe(spep_7+18,1023);

-- ダメージ表示
dealDamage(spep_7+18);
entryFade( spep_7+118, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+120);

end


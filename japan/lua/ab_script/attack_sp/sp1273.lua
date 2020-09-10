
--1015650_超サイヤ人孫悟空_超龍閃撃
--sp_effect_a7_00026
--    →スクリプトの最初にこれはなんのキャラクターのスクリプトなのか、どのエフェクトを使っているのかを記載しましょう！


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

--味方側
SP_01=	153091	;--	構え⇒瞬間移動
SP_02=	153093	;--	指差し
SP_03=	153095	;--	攻撃
SP_04=	153097	;--	敵キャラ用　奥


--敵側
SP_01x=	153092	;--	構え⇒瞬間移動	(敵)
SP_02x=	153094	;--	指差し	(敵)
SP_03x=	153096	;--	攻撃	(敵)
SP_04x=	153097	;--	敵キャラ用　奥	


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
-- テンプレ構文は、基本的には最近のスクリプトから流用できる命令です。
-- 回避等の挙動は他のスクリプトを読み込むため
-- 演出の冒頭に変な挙動をします(キャラクターが拡大される等)
-- それを避けるための構文です。
-- ※スクリプトの冒頭で敵や味方キャラクターを動かしたい場合は、
-- テンプレ構文を使うと挙動がおかしくなります。
-- スクリプトの冒頭で敵や味方キャラクターを動かしたい場合は、
-- 動かしたいキャラクターのテンプレ構文を消してください
-- その時、スクリプトの冒頭で動かすキャラクターの動きを
-- 6F目まで細かく記載してください


multi_frm = 2;

setVisibleUI( 0, 0);
--味方側
setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

--敵側
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 味方側構え⇒瞬間移動
------------------------------------------------------
spep_0=0;

--エフェクトの再生
tame = entryEffectLife( spep_0 + 0, SP_01, 132, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 132, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 132, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 132, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 132, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 10,  906, 122, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 132, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 10, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 132, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 10, shuchusen1, 180 );
setEffRotateKey( spep_0 + 132, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 132, shuchusen1, 255 );

--文字エントリー
ctsyun = entryEffectLife( spep_0 + 118,  10011, 14, 0x100, -1,0, -39.5, 220.3 );--シュンッ
setEffMoveKey( spep_0 + 118, ctsyun, -39.5, 220.3 , 0 );
setEffMoveKey( spep_0 + 120, ctsyun, -43.9, 221.1 , 0 );
setEffMoveKey( spep_0 + 122, ctsyun, -36.4, 219.9 , 0 );
setEffMoveKey( spep_0 + 124, ctsyun, -41, 223.8 , 0 );
setEffMoveKey( spep_0 + 126, ctsyun, -34.9, 219.8 , 0 );
setEffMoveKey( spep_0 + 128, ctsyun, -40.9, 219.4 , 0 );
setEffMoveKey( spep_0 + 130, ctsyun, -37.8, 223.2 , 0 );
setEffMoveKey( spep_0 + 132, ctsyun, -37.7, 217.1 , 0 );

setEffScaleKey( spep_0 + 118, ctsyun, 1.3, 1.3 );
setEffScaleKey( spep_0 + 132, ctsyun, 1.3, 1.3 );

setEffRotateKey( spep_0 + 118, ctsyun, -9 );
setEffRotateKey( spep_0 + 132, ctsyun, -9 );

setEffAlphaKey( spep_0 + 118, ctsyun, 0 );
setEffAlphaKey( spep_0 + 119, ctsyun, 255 );
setEffAlphaKey( spep_0 + 120, ctsyun, 255 );
setEffAlphaKey( spep_0 + 132, ctsyun, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0-4 + 32, 1504, 0x100, -1, 0, 0, 0 );	 --カットイン(顔)			
setEffReplaceTexture( speff, 3, 2 );							 --カットイン差し替え		
speff1 = entryEffect( spep_0-4 + 32, 1505, 0x100, -1, 0, 0, 0 );	 --カットイン(セリフ)		 
setEffReplaceTexture( speff1, 4, 5 );							 --セリフカットイン差し替え	 

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0-4 + 44,  190006, 72, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0-4 + 44, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0-4 + 44, ctgogo, -9.9, 512.8 , 0 );
setEffMoveKey( spep_0-4 + 116, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_0-4 + 44, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0-4 + 108, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0-4 + 110, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_0-4 + 112, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_0-4 + 114, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_0-4 + 116, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_0-4 + 44, ctgogo, 0 );
setEffRotateKey( spep_0-4 + 116, ctgogo, 0 );
 
setEffAlphaKey( spep_0-4 + 44, ctgogo, 0 );
setEffAlphaKey( spep_0-4 + 45, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 46, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 116, ctgogo, 255 );

--SE
playSe( spep_0 + 28, SE_04 );  --ゴゴゴ
playSe( spep_0 + 118, 43 );  --瞬間移動

--黒背景
entryFadeBg(spep_0+10, 6, 116, 0, 0, 0, 0, 210);  -- 黒　背

-- ** ホワイトフェード ** --
entryFade( spep_0 + 126, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+132;
------------------------------------------------------
-- 指差し
------------------------------------------------------
--エフェクトの再生
yubi = entryEffectLife( spep_1 + 0, SP_02, 130, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, yubi, 0, 0 , 0 );
setEffMoveKey( spep_1 + 130, yubi, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, yubi, 1.0, 1.0 );
setEffScaleKey( spep_1 + 130, yubi, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, yubi, 255 );
setEffAlphaKey( spep_1 + 130, yubi, 255 );
setEffRotateKey( spep_1 + 0, yubi, 0 );
setEffRotateKey( spep_1 + 130, yubi, 0 );

--文字エントリー
ctsyu2 = entryEffectLife( spep_1 -3 + 24,  10011, 12, 0x100, -1, 0, -106.3, 312.8 );--シュンッ

setEffMoveKey( spep_1 -3 + 24, ctsyu2, -106.3, 312.8 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctsyu2, -110.7, 313.6 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctsyu2, -103.2, 312.4 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctsyu2, -107.8, 316.3 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctsyu2, -101.7, 312.3 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctsyu2, -107.7, 311.9 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctsyu2, -104.6, 315.7 , 0 );

setEffScaleKey( spep_1 -3 + 24, ctsyu2, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 36, ctsyu2, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 24, ctsyu2, -9 );
setEffRotateKey( spep_1 -3 + 36, ctsyu2, -9 );

setEffAlphaKey( spep_1 -3 + 24, ctsyu2, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctsyu2, 255 );

--文字エントリー
ctbikuri = entryEffectLife( spep_1-3 + 26,  10000, 22, 0x100, -1, 0, 194.4, 221.7 );--!!

setEffMoveKey( spep_1-3 + 26, ctbikuri, 194.4, 221.7 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbikuri, 192.6, 227.6 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbikuri, 208.4, 230.7 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbikuri, 201, 236.9 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbikuri, 210.8, 230.5 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbikuri, 201.2, 229.9 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbikuri, 206.2, 235.9 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbikuri, 206.3, 226.2 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbikuri, 203.1, 236.7 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbikuri, 207.1, 229.5 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbikuri, 201.8, 232.4 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbikuri, 205.4, 228.3 , 0 );

setEffScaleKey( spep_1-3 + 26, ctbikuri, 1.29, 1.29 );
setEffScaleKey( spep_1-3 + 28, ctbikuri, 1.44, 1.44 );
setEffScaleKey( spep_1-3 + 30, ctbikuri, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 48, ctbikuri, 1.6, 1.6 );

setEffRotateKey( spep_1-3 + 26, ctbikuri, 20 );
setEffRotateKey( spep_1-3 + 48, ctbikuri, 20 );

setEffAlphaKey( spep_1-3 + 26, ctbikuri, 255 );
setEffAlphaKey( spep_1-3 + 48, ctbikuri, 255 );

--SE
playSe( spep_1 + 20, 43 );  --瞬間移動

--黒背景
entryFadeBg(spep_1, 0, 130, 0, 0, 0, 0, 190);  -- 黒　背

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 130, 1, 0 );

changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 146.4, 23.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 146.4, 23.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 148.2, 28 , 0 );
setMoveKey( spep_1-3 + 30, 1, 144.6, 20.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 147.6, 26 , 0 );
setMoveKey( spep_1-3 + 34, 1, 147.4, 25 , 0 );
setMoveKey( spep_1-3 + 36, 1, 145.4, 22.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, 147, 24 , 0 );
setMoveKey( spep_1-3 + 40, 1, 146.4, 23.6 , 0 );

setScaleKey( spep_1 -3 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 26, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 28, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 30, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 32, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 36, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 38, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 40, 1, 1.7, 1.7 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );
--------------------------------------
--回避 --既存のものの流用
--回避するまでの10Fを制御します。
--回避時は回避の構文の下に書かれている命令は読み込まれません
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 146.4, 23.6, 0);  --回避開始時のキャラの座標
    setScaleKey(SP_dodge , 1 ,1.7, 1.7 ); --回避開始時のキャラの大きさ
    setRotateKey(SP_dodge,   1, 0); --回避開始時のキャラの角度

    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 146.4, 23.6, 0);  --回避終了時のキャラの座標
    setScaleKey(SP_dodge+10 , 1 ,1.7, 1.7 ); --回避終了時のキャラの大きさ
    setRotateKey(SP_dodge+10,   1, 0); --回避終了時のキャラの角度
    
    
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

setMoveKey( spep_1 -3 + 46, 1, 146.4, 23.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 146.4, 23.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 146.4, 23.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 148.2, 25.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 144.4, 23.4 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 147.6, 24.4 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 147.4, 24.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 145.4, 23.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 147, 24 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 146.4, 23.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 146.4, 23.6 , 0 );
setMoveKey( spep_1 + 130, 1, 146.4, 23.8 , 0 );

setScaleKey( spep_1 + 130, 1, 1.7, 1.7 );

setRotateKey( spep_1 + 130, 1, 0 );

--SE
playSe( spep_1 + 78, 1003 );  --指差し確認

-- ** ホワイトフェード ** --
entryFade( spep_1 + 122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_2=spep_1+130;

------------------------------------------------------
-- カードカットイン(90F) --既存のものの流用
--    →最近実装されたものから流用してください
------------------------------------------------------


playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2,  shuchusen,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_2,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen,  0);
setEffRotateKey(  spep_2+90,  shuchusen,  0);
setEffAlphaKey(  spep_2,  shuchusen,  255);
setEffAlphaKey(  spep_2+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_2+82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3 = spep_2 + 90;


------------------------------------------------------
-- 攻撃
------------------------------------------------------
--エフェクトの再生(前)
punch_f = entryEffectLife( spep_3 + 0, SP_03, 140, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, punch_f, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 140, punch_f, 255 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 140, punch_f, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  921, 138, 0X80, -1, 0, 23, 0 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 23 , 0 );
setEffMoveKey( spep_3 + 138, ryusen1, 0, 23 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1.17, 1.13 );
setEffScaleKey( spep_3 + 138, ryusen1, 1.17, 1.13 );

setEffRotateKey( spep_3 + 0, ryusen1, -27 );
setEffRotateKey( spep_3 + 138, ryusen1, -27 );

setEffAlphaKey( spep_3 + 0, ryusen1, 0 );
setEffAlphaKey( spep_3 + 100, ryusen1, 0 );
setEffAlphaKey( spep_3 + 102, ryusen1, 0 );
setEffAlphaKey( spep_3 + 103, ryusen1, 255 );
setEffAlphaKey( spep_3 + 104, ryusen1, 255 );
setEffAlphaKey( spep_3 + 138, ryusen1, 255 );

--エフェクトの再生(後)
punch_b = entryEffectLife( spep_3 + 0, SP_04, 110, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, punch_b, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 110, punch_b, 255 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 110, punch_b, 0 );

--次の準備
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 132, 1, 1 );

changeAnime( spep_3  + 0, 1, 100 );
changeAnime( spep_3 -3 + 66, 1, 108 );

setMoveKey( spep_3  + 0, 1, 73.6, 36 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 73.6, 36 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 115.5, 45 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 131.4, 32.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 114.9, 46.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 125.9, 46.7 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 130.1, 48.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 106, 48.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 94.7, 51.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 135.2, 22.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 109.6, 51.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 125.4, 52.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 126.7, 39.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 113.1, 52.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 121.8, 44.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 118.1, 47.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 121.8, 44.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 118.2, 47.5 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 122.1, 44.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 143.8, 120 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 157.2, 71.7 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 111.9, 77.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 134.9, 80.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 135.8, 87.8 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 126.1, 91.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 132, 89.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 132.9, 90.6 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 134, 91.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 135, 93 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 135.9, 94.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 136.9, 95.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 137.8, 96.6 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 138.8, 97.8 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 139.6, 99.1 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 140.6, 100.3 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 141.6, 101.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 142.5, 102.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 143.6, 103.7 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 144.5, 104.9 , 0 );
setMoveKey( spep_3 -3 + 105, 1, 144.5, 104.9 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 260.9, 130 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 339.6, 143.4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 401.7, 161.6 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 439.5, 165.4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 468.3, 171.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 491.9, 180.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 505, 183.5 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 511.7, 182.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 521.5, 186.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 520.3, 185.4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 521.3, 186.1 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 521.5, 185.5 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 520.6, 186.1 , 0 );
setMoveKey( spep_3  + 132, 1, 521, 185.9 , 0 );

setScaleKey( spep_3  + 0, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 30, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 32, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 34, 1, 3.37, 3.37 );
setScaleKey( spep_3 -3 + 36, 1, 3.06, 3.06 );
setScaleKey( spep_3 -3 + 65, 1, 3.06, 3.06 );
setScaleKey( spep_3 -3 + 66, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 68, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 70, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 104, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 106, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 108, 1, 1.23, 1.23 );
setScaleKey( spep_3 -3 + 110, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 112, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 114, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 116, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 118, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 120, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 122, 1, 0.59, 0.59 );
setScaleKey( spep_3  + 132, 1, 0.59, 0.59 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3 -3 + 65, 1, 0 );
setRotateKey( spep_3 -3 + 66, 1, -11.8 );
setRotateKey( spep_3 -3 + 68, 1, -11.8 );
setRotateKey( spep_3 -3 + 70, 1, -12 );
setRotateKey( spep_3 -3 + 72, 1, -12.3 );
setRotateKey( spep_3 -3 + 76, 1, -12.3 );
setRotateKey( spep_3 -3 + 78, 1, -12.6 );
setRotateKey( spep_3 -3 + 80, 1, -12.9 );
setRotateKey( spep_3 -3 + 82, 1, -13.1 );
setRotateKey( spep_3 -3 + 84, 1, -13.4 );
setRotateKey( spep_3 -3 + 86, 1, -13.6 );
setRotateKey( spep_3 -3 + 88, 1, -13.9 );
setRotateKey( spep_3 -3 + 90, 1, -14.2 );
setRotateKey( spep_3 -3 + 92, 1, -14.4 );
setRotateKey( spep_3 -3 + 94, 1, -14.7 );
setRotateKey( spep_3 -3 + 96, 1, -15 );
setRotateKey( spep_3 -3 + 98, 1, -15.2 );
setRotateKey( spep_3 -3 + 100, 1, -15.5 );
setRotateKey( spep_3 -3 + 102, 1, -15.7 );
setRotateKey( spep_3 -3 + 104, 1, -16 );
setRotateKey( spep_3 -3 + 106, 1, -15.9 );
setRotateKey( spep_3 -3 + 108, 1, -15.9 );
setRotateKey( spep_3 -3 + 110, 1, -15.8 );
setRotateKey( spep_3  + 132, 1, -15.8 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 28,  906, 74, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 28, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 102, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 28, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 102, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_3 + 28, shuchusen2, 180 );
setEffRotateKey( spep_3 + 102, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 28, shuchusen2, 0 );
setEffAlphaKey( spep_3 + 29, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 102, shuchusen2, 255 );


--SE
playSe( spep_3 + 30, 8 );  --衝撃波
playSe( spep_3 + 62, 1011 );  --敵がくの字になる
playSe( spep_3 + 102, 44 );  --飛んでいく


--黒背景
entryFadeBg(spep_3, 0, 140, 0, 0, 0, 0, 190);  -- 黒　背

--***背景と白フェード***
entryFade( spep_3+132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3 + 140;

------------------------------------------------------
-- ガッ--既存のものの流用
--    →最近実装されたものから流用してください
------------------------------------------------------


--***敵の動き***--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_4, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );

--entryFadeBg( spep_4,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen_g = entryEffectLife( spep_4+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_4+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_4 + 110);

else 
------------------------------------------------------
-- てき側
------------------------------------------------------
------------------------------------------------------
-- 味方側構え⇒瞬間移動
------------------------------------------------------
spep_0=0;

--エフェクトの再生
tame = entryEffectLife( spep_0 + 0, SP_01x, 132, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 132, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 132, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 132, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 132, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 10,  906, 122, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 132, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 10, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 132, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 10, shuchusen1, 180 );
setEffRotateKey( spep_0 + 132, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 132, shuchusen1, 255 );

--文字エントリー
ctsyun = entryEffectLife( spep_0 + 118,  10011, 14, 0x100, -1,0, -39.5, 220.3 );--シュンッ
setEffMoveKey( spep_0 + 118, ctsyun, -39.5, 220.3 , 0 );
setEffMoveKey( spep_0 + 120, ctsyun, -43.9, 221.1 , 0 );
setEffMoveKey( spep_0 + 122, ctsyun, -36.4, 219.9 , 0 );
setEffMoveKey( spep_0 + 124, ctsyun, -41, 223.8 , 0 );
setEffMoveKey( spep_0 + 126, ctsyun, -34.9, 219.8 , 0 );
setEffMoveKey( spep_0 + 128, ctsyun, -40.9, 219.4 , 0 );
setEffMoveKey( spep_0 + 130, ctsyun, -37.8, 223.2 , 0 );
setEffMoveKey( spep_0 + 132, ctsyun, -37.7, 217.1 , 0 );

setEffScaleKey( spep_0 + 118, ctsyun, 1.3, 1.3 );
setEffScaleKey( spep_0 + 132, ctsyun, 1.3, 1.3 );

setEffRotateKey( spep_0 + 118, ctsyun, -9 );
setEffRotateKey( spep_0 + 132, ctsyun, -9 );

setEffAlphaKey( spep_0 + 118, ctsyun, 0 );
setEffAlphaKey( spep_0 + 119, ctsyun, 255 );
setEffAlphaKey( spep_0 + 120, ctsyun, 255 );
setEffAlphaKey( spep_0 + 132, ctsyun, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0-4 + 32, 1504, 0x100, -1, 0, 0, 0 );	 --カットイン(顔)			
--setEffReplaceTexture( speff, 3, 2 );							 --カットイン差し替え		
--speff1 = entryEffect( spep_0-4 + 32, 1505, 0x100, -1, 0, 0, 0 );	 --カットイン(セリフ)		 
--setEffReplaceTexture( speff1, 4, 5 );							 --セリフカットイン差し替え	 

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0-4 + 44,  190006, 72, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0-4 + 44, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0-4 + 44, ctgogo, -9.9, 512.8 , 0 );
setEffMoveKey( spep_0-4 + 116, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_0-4 + 44, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0-4 + 108, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0-4 + 110, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_0-4 + 112, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_0-4 + 114, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_0-4 + 116, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_0-4 + 44, ctgogo, 0 );
setEffRotateKey( spep_0-4 + 116, ctgogo, 0 );
 
setEffAlphaKey( spep_0-4 + 44, ctgogo, 0 );
setEffAlphaKey( spep_0-4 + 45, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 46, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 116, ctgogo, 255 );

--SE
playSe( spep_0 + 28, SE_04 );  --ゴゴゴ
playSe( spep_0 + 118, 43 );  --瞬間移動

--黒背景
entryFadeBg(spep_0+10, 6, 116, 0, 0, 0, 0, 210);  -- 黒　背

-- ** ホワイトフェード ** --
entryFade( spep_0 + 126, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+132;
------------------------------------------------------
-- 指差し
------------------------------------------------------
--エフェクトの再生
yubi = entryEffectLife( spep_1 + 0, SP_02x, 130, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, yubi, 0, 0 , 0 );
setEffMoveKey( spep_1 + 130, yubi, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, yubi, 1.0, 1.0 );
setEffScaleKey( spep_1 + 130, yubi, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, yubi, 255 );
setEffAlphaKey( spep_1 + 130, yubi, 255 );
setEffRotateKey( spep_1 + 0, yubi, 0 );
setEffRotateKey( spep_1 + 130, yubi, 0 );

--文字エントリー
ctsyu2 = entryEffectLife( spep_1 -3 + 24,  10011, 12, 0x100, -1, 0, -106.3, 312.8 );--シュンッ

setEffMoveKey( spep_1 -3 + 24, ctsyu2, -106.3, 312.8 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctsyu2, -110.7, 313.6 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctsyu2, -103.2, 312.4 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctsyu2, -107.8, 316.3 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctsyu2, -101.7, 312.3 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctsyu2, -107.7, 311.9 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctsyu2, -104.6, 315.7 , 0 );

setEffScaleKey( spep_1 -3 + 24, ctsyu2, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 36, ctsyu2, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 24, ctsyu2, -9 );
setEffRotateKey( spep_1 -3 + 36, ctsyu2, -9 );

setEffAlphaKey( spep_1 -3 + 24, ctsyu2, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctsyu2, 255 );

--文字エントリー
ctbikuri = entryEffectLife( spep_1-3 + 26,  10000, 22, 0x100, -1, 0, 194.4, 221.7 );--!!

setEffMoveKey( spep_1-3 + 26, ctbikuri, 194.4, 221.7 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbikuri, 192.6, 227.6 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbikuri, 208.4, 230.7 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbikuri, 201, 236.9 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbikuri, 210.8, 230.5 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbikuri, 201.2, 229.9 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbikuri, 206.2, 235.9 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbikuri, 206.3, 226.2 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbikuri, 203.1, 236.7 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbikuri, 207.1, 229.5 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbikuri, 201.8, 232.4 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbikuri, 205.4, 228.3 , 0 );

setEffScaleKey( spep_1-3 + 26, ctbikuri, 1.29, 1.29 );
setEffScaleKey( spep_1-3 + 28, ctbikuri, 1.44, 1.44 );
setEffScaleKey( spep_1-3 + 30, ctbikuri, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 48, ctbikuri, 1.6, 1.6 );

setEffRotateKey( spep_1-3 + 26, ctbikuri, 20 );
setEffRotateKey( spep_1-3 + 48, ctbikuri, 20 );

setEffAlphaKey( spep_1-3 + 26, ctbikuri, 255 );
setEffAlphaKey( spep_1-3 + 48, ctbikuri, 255 );

--SE
playSe( spep_1 + 20, 43 );  --瞬間移動

--黒背景
entryFadeBg(spep_1, 0, 130, 0, 0, 0, 0, 190);  -- 黒　背

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 130, 1, 0 );

changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 146.4, 23.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 146.4, 23.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 148.2, 28 , 0 );
setMoveKey( spep_1-3 + 30, 1, 144.6, 20.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 147.6, 26 , 0 );
setMoveKey( spep_1-3 + 34, 1, 147.4, 25 , 0 );
setMoveKey( spep_1-3 + 36, 1, 145.4, 22.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, 147, 24 , 0 );
setMoveKey( spep_1-3 + 40, 1, 146.4, 23.6 , 0 );

setScaleKey( spep_1 -3 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 26, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 28, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 30, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 32, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 36, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 38, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 40, 1, 1.7, 1.7 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );
--------------------------------------
--回避 --既存のものの流用
--回避するまでの10Fを制御します。
--回避時は回避の構文の下に書かれている命令は読み込まれません
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 146.4, 23.6, 0);  --回避開始時のキャラの座標
    setScaleKey(SP_dodge , 1 ,1.7, 1.7 ); --回避開始時のキャラの大きさ
    setRotateKey(SP_dodge,   1, 0); --回避開始時のキャラの角度

    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 146.4, 23.6, 0);  --回避終了時のキャラの座標
    setScaleKey(SP_dodge+10 , 1 ,1.7, 1.7 ); --回避終了時のキャラの大きさ
    setRotateKey(SP_dodge+10,   1, 0); --回避終了時のキャラの角度
    
    
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

setMoveKey( spep_1 -3 + 46, 1, 146.4, 23.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 146.4, 23.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 146.4, 23.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 148.2, 25.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 144.4, 23.4 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 147.6, 24.4 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 147.4, 24.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 145.4, 23.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 147, 24 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 146.4, 23.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 146.4, 23.6 , 0 );
setMoveKey( spep_1 + 130, 1, 146.4, 23.8 , 0 );

setScaleKey( spep_1 + 130, 1, 1.7, 1.7 );

setRotateKey( spep_1 + 130, 1, 0 );

--SE
playSe( spep_1 + 78, 1003 );  --指差し確認

-- ** ホワイトフェード ** --
entryFade( spep_1 + 122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_2=spep_1+130;

------------------------------------------------------
-- カードカットイン(90F) --既存のものの流用
--    →最近実装されたものから流用してください
------------------------------------------------------


playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2,  shuchusen,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_2,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen,  0);
setEffRotateKey(  spep_2+90,  shuchusen,  0);
setEffAlphaKey(  spep_2,  shuchusen,  255);
setEffAlphaKey(  spep_2+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_2+82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3 = spep_2 + 90;


------------------------------------------------------
-- 攻撃
------------------------------------------------------
--エフェクトの再生(前)
punch_f = entryEffectLife( spep_3 + 0, SP_03x, 140, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, punch_f, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 140, punch_f, 255 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 140, punch_f, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  921, 138, 0X80, -1, 0, 23, 0 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 23 , 0 );
setEffMoveKey( spep_3 + 138, ryusen1, 0, 23 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1.17, 1.13 );
setEffScaleKey( spep_3 + 138, ryusen1, 1.17, 1.13 );

setEffRotateKey( spep_3 + 0, ryusen1, -27 );
setEffRotateKey( spep_3 + 138, ryusen1, -27 );

setEffAlphaKey( spep_3 + 0, ryusen1, 0 );
setEffAlphaKey( spep_3 + 100, ryusen1, 0 );
setEffAlphaKey( spep_3 + 102, ryusen1, 0 );
setEffAlphaKey( spep_3 + 103, ryusen1, 255 );
setEffAlphaKey( spep_3 + 104, ryusen1, 255 );
setEffAlphaKey( spep_3 + 138, ryusen1, 255 );

--エフェクトの再生(後)
punch_b = entryEffectLife( spep_3 + 0, SP_04x, 110, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, punch_b, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 110, punch_b, 255 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 110, punch_b, 0 );

--次の準備
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 132, 1, 1 );

changeAnime( spep_3  + 0, 1, 100 );
changeAnime( spep_3 -3 + 66, 1, 108 );

setMoveKey( spep_3  + 0, 1, 73.6, 36 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 73.6, 36 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 115.5, 45 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 131.4, 32.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 114.9, 46.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 125.9, 46.7 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 130.1, 48.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 106, 48.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 94.7, 51.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 135.2, 22.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 109.6, 51.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 125.4, 52.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 126.7, 39.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 113.1, 52.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 121.8, 44.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 118.1, 47.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 121.8, 44.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 118.2, 47.5 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 122.1, 44.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 143.8, 120 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 157.2, 71.7 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 111.9, 77.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 134.9, 80.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 135.8, 87.8 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 126.1, 91.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 132, 89.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 132.9, 90.6 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 134, 91.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 135, 93 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 135.9, 94.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 136.9, 95.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 137.8, 96.6 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 138.8, 97.8 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 139.6, 99.1 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 140.6, 100.3 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 141.6, 101.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 142.5, 102.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 143.6, 103.7 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 144.5, 104.9 , 0 );
setMoveKey( spep_3 -3 + 105, 1, 144.5, 104.9 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 260.9, 130 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 339.6, 143.4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 401.7, 161.6 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 439.5, 165.4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 468.3, 171.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 491.9, 180.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 505, 183.5 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 511.7, 182.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 521.5, 186.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 520.3, 185.4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 521.3, 186.1 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 521.5, 185.5 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 520.6, 186.1 , 0 );
setMoveKey( spep_3  + 132, 1, 521, 185.9 , 0 );

setScaleKey( spep_3  + 0, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 30, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 32, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 34, 1, 3.37, 3.37 );
setScaleKey( spep_3 -3 + 36, 1, 3.06, 3.06 );
setScaleKey( spep_3 -3 + 65, 1, 3.06, 3.06 );
setScaleKey( spep_3 -3 + 66, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 68, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 70, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 104, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 106, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 108, 1, 1.23, 1.23 );
setScaleKey( spep_3 -3 + 110, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 112, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 114, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 116, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 118, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 120, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 122, 1, 0.59, 0.59 );
setScaleKey( spep_3  + 132, 1, 0.59, 0.59 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3 -3 + 65, 1, 0 );
setRotateKey( spep_3 -3 + 66, 1, -11.8 );
setRotateKey( spep_3 -3 + 68, 1, -11.8 );
setRotateKey( spep_3 -3 + 70, 1, -12 );
setRotateKey( spep_3 -3 + 72, 1, -12.3 );
setRotateKey( spep_3 -3 + 76, 1, -12.3 );
setRotateKey( spep_3 -3 + 78, 1, -12.6 );
setRotateKey( spep_3 -3 + 80, 1, -12.9 );
setRotateKey( spep_3 -3 + 82, 1, -13.1 );
setRotateKey( spep_3 -3 + 84, 1, -13.4 );
setRotateKey( spep_3 -3 + 86, 1, -13.6 );
setRotateKey( spep_3 -3 + 88, 1, -13.9 );
setRotateKey( spep_3 -3 + 90, 1, -14.2 );
setRotateKey( spep_3 -3 + 92, 1, -14.4 );
setRotateKey( spep_3 -3 + 94, 1, -14.7 );
setRotateKey( spep_3 -3 + 96, 1, -15 );
setRotateKey( spep_3 -3 + 98, 1, -15.2 );
setRotateKey( spep_3 -3 + 100, 1, -15.5 );
setRotateKey( spep_3 -3 + 102, 1, -15.7 );
setRotateKey( spep_3 -3 + 104, 1, -16 );
setRotateKey( spep_3 -3 + 106, 1, -15.9 );
setRotateKey( spep_3 -3 + 108, 1, -15.9 );
setRotateKey( spep_3 -3 + 110, 1, -15.8 );
setRotateKey( spep_3  + 132, 1, -15.8 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 28,  906, 74, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 28, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 102, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 28, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 102, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_3 + 28, shuchusen2, 180 );
setEffRotateKey( spep_3 + 102, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 28, shuchusen2, 0 );
setEffAlphaKey( spep_3 + 29, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 102, shuchusen2, 255 );


--SE
playSe( spep_3 + 30, 8 );  --衝撃波
playSe( spep_3 + 62, 1011 );  --敵がくの字になる
playSe( spep_3 + 102, 44 );  --飛んでいく


--黒背景
entryFadeBg(spep_3, 0, 140, 0, 0, 0, 0, 190);  -- 黒　背

--***背景と白フェード***
entryFade( spep_3+132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3 + 140;

------------------------------------------------------
-- ガッ--既存のものの流用
--    →最近実装されたものから流用してください
------------------------------------------------------


--***敵の動き***--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_4, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );

--entryFadeBg( spep_4,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen_g = entryEffectLife( spep_4+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_4+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_4 + 110);
end
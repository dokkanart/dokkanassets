--1020220:超サイヤ人2ベジータ(天使)_ファイナルバーストキャノン
--sp_effect_a2_00142

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

--エフェクト(味方)
SP_01=	155862	;--	登場から変身
SP_02=	155863	;--	飛び立ち
SP_03=	155864	;--	気弾溜め
SP_04=	155866	;--	発射シーン手前
SP_05=	155867	;--	発射シーン奥
SP_06=	155868	;--	気弾が迫るシーン手前
SP_07=	155869	;--	気弾が迫るシーン奥
SP_08=	155870	;--	爆発
SP_09=	155871	;--	正面カットで気弾連射
SP_10=	155872	;--	連射した気弾で煙が舞う
SP_11=	155873	;--	斜めカットで気弾連射
SP_12=	155874	;--	ラスト爆発

--エフェクト(てき)
SP_01x=	155862	;--	登場から変身	
SP_02x=	155863	;--	飛び立ち	
SP_03x=	155865	;--	気弾溜め	(敵)
SP_04x=	155866	;--	発射シーン手前	
SP_05x=	155867	;--	発射シーン奥	
SP_06x=	155868	;--	気弾が迫るシーン手前	
SP_07x=	155869	;--	気弾が迫るシーン奥	
SP_08x=	155870	;--	爆発	
SP_09x=	155871	;--	正面カットで気弾連射	
SP_10x=	155872	;--	連射した気弾で煙が舞う	
SP_11x=	155873	;--	斜めカットで気弾連射	
SP_12x=	155874	;--	ラスト爆発	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場から変身
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
evolution = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, evolution, 0, 0, 0 );
setEffMoveKey( spep_0 + 144, evolution, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, evolution, 1.0, 1.0 );
setEffScaleKey( spep_0 + 144, evolution, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, evolution, 0 );
setEffRotateKey( spep_0 + 144, evolution, 0 );
setEffAlphaKey( spep_0 + 0, evolution, 255 );
setEffAlphaKey( spep_0 + 144, evolution, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 76,  906, 68+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 76, shuchusen1, 68+3, 20 );
setEffMoveKey( spep_0-3 + 76, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 76, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 144, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0-3 + 76, shuchusen1, 180 );
setEffRotateKey( spep_0 + 144, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 76, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 144, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+64  , 1504, 0x101, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+64  , 1505, 0x101, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +76, 190006, 72, 0x102, -1, 0, 100 -180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +76,  ctgogo,  100 -180,  510);
setEffMoveKey(  spep_0 +148,  ctgogo,  100 -180,  510);

setEffAlphaKey( spep_0 +76, ctgogo, 0 );
setEffAlphaKey( spep_0 + 77, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 142, ctgogo, 255 );
setEffAlphaKey( spep_0 + 144, ctgogo, 191 );
setEffAlphaKey( spep_0 + 146, ctgogo, 112 );
setEffAlphaKey( spep_0 + 148, ctgogo, 64 );

setEffRotateKey(  spep_0 +76,  ctgogo,  0);
setEffRotateKey(  spep_0 +148,  ctgogo,  0);

setEffScaleKey(  spep_0 +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +138,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +148,  ctgogo, 1.07, 1.07 )
]]

--SE
--入り
SE_001 =playSe( spep_0 + 0 , 44 );
setSeVolumeByWorkId( spep_0 + 0 , SE_001 , 46 );
setPitch( spep_0 + 0, SE_001, -200 );
setTimeStretch( SE_001, 0.87, 10, 1 );
SE_002 =playSe( spep_0 + 0 , 1278 );
setSeVolumeByWorkId( spep_0 + 0 , SE_002 , 68 );
stopSe( spep_0 + 51, SE_002, 31);

--顔カットイン
SE_007= playSe( spep_0 + 76, 1018 );

--気ダメ
SE_003 =playSe( spep_0 + 52 , 1035 );
SE_004 =playSe( spep_0 + 52 , 1024 );
setSeVolumeByWorkId( spep_0 + 52 , SE_004 , 79 );
SE_005 =playSe( spep_0 + 64 , 1036 );
SE_006 =playSe( spep_0 + 64 , 1147 );
setSeVolumeByWorkId( spep_0 + 64 , SE_006 , 56 );
SE_008 =playSe( spep_0 + 88 , 1036 );
SE_009 =playSe( spep_0 + 112 , 1036 );
SE_010 =playSe( spep_0 + 136 , 1036 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 138, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_1=spep_0+148;
------------------------------------------------------
-- 飛び立ち
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, fly, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, fly, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fly, 0 );
setEffRotateKey( spep_1 + 48, fly, 0 );
setEffAlphaKey( spep_1 + 0, fly, 255 );
setEffAlphaKey( spep_1 + 48, fly, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 18,  906, 6, 0x100, -1, 0, -139.5, -80 );
setEffShake( spep_1-3 + 18, shuchusen2, 6, 20 );
setEffMoveKey( spep_1-3 + 18, shuchusen2, -139.5, -80 , 0 );
setEffMoveKey( spep_1-3 + 24, shuchusen2, -139.5, -80 , 0 );

setEffScaleKey( spep_1-3 + 18, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 24, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 18, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 24, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 24, shuchusen2, 255 );


--気ダメ
SE_011 =playSe( spep_1 + 6 , 1036 );
stopSe( spep_1 + 18 ,SE_006,0);

--山なりに飛んでいく
SE_012 =playSe( spep_1 + 18 , 1024 );
SE_013 =playSe( spep_1 + 20 , 1182 );
setTimeStretch( SE_013, 0.83, 10, 1 );
SE_014 =playSe( spep_1 + 20 , 1183 );


-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 50, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2=spep_1+48;
------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 255 );
setEffAlphaKey( spep_2 + 97, tame, 0 );
setEffAlphaKey( spep_2 + 98, tame, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 10-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen3, 10-3, 20 );
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 10, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_2-3 + 10, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_2 + 0, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 10, shuchusen3, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 10, shuchusen3, 255 );

--SE
--山なりに飛んでいく
stopSe( spep_2 + 18 ,SE_012, 28);
stopSe( spep_2 + 18 ,SE_014, 18);

--正面に向かってくる
SE_015 =playSe( spep_2 + 0 , 1072 );
setSeVolumeByWorkId( spep_2 + 0 , SE_015 , 141 );
setPitch( spep_2 + 0, SE_015, -700 );
setTimeStretch( SE_015, 0.67, 10, 1 );
SE_016 =playSe( spep_2 + 16 , 1116 );
setSeVolumeByWorkId( spep_2 + 16 , SE_016 , 112 );
setTimeStretch( SE_016, 1.42, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 100, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_012, 0 );
    stopSe( SP_dodge - 12, SE_013, 0 );
    stopSe( SP_dodge - 12, SE_014, 0 );
    stopSe( SP_dodge - 12, SE_015, 0 );
    stopSe( SP_dodge - 12, SE_016, 0 );

    pauseAll( SP_dodge, 67 );
    

    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 44,  906, 8+1, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 44, shuchusen4, 8+1, 20 );
setEffMoveKey( spep_2-3 + 44, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-2 + 52, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 44, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_2-2 + 52, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_2-3 + 44, shuchusen4, 180 );
setEffRotateKey( spep_2-2 + 52, shuchusen4, 180 );

setEffAlphaKey( spep_2-3 + 44, shuchusen4, 255 );
setEffAlphaKey( spep_2-2 + 52, shuchusen4, 255 );


--SE
--正面に向かってくる
stopSe( spep_2 + 59 ,SE_016, 24);

--オーラ
SE_017 =playSe( spep_2 + 28 , 1036 );
setSeVolumeByWorkId( spep_2 + 28 , SE_017 , 56 );
SE_018 =playSe( spep_2 + 28 , 1148 );
setSeVolumeByWorkId( spep_2 + 28 , SE_018 , 30 );
SE_020 =playSe( spep_2 + 52 , 1036 );
setSeVolumeByWorkId( spep_2 + 52 , SE_020 , 56 );
SE_022 =playSe( spep_2 + 76 , 1036 );
setSeVolumeByWorkId( spep_2 + 76 , SE_022 , 56 );
SE_023 =playSe( spep_2 + 94 , 1036 );
setSeVolumeByWorkId( spep_2 + 94 , SE_023 , 56 );

--気弾持って横ダッシュ
SE_019 =playSe( spep_2 + 38 , 1183 );
SE_021 =playSe( spep_2 + 52 , 9 );

-- ** 次の準備 ** --
spep_3=spep_2+96;
------------------------------------------------------
-- 発射シーン
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 46, beam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 46, beam_f, 0 );
setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 44, beam_f, 255 );
setEffAlphaKey( spep_3 + 45, beam_f, 255 );
setEffAlphaKey( spep_3 + 46, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 46, beam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 46, beam_b, 0 );
setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 44, beam_b, 255 );
setEffAlphaKey( spep_3 + 45, beam_b, 255 );
setEffAlphaKey( spep_3 + 46, beam_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 117 );

setMoveKey( spep_3 + 0, 1, 151.3, -132.3 , 0 );
setMoveKey( spep_3 + 2, 1, 160.5, -148.6 , 0 );
setMoveKey( spep_3 + 4, 1, 169.6, -164.8 , 0 );
setMoveKey( spep_3 + 6, 1, 178.7, -181.1 , 0 );
setMoveKey( spep_3 + 8, 1, 187.8, -197.4 , 0 );
setMoveKey( spep_3 + 10, 1, 196.8, -213.6 , 0 );
setMoveKey( spep_3 + 12, 1, 205.9, -229.9 , 0 );
setMoveKey( spep_3 + 14, 1, 205.7, -228.6 , 0 );
setMoveKey( spep_3 + 16, 1, 205.5, -227.4 , 0 );
setMoveKey( spep_3 + 18, 1, 205.2, -226.2 , 0 );
setMoveKey( spep_3 + 20, 1, 205, -224.9 , 0 );
setMoveKey( spep_3 + 22, 1, 204.8, -223.7 , 0 );
setMoveKey( spep_3 + 24, 1, 204.6, -222.5 , 0 );
setMoveKey( spep_3 + 26, 1, 204.3, -221.2 , 0 );
setMoveKey( spep_3 + 28, 1, 204.1, -220 , 0 );
setMoveKey( spep_3 + 30, 1, 203.9, -218.8 , 0 );
setMoveKey( spep_3 + 32, 1, 203.7, -217.5 , 0 );
setMoveKey( spep_3 + 34, 1, 203.4, -216.3 , 0 );
setMoveKey( spep_3 + 36, 1, 203.2, -215.1 , 0 );
setMoveKey( spep_3 + 38, 1, 203, -213.8 , 0 );
setMoveKey( spep_3 + 40, 1, 202.8, -212.6 , 0 );
setMoveKey( spep_3 + 42, 1, 202.5, -211.4 , 0 );
setMoveKey( spep_3 + 44, 1, 202.3, -210.1 , 0 );
setMoveKey( spep_3 + 45, 1, 202.1, -208.9 , 0 );
--setMoveKey( spep_3 + 48, 1, 201.9, -207.7 , 0 );

setScaleKey( spep_3 + 0, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 4, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 6, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 8, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 10, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 12, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 24, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 26, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 34, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 45, 1, 0.54, 0.54 );
--setScaleKey( spep_3 + 48, 1, 0.54, 0.54 );

setRotateKey( spep_3 + 0, 1, 5 );
setRotateKey( spep_3 + 45, 1, 5 );

--SE
--オーラ
SE_024 =playSe( spep_3 + 18 , 1036 );
setSeVolumeByWorkId( spep_3 + 18 , SE_024 , 56 );

--気弾発射
SE_025 =playSe( spep_3 + 26 , 1202 );
setSeVolumeByWorkId( spep_3 + 26 , SE_025 , 0 );
setSeVolumeByWorkId( spep_3 + 35 , SE_025 , 39.5 );
setSeVolumeByWorkId( spep_3 + 36 , SE_025 , 79 );
setSeVolumeByWorkId( spep_3 + 37 , SE_025 , 118.5 );
setSeVolumeByWorkId( spep_3 + 38 , SE_025 , 158 );
SE_026 =playSe( spep_3 + 34 , 1027 );
setSeVolumeByWorkId( spep_3 + 34 , SE_026 , 65 );
SE_027 =playSe( spep_3 + 35 , 1202 );
setSeVolumeByWorkId( spep_3 + 35 , SE_027 , 0 );
setSeVolumeByWorkId( spep_3 + 44 , SE_027 , 39.5 );
setSeVolumeByWorkId( spep_3 + 45 , SE_027 , 79 );
setSeVolumeByWorkId( spep_3 + 46 , SE_027 , 118.5 );
setSeVolumeByWorkId( spep_3 + 47 , SE_027 , 158 );
SE_028 =playSe( spep_3 + 42 , 1202 );
setSeVolumeByWorkId( spep_3 + 42 , SE_028 , 245 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 50, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4=spep_3+46;
------------------------------------------------------
-- 気弾が迫るシーン
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 36, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 36, hit_f, 255 );
setEffAlphaKey( spep_4 + 37, hit_f, 0 );
setEffAlphaKey( spep_4 + 38, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 36, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 36, hit_b, 255 );
setEffAlphaKey( spep_4 + 37, hit_b, 0 );
setEffAlphaKey( spep_4 + 38, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 36, 1, 0 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, 142.1, -317.1 , 0 );
setMoveKey( spep_4 + 2, 1, 166, -330.6 , 0 );
setMoveKey( spep_4 + 4, 1, 183, -340.2 , 0 );
setMoveKey( spep_4 + 6, 1, 196.3, -347.8 , 0 );
setMoveKey( spep_4 + 8, 1, 206.7, -353.7 , 0 );
setMoveKey( spep_4 + 10, 1, 214.4, -358.1 , 0 );
setMoveKey( spep_4 + 12, 1, 218.2, -360.2 , 0 );
setMoveKey( spep_4 + 14, 1, 219.7, -360.2 , 0 );
setMoveKey( spep_4 + 16, 1, 221.2, -360.2 , 0 );
setMoveKey( spep_4 + 18, 1, 222.8, -360.2 , 0 );
setMoveKey( spep_4 + 20, 1, 224.3, -360.2 , 0 );
setMoveKey( spep_4 + 22, 1, 225.8, -360.2 , 0 );
setMoveKey( spep_4 + 24, 1, 227.4, -360.2 , 0 );
setMoveKey( spep_4 + 26, 1, 228.9, -360.2 , 0 );
setMoveKey( spep_4 + 28, 1, 230.5, -360.2 , 0 );
setMoveKey( spep_4 + 30, 1, 232, -360.2 , 0 );
setMoveKey( spep_4 + 32, 1, 233.5, -360.2 , 0 );
setMoveKey( spep_4 + 34, 1, 235.1, -360.2 , 0 );
setMoveKey( spep_4 + 36, 1, 236.6, -360.2 , 0 );
--setMoveKey( spep_4 + 38, 1, 238.2, -360.2 , 0 );

setScaleKey( spep_4 + 0, 1, 3.3, 3.3 );
setScaleKey( spep_4 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_4 + 4, 1, 2.71, 2.71 );
setScaleKey( spep_4 + 6, 1, 2.52, 2.52 );
setScaleKey( spep_4 + 8, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 10, 1, 2.25, 2.25 );
setScaleKey( spep_4 + 12, 1, 2.2, 2.2 );
setScaleKey( spep_4 + 36, 1, 2.2, 2.2 );

setRotateKey( spep_4 + 0, 1, 10 );
setRotateKey( spep_4 + 36, 1, 10 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 40, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--SE
--気弾持って横ダッシュ
stopSe( spep_4 + 7 ,SE_019, 23);

--気弾発射
SE_029 =playSe( spep_4 + 10 , 1021 );

stopSe( spep_4 + 1 ,SE_025, 6);
stopSe( spep_4 + 10 ,SE_027, 6);
-- ** 次の準備 ** --
spep_5=spep_4+36;
------------------------------------------------------
-- 爆発
------------------------------------------------------
hit = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 60, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 60, hit, 255 );
setEffAlphaKey( spep_5 + 61, hit, 0 );
setEffAlphaKey( spep_5 + 62, hit, 0 );

--SE
--爆発
SE_030 =playSe( spep_5 + 0 , 1023 );
SE_031 =playSe( spep_5 + 2 , 1068 );
setSeVolumeByWorkId( spep_5 + 2 , SE_031 , 83 );
SE_032 =playSe( spep_5 + 4 , 1159 );
setSeVolumeByWorkId( spep_5 + 4 , SE_032 , 72 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 62, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--白フェード
entryFade( spep_5 + 52, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6=spep_5+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--爆発
stopSe( spep_6 + 2 ,SE_030,0);
stopSe( spep_6 + 2 ,SE_031,0);
stopSe( spep_6 + 2 ,SE_032,0);

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 正面カットで気弾連射
------------------------------------------------------
kidan = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_7 + 72, kidan, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 72, kidan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kidan, 0 );
setEffRotateKey( spep_7 + 72, kidan, 0 );
setEffAlphaKey( spep_7 + 0, kidan, 255 );
setEffAlphaKey( spep_7 + 72, kidan, 255 );
setEffAlphaKey( spep_7 + 73, kidan, 0 );
setEffAlphaKey( spep_7 + 74, kidan, 0 );
--SE
--連続気弾
SE_034 =playSe( spep_7 + 0 , 1016 );
SE_035 =playSe( spep_7 + 10 , 1016 );
setSeVolumeByWorkId( spep_7 + 10 , SE_035 , 93 );
SE_036 =playSe( spep_7 + 10 , 1015 );
setSeVolumeByWorkId( spep_7 + 10 , SE_036 , 56 );
SE_037 =playSe( spep_7 + 16 , 1155 );
setSeVolumeByWorkId( spep_7 + 16 , SE_037 , 41 );
SE_038 =playSe( spep_7 + 22 , 1016 );
setSeVolumeByWorkId( spep_7 + 22 , SE_038 , 120 );
SE_039 =playSe( spep_7 + 32 , 1016 );
SE_040 =playSe( spep_7 + 32 , 1015 );
setSeVolumeByWorkId( spep_7 + 32 , SE_040 , 47 );
SE_041 =playSe( spep_7 + 40 , 1016 );
setSeVolumeByWorkId( spep_7 + 40 , SE_041 , 130 );
SE_042 =playSe( spep_7 + 40 , 1015 );
setSeVolumeByWorkId( spep_7 + 40 , SE_042 , 48 );
SE_043 =playSe( spep_7 + 44 , 1155 );
setSeVolumeByWorkId( spep_7 + 44 , SE_043 , 41 );
SE_044 =playSe( spep_7 + 50 , 1016 );
setSeVolumeByWorkId( spep_7 + 50 , SE_044 , 83 );
SE_045 =playSe( spep_7 + 60 , 1016 );
SE_046 =playSe( spep_7 + 60 , 1155 );
setSeVolumeByWorkId( spep_7 + 60 , SE_046 , 50 );
SE_047 =playSe( spep_7 + 68 , 1016 );
setSeVolumeByWorkId( spep_7 + 68 , SE_047 , 62 );
SE_048 =playSe( spep_7 + 68 , 1015 );
setSeVolumeByWorkId( spep_7 + 68 , SE_048 , 50 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 80, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 72;
------------------------------------------------------
-- 連射した気弾で煙が舞う
------------------------------------------------------
hit2 = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit2, 0, 0, 0 );
setEffMoveKey( spep_8 + 60, hit2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 60, hit2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit2, 0 );
setEffRotateKey( spep_8 + 60, hit2, 0 );
setEffAlphaKey( spep_8 + 0, hit2, 255 );
setEffAlphaKey( spep_8 + 60, hit2, 255 );
setEffAlphaKey( spep_8 + 61, hit2, 0 );
setEffAlphaKey( spep_8 + 62, hit2, 0 );

--SE
--爆発
SE_049 =playSe( spep_8 + 0 , 1023 );
setSeVolumeByWorkId( spep_8 + 0 , SE_049 , 112 );
SE_052 =playSe( spep_8 + 18 , 1159 );
setSeVolumeByWorkId( spep_8 + 18 , SE_052 , 50 );
stopSe( spep_8 + 55 ,SE_052, 39);
SE_056 =playSe( spep_8 + 36 , 1024 );


--連続気弾
SE_050 =playSe( spep_8 + 6 , 1016 );
SE_051 =playSe( spep_8 + 18 , 1016 );
setSeVolumeByWorkId( spep_8 + 18 , SE_051 , 67 );
SE_053 =playSe( spep_8 + 26 , 1016 );
setSeVolumeByWorkId( spep_8 + 26 , SE_053 , 67 );
SE_054 =playSe( spep_8 + 36 , 1016 );
setSeVolumeByWorkId( spep_8 + 36 , SE_054 , 64 );
SE_055 =playSe( spep_8 + 36 , 1015 );
setSeVolumeByWorkId( spep_8 + 36 , SE_055 , 32 );
SE_057 =playSe( spep_8 + 48 , 1016 );


-- ** 背景 ** --
entryFadeBg( spep_8 + 0, 0, 60, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 60;
------------------------------------------------------
-- 斜めカットで気弾連射
------------------------------------------------------
kidan2 = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kidan2, 0, 0, 0 );
setEffMoveKey( spep_9 + 60, kidan2, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kidan2, 1.0, 1.0 );
setEffScaleKey( spep_9 + 60, kidan2, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kidan2, 0 );
setEffRotateKey( spep_9 + 60, kidan2, 0 );
setEffAlphaKey( spep_9 + 0, kidan2, 255 );
setEffAlphaKey( spep_9 + 60, kidan2, 255 );
setEffAlphaKey( spep_9 + 61, kidan2, 0 );
setEffAlphaKey( spep_9 + 62, kidan2, 0 );

--SE
--爆発
stopSe( spep_9 + 2 ,SE_056, 39);

--連続気弾２
SE_058 =playSe( spep_9 + 0 , 1016 );
setSeVolumeByWorkId( spep_9 + 0 , SE_058 , 108 );
SE_059 =playSe( spep_9 + 2 , 1155 );
setSeVolumeByWorkId( spep_9 + 2 , SE_059 , 58 );
SE_060 =playSe( spep_9 + 4 , 1015 );
setSeVolumeByWorkId( spep_9 + 4 , SE_060 , 58 );
SE_061 =playSe( spep_9 + 6 , 1016 );
setSeVolumeByWorkId( spep_9 + 6 , SE_061 , 114 );
SE_062 =playSe( spep_9 + 14 , 1016 );
setSeVolumeByWorkId( spep_9 + 14 , SE_062 , 86 );
SE_063 =playSe( spep_9 + 18 , 1015 );
setSeVolumeByWorkId( spep_9 + 18 , SE_063 , 62 );
SE_064 =playSe( spep_9 + 26 , 1155 );
setSeVolumeByWorkId( spep_9 + 26 , SE_064 , 57 );
SE_065 =playSe( spep_9 + 30 , 1016 );
SE_066 =playSe( spep_9 + 30 , 1015 );
setSeVolumeByWorkId( spep_9 + 30 , SE_066 , 71 );
SE_067 =playSe( spep_9 + 40 , 1016 );
setSeVolumeByWorkId( spep_9 + 40 , SE_067 , 79 );
SE_068 =playSe( spep_9 + 40 , 1155 );
setSeVolumeByWorkId( spep_9 + 40 , SE_068 , 55 );
SE_069 =playSe( spep_9 + 46 , 1016 );
setSeVolumeByWorkId( spep_9 + 46 , SE_069 , 95 );
SE_070 =playSe( spep_9 + 54 , 1016 );

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 60, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 60;
------------------------------------------------------
-- 斜めカットで気弾連射
------------------------------------------------------
finish = entryEffect( spep_10 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_10 + 240, finish, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_10 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish, 0 );
setEffRotateKey( spep_10 + 240, finish, 0 );
setEffAlphaKey( spep_10 + 0, finish, 255 );
setEffAlphaKey( spep_10 + 240, finish, 255 );

--SE
--ラスト爆発
SE_071 =playSe( spep_10 + 0 , 1067 );
setSeVolumeByWorkId( spep_10 + 0 , SE_071 , 86 );
SE_072 =playSe( spep_10 + 2 , 1159 );
setSeVolumeByWorkId( spep_10 + 2 , SE_072 , 86 );
SE_073 =playSe( spep_10 + 2 , 1188 );
setSeVolumeByWorkId( spep_10 + 2 , SE_073 , 79 );

-- ** 背景 ** --
entryFadeBg( spep_10 + 0, 0, 230, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--終わり
dealDamage( spep_10 +20 );
endPhase( spep_10 + 130 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場から変身
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
evolution = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, evolution, 0, 0, 0 );
setEffMoveKey( spep_0 + 144, evolution, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, evolution, -1.0, 1.0 );
setEffScaleKey( spep_0 + 144, evolution, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, evolution, 0 );
setEffRotateKey( spep_0 + 144, evolution, 0 );
setEffAlphaKey( spep_0 + 0, evolution, 255 );
setEffAlphaKey( spep_0 + 144, evolution, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 76,  906, 68+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 76, shuchusen1, 68+3, 20 );
setEffMoveKey( spep_0-3 + 76, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 76, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 144, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0-3 + 76, shuchusen1, 180 );
setEffRotateKey( spep_0 + 144, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 76, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 144, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+64  , 1504, 0x101, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+64  , 1505, 0x101, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +76, 190006, 72, 0x102, -1, 0, 100 -180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +76,  ctgogo,  100 -180,  510);
setEffMoveKey(  spep_0 +148,  ctgogo,  100 -180,  510);

setEffAlphaKey( spep_0 +76, ctgogo, 0 );
setEffAlphaKey( spep_0 + 77, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 142, ctgogo, 255 );
setEffAlphaKey( spep_0 + 144, ctgogo, 191 );
setEffAlphaKey( spep_0 + 146, ctgogo, 112 );
setEffAlphaKey( spep_0 + 148, ctgogo, 64 );

setEffRotateKey(  spep_0 +76,  ctgogo,  0);
setEffRotateKey(  spep_0 +148,  ctgogo,  0);

setEffScaleKey(  spep_0 +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +138,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +148,  ctgogo, 1.07, 1.07 )
]]

--SE
--入り
SE_001 =playSe( spep_0 + 0 , 44 );
setSeVolumeByWorkId( spep_0 + 0 , SE_001 , 46 );
setPitch( spep_0 + 0, SE_001, -200 );
setTimeStretch( SE_001, 0.87, 10, 1 );
SE_002 =playSe( spep_0 + 0 , 1278 );
setSeVolumeByWorkId( spep_0 + 0 , SE_002 , 68 );
stopSe( spep_0 + 51, SE_002, 31);

--顔カットイン
SE_007= playSe( spep_0 + 76, 1018 );

--気ダメ
SE_003 =playSe( spep_0 + 52 , 1035 );
SE_004 =playSe( spep_0 + 52 , 1024 );
setSeVolumeByWorkId( spep_0 + 52 , SE_004 , 79 );
SE_005 =playSe( spep_0 + 64 , 1036 );
SE_006 =playSe( spep_0 + 64 , 1147 );
setSeVolumeByWorkId( spep_0 + 64 , SE_006 , 56 );
SE_008 =playSe( spep_0 + 88 , 1036 );
SE_009 =playSe( spep_0 + 112 , 1036 );
SE_010 =playSe( spep_0 + 136 , 1036 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 138, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_1=spep_0+148;
------------------------------------------------------
-- 飛び立ち
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, fly, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, fly, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fly, 0 );
setEffRotateKey( spep_1 + 48, fly, 0 );
setEffAlphaKey( spep_1 + 0, fly, 255 );
setEffAlphaKey( spep_1 + 48, fly, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 18,  906, 6, 0x100, -1, 0, -139.5, -80 );
setEffShake( spep_1-3 + 18, shuchusen2, 6, 20 );
setEffMoveKey( spep_1-3 + 18, shuchusen2, -139.5, -80 , 0 );
setEffMoveKey( spep_1-3 + 24, shuchusen2, -139.5, -80 , 0 );

setEffScaleKey( spep_1-3 + 18, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 24, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1-3 + 18, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 24, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 24, shuchusen2, 255 );


--気ダメ
SE_011 =playSe( spep_1 + 6 , 1036 );
stopSe( spep_1 + 18 ,SE_006,0);

--山なりに飛んでいく
SE_012 =playSe( spep_1 + 18 , 1024 );
SE_013 =playSe( spep_1 + 20 , 1182 );
setTimeStretch( SE_013, 0.83, 10, 1 );
SE_014 =playSe( spep_1 + 20 , 1183 );


-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 50, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2=spep_1+48;
------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 255 );
setEffAlphaKey( spep_2 + 97, tame, 0 );
setEffAlphaKey( spep_2 + 98, tame, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 10-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen3, 10-3, 20 );
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 10, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_2-3 + 10, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_2 + 0, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 10, shuchusen3, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 10, shuchusen3, 255 );

--SE
--山なりに飛んでいく
stopSe( spep_2 + 18 ,SE_012, 28);
stopSe( spep_2 + 18 ,SE_014, 18);

--正面に向かってくる
SE_015 =playSe( spep_2 + 0 , 1072 );
setSeVolumeByWorkId( spep_2 + 0 , SE_015 , 141 );
setPitch( spep_2 + 0, SE_015, -700 );
setTimeStretch( SE_015, 0.67, 10, 1 );
SE_016 =playSe( spep_2 + 16 , 1116 );
setSeVolumeByWorkId( spep_2 + 16 , SE_016 , 112 );
setTimeStretch( SE_016, 1.42, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 100, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_012, 0 );
    stopSe( SP_dodge - 12, SE_013, 0 );
    stopSe( SP_dodge - 12, SE_014, 0 );
    stopSe( SP_dodge - 12, SE_015, 0 );
    stopSe( SP_dodge - 12, SE_016, 0 );

    pauseAll( SP_dodge, 67 );
    

    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 44,  906, 8+1, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 44, shuchusen4, 8+1, 20 );
setEffMoveKey( spep_2-3 + 44, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-2 + 52, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 44, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_2-2 + 52, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_2-3 + 44, shuchusen4, 180 );
setEffRotateKey( spep_2-2 + 52, shuchusen4, 180 );

setEffAlphaKey( spep_2-3 + 44, shuchusen4, 255 );
setEffAlphaKey( spep_2-2 + 52, shuchusen4, 255 );


--SE
--正面に向かってくる
stopSe( spep_2 + 59 ,SE_016, 24);

--オーラ
SE_017 =playSe( spep_2 + 28 , 1036 );
setSeVolumeByWorkId( spep_2 + 28 , SE_017 , 56 );
SE_018 =playSe( spep_2 + 28 , 1148 );
setSeVolumeByWorkId( spep_2 + 28 , SE_018 , 30 );
SE_020 =playSe( spep_2 + 52 , 1036 );
setSeVolumeByWorkId( spep_2 + 52 , SE_020 , 56 );
SE_022 =playSe( spep_2 + 76 , 1036 );
setSeVolumeByWorkId( spep_2 + 76 , SE_022 , 56 );
SE_023 =playSe( spep_2 + 94 , 1036 );
setSeVolumeByWorkId( spep_2 + 94 , SE_023 , 56 );

--気弾持って横ダッシュ
SE_019 =playSe( spep_2 + 38 , 1183 );
SE_021 =playSe( spep_2 + 52 , 9 );

-- ** 次の準備 ** --
spep_3=spep_2+96;
------------------------------------------------------
-- 発射シーン
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 46, beam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 46, beam_f, 0 );
setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 46, beam_f, 255 );
setEffAlphaKey( spep_3 + 47, beam_f, 0 );
setEffAlphaKey( spep_3 + 48, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 46, beam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 46, beam_b, 0 );
setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 46, beam_b, 255 );
setEffAlphaKey( spep_3 + 47, beam_b, 0 );
setEffAlphaKey( spep_3 + 48, beam_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 117 );

setMoveKey( spep_3 + 0, 1, 151.3, -132.3 , 0 );
setMoveKey( spep_3 + 2, 1, 160.5, -148.6 , 0 );
setMoveKey( spep_3 + 4, 1, 169.6, -164.8 , 0 );
setMoveKey( spep_3 + 6, 1, 178.7, -181.1 , 0 );
setMoveKey( spep_3 + 8, 1, 187.8, -197.4 , 0 );
setMoveKey( spep_3 + 10, 1, 196.8, -213.6 , 0 );
setMoveKey( spep_3 + 12, 1, 205.9, -229.9 , 0 );
setMoveKey( spep_3 + 14, 1, 205.7, -228.6 , 0 );
setMoveKey( spep_3 + 16, 1, 205.5, -227.4 , 0 );
setMoveKey( spep_3 + 18, 1, 205.2, -226.2 , 0 );
setMoveKey( spep_3 + 20, 1, 205, -224.9 , 0 );
setMoveKey( spep_3 + 22, 1, 204.8, -223.7 , 0 );
setMoveKey( spep_3 + 24, 1, 204.6, -222.5 , 0 );
setMoveKey( spep_3 + 26, 1, 204.3, -221.2 , 0 );
setMoveKey( spep_3 + 28, 1, 204.1, -220 , 0 );
setMoveKey( spep_3 + 30, 1, 203.9, -218.8 , 0 );
setMoveKey( spep_3 + 32, 1, 203.7, -217.5 , 0 );
setMoveKey( spep_3 + 34, 1, 203.4, -216.3 , 0 );
setMoveKey( spep_3 + 36, 1, 203.2, -215.1 , 0 );
setMoveKey( spep_3 + 38, 1, 203, -213.8 , 0 );
setMoveKey( spep_3 + 40, 1, 202.8, -212.6 , 0 );
setMoveKey( spep_3 + 42, 1, 202.5, -211.4 , 0 );
setMoveKey( spep_3 + 44, 1, 202.3, -210.1 , 0 );
setMoveKey( spep_3 + 45, 1, 202.1, -208.9 , 0 );
--setMoveKey( spep_3 + 48, 1, 201.9, -207.7 , 0 );

setScaleKey( spep_3 + 0, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 4, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 6, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 8, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 10, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 12, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 24, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 26, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 34, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 45, 1, 0.54, 0.54 );
--setScaleKey( spep_3 + 48, 1, 0.54, 0.54 );

setRotateKey( spep_3 + 0, 1, 5 );
setRotateKey( spep_3 + 45, 1, 5 );

--SE
--オーラ
SE_024 =playSe( spep_3 + 18 , 1036 );
setSeVolumeByWorkId( spep_3 + 18 , SE_024 , 56 );

--気弾発射
SE_025 =playSe( spep_3 + 26 , 1202 );
setSeVolumeByWorkId( spep_3 + 26 , SE_025 , 0 );
setSeVolumeByWorkId( spep_3 + 35 , SE_025 , 39.5 );
setSeVolumeByWorkId( spep_3 + 36 , SE_025 , 79 );
setSeVolumeByWorkId( spep_3 + 37 , SE_025 , 118.5 );
setSeVolumeByWorkId( spep_3 + 38 , SE_025 , 158 );
SE_026 =playSe( spep_3 + 34 , 1027 );
setSeVolumeByWorkId( spep_3 + 34 , SE_026 , 65 );
SE_027 =playSe( spep_3 + 35 , 1202 );
setSeVolumeByWorkId( spep_3 + 35 , SE_027 , 0 );
setSeVolumeByWorkId( spep_3 + 44 , SE_027 , 39.5 );
setSeVolumeByWorkId( spep_3 + 45 , SE_027 , 79 );
setSeVolumeByWorkId( spep_3 + 46 , SE_027 , 118.5 );
setSeVolumeByWorkId( spep_3 + 47 , SE_027 , 158 );
SE_028 =playSe( spep_3 + 42 , 1202 );
setSeVolumeByWorkId( spep_3 + 42 , SE_028 , 245 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 50, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4=spep_3+46;
------------------------------------------------------
-- 気弾が迫るシーン
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 36, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 36, hit_f, 255 );
setEffAlphaKey( spep_4 + 37, hit_f, 0 );
setEffAlphaKey( spep_4 + 38, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 36, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 36, hit_b, 255 );
setEffAlphaKey( spep_4 + 37, hit_b, 0 );
setEffAlphaKey( spep_4 + 38, hit_b, 0 );
--敵の動き
setDisp( spep_4 + 36, 1, 0 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, 142.1, -317.1 , 0 );
setMoveKey( spep_4 + 2, 1, 166, -330.6 , 0 );
setMoveKey( spep_4 + 4, 1, 183, -340.2 , 0 );
setMoveKey( spep_4 + 6, 1, 196.3, -347.8 , 0 );
setMoveKey( spep_4 + 8, 1, 206.7, -353.7 , 0 );
setMoveKey( spep_4 + 10, 1, 214.4, -358.1 , 0 );
setMoveKey( spep_4 + 12, 1, 218.2, -360.2 , 0 );
setMoveKey( spep_4 + 14, 1, 219.7, -360.2 , 0 );
setMoveKey( spep_4 + 16, 1, 221.2, -360.2 , 0 );
setMoveKey( spep_4 + 18, 1, 222.8, -360.2 , 0 );
setMoveKey( spep_4 + 20, 1, 224.3, -360.2 , 0 );
setMoveKey( spep_4 + 22, 1, 225.8, -360.2 , 0 );
setMoveKey( spep_4 + 24, 1, 227.4, -360.2 , 0 );
setMoveKey( spep_4 + 26, 1, 228.9, -360.2 , 0 );
setMoveKey( spep_4 + 28, 1, 230.5, -360.2 , 0 );
setMoveKey( spep_4 + 30, 1, 232, -360.2 , 0 );
setMoveKey( spep_4 + 32, 1, 233.5, -360.2 , 0 );
setMoveKey( spep_4 + 34, 1, 235.1, -360.2 , 0 );
setMoveKey( spep_4 + 36, 1, 236.6, -360.2 , 0 );
--setMoveKey( spep_4 + 38, 1, 238.2, -360.2 , 0 );

setScaleKey( spep_4 + 0, 1, 3.3, 3.3 );
setScaleKey( spep_4 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_4 + 4, 1, 2.71, 2.71 );
setScaleKey( spep_4 + 6, 1, 2.52, 2.52 );
setScaleKey( spep_4 + 8, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 10, 1, 2.25, 2.25 );
setScaleKey( spep_4 + 12, 1, 2.2, 2.2 );
setScaleKey( spep_4 + 36, 1, 2.2, 2.2 );

setRotateKey( spep_4 + 0, 1, 10 );
setRotateKey( spep_4 + 36, 1, 10 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 40, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--SE
--気弾持って横ダッシュ
stopSe( spep_4 + 7 ,SE_019, 23);

--気弾発射
SE_029 =playSe( spep_4 + 10 , 1021 );

stopSe( spep_4 + 1 ,SE_025, 6);
stopSe( spep_4 + 10 ,SE_027, 6);
-- ** 次の準備 ** --
spep_5=spep_4+36;
------------------------------------------------------
-- 爆発
------------------------------------------------------
hit = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 60, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 60, hit, 255 );
setEffAlphaKey( spep_5 + 61, hit, 0 );
setEffAlphaKey( spep_5 + 62, hit, 0 );

--SE
--爆発
SE_030 =playSe( spep_5 + 0 , 1023 );
SE_031 =playSe( spep_5 + 2 , 1068 );
setSeVolumeByWorkId( spep_5 + 2 , SE_031 , 83 );
SE_032 =playSe( spep_5 + 4 , 1159 );
setSeVolumeByWorkId( spep_5 + 4 , SE_032 , 72 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 62, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--白フェード
entryFade( spep_5 + 52, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6=spep_5+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--爆発
stopSe( spep_6 + 2 ,SE_030,0);
stopSe( spep_6 + 2 ,SE_031,0);
stopSe( spep_6 + 2 ,SE_032,0);

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 正面カットで気弾連射
------------------------------------------------------
kidan = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_7 + 72, kidan, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_7 + 72, kidan, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kidan, 0 );
setEffRotateKey( spep_7 + 72, kidan, 0 );
setEffAlphaKey( spep_7 + 0, kidan, 255 );
setEffAlphaKey( spep_7 + 72, kidan, 255 );
setEffAlphaKey( spep_7 + 73, kidan, 0 );
setEffAlphaKey( spep_7 + 74, kidan, 0 );
--SE
--連続気弾
SE_034 =playSe( spep_7 + 0 , 1016 );
SE_035 =playSe( spep_7 + 10 , 1016 );
setSeVolumeByWorkId( spep_7 + 10 , SE_035 , 93 );
SE_036 =playSe( spep_7 + 10 , 1015 );
setSeVolumeByWorkId( spep_7 + 10 , SE_036 , 56 );
SE_037 =playSe( spep_7 + 16 , 1155 );
setSeVolumeByWorkId( spep_7 + 16 , SE_037 , 41 );
SE_038 =playSe( spep_7 + 22 , 1016 );
setSeVolumeByWorkId( spep_7 + 22 , SE_038 , 120 );
SE_039 =playSe( spep_7 + 32 , 1016 );
SE_040 =playSe( spep_7 + 32 , 1015 );
setSeVolumeByWorkId( spep_7 + 32 , SE_040 , 47 );
SE_041 =playSe( spep_7 + 40 , 1016 );
setSeVolumeByWorkId( spep_7 + 40 , SE_041 , 130 );
SE_042 =playSe( spep_7 + 40 , 1015 );
setSeVolumeByWorkId( spep_7 + 40 , SE_042 , 48 );
SE_043 =playSe( spep_7 + 44 , 1155 );
setSeVolumeByWorkId( spep_7 + 44 , SE_043 , 41 );
SE_044 =playSe( spep_7 + 50 , 1016 );
setSeVolumeByWorkId( spep_7 + 50 , SE_044 , 83 );
SE_045 =playSe( spep_7 + 60 , 1016 );
SE_046 =playSe( spep_7 + 60 , 1155 );
setSeVolumeByWorkId( spep_7 + 60 , SE_046 , 50 );
SE_047 =playSe( spep_7 + 68 , 1016 );
setSeVolumeByWorkId( spep_7 + 68 , SE_047 , 62 );
SE_048 =playSe( spep_7 + 68 , 1015 );
setSeVolumeByWorkId( spep_7 + 68 , SE_048 , 50 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 80, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 72;
------------------------------------------------------
-- 連射した気弾で煙が舞う
------------------------------------------------------
hit2 = entryEffect( spep_8 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit2, 0, 0, 0 );
setEffMoveKey( spep_8 + 60, hit2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 60, hit2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit2, 0 );
setEffRotateKey( spep_8 + 60, hit2, 0 );
setEffAlphaKey( spep_8 + 0, hit2, 255 );
setEffAlphaKey( spep_8 + 60, hit2, 255 );
setEffAlphaKey( spep_8 + 61, hit2, 0 );
setEffAlphaKey( spep_8 + 62, hit2, 0 );

--SE
--爆発
SE_049 =playSe( spep_8 + 0 , 1023 );
setSeVolumeByWorkId( spep_8 + 0 , SE_049 , 112 );
SE_052 =playSe( spep_8 + 18 , 1159 );
setSeVolumeByWorkId( spep_8 + 18 , SE_052 , 50 );
stopSe( spep_8 + 55 ,SE_052, 39);
SE_056 =playSe( spep_8 + 36 , 1024 );


--連続気弾
SE_050 =playSe( spep_8 + 6 , 1016 );
SE_051 =playSe( spep_8 + 18 , 1016 );
setSeVolumeByWorkId( spep_8 + 18 , SE_051 , 67 );
SE_053 =playSe( spep_8 + 26 , 1016 );
setSeVolumeByWorkId( spep_8 + 26 , SE_053 , 67 );
SE_054 =playSe( spep_8 + 36 , 1016 );
setSeVolumeByWorkId( spep_8 + 36 , SE_054 , 64 );
SE_055 =playSe( spep_8 + 36 , 1015 );
setSeVolumeByWorkId( spep_8 + 36 , SE_055 , 32 );
SE_057 =playSe( spep_8 + 48 , 1016 );


-- ** 背景 ** --
entryFadeBg( spep_8 + 0, 0, 60, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 60;
------------------------------------------------------
-- 斜めカットで気弾連射
------------------------------------------------------
kidan2 = entryEffect( spep_9 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kidan2, 0, 0, 0 );
setEffMoveKey( spep_9 + 60, kidan2, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kidan2, 1.0, 1.0 );
setEffScaleKey( spep_9 + 60, kidan2, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kidan2, 0 );
setEffRotateKey( spep_9 + 60, kidan2, 0 );
setEffAlphaKey( spep_9 + 0, kidan2, 255 );
setEffAlphaKey( spep_9 + 60, kidan2, 255 );
setEffAlphaKey( spep_9 + 61, kidan2, 0 );
setEffAlphaKey( spep_9 + 62, kidan2, 0 );

--SE
--爆発
stopSe( spep_9 + 2 ,SE_056, 39);

--連続気弾２
SE_058 =playSe( spep_9 + 0 , 1016 );
setSeVolumeByWorkId( spep_9 + 0 , SE_058 , 108 );
SE_059 =playSe( spep_9 + 2 , 1155 );
setSeVolumeByWorkId( spep_9 + 2 , SE_059 , 58 );
SE_060 =playSe( spep_9 + 4 , 1015 );
setSeVolumeByWorkId( spep_9 + 4 , SE_060 , 58 );
SE_061 =playSe( spep_9 + 6 , 1016 );
setSeVolumeByWorkId( spep_9 + 6 , SE_061 , 114 );
SE_062 =playSe( spep_9 + 14 , 1016 );
setSeVolumeByWorkId( spep_9 + 14 , SE_062 , 86 );
SE_063 =playSe( spep_9 + 18 , 1015 );
setSeVolumeByWorkId( spep_9 + 18 , SE_063 , 62 );
SE_064 =playSe( spep_9 + 26 , 1155 );
setSeVolumeByWorkId( spep_9 + 26 , SE_064 , 57 );
SE_065 =playSe( spep_9 + 30 , 1016 );
SE_066 =playSe( spep_9 + 30 , 1015 );
setSeVolumeByWorkId( spep_9 + 30 , SE_066 , 71 );
SE_067 =playSe( spep_9 + 40 , 1016 );
setSeVolumeByWorkId( spep_9 + 40 , SE_067 , 79 );
SE_068 =playSe( spep_9 + 40 , 1155 );
setSeVolumeByWorkId( spep_9 + 40 , SE_068 , 55 );
SE_069 =playSe( spep_9 + 46 , 1016 );
setSeVolumeByWorkId( spep_9 + 46 , SE_069 , 95 );
SE_070 =playSe( spep_9 + 54 , 1016 );

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 60, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 60;
------------------------------------------------------
-- 斜めカットで気弾連射
------------------------------------------------------
finish = entryEffect( spep_10 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_10 + 240, finish, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_10 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish, 0 );
setEffRotateKey( spep_10 + 240, finish, 0 );
setEffAlphaKey( spep_10 + 0, finish, 255 );
setEffAlphaKey( spep_10 + 240, finish, 255 );

--SE
--ラスト爆発
SE_071 =playSe( spep_10 + 0 , 1067 );
setSeVolumeByWorkId( spep_10 + 0 , SE_071 , 86 );
SE_072 =playSe( spep_10 + 2 , 1159 );
setSeVolumeByWorkId( spep_10 + 2 , SE_072 , 86 );
SE_073 =playSe( spep_10 + 2 , 1188 );
setSeVolumeByWorkId( spep_10 + 2 , SE_073 , 79 );

-- ** 背景 ** --
entryFadeBg( spep_10 + 0, 0, 230, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--終わり
dealDamage( spep_10 +20 );
endPhase( spep_10 + 130 );
end
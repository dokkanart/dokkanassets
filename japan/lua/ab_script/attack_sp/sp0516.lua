--1016120  超サイヤ人ゴッドSSベジータ_ファイナルフラッシュ
--sp_effect_a1_00137


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
SP_01=	152639	;--	溜め
SP_02=	152640	;--	放つ
SP_03=	152641	;--	着弾・手前
SP_04=	152642	;--	着弾・奥
SP_05=	1931	;--	背景動くやつ

--敵側
SP_01x=	152643	;--	溜め	(敵)
SP_02x=	152644	;--	放つ	(敵)
SP_03x=	152641	;--	着弾・手前	
SP_04x=	152642	;--	着弾・奥	
SP_05x=	1931	;--	背景動くやつ
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -8000,   0);
setMoveKey(   1,   0,    0, -8000,   0);
setMoveKey(   2,   0,    0, -8000,   0);
setMoveKey(   3,   0,    0, -8000,   0);
setMoveKey(   4,   0,    0, -8000,   0);
setMoveKey(   5,   0,    0, -8000,   0);
setMoveKey(   6,   0,    0, -8000,   0);
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
-- 最初のシーン(148F)
------------------------------------------------------
spep_0=0;

--エフェクトの再生
rush = entryEffectLife( spep_0 + 0, SP_01, 150, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 68, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, rush, 1.2, 1.2 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 150, rush, 255 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 150, rush, 0 );
--[[
--エフェクトの再生
bg2 = entryEffectLife( spep_0 + 0, SP_06, 150, 0x80, -1, 0, 0, 0 );

setEffShake( spep_0 + 50, bg2, 100, 5 );

setEffMoveKey( spep_0 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, bg2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, bg2, 1.1, 1.1 );
setEffScaleKey( spep_0 + 70, bg2, 1.1, 1.1 );
setEffScaleKey( spep_0 + 150, bg2, 1.5, 1.5 );
setEffAlphaKey( spep_0 + 0, bg2, 255 );
setEffAlphaKey( spep_0 + 150, bg2, 255 );
setEffRotateKey( spep_0 + 0, bg2, 0 );
setEffRotateKey( spep_0 + 150, bg2, 0 );
]]
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 20,  906, 128, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20, shuchusen1, 88, 25 );

setEffMoveKey( spep_0 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 20, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 + 22,  10013, 40, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffShake( spep_0 + 22, ctzuzun, 40, 10 );

setEffMoveKey( spep_0 + 22, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 + 22, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 24, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 26, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 28, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 62, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 22, ctzuzun, 0 );
setEffRotateKey( spep_0 + 62, ctzuzun, 0 );

setEffAlphaKey( spep_0 + 22, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 212 );
setEffAlphaKey( spep_0 + 44, ctzuzun, 172 );
setEffAlphaKey( spep_0 + 46, ctzuzun, 136 );
setEffAlphaKey( spep_0 + 48, ctzuzun, 104 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 77 );
setEffAlphaKey( spep_0 + 52, ctzuzun, 53 );
setEffAlphaKey( spep_0 + 54, ctzuzun, 34 );
setEffAlphaKey( spep_0 + 56, ctzuzun, 19 );
setEffAlphaKey( spep_0 + 58, ctzuzun, 9 );
setEffAlphaKey( spep_0 + 60, ctzuzun, 2 );
setEffAlphaKey( spep_0 + 62, ctzuzun, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+8 + 52, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+8 + 52, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_0+8 + 68,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+8 + 68, ctgogo, 68, 10 );

setEffMoveKey( spep_0+8 + 68, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0+8 + 136, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0+8 + 68, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0+8 + 128, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0+8 + 130, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0+8 + 132, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0+8 + 134, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0+8 + 136, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0+8 + 68, ctgogo, 0 );
setEffRotateKey( spep_0+8 + 136, ctgogo, 0 );

setEffAlphaKey( spep_0+8 + 68, ctgogo, 255 );
setEffAlphaKey( spep_0+8 + 136, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 24, SE_02 );  --ため
playSe( spep_0 + 44, SE_02 );  --ため
playSe( spep_0 + 68, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 150, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff2 = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff2, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff2 = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff2 = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え
end

--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射シーン(178F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_2 + 0, SP_02, 168, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 168, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 168, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 168, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 168, hassha, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 14, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 14, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.18, 1.18 );
setEffScaleKey( spep_2 + 14, shuchusen3, 1.18, 1.18 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 14, shuchusen3, 255 );

--文字エントリー
ctba = entryEffectLife( spep_2-4 + 16,  10022, 24, 0x100, -1, 0, -84.8, 382 );  --バッ

setEffMoveKey( spep_2-4 + 16, ctba, -84.8, 382 , 0 );
setEffMoveKey( spep_2-4 + 18, ctba, -92.1, 386.6 , 0 );
setEffMoveKey( spep_2-4 + 20, ctba, -84.8, 382 , 0 );
setEffMoveKey( spep_2-4 + 22, ctba, -93, 387.1 , 0 );
setEffMoveKey( spep_2-4 + 24, ctba, -84.9, 382 , 0 );
setEffMoveKey( spep_2-4 + 26, ctba, -91.3, 386.6 , 0 );
setEffMoveKey( spep_2-4 + 28, ctba, -84.9, 382.1 , 0 );
setEffMoveKey( spep_2-4 + 30, ctba, -91.2, 386.7 , 0 );
setEffMoveKey( spep_2-4 + 32, ctba, -84.9, 382.1 , 0 );
setEffMoveKey( spep_2-4 + 34, ctba, -91.2, 386.6 , 0 );
setEffMoveKey( spep_2-4 + 36, ctba, -84.9, 382 , 0 );
setEffMoveKey( spep_2-4 + 38, ctba, -91.3, 386.6 , 0 );
setEffMoveKey( spep_2-4 + 40, ctba, -91.3, 386.6 , 0 );

setEffScaleKey( spep_2-4 + 16, ctba, 1.21, 1.21 );
setEffScaleKey( spep_2-4 + 18, ctba, 1.8, 1.8 );
setEffScaleKey( spep_2-4 + 20, ctba, 2.38, 2.38 );
setEffScaleKey( spep_2-4 + 22, ctba, 2.01, 2.01 );
setEffScaleKey( spep_2-4 + 24, ctba, 1.63, 1.63 );
setEffScaleKey( spep_2-4 + 26, ctba, 1.63, 1.63 );
setEffScaleKey( spep_2-4 + 28, ctba, 1.62, 1.62 );
setEffScaleKey( spep_2-4 + 34, ctba, 1.62, 1.62 );
setEffScaleKey( spep_2-4 + 36, ctba, 1.63, 1.63 );
setEffScaleKey( spep_2-4 + 40, ctba, 1.63, 1.63 );

setEffRotateKey( spep_2-4 + 16, ctba, -5.8 );
setEffRotateKey( spep_2-4 + 18, ctba, -9.5 );
setEffRotateKey( spep_2-4 + 20, ctba, -13.2 );
setEffRotateKey( spep_2-4 + 22, ctba, -9.5 );
setEffRotateKey( spep_2-4 + 24, ctba, -5.8 );
setEffRotateKey( spep_2-4 + 40, ctba, -5.8 );

setEffAlphaKey( spep_2-4 + 16, ctba, 0 );
setEffAlphaKey( spep_2-4 + 17, ctba, 255 );
setEffAlphaKey( spep_2-4 + 18, ctba, 255 );
setEffAlphaKey( spep_2-4 + 30, ctba, 255 );
setEffAlphaKey( spep_2-4 + 32, ctba, 204 );
setEffAlphaKey( spep_2-4 + 34, ctba, 153 );
setEffAlphaKey( spep_2-4 + 36, ctba, 102 );
setEffAlphaKey( spep_2-4 + 38, ctba, 51 );
setEffAlphaKey( spep_2-4 + 40, ctba, 0 );



ctzuo = entryEffectLife( spep_2-2 + 96,  10012, 34, 0x100, -1, 0, 9.7, 282.4 );  --ズオッ

setEffShake(  spep_2-2+96,  ctzuo,  34,  20);  --揺れ
setEffMoveKey( spep_2-2 + 96, ctzuo, 9.7, 282.4 , 0 );
setEffMoveKey( spep_2-2 + 98, ctzuo, 33, 331.8 , 0 );
setEffMoveKey( spep_2-2 + 100, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-2 + 130, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 132, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 134, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 136, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 138, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 140, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 142, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 144, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 146, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 148, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 150, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 152, ctzuo, 54.3, 398.2 , 0 );
--setEffMoveKey( spep_2-2 + 154, ctzuo, 100, 375.3 , 0 );
--setEffMoveKey( spep_2-2 + 156, ctzuo, 89.6, 408.2 , 0 );
--setEffMoveKey( spep_2-2 + 158, ctzuo, 107.3, 413.1 , 0 );

setEffScaleKey( spep_2-2 + 96, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-2 + 98, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2-2 + 100, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-2 + 122, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-2 + 124, ctzuo, 3.75, 3.75 );
setEffScaleKey( spep_2-2 + 126, ctzuo, 4.78, 4.78 );
setEffScaleKey( spep_2-2 + 128, ctzuo, 5.8, 5.8 );
setEffScaleKey( spep_2-2 + 130, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2-2 + 96, ctzuo, 9.6 );
setEffRotateKey( spep_2-2 + 98, ctzuo, 18.3 );
setEffRotateKey( spep_2-2 + 100, ctzuo, 27.2 );
setEffRotateKey( spep_2-2 + 130, ctzuo, 27.2 );

setEffAlphaKey( spep_2-2 + 96, ctzuo, 255 );
setEffAlphaKey( spep_2-2 + 122, ctzuo, 255 );
setEffAlphaKey( spep_2-2 + 124, ctzuo, 191 );
setEffAlphaKey( spep_2-2 + 126, ctzuo, 128 );
setEffAlphaKey( spep_2-2 + 128, ctzuo, 64 );
setEffAlphaKey( spep_2-2 + 130, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_2 + 14, 1013 );  --バッ
playSe( spep_2 + 90, SE_06 );  --ズオッ




--白フェード
entryFade( spep_2 + 13, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_2 + 92, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade


entryFade( spep_2 + 164, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

spep_3 = spep_2 + 168;

------------------------------------------------------
-- 着弾シーン(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_3 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_3 + 100, tyakudan_f, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_3 + 100, tyakudan_f, 255 );


-- ** エフェクト等 ** --
tyakudan_b = entryEffectLife( spep_3 + 0, SP_04, 100, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan_b, 1.2, 1.2 );
setEffScaleKey( spep_3 + 100, tyakudan_b, 1.2, 1.2 );
setEffRotateKey( spep_3 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_3 + 100, tyakudan_b, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_3 + 100, tyakudan_b, 255 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 36, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );


setMoveKey( spep_3-3 + 0, 1, -13.9, -81.7 , 0 );
setMoveKey( spep_3-3 + 2, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 44.4, 18.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3-3 + 14, 1, 69.9, 70.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3-3 + 18, 1, 86.8, 89.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 100.5, 117.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, 111.6, 135.1 , 0 );


setScaleKey( spep_3-3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3-3 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3-3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 20, 1, 1.59, 1.59 );
setScaleKey( spep_3-3 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 24, 1, 1.43, 1.43 );


setRotateKey( spep_3-3 + 0, 1, -2 );
setRotateKey( spep_3-3 + 2, 1, -2.1 );
setRotateKey( spep_3-3 + 4, 1, -2.3 );
setRotateKey( spep_3-3 + 6, 1, -2.4 );
setRotateKey( spep_3-3 + 8, 1, -2.5 );
setRotateKey( spep_3-3 + 10, 1, -2.6 );
setRotateKey( spep_3-3 + 12, 1, -2.8 );
setRotateKey( spep_3-3 + 14, 1, -2.9 );
setRotateKey( spep_3-3 + 16, 1, -3 );
setRotateKey( spep_3-3 + 18, 1, -3.2 );
setRotateKey( spep_3-3 + 20, 1, -3.3 );
setRotateKey( spep_3-3 + 22, 1, -3.4 );
setRotateKey( spep_3-3 + 24, 1, -3.5 );


--白フェード
entryFade( spep_3 + 27, 0,2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade

-- ** 音 ** --
playSe( spep_3, SE_07 );  --ズオッ

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,111.6, 135.1 , 0 );
    setScaleKey(SP_dodge , 1,  1.51, 1.51 );
    setRotateKey(SP_dodge,   1, -3.5 );
    
        --キャラクターの固定
    setMoveKey(SP_dodge+10, 1,111.6, 135.1 , 0 );
    setScaleKey(SP_dodge+10 , 1,  1.51, 1.51 );
    setRotateKey(SP_dodge+10,   1, -3.5 );
    
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
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


--敵の動き

changeAnime( spep_3-3 + 30, 1, 108 );
setMoveKey( spep_3-3 + 26, 1, 110.8, 140.7 , 0 );
setMoveKey( spep_3-3 + 29, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 161.4, 202.5 , 0 );
setMoveKey( spep_3-3 + 32, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, 117.7, 177.9 , 0 );
--setMoveKey( spep_3-3 + 36, 1, 145, 211 , 0 );
--setMoveKey( spep_3-3 + 38, 1, 142.8, 213 , 0 );
--setMoveKey( spep_3-3 + 40, 1, 146.1, 215.8 , 0 );
--setMoveKey( spep_3-3 + 42, 1, 137.5, 206.7 , 0 );
--setMoveKey( spep_3-3 + 44, 1, 144.8, 213.6 , 0 );
--setMoveKey( spep_3-3 + 46, 1, 140.1, 208.5 , 0 );
--setMoveKey( spep_3-3 + 48, 1, 143.5, 211.3 , 0 );
--setMoveKey( spep_3-3 + 50, 1, 134.8, 202.2 , 0 );
--setMoveKey( spep_3-3 + 52, 1, 142.2, 209 , 0 );
--setMoveKey( spep_3-3 + 54, 1, 137.5, 203.8 , 0 );
--setMoveKey( spep_3-3 + 56, 1, 140.9, 206.6 , 0 );
--setMoveKey( spep_3-3 + 58, 1, 132.3, 197.5 , 0 );
--setMoveKey( spep_3-3 + 60, 1, 139.7, 204.3 , 0 );
--setMoveKey( spep_3-3 + 62, 1, 135.1, 199.1 , 0 );
--setMoveKey( spep_3-3 + 64, 1, 138.5, 201.9 , 0 );
--setMoveKey( spep_3-3 + 66, 1, 130, 192.6 , 0 );
--setMoveKey( spep_3-3 + 68, 1, 137.4, 199.4 , 0 );
--setMoveKey( spep_3-3 + 70, 1, 132.8, 194.2 , 0 );
--setMoveKey( spep_3-3 + 72, 1, 136.3, 196.9 , 0 );
--setMoveKey( spep_3-3 + 74, 1, 127.7, 187.7 , 0 );
--setMoveKey( spep_3-3 + 76, 1, 135.2, 194.4 , 0 );
--setMoveKey( spep_3-3 + 78, 1, 130.7, 189.2 , 0 );
--setMoveKey( spep_3-3 + 80, 1, 130.2, 187.9 , 0 );
--setMoveKey( spep_3-3 + 82, 1, 125.7, 174.6 , 0 );
--setMoveKey( spep_3-3 + 84, 1, 129.2, 185.3 , 0 );
--setMoveKey( spep_3-3 + 86, 1, 120.7, 180 , 0 );
--setMoveKey( spep_3-3 + 88, 1, 128.2, 182.7 , 0 );
--setMoveKey( spep_3-3 + 90, 1, 127.7, 181.4 , 0 );
--setMoveKey( spep_3-3 + 92, 1, 123.3, 168.1 , 0 );
--setMoveKey( spep_3-3 + 94, 1, 126.8, 178.8 , 0 );
--setMoveKey( spep_3-3 + 96, 1, 118.4, 173.4 , 0 );
--setMoveKey( spep_3-3 + 98, 1, 126, 176.1 , 0 );

setScaleKey( spep_3-3 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 29, 1, 1.26, 1.26 );
setScaleKey( spep_3-3 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 34, 1, 0.81, 0.81 );
--setScaleKey( spep_3-3 + 36, 1, 0.54, 0.54 );
--setScaleKey( spep_3-3 + 38, 1, 0.29, 0.29 );
--setScaleKey( spep_3-3 + 40, 1, 0.28, 0.28 );
--setScaleKey( spep_3-3 + 48, 1, 0.28, 0.28 );
--setScaleKey( spep_3-3 + 50, 1, 0.27, 0.27 );
--setScaleKey( spep_3-3 + 56, 1, 0.27, 0.27 );
--setScaleKey( spep_3-3 + 58, 1, 0.26, 0.26 );
--setScaleKey( spep_3-3 + 66, 1, 0.26, 0.26 );
--setScaleKey( spep_3-3 + 68, 1, 0.25, 0.25 );
--setScaleKey( spep_3-3 + 74, 1, 0.25, 0.25 );
--setScaleKey( spep_3-3 + 76, 1, 0.24, 0.24 );
--setScaleKey( spep_3-3 + 84, 1, 0.24, 0.24 );
--setScaleKey( spep_3-3 + 86, 1, 0.23, 0.23 );
--setScaleKey( spep_3-3 + 92, 1, 0.23, 0.23 );
--setScaleKey( spep_3-3 + 94, 1, 0.22, 0.22 );
--setScaleKey( spep_3-3 + 98, 1, 0.22, 0.22 );

setRotateKey( spep_3-3 + 26, 1, -3.7 );
setRotateKey( spep_3-3 + 29, 1, -3.8 );
setRotateKey( spep_3-3 + 30, 1, 21 );
setRotateKey( spep_3-3 + 32, 1, 18.5 );
setRotateKey( spep_3-3 + 34, 1, 16.1 );
--setRotateKey( spep_3-3 + 36, 1, 13.8 );
--setRotateKey( spep_3-3 + 38, 1, 11.6 );
--setRotateKey( spep_3-3 + 40, 1, 11.4 );
--setRotateKey( spep_3-3 + 42, 1, 11.3 );
--setRotateKey( spep_3-3 + 44, 1, 11.1 );
--setRotateKey( spep_3-3 + 46, 1, 10.9 );
--setRotateKey( spep_3-3 + 48, 1, 10.8 );
--setRotateKey( spep_3-3 + 50, 1, 10.6 );
--setRotateKey( spep_3-3 + 52, 1, 10.4 );
--setRotateKey( spep_3-3 + 54, 1, 10.3 );
--setRotateKey( spep_3-3 + 56, 1, 10.1 );
--setRotateKey( spep_3-3 + 58, 1, 9.9 );
--setRotateKey( spep_3-3 + 60, 1, 9.8 );
--setRotateKey( spep_3-3 + 62, 1, 9.6 );
--setRotateKey( spep_3-3 + 64, 1, 9.4 );
--setRotateKey( spep_3-3 + 66, 1, 9.3 );
--setRotateKey( spep_3-3 + 68, 1, 9.1 );
--setRotateKey( spep_3-3 + 70, 1, 8.9 );
--setRotateKey( spep_3-3 + 72, 1, 8.8 );
--setRotateKey( spep_3-3 + 74, 1, 8.6 );
--setRotateKey( spep_3-3 + 76, 1, 8.4 );
--setRotateKey( spep_3-3 + 78, 1, 8.3 );
--setRotateKey( spep_3-3 + 80, 1, 8.1 );
--setRotateKey( spep_3-3 + 82, 1, 7.9 );
--setRotateKey( spep_3-3 + 84, 1, 7.8 );
--setRotateKey( spep_3-3 + 86, 1, 7.6 );
--setRotateKey( spep_3-3 + 88, 1, 7.4 );
--setRotateKey( spep_3-3 + 90, 1, 7.3 );
--setRotateKey( spep_3-3 + 92, 1, 7.1 );
--setRotateKey( spep_3-3 + 94, 1, 6.9 );
--setRotateKey( spep_3-3 + 96, 1, 6.8 );
--setRotateKey( spep_3-3 + 98, 1, 6.6 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_3-4 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );

setEffShake( spep_3-4 + 30, ctzuo2, 20, 20 );

setEffMoveKey( spep_3-4 + 30, ctzuo2, -17.7, 313 , 0 );
setEffMoveKey( spep_3-4 + 32, ctzuo2, -35.7, 356 , 0 );
setEffMoveKey( spep_3-4 + 34, ctzuo2, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3-4 + 36, ctzuo2, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3-4 + 38, ctzuo2, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3-4 + 40, ctzuo2, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3-4 + 42, ctzuo2, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 44, ctzuo2, -87, 406.6 , 0 );
setEffMoveKey( spep_3-4 + 46, ctzuo2, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3-4 + 48, ctzuo2, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3-4 + 50, ctzuo2, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3-4 + 30, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_3-4 + 32, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_3-4 + 34, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 44, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 46, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_3-4 + 48, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_3-4 + 50, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_3-4 + 30, ctzuo2, 6.9 );
setEffRotateKey( spep_3-4 + 32, ctzuo2, -3.4 );
setEffRotateKey( spep_3-4 + 34, ctzuo2, -13.5 );
setEffRotateKey( spep_3-4 + 36, ctzuo2, -13.8 );
setEffRotateKey( spep_3-4 + 38, ctzuo2, -14.1 );
setEffRotateKey( spep_3-4 + 40, ctzuo2, -14.4 );
setEffRotateKey( spep_3-4 + 42, ctzuo2, -14.7 );
setEffRotateKey( spep_3-4 + 44, ctzuo2, -15 );
setEffRotateKey( spep_3-4 + 46, ctzuo2, -11.8 );
setEffRotateKey( spep_3-4 + 48, ctzuo2, -8.5 );
setEffRotateKey( spep_3-4 + 50, ctzuo2, -5.2 );

setEffAlphaKey( spep_3-4 + 30, ctzuo2, 0 );
setEffAlphaKey( spep_3-4 + 31, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 32, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 44, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 46, ctzuo2, 170 );
setEffAlphaKey( spep_3-4 + 48, ctzuo2, 85 );
setEffAlphaKey( spep_3-4 + 50, ctzuo2, 0 );

--白フェード
entryFade( spep_3 + 92, 4,12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_4 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 120, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 120, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 0,  1657, 100, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 0 );
setEffAlphaKey( spep_4 + 12, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 13, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 0,  10005, 100, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 0, ctga, 28, 20 );

setEffMoveKey( spep_4 + 0, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 0, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 0, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 0, ctga, 0 );
setEffAlphaKey( spep_4 + 12, ctga, 0 );
setEffAlphaKey( spep_4 + 13, ctga, 0 );
setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

--敵
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 最初のシーン(148F)
------------------------------------------------------
spep_0=0;

--エフェクトの再生
rush = entryEffectLife( spep_0 + 0, SP_01x, 150, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 68, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, rush, 1.2, 1.2 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 150, rush, 255 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 150, rush, 0 );
--[[
--エフェクトの再生
bg2 = entryEffectLife( spep_0 + 0, SP_06x, 150, 0x80, -1, 0, 0, 0 );

setEffShake( spep_0 + 50, bg2, 100, 5 );

setEffMoveKey( spep_0 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, bg2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, bg2, 1.1, 1.1 );
setEffScaleKey( spep_0 + 70, bg2, 1.1, 1.1 );
setEffScaleKey( spep_0 + 150, bg2, 1.5, 1.5 );
setEffAlphaKey( spep_0 + 0, bg2, 255 );
setEffAlphaKey( spep_0 + 150, bg2, 255 );
setEffRotateKey( spep_0 + 0, bg2, 0 );
setEffRotateKey( spep_0 + 150, bg2, 0 );
]]
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 20,  906, 128, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20, shuchusen1, 88, 25 );

setEffMoveKey( spep_0 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 20, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 + 22,  10013, 40, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffShake( spep_0 + 22, ctzuzun, 40, 10 );

setEffMoveKey( spep_0 + 22, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 + 22, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 24, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 26, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 28, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 62, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 22, ctzuzun, 0 );
setEffRotateKey( spep_0 + 62, ctzuzun, 0 );

setEffAlphaKey( spep_0 + 22, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 212 );
setEffAlphaKey( spep_0 + 44, ctzuzun, 172 );
setEffAlphaKey( spep_0 + 46, ctzuzun, 136 );
setEffAlphaKey( spep_0 + 48, ctzuzun, 104 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 77 );
setEffAlphaKey( spep_0 + 52, ctzuzun, 53 );
setEffAlphaKey( spep_0 + 54, ctzuzun, 34 );
setEffAlphaKey( spep_0 + 56, ctzuzun, 19 );
setEffAlphaKey( spep_0 + 58, ctzuzun, 9 );
setEffAlphaKey( spep_0 + 60, ctzuzun, 2 );
setEffAlphaKey( spep_0 + 62, ctzuzun, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+8 + 52, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+8 + 52, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_0+8 + 68,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+8 + 68, ctgogo, 68, 10 );

setEffMoveKey( spep_0+8 + 68, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0+8 + 136, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0+8 + 68, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0+8 + 128, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0+8 + 130, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0+8 + 132, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0+8 + 134, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0+8 + 136, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0+8 + 68, ctgogo, 0 );
setEffRotateKey( spep_0+8 + 136, ctgogo, 0 );

setEffAlphaKey( spep_0+8 + 68, ctgogo, 255 );
setEffAlphaKey( spep_0+8 + 136, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 24, SE_02 );  --ため
playSe( spep_0 + 44, SE_02 );  --ため
playSe( spep_0 + 68, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 150, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff2 = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff2 = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff2 = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え
end

--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射シーン(178F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_2 + 0, SP_02x, 168, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 168, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 168, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 168, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 168, hassha, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 14, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 14, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.18, 1.18 );
setEffScaleKey( spep_2 + 14, shuchusen3, 1.18, 1.18 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 14, shuchusen3, 255 );

--文字エントリー
ctba = entryEffectLife( spep_2-4 + 16,  10022, 24, 0x100, -1, 0, -84.8, 382 );  --バッ

setEffMoveKey( spep_2-4 + 16, ctba, -84.8, 382 , 0 );
setEffMoveKey( spep_2-4 + 18, ctba, -92.1, 386.6 , 0 );
setEffMoveKey( spep_2-4 + 20, ctba, -84.8, 382 , 0 );
setEffMoveKey( spep_2-4 + 22, ctba, -93, 387.1 , 0 );
setEffMoveKey( spep_2-4 + 24, ctba, -84.9, 382 , 0 );
setEffMoveKey( spep_2-4 + 26, ctba, -91.3, 386.6 , 0 );
setEffMoveKey( spep_2-4 + 28, ctba, -84.9, 382.1 , 0 );
setEffMoveKey( spep_2-4 + 30, ctba, -91.2, 386.7 , 0 );
setEffMoveKey( spep_2-4 + 32, ctba, -84.9, 382.1 , 0 );
setEffMoveKey( spep_2-4 + 34, ctba, -91.2, 386.6 , 0 );
setEffMoveKey( spep_2-4 + 36, ctba, -84.9, 382 , 0 );
setEffMoveKey( spep_2-4 + 38, ctba, -91.3, 386.6 , 0 );
setEffMoveKey( spep_2-4 + 40, ctba, -91.3, 386.6 , 0 );

setEffScaleKey( spep_2-4 + 16, ctba, 1.21, 1.21 );
setEffScaleKey( spep_2-4 + 18, ctba, 1.8, 1.8 );
setEffScaleKey( spep_2-4 + 20, ctba, 2.38, 2.38 );
setEffScaleKey( spep_2-4 + 22, ctba, 2.01, 2.01 );
setEffScaleKey( spep_2-4 + 24, ctba, 1.63, 1.63 );
setEffScaleKey( spep_2-4 + 26, ctba, 1.63, 1.63 );
setEffScaleKey( spep_2-4 + 28, ctba, 1.62, 1.62 );
setEffScaleKey( spep_2-4 + 34, ctba, 1.62, 1.62 );
setEffScaleKey( spep_2-4 + 36, ctba, 1.63, 1.63 );
setEffScaleKey( spep_2-4 + 40, ctba, 1.63, 1.63 );

setEffRotateKey( spep_2-4 + 16, ctba, -5.8 );
setEffRotateKey( spep_2-4 + 18, ctba, -9.5 );
setEffRotateKey( spep_2-4 + 20, ctba, -13.2 );
setEffRotateKey( spep_2-4 + 22, ctba, -9.5 );
setEffRotateKey( spep_2-4 + 24, ctba, -5.8 );
setEffRotateKey( spep_2-4 + 40, ctba, -5.8 );

setEffAlphaKey( spep_2-4 + 16, ctba, 0 );
setEffAlphaKey( spep_2-4 + 17, ctba, 255 );
setEffAlphaKey( spep_2-4 + 18, ctba, 255 );
setEffAlphaKey( spep_2-4 + 30, ctba, 255 );
setEffAlphaKey( spep_2-4 + 32, ctba, 204 );
setEffAlphaKey( spep_2-4 + 34, ctba, 153 );
setEffAlphaKey( spep_2-4 + 36, ctba, 102 );
setEffAlphaKey( spep_2-4 + 38, ctba, 51 );
setEffAlphaKey( spep_2-4 + 40, ctba, 0 );



ctzuo = entryEffectLife( spep_2-2 + 96,  10012, 34, 0x100, -1, 0, 9.7, 282.4 );  --ズオッ

setEffShake(  spep_2-2+96,  ctzuo,  34,  20);  --揺れ
setEffMoveKey( spep_2-2 + 96, ctzuo, 9.7, 282.4 , 0 );
setEffMoveKey( spep_2-2 + 98, ctzuo, 33, 331.8 , 0 );
setEffMoveKey( spep_2-2 + 100, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-2 + 130, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 132, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 134, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 136, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 138, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 140, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 142, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 144, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 146, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 148, ctzuo, 36.6, 393.3 , 0 );
--setEffMoveKey( spep_2-2 + 150, ctzuo, 52.6, 377.3 , 0 );
--setEffMoveKey( spep_2-2 + 152, ctzuo, 54.3, 398.2 , 0 );
--setEffMoveKey( spep_2-2 + 154, ctzuo, 100, 375.3 , 0 );
--setEffMoveKey( spep_2-2 + 156, ctzuo, 89.6, 408.2 , 0 );
--setEffMoveKey( spep_2-2 + 158, ctzuo, 107.3, 413.1 , 0 );

setEffScaleKey( spep_2-2 + 96, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-2 + 98, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2-2 + 100, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-2 + 122, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-2 + 124, ctzuo, 3.75, 3.75 );
setEffScaleKey( spep_2-2 + 126, ctzuo, 4.78, 4.78 );
setEffScaleKey( spep_2-2 + 128, ctzuo, 5.8, 5.8 );
setEffScaleKey( spep_2-2 + 130, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2-2 + 96, ctzuo, 9.6 );
setEffRotateKey( spep_2-2 + 98, ctzuo, 18.3 );
setEffRotateKey( spep_2-2 + 100, ctzuo, 27.2 );
setEffRotateKey( spep_2-2 + 130, ctzuo, 27.2 );

setEffAlphaKey( spep_2-2 + 96, ctzuo, 255 );
setEffAlphaKey( spep_2-2 + 122, ctzuo, 255 );
setEffAlphaKey( spep_2-2 + 124, ctzuo, 191 );
setEffAlphaKey( spep_2-2 + 126, ctzuo, 128 );
setEffAlphaKey( spep_2-2 + 128, ctzuo, 64 );
setEffAlphaKey( spep_2-2 + 130, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_2 + 14, 1013 );  --バッ
playSe( spep_2 + 90, SE_06 );  --ズオッ




--白フェード
entryFade( spep_2 + 13, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_2 + 92, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade


entryFade( spep_2 + 164, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

spep_3 = spep_2 + 168;

------------------------------------------------------
-- 着弾シーン(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_3 + 0, SP_03x, 100, 0x100, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_3 + 100, tyakudan_f, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_3 + 100, tyakudan_f, 255 );


-- ** エフェクト等 ** --
tyakudan_b = entryEffectLife( spep_3 + 0, SP_04x, 100, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan_b, 1.2, 1.2 );
setEffScaleKey( spep_3 + 100, tyakudan_b, 1.2, 1.2 );
setEffRotateKey( spep_3 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_3 + 100, tyakudan_b, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_3 + 100, tyakudan_b, 255 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 36, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );


setMoveKey( spep_3-3 + 0, 1, -13.9, -81.7 , 0 );
setMoveKey( spep_3-3 + 2, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 44.4, 18.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3-3 + 14, 1, 69.9, 70.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3-3 + 18, 1, 86.8, 89.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 100.5, 117.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, 111.6, 135.1 , 0 );


setScaleKey( spep_3-3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3-3 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3-3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 20, 1, 1.59, 1.59 );
setScaleKey( spep_3-3 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 24, 1, 1.43, 1.43 );


setRotateKey( spep_3-3 + 0, 1, -2 );
setRotateKey( spep_3-3 + 2, 1, -2.1 );
setRotateKey( spep_3-3 + 4, 1, -2.3 );
setRotateKey( spep_3-3 + 6, 1, -2.4 );
setRotateKey( spep_3-3 + 8, 1, -2.5 );
setRotateKey( spep_3-3 + 10, 1, -2.6 );
setRotateKey( spep_3-3 + 12, 1, -2.8 );
setRotateKey( spep_3-3 + 14, 1, -2.9 );
setRotateKey( spep_3-3 + 16, 1, -3 );
setRotateKey( spep_3-3 + 18, 1, -3.2 );
setRotateKey( spep_3-3 + 20, 1, -3.3 );
setRotateKey( spep_3-3 + 22, 1, -3.4 );
setRotateKey( spep_3-3 + 24, 1, -3.5 );


--白フェード
entryFade( spep_3 + 27, 0,2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade

-- ** 音 ** --
playSe( spep_3, SE_07 );  --ズオッ

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,111.6, 135.1 , 0 );
    setScaleKey(SP_dodge , 1,  1.51, 1.51 );
    setRotateKey(SP_dodge,   1, -3.5 );
    
        --キャラクターの固定
    setMoveKey(SP_dodge+10, 1,111.6, 135.1 , 0 );
    setScaleKey(SP_dodge+10 , 1,  1.51, 1.51 );
    setRotateKey(SP_dodge+10,   1, -3.5 );
    
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
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


--敵の動き

changeAnime( spep_3-3 + 30, 1, 108 );
setMoveKey( spep_3-3 + 26, 1, 110.8, 140.7 , 0 );
setMoveKey( spep_3-3 + 29, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 161.4, 202.5 , 0 );
setMoveKey( spep_3-3 + 32, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, 117.7, 177.9 , 0 );
--setMoveKey( spep_3-3 + 36, 1, 145, 211 , 0 );
--setMoveKey( spep_3-3 + 38, 1, 142.8, 213 , 0 );
--setMoveKey( spep_3-3 + 40, 1, 146.1, 215.8 , 0 );
--setMoveKey( spep_3-3 + 42, 1, 137.5, 206.7 , 0 );
--setMoveKey( spep_3-3 + 44, 1, 144.8, 213.6 , 0 );
--setMoveKey( spep_3-3 + 46, 1, 140.1, 208.5 , 0 );
--setMoveKey( spep_3-3 + 48, 1, 143.5, 211.3 , 0 );
--setMoveKey( spep_3-3 + 50, 1, 134.8, 202.2 , 0 );
--setMoveKey( spep_3-3 + 52, 1, 142.2, 209 , 0 );
--setMoveKey( spep_3-3 + 54, 1, 137.5, 203.8 , 0 );
--setMoveKey( spep_3-3 + 56, 1, 140.9, 206.6 , 0 );
--setMoveKey( spep_3-3 + 58, 1, 132.3, 197.5 , 0 );
--setMoveKey( spep_3-3 + 60, 1, 139.7, 204.3 , 0 );
--setMoveKey( spep_3-3 + 62, 1, 135.1, 199.1 , 0 );
--setMoveKey( spep_3-3 + 64, 1, 138.5, 201.9 , 0 );
--setMoveKey( spep_3-3 + 66, 1, 130, 192.6 , 0 );
--setMoveKey( spep_3-3 + 68, 1, 137.4, 199.4 , 0 );
--setMoveKey( spep_3-3 + 70, 1, 132.8, 194.2 , 0 );
--setMoveKey( spep_3-3 + 72, 1, 136.3, 196.9 , 0 );
--setMoveKey( spep_3-3 + 74, 1, 127.7, 187.7 , 0 );
--setMoveKey( spep_3-3 + 76, 1, 135.2, 194.4 , 0 );
--setMoveKey( spep_3-3 + 78, 1, 130.7, 189.2 , 0 );
--setMoveKey( spep_3-3 + 80, 1, 130.2, 187.9 , 0 );
--setMoveKey( spep_3-3 + 82, 1, 125.7, 174.6 , 0 );
--setMoveKey( spep_3-3 + 84, 1, 129.2, 185.3 , 0 );
--setMoveKey( spep_3-3 + 86, 1, 120.7, 180 , 0 );
--setMoveKey( spep_3-3 + 88, 1, 128.2, 182.7 , 0 );
--setMoveKey( spep_3-3 + 90, 1, 127.7, 181.4 , 0 );
--setMoveKey( spep_3-3 + 92, 1, 123.3, 168.1 , 0 );
--setMoveKey( spep_3-3 + 94, 1, 126.8, 178.8 , 0 );
--setMoveKey( spep_3-3 + 96, 1, 118.4, 173.4 , 0 );
--setMoveKey( spep_3-3 + 98, 1, 126, 176.1 , 0 );

setScaleKey( spep_3-3 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 29, 1, 1.26, 1.26 );
setScaleKey( spep_3-3 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 34, 1, 0.81, 0.81 );
--setScaleKey( spep_3-3 + 36, 1, 0.54, 0.54 );
--setScaleKey( spep_3-3 + 38, 1, 0.29, 0.29 );
--setScaleKey( spep_3-3 + 40, 1, 0.28, 0.28 );
--setScaleKey( spep_3-3 + 48, 1, 0.28, 0.28 );
--setScaleKey( spep_3-3 + 50, 1, 0.27, 0.27 );
--setScaleKey( spep_3-3 + 56, 1, 0.27, 0.27 );
--setScaleKey( spep_3-3 + 58, 1, 0.26, 0.26 );
--setScaleKey( spep_3-3 + 66, 1, 0.26, 0.26 );
--setScaleKey( spep_3-3 + 68, 1, 0.25, 0.25 );
--setScaleKey( spep_3-3 + 74, 1, 0.25, 0.25 );
--setScaleKey( spep_3-3 + 76, 1, 0.24, 0.24 );
--setScaleKey( spep_3-3 + 84, 1, 0.24, 0.24 );
--setScaleKey( spep_3-3 + 86, 1, 0.23, 0.23 );
--setScaleKey( spep_3-3 + 92, 1, 0.23, 0.23 );
--setScaleKey( spep_3-3 + 94, 1, 0.22, 0.22 );
--setScaleKey( spep_3-3 + 98, 1, 0.22, 0.22 );

setRotateKey( spep_3-3 + 26, 1, -3.7 );
setRotateKey( spep_3-3 + 29, 1, -3.8 );
setRotateKey( spep_3-3 + 30, 1, 21 );
setRotateKey( spep_3-3 + 32, 1, 18.5 );
setRotateKey( spep_3-3 + 34, 1, 16.1 );
--setRotateKey( spep_3-3 + 36, 1, 13.8 );
--setRotateKey( spep_3-3 + 38, 1, 11.6 );
--setRotateKey( spep_3-3 + 40, 1, 11.4 );
--setRotateKey( spep_3-3 + 42, 1, 11.3 );
--setRotateKey( spep_3-3 + 44, 1, 11.1 );
--setRotateKey( spep_3-3 + 46, 1, 10.9 );
--setRotateKey( spep_3-3 + 48, 1, 10.8 );
--setRotateKey( spep_3-3 + 50, 1, 10.6 );
--setRotateKey( spep_3-3 + 52, 1, 10.4 );
--setRotateKey( spep_3-3 + 54, 1, 10.3 );
--setRotateKey( spep_3-3 + 56, 1, 10.1 );
--setRotateKey( spep_3-3 + 58, 1, 9.9 );
--setRotateKey( spep_3-3 + 60, 1, 9.8 );
--setRotateKey( spep_3-3 + 62, 1, 9.6 );
--setRotateKey( spep_3-3 + 64, 1, 9.4 );
--setRotateKey( spep_3-3 + 66, 1, 9.3 );
--setRotateKey( spep_3-3 + 68, 1, 9.1 );
--setRotateKey( spep_3-3 + 70, 1, 8.9 );
--setRotateKey( spep_3-3 + 72, 1, 8.8 );
--setRotateKey( spep_3-3 + 74, 1, 8.6 );
--setRotateKey( spep_3-3 + 76, 1, 8.4 );
--setRotateKey( spep_3-3 + 78, 1, 8.3 );
--setRotateKey( spep_3-3 + 80, 1, 8.1 );
--setRotateKey( spep_3-3 + 82, 1, 7.9 );
--setRotateKey( spep_3-3 + 84, 1, 7.8 );
--setRotateKey( spep_3-3 + 86, 1, 7.6 );
--setRotateKey( spep_3-3 + 88, 1, 7.4 );
--setRotateKey( spep_3-3 + 90, 1, 7.3 );
--setRotateKey( spep_3-3 + 92, 1, 7.1 );
--setRotateKey( spep_3-3 + 94, 1, 6.9 );
--setRotateKey( spep_3-3 + 96, 1, 6.8 );
--setRotateKey( spep_3-3 + 98, 1, 6.6 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_3-4 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );

setEffShake( spep_3-4 + 30, ctzuo2, 20, 20 );

setEffMoveKey( spep_3-4 + 30, ctzuo2, -17.7, 313 , 0 );
setEffMoveKey( spep_3-4 + 32, ctzuo2, -35.7, 356 , 0 );
setEffMoveKey( spep_3-4 + 34, ctzuo2, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3-4 + 36, ctzuo2, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3-4 + 38, ctzuo2, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3-4 + 40, ctzuo2, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3-4 + 42, ctzuo2, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 44, ctzuo2, -87, 406.6 , 0 );
setEffMoveKey( spep_3-4 + 46, ctzuo2, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3-4 + 48, ctzuo2, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3-4 + 50, ctzuo2, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3-4 + 30, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_3-4 + 32, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_3-4 + 34, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 44, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 46, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_3-4 + 48, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_3-4 + 50, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_3-4 + 30, ctzuo2, 6.9 );
setEffRotateKey( spep_3-4 + 32, ctzuo2, -3.4 );
setEffRotateKey( spep_3-4 + 34, ctzuo2, -13.5 );
setEffRotateKey( spep_3-4 + 36, ctzuo2, -13.8 );
setEffRotateKey( spep_3-4 + 38, ctzuo2, -14.1 );
setEffRotateKey( spep_3-4 + 40, ctzuo2, -14.4 );
setEffRotateKey( spep_3-4 + 42, ctzuo2, -14.7 );
setEffRotateKey( spep_3-4 + 44, ctzuo2, -15 );
setEffRotateKey( spep_3-4 + 46, ctzuo2, -11.8 );
setEffRotateKey( spep_3-4 + 48, ctzuo2, -8.5 );
setEffRotateKey( spep_3-4 + 50, ctzuo2, -5.2 );

setEffAlphaKey( spep_3-4 + 30, ctzuo2, 0 );
setEffAlphaKey( spep_3-4 + 31, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 32, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 44, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 46, ctzuo2, 170 );
setEffAlphaKey( spep_3-4 + 48, ctzuo2, 85 );
setEffAlphaKey( spep_3-4 + 50, ctzuo2, 0 );

--白フェード
entryFade( spep_3 + 92, 4,12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;


------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_4 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 120, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 120, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 0,  1657, 100, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 0 );
setEffAlphaKey( spep_4 + 12, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 13, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 0,  10005, 100, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 0, ctga, 28, 20 );

setEffMoveKey( spep_4 + 0, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 0, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 0, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 0, ctga, 0 );
setEffAlphaKey( spep_4 + 12, ctga, 0 );
setEffAlphaKey( spep_4 + 13, ctga, 0 );
setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

--敵
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

end
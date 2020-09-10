--sp1191 1014740 人造人間16号_ヘルズフラッシュ

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
SP_01=151894;--	突進
SP_02=151895;--	格闘前面
SP_03=151896;--	格闘後面
SP_04=151897;--	発射
SP_05=151898;--	火柱

--敵側
SP_01x=151899;--	敵用：突進
SP_02x=151900;--	敵用：格闘前面
SP_03x=151901;--	敵用：格闘後面
SP_04x=151902;--	敵用：発射
SP_05x=151898;--	火柱

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進(70F)
------------------------------------------------------
spep_0=0;

tosshin00=entryEffectLife(spep_0,SP_01,68,0x100,-1,0,0,0);   -- 突進(70F)※次シーン白フェイド薄いので、1f手前で終了
setEffMoveKey( spep_0,  tosshin00,  0,  0);
setEffScaleKey(spep_0,tosshin00,1.0,1.0);
setEffAlphaKey(spep_0,tosshin00,255);
setEffRotateKey(spep_0,tosshin00,0);
setEffMoveKey( spep_0 + 68,  tosshin00,  0,  0);
setEffScaleKey(spep_0 + 68,tosshin00,1.0,1.0);
setEffAlphaKey(spep_0 + 68,tosshin00,255);
setEffRotateKey(spep_0 + 68,tosshin00,0);

--集中線--
shuchusen_0 = entryEffectLife( spep_0, 906, 68, 0x100,  -1, 0,  0,  0);   -- ※次シーン白フェイド薄いので、1f手前で終了
setEffMoveKey( spep_0,  shuchusen_0,  0,  0);
setEffScaleKey( spep_0,  shuchusen_0,  1.0,  1.0);
setEffRotateKey( spep_0,  shuchusen_0,  0);
setEffAlphaKey( spep_0,  shuchusen_0,  255);
setEffMoveKey( spep_0 + 68,  shuchusen_0,  0,  0);
setEffScaleKey( spep_0 + 68,  shuchusen_0,  1.0,  1.0);
setEffRotateKey( spep_0 + 68,  shuchusen_0,  0);
setEffAlphaKey( spep_0 + 68,  shuchusen_0,  255);

entryFade(spep_0,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+64,4,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 67, 0, 0, 0, 0, 200);  -- 黒　背景 ※次シーン白フェイド薄いので、1f手前で終了

--SE--
playSe( spep_0 + 0, 9);  --ダッシュ

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+55 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

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

--次の準備
spep_1=spep_0+68;

------------------------------------------------------
-- 格闘(404F)
------------------------------------------------------

kakuto01a=entryEffectLife(spep_1,SP_02,402,0x100,-1,0,0,0);   -- 格闘前面(404F)
setEffMoveKey( spep_1,  kakuto01a,  0,  0);
setEffScaleKey(spep_1,kakuto01a,1.0,1.0);
setEffAlphaKey(spep_1,kakuto01a,255);
setEffRotateKey(spep_1,kakuto01a,0);
setEffMoveKey( spep_1 + 402,  kakuto01a,  0,  0);
setEffScaleKey(spep_1 + 402,kakuto01a,1.0,1.0);
setEffAlphaKey(spep_1 + 402,kakuto01a,255);
setEffRotateKey(spep_1 + 402,kakuto01a,0);

kakuto01b=entryEffectLife(spep_1,SP_03,402,0x80,-1,0,0,0);   -- 格闘後面(404F)
setEffMoveKey( spep_1,  kakuto01b,  0,  0);
setEffScaleKey(spep_1,kakuto01b,1.0,1.0);
setEffAlphaKey(spep_1,kakuto01b,255);
setEffRotateKey(spep_1,kakuto01b,0);
setEffMoveKey( spep_1 + 402,  kakuto01b,  0,  0);
setEffScaleKey(spep_1 + 402,kakuto01b,1.0,1.0);
setEffAlphaKey(spep_1 + 402,kakuto01b,255);
setEffRotateKey(spep_1 + 402,kakuto01b,0);

--集中線--
shuchusen_1 = entryEffectLife( spep_1 + 0,  906, 402, 0x80, -1, 0, 344.5, 0 );
setEffMoveKey( spep_1 + 0, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 18, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 20, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 22, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 24, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 26, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 28, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 30, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 32, shuchusen_1, 0 , 0 );
setEffMoveKey( spep_1 + 34, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 36, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 38, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 40, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 42, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 44, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 46, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 48, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 50, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 52, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 54, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 56, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 58, shuchusen_1, 0, 12 , 0 );
setEffMoveKey( spep_1 + 60, shuchusen_1, 0, 16 , 0 );
setEffMoveKey( spep_1 + 62, shuchusen_1, 0, 20 , 0 );
setEffMoveKey( spep_1 + 64, shuchusen_1, 0, 24 , 0 );
setEffMoveKey( spep_1 + 66, shuchusen_1, 0, 28 , 0 );
setEffMoveKey( spep_1 + 68, shuchusen_1, 0, 32 , 0 );
setEffMoveKey( spep_1 + 70, shuchusen_1, 0, 36 , 0 );
setEffMoveKey( spep_1 + 72, shuchusen_1, 0, 40 , 0 );
setEffMoveKey( spep_1 + 74, shuchusen_1, 0, 44 , 0 );
setEffMoveKey( spep_1 + 76, shuchusen_1, 0, 48 , 0 );
setEffMoveKey( spep_1 + 78, shuchusen_1, 0, 52 , 0 );
setEffMoveKey( spep_1 + 80, shuchusen_1, 0, 56 , 0 );
setEffMoveKey( spep_1 + 82, shuchusen_1, 0, 60 , 0 );
setEffMoveKey( spep_1 + 84, shuchusen_1, 0, 64 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen_1, 0, 68 , 0 );
setEffMoveKey( spep_1 + 88, shuchusen_1, 0, 72 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen_1, 0, 76 , 0 );
setEffMoveKey( spep_1 + 92, shuchusen_1, 0, 80 , 0 );
setEffMoveKey( spep_1 + 94, shuchusen_1, 0, 84 , 0 );
setEffMoveKey( spep_1 + 96, shuchusen_1, 0, 88 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen_1, 0, 92 , 0 );
setEffMoveKey( spep_1 + 100, shuchusen_1, 0, 96 , 0 );
setEffMoveKey( spep_1 + 102, shuchusen_1, 0, 100 , 0 );
setEffMoveKey( spep_1 + 104, shuchusen_1, 0, 104 , 0 );
setEffMoveKey( spep_1 + 106, shuchusen_1, 0, 108 , 0 );
setEffMoveKey( spep_1 + 108, shuchusen_1, 0, 112 , 0 );
setEffMoveKey( spep_1 + 110, shuchusen_1, 0, 116 , 0 );
setEffMoveKey( spep_1 + 112, shuchusen_1, 0, 120 , 0 );
setEffMoveKey( spep_1 + 114, shuchusen_1, 0, 124 , 0 );
setEffMoveKey( spep_1 + 116, shuchusen_1, 0, 128 , 0 );
setEffMoveKey( spep_1 + 118, shuchusen_1, 0, 132 , 0 );
setEffMoveKey( spep_1 + 120, shuchusen_1, 0, 136 , 0 );
setEffMoveKey( spep_1 + 122, shuchusen_1, 0, 140 , 0 );
setEffMoveKey( spep_1 + 124, shuchusen_1, 0, 144 , 0 );
setEffMoveKey( spep_1 + 126, shuchusen_1, 0, 148 , 0 );
setEffMoveKey( spep_1 + 128, shuchusen_1, 0, 152 , 0 );
setEffMoveKey( spep_1 + 130, shuchusen_1, 0, 156 , 0 );
setEffMoveKey( spep_1 + 132, shuchusen_1, 0, 160 , 0 );
setEffMoveKey( spep_1 + 134, shuchusen_1, 0, 146.8 , 0 );
setEffMoveKey( spep_1 + 136, shuchusen_1, 0, 133.6 , 0 );
setEffMoveKey( spep_1 + 138, shuchusen_1, 0, 120.5 , 0 );
setEffMoveKey( spep_1 + 140, shuchusen_1, 0, 107.3 , 0 );
setEffMoveKey( spep_1 + 142, shuchusen_1, 0, 94.1 , 0 );
setEffMoveKey( spep_1 + 144, shuchusen_1, 0, 80.9 , 0 );
setEffMoveKey( spep_1 + 146, shuchusen_1, 0, 67.8 , 0 );
setEffMoveKey( spep_1 + 148, shuchusen_1, 0, 54.6 , 0 );
setEffMoveKey( spep_1 + 150, shuchusen_1, 0, 41.4 , 0 );
setEffMoveKey( spep_1 + 152, shuchusen_1, 0, 28.2 , 0 );
setEffMoveKey( spep_1 + 154, shuchusen_1, 0, 15.1 , 0 );
setEffMoveKey( spep_1 + 156, shuchusen_1, 0, 1.9 , 0 );
setEffMoveKey( spep_1 + 158, shuchusen_1, 0, -11.3 , 0 );
setEffMoveKey( spep_1 + 160, shuchusen_1, 0, -24.5 , 0 );
setEffMoveKey( spep_1 + 162, shuchusen_1, 0, -37.6 , 0 );
setEffMoveKey( spep_1 + 164, shuchusen_1, 0, -50.8 , 0 );
setEffMoveKey( spep_1 + 166, shuchusen_1, 0, -64 , 0 );
setEffMoveKey( spep_1 + 168, shuchusen_1, 0, -508.2 , 0 );
setEffMoveKey( spep_1 + 170, shuchusen_1, 0, -471.3 , 0 );
setEffMoveKey( spep_1 + 172, shuchusen_1, 0, -434.4 , 0 );
setEffMoveKey( spep_1 + 174, shuchusen_1, 0, -397.6 , 0 );
setEffMoveKey( spep_1 + 176, shuchusen_1, 0, -360.7 , 0 );
setEffMoveKey( spep_1 + 178, shuchusen_1, 0, -323.8 , 0 );
setEffMoveKey( spep_1 + 180, shuchusen_1, 0, -287 , 0 );
setEffMoveKey( spep_1 + 182, shuchusen_1, 0, -250.1 , 0 );
setEffMoveKey( spep_1 + 184, shuchusen_1, 0, -213.2 , 0 );
setEffMoveKey( spep_1 + 186, shuchusen_1, 0, -176.4 , 0 );
setEffMoveKey( spep_1 + 188, shuchusen_1, 0, -139.5 , 0 );
setEffMoveKey( spep_1 + 190, shuchusen_1, 0, -102.6 , 0 );
setEffMoveKey( spep_1 + 192, shuchusen_1, 0, -65.7 , 0 );
setEffMoveKey( spep_1 + 194, shuchusen_1, 0, -28.9 , 0 );
setEffMoveKey( spep_1 + 196, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 198, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 200, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 202, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 204, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 206, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 208, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 210, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 212, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 214, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 216, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 218, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 220, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 402, shuchusen_1, 0, 8 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen_1, 1.78, 2.29 );
setEffScaleKey( spep_1 + 18, shuchusen_1, 1.78, 2.29 );
setEffScaleKey( spep_1 + 20, shuchusen_1, 1.35, 1.37 );
setEffScaleKey( spep_1 + 22, shuchusen_1, 1.36, 1.38 );
setEffScaleKey( spep_1 + 24, shuchusen_1, 1.38, 1.4 );
setEffScaleKey( spep_1 + 26, shuchusen_1, 1.39, 1.41 );
setEffScaleKey( spep_1 + 28, shuchusen_1, 1.41, 1.43 );
setEffScaleKey( spep_1 + 30, shuchusen_1, 1.42, 1.44 );
setEffScaleKey( spep_1 + 32, shuchusen_1, 1.44, 1.46 );
setEffScaleKey( spep_1 + 34, shuchusen_1, 1.45, 1.47 );
setEffScaleKey( spep_1 + 36, shuchusen_1, 1.47, 1.49 );
setEffScaleKey( spep_1 + 38, shuchusen_1, 1.48, 1.5 );
setEffScaleKey( spep_1 + 40, shuchusen_1, 1.49, 1.51 );
setEffScaleKey( spep_1 + 42, shuchusen_1, 1.51, 1.53 );
setEffScaleKey( spep_1 + 44, shuchusen_1, 1.52, 1.54 );
setEffScaleKey( spep_1 + 46, shuchusen_1, 1.54, 1.56 );
setEffScaleKey( spep_1 + 48, shuchusen_1, 1.55, 1.57 );
setEffScaleKey( spep_1 + 50, shuchusen_1, 1.57, 1.59 );
setEffScaleKey( spep_1 + 52, shuchusen_1, 1.58, 1.6 );
setEffScaleKey( spep_1 + 54, shuchusen_1, 1.6, 1.62 );
setEffScaleKey( spep_1 + 56, shuchusen_1, 1.61, 1.63 );
setEffScaleKey( spep_1 + 58, shuchusen_1, 1.6, 1.62 );
setEffScaleKey( spep_1 + 60, shuchusen_1, 1.6, 1.62 );
setEffScaleKey( spep_1 + 62, shuchusen_1, 1.59, 1.61 );
setEffScaleKey( spep_1 + 64, shuchusen_1, 1.58, 1.6 );
setEffScaleKey( spep_1 + 66, shuchusen_1, 1.58, 1.6 );
setEffScaleKey( spep_1 + 68, shuchusen_1, 1.57, 1.59 );
setEffScaleKey( spep_1 + 70, shuchusen_1, 1.56, 1.58 );
setEffScaleKey( spep_1 + 72, shuchusen_1, 1.56, 1.58 );
setEffScaleKey( spep_1 + 74, shuchusen_1, 1.55, 1.57 );
setEffScaleKey( spep_1 + 76, shuchusen_1, 1.54, 1.56 );
setEffScaleKey( spep_1 + 78, shuchusen_1, 1.53, 1.55 );
setEffScaleKey( spep_1 + 80, shuchusen_1, 1.53, 1.55 );
setEffScaleKey( spep_1 + 82, shuchusen_1, 1.52, 1.54 );
setEffScaleKey( spep_1 + 84, shuchusen_1, 1.51, 1.53 );
setEffScaleKey( spep_1 + 86, shuchusen_1, 1.51, 1.53 );
setEffScaleKey( spep_1 + 88, shuchusen_1, 1.5, 1.52 );
setEffScaleKey( spep_1 + 90, shuchusen_1, 1.49, 1.51 );
setEffScaleKey( spep_1 + 92, shuchusen_1, 1.49, 1.51 );
setEffScaleKey( spep_1 + 94, shuchusen_1, 1.48, 1.5 );
setEffScaleKey( spep_1 + 96, shuchusen_1, 1.47, 1.49 );
setEffScaleKey( spep_1 + 98, shuchusen_1, 1.47, 1.49 );
setEffScaleKey( spep_1 + 100, shuchusen_1, 1.46, 1.48 );
setEffScaleKey( spep_1 + 102, shuchusen_1, 1.45, 1.47 );
setEffScaleKey( spep_1 + 104, shuchusen_1, 1.45, 1.47 );
setEffScaleKey( spep_1 + 106, shuchusen_1, 1.44, 1.46 );
setEffScaleKey( spep_1 + 108, shuchusen_1, 1.43, 1.45 );
setEffScaleKey( spep_1 + 110, shuchusen_1, 1.43, 1.45 );
setEffScaleKey( spep_1 + 112, shuchusen_1, 1.42, 1.44 );
setEffScaleKey( spep_1 + 114, shuchusen_1, 1.41, 1.43 );
setEffScaleKey( spep_1 + 116, shuchusen_1, 1.4, 1.42 );
setEffScaleKey( spep_1 + 118, shuchusen_1, 1.4, 1.42 );
setEffScaleKey( spep_1 + 120, shuchusen_1, 1.39, 1.41 );
setEffScaleKey( spep_1 + 122, shuchusen_1, 1.38, 1.4 );
setEffScaleKey( spep_1 + 124, shuchusen_1, 1.38, 1.4 );
setEffScaleKey( spep_1 + 126, shuchusen_1, 1.37, 1.39 );
setEffScaleKey( spep_1 + 128, shuchusen_1, 1.36, 1.38 );
setEffScaleKey( spep_1 + 130, shuchusen_1, 1.36, 1.38 );
setEffScaleKey( spep_1 + 132, shuchusen_1, 1.35, 1.37 );
setEffScaleKey( spep_1 + 166, shuchusen_1, 1.35, 1.37 );
setEffScaleKey( spep_1 + 168, shuchusen_1, 1.4, 2.25 );
setEffScaleKey( spep_1 + 170, shuchusen_1, 1.4, 2.19 );
setEffScaleKey( spep_1 + 172, shuchusen_1, 1.4, 2.13 );
setEffScaleKey( spep_1 + 174, shuchusen_1, 1.4, 2.07 );
setEffScaleKey( spep_1 + 176, shuchusen_1, 1.4, 2.01 );
setEffScaleKey( spep_1 + 178, shuchusen_1, 1.4, 1.95 );
setEffScaleKey( spep_1 + 180, shuchusen_1, 1.4, 1.89 );
setEffScaleKey( spep_1 + 182, shuchusen_1, 1.4, 1.84 );
setEffScaleKey( spep_1 + 184, shuchusen_1, 1.4, 1.78 );
setEffScaleKey( spep_1 + 186, shuchusen_1, 1.4, 1.72 );
setEffScaleKey( spep_1 + 188, shuchusen_1, 1.4, 1.66 );
setEffScaleKey( spep_1 + 190, shuchusen_1, 1.4, 1.6 );
setEffScaleKey( spep_1 + 192, shuchusen_1, 1.4, 1.54 );
setEffScaleKey( spep_1 + 194, shuchusen_1, 1.4, 1.48 );
setEffScaleKey( spep_1 + 196, shuchusen_1, 1.4, 1.42 );
setEffScaleKey( spep_1 + 198, shuchusen_1, 1.43, 1.45 );
setEffScaleKey( spep_1 + 200, shuchusen_1, 1.46, 1.48 );
setEffScaleKey( spep_1 + 202, shuchusen_1, 1.49, 1.51 );
setEffScaleKey( spep_1 + 204, shuchusen_1, 1.52, 1.54 );
setEffScaleKey( spep_1 + 206, shuchusen_1, 1.55, 1.57 );
setEffScaleKey( spep_1 + 208, shuchusen_1, 1.58, 1.6 );
setEffScaleKey( spep_1 + 210, shuchusen_1, 1.6, 1.62 );
setEffScaleKey( spep_1 + 212, shuchusen_1, 1.63, 1.65 );
setEffScaleKey( spep_1 + 214, shuchusen_1, 1.66, 1.68 );
setEffScaleKey( spep_1 + 216, shuchusen_1, 1.69, 1.71 );
setEffScaleKey( spep_1 + 218, shuchusen_1, 1.72, 1.74 );
setEffScaleKey( spep_1 + 220, shuchusen_1, 1.75, 1.77 );
setEffScaleKey( spep_1 + 402, shuchusen_1, 1.75, 1.77 );
setEffRotateKey( spep_1 + 0, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 402, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 402, shuchusen_1, 255 );

setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 264, 1, 0 );
setDisp( spep_1 + 402, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 + 18, 1, 108 );
changeAnime( spep_1 + 40, 1, 106 );
changeAnime( spep_1 + 52, 1, 108 );
changeAnime( spep_1 + 86, 1, 106 );
setMoveKey( spep_1 + 0, 1, 128.3, -103.1 , 0 );
setMoveKey( spep_1 + 2, 1, 125.9, -103.3 , 0 );
setMoveKey( spep_1 + 4, 1, 127.4, -107 , 0 );
setMoveKey( spep_1 + 6, 1, 127.8, -109.1 , 0 );
setMoveKey( spep_1 + 8, 1, 129.7, -112.3 , 0 );
setMoveKey( spep_1 + 10, 1, 135.4, -118.9 , 0 );
setMoveKey( spep_1 + 12, 1, 140.2, -124 , 0 );
setMoveKey( spep_1 + 14, 1, 146.3, -130 , 0 );
setMoveKey( spep_1 + 16, 1, 172.2, -171.3 , 0 );
setMoveKey( spep_1 + 18, 1, 174.4, -161.4 , 0 );
setMoveKey( spep_1 + 20, 1, 186.1, -170.1 , 0 );
setMoveKey( spep_1 + 22, 1, 181.6, -162.4 , 0 );
setMoveKey( spep_1 + 24, 1, 193.1, -169.1 , 0 );
setMoveKey( spep_1 + 26, 1, 188.6, -168.7 , 0 );
setMoveKey( spep_1 + 28, 1, 196.7, -163.7 , 0 );
setMoveKey( spep_1 + 30, 1, 197.1, -170.4 , 0 );
setMoveKey( spep_1 + 32, 1, 200.7, -159 , 0 );
setMoveKey( spep_1 + 34, 1, 201.8, -158.9 , 0 );
setMoveKey( spep_1 + 36, 1, 202.5, -158.8 , 0 );
setMoveKey( spep_1 + 38, 1, 202, -158.4 , 0 );
setMoveKey( spep_1 + 40, 1, 186.9, -14.7 , 0 );
setMoveKey( spep_1 + 42, 1, 245.4, 33.3 , 0 );
setMoveKey( spep_1 + 44, 1, 254.2, 58.9 , 0 );
setMoveKey( spep_1 + 46, 1, 225.3, 65.8 , 0 );
setMoveKey( spep_1 + 48, 1, 185.9, 62.6 , 0 );
setMoveKey( spep_1 + 50, 1, 151.4, 53.6 , 0 );
setMoveKey( spep_1 + 52, 1, 195.7, 33.8 , 0 );
setMoveKey( spep_1 + 54, 1, 205.1, 29.3 , 0 );
setMoveKey( spep_1 + 56, 1, 197.2, 24.1 , 0 );
setMoveKey( spep_1 + 58, 1, 202.2, 32.1 , 0 );
setMoveKey( spep_1 + 60, 1, 196.8, 22 , 0 );
setMoveKey( spep_1 + 62, 1, 195, 29.4 , 0 );
setMoveKey( spep_1 + 64, 1, 205.6, 30.9 , 0 );
setMoveKey( spep_1 + 66, 1, 204.7, 30.6 , 0 );
setMoveKey( spep_1 + 68, 1, 235.7, 62.6 , 0 );
setMoveKey( spep_1 + 70, 1, 262.7, 85 , 0 );
setMoveKey( spep_1 + 72, 1, 271.8, 104.2 , 0 );
setMoveKey( spep_1 + 74, 1, 263.7, 115.8 , 0 );
setMoveKey( spep_1 + 76, 1, 239.9, 120.9 , 0 );
setMoveKey( spep_1 + 78, 1, 202.5, 119.4 , 0 );
setMoveKey( spep_1 + 80, 1, 169.7, 116.3 , 0 );
setMoveKey( spep_1 + 82, 1, 145.4, 112.8 , 0 );
setMoveKey( spep_1 + 84, 1, 129.5, 109.5 , 0 );
setMoveKey( spep_1 + 86, 1, 142, 131.8 , 0 );
setMoveKey( spep_1 + 88, 1, 152.1, 147.9 , 0 );
setMoveKey( spep_1 + 90, 1, 159, 139.1 , 0 );
setMoveKey( spep_1 + 92, 1, 164.2, 150.2 , 0 );
setMoveKey( spep_1 + 94, 1, 160.5, 148.1 , 0 );
setMoveKey( spep_1 + 96, 1, 168.9, 154.2 , 0 );
setMoveKey( spep_1 + 98, 1, 161, 155.9 , 0 );
setMoveKey( spep_1 + 100, 1, 162.8, 155.9 , 0 );
setMoveKey( spep_1 + 102, 1, 160.1, 155.9 , 0 );
setMoveKey( spep_1 + 104, 1, 182.8, 280.4 , 0 );
setMoveKey( spep_1 + 106, 1, 186.7, 319.6 , 0 );
setMoveKey( spep_1 + 108, 1, 179.6, 332 , 0 );
setMoveKey( spep_1 + 110, 1, 156.7, 316.5 , 0 );
setMoveKey( spep_1 + 112, 1, 118.5, 279.6 , 0 );
setMoveKey( spep_1 + 114, 1, 78.9, 235.4 , 0 );
setMoveKey( spep_1 + 116, 1, 45.8, 194.9 , 0 );
setMoveKey( spep_1 + 118, 1, 19.4, 159.9 , 0 );
setMoveKey( spep_1 + 120, 1, -2.6, 130.2 , 0 );
setMoveKey( spep_1 + 122, 1, -13.6, 113.1 , 0 );
setMoveKey( spep_1 + 124, 1, -18.9, 122.4 , 0 );
setMoveKey( spep_1 + 126, 1, -12.3, 152.7 , 0 );
setMoveKey( spep_1 + 128, 1, 1.1, 203.2 , 0 );
setMoveKey( spep_1 + 130, 1, 17.2, 258 , 0 );
setMoveKey( spep_1 + 132, 1, 28.7, 295.2 , 0 );
setMoveKey( spep_1 + 134, 1, 37.1, 322 , 0 );
setMoveKey( spep_1 + 136, 1, 25, 362.9 , 0 );
setMoveKey( spep_1 + 138, 1, 9.1, 390.8 , 0 );
setMoveKey( spep_1 + 140, 1, -3.8, 416.5 , 0 );
setMoveKey( spep_1 + 142, 1, -14.5, 436 , 0 );
setMoveKey( spep_1 + 144, 1, -24.6, 445.9 , 0 );
setMoveKey( spep_1 + 146, 1, -31.9, 452.9 , 0 );
setMoveKey( spep_1 + 148, 1, -37.1, 453.6 , 0 );
setMoveKey( spep_1 + 150, 1, -42.7, 445 , 0 );
setMoveKey( spep_1 + 152, 1, -44.2, 432.9 , 0 );
setMoveKey( spep_1 + 154, 1, -43.9, 414.3 , 0 );
setMoveKey( spep_1 + 156, 1, -43.8, 386.3 , 0 );
setMoveKey( spep_1 + 158, 1, -39.7, 354.7 , 0 );
setMoveKey( spep_1 + 160, 1, -35.5, 313.1 , 0 );
setMoveKey( spep_1 + 162, 1, -33.1, 317.8 , 0 );
setMoveKey( spep_1 + 163, 1, -3.7, -182.4 , 0 );
setMoveKey( spep_1 + 166, 1, 20.5, -372.1 , 0 );
setMoveKey( spep_1 + 168, 1, 23.8, -347.5 , 0 );
setMoveKey( spep_1 + 170, 1, 14.6, -314.5 , 0 );
setMoveKey( spep_1 + 172, 1, 17.8, -273.9 , 0 );
setMoveKey( spep_1 + 174, 1, 6.6, -247.9 , 0 );
setMoveKey( spep_1 + 176, 1, 14.7, -216 , 0 );
setMoveKey( spep_1 + 178, 1, 5.3, -222.4 , 0 );
setMoveKey( spep_1 + 180, 1, 16.1, -212.5 , 0 );
setMoveKey( spep_1 + 182, 1, 14, -220.5 , 0 );
setMoveKey( spep_1 + 184, 1, 5.3, -208.2 , 0 );
setMoveKey( spep_1 + 186, 1, 14.2, -216.4 , 0 );
setMoveKey( spep_1 + 188, 1, 13.1, -204 , 0 );
setMoveKey( spep_1 + 190, 1, 8.3, -206.5 , 0 );
setMoveKey( spep_1 + 192, 1, 8.3, -206.7 , 0 );
setMoveKey( spep_1 + 194, 1, 16.5, -214.1 , 0 );
setMoveKey( spep_1 + 196, 1, 26.7, -232.5 , 0 );
setMoveKey( spep_1 + 198, 1, 49.8, -260.8 , 0 );
setMoveKey( spep_1 + 200, 1, 75, -299.7 , 0 );
setMoveKey( spep_1 + 202, 1, 113, -346.8 , 0 );
setMoveKey( spep_1 + 204, 1, 153.1, -405.7 , 0 );
setMoveKey( spep_1 + 206, 1, 206.2, -474.3 , 0 );
setMoveKey( spep_1 + 208, 1, 260.9, -553.5 , 0 );
setMoveKey( spep_1 + 210, 1, 260.9, -553.6 , 0 );
setMoveKey( spep_1 + 212, 1, 260.7, -552.4 , 0 );
setMoveKey( spep_1 + 214, 1, 260.6, -553.1 , 0 );
setMoveKey( spep_1 + 216, 1, 260.3, -553.2 , 0 );
setMoveKey( spep_1 + 218, 1, 260.3, -553.9 , 0 );
setMoveKey( spep_1 + 220, 1, 260.1, -552.4 , 0 );
setMoveKey( spep_1 + 222, 1, 260, -553 , 0 );
setMoveKey( spep_1 + 224, 1, 260.1, -553.2 , 0 );
setMoveKey( spep_1 + 226, 1, 259.9, -553.7 , 0 );
setMoveKey( spep_1 + 228, 1, 259.9, -554.2 , 0 );
setMoveKey( spep_1 + 230, 1, 259.5, -553 , 0 );
setMoveKey( spep_1 + 232, 1, 259.4, -553.5 , 0 );
setMoveKey( spep_1 + 234, 1, 259.5, -554 , 0 );
setMoveKey( spep_1 + 236, 1, 237.4, -380.5 , 0 );
setMoveKey( spep_1 + 237, 1, 120.9, -240.6 , 0 );
setMoveKey( spep_1 + 240, 1, 118.8, -244.5 , 0 );
setMoveKey( spep_1 + 242, 1, 110, -251.2 , 0 );
setMoveKey( spep_1 + 244, 1, 94.4, -267.1 , 0 );
setMoveKey( spep_1 + 246, 1, 68, -285.1 , 0 );
setMoveKey( spep_1 + 248, 1, 37.9, -306.6 , 0 );
setMoveKey( spep_1 + 250, 1, 13.8, -320.9 , 0 );
setMoveKey( spep_1 + 252, 1, 14.4, -549.7 , 0 );
setMoveKey( spep_1 + 254, 1, -16.4, -724.4 , 0 );
setMoveKey( spep_1 + 256, 1, -10.5, -882.6 , 0 );
setMoveKey( spep_1 + 258, 1, -25.3, -881.9 , 0 );
setMoveKey( spep_1 + 260, 1, -8.1, -880 , 0 );
setMoveKey( spep_1 + 264, 1, -21.7, -888.8 , 0 );
setScaleKey( spep_1 + 0, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 2, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 4, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 8, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 10, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 12, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 14, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 16, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 18, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 22, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 24, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 26, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 30, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 36, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 38, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 40, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 42, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 44, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 46, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 48, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 50, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 52, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 58, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 60, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 62, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 64, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 66, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 68, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 70, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 74, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 76, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 78, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 80, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 82, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 86, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 88, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 90, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 104, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 106, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 108, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 110, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 112, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 114, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 116, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 118, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 120, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 122, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 124, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 126, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 128, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 130, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 132, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 134, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 136, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 138, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 142, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 144, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 148, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 150, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 154, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 156, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 158, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 160, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 162, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 164, 1, 2.57, 2.57 );
setScaleKey( spep_1 + 166, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 168, 1, 2.17, 2.17 );
setScaleKey( spep_1 + 170, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 172, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 174, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 176, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 178, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 180, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 182, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 184, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 186, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 188, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 190, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 192, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 194, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 196, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 198, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 200, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 202, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 204, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 206, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 208, 1, 2.82, 2.82 );
setScaleKey( spep_1 + 234, 1, 2.82, 2.82 );
setScaleKey( spep_1 + 236, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 237, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 240, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 242, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 244, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 246, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 248, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 250, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 252, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 254, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 256, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 258, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 260, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 264, 1, 1.74, 1.74 );
setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 38, 1, 0 );
setRotateKey( spep_1 + 40, 1, -40 );
setRotateKey( spep_1 + 42, 1, -39.1 );
setRotateKey( spep_1 + 44, 1, -38.3 );
setRotateKey( spep_1 + 46, 1, -37.8 );
setRotateKey( spep_1 + 48, 1, -37.6 );
setRotateKey( spep_1 + 50, 1, -37.4 );
setRotateKey( spep_1 + 52, 1, -9.9 );
setRotateKey( spep_1 + 54, 1, -9.5 );
setRotateKey( spep_1 + 56, 1, -9 );
setRotateKey( spep_1 + 58, 1, -8.8 );
setRotateKey( spep_1 + 60, 1, -8.6 );
setRotateKey( spep_1 + 62, 1, -8.5 );
setRotateKey( spep_1 + 64, 1, -8.3 );
setRotateKey( spep_1 + 66, 1, -8.4 );
setRotateKey( spep_1 + 68, 1, -5.3 );
setRotateKey( spep_1 + 70, 1, -2.5 );
setRotateKey( spep_1 + 72, 1, -0.3 );
setRotateKey( spep_1 + 74, 1, 1.6 );
setRotateKey( spep_1 + 76, 1, 3.3 );
setRotateKey( spep_1 + 78, 1, 4.5 );
setRotateKey( spep_1 + 80, 1, 5.5 );
setRotateKey( spep_1 + 82, 1, 6 );
setRotateKey( spep_1 + 84, 1, 6.2 );
setRotateKey( spep_1 + 86, 1, -25.4 );
setRotateKey( spep_1 + 88, 1, -25.3 );
setRotateKey( spep_1 + 90, 1, -25.1 );
setRotateKey( spep_1 + 92, 1, -25 );
setRotateKey( spep_1 + 94, 1, -24.8 );
setRotateKey( spep_1 + 100, 1, -24.8 );
setRotateKey( spep_1 + 102, 1, -24.7 );
setRotateKey( spep_1 + 104, 1, -24.7 );
setRotateKey( spep_1 + 106, 1, -23.1 );
setRotateKey( spep_1 + 108, 1, -21.8 );
setRotateKey( spep_1 + 110, 1, -20.6 );
setRotateKey( spep_1 + 112, 1, -19.6 );
setRotateKey( spep_1 + 114, 1, -18.8 );
setRotateKey( spep_1 + 116, 1, -18.3 );
setRotateKey( spep_1 + 118, 1, -18 );
setRotateKey( spep_1 + 120, 1, -18 );
setRotateKey( spep_1 + 122, 1, -15.3 );
setRotateKey( spep_1 + 124, 1, -7.3 );
setRotateKey( spep_1 + 126, 1, 5.5 );
setRotateKey( spep_1 + 128, 1, 24.1 );
setRotateKey( spep_1 + 130, 1, 42.6 );
setRotateKey( spep_1 + 132, 1, 55.7 );
setRotateKey( spep_1 + 134, 1, 63.7 );
setRotateKey( spep_1 + 136, 1, 66.2 );
setRotateKey( spep_1 + 138, 1, 66.4 );
setRotateKey( spep_1 + 140, 1, 66.7 );
setRotateKey( spep_1 + 142, 1, 67.2 );
setRotateKey( spep_1 + 144, 1, 67.9 );
setRotateKey( spep_1 + 146, 1, 68.7 );
setRotateKey( spep_1 + 148, 1, 69.7 );
setRotateKey( spep_1 + 150, 1, 71.2 );
setRotateKey( spep_1 + 152, 1, 72.5 );
setRotateKey( spep_1 + 154, 1, 74.2 );
setRotateKey( spep_1 + 156, 1, 76 );
setRotateKey( spep_1 + 158, 1, 78.2 );
setRotateKey( spep_1 + 160, 1, 80.4 );
setRotateKey( spep_1 + 162, 1, 82.7 );
setRotateKey( spep_1 + 164, 1, 124 );
setRotateKey( spep_1 + 166, 1, 130.3 );
setRotateKey( spep_1 + 168, 1, 130.4 );
setRotateKey( spep_1 + 170, 1, 130.6 );
setRotateKey( spep_1 + 172, 1, 130.6 );
setRotateKey( spep_1 + 174, 1, 130.8 );
setRotateKey( spep_1 + 176, 1, 130.9 );
setRotateKey( spep_1 + 178, 1, 130.9 );
setRotateKey( spep_1 + 180, 1, 131.1 );
setRotateKey( spep_1 + 182, 1, 131.1 );
setRotateKey( spep_1 + 184, 1, 131.3 );
setRotateKey( spep_1 + 186, 1, 131.4 );
setRotateKey( spep_1 + 188, 1, 131.6 );
setRotateKey( spep_1 + 190, 1, 131.6 );
setRotateKey( spep_1 + 192, 1, 131.8 );
setRotateKey( spep_1 + 194, 1, 131.9 );
setRotateKey( spep_1 + 196, 1, 131.9 );
setRotateKey( spep_1 + 198, 1, 132.1 );
setRotateKey( spep_1 + 200, 1, 132.1 );
setRotateKey( spep_1 + 202, 1, 132.4 );
setRotateKey( spep_1 + 204, 1, 132.4 );
setRotateKey( spep_1 + 206, 1, 132.6 );
setRotateKey( spep_1 + 208, 1, 132.6 );
setRotateKey( spep_1 + 210, 1, 132.8 );
setRotateKey( spep_1 + 212, 1, 132.9 );
setRotateKey( spep_1 + 214, 1, 132.9 );
setRotateKey( spep_1 + 216, 1, 133.1 );
setRotateKey( spep_1 + 218, 1, 133.1 );
setRotateKey( spep_1 + 220, 1, 133.4 );
setRotateKey( spep_1 + 222, 1, 133.4 );
setRotateKey( spep_1 + 224, 1, 133.6 );
setRotateKey( spep_1 + 226, 1, 133.6 );
setRotateKey( spep_1 + 228, 1, 133.8 );
setRotateKey( spep_1 + 230, 1, 133.9 );
setRotateKey( spep_1 + 232, 1, 133.9 );
setRotateKey( spep_1 + 234, 1, 134.1 );
setRotateKey( spep_1 + 236, 1, 134.2 );
setRotateKey( spep_1 + 264, 1, 134.2 );

-- 書き文字エントリー　バゴォ --
bago_01 = entryEffectLife( spep_1 + 15,  10021, 26, 0x100, -1, 0, 136.9, 67.4 );    -- バゴォ
setEffMoveKey( spep_1 + 15, bago_01, 136.9, 67.4 , 0 );
setEffMoveKey( spep_1 + 17, bago_01, 125.2, 96.8 , 0 );
setEffMoveKey( spep_1 + 19, bago_01, 127.8, 113.4 , 0 );
setEffMoveKey( spep_1 + 21, bago_01, 122.1, 109.4 , 0 );
setEffMoveKey( spep_1 + 23, bago_01, 132.5, 120.7 , 0 );
setEffMoveKey( spep_1 + 25, bago_01, 123.6, 116.4 , 0 );
setEffMoveKey( spep_1 + 27, bago_01, 133.3, 116.7 , 0 );
setEffMoveKey( spep_1 + 29, bago_01, 122.3, 123.1 , 0 );
setEffMoveKey( spep_1 + 31, bago_01, 132.5, 118.8 , 0 );
setEffMoveKey( spep_1 + 33, bago_01, 127.1, 129.4 , 0 );
setEffMoveKey( spep_1 + 35, bago_01, 127.8, 126.6 , 0 );
setEffMoveKey( spep_1 + 37, bago_01, 121.6, 122.6 , 0 );
setEffMoveKey( spep_1 + 39, bago_01, 132.9, 139.2 , 0 );
setEffMoveKey( spep_1 + 41, bago_01, 133.2, 149.7 , 0 );
setEffScaleKey( spep_1 + 15, bago_01, 1.3, 1.3 );
setEffScaleKey( spep_1 + 17, bago_01, 1.63, 1.63 );
setEffScaleKey( spep_1 + 19, bago_01, 1.74, 1.74 );
setEffScaleKey( spep_1 + 21, bago_01, 1.76, 1.76 );
setEffScaleKey( spep_1 + 23, bago_01, 1.77, 1.77 );
setEffScaleKey( spep_1 + 25, bago_01, 1.79, 1.79 );
setEffScaleKey( spep_1 + 27, bago_01, 1.81, 1.81 );
setEffScaleKey( spep_1 + 29, bago_01, 1.82, 1.82 );
setEffScaleKey( spep_1 + 31, bago_01, 1.84, 1.84 );
setEffScaleKey( spep_1 + 33, bago_01, 1.85, 1.85 );
setEffScaleKey( spep_1 + 35, bago_01, 1.87, 1.87 );
setEffScaleKey( spep_1 + 37, bago_01, 1.89, 1.89 );
setEffScaleKey( spep_1 + 39, bago_01, 1.95, 1.95 );
setEffScaleKey( spep_1 + 41, bago_01, 2.05, 2.05 );
setEffRotateKey( spep_1 + 15, bago_01, -0.5 );
setEffRotateKey( spep_1 + 17, bago_01, -3.4 );
setEffRotateKey( spep_1 + 19, bago_01, -4.4 );
setEffRotateKey( spep_1 + 41, bago_01, -4.4 );
setEffAlphaKey( spep_1 + 15, bago_01, 255 );
setEffAlphaKey( spep_1 + 35, bago_01, 255 );
setEffAlphaKey( spep_1 + 37, bago_01, 227 );
setEffAlphaKey( spep_1 + 39, bago_01, 142 );
setEffAlphaKey( spep_1 + 41, bago_01, 0 );

-- 書き文字エントリー　ガッ --
ga_01a = entryEffectLife( spep_1 + 51,  10005, 20, 0x100, -1, 0, 222.9, 223.8 );    -- ガッ
setEffMoveKey( spep_1 + 51, ga_01a, 222.9, 223.8 , 0 );
setEffMoveKey( spep_1 + 53, ga_01a, 218.3, 223.5 , 0 );
setEffMoveKey( spep_1 + 55, ga_01a, 223, 224 , 0 );
setEffMoveKey( spep_1 + 57, ga_01a, 218.6, 224.2 , 0 );
setEffMoveKey( spep_1 + 59, ga_01a, 227.2, 223.8 , 0 );
setEffMoveKey( spep_1 + 61, ga_01a, 220.4, 227.5 , 0 );
setEffMoveKey( spep_1 + 63, ga_01a, 229.3, 224.2 , 0 );
setEffMoveKey( spep_1 + 65, ga_01a, 221.6, 230 , 0 );
setEffMoveKey( spep_1 + 67, ga_01a, 225, 228.2 , 0 );
setEffMoveKey( spep_1 + 69, ga_01a, 222.4, 234 , 0 );
setEffMoveKey( spep_1 + 71, ga_01a, 224.8, 240.3 , 0 );
setEffScaleKey( spep_1 + 51, ga_01a, 1.3, 1.3 );
setEffScaleKey( spep_1 + 55, ga_01a, 1.3, 1.3 );
setEffScaleKey( spep_1 + 57, ga_01a, 1.32, 1.32 );
setEffScaleKey( spep_1 + 59, ga_01a, 1.33, 1.33 );
setEffScaleKey( spep_1 + 61, ga_01a, 1.35, 1.35 );
setEffScaleKey( spep_1 + 63, ga_01a, 1.37, 1.37 );
setEffScaleKey( spep_1 + 65, ga_01a, 1.38, 1.38 );
setEffScaleKey( spep_1 + 67, ga_01a, 1.4, 1.4 );
setEffScaleKey( spep_1 + 69, ga_01a, 1.55, 1.55 );
setEffScaleKey( spep_1 + 71, ga_01a, 1.7, 1.7 );
setEffRotateKey( spep_1 + 51, ga_01a, 3 );
setEffRotateKey( spep_1 + 71, ga_01a, 3 );
setEffAlphaKey( spep_1 + 51, ga_01a, 255 );
setEffAlphaKey( spep_1 + 67, ga_01a, 255 );
setEffAlphaKey( spep_1 + 69, ga_01a, 128 );
setEffAlphaKey( spep_1 + 71, ga_01a, 0 );

-- 書き文字エントリー　バキッ --
baki_01 = entryEffectLife( spep_1 + 85,  10020, 18, 0x100, -1, 0, 60.8, 296.5 );    -- バキッ
setEffMoveKey( spep_1 + 85, baki_01, 60.8, 296.5 , 0 );
setEffMoveKey( spep_1 + 87, baki_01, 56.3, 306.9 , 0 );
setEffMoveKey( spep_1 + 89, baki_01, 58, 307.1 , 0 );
setEffMoveKey( spep_1 + 91, baki_01, 53.8, 315.6 , 0 );
setEffMoveKey( spep_1 + 93, baki_01, 57, 311.1 , 0 );
setEffMoveKey( spep_1 + 95, baki_01, 49.2, 324.5 , 0 );
setEffMoveKey( spep_1 + 97, baki_01, 58.8, 324.5 , 0 );
setEffMoveKey( spep_1 + 99, baki_01, 53.4, 323.5 , 0 );
setEffMoveKey( spep_1 + 101, baki_01, 59.5, 332.9 , 0 );
setEffMoveKey( spep_1 + 103, baki_01, 62.5, 335 , 0 );
setEffScaleKey( spep_1 + 85, baki_01, 1.25, 1.25 );
setEffScaleKey( spep_1 + 87, baki_01, 1.33, 1.33 );
setEffScaleKey( spep_1 + 89, baki_01, 1.35, 1.35 );
setEffScaleKey( spep_1 + 91, baki_01, 1.4, 1.4 );
setEffScaleKey( spep_1 + 93, baki_01, 1.45, 1.45 );
setEffScaleKey( spep_1 + 95, baki_01, 1.48, 1.48 );
setEffScaleKey( spep_1 + 97, baki_01, 1.49, 1.49 );
setEffScaleKey( spep_1 + 99, baki_01, 1.5, 1.5 );
setEffScaleKey( spep_1 + 101, baki_01, 1.7, 1.7 );
setEffScaleKey( spep_1 + 103, baki_01, 1.76, 1.76 );
setEffRotateKey( spep_1 + 85, baki_01, 18 );
setEffRotateKey( spep_1 + 103, baki_01, 18 );
setEffAlphaKey( spep_1 + 85, baki_01, 255 );
setEffAlphaKey( spep_1 + 99, baki_01, 255 );
setEffAlphaKey( spep_1 + 101, baki_01, 64 );
setEffAlphaKey( spep_1 + 103, baki_01, 0 );

-- 書き文字エントリー　ガッ --
ga_01b = entryEffectLife( spep_1 + 119,  10005, 18, 0x100, -1, 0, 180.1, 79 );    -- ガッ
setEffMoveKey( spep_1 + 119, ga_01b, 180.1, 79 , 0 );
setEffMoveKey( spep_1 + 121, ga_01b, 194, 82.1 , 0 );
setEffMoveKey( spep_1 + 123, ga_01b, 205.5, 83.9 , 0 );
setEffMoveKey( spep_1 + 125, ga_01b, 197.4, 82.7 , 0 );
setEffMoveKey( spep_1 + 127, ga_01b, 203.7, 81 , 0 );
setEffMoveKey( spep_1 + 129, ga_01b, 193.2, 83.7 , 0 );
setEffMoveKey( spep_1 + 131, ga_01b, 199.2, 79.1 , 0 );
setEffMoveKey( spep_1 + 133, ga_01b, 191.3, 81.2 , 0 );
setEffMoveKey( spep_1 + 135, ga_01b, 210.6, 85.3 , 0 );
setEffMoveKey( spep_1 + 137, ga_01b, 218.7, 86.8 , 0 );
setEffScaleKey( spep_1 + 119, ga_01b, 1.25, 1.25 );
setEffScaleKey( spep_1 + 121, ga_01b, 1.44, 1.44 );
setEffScaleKey( spep_1 + 123, ga_01b, 1.5, 1.5 );
setEffScaleKey( spep_1 + 125, ga_01b, 1.47, 1.47 );
setEffScaleKey( spep_1 + 127, ga_01b, 1.44, 1.44 );
setEffScaleKey( spep_1 + 129, ga_01b, 1.42, 1.42 );
setEffScaleKey( spep_1 + 131, ga_01b, 1.39, 1.39 );
setEffScaleKey( spep_1 + 133, ga_01b, 1.36, 1.36 );
setEffScaleKey( spep_1 + 135, ga_01b, 1.61, 1.61 );
setEffScaleKey( spep_1 + 137, ga_01b, 1.69, 1.69 );
setEffRotateKey( spep_1 + 119, ga_01b, 3 );
setEffRotateKey( spep_1 + 137, ga_01b, 3 );
setEffAlphaKey( spep_1 + 119, ga_01b, 255 );
setEffAlphaKey( spep_1 + 133, ga_01b, 255 );
setEffAlphaKey( spep_1 + 135, ga_01b, 64 );
setEffAlphaKey( spep_1 + 137, ga_01b, 0 );

-- 書き文字エントリー　ドゴォン --
dogxon_01 = entryEffectLife( spep_1 + 165,  10018, 28, 0x100, -1, 0, 48, 92.8 );    -- ドゴォン
setEffMoveKey( spep_1 + 165, dogxon_01, 48, 92.8 , 0 );
setEffMoveKey( spep_1 + 167, dogxon_01, 49.1, 199.7 , 0 );
setEffMoveKey( spep_1 + 169, dogxon_01, 53.5, 241.7 , 0 );
setEffMoveKey( spep_1 + 171, dogxon_01, 50.2, 238.7 , 0 );
setEffMoveKey( spep_1 + 173, dogxon_01, 54, 250.2 , 0 );
setEffMoveKey( spep_1 + 175, dogxon_01, 55, 244.5 , 0 );
setEffMoveKey( spep_1 + 177, dogxon_01, 49.6, 250.1 , 0 );
setEffMoveKey( spep_1 + 179, dogxon_01, 58.2, 250.3 , 0 );
setEffMoveKey( spep_1 + 181, dogxon_01, 50.3, 248.5 , 0 );
setEffMoveKey( spep_1 + 183, dogxon_01, 53.8, 252.3 , 0 );
setEffMoveKey( spep_1 + 185, dogxon_01, 50.4, 247.2 , 0 );
setEffMoveKey( spep_1 + 187, dogxon_01, 53.8, 252.8 , 0 );
setEffMoveKey( spep_1 + 189, dogxon_01, 50.5, 252.7 , 0 );
setEffMoveKey( spep_1 + 191, dogxon_01, 54.9, 278.9 , 0 );
setEffMoveKey( spep_1 + 193, dogxon_01, 55.9, 306.3 , 0 );
setEffScaleKey( spep_1 + 165, dogxon_01, 2.16, 2.16 );
setEffScaleKey( spep_1 + 167, dogxon_01, 3.05, 3.05 );
setEffScaleKey( spep_1 + 169, dogxon_01, 3.35, 3.35 );
setEffScaleKey( spep_1 + 171, dogxon_01, 3.37, 3.37 );
setEffScaleKey( spep_1 + 173, dogxon_01, 3.39, 3.39 );
setEffScaleKey( spep_1 + 175, dogxon_01, 3.4, 3.4 );
setEffScaleKey( spep_1 + 177, dogxon_01, 3.41, 3.41 );
setEffScaleKey( spep_1 + 179, dogxon_01, 3.42, 3.42 );
setEffScaleKey( spep_1 + 181, dogxon_01, 3.43, 3.43 );
setEffScaleKey( spep_1 + 187, dogxon_01, 3.44, 3.44 );
setEffScaleKey( spep_1 + 188, dogxon_01, 3.44, 3.44 );
setEffScaleKey( spep_1 + 189, dogxon_01, 3.48, 3.48 );
setEffScaleKey( spep_1 + 191, dogxon_01, 3.61, 3.61 );
setEffScaleKey( spep_1 + 193, dogxon_01, 3.83, 3.83 );
setEffRotateKey( spep_1 + 165, dogxon_01, 0 );
setEffRotateKey( spep_1 + 193, dogxon_01, 0 );
setEffAlphaKey( spep_1 + 165, dogxon_01, 255 );
setEffAlphaKey( spep_1 + 187, dogxon_01, 255 );
setEffAlphaKey( spep_1 + 189, dogxon_01, 227 );
setEffAlphaKey( spep_1 + 191, dogxon_01, 142 );
setEffAlphaKey( spep_1 + 193, dogxon_01, 0 );

-- 書き文字エントリー　バッ --
ba_01 = entryEffectLife( spep_1 + 199,  10022, 22, 0x100, -1, 0, 121.9, 249.7 );    -- バッ
setEffMoveKey( spep_1 + 199, ba_01, 121.9, 249.7 , 0 );
setEffMoveKey( spep_1 + 201, ba_01, 149.9, 327.3 , 0 );
setEffMoveKey( spep_1 + 203, ba_01, 159.2, 353.1 , 0 );
setEffMoveKey( spep_1 + 205, ba_01, 159.4, 353.5 , 0 );
setEffMoveKey( spep_1 + 207, ba_01, 159.5, 353.9 , 0 );
setEffMoveKey( spep_1 + 209, ba_01, 159.7, 354.3 , 0 );
setEffMoveKey( spep_1 + 211, ba_01, 159.8, 354.7 , 0 );
setEffMoveKey( spep_1 + 213, ba_01, 160, 355.1 , 0 );
setEffMoveKey( spep_1 + 215, ba_01, 160.1, 355.4 , 0 );
setEffMoveKey( spep_1 + 217, ba_01, 161.5, 359.1 , 0 );
setEffMoveKey( spep_1 + 219, ba_01, 165.4, 370.1 , 0 );
setEffMoveKey( spep_1 + 221, ba_01, 172.1, 388.4 , 0 );
setEffScaleKey( spep_1 + 199, ba_01, 0.86, 0.86 );
setEffScaleKey( spep_1 + 201, ba_01, 1.19, 1.19 );
setEffScaleKey( spep_1 + 203, ba_01, 1.3, 1.3 );
setEffScaleKey( spep_1 + 207, ba_01, 1.3, 1.3 );
setEffScaleKey( spep_1 + 209, ba_01, 1.31, 1.31 );
setEffScaleKey( spep_1 + 215, ba_01, 1.31, 1.31 );
setEffScaleKey( spep_1 + 217, ba_01, 1.33, 1.33 );
setEffScaleKey( spep_1 + 219, ba_01, 1.37, 1.37 );
setEffScaleKey( spep_1 + 221, ba_01, 1.45, 1.45 );
setEffRotateKey( spep_1 + 199, ba_01, 22.2 );
setEffRotateKey( spep_1 + 221, ba_01, 22.2 );
setEffAlphaKey( spep_1 + 199, ba_01, 255 );
setEffAlphaKey( spep_1 + 215, ba_01, 255 );
setEffAlphaKey( spep_1 + 217, ba_01, 227 );
setEffAlphaKey( spep_1 + 219, ba_01, 142 );
setEffAlphaKey( spep_1 + 221, ba_01, 0 );

-- 書き文字エントリー　ズンッ --
zun_01 = entryEffectLife( spep_1 + 249,  10016, 10, 0x100, -1, 0, 53.5, -20.9 );    -- ズンッ
setEffMoveKey( spep_1 + 249, zun_01, 53.5, -20.9 , 0 );
setEffMoveKey( spep_1 + 251, zun_01, 50.9, 36.2 , 0 );
setEffMoveKey( spep_1 + 253, zun_01, 50, 55.3 , 0 );
setEffMoveKey( spep_1 + 255, zun_01, 49.9, 57 , 0 );
setEffMoveKey( spep_1 + 257, zun_01, 49.7, 58.7 , 0 );
setEffMoveKey( spep_1 + 259, zun_01, 49.5, 60.4 , 0 );
setEffScaleKey( spep_1 + 249, zun_01, 1.32, 1.32 );
setEffScaleKey( spep_1 + 251, zun_01, 1.63, 1.63 );
setEffScaleKey( spep_1 + 253, zun_01, 1.73, 1.73 );
setEffScaleKey( spep_1 + 255, zun_01, 1.75, 1.75 );
setEffScaleKey( spep_1 + 257, zun_01, 1.77, 1.77 );
setEffScaleKey( spep_1 + 259, zun_01, 1.79, 1.79 );
setEffRotateKey( spep_1 + 249, zun_01, 0 );
setEffRotateKey( spep_1 + 259, zun_01, 0 );
setEffAlphaKey( spep_1 + 249, zun_01, 255 );
setEffAlphaKey( spep_1 + 259, zun_01, 255 );
setEffAlphaKey( spep_1 + 261, zun_01, 170 );
setEffAlphaKey( spep_1 + 263, zun_01, 85 );
setEffAlphaKey( spep_1 + 265, zun_01, 0 );


-- 目線及び台詞カットイン --
--entryEffect(  spep_1+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_1+316,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+316,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー　ゴゴゴ --
ctgogogo_2 = entryEffectLife( spep_1+329, 190006,73, 0x100, -1, -20, 0, 510);    -- ゴゴゴ・・・
setEffShake( spep_1+329, ctgogogo_2, 73, 10);
setEffMoveKey( spep_1+329,ctgogogo_2, -20, 510);
setEffScaleKey( spep_1+329, ctgogogo_2,0.8,0.8);
setEffRotateKey( spep_1+329, ctgogogo_2, 0);
setEffAlphaKey( spep_1+329, ctgogogo_2, 255);
setEffMoveKey( spep_1+402,ctgogogo_2, -20, 510);
setEffScaleKey( spep_1+402, ctgogogo_2,0.8,0.8);
setEffRotateKey( spep_1+402, ctgogogo_2, 0);
setEffAlphaKey( spep_1+402, ctgogogo_2, 255);

entryFade(spep_1,0,0,8,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+282,8,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+394,6,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_1, 0, 402, 0, 0, 0, 0, 200);  -- 黒　背景

--SE--
playSe( spep_1 + 15, 1010);
playSe( spep_1 + 51, 1000);
playSe( spep_1 + 85, 1001);
playSe( spep_1 + 119, 1013);
playSe( spep_1 + 165, 1011);
playSe( spep_1 + 249, 1014);
playSe( spep_1 + 319, SE_04);

--次の準備
spep_2=spep_1+402;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen9=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;

------------------------------------------------------
-- 発射(200F)
------------------------------------------------------

hassya03=entryEffectLife(spep_3,SP_04,198,0x100,-1,0,0,0);   -- 発射(200F)
setEffMoveKey( spep_3, hassya03,  0,  0);
setEffScaleKey( spep_3, hassya03,1.0,1.0);
setEffAlphaKey( spep_3, hassya03,255);
setEffRotateKey( spep_3, hassya03,0);
setEffMoveKey( spep_3 + 198, hassya03,  0,  0);
setEffScaleKey( spep_3 + 198, hassya03,1.0,1.0);
setEffAlphaKey( spep_3 + 198, hassya03,255);
setEffRotateKey( spep_3 + 198, hassya03,0);

--集中線--
shuchusen_3 = entryEffectLife( spep_3 + 91, 906, 107, 0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_3 + 91,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 91,  shuchusen_3,  1.5,  1.5);
setEffRotateKey( spep_3 + 91,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 91,  shuchusen_3,  255);
setEffMoveKey( spep_3 + 198,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 198,  shuchusen_3,  1.5,  1.5);
setEffRotateKey( spep_3 + 198,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 198,  shuchusen_3,  255);

--黒背景
entryFadeBg(spep_3, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背景
entryFadeBg(spep_3 + 90, 0, 108, 0, 0, 0, 0, 255);  -- 黒　背景

entryFade(spep_3,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+188,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE--
playSe(spep_3,SE_04);
playSe(spep_3 + 91,SE_07);

--次の準備
spep_4=spep_3+198;

------------------------------------------------------
-- 火柱(160F)
------------------------------------------------------

fire04=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);   -- 火柱(160F)
setEffMoveKey( spep_4, fire04,  0,  0);
setEffScaleKey(spep_4,fire04,1.0,1.0);
setEffAlphaKey(spep_4,fire04,255);
setEffRotateKey(spep_4,fire04,0);

--黒背景
entryFadeBg(spep_4, 0, 160, 0, 0, 0, 0, 255);  -- 黒　背景

entryFade(spep_4,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE--
playSe(spep_4,SE_10);
seId4=playSe( spep_4+1,1044);
stopSe( spep_4+150,seId4,0);

-- ダメージ表示
dealDamage(spep_4+30);

entryFade( spep_4+144, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_4+154);


else

--------------------------------------------------------------------------------------------
--敵側
--------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進(70F)
------------------------------------------------------
spep_0=0;

tosshin00=entryEffectLife(spep_0,SP_01x,68,0x100,-1,0,0,0);   -- 突進(70F)※次シーン白フェイド薄いので、1f手前で終了
setEffMoveKey( spep_0,  tosshin00,  0,  0);
setEffScaleKey(spep_0,tosshin00,1.0,1.0);
setEffAlphaKey(spep_0,tosshin00,255);
setEffRotateKey(spep_0,tosshin00,0);
setEffMoveKey( spep_0 + 68,  tosshin00,  0,  0);
setEffScaleKey(spep_0 + 68,tosshin00,1.0,1.0);
setEffAlphaKey(spep_0 + 68,tosshin00,255);
setEffRotateKey(spep_0 + 68,tosshin00,0);

--集中線--
shuchusen_0 = entryEffectLife( spep_0, 906, 68, 0x100,  -1, 0,  0,  0);   -- ※次シーン白フェイド薄いので、1f手前で終了
setEffMoveKey( spep_0,  shuchusen_0,  0,  0);
setEffScaleKey( spep_0,  shuchusen_0,  1.0,  1.0);
setEffRotateKey( spep_0,  shuchusen_0,  0);
setEffAlphaKey( spep_0,  shuchusen_0,  255);
setEffMoveKey( spep_0 + 68,  shuchusen_0,  0,  0);
setEffScaleKey( spep_0 + 68,  shuchusen_0,  1.0,  1.0);
setEffRotateKey( spep_0 + 68,  shuchusen_0,  0);
setEffAlphaKey( spep_0 + 68,  shuchusen_0,  255);

entryFade(spep_0,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+64,4,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 67, 0, 0, 0, 0, 200);  -- 黒　背景 ※次シーン白フェイド薄いので、1f手前で終了

--SE--
playSe( spep_0 + 0, 9);  --ダッシュ

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+55 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

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

--次の準備
spep_1=spep_0+68;

------------------------------------------------------
-- 格闘(404F)
------------------------------------------------------

kakuto01a=entryEffectLife(spep_1,SP_02x,402,0x100,-1,0,0,0);   -- 格闘前面(404F)
setEffMoveKey( spep_1,  kakuto01a,  0,  0);
setEffScaleKey(spep_1,kakuto01a,1.0,1.0);
setEffAlphaKey(spep_1,kakuto01a,255);
setEffRotateKey(spep_1,kakuto01a,0);
setEffMoveKey( spep_1 + 402,  kakuto01a,  0,  0);
setEffScaleKey(spep_1 + 402,kakuto01a,1.0,1.0);
setEffAlphaKey(spep_1 + 402,kakuto01a,255);
setEffRotateKey(spep_1 + 402,kakuto01a,0);

kakuto01b=entryEffectLife(spep_1,SP_03x,402,0x80,-1,0,0,0);   -- 格闘後面(404F)
setEffMoveKey( spep_1,  kakuto01b,  0,  0);
setEffScaleKey(spep_1,kakuto01b,1.0,1.0);
setEffAlphaKey(spep_1,kakuto01b,255);
setEffRotateKey(spep_1,kakuto01b,0);
setEffMoveKey( spep_1 + 402,  kakuto01b,  0,  0);
setEffScaleKey(spep_1 + 402,kakuto01b,1.0,1.0);
setEffAlphaKey(spep_1 + 402,kakuto01b,255);
setEffRotateKey(spep_1 + 402,kakuto01b,0);

--集中線--
shuchusen_1 = entryEffectLife( spep_1 + 0,  906, 402, 0x80, -1, 0, 344.5, 0 );
setEffMoveKey( spep_1 + 0, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 18, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 20, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 22, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 24, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 26, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 28, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 30, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 32, shuchusen_1, 0 , 0 );
setEffMoveKey( spep_1 + 34, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 36, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 38, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 40, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 42, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 44, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 46, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 48, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 50, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 52, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 54, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 56, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 58, shuchusen_1, 0, 12 , 0 );
setEffMoveKey( spep_1 + 60, shuchusen_1, 0, 16 , 0 );
setEffMoveKey( spep_1 + 62, shuchusen_1, 0, 20 , 0 );
setEffMoveKey( spep_1 + 64, shuchusen_1, 0, 24 , 0 );
setEffMoveKey( spep_1 + 66, shuchusen_1, 0, 28 , 0 );
setEffMoveKey( spep_1 + 68, shuchusen_1, 0, 32 , 0 );
setEffMoveKey( spep_1 + 70, shuchusen_1, 0, 36 , 0 );
setEffMoveKey( spep_1 + 72, shuchusen_1, 0, 40 , 0 );
setEffMoveKey( spep_1 + 74, shuchusen_1, 0, 44 , 0 );
setEffMoveKey( spep_1 + 76, shuchusen_1, 0, 48 , 0 );
setEffMoveKey( spep_1 + 78, shuchusen_1, 0, 52 , 0 );
setEffMoveKey( spep_1 + 80, shuchusen_1, 0, 56 , 0 );
setEffMoveKey( spep_1 + 82, shuchusen_1, 0, 60 , 0 );
setEffMoveKey( spep_1 + 84, shuchusen_1, 0, 64 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen_1, 0, 68 , 0 );
setEffMoveKey( spep_1 + 88, shuchusen_1, 0, 72 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen_1, 0, 76 , 0 );
setEffMoveKey( spep_1 + 92, shuchusen_1, 0, 80 , 0 );
setEffMoveKey( spep_1 + 94, shuchusen_1, 0, 84 , 0 );
setEffMoveKey( spep_1 + 96, shuchusen_1, 0, 88 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen_1, 0, 92 , 0 );
setEffMoveKey( spep_1 + 100, shuchusen_1, 0, 96 , 0 );
setEffMoveKey( spep_1 + 102, shuchusen_1, 0, 100 , 0 );
setEffMoveKey( spep_1 + 104, shuchusen_1, 0, 104 , 0 );
setEffMoveKey( spep_1 + 106, shuchusen_1, 0, 108 , 0 );
setEffMoveKey( spep_1 + 108, shuchusen_1, 0, 112 , 0 );
setEffMoveKey( spep_1 + 110, shuchusen_1, 0, 116 , 0 );
setEffMoveKey( spep_1 + 112, shuchusen_1, 0, 120 , 0 );
setEffMoveKey( spep_1 + 114, shuchusen_1, 0, 124 , 0 );
setEffMoveKey( spep_1 + 116, shuchusen_1, 0, 128 , 0 );
setEffMoveKey( spep_1 + 118, shuchusen_1, 0, 132 , 0 );
setEffMoveKey( spep_1 + 120, shuchusen_1, 0, 136 , 0 );
setEffMoveKey( spep_1 + 122, shuchusen_1, 0, 140 , 0 );
setEffMoveKey( spep_1 + 124, shuchusen_1, 0, 144 , 0 );
setEffMoveKey( spep_1 + 126, shuchusen_1, 0, 148 , 0 );
setEffMoveKey( spep_1 + 128, shuchusen_1, 0, 152 , 0 );
setEffMoveKey( spep_1 + 130, shuchusen_1, 0, 156 , 0 );
setEffMoveKey( spep_1 + 132, shuchusen_1, 0, 160 , 0 );
setEffMoveKey( spep_1 + 134, shuchusen_1, 0, 146.8 , 0 );
setEffMoveKey( spep_1 + 136, shuchusen_1, 0, 133.6 , 0 );
setEffMoveKey( spep_1 + 138, shuchusen_1, 0, 120.5 , 0 );
setEffMoveKey( spep_1 + 140, shuchusen_1, 0, 107.3 , 0 );
setEffMoveKey( spep_1 + 142, shuchusen_1, 0, 94.1 , 0 );
setEffMoveKey( spep_1 + 144, shuchusen_1, 0, 80.9 , 0 );
setEffMoveKey( spep_1 + 146, shuchusen_1, 0, 67.8 , 0 );
setEffMoveKey( spep_1 + 148, shuchusen_1, 0, 54.6 , 0 );
setEffMoveKey( spep_1 + 150, shuchusen_1, 0, 41.4 , 0 );
setEffMoveKey( spep_1 + 152, shuchusen_1, 0, 28.2 , 0 );
setEffMoveKey( spep_1 + 154, shuchusen_1, 0, 15.1 , 0 );
setEffMoveKey( spep_1 + 156, shuchusen_1, 0, 1.9 , 0 );
setEffMoveKey( spep_1 + 158, shuchusen_1, 0, -11.3 , 0 );
setEffMoveKey( spep_1 + 160, shuchusen_1, 0, -24.5 , 0 );
setEffMoveKey( spep_1 + 162, shuchusen_1, 0, -37.6 , 0 );
setEffMoveKey( spep_1 + 164, shuchusen_1, 0, -50.8 , 0 );
setEffMoveKey( spep_1 + 166, shuchusen_1, 0, -64 , 0 );
setEffMoveKey( spep_1 + 168, shuchusen_1, 0, -508.2 , 0 );
setEffMoveKey( spep_1 + 170, shuchusen_1, 0, -471.3 , 0 );
setEffMoveKey( spep_1 + 172, shuchusen_1, 0, -434.4 , 0 );
setEffMoveKey( spep_1 + 174, shuchusen_1, 0, -397.6 , 0 );
setEffMoveKey( spep_1 + 176, shuchusen_1, 0, -360.7 , 0 );
setEffMoveKey( spep_1 + 178, shuchusen_1, 0, -323.8 , 0 );
setEffMoveKey( spep_1 + 180, shuchusen_1, 0, -287 , 0 );
setEffMoveKey( spep_1 + 182, shuchusen_1, 0, -250.1 , 0 );
setEffMoveKey( spep_1 + 184, shuchusen_1, 0, -213.2 , 0 );
setEffMoveKey( spep_1 + 186, shuchusen_1, 0, -176.4 , 0 );
setEffMoveKey( spep_1 + 188, shuchusen_1, 0, -139.5 , 0 );
setEffMoveKey( spep_1 + 190, shuchusen_1, 0, -102.6 , 0 );
setEffMoveKey( spep_1 + 192, shuchusen_1, 0, -65.7 , 0 );
setEffMoveKey( spep_1 + 194, shuchusen_1, 0, -28.9 , 0 );
setEffMoveKey( spep_1 + 196, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 198, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 200, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 202, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 204, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 206, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 208, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 210, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 212, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 214, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 216, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 218, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 220, shuchusen_1, 0, 8 , 0 );
setEffMoveKey( spep_1 + 402, shuchusen_1, 0, 8 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen_1, 1.78, 2.29 );
setEffScaleKey( spep_1 + 18, shuchusen_1, 1.78, 2.29 );
setEffScaleKey( spep_1 + 20, shuchusen_1, 1.35, 1.37 );
setEffScaleKey( spep_1 + 22, shuchusen_1, 1.36, 1.38 );
setEffScaleKey( spep_1 + 24, shuchusen_1, 1.38, 1.4 );
setEffScaleKey( spep_1 + 26, shuchusen_1, 1.39, 1.41 );
setEffScaleKey( spep_1 + 28, shuchusen_1, 1.41, 1.43 );
setEffScaleKey( spep_1 + 30, shuchusen_1, 1.42, 1.44 );
setEffScaleKey( spep_1 + 32, shuchusen_1, 1.44, 1.46 );
setEffScaleKey( spep_1 + 34, shuchusen_1, 1.45, 1.47 );
setEffScaleKey( spep_1 + 36, shuchusen_1, 1.47, 1.49 );
setEffScaleKey( spep_1 + 38, shuchusen_1, 1.48, 1.5 );
setEffScaleKey( spep_1 + 40, shuchusen_1, 1.49, 1.51 );
setEffScaleKey( spep_1 + 42, shuchusen_1, 1.51, 1.53 );
setEffScaleKey( spep_1 + 44, shuchusen_1, 1.52, 1.54 );
setEffScaleKey( spep_1 + 46, shuchusen_1, 1.54, 1.56 );
setEffScaleKey( spep_1 + 48, shuchusen_1, 1.55, 1.57 );
setEffScaleKey( spep_1 + 50, shuchusen_1, 1.57, 1.59 );
setEffScaleKey( spep_1 + 52, shuchusen_1, 1.58, 1.6 );
setEffScaleKey( spep_1 + 54, shuchusen_1, 1.6, 1.62 );
setEffScaleKey( spep_1 + 56, shuchusen_1, 1.61, 1.63 );
setEffScaleKey( spep_1 + 58, shuchusen_1, 1.6, 1.62 );
setEffScaleKey( spep_1 + 60, shuchusen_1, 1.6, 1.62 );
setEffScaleKey( spep_1 + 62, shuchusen_1, 1.59, 1.61 );
setEffScaleKey( spep_1 + 64, shuchusen_1, 1.58, 1.6 );
setEffScaleKey( spep_1 + 66, shuchusen_1, 1.58, 1.6 );
setEffScaleKey( spep_1 + 68, shuchusen_1, 1.57, 1.59 );
setEffScaleKey( spep_1 + 70, shuchusen_1, 1.56, 1.58 );
setEffScaleKey( spep_1 + 72, shuchusen_1, 1.56, 1.58 );
setEffScaleKey( spep_1 + 74, shuchusen_1, 1.55, 1.57 );
setEffScaleKey( spep_1 + 76, shuchusen_1, 1.54, 1.56 );
setEffScaleKey( spep_1 + 78, shuchusen_1, 1.53, 1.55 );
setEffScaleKey( spep_1 + 80, shuchusen_1, 1.53, 1.55 );
setEffScaleKey( spep_1 + 82, shuchusen_1, 1.52, 1.54 );
setEffScaleKey( spep_1 + 84, shuchusen_1, 1.51, 1.53 );
setEffScaleKey( spep_1 + 86, shuchusen_1, 1.51, 1.53 );
setEffScaleKey( spep_1 + 88, shuchusen_1, 1.5, 1.52 );
setEffScaleKey( spep_1 + 90, shuchusen_1, 1.49, 1.51 );
setEffScaleKey( spep_1 + 92, shuchusen_1, 1.49, 1.51 );
setEffScaleKey( spep_1 + 94, shuchusen_1, 1.48, 1.5 );
setEffScaleKey( spep_1 + 96, shuchusen_1, 1.47, 1.49 );
setEffScaleKey( spep_1 + 98, shuchusen_1, 1.47, 1.49 );
setEffScaleKey( spep_1 + 100, shuchusen_1, 1.46, 1.48 );
setEffScaleKey( spep_1 + 102, shuchusen_1, 1.45, 1.47 );
setEffScaleKey( spep_1 + 104, shuchusen_1, 1.45, 1.47 );
setEffScaleKey( spep_1 + 106, shuchusen_1, 1.44, 1.46 );
setEffScaleKey( spep_1 + 108, shuchusen_1, 1.43, 1.45 );
setEffScaleKey( spep_1 + 110, shuchusen_1, 1.43, 1.45 );
setEffScaleKey( spep_1 + 112, shuchusen_1, 1.42, 1.44 );
setEffScaleKey( spep_1 + 114, shuchusen_1, 1.41, 1.43 );
setEffScaleKey( spep_1 + 116, shuchusen_1, 1.4, 1.42 );
setEffScaleKey( spep_1 + 118, shuchusen_1, 1.4, 1.42 );
setEffScaleKey( spep_1 + 120, shuchusen_1, 1.39, 1.41 );
setEffScaleKey( spep_1 + 122, shuchusen_1, 1.38, 1.4 );
setEffScaleKey( spep_1 + 124, shuchusen_1, 1.38, 1.4 );
setEffScaleKey( spep_1 + 126, shuchusen_1, 1.37, 1.39 );
setEffScaleKey( spep_1 + 128, shuchusen_1, 1.36, 1.38 );
setEffScaleKey( spep_1 + 130, shuchusen_1, 1.36, 1.38 );
setEffScaleKey( spep_1 + 132, shuchusen_1, 1.35, 1.37 );
setEffScaleKey( spep_1 + 166, shuchusen_1, 1.35, 1.37 );
setEffScaleKey( spep_1 + 168, shuchusen_1, 1.4, 2.25 );
setEffScaleKey( spep_1 + 170, shuchusen_1, 1.4, 2.19 );
setEffScaleKey( spep_1 + 172, shuchusen_1, 1.4, 2.13 );
setEffScaleKey( spep_1 + 174, shuchusen_1, 1.4, 2.07 );
setEffScaleKey( spep_1 + 176, shuchusen_1, 1.4, 2.01 );
setEffScaleKey( spep_1 + 178, shuchusen_1, 1.4, 1.95 );
setEffScaleKey( spep_1 + 180, shuchusen_1, 1.4, 1.89 );
setEffScaleKey( spep_1 + 182, shuchusen_1, 1.4, 1.84 );
setEffScaleKey( spep_1 + 184, shuchusen_1, 1.4, 1.78 );
setEffScaleKey( spep_1 + 186, shuchusen_1, 1.4, 1.72 );
setEffScaleKey( spep_1 + 188, shuchusen_1, 1.4, 1.66 );
setEffScaleKey( spep_1 + 190, shuchusen_1, 1.4, 1.6 );
setEffScaleKey( spep_1 + 192, shuchusen_1, 1.4, 1.54 );
setEffScaleKey( spep_1 + 194, shuchusen_1, 1.4, 1.48 );
setEffScaleKey( spep_1 + 196, shuchusen_1, 1.4, 1.42 );
setEffScaleKey( spep_1 + 198, shuchusen_1, 1.43, 1.45 );
setEffScaleKey( spep_1 + 200, shuchusen_1, 1.46, 1.48 );
setEffScaleKey( spep_1 + 202, shuchusen_1, 1.49, 1.51 );
setEffScaleKey( spep_1 + 204, shuchusen_1, 1.52, 1.54 );
setEffScaleKey( spep_1 + 206, shuchusen_1, 1.55, 1.57 );
setEffScaleKey( spep_1 + 208, shuchusen_1, 1.58, 1.6 );
setEffScaleKey( spep_1 + 210, shuchusen_1, 1.6, 1.62 );
setEffScaleKey( spep_1 + 212, shuchusen_1, 1.63, 1.65 );
setEffScaleKey( spep_1 + 214, shuchusen_1, 1.66, 1.68 );
setEffScaleKey( spep_1 + 216, shuchusen_1, 1.69, 1.71 );
setEffScaleKey( spep_1 + 218, shuchusen_1, 1.72, 1.74 );
setEffScaleKey( spep_1 + 220, shuchusen_1, 1.75, 1.77 );
setEffScaleKey( spep_1 + 402, shuchusen_1, 1.75, 1.77 );
setEffRotateKey( spep_1 + 0, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 402, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 402, shuchusen_1, 255 );

setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 264, 1, 0 );
setDisp( spep_1 + 402, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 + 18, 1, 108 );
changeAnime( spep_1 + 40, 1, 106 );
changeAnime( spep_1 + 52, 1, 108 );
changeAnime( spep_1 + 86, 1, 106 );
setMoveKey( spep_1 + 0, 1, 128.3, -103.1 , 0 );
setMoveKey( spep_1 + 2, 1, 125.9, -103.3 , 0 );
setMoveKey( spep_1 + 4, 1, 127.4, -107 , 0 );
setMoveKey( spep_1 + 6, 1, 127.8, -109.1 , 0 );
setMoveKey( spep_1 + 8, 1, 129.7, -112.3 , 0 );
setMoveKey( spep_1 + 10, 1, 135.4, -118.9 , 0 );
setMoveKey( spep_1 + 12, 1, 140.2, -124 , 0 );
setMoveKey( spep_1 + 14, 1, 146.3, -130 , 0 );
setMoveKey( spep_1 + 16, 1, 172.2, -171.3 , 0 );
setMoveKey( spep_1 + 18, 1, 174.4, -161.4 , 0 );
setMoveKey( spep_1 + 20, 1, 186.1, -170.1 , 0 );
setMoveKey( spep_1 + 22, 1, 181.6, -162.4 , 0 );
setMoveKey( spep_1 + 24, 1, 193.1, -169.1 , 0 );
setMoveKey( spep_1 + 26, 1, 188.6, -168.7 , 0 );
setMoveKey( spep_1 + 28, 1, 196.7, -163.7 , 0 );
setMoveKey( spep_1 + 30, 1, 197.1, -170.4 , 0 );
setMoveKey( spep_1 + 32, 1, 200.7, -159 , 0 );
setMoveKey( spep_1 + 34, 1, 201.8, -158.9 , 0 );
setMoveKey( spep_1 + 36, 1, 202.5, -158.8 , 0 );
setMoveKey( spep_1 + 38, 1, 202, -158.4 , 0 );
setMoveKey( spep_1 + 40, 1, 186.9, -14.7 , 0 );
setMoveKey( spep_1 + 42, 1, 245.4, 33.3 , 0 );
setMoveKey( spep_1 + 44, 1, 254.2, 58.9 , 0 );
setMoveKey( spep_1 + 46, 1, 225.3, 65.8 , 0 );
setMoveKey( spep_1 + 48, 1, 185.9, 62.6 , 0 );
setMoveKey( spep_1 + 50, 1, 151.4, 53.6 , 0 );
setMoveKey( spep_1 + 52, 1, 195.7, 33.8 , 0 );
setMoveKey( spep_1 + 54, 1, 205.1, 29.3 , 0 );
setMoveKey( spep_1 + 56, 1, 197.2, 24.1 , 0 );
setMoveKey( spep_1 + 58, 1, 202.2, 32.1 , 0 );
setMoveKey( spep_1 + 60, 1, 196.8, 22 , 0 );
setMoveKey( spep_1 + 62, 1, 195, 29.4 , 0 );
setMoveKey( spep_1 + 64, 1, 205.6, 30.9 , 0 );
setMoveKey( spep_1 + 66, 1, 204.7, 30.6 , 0 );
setMoveKey( spep_1 + 68, 1, 235.7, 62.6 , 0 );
setMoveKey( spep_1 + 70, 1, 262.7, 85 , 0 );
setMoveKey( spep_1 + 72, 1, 271.8, 104.2 , 0 );
setMoveKey( spep_1 + 74, 1, 263.7, 115.8 , 0 );
setMoveKey( spep_1 + 76, 1, 239.9, 120.9 , 0 );
setMoveKey( spep_1 + 78, 1, 202.5, 119.4 , 0 );
setMoveKey( spep_1 + 80, 1, 169.7, 116.3 , 0 );
setMoveKey( spep_1 + 82, 1, 145.4, 112.8 , 0 );
setMoveKey( spep_1 + 84, 1, 129.5, 109.5 , 0 );
setMoveKey( spep_1 + 86, 1, 142, 131.8 , 0 );
setMoveKey( spep_1 + 88, 1, 152.1, 147.9 , 0 );
setMoveKey( spep_1 + 90, 1, 159, 139.1 , 0 );
setMoveKey( spep_1 + 92, 1, 164.2, 150.2 , 0 );
setMoveKey( spep_1 + 94, 1, 160.5, 148.1 , 0 );
setMoveKey( spep_1 + 96, 1, 168.9, 154.2 , 0 );
setMoveKey( spep_1 + 98, 1, 161, 155.9 , 0 );
setMoveKey( spep_1 + 100, 1, 162.8, 155.9 , 0 );
setMoveKey( spep_1 + 102, 1, 160.1, 155.9 , 0 );
setMoveKey( spep_1 + 104, 1, 182.8, 280.4 , 0 );
setMoveKey( spep_1 + 106, 1, 186.7, 319.6 , 0 );
setMoveKey( spep_1 + 108, 1, 179.6, 332 , 0 );
setMoveKey( spep_1 + 110, 1, 156.7, 316.5 , 0 );
setMoveKey( spep_1 + 112, 1, 118.5, 279.6 , 0 );
setMoveKey( spep_1 + 114, 1, 78.9, 235.4 , 0 );
setMoveKey( spep_1 + 116, 1, 45.8, 194.9 , 0 );
setMoveKey( spep_1 + 118, 1, 19.4, 159.9 , 0 );
setMoveKey( spep_1 + 120, 1, -2.6, 130.2 , 0 );
setMoveKey( spep_1 + 122, 1, -13.6, 113.1 , 0 );
setMoveKey( spep_1 + 124, 1, -18.9, 122.4 , 0 );
setMoveKey( spep_1 + 126, 1, -12.3, 152.7 , 0 );
setMoveKey( spep_1 + 128, 1, 1.1, 203.2 , 0 );
setMoveKey( spep_1 + 130, 1, 17.2, 258 , 0 );
setMoveKey( spep_1 + 132, 1, 28.7, 295.2 , 0 );
setMoveKey( spep_1 + 134, 1, 37.1, 322 , 0 );
setMoveKey( spep_1 + 136, 1, 25, 362.9 , 0 );
setMoveKey( spep_1 + 138, 1, 9.1, 390.8 , 0 );
setMoveKey( spep_1 + 140, 1, -3.8, 416.5 , 0 );
setMoveKey( spep_1 + 142, 1, -14.5, 436 , 0 );
setMoveKey( spep_1 + 144, 1, -24.6, 445.9 , 0 );
setMoveKey( spep_1 + 146, 1, -31.9, 452.9 , 0 );
setMoveKey( spep_1 + 148, 1, -37.1, 453.6 , 0 );
setMoveKey( spep_1 + 150, 1, -42.7, 445 , 0 );
setMoveKey( spep_1 + 152, 1, -44.2, 432.9 , 0 );
setMoveKey( spep_1 + 154, 1, -43.9, 414.3 , 0 );
setMoveKey( spep_1 + 156, 1, -43.8, 386.3 , 0 );
setMoveKey( spep_1 + 158, 1, -39.7, 354.7 , 0 );
setMoveKey( spep_1 + 160, 1, -35.5, 313.1 , 0 );
setMoveKey( spep_1 + 162, 1, -33.1, 317.8 , 0 );
setMoveKey( spep_1 + 163, 1, -3.7, -182.4 , 0 );
setMoveKey( spep_1 + 166, 1, 20.5, -372.1 , 0 );
setMoveKey( spep_1 + 168, 1, 23.8, -347.5 , 0 );
setMoveKey( spep_1 + 170, 1, 14.6, -314.5 , 0 );
setMoveKey( spep_1 + 172, 1, 17.8, -273.9 , 0 );
setMoveKey( spep_1 + 174, 1, 6.6, -247.9 , 0 );
setMoveKey( spep_1 + 176, 1, 14.7, -216 , 0 );
setMoveKey( spep_1 + 178, 1, 5.3, -222.4 , 0 );
setMoveKey( spep_1 + 180, 1, 16.1, -212.5 , 0 );
setMoveKey( spep_1 + 182, 1, 14, -220.5 , 0 );
setMoveKey( spep_1 + 184, 1, 5.3, -208.2 , 0 );
setMoveKey( spep_1 + 186, 1, 14.2, -216.4 , 0 );
setMoveKey( spep_1 + 188, 1, 13.1, -204 , 0 );
setMoveKey( spep_1 + 190, 1, 8.3, -206.5 , 0 );
setMoveKey( spep_1 + 192, 1, 8.3, -206.7 , 0 );
setMoveKey( spep_1 + 194, 1, 16.5, -214.1 , 0 );
setMoveKey( spep_1 + 196, 1, 26.7, -232.5 , 0 );
setMoveKey( spep_1 + 198, 1, 49.8, -260.8 , 0 );
setMoveKey( spep_1 + 200, 1, 75, -299.7 , 0 );
setMoveKey( spep_1 + 202, 1, 113, -346.8 , 0 );
setMoveKey( spep_1 + 204, 1, 153.1, -405.7 , 0 );
setMoveKey( spep_1 + 206, 1, 206.2, -474.3 , 0 );
setMoveKey( spep_1 + 208, 1, 260.9, -553.5 , 0 );
setMoveKey( spep_1 + 210, 1, 260.9, -553.6 , 0 );
setMoveKey( spep_1 + 212, 1, 260.7, -552.4 , 0 );
setMoveKey( spep_1 + 214, 1, 260.6, -553.1 , 0 );
setMoveKey( spep_1 + 216, 1, 260.3, -553.2 , 0 );
setMoveKey( spep_1 + 218, 1, 260.3, -553.9 , 0 );
setMoveKey( spep_1 + 220, 1, 260.1, -552.4 , 0 );
setMoveKey( spep_1 + 222, 1, 260, -553 , 0 );
setMoveKey( spep_1 + 224, 1, 260.1, -553.2 , 0 );
setMoveKey( spep_1 + 226, 1, 259.9, -553.7 , 0 );
setMoveKey( spep_1 + 228, 1, 259.9, -554.2 , 0 );
setMoveKey( spep_1 + 230, 1, 259.5, -553 , 0 );
setMoveKey( spep_1 + 232, 1, 259.4, -553.5 , 0 );
setMoveKey( spep_1 + 234, 1, 259.5, -554 , 0 );
setMoveKey( spep_1 + 236, 1, 237.4, -380.5 , 0 );
setMoveKey( spep_1 + 237, 1, 120.9, -240.6 , 0 );
setMoveKey( spep_1 + 240, 1, 118.8, -244.5 , 0 );
setMoveKey( spep_1 + 242, 1, 110, -251.2 , 0 );
setMoveKey( spep_1 + 244, 1, 94.4, -267.1 , 0 );
setMoveKey( spep_1 + 246, 1, 68, -285.1 , 0 );
setMoveKey( spep_1 + 248, 1, 37.9, -306.6 , 0 );
setMoveKey( spep_1 + 250, 1, 13.8, -320.9 , 0 );
setMoveKey( spep_1 + 252, 1, 14.4, -549.7 , 0 );
setMoveKey( spep_1 + 254, 1, -16.4, -724.4 , 0 );
setMoveKey( spep_1 + 256, 1, -10.5, -882.6 , 0 );
setMoveKey( spep_1 + 258, 1, -25.3, -881.9 , 0 );
setMoveKey( spep_1 + 260, 1, -8.1, -880 , 0 );
setMoveKey( spep_1 + 264, 1, -21.7, -888.8 , 0 );
setScaleKey( spep_1 + 0, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 2, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 4, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 8, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 10, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 12, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 14, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 16, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 18, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 22, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 24, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 26, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 30, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 36, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 38, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 40, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 42, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 44, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 46, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 48, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 50, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 52, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 58, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 60, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 62, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 64, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 66, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 68, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 70, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 74, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 76, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 78, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 80, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 82, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 86, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 88, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 90, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 104, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 106, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 108, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 110, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 112, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 114, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 116, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 118, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 120, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 122, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 124, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 126, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 128, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 130, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 132, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 134, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 136, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 138, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 142, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 144, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 148, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 150, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 154, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 156, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 158, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 160, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 162, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 164, 1, 2.57, 2.57 );
setScaleKey( spep_1 + 166, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 168, 1, 2.17, 2.17 );
setScaleKey( spep_1 + 170, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 172, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 174, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 176, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 178, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 180, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 182, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 184, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 186, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 188, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 190, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 192, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 194, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 196, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 198, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 200, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 202, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 204, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 206, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 208, 1, 2.82, 2.82 );
setScaleKey( spep_1 + 234, 1, 2.82, 2.82 );
setScaleKey( spep_1 + 236, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 237, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 240, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 242, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 244, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 246, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 248, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 250, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 252, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 254, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 256, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 258, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 260, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 264, 1, 1.74, 1.74 );
setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 38, 1, 0 );
setRotateKey( spep_1 + 40, 1, -40 );
setRotateKey( spep_1 + 42, 1, -39.1 );
setRotateKey( spep_1 + 44, 1, -38.3 );
setRotateKey( spep_1 + 46, 1, -37.8 );
setRotateKey( spep_1 + 48, 1, -37.6 );
setRotateKey( spep_1 + 50, 1, -37.4 );
setRotateKey( spep_1 + 52, 1, -9.9 );
setRotateKey( spep_1 + 54, 1, -9.5 );
setRotateKey( spep_1 + 56, 1, -9 );
setRotateKey( spep_1 + 58, 1, -8.8 );
setRotateKey( spep_1 + 60, 1, -8.6 );
setRotateKey( spep_1 + 62, 1, -8.5 );
setRotateKey( spep_1 + 64, 1, -8.3 );
setRotateKey( spep_1 + 66, 1, -8.4 );
setRotateKey( spep_1 + 68, 1, -5.3 );
setRotateKey( spep_1 + 70, 1, -2.5 );
setRotateKey( spep_1 + 72, 1, -0.3 );
setRotateKey( spep_1 + 74, 1, 1.6 );
setRotateKey( spep_1 + 76, 1, 3.3 );
setRotateKey( spep_1 + 78, 1, 4.5 );
setRotateKey( spep_1 + 80, 1, 5.5 );
setRotateKey( spep_1 + 82, 1, 6 );
setRotateKey( spep_1 + 84, 1, 6.2 );
setRotateKey( spep_1 + 86, 1, -25.4 );
setRotateKey( spep_1 + 88, 1, -25.3 );
setRotateKey( spep_1 + 90, 1, -25.1 );
setRotateKey( spep_1 + 92, 1, -25 );
setRotateKey( spep_1 + 94, 1, -24.8 );
setRotateKey( spep_1 + 100, 1, -24.8 );
setRotateKey( spep_1 + 102, 1, -24.7 );
setRotateKey( spep_1 + 104, 1, -24.7 );
setRotateKey( spep_1 + 106, 1, -23.1 );
setRotateKey( spep_1 + 108, 1, -21.8 );
setRotateKey( spep_1 + 110, 1, -20.6 );
setRotateKey( spep_1 + 112, 1, -19.6 );
setRotateKey( spep_1 + 114, 1, -18.8 );
setRotateKey( spep_1 + 116, 1, -18.3 );
setRotateKey( spep_1 + 118, 1, -18 );
setRotateKey( spep_1 + 120, 1, -18 );
setRotateKey( spep_1 + 122, 1, -15.3 );
setRotateKey( spep_1 + 124, 1, -7.3 );
setRotateKey( spep_1 + 126, 1, 5.5 );
setRotateKey( spep_1 + 128, 1, 24.1 );
setRotateKey( spep_1 + 130, 1, 42.6 );
setRotateKey( spep_1 + 132, 1, 55.7 );
setRotateKey( spep_1 + 134, 1, 63.7 );
setRotateKey( spep_1 + 136, 1, 66.2 );
setRotateKey( spep_1 + 138, 1, 66.4 );
setRotateKey( spep_1 + 140, 1, 66.7 );
setRotateKey( spep_1 + 142, 1, 67.2 );
setRotateKey( spep_1 + 144, 1, 67.9 );
setRotateKey( spep_1 + 146, 1, 68.7 );
setRotateKey( spep_1 + 148, 1, 69.7 );
setRotateKey( spep_1 + 150, 1, 71.2 );
setRotateKey( spep_1 + 152, 1, 72.5 );
setRotateKey( spep_1 + 154, 1, 74.2 );
setRotateKey( spep_1 + 156, 1, 76 );
setRotateKey( spep_1 + 158, 1, 78.2 );
setRotateKey( spep_1 + 160, 1, 80.4 );
setRotateKey( spep_1 + 162, 1, 82.7 );
setRotateKey( spep_1 + 164, 1, 124 );
setRotateKey( spep_1 + 166, 1, 130.3 );
setRotateKey( spep_1 + 168, 1, 130.4 );
setRotateKey( spep_1 + 170, 1, 130.6 );
setRotateKey( spep_1 + 172, 1, 130.6 );
setRotateKey( spep_1 + 174, 1, 130.8 );
setRotateKey( spep_1 + 176, 1, 130.9 );
setRotateKey( spep_1 + 178, 1, 130.9 );
setRotateKey( spep_1 + 180, 1, 131.1 );
setRotateKey( spep_1 + 182, 1, 131.1 );
setRotateKey( spep_1 + 184, 1, 131.3 );
setRotateKey( spep_1 + 186, 1, 131.4 );
setRotateKey( spep_1 + 188, 1, 131.6 );
setRotateKey( spep_1 + 190, 1, 131.6 );
setRotateKey( spep_1 + 192, 1, 131.8 );
setRotateKey( spep_1 + 194, 1, 131.9 );
setRotateKey( spep_1 + 196, 1, 131.9 );
setRotateKey( spep_1 + 198, 1, 132.1 );
setRotateKey( spep_1 + 200, 1, 132.1 );
setRotateKey( spep_1 + 202, 1, 132.4 );
setRotateKey( spep_1 + 204, 1, 132.4 );
setRotateKey( spep_1 + 206, 1, 132.6 );
setRotateKey( spep_1 + 208, 1, 132.6 );
setRotateKey( spep_1 + 210, 1, 132.8 );
setRotateKey( spep_1 + 212, 1, 132.9 );
setRotateKey( spep_1 + 214, 1, 132.9 );
setRotateKey( spep_1 + 216, 1, 133.1 );
setRotateKey( spep_1 + 218, 1, 133.1 );
setRotateKey( spep_1 + 220, 1, 133.4 );
setRotateKey( spep_1 + 222, 1, 133.4 );
setRotateKey( spep_1 + 224, 1, 133.6 );
setRotateKey( spep_1 + 226, 1, 133.6 );
setRotateKey( spep_1 + 228, 1, 133.8 );
setRotateKey( spep_1 + 230, 1, 133.9 );
setRotateKey( spep_1 + 232, 1, 133.9 );
setRotateKey( spep_1 + 234, 1, 134.1 );
setRotateKey( spep_1 + 236, 1, 134.2 );
setRotateKey( spep_1 + 264, 1, 134.2 );

-- 書き文字エントリー　バゴォ --
bago_01 = entryEffectLife( spep_1 + 15,  10021, 26, 0x100, -1, 0, 136.9, 67.4 );    -- バゴォ
setEffMoveKey( spep_1 + 15, bago_01, 136.9, 67.4 , 0 );
setEffMoveKey( spep_1 + 17, bago_01, 125.2, 96.8 , 0 );
setEffMoveKey( spep_1 + 19, bago_01, 127.8, 113.4 , 0 );
setEffMoveKey( spep_1 + 21, bago_01, 122.1, 109.4 , 0 );
setEffMoveKey( spep_1 + 23, bago_01, 132.5, 120.7 , 0 );
setEffMoveKey( spep_1 + 25, bago_01, 123.6, 116.4 , 0 );
setEffMoveKey( spep_1 + 27, bago_01, 133.3, 116.7 , 0 );
setEffMoveKey( spep_1 + 29, bago_01, 122.3, 123.1 , 0 );
setEffMoveKey( spep_1 + 31, bago_01, 132.5, 118.8 , 0 );
setEffMoveKey( spep_1 + 33, bago_01, 127.1, 129.4 , 0 );
setEffMoveKey( spep_1 + 35, bago_01, 127.8, 126.6 , 0 );
setEffMoveKey( spep_1 + 37, bago_01, 121.6, 122.6 , 0 );
setEffMoveKey( spep_1 + 39, bago_01, 132.9, 139.2 , 0 );
setEffMoveKey( spep_1 + 41, bago_01, 133.2, 149.7 , 0 );
setEffScaleKey( spep_1 + 15, bago_01, 1.3, 1.3 );
setEffScaleKey( spep_1 + 17, bago_01, 1.63, 1.63 );
setEffScaleKey( spep_1 + 19, bago_01, 1.74, 1.74 );
setEffScaleKey( spep_1 + 21, bago_01, 1.76, 1.76 );
setEffScaleKey( spep_1 + 23, bago_01, 1.77, 1.77 );
setEffScaleKey( spep_1 + 25, bago_01, 1.79, 1.79 );
setEffScaleKey( spep_1 + 27, bago_01, 1.81, 1.81 );
setEffScaleKey( spep_1 + 29, bago_01, 1.82, 1.82 );
setEffScaleKey( spep_1 + 31, bago_01, 1.84, 1.84 );
setEffScaleKey( spep_1 + 33, bago_01, 1.85, 1.85 );
setEffScaleKey( spep_1 + 35, bago_01, 1.87, 1.87 );
setEffScaleKey( spep_1 + 37, bago_01, 1.89, 1.89 );
setEffScaleKey( spep_1 + 39, bago_01, 1.95, 1.95 );
setEffScaleKey( spep_1 + 41, bago_01, 2.05, 2.05 );
setEffRotateKey( spep_1 + 15, bago_01, -0.5 );
setEffRotateKey( spep_1 + 17, bago_01, -3.4 );
setEffRotateKey( spep_1 + 19, bago_01, -4.4 );
setEffRotateKey( spep_1 + 41, bago_01, -4.4 );
setEffAlphaKey( spep_1 + 15, bago_01, 255 );
setEffAlphaKey( spep_1 + 35, bago_01, 255 );
setEffAlphaKey( spep_1 + 37, bago_01, 227 );
setEffAlphaKey( spep_1 + 39, bago_01, 142 );
setEffAlphaKey( spep_1 + 41, bago_01, 0 );

-- 書き文字エントリー　ガッ --
ga_01a = entryEffectLife( spep_1 + 51,  10005, 20, 0x100, -1, 0, 222.9, 223.8 );    -- ガッ
setEffMoveKey( spep_1 + 51, ga_01a, 222.9, 223.8 , 0 );
setEffMoveKey( spep_1 + 53, ga_01a, 218.3, 223.5 , 0 );
setEffMoveKey( spep_1 + 55, ga_01a, 223, 224 , 0 );
setEffMoveKey( spep_1 + 57, ga_01a, 218.6, 224.2 , 0 );
setEffMoveKey( spep_1 + 59, ga_01a, 227.2, 223.8 , 0 );
setEffMoveKey( spep_1 + 61, ga_01a, 220.4, 227.5 , 0 );
setEffMoveKey( spep_1 + 63, ga_01a, 229.3, 224.2 , 0 );
setEffMoveKey( spep_1 + 65, ga_01a, 221.6, 230 , 0 );
setEffMoveKey( spep_1 + 67, ga_01a, 225, 228.2 , 0 );
setEffMoveKey( spep_1 + 69, ga_01a, 222.4, 234 , 0 );
setEffMoveKey( spep_1 + 71, ga_01a, 224.8, 240.3 , 0 );
setEffScaleKey( spep_1 + 51, ga_01a, 1.3, 1.3 );
setEffScaleKey( spep_1 + 55, ga_01a, 1.3, 1.3 );
setEffScaleKey( spep_1 + 57, ga_01a, 1.32, 1.32 );
setEffScaleKey( spep_1 + 59, ga_01a, 1.33, 1.33 );
setEffScaleKey( spep_1 + 61, ga_01a, 1.35, 1.35 );
setEffScaleKey( spep_1 + 63, ga_01a, 1.37, 1.37 );
setEffScaleKey( spep_1 + 65, ga_01a, 1.38, 1.38 );
setEffScaleKey( spep_1 + 67, ga_01a, 1.4, 1.4 );
setEffScaleKey( spep_1 + 69, ga_01a, 1.55, 1.55 );
setEffScaleKey( spep_1 + 71, ga_01a, 1.7, 1.7 );
setEffRotateKey( spep_1 + 51, ga_01a, 3 );
setEffRotateKey( spep_1 + 71, ga_01a, 3 );
setEffAlphaKey( spep_1 + 51, ga_01a, 255 );
setEffAlphaKey( spep_1 + 67, ga_01a, 255 );
setEffAlphaKey( spep_1 + 69, ga_01a, 128 );
setEffAlphaKey( spep_1 + 71, ga_01a, 0 );

-- 書き文字エントリー　バキッ --
baki_01 = entryEffectLife( spep_1 + 85,  10020, 18, 0x100, -1, 0, 60.8, 296.5 );    -- バキッ
setEffMoveKey( spep_1 + 85, baki_01, 60.8, 296.5 , 0 );
setEffMoveKey( spep_1 + 87, baki_01, 56.3, 306.9 , 0 );
setEffMoveKey( spep_1 + 89, baki_01, 58, 307.1 , 0 );
setEffMoveKey( spep_1 + 91, baki_01, 53.8, 315.6 , 0 );
setEffMoveKey( spep_1 + 93, baki_01, 57, 311.1 , 0 );
setEffMoveKey( spep_1 + 95, baki_01, 49.2, 324.5 , 0 );
setEffMoveKey( spep_1 + 97, baki_01, 58.8, 324.5 , 0 );
setEffMoveKey( spep_1 + 99, baki_01, 53.4, 323.5 , 0 );
setEffMoveKey( spep_1 + 101, baki_01, 59.5, 332.9 , 0 );
setEffMoveKey( spep_1 + 103, baki_01, 62.5, 335 , 0 );
setEffScaleKey( spep_1 + 85, baki_01, 1.25, 1.25 );
setEffScaleKey( spep_1 + 87, baki_01, 1.33, 1.33 );
setEffScaleKey( spep_1 + 89, baki_01, 1.35, 1.35 );
setEffScaleKey( spep_1 + 91, baki_01, 1.4, 1.4 );
setEffScaleKey( spep_1 + 93, baki_01, 1.45, 1.45 );
setEffScaleKey( spep_1 + 95, baki_01, 1.48, 1.48 );
setEffScaleKey( spep_1 + 97, baki_01, 1.49, 1.49 );
setEffScaleKey( spep_1 + 99, baki_01, 1.5, 1.5 );
setEffScaleKey( spep_1 + 101, baki_01, 1.7, 1.7 );
setEffScaleKey( spep_1 + 103, baki_01, 1.76, 1.76 );
setEffRotateKey( spep_1 + 85, baki_01, 18 );
setEffRotateKey( spep_1 + 103, baki_01, 18 );
setEffAlphaKey( spep_1 + 85, baki_01, 255 );
setEffAlphaKey( spep_1 + 99, baki_01, 255 );
setEffAlphaKey( spep_1 + 101, baki_01, 64 );
setEffAlphaKey( spep_1 + 103, baki_01, 0 );

-- 書き文字エントリー　ガッ --
ga_01b = entryEffectLife( spep_1 + 119,  10005, 18, 0x100, -1, 0, 180.1, 79 );    -- ガッ
setEffMoveKey( spep_1 + 119, ga_01b, 180.1, 79 , 0 );
setEffMoveKey( spep_1 + 121, ga_01b, 194, 82.1 , 0 );
setEffMoveKey( spep_1 + 123, ga_01b, 205.5, 83.9 , 0 );
setEffMoveKey( spep_1 + 125, ga_01b, 197.4, 82.7 , 0 );
setEffMoveKey( spep_1 + 127, ga_01b, 203.7, 81 , 0 );
setEffMoveKey( spep_1 + 129, ga_01b, 193.2, 83.7 , 0 );
setEffMoveKey( spep_1 + 131, ga_01b, 199.2, 79.1 , 0 );
setEffMoveKey( spep_1 + 133, ga_01b, 191.3, 81.2 , 0 );
setEffMoveKey( spep_1 + 135, ga_01b, 210.6, 85.3 , 0 );
setEffMoveKey( spep_1 + 137, ga_01b, 218.7, 86.8 , 0 );
setEffScaleKey( spep_1 + 119, ga_01b, 1.25, 1.25 );
setEffScaleKey( spep_1 + 121, ga_01b, 1.44, 1.44 );
setEffScaleKey( spep_1 + 123, ga_01b, 1.5, 1.5 );
setEffScaleKey( spep_1 + 125, ga_01b, 1.47, 1.47 );
setEffScaleKey( spep_1 + 127, ga_01b, 1.44, 1.44 );
setEffScaleKey( spep_1 + 129, ga_01b, 1.42, 1.42 );
setEffScaleKey( spep_1 + 131, ga_01b, 1.39, 1.39 );
setEffScaleKey( spep_1 + 133, ga_01b, 1.36, 1.36 );
setEffScaleKey( spep_1 + 135, ga_01b, 1.61, 1.61 );
setEffScaleKey( spep_1 + 137, ga_01b, 1.69, 1.69 );
setEffRotateKey( spep_1 + 119, ga_01b, 3 );
setEffRotateKey( spep_1 + 137, ga_01b, 3 );
setEffAlphaKey( spep_1 + 119, ga_01b, 255 );
setEffAlphaKey( spep_1 + 133, ga_01b, 255 );
setEffAlphaKey( spep_1 + 135, ga_01b, 64 );
setEffAlphaKey( spep_1 + 137, ga_01b, 0 );

-- 書き文字エントリー　ドゴォン --
dogxon_01 = entryEffectLife( spep_1 + 165,  10018, 28, 0x100, -1, 0, 48, 92.8 );    -- ドゴォン
setEffMoveKey( spep_1 + 165, dogxon_01, 48, 92.8 , 0 );
setEffMoveKey( spep_1 + 167, dogxon_01, 49.1, 199.7 , 0 );
setEffMoveKey( spep_1 + 169, dogxon_01, 53.5, 241.7 , 0 );
setEffMoveKey( spep_1 + 171, dogxon_01, 50.2, 238.7 , 0 );
setEffMoveKey( spep_1 + 173, dogxon_01, 54, 250.2 , 0 );
setEffMoveKey( spep_1 + 175, dogxon_01, 55, 244.5 , 0 );
setEffMoveKey( spep_1 + 177, dogxon_01, 49.6, 250.1 , 0 );
setEffMoveKey( spep_1 + 179, dogxon_01, 58.2, 250.3 , 0 );
setEffMoveKey( spep_1 + 181, dogxon_01, 50.3, 248.5 , 0 );
setEffMoveKey( spep_1 + 183, dogxon_01, 53.8, 252.3 , 0 );
setEffMoveKey( spep_1 + 185, dogxon_01, 50.4, 247.2 , 0 );
setEffMoveKey( spep_1 + 187, dogxon_01, 53.8, 252.8 , 0 );
setEffMoveKey( spep_1 + 189, dogxon_01, 50.5, 252.7 , 0 );
setEffMoveKey( spep_1 + 191, dogxon_01, 54.9, 278.9 , 0 );
setEffMoveKey( spep_1 + 193, dogxon_01, 55.9, 306.3 , 0 );
setEffScaleKey( spep_1 + 165, dogxon_01, 2.16, 2.16 );
setEffScaleKey( spep_1 + 167, dogxon_01, 3.05, 3.05 );
setEffScaleKey( spep_1 + 169, dogxon_01, 3.35, 3.35 );
setEffScaleKey( spep_1 + 171, dogxon_01, 3.37, 3.37 );
setEffScaleKey( spep_1 + 173, dogxon_01, 3.39, 3.39 );
setEffScaleKey( spep_1 + 175, dogxon_01, 3.4, 3.4 );
setEffScaleKey( spep_1 + 177, dogxon_01, 3.41, 3.41 );
setEffScaleKey( spep_1 + 179, dogxon_01, 3.42, 3.42 );
setEffScaleKey( spep_1 + 181, dogxon_01, 3.43, 3.43 );
setEffScaleKey( spep_1 + 187, dogxon_01, 3.44, 3.44 );
setEffScaleKey( spep_1 + 188, dogxon_01, 3.44, 3.44 );
setEffScaleKey( spep_1 + 189, dogxon_01, 3.48, 3.48 );
setEffScaleKey( spep_1 + 191, dogxon_01, 3.61, 3.61 );
setEffScaleKey( spep_1 + 193, dogxon_01, 3.83, 3.83 );
setEffRotateKey( spep_1 + 165, dogxon_01, 0 );
setEffRotateKey( spep_1 + 193, dogxon_01, 0 );
setEffAlphaKey( spep_1 + 165, dogxon_01, 255 );
setEffAlphaKey( spep_1 + 187, dogxon_01, 255 );
setEffAlphaKey( spep_1 + 189, dogxon_01, 227 );
setEffAlphaKey( spep_1 + 191, dogxon_01, 142 );
setEffAlphaKey( spep_1 + 193, dogxon_01, 0 );

-- 書き文字エントリー　バッ --
ba_01 = entryEffectLife( spep_1 + 199,  10022, 22, 0x100, -1, 0, 121.9, 249.7 );    -- バッ
setEffMoveKey( spep_1 + 199, ba_01, 121.9, 249.7 , 0 );
setEffMoveKey( spep_1 + 201, ba_01, 149.9, 327.3 , 0 );
setEffMoveKey( spep_1 + 203, ba_01, 159.2, 353.1 , 0 );
setEffMoveKey( spep_1 + 205, ba_01, 159.4, 353.5 , 0 );
setEffMoveKey( spep_1 + 207, ba_01, 159.5, 353.9 , 0 );
setEffMoveKey( spep_1 + 209, ba_01, 159.7, 354.3 , 0 );
setEffMoveKey( spep_1 + 211, ba_01, 159.8, 354.7 , 0 );
setEffMoveKey( spep_1 + 213, ba_01, 160, 355.1 , 0 );
setEffMoveKey( spep_1 + 215, ba_01, 160.1, 355.4 , 0 );
setEffMoveKey( spep_1 + 217, ba_01, 161.5, 359.1 , 0 );
setEffMoveKey( spep_1 + 219, ba_01, 165.4, 370.1 , 0 );
setEffMoveKey( spep_1 + 221, ba_01, 172.1, 388.4 , 0 );
setEffScaleKey( spep_1 + 199, ba_01, 0.86, 0.86 );
setEffScaleKey( spep_1 + 201, ba_01, 1.19, 1.19 );
setEffScaleKey( spep_1 + 203, ba_01, 1.3, 1.3 );
setEffScaleKey( spep_1 + 207, ba_01, 1.3, 1.3 );
setEffScaleKey( spep_1 + 209, ba_01, 1.31, 1.31 );
setEffScaleKey( spep_1 + 215, ba_01, 1.31, 1.31 );
setEffScaleKey( spep_1 + 217, ba_01, 1.33, 1.33 );
setEffScaleKey( spep_1 + 219, ba_01, 1.37, 1.37 );
setEffScaleKey( spep_1 + 221, ba_01, 1.45, 1.45 );
setEffRotateKey( spep_1 + 199, ba_01, 22.2 );
setEffRotateKey( spep_1 + 221, ba_01, 22.2 );
setEffAlphaKey( spep_1 + 199, ba_01, 255 );
setEffAlphaKey( spep_1 + 215, ba_01, 255 );
setEffAlphaKey( spep_1 + 217, ba_01, 227 );
setEffAlphaKey( spep_1 + 219, ba_01, 142 );
setEffAlphaKey( spep_1 + 221, ba_01, 0 );

-- 書き文字エントリー　ズンッ --
zun_01 = entryEffectLife( spep_1 + 249,  10016, 10, 0x100, -1, 0, 53.5, -20.9 );    -- ズンッ
setEffMoveKey( spep_1 + 249, zun_01, 53.5, -20.9 , 0 );
setEffMoveKey( spep_1 + 251, zun_01, 50.9, 36.2 , 0 );
setEffMoveKey( spep_1 + 253, zun_01, 50, 55.3 , 0 );
setEffMoveKey( spep_1 + 255, zun_01, 49.9, 57 , 0 );
setEffMoveKey( spep_1 + 257, zun_01, 49.7, 58.7 , 0 );
setEffMoveKey( spep_1 + 259, zun_01, 49.5, 60.4 , 0 );
setEffScaleKey( spep_1 + 249, zun_01, 1.32, 1.32 );
setEffScaleKey( spep_1 + 251, zun_01, 1.63, 1.63 );
setEffScaleKey( spep_1 + 253, zun_01, 1.73, 1.73 );
setEffScaleKey( spep_1 + 255, zun_01, 1.75, 1.75 );
setEffScaleKey( spep_1 + 257, zun_01, 1.77, 1.77 );
setEffScaleKey( spep_1 + 259, zun_01, 1.79, 1.79 );
setEffRotateKey( spep_1 + 249, zun_01, 0 );
setEffRotateKey( spep_1 + 259, zun_01, 0 );
setEffAlphaKey( spep_1 + 249, zun_01, 255 );
setEffAlphaKey( spep_1 + 259, zun_01, 255 );
setEffAlphaKey( spep_1 + 261, zun_01, 170 );
setEffAlphaKey( spep_1 + 263, zun_01, 85 );
setEffAlphaKey( spep_1 + 265, zun_01, 0 );


-- 目線及び台詞カットイン --
--entryEffect(  spep_1+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_1+316,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+316,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー　ゴゴゴ --
ctgogogo_2 = entryEffectLife( spep_1+329, 190006,73, 0x100, -1, -20, 0, 510);    -- ゴゴゴ・・・
setEffShake( spep_1+329, ctgogogo_2, 73, 10);
setEffMoveKey( spep_1+329,ctgogogo_2, -20, 510);
setEffScaleKey( spep_1+329, ctgogogo_2,-0.8,0.8);
setEffRotateKey( spep_1+329, ctgogogo_2, 0);
setEffAlphaKey( spep_1+329, ctgogogo_2, 255);
setEffMoveKey( spep_1+402,ctgogogo_2, -20, 510);
setEffScaleKey( spep_1+402, ctgogogo_2,-0.8,0.8);
setEffRotateKey( spep_1+402, ctgogogo_2, 0);
setEffAlphaKey( spep_1+402, ctgogogo_2, 255);

entryFade(spep_1,0,0,8,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+282,8,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+394,6,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_1, 0, 402, 0, 0, 0, 0, 200);  -- 黒　背景

--SE--
playSe( spep_1 + 15, 1010);
playSe( spep_1 + 51, 1000);
playSe( spep_1 + 85, 1001);
playSe( spep_1 + 119, 1013);
playSe( spep_1 + 165, 1011);
playSe( spep_1 + 249, 1014);
playSe( spep_1 + 319, SE_04);

--次の準備
spep_2=spep_1+402;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen9=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;

------------------------------------------------------
-- 発射(200F)
------------------------------------------------------

hassya03=entryEffectLife(spep_3,SP_04x,198,0x100,-1,0,0,0);   -- 発射(200F)
setEffMoveKey( spep_3, hassya03,  0,  0);
setEffScaleKey( spep_3, hassya03,1.0,1.0);
setEffAlphaKey( spep_3, hassya03,255);
setEffRotateKey( spep_3, hassya03,0);
setEffMoveKey( spep_3 + 198, hassya03,  0,  0);
setEffScaleKey( spep_3 + 198, hassya03,1.0,1.0);
setEffAlphaKey( spep_3 + 198, hassya03,255);
setEffRotateKey( spep_3 + 198, hassya03,0);

--集中線--
shuchusen_3 = entryEffectLife( spep_3 + 91, 906, 107, 0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_3 + 91,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 91,  shuchusen_3,  1.5,  1.5);
setEffRotateKey( spep_3 + 91,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 91,  shuchusen_3,  255);
setEffMoveKey( spep_3 + 198,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 198,  shuchusen_3,  1.5,  1.5);
setEffRotateKey( spep_3 + 198,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 198,  shuchusen_3,  255);

--黒背景
entryFadeBg(spep_3, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背景
entryFadeBg(spep_3 + 90, 0, 108, 0, 0, 0, 0, 255);  -- 黒　背景

entryFade(spep_3,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+188,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE--
playSe(spep_3,SE_04);
playSe(spep_3 + 91,SE_07);

--次の準備
spep_4=spep_3+198;

------------------------------------------------------
-- 火柱(160F)
------------------------------------------------------

fire04=entryEffect(spep_4,SP_05x,0x80,-1,0,0,0);   -- 火柱(160F)
setEffMoveKey( spep_4, fire04,  0,  0);
setEffScaleKey(spep_4,fire04,1.0,1.0);
setEffAlphaKey(spep_4,fire04,255);
setEffRotateKey(spep_4,fire04,0);

--黒背景
entryFadeBg(spep_4, 0, 160, 0, 0, 0, 0, 255);  -- 黒　背景

entryFade(spep_4,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE--
playSe(spep_4,SE_10);
seId4=playSe( spep_4+1,1044);
stopSe( spep_4+150,seId4,0);

-- ダメージ表示
dealDamage(spep_4+30);

entryFade( spep_4+144, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_4+154);


end
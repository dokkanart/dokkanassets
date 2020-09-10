--4016550 超サイヤ人ゴッドSSベジータ_ファイナルブロー
--sp_effect_b4_00085

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト登録
SP_01=	153201	;--	発射
SP_02=	153202	;--	着弾〜迫る・手前
SP_03=	153203	;--	着弾〜迫る・奥
SP_04=	153204	;--	手前に迫る
SP_05=	153205	;--	ナビ構え
SP_06=	153206	;--	パンチヒット〜ラスト・手前
SP_07=	153207	;--	パンチヒット〜ラスト・奥

--敵
SP_01x=	153201	;--	発射
SP_02x=	153202	;--	着弾〜迫る・手前
SP_03x=	153203	;--	着弾〜迫る・奥
SP_04x=	153204	;--	手前に迫る
SP_05x=	153205	;--	ナビ構え
SP_06x=	153206	;--	パンチヒット〜ラスト・手前
SP_07x=	153207	;--	パンチヒット〜ラスト・奥

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

----------------------------------------------------------------------------------------------------------
--味方側
-----------------------------------------------------------------------------------------------------------
------------------------------------------------------
--構え
------------------------------------------------------
spep_0=0;
--エフェクト
kidan=entryEffectLife(spep_0,SP_01,100,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, kidan, 0, 0 , 0 );

setEffScaleKey(spep_0,kidan,1.0,1.0);
setEffScaleKey(spep_0+100,kidan,1.0,1.0);

setEffRotateKey(spep_0,kidan,0);
setEffRotateKey(spep_0+100,kidan,0);

setEffAlphaKey(spep_0,kidan,255);
setEffAlphaKey(spep_0+100,kidan,255);

--文字エントリー
ctzudodo = entryEffectLife( spep_0 -3 + 12,  10014, 88, 0x100, -1, 0, 51.7, 331.2 );

setEffMoveKey( spep_0 -3 + 12, ctzudodo, 51.7, 331.2 , 0 );
setEffMoveKey( spep_0 -3 + 14, ctzudodo, 46.4, 315.8 , 0 );
setEffMoveKey( spep_0 -3 + 16, ctzudodo, 56.3, 325.3 , 0 );
setEffMoveKey( spep_0 -3 + 18, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 20, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 22, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 76, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 80, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 82, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 84, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 86, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 88, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 90, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 92, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 94, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 96, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 98, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 100, ctzudodo, 45.9, 301.3 , 0 );

setEffScaleKey( spep_0 -3 + 12, ctzudodo, 1.07, 1.07 );
setEffScaleKey( spep_0 -3 + 14, ctzudodo, 1.63, 1.63 );
setEffScaleKey( spep_0 -3 + 16, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_0 -3 + 18, ctzudodo, 2.75, 2.75 );
setEffScaleKey( spep_0 -3 + 100, ctzudodo, 2.75, 2.75 );

setEffRotateKey( spep_0 -3 + 12, ctzudodo, 48.3 );
setEffRotateKey( spep_0 -3 + 100, ctzudodo, 48.3);

setEffAlphaKey( spep_0 -3 + 12, ctzudodo, 255 );
setEffAlphaKey( spep_0 -3 + 100, ctzudodo, 255 );
--SE
playSe( spep_0 + 14, 1016 );  --気弾
playSe( spep_0 + 22, 1016 );  --気弾
SE=playSe( spep_0 + 26, 1016 );  --気弾
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

playSe( spep_0 + 30, 1016 );  --気弾
playSe( spep_0 + 36, 1016 );  --気弾
playSe( spep_0 + 42, 1016 );  --気弾
playSe( spep_0 + 46, 1016 );  --気弾
playSe( spep_0 + 52, 1016 );  --気弾
playSe( spep_0 + 58, 1016 );  --気弾
playSe( spep_0 + 64, 1016 );  --気弾
playSe( spep_0 + 70, 1016 );  --気弾
playSe( spep_0 + 74, 1016 );  --気弾
playSe( spep_0 + 80, 1016 );  --気弾
playSe( spep_0 + 84, 1016 );  --気弾
playSe( spep_0 + 88, 1016 );  --気弾
playSe( spep_0 + 92, 1016 );  --気弾

-- ** ホワイトフェード ** --
entryFade( spep_0 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+100;

-----------------------------------------------------
--突進
------------------------------------------------------
--エフェクト(前)
tossin_f=entryEffectLife(spep_1,SP_02,110,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, tossin_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 110, tossin_f, 0, 0 , 0 );

setEffScaleKey(spep_1,tossin_f,1.0,1.0);
setEffScaleKey(spep_1+110,tossin_f,1.0,1.0);

setEffRotateKey(spep_1,tossin_f,0);
setEffRotateKey(spep_1+110,tossin_f,0);

setEffAlphaKey(spep_1,tossin_f,255);
setEffAlphaKey(spep_1+110,tossin_f,255);

--エフェクト(後)
tossin_b=entryEffectLife(spep_1,SP_03,110,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, tossin_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 110, tossin_b, 0, 0 , 0 );

setEffScaleKey(spep_1,tossin_b,1.0,1.0);
setEffScaleKey(spep_1+110,tossin_b,1.0,1.0);

setEffRotateKey(spep_1,tossin_b,0);
setEffRotateKey(spep_1+110,tossin_b,0);

setEffAlphaKey(spep_1,tossin_b,255);
setEffAlphaKey(spep_1+110,tossin_b,255);


--てき
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1 -3 + 108, 1, 0 );
changeAnime( spep_1  + 0, 1, 100 );
changeAnime( spep_1 -3 + 20, 1, 106 );

--setMoveKey( spep_1  + 0, 1, -49.4, 78.4 , 0 );
setMoveKey( spep_1  + 0, 1, -30.7, 70.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -12, 61.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 6.7, 53.5 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 25.4, 45.2 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 44.1, 36.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 62.8, 28.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 81.4, 20.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 100.1, 12.1 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 99.6, 11.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 104.3, 23.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 107.6, 34.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 95, 29.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 106.3, 33.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 101.7, 24.5 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 105, 31.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 96.4, 23.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 103.8, 30.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 99.1, 25.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 102.5, 29.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 93.8, 20.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 101.2, 27.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 92.5, 23.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 99.9, 26.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 95.2, 18 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 98.6, 25.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 90, 16.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 97.3, 24 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 92.7, 19.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 96, 22.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 87.4, 18 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 94.7, 21.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 90.1, 12.7 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 93.5, 20.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 84.8, 15.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 92.2, 18.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 87.5, 14.1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 90.9, 17.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 82.3, 12.7 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 89.6, 16.1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 85.7, 7.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 89.8, 14.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 86, 9.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 90.1, 12.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 82.3, 2.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 90.5, 9.2 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 86.8, 3.3 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 91.1, 5.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 83.4, -1.1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 91.7, 0.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 88.1, -10.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 92.5, -5.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 88.9, -16.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 93.4, -11.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 85.8, -23.3 , 0 );

--setScaleKey( spep_1 -3 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_1  + 0, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 4, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 6, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 8, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 10, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 12, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 16, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 19, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 20, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 22, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 24, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 26, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 28, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 30, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 32, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 34, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 36, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 38, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 42, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 44, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 46, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 48, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 52, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 54, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 56, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 58, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 60, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 62, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 64, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 66, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 68, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 70, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 72, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 74, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 76, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 78, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 80, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 82, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 86, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 88, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 90, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 92, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 94, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 96, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 98, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 100, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 102, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 104, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 106, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 108, 1, 0.69, 0.69 );

setRotateKey( spep_1  + 0, 1, 4.7 );
setRotateKey( spep_1 -3 + 19, 1, 4.7 );
setRotateKey( spep_1 -3 + 20, 1, -28.3 );
setRotateKey( spep_1 -3 + 30, 1, -28.3 );
setRotateKey( spep_1 -3 + 32, 1, -28.4 );
setRotateKey( spep_1 -3 + 62, 1, -28.4 );
setRotateKey( spep_1 -3 + 108, 1, -28.5 );

--SE
playSe( spep_1+ 18, 1023 );  --爆発
--playSe( spep_1+ 24, 1023 );  --爆発
playSe( spep_1+ 30, 1023 );  --爆発
--playSe( spep_1+ 34, 1023 );  --爆発
playSe( spep_1+ 40, 1023 );  --爆発
--playSe( spep_1+ 44, 1023 );  --爆発
playSe( spep_1+ 54, 1023 );  --爆発
--playSe( spep_1+ 60, 1023 );  --爆発
playSe( spep_1+ 68, 1023 );  --爆発
--playSe( spep_1+ 72, 1023 );  --爆発
playSe( spep_1+ 80, 44 );  --突進


-- ** ホワイトフェード ** --
entryFade( spep_1 + 100, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


--次の準備
spep_2=spep_1+110;

-----------------------------------------------------
--突進2
------------------------------------------------------
--エフェクト
tossin2=entryEffectLife(spep_2,SP_04,60,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, tossin2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, tossin2, 0, 0 , 0 );

setEffScaleKey(spep_2,tossin2,1.0,1.0);
setEffScaleKey(spep_2+60,tossin2,1.0,1.0);

setEffRotateKey(spep_2,tossin2,0);
setEffRotateKey(spep_2+60,tossin2,0);

setEffAlphaKey(spep_2,tossin2,255);
setEffAlphaKey(spep_2+60,tossin2,255);

--集中線
shuchusen1 = entryEffectLife( spep_2+18 ,  906, 42, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_2 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2+60 , shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 , shuchusen1, 1.09, 1.31 );
setEffScaleKey( spep_2 + 60, shuchusen1, 1.09, 1.31 );

setEffRotateKey( spep_2 , shuchusen1, 0 );
setEffRotateKey( spep_2 + 60, shuchusen1, 0 );

setEffAlphaKey( spep_2+18 , shuchusen1, 0 );
setEffAlphaKey( spep_2 +20, shuchusen1, 43 );
setEffAlphaKey( spep_2 + 22, shuchusen1, 85 );
setEffAlphaKey( spep_2 + 24, shuchusen1, 128 );
setEffAlphaKey( spep_2 + 26, shuchusen1, 170 );
setEffAlphaKey( spep_2 + 28, shuchusen1, 213 );
setEffAlphaKey( spep_2 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 60, shuchusen1, 255 );

--SE
playSe( spep_2, 9 );  --突進

-- ** ホワイトフェード ** --
entryFade( spep_2 + 54, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3=spep_2+60;

------------------------------------------------------
-- カードカットイン(90F) --既存のものの流用
------------------------------------------------------


playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  shuchusen,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_3,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen,  0);
setEffRotateKey(  spep_3+90,  shuchusen,  0);
setEffAlphaKey(  spep_3,  shuchusen,  255);
setEffAlphaKey(  spep_3+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_3+82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3 + 90;
-----------------------------------------------------
--パンチ
------------------------------------------------------

--エフェクト
punch=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_4 + 180, punch, 0, 0 , 0 );

setEffScaleKey(spep_4,punch,1.0,1.0);
setEffScaleKey(spep_4+180,punch,1.0,1.0);

setEffRotateKey(spep_4,punch,0);
setEffRotateKey(spep_4+180,punch,0);

setEffAlphaKey(spep_4,punch,255);
setEffAlphaKey(spep_4+180,punch,255);

--文字エントリー
ctzuo = entryEffectLife( spep_4  + 0,  10012, 61, 0x100, -1, 0, 78.7, 260.5 );--ズオッ

--setEffMoveKey( spep_4 -3 + 0, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4  , ctzuo, 100.1, 290 , 0 );
setEffMoveKey( spep_4 -3 + 4, ctzuo, 112.3, 328.8 , 0 );
setEffMoveKey( spep_4 -3 + 6, ctzuo, 138.9, 353.1 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctzuo, 129.2, 362.9 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctzuo, 139.1, 353.1 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctzuo, 129.4, 363 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctzuo, 139.5, 353 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, 129.6, 363 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, 139.9, 352.9 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, 129.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, 140.1, 352.8 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, 130, 363.1 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, 140.5, 352.7 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, 130.2, 363.1 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, 140.9, 352.6 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo, 130.4, 363.2 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo, 141.2, 352.4 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo, 130.6, 363.2 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, 141.5, 352.4 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzuo, 130.7, 363.3 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzuo, 141.9, 352.3 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo, 131, 363.3 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo, 142.2, 352.2 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo, 131.2, 363.3 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, 142.5, 352.1 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, 131.3, 363.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, 142.9, 352 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzuo, 131.6, 363.4 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzuo, 169.8, 347 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctzuo, 170.9, 368 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzuo, 223.4, 337.3 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzuo, 250.3, 332.4 , 0 );

setEffScaleKey( spep_4 , ctzuo, 0.78, 0.78 );
setEffScaleKey( spep_4 -3 + 4, ctzuo, 1.23, 1.23 );
setEffScaleKey( spep_4 -3 + 6, ctzuo, 1.67, 1.67 );
setEffScaleKey( spep_4 -3 + 10, ctzuo, 1.67, 1.67 );
setEffScaleKey( spep_4 -3 + 12, ctzuo, 1.71, 1.71 );
setEffScaleKey( spep_4 -3 + 16, ctzuo, 1.71, 1.71 );
setEffScaleKey( spep_4 -3 + 18, ctzuo, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 22, ctzuo, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 24, ctzuo, 1.77, 1.77 );
setEffScaleKey( spep_4 -3 + 28, ctzuo, 1.77, 1.77 );
setEffScaleKey( spep_4 -3 + 30, ctzuo, 1.81, 1.81 );
setEffScaleKey( spep_4 -3 + 32, ctzuo, 1.81, 1.81 );
setEffScaleKey( spep_4 -3 + 34, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_4 -3 + 38, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_4 -3 + 40, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_4 -3 + 44, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_4 -3 + 46, ctzuo, 1.91, 1.91 );
setEffScaleKey( spep_4 -3 + 50, ctzuo, 1.91, 1.91 );
setEffScaleKey( spep_4 -3 + 52, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 -3 + 56, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 -3 + 58, ctzuo, 3.17, 3.17 );
setEffScaleKey( spep_4 -3 + 60, ctzuo, 4.4, 4.4 );
setEffScaleKey( spep_4 -3 + 62, ctzuo, 5.6, 5.6 );
setEffScaleKey( spep_4 -3 + 64, ctzuo, 6.82, 6.82 );


setEffRotateKey( spep_4  + 0, ctzuo, 27.2 );
setEffRotateKey( spep_4 -3 + 64, ctzuo, 27.2 );

setEffAlphaKey( spep_4  + 0, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 56, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 58, ctzuo, 191 );
setEffAlphaKey( spep_4 -3 + 60, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 62, ctzuo, 64 );
setEffAlphaKey( spep_4 -3 + 64, ctzuo, 0 );
--[[
--流線
ryusen1 = entryEffectLife( spep_4 + 98,  920, 178, 0x80, -1, 0, 0,0 );

setEffMoveKey( spep_4 + 98, ryusen1, 0,0 , 0 );
setEffMoveKey( spep_4 + 178, ryusen1, 0,0 , 0 );

setEffScaleKey( spep_4 + 98, ryusen1, 11.67, 1.34 );
setEffScaleKey( spep_4 + 178, ryusen1, 11.67, 1.34 );

setEffRotateKey( spep_4 + 98, ryusen1, -44.7 );
setEffRotateKey( spep_4 + 178, ryusen1, -44.7 );

setEffAlphaKey( spep_4 + 0, ryusen1, 0 );
setEffAlphaKey( spep_4 + 97, ryusen1, 0 );
setEffAlphaKey( spep_4 + 98, ryusen1, 255 );
setEffAlphaKey( spep_4 + 178, ryusen1, 255 );
]]

--集中線
shuchusen2 = entryEffectLife( spep_4  + 64,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 64, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4  + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4  + 64, shuchusen2, 1.21, 1.6 );
setEffScaleKey( spep_4  + 90, shuchusen2, 1.21, 1.6 );

setEffRotateKey( spep_4  + 64, shuchusen2, 0 );
setEffRotateKey( spep_4  + 90, shuchusen2, 0 );

setEffAlphaKey( spep_4  + 64, shuchusen2, 0 );
setEffAlphaKey( spep_4  + 65, shuchusen2, 255 );
setEffAlphaKey( spep_4  + 66, shuchusen2, 255 );
setEffAlphaKey( spep_4  + 82, shuchusen2, 255 );
setEffAlphaKey( spep_4  + 84, shuchusen2, 191 );
setEffAlphaKey( spep_4  + 86, shuchusen2, 128 );
setEffAlphaKey( spep_4  +88, shuchusen2, 64 );
setEffAlphaKey( spep_4  + 90, shuchusen2, 0 );

--SE
playSe( spep_4, SE_04 );  --突進
playSe( spep_4+66, 8 );  --手を振りかざす
playSe( spep_4+100, 44 );  --突進

--***背景と白フェード***
entryFade( spep_4+160, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 160);     -- white fade

--次の準備
spep_5=spep_4+164;

-----------------------------------------------------
--パンチ2
------------------------------------------------------
--エフェクト(前)
punch2_f=entryEffect(spep_5,SP_06,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, punch2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 430, punch2_f, 0, 0 , 0 );

setEffScaleKey(spep_5,punch2_f,1.0,1.0);
setEffScaleKey(spep_5+430,punch2_f,1.0,1.0);

setEffRotateKey(spep_5,punch2_f,0);
setEffRotateKey(spep_5+430,punch2_f,0);

setEffAlphaKey(spep_5,punch2_f,255);
setEffAlphaKey(spep_5+430,punch2_f,255);

--エフェクト(後)
punch2_b=entryEffect(spep_5,SP_07,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, punch2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 430, punch2_b, 0, 0 , 0 );

setEffScaleKey(spep_5,punch2_b,1.0,1.0);
setEffScaleKey(spep_5+430,punch2_b,1.0,1.0);

setEffRotateKey(spep_5,punch2_b,0);
setEffRotateKey(spep_5+430,punch2_b,0);

setEffAlphaKey(spep_5,punch2_b,255);
setEffAlphaKey(spep_5+430,punch2_b,255);

-- ** 顔カットイン ** --
speff = entryEffect( spep_5 + 110, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_5 + 110, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_5 + 122,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_5 + 122, ctgogo, 72, 10 );
 
setEffMoveKey( spep_5 + 122, ctgogo, -9.9, 515.8 , 0 );
setEffMoveKey( spep_5 + 194, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_5 + 122, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_5 + 186, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_5 + 188, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_5 + 192, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_5 + 194, ctgogo, 1.69, 1.69 );
 
setEffRotateKey( spep_5 + 122, ctgogo, 0 );
setEffRotateKey( spep_5 + 192, ctgogo, 0 );
 
setEffAlphaKey( spep_5 + 122, ctgogo, 0 );
setEffAlphaKey( spep_5 + 123, ctgogo, 255 );
setEffAlphaKey( spep_5 + 124, ctgogo, 255 );
setEffAlphaKey( spep_5 + 194, ctgogo, 255 );




shuchusen3 = entryEffectLife( spep_5 -183 + 270,  906, 148, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 -183 + 270, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 -183 + 418, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 -183 + 270, shuchusen3, 1.21, 1.6 );
setEffScaleKey( spep_5 -183 + 380, shuchusen3, 1.21, 1.6 );
setEffScaleKey( spep_5 -183 + 382, shuchusen3, 1.2, 1.58 );
setEffScaleKey( spep_5 -183 + 384, shuchusen3, 1.2, 1.56 );
setEffScaleKey( spep_5 -183 + 386, shuchusen3, 1.19, 1.54 );
setEffScaleKey( spep_5 -183 + 388, shuchusen3, 1.18, 1.51 );
setEffScaleKey( spep_5 -183 + 390, shuchusen3, 1.18, 1.49 );
setEffScaleKey( spep_5 -183 + 392, shuchusen3, 1.17, 1.47 );
setEffScaleKey( spep_5 -183 + 394, shuchusen3, 1.16, 1.45 );
setEffScaleKey( spep_5 -183 + 396, shuchusen3, 1.16, 1.43 );
setEffScaleKey( spep_5 -183 + 398, shuchusen3, 1.15, 1.41 );
setEffScaleKey( spep_5 -183 + 400, shuchusen3, 1.15, 1.39 );
setEffScaleKey( spep_5 -183 + 402, shuchusen3, 1.14, 1.37 );
setEffScaleKey( spep_5 -183 + 404, shuchusen3, 1.13, 1.35 );
setEffScaleKey( spep_5 -183 + 406, shuchusen3, 1.13, 1.33 );
setEffScaleKey( spep_5 -183 + 408, shuchusen3, 1.12, 1.31 );
setEffScaleKey( spep_5 -183 + 410, shuchusen3, 1.11, 1.29 );
setEffScaleKey( spep_5 -183 + 412, shuchusen3, 1.11, 1.27 );
setEffScaleKey( spep_5 -183 + 414, shuchusen3, 1.1, 1.25 );
setEffScaleKey( spep_5 -183 + 416, shuchusen3, 1.1, 1.23 );
setEffScaleKey( spep_5 -183 + 418, shuchusen3, 1.09, 1.21 );

setEffRotateKey( spep_5 -183 + 270, shuchusen3, 0 );
setEffRotateKey( spep_5 -183 + 418, shuchusen3, 0 );

setEffAlphaKey( spep_5 -183 + 270, shuchusen3, 255 );
setEffAlphaKey( spep_5 -183 + 418, shuchusen3, 255 );

--てき
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 88, 1, 0 );
setDisp( spep_5 + 257, 1, 1 );
setDisp( spep_5 + 258, 1, 1 );
setDisp( spep_5 + 272, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );


--setMoveKey( spep_5-3 + 0, 1, 70.1, -14.5 , 0 );
setMoveKey( spep_5 + 2, 1, 63.8, -25.5 , 0 );
setMoveKey( spep_5-3 + 4, 1, 74.7, -0.7 , 0 );
setMoveKey( spep_5-3 + 6, 1, 63, 3.9 , 0 );
setMoveKey( spep_5-3 + 8, 1, 84.5, 28.2 , 0 );
setMoveKey( spep_5-3 + 10, 1, 83.3, 40.3 , 0 );
setMoveKey( spep_5-3 + 12, 1, 91, 48.3 , 0 );
setMoveKey( spep_5-3 + 14, 1, 74.8, 32.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 90.5, 48.1 , 0 );
setMoveKey( spep_5-3 + 18, 1, 74.3, 40.1 , 0 );
setMoveKey( spep_5-3 + 20, 1, 90, 48 , 0 );
setMoveKey( spep_5-3 + 22, 1, 81.8, 31.9 , 0 );
setMoveKey( spep_5-3 + 24, 1, 89.5, 47.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 81.3, 39.8 , 0 );
setMoveKey( spep_5-3 + 28, 1, 89, 47.7 , 0 );
setMoveKey( spep_5-3 + 30, 1, 72.8, 31.6 , 0 );
setMoveKey( spep_5-3 + 32, 1, 88.5, 47.6 , 0 );
setMoveKey( spep_5-3 + 34, 1, 80.3, 31.5 , 0 );
setMoveKey( spep_5-3 + 36, 1, 88, 47.4 , 0 );
setMoveKey( spep_5-3 + 38, 1, 71.8, 39.4 , 0 );
setMoveKey( spep_5-3 + 40, 1, 87.5, 47.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, 79.3, 39.2 , 0 );
setMoveKey( spep_5-3 + 44, 1, 87, 47.1 , 0 );
setMoveKey( spep_5-3 + 46, 1, 86.7, 47.1 , 0 );
setMoveKey( spep_5-3 + 48, 1, 86.5, 47 , 0 );
setMoveKey( spep_5-3 + 50, 1, 86.2, 46.9 , 0 );
setMoveKey( spep_5-3 + 52, 1, 86, 46.9 , 0 );
setMoveKey( spep_5-3 + 54, 1, 85.7, 46.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 85.5, 46.7 , 0 );
setMoveKey( spep_5-3 + 58, 1, 85.2, 46.7 , 0 );
setMoveKey( spep_5-3 + 60, 1, 85, 46.6 , 0 );
setMoveKey( spep_5-3 + 62, 1, 84.7, 46.5 , 0 );
setMoveKey( spep_5-3 + 64, 1, 84.5, 46.4 , 0 );
setMoveKey( spep_5-3 + 66, 1, 84.2, 46.4 , 0 );
setMoveKey( spep_5-3 + 68, 1, 84, 46.3 , 0 );
setMoveKey( spep_5-3 + 70, 1, 83.7, 46.2 , 0 );
setMoveKey( spep_5-3 + 72, 1, 85.6, 46.7 , 0 );
setMoveKey( spep_5-3 + 74, 1, 91.3, 48 , 0 );
setMoveKey( spep_5-3 + 76, 1, 100.7, 50.1 , 0 );
setMoveKey( spep_5-3 + 78, 1, 113.9, 53.1 , 0 );
setMoveKey( spep_5-3 + 80, 1, 130.9, 57 , 0 );
setMoveKey( spep_5-3 + 82, 1, 151.7, 61.7 , 0 );
setMoveKey( spep_5-3 + 84, 1, 176.2, 67.3 , 0 );
setMoveKey( spep_5-3 + 86, 1, 204.6, 73.8 , 0 );
setMoveKey( spep_5-3 + 88, 1, 236.7, 81.1 , 0 );
setMoveKey( spep_5-3 + 90, 1, 1341.4, 1075.2 , 0 );
setMoveKey( spep_5-3 + 92, 1, 1144.7, 918.2 , 0 );
setMoveKey( spep_5-3 + 94, 1, 924, 745.1 , 0 );
setMoveKey( spep_5-3 + 96, 1, 735.5, 588.2 , 0 );
setMoveKey( spep_5-3 + 98, 1, 522.9, 407.1 , 0 );
setMoveKey( spep_5-3 + 100, 1, 326.3, 258.2 , 0 );
setMoveKey( spep_5-3 + 102, 1, 97.7, 85.1 , 0 );
setMoveKey( spep_5-3 + 104, 1, 121.6, 92.8 , 0 );
setMoveKey( spep_5-3 + 106, 1, 113.5, 84.3 , 0 );
setMoveKey( spep_5-3 + 108, 1, 121.4, 92 , 0 );
setMoveKey( spep_5-3 + 110, 1, 113.3, 75.6 , 0 );
setMoveKey( spep_5-3 + 112, 1, 121.1, 91.3 , 0 );
setMoveKey( spep_5-3 + 114, 1, 113, 90.9 , 0 );
setMoveKey( spep_5-3 + 116, 1, 120.9, 90.5 , 0 );
setMoveKey( spep_5-3 + 118, 1, 104.7, 74.1 , 0 );
setMoveKey( spep_5-3 + 120, 1, 120.6, 89.8 , 0 );
setMoveKey( spep_5-3 + 122, 1, 112.5, 81.3 , 0 );
setMoveKey( spep_5-3 + 124, 1, 120.4, 89 , 0 );
setMoveKey( spep_5-3 + 126, 1, 104.2, 72.5 , 0 );
setMoveKey( spep_5-3 + 128, 1, 120.2, 88.3 , 0 );
setMoveKey( spep_5-3 + 130, 1, 112, 79.8 , 0 );
setMoveKey( spep_5-3 + 132, 1, 119.9, 87.5 , 0 );
setMoveKey( spep_5-3 + 134, 1, 103.7, 79 , 0 );
setMoveKey( spep_5-3 + 136, 1, 119.7, 86.8 , 0 );
setMoveKey( spep_5-3 + 138, 1, 111.5, 78.3 , 0 );
setMoveKey( spep_5-3 + 140, 1, 119.4, 86 , 0 );
setMoveKey( spep_5-3 + 142, 1, 103.2, 77.5 , 0 );
setMoveKey( spep_5-3 + 144, 1, 119.2, 85.2 , 0 );
setMoveKey( spep_5-3 + 146, 1, 111, 68.8 , 0 );
setMoveKey( spep_5-3 + 148, 1, 118.9, 84.5 , 0 );
setMoveKey( spep_5-3 + 150, 1, 110.8, 76 , 0 );
setMoveKey( spep_5-3 + 152, 1, 118.7, 83.7 , 0 );
setMoveKey( spep_5-3 + 154, 1, 102.4, 67.2 , 0 );
setMoveKey( spep_5-3 + 156, 1, 118.4, 83 , 0 );
setMoveKey( spep_5-3 + 158, 1, 110.3, 74.5 , 0 );
setMoveKey( spep_5-3 + 160, 1, 118.2, 82.2 , 0 );
setMoveKey( spep_5-3 + 162, 1, 101.9, 73.7 , 0 );
setMoveKey( spep_5-3 + 164, 1, 117.9, 81.5 , 0 );
setMoveKey( spep_5-3 + 166, 1, 109.8, 65 , 0 );
setMoveKey( spep_5-3 + 168, 1, 117.7, 80.7 , 0 );
setMoveKey( spep_5-3 + 170, 1, 109.6, 72.2 , 0 );
setMoveKey( spep_5-3 + 172, 1, 117.4, 79.9 , 0 );
setMoveKey( spep_5-3 + 174, 1, 101.2, 71.5 , 0 );
setMoveKey( spep_5-3 + 176, 1, 117.2, 79.2 , 0 );
setMoveKey( spep_5-3 + 178, 1, 109.1, 62.7 , 0 );
setMoveKey( spep_5-3 + 180, 1, 116.9, 78.4 , 0 );
setMoveKey( spep_5-3 + 182, 1, 108.8, 70 , 0 );
setMoveKey( spep_5-3 + 184, 1, 116.7, 77.7 , 0 );
setMoveKey( spep_5-3 + 186, 1, 100.5, 69.2 , 0 );
setMoveKey( spep_5-3 + 188, 1, 116.4, 76.9 , 0 );
setMoveKey( spep_5-3 + 190, 1, 108.3, 68.4 , 0 );
setMoveKey( spep_5-3 + 192, 1, 116.2, 76.2 , 0 );
setMoveKey( spep_5-3 + 194, 1, 100, 67.7 , 0 );
setMoveKey( spep_5-3 + 196, 1, 115.9, 75.4 , 0 );
setMoveKey( spep_5-3 + 198, 1, 107.8, 66.9 , 0 );
setMoveKey( spep_5-3 + 200, 1, 116.8, 75.8 , 0 );
setMoveKey( spep_5-3 + 202, 1, 111.6, 61.9 , 0 );
setMoveKey( spep_5-3 + 204, 1, 124.3, 81.8 , 0 );
setMoveKey( spep_5-3 + 206, 1, 114.8, 79 , 0 );
setMoveKey( spep_5-3 + 208, 1, 139.4, 93.9 , 0 );
setMoveKey( spep_5-3 + 210, 1, 141.8, 94.1 , 0 );
setMoveKey( spep_5-3 + 212, 1, 162.1, 112 , 0 );
setMoveKey( spep_5-3 + 214, 1, 160.2, 115.2 , 0 );
setMoveKey( spep_5-3 + 216, 1, 192.4, 136 , 0 );
setMoveKey( spep_5-3 + 218, 1, 202.4, 134.2 , 0 );
setMoveKey( spep_5-3 + 220, 1, 230.3, 166.1 , 0 );
setMoveKey( spep_5-3 + 222, 1, 235.9, 175.2 , 0 );
setMoveKey( spep_5-3 + 224, 1, 275.7, 202 , 0 );
setMoveKey( spep_5-3 + 226, 1, 293.3, 206.1 , 0 );
setMoveKey( spep_5-3 + 228, 1, 328.8, 243.9 , 0 );
setMoveKey( spep_5-3 + 230, 1, 350.2, 258.9 , 0 );
setMoveKey( spep_5-3 + 232, 1, 389.5, 291.6 , 0 );
setMoveKey( spep_5-3 + 234, 1, 406.6, 309.5 , 0 );
setMoveKey( spep_5-3 + 236, 1, 457.9, 345 , 0 );
setMoveKey( spep_5-3 + 238, 1, 487, 365.8 , 0 );
setMoveKey( spep_5-3 + 240, 1, 533.9, 404.1 , 0 );
setMoveKey( spep_5-3 + 242, 1, 698.7, 475 , 0 );
setMoveKey( spep_5-3 + 244, 1, 986.4, 620.7 , 0 );
setMoveKey( spep_5-3 + 246, 1, 1341.1, 783.9 , 0 );
setMoveKey( spep_5-3 + 248, 1, 1803.5, 1003.9 , 0 );
setMoveKey( spep_5-3 + 250, 1, 2341.9, 1246.7 , 0 );
setMoveKey( spep_5-3 + 252, 1, 2988.9, 1542.7 , 0 );
setMoveKey( spep_5-3 + 254, 1, 3705, 1849.2 , 0 );
setMoveKey( spep_5-3 + 256, 1, 4546.9, 2220.1 , 0 );
setMoveKey( spep_5-3 + 258, 1, 5458.7, 2595.9 , 0 );
setMoveKey( spep_5-3 + 260, 1, 331, 129.8 , 0 );
setMoveKey( spep_5-3 + 262, 1, 483.2, 356.1 , 0 );
setMoveKey( spep_5-3 + 264, 1, 495.6, 406.6 , 0 );
setMoveKey( spep_5-3 + 266, 1, 411.2, 333.4 , 0 );
setMoveKey( spep_5-3 + 268, 1, 273, 188.6 , 0 );
setMoveKey( spep_5-3 + 270, 1, 124, 24.3 , 0 );
setMoveKey( spep_5-3 + 272, 1, 7.3, -107.3 , 0 );
setMoveKey( spep_5-3 + 275, 1, -37.1, -157.1 , 0 );
setMoveKey( spep_5-3 + 276, 1, -50.5, -171.3 , 0 );
setMoveKey( spep_5-3 + 278, 1, -19.7, -137.1 , 0 );
setMoveKey( spep_5-3 + 280, 1, 18.8, -107.6 , 0 );
setMoveKey( spep_5-3 + 282, 1, 42.7, -89.1 , 0 );
setMoveKey( spep_5-3 + 284, 1, 68, -62.4 , 0 );
setMoveKey( spep_5-3 + 286, 1, 81.9, -50 , 0 );
setMoveKey( spep_5-3 + 288, 1, 97.3, -35.8 , 0 );
setMoveKey( spep_5-3 + 290, 1, 98.2, -35.8 , 0 );
setMoveKey( spep_5-3 + 292, 1, 104.2, -30 , 0 );
setMoveKey( spep_5-3 + 294, 1, 100.7, -30.6 , 0 );
setMoveKey( spep_5-3 + 296, 1, 103.6, -31.2 , 0 );
setMoveKey( spep_5-3 + 298, 1, 96.8, -35 , 0 );
setMoveKey( spep_5-3 + 300, 1, 103, -32.4 , 0 );
setMoveKey( spep_5-3 + 302, 1, 99.5, -39.3 , 0 );
setMoveKey( spep_5-3 + 304, 1, 102.3, -33.6 , 0 );
setMoveKey( spep_5-3 + 306, 1, 98.8, -34.3 , 0 );
setMoveKey( spep_5-3 + 308, 1, 101.7, -34.7 , 0 );
setMoveKey( spep_5-3 + 310, 1, 94.9, -41.8 , 0 );
setMoveKey( spep_5-3 + 312, 1, 101, -36 , 0 );
setMoveKey( spep_5-3 + 314, 1, 97.5, -39.8 , 0 );
setMoveKey( spep_5-3 + 316, 1, 100.4, -37.2 , 0 );
setMoveKey( spep_5-3 + 318, 1, 93.6, -41 , 0 );
setMoveKey( spep_5-3 + 320, 1, 99.7, -38.4 , 0 );
setMoveKey( spep_5-3 + 322, 1, 96.1, -42.3 , 0 );
setMoveKey( spep_5-3 + 324, 1, 99.1, -39.7 , 0 );
setMoveKey( spep_5-3 + 326, 1, 92.2, -46.7 , 0 );
setMoveKey( spep_5-3 + 328, 1, 98.3, -41 , 0 );
setMoveKey( spep_5-3 + 330, 1, 94.8, -44.8 , 0 );
setMoveKey( spep_5-3 + 332, 1, 97.7, -42.3 , 0 );
setMoveKey( spep_5-3 + 334, 1, 90.9, -49.2 , 0 );
setMoveKey( spep_5-3 + 336, 1, 97, -43.4 , 0 );
setMoveKey( spep_5-3 + 338, 1, 93.4, -47.3 , 0 );
setMoveKey( spep_5-3 + 340, 1, 96.3, -44.6 , 0 );
setMoveKey( spep_5-3 + 342, 1, 89.6, -48.5 , 0 );
setMoveKey( spep_5-3 + 344, 1, 92.3, -46 , 0 );
setMoveKey( spep_5-3 + 346, 1, 92, -49.8 , 0 );
setMoveKey( spep_5-3 + 348, 1, 94.9, -47.2 , 0 );
setMoveKey( spep_5-3 + 350, 1, 88.1, -51 , 0 );
setMoveKey( spep_5-3 + 352, 1, 94.1, -48.6 , 0 );
setMoveKey( spep_5-3 + 354, 1, 90.5, -52.5 , 0 );
setMoveKey( spep_5-3 + 356, 1, 93.4, -49.9 , 0 );

--setScaleKey( spep_5-3 + 0, 1, 6.92, 6.92 );
setScaleKey( spep_5 + 2, 1, 6.51, 6.51 );
setScaleKey( spep_5-3 + 4, 1, 5.77, 5.77 );
setScaleKey( spep_5-3 + 6, 1, 4.72, 4.72 );
setScaleKey( spep_5-3 + 8, 1, 3.36, 3.36 );
setScaleKey( spep_5-3 + 10, 1, 1.69, 1.69 );
setScaleKey( spep_5-3 + 12, 1, 1.67, 1.67 );
setScaleKey( spep_5-3 + 14, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 16, 1, 1.64, 1.64 );
setScaleKey( spep_5-3 + 18, 1, 1.63, 1.63 );
setScaleKey( spep_5-3 + 20, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 24, 1, 1.59, 1.59 );
setScaleKey( spep_5-3 + 26, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 28, 1, 1.56, 1.56 );
setScaleKey( spep_5-3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_5-3 + 34, 1, 1.52, 1.52 );
setScaleKey( spep_5-3 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 38, 1, 1.49, 1.49 );
setScaleKey( spep_5-3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_5-3 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_5-3 + 44, 1, 1.44, 1.44 );
setScaleKey( spep_5-3 + 46, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 48, 1, 1.42, 1.42 );
setScaleKey( spep_5-3 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 52, 1, 1.39, 1.39 );
setScaleKey( spep_5-3 + 54, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 56, 1, 1.36, 1.36 );
setScaleKey( spep_5-3 + 58, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 60, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 62, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 64, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 66, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 68, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 70, 1, 1.26, 1.26 );
setScaleKey( spep_5-3 + 72, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 74, 1, 1.94, 1.94 );
setScaleKey( spep_5-3 + 76, 1, 2.8, 2.8 );
setScaleKey( spep_5-3 + 78, 1, 3.99, 3.99 );
setScaleKey( spep_5-3 + 80, 1, 5.53, 5.53 );
setScaleKey( spep_5-3 + 82, 1, 7.41, 7.41 );
setScaleKey( spep_5-3 + 84, 1, 9.64, 9.64 );
setScaleKey( spep_5-3 + 86, 1, 12.2, 12.2 );
setScaleKey( spep_5-3 + 88, 1, 15.11, 15.11 );
setScaleKey( spep_5-3 + 90, 1, 4.41, 4.41 );
setScaleKey( spep_5-3 + 92, 1, 3.9, 3.9 );
setScaleKey( spep_5-3 + 94, 1, 3.4, 3.4 );
setScaleKey( spep_5-3 + 96, 1, 2.89, 2.89 );
setScaleKey( spep_5-3 + 98, 1, 2.38, 2.38 );
setScaleKey( spep_5-3 + 100, 1, 1.88, 1.88 );
setScaleKey( spep_5-3 + 102, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 108, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 110, 1, 1.36, 1.36 );
setScaleKey( spep_5-3 + 116, 1, 1.36, 1.36 );
setScaleKey( spep_5-3 + 118, 1, 1.35, 1.35 );
setScaleKey( spep_5-3 + 124, 1, 1.35, 1.35 );
setScaleKey( spep_5-3 + 126, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 132, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 134, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 142, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 144, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 150, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 152, 1, 1.31, 1.31 );
setScaleKey( spep_5-3 + 158, 1, 1.31, 1.31 );
setScaleKey( spep_5-3 + 160, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 166, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 168, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 174, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 176, 1, 1.28, 1.28 );
setScaleKey( spep_5-3 + 184, 1, 1.28, 1.28 );
setScaleKey( spep_5-3 + 186, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 192, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 194, 1, 1.26, 1.26 );
setScaleKey( spep_5-3 + 202, 1, 1.26, 1.26 );
setScaleKey( spep_5-3 + 204, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 206, 1, 1.28, 1.28 );
setScaleKey( spep_5-3 + 208, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 210, 1, 1.31, 1.31 );
setScaleKey( spep_5-3 + 212, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 214, 1, 1.35, 1.35 );
setScaleKey( spep_5-3 + 216, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 218, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 220, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 222, 1, 1.46, 1.46 );
setScaleKey( spep_5-3 + 224, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 226, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 228, 1, 1.58, 1.58 );
setScaleKey( spep_5-3 + 230, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 232, 1, 1.67, 1.67 );
setScaleKey( spep_5-3 + 234, 1, 1.72, 1.72 );
setScaleKey( spep_5-3 + 236, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 238, 1, 1.83, 1.83 );
setScaleKey( spep_5-3 + 240, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 242, 1, 2.38, 2.38 );
setScaleKey( spep_5-3 + 244, 1, 3.11, 3.11 );
setScaleKey( spep_5-3 + 246, 1, 4.09, 4.09 );
setScaleKey( spep_5-3 + 248, 1, 5.31, 5.31 );
setScaleKey( spep_5-3 + 250, 1, 6.78, 6.78 );
setScaleKey( spep_5-3 + 252, 1, 8.49, 8.49 );
setScaleKey( spep_5-3 + 254, 1, 10.45, 10.45 );
setScaleKey( spep_5-3 + 256, 1, 12.65, 12.65 );
setScaleKey( spep_5-3 + 258, 1, 15.1, 15.1 );
setScaleKey( spep_5-3 + 260, 1, 11.9, 11.9 );
setScaleKey( spep_5-3 + 262, 1, 8.84, 8.84 );
setScaleKey( spep_5-3 + 264, 1, 6.25, 6.25 );
setScaleKey( spep_5-3 + 266, 1, 4.13, 4.13 );
setScaleKey( spep_5-3 + 268, 1, 2.48, 2.48 );
setScaleKey( spep_5-3 + 270, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 272, 1, 0.59, 0.59 );
setScaleKey( spep_5-3 + 275, 1, 0.36, 0.36 );
setScaleKey( spep_5-3 + 276, 1, 1.02, 1.02 );
setScaleKey( spep_5-3 + 278, 1, 0.99, 0.99 );
setScaleKey( spep_5-3 + 280, 1, 0.97, 0.97 );
setScaleKey( spep_5-3 + 282, 1, 0.95, 0.95 );
setScaleKey( spep_5-3 + 284, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 286, 1, 0.92, 0.92 );
setScaleKey( spep_5-3 + 288, 1, 0.91, 0.91 );
setScaleKey( spep_5-3 + 290, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 306, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 308, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 316, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 318, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 324, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 326, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 342, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 344, 1, 0.86, 0.86 );
setScaleKey( spep_5-3 + 356, 1, 0.86, 0.86 );

setRotateKey( spep_5 + 0, 1, -22 );
setRotateKey( spep_5-3 + 202, 1, -22 );
setRotateKey( spep_5-3 + 204, 1, -21.9 );
setRotateKey( spep_5-3 + 206, 1, -21.8 );
setRotateKey( spep_5-3 + 208, 1, -21.7 );
setRotateKey( spep_5-3 + 210, 1, -21.6 );
setRotateKey( spep_5-3 + 212, 1, -21.5 );
setRotateKey( spep_5-3 + 214, 1, -21.3 );
setRotateKey( spep_5-3 + 216, 1, -21.1 );
setRotateKey( spep_5-3 + 218, 1, -20.9 );
setRotateKey( spep_5-3 + 220, 1, -20.7 );
setRotateKey( spep_5-3 + 222, 1, -20.4 );
setRotateKey( spep_5-3 + 224, 1, -20.2 );
setRotateKey( spep_5-3 + 226, 1, -19.9 );
setRotateKey( spep_5-3 + 228, 1, -19.6 );
setRotateKey( spep_5-3 + 230, 1, -19.2 );
setRotateKey( spep_5-3 + 232, 1, -18.9 );
setRotateKey( spep_5-3 + 234, 1, -18.5 );
setRotateKey( spep_5-3 + 236, 1, -18.1 );
setRotateKey( spep_5-3 + 238, 1, -17.6 );
setRotateKey( spep_5-3 + 240, 1, -17.2 );
setRotateKey( spep_5-3 + 242, 1, -16.9 );
setRotateKey( spep_5-3 + 244, 1, -16.3 );
setRotateKey( spep_5-3 + 246, 1, -15.7 );
setRotateKey( spep_5-3 + 248, 1, -14.8 );
setRotateKey( spep_5-3 + 250, 1, -13.8 );
setRotateKey( spep_5-3 + 252, 1, -12.6 );
setRotateKey( spep_5-3 + 254, 1, -11.2 );
setRotateKey( spep_5-3 + 256, 1, -9.7 );
setRotateKey( spep_5-3 + 258, 1, -8 );
setRotateKey( spep_5-3 + 260, 1, -22 );
setRotateKey( spep_5-3 + 275, 1, -22 );
setRotateKey( spep_5-3 + 276, 1, -36.6 );
setRotateKey( spep_5-3 + 356, 1, -36.6 );

--文字エントリー
ctbako = entryEffectLife( spep_5 -180 + 180,  10021, 58, 0x100, -1, 0, -43.1, 402.1 );

--setEffMoveKey( spep_5 -183 + 180, ctbako, -43.1, 402.1 , 0 );
setEffMoveKey( spep_5 -180 + 180, ctbako, -61.7, 412.1 , 0 );
setEffMoveKey( spep_5 -183 + 184, ctbako, -42.3, 401.7 , 0 );
setEffMoveKey( spep_5 -183 + 186, ctbako, -78, 420.9 , 0 );
setEffMoveKey( spep_5 -183 + 188, ctbako, -42.3, 401.7 , 0 );
setEffMoveKey( spep_5 -183 + 190, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 192, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 194, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 196, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 198, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 200, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 202, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 204, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 206, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 208, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 210, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 212, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 214, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 216, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 218, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 220, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 222, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 224, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 226, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 228, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 230, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 232, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 234, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 236, ctbako, -42.7, 401.9 , 0 );

--setEffScaleKey( spep_5 -183 + 180, ctbako, 1.29, 1.29 );
setEffScaleKey( spep_5 -180 + 180, ctbako, 2.34, 2.34 );
setEffScaleKey( spep_5 -183 + 184, ctbako, 3.39, 3.39 );
setEffScaleKey( spep_5 -183 + 186, ctbako, 4.44, 4.44 );
setEffScaleKey( spep_5 -183 + 188, ctbako, 3.51, 3.51 );
setEffScaleKey( spep_5 -183 + 190, ctbako, 2.58, 2.58 );

setEffRotateKey( spep_5 -180 + 180, ctbako, -21.2 );
setEffRotateKey( spep_5 -183 + 180, ctbako, -21.2 );

setEffAlphaKey( spep_5 -180 + 180, ctbako, 255 );
setEffAlphaKey( spep_5 -183 + 230, ctbako, 255 );
setEffAlphaKey( spep_5 -183 + 232, ctbako, 191 );
setEffAlphaKey( spep_5 -183 + 234, ctbako, 128 );
setEffAlphaKey( spep_5 -183 + 236, ctbako, 64 );
setEffAlphaKey( spep_5 -183 + 238, ctbako, 0 );

--SE
playSe( spep_5, 1011 );  --殴り
playSe( spep_5+90, 8 );  --衝撃波
--playSe( spep_5+110, SE_02 );  --ため
playSe( spep_5+122, SE_04 );  --ゴゴゴ
playSe( spep_5+194, 1021 );  --パンチ溜め
playSe( spep_5+258, 1024 );  --突進

-- ダメージ表示
dealDamage(spep_5+300);
entryFade( spep_5+420, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 426);

else 
------------------------------------------------------
--構え
------------------------------------------------------
spep_0=0;
--エフェクト
kidan=entryEffectLife(spep_0,SP_01x,100,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, kidan, 0, 0 , 0 );

setEffScaleKey(spep_0,kidan,1.0,1.0);
setEffScaleKey(spep_0+100,kidan,1.0,1.0);

setEffRotateKey(spep_0,kidan,0);
setEffRotateKey(spep_0+100,kidan,0);

setEffAlphaKey(spep_0,kidan,255);
setEffAlphaKey(spep_0+100,kidan,255);

--文字エントリー
ctzudodo = entryEffectLife( spep_0 -3 + 12,  10014, 88, 0x100, -1, 0, 51.7, 331.2 );

setEffMoveKey( spep_0 -3 + 12, ctzudodo, 51.7, 331.2 , 0 );
setEffMoveKey( spep_0 -3 + 14, ctzudodo, 46.4, 315.8 , 0 );
setEffMoveKey( spep_0 -3 + 16, ctzudodo, 56.3, 325.3 , 0 );
setEffMoveKey( spep_0 -3 + 18, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 20, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 22, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 76, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 80, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 82, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 84, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 86, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 88, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 90, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 92, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 94, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 96, ctzudodo, 45.9, 301.3 , 0 );
setEffMoveKey( spep_0 -3 + 98, ctzudodo, 58.6, 322.3 , 0 );
setEffMoveKey( spep_0 -3 + 100, ctzudodo, 45.9, 301.3 , 0 );

setEffScaleKey( spep_0 -3 + 12, ctzudodo, 1.07, 1.07 );
setEffScaleKey( spep_0 -3 + 14, ctzudodo, 1.63, 1.63 );
setEffScaleKey( spep_0 -3 + 16, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_0 -3 + 18, ctzudodo, 2.75, 2.75 );
setEffScaleKey( spep_0 -3 + 100, ctzudodo, 2.75, 2.75 );

setEffRotateKey( spep_0 -3 + 12, ctzudodo, -38.3 );
setEffRotateKey( spep_0 -3 + 100, ctzudodo, -38.3);

setEffAlphaKey( spep_0 -3 + 12, ctzudodo, 255 );
setEffAlphaKey( spep_0 -3 + 100, ctzudodo, 255 );
--SE
playSe( spep_0 + 14, 1016 );  --気弾
playSe( spep_0 + 22, 1016 );  --気弾
SE=playSe( spep_0 + 26, 1016 );  --気弾
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

playSe( spep_0 + 30, 1016 );  --気弾
playSe( spep_0 + 36, 1016 );  --気弾
playSe( spep_0 + 42, 1016 );  --気弾
playSe( spep_0 + 46, 1016 );  --気弾
playSe( spep_0 + 52, 1016 );  --気弾
playSe( spep_0 + 58, 1016 );  --気弾
playSe( spep_0 + 64, 1016 );  --気弾
playSe( spep_0 + 70, 1016 );  --気弾
playSe( spep_0 + 74, 1016 );  --気弾
playSe( spep_0 + 80, 1016 );  --気弾
playSe( spep_0 + 84, 1016 );  --気弾
playSe( spep_0 + 88, 1016 );  --気弾
playSe( spep_0 + 92, 1016 );  --気弾

-- ** ホワイトフェード ** --
entryFade( spep_0 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+100;

-----------------------------------------------------
--突進
------------------------------------------------------
--エフェクト(前)
tossin_f=entryEffectLife(spep_1,SP_02x,110,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, tossin_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 110, tossin_f, 0, 0 , 0 );

setEffScaleKey(spep_1,tossin_f,1.0,1.0);
setEffScaleKey(spep_1+110,tossin_f,1.0,1.0);

setEffRotateKey(spep_1,tossin_f,0);
setEffRotateKey(spep_1+110,tossin_f,0);

setEffAlphaKey(spep_1,tossin_f,255);
setEffAlphaKey(spep_1+110,tossin_f,255);

--エフェクト(後)
tossin_b=entryEffectLife(spep_1,SP_03x,110,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, tossin_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 110, tossin_b, 0, 0 , 0 );

setEffScaleKey(spep_1,tossin_b,1.0,1.0);
setEffScaleKey(spep_1+110,tossin_b,1.0,1.0);

setEffRotateKey(spep_1,tossin_b,0);
setEffRotateKey(spep_1+110,tossin_b,0);

setEffAlphaKey(spep_1,tossin_b,255);
setEffAlphaKey(spep_1+110,tossin_b,255);


--てき
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1 -3 + 108, 1, 0 );
changeAnime( spep_1  + 0, 1, 100 );
changeAnime( spep_1 -3 + 20, 1, 106 );

--setMoveKey( spep_1  + 0, 1, -49.4, 78.4 , 0 );
setMoveKey( spep_1  + 0, 1, -30.7, 70.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -12, 61.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 6.7, 53.5 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 25.4, 45.2 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 44.1, 36.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 62.8, 28.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 81.4, 20.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 100.1, 12.1 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 99.6, 11.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 104.3, 23.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 107.6, 34.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 95, 29.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 106.3, 33.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 101.7, 24.5 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 105, 31.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 96.4, 23.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 103.8, 30.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 99.1, 25.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 102.5, 29.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 93.8, 20.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 101.2, 27.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 92.5, 23.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 99.9, 26.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 95.2, 18 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 98.6, 25.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 90, 16.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 97.3, 24 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 92.7, 19.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 96, 22.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 87.4, 18 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 94.7, 21.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 90.1, 12.7 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 93.5, 20.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 84.8, 15.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 92.2, 18.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 87.5, 14.1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 90.9, 17.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 82.3, 12.7 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 89.6, 16.1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 85.7, 7.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 89.8, 14.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 86, 9.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 90.1, 12.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 82.3, 2.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 90.5, 9.2 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 86.8, 3.3 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 91.1, 5.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 83.4, -1.1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 91.7, 0.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 88.1, -10.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 92.5, -5.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 88.9, -16.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 93.4, -11.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 85.8, -23.3 , 0 );

--setScaleKey( spep_1 -3 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_1  + 0, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 4, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 6, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 8, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 10, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 12, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 16, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 19, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 20, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 22, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 24, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 26, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 28, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 30, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 32, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 34, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 36, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 38, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 42, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 44, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 46, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 48, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 52, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 54, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 56, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 58, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 60, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 62, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 64, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 66, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 68, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 70, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 72, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 74, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 76, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 78, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 80, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 82, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 86, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 88, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 90, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 92, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 94, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 96, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 98, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 100, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 102, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 104, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 106, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 108, 1, 0.69, 0.69 );

setRotateKey( spep_1  + 0, 1, 4.7 );
setRotateKey( spep_1 -3 + 19, 1, 4.7 );
setRotateKey( spep_1 -3 + 20, 1, -28.3 );
setRotateKey( spep_1 -3 + 30, 1, -28.3 );
setRotateKey( spep_1 -3 + 32, 1, -28.4 );
setRotateKey( spep_1 -3 + 62, 1, -28.4 );
setRotateKey( spep_1 -3 + 108, 1, -28.5 );

--SE
playSe( spep_1+ 18, 1023 );  --爆発
--playSe( spep_1+ 24, 1023 );  --爆発
playSe( spep_1+ 30, 1023 );  --爆発
--playSe( spep_1+ 34, 1023 );  --爆発
playSe( spep_1+ 40, 1023 );  --爆発
--playSe( spep_1+ 44, 1023 );  --爆発
playSe( spep_1+ 54, 1023 );  --爆発
--playSe( spep_1+ 60, 1023 );  --爆発
playSe( spep_1+ 68, 1023 );  --爆発
--playSe( spep_1+ 72, 1023 );  --爆発
playSe( spep_1+ 80, 44 );  --突進


-- ** ホワイトフェード ** --
entryFade( spep_1 + 100, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


--次の準備
spep_2=spep_1+110;

-----------------------------------------------------
--突進2
------------------------------------------------------
--エフェクト
tossin2=entryEffectLife(spep_2,SP_04,60,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, tossin2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, tossin2, 0, 0 , 0 );

setEffScaleKey(spep_2,tossin2,1.0,1.0);
setEffScaleKey(spep_2+60,tossin2,1.0,1.0);

setEffRotateKey(spep_2,tossin2,0);
setEffRotateKey(spep_2+60,tossin2,0);

setEffAlphaKey(spep_2,tossin2,255);
setEffAlphaKey(spep_2+60,tossin2,255);

--集中線
shuchusen1 = entryEffectLife( spep_2+18 ,  906, 42, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_2 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2+60 , shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 , shuchusen1, 1.09, 1.31 );
setEffScaleKey( spep_2 + 60, shuchusen1, 1.09, 1.31 );

setEffRotateKey( spep_2 , shuchusen1, 0 );
setEffRotateKey( spep_2 + 60, shuchusen1, 0 );

setEffAlphaKey( spep_2+18 , shuchusen1, 0 );
setEffAlphaKey( spep_2 +20, shuchusen1, 43 );
setEffAlphaKey( spep_2 + 22, shuchusen1, 85 );
setEffAlphaKey( spep_2 + 24, shuchusen1, 128 );
setEffAlphaKey( spep_2 + 26, shuchusen1, 170 );
setEffAlphaKey( spep_2 + 28, shuchusen1, 213 );
setEffAlphaKey( spep_2 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 60, shuchusen1, 255 );

--SE
playSe( spep_2, 9 );  --突進

-- ** ホワイトフェード ** --
entryFade( spep_2 + 54, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3=spep_2+60;
------------------------------------------------------
-- カードカットイン(90F) --既存のものの流用
------------------------------------------------------


playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  shuchusen,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_3,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen,  0);
setEffRotateKey(  spep_3+90,  shuchusen,  0);
setEffAlphaKey(  spep_3,  shuchusen,  255);
setEffAlphaKey(  spep_3+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_3+82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3 + 90;
-----------------------------------------------------
--パンチ
------------------------------------------------------

--エフェクト
punch=entryEffect(spep_4,SP_05x,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_4 + 180, punch, 0, 0 , 0 );

setEffScaleKey(spep_4,punch,1.0,1.0);
setEffScaleKey(spep_4+180,punch,1.0,1.0);

setEffRotateKey(spep_4,punch,0);
setEffRotateKey(spep_4+180,punch,0);

setEffAlphaKey(spep_4,punch,255);
setEffAlphaKey(spep_4+180,punch,255);

--文字エントリー
ctzuo = entryEffectLife( spep_4  + 0,  10012, 61, 0x100, -1, 0, 78.7, 260.5 );--ズオッ

--setEffMoveKey( spep_4 -3 + 0, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4  , ctzuo, 100.1, 290 , 0 );
setEffMoveKey( spep_4 -3 + 4, ctzuo, 112.3, 328.8 , 0 );
setEffMoveKey( spep_4 -3 + 6, ctzuo, 138.9, 353.1 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctzuo, 129.2, 362.9 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctzuo, 139.1, 353.1 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctzuo, 129.4, 363 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctzuo, 139.5, 353 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, 129.6, 363 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, 139.9, 352.9 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, 129.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, 140.1, 352.8 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, 130, 363.1 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, 140.5, 352.7 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, 130.2, 363.1 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, 140.9, 352.6 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo, 130.4, 363.2 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo, 141.2, 352.4 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo, 130.6, 363.2 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, 141.5, 352.4 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzuo, 130.7, 363.3 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzuo, 141.9, 352.3 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo, 131, 363.3 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo, 142.2, 352.2 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo, 131.2, 363.3 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, 142.5, 352.1 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, 131.3, 363.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, 142.9, 352 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzuo, 131.6, 363.4 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzuo, 169.8, 347 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctzuo, 170.9, 368 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzuo, 223.4, 337.3 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzuo, 250.3, 332.4 , 0 );

setEffScaleKey( spep_4 , ctzuo, 0.78, 0.78 );
setEffScaleKey( spep_4 -3 + 4, ctzuo, 1.23, 1.23 );
setEffScaleKey( spep_4 -3 + 6, ctzuo, 1.67, 1.67 );
setEffScaleKey( spep_4 -3 + 10, ctzuo, 1.67, 1.67 );
setEffScaleKey( spep_4 -3 + 12, ctzuo, 1.71, 1.71 );
setEffScaleKey( spep_4 -3 + 16, ctzuo, 1.71, 1.71 );
setEffScaleKey( spep_4 -3 + 18, ctzuo, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 22, ctzuo, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 24, ctzuo, 1.77, 1.77 );
setEffScaleKey( spep_4 -3 + 28, ctzuo, 1.77, 1.77 );
setEffScaleKey( spep_4 -3 + 30, ctzuo, 1.81, 1.81 );
setEffScaleKey( spep_4 -3 + 32, ctzuo, 1.81, 1.81 );
setEffScaleKey( spep_4 -3 + 34, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_4 -3 + 38, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_4 -3 + 40, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_4 -3 + 44, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_4 -3 + 46, ctzuo, 1.91, 1.91 );
setEffScaleKey( spep_4 -3 + 50, ctzuo, 1.91, 1.91 );
setEffScaleKey( spep_4 -3 + 52, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 -3 + 56, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 -3 + 58, ctzuo, 3.17, 3.17 );
setEffScaleKey( spep_4 -3 + 60, ctzuo, 4.4, 4.4 );
setEffScaleKey( spep_4 -3 + 62, ctzuo, 5.6, 5.6 );
setEffScaleKey( spep_4 -3 + 64, ctzuo, 6.82, 6.82 );


setEffRotateKey( spep_4  + 0, ctzuo, 27.2 );
setEffRotateKey( spep_4 -3 + 64, ctzuo, 27.2 );

setEffAlphaKey( spep_4  + 0, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 56, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 58, ctzuo, 191 );
setEffAlphaKey( spep_4 -3 + 60, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 62, ctzuo, 64 );
setEffAlphaKey( spep_4 -3 + 64, ctzuo, 0 );
--[[
--流線
ryusen1 = entryEffectLife( spep_4 + 98,  920, 178, 0x80, -1, 0, 0,0 );

setEffMoveKey( spep_4 + 98, ryusen1, 0,0 , 0 );
setEffMoveKey( spep_4 + 178, ryusen1, 0,0 , 0 );

setEffScaleKey( spep_4 + 98, ryusen1, 11.67, 1.34 );
setEffScaleKey( spep_4 + 178, ryusen1, 11.67, 1.34 );

setEffRotateKey( spep_4 + 98, ryusen1, -44.7 );
setEffRotateKey( spep_4 + 178, ryusen1, -44.7 );

setEffAlphaKey( spep_4 + 0, ryusen1, 0 );
setEffAlphaKey( spep_4 + 97, ryusen1, 0 );
setEffAlphaKey( spep_4 + 98, ryusen1, 255 );
setEffAlphaKey( spep_4 + 178, ryusen1, 255 );
]]

--集中線
shuchusen2 = entryEffectLife( spep_4  + 64,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 64, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4  + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4  + 64, shuchusen2, 1.21, 1.6 );
setEffScaleKey( spep_4  + 90, shuchusen2, 1.21, 1.6 );

setEffRotateKey( spep_4  + 64, shuchusen2, 0 );
setEffRotateKey( spep_4  + 90, shuchusen2, 0 );

setEffAlphaKey( spep_4  + 64, shuchusen2, 0 );
setEffAlphaKey( spep_4  + 65, shuchusen2, 255 );
setEffAlphaKey( spep_4  + 66, shuchusen2, 255 );
setEffAlphaKey( spep_4  + 82, shuchusen2, 255 );
setEffAlphaKey( spep_4  + 84, shuchusen2, 191 );
setEffAlphaKey( spep_4  + 86, shuchusen2, 128 );
setEffAlphaKey( spep_4  +88, shuchusen2, 64 );
setEffAlphaKey( spep_4  + 90, shuchusen2, 0 );

--SE
playSe( spep_4, SE_04 );  --突進
playSe( spep_4+66, 8 );  --手を振りかざす
playSe( spep_4+100, 44 );  --突進

--***背景と白フェード***
entryFade( spep_4+160, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 160);     -- white fade

--次の準備
spep_5=spep_4+164;

-----------------------------------------------------
--パンチ2
------------------------------------------------------
--エフェクト(前)
punch2_f=entryEffect(spep_5,SP_06x,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, punch2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 430, punch2_f, 0, 0 , 0 );

setEffScaleKey(spep_5,punch2_f,1.0,1.0);
setEffScaleKey(spep_5+430,punch2_f,1.0,1.0);

setEffRotateKey(spep_5,punch2_f,0);
setEffRotateKey(spep_5+430,punch2_f,0);

setEffAlphaKey(spep_5,punch2_f,255);
setEffAlphaKey(spep_5+430,punch2_f,255);

--エフェクト(後)
punch2_b=entryEffect(spep_5,SP_07x,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, punch2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 430, punch2_b, 0, 0 , 0 );

setEffScaleKey(spep_5,punch2_b,1.0,1.0);
setEffScaleKey(spep_5+430,punch2_b,1.0,1.0);

setEffRotateKey(spep_5,punch2_b,0);
setEffRotateKey(spep_5+430,punch2_b,0);

setEffAlphaKey(spep_5,punch2_b,255);
setEffAlphaKey(spep_5+430,punch2_b,255);

-- ** 顔カットイン ** --
--speff = entryEffect( spep_5 + 122, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_5 + 122, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_5 + 134,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_5 + 134, ctgogo, 72, 10 );
 
setEffMoveKey( spep_5 + 134, ctgogo, -9.9, 515.8 , 0 );
setEffMoveKey( spep_5 + 206, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_5 + 134, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_5 + 198, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_5 + 200, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_5 + 202, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_5 + 204, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_5 + 206, ctgogo, -1.69, 1.69 );
 
setEffRotateKey( spep_5 + 134, ctgogo, 0 );
setEffRotateKey( spep_5 + 206, ctgogo, 0 );
 
setEffAlphaKey( spep_5 + 134, ctgogo, 0 );
setEffAlphaKey( spep_5 + 135, ctgogo, 255 );
setEffAlphaKey( spep_5 + 136, ctgogo, 255 );
setEffAlphaKey( spep_5 + 206, ctgogo, 255 );



shuchusen3 = entryEffectLife( spep_5 -183 + 270,  906, 148, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 -183 + 270, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 -183 + 418, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 -183 + 270, shuchusen3, 1.21, 1.6 );
setEffScaleKey( spep_5 -183 + 380, shuchusen3, 1.21, 1.6 );
setEffScaleKey( spep_5 -183 + 382, shuchusen3, 1.2, 1.58 );
setEffScaleKey( spep_5 -183 + 384, shuchusen3, 1.2, 1.56 );
setEffScaleKey( spep_5 -183 + 386, shuchusen3, 1.19, 1.54 );
setEffScaleKey( spep_5 -183 + 388, shuchusen3, 1.18, 1.51 );
setEffScaleKey( spep_5 -183 + 390, shuchusen3, 1.18, 1.49 );
setEffScaleKey( spep_5 -183 + 392, shuchusen3, 1.17, 1.47 );
setEffScaleKey( spep_5 -183 + 394, shuchusen3, 1.16, 1.45 );
setEffScaleKey( spep_5 -183 + 396, shuchusen3, 1.16, 1.43 );
setEffScaleKey( spep_5 -183 + 398, shuchusen3, 1.15, 1.41 );
setEffScaleKey( spep_5 -183 + 400, shuchusen3, 1.15, 1.39 );
setEffScaleKey( spep_5 -183 + 402, shuchusen3, 1.14, 1.37 );
setEffScaleKey( spep_5 -183 + 404, shuchusen3, 1.13, 1.35 );
setEffScaleKey( spep_5 -183 + 406, shuchusen3, 1.13, 1.33 );
setEffScaleKey( spep_5 -183 + 408, shuchusen3, 1.12, 1.31 );
setEffScaleKey( spep_5 -183 + 410, shuchusen3, 1.11, 1.29 );
setEffScaleKey( spep_5 -183 + 412, shuchusen3, 1.11, 1.27 );
setEffScaleKey( spep_5 -183 + 414, shuchusen3, 1.1, 1.25 );
setEffScaleKey( spep_5 -183 + 416, shuchusen3, 1.1, 1.23 );
setEffScaleKey( spep_5 -183 + 418, shuchusen3, 1.09, 1.21 );

setEffRotateKey( spep_5 -183 + 270, shuchusen3, 0 );
setEffRotateKey( spep_5 -183 + 418, shuchusen3, 0 );

setEffAlphaKey( spep_5 -183 + 270, shuchusen3, 255 );
setEffAlphaKey( spep_5 -183 + 418, shuchusen3, 255 );

--てき
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 88, 1, 0 );
setDisp( spep_5 + 257, 1, 1 );
setDisp( spep_5 + 258, 1, 1 );
setDisp( spep_5 + 272, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );


--setMoveKey( spep_5-3 + 0, 1, 70.1, -14.5 , 0 );
setMoveKey( spep_5 + 2, 1, 63.8, -25.5 , 0 );
setMoveKey( spep_5-3 + 4, 1, 74.7, -0.7 , 0 );
setMoveKey( spep_5-3 + 6, 1, 63, 3.9 , 0 );
setMoveKey( spep_5-3 + 8, 1, 84.5, 28.2 , 0 );
setMoveKey( spep_5-3 + 10, 1, 83.3, 40.3 , 0 );
setMoveKey( spep_5-3 + 12, 1, 91, 48.3 , 0 );
setMoveKey( spep_5-3 + 14, 1, 74.8, 32.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 90.5, 48.1 , 0 );
setMoveKey( spep_5-3 + 18, 1, 74.3, 40.1 , 0 );
setMoveKey( spep_5-3 + 20, 1, 90, 48 , 0 );
setMoveKey( spep_5-3 + 22, 1, 81.8, 31.9 , 0 );
setMoveKey( spep_5-3 + 24, 1, 89.5, 47.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 81.3, 39.8 , 0 );
setMoveKey( spep_5-3 + 28, 1, 89, 47.7 , 0 );
setMoveKey( spep_5-3 + 30, 1, 72.8, 31.6 , 0 );
setMoveKey( spep_5-3 + 32, 1, 88.5, 47.6 , 0 );
setMoveKey( spep_5-3 + 34, 1, 80.3, 31.5 , 0 );
setMoveKey( spep_5-3 + 36, 1, 88, 47.4 , 0 );
setMoveKey( spep_5-3 + 38, 1, 71.8, 39.4 , 0 );
setMoveKey( spep_5-3 + 40, 1, 87.5, 47.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, 79.3, 39.2 , 0 );
setMoveKey( spep_5-3 + 44, 1, 87, 47.1 , 0 );
setMoveKey( spep_5-3 + 46, 1, 86.7, 47.1 , 0 );
setMoveKey( spep_5-3 + 48, 1, 86.5, 47 , 0 );
setMoveKey( spep_5-3 + 50, 1, 86.2, 46.9 , 0 );
setMoveKey( spep_5-3 + 52, 1, 86, 46.9 , 0 );
setMoveKey( spep_5-3 + 54, 1, 85.7, 46.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 85.5, 46.7 , 0 );
setMoveKey( spep_5-3 + 58, 1, 85.2, 46.7 , 0 );
setMoveKey( spep_5-3 + 60, 1, 85, 46.6 , 0 );
setMoveKey( spep_5-3 + 62, 1, 84.7, 46.5 , 0 );
setMoveKey( spep_5-3 + 64, 1, 84.5, 46.4 , 0 );
setMoveKey( spep_5-3 + 66, 1, 84.2, 46.4 , 0 );
setMoveKey( spep_5-3 + 68, 1, 84, 46.3 , 0 );
setMoveKey( spep_5-3 + 70, 1, 83.7, 46.2 , 0 );
setMoveKey( spep_5-3 + 72, 1, 85.6, 46.7 , 0 );
setMoveKey( spep_5-3 + 74, 1, 91.3, 48 , 0 );
setMoveKey( spep_5-3 + 76, 1, 100.7, 50.1 , 0 );
setMoveKey( spep_5-3 + 78, 1, 113.9, 53.1 , 0 );
setMoveKey( spep_5-3 + 80, 1, 130.9, 57 , 0 );
setMoveKey( spep_5-3 + 82, 1, 151.7, 61.7 , 0 );
setMoveKey( spep_5-3 + 84, 1, 176.2, 67.3 , 0 );
setMoveKey( spep_5-3 + 86, 1, 204.6, 73.8 , 0 );
setMoveKey( spep_5-3 + 88, 1, 236.7, 81.1 , 0 );
setMoveKey( spep_5-3 + 90, 1, 1341.4, 1075.2 , 0 );
setMoveKey( spep_5-3 + 92, 1, 1144.7, 918.2 , 0 );
setMoveKey( spep_5-3 + 94, 1, 924, 745.1 , 0 );
setMoveKey( spep_5-3 + 96, 1, 735.5, 588.2 , 0 );
setMoveKey( spep_5-3 + 98, 1, 522.9, 407.1 , 0 );
setMoveKey( spep_5-3 + 100, 1, 326.3, 258.2 , 0 );
setMoveKey( spep_5-3 + 102, 1, 97.7, 85.1 , 0 );
setMoveKey( spep_5-3 + 104, 1, 121.6, 92.8 , 0 );
setMoveKey( spep_5-3 + 106, 1, 113.5, 84.3 , 0 );
setMoveKey( spep_5-3 + 108, 1, 121.4, 92 , 0 );
setMoveKey( spep_5-3 + 110, 1, 113.3, 75.6 , 0 );
setMoveKey( spep_5-3 + 112, 1, 121.1, 91.3 , 0 );
setMoveKey( spep_5-3 + 114, 1, 113, 90.9 , 0 );
setMoveKey( spep_5-3 + 116, 1, 120.9, 90.5 , 0 );
setMoveKey( spep_5-3 + 118, 1, 104.7, 74.1 , 0 );
setMoveKey( spep_5-3 + 120, 1, 120.6, 89.8 , 0 );
setMoveKey( spep_5-3 + 122, 1, 112.5, 81.3 , 0 );
setMoveKey( spep_5-3 + 124, 1, 120.4, 89 , 0 );
setMoveKey( spep_5-3 + 126, 1, 104.2, 72.5 , 0 );
setMoveKey( spep_5-3 + 128, 1, 120.2, 88.3 , 0 );
setMoveKey( spep_5-3 + 130, 1, 112, 79.8 , 0 );
setMoveKey( spep_5-3 + 132, 1, 119.9, 87.5 , 0 );
setMoveKey( spep_5-3 + 134, 1, 103.7, 79 , 0 );
setMoveKey( spep_5-3 + 136, 1, 119.7, 86.8 , 0 );
setMoveKey( spep_5-3 + 138, 1, 111.5, 78.3 , 0 );
setMoveKey( spep_5-3 + 140, 1, 119.4, 86 , 0 );
setMoveKey( spep_5-3 + 142, 1, 103.2, 77.5 , 0 );
setMoveKey( spep_5-3 + 144, 1, 119.2, 85.2 , 0 );
setMoveKey( spep_5-3 + 146, 1, 111, 68.8 , 0 );
setMoveKey( spep_5-3 + 148, 1, 118.9, 84.5 , 0 );
setMoveKey( spep_5-3 + 150, 1, 110.8, 76 , 0 );
setMoveKey( spep_5-3 + 152, 1, 118.7, 83.7 , 0 );
setMoveKey( spep_5-3 + 154, 1, 102.4, 67.2 , 0 );
setMoveKey( spep_5-3 + 156, 1, 118.4, 83 , 0 );
setMoveKey( spep_5-3 + 158, 1, 110.3, 74.5 , 0 );
setMoveKey( spep_5-3 + 160, 1, 118.2, 82.2 , 0 );
setMoveKey( spep_5-3 + 162, 1, 101.9, 73.7 , 0 );
setMoveKey( spep_5-3 + 164, 1, 117.9, 81.5 , 0 );
setMoveKey( spep_5-3 + 166, 1, 109.8, 65 , 0 );
setMoveKey( spep_5-3 + 168, 1, 117.7, 80.7 , 0 );
setMoveKey( spep_5-3 + 170, 1, 109.6, 72.2 , 0 );
setMoveKey( spep_5-3 + 172, 1, 117.4, 79.9 , 0 );
setMoveKey( spep_5-3 + 174, 1, 101.2, 71.5 , 0 );
setMoveKey( spep_5-3 + 176, 1, 117.2, 79.2 , 0 );
setMoveKey( spep_5-3 + 178, 1, 109.1, 62.7 , 0 );
setMoveKey( spep_5-3 + 180, 1, 116.9, 78.4 , 0 );
setMoveKey( spep_5-3 + 182, 1, 108.8, 70 , 0 );
setMoveKey( spep_5-3 + 184, 1, 116.7, 77.7 , 0 );
setMoveKey( spep_5-3 + 186, 1, 100.5, 69.2 , 0 );
setMoveKey( spep_5-3 + 188, 1, 116.4, 76.9 , 0 );
setMoveKey( spep_5-3 + 190, 1, 108.3, 68.4 , 0 );
setMoveKey( spep_5-3 + 192, 1, 116.2, 76.2 , 0 );
setMoveKey( spep_5-3 + 194, 1, 100, 67.7 , 0 );
setMoveKey( spep_5-3 + 196, 1, 115.9, 75.4 , 0 );
setMoveKey( spep_5-3 + 198, 1, 107.8, 66.9 , 0 );
setMoveKey( spep_5-3 + 200, 1, 116.8, 75.8 , 0 );
setMoveKey( spep_5-3 + 202, 1, 111.6, 61.9 , 0 );
setMoveKey( spep_5-3 + 204, 1, 124.3, 81.8 , 0 );
setMoveKey( spep_5-3 + 206, 1, 114.8, 79 , 0 );
setMoveKey( spep_5-3 + 208, 1, 139.4, 93.9 , 0 );
setMoveKey( spep_5-3 + 210, 1, 141.8, 94.1 , 0 );
setMoveKey( spep_5-3 + 212, 1, 162.1, 112 , 0 );
setMoveKey( spep_5-3 + 214, 1, 160.2, 115.2 , 0 );
setMoveKey( spep_5-3 + 216, 1, 192.4, 136 , 0 );
setMoveKey( spep_5-3 + 218, 1, 202.4, 134.2 , 0 );
setMoveKey( spep_5-3 + 220, 1, 230.3, 166.1 , 0 );
setMoveKey( spep_5-3 + 222, 1, 235.9, 175.2 , 0 );
setMoveKey( spep_5-3 + 224, 1, 275.7, 202 , 0 );
setMoveKey( spep_5-3 + 226, 1, 293.3, 206.1 , 0 );
setMoveKey( spep_5-3 + 228, 1, 328.8, 243.9 , 0 );
setMoveKey( spep_5-3 + 230, 1, 350.2, 258.9 , 0 );
setMoveKey( spep_5-3 + 232, 1, 389.5, 291.6 , 0 );
setMoveKey( spep_5-3 + 234, 1, 406.6, 309.5 , 0 );
setMoveKey( spep_5-3 + 236, 1, 457.9, 345 , 0 );
setMoveKey( spep_5-3 + 238, 1, 487, 365.8 , 0 );
setMoveKey( spep_5-3 + 240, 1, 533.9, 404.1 , 0 );
setMoveKey( spep_5-3 + 242, 1, 698.7, 475 , 0 );
setMoveKey( spep_5-3 + 244, 1, 986.4, 620.7 , 0 );
setMoveKey( spep_5-3 + 246, 1, 1341.1, 783.9 , 0 );
setMoveKey( spep_5-3 + 248, 1, 1803.5, 1003.9 , 0 );
setMoveKey( spep_5-3 + 250, 1, 2341.9, 1246.7 , 0 );
setMoveKey( spep_5-3 + 252, 1, 2988.9, 1542.7 , 0 );
setMoveKey( spep_5-3 + 254, 1, 3705, 1849.2 , 0 );
setMoveKey( spep_5-3 + 256, 1, 4546.9, 2220.1 , 0 );
setMoveKey( spep_5-3 + 258, 1, 5458.7, 2595.9 , 0 );
setMoveKey( spep_5-3 + 260, 1, 331, 129.8 , 0 );
setMoveKey( spep_5-3 + 262, 1, 483.2, 356.1 , 0 );
setMoveKey( spep_5-3 + 264, 1, 495.6, 406.6 , 0 );
setMoveKey( spep_5-3 + 266, 1, 411.2, 333.4 , 0 );
setMoveKey( spep_5-3 + 268, 1, 273, 188.6 , 0 );
setMoveKey( spep_5-3 + 270, 1, 124, 24.3 , 0 );
setMoveKey( spep_5-3 + 272, 1, 7.3, -107.3 , 0 );
setMoveKey( spep_5-3 + 275, 1, -37.1, -157.1 , 0 );
setMoveKey( spep_5-3 + 276, 1, -50.5, -171.3 , 0 );
setMoveKey( spep_5-3 + 278, 1, -19.7, -137.1 , 0 );
setMoveKey( spep_5-3 + 280, 1, 18.8, -107.6 , 0 );
setMoveKey( spep_5-3 + 282, 1, 42.7, -89.1 , 0 );
setMoveKey( spep_5-3 + 284, 1, 68, -62.4 , 0 );
setMoveKey( spep_5-3 + 286, 1, 81.9, -50 , 0 );
setMoveKey( spep_5-3 + 288, 1, 97.3, -35.8 , 0 );
setMoveKey( spep_5-3 + 290, 1, 98.2, -35.8 , 0 );
setMoveKey( spep_5-3 + 292, 1, 104.2, -30 , 0 );
setMoveKey( spep_5-3 + 294, 1, 100.7, -30.6 , 0 );
setMoveKey( spep_5-3 + 296, 1, 103.6, -31.2 , 0 );
setMoveKey( spep_5-3 + 298, 1, 96.8, -35 , 0 );
setMoveKey( spep_5-3 + 300, 1, 103, -32.4 , 0 );
setMoveKey( spep_5-3 + 302, 1, 99.5, -39.3 , 0 );
setMoveKey( spep_5-3 + 304, 1, 102.3, -33.6 , 0 );
setMoveKey( spep_5-3 + 306, 1, 98.8, -34.3 , 0 );
setMoveKey( spep_5-3 + 308, 1, 101.7, -34.7 , 0 );
setMoveKey( spep_5-3 + 310, 1, 94.9, -41.8 , 0 );
setMoveKey( spep_5-3 + 312, 1, 101, -36 , 0 );
setMoveKey( spep_5-3 + 314, 1, 97.5, -39.8 , 0 );
setMoveKey( spep_5-3 + 316, 1, 100.4, -37.2 , 0 );
setMoveKey( spep_5-3 + 318, 1, 93.6, -41 , 0 );
setMoveKey( spep_5-3 + 320, 1, 99.7, -38.4 , 0 );
setMoveKey( spep_5-3 + 322, 1, 96.1, -42.3 , 0 );
setMoveKey( spep_5-3 + 324, 1, 99.1, -39.7 , 0 );
setMoveKey( spep_5-3 + 326, 1, 92.2, -46.7 , 0 );
setMoveKey( spep_5-3 + 328, 1, 98.3, -41 , 0 );
setMoveKey( spep_5-3 + 330, 1, 94.8, -44.8 , 0 );
setMoveKey( spep_5-3 + 332, 1, 97.7, -42.3 , 0 );
setMoveKey( spep_5-3 + 334, 1, 90.9, -49.2 , 0 );
setMoveKey( spep_5-3 + 336, 1, 97, -43.4 , 0 );
setMoveKey( spep_5-3 + 338, 1, 93.4, -47.3 , 0 );
setMoveKey( spep_5-3 + 340, 1, 96.3, -44.6 , 0 );
setMoveKey( spep_5-3 + 342, 1, 89.6, -48.5 , 0 );
setMoveKey( spep_5-3 + 344, 1, 92.3, -46 , 0 );
setMoveKey( spep_5-3 + 346, 1, 92, -49.8 , 0 );
setMoveKey( spep_5-3 + 348, 1, 94.9, -47.2 , 0 );
setMoveKey( spep_5-3 + 350, 1, 88.1, -51 , 0 );
setMoveKey( spep_5-3 + 352, 1, 94.1, -48.6 , 0 );
setMoveKey( spep_5-3 + 354, 1, 90.5, -52.5 , 0 );
setMoveKey( spep_5-3 + 356, 1, 93.4, -49.9 , 0 );

--setScaleKey( spep_5-3 + 0, 1, 6.92, 6.92 );
setScaleKey( spep_5 + 2, 1, 6.51, 6.51 );
setScaleKey( spep_5-3 + 4, 1, 5.77, 5.77 );
setScaleKey( spep_5-3 + 6, 1, 4.72, 4.72 );
setScaleKey( spep_5-3 + 8, 1, 3.36, 3.36 );
setScaleKey( spep_5-3 + 10, 1, 1.69, 1.69 );
setScaleKey( spep_5-3 + 12, 1, 1.67, 1.67 );
setScaleKey( spep_5-3 + 14, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 16, 1, 1.64, 1.64 );
setScaleKey( spep_5-3 + 18, 1, 1.63, 1.63 );
setScaleKey( spep_5-3 + 20, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 24, 1, 1.59, 1.59 );
setScaleKey( spep_5-3 + 26, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 28, 1, 1.56, 1.56 );
setScaleKey( spep_5-3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_5-3 + 34, 1, 1.52, 1.52 );
setScaleKey( spep_5-3 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 38, 1, 1.49, 1.49 );
setScaleKey( spep_5-3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_5-3 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_5-3 + 44, 1, 1.44, 1.44 );
setScaleKey( spep_5-3 + 46, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 48, 1, 1.42, 1.42 );
setScaleKey( spep_5-3 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 52, 1, 1.39, 1.39 );
setScaleKey( spep_5-3 + 54, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 56, 1, 1.36, 1.36 );
setScaleKey( spep_5-3 + 58, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 60, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 62, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 64, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 66, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 68, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 70, 1, 1.26, 1.26 );
setScaleKey( spep_5-3 + 72, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 74, 1, 1.94, 1.94 );
setScaleKey( spep_5-3 + 76, 1, 2.8, 2.8 );
setScaleKey( spep_5-3 + 78, 1, 3.99, 3.99 );
setScaleKey( spep_5-3 + 80, 1, 5.53, 5.53 );
setScaleKey( spep_5-3 + 82, 1, 7.41, 7.41 );
setScaleKey( spep_5-3 + 84, 1, 9.64, 9.64 );
setScaleKey( spep_5-3 + 86, 1, 12.2, 12.2 );
setScaleKey( spep_5-3 + 88, 1, 15.11, 15.11 );
setScaleKey( spep_5-3 + 90, 1, 4.41, 4.41 );
setScaleKey( spep_5-3 + 92, 1, 3.9, 3.9 );
setScaleKey( spep_5-3 + 94, 1, 3.4, 3.4 );
setScaleKey( spep_5-3 + 96, 1, 2.89, 2.89 );
setScaleKey( spep_5-3 + 98, 1, 2.38, 2.38 );
setScaleKey( spep_5-3 + 100, 1, 1.88, 1.88 );
setScaleKey( spep_5-3 + 102, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 108, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 110, 1, 1.36, 1.36 );
setScaleKey( spep_5-3 + 116, 1, 1.36, 1.36 );
setScaleKey( spep_5-3 + 118, 1, 1.35, 1.35 );
setScaleKey( spep_5-3 + 124, 1, 1.35, 1.35 );
setScaleKey( spep_5-3 + 126, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 132, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 134, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 142, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 144, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 150, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 152, 1, 1.31, 1.31 );
setScaleKey( spep_5-3 + 158, 1, 1.31, 1.31 );
setScaleKey( spep_5-3 + 160, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 166, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 168, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 174, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 176, 1, 1.28, 1.28 );
setScaleKey( spep_5-3 + 184, 1, 1.28, 1.28 );
setScaleKey( spep_5-3 + 186, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 192, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 194, 1, 1.26, 1.26 );
setScaleKey( spep_5-3 + 202, 1, 1.26, 1.26 );
setScaleKey( spep_5-3 + 204, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 206, 1, 1.28, 1.28 );
setScaleKey( spep_5-3 + 208, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 210, 1, 1.31, 1.31 );
setScaleKey( spep_5-3 + 212, 1, 1.33, 1.33 );
setScaleKey( spep_5-3 + 214, 1, 1.35, 1.35 );
setScaleKey( spep_5-3 + 216, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 218, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 220, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 222, 1, 1.46, 1.46 );
setScaleKey( spep_5-3 + 224, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 226, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 228, 1, 1.58, 1.58 );
setScaleKey( spep_5-3 + 230, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 232, 1, 1.67, 1.67 );
setScaleKey( spep_5-3 + 234, 1, 1.72, 1.72 );
setScaleKey( spep_5-3 + 236, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 238, 1, 1.83, 1.83 );
setScaleKey( spep_5-3 + 240, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 242, 1, 2.38, 2.38 );
setScaleKey( spep_5-3 + 244, 1, 3.11, 3.11 );
setScaleKey( spep_5-3 + 246, 1, 4.09, 4.09 );
setScaleKey( spep_5-3 + 248, 1, 5.31, 5.31 );
setScaleKey( spep_5-3 + 250, 1, 6.78, 6.78 );
setScaleKey( spep_5-3 + 252, 1, 8.49, 8.49 );
setScaleKey( spep_5-3 + 254, 1, 10.45, 10.45 );
setScaleKey( spep_5-3 + 256, 1, 12.65, 12.65 );
setScaleKey( spep_5-3 + 258, 1, 15.1, 15.1 );
setScaleKey( spep_5-3 + 260, 1, 11.9, 11.9 );
setScaleKey( spep_5-3 + 262, 1, 8.84, 8.84 );
setScaleKey( spep_5-3 + 264, 1, 6.25, 6.25 );
setScaleKey( spep_5-3 + 266, 1, 4.13, 4.13 );
setScaleKey( spep_5-3 + 268, 1, 2.48, 2.48 );
setScaleKey( spep_5-3 + 270, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 272, 1, 0.59, 0.59 );
setScaleKey( spep_5-3 + 275, 1, 0.36, 0.36 );
setScaleKey( spep_5-3 + 276, 1, 1.02, 1.02 );
setScaleKey( spep_5-3 + 278, 1, 0.99, 0.99 );
setScaleKey( spep_5-3 + 280, 1, 0.97, 0.97 );
setScaleKey( spep_5-3 + 282, 1, 0.95, 0.95 );
setScaleKey( spep_5-3 + 284, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 286, 1, 0.92, 0.92 );
setScaleKey( spep_5-3 + 288, 1, 0.91, 0.91 );
setScaleKey( spep_5-3 + 290, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 306, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 308, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 316, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 318, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 324, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 326, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 342, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 344, 1, 0.86, 0.86 );
setScaleKey( spep_5-3 + 356, 1, 0.86, 0.86 );

setRotateKey( spep_5 + 0, 1, -22 );
setRotateKey( spep_5-3 + 202, 1, -22 );
setRotateKey( spep_5-3 + 204, 1, -21.9 );
setRotateKey( spep_5-3 + 206, 1, -21.8 );
setRotateKey( spep_5-3 + 208, 1, -21.7 );
setRotateKey( spep_5-3 + 210, 1, -21.6 );
setRotateKey( spep_5-3 + 212, 1, -21.5 );
setRotateKey( spep_5-3 + 214, 1, -21.3 );
setRotateKey( spep_5-3 + 216, 1, -21.1 );
setRotateKey( spep_5-3 + 218, 1, -20.9 );
setRotateKey( spep_5-3 + 220, 1, -20.7 );
setRotateKey( spep_5-3 + 222, 1, -20.4 );
setRotateKey( spep_5-3 + 224, 1, -20.2 );
setRotateKey( spep_5-3 + 226, 1, -19.9 );
setRotateKey( spep_5-3 + 228, 1, -19.6 );
setRotateKey( spep_5-3 + 230, 1, -19.2 );
setRotateKey( spep_5-3 + 232, 1, -18.9 );
setRotateKey( spep_5-3 + 234, 1, -18.5 );
setRotateKey( spep_5-3 + 236, 1, -18.1 );
setRotateKey( spep_5-3 + 238, 1, -17.6 );
setRotateKey( spep_5-3 + 240, 1, -17.2 );
setRotateKey( spep_5-3 + 242, 1, -16.9 );
setRotateKey( spep_5-3 + 244, 1, -16.3 );
setRotateKey( spep_5-3 + 246, 1, -15.7 );
setRotateKey( spep_5-3 + 248, 1, -14.8 );
setRotateKey( spep_5-3 + 250, 1, -13.8 );
setRotateKey( spep_5-3 + 252, 1, -12.6 );
setRotateKey( spep_5-3 + 254, 1, -11.2 );
setRotateKey( spep_5-3 + 256, 1, -9.7 );
setRotateKey( spep_5-3 + 258, 1, -8 );
setRotateKey( spep_5-3 + 260, 1, -22 );
setRotateKey( spep_5-3 + 275, 1, -22 );
setRotateKey( spep_5-3 + 276, 1, -36.6 );
setRotateKey( spep_5-3 + 356, 1, -36.6 );

--文字エントリー
ctbako = entryEffectLife( spep_5 -180 + 180,  10021, 58, 0x100, -1, 0, -43.1, 402.1 );

--setEffMoveKey( spep_5 -183 + 180, ctbako, -43.1, 402.1 , 0 );
setEffMoveKey( spep_5 -180 + 180, ctbako, -61.7, 412.1 , 0 );
setEffMoveKey( spep_5 -183 + 184, ctbako, -42.3, 401.7 , 0 );
setEffMoveKey( spep_5 -183 + 186, ctbako, -78, 420.9 , 0 );
setEffMoveKey( spep_5 -183 + 188, ctbako, -42.3, 401.7 , 0 );
setEffMoveKey( spep_5 -183 + 190, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 192, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 194, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 196, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 198, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 200, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 202, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 204, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 206, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 208, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 210, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 212, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 214, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 216, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 218, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 220, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 222, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 224, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 226, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 228, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 230, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 232, ctbako, -42.7, 401.9 , 0 );
setEffMoveKey( spep_5 -183 + 234, ctbako, -63.7, 413.1 , 0 );
setEffMoveKey( spep_5 -183 + 236, ctbako, -42.7, 401.9 , 0 );

--setEffScaleKey( spep_5 -183 + 180, ctbako, 1.29, 1.29 );
setEffScaleKey( spep_5 -180 + 180, ctbako, 2.34, 2.34 );
setEffScaleKey( spep_5 -183 + 184, ctbako, 3.39, 3.39 );
setEffScaleKey( spep_5 -183 + 186, ctbako, 4.44, 4.44 );
setEffScaleKey( spep_5 -183 + 188, ctbako, 3.51, 3.51 );
setEffScaleKey( spep_5 -183 + 190, ctbako, 2.58, 2.58 );

setEffRotateKey( spep_5 -180 + 180, ctbako, -21.2 );
setEffRotateKey( spep_5 -183 + 180, ctbako, -21.2 );

setEffAlphaKey( spep_5 -180 + 180, ctbako, 255 );
setEffAlphaKey( spep_5 -183 + 230, ctbako, 255 );
setEffAlphaKey( spep_5 -183 + 232, ctbako, 191 );
setEffAlphaKey( spep_5 -183 + 234, ctbako, 128 );
setEffAlphaKey( spep_5 -183 + 236, ctbako, 64 );
setEffAlphaKey( spep_5 -183 + 238, ctbako, 0 );

--SE
playSe( spep_5, 1011 );  --殴り
playSe( spep_5+90, 8 );  --衝撃波
--playSe( spep_5+110, SE_02 );  --ため
playSe( spep_5+134, SE_04 );  --ゴゴゴ
playSe( spep_5+194, 1021 );  --パンチ溜め
playSe( spep_5+258, 1024 );  --突進

-- ダメージ表示
dealDamage(spep_5+300);
entryFade( spep_5+420, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 426);
end
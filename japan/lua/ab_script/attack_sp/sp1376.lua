--4018760:超サイヤ人3孫悟空(天使)_超かめはめ波
--sp_effect_b4_00128

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
SP_01=	154668	;--	手前突進
SP_02=	154669	;--	蹴り2発〜追っかけ・手前
SP_03=	154670	;--	蹴り2発〜追っかけ・奥
SP_04=	154671	;--	パンチ・手前
SP_05=	154672	;--	パンチ・奥
SP_06=	154673	;--	パンチ連打
SP_07=	154674	;--	決めパンチ・手前
SP_08=	154675	;--	決めパンチ・奥
SP_09=	154676	;--	構え
SP_10=	154677	;--	放つ
SP_11=	154678	;--	敵を連れて行く・手前
SP_12=	154679	;--	敵を連れて行く・奥
SP_13=	154680	;--	爆発

--敵側
SP_01x=	154668	;--	手前突進	
SP_02x=	154669	;--	蹴り2発〜追っかけ・手前	
SP_03x=	154670	;--	蹴り2発〜追っかけ・奥	
SP_04x=	154671	;--	パンチ・手前	
SP_05x=	154672	;--	パンチ・奥	
SP_06x=	154673	;--	パンチ連打	
SP_07x=	154674	;--	決めパンチ・手前	
SP_08x=	154675	;--	決めパンチ・奥	
SP_09x=	154676	;--	構え	
SP_10x=	154681	;--	放つ	(敵)
SP_11x=	154678	;--	敵を連れて行く・手前	
SP_12x=	154679	;--	敵を連れて行く・奥	
SP_13x=	154680	;--	爆発	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

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
-- 突進
------------------------------------------------------
--最初の準備
spep_0 = 0;

-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, tossin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 90, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 90, tossin, 255 );


--SE
se_0009 = playSe( spep_0 + 0, 9 );
SE0=playSe( spep_0 + 0, 1183 );
SE1=playSe( spep_0 + 0, 1182 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_0009, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--SE
se_1109 = playSe( spep_0 + 60, 1109 );
se_11091 = playSe( spep_0 + 87, 1109 );

stopSe( spep_0 + 80, SE0, 10 );
stopSe( spep_0 + 59, se_0009, 29 );
stopSe( spep_0 + 80, se_1109, 12 );

--白フェード
entryFade( spep_0 + 82, 4, 10, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 +90;
------------------------------------------------------
-- 蹴り2発〜追っかけ・手前
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_1 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 190, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 0 );
setEffAlphaKey( spep_1-3 + 29, fighting_f, 0 );
setEffAlphaKey( spep_1-3 + 30, fighting_f, 255 );
setEffAlphaKey( spep_1 + 190, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_1 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 190, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 190, fighting_b, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_1 + 0, fighting_n, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, fighting_n, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_n, 0 );
setEffRotateKey( spep_1 + 190, fighting_n, 0 );
setEffAlphaKey( spep_1 + 0, fighting_n, 255 );
setEffAlphaKey( spep_1 -3+29 , fighting_n, 255 );
setEffAlphaKey( spep_1 -3+30, fighting_n, 0 );
setEffAlphaKey( spep_1 + 190, fighting_n, 0 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 30,  10005, 20, 0x100, -1, 0, -91.9, 334 );--ガ
setEffShake( spep_1-3 + 30, ctga, 20, 20 );
setEffMoveKey( spep_1-3 + 30, ctga, -91.9, 334 , 0 );
setEffMoveKey( spep_1-3 + 32, ctga, -91.6, 333.9 , 0 );
setEffMoveKey( spep_1-3 + 34, ctga, -105.1, 340 , 0 );
setEffMoveKey( spep_1-3 + 36, ctga, -91.8, 334.3 , 0 );
setEffMoveKey( spep_1-3 + 38, ctga, -104.6, 340.5 , 0 );
setEffMoveKey( spep_1-3 + 40, ctga, -91.7, 334.2 , 0 );
setEffMoveKey( spep_1-3 + 42, ctga, -103.6, 339.8 , 0 );
setEffMoveKey( spep_1-3 + 44, ctga, -91.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 46, ctga, -91.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 48, ctga, -102.5, 339 , 0 );
setEffMoveKey( spep_1-3 + 50, ctga, -91.6, 334.2 , 0 );

setEffScaleKey( spep_1-3 + 30, ctga, 0.97, 0.97 );
setEffScaleKey( spep_1-3 + 32, ctga, 2.56, 2.56 );
setEffScaleKey( spep_1-3 + 34, ctga, 2.6, 2.6 );
setEffScaleKey( spep_1-3 + 36, ctga, 2.63, 2.63 );
setEffScaleKey( spep_1-3 + 38, ctga, 2.53, 2.53 );
setEffScaleKey( spep_1-3 + 40, ctga, 2.43, 2.43 );
setEffScaleKey( spep_1-3 + 42, ctga, 2.33, 2.33 );
setEffScaleKey( spep_1-3 + 44, ctga, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 46, ctga, 2.13, 2.13 );
setEffScaleKey( spep_1-3 + 48, ctga, 2.11, 2.11 );
setEffScaleKey( spep_1-3 + 50, ctga, 2.08, 2.08 );

setEffRotateKey( spep_1-3 + 30, ctga, -10.7 );
setEffRotateKey( spep_1-3 + 32, ctga, -24 );
setEffRotateKey( spep_1-3 + 34, ctga, -21.2 );
setEffRotateKey( spep_1-3 + 36, ctga, -18.4 );
setEffRotateKey( spep_1-3 + 38, ctga, -18.8 );
setEffRotateKey( spep_1-3 + 40, ctga, -19.1 );
setEffRotateKey( spep_1-3 + 42, ctga, -19.5 );
setEffRotateKey( spep_1-3 + 44, ctga, -19.8 );
setEffRotateKey( spep_1-3 + 46, ctga, -20.2 );
setEffRotateKey( spep_1-3 + 48, ctga, -20.7 );
setEffRotateKey( spep_1-3 + 50, ctga, -21.1 );

setEffAlphaKey( spep_1-3 + 30, ctga, 255 );
setEffAlphaKey( spep_1-3 + 46, ctga, 255 );
setEffAlphaKey( spep_1-3 + 48, ctga, 170 );
setEffAlphaKey( spep_1-3 + 50, ctga, 85 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 102,  10020, 18, 0x100, -1, 0, -58.3, 302.9 );--バキッ
setEffShake( spep_1-3 + 102, ctbaki, 18, 20 );
setEffMoveKey( spep_1-3 + 102, ctbaki, -58.3, 302.9 , 0 );
setEffMoveKey( spep_1-3 + 104, ctbaki, -81.7, 316 , 0 );
setEffMoveKey( spep_1-3 + 106, ctbaki, -58.2, 303 , 0 );
setEffMoveKey( spep_1-3 + 108, ctbaki, -58.1, 302.9 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbaki, -73.4, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbaki, -58.1, 303 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbaki, -72.5, 311 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbaki, -58.1, 303 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbaki, -72.3, 310.9 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbaki, -58.2, 303 , 0 );

setEffScaleKey( spep_1-3 + 102, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1-3 + 104, ctbaki, 3.15, 3.15 );
setEffScaleKey( spep_1-3 + 106, ctbaki, 2.64, 2.64 );
setEffScaleKey( spep_1-3 + 108, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_1-3 + 110, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_1-3 + 112, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_1-3 + 114, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_1-3 + 116, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_1-3 + 118, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_1-3 + 120, ctbaki, 1.92, 1.92 );

setEffRotateKey( spep_1-3 + 102, ctbaki, -15.9 );
setEffRotateKey( spep_1-3 + 120, ctbaki, -15.9 );

setEffAlphaKey( spep_1-3 + 102, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 116, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 118, ctbaki, 134 );
setEffAlphaKey( spep_1-3 + 120, ctbaki, 13 );

--敵の動き
setDisp( spep_1, 1, 1);
setDisp( spep_1+48, 1, 0);
setDisp( spep_1-3+66, 1, 1);
setDisp( spep_1-3+124, 1, 0);

changeAnime( spep_1, 1, 100);
changeAnime( spep_1-3+30, 1, 7);
changeAnime( spep_1-3+66, 1, 105);
changeAnime( spep_1-3+102, 1, 107);

setMoveKey( spep_1 + 0,1, -210.8, -158.9 , 0 );
--setMoveKey( spep_1-3 + 2,1, -189.4, -134.3 , 0 );
setMoveKey( spep_1-3 + 4,1, -168, -109.7 , 0 );
setMoveKey( spep_1-3 + 6,1, -146.6, -85.1 , 0 );
setMoveKey( spep_1-3 + 8,1, -125.1, -60.5 , 0 );
setMoveKey( spep_1-3 + 10,1, -103.7, -35.9 , 0 );
setMoveKey( spep_1-3 + 12,1, -99, -31.4 , 0 );
setMoveKey( spep_1-3 + 14,1, -94.2, -26.9 , 0 );
setMoveKey( spep_1-3 + 16,1, -89.5, -22.3 , 0 );
setMoveKey( spep_1-3 + 18,1, -84.8, -17.9 , 0 );
setMoveKey( spep_1-3 + 20,1, -80.1, -13.4 , 0 );
setMoveKey( spep_1-3 + 22,1, -75.3, -8.9 , 0 );
setMoveKey( spep_1-3 + 24,1, -70.6, -4.4 , 0 );
setMoveKey( spep_1-3 + 26,1, -65.9, 0.1 , 0 );
setMoveKey( spep_1-3 + 28,1, -61.2, 4.6 , 0 );
setMoveKey( spep_1-3 + 29,1, -61.2, 4.6 , 0 );

setMoveKey( spep_1-3 + 30, 1, -32.1, -216.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, -42.5, -219.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, -22.5, -163.5 , 0 );
setMoveKey( spep_1-3 + 36, 1, -36.2, -142.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, -28.6, -109.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, -38.6, -135.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, -38.6, -120.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, -39.2, -123.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, -29, -123.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, -38.8, -138.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, -593.9, -834.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, -1147.8, -1531.7 , 0 );

setMoveKey( spep_1-3 + 66, 1, 981.9, -1671 , 0 );
setMoveKey( spep_1-3 + 68, 1, 778.4, -1318.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 580.4, -933.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 361.8, -552.3 , 0 );

setMoveKey( spep_1-3 + 73, 1, 134.4, -155.1 , 0 );
setMoveKey( spep_1-3 + 76, 1, 128.5, -139.3 , 0 );
setMoveKey( spep_1-3 + 78, 1, 122.6, -131.6 , 0 );
setMoveKey( spep_1-3 + 80, 1, 116.7, -120.5 , 0 );
setMoveKey( spep_1-3 + 82, 1, 110.8, -117.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 104.9, -107.2 , 0 );
setMoveKey( spep_1-3 + 86, 1, 99, -104.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 93.1, -95.7 , 0 );
setMoveKey( spep_1-3 + 90, 1, 87.2, -87.4 , 0 );
setMoveKey( spep_1-3 + 92, 1, 81.3, -86.5 , 0 );
setMoveKey( spep_1-3 + 94, 1, 75.4, -79.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 69.5, -73.1 , 0 );
setMoveKey( spep_1-3 + 98, 1, 63.6, -74.2 , 0 );
setMoveKey( spep_1-3 + 100, 1, 51.3, -69.4 , 0 );
setMoveKey( spep_1-3 + 101, 1, 51.3, -69.4 , 0 );

setMoveKey( spep_1-3 + 102, 1, 91.7, -102.1 , 0 );
setMoveKey( spep_1-3 + 104, 1, 292, 6.6 , 0 );
setMoveKey( spep_1-3 + 106, 1, 467.5, 82.6 , 0 );
setMoveKey( spep_1-3 + 108, 1, 662.2, 163.2 , 0 );
setMoveKey( spep_1-3 + 110, 1, 819, 214.6 , 0 );
setMoveKey( spep_1-3 + 112, 1, 970, 285.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, 1064.6, 318.3 , 0 );
setMoveKey( spep_1-3 + 116, 1, 1142.1, 342.4 , 0 );
setMoveKey( spep_1-3 + 118, 1, 1155.8, 329.3 , 0 );
setMoveKey( spep_1-3 + 120, 1, 1139.6, 311.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 1306.2, 387.5 , 0 );
setMoveKey( spep_1-3 + 124, 1, 1493.2, 492.5 , 0 );

setScaleKey( spep_1 + 0,1, 2.6, 2.6 );
--setScaleKey( spep_1-3 + 2,1, 2.44, 2.44 );
setScaleKey( spep_1-3 + 4,1, 2.27, 2.27 );
setScaleKey( spep_1-3 + 6,1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 8,1, 1.93, 1.93 );
setScaleKey( spep_1-3 + 10,1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 12,1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 14,1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 16,1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 18,1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 20,1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 22,1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 24,1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 26,1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 28,1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 29,1, 1.34, 1.34 );

setScaleKey( spep_1-3 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 32, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 34, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 36, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 40, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 42, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 44, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 48, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 50, 1, 2.32, 2.32 );
setScaleKey( spep_1-3 + 52, 1, 3.75, 3.75 );

setScaleKey( spep_1-3 + 66, 1, 7.57, 7.57 );
setScaleKey( spep_1-3 + 68, 1, 6.24, 6.24 );
setScaleKey( spep_1-3 + 70, 1, 4.8, 4.8 );
setScaleKey( spep_1-3 + 72, 1, 3.37, 3.37 );
setScaleKey( spep_1-3 + 73, 1, 1.88, 1.88 );
setScaleKey( spep_1-3 + 76, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 78, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 80, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 82, 1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 84, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 86, 1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 90, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 92, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 94, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 96, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 98, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 100, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 101, 1, 1.5, 1.5 );

setScaleKey( spep_1-3 + 102, 1, 0.92, 0.92 );
setScaleKey( spep_1-3 + 104, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 106, 1, 3.11, 3.11 );
setScaleKey( spep_1-3 + 108, 1, 4.14, 4.14 );
setScaleKey( spep_1-3 + 110, 1, 5.07, 5.07 );
setScaleKey( spep_1-3 + 112, 1, 5.82, 5.82 );
setScaleKey( spep_1-3 + 114, 1, 6.47, 6.47 );
setScaleKey( spep_1-3 + 116, 1, 6.92, 6.92 );
setScaleKey( spep_1-3 + 118, 1, 7.15, 7.15 );
setScaleKey( spep_1-3 + 120, 1, 7.13, 7.13 );
setScaleKey( spep_1-3 + 122, 1, 7.92, 7.92 );
setScaleKey( spep_1-3 + 124, 1, 8.86, 8.86 );

setRotateKey( spep_1 + 0,1, 0 );
setRotateKey( spep_1-3 + 52,1, 0 );

--setRotateKey( spep_1-3 + 66, 1, -28.5 );
--setRotateKey( spep_1-3 + 68, 1, -33.3 );
--setRotateKey( spep_1-3 + 70, 1, -38 );
setRotateKey( spep_1-3 + 66, 1, -42.8 );
setRotateKey( spep_1-3 + 74, 1, -47.6 );
setRotateKey( spep_1-3 + 76, 1, -48.3 );
setRotateKey( spep_1-3 + 78, 1, -48.9 );
setRotateKey( spep_1-3 + 80, 1, -49.5 );
setRotateKey( spep_1-3 + 82, 1, -50.1 );
setRotateKey( spep_1-3 + 84, 1, -50.6 );
setRotateKey( spep_1-3 + 86, 1, -51.1 );
setRotateKey( spep_1-3 + 88, 1, -51.6 );
setRotateKey( spep_1-3 + 90, 1, -52 );
setRotateKey( spep_1-3 + 92, 1, -52.4 );
setRotateKey( spep_1-3 + 94, 1, -52.7 );
setRotateKey( spep_1-3 + 96, 1, -53.1 );
setRotateKey( spep_1-3 + 98, 1, -53.4 );
setRotateKey( spep_1-3 + 100, 1, -53.6 );
setRotateKey( spep_1-3 + 101, 1, -53.6 );

setRotateKey( spep_1-3 + 102, 1, -84.2 );
setRotateKey( spep_1-3 + 104, 1, -84.2 );
setRotateKey( spep_1-3 + 106, 1, -84.3 );
setRotateKey( spep_1-3 + 108, 1, -84.4 );
setRotateKey( spep_1-3 + 110, 1, -84.5 );
setRotateKey( spep_1-3 + 112, 1, -84.5 );
setRotateKey( spep_1-3 + 114, 1, -84.6 );
setRotateKey( spep_1-3 + 116, 1, -84.7 );
setRotateKey( spep_1-3 + 118, 1, -84.8 );
setRotateKey( spep_1-3 + 120, 1, -84.9 );
setRotateKey( spep_1-3 + 122, 1, -85 );
setRotateKey( spep_1-3 + 124, 1, -85.2 );

--SE
playSe( spep_1 + 28, 1189 );
playSe( spep_1 + 32, 1110 );
playSe( spep_1 + 32, 1009 );
se_11092 = playSe( spep_1 + 72, 1109 );
playSe( spep_1 + 102, 1120 );
playSe( spep_1 + 116, 1036 );
setSeVolume( spep_1 + 116, 1036, 63 );
playSe( spep_1 + 140, 1036 );
setSeVolume( spep_1 + 140, 1036, 71 );
playSe( spep_1 + 140, 1056 );
setSeVolume( spep_1 + 140, 1056, 63 );
playSe( spep_1 + 153, 1072 );
setSeVolume( spep_1 + 153, 1072, 126 );
playSe( spep_1 + 164, 1036 );
setSeVolume( spep_1 + 164, 1036, 79 );

stopSe( spep_1 + 17, se_11091, 12 );
stopSe( spep_1 + 92, se_11092, 12 );

--白フェード
entryFade( spep_1 + 62, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 96, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 180, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fad

--次の準備
spep_2 = spep_1 +190;

------------------------------------------------------
-- パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 60, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 60, punch_f, 255 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 60, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 60, punch_b, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 28,  10016, 20, 0x100, -1, 0, -4.2, 366 );--ズンッ
setEffShake( spep_2-3 + 28, ctzun, 20, 20 );
setEffMoveKey( spep_2-3 + 28, ctzun, -4.2, 366 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzun, -4, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzun, -11.2, 369.4 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzun, -4, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzun, -10.2, 368.8 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzun, -4, 365.8 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzun, -10.2, 368.7 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzun, -10.1, 368.6 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzun, -4, 365.7 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzun, -9.7, 368.5 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzun, -4.1, 365.9 , 0 );

setEffScaleKey( spep_2-3 + 28, ctzun, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 30, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_2-3 + 32, ctzun, 2.69, 2.69 );
setEffScaleKey( spep_2-3 + 34, ctzun, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 36, ctzun, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 38, ctzun, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 40, ctzun, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 42, ctzun, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 44, ctzun, 2.21, 2.21 );
setEffScaleKey( spep_2-3 + 46, ctzun, 2.1, 2.1 );
setEffScaleKey( spep_2-3 + 48, ctzun, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 28, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 38, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 40, ctzun, -16.6 );
setEffRotateKey( spep_2-3 + 44, ctzun, -16.6 );
setEffRotateKey( spep_2-3 + 46, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 48, ctzun, -16.5 );

setEffAlphaKey( spep_2-3 + 28, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 34, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 36, ctzun, 239 );
setEffAlphaKey( spep_2-3 + 38, ctzun, 223 );
setEffAlphaKey( spep_2-3 + 40, ctzun, 207 );
setEffAlphaKey( spep_2-3 + 42, ctzun, 191 );
setEffAlphaKey( spep_2-3 + 44, ctzun, 132 );
setEffAlphaKey( spep_2-3 + 46, ctzun, 72 );
setEffAlphaKey( spep_2-3 + 48, ctzun, 13 );


--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 58 -3, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 28, 1, 108 );

setMoveKey( spep_2 + 0, 1, -976.5, -162.3 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -720.5, -97.3 , 0 );
setMoveKey( spep_2-3 + 4, 1, -473.5, -34.4 , 0 );
setMoveKey( spep_2-3 + 6, 1, -233.3, 26.3 , 0 );
setMoveKey( spep_2-3 + 8, 1, -1.9, 84.4 , 0 );
setMoveKey( spep_2-3 + 10, 1, 0.4, 79.9 , 0 );
setMoveKey( spep_2-3 + 12, 1, -2.1, 73.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 2.9, 73.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 12.7, 75.5 , 0 );
setMoveKey( spep_2-3 + 18, 1, 17.4, 75.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 21.9, 75.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, 26, 75 , 0 );
setMoveKey( spep_2-3 + 24, 1, 35.5, 76.7 , 0 );
setMoveKey( spep_2-3 + 27, 1, 39.3, 76.3 , 0 );
setMoveKey( spep_2-3 + 28, 1, 151, 122.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, 138.9, 116.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 111.7, 100 , 0 );
setMoveKey( spep_2-3 + 34, 1, 101.4, 88.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 101.2, 84.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 104.9, 88.7 , 0 );
setMoveKey( spep_2-3 + 40, 1, 104.6, 86.5 , 0 );
setMoveKey( spep_2-3 + 42, 1, 108.1, 88.3 , 0 );
setMoveKey( spep_2-3 + 44, 1, 105.4, 85.9 , 0 );
setMoveKey( spep_2-3 + 46, 1, 133.3, 92.7 , 0 );
setMoveKey( spep_2-3 + 48, 1, 159.7, 97.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 184.4, 103.4 , 0 );
setMoveKey( spep_2-3 + 52, 1, 205.8, 107.9 , 0 );
setMoveKey( spep_2-3 + 54, 1, 231.7, 112.7 , 0 );
setMoveKey( spep_2-3 + 56, 1, 262.5, 118.6 , 0 );
setMoveKey( spep_2-3 + 58, 1, 287.5, 126.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.14, 2.14 );
--setScaleKey( spep_2-3 + 2, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 4, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 6, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 8, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 10, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 12, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 16, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 20, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 22, 1, 1.29, 1.29 );
setScaleKey( spep_2-3 + 24, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 27, 1, 1.26, 1.26 );
setScaleKey( spep_2-3 + 28, 1, 2.09, 2.09 );
setScaleKey( spep_2-3 + 30, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 34, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 36, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 38, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 42, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 44, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 46, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 48, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 50, 1, 2.53, 2.53 );
setScaleKey( spep_2-3 + 52, 1, 2.94, 2.94 );
setScaleKey( spep_2-3 + 54, 1, 3.34, 3.34 );
setScaleKey( spep_2-3 + 56, 1, 3.76, 3.76 );
setScaleKey( spep_2-3 + 58, 1, 4.17, 4.17 );

setRotateKey( spep_2 + 0, 1, -10.2 );
--setRotateKey( spep_2-3 + 2, 1, -9.1 );
setRotateKey( spep_2-3 + 4, 1, -8 );
setRotateKey( spep_2-3 + 6, 1, -6.9 );
setRotateKey( spep_2-3 + 8, 1, -5.8 );
setRotateKey( spep_2-3 + 10, 1, -5.7 );
setRotateKey( spep_2-3 + 12, 1, -5.5 );
setRotateKey( spep_2-3 + 14, 1, -5.4 );
setRotateKey( spep_2-3 + 16, 1, -5.2 );
setRotateKey( spep_2-3 + 18, 1, -5.1 );
setRotateKey( spep_2-3 + 20, 1, -4.9 );
setRotateKey( spep_2-3 + 22, 1, -4.8 );
setRotateKey( spep_2-3 + 24, 1, -4.6 );
setRotateKey( spep_2-3 + 27, 1, -4.5 );
setRotateKey( spep_2-3 + 28, 1, -15.5 );
setRotateKey( spep_2-3 + 32, 1, -15.5 );
setRotateKey( spep_2-3 + 34, 1, -15.4 );
setRotateKey( spep_2-3 + 40, 1, -15.4 );
setRotateKey( spep_2-3 + 42, 1, -15.3 );
setRotateKey( spep_2-3 + 48, 1, -15.3 );
setRotateKey( spep_2-3 + 50, 1, -15.4 );
setRotateKey( spep_2-3 + 54, 1, -15.4 );
setRotateKey( spep_2-3 + 56, 1, -15.5 );
setRotateKey( spep_2-3 + 58, 1, -15.5 );

--SE
playSe( spep_2 + 26, 1189 );
se_1187 = playSe( spep_2 + 30, 1187 );
setSeVolume( spep_2 + 30, 1187, 79 );
playSe( spep_2 + 30, 1001 );
setSeVolume( spep_2 + 30, 1001, 63 );
playSe( spep_2 + 36, 1007 );
setSeVolume( spep_2 + 36, 1007, 79 );

stopSe( spep_2 + 43, se_1187, 30 );

--白フェード
entryFade( spep_2 + 25, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 48, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2 +60;

------------------------------------------------------
-- パンチ連打
------------------------------------------------------
-- ** エフェクト等 ** --
barrage = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_3 + 0, barrage, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, barrage, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, barrage, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, barrage, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, barrage, 0 );
setEffRotateKey( spep_3 + 66, barrage, 0 );
setEffAlphaKey( spep_3 + 0, barrage, 255 );
setEffAlphaKey( spep_3 + 66, barrage, 255 );

--文字エントリ
ctdogagaga = entryEffectLife( spep_3 + 0,  10017, 62, 0x100, -1, 0, 23.3, 313.9 );--ドガガガッ
setEffShake( spep_3 + 0, ctdogagaga, 62, 20 );
setEffMoveKey( spep_3 + 0, ctdogagaga, 23.3, 313.9 , 0 );
setEffMoveKey( spep_3 + 2, ctdogagaga, 6.3, 313.9 , 0 );
setEffMoveKey( spep_3 + 4, ctdogagaga, 2, 283.5 , 0 );
setEffMoveKey( spep_3 + 6, ctdogagaga, 4.8, 306.7 , 0 );
setEffMoveKey( spep_3 + 8, ctdogagaga, 20.8, 298 , 0 );
setEffMoveKey( spep_3 + 10, ctdogagaga, 30.1, 305.2 , 0 );
setEffMoveKey( spep_3 + 12, ctdogagaga, 24.8, 319.1 , 0 );
setEffMoveKey( spep_3 + 14, ctdogagaga, 30.5, 306.8 , 0 );
setEffMoveKey( spep_3 + 16, ctdogagaga, 25.1, 320.9 , 0 );
setEffMoveKey( spep_3 + 18, ctdogagaga, 30.8, 308.4 , 0 );
setEffMoveKey( spep_3 + 20, ctdogagaga, 25.3, 322.7 , 0 );
setEffMoveKey( spep_3 + 22, ctdogagaga, 31.1, 309.9 , 0 );
setEffMoveKey( spep_3 + 24, ctdogagaga, 25.6, 324.5 , 0 );
setEffMoveKey( spep_3 + 26, ctdogagaga, 31.5, 311.5 , 0 );
setEffMoveKey( spep_3 + 28, ctdogagaga, 25.8, 326.3 , 0 );
setEffMoveKey( spep_3 + 30, ctdogagaga, 31.8, 313 , 0 );
setEffMoveKey( spep_3 + 32, ctdogagaga, 26, 328.1 , 0 );
setEffMoveKey( spep_3 + 34, ctdogagaga, 32.1, 314.6 , 0 );
setEffMoveKey( spep_3 + 36, ctdogagaga, 26.3, 329.9 , 0 );
setEffMoveKey( spep_3 + 38, ctdogagaga, 32.5, 316.1 , 0 );
setEffMoveKey( spep_3 + 40, ctdogagaga, 26.5, 331.7 , 0 );
setEffMoveKey( spep_3 + 42, ctdogagaga, 32.8, 317.7 , 0 );
setEffMoveKey( spep_3 + 44, ctdogagaga, 26.7, 333.5 , 0 );
setEffMoveKey( spep_3 + 46, ctdogagaga, 33.1, 319.3 , 0 );
setEffMoveKey( spep_3 + 48, ctdogagaga, 27, 335.2 , 0 );
setEffMoveKey( spep_3 + 50, ctdogagaga, 33.5, 320.8 , 0 );
setEffMoveKey( spep_3 + 52, ctdogagaga, 27.2, 337 , 0 );
setEffMoveKey( spep_3 + 54, ctdogagaga, 33.8, 322.4 , 0 );
setEffMoveKey( spep_3 + 56, ctdogagaga, 27.5, 338.8 , 0 );
setEffMoveKey( spep_3 + 58, ctdogagaga, 34.1, 323.9 , 0 );
setEffMoveKey( spep_3 + 60, ctdogagaga, 27.7, 340.6 , 0 );
setEffMoveKey( spep_3 + 62, ctdogagaga, 34.5, 325.5 , 0 );

setEffScaleKey( spep_3 + 0, ctdogagaga, 3.36, 3.36 );
setEffScaleKey( spep_3 + 2, ctdogagaga, 3.89, 3.89 );
setEffScaleKey( spep_3 + 4, ctdogagaga, 4.42, 4.42 );
setEffScaleKey( spep_3 + 6, ctdogagaga, 4.05, 4.05 );
setEffScaleKey( spep_3 + 8, ctdogagaga, 3.69, 3.69 );
setEffScaleKey( spep_3 + 10, ctdogagaga, 3.32, 3.32 );
setEffScaleKey( spep_3 + 12, ctdogagaga, 3.35, 3.35 );
setEffScaleKey( spep_3 + 14, ctdogagaga, 3.38, 3.38 );
setEffScaleKey( spep_3 + 16, ctdogagaga, 3.41, 3.41 );
setEffScaleKey( spep_3 + 18, ctdogagaga, 3.44, 3.44 );
setEffScaleKey( spep_3 + 20, ctdogagaga, 3.47, 3.47 );
setEffScaleKey( spep_3 + 22, ctdogagaga, 3.5, 3.5 );
setEffScaleKey( spep_3 + 24, ctdogagaga, 3.53, 3.53 );
setEffScaleKey( spep_3 + 26, ctdogagaga, 3.56, 3.56 );
setEffScaleKey( spep_3 + 28, ctdogagaga, 3.59, 3.59 );
setEffScaleKey( spep_3 + 30, ctdogagaga, 3.62, 3.62 );
setEffScaleKey( spep_3 + 32, ctdogagaga, 3.65, 3.65 );
setEffScaleKey( spep_3 + 34, ctdogagaga, 3.68, 3.68 );
setEffScaleKey( spep_3 + 36, ctdogagaga, 3.71, 3.71 );
setEffScaleKey( spep_3 + 38, ctdogagaga, 3.73, 3.73 );
setEffScaleKey( spep_3 + 40, ctdogagaga, 3.76, 3.76 );
setEffScaleKey( spep_3 + 42, ctdogagaga, 3.79, 3.79 );
setEffScaleKey( spep_3 + 44, ctdogagaga, 3.82, 3.82 );
setEffScaleKey( spep_3 + 46, ctdogagaga, 3.85, 3.85 );
setEffScaleKey( spep_3 + 48, ctdogagaga, 3.88, 3.88 );
setEffScaleKey( spep_3 + 50, ctdogagaga, 3.91, 3.91 );
setEffScaleKey( spep_3 + 52, ctdogagaga, 3.94, 3.94 );
setEffScaleKey( spep_3 + 54, ctdogagaga, 3.97, 3.97 );
setEffScaleKey( spep_3 + 56, ctdogagaga, 4, 4 );
setEffScaleKey( spep_3 + 58, ctdogagaga, 4.03, 4.03 );
setEffScaleKey( spep_3 + 60, ctdogagaga, 4.06, 4.06 );
setEffScaleKey( spep_3 + 62, ctdogagaga, 4.09, 4.09 );

setEffRotateKey( spep_3 + 0, ctdogagaga, 22.4 );
setEffRotateKey( spep_3 + 62, ctdogagaga, 22.4 );

setEffAlphaKey( spep_3 + 0, ctdogagaga, 255 );
setEffAlphaKey( spep_3 + 62, ctdogagaga, 255 );

--SE
playSe( spep_3 + 3, 1006 );
playSe( spep_3 + 3, 1000 );
setSeVolume( spep_3 + 3, 1000, 71 );
se_1190 = playSe( spep_3 + 4, 1190 );
playSe( spep_3 + 15, 1000 );
setSeVolume( spep_3 + 15, 1000, 112 );
playSe( spep_3 + 15, 1006 );
se_1190 = playSe( spep_3 + 25, 1190 );
playSe( spep_3 + 25, 1000 );
playSe( spep_3 + 25, 1009 );
playSe( spep_3 + 34, 1000 );
playSe( spep_3 + 34, 1009 );
playSe( spep_3 + 46, 1006 );
playSe( spep_3 + 46, 1000 );
se_1190 = playSe( spep_3 + 57, 1190 );
playSe( spep_3 + 57, 1110 );
se_1210 = playSe( spep_3 + 62, 1210 );
setSeVolume( spep_3 + 62, 1210, 0 );

stopSe( spep_3 + 15, se_1190, 4 );
stopSe( spep_3 + 36, se_1190, 4 );

--白フェード
entryFade( spep_3 + 60, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3 +66;

------------------------------------------------------
-- 決めパンチ・手前
------------------------------------------------------
-- ** エフェクト等 ** --
decision_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_4 + 0,decision_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40,decision_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0,decision_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40,decision_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,decision_f, 0 );
setEffRotateKey( spep_4 + 40,decision_f, 0 );
setEffAlphaKey( spep_4 + 0,decision_f, 255 );
setEffAlphaKey( spep_4 + 40,decision_f, 255 );

-- ** エフェクト等 ** --
decision_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_4 + 0,decision_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40,decision_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0,decision_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40,decision_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,decision_b, 0 );
setEffRotateKey( spep_4 + 40,decision_b, 0 );
setEffAlphaKey( spep_4 + 0, decision_b, 255 );
setEffAlphaKey( spep_4 + 40,decision_b, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_4 + 0,  10021, 30, 0x100, -1, 0, 53.1, 361.8 );--バゴォッ
setEffShake( spep_4 + 0, ctbago, 30, 20 );
setEffMoveKey( spep_4 + 0, ctbago, 53.1, 361.8 , 0 );
setEffMoveKey( spep_4 + 2, ctbago, 52.6, 361.1 , 0 );
setEffMoveKey( spep_4 + 4, ctbago, 53.1, 361.7 , 0 );
setEffMoveKey( spep_4 + 6, ctbago, 38.5, 384.8 , 0 );
setEffMoveKey( spep_4 + 8, ctbago, 53.1, 361.8 , 0 );
setEffMoveKey( spep_4 + 10, ctbago, 38.9, 384.2 , 0 );
setEffMoveKey( spep_4 + 12, ctbago, 53.2, 361.8 , 0 );
setEffMoveKey( spep_4 + 14, ctbago, 39.3, 383.7 , 0 );
setEffMoveKey( spep_4 + 16, ctbago, 53.2, 361.9 , 0 );
setEffMoveKey( spep_4 + 18, ctbago, 39.7, 383.2 , 0 );
setEffMoveKey( spep_4 + 20, ctbago, 53.2, 361.9 , 0 );
setEffMoveKey( spep_4 + 22, ctbago, 53.3, 362 , 0 );
setEffMoveKey( spep_4 + 24, ctbago, 40.8, 381.6 , 0 );
setEffMoveKey( spep_4 + 26, ctbago, 53.3, 362.1 , 0 );
setEffMoveKey( spep_4 + 28, ctbago, 42.3, 379.4 , 0 );
setEffMoveKey( spep_4 + 30, ctbago, 43.1, 378.3 , 0 );

setEffScaleKey( spep_4 + 0, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_4 + 2, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_4 + 4, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_4 + 6, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_4 + 8, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_4 + 10, ctbago, 3.09, 3.09 );
setEffScaleKey( spep_4 + 12, ctbago, 3.05, 3.05 );
setEffScaleKey( spep_4 + 14, ctbago, 3.01, 3.01 );
setEffScaleKey( spep_4 + 16, ctbago, 2.97, 2.97 );
setEffScaleKey( spep_4 + 18, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_4 + 20, ctbago, 2.89, 2.89 );
setEffScaleKey( spep_4 + 22, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_4 + 24, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_4 + 26, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_4 + 28, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_4 + 30, ctbago, 2.21, 2.21 );

setEffRotateKey( spep_4 + 0, ctbago, 3 );
setEffRotateKey( spep_4 + 30, ctbago, 3 );

setEffAlphaKey( spep_4 + 0, ctbago, 255 );
setEffAlphaKey( spep_4 + 22, ctbago, 255 );
setEffAlphaKey( spep_4 + 24, ctbago, 191 );
setEffAlphaKey( spep_4 + 26, ctbago, 128 );
setEffAlphaKey( spep_4 + 28, ctbago, 64 );
setEffAlphaKey( spep_4 + 30, ctbago, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 28, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4  + 0, 1, 42.8, 29.8 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 72.2, 58.9 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 100.8, 93.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 116.8, 120.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 140.2, 149.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 150.9, 169.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 411.2, 362.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 582.2, 494.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 773.6, 617.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 934.8, 716.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 1077.2, 808.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 1188.1, 878.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 1292.6, 940.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 1366.1, 981.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 1424.7, 1016.1 , 0 );

setScaleKey( spep_4  + 0, 1, 5.38, 5.38 );
--setScaleKey( spep_4 -3 + 2, 1, 4.98, 4.98 );
setScaleKey( spep_4 -3 + 4, 1, 4.57, 4.57 );
setScaleKey( spep_4 -3 + 6, 1, 4.17, 4.17 );
setScaleKey( spep_4 -3 + 8, 1, 3.77, 3.77 );
setScaleKey( spep_4 -3 + 10, 1, 3.36, 3.36 );
setScaleKey( spep_4 -3 + 12, 1, 2.95, 2.95 );
setScaleKey( spep_4 -3 + 14, 1, 2.53, 2.53 );
setScaleKey( spep_4 -3 + 16, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 18, 1, 2.32, 2.32 );
setScaleKey( spep_4 -3 + 20, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 22, 1, 2.12, 2.12 );
setScaleKey( spep_4 -3 + 24, 1, 2.03, 2.03 );
setScaleKey( spep_4 -3 + 26, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 28, 1, 1.83, 1.83 );

setRotateKey( spep_4  + 0, 1, -25.4 );
--setRotateKey( spep_4 -3 + 2, 1, -24.5 );
setRotateKey( spep_4 -3 + 4, 1, -23.6 );
setRotateKey( spep_4 -3 + 6, 1, -22.7 );
setRotateKey( spep_4 -3 + 8, 1, -21.8 );
setRotateKey( spep_4 -3 + 10, 1, -20.9 );
setRotateKey( spep_4 -3 + 12, 1, -20.4 );
setRotateKey( spep_4 -3 + 14, 1, -19.9 );
setRotateKey( spep_4 -3 + 16, 1, -19.3 );
setRotateKey( spep_4 -3 + 18, 1, -18.8 );
setRotateKey( spep_4 -3 + 20, 1, -18.1 );
setRotateKey( spep_4 -3 + 22, 1, -17.6 );
setRotateKey( spep_4 -3 + 24, 1, -17.1 );
setRotateKey( spep_4 -3 + 26, 1, -16.7 );
setRotateKey( spep_4 -3 + 28, 1, -16.1 );

--SE
playSe( spep_4 + 0, 1189 );
playSe( spep_4 + 1, 1123 );
setSeVolume( spep_4 + 1, 1123, 63 );
se_1190 = playSe( spep_4 + 9, 1190 );
playSe( spep_4 + 5, 1110 );
playSe( spep_4 + 5, 1169 );

stopSe( spep_4 + 2, se_1190, 4 );
stopSe( spep_4 + 32, se_1190, 19 );

--白フェード
entryFade( spep_4 + 32, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5 = spep_4 +40;

------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_5 + 0,tame, 0, 0 , 0 );
setEffMoveKey( spep_5 + 152,tame, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0,tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 152,tame, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,tame, 0 );
setEffRotateKey( spep_5 + 152,tame, 0 );
setEffAlphaKey( spep_5 + 0,tame, 255 );
setEffAlphaKey( spep_5 + 152,tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_5 + 42, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_5 + 56, 1018 );

--白フェード
entryFade( spep_5 + 40, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 144, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_5 + 5, 1037 );
se_1157 = playSe( spep_5 + 5, 1157 );
playSe( spep_5 + 120, 1020 );
se_1020 = playSe( spep_5 + 139, 1020 );

setSeVolume( spep_5 + 4, 1210, 0 );
setSeVolume( spep_5 + 5, 1210, 9 );
setSeVolume( spep_5 + 6, 1210, 18.1 );
setSeVolume( spep_5 + 7, 1210, 27.2 );
setSeVolume( spep_5 + 8, 1210, 36.3 );
setSeVolume( spep_5 + 9, 1210, 45.4 );
setSeVolume( spep_5 + 10, 1210, 54.5 );
setSeVolume( spep_5 + 11, 1210, 63.6 );
setSeVolume( spep_5 + 12, 1210, 72.7 );
setSeVolume( spep_5 + 13, 1210, 81.8 );
setSeVolume( spep_5 + 14, 1210, 90.9 );
setSeVolume( spep_5 + 15, 1210, 100 );

stopSe( spep_5 + 150, se_1020, 0 );
stopSe( spep_5 + 150, se_1210, 0 );

--次の準備
spep_6 = spep_5 +152;

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
stopSe( spep_6 + 0, se_1037, 0 );
playSe( spep_6 + 0, SE_05 );

--白フェード
entryFade( spep_6 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_7 + 0,beam, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100,beam, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0,beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100,beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,beam, 0 );
setEffRotateKey( spep_7 + 100,beam, 0 );
setEffAlphaKey( spep_7 + 0,beam, 255 );
setEffAlphaKey( spep_7 + 100,beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_7 -3 + 40,  10012, 58, 0x100, -1, 0, -82.9, 243.1 );--ズオッ
setEffShake( spep_7 -3 + 40, ctzuo, 58, 20 );
setEffMoveKey( spep_7 -3 + 40, ctzuo, -82.9, 243.1 , 0 );
setEffMoveKey( spep_7 -3 + 42, ctzuo, -91.8, 284.6 , 0 );
setEffMoveKey( spep_7 -3 + 44, ctzuo, -82.9, 311.3 , 0 );
setEffMoveKey( spep_7 -3 + 46, ctzuo, -99.7, 321.1 , 0 );
setEffMoveKey( spep_7 -3 + 48, ctzuo, -83.3, 307.2 , 0 );
setEffMoveKey( spep_7 -3 + 50, ctzuo, -96.9, 314.7 , 0 );
setEffMoveKey( spep_7 -3 + 52, ctzuo, -83.7, 305.4 , 0 );
setEffMoveKey( spep_7 -3 + 54, ctzuo, -97.1, 315.3 , 0 );
setEffMoveKey( spep_7 -3 + 56, ctzuo, -83.8, 306 , 0 );
setEffMoveKey( spep_7 -3 + 58, ctzuo, -97.4, 316 , 0 );
setEffMoveKey( spep_7 -3 + 60, ctzuo, -83.9, 306.5 , 0 );
setEffMoveKey( spep_7 -3 + 62, ctzuo, -97.6, 316.6 , 0 );
setEffMoveKey( spep_7 -3 + 64, ctzuo, -84.1, 307.1 , 0 );
setEffMoveKey( spep_7 -3 + 66, ctzuo, -97.8, 317.2 , 0 );
setEffMoveKey( spep_7 -3 + 68, ctzuo, -84.4, 307.7 , 0 );
setEffMoveKey( spep_7 -3 + 70, ctzuo, -98.1, 317.9 , 0 );
setEffMoveKey( spep_7 -3 + 72, ctzuo, -84.4, 308.2 , 0 );
setEffMoveKey( spep_7 -3 + 74, ctzuo, -98.3, 318.5 , 0 );
setEffMoveKey( spep_7 -3 + 76, ctzuo, -84.6, 308.8 , 0 );
setEffMoveKey( spep_7 -3 + 78, ctzuo, -98.4, 319.1 , 0 );
setEffMoveKey( spep_7 -3 + 80, ctzuo, -84.8, 309.3 , 0 );
setEffMoveKey( spep_7 -3 + 82, ctzuo, -98.7, 319.8 , 0 );
setEffMoveKey( spep_7 -3 + 84, ctzuo, -85, 309.9 , 0 );
setEffMoveKey( spep_7 -3 + 86, ctzuo, -98.8, 320.4 , 0 );
setEffMoveKey( spep_7 -3 + 88, ctzuo, -85.2, 310.5 , 0 );
setEffMoveKey( spep_7 -3 + 90, ctzuo, -99.1, 321.2 , 0 );
setEffMoveKey( spep_7 -3 + 92, ctzuo, -85.2, 311 , 0 );
setEffMoveKey( spep_7 -3 + 94, ctzuo, -99.3, 321.7 , 0 );
setEffMoveKey( spep_7 -3 + 96, ctzuo, -85.4, 311.7 , 0 );
setEffMoveKey( spep_7 -3 + 98, ctzuo, -99.5, 322.3 , 0 );

setEffScaleKey( spep_7 -3 + 40, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_7 -3 + 42, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_7 -3 + 44, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_7 -3 + 46, ctzuo, 3, 3 );
setEffScaleKey( spep_7 -3 + 48, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_7 -3 + 50, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_7 -3 + 56, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_7 -3 + 58, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_7 -3 + 68, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_7 -3 + 70, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_7 -3 + 78, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_7 -3 + 80, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_7 -3 + 88, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_7 -3 + 90, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_7 -3 + 98, ctzuo, 2.56, 2.56 );

setEffRotateKey( spep_7 -3 + 40, ctzuo, -9.4 );
setEffRotateKey( spep_7 -3 + 42, ctzuo, -13.8 );
setEffRotateKey( spep_7 -3 + 44, ctzuo, -18.1 );
setEffRotateKey( spep_7 -3 + 46, ctzuo, -18.1 );
setEffRotateKey( spep_7 -3 + 48, ctzuo, -18 );
setEffRotateKey( spep_7 -3 + 50, ctzuo, -17.9 );
setEffRotateKey( spep_7 -3 + 52, ctzuo, -17.8 );
setEffRotateKey( spep_7 -3 + 54, ctzuo, -17.8 );
setEffRotateKey( spep_7 -3 + 56, ctzuo, -17.7 );
setEffRotateKey( spep_7 -3 + 58, ctzuo, -17.7 );
setEffRotateKey( spep_7 -3 + 60, ctzuo, -17.6 );
setEffRotateKey( spep_7 -3 + 62, ctzuo, -17.6 );
setEffRotateKey( spep_7 -3 + 64, ctzuo, -17.5 );
setEffRotateKey( spep_7 -3 + 66, ctzuo, -17.4 );
setEffRotateKey( spep_7 -3 + 68, ctzuo, -17.4 );
setEffRotateKey( spep_7 -3 + 70, ctzuo, -17.3 );
setEffRotateKey( spep_7 -3 + 72, ctzuo, -17.3 );
setEffRotateKey( spep_7 -3 + 74, ctzuo, -17.2 );
setEffRotateKey( spep_7 -3 + 76, ctzuo, -17.2 );
setEffRotateKey( spep_7 -3 + 78, ctzuo, -17.1 );
setEffRotateKey( spep_7 -3 + 80, ctzuo, -17 );
setEffRotateKey( spep_7 -3 + 82, ctzuo, -17 );
setEffRotateKey( spep_7 -3 + 84, ctzuo, -16.9 );
setEffRotateKey( spep_7 -3 + 86, ctzuo, -16.9 );
setEffRotateKey( spep_7 -3 + 88, ctzuo, -16.8 );
setEffRotateKey( spep_7 -3 + 90, ctzuo, -16.8 );
setEffRotateKey( spep_7 -3 + 92, ctzuo, -16.7 );
setEffRotateKey( spep_7 -3 + 94, ctzuo, -16.7 );
setEffRotateKey( spep_7 -3 + 96, ctzuo, -16.6 );
setEffRotateKey( spep_7 -3 + 98, ctzuo, -16.5 );

setEffAlphaKey( spep_7 -3 + 40, ctzuo, 255 );
setEffAlphaKey( spep_7 -3 + 98, ctzuo, 255 );

--SE
playSe( spep_7, 1056 );
playSe( spep_7 + 33, 1133 );
playSe( spep_7 + 33, 1022 );
setSeVolume( spep_7 + 33, 1022, 126 );
se_1124 = playSe( spep_7 + 39, 1124 );
setSeVolume( spep_7 + 39, 1124, 0 );
setSeVolume( spep_7 + 55, 1124, 0 );
setSeVolume( spep_7 + 56, 1124, 1.6 );
setSeVolume( spep_7 + 57, 1124, 3.2 );
setSeVolume( spep_7 + 58, 1124, 4.8 );
setSeVolume( spep_7 + 59, 1124, 6.4 );
setSeVolume( spep_7 + 60, 1124, 8 );
setSeVolume( spep_7 + 61, 1124, 9.6 );
setSeVolume( spep_7 + 62, 1124, 11.2 );
setSeVolume( spep_7 + 63, 1124, 12.8 );
setSeVolume( spep_7 + 64, 1124, 14.4 );
setSeVolume( spep_7 + 65, 1124, 16 );
setSeVolume( spep_7 + 66, 1124, 17.6 );
setSeVolume( spep_7 + 67, 1124, 19.2 );
setSeVolume( spep_7 + 68, 1124, 20.8 );
setSeVolume( spep_7 + 69, 1124, 22.4 );
setSeVolume( spep_7 + 70, 1124, 24 );
setSeVolume( spep_7 + 71, 1124, 25.6 );
setSeVolume( spep_7 + 72, 1124, 27.2 );
setSeVolume( spep_7 + 73, 1124, 28.8 );
setSeVolume( spep_7 + 74, 1124, 30.4 );
setSeVolume( spep_7 + 75, 1124, 32 );
setSeVolume( spep_7 + 76, 1124, 33.6 );
setSeVolume( spep_7 + 77, 1124, 35.2 );
setSeVolume( spep_7 + 78, 1124, 36.8 );
setSeVolume( spep_7 + 79, 1124, 38.4 );
setSeVolume( spep_7 + 80, 1124, 40 );
setSeVolume( spep_7 + 81, 1124, 41.6 );
setSeVolume( spep_7 + 82, 1124, 43.2 );
setSeVolume( spep_7 + 83, 1124, 44.8 );
setSeVolume( spep_7 + 84, 1124, 46.4 );
setSeVolume( spep_7 + 85, 1124, 48 );
setSeVolume( spep_7 + 86, 1124, 49.6 );
setSeVolume( spep_7 + 87, 1124, 51.2 );
setSeVolume( spep_7 + 88, 1124, 52.8 );
setSeVolume( spep_7 + 89, 1124, 54.4 );
setSeVolume( spep_7 + 90, 1124, 56 );

--白フェード
entryFade( spep_7 + 94, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_8 = spep_7 +100;

------------------------------------------------------
-- 敵を連れて行く・手前
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_8 + 0,hit_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40,hit_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0,hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 40,hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0,hit_f, 0 );
setEffRotateKey( spep_8 + 40,hit_f, 0 );
setEffAlphaKey( spep_8 + 0,hit_f, 255 );
setEffAlphaKey( spep_8 + 40,hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_8 + 0,hit_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40,hit_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0,hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 40,hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0,hit_b, 0 );
setEffRotateKey( spep_8 + 40,hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 40,hit_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 26, 1, 0 );
changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -229.1, -127.9 , 0 );
setMoveKey( spep_8 + 2, 1, -172.5, -88.1 , 0 );
setMoveKey( spep_8 + 4, 1, -126.3, -55.5 , 0 );
setMoveKey( spep_8 + 6, 1, -90.3, -30.2 , 0 );
setMoveKey( spep_8 + 8, 1, -64.6, -12.1 , 0 );
setMoveKey( spep_8 + 10, 1, -50.3, -3.6 , 0 );
setMoveKey( spep_8 + 12, 1, -36, 4.8 , 0 );
setMoveKey( spep_8 + 14, 1, -21.7, 13.3 , 0 );
setMoveKey( spep_8 + 16, 1, -7.4, 21.7 , 0 );
setMoveKey( spep_8 + 18, 1, 6.9, 30.1 , 0 );
setMoveKey( spep_8 + 20, 1, 21.3, 38.6 , 0 );
setMoveKey( spep_8 + 22, 1, 35.6, 47 , 0 );
setMoveKey( spep_8 + 24, 1, 49.9, 55.5 , 0 );
setMoveKey( spep_8 + 26, 1, 64.2, 63.9 , 0 );
--setMoveKey( spep_8 + 28, 1, 224.6, 172.8 , 0 );
--setMoveKey( spep_8 + 30, 1, 360.5, 265 , 0 );
--setMoveKey( spep_8 + 32, 1, 472, 340.7 , 0 );
--setMoveKey( spep_8 + 34, 1, 558.9, 399.7 , 0 );
--setMoveKey( spep_8 + 36, 1, 621.4, 442.1 , 0 );
--setMoveKey( spep_8 + 38, 1, 659.4, 467.9 , 0 );

setScaleKey( spep_8 + 0, 1, 1.75, 1.75 );
setScaleKey( spep_8 + 2, 1, 1.61, 1.61 );
setScaleKey( spep_8 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 6, 1, 1.42, 1.42 );
setScaleKey( spep_8 + 8, 1, 1.36, 1.36 );
setScaleKey( spep_8 + 10, 1, 1.33, 1.33 );
setScaleKey( spep_8 + 12, 1, 1.3, 1.3 );
setScaleKey( spep_8 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 16, 1, 1.24, 1.24 );
setScaleKey( spep_8 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 22, 1, 1.14, 1.14 );
setScaleKey( spep_8 + 24, 1, 1.11, 1.11 );
setScaleKey( spep_8 + 26, 1, 1.08, 1.08 );
--setScaleKey( spep_8 + 28, 1, 0.91, 0.91 );
--setScaleKey( spep_8 + 30, 1, 0.76, 0.76 );
--setScaleKey( spep_8 + 32, 1, 0.64, 0.64 );
--setScaleKey( spep_8 + 34, 1, 0.54, 0.54 );
--setScaleKey( spep_8 + 36, 1, 0.47, 0.47 );
--setScaleKey( spep_8 + 38, 1, 0.43, 0.43 );

setRotateKey( spep_8 + 0, 1, -11.5 );
setRotateKey( spep_8 + 2, 1, -11.5 );
setRotateKey( spep_8 + 4, 1, -11.6 );
setRotateKey( spep_8 + 26, 1, -11.6 );
--setRotateKey( spep_8 + 30, 1, -11.6 );
--setRotateKey( spep_8 + 32, 1, -11.7 );
--setRotateKey( spep_8 + 38, 1, -11.7 );

--se
playSe( spep_8 + 9, 1021 );
se_1146 = playSe( spep_8 + 9, 1146 );
setSeVolume( spep_8 + 9, 1146, 0 );

--次の準備
spep_9 = spep_8 +36;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_9 + 0,finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 220,finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0,finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 220,finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0,finish, 0 );
setEffRotateKey( spep_9 + 220,finish, 0 );
setEffAlphaKey( spep_9 + 0,finish, 255 );
setEffAlphaKey( spep_9 + 220,finish, 255 );

--SE
playSe( spep_9 + 58, 1159 );
setSeVolume( spep_9 + 58, 1159, 89 );
playSe( spep_9 + 58, 1024 );
playSe( spep_9 + 58, 1194 );
playSe( spep_9 + 87, 1044 );
setSeVolume( spep_9 + 87, 1044, 79 );

stopSe( spep_9 + 61, se_1124, 0 );
stopSe( spep_9 + 82, se_1146, 0 );

setSeVolume( spep_9 + 3, 1146, 0 );
setSeVolume( spep_9 + 4, 1146, 5.5 );
setSeVolume( spep_9 + 5, 1146, 11.1 );
setSeVolume( spep_9 + 6, 1146, 16.6 );
setSeVolume( spep_9 + 7, 1146, 22.2 );
setSeVolume( spep_9 + 8, 1146, 27.7 );
setSeVolume( spep_9 + 9, 1146, 33.3 );
setSeVolume( spep_9 + 10, 1146, 38.8 );
setSeVolume( spep_9 + 11, 1146, 44.4 );
setSeVolume( spep_9 + 12, 1146, 50 );
setSeVolume( spep_9 + 13, 1146, 55.5 );
setSeVolume( spep_9 + 14, 1146, 61.1 );
setSeVolume( spep_9 + 15, 1146, 66.6 );
setSeVolume( spep_9 + 16, 1146, 72.2 );
setSeVolume( spep_9 + 17, 1146, 77.7 );
setSeVolume( spep_9 + 18, 1146, 83.3 );
setSeVolume( spep_9 + 19, 1146, 88.8 );
setSeVolume( spep_9 + 20, 1146, 94.4 );
setSeVolume( spep_9 + 21, 1146, 100 );

--白フェード
entryFade( spep_9 , 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_9+54, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 64 );
endPhase( spep_9 + 210  );

else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------
--最初の準備
spep_0 = 0;

-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, tossin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tossin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tossin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 90, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 90, tossin, 255 );


--SE
se_0009 = playSe( spep_0 + 0, 9 );
SE0=playSe( spep_0 + 0, 1183 );
SE1=playSe( spep_0 + 0, 1182 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_0009, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--SE
se_1109 = playSe( spep_0 + 60, 1109 );
se_11091 = playSe( spep_0 + 87, 1109 );

stopSe( spep_0 + 80, SE0, 10 );
stopSe( spep_0 + 59, se_0009, 29 );
stopSe( spep_0 + 80, se_1109, 12 );

--白フェード
entryFade( spep_0 + 82, 4, 10, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 +90;

------------------------------------------------------
-- 蹴り2発〜追っかけ・手前
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_1 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 190, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 0 );
setEffAlphaKey( spep_1-3 + 29, fighting_f, 0 );
setEffAlphaKey( spep_1-3 + 30, fighting_f, 255 );
setEffAlphaKey( spep_1 + 190, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_1 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 190, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 190, fighting_b, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_1 + 0, fighting_n, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, fighting_n, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_n, 0 );
setEffRotateKey( spep_1 + 190, fighting_n, 0 );
setEffAlphaKey( spep_1 + 0, fighting_n, 255 );
setEffAlphaKey( spep_1 -3+29 , fighting_n, 255 );
setEffAlphaKey( spep_1 -3+30, fighting_n, 0 );
setEffAlphaKey( spep_1 + 190, fighting_n, 0 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 30,  10005, 20, 0x100, -1, 0, -91.9, 334 );--ガ
setEffShake( spep_1-3 + 30, ctga, 20, 20 );
setEffMoveKey( spep_1-3 + 30, ctga, -91.9, 334 , 0 );
setEffMoveKey( spep_1-3 + 32, ctga, -91.6, 333.9 , 0 );
setEffMoveKey( spep_1-3 + 34, ctga, -105.1, 340 , 0 );
setEffMoveKey( spep_1-3 + 36, ctga, -91.8, 334.3 , 0 );
setEffMoveKey( spep_1-3 + 38, ctga, -104.6, 340.5 , 0 );
setEffMoveKey( spep_1-3 + 40, ctga, -91.7, 334.2 , 0 );
setEffMoveKey( spep_1-3 + 42, ctga, -103.6, 339.8 , 0 );
setEffMoveKey( spep_1-3 + 44, ctga, -91.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 46, ctga, -91.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 48, ctga, -102.5, 339 , 0 );
setEffMoveKey( spep_1-3 + 50, ctga, -91.6, 334.2 , 0 );

setEffScaleKey( spep_1-3 + 30, ctga, 0.97, 0.97 );
setEffScaleKey( spep_1-3 + 32, ctga, 2.56, 2.56 );
setEffScaleKey( spep_1-3 + 34, ctga, 2.6, 2.6 );
setEffScaleKey( spep_1-3 + 36, ctga, 2.63, 2.63 );
setEffScaleKey( spep_1-3 + 38, ctga, 2.53, 2.53 );
setEffScaleKey( spep_1-3 + 40, ctga, 2.43, 2.43 );
setEffScaleKey( spep_1-3 + 42, ctga, 2.33, 2.33 );
setEffScaleKey( spep_1-3 + 44, ctga, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 46, ctga, 2.13, 2.13 );
setEffScaleKey( spep_1-3 + 48, ctga, 2.11, 2.11 );
setEffScaleKey( spep_1-3 + 50, ctga, 2.08, 2.08 );

setEffRotateKey( spep_1-3 + 30, ctga, -10.7 );
setEffRotateKey( spep_1-3 + 32, ctga, -24 );
setEffRotateKey( spep_1-3 + 34, ctga, -21.2 );
setEffRotateKey( spep_1-3 + 36, ctga, -18.4 );
setEffRotateKey( spep_1-3 + 38, ctga, -18.8 );
setEffRotateKey( spep_1-3 + 40, ctga, -19.1 );
setEffRotateKey( spep_1-3 + 42, ctga, -19.5 );
setEffRotateKey( spep_1-3 + 44, ctga, -19.8 );
setEffRotateKey( spep_1-3 + 46, ctga, -20.2 );
setEffRotateKey( spep_1-3 + 48, ctga, -20.7 );
setEffRotateKey( spep_1-3 + 50, ctga, -21.1 );

setEffAlphaKey( spep_1-3 + 30, ctga, 255 );
setEffAlphaKey( spep_1-3 + 46, ctga, 255 );
setEffAlphaKey( spep_1-3 + 48, ctga, 170 );
setEffAlphaKey( spep_1-3 + 50, ctga, 85 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 102,  10020, 18, 0x100, -1, 0, -58.3, 302.9 );--バキッ
setEffShake( spep_1-3 + 102, ctbaki, 18, 20 );
setEffMoveKey( spep_1-3 + 102, ctbaki, -58.3, 302.9 , 0 );
setEffMoveKey( spep_1-3 + 104, ctbaki, -81.7, 316 , 0 );
setEffMoveKey( spep_1-3 + 106, ctbaki, -58.2, 303 , 0 );
setEffMoveKey( spep_1-3 + 108, ctbaki, -58.1, 302.9 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbaki, -73.4, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbaki, -58.1, 303 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbaki, -72.5, 311 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbaki, -58.1, 303 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbaki, -72.3, 310.9 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbaki, -58.2, 303 , 0 );

setEffScaleKey( spep_1-3 + 102, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1-3 + 104, ctbaki, 3.15, 3.15 );
setEffScaleKey( spep_1-3 + 106, ctbaki, 2.64, 2.64 );
setEffScaleKey( spep_1-3 + 108, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_1-3 + 110, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_1-3 + 112, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_1-3 + 114, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_1-3 + 116, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_1-3 + 118, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_1-3 + 120, ctbaki, 1.92, 1.92 );

setEffRotateKey( spep_1-3 + 102, ctbaki, -15.9 );
setEffRotateKey( spep_1-3 + 120, ctbaki, -15.9 );

setEffAlphaKey( spep_1-3 + 102, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 116, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 118, ctbaki, 134 );
setEffAlphaKey( spep_1-3 + 120, ctbaki, 13 );

--敵の動き
setDisp( spep_1, 1, 1);
setDisp( spep_1+48, 1, 0);
setDisp( spep_1-3+66, 1, 1);
setDisp( spep_1-3+124, 1, 0);

changeAnime( spep_1, 1, 100);
changeAnime( spep_1-3+30, 1, 7);
changeAnime( spep_1-3+66, 1, 105);
changeAnime( spep_1-3+102, 1, 107);

setMoveKey( spep_1 + 0,1, -210.8, -158.9 , 0 );
--setMoveKey( spep_1-3 + 2,1, -189.4, -134.3 , 0 );
setMoveKey( spep_1-3 + 4,1, -168, -109.7 , 0 );
setMoveKey( spep_1-3 + 6,1, -146.6, -85.1 , 0 );
setMoveKey( spep_1-3 + 8,1, -125.1, -60.5 , 0 );
setMoveKey( spep_1-3 + 10,1, -103.7, -35.9 , 0 );
setMoveKey( spep_1-3 + 12,1, -99, -31.4 , 0 );
setMoveKey( spep_1-3 + 14,1, -94.2, -26.9 , 0 );
setMoveKey( spep_1-3 + 16,1, -89.5, -22.3 , 0 );
setMoveKey( spep_1-3 + 18,1, -84.8, -17.9 , 0 );
setMoveKey( spep_1-3 + 20,1, -80.1, -13.4 , 0 );
setMoveKey( spep_1-3 + 22,1, -75.3, -8.9 , 0 );
setMoveKey( spep_1-3 + 24,1, -70.6, -4.4 , 0 );
setMoveKey( spep_1-3 + 26,1, -65.9, 0.1 , 0 );
setMoveKey( spep_1-3 + 28,1, -61.2, 4.6 , 0 );
setMoveKey( spep_1-3 + 29,1, -61.2, 4.6 , 0 );

setMoveKey( spep_1-3 + 30, 1, -32.1, -216.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, -42.5, -219.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, -22.5, -163.5 , 0 );
setMoveKey( spep_1-3 + 36, 1, -36.2, -142.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, -28.6, -109.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, -38.6, -135.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, -38.6, -120.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, -39.2, -123.5 , 0 );
setMoveKey( spep_1-3 + 46, 1, -29, -123.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, -38.8, -138.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, -593.9, -834.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, -1147.8, -1531.7 , 0 );

setMoveKey( spep_1-3 + 66, 1, 981.9, -1671 , 0 );
setMoveKey( spep_1-3 + 68, 1, 778.4, -1318.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 580.4, -933.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 361.8, -552.3 , 0 );

setMoveKey( spep_1-3 + 73, 1, 134.4, -155.1 , 0 );
setMoveKey( spep_1-3 + 76, 1, 128.5, -139.3 , 0 );
setMoveKey( spep_1-3 + 78, 1, 122.6, -131.6 , 0 );
setMoveKey( spep_1-3 + 80, 1, 116.7, -120.5 , 0 );
setMoveKey( spep_1-3 + 82, 1, 110.8, -117.2 , 0 );
setMoveKey( spep_1-3 + 84, 1, 104.9, -107.2 , 0 );
setMoveKey( spep_1-3 + 86, 1, 99, -104.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 93.1, -95.7 , 0 );
setMoveKey( spep_1-3 + 90, 1, 87.2, -87.4 , 0 );
setMoveKey( spep_1-3 + 92, 1, 81.3, -86.5 , 0 );
setMoveKey( spep_1-3 + 94, 1, 75.4, -79.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 69.5, -73.1 , 0 );
setMoveKey( spep_1-3 + 98, 1, 63.6, -74.2 , 0 );
setMoveKey( spep_1-3 + 100, 1, 51.3, -69.4 , 0 );
setMoveKey( spep_1-3 + 101, 1, 51.3, -69.4 , 0 );

setMoveKey( spep_1-3 + 102, 1, 91.7, -102.1 , 0 );
setMoveKey( spep_1-3 + 104, 1, 292, 6.6 , 0 );
setMoveKey( spep_1-3 + 106, 1, 467.5, 82.6 , 0 );
setMoveKey( spep_1-3 + 108, 1, 662.2, 163.2 , 0 );
setMoveKey( spep_1-3 + 110, 1, 819, 214.6 , 0 );
setMoveKey( spep_1-3 + 112, 1, 970, 285.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, 1064.6, 318.3 , 0 );
setMoveKey( spep_1-3 + 116, 1, 1142.1, 342.4 , 0 );
setMoveKey( spep_1-3 + 118, 1, 1155.8, 329.3 , 0 );
setMoveKey( spep_1-3 + 120, 1, 1139.6, 311.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 1306.2, 387.5 , 0 );
setMoveKey( spep_1-3 + 124, 1, 1493.2, 492.5 , 0 );

setScaleKey( spep_1 + 0,1, 2.6, 2.6 );
--setScaleKey( spep_1-3 + 2,1, 2.44, 2.44 );
setScaleKey( spep_1-3 + 4,1, 2.27, 2.27 );
setScaleKey( spep_1-3 + 6,1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 8,1, 1.93, 1.93 );
setScaleKey( spep_1-3 + 10,1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 12,1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 14,1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 16,1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 18,1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 20,1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 22,1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 24,1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 26,1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 28,1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 29,1, 1.34, 1.34 );

setScaleKey( spep_1-3 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 32, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 34, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 36, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 40, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 42, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 44, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 48, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 50, 1, 2.32, 2.32 );
setScaleKey( spep_1-3 + 52, 1, 3.75, 3.75 );

setScaleKey( spep_1-3 + 66, 1, 7.57, 7.57 );
setScaleKey( spep_1-3 + 68, 1, 6.24, 6.24 );
setScaleKey( spep_1-3 + 70, 1, 4.8, 4.8 );
setScaleKey( spep_1-3 + 72, 1, 3.37, 3.37 );
setScaleKey( spep_1-3 + 73, 1, 1.88, 1.88 );
setScaleKey( spep_1-3 + 76, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 78, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 80, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 82, 1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 84, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 86, 1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 90, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 92, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 94, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 96, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 98, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 100, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 101, 1, 1.5, 1.5 );

setScaleKey( spep_1-3 + 102, 1, 0.92, 0.92 );
setScaleKey( spep_1-3 + 104, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 106, 1, 3.11, 3.11 );
setScaleKey( spep_1-3 + 108, 1, 4.14, 4.14 );
setScaleKey( spep_1-3 + 110, 1, 5.07, 5.07 );
setScaleKey( spep_1-3 + 112, 1, 5.82, 5.82 );
setScaleKey( spep_1-3 + 114, 1, 6.47, 6.47 );
setScaleKey( spep_1-3 + 116, 1, 6.92, 6.92 );
setScaleKey( spep_1-3 + 118, 1, 7.15, 7.15 );
setScaleKey( spep_1-3 + 120, 1, 7.13, 7.13 );
setScaleKey( spep_1-3 + 122, 1, 7.92, 7.92 );
setScaleKey( spep_1-3 + 124, 1, 8.86, 8.86 );

setRotateKey( spep_1 + 0,1, 0 );
setRotateKey( spep_1-3 + 52,1, 0 );

--setRotateKey( spep_1-3 + 66, 1, -28.5 );
--setRotateKey( spep_1-3 + 68, 1, -33.3 );
--setRotateKey( spep_1-3 + 70, 1, -38 );
setRotateKey( spep_1-3 + 66, 1, -42.8 );
setRotateKey( spep_1-3 + 74, 1, -47.6 );
setRotateKey( spep_1-3 + 76, 1, -48.3 );
setRotateKey( spep_1-3 + 78, 1, -48.9 );
setRotateKey( spep_1-3 + 80, 1, -49.5 );
setRotateKey( spep_1-3 + 82, 1, -50.1 );
setRotateKey( spep_1-3 + 84, 1, -50.6 );
setRotateKey( spep_1-3 + 86, 1, -51.1 );
setRotateKey( spep_1-3 + 88, 1, -51.6 );
setRotateKey( spep_1-3 + 90, 1, -52 );
setRotateKey( spep_1-3 + 92, 1, -52.4 );
setRotateKey( spep_1-3 + 94, 1, -52.7 );
setRotateKey( spep_1-3 + 96, 1, -53.1 );
setRotateKey( spep_1-3 + 98, 1, -53.4 );
setRotateKey( spep_1-3 + 100, 1, -53.6 );
setRotateKey( spep_1-3 + 101, 1, -53.6 );

setRotateKey( spep_1-3 + 102, 1, -84.2 );
setRotateKey( spep_1-3 + 104, 1, -84.2 );
setRotateKey( spep_1-3 + 106, 1, -84.3 );
setRotateKey( spep_1-3 + 108, 1, -84.4 );
setRotateKey( spep_1-3 + 110, 1, -84.5 );
setRotateKey( spep_1-3 + 112, 1, -84.5 );
setRotateKey( spep_1-3 + 114, 1, -84.6 );
setRotateKey( spep_1-3 + 116, 1, -84.7 );
setRotateKey( spep_1-3 + 118, 1, -84.8 );
setRotateKey( spep_1-3 + 120, 1, -84.9 );
setRotateKey( spep_1-3 + 122, 1, -85 );
setRotateKey( spep_1-3 + 124, 1, -85.2 );

--SE
playSe( spep_1 + 28, 1189 );
playSe( spep_1 + 32, 1110 );
playSe( spep_1 + 32, 1009 );
se_11092 = playSe( spep_1 + 72, 1109 );
playSe( spep_1 + 102, 1120 );
playSe( spep_1 + 116, 1036 );
setSeVolume( spep_1 + 116, 1036, 63 );
playSe( spep_1 + 140, 1036 );
setSeVolume( spep_1 + 140, 1036, 71 );
playSe( spep_1 + 140, 1056 );
setSeVolume( spep_1 + 140, 1056, 63 );
playSe( spep_1 + 153, 1072 );
setSeVolume( spep_1 + 153, 1072, 126 );
playSe( spep_1 + 164, 1036 );
setSeVolume( spep_1 + 164, 1036, 79 );

stopSe( spep_1 + 17, se_11091, 12 );
stopSe( spep_1 + 92, se_11092, 12 );

--白フェード
entryFade( spep_1 + 62, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 96, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 180, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fad

--次の準備
spep_2 = spep_1 +190;

------------------------------------------------------
-- パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 60, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 60, punch_f, 255 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 60, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 60, punch_b, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 28,  10016, 20, 0x100, -1, 0, -4.2, 366 );--ズンッ
setEffShake( spep_2-3 + 28, ctzun, 20, 20 );
setEffMoveKey( spep_2-3 + 28, ctzun, -4.2, 366 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzun, -4, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzun, -11.2, 369.4 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzun, -4, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzun, -10.2, 368.8 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzun, -4, 365.8 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzun, -10.2, 368.7 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzun, -10.1, 368.6 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzun, -4, 365.7 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzun, -9.7, 368.5 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzun, -4.1, 365.9 , 0 );

setEffScaleKey( spep_2-3 + 28, ctzun, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 30, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_2-3 + 32, ctzun, 2.69, 2.69 );
setEffScaleKey( spep_2-3 + 34, ctzun, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 36, ctzun, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 38, ctzun, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 40, ctzun, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 42, ctzun, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 44, ctzun, 2.21, 2.21 );
setEffScaleKey( spep_2-3 + 46, ctzun, 2.1, 2.1 );
setEffScaleKey( spep_2-3 + 48, ctzun, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 28, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 38, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 40, ctzun, -16.6 );
setEffRotateKey( spep_2-3 + 44, ctzun, -16.6 );
setEffRotateKey( spep_2-3 + 46, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 48, ctzun, -16.5 );

setEffAlphaKey( spep_2-3 + 28, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 34, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 36, ctzun, 239 );
setEffAlphaKey( spep_2-3 + 38, ctzun, 223 );
setEffAlphaKey( spep_2-3 + 40, ctzun, 207 );
setEffAlphaKey( spep_2-3 + 42, ctzun, 191 );
setEffAlphaKey( spep_2-3 + 44, ctzun, 132 );
setEffAlphaKey( spep_2-3 + 46, ctzun, 72 );
setEffAlphaKey( spep_2-3 + 48, ctzun, 13 );


--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 58 -3, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 28, 1, 108 );

setMoveKey( spep_2 + 0, 1, -976.5, -162.3 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -720.5, -97.3 , 0 );
setMoveKey( spep_2-3 + 4, 1, -473.5, -34.4 , 0 );
setMoveKey( spep_2-3 + 6, 1, -233.3, 26.3 , 0 );
setMoveKey( spep_2-3 + 8, 1, -1.9, 84.4 , 0 );
setMoveKey( spep_2-3 + 10, 1, 0.4, 79.9 , 0 );
setMoveKey( spep_2-3 + 12, 1, -2.1, 73.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 2.9, 73.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 12.7, 75.5 , 0 );
setMoveKey( spep_2-3 + 18, 1, 17.4, 75.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 21.9, 75.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, 26, 75 , 0 );
setMoveKey( spep_2-3 + 24, 1, 35.5, 76.7 , 0 );
setMoveKey( spep_2-3 + 27, 1, 39.3, 76.3 , 0 );
setMoveKey( spep_2-3 + 28, 1, 151, 122.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, 138.9, 116.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 111.7, 100 , 0 );
setMoveKey( spep_2-3 + 34, 1, 101.4, 88.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 101.2, 84.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 104.9, 88.7 , 0 );
setMoveKey( spep_2-3 + 40, 1, 104.6, 86.5 , 0 );
setMoveKey( spep_2-3 + 42, 1, 108.1, 88.3 , 0 );
setMoveKey( spep_2-3 + 44, 1, 105.4, 85.9 , 0 );
setMoveKey( spep_2-3 + 46, 1, 133.3, 92.7 , 0 );
setMoveKey( spep_2-3 + 48, 1, 159.7, 97.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 184.4, 103.4 , 0 );
setMoveKey( spep_2-3 + 52, 1, 205.8, 107.9 , 0 );
setMoveKey( spep_2-3 + 54, 1, 231.7, 112.7 , 0 );
setMoveKey( spep_2-3 + 56, 1, 262.5, 118.6 , 0 );
setMoveKey( spep_2-3 + 58, 1, 287.5, 126.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.14, 2.14 );
--setScaleKey( spep_2-3 + 2, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 4, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 6, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 8, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 10, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 12, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 16, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 20, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 22, 1, 1.29, 1.29 );
setScaleKey( spep_2-3 + 24, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 27, 1, 1.26, 1.26 );
setScaleKey( spep_2-3 + 28, 1, 2.09, 2.09 );
setScaleKey( spep_2-3 + 30, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 34, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 36, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 38, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 42, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 44, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 46, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 48, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 50, 1, 2.53, 2.53 );
setScaleKey( spep_2-3 + 52, 1, 2.94, 2.94 );
setScaleKey( spep_2-3 + 54, 1, 3.34, 3.34 );
setScaleKey( spep_2-3 + 56, 1, 3.76, 3.76 );
setScaleKey( spep_2-3 + 58, 1, 4.17, 4.17 );

setRotateKey( spep_2 + 0, 1, -10.2 );
--setRotateKey( spep_2-3 + 2, 1, -9.1 );
setRotateKey( spep_2-3 + 4, 1, -8 );
setRotateKey( spep_2-3 + 6, 1, -6.9 );
setRotateKey( spep_2-3 + 8, 1, -5.8 );
setRotateKey( spep_2-3 + 10, 1, -5.7 );
setRotateKey( spep_2-3 + 12, 1, -5.5 );
setRotateKey( spep_2-3 + 14, 1, -5.4 );
setRotateKey( spep_2-3 + 16, 1, -5.2 );
setRotateKey( spep_2-3 + 18, 1, -5.1 );
setRotateKey( spep_2-3 + 20, 1, -4.9 );
setRotateKey( spep_2-3 + 22, 1, -4.8 );
setRotateKey( spep_2-3 + 24, 1, -4.6 );
setRotateKey( spep_2-3 + 27, 1, -4.5 );
setRotateKey( spep_2-3 + 28, 1, -15.5 );
setRotateKey( spep_2-3 + 32, 1, -15.5 );
setRotateKey( spep_2-3 + 34, 1, -15.4 );
setRotateKey( spep_2-3 + 40, 1, -15.4 );
setRotateKey( spep_2-3 + 42, 1, -15.3 );
setRotateKey( spep_2-3 + 48, 1, -15.3 );
setRotateKey( spep_2-3 + 50, 1, -15.4 );
setRotateKey( spep_2-3 + 54, 1, -15.4 );
setRotateKey( spep_2-3 + 56, 1, -15.5 );
setRotateKey( spep_2-3 + 58, 1, -15.5 );

--SE
playSe( spep_2 + 26, 1189 );
se_1187 = playSe( spep_2 + 30, 1187 );
setSeVolume( spep_2 + 30, 1187, 79 );
playSe( spep_2 + 30, 1001 );
setSeVolume( spep_2 + 30, 1001, 63 );
playSe( spep_2 + 36, 1007 );
setSeVolume( spep_2 + 36, 1007, 79 );

stopSe( spep_2 + 43, se_1187, 30 );

--白フェード
entryFade( spep_2 + 25, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 48, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2 +60;

------------------------------------------------------
-- パンチ連打
------------------------------------------------------
-- ** エフェクト等 ** --
barrage = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_3 + 0, barrage, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, barrage, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, barrage, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, barrage, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, barrage, 0 );
setEffRotateKey( spep_3 + 66, barrage, 0 );
setEffAlphaKey( spep_3 + 0, barrage, 255 );
setEffAlphaKey( spep_3 + 66, barrage, 255 );

--文字エントリ
ctdogagaga = entryEffectLife( spep_3 + 0,  10017, 62, 0x100, -1, 0, 23.3, 313.9 );--ドガガガッ
setEffShake( spep_3 + 0, ctdogagaga, 62, 20 );
setEffMoveKey( spep_3 + 0, ctdogagaga, 23.3, 313.9 , 0 );
setEffMoveKey( spep_3 + 2, ctdogagaga, 6.3, 313.9 , 0 );
setEffMoveKey( spep_3 + 4, ctdogagaga, 2, 283.5 , 0 );
setEffMoveKey( spep_3 + 6, ctdogagaga, 4.8, 306.7 , 0 );
setEffMoveKey( spep_3 + 8, ctdogagaga, 20.8, 298 , 0 );
setEffMoveKey( spep_3 + 10, ctdogagaga, 30.1, 305.2 , 0 );
setEffMoveKey( spep_3 + 12, ctdogagaga, 24.8, 319.1 , 0 );
setEffMoveKey( spep_3 + 14, ctdogagaga, 30.5, 306.8 , 0 );
setEffMoveKey( spep_3 + 16, ctdogagaga, 25.1, 320.9 , 0 );
setEffMoveKey( spep_3 + 18, ctdogagaga, 30.8, 308.4 , 0 );
setEffMoveKey( spep_3 + 20, ctdogagaga, 25.3, 322.7 , 0 );
setEffMoveKey( spep_3 + 22, ctdogagaga, 31.1, 309.9 , 0 );
setEffMoveKey( spep_3 + 24, ctdogagaga, 25.6, 324.5 , 0 );
setEffMoveKey( spep_3 + 26, ctdogagaga, 31.5, 311.5 , 0 );
setEffMoveKey( spep_3 + 28, ctdogagaga, 25.8, 326.3 , 0 );
setEffMoveKey( spep_3 + 30, ctdogagaga, 31.8, 313 , 0 );
setEffMoveKey( spep_3 + 32, ctdogagaga, 26, 328.1 , 0 );
setEffMoveKey( spep_3 + 34, ctdogagaga, 32.1, 314.6 , 0 );
setEffMoveKey( spep_3 + 36, ctdogagaga, 26.3, 329.9 , 0 );
setEffMoveKey( spep_3 + 38, ctdogagaga, 32.5, 316.1 , 0 );
setEffMoveKey( spep_3 + 40, ctdogagaga, 26.5, 331.7 , 0 );
setEffMoveKey( spep_3 + 42, ctdogagaga, 32.8, 317.7 , 0 );
setEffMoveKey( spep_3 + 44, ctdogagaga, 26.7, 333.5 , 0 );
setEffMoveKey( spep_3 + 46, ctdogagaga, 33.1, 319.3 , 0 );
setEffMoveKey( spep_3 + 48, ctdogagaga, 27, 335.2 , 0 );
setEffMoveKey( spep_3 + 50, ctdogagaga, 33.5, 320.8 , 0 );
setEffMoveKey( spep_3 + 52, ctdogagaga, 27.2, 337 , 0 );
setEffMoveKey( spep_3 + 54, ctdogagaga, 33.8, 322.4 , 0 );
setEffMoveKey( spep_3 + 56, ctdogagaga, 27.5, 338.8 , 0 );
setEffMoveKey( spep_3 + 58, ctdogagaga, 34.1, 323.9 , 0 );
setEffMoveKey( spep_3 + 60, ctdogagaga, 27.7, 340.6 , 0 );
setEffMoveKey( spep_3 + 62, ctdogagaga, 34.5, 325.5 , 0 );

setEffScaleKey( spep_3 + 0, ctdogagaga, 3.36, 3.36 );
setEffScaleKey( spep_3 + 2, ctdogagaga, 3.89, 3.89 );
setEffScaleKey( spep_3 + 4, ctdogagaga, 4.42, 4.42 );
setEffScaleKey( spep_3 + 6, ctdogagaga, 4.05, 4.05 );
setEffScaleKey( spep_3 + 8, ctdogagaga, 3.69, 3.69 );
setEffScaleKey( spep_3 + 10, ctdogagaga, 3.32, 3.32 );
setEffScaleKey( spep_3 + 12, ctdogagaga, 3.35, 3.35 );
setEffScaleKey( spep_3 + 14, ctdogagaga, 3.38, 3.38 );
setEffScaleKey( spep_3 + 16, ctdogagaga, 3.41, 3.41 );
setEffScaleKey( spep_3 + 18, ctdogagaga, 3.44, 3.44 );
setEffScaleKey( spep_3 + 20, ctdogagaga, 3.47, 3.47 );
setEffScaleKey( spep_3 + 22, ctdogagaga, 3.5, 3.5 );
setEffScaleKey( spep_3 + 24, ctdogagaga, 3.53, 3.53 );
setEffScaleKey( spep_3 + 26, ctdogagaga, 3.56, 3.56 );
setEffScaleKey( spep_3 + 28, ctdogagaga, 3.59, 3.59 );
setEffScaleKey( spep_3 + 30, ctdogagaga, 3.62, 3.62 );
setEffScaleKey( spep_3 + 32, ctdogagaga, 3.65, 3.65 );
setEffScaleKey( spep_3 + 34, ctdogagaga, 3.68, 3.68 );
setEffScaleKey( spep_3 + 36, ctdogagaga, 3.71, 3.71 );
setEffScaleKey( spep_3 + 38, ctdogagaga, 3.73, 3.73 );
setEffScaleKey( spep_3 + 40, ctdogagaga, 3.76, 3.76 );
setEffScaleKey( spep_3 + 42, ctdogagaga, 3.79, 3.79 );
setEffScaleKey( spep_3 + 44, ctdogagaga, 3.82, 3.82 );
setEffScaleKey( spep_3 + 46, ctdogagaga, 3.85, 3.85 );
setEffScaleKey( spep_3 + 48, ctdogagaga, 3.88, 3.88 );
setEffScaleKey( spep_3 + 50, ctdogagaga, 3.91, 3.91 );
setEffScaleKey( spep_3 + 52, ctdogagaga, 3.94, 3.94 );
setEffScaleKey( spep_3 + 54, ctdogagaga, 3.97, 3.97 );
setEffScaleKey( spep_3 + 56, ctdogagaga, 4, 4 );
setEffScaleKey( spep_3 + 58, ctdogagaga, 4.03, 4.03 );
setEffScaleKey( spep_3 + 60, ctdogagaga, 4.06, 4.06 );
setEffScaleKey( spep_3 + 62, ctdogagaga, 4.09, 4.09 );

setEffRotateKey( spep_3 + 0, ctdogagaga, -22.4 );
setEffRotateKey( spep_3 + 62, ctdogagaga, -22.4 );

setEffAlphaKey( spep_3 + 0, ctdogagaga, 255 );
setEffAlphaKey( spep_3 + 62, ctdogagaga, 255 );

--SE
playSe( spep_3 + 3, 1006 );
playSe( spep_3 + 3, 1000 );
setSeVolume( spep_3 + 3, 1000, 71 );
se_1190 = playSe( spep_3 + 4, 1190 );
playSe( spep_3 + 15, 1000 );
setSeVolume( spep_3 + 15, 1000, 112 );
playSe( spep_3 + 15, 1006 );
se_1190 = playSe( spep_3 + 25, 1190 );
playSe( spep_3 + 25, 1000 );
playSe( spep_3 + 25, 1009 );
playSe( spep_3 + 34, 1000 );
playSe( spep_3 + 34, 1009 );
playSe( spep_3 + 46, 1006 );
playSe( spep_3 + 46, 1000 );
se_1190 = playSe( spep_3 + 57, 1190 );
playSe( spep_3 + 57, 1110 );
se_1210 = playSe( spep_3 + 62, 1210 );
setSeVolume( spep_3 + 62, 1210, 0 );

stopSe( spep_3 + 15, se_1190, 4 );
stopSe( spep_3 + 36, se_1190, 4 );

--白フェード
entryFade( spep_3 + 60, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3 +66;

------------------------------------------------------
-- 決めパンチ・手前
------------------------------------------------------
-- ** エフェクト等 ** --
decision_f = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_4 + 0,decision_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40,decision_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0,decision_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40,decision_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,decision_f, 0 );
setEffRotateKey( spep_4 + 40,decision_f, 0 );
setEffAlphaKey( spep_4 + 0,decision_f, 255 );
setEffAlphaKey( spep_4 + 40,decision_f, 255 );

-- ** エフェクト等 ** --
decision_b = entryEffect( spep_4 + 0, SP_08x, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_4 + 0,decision_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40,decision_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0,decision_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40,decision_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,decision_b, 0 );
setEffRotateKey( spep_4 + 40,decision_b, 0 );
setEffAlphaKey( spep_4 + 0, decision_b, 255 );
setEffAlphaKey( spep_4 + 40,decision_b, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_4 + 0,  10021, 30, 0x100, -1, 0, 53.1, 361.8 );--バゴォッ
setEffShake( spep_4 + 0, ctbago, 30, 20 );
setEffMoveKey( spep_4 + 0, ctbago, 53.1, 361.8 , 0 );
setEffMoveKey( spep_4 + 2, ctbago, 52.6, 361.1 , 0 );
setEffMoveKey( spep_4 + 4, ctbago, 53.1, 361.7 , 0 );
setEffMoveKey( spep_4 + 6, ctbago, 38.5, 384.8 , 0 );
setEffMoveKey( spep_4 + 8, ctbago, 53.1, 361.8 , 0 );
setEffMoveKey( spep_4 + 10, ctbago, 38.9, 384.2 , 0 );
setEffMoveKey( spep_4 + 12, ctbago, 53.2, 361.8 , 0 );
setEffMoveKey( spep_4 + 14, ctbago, 39.3, 383.7 , 0 );
setEffMoveKey( spep_4 + 16, ctbago, 53.2, 361.9 , 0 );
setEffMoveKey( spep_4 + 18, ctbago, 39.7, 383.2 , 0 );
setEffMoveKey( spep_4 + 20, ctbago, 53.2, 361.9 , 0 );
setEffMoveKey( spep_4 + 22, ctbago, 53.3, 362 , 0 );
setEffMoveKey( spep_4 + 24, ctbago, 40.8, 381.6 , 0 );
setEffMoveKey( spep_4 + 26, ctbago, 53.3, 362.1 , 0 );
setEffMoveKey( spep_4 + 28, ctbago, 42.3, 379.4 , 0 );
setEffMoveKey( spep_4 + 30, ctbago, 43.1, 378.3 , 0 );

setEffScaleKey( spep_4 + 0, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_4 + 2, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_4 + 4, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_4 + 6, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_4 + 8, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_4 + 10, ctbago, 3.09, 3.09 );
setEffScaleKey( spep_4 + 12, ctbago, 3.05, 3.05 );
setEffScaleKey( spep_4 + 14, ctbago, 3.01, 3.01 );
setEffScaleKey( spep_4 + 16, ctbago, 2.97, 2.97 );
setEffScaleKey( spep_4 + 18, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_4 + 20, ctbago, 2.89, 2.89 );
setEffScaleKey( spep_4 + 22, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_4 + 24, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_4 + 26, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_4 + 28, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_4 + 30, ctbago, 2.21, 2.21 );

setEffRotateKey( spep_4 + 0, ctbago, 3 );
setEffRotateKey( spep_4 + 30, ctbago, 3 );

setEffAlphaKey( spep_4 + 0, ctbago, 255 );
setEffAlphaKey( spep_4 + 22, ctbago, 255 );
setEffAlphaKey( spep_4 + 24, ctbago, 191 );
setEffAlphaKey( spep_4 + 26, ctbago, 128 );
setEffAlphaKey( spep_4 + 28, ctbago, 64 );
setEffAlphaKey( spep_4 + 30, ctbago, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 28, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4  + 0, 1, 42.8, 29.8 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 72.2, 58.9 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 100.8, 93.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 116.8, 120.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 140.2, 149.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 150.9, 169.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 411.2, 362.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 582.2, 494.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 773.6, 617.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 934.8, 716.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 1077.2, 808.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 1188.1, 878.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 1292.6, 940.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 1366.1, 981.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 1424.7, 1016.1 , 0 );

setScaleKey( spep_4  + 0, 1, 5.38, 5.38 );
--setScaleKey( spep_4 -3 + 2, 1, 4.98, 4.98 );
setScaleKey( spep_4 -3 + 4, 1, 4.57, 4.57 );
setScaleKey( spep_4 -3 + 6, 1, 4.17, 4.17 );
setScaleKey( spep_4 -3 + 8, 1, 3.77, 3.77 );
setScaleKey( spep_4 -3 + 10, 1, 3.36, 3.36 );
setScaleKey( spep_4 -3 + 12, 1, 2.95, 2.95 );
setScaleKey( spep_4 -3 + 14, 1, 2.53, 2.53 );
setScaleKey( spep_4 -3 + 16, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 18, 1, 2.32, 2.32 );
setScaleKey( spep_4 -3 + 20, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 22, 1, 2.12, 2.12 );
setScaleKey( spep_4 -3 + 24, 1, 2.03, 2.03 );
setScaleKey( spep_4 -3 + 26, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 28, 1, 1.83, 1.83 );

setRotateKey( spep_4  + 0, 1, -25.4 );
--setRotateKey( spep_4 -3 + 2, 1, -24.5 );
setRotateKey( spep_4 -3 + 4, 1, -23.6 );
setRotateKey( spep_4 -3 + 6, 1, -22.7 );
setRotateKey( spep_4 -3 + 8, 1, -21.8 );
setRotateKey( spep_4 -3 + 10, 1, -20.9 );
setRotateKey( spep_4 -3 + 12, 1, -20.4 );
setRotateKey( spep_4 -3 + 14, 1, -19.9 );
setRotateKey( spep_4 -3 + 16, 1, -19.3 );
setRotateKey( spep_4 -3 + 18, 1, -18.8 );
setRotateKey( spep_4 -3 + 20, 1, -18.1 );
setRotateKey( spep_4 -3 + 22, 1, -17.6 );
setRotateKey( spep_4 -3 + 24, 1, -17.1 );
setRotateKey( spep_4 -3 + 26, 1, -16.7 );
setRotateKey( spep_4 -3 + 28, 1, -16.1 );

--SE
playSe( spep_4 + 0, 1189 );
playSe( spep_4 + 1, 1123 );
setSeVolume( spep_4 + 1, 1123, 63 );
se_1190 = playSe( spep_4 + 9, 1190 );
playSe( spep_4 + 5, 1110 );
playSe( spep_4 + 5, 1169 );

stopSe( spep_4 + 2, se_1190, 4 );
stopSe( spep_4 + 32, se_1190, 19 );

--白フェード
entryFade( spep_4 + 32, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5 = spep_4 +40;

------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_09x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_5 + 0,tame, 0, 0 , 0 );
setEffMoveKey( spep_5 + 152,tame, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0,tame, -1.0, 1.0 );
setEffScaleKey( spep_5 + 152,tame, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0,tame, 0 );
setEffRotateKey( spep_5 + 152,tame, 0 );
setEffAlphaKey( spep_5 + 0,tame, 255 );
setEffAlphaKey( spep_5 + 152,tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_5 + 42, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_5 + 56, 1018 );

--白フェード
entryFade( spep_5 + 40, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 144, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_5 + 5, 1037 );
se_1157 = playSe( spep_5 + 5, 1157 );
playSe( spep_5 + 120, 1020 );
se_1020 = playSe( spep_5 + 139, 1020 );

setSeVolume( spep_5 + 4, 1210, 0 );
setSeVolume( spep_5 + 5, 1210, 9 );
setSeVolume( spep_5 + 6, 1210, 18.1 );
setSeVolume( spep_5 + 7, 1210, 27.2 );
setSeVolume( spep_5 + 8, 1210, 36.3 );
setSeVolume( spep_5 + 9, 1210, 45.4 );
setSeVolume( spep_5 + 10, 1210, 54.5 );
setSeVolume( spep_5 + 11, 1210, 63.6 );
setSeVolume( spep_5 + 12, 1210, 72.7 );
setSeVolume( spep_5 + 13, 1210, 81.8 );
setSeVolume( spep_5 + 14, 1210, 90.9 );
setSeVolume( spep_5 + 15, 1210, 100 );

stopSe( spep_5 + 150, se_1020, 0 );
stopSe( spep_5 + 150, se_1210, 0 );

--次の準備
spep_6 = spep_5 +152;

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
stopSe( spep_6 + 0, se_1037, 0 );
playSe( spep_6 + 0, SE_05 );

--白フェード
entryFade( spep_6 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_7 + 0,beam, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100,beam, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0,beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100,beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,beam, 0 );
setEffRotateKey( spep_7 + 100,beam, 0 );
setEffAlphaKey( spep_7 + 0,beam, 255 );
setEffAlphaKey( spep_7 + 100,beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_7 -3 + 40,  10012, 58, 0x100, -1, 0, -82.9, 243.1 );--ズオッ
setEffShake( spep_7 -3 + 40, ctzuo, 58, 20 );
setEffMoveKey( spep_7 -3 + 40, ctzuo, -82.9, 243.1 , 0 );
setEffMoveKey( spep_7 -3 + 42, ctzuo, -91.8, 284.6 , 0 );
setEffMoveKey( spep_7 -3 + 44, ctzuo, -82.9, 311.3 , 0 );
setEffMoveKey( spep_7 -3 + 46, ctzuo, -99.7, 321.1 , 0 );
setEffMoveKey( spep_7 -3 + 48, ctzuo, -83.3, 307.2 , 0 );
setEffMoveKey( spep_7 -3 + 50, ctzuo, -96.9, 314.7 , 0 );
setEffMoveKey( spep_7 -3 + 52, ctzuo, -83.7, 305.4 , 0 );
setEffMoveKey( spep_7 -3 + 54, ctzuo, -97.1, 315.3 , 0 );
setEffMoveKey( spep_7 -3 + 56, ctzuo, -83.8, 306 , 0 );
setEffMoveKey( spep_7 -3 + 58, ctzuo, -97.4, 316 , 0 );
setEffMoveKey( spep_7 -3 + 60, ctzuo, -83.9, 306.5 , 0 );
setEffMoveKey( spep_7 -3 + 62, ctzuo, -97.6, 316.6 , 0 );
setEffMoveKey( spep_7 -3 + 64, ctzuo, -84.1, 307.1 , 0 );
setEffMoveKey( spep_7 -3 + 66, ctzuo, -97.8, 317.2 , 0 );
setEffMoveKey( spep_7 -3 + 68, ctzuo, -84.4, 307.7 , 0 );
setEffMoveKey( spep_7 -3 + 70, ctzuo, -98.1, 317.9 , 0 );
setEffMoveKey( spep_7 -3 + 72, ctzuo, -84.4, 308.2 , 0 );
setEffMoveKey( spep_7 -3 + 74, ctzuo, -98.3, 318.5 , 0 );
setEffMoveKey( spep_7 -3 + 76, ctzuo, -84.6, 308.8 , 0 );
setEffMoveKey( spep_7 -3 + 78, ctzuo, -98.4, 319.1 , 0 );
setEffMoveKey( spep_7 -3 + 80, ctzuo, -84.8, 309.3 , 0 );
setEffMoveKey( spep_7 -3 + 82, ctzuo, -98.7, 319.8 , 0 );
setEffMoveKey( spep_7 -3 + 84, ctzuo, -85, 309.9 , 0 );
setEffMoveKey( spep_7 -3 + 86, ctzuo, -98.8, 320.4 , 0 );
setEffMoveKey( spep_7 -3 + 88, ctzuo, -85.2, 310.5 , 0 );
setEffMoveKey( spep_7 -3 + 90, ctzuo, -99.1, 321.2 , 0 );
setEffMoveKey( spep_7 -3 + 92, ctzuo, -85.2, 311 , 0 );
setEffMoveKey( spep_7 -3 + 94, ctzuo, -99.3, 321.7 , 0 );
setEffMoveKey( spep_7 -3 + 96, ctzuo, -85.4, 311.7 , 0 );
setEffMoveKey( spep_7 -3 + 98, ctzuo, -99.5, 322.3 , 0 );

setEffScaleKey( spep_7 -3 + 40, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_7 -3 + 42, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_7 -3 + 44, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_7 -3 + 46, ctzuo, 3, 3 );
setEffScaleKey( spep_7 -3 + 48, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_7 -3 + 50, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_7 -3 + 56, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_7 -3 + 58, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_7 -3 + 68, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_7 -3 + 70, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_7 -3 + 78, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_7 -3 + 80, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_7 -3 + 88, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_7 -3 + 90, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_7 -3 + 98, ctzuo, 2.56, 2.56 );

setEffRotateKey( spep_7 -3 + 40, ctzuo, -9.4 );
setEffRotateKey( spep_7 -3 + 42, ctzuo, -13.8 );
setEffRotateKey( spep_7 -3 + 44, ctzuo, -18.1 );
setEffRotateKey( spep_7 -3 + 46, ctzuo, -18.1 );
setEffRotateKey( spep_7 -3 + 48, ctzuo, -18 );
setEffRotateKey( spep_7 -3 + 50, ctzuo, -17.9 );
setEffRotateKey( spep_7 -3 + 52, ctzuo, -17.8 );
setEffRotateKey( spep_7 -3 + 54, ctzuo, -17.8 );
setEffRotateKey( spep_7 -3 + 56, ctzuo, -17.7 );
setEffRotateKey( spep_7 -3 + 58, ctzuo, -17.7 );
setEffRotateKey( spep_7 -3 + 60, ctzuo, -17.6 );
setEffRotateKey( spep_7 -3 + 62, ctzuo, -17.6 );
setEffRotateKey( spep_7 -3 + 64, ctzuo, -17.5 );
setEffRotateKey( spep_7 -3 + 66, ctzuo, -17.4 );
setEffRotateKey( spep_7 -3 + 68, ctzuo, -17.4 );
setEffRotateKey( spep_7 -3 + 70, ctzuo, -17.3 );
setEffRotateKey( spep_7 -3 + 72, ctzuo, -17.3 );
setEffRotateKey( spep_7 -3 + 74, ctzuo, -17.2 );
setEffRotateKey( spep_7 -3 + 76, ctzuo, -17.2 );
setEffRotateKey( spep_7 -3 + 78, ctzuo, -17.1 );
setEffRotateKey( spep_7 -3 + 80, ctzuo, -17 );
setEffRotateKey( spep_7 -3 + 82, ctzuo, -17 );
setEffRotateKey( spep_7 -3 + 84, ctzuo, -16.9 );
setEffRotateKey( spep_7 -3 + 86, ctzuo, -16.9 );
setEffRotateKey( spep_7 -3 + 88, ctzuo, -16.8 );
setEffRotateKey( spep_7 -3 + 90, ctzuo, -16.8 );
setEffRotateKey( spep_7 -3 + 92, ctzuo, -16.7 );
setEffRotateKey( spep_7 -3 + 94, ctzuo, -16.7 );
setEffRotateKey( spep_7 -3 + 96, ctzuo, -16.6 );
setEffRotateKey( spep_7 -3 + 98, ctzuo, -16.5 );

setEffAlphaKey( spep_7 -3 + 40, ctzuo, 255 );
setEffAlphaKey( spep_7 -3 + 98, ctzuo, 255 );

--SE
playSe( spep_7, 1056 );
playSe( spep_7 + 33, 1133 );
playSe( spep_7 + 33, 1022 );
setSeVolume( spep_7 + 33, 1022, 126 );
se_1124 = playSe( spep_7 + 39, 1124 );
setSeVolume( spep_7 + 39, 1124, 0 );
setSeVolume( spep_7 + 55, 1124, 0 );
setSeVolume( spep_7 + 56, 1124, 1.6 );
setSeVolume( spep_7 + 57, 1124, 3.2 );
setSeVolume( spep_7 + 58, 1124, 4.8 );
setSeVolume( spep_7 + 59, 1124, 6.4 );
setSeVolume( spep_7 + 60, 1124, 8 );
setSeVolume( spep_7 + 61, 1124, 9.6 );
setSeVolume( spep_7 + 62, 1124, 11.2 );
setSeVolume( spep_7 + 63, 1124, 12.8 );
setSeVolume( spep_7 + 64, 1124, 14.4 );
setSeVolume( spep_7 + 65, 1124, 16 );
setSeVolume( spep_7 + 66, 1124, 17.6 );
setSeVolume( spep_7 + 67, 1124, 19.2 );
setSeVolume( spep_7 + 68, 1124, 20.8 );
setSeVolume( spep_7 + 69, 1124, 22.4 );
setSeVolume( spep_7 + 70, 1124, 24 );
setSeVolume( spep_7 + 71, 1124, 25.6 );
setSeVolume( spep_7 + 72, 1124, 27.2 );
setSeVolume( spep_7 + 73, 1124, 28.8 );
setSeVolume( spep_7 + 74, 1124, 30.4 );
setSeVolume( spep_7 + 75, 1124, 32 );
setSeVolume( spep_7 + 76, 1124, 33.6 );
setSeVolume( spep_7 + 77, 1124, 35.2 );
setSeVolume( spep_7 + 78, 1124, 36.8 );
setSeVolume( spep_7 + 79, 1124, 38.4 );
setSeVolume( spep_7 + 80, 1124, 40 );
setSeVolume( spep_7 + 81, 1124, 41.6 );
setSeVolume( spep_7 + 82, 1124, 43.2 );
setSeVolume( spep_7 + 83, 1124, 44.8 );
setSeVolume( spep_7 + 84, 1124, 46.4 );
setSeVolume( spep_7 + 85, 1124, 48 );
setSeVolume( spep_7 + 86, 1124, 49.6 );
setSeVolume( spep_7 + 87, 1124, 51.2 );
setSeVolume( spep_7 + 88, 1124, 52.8 );
setSeVolume( spep_7 + 89, 1124, 54.4 );
setSeVolume( spep_7 + 90, 1124, 56 );

--白フェード
entryFade( spep_7 + 94, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_8 = spep_7 +100;

------------------------------------------------------
-- 敵を連れて行く・手前
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_8 + 0,hit_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40,hit_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0,hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 40,hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0,hit_f, 0 );
setEffRotateKey( spep_8 + 40,hit_f, 0 );
setEffAlphaKey( spep_8 + 0,hit_f, 255 );
setEffAlphaKey( spep_8 + 40,hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_12x, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_8 + 0,hit_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40,hit_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0,hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 40,hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0,hit_b, 0 );
setEffRotateKey( spep_8 + 40,hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 40,hit_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 26, 1, 0 );
changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -229.1, -127.9 , 0 );
setMoveKey( spep_8 + 2, 1, -172.5, -88.1 , 0 );
setMoveKey( spep_8 + 4, 1, -126.3, -55.5 , 0 );
setMoveKey( spep_8 + 6, 1, -90.3, -30.2 , 0 );
setMoveKey( spep_8 + 8, 1, -64.6, -12.1 , 0 );
setMoveKey( spep_8 + 10, 1, -50.3, -3.6 , 0 );
setMoveKey( spep_8 + 12, 1, -36, 4.8 , 0 );
setMoveKey( spep_8 + 14, 1, -21.7, 13.3 , 0 );
setMoveKey( spep_8 + 16, 1, -7.4, 21.7 , 0 );
setMoveKey( spep_8 + 18, 1, 6.9, 30.1 , 0 );
setMoveKey( spep_8 + 20, 1, 21.3, 38.6 , 0 );
setMoveKey( spep_8 + 22, 1, 35.6, 47 , 0 );
setMoveKey( spep_8 + 24, 1, 49.9, 55.5 , 0 );
setMoveKey( spep_8 + 26, 1, 64.2, 63.9 , 0 );
--setMoveKey( spep_8 + 28, 1, 224.6, 172.8 , 0 );
--setMoveKey( spep_8 + 30, 1, 360.5, 265 , 0 );
--setMoveKey( spep_8 + 32, 1, 472, 340.7 , 0 );
--setMoveKey( spep_8 + 34, 1, 558.9, 399.7 , 0 );
--setMoveKey( spep_8 + 36, 1, 621.4, 442.1 , 0 );
--setMoveKey( spep_8 + 38, 1, 659.4, 467.9 , 0 );

setScaleKey( spep_8 + 0, 1, 1.75, 1.75 );
setScaleKey( spep_8 + 2, 1, 1.61, 1.61 );
setScaleKey( spep_8 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 6, 1, 1.42, 1.42 );
setScaleKey( spep_8 + 8, 1, 1.36, 1.36 );
setScaleKey( spep_8 + 10, 1, 1.33, 1.33 );
setScaleKey( spep_8 + 12, 1, 1.3, 1.3 );
setScaleKey( spep_8 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 16, 1, 1.24, 1.24 );
setScaleKey( spep_8 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 22, 1, 1.14, 1.14 );
setScaleKey( spep_8 + 24, 1, 1.11, 1.11 );
setScaleKey( spep_8 + 26, 1, 1.08, 1.08 );
--setScaleKey( spep_8 + 28, 1, 0.91, 0.91 );
--setScaleKey( spep_8 + 30, 1, 0.76, 0.76 );
--setScaleKey( spep_8 + 32, 1, 0.64, 0.64 );
--setScaleKey( spep_8 + 34, 1, 0.54, 0.54 );
--setScaleKey( spep_8 + 36, 1, 0.47, 0.47 );
--setScaleKey( spep_8 + 38, 1, 0.43, 0.43 );

setRotateKey( spep_8 + 0, 1, -11.5 );
setRotateKey( spep_8 + 2, 1, -11.5 );
setRotateKey( spep_8 + 4, 1, -11.6 );
setRotateKey( spep_8 + 26, 1, -11.6 );
--setRotateKey( spep_8 + 30, 1, -11.6 );
--setRotateKey( spep_8 + 32, 1, -11.7 );
--setRotateKey( spep_8 + 38, 1, -11.7 );

--se
playSe( spep_8 + 9, 1021 );
se_1146 = playSe( spep_8 + 9, 1146 );
setSeVolume( spep_8 + 9, 1146, 0 );

--次の準備
spep_9 = spep_8 +36;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_9 + 0,finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 220,finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0,finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 220,finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0,finish, 0 );
setEffRotateKey( spep_9 + 220,finish, 0 );
setEffAlphaKey( spep_9 + 0,finish, 255 );
setEffAlphaKey( spep_9 + 220,finish, 255 );

--SE
playSe( spep_9 + 58, 1159 );
setSeVolume( spep_9 + 58, 1159, 89 );
playSe( spep_9 + 58, 1024 );
playSe( spep_9 + 58, 1194 );
playSe( spep_9 + 87, 1044 );
setSeVolume( spep_9 + 87, 1044, 79 );

stopSe( spep_9 + 61, se_1124, 0 );
stopSe( spep_9 + 82, se_1146, 0 );

setSeVolume( spep_9 + 3, 1146, 0 );
setSeVolume( spep_9 + 4, 1146, 5.5 );
setSeVolume( spep_9 + 5, 1146, 11.1 );
setSeVolume( spep_9 + 6, 1146, 16.6 );
setSeVolume( spep_9 + 7, 1146, 22.2 );
setSeVolume( spep_9 + 8, 1146, 27.7 );
setSeVolume( spep_9 + 9, 1146, 33.3 );
setSeVolume( spep_9 + 10, 1146, 38.8 );
setSeVolume( spep_9 + 11, 1146, 44.4 );
setSeVolume( spep_9 + 12, 1146, 50 );
setSeVolume( spep_9 + 13, 1146, 55.5 );
setSeVolume( spep_9 + 14, 1146, 61.1 );
setSeVolume( spep_9 + 15, 1146, 66.6 );
setSeVolume( spep_9 + 16, 1146, 72.2 );
setSeVolume( spep_9 + 17, 1146, 77.7 );
setSeVolume( spep_9 + 18, 1146, 83.3 );
setSeVolume( spep_9 + 19, 1146, 88.8 );
setSeVolume( spep_9 + 20, 1146, 94.4 );
setSeVolume( spep_9 + 21, 1146, 100 );

--白フェード
entryFade( spep_9 , 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_9+54, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 64 );
endPhase( spep_9 + 210  );


end
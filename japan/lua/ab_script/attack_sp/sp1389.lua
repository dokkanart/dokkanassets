--4017970:超サイヤ人ゴッドSSゴジータ_メテオエクスプロージョン
--sp_effect_b4_00131

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
SP_01=	154843	;--	冒頭構え
SP_02=	154844	;--	突進〜横構図の殴り飛ばし
SP_03=	154845	;--	突進〜横構図の殴り飛ばし
SP_04=	154846	;--	殴り構え〜爆発
SP_05=	154847	;--	殴り構え〜爆発

--エフェクト(てき)
SP_01x=	154843	;--	冒頭構え	
SP_02x=	154848	;--	突進〜横構図の殴り飛ばし	(敵)
SP_03x=	154849	;--	突進〜横構図の殴り飛ばし	(敵)
SP_04x=	154846	;--	殴り構え〜爆発	
SP_05x=	154847	;--	殴り構え〜爆発	


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

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
-- 冒頭構え
------------------------------------------------------
--初めの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 64, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 64, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 64, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 64, tame, 255 );
--SE
se_1004 = playSe( spep_0 + 0, 1004 );
setSeVolume( spep_0 + 0, 1004, 0 );
setSeVolume( spep_0 + 1, 1004, 10 );
setSeVolume( spep_0 + 2, 1004, 20 );
setSeVolume( spep_0 + 3, 1004, 30 );
setSeVolume( spep_0 + 4, 1004, 40 );
setSeVolume( spep_0 + 5, 1004, 50 );
setSeVolume( spep_0 + 6, 1004, 63 );
se_1232 = playSe( spep_0 + 0, 1232 );
setSeVolume( spep_0 + 0, 1232, 141 );
se_0008 = playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1004, 0 );
    stopSe( SP_dodge - 12, se_1232, 0 );
    stopSe( SP_dodge - 12, se_0008, 0 );    
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
--SE
se_1035 = playSe( spep_0 + 36, 1035 );
setSeVolume( spep_0 + 36, 1035, 126 );
se_1159 = playSe( spep_0 + 36, 1159 );
setSeVolume( spep_0 + 36, 1159, 79 );
se_1182 = playSe( spep_0 + 36, 1182 );
setSeVolume( spep_0 + 36, 1182, 158 );
setSeVolume( spep_0 + 43, 1182, 158 );
setSeVolume( spep_0 + 44, 1182, 129 );
setSeVolume( spep_0 + 45, 1182, 100 );


stopSe( spep_0 + 13, se_1004, 4 );
stopSe( spep_0 + 14, se_1232, 18 );
stopSe( spep_0 + 19, se_0008, 12 );



-- ** 次の準備
spep_1 = spep_0 + 64;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
stopSe( spep_1 + 4, se_1035, 17 );
stopSe( spep_1 + 4, se_1159, 15 );
stopSe( spep_1 + 3, se_1182, 14 );
--白フェード
--entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 突進〜横構図の殴り飛ばし
------------------------------------------------------
panting_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 286, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 286, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 286, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 286, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 286, panting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 286, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 286, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 286, panting_b, 255 );

--SE
SE0=playSe( spep_2 + 9, 1009 );
se_1182 = playSe( spep_2 + 11, 1182 );
setSeVolume( spep_2 + 11, 1182, 200 );
setSeVolume( spep_2 + 18, 1182, 200 );
setSeVolume( spep_2 + 19, 1182, 150 );
setSeVolume( spep_2 + 20, 1182, 100 );
se_1121 = playSe( spep_2 + 18, 1121 );
se_1183 = playSe( spep_2 + 18, 1183 );

--エネミーの動き
setDisp( spep_2-3 + 30, 1, 1);
setDisp( spep_2-1 + 48, 1, 0);
changeAnime( spep_2-3 + 30, 1, 5);

setMoveKey( spep_2-3 + 30, 1, 197.6, 144.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 199.5, 142 , 0 );
setMoveKey( spep_2-3 + 34, 1, 201.1, 139.7 , 0 );
setMoveKey( spep_2-3 + 36, 1, 202.5, 137.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 203.7, 136.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, 204.7, 134.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 205.5, 133.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 206, 133 , 0 );
setMoveKey( spep_2-3 + 46, 1, 206.4, 132.6 , 0 );
setMoveKey( spep_2-1 + 48, 1, 206.5, 132.5 , 0 );

setScaleKey( spep_2-3 + 30, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 32, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 34, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 36, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 38, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 40, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 42, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 44, 1, 0.15, 0.15 );
setScaleKey( spep_2-1 + 48, 1, 0.15, 0.15 );

setRotateKey( spep_2-3 + 30, 1, 0 );
setRotateKey( spep_2-3 + 32, 1, 4.6 );
setRotateKey( spep_2-3 + 34, 1, 8.6 );
setRotateKey( spep_2-3 + 36, 1, 12.1 );
setRotateKey( spep_2-3 + 38, 1, 15.1 );
setRotateKey( spep_2-3 + 40, 1, 17.5 );
setRotateKey( spep_2-3 + 42, 1, 19.4 );
setRotateKey( spep_2-3 + 44, 1, 20.7 );
setRotateKey( spep_2-3 + 46, 1, 21.5 );
setRotateKey( spep_2-1 + 48, 1, 21.8 );

--エネミーの動き
setDisp( spep_2-3 + 134, 1, 1);
setDisp( spep_2-3 + 164, 1, 0);
setDisp( spep_2-3 + 216, 1, 1);
setDisp( spep_2-3 + 282, 1, 0);
changeAnime( spep_2-3 + 134, 1, 8);

setBlendColor(spep_2-3 + 134, 1, 2, 0.1, 0.3, 0.75, 0.6);
setBlendColor(spep_2-3 + 216,1,2,0,0.1,0.4,0);

a=150;
b=380;

setMoveKey( spep_2-3 + 134, 1, 0.1-a, 0-b , 0 );
setMoveKey( spep_2-3 + 136, 1, 5.1-a, -5-b , 0 );
setMoveKey( spep_2-3 + 138, 1, 0.1-a, 0-b , 0 );
setMoveKey( spep_2-3 + 140, 1, 0.1-a, -10-b , 0 );
setMoveKey( spep_2-3 + 142, 1, -122.7-a, 219-b , 0 );
setMoveKey( spep_2-3 + 144, 1, -4.1-a, -13-b , 0 );
setMoveKey( spep_2-3 + 146, 1, -120.8-a, 164.5-b , 0 );
setMoveKey( spep_2-3 + 148, 1, -120.9-a, 81.7-b , 0 );
setMoveKey( spep_2-3 + 150, 1, -192-a, 233.7-b , 0 );
setMoveKey( spep_2-3 + 152, 1, -79.1-a, 102.2-b , 0 );
setMoveKey( spep_2-3 + 154, 1, -79.1-a, 102.2-b , 0 );
setMoveKey( spep_2-3 + 156, 1, -112.1-a, 127.1-b , 0 );
setMoveKey( spep_2-3 + 158, 1, -112.1-a, 127.1-b , 0 );
setMoveKey( spep_2-3 + 160, 1, -112.8-a, 133.7-b , 0 );
setMoveKey( spep_2-3 + 162, 1, -113.6-a, 140.2-b , 0 );
setMoveKey( spep_2-3 + 164, 1, -113.6-a, 140.2-b , 0 );

setMoveKey( spep_2-3 + 216, 1, 58.4, 21.1 , 0 );
setMoveKey( spep_2-3 + 218, 1, 58.4, 21.1 , 0 );
setMoveKey( spep_2-3 + 220, 1, -29.6, 77.1 , 0 );
setMoveKey( spep_2-3 + 222, 1, -39.9, 83.4 , 0 );
setMoveKey( spep_2-3 + 224, 1, -83.6, 116 , 0 );
setMoveKey( spep_2-3 + 226, 1, -237.3, 205 , 0 );
setMoveKey( spep_2-3 + 228, 1, -594.2, 424.6 , 0 );
setMoveKey( spep_2-3 + 230, 1, -726.9, 504.2 , 0 );
setMoveKey( spep_2-3 + 232, 1, -724.2, 494.8 , 0 );
setMoveKey( spep_2-3 + 234, 1, -692.2, 497.2 , 0 );
setMoveKey( spep_2-3 + 236, 1, -722.4, 496.4 , 0 );
setMoveKey( spep_2-3 + 238, 1, -731.2, 495.6 , 0 );
setMoveKey( spep_2-3 + 240, 1, -736, 494.8 , 0 );
setMoveKey( spep_2-3 + 242, 1, -734.6, 494.8 , 0 );
setMoveKey( spep_2-3 + 244, 1, -710.6, 493.2 , 0 );
setMoveKey( spep_2-3 + 246, 1, -694.6, 486.8 , 0 );
setMoveKey( spep_2-3 + 248, 1, -717.4, 487.4 , 0 );
setMoveKey( spep_2-3 + 250, 1, -743.8, 493 , 0 );
setMoveKey( spep_2-3 + 252, 1, -751.8, 491.4 , 0 );
setMoveKey( spep_2-3 + 254, 1, -757.3, 486.9 , 0 );
setMoveKey( spep_2-3 + 256, 1, -752.3, 487.9 , 0 );
setMoveKey( spep_2-3 + 258, 1, -747.3, 488.9 , 0 );
setMoveKey( spep_2-3 + 260, 1, -734.3, 489.9 , 0 );
setMoveKey( spep_2-3 + 262, 1, -718.9, 490.9 , 0 );
setMoveKey( spep_2-3 + 264, 1, -719.5, 491.9 , 0 );
setMoveKey( spep_2-3 + 266, 1, -718.8, 492.9 , 0 );
setMoveKey( spep_2-3 + 268, 1, -718.1, 493.9 , 0 );
setMoveKey( spep_2-3 + 270, 1, -717.3, 494.9 , 0 );
setMoveKey( spep_2-3 + 272, 1, -717.3, 501.8 , 0 );
setMoveKey( spep_2-3 + 276, 1, -717.3, 501.8 , 0 );
setMoveKey( spep_2-3 + 278, 1, -682.8, 524.8 , 0 );
setMoveKey( spep_2-3 + 280, 1, -682.8, 508.7 , 0 );
setMoveKey( spep_2-3 + 282, 1, -682.8, 520.2 , 0 );

setScaleKey( spep_2-3 + 134, 1, 17.99, 17.99 );
setScaleKey( spep_2-3 + 164, 1, 17.99, 17.99 );

setScaleKey( spep_2-3 + 216, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 282, 1, 0.7, 0.7 );


setRotateKey( spep_2-3 + 134, 1, 33 );
setRotateKey( spep_2-3 + 140, 1, 33 );
setRotateKey( spep_2-3 + 142, 1, 65 );
setRotateKey( spep_2-3 + 164, 1, 65 );

setRotateKey( spep_2-3 + 216, 1, 24.8 );
setRotateKey( spep_2-3 + 282, 1, 24.8 );

--文字エントリー
ctbako = entryEffectLife( spep_2-3 + 222,  10021, 38, 0x100, -1, 0, 6.8, 242.1 );--バゴォッ

setEffMoveKey( spep_2-3 + 222, ctbako, 6.8, 242.1 , 0 );
setEffMoveKey( spep_2-3 + 224, ctbako, -10.2, 284.3 , 0 );
setEffMoveKey( spep_2-3 + 226, ctbako, -29.2, 394 , 0 );
setEffMoveKey( spep_2-3 + 228, ctbako, 6.8, 343.2 , 0 );
setEffMoveKey( spep_2-3 + 230, ctbako, 1.1, 318.8 , 0 );
setEffMoveKey( spep_2-3 + 232, ctbako, 20, 306.9 , 0 );
setEffMoveKey( spep_2-3 + 234, ctbako, 0.9, 318.7 , 0 );
setEffMoveKey( spep_2-3 + 236, ctbako, 19.7, 306.8 , 0 );
setEffMoveKey( spep_2-3 + 238, ctbako, 0.6, 318.6 , 0 );
setEffMoveKey( spep_2-3 + 240, ctbako, 19.3, 306.6 , 0 );
setEffMoveKey( spep_2-3 + 242, ctbako, -0.1, 318.4 , 0 );
setEffMoveKey( spep_2-3 + 244, ctbako, 18.7, 306.4 , 0 );
setEffMoveKey( spep_2-3 + 246, ctbako, -0.6, 318.2 , 0 );
setEffMoveKey( spep_2-3 + 248, ctbako, 18.4, 306.3 , 0 );
setEffMoveKey( spep_2-3 + 250, ctbako, -0.8, 318.1 , 0 );
setEffMoveKey( spep_2-3 + 252, ctbako, -0.9, 318.1 , 0 );
setEffMoveKey( spep_2-3 + 254, ctbako, 19.3, 297.7 , 0 );
setEffMoveKey( spep_2-3 + 256, ctbako, 4.2, 299.2 , 0 );
setEffMoveKey( spep_2-3 + 258, ctbako, 21.3, 280.7 , 0 );
setEffMoveKey( spep_2-3 + 260, ctbako, 22.3, 272.3 , 0 );

setEffScaleKey( spep_2-3 + 222, ctbako, 1.31, 1.28 );
setEffScaleKey( spep_2-3 + 224, ctbako, 1.77, 1.74 );
setEffScaleKey( spep_2-3 + 226, ctbako, 3.16, 3.12 );
setEffScaleKey( spep_2-3 + 228, ctbako, 2.89, 2.85 );
setEffScaleKey( spep_2-3 + 230, ctbako, 2.61, 2.57 );
setEffScaleKey( spep_2-3 + 252, ctbako, 2.61, 2.57 );
setEffScaleKey( spep_2-3 + 254, ctbako, 2.41, 2.37 );
setEffScaleKey( spep_2-3 + 256, ctbako, 2.21, 2.17 );
setEffScaleKey( spep_2-3 + 258, ctbako, 2.01, 1.97 );
setEffScaleKey( spep_2-3 + 260, ctbako, 1.8, 1.78 );

setEffRotateKey( spep_2-3 + 222, ctbako, -16 );
setEffRotateKey( spep_2-3 + 260, ctbako, -16 );

setEffAlphaKey( spep_2-3 + 222, ctbako, 255 );
setEffAlphaKey( spep_2-3 + 252, ctbako, 255 );
setEffAlphaKey( spep_2-3 + 254, ctbako, 191 );
setEffAlphaKey( spep_2-3 + 256, ctbako, 128 );
setEffAlphaKey( spep_2-3 + 258, ctbako, 64 );
setEffAlphaKey( spep_2-3 + 260, ctbako, 0 );



--SE
playSe( spep_2 + 139, 1187 );
playSe( spep_2 + 139, 1190 );
setSeVolume( spep_2 + 139, 1190, 150 );
setSeVolume( spep_2 + 146, 1190, 136 );
setSeVolume( spep_2 + 147, 1190, 122 );
setSeVolume( spep_2 + 148, 1190, 108 );
setSeVolume( spep_2 + 149, 1190, 94 );
setSeVolume( spep_2 + 150, 1190, 89 );
se_1117 = playSe( spep_2 + 178, 1117 );
setSeVolume( spep_2 + 178, 1117, 0 );
setSeVolume( spep_2 + 194, 1117, 12 );
setSeVolume( spep_2 + 195, 1117, 24 );
setSeVolume( spep_2 + 196, 1117, 36 );
setSeVolume( spep_2 + 197, 1117, 48 );
setSeVolume( spep_2 + 198, 1117, 60 );
setSeVolume( spep_2 + 199, 1117, 72 );
setSeVolume( spep_2 + 200, 1117, 89 );
playSe( spep_2 + 196, 1004 );
playSe( spep_2 + 203, 1003 );
setSeVolume( spep_2 + 203, 1003, 89 );
playSe( spep_2 + 220, 1187 );
playSe( spep_2 + 220, 1190 );
setSeVolume( spep_2 + 220, 1190, 168 );
setSeVolume( spep_2 + 227, 1190, 168 );
setSeVolume( spep_2 + 228, 1190, 151 );
setSeVolume( spep_2 + 229, 1190, 134 );
setSeVolume( spep_2 + 230, 1190, 117 );
setSeVolume( spep_2 + 231, 1190, 100 );
se_1121 = playSe( spep_2 + 256, 1121 );
setSeVolume( spep_2 + 256, 1121, 0 );
setSeVolume( spep_2 + 275, 1121, 20 );
setSeVolume( spep_2 + 276, 1121, 40 );
setSeVolume( spep_2 + 277, 1121, 60 );
setSeVolume( spep_2 + 278, 1121, 80 );
setSeVolume( spep_2 + 279, 1121, 100 );
playSe( spep_2 + 267, 1009 );
se_1182 = playSe( spep_2 + 269, 1182 );
setSeVolume( spep_2 + 269, 1182, 316 );
setSeVolume( spep_2 + 275, 1182, 316 );
setSeVolume( spep_2 + 276, 1182, 244 );
setSeVolume( spep_2 + 277, 1182, 172 );
setSeVolume( spep_2 + 278, 1182, 100 );
se_1183 = playSe( spep_2 + 276, 1183 );

stopSe( spep_2 + 44, se_1182, 0 );
stopSe( spep_2 + 148, se_1121, 0 );
stopSe( spep_2 + 148, se_1183, 0 );
stopSe( spep_2 + 224, se_1117, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 284;


------------------------------------------------------
-- 殴り構え〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 720, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 720, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 720, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 720, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 720, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 720, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 720, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 720, finish_b, 255 );

--集中線
shuchusenx = entryEffectLife( spep_3 ,  906, 84, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 , shuchusenx, 84, 20 );
setEffMoveKey( spep_3 , shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_3 + 84, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_3 , shuchusenx, 1.1, 1.1 );
setEffScaleKey( spep_3 + 84, shuchusenx, 1.1, 1.1 );

setEffRotateKey( spep_3 , shuchusenx, 180 );
setEffRotateKey( spep_3 + 84, shuchusenx, 180 );

setEffAlphaKey( spep_3 , shuchusenx, 0 );
setEffAlphaKey( spep_3 +19, shuchusenx, 0 );
setEffAlphaKey( spep_3 +20, shuchusenx, 255 );
setEffAlphaKey( spep_3 + 84, shuchusenx, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_3  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3-4 +16, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_3-4 +16,  ctgogo,  80,  510);
setEffMoveKey(  spep_3-4 +88,  ctgogo,  80,  510);

setEffAlphaKey( spep_3-4 +16, ctgogo, 0 );
setEffAlphaKey( spep_3-4 + 17, ctgogo, 255 );
setEffAlphaKey( spep_3-4 + 18, ctgogo, 255 );
setEffAlphaKey( spep_3-4 + 82, ctgogo, 255 );
setEffAlphaKey( spep_3-4 + 84, ctgogo, 191 );
setEffAlphaKey( spep_3-4 + 86, ctgogo, 112 );
setEffAlphaKey( spep_3-4 + 88, ctgogo, 64 );

setEffRotateKey(  spep_3-4 +16,  ctgogo,  0);
setEffRotateKey(  spep_3-4 +88,  ctgogo,  0);

setEffScaleKey(  spep_3-4 +16,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3-4 +78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3-4 +88,  ctgogo, 1.07, 1.07 );

--エネミーの動き
setDisp( spep_3-3 + 88, 1, 1);
setDisp( spep_3-1 + 258, 1, 0);
setDisp( spep_3-3 + 400, 1, 1);
setDisp( spep_3-3 + 570, 1, 0);

changeAnime( spep_3-3 + 88, 1, 8);
changeAnime( spep_3-3 + 150, 1, 5);
changeAnime( spep_3-3 + 400, 1, 105);

setAlphaKey( spep_3-3 + 88, 1, 255 );
setAlphaKey( spep_3 + 234, 1, 255 );
setAlphaKey( spep_3 + 235, 1, 140 );
setAlphaKey( spep_3 + 257, 1, 140 );
setAlphaKey( spep_3 + 258, 1, 255 );

setGaussBlurKey(spep_3-3 + 150, 1,  0.005 );
setGaussBlurKey(spep_3 + 214, 1,  0.005 );
setGaussBlurKey(spep_3 + 215, 1,  0 );
setGaussBlurKey(spep_3 + 396, 1,  0 );
setBlendColor(spep_3-3 + 88,1,2,0.1, 0.3, 0.75, 0.6);
setBlendColor(spep_3 + 215, 1, 2, 0, 0, 0, 0);
setBlendColor(spep_3 +223,1,0,0,0.6,1,0.6);
setBlendColor(spep_3 +229,1,1,1,1,1,1);
setBlendColor(spep_3 + 235,1,2,0.1, 0.3, 0.75, 0.6);
setBlendColor(spep_3 + 397,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 397, 1,  0.005 );
setGaussBlurKey(spep_3 + 398, 1,  0.005 );
setBlendColor(spep_3 + 399,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 399, 1,  0 );
setGaussBlurKey(spep_3 + 400, 1,  0 );
setBlendColor(spep_3 + 401,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 401, 1,  0.005 );
setGaussBlurKey(spep_3 + 402, 1,  0.005 );
setBlendColor(spep_3 + 403,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 403, 1,  0 );
setGaussBlurKey(spep_3 + 406, 1,  0 );
setBlendColor(spep_3 + 407,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 407, 1,  0.005 );
setGaussBlurKey(spep_3 + 408, 1,  0.005 );
setBlendColor(spep_3 + 409,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 409, 1,  0 );
setGaussBlurKey(spep_3 + 410, 1,  0 );
setBlendColor(spep_3 + 411,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 411, 1,  0.005 );
setGaussBlurKey(spep_3 + 412, 1,  0.005 );
setBlendColor(spep_3 + 413,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 413, 1,  0 );
setGaussBlurKey(spep_3 + 416, 1,  0 );
setBlendColor(spep_3 + 417,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 417, 1,  0.005 );
setGaussBlurKey(spep_3 + 418, 1,  0.005 );
setBlendColor(spep_3 + 419,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 419, 1,  0 );
setGaussBlurKey(spep_3 + 420, 1,  0 );
setBlendColor(spep_3 + 421,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 421, 1,  0.005 );
setGaussBlurKey(spep_3 + 424, 1,  0.005 );
setBlendColor(spep_3 + 425,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 425, 1,  0 );
setGaussBlurKey(spep_3 + 426, 1,  0 );
setBlendColor(spep_3 + 427,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 427, 1,  0.005 );
setGaussBlurKey(spep_3 + 428, 1,  0.005 );
setBlendColor(spep_3 + 429,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 429, 1,  0 );
setGaussBlurKey(spep_3 + 432, 1,  0 );
setBlendColor(spep_3 + 433,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 433, 1,  0.005 );
setGaussBlurKey(spep_3 + 434, 1,  0.005 );
setBlendColor(spep_3 + 435,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 435, 1,  0 );
setGaussBlurKey(spep_3 + 436, 1,  0 );
setBlendColor(spep_3 + 437,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 437, 1,  0.005 );
setGaussBlurKey(spep_3 + 438, 1,  0.005 );
setBlendColor(spep_3 + 439,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 439, 1,  0 );
setGaussBlurKey(spep_3 + 442, 1,  0 );
setBlendColor(spep_3 + 443,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 443, 1,  0.005 );
setGaussBlurKey(spep_3 + 444, 1,  0.005 );
setBlendColor(spep_3 + 445,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 445, 1,  0 );
setGaussBlurKey(spep_3 + 446, 1,  0 );
setBlendColor(spep_3 + 447,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 447, 1,  0.005 );
setGaussBlurKey(spep_3 + 448, 1,  0.005 );
setBlendColor(spep_3 + 449,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 449, 1,  0 );
setGaussBlurKey(spep_3 + 452, 1,  0 );
setBlendColor(spep_3 + 453,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 453, 1,  0.005 );
setGaussBlurKey(spep_3 + 458, 1,  0.005 );
setBlendColor(spep_3 + 459,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 459, 1,  0 );
setGaussBlurKey(spep_3 + 472, 1,  0 );
setBlendColor(spep_3 + 473,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 473, 1,  0.005 );
setGaussBlurKey(spep_3 + 474, 1,  0.005 );
setBlendColor(spep_3 + 475,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 475, 1,  0 );
setGaussBlurKey(spep_3 + 476, 1,  0 );
setBlendColor(spep_3 + 477,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 477, 1,  0.005 );
setGaussBlurKey(spep_3 + 483, 1,  0.005 );
setBlendColor(spep_3 + 484,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 484, 1,  0 );
setGaussBlurKey(spep_3 + 488, 1,  0 );
setBlendColor(spep_3 + 489,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 489, 1,  0.005 );
setGaussBlurKey(spep_3 + 492, 1,  0.005 );
setBlendColor(spep_3 + 493,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 493, 1,  0 );
setGaussBlurKey(spep_3 + 498, 1,  0 );
setBlendColor(spep_3 + 499,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 499, 1,  0.005 );
setGaussBlurKey(spep_3 + 501, 1,  0.005 );
setBlendColor(spep_3 + 502,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 502, 1,  0 );
setGaussBlurKey(spep_3 + 570, 1,  0 );

c=-50;
d=300;

setMoveKey( spep_3-3 + 88, 1, -84.5-c, 84.5-d , 0 );
setMoveKey( spep_3-3 + 90, 1, -99.4-c, 69.5-d , 0 );
setMoveKey( spep_3-3 + 92, 1, -84.5-c, 84.5-d , 0 );
setMoveKey( spep_3-3 + 94, 1, -88.7-c, 111.7-d , 0 );
setMoveKey( spep_3-3 + 96, 1, -84.5-c, 84.5-d , 0 );
setMoveKey( spep_3-3 + 98, 1, -91.3-c, 67.7-d , 0 );
setMoveKey( spep_3-3 + 100, 1, -62-c, 37.9-d , 0 );
setMoveKey( spep_3-3 + 102, 1, -64.4-c, 78.9-d , 0 );
setMoveKey( spep_3-3 + 104, 1, -43.6-c, 57.6-d , 0 );
setMoveKey( spep_3-3 + 106, 1, -69-c, 82.3-d , 0 );
setMoveKey( spep_3-3 + 108, 1, -59.5-c, 70-d , 0 );
setMoveKey( spep_3-3 + 110, 1, -54.7-c, 71.6-d , 0 );
setMoveKey( spep_3-3 + 112, 1, -65.8-c, 89.1-d , 0 );
setMoveKey( spep_3-3 + 114, 1, -53.9-c, 49-d , 0 );
setMoveKey( spep_3-3 + 116, 1, -69.5-c, 59.6-d , 0 );
setMoveKey( spep_3-3 + 118, 1, -82.7-c, 58.6-d , 0 );
setMoveKey( spep_3-3 + 120, 1, -61.2-c, 82.9-d , 0 );
setMoveKey( spep_3-3 + 122, 1, -53.5-c, 97.8-d , 0 );
setMoveKey( spep_3-3 + 124, 1, -78-c, 91.8-d , 0 );
setMoveKey( spep_3-3 + 126, 1, -58.6-c, 92.7-d , 0 );
setMoveKey( spep_3-3 + 128, 1, -50.7-c, 75.1-d , 0 );
setMoveKey( spep_3-3 + 130, 1, -68-c, 121.9-d , 0 );
setMoveKey( spep_3-3 + 132, 1, -53-c, 133.9-d , 0 );
setMoveKey( spep_3-3 + 134, 1, -51.8-c, 134.3-d , 0 );
setMoveKey( spep_3-3 + 136, 1, -43.5-c, 146.1-d , 0 );
setMoveKey( spep_3-3 + 138, 1, -44.4-c, 123.3-d , 0 );
setMoveKey( spep_3-3 + 140, 1, -54.5-c, 75.3-d , 0 );
setMoveKey( spep_3-3 + 142, 1, -55.1-c, 98.6-d , 0 );
setMoveKey( spep_3-3 + 144, 1, -53.4-c, 75.7-d , 0 );
setMoveKey( spep_3-3 + 146, 1, -53.9-c, 94.4-d , 0 );
setMoveKey( spep_3-3 + 148, 1, -47.5-c, 76.1-d , 0 );
setMoveKey( spep_3-3 + 149, 1, -47.5-c, 76.1-d , 0 );

setMoveKey( spep_3-3 + 150, 1, -13.5, -80.6 , 0 );
setMoveKey( spep_3-3 + 152, 1, -11.7, -95.6 , 0 );
setMoveKey( spep_3-3 + 154, 1, -10.1, -110.6 , 0 );
setMoveKey( spep_3-3 + 156, 1, -8.3, -125.7 , 0 );
setMoveKey( spep_3-3 + 158, 1, -6.6, -140.7 , 0 );
setMoveKey( spep_3-3 + 160, 1, -9.6, -143.7 , 0 );
setMoveKey( spep_3-3 + 162, 1, -9.5, -139.2 , 0 );
setMoveKey( spep_3-3 + 164, 1, -9.5, -136.3 , 0 );
setMoveKey( spep_3-3 + 166, 1, -15.4, -137.9 , 0 );
setMoveKey( spep_3-3 + 168, 1, -18.2, -134.9 , 0 );
setMoveKey( spep_3-3 + 170, 1, -17.9, -139.6 , 0 );
setMoveKey( spep_3-3 + 172, 1, -16.2, -144 , 0 );
setMoveKey( spep_3-3 + 174, 1, -16, -139.5 , 0 );
setMoveKey( spep_3-3 + 176, 1, -15.7, -139.5 , 0 );
setMoveKey( spep_3-3 + 178, 1, -15.5, -133.6 , 0 );
setMoveKey( spep_3-3 + 180, 1, -21.3, -136.8 , 0 );
setMoveKey( spep_3-3 + 182, 1, -20.9, -145.8 , 0 );
setMoveKey( spep_3-3 + 184, 1, -25, -147.2 , 0 );
setMoveKey( spep_3-3 + 186, 1, -21.5, -138 , 0 );
setMoveKey( spep_3-3 + 188, 1, -16.6, -130.6 , 0 );
setMoveKey( spep_3-3 + 190, 1, -16.3, -130.9 , 0 );
setMoveKey( spep_3-3 + 192, 1, -19.1, -131.2 , 0 );
setMoveKey( spep_3-3 + 194, 1, -11.2, -131.5 , 0 );
setMoveKey( spep_3-3 + 196, 1, -5.1, -131.8 , 0 );
setMoveKey( spep_3-3 + 198, 1, -6.6, -129.1 , 0 );
setMoveKey( spep_3-3 + 200, 1, -2.1, -129.5 , 0 );
setMoveKey( spep_3-3 + 202, 1, -5.3, -137.4 , 0 );
setMoveKey( spep_3-3 + 204, 1, -11.3, -137.5 , 0 );
setMoveKey( spep_3-3 + 206, 1, -11.1, -137.6 , 0 );
setMoveKey( spep_3-3 + 208, 1, -0.5, -139.2 , 0 );
setMoveKey( spep_3-3 + 210, 1, 3.8, -139.3 , 0 );
setMoveKey( spep_3-3 + 212, 1, 3.3, -136.4 , 0 );
setMoveKey( spep_3-3 + 214, 1, 2.9, -132 , 0 );
setMoveKey( spep_3-3 + 216, 1, 2.5, -126.4 , 0 );
setMoveKey( spep_3-3 + 218, 1, 0.5, -84.9 , 0 );
setMoveKey( spep_3-3 + 220, 1, 5.9, -90.1 , 0 );
setMoveKey( spep_3-3 + 222, 1, 10.9, 42.1 , 0 );
setMoveKey( spep_3-3 + 224, 1, -6.6, 26.6 , 0 );
setMoveKey( spep_3-3 + 230, 1, -6.6, 26.6 , 0 );
setMoveKey( spep_3-3 + 232, 1, -3.6, 11.6 , 0 );
setMoveKey( spep_3-3 + 234, 1, -3.9, 2.3 , 0 );
setMoveKey( spep_3-3 + 236, 1, -7, 13.3 , 0 );
setMoveKey( spep_3-3 + 238, 1, -11.5, 7 , 0 );
setMoveKey( spep_3-3 + 240, 1, -17, 15 , 0 );
setMoveKey( spep_3-3 + 242, 1, -15.8, 1.3 , 0 );
setMoveKey( spep_3-3 + 244, 1, -4.2, 4.4 , 0 );
setMoveKey( spep_3-3 + 246, 1, -6.1, 10.6 , 0 );
setMoveKey( spep_3-3 + 248, 1, -9.1, 7.3 , 0 );
setMoveKey( spep_3-3 + 250, 1, -11.6, 2.1 , 0 );
setMoveKey( spep_3-3 + 252, 1, -10.4, 11.2 , 0 );
setMoveKey( spep_3-3 + 254, 1, -10.6, 19.4 , 0 );
setMoveKey( spep_3-3 + 256, 1, -4.1, 30.4 , 0 );
setMoveKey( spep_3-1 + 258, 1, -0.6, 19.1 , 0 );

setMoveKey( spep_3-3 + 400, 1, -56.1, 155 , 0 );
setMoveKey( spep_3-3 + 402, 1, -65.1, 164 , 0 );
setMoveKey( spep_3-3 + 404, 1, -62, 166.9 , 0 );
setMoveKey( spep_3-3 + 406, 1, -62, 166.9 , 0 );
setMoveKey( spep_3-3 + 408, 1, -54.5, 148.8 , 0 );
setMoveKey( spep_3-3 + 410, 1, -66.4, 149 , 0 );
setMoveKey( spep_3-3 + 412, 1, -66.2, 167.2 , 0 );
setMoveKey( spep_3-3 + 414, 1, -66.1, 167 , 0 );
setMoveKey( spep_3-3 + 416, 1, -71.8, 162.2 , 0 );
setMoveKey( spep_3-3 + 418, 1, -68.5, 175.6 , 0 );
setMoveKey( spep_3-3 + 420, 1, -68.2, 175.2 , 0 );
setMoveKey( spep_3-3 + 422, 1, -80, 164.4 , 0 );
setMoveKey( spep_3-3 + 424, 1, -79.4, 158.1 , 0 );
setMoveKey( spep_3-3 + 426, 1, -78.9, 170.2 , 0 );
setMoveKey( spep_3-3 + 428, 1, -63.4, 172.9 , 0 );
setMoveKey( spep_3-3 + 430, 1, -54.2, 157.5 , 0 );
setMoveKey( spep_3-3 + 432, 1, -64.7, 151.5 , 0 );
setMoveKey( spep_3-3 + 434, 1, -73.5, 159.1 , 0 );
setMoveKey( spep_3-3 + 436, 1, -67.1, 148.7 , 0 );
setMoveKey( spep_3-3 + 438, 1, -50.4, 149 , 0 );
setMoveKey( spep_3-3 + 440, 1, -50.5, 162.6 , 0 );
setMoveKey( spep_3-3 + 442, 1, -49.2, 168.5 , 0 );
setMoveKey( spep_3-3 + 444, 1, -62.9, 153.2 , 0 );
setMoveKey( spep_3-3 + 446, 1, -53.8, 163.9 , 0 );
setMoveKey( spep_3-3 + 448, 1, -45, 163.7 , 0 );
setMoveKey( spep_3-3 + 450, 1, -52.9, 154.6 , 0 );
setMoveKey( spep_3-3 + 452, 1, -47, 165.1 , 0 );
setMoveKey( spep_3-3 + 454, 1, -47.4, 164.8 , 0 );
setMoveKey( spep_3-3 + 456, 1, -47.8, 158.6 , 0 );
setMoveKey( spep_3-3 + 458, 1, -49.7, 160 , 0 );
setMoveKey( spep_3-3 + 460, 1, -59, 168.9 , 0 );
setMoveKey( spep_3-3 + 462, 1, -52.9, 156.5 , 0 );
setMoveKey( spep_3-3 + 464, 1, -53.1, 156.5 , 0 );
setMoveKey( spep_3-3 + 466, 1, -62.3, 162.6 , 0 );
setMoveKey( spep_3-3 + 468, 1, -62, 162.3 , 0 );
setMoveKey( spep_3-3 + 470, 1, -61.8, 162.1 , 0 );
setMoveKey( spep_3-3 + 472, 1, -61.5, 161.8 , 0 );
setMoveKey( spep_3-3 + 474, 1, -76.2, 169.1 , 0 );
setMoveKey( spep_3-3 + 476, 1, -75, 168.3 , 0 );
setMoveKey( spep_3-3 + 478, 1, -66.2, 163.1 , 0 );
setMoveKey( spep_3-3 + 480, 1, -73, 162.7 , 0 );
setMoveKey( spep_3-3 + 482, 1, -71.7, 162.3 , 0 );
setMoveKey( spep_3-3 + 484, 1, -61.3, 164.9 , 0 );
setMoveKey( spep_3-3 + 486, 1, -65.4, 161.2 , 0 );
setMoveKey( spep_3-3 + 488, 1, -64.5, 154.8 , 0 );
setMoveKey( spep_3-3 + 490, 1, -51.7, 155.3 , 0 );
setMoveKey( spep_3-3 + 492, 1, -49.4, 155.6 , 0 );
setMoveKey( spep_3-3 + 494, 1, -46.2, 163.5 , 0 );
setMoveKey( spep_3-3 + 496, 1, -55.9, 168.3 , 0 );
setMoveKey( spep_3-3 + 498, 1, -60.7, 171.7 , 0 );
setMoveKey( spep_3-3 + 500, 1, -56.6, 159.6 , 0 );
setMoveKey( spep_3-3 + 502, 1, -50.9, 155.8 , 0 );
setMoveKey( spep_3-3 + 504, 1, -63.2, 157.9 , 0 );
setMoveKey( spep_3-3 + 506, 1, -69.2, 157.9 , 0 );
setMoveKey( spep_3-3 + 508, 1, -63.1, 165.4 , 0 );
setMoveKey( spep_3-3 + 510, 1, -78.1, 165.4 , 0 );
setMoveKey( spep_3-3 + 512, 1, -77.9, 165.2 , 0 );
setMoveKey( spep_3-3 + 514, 1, -80.6, 168.1 , 0 );
setMoveKey( spep_3-3 + 516, 1, -80.3, 168 , 0 );
setMoveKey( spep_3-3 + 518, 1, -80, 167.9 , 0 );
setMoveKey( spep_3-3 + 520, 1, -73.8, 172.2 , 0 );
setMoveKey( spep_3-3 + 522, 1, -67.6, 167.5 , 0 );
setMoveKey( spep_3-3 + 524, 1, -61.5, 161.4 , 0 );
setMoveKey( spep_3-3 + 526, 1, -61.6, 156.9 , 0 );
setMoveKey( spep_3-3 + 528, 1, -69.1, 161.4 , 0 );
setMoveKey( spep_3-3 + 530, 1, -76.5, 170.4 , 0 );
setMoveKey( spep_3-3 + 532, 1, -80.7, 167.1 , 0 );
setMoveKey( spep_3-3 + 534, 1, -50.4, 166.9 , 0 );
setMoveKey( spep_3-3 + 536, 1, -53.7, 169.8 , 0 );
setMoveKey( spep_3-3 + 538, 1, -53.9, 180.1 , 0 );
setMoveKey( spep_3-3 + 540, 1, -54.2, 179.6 , 0 );
setMoveKey( spep_3-3 + 542, 1, -48.4, 179.2 , 0 );
setMoveKey( spep_3-3 + 544, 1, -56.2, 178.7 , 0 );
setMoveKey( spep_3-3 + 546, 1, -56.4, 178.3 , 0 );
setMoveKey( spep_3-3 + 548, 1, -46.1, 173.4 , 0 );
setMoveKey( spep_3-3 + 550, 1, -46.5, 173 , 0 );
setMoveKey( spep_3-3 + 552, 1, -64.9, 171.2 , 0 );
setMoveKey( spep_3-3 + 554, 1, -64.9, 170.9 , 0 );
setMoveKey( spep_3-3 + 556, 1, -64.9, 170.6 , 0 );
setMoveKey( spep_3-3 + 558, 1, -64.8, 170.3 , 0 );
setMoveKey( spep_3-3 + 560, 1, -64.8, 170 , 0 );
setMoveKey( spep_3-3 + 562, 1, -64.8, 169.7 , 0 );
setMoveKey( spep_3-3 + 564, 1, -64.8, 169.4 , 0 );
setMoveKey( spep_3-3 + 566, 1, -49.8, 154.2 , 0 );
setMoveKey( spep_3-3 + 568, 1, -56.2, 158.8 , 0 );
setMoveKey( spep_3-3 + 570, 1, -56.5, 158.9 , 0 );

setScaleKey( spep_3-3 + 88, 1, 15.47, 15.47 );
setScaleKey( spep_3-3 + 92, 1, 15.47, 15.47 );
setScaleKey( spep_3-3 + 94, 1, 16.25, 16.25 );
setScaleKey( spep_3-3 + 96, 1, 15.47, 15.47 );
setScaleKey( spep_3-3 + 98, 1, 16.21, 16.21 );
setScaleKey( spep_3-3 + 100, 1, 14.63, 14.63 );
setScaleKey( spep_3-3 + 102, 1, 14.6, 14.6 );
setScaleKey( spep_3-3 + 104, 1, 14.57, 14.57 );
setScaleKey( spep_3-3 + 106, 1, 14.55, 14.55 );
setScaleKey( spep_3-3 + 108, 1, 14.52, 14.52 );
setScaleKey( spep_3-3 + 110, 1, 14.5, 14.5 );
setScaleKey( spep_3-3 + 112, 1, 14.48, 14.48 );
setScaleKey( spep_3-3 + 114, 1, 14.45, 14.45 );
setScaleKey( spep_3-3 + 116, 1, 14.44, 14.44 );
setScaleKey( spep_3-3 + 118, 1, 14.42, 14.42 );
setScaleKey( spep_3-3 + 120, 1, 14.4, 14.4 );
setScaleKey( spep_3-3 + 122, 1, 14.38, 14.38 );
setScaleKey( spep_3-3 + 124, 1, 14.37, 14.37 );
setScaleKey( spep_3-3 + 126, 1, 14.36, 14.36 );
setScaleKey( spep_3-3 + 128, 1, 14.35, 14.35 );
setScaleKey( spep_3-3 + 130, 1, 14.34, 14.34 );
setScaleKey( spep_3-3 + 132, 1, 14.33, 14.33 );
setScaleKey( spep_3-3 + 134, 1, 14.32, 14.32 );
setScaleKey( spep_3-3 + 136, 1, 14.32, 14.32 );
setScaleKey( spep_3-3 + 138, 1, 14.31, 14.31 );
setScaleKey( spep_3-3 + 148, 1, 14.31, 14.31 );
setScaleKey( spep_3-3 + 149, 1, 14.31, 14.31 );

setScaleKey( spep_3-3 + 150, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 152, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 154, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 156, 1, 0.36, 0.36 );
setScaleKey( spep_3-3 + 158, 1, 0.29, 0.29 );
setScaleKey( spep_3-1 + 258, 1, 0.29, 0.29 );

setScaleKey( spep_3-3 + 400, 1, 0.49, 0.49 );
setScaleKey( spep_3-3 + 446, 1, 0.49, 0.49 );
setScaleKey( spep_3-3 + 448, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 570, 1, 0.5, 0.5 );

setRotateKey( spep_3-3 + 88, 1, 21.6 );
setRotateKey( spep_3-3 + 130, 1, 21.6 );
setRotateKey( spep_3-3 + 132, 1, 21.5 );
setRotateKey( spep_3-3 + 148, 1, 21.5 );
setRotateKey( spep_3-3 + 149, 1, 21.5 );

setRotateKey( spep_3-3 + 150, 1, 0 );
setRotateKey( spep_3-1+ 258, 1, 0 );

setRotateKey( spep_3-3 + 400, 1, 0 );
setRotateKey( spep_3-3 + 570, 1, 0 );

--SE
playSe( spep_3 + 12, 1018 );--ゴゴゴ
se_1117 = playSe( spep_3 + 24, 1117 );
setSeVolume( spep_3 + 24, 1117, 0 );
setSeVolume( spep_3 + 40, 1117, 0 );
setSeVolume( spep_3 + 41, 1117, 16 );
setSeVolume( spep_3 + 42, 1117, 32 );
setSeVolume( spep_3 + 43, 1117, 48 );
setSeVolume( spep_3 + 44, 1117, 64 );
setSeVolume( spep_3 + 45, 1117, 80 );
setSeVolume( spep_3 + 46, 1117, 100 );
playSe( spep_3 + 42, 1004 );
playSe( spep_3 + 49, 1003 );
setSeVolume( spep_3 + 85, 1003, 71 );
playSe( spep_3 + 85, 1003 );
playSe( spep_3 + 85, 1208 );
setSeVolume( spep_3 + 85, 1208, 0 );
setSeVolume( spep_3 + 93, 1208, 0 );
setSeVolume( spep_3 + 94, 1208, 44.5 );
setSeVolume( spep_3 + 95, 1208, 89 );
playSe( spep_3 + 87, 1189 );
playSe( spep_3 + 94, 1190 );
playSe( spep_3 + 94, 1110 );
playSe( spep_3 + 99, 1068 );
playSe( spep_3 + 104, 1054 );
setSeVolume( spep_3 + 104, 1054, 79 );
playSe( spep_3 + 160, 1033 );
playSe( spep_3 + 163, 1025 );
playSe( spep_3 + 207, 1159 );
playSe( spep_3 + 207, 1067 );
playSe( spep_3 + 288, 1003 );
setSeVolume( spep_3 + 288, 1003, 141 );
se_1044 = playSe( spep_3 + 288, 1044 );
playSe( spep_3 + 310, 1043 );
setSeVolume( spep_3 + 310, 1043, 71 );
playSe( spep_3 + 347, 1232 );
setSeVolume( spep_3 + 347, 1232, 141 );
playSe( spep_3 + 348, 1003 );
setSeVolume( spep_3 + 348, 1003, 158 );
playSe( spep_3 + 350, 1192 );
setSeVolume( spep_3 + 350, 1192, 398 );
playSe( spep_3 + 369, 1052 );
playSe( spep_3 + 369, 1027 );
setSeVolume( spep_3 + 369, 1027, 71 );
playSe( spep_3 + 369, 1160 );
se_1216 = playSe( spep_3 + 397, 1216 );
playSe( spep_3 + 440, 1185 );
setSeVolume( spep_3 + 440, 1185, 0 );
setSeVolume( spep_3 + 549, 1185, 0 );
setSeVolume( spep_3 + 550, 1185, 10 );
setSeVolume( spep_3 + 551, 1185, 20 );
setSeVolume( spep_3 + 552, 1185, 30 );
setSeVolume( spep_3 + 553, 1185, 40 );
setSeVolume( spep_3 + 554, 1185, 50 );
setSeVolume( spep_3 + 555, 1185, 60 );
setSeVolume( spep_3 + 556, 1185, 71 );
playSe( spep_3 + 460, 1184 );
setSeVolume( spep_3 + 460, 1184, 0 );
setSeVolume( spep_3 + 477, 1184, 0 );
setSeVolume( spep_3 + 478, 1184, 10 );
setSeVolume( spep_3 + 479, 1184, 20 );
setSeVolume( spep_3 + 480, 1184, 30 );
setSeVolume( spep_3 + 481, 1184, 40 );
setSeVolume( spep_3 + 482, 1184, 50 );
setSeVolume( spep_3 + 483, 1184, 60 );
setSeVolume( spep_3 + 484, 1184, 71 );
se_1217 = playSe( spep_3 + 477, 1217 );
playSe( spep_3 + 477, 1182 );
setSeVolume( spep_3 + 477, 1182, 0 );
setSeVolume( spep_3 + 491, 1182, 0 );
setSeVolume( spep_3 + 492, 1182, 25.36 );
setSeVolume( spep_3 + 493, 1182, 50.71 );
setSeVolume( spep_3 + 494, 1182, 76.07 );
setSeVolume( spep_3 + 495, 1182, 101.43 );
setSeVolume( spep_3 + 496, 1182, 126.79 );
setSeVolume( spep_3 + 497, 1182, 152.14 );
setSeVolume( spep_3 + 498, 1182, 177.50 );
setSeVolume( spep_3 + 499, 1182, 202.86 );
setSeVolume( spep_3 + 500, 1182, 228.21 );
setSeVolume( spep_3 + 501, 1182, 253.57 );
setSeVolume( spep_3 + 502, 1182, 278.93 );
setSeVolume( spep_3 + 503, 1182, 304.29 );
setSeVolume( spep_3 + 504, 1182, 329.64 );
setSeVolume( spep_3 + 505, 1182, 355 );
setSeVolume( spep_3 + 506, 1182, 316 );
setSeVolume( spep_3 + 507, 1182, 277 );
setSeVolume( spep_3 + 508, 1182, 238 );
setSeVolume( spep_3 + 509, 1182, 199 );
setSeVolume( spep_3 + 510, 1182, 160 );
setSeVolume( spep_3 + 511, 1182, 121 );
setSeVolume( spep_3 + 512, 1182, 82 );
setSeVolume( spep_3 + 513, 1182, 43 );
setSeVolume( spep_3 + 514, 1182, 0 );
playSe( spep_3 + 488, 1190 );
setSeVolume( spep_3 + 488, 1190, 0.00 );
setSeVolume( spep_3 + 489, 1190, 0.00 );
setSeVolume( spep_3 + 490, 1190, 10.33 );
setSeVolume( spep_3 + 491, 1190, 20.67 );
setSeVolume( spep_3 + 492, 1190, 31.00 );
setSeVolume( spep_3 + 493, 1190, 41.33 );
setSeVolume( spep_3 + 494, 1190, 51.67 );
setSeVolume( spep_3 + 495, 1190, 62.00 );
setSeVolume( spep_3 + 496, 1190, 72.33 );
setSeVolume( spep_3 + 497, 1190, 82.67 );
setSeVolume( spep_3 + 498, 1190, 93.00 );
setSeVolume( spep_3 + 499, 1190, 103.33 );
setSeVolume( spep_3 + 500, 1190, 113.67 );
setSeVolume( spep_3 + 501, 1190, 124.00 );
setSeVolume( spep_3 + 502, 1190, 134.33 );
setSeVolume( spep_3 + 503, 1190, 144.67 );
setSeVolume( spep_3 + 504, 1190, 155.00 );
setSeVolume( spep_3 + 505, 1190, 165.33 );
setSeVolume( spep_3 + 506, 1190, 175.67 );
setSeVolume( spep_3 + 507, 1190, 186.00 );
setSeVolume( spep_3 + 508, 1190, 139.5 );
setSeVolume( spep_3 + 509, 1190, 93 );
setSeVolume( spep_3 + 510, 1190, 46.5 );
setSeVolume( spep_3 + 511, 1190, 0 );
playSe( spep_3 + 520, 1024 );
playSe( spep_3 + 520, 1067 );
playSe( spep_3 + 592, 1023 );
playSe( spep_3 + 596, 1159 );
playSe( spep_3 + 663, 1044 );
setSeVolume( spep_3 + 663, 1044, 0.00 );
setSeVolume( spep_3 + 664, 1044, 4.24 );
setSeVolume( spep_3 + 665, 1044, 8.48 );
setSeVolume( spep_3 + 666, 1044, 12.71 );
setSeVolume( spep_3 + 667, 1044, 16.95 );
setSeVolume( spep_3 + 668, 1044, 21.19 );
setSeVolume( spep_3 + 669, 1044, 25.43 );
setSeVolume( spep_3 + 670, 1044, 29.67 );
setSeVolume( spep_3 + 671, 1044, 33.90 );
setSeVolume( spep_3 + 672, 1044, 38.14 );
setSeVolume( spep_3 + 673, 1044, 42.38 );
setSeVolume( spep_3 + 674, 1044, 46.62 );
setSeVolume( spep_3 + 675, 1044, 50.86 );
setSeVolume( spep_3 + 676, 1044, 55.10 );
setSeVolume( spep_3 + 677, 1044, 59.33 );
setSeVolume( spep_3 + 678, 1044, 63.57 );
setSeVolume( spep_3 + 679, 1044, 67.81 );
setSeVolume( spep_3 + 680, 1044, 72.05 );
setSeVolume( spep_3 + 681, 1044, 76.29 );
setSeVolume( spep_3 + 682, 1044, 80.52 );
setSeVolume( spep_3 + 683, 1044, 84.76 );
setSeVolume( spep_3 + 684, 1044, 89.00 );
setSeVolume( spep_3 + 685, 1044, 93.24 );
setSeVolume( spep_3 + 686, 1044, 97.48 );
setSeVolume( spep_3 + 687, 1044, 101.71 );
setSeVolume( spep_3 + 688, 1044, 105.95 );
setSeVolume( spep_3 + 689, 1044, 110.19 );
setSeVolume( spep_3 + 690, 1044, 114.43 );
setSeVolume( spep_3 + 691, 1044, 118.67 );
setSeVolume( spep_3 + 692, 1044, 122.90 );
setSeVolume( spep_3 + 693, 1044, 127.14 );
setSeVolume( spep_3 + 694, 1044, 131.38 );
setSeVolume( spep_3 + 695, 1044, 135.62 );
setSeVolume( spep_3 + 696, 1044, 139.86 );
setSeVolume( spep_3 + 697, 1044, 144.10 );
setSeVolume( spep_3 + 698, 1044, 148.33 );
setSeVolume( spep_3 + 699, 1044, 152.57 );
setSeVolume( spep_3 + 700, 1044, 156.81 );
setSeVolume( spep_3 + 701, 1044, 161.05 );
setSeVolume( spep_3 + 702, 1044, 165.29 );
setSeVolume( spep_3 + 703, 1044, 169.52 );
setSeVolume( spep_3 + 704, 1044, 173.76 );
setSeVolume( spep_3 + 705, 1044, 178.00 );

stopSe( spep_3 + 10, se_1121, 15 );
stopSe( spep_3 + 16, se_1182, 0 );
stopSe( spep_3 + 66, se_1183, 0 );
stopSe( spep_3 + 94, se_1117, 0 );
stopSe( spep_3 + 510, se_1044, 0 );
stopSe( spep_3 + 506, se_1216, 6 );
stopSe( spep_3 + 509, se_1217, 8 );


dealDamage( spep_3 + 594 );
endPhase( spep_3 + 712 );


else 
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭構え
------------------------------------------------------
--初めの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 64, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 64, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 64, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 64, tame, 255 );
--SE
se_1004 = playSe( spep_0 + 0, 1004 );
setSeVolume( spep_0 + 0, 1004, 0 );
setSeVolume( spep_0 + 1, 1004, 10 );
setSeVolume( spep_0 + 2, 1004, 20 );
setSeVolume( spep_0 + 3, 1004, 30 );
setSeVolume( spep_0 + 4, 1004, 40 );
setSeVolume( spep_0 + 5, 1004, 50 );
setSeVolume( spep_0 + 6, 1004, 63 );
se_1232 = playSe( spep_0 + 0, 1232 );
setSeVolume( spep_0 + 0, 1232, 141 );
se_0008 = playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1004, 0 );
    stopSe( SP_dodge - 12, se_1232, 0 );
    stopSe( SP_dodge - 12, se_0008, 0 );    
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
--SE
se_1035 = playSe( spep_0 + 36, 1035 );
setSeVolume( spep_0 + 36, 1035, 126 );
se_1159 = playSe( spep_0 + 36, 1159 );
setSeVolume( spep_0 + 36, 1159, 79 );
se_1182 = playSe( spep_0 + 36, 1182 );
setSeVolume( spep_0 + 36, 1182, 158 );
setSeVolume( spep_0 + 43, 1182, 158 );
setSeVolume( spep_0 + 44, 1182, 129 );
setSeVolume( spep_0 + 45, 1182, 100 );


stopSe( spep_0 + 13, se_1004, 4 );
stopSe( spep_0 + 14, se_1232, 18 );
stopSe( spep_0 + 19, se_0008, 12 );



-- ** 次の準備
spep_1 = spep_0 + 64;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
stopSe( spep_1 + 4, se_1035, 17 );
stopSe( spep_1 + 4, se_1159, 15 );
stopSe( spep_1 + 3, se_1182, 14 );
--白フェード
--entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 突進〜横構図の殴り飛ばし
------------------------------------------------------
panting_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 266, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 266, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 266, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 266, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 266, panting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 266, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 266, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 266, panting_b, 255 );

--エネミーの動き
setDisp( spep_2-3 + 30, 1, 1);
setDisp( spep_2-1 + 48, 1, 0);
changeAnime( spep_2-3 + 30, 1, 105);

setMoveKey( spep_2-3 + 30, 1, 197.6, 144.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 199.5, 142 , 0 );
setMoveKey( spep_2-3 + 34, 1, 201.1, 139.7 , 0 );
setMoveKey( spep_2-3 + 36, 1, 202.5, 137.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 203.7, 136.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, 204.7, 134.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 205.5, 133.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 206, 133 , 0 );
setMoveKey( spep_2-3 + 46, 1, 206.4, 132.6 , 0 );
setMoveKey( spep_2-1 + 48, 1, 206.5, 132.5 , 0 );

setScaleKey( spep_2-3 + 30, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 32, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 34, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 36, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 38, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 40, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 42, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 44, 1, 0.15, 0.15 );
setScaleKey( spep_2-1 + 48, 1, 0.15, 0.15 );

setRotateKey( spep_2-3 + 30, 1, 0 );
setRotateKey( spep_2-3 + 32, 1, -4.6 );
setRotateKey( spep_2-3 + 34, 1, -8.6 );
setRotateKey( spep_2-3 + 36, 1, -12.1 );
setRotateKey( spep_2-3 + 38, 1, -15.1 );
setRotateKey( spep_2-3 + 40, 1, -17.5 );
setRotateKey( spep_2-3 + 42, 1, -19.4 );
setRotateKey( spep_2-3 + 44, 1, -20.7 );
setRotateKey( spep_2-3 + 46, 1, -21.5 );
setRotateKey( spep_2-1 + 48, 1, -21.8 );

--エネミーの動き
setDisp( spep_2-3 + 110, 1, 1);
setDisp( spep_2 + 137, 1, 0);
changeAnime( spep_2-3 + 110, 1, 108);
setBlendColor(spep_2-3 + 110, 1, 2, 0.1, 0.3, 0.75, 0.6);
setBlendColor(spep_2 + 137,1,2,0,0.1,0.4,0);

a=150;
b=380;

setMoveKey( spep_2-3 + 110, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 116, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 118, 1, 122.8+a, 219-b , 0 );
setMoveKey( spep_2+137, 1, 122.8+a, 219-b , 0 );

setScaleKey( spep_2-3 + 110, 1, 17.99, 17.99 );
setScaleKey( spep_2 + 137, 1, 17.99, 17.99 );

setRotateKey( spep_2-3 + 110, 1, -33 );
setRotateKey( spep_2-3 + 116, 1, -33 );
setRotateKey( spep_2-3 + 118, 1, -65 );
setRotateKey( spep_2 + 137, 1, -65 );

--エネミーの動き
setDisp( spep_2-3 + 192, 1, 1);
setDisp( spep_2-1 + 206, 1, 0);
changeAnime( spep_2-3 + 192, 1, 108);

setMoveKey( spep_2-3 + 192, 1, -58.3, 21.1 , 0 );
setMoveKey( spep_2-3 + 194, 1, -58.3, 21.1 , 0 );
setMoveKey( spep_2-3 + 196, 1, 29.7, 77.1 , 0 );
setMoveKey( spep_2-3 + 198, 1, 92.9, 115.5 , 0 );
setMoveKey( spep_2-3 + 200, 1, 174.5, 165.1 , 0 );
setMoveKey( spep_2-3 + 202, 1, 292.5, 236.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 594.3, 420.1 , 0 );
setMoveKey( spep_2-1 + 206, 1, 717.4, 494.8 , 0 );

setScaleKey( spep_2-3 + 192, 1, 0.7, 0.7 );
setScaleKey( spep_2-1 + 206, 1, 0.7, 0.7 );

setRotateKey( spep_2-3 + 192, 1, -24.8 );
setRotateKey( spep_2-1 + 206, 1, -24.8 );

--文字エントリー
ctbako = entryEffectLife( spep_2-3 + 198,  10021, 38, 0x100, -1, 0, -6.8, 242.1 );

setEffMoveKey( spep_2-3 + 198, ctbako, -6.8, 242.1 , 0 );
setEffMoveKey( spep_2-3 + 200, ctbako, 10.2, 284.3 , 0 );
setEffMoveKey( spep_2-3 + 202, ctbako, 29.2, 394 , 0 );
setEffMoveKey( spep_2-3 + 204, ctbako, -6.8, 343.2 , 0 );
setEffMoveKey( spep_2-3 + 206, ctbako, -1.1, 318.8 , 0 );
setEffMoveKey( spep_2-3 + 208, ctbako, -20, 306.9 , 0 );
setEffMoveKey( spep_2-3 + 210, ctbako, -0.9, 318.7 , 0 );
setEffMoveKey( spep_2-3 + 212, ctbako, -19.7, 306.8 , 0 );
setEffMoveKey( spep_2-3 + 214, ctbako, -0.6, 318.6 , 0 );
setEffMoveKey( spep_2-3 + 216, ctbako, -19.3, 306.6 , 0 );
setEffMoveKey( spep_2-3 + 218, ctbako, 0.1, 318.4 , 0 );
setEffMoveKey( spep_2-3 + 220, ctbako, -18.7, 306.4 , 0 );
setEffMoveKey( spep_2-3 + 222, ctbako, 0.6, 318.2 , 0 );
setEffMoveKey( spep_2-3 + 224, ctbako, -18.4, 306.3 , 0 );
setEffMoveKey( spep_2-3 + 226, ctbako, 0.8, 318.1 , 0 );
setEffMoveKey( spep_2-3 + 228, ctbako, 0.9, 318.1 , 0 );
setEffMoveKey( spep_2-3 + 230, ctbako, -19.3, 297.7 , 0 );
setEffMoveKey( spep_2-3 + 232, ctbako, -4.2, 299.2 , 0 );
setEffMoveKey( spep_2-3 + 234, ctbako, -21.3, 280.7 , 0 );
setEffMoveKey( spep_2-3 + 236, ctbako, -22.3, 272.3 , 0 );

setEffScaleKey( spep_2-3 + 198, ctbako, 1.31, 1.28 );
setEffScaleKey( spep_2-3 + 200, ctbako, 1.77, 1.74 );
setEffScaleKey( spep_2-3 + 202, ctbako, 3.16, 3.12 );
setEffScaleKey( spep_2-3 + 204, ctbako, 2.89, 2.85 );
setEffScaleKey( spep_2-3 + 206, ctbako, 2.61, 2.57 );
setEffScaleKey( spep_2-3 + 228, ctbako, 2.61, 2.57 );
setEffScaleKey( spep_2-3 + 230, ctbako, 2.41, 2.37 );
setEffScaleKey( spep_2-3 + 232, ctbako, 2.21, 2.17 );
setEffScaleKey( spep_2-3 + 234, ctbako, 2.01, 1.97 );
setEffScaleKey( spep_2-3 + 236, ctbako, 1.8, 1.78 );

setEffRotateKey( spep_2-3 + 198, ctbako, 0 );
setEffRotateKey( spep_2-3 + 236, ctbako, 0 );

setEffAlphaKey( spep_2-3 + 198, ctbako, 255 );
setEffAlphaKey( spep_2-3 + 228, ctbako, 255 );
setEffAlphaKey( spep_2-3 + 230, ctbako, 191 );
setEffAlphaKey( spep_2-3 + 232, ctbako, 128 );
setEffAlphaKey( spep_2-3 + 234, ctbako, 64 );
setEffAlphaKey( spep_2-3 + 236, ctbako, 0 );

--SE
SE0=playSe( spep_2 + 9, 1009 );
se_1182 = playSe( spep_2 + 11, 1182 );
setSeVolume( spep_2 + 11, 1182, 200 );
setSeVolume( spep_2 + 18, 1182, 200 );
setSeVolume( spep_2 + 19, 1182, 150 );
setSeVolume( spep_2 + 20, 1182, 100 );
se_1121 = playSe( spep_2 + 18, 1121 );
se_1183 = playSe( spep_2 + 18, 1183 );

--SE
playSe( spep_2 -30 + 139, 1187 );
playSe( spep_2 -30 + 139, 1190 );
setSeVolume( spep_2 -30 + 139, 1190, 150 );
setSeVolume( spep_2 -30 + 146, 1190, 136 );
setSeVolume( spep_2 -30 + 147, 1190, 122 );
setSeVolume( spep_2 -30 + 148, 1190, 108 );
setSeVolume( spep_2 -30 + 149, 1190, 94 );
setSeVolume( spep_2 -30 + 150, 1190, 89 );
se_1117 = playSe( spep_2 -30 + 178, 1117 );
setSeVolume( spep_2 -30 + 178, 1117, 0 );
setSeVolume( spep_2 -30 + 194, 1117, 12 );
setSeVolume( spep_2 -30 + 195, 1117, 24 );
setSeVolume( spep_2 -30 + 196, 1117, 36 );
setSeVolume( spep_2 -30 + 197, 1117, 48 );
setSeVolume( spep_2 -30 + 198, 1117, 60 );
setSeVolume( spep_2 -30 + 199, 1117, 72 );
setSeVolume( spep_2 -30 + 200, 1117, 89 );
playSe( spep_2 -30 + 196, 1004 );
playSe( spep_2 -30 + 203, 1003 );
setSeVolume( spep_2 -30 + 203, 1003, 89 );
playSe( spep_2 -30 + 220, 1187 );
playSe( spep_2 -30 + 220, 1190 );
setSeVolume( spep_2 -30 + 220, 1190, 168 );
setSeVolume( spep_2 -30 + 227, 1190, 168 );
setSeVolume( spep_2 -30 + 228, 1190, 151 );
setSeVolume( spep_2 -30 + 229, 1190, 134 );
setSeVolume( spep_2 -30 + 230, 1190, 117 );
setSeVolume( spep_2 -30 + 231, 1190, 100 );
se_1121 = playSe( spep_2 -30 + 256, 1121 );
setSeVolume( spep_2 -30 + 256, 1121, 0 );
setSeVolume( spep_2 -30 + 275, 1121, 20 );
setSeVolume( spep_2 -30 + 276, 1121, 40 );
setSeVolume( spep_2 -30 + 277, 1121, 60 );
setSeVolume( spep_2 -30 + 278, 1121, 80 );
setSeVolume( spep_2 -30 + 279, 1121, 100 );
playSe( spep_2 -30 + 267, 1009 );
se_1182 = playSe( spep_2 -30 + 269, 1182 );
setSeVolume( spep_2 -30 + 269, 1182, 316 );
setSeVolume( spep_2 -30 + 275, 1182, 316 );
setSeVolume( spep_2 -30 + 276, 1182, 244 );
setSeVolume( spep_2 -30 + 277, 1182, 172 );
setSeVolume( spep_2 -30 + 278, 1182, 100 );
se_1183 = playSe( spep_2 -30 + 276, 1183 );

stopSe( spep_2 + 44, se_1182, 0 );
stopSe( spep_2 + 148, se_1121, 0 );
stopSe( spep_2 + 264, se_1183, 0 );
stopSe( spep_2 + 224, se_1117, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 262;


------------------------------------------------------
-- 殴り構え〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 720, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 720, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 720, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 720, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 720, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 720, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 720, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 720, finish_b, 255 );

--集中線
shuchusenx = entryEffectLife( spep_3 ,  906, 84, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 , shuchusenx, 84, 20 );
setEffMoveKey( spep_3 , shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_3 + 84, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_3 , shuchusenx, 1.1, 1.1 );
setEffScaleKey( spep_3 + 84, shuchusenx, 1.1, 1.1 );

setEffRotateKey( spep_3 , shuchusenx, 180 );
setEffRotateKey( spep_3 + 84, shuchusenx, 180 );

setEffAlphaKey( spep_3 , shuchusenx, 0 );
setEffAlphaKey( spep_3 +19, shuchusenx, 0 );
setEffAlphaKey( spep_3 +20, shuchusenx, 255 );
setEffAlphaKey( spep_3 + 84, shuchusenx, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_3  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3-4 +16, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_3-4 +16,  ctgogo,  80,  510);
setEffMoveKey(  spep_3-4 +88,  ctgogo,  80,  510);

setEffAlphaKey( spep_3-4 +16, ctgogo, 0 );
setEffAlphaKey( spep_3-4 + 17, ctgogo, 255 );
setEffAlphaKey( spep_3-4 + 18, ctgogo, 255 );
setEffAlphaKey( spep_3-4 + 82, ctgogo, 255 );
setEffAlphaKey( spep_3-4 + 84, ctgogo, 191 );
setEffAlphaKey( spep_3-4 + 86, ctgogo, 112 );
setEffAlphaKey( spep_3-4 + 88, ctgogo, 64 );

setEffRotateKey(  spep_3-4 +16,  ctgogo,  0);
setEffRotateKey(  spep_3-4 +88,  ctgogo,  0);

setEffScaleKey(  spep_3-4 +16,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3-4 +78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3-4 +88,  ctgogo, -1.07, 1.07 );

--エネミーの動き
setDisp( spep_3-3 + 88, 1, 1);
setDisp( spep_3-1 + 258, 1, 0);
setDisp( spep_3-3 + 400, 1, 1);
setDisp( spep_3-3 + 570, 1, 0);

changeAnime( spep_3-3 + 88, 1, 108);
changeAnime( spep_3-3 + 150, 1, 105);
changeAnime( spep_3-3 + 400, 1, 5);

setAlphaKey( spep_3-3 + 88, 1, 255 );
setAlphaKey( spep_3 + 234, 1, 255 );
setAlphaKey( spep_3 + 235, 1, 140 );
setAlphaKey( spep_3 + 257, 1, 140 );
setAlphaKey( spep_3 + 258, 1, 255 );

setGaussBlurKey(spep_3-3 + 150, 1,  0.005 );
setGaussBlurKey(spep_3 + 214, 1,  0.005 );
setGaussBlurKey(spep_3 + 215, 1,  0 );
setGaussBlurKey(spep_3 + 396, 1,  0 );
setBlendColor(spep_3-3 + 88,1,2,0.1, 0.3, 0.75, 0.6);
setBlendColor(spep_3 + 215, 1, 2, 0, 0, 0, 0);
setBlendColor(spep_3 +223,1,0,0,0.6,1,0.6);
setBlendColor(spep_3 +229,1,1,1,1,1,1);
setBlendColor(spep_3 + 235,1,2,0.1, 0.3, 0.75, 0.6);
setBlendColor(spep_3 + 397,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 397, 1,  0.005 );
setGaussBlurKey(spep_3 + 398, 1,  0.005 );
setBlendColor(spep_3 + 399,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 399, 1,  0 );
setGaussBlurKey(spep_3 + 400, 1,  0 );
setBlendColor(spep_3 + 401,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 401, 1,  0.005 );
setGaussBlurKey(spep_3 + 402, 1,  0.005 );
setBlendColor(spep_3 + 403,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 403, 1,  0 );
setGaussBlurKey(spep_3 + 406, 1,  0 );
setBlendColor(spep_3 + 407,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 407, 1,  0.005 );
setGaussBlurKey(spep_3 + 408, 1,  0.005 );
setBlendColor(spep_3 + 409,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 409, 1,  0 );
setGaussBlurKey(spep_3 + 410, 1,  0 );
setBlendColor(spep_3 + 411,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 411, 1,  0.005 );
setGaussBlurKey(spep_3 + 412, 1,  0.005 );
setBlendColor(spep_3 + 413,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 413, 1,  0 );
setGaussBlurKey(spep_3 + 416, 1,  0 );
setBlendColor(spep_3 + 417,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 417, 1,  0.005 );
setGaussBlurKey(spep_3 + 418, 1,  0.005 );
setBlendColor(spep_3 + 419,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 419, 1,  0 );
setGaussBlurKey(spep_3 + 420, 1,  0 );
setBlendColor(spep_3 + 421,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 421, 1,  0.005 );
setGaussBlurKey(spep_3 + 424, 1,  0.005 );
setBlendColor(spep_3 + 425,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 425, 1,  0 );
setGaussBlurKey(spep_3 + 426, 1,  0 );
setBlendColor(spep_3 + 427,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 427, 1,  0.005 );
setGaussBlurKey(spep_3 + 428, 1,  0.005 );
setBlendColor(spep_3 + 429,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 429, 1,  0 );
setGaussBlurKey(spep_3 + 432, 1,  0 );
setBlendColor(spep_3 + 433,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 433, 1,  0.005 );
setGaussBlurKey(spep_3 + 434, 1,  0.005 );
setBlendColor(spep_3 + 435,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 435, 1,  0 );
setGaussBlurKey(spep_3 + 436, 1,  0 );
setBlendColor(spep_3 + 437,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 437, 1,  0.005 );
setGaussBlurKey(spep_3 + 438, 1,  0.005 );
setBlendColor(spep_3 + 439,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 439, 1,  0 );
setGaussBlurKey(spep_3 + 442, 1,  0 );
setBlendColor(spep_3 + 443,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 443, 1,  0.005 );
setGaussBlurKey(spep_3 + 444, 1,  0.005 );
setBlendColor(spep_3 + 445,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 445, 1,  0 );
setGaussBlurKey(spep_3 + 446, 1,  0 );
setBlendColor(spep_3 + 447,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 447, 1,  0.005 );
setGaussBlurKey(spep_3 + 448, 1,  0.005 );
setBlendColor(spep_3 + 449,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 449, 1,  0 );
setGaussBlurKey(spep_3 + 452, 1,  0 );
setBlendColor(spep_3 + 453,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 453, 1,  0.005 );
setGaussBlurKey(spep_3 + 458, 1,  0.005 );
setBlendColor(spep_3 + 459,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 459, 1,  0 );
setGaussBlurKey(spep_3 + 472, 1,  0 );
setBlendColor(spep_3 + 473,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 473, 1,  0.005 );
setGaussBlurKey(spep_3 + 474, 1,  0.005 );
setBlendColor(spep_3 + 475,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 475, 1,  0 );
setGaussBlurKey(spep_3 + 476, 1,  0 );
setBlendColor(spep_3 + 477,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 477, 1,  0.005 );
setGaussBlurKey(spep_3 + 483, 1,  0.005 );
setBlendColor(spep_3 + 484,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 484, 1,  0 );
setGaussBlurKey(spep_3 + 488, 1,  0 );
setBlendColor(spep_3 + 489,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 489, 1,  0.005 );
setGaussBlurKey(spep_3 + 492, 1,  0.005 );
setBlendColor(spep_3 + 493,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 493, 1,  0 );
setGaussBlurKey(spep_3 + 498, 1,  0 );
setBlendColor(spep_3 + 499,1,5,0.7,0.7,1,0.59);
setGaussBlurKey(spep_3 + 499, 1,  0.005 );
setGaussBlurKey(spep_3 + 501, 1,  0.005 );
setBlendColor(spep_3 + 502,1,5,0,0,0,0);
setGaussBlurKey(spep_3 + 502, 1,  0 );
setGaussBlurKey(spep_3 + 570, 1,  0 );

c=50;
d=300;

setMoveKey( spep_3-3 + 88, 1, 84.5-c, 84.5-d , 0 );
setMoveKey( spep_3-3 + 90, 1, 99.4-c, 69.5-d , 0 );
setMoveKey( spep_3-3 + 92, 1, 84.5-c, 84.5-d , 0 );
setMoveKey( spep_3-3 + 94, 1, 88.7-c, 111.7-d , 0 );
setMoveKey( spep_3-3 + 96, 1, 84.5-c, 84.5-d , 0 );
setMoveKey( spep_3-3 + 98, 1, 91.3-c, 67.7-d , 0 );
setMoveKey( spep_3-3 + 100, 1, 62-c, 37.9-d , 0 );
setMoveKey( spep_3-3 + 102, 1, 64.4-c, 78.9-d , 0 );
setMoveKey( spep_3-3 + 104, 1, 43.6-c, 57.6-d , 0 );
setMoveKey( spep_3-3 + 106, 1, 69-c, 82.3-d , 0 );
setMoveKey( spep_3-3 + 108, 1, 59.5-c, 70-d , 0 );
setMoveKey( spep_3-3 + 110, 1, 54.7-c, 71.6-d , 0 );
setMoveKey( spep_3-3 + 112, 1, 65.8-c, 89.1-d , 0 );
setMoveKey( spep_3-3 + 114, 1, 53.9-c, 49-d , 0 );
setMoveKey( spep_3-3 + 116, 1, 69.5-c, 59.6-d , 0 );
setMoveKey( spep_3-3 + 118, 1, 82.7-c, 58.6-d , 0 );
setMoveKey( spep_3-3 + 120, 1, 61.2-c, 82.9-d , 0 );
setMoveKey( spep_3-3 + 122, 1, 53.5-c, 97.8-d , 0 );
setMoveKey( spep_3-3 + 124, 1, 78-c, 91.8-d , 0 );
setMoveKey( spep_3-3 + 126, 1, 58.6-c, 92.7-d , 0 );
setMoveKey( spep_3-3 + 128, 1, 50.7-c, 75.1-d , 0 );
setMoveKey( spep_3-3 + 130, 1, 68-c, 121.9-d , 0 );
setMoveKey( spep_3-3 + 132, 1, 53-c, 133.9-d , 0 );
setMoveKey( spep_3-3 + 134, 1, 51.8-c, 134.3-d , 0 );
setMoveKey( spep_3-3 + 136, 1, 43.5-c, 146.1-d , 0 );
setMoveKey( spep_3-3 + 138, 1, 44.4-c, 123.3-d , 0 );
setMoveKey( spep_3-3 + 140, 1, 54.5-c, 75.3-d , 0 );
setMoveKey( spep_3-3 + 142, 1, 55.1-c, 98.6-d , 0 );
setMoveKey( spep_3-3 + 144, 1, 53.4-c, 75.7-d , 0 );
setMoveKey( spep_3-3 + 146, 1, 53.9-c, 94.4-d , 0 );
setMoveKey( spep_3-3 + 148, 1, 47.5-c, 76.1-d , 0 );
setMoveKey( spep_3-3 + 149, 1, 47.5-c, 76.1-d , 0 );

setMoveKey( spep_3-3 + 150, 1, 13.5, -80.6 , 0 );
setMoveKey( spep_3-3 + 152, 1, 11.7, -95.6 , 0 );
setMoveKey( spep_3-3 + 154, 1, 10.1, -110.6 , 0 );
setMoveKey( spep_3-3 + 156, 1, 8.3, -125.7 , 0 );
setMoveKey( spep_3-3 + 158, 1, 6.6, -140.7 , 0 );
setMoveKey( spep_3-3 + 160, 1, 9.6, -143.7 , 0 );
setMoveKey( spep_3-3 + 162, 1, 9.5, -139.2 , 0 );
setMoveKey( spep_3-3 + 164, 1, 9.5, -136.3 , 0 );
setMoveKey( spep_3-3 + 166, 1, 15.4, -137.9 , 0 );
setMoveKey( spep_3-3 + 168, 1, 18.2, -134.9 , 0 );
setMoveKey( spep_3-3 + 170, 1, 17.9, -139.6 , 0 );
setMoveKey( spep_3-3 + 172, 1, 16.2, -144 , 0 );
setMoveKey( spep_3-3 + 174, 1, 16, -139.5 , 0 );
setMoveKey( spep_3-3 + 176, 1, 15.7, -139.5 , 0 );
setMoveKey( spep_3-3 + 178, 1, 15.5, -133.6 , 0 );
setMoveKey( spep_3-3 + 180, 1, 21.3, -136.8 , 0 );
setMoveKey( spep_3-3 + 182, 1, 20.9, -145.8 , 0 );
setMoveKey( spep_3-3 + 184, 1, 25, -147.2 , 0 );
setMoveKey( spep_3-3 + 186, 1, 21.5, -138 , 0 );
setMoveKey( spep_3-3 + 188, 1, 16.6, -130.6 , 0 );
setMoveKey( spep_3-3 + 190, 1, 16.3, -130.9 , 0 );
setMoveKey( spep_3-3 + 192, 1, 19.1, -131.2 , 0 );
setMoveKey( spep_3-3 + 194, 1, 11.2, -131.5 , 0 );
setMoveKey( spep_3-3 + 196, 1, 5.1, -131.8 , 0 );
setMoveKey( spep_3-3 + 198, 1, 6.6, -129.1 , 0 );
setMoveKey( spep_3-3 + 200, 1, 2.1, -129.5 , 0 );
setMoveKey( spep_3-3 + 202, 1, 5.3, -137.4 , 0 );
setMoveKey( spep_3-3 + 204, 1, 11.3, -137.5 , 0 );
setMoveKey( spep_3-3 + 206, 1, 11.1, -137.6 , 0 );
setMoveKey( spep_3-3 + 208, 1, 0.5, -139.2 , 0 );
setMoveKey( spep_3-3 + 210, 1, -3.8, -139.3 , 0 );
setMoveKey( spep_3-3 + 212, 1, -3.3, -136.4 , 0 );
setMoveKey( spep_3-3 + 214, 1, -2.9, -132 , 0 );
setMoveKey( spep_3-3 + 216, 1, -2.5, -126.4 , 0 );
setMoveKey( spep_3-3 + 218, 1, -0.5, -84.9 , 0 );
setMoveKey( spep_3-3 + 220, 1, -5.9, -90.1 , 0 );
setMoveKey( spep_3-3 + 222, 1, -10.9, 42.1 , 0 );
setMoveKey( spep_3-3 + 224, 1, 6.6, 26.6 , 0 );
setMoveKey( spep_3-3 + 230, 1, 6.6, 26.6 , 0 );
setMoveKey( spep_3-3 + 232, 1, 3.6, 11.6 , 0 );
setMoveKey( spep_3-3 + 234, 1, 3.9, 2.3 , 0 );
setMoveKey( spep_3-3 + 236, 1, 7, 13.3 , 0 );
setMoveKey( spep_3-3 + 238, 1, 11.5, 7 , 0 );
setMoveKey( spep_3-3 + 240, 1, 17, 15 , 0 );
setMoveKey( spep_3-3 + 242, 1, 15.8, 1.3 , 0 );
setMoveKey( spep_3-3 + 244, 1, 4.2, 4.4 , 0 );
setMoveKey( spep_3-3 + 246, 1, 6.1, 10.6 , 0 );
setMoveKey( spep_3-3 + 248, 1, 9.1, 7.3 , 0 );
setMoveKey( spep_3-3 + 250, 1, 11.6, 2.1 , 0 );
setMoveKey( spep_3-3 + 252, 1, 10.4, 11.2 , 0 );
setMoveKey( spep_3-3 + 254, 1, 10.6, 19.4 , 0 );
setMoveKey( spep_3-3 + 256, 1, 4.1, 30.4 , 0 );
setMoveKey( spep_3-1 + 258, 1, 0.6, 19.1 , 0 );

setMoveKey( spep_3-3 + 400, 1, 56.1, 155 , 0 );
setMoveKey( spep_3-3 + 402, 1, 65.1, 164 , 0 );
setMoveKey( spep_3-3 + 404, 1, 62, 166.9 , 0 );
setMoveKey( spep_3-3 + 406, 1, 62, 166.9 , 0 );
setMoveKey( spep_3-3 + 408, 1, 54.5, 148.8 , 0 );
setMoveKey( spep_3-3 + 410, 1, 66.4, 149 , 0 );
setMoveKey( spep_3-3 + 412, 1, 66.2, 167.2 , 0 );
setMoveKey( spep_3-3 + 414, 1, 66.1, 167 , 0 );
setMoveKey( spep_3-3 + 416, 1, 71.8, 162.2 , 0 );
setMoveKey( spep_3-3 + 418, 1, 68.5, 175.6 , 0 );
setMoveKey( spep_3-3 + 420, 1, 68.2, 175.2 , 0 );
setMoveKey( spep_3-3 + 422, 1, 80, 164.4 , 0 );
setMoveKey( spep_3-3 + 424, 1, 79.4, 158.1 , 0 );
setMoveKey( spep_3-3 + 426, 1, 78.9, 170.2 , 0 );
setMoveKey( spep_3-3 + 428, 1, 63.4, 172.9 , 0 );
setMoveKey( spep_3-3 + 430, 1, 54.2, 157.5 , 0 );
setMoveKey( spep_3-3 + 432, 1, 64.7, 151.5 , 0 );
setMoveKey( spep_3-3 + 434, 1, 73.5, 159.1 , 0 );
setMoveKey( spep_3-3 + 436, 1, 67.1, 148.7 , 0 );
setMoveKey( spep_3-3 + 438, 1, 50.4, 149 , 0 );
setMoveKey( spep_3-3 + 440, 1, 50.5, 162.6 , 0 );
setMoveKey( spep_3-3 + 442, 1, 49.2, 168.5 , 0 );
setMoveKey( spep_3-3 + 444, 1, 62.9, 153.2 , 0 );
setMoveKey( spep_3-3 + 446, 1, 53.8, 163.9 , 0 );
setMoveKey( spep_3-3 + 448, 1, 45, 163.7 , 0 );
setMoveKey( spep_3-3 + 450, 1, 52.9, 154.6 , 0 );
setMoveKey( spep_3-3 + 452, 1, 47, 165.1 , 0 );
setMoveKey( spep_3-3 + 454, 1, 47.4, 164.8 , 0 );
setMoveKey( spep_3-3 + 456, 1, 47.8, 158.6 , 0 );
setMoveKey( spep_3-3 + 458, 1, 49.7, 160 , 0 );
setMoveKey( spep_3-3 + 460, 1, 59, 168.9 , 0 );
setMoveKey( spep_3-3 + 462, 1, 52.9, 156.5 , 0 );
setMoveKey( spep_3-3 + 464, 1, 53.1, 156.5 , 0 );
setMoveKey( spep_3-3 + 466, 1, 62.3, 162.6 , 0 );
setMoveKey( spep_3-3 + 468, 1, 62, 162.3 , 0 );
setMoveKey( spep_3-3 + 470, 1, 61.8, 162.1 , 0 );
setMoveKey( spep_3-3 + 472, 1, 61.5, 161.8 , 0 );
setMoveKey( spep_3-3 + 474, 1, 76.2, 169.1 , 0 );
setMoveKey( spep_3-3 + 476, 1, 75, 168.3 , 0 );
setMoveKey( spep_3-3 + 478, 1, 66.2, 163.1 , 0 );
setMoveKey( spep_3-3 + 480, 1, 73, 162.7 , 0 );
setMoveKey( spep_3-3 + 482, 1, 71.7, 162.3 , 0 );
setMoveKey( spep_3-3 + 484, 1, 61.3, 164.9 , 0 );
setMoveKey( spep_3-3 + 486, 1, 65.4, 161.2 , 0 );
setMoveKey( spep_3-3 + 488, 1, 64.5, 154.8 , 0 );
setMoveKey( spep_3-3 + 490, 1, 51.7, 155.3 , 0 );
setMoveKey( spep_3-3 + 492, 1, 49.4, 155.6 , 0 );
setMoveKey( spep_3-3 + 494, 1, 46.2, 163.5 , 0 );
setMoveKey( spep_3-3 + 496, 1, 55.9, 168.3 , 0 );
setMoveKey( spep_3-3 + 498, 1, 60.7, 171.7 , 0 );
setMoveKey( spep_3-3 + 500, 1, 56.6, 159.6 , 0 );
setMoveKey( spep_3-3 + 502, 1, 50.9, 155.8 , 0 );
setMoveKey( spep_3-3 + 504, 1, 63.2, 157.9 , 0 );
setMoveKey( spep_3-3 + 506, 1, 69.2, 157.9 , 0 );
setMoveKey( spep_3-3 + 508, 1, 63.1, 165.4 , 0 );
setMoveKey( spep_3-3 + 510, 1, 78.1, 165.4 , 0 );
setMoveKey( spep_3-3 + 512, 1, 77.9, 165.2 , 0 );
setMoveKey( spep_3-3 + 514, 1, 80.6, 168.1 , 0 );
setMoveKey( spep_3-3 + 516, 1, 80.3, 168 , 0 );
setMoveKey( spep_3-3 + 518, 1, 80, 167.9 , 0 );
setMoveKey( spep_3-3 + 520, 1, 73.8, 172.2 , 0 );
setMoveKey( spep_3-3 + 522, 1, 67.6, 167.5 , 0 );
setMoveKey( spep_3-3 + 524, 1, 61.5, 161.4 , 0 );
setMoveKey( spep_3-3 + 526, 1, 61.6, 156.9 , 0 );
setMoveKey( spep_3-3 + 528, 1, 69.1, 161.4 , 0 );
setMoveKey( spep_3-3 + 530, 1, 76.5, 170.4 , 0 );
setMoveKey( spep_3-3 + 532, 1, 80.7, 167.1 , 0 );
setMoveKey( spep_3-3 + 534, 1, 50.4, 166.9 , 0 );
setMoveKey( spep_3-3 + 536, 1, 53.7, 169.8 , 0 );
setMoveKey( spep_3-3 + 538, 1, 53.9, 180.1 , 0 );
setMoveKey( spep_3-3 + 540, 1, 54.2, 179.6 , 0 );
setMoveKey( spep_3-3 + 542, 1, 48.4, 179.2 , 0 );
setMoveKey( spep_3-3 + 544, 1, 56.2, 178.7 , 0 );
setMoveKey( spep_3-3 + 546, 1, 56.4, 178.3 , 0 );
setMoveKey( spep_3-3 + 548, 1, 46.1, 173.4 , 0 );
setMoveKey( spep_3-3 + 550, 1, 46.5, 173 , 0 );
setMoveKey( spep_3-3 + 552, 1, 64.9, 171.2 , 0 );
setMoveKey( spep_3-3 + 554, 1, 64.9, 170.9 , 0 );
setMoveKey( spep_3-3 + 556, 1, 64.9, 170.6 , 0 );
setMoveKey( spep_3-3 + 558, 1, 64.8, 170.3 , 0 );
setMoveKey( spep_3-3 + 560, 1, 64.8, 170 , 0 );
setMoveKey( spep_3-3 + 562, 1, 64.8, 169.7 , 0 );
setMoveKey( spep_3-3 + 564, 1, 64.8, 169.4 , 0 );
setMoveKey( spep_3-3 + 566, 1, 49.8, 154.2 , 0 );
setMoveKey( spep_3-3 + 568, 1, 56.2, 158.8 , 0 );
setMoveKey( spep_3-3 + 570, 1, 56.5, 158.9 , 0 );

setScaleKey( spep_3-3 + 88, 1, 15.47, 15.47 );
setScaleKey( spep_3-3 + 92, 1, 15.47, 15.47 );
setScaleKey( spep_3-3 + 94, 1, 16.25, 16.25 );
setScaleKey( spep_3-3 + 96, 1, 15.47, 15.47 );
setScaleKey( spep_3-3 + 98, 1, 16.21, 16.21 );
setScaleKey( spep_3-3 + 100, 1, 14.63, 14.63 );
setScaleKey( spep_3-3 + 102, 1, 14.6, 14.6 );
setScaleKey( spep_3-3 + 104, 1, 14.57, 14.57 );
setScaleKey( spep_3-3 + 106, 1, 14.55, 14.55 );
setScaleKey( spep_3-3 + 108, 1, 14.52, 14.52 );
setScaleKey( spep_3-3 + 110, 1, 14.5, 14.5 );
setScaleKey( spep_3-3 + 112, 1, 14.48, 14.48 );
setScaleKey( spep_3-3 + 114, 1, 14.45, 14.45 );
setScaleKey( spep_3-3 + 116, 1, 14.44, 14.44 );
setScaleKey( spep_3-3 + 118, 1, 14.42, 14.42 );
setScaleKey( spep_3-3 + 120, 1, 14.4, 14.4 );
setScaleKey( spep_3-3 + 122, 1, 14.38, 14.38 );
setScaleKey( spep_3-3 + 124, 1, 14.37, 14.37 );
setScaleKey( spep_3-3 + 126, 1, 14.36, 14.36 );
setScaleKey( spep_3-3 + 128, 1, 14.35, 14.35 );
setScaleKey( spep_3-3 + 130, 1, 14.34, 14.34 );
setScaleKey( spep_3-3 + 132, 1, 14.33, 14.33 );
setScaleKey( spep_3-3 + 134, 1, 14.32, 14.32 );
setScaleKey( spep_3-3 + 136, 1, 14.32, 14.32 );
setScaleKey( spep_3-3 + 138, 1, 14.31, 14.31 );
setScaleKey( spep_3-3 + 148, 1, 14.31, 14.31 );
setScaleKey( spep_3-3 + 149, 1, 14.31, 14.31 );

setScaleKey( spep_3-3 + 150, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 152, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 154, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 156, 1, 0.36, 0.36 );
setScaleKey( spep_3-3 + 158, 1, 0.29, 0.29 );
setScaleKey( spep_3-1 + 258, 1, 0.29, 0.29 );

setScaleKey( spep_3-3 + 400, 1, 0.49, 0.49 );
setScaleKey( spep_3-3 + 446, 1, 0.49, 0.49 );
setScaleKey( spep_3-3 + 448, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 570, 1, 0.5, 0.5 );

setRotateKey( spep_3-3 + 88, 1, -21.6 );
setRotateKey( spep_3-3 + 130, 1, -21.6 );
setRotateKey( spep_3-3 + 132, 1, -21.5 );
setRotateKey( spep_3-3 + 148, 1, -21.5 );
setRotateKey( spep_3-3 + 149, 1, -21.5 );

setRotateKey( spep_3-3 + 150, 1, 0 );
setRotateKey( spep_3-1+ 258, 1, 0 );

setRotateKey( spep_3-3 + 400, 1, 0 );
setRotateKey( spep_3-3 + 570, 1, 0 );

--SE
playSe( spep_3 + 12, 1018 );--ゴゴゴ
se_1117 = playSe( spep_3 + 24, 1117 );
setSeVolume( spep_3 + 24, 1117, 0 );
setSeVolume( spep_3 + 40, 1117, 0 );
setSeVolume( spep_3 + 41, 1117, 16 );
setSeVolume( spep_3 + 42, 1117, 32 );
setSeVolume( spep_3 + 43, 1117, 48 );
setSeVolume( spep_3 + 44, 1117, 64 );
setSeVolume( spep_3 + 45, 1117, 80 );
setSeVolume( spep_3 + 46, 1117, 100 );
playSe( spep_3 + 42, 1004 );
playSe( spep_3 + 49, 1003 );
setSeVolume( spep_3 + 85, 1003, 71 );
playSe( spep_3 + 85, 1003 );
playSe( spep_3 + 85, 1208 );
setSeVolume( spep_3 + 85, 1208, 0 );
setSeVolume( spep_3 + 93, 1208, 0 );
setSeVolume( spep_3 + 94, 1208, 44.5 );
setSeVolume( spep_3 + 95, 1208, 89 );
playSe( spep_3 + 87, 1189 );
playSe( spep_3 + 94, 1190 );
playSe( spep_3 + 94, 1110 );
playSe( spep_3 + 99, 1068 );
playSe( spep_3 + 104, 1054 );
setSeVolume( spep_3 + 104, 1054, 79 );
playSe( spep_3 + 160, 1033 );
playSe( spep_3 + 163, 1025 );
playSe( spep_3 + 207, 1159 );
playSe( spep_3 + 207, 1067 );
playSe( spep_3 + 288, 1003 );
setSeVolume( spep_3 + 288, 1003, 141 );
se_1044 = playSe( spep_3 + 288, 1044 );
playSe( spep_3 + 310, 1043 );
setSeVolume( spep_3 + 310, 1043, 71 );
playSe( spep_3 + 347, 1232 );
setSeVolume( spep_3 + 347, 1232, 141 );
playSe( spep_3 + 348, 1003 );
setSeVolume( spep_3 + 348, 1003, 158 );
playSe( spep_3 + 350, 1192 );
setSeVolume( spep_3 + 350, 1192, 398 );
playSe( spep_3 + 369, 1052 );
playSe( spep_3 + 369, 1027 );
setSeVolume( spep_3 + 369, 1027, 71 );
playSe( spep_3 + 369, 1160 );
se_1216 = playSe( spep_3 + 397, 1216 );
playSe( spep_3 + 440, 1185 );
setSeVolume( spep_3 + 440, 1185, 0 );
setSeVolume( spep_3 + 549, 1185, 0 );
setSeVolume( spep_3 + 550, 1185, 10 );
setSeVolume( spep_3 + 551, 1185, 20 );
setSeVolume( spep_3 + 552, 1185, 30 );
setSeVolume( spep_3 + 553, 1185, 40 );
setSeVolume( spep_3 + 554, 1185, 50 );
setSeVolume( spep_3 + 555, 1185, 60 );
setSeVolume( spep_3 + 556, 1185, 71 );
playSe( spep_3 + 460, 1184 );
setSeVolume( spep_3 + 460, 1184, 0 );
setSeVolume( spep_3 + 477, 1184, 0 );
setSeVolume( spep_3 + 478, 1184, 10 );
setSeVolume( spep_3 + 479, 1184, 20 );
setSeVolume( spep_3 + 480, 1184, 30 );
setSeVolume( spep_3 + 481, 1184, 40 );
setSeVolume( spep_3 + 482, 1184, 50 );
setSeVolume( spep_3 + 483, 1184, 60 );
setSeVolume( spep_3 + 484, 1184, 71 );
se_1217 = playSe( spep_3 + 477, 1217 );
playSe( spep_3 + 477, 1182 );
setSeVolume( spep_3 + 477, 1182, 0 );
setSeVolume( spep_3 + 491, 1182, 0 );
setSeVolume( spep_3 + 492, 1182, 25.36 );
setSeVolume( spep_3 + 493, 1182, 50.71 );
setSeVolume( spep_3 + 494, 1182, 76.07 );
setSeVolume( spep_3 + 495, 1182, 101.43 );
setSeVolume( spep_3 + 496, 1182, 126.79 );
setSeVolume( spep_3 + 497, 1182, 152.14 );
setSeVolume( spep_3 + 498, 1182, 177.50 );
setSeVolume( spep_3 + 499, 1182, 202.86 );
setSeVolume( spep_3 + 500, 1182, 228.21 );
setSeVolume( spep_3 + 501, 1182, 253.57 );
setSeVolume( spep_3 + 502, 1182, 278.93 );
setSeVolume( spep_3 + 503, 1182, 304.29 );
setSeVolume( spep_3 + 504, 1182, 329.64 );
setSeVolume( spep_3 + 505, 1182, 355 );
setSeVolume( spep_3 + 506, 1182, 316 );
setSeVolume( spep_3 + 507, 1182, 277 );
setSeVolume( spep_3 + 508, 1182, 238 );
setSeVolume( spep_3 + 509, 1182, 199 );
setSeVolume( spep_3 + 510, 1182, 160 );
setSeVolume( spep_3 + 511, 1182, 121 );
setSeVolume( spep_3 + 512, 1182, 82 );
setSeVolume( spep_3 + 513, 1182, 43 );
setSeVolume( spep_3 + 514, 1182, 0 );
playSe( spep_3 + 488, 1190 );
setSeVolume( spep_3 + 488, 1190, 0.00 );
setSeVolume( spep_3 + 489, 1190, 0.00 );
setSeVolume( spep_3 + 490, 1190, 10.33 );
setSeVolume( spep_3 + 491, 1190, 20.67 );
setSeVolume( spep_3 + 492, 1190, 31.00 );
setSeVolume( spep_3 + 493, 1190, 41.33 );
setSeVolume( spep_3 + 494, 1190, 51.67 );
setSeVolume( spep_3 + 495, 1190, 62.00 );
setSeVolume( spep_3 + 496, 1190, 72.33 );
setSeVolume( spep_3 + 497, 1190, 82.67 );
setSeVolume( spep_3 + 498, 1190, 93.00 );
setSeVolume( spep_3 + 499, 1190, 103.33 );
setSeVolume( spep_3 + 500, 1190, 113.67 );
setSeVolume( spep_3 + 501, 1190, 124.00 );
setSeVolume( spep_3 + 502, 1190, 134.33 );
setSeVolume( spep_3 + 503, 1190, 144.67 );
setSeVolume( spep_3 + 504, 1190, 155.00 );
setSeVolume( spep_3 + 505, 1190, 165.33 );
setSeVolume( spep_3 + 506, 1190, 175.67 );
setSeVolume( spep_3 + 507, 1190, 186.00 );
setSeVolume( spep_3 + 508, 1190, 139.5 );
setSeVolume( spep_3 + 509, 1190, 93 );
setSeVolume( spep_3 + 510, 1190, 46.5 );
setSeVolume( spep_3 + 511, 1190, 0 );
playSe( spep_3 + 520, 1024 );
playSe( spep_3 + 520, 1067 );
playSe( spep_3 + 592, 1023 );
playSe( spep_3 + 596, 1159 );
playSe( spep_3 + 663, 1044 );
setSeVolume( spep_3 + 663, 1044, 0.00 );
setSeVolume( spep_3 + 664, 1044, 4.24 );
setSeVolume( spep_3 + 665, 1044, 8.48 );
setSeVolume( spep_3 + 666, 1044, 12.71 );
setSeVolume( spep_3 + 667, 1044, 16.95 );
setSeVolume( spep_3 + 668, 1044, 21.19 );
setSeVolume( spep_3 + 669, 1044, 25.43 );
setSeVolume( spep_3 + 670, 1044, 29.67 );
setSeVolume( spep_3 + 671, 1044, 33.90 );
setSeVolume( spep_3 + 672, 1044, 38.14 );
setSeVolume( spep_3 + 673, 1044, 42.38 );
setSeVolume( spep_3 + 674, 1044, 46.62 );
setSeVolume( spep_3 + 675, 1044, 50.86 );
setSeVolume( spep_3 + 676, 1044, 55.10 );
setSeVolume( spep_3 + 677, 1044, 59.33 );
setSeVolume( spep_3 + 678, 1044, 63.57 );
setSeVolume( spep_3 + 679, 1044, 67.81 );
setSeVolume( spep_3 + 680, 1044, 72.05 );
setSeVolume( spep_3 + 681, 1044, 76.29 );
setSeVolume( spep_3 + 682, 1044, 80.52 );
setSeVolume( spep_3 + 683, 1044, 84.76 );
setSeVolume( spep_3 + 684, 1044, 89.00 );
setSeVolume( spep_3 + 685, 1044, 93.24 );
setSeVolume( spep_3 + 686, 1044, 97.48 );
setSeVolume( spep_3 + 687, 1044, 101.71 );
setSeVolume( spep_3 + 688, 1044, 105.95 );
setSeVolume( spep_3 + 689, 1044, 110.19 );
setSeVolume( spep_3 + 690, 1044, 114.43 );
setSeVolume( spep_3 + 691, 1044, 118.67 );
setSeVolume( spep_3 + 692, 1044, 122.90 );
setSeVolume( spep_3 + 693, 1044, 127.14 );
setSeVolume( spep_3 + 694, 1044, 131.38 );
setSeVolume( spep_3 + 695, 1044, 135.62 );
setSeVolume( spep_3 + 696, 1044, 139.86 );
setSeVolume( spep_3 + 697, 1044, 144.10 );
setSeVolume( spep_3 + 698, 1044, 148.33 );
setSeVolume( spep_3 + 699, 1044, 152.57 );
setSeVolume( spep_3 + 700, 1044, 156.81 );
setSeVolume( spep_3 + 701, 1044, 161.05 );
setSeVolume( spep_3 + 702, 1044, 165.29 );
setSeVolume( spep_3 + 703, 1044, 169.52 );
setSeVolume( spep_3 + 704, 1044, 173.76 );
setSeVolume( spep_3 + 705, 1044, 178.00 );

stopSe( spep_3 + 10, se_1121, 15 );
stopSe( spep_3 + 16, se_1182, 0 );
stopSe( spep_3 + 66, se_1183, 0 );
stopSe( spep_3 + 94, se_1117, 0 );
stopSe( spep_3 + 510, se_1044, 0 );
stopSe( spep_3 + 506, se_1216, 6 );
stopSe( spep_3 + 509, se_1217, 8 );


dealDamage( spep_3 + 594 );
endPhase( spep_3 + 712 );

end
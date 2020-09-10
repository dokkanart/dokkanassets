--4020470:超ベジット_必殺カウンター
--sp_effect_b1_00121


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
SP_01=	155859	;--	瞬間移動～横蹴り
SP_02=	155860	;--	前方突進～回転蹴り
SP_03=	155861	;--	黒バックにヒットエフェクト
SP_04 = 155520;  --敵が画面衝突


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;


setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 瞬間移動～横蹴り(62F)
------------------------------------------------------
--次の準備
spep_0=28;

--エフェクトの再生
move_k=entryEffect(spep_0,SP_01,0x100,-1,0,0,0);

setEffMoveKey(spep_0,move_k,0,0,0);
setEffMoveKey(spep_0+62,move_k,0,0,0);
setEffScaleKey(spep_0,move_k,1.0,1.0);
setEffScaleKey(spep_0+62,move_k,1.0,1.0);
setEffAlphaKey(spep_0,move_k,255);
setEffAlphaKey(spep_0+62,move_k,255);
setEffRotateKey(spep_0,move_k,0);
setEffRotateKey(spep_0+62,move_k,0);

--敵キャラクター
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 64, 1, 0 );
changeAnime( spep_0 + 0, 1, 101 );
changeAnime( spep_0 -3 + 32, 1, 108 );

setMoveKey( spep_0 + 0, 1, 42.1, 7.9 , 0 );
setMoveKey( spep_0 -3 + 31, 1, 42.1, 7.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 88.2, 1.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 98.3, 12.6 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 86.5, 7.1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 100.5, 12.8 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 197.5, 14.4 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 308.3, 21 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 397.1, 11.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 511.8, 13.7 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 608.9, 15.3 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 719.6, 21.8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 705.7, 12.6 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 717.5, 14.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 711.7, 15.5 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 719.6, 21.8 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 705.7, 12.6 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 717.5, 14.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 711.7, 15.5 , 0 );

a=0.1;
b=0.4;
setScaleKey( spep_0 + 0, 1, 1.49+a, 1.49+a );
setScaleKey( spep_0 -3 + 31, 1, 1.49+a, 1.49+a );

setScaleKey( spep_0 -3 + 32, 1, 1.31+b, 1.43+b );
setScaleKey( spep_0 -3 + 34, 1, 1.31+b, 1.42+b );
setScaleKey( spep_0 -3 + 36, 1, 1.31+b, 1.42+b );
setScaleKey( spep_0 -3 + 38, 1, 1.31+b, 1.41+b );
setScaleKey( spep_0 -3 + 40, 1, 1.31+b, 1.4+b );
setScaleKey( spep_0 -3 + 42, 1, 1.31+b, 1.4+b );
setScaleKey( spep_0 -3 + 44, 1, 1.31+b, 1.39+b );
setScaleKey( spep_0 -3 + 46, 1, 1.31+b, 1.39+b );
setScaleKey( spep_0 -3 + 48, 1, 1.31+b, 1.38+b );
setScaleKey( spep_0 -3 + 64, 1, 1.31+b, 1.38+b );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 -3 + 31, 1, 0 );
setRotateKey( spep_0 -3 + 32, 1, -14 );
setRotateKey( spep_0 -3 + 34, 1, 0 );
setRotateKey( spep_0 -3 + 64, 1, 0 );

--SE
--瞬間移動
SE000 = playSe( spep_0 + 5, 1109 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = 44; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);

    stopSe( SP_dodge - 12, SE000, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    
        if (_IS_PLAYER_SIDE_ == 1) then
    
            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    
        else
    
            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
    
        end
    
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    setMoveKey(  SP_dodge+5, 0, -750,  70,   -30);-- 中央位置から
    setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
    --setDisp( SP_dodge+5, 0, 0);
    
    endPhase(SP_dodge+10);
    do return end
    else end

--蹴り1
playSe( spep_0 + 30, 1010 );
--蹴り2
playSe( spep_0 + 30, 1110 );

--次の準備
spep_1=spep_0+62;

------------------------------------------------------
-- 前方突進～回転蹴り(146F)
------------------------------------------------------
--エフェクトの再生
roll_k=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);

setEffMoveKey(spep_1,roll_k,0,0,0);
setEffMoveKey(spep_1+146,roll_k,0,0,0);
setEffScaleKey(spep_1,roll_k,1.0,1.0);
setEffScaleKey(spep_1+146,roll_k,1.0,1.0);
setEffAlphaKey(spep_1,roll_k,255);
setEffAlphaKey(spep_1+146,roll_k,255);
setEffRotateKey(spep_1,roll_k,0);
setEffRotateKey(spep_1+146,roll_k,0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 100,  906, 46, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 100, shuchusen1, 46, 25 );

setEffMoveKey( spep_1 + 100, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 100, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 146, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 100, shuchusen1, 0 );
setEffRotateKey( spep_1 + 146, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 100, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 146, shuchusen1, 255 );

--SE
--前方ダッシュ1
SE01 = playSe( spep_1 + 4, 9 );
--前方ダッシュ2
SE02 =playSe( spep_1 + 4, 1182 );
--前方ダッシュ3
SE03 =playSe( spep_1 + 4, 1167 );
setSeVolume( spep_1 + 4, 1167, 28 );

--くるりん1
SE04 =playSe( spep_1 + 42, 1116 );
setSeVolume( spep_1 + 68, 1116, 100 );
stopSe( spep_1 + 68, SE04, 19 );

--くるりん2
SE05 = playSe( spep_1 + 42, 1117 );
setSeVolume( spep_1 + 59, 1117, 100 );
stopSe( spep_1 + 59, SE05, 23 );

--くるりん3
SE06 = playSe( spep_1 + 42, 1019 );
setSeVolume( spep_1 + 42, 1019, 32 );
stopSe( spep_1 + 146 + 16, SE06, 0 );

--くるりん4
SE07 = playSe( spep_1 + 46, 1183 );
setSeVolume( spep_1 + 46, 1183, 68 );
stopSe( spep_1 + 114, SE07, 38 );

--くるりん5
playSe( spep_1 + 48, 1003 );
--くるりん6
playSe( spep_1 + 74, 1072 );

--くるりん7
SE08 = playSe( spep_1 + 88, 1182 );
setSeVolume( spep_1 + 88, 1182, 0 );
setSeVolume( spep_1 + 103, 1182, 126 );

--くるりん8
playSe( spep_1 + 94, 1004 );

--ラスト蹴り1
playSe( spep_1 + 144, 1001 );
setSeVolume( spep_1 + 144, 1001, 63 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+146;

------------------------------------------------------
-- 黒バックにヒットエフェクト(18F)
------------------------------------------------------
--エフェクトの再生
hit=entryEffect(spep_2,SP_03,0x100,-1,0,0,0);

setEffMoveKey(spep_2,hit,0,0,0);
setEffMoveKey(spep_2+18,hit,0,0,0);
setEffScaleKey(spep_2,hit,1.0,1.0);
setEffScaleKey(spep_2+18,hit,1.0,1.0);
setEffAlphaKey(spep_2,hit,255);
setEffAlphaKey(spep_2+18,hit,255);
setEffRotateKey(spep_2,hit,0);
setEffRotateKey(spep_2+18,hit,0);

--SE
--ラスト蹴り2
playSe( spep_2 + 0, 1187 );
setSeVolume( spep_2 + 0, 1187, 89 );

--次の準備
spep_3=spep_2+18;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
if (_IS_DEAD_ == 1) then

    setDisp( spep_2+16 , 1, 1);
    endPhase(spep_2+18);
    
    else

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

-- ** 敵キャラクター ** --
--敵キャラクター
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 音 ** --

--ガッ
playSe( spep_3 + 8, 1054 );
setSeVolume( spep_3 + 8, 1054, 126 );

-- ** 背景 ** --
--entryFadeBg( spep_3 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 98 );

end

    




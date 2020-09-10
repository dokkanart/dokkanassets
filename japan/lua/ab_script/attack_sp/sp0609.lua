--1018950_ベジータ(幼年期)&ラディッツ(幼年期)_サイヤ人の侵略
--sp_effect_a9_00062

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
SP_01=	154747	;--	カットイン
SP_02=	154748	;--	正面に突進
SP_03=	154750	;--	格闘　手前
SP_04=	154752	;--	格闘　奥
SP_05=	154754	;--	格闘　背景
SP_06=	154755	;--	頭突き
SP_07=	154757	;--	頭突き　背景
SP_08=	154758	;--	敵を見上げる～ビーム発射
SP_09=	154760	;--	敵に迫る
SP_10=	154761	;--	敵に迫る　背景
SP_11=	154762	;--	フィニッシュ　背景

--敵側
SP_01x=	154747	;--	カットイン	
SP_02x=	154749	;--	正面に突進	(敵)
SP_03x=	154751	;--	格闘　手前	(敵)
SP_04x=	154753	;--	格闘　奥	(敵)
SP_05x=	154754	;--	格闘　背景	
SP_06x=	154756	;--	頭突き	(敵)
SP_07x=	154757	;--	頭突き　背景	
SP_08x=	154759	;--	敵を見上げる～ビーム発射	(敵)
SP_09x=	154760	;--	敵に迫る	
SP_10x=	154761	;--	敵に迫る　背景	
SP_11x=	154762	;--	フィニッシュ　背景	
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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--カットイン
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cut = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, cut, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, cut, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, cut, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cut, 0 );
setEffRotateKey( spep_0 + 100, cut, 0 );
setEffAlphaKey( spep_0 + 0, cut, 255 );
setEffAlphaKey( spep_0 + 100, cut, 255 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 12,  190006, 68, 0x100, -1, 0, 120.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 12, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 12, ctgogo, 120.9, 515.5 , 0 );
setEffMoveKey( spep_x + 80, ctgogo, 120.9, 515.5 , 0 );

setEffScaleKey( spep_x + 12, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 72, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 74, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 76, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 78, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 80, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 12, ctgogo, 0 );
setEffRotateKey( spep_x + 80, ctgogo, 0 );

setEffAlphaKey( spep_x + 12, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 255 );

--SE
playSe( spep_x + 12, 1018 );  --ごごご
playSe( spep_0 + 0, 8 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
--playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
--playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
--playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
--正面に突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, tossin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36, tossin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tossin, 0 );
setEffRotateKey( spep_2 + 36, tossin, 0 );
setEffAlphaKey( spep_2 + 0, tossin, 255 );
setEffAlphaKey( spep_2 + 36, tossin, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 36, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen1, 36, 25 );
setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_2 + 36, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_2 + 0, shuchusen1, 180 );
setEffRotateKey( spep_2 + 36, shuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 36, shuchusen1, 255 );

--SE
SE0=playSe( spep_2 + 2, 44 );
SE1=playSe( spep_2 + 2, 1109 );

setSeVolume( spep_2 + 2, 1109, 71 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );    
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 次の準備 ** --
spep_3 = spep_2 + 36;

------------------------------------------------------
--格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 120, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 120, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 120, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 120, fighting_b, 255 );

-- ** エフェクト等 ** --
ryusen1 = entryEffectLife( spep_3 + 0,  914, 118, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 4.3, 1.12 );
setEffScaleKey( spep_3 + 118, ryusen1, 4.3, 1.12 );

setEffRotateKey( spep_3 + 0, ryusen1, 0 );
setEffRotateKey( spep_3 + 118, ryusen1, 0 );

setEffAlphaKey( spep_3 + 0, ryusen1, 36 );
setEffAlphaKey( spep_3 + 2, ryusen1, 91 );
setEffAlphaKey( spep_3 + 4, ryusen1, 145 );
setEffAlphaKey( spep_3 + 6, ryusen1, 200 );
setEffAlphaKey( spep_3 + 8, ryusen1, 255 );
setEffAlphaKey( spep_3 + 118, ryusen1, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting_n, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fighting_n, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_n, 0 );
setEffRotateKey( spep_3 + 120, fighting_n, 0 );
setEffAlphaKey( spep_3 + 0, fighting_n, 255 );
setEffAlphaKey( spep_3 + 120, fighting_n, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 118, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3-3 + 26, 1, 104 );
changeAnime( spep_3-3 + 52, 1, 108 );
changeAnime( spep_3-3 + 66, 1, 106 );
changeAnime( spep_3-3 + 88, 1, 108 );

setMoveKey( spep_3 + 0, 1, 603.9, -12.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 551.7, -12.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 499.4, -12.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 447.1, -12.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 394.8, -12.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 342.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 290.3, -12.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 263.4, -12.1 , 0 );
setMoveKey( spep_3-3 + 16, 1, 236.5, -12.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 209.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 182.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 155.7, -12.1 , 0 );
setMoveKey( spep_3-3 + 25, 1, 128.8, -12.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 88.1, -6 , 0 );
setMoveKey( spep_3-3 + 28, 1, 109.5, 13.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 68, -3.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 93.2, 33.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 94.9, -1.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, 96.6, -0.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 98.3, 0.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 98.3, 0.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 112.5, 4.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 90, 16.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 114.5, -5.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 108.6, -3.2 , 0 );
setMoveKey( spep_3-3 + 51, 1, 112, -4.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 75.6, 9.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 84.9, 29.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 61.3, 11.7 , 0 );
setMoveKey( spep_3-3 + 58, 1, 94, 3.5 , 0 );
setMoveKey( spep_3-3 + 60, 1, 84.9, 23.5 , 0 );
setMoveKey( spep_3-3 + 62, 1, 87.1, 27.1 , 0 );
setMoveKey( spep_3-3 + 65, 1, 89.3, 30.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 48.4, 40.8 , 0 );
setMoveKey( spep_3-3 + 68, 1, 34.4, 47.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 81.9, 65.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 57.8, 36.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 91.7, 55.6 , 0 );
setMoveKey( spep_3-3 + 76, 1, 89.2, 46.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, 103.9, 51.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 111.3, 48.6 , 0 );
setMoveKey( spep_3-3 + 82, 1, 121.1, 50.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 131, 51.3 , 0 );
setMoveKey( spep_3-3 + 87, 1, 140.8, 51.6 , 0 );
setMoveKey( spep_3-3 + 88, 1, 104.9, 24.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, 146.3, 55.8 , 0 );
setMoveKey( spep_3-3 + 92, 1, 117.6, 34.6 , 0 );
setMoveKey( spep_3-3 + 94, 1, 135.3, 34.3 , 0 );
setMoveKey( spep_3-3 + 96, 1, 143, 37 , 0 );
setMoveKey( spep_3-3 + 98, 1, 115.8, 16.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 125.4, 54.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 253, 51.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 334.2, 52.5 , 0 );
setMoveKey( spep_3-3 + 106, 1, 408.1, 57.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 482, 62.1 , 0 );
setMoveKey( spep_3-3 + 110, 1, 605.2, 70.4 , 0 );
setMoveKey( spep_3-3 + 112, 1, 728.3, 78.8 , 0 );
setMoveKey( spep_3-3 + 114, 1, 851.5, 87.1 , 0 );
setMoveKey( spep_3-3 + 116, 1, 974.7, 95.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 1097.9, 103.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 118, 1, 1.17, 1.17 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 65, 1, 0 );
setRotateKey( spep_3-3 + 66, 1, -46 );
setRotateKey( spep_3-3 + 68, 1, -42.8 );
setRotateKey( spep_3-3 + 70, 1, -39.5 );
setRotateKey( spep_3-3 + 72, 1, -39.1 );
setRotateKey( spep_3-3 + 74, 1, -38.7 );
setRotateKey( spep_3-3 + 76, 1, -38.3 );
setRotateKey( spep_3-3 + 78, 1, -37.9 );
setRotateKey( spep_3-3 + 80, 1, -37.5 );
setRotateKey( spep_3-3 + 82, 1, -37.1 );
setRotateKey( spep_3-3 + 84, 1, -36.7 );
setRotateKey( spep_3-3 + 87, 1, -36.3 );
setRotateKey( spep_3-3 + 88, 1, 0 );
setRotateKey( spep_3-3 + 90, 1, -2 );
setRotateKey( spep_3-3 + 92, 1, -4.1 );
setRotateKey( spep_3-3 + 94, 1, -6.1 );
setRotateKey( spep_3-3 + 96, 1, -8.2 );
setRotateKey( spep_3-3 + 98, 1, -10.2 );
setRotateKey( spep_3-3 + 100, 1, -10.6 );
setRotateKey( spep_3-3 + 102, 1, -11 );
setRotateKey( spep_3-3 + 104, 1, -11.4 );
setRotateKey( spep_3-3 + 106, 1, -11.8 );
setRotateKey( spep_3-3 + 108, 1, -12.1 );
setRotateKey( spep_3-3 + 110, 1, -12.5 );
setRotateKey( spep_3-3 + 112, 1, -12.9 );
setRotateKey( spep_3-3 + 114, 1, -13.3 );
setRotateKey( spep_3-3 + 116, 1, -13.7 );
setRotateKey( spep_3-3 + 118, 1, -14.1 );

--文字エントリー
ctdogaga = entryEffectLife( spep_3-3 + 26,  10017, 52, 0x100, -1, 0, -95.1, 195.5 );
setEffShake( spep_3-3 + 26, ctdogaga, 52, 25 );
setEffMoveKey( spep_3-3 + 26, ctdogaga, -95.1, 195.5 , 0 );
setEffMoveKey( spep_3-3 + 28, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 30, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 32, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 34, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 78, ctdogaga, -95.7, 201 , 0 );

setEffScaleKey( spep_3-3 + 26, ctdogaga, 1.44, 1.44 );
setEffScaleKey( spep_3-3 + 28, ctdogaga, 2.06, 2.06 );
setEffScaleKey( spep_3-3 + 78, ctdogaga, 2.06, 2.06 );

setEffAlphaKey( spep_3-3 + 26, ctdogaga, 128 );
setEffAlphaKey( spep_3-3 + 28, ctdogaga, 255 );
setEffAlphaKey( spep_3-3 + 74, ctdogaga, 255 );
setEffAlphaKey( spep_3-3 + 76, ctdogaga, 223 );
setEffAlphaKey( spep_3-3 + 78, ctdogaga, 191 );

setEffRotateKey( spep_3-3 + 26, ctdogaga, 0 );
setEffRotateKey( spep_3-3 + 78, ctdogaga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 88,  10020, 16, 0x100, -1, 0, 71, 281.8 );

setEffMoveKey( spep_3-3 + 88, ctbaki, 71, 281.8 , 0 );
setEffMoveKey( spep_3-3 + 90, ctbaki, 80.3, 295.3 , 0 );
setEffMoveKey( spep_3-3 + 92, ctbaki, 76.3, 306 , 0 );
setEffMoveKey( spep_3-3 + 94, ctbaki, 83.1, 299.4 , 0 );
setEffMoveKey( spep_3-3 + 96, ctbaki, 74.6, 304.8 , 0 );
setEffMoveKey( spep_3-3 + 98, ctbaki, 81.6, 311 , 0 );
setEffMoveKey( spep_3-3 + 100, ctbaki, 78.6, 304.8 , 0 );
setEffMoveKey( spep_3-3 + 102, ctbaki, 79.9, 318 , 0 );
setEffMoveKey( spep_3-3 + 104, ctbaki, 80.3, 320.5 , 0 );

setEffScaleKey( spep_3-3 + 88, ctbaki, 1.14, 1.14 );
setEffScaleKey( spep_3-3 + 90, ctbaki, 1.53, 1.53 );
setEffScaleKey( spep_3-3 + 104, ctbaki, 1.53, 1.53 );

setEffRotateKey( spep_3-3 + 88, ctbaki, 21.5 );
setEffRotateKey( spep_3-3 + 104, ctbaki, 21.5 );

setEffAlphaKey( spep_3-3 + 88, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 90, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 100, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 102, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 104, ctbaki, 0 );

--SE
playSe( spep_3 + 26, 1189 );
playSe( spep_3 + 31, 1009 );
playSe( spep_3 + 46, 1006 );
playSe( spep_3 + 57, 1000 );
playSe( spep_3 + 69, 1009 );
playSe( spep_3 + 86, 1003 );
playSe( spep_3 + 91, 1009 );
playSe( spep_3 + 91, 1001 );
setSeVolume( spep_3 + 91, 1001, 63 );
playSe( spep_3 + 107, 1232 );

--白フェード
entryFade( spep_3 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;

------------------------------------------------------
--頭突き
------------------------------------------------------
-- ** エフェクト等 ** --
zutuki_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, zutuki_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, zutuki_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, zutuki_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, zutuki_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, zutuki_f, 0 );
setEffRotateKey( spep_4 + 96, zutuki_f, 0 );
setEffAlphaKey( spep_4 + 0, zutuki_f, 255 );
setEffAlphaKey( spep_4 + 96, zutuki_f, 255 );

-- ** エフェクト等 ** --
zutuki_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, zutuki_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, zutuki_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, zutuki_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, zutuki_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, zutuki_b, 0 );
setEffRotateKey( spep_4 + 96, zutuki_b, 0 );
setEffAlphaKey( spep_4 + 0, zutuki_b, 255 );
setEffAlphaKey( spep_4 + 96, zutuki_b, 255 );

--敵の動き
setDisp( spep_4+ 0, 1, 1 );
setDisp( spep_4-3+ 94, 1, 0 );

changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4-3 + 58, 1, 107 );

setMoveKey( spep_4 + 0, 1, 1318.9, -507.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 1282.7, -489.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, 1246.4, -471.5 , 0 );
setMoveKey( spep_4-3 + 6, 1, 1210.2, -453.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, 1174, -435.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 1137.8, -417.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 1101.6, -399.6 , 0 );
setMoveKey( spep_4-3 + 14, 1, 1065.4, -381.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, 1029.2, -363.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 993, -345.7 , 0 );
setMoveKey( spep_4-3 + 20, 1, 956.8, -327.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 920.6, -309.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 884.4, -291.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 848.1, -273.8 , 0 );
setMoveKey( spep_4-3 + 28, 1, 811.9, -255.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 775.7, -237.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 739.5, -219.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 703.3, -201.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 667.1, -183.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 630.9, -165.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 594.7, -147.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 539.8, -128.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 484.9, -109.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 430.1, -90.9 , 0 );
setMoveKey( spep_4-3 + 48, 1, 375.2, -71.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 320.3, -52.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, 265.4, -33.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 210.6, -14.8 , 0 );
setMoveKey( spep_4-3 + 57, 1, 167.9, -11.5 , 0 );
setMoveKey( spep_4-3 + 58, 1, 59.8, -66.4 , 0 );
setMoveKey( spep_4-3 + 60, 1, 47.3, -74.5 , 0 );
setMoveKey( spep_4-3 + 62, 1, 96.6, -106.3 , 0 );
setMoveKey( spep_4-3 + 64, 1, 99.5, -149 , 0 );
setMoveKey( spep_4-3 + 66, 1, 173.5, -194.6 , 0 );
setMoveKey( spep_4-3 + 68, 1, 324.3, -473.5 , 0 );
setMoveKey( spep_4-3 + 70, 1, 504.9, -712.9 , 0 );
setMoveKey( spep_4-3 + 72, 1, 624.5, -785.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, 744, -857.7 , 0 );
setMoveKey( spep_4-3 + 76, 1, 863.5, -930.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 983.1, -1002.6 , 0 );
setMoveKey( spep_4-3 + 80, 1, 1102.6, -1075 , 0 );
setMoveKey( spep_4-3 + 82, 1, 1222.2, -1147.4 , 0 );
setMoveKey( spep_4-3 + 84, 1, 1250.4, -1159.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 1278.7, -1171.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 1307, -1184.2 , 0 );
setMoveKey( spep_4-3 + 90, 1, 1335.3, -1196.5 , 0 );
setMoveKey( spep_4-3 + 92, 1, 1363.6, -1208.8 , 0 );
setMoveKey( spep_4-3 + 94, 1, 1391.8, -1221.1 , 0 );

setScaleKey( spep_4 + 0, 1, 3.29, 3.29 );
--setScaleKey( spep_4-3 + 2, 1, 3.27, 3.27 );
setScaleKey( spep_4-3 + 4, 1, 3.25, 3.25 );
setScaleKey( spep_4-3 + 6, 1, 3.23, 3.23 );
setScaleKey( spep_4-3 + 8, 1, 3.21, 3.21 );
setScaleKey( spep_4-3 + 10, 1, 3.19, 3.19 );
setScaleKey( spep_4-3 + 12, 1, 3.18, 3.18 );
setScaleKey( spep_4-3 + 14, 1, 3.16, 3.16 );
setScaleKey( spep_4-3 + 16, 1, 3.14, 3.14 );
setScaleKey( spep_4-3 + 18, 1, 3.12, 3.12 );
setScaleKey( spep_4-3 + 20, 1, 3.1, 3.1 );
setScaleKey( spep_4-3 + 22, 1, 3.08, 3.08 );
setScaleKey( spep_4-3 + 24, 1, 3.06, 3.06 );
setScaleKey( spep_4-3 + 26, 1, 3.04, 3.04 );
setScaleKey( spep_4-3 + 28, 1, 3.03, 3.03 );
setScaleKey( spep_4-3 + 30, 1, 3.01, 3.01 );
setScaleKey( spep_4-3 + 32, 1, 2.99, 2.99 );
setScaleKey( spep_4-3 + 34, 1, 2.97, 2.97 );
setScaleKey( spep_4-3 + 36, 1, 2.95, 2.95 );
setScaleKey( spep_4-3 + 38, 1, 2.93, 2.93 );
setScaleKey( spep_4-3 + 40, 1, 2.91, 2.91 );
setScaleKey( spep_4-3 + 42, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 44, 1, 2.67, 2.67 );
setScaleKey( spep_4-3 + 46, 1, 2.54, 2.54 );
setScaleKey( spep_4-3 + 48, 1, 2.42, 2.42 );
setScaleKey( spep_4-3 + 50, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 52, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 54, 1, 2.05, 2.05 );
setScaleKey( spep_4-3 + 57, 1, 2.01, 2.01 );

a=0.1;
setScaleKey( spep_4-3 + 58, 1, 0.84+a, 0.84+a );
setScaleKey( spep_4-3 + 60, 1, 0.8+a, 0.8+a );
setScaleKey( spep_4-3 + 62, 1, 1+a, 1+a );
setScaleKey( spep_4-3 + 64, 1, 1.13+a, 1.13+a );
setScaleKey( spep_4-3 + 66, 1, 1.25+a, 1.25+a );
setScaleKey( spep_4-3 + 68, 1, 1.38+a, 1.38+a );
setScaleKey( spep_4-3 + 70, 1, 1.44+a, 1.44+a );
setScaleKey( spep_4-3 + 72, 1, 1.5+a, 1.5+a );
setScaleKey( spep_4-3 + 74, 1, 1.55+a, 1.55+a );
setScaleKey( spep_4-3 + 76, 1, 1.61+a, 1.61+a );
setScaleKey( spep_4-3 + 78, 1, 1.67+a, 1.67+a );
setScaleKey( spep_4-3 + 80, 1, 1.73+a, 1.73+a );
setScaleKey( spep_4-3 + 82, 1, 1.79+a, 1.79+a );
setScaleKey( spep_4-3 + 84, 1, 1.78+a, 1.78+a );
setScaleKey( spep_4-3 + 88, 1, 1.78+a, 1.78+a );
setScaleKey( spep_4-3 + 90, 1, 1.77+a, 1.77+a );
setScaleKey( spep_4-3 + 94, 1, 1.77+a, 1.77+a );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 57, 1, 0 );
setRotateKey( spep_4-3 + 58, 1, -21 );
setRotateKey( spep_4-3 + 94, 1, -21 );

--文字エントリー
ctdon = entryEffectLife( spep_4-3 + 58,  10019, 24, 0x100, -1, 0, 117.7, 340.7 );
setEffShake( spep_4-3 + 58, ctdon, 58, 25 );
setEffMoveKey( spep_4-3 + 58, ctdon, 117.7, 340.7 , 0 );
setEffMoveKey( spep_4-3 + 60, ctdon, 136.1, 349.8 , 0 );
setEffMoveKey( spep_4-3 + 62, ctdon, 131.8, 362.4 , 0 );
setEffMoveKey( spep_4-3 + 64, ctdon, 139.1, 348.6 , 0 );
setEffMoveKey( spep_4-3 + 66, ctdon, 127.4, 354.6 , 0 );
setEffMoveKey( spep_4-3 + 68, ctdon, 137.6, 358.9 , 0 );
setEffMoveKey( spep_4-3 + 70, ctdon, 131.2, 347.3 , 0 );
setEffMoveKey( spep_4-3 + 72, ctdon, 134.8, 362.8 , 0 );
setEffMoveKey( spep_4-3 + 74, ctdon, 134.8, 351.4 , 0 );
setEffMoveKey( spep_4-3 + 76, ctdon, 130.4, 359.1 , 0 );
setEffMoveKey( spep_4-3 + 78, ctdon, 131.9, 351.7 , 0 );
setEffMoveKey( spep_4-3 + 80, ctdon, 136.4, 358.8 , 0 );
setEffMoveKey( spep_4-3 + 82, ctdon, 136.5, 359.1 , 0 );

setEffScaleKey( spep_4-3 + 58, ctdon, 1.38, 1.38 );
setEffScaleKey( spep_4-3 + 60, ctdon, 2.15, 2.15 );
setEffScaleKey( spep_4-3 + 62, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_4-3 + 64, ctdon, 2.18, 2.18 );
setEffScaleKey( spep_4-3 + 66, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_4-3 + 68, ctdon, 2.21, 2.21 );
setEffScaleKey( spep_4-3 + 70, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_4-3 + 72, ctdon, 2.24, 2.24 );
setEffScaleKey( spep_4-3 + 74, ctdon, 2.26, 2.26 );
setEffScaleKey( spep_4-3 + 76, ctdon, 2.27, 2.27 );
setEffScaleKey( spep_4-3 + 78, ctdon, 2.29, 2.29 );
setEffScaleKey( spep_4-3 + 80, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_4-3 + 82, ctdon, 2.32, 2.32 );

setEffRotateKey( spep_4-3 + 58, ctdon, 29.8 );
setEffRotateKey( spep_4-3 + 82, ctdon, 29.8 );

setEffAlphaKey( spep_4-3 + 58, ctdon, 128 );
setEffAlphaKey( spep_4-3 + 60, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 78, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 80, ctdon, 128 );
setEffAlphaKey( spep_4-3 + 82, ctdon, 0 );

--SE
playSe( spep_4 + 6, 1035 );
setSeVolume( spep_4 + 6, 1035, 79 );
se_0009 = playSe( spep_4 + 35, 9 );
se_1183 = playSe( spep_4 + 35, 1183 );
setSeVolume( spep_4 + 35, 1183, 158 );
playSe( spep_4 + 66, 1110 );
playSe( spep_4 + 66, 1010 );
playSe( spep_4 + 79, 1072 );

stopSe( spep_4 + 70, se_0009, 0 );
stopSe( spep_4 + 70, se_1183, 0 );

--白フェード
entryFade( spep_4 + 88, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;

------------------------------------------------------
--敵を見上げる～ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
watch = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, watch, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, watch, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, watch, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, watch, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, watch, 0 );
setEffRotateKey( spep_5 + 136, watch, 0 );
setEffAlphaKey( spep_5 + 0, watch, 255 );
setEffAlphaKey( spep_5 + 136, watch, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_5-3 + 44,  906, 42, 0x100, -1, 0, 132.3, -28.1 );
setEffShake( spep_5-3 + 44, shuchusen2, 42, 25 );
setEffMoveKey( spep_5-3 + 44, shuchusen2, 132.3, -28.1 , 0 );
setEffMoveKey( spep_5-3 + 86, shuchusen2, 132.3, -28.1 , 0 );

setEffScaleKey( spep_5-3 + 44, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_5-3 + 86, shuchusen2, 1.24, 1.24 );

setEffRotateKey( spep_5-3 + 44, shuchusen2, 0 );
setEffRotateKey( spep_5-3 + 86, shuchusen2, 0 );

setEffAlphaKey( spep_5-3 + 44, shuchusen2, 128 );
setEffAlphaKey( spep_5-3 + 46, shuchusen2, 255 );
setEffAlphaKey( spep_5-3 + 85, shuchusen2, 255 );
setEffAlphaKey( spep_5-3 + 86, shuchusen2, 0 );

--SE
se_1037 = playSe( spep_5 + 52, 1037 );
setSeVolume( spep_5 + 52, 1037, 0 );
setSeVolume( spep_5 + 52, 1037, 63 );
se_0049 = playSe( spep_5 + 53, 49 );
setSeVolume( spep_5 + 53, 49, 112 );
playSe( spep_5 + 86, 1027 );
setSeVolume( spep_5 + 86, 1027, 56 );
se_1177 = playSe( spep_5 + 86, 1177 );
setSeVolume( spep_5 + 86, 1177, 79 );

stopSe( spep_5 + 90, se_1037, 0 );
stopSe( spep_5 + 87, se_0049, 0 );

--白フェード
entryFade( spep_5 + 128, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 136;

------------------------------------------------------
--敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 44, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 44, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 44, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 44, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 44, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 44, hit_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 42, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -258.5, -16.9 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -227.7, -7.5 , 0 );
setMoveKey( spep_6-3 + 4, 1, -196.8, 1.9 , 0 );
setMoveKey( spep_6-3 + 6, 1, -166, 11.4 , 0 );
setMoveKey( spep_6-3 + 8, 1, -135.2, 20.8 , 0 );
setMoveKey( spep_6-3 + 10, 1, -104.3, 30.2 , 0 );
setMoveKey( spep_6-3 + 12, 1, -73.5, 39.6 , 0 );
setMoveKey( spep_6-3 + 14, 1, -42.7, 49 , 0 );
setMoveKey( spep_6-3 + 16, 1, -11.8, 58.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 19, 67.9 , 0 );
setMoveKey( spep_6-3 + 20, 1, 37.7, 73.5 , 0 );
setMoveKey( spep_6-3 + 22, 1, 56.5, 79.1 , 0 );
setMoveKey( spep_6-3 + 24, 1, 75.2, 84.6 , 0 );
setMoveKey( spep_6-3 + 26, 1, 93.9, 90.2 , 0 );
setMoveKey( spep_6-3 + 28, 1, 112.6, 95.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 131.4, 101.4 , 0 );
setMoveKey( spep_6-3 + 32, 1, 150.1, 107 , 0 );
setMoveKey( spep_6-3 + 34, 1, 156.6, 107.9 , 0 );
setMoveKey( spep_6-3 + 36, 1, 163.2, 108.8 , 0 );
setMoveKey( spep_6-3 + 38, 1, 169.7, 109.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, 176.3, 110.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, 182.8, 111.6 , 0 );

setScaleKey( spep_6 + 0, 1, 1, 1 );
setScaleKey( spep_6-3 + 42, 1, 1, 1 );

setRotateKey( spep_6 + 0, 1, 1.5 );
--setRotateKey( spep_6-3 + 2, 1, 2.1 );
setRotateKey( spep_6-3 + 4, 1, 2.5 );
setRotateKey( spep_6-3 + 6, 1, 3 );
setRotateKey( spep_6-3 + 8, 1, 3.5 );
setRotateKey( spep_6-3 + 10, 1, 3.9 );
setRotateKey( spep_6-3 + 12, 1, 4.4 );
setRotateKey( spep_6-3 + 14, 1, 4.8 );
setRotateKey( spep_6-3 + 16, 1, 5.3 );
setRotateKey( spep_6-3 + 18, 1, 5.8 );
setRotateKey( spep_6-3 + 20, 1, 6.4 );
setRotateKey( spep_6-3 + 22, 1, 7 );
setRotateKey( spep_6-3 + 24, 1, 7.6 );
setRotateKey( spep_6-3 + 26, 1, 8.3 );
setRotateKey( spep_6-3 + 28, 1, 8.9 );
setRotateKey( spep_6-3 + 30, 1, 9.5 );
setRotateKey( spep_6-3 + 32, 1, 10.2 );
setRotateKey( spep_6-3 + 34, 1, 10.9 );
setRotateKey( spep_6-3 + 36, 1, 11.7 );
setRotateKey( spep_6-3 + 38, 1, 12.5 );
setRotateKey( spep_6-3 + 40, 1, 13.2 );
setRotateKey( spep_6-3 + 42, 1, 14 );

--SE
playSe( spep_6 + 28, 1017 );

--白フェード
entryFade( spep_6 + 32, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 44;

--------------------------------------
--ギャン
--------------------------------------
-- ** -エフェクト等 ** --
gyan = entryEffectLife(  spep_7,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_7 + 60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);
setEffAlphaKey(  spep_7 + 60,  gyan,  255);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 306.8 );    -- ギャン
setEffMoveKey( spep_7 + 0, ctgyan, 0, 306.8 , 0 );
setEffMoveKey( spep_7 + 60, ctgyan, 0, 306.8 , 0 );

setEffScaleKey( spep_7 + 0, ctgyan, 2.2, 2.2 );
setEffScaleKey( spep_7 + 10, ctgyan, 4.0, 4.0 );
setEffScaleKey( spep_7 + 60, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_7 + 0, ctgyan, -5 );
setEffRotateKey( spep_7 + 60, ctgyan, -5 );

setEffAlphaKey( spep_7 , ctgyan, 255);
setEffAlphaKey( spep_7 + 60, ctgyan, 255);

entryFade( spep_7 + 20, 38, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_7 + 3, 1023 );

stopSe( spep_7 + 6, se_1177, 0 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 60;

------------------------------------------------------
-- ガッ
------------------------------------------------------
-- ** エフェクト等 ** --
bg_3 = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, bg_3, 0, 0, 0 );
setEffMoveKey( spep_8 + 114, bg_3, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, bg_3, 1.0, 1.0 );
setEffScaleKey( spep_8 + 114, bg_3, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, bg_3, 0 );
setEffRotateKey( spep_8 + 114, bg_3, 0 );
setEffAlphaKey( spep_8 + 0, bg_3, 255 );
setEffAlphaKey( spep_8 + 114, bg_3, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_8 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_8 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_8 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_8 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_8 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_8 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_8 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_8 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_8 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_8 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_8 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_8 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_8 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_8 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_8 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_8 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_8 + 2, hibiware, 0 );
setEffRotateKey( spep_8 + 100, hibiware, 0 );

setEffAlphaKey( spep_8 + 2, hibiware, 0 );
setEffAlphaKey( spep_8 + 13, hibiware, 0 );
setEffAlphaKey( spep_8 + 14, hibiware, 255 );
setEffAlphaKey( spep_8 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_8 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_8 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_8 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen4, 0 );
setEffRotateKey( spep_8 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_8 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_8 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_8 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_8 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_8 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_8 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_8 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_8 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_8 + 14,  1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_8 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 + 110, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_8 + 110, shuchusen5, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen5, 0 );
setEffRotateKey( spep_8 + 110, shuchusen5, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 110, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_8 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_8 + 14, ctga, 14, 20 );

setEffMoveKey( spep_8 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_8 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_8 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_8 + 14, ctga, -10.9 );
setEffRotateKey( spep_8 + 15, ctga, -10.9 );
setEffRotateKey( spep_8 + 16, ctga, -14.9 );
setEffRotateKey( spep_8 + 17, ctga, -14.9 );
setEffRotateKey( spep_8 + 18, ctga, -10.9 );
setEffRotateKey( spep_8 + 19, ctga, -10.9 );
setEffRotateKey( spep_8 + 20, ctga, -14.9 );
setEffRotateKey( spep_8 + 21, ctga, -14.9 );
setEffRotateKey( spep_8 + 22, ctga, -10.9 );
setEffRotateKey( spep_8 + 23, ctga, -10.9 );
setEffRotateKey( spep_8 + 24, ctga, -14.9 );
setEffRotateKey( spep_8 + 25, ctga, -14.9 );
setEffRotateKey( spep_8 + 26, ctga, -10.9 );
setEffRotateKey( spep_8 + 27, ctga, -10.9 );
setEffRotateKey( spep_8 + 28, ctga, -14.9 );
setEffRotateKey( spep_8 + 100, ctga, -14.9 );

setEffAlphaKey( spep_8 + 14, ctga, 255 );
setEffAlphaKey( spep_8 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
changeAnime( spep_8 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_8 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_8 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_8 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_8 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_8 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_8 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_8 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_8 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_8 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_8 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_8 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_8 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_8 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_8 + 122, 1, -45.3, -142.1 , 0 );

a = 0.8;

setScaleKey( spep_8 + 0, 1, 0.22 * a, 0.22 * a );
setScaleKey( spep_8 + 2, 1, 0.35 * a, 0.35 * a );
setScaleKey( spep_8 + 4, 1, 0.51 * a, 0.51 * a );
setScaleKey( spep_8 + 6, 1, 0.7 * a, 0.7 * a );
setScaleKey( spep_8 + 8, 1, 0.93 * a, 0.93 * a );
setScaleKey( spep_8 + 10, 1, 1.2 * a, 1.2 * a );
setScaleKey( spep_8 + 12, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_8 + 14, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_8 + 16, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_8 + 18, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_8 + 20, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_8 + 22, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_8 + 24, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_8 + 26, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_8 + 122, 1, 1.6 * a, 1.6 * a );

setRotateKey( spep_8 + 0, 1, -40 );
setRotateKey( spep_8 + 1, 1, -40 );
setRotateKey( spep_8 + 2, 1, 80 );
setRotateKey( spep_8 + 3, 1, 80 );
setRotateKey( spep_8 + 4, 1, 200 );
setRotateKey( spep_8 + 5, 1, 200 );
setRotateKey( spep_8 + 6, 1, 360 );
setRotateKey( spep_8 + 7, 1, 360 );
setRotateKey( spep_8 + 8, 1, 558 );
setRotateKey( spep_8 + 9, 1, 558 );
setRotateKey( spep_8 + 10, 1, 425 );
setRotateKey( spep_8 + 11, 1, 425 );
setRotateKey( spep_8 + 12, 1, -40 );
setRotateKey( spep_8 + 122, 1, -40 );


-- ** 音 ** --
playSe( spep_8 + 0, 1025 );
playSe( spep_8 + 15, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 10 );
endPhase( spep_8 + 100 );

else 

    ------------------------------------------------------
-- てき側
------------------------------------------------------
------------------------------------------------------
--カットイン
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cut = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, cut, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, cut, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cut, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, cut, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cut, 0 );
setEffRotateKey( spep_0 + 100, cut, 0 );
setEffAlphaKey( spep_0 + 0, cut, 255 );
setEffAlphaKey( spep_0 + 100, cut, 255 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 12,  190006, 68, 0x100, -1, 0, 120.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 12, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 12, ctgogo, 120.9, 515.5 , 0 );
setEffMoveKey( spep_x + 80, ctgogo, 120.9, 515.5 , 0 );

setEffScaleKey( spep_x + 12, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 72, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 74, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 76, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 78, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 80, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 12, ctgogo, 0 );
setEffRotateKey( spep_x + 80, ctgogo, 0 );

setEffAlphaKey( spep_x + 12, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 255 );

--SE
playSe( spep_x + 12, 1018 );  --ごごご
playSe( spep_0 + 0, 8 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
--正面に突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, tossin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tossin, -1.0, 1.0 );
setEffScaleKey( spep_2 + 36, tossin, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tossin, 0 );
setEffRotateKey( spep_2 + 36, tossin, 0 );
setEffAlphaKey( spep_2 + 0, tossin, 255 );
setEffAlphaKey( spep_2 + 36, tossin, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 36, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen1, 36, 25 );
setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_2 + 36, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_2 + 0, shuchusen1, 180 );
setEffRotateKey( spep_2 + 36, shuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 36, shuchusen1, 255 );

--SE
SE0=playSe( spep_2 + 2, 44 );
SE1=playSe( spep_2 + 2, 1109 );

setSeVolume( spep_2 + 2, 1109, 71 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );    

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 次の準備 ** --
spep_3 = spep_2 + 36;

------------------------------------------------------
--格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 120, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 120, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 120, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 120, fighting_b, 255 );

-- ** エフェクト等 ** --
ryusen1 = entryEffectLife( spep_3 + 0,  914, 118, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 4.3, 1.12 );
setEffScaleKey( spep_3 + 118, ryusen1, 4.3, 1.12 );

setEffRotateKey( spep_3 + 0, ryusen1, 0 );
setEffRotateKey( spep_3 + 118, ryusen1, 0 );

setEffAlphaKey( spep_3 + 0, ryusen1, 36 );
setEffAlphaKey( spep_3 + 2, ryusen1, 91 );
setEffAlphaKey( spep_3 + 4, ryusen1, 145 );
setEffAlphaKey( spep_3 + 6, ryusen1, 200 );
setEffAlphaKey( spep_3 + 8, ryusen1, 255 );
setEffAlphaKey( spep_3 + 118, ryusen1, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting_n, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fighting_n, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_n, 0 );
setEffRotateKey( spep_3 + 120, fighting_n, 0 );
setEffAlphaKey( spep_3 + 0, fighting_n, 255 );
setEffAlphaKey( spep_3 + 120, fighting_n, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 118, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3-3 + 26, 1, 104 );
changeAnime( spep_3-3 + 52, 1, 108 );
changeAnime( spep_3-3 + 66, 1, 106 );
changeAnime( spep_3-3 + 88, 1, 108 );

setMoveKey( spep_3 + 0, 1, 603.9, -12.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 551.7, -12.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 499.4, -12.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 447.1, -12.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 394.8, -12.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 342.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 290.3, -12.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 263.4, -12.1 , 0 );
setMoveKey( spep_3-3 + 16, 1, 236.5, -12.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 209.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 182.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 155.7, -12.1 , 0 );
setMoveKey( spep_3-3 + 25, 1, 128.8, -12.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 88.1, -6 , 0 );
setMoveKey( spep_3-3 + 28, 1, 109.5, 13.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 68, -3.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 93.2, 33.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 94.9, -1.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, 96.6, -0.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 98.3, 0.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 98.3, 0.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 112.5, 4.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 90, 16.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 114.5, -5.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 108.6, -3.2 , 0 );
setMoveKey( spep_3-3 + 51, 1, 112, -4.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 75.6, 9.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 84.9, 29.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 61.3, 11.7 , 0 );
setMoveKey( spep_3-3 + 58, 1, 94, 3.5 , 0 );
setMoveKey( spep_3-3 + 60, 1, 84.9, 23.5 , 0 );
setMoveKey( spep_3-3 + 62, 1, 87.1, 27.1 , 0 );
setMoveKey( spep_3-3 + 65, 1, 89.3, 30.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 48.4, 40.8 , 0 );
setMoveKey( spep_3-3 + 68, 1, 34.4, 47.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 81.9, 65.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 57.8, 36.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 91.7, 55.6 , 0 );
setMoveKey( spep_3-3 + 76, 1, 89.2, 46.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, 103.9, 51.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 111.3, 48.6 , 0 );
setMoveKey( spep_3-3 + 82, 1, 121.1, 50.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 131, 51.3 , 0 );
setMoveKey( spep_3-3 + 87, 1, 140.8, 51.6 , 0 );
setMoveKey( spep_3-3 + 88, 1, 104.9, 24.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, 146.3, 55.8 , 0 );
setMoveKey( spep_3-3 + 92, 1, 117.6, 34.6 , 0 );
setMoveKey( spep_3-3 + 94, 1, 135.3, 34.3 , 0 );
setMoveKey( spep_3-3 + 96, 1, 143, 37 , 0 );
setMoveKey( spep_3-3 + 98, 1, 115.8, 16.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 125.4, 54.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 253, 51.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 334.2, 52.5 , 0 );
setMoveKey( spep_3-3 + 106, 1, 408.1, 57.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 482, 62.1 , 0 );
setMoveKey( spep_3-3 + 110, 1, 605.2, 70.4 , 0 );
setMoveKey( spep_3-3 + 112, 1, 728.3, 78.8 , 0 );
setMoveKey( spep_3-3 + 114, 1, 851.5, 87.1 , 0 );
setMoveKey( spep_3-3 + 116, 1, 974.7, 95.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 1097.9, 103.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 118, 1, 1.17, 1.17 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 65, 1, 0 );
setRotateKey( spep_3-3 + 66, 1, -46 );
setRotateKey( spep_3-3 + 68, 1, -42.8 );
setRotateKey( spep_3-3 + 70, 1, -39.5 );
setRotateKey( spep_3-3 + 72, 1, -39.1 );
setRotateKey( spep_3-3 + 74, 1, -38.7 );
setRotateKey( spep_3-3 + 76, 1, -38.3 );
setRotateKey( spep_3-3 + 78, 1, -37.9 );
setRotateKey( spep_3-3 + 80, 1, -37.5 );
setRotateKey( spep_3-3 + 82, 1, -37.1 );
setRotateKey( spep_3-3 + 84, 1, -36.7 );
setRotateKey( spep_3-3 + 87, 1, -36.3 );
setRotateKey( spep_3-3 + 88, 1, 0 );
setRotateKey( spep_3-3 + 90, 1, -2 );
setRotateKey( spep_3-3 + 92, 1, -4.1 );
setRotateKey( spep_3-3 + 94, 1, -6.1 );
setRotateKey( spep_3-3 + 96, 1, -8.2 );
setRotateKey( spep_3-3 + 98, 1, -10.2 );
setRotateKey( spep_3-3 + 100, 1, -10.6 );
setRotateKey( spep_3-3 + 102, 1, -11 );
setRotateKey( spep_3-3 + 104, 1, -11.4 );
setRotateKey( spep_3-3 + 106, 1, -11.8 );
setRotateKey( spep_3-3 + 108, 1, -12.1 );
setRotateKey( spep_3-3 + 110, 1, -12.5 );
setRotateKey( spep_3-3 + 112, 1, -12.9 );
setRotateKey( spep_3-3 + 114, 1, -13.3 );
setRotateKey( spep_3-3 + 116, 1, -13.7 );
setRotateKey( spep_3-3 + 118, 1, -14.1 );

--文字エントリー
ctdogaga = entryEffectLife( spep_3-3 + 26,  10017, 52, 0x100, -1, 0, -95.1, 195.5 );
setEffShake( spep_3-3 + 26, ctdogaga, 52, 25 );
setEffMoveKey( spep_3-3 + 26, ctdogaga, -95.1, 195.5 , 0 );
setEffMoveKey( spep_3-3 + 28, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 30, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 32, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 34, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 78, ctdogaga, -95.7, 201 , 0 );

setEffScaleKey( spep_3-3 + 26, ctdogaga, 1.44, 1.44 );
setEffScaleKey( spep_3-3 + 28, ctdogaga, 2.06, 2.06 );
setEffScaleKey( spep_3-3 + 78, ctdogaga, 2.06, 2.06 );

setEffAlphaKey( spep_3-3 + 26, ctdogaga, 128 );
setEffAlphaKey( spep_3-3 + 28, ctdogaga, 255 );
setEffAlphaKey( spep_3-3 + 74, ctdogaga, 255 );
setEffAlphaKey( spep_3-3 + 76, ctdogaga, 223 );
setEffAlphaKey( spep_3-3 + 78, ctdogaga, 191 );

setEffRotateKey( spep_3-3 + 26, ctdogaga, -28 );
setEffRotateKey( spep_3-3 + 78, ctdogaga, -28 );

--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 88,  10020, 16, 0x100, -1, 0, 71, 281.8 );

setEffMoveKey( spep_3-3 + 88, ctbaki, 71, 281.8 , 0 );
setEffMoveKey( spep_3-3 + 90, ctbaki, 80.3, 295.3 , 0 );
setEffMoveKey( spep_3-3 + 92, ctbaki, 76.3, 306 , 0 );
setEffMoveKey( spep_3-3 + 94, ctbaki, 83.1, 299.4 , 0 );
setEffMoveKey( spep_3-3 + 96, ctbaki, 74.6, 304.8 , 0 );
setEffMoveKey( spep_3-3 + 98, ctbaki, 81.6, 311 , 0 );
setEffMoveKey( spep_3-3 + 100, ctbaki, 78.6, 304.8 , 0 );
setEffMoveKey( spep_3-3 + 102, ctbaki, 79.9, 318 , 0 );
setEffMoveKey( spep_3-3 + 104, ctbaki, 80.3, 320.5 , 0 );

setEffScaleKey( spep_3-3 + 88, ctbaki, 1.14, 1.14 );
setEffScaleKey( spep_3-3 + 90, ctbaki, 1.53, 1.53 );
setEffScaleKey( spep_3-3 + 104, ctbaki, 1.53, 1.53 );

setEffRotateKey( spep_3-3 + 88, ctbaki, -21.5 );
setEffRotateKey( spep_3-3 + 104, ctbaki, -21.5 );

setEffAlphaKey( spep_3-3 + 88, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 90, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 100, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 102, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 104, ctbaki, 0 );

--SE
playSe( spep_3 + 26, 1189 );
playSe( spep_3 + 31, 1009 );
playSe( spep_3 + 46, 1006 );
playSe( spep_3 + 57, 1000 );
playSe( spep_3 + 69, 1009 );
playSe( spep_3 + 86, 1003 );
playSe( spep_3 + 91, 1009 );
playSe( spep_3 + 91, 1001 );
setSeVolume( spep_3 + 91, 1001, 63 );
playSe( spep_3 + 107, 1232 );

--白フェード
entryFade( spep_3 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;

------------------------------------------------------
--頭突き
------------------------------------------------------
-- ** エフェクト等 ** --
zutuki_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, zutuki_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, zutuki_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, zutuki_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, zutuki_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, zutuki_f, 0 );
setEffRotateKey( spep_4 + 96, zutuki_f, 0 );
setEffAlphaKey( spep_4 + 0, zutuki_f, 255 );
setEffAlphaKey( spep_4 + 96, zutuki_f, 255 );

-- ** エフェクト等 ** --
zutuki_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, zutuki_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, zutuki_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, zutuki_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, zutuki_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, zutuki_b, 0 );
setEffRotateKey( spep_4 + 96, zutuki_b, 0 );
setEffAlphaKey( spep_4 + 0, zutuki_b, 255 );
setEffAlphaKey( spep_4 + 96, zutuki_b, 255 );

--敵の動き
setDisp( spep_4+ 0, 1, 1 );
setDisp( spep_4-3+ 94, 1, 0 );

changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4-3 + 58, 1, 107 );

setMoveKey( spep_4 + 0, 1, 1318.9, -507.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 1282.7, -489.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, 1246.4, -471.5 , 0 );
setMoveKey( spep_4-3 + 6, 1, 1210.2, -453.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, 1174, -435.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 1137.8, -417.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 1101.6, -399.6 , 0 );
setMoveKey( spep_4-3 + 14, 1, 1065.4, -381.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, 1029.2, -363.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 993, -345.7 , 0 );
setMoveKey( spep_4-3 + 20, 1, 956.8, -327.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 920.6, -309.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 884.4, -291.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 848.1, -273.8 , 0 );
setMoveKey( spep_4-3 + 28, 1, 811.9, -255.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 775.7, -237.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 739.5, -219.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 703.3, -201.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 667.1, -183.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 630.9, -165.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 594.7, -147.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 539.8, -128.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 484.9, -109.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 430.1, -90.9 , 0 );
setMoveKey( spep_4-3 + 48, 1, 375.2, -71.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 320.3, -52.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, 265.4, -33.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 210.6, -14.8 , 0 );
setMoveKey( spep_4-3 + 57, 1, 167.9, -11.5 , 0 );
setMoveKey( spep_4-3 + 58, 1, 59.8, -66.4 , 0 );
setMoveKey( spep_4-3 + 60, 1, 47.3, -74.5 , 0 );
setMoveKey( spep_4-3 + 62, 1, 96.6, -106.3 , 0 );
setMoveKey( spep_4-3 + 64, 1, 99.5, -149 , 0 );
setMoveKey( spep_4-3 + 66, 1, 173.5, -194.6 , 0 );
setMoveKey( spep_4-3 + 68, 1, 324.3, -473.5 , 0 );
setMoveKey( spep_4-3 + 70, 1, 504.9, -712.9 , 0 );
setMoveKey( spep_4-3 + 72, 1, 624.5, -785.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, 744, -857.7 , 0 );
setMoveKey( spep_4-3 + 76, 1, 863.5, -930.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 983.1, -1002.6 , 0 );
setMoveKey( spep_4-3 + 80, 1, 1102.6, -1075 , 0 );
setMoveKey( spep_4-3 + 82, 1, 1222.2, -1147.4 , 0 );
setMoveKey( spep_4-3 + 84, 1, 1250.4, -1159.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 1278.7, -1171.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 1307, -1184.2 , 0 );
setMoveKey( spep_4-3 + 90, 1, 1335.3, -1196.5 , 0 );
setMoveKey( spep_4-3 + 92, 1, 1363.6, -1208.8 , 0 );
setMoveKey( spep_4-3 + 94, 1, 1391.8, -1221.1 , 0 );

setScaleKey( spep_4 + 0, 1, 3.29, 3.29 );
--setScaleKey( spep_4-3 + 2, 1, 3.27, 3.27 );
setScaleKey( spep_4-3 + 4, 1, 3.25, 3.25 );
setScaleKey( spep_4-3 + 6, 1, 3.23, 3.23 );
setScaleKey( spep_4-3 + 8, 1, 3.21, 3.21 );
setScaleKey( spep_4-3 + 10, 1, 3.19, 3.19 );
setScaleKey( spep_4-3 + 12, 1, 3.18, 3.18 );
setScaleKey( spep_4-3 + 14, 1, 3.16, 3.16 );
setScaleKey( spep_4-3 + 16, 1, 3.14, 3.14 );
setScaleKey( spep_4-3 + 18, 1, 3.12, 3.12 );
setScaleKey( spep_4-3 + 20, 1, 3.1, 3.1 );
setScaleKey( spep_4-3 + 22, 1, 3.08, 3.08 );
setScaleKey( spep_4-3 + 24, 1, 3.06, 3.06 );
setScaleKey( spep_4-3 + 26, 1, 3.04, 3.04 );
setScaleKey( spep_4-3 + 28, 1, 3.03, 3.03 );
setScaleKey( spep_4-3 + 30, 1, 3.01, 3.01 );
setScaleKey( spep_4-3 + 32, 1, 2.99, 2.99 );
setScaleKey( spep_4-3 + 34, 1, 2.97, 2.97 );
setScaleKey( spep_4-3 + 36, 1, 2.95, 2.95 );
setScaleKey( spep_4-3 + 38, 1, 2.93, 2.93 );
setScaleKey( spep_4-3 + 40, 1, 2.91, 2.91 );
setScaleKey( spep_4-3 + 42, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 44, 1, 2.67, 2.67 );
setScaleKey( spep_4-3 + 46, 1, 2.54, 2.54 );
setScaleKey( spep_4-3 + 48, 1, 2.42, 2.42 );
setScaleKey( spep_4-3 + 50, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 52, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 54, 1, 2.05, 2.05 );
setScaleKey( spep_4-3 + 57, 1, 2.01, 2.01 );

a=0.1;
setScaleKey( spep_4-3 + 58, 1, 0.84+a, 0.84+a );
setScaleKey( spep_4-3 + 60, 1, 0.8+a, 0.8+a );
setScaleKey( spep_4-3 + 62, 1, 1+a, 1+a );
setScaleKey( spep_4-3 + 64, 1, 1.13+a, 1.13+a );
setScaleKey( spep_4-3 + 66, 1, 1.25+a, 1.25+a );
setScaleKey( spep_4-3 + 68, 1, 1.38+a, 1.38+a );
setScaleKey( spep_4-3 + 70, 1, 1.44+a, 1.44+a );
setScaleKey( spep_4-3 + 72, 1, 1.5+a, 1.5+a );
setScaleKey( spep_4-3 + 74, 1, 1.55+a, 1.55+a );
setScaleKey( spep_4-3 + 76, 1, 1.61+a, 1.61+a );
setScaleKey( spep_4-3 + 78, 1, 1.67+a, 1.67+a );
setScaleKey( spep_4-3 + 80, 1, 1.73+a, 1.73+a );
setScaleKey( spep_4-3 + 82, 1, 1.79+a, 1.79+a );
setScaleKey( spep_4-3 + 84, 1, 1.78+a, 1.78+a );
setScaleKey( spep_4-3 + 88, 1, 1.78+a, 1.78+a );
setScaleKey( spep_4-3 + 90, 1, 1.77+a, 1.77+a );
setScaleKey( spep_4-3 + 94, 1, 1.77+a, 1.77+a );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 57, 1, 0 );
setRotateKey( spep_4-3 + 58, 1, -21 );
setRotateKey( spep_4-3 + 94, 1, -21 );

--文字エントリー
ctdon = entryEffectLife( spep_4-3 + 58,  10019, 24, 0x100, -1, 0, 117.7, 340.7 );
setEffShake( spep_4-3 + 58, ctdon, 58, 25 );
setEffMoveKey( spep_4-3 + 58, ctdon, 117.7, 340.7 , 0 );
setEffMoveKey( spep_4-3 + 60, ctdon, 136.1, 349.8 , 0 );
setEffMoveKey( spep_4-3 + 62, ctdon, 131.8, 362.4 , 0 );
setEffMoveKey( spep_4-3 + 64, ctdon, 139.1, 348.6 , 0 );
setEffMoveKey( spep_4-3 + 66, ctdon, 127.4, 354.6 , 0 );
setEffMoveKey( spep_4-3 + 68, ctdon, 137.6, 358.9 , 0 );
setEffMoveKey( spep_4-3 + 70, ctdon, 131.2, 347.3 , 0 );
setEffMoveKey( spep_4-3 + 72, ctdon, 134.8, 362.8 , 0 );
setEffMoveKey( spep_4-3 + 74, ctdon, 134.8, 351.4 , 0 );
setEffMoveKey( spep_4-3 + 76, ctdon, 130.4, 359.1 , 0 );
setEffMoveKey( spep_4-3 + 78, ctdon, 131.9, 351.7 , 0 );
setEffMoveKey( spep_4-3 + 80, ctdon, 136.4, 358.8 , 0 );
setEffMoveKey( spep_4-3 + 82, ctdon, 136.5, 359.1 , 0 );

setEffScaleKey( spep_4-3 + 58, ctdon, 1.38, 1.38 );
setEffScaleKey( spep_4-3 + 60, ctdon, 2.15, 2.15 );
setEffScaleKey( spep_4-3 + 62, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_4-3 + 64, ctdon, 2.18, 2.18 );
setEffScaleKey( spep_4-3 + 66, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_4-3 + 68, ctdon, 2.21, 2.21 );
setEffScaleKey( spep_4-3 + 70, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_4-3 + 72, ctdon, 2.24, 2.24 );
setEffScaleKey( spep_4-3 + 74, ctdon, 2.26, 2.26 );
setEffScaleKey( spep_4-3 + 76, ctdon, 2.27, 2.27 );
setEffScaleKey( spep_4-3 + 78, ctdon, 2.29, 2.29 );
setEffScaleKey( spep_4-3 + 80, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_4-3 + 82, ctdon, 2.32, 2.32 );

setEffRotateKey( spep_4-3 + 58, ctdon, -29.8 );
setEffRotateKey( spep_4-3 + 82, ctdon, -29.8 );

setEffAlphaKey( spep_4-3 + 58, ctdon, 128 );
setEffAlphaKey( spep_4-3 + 60, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 78, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 80, ctdon, 128 );
setEffAlphaKey( spep_4-3 + 82, ctdon, 0 );

--SE
playSe( spep_4 + 6, 1035 );
setSeVolume( spep_4 + 6, 1035, 79 );
se_0009 = playSe( spep_4 + 35, 9 );
se_1183 = playSe( spep_4 + 35, 1183 );
setSeVolume( spep_4 + 35, 1183, 158 );
playSe( spep_4 + 66, 1110 );
playSe( spep_4 + 66, 1010 );
playSe( spep_4 + 79, 1072 );

stopSe( spep_4 + 70, se_0009, 0 );
stopSe( spep_4 + 70, se_1183, 0 );

--白フェード
entryFade( spep_4 + 88, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;

------------------------------------------------------
--敵を見上げる～ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
watch = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, watch, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, watch, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, watch, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, watch, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, watch, 0 );
setEffRotateKey( spep_5 + 136, watch, 0 );
setEffAlphaKey( spep_5 + 0, watch, 255 );
setEffAlphaKey( spep_5 + 136, watch, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_5-3 + 44,  906, 42, 0x100, -1, 0, 132.3, -28.1 );
setEffShake( spep_5-3 + 44, shuchusen2, 42, 25 );
setEffMoveKey( spep_5-3 + 44, shuchusen2, 132.3, -28.1 , 0 );
setEffMoveKey( spep_5-3 + 86, shuchusen2, 132.3, -28.1 , 0 );

setEffScaleKey( spep_5-3 + 44, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_5-3 + 86, shuchusen2, 1.24, 1.24 );

setEffRotateKey( spep_5-3 + 44, shuchusen2, 0 );
setEffRotateKey( spep_5-3 + 86, shuchusen2, 0 );

setEffAlphaKey( spep_5-3 + 44, shuchusen2, 128 );
setEffAlphaKey( spep_5-3 + 46, shuchusen2, 255 );
setEffAlphaKey( spep_5-3 + 85, shuchusen2, 255 );
setEffAlphaKey( spep_5-3 + 86, shuchusen2, 0 );

--SE
se_1037 = playSe( spep_5 + 52, 1037 );
setSeVolume( spep_5 + 52, 1037, 0 );
setSeVolume( spep_5 + 52, 1037, 63 );
se_0049 = playSe( spep_5 + 53, 49 );
setSeVolume( spep_5 + 53, 49, 112 );
playSe( spep_5 + 86, 1027 );
setSeVolume( spep_5 + 86, 1027, 56 );
se_1177 = playSe( spep_5 + 86, 1177 );
setSeVolume( spep_5 + 86, 1177, 79 );

stopSe( spep_5 + 90, se_1037, 0 );
stopSe( spep_5 + 87, se_0049, 0 );

--白フェード
entryFade( spep_5 + 128, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 136;

------------------------------------------------------
--敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 44, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 44, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 44, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_10x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 44, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 44, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 44, hit_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 42, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -258.5, -16.9 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -227.7, -7.5 , 0 );
setMoveKey( spep_6-3 + 4, 1, -196.8, 1.9 , 0 );
setMoveKey( spep_6-3 + 6, 1, -166, 11.4 , 0 );
setMoveKey( spep_6-3 + 8, 1, -135.2, 20.8 , 0 );
setMoveKey( spep_6-3 + 10, 1, -104.3, 30.2 , 0 );
setMoveKey( spep_6-3 + 12, 1, -73.5, 39.6 , 0 );
setMoveKey( spep_6-3 + 14, 1, -42.7, 49 , 0 );
setMoveKey( spep_6-3 + 16, 1, -11.8, 58.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 19, 67.9 , 0 );
setMoveKey( spep_6-3 + 20, 1, 37.7, 73.5 , 0 );
setMoveKey( spep_6-3 + 22, 1, 56.5, 79.1 , 0 );
setMoveKey( spep_6-3 + 24, 1, 75.2, 84.6 , 0 );
setMoveKey( spep_6-3 + 26, 1, 93.9, 90.2 , 0 );
setMoveKey( spep_6-3 + 28, 1, 112.6, 95.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 131.4, 101.4 , 0 );
setMoveKey( spep_6-3 + 32, 1, 150.1, 107 , 0 );
setMoveKey( spep_6-3 + 34, 1, 156.6, 107.9 , 0 );
setMoveKey( spep_6-3 + 36, 1, 163.2, 108.8 , 0 );
setMoveKey( spep_6-3 + 38, 1, 169.7, 109.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, 176.3, 110.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, 182.8, 111.6 , 0 );

setScaleKey( spep_6 + 0, 1, 1, 1 );
setScaleKey( spep_6-3 + 42, 1, 1, 1 );

setRotateKey( spep_6 + 0, 1, 1.5 );
--setRotateKey( spep_6-3 + 2, 1, 2.1 );
setRotateKey( spep_6-3 + 4, 1, 2.5 );
setRotateKey( spep_6-3 + 6, 1, 3 );
setRotateKey( spep_6-3 + 8, 1, 3.5 );
setRotateKey( spep_6-3 + 10, 1, 3.9 );
setRotateKey( spep_6-3 + 12, 1, 4.4 );
setRotateKey( spep_6-3 + 14, 1, 4.8 );
setRotateKey( spep_6-3 + 16, 1, 5.3 );
setRotateKey( spep_6-3 + 18, 1, 5.8 );
setRotateKey( spep_6-3 + 20, 1, 6.4 );
setRotateKey( spep_6-3 + 22, 1, 7 );
setRotateKey( spep_6-3 + 24, 1, 7.6 );
setRotateKey( spep_6-3 + 26, 1, 8.3 );
setRotateKey( spep_6-3 + 28, 1, 8.9 );
setRotateKey( spep_6-3 + 30, 1, 9.5 );
setRotateKey( spep_6-3 + 32, 1, 10.2 );
setRotateKey( spep_6-3 + 34, 1, 10.9 );
setRotateKey( spep_6-3 + 36, 1, 11.7 );
setRotateKey( spep_6-3 + 38, 1, 12.5 );
setRotateKey( spep_6-3 + 40, 1, 13.2 );
setRotateKey( spep_6-3 + 42, 1, 14 );

--SE
playSe( spep_6 + 28, 1017 );

--白フェード
entryFade( spep_6 + 32, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 44;

--------------------------------------
--ギャン
--------------------------------------
-- ** -エフェクト等 ** --
gyan = entryEffectLife(  spep_7,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_7 + 60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);
setEffAlphaKey(  spep_7 + 60,  gyan,  255);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 306.8 );    -- ギャン
setEffMoveKey( spep_7 + 0, ctgyan, 0, 306.8 , 0 );
setEffMoveKey( spep_7 + 60, ctgyan, 0, 306.8 , 0 );

setEffScaleKey( spep_7 + 0, ctgyan, 2.2, 2.2 );
setEffScaleKey( spep_7 + 10, ctgyan, 4.0, 4.0 );
setEffScaleKey( spep_7 + 60, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_7 + 0, ctgyan, -5 );
setEffRotateKey( spep_7 + 60, ctgyan, -5 );

setEffAlphaKey( spep_7 , ctgyan, 255);
setEffAlphaKey( spep_7 + 60, ctgyan, 255);

entryFade( spep_7 + 20, 38, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_7 + 3, 1023 );

stopSe( spep_7 + 6, se_1177, 0 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 60;

------------------------------------------------------
-- ガッ
------------------------------------------------------
-- ** エフェクト等 ** --
bg_3 = entryEffect( spep_8 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, bg_3, 0, 0, 0 );
setEffMoveKey( spep_8 + 114, bg_3, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, bg_3, 1.0, 1.0 );
setEffScaleKey( spep_8 + 114, bg_3, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, bg_3, 0 );
setEffRotateKey( spep_8 + 114, bg_3, 0 );
setEffAlphaKey( spep_8 + 0, bg_3, 255 );
setEffAlphaKey( spep_8 + 114, bg_3, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_8 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_8 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_8 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_8 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_8 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_8 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_8 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_8 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_8 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_8 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_8 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_8 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_8 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_8 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_8 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_8 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_8 + 2, hibiware, 0 );
setEffRotateKey( spep_8 + 100, hibiware, 0 );

setEffAlphaKey( spep_8 + 2, hibiware, 0 );
setEffAlphaKey( spep_8 + 13, hibiware, 0 );
setEffAlphaKey( spep_8 + 14, hibiware, 255 );
setEffAlphaKey( spep_8 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_8 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_8 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_8 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen4, 0 );
setEffRotateKey( spep_8 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_8 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_8 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_8 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_8 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_8 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_8 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_8 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_8 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_8 + 14,  1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_8 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 + 110, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_8 + 110, shuchusen5, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen5, 0 );
setEffRotateKey( spep_8 + 110, shuchusen5, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 110, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_8 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_8 + 14, ctga, 14, 20 );

setEffMoveKey( spep_8 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_8 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_8 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_8 + 14, ctga, -10.9 );
setEffRotateKey( spep_8 + 15, ctga, -10.9 );
setEffRotateKey( spep_8 + 16, ctga, -14.9 );
setEffRotateKey( spep_8 + 17, ctga, -14.9 );
setEffRotateKey( spep_8 + 18, ctga, -10.9 );
setEffRotateKey( spep_8 + 19, ctga, -10.9 );
setEffRotateKey( spep_8 + 20, ctga, -14.9 );
setEffRotateKey( spep_8 + 21, ctga, -14.9 );
setEffRotateKey( spep_8 + 22, ctga, -10.9 );
setEffRotateKey( spep_8 + 23, ctga, -10.9 );
setEffRotateKey( spep_8 + 24, ctga, -14.9 );
setEffRotateKey( spep_8 + 25, ctga, -14.9 );
setEffRotateKey( spep_8 + 26, ctga, -10.9 );
setEffRotateKey( spep_8 + 27, ctga, -10.9 );
setEffRotateKey( spep_8 + 28, ctga, -14.9 );
setEffRotateKey( spep_8 + 100, ctga, -14.9 );

setEffAlphaKey( spep_8 + 14, ctga, 255 );
setEffAlphaKey( spep_8 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
changeAnime( spep_8 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_8 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_8 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_8 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_8 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_8 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_8 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_8 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_8 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_8 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_8 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_8 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_8 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_8 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_8 + 122, 1, -45.3, -142.1 , 0 );

a = 0.8;

setScaleKey( spep_8 + 0, 1, 0.22 * a, 0.22 * a );
setScaleKey( spep_8 + 2, 1, 0.35 * a, 0.35 * a );
setScaleKey( spep_8 + 4, 1, 0.51 * a, 0.51 * a );
setScaleKey( spep_8 + 6, 1, 0.7 * a, 0.7 * a );
setScaleKey( spep_8 + 8, 1, 0.93 * a, 0.93 * a );
setScaleKey( spep_8 + 10, 1, 1.2 * a, 1.2 * a );
setScaleKey( spep_8 + 12, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_8 + 14, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_8 + 16, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_8 + 18, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_8 + 20, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_8 + 22, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_8 + 24, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_8 + 26, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_8 + 122, 1, 1.6 * a, 1.6 * a );

setRotateKey( spep_8 + 0, 1, -40 );
setRotateKey( spep_8 + 1, 1, -40 );
setRotateKey( spep_8 + 2, 1, 80 );
setRotateKey( spep_8 + 3, 1, 80 );
setRotateKey( spep_8 + 4, 1, 200 );
setRotateKey( spep_8 + 5, 1, 200 );
setRotateKey( spep_8 + 6, 1, 360 );
setRotateKey( spep_8 + 7, 1, 360 );
setRotateKey( spep_8 + 8, 1, 558 );
setRotateKey( spep_8 + 9, 1, 558 );
setRotateKey( spep_8 + 10, 1, 425 );
setRotateKey( spep_8 + 11, 1, 425 );
setRotateKey( spep_8 + 12, 1, -40 );
setRotateKey( spep_8 + 122, 1, -40 );


-- ** 音 ** --
playSe( spep_8 + 0, 1025 );
playSe( spep_8 + 15, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 10 );
endPhase( spep_8 + 100 );
end
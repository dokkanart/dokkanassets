--1015790 フロスト(フルパワー)_ダーティーバースト
--sp_effect_a3_00056

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
SP_01=	152557	;--	連続ビーム発射
SP_02=	152558	;--	連続ビーム爆発
SP_03=	152559	;--	連続ビーム爆発奥
SP_04=	152560	;--	溜めカット
SP_05=	152561	;--	極太ビーム発射
SP_06=	152562	;--	極太ビーム敵に当たる
SP_07=	152563	;--	ギャン
SP_08=	152564	;--	地球爆発

--敵側
SP_01x=	152557	;--	連続ビーム発射
SP_02x=	152558	;--	連続ビーム爆発
SP_03x=	152559	;--	連続ビーム爆発奥
SP_04x=	152565	;--	溜めカット
SP_05x=	152566	;--	極太ビーム発射
SP_06x=	152562	;--	極太ビーム敵に当たる
SP_07x=	152563	;--	ギャン
SP_08x=	152564	;--	地球爆発

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 最初のシーン(88F)
------------------------------------------------------
spep_0 = 0;

--エフェクトの再生
gettu = entryEffectLife( spep_0 + 0, SP_01, 128, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, gettu, 0, 0 , 0 );
setEffMoveKey( spep_0 + 128, gettu, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, gettu, 1.0, 1.0 );
setEffScaleKey( spep_0 + 128, gettu, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, gettu, 255 );
setEffAlphaKey( spep_0 + 128, gettu, 255 );
setEffRotateKey( spep_0 + 0, gettu, 0 );
setEffRotateKey( spep_0 + 128, gettu, 0 );

--文字エントリー
ctbibibi = entryEffectLife( spep_0-4 + 34,  10025, 92, 0x100, -1, 0, 105.2, 303.3 );--ビビビッ

setEffMoveKey( spep_0-4 + 34, ctbibibi, 105.2, 303.3 , 0 );
setEffMoveKey( spep_0-4 + 36, ctbibibi, 120.4, 304.3 , 0 );
setEffMoveKey( spep_0-4 + 38, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_0-4 + 40, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_0-4 + 42, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_0-4 + 44, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_0-4 + 46, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_0-4 + 48, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_0-4 + 50, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_0-4 + 52, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_0-4 + 54, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_0-4 + 56, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_0-4 + 58, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_0-4 + 60, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_0-4 + 62, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_0-4 + 64, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_0-4 + 66, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_0-4 + 68, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_0-4 + 70, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_0-4 + 72, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_0-4 + 74, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_0-4 + 76, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_0-4 + 78, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_0-4 + 80, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_0-4 + 82, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_0-4 + 84, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_0-4 + 86, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_0-4 + 88, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_0-4 + 90, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_0-4 + 92, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_0-4 + 94, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_0-4 + 96, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_0-4 + 98, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_0-4 + 100, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_0-4 + 102, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_0-4 + 104, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_0-4 + 106, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_0-4 + 108, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_0-4 + 110, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_0-4 + 112, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_0-4 + 114, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_0-4 + 116, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_0-4 + 118, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_0-4 + 120, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_0-4 + 122, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_0-4 + 124, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_0-4 + 126, ctbibibi, 124.6, 310.6 , 0 );

setEffScaleKey( spep_0-4 + 34, ctbibibi, 1.47, 1.47 );
setEffScaleKey( spep_0-4 + 36, ctbibibi, 1.66, 1.66 );
setEffScaleKey( spep_0-4 + 38, ctbibibi, 1.86, 1.86 );
setEffScaleKey( spep_0-4 + 126, ctbibibi, 1.86, 1.86 );

setEffRotateKey( spep_0-4 + 34, ctbibibi, 0 );
setEffRotateKey( spep_0-4 + 126, ctbibibi, 0 );

setEffAlphaKey( spep_0-4 + 34, ctbibibi, 0 );
setEffAlphaKey( spep_0-4 + 35, ctbibibi, 85 );
setEffAlphaKey( spep_0-4 + 36, ctbibibi, 170 );
setEffAlphaKey( spep_0-4 + 38, ctbibibi, 255 );
setEffAlphaKey( spep_0-4 + 126, ctbibibi, 255 );

setEffShake(spep_0-4 + 34,ctbibibi,92,20);

--流線
ryuusen1 = entryEffectLife( spep_0 + 0,  921, 126, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, ryuusen1, 1.0, 1 );
setEffScaleKey( spep_0 + 126, ryuusen1, 1.0, 1 );

setEffRotateKey( spep_0 + 0, ryuusen1, 180 );
setEffRotateKey( spep_0 + 126, ryuusen1, 180 );

setEffAlphaKey( spep_0 + 0, ryuusen1, 255 );
setEffAlphaKey( spep_0 + 126, ryuusen1, 255 );

--SE
SE1=playSe( spep_0, 17); --貯める
stopSe(30,SE1,0);
playSe( spep_0+32, 1016); --気弾
playSe( spep_0+42, 1016); --気弾
playSe( spep_0+52, 1016); --気弾
playSe( spep_0+62, 1016); --気弾
playSe( spep_0+72, 1016); --気弾
playSe( spep_0+82, 1016); --気弾
playSe( spep_0+92, 1016); --気弾
playSe( spep_0+102, 1016); --気弾

--黒背景
entryFadeBg(spep_0, 0, 126, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 8,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+120, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+110 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    --[[
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge , 1, 1.1, 1.1);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
    setRotateKey(SP_dodge+8,   1, 0 );
    ]]
    
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
    setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
--SE
playSe( spep_0+110, 1016); --気弾
playSe( spep_0+120, 1016); --気弾

--次の準備
spep_1=spep_0+128;

------------------------------------------------------
-- たくさん当たる
------------------------------------------------------
--エフェクトの再生(前)
hit_f = entryEffectLife( spep_1 + 0, SP_02, 120, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 120, hit_f, 255 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 120, hit_f, 0 );

--エフェクトの再生(後)
hit_b = entryEffectLife( spep_1 + 0, SP_03, 120, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, hit_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 120, hit_b, 255 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 120, hit_b, 0 );


--流線
ryuusen2 = entryEffectLife( spep_1 + 0,  921, 120, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, ryuusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryuusen2, 1, 1 );
setEffScaleKey( spep_1 + 120, ryuusen2, 1, 1 );

setEffRotateKey( spep_1 + 0, ryuusen2, 0 );
setEffRotateKey( spep_1 + 120, ryuusen2, 0 );

setEffAlphaKey( spep_1 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_1 + 120, ryuusen2, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_1+16 ,  10014, 102, 0x100, -1, 0, 63.6, 344.3 );--ズドドドッ

setEffMoveKey( spep_1 + 16, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 18, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 20, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 22, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 24, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 26, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 28, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 30, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 32, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 34, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 36, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 38, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 40, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 42, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 44, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 46, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 48, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 50, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 52, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 54, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 56, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 58, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 60, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 62, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 64, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 66, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 68, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 70, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 72, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 74, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 76, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 78, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 80, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 82, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 84, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 86, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 88, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 90, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 92, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 94, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 96, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 98, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 100, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 102, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 104, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 106, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 108, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 110, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 112, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 114, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 116, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 118, ctzudododo, 63.6, 344.3 , 0 );

setEffScaleKey( spep_1 + 16, ctzudododo, 3.26, 3.26 );
setEffScaleKey( spep_1 + 118, ctzudododo, 3.26, 3.26 );

setEffRotateKey( spep_1 + 16, ctzudododo, 75.1 );
setEffRotateKey( spep_1 + 118, ctzudododo, 75.1 );

setEffAlphaKey( spep_1 + 16, ctzudododo, 0 );
setEffAlphaKey( spep_1 + 17, ctzudododo, 255 );
setEffAlphaKey( spep_1 + 18, ctzudododo, 255 );
setEffAlphaKey( spep_1 + 118, ctzudododo, 255 );

setEffShake(spep_1+16,ctzudododo,102,20);

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 96, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 68, 1, 106 );

setMoveKey( spep_1 + 0, 1, -21.9, 12 , 0 );
setMoveKey( spep_1 + 2, 1, -17.9, 12.8 , 0 );
setMoveKey( spep_1 + 4, 1, -13.4, 12.8 , 0 );
setMoveKey( spep_1 + 6, 1, -6.5, 9.1 , 0 );
setMoveKey( spep_1 + 8, 1, 1.1, 12.4 , 0 );
setMoveKey( spep_1 + 10, 1, -1.7, 10.7 , 0 );
setMoveKey( spep_1 + 12, 1, 6, 14.6 , 0 );
setMoveKey( spep_1 + 14, 1, 5.2, 12.7 , 0 );
setMoveKey( spep_1 + 16, 1, 10.8, 8.1 , 0 );
setMoveKey( spep_1 + 18, 1, 11, 16.3 , 0 );
setMoveKey( spep_1 + 20, 1, 10.7, 9 , 0 );
setMoveKey( spep_1 + 22, 1, 12.2, 7.7 , 0 );
setMoveKey( spep_1 + 24, 1, 21, 9.5 , 0 );
setMoveKey( spep_1 + 26, 1, 17.5, 15.3 , 0 );
setMoveKey( spep_1 + 28, 1, 19.1, 7.4 , 0 );
setMoveKey( spep_1 + 30, 1, 22.5, 11.2 , 0 );
setMoveKey( spep_1 + 32, 1, 13.6, 10.2 , 0 );
setMoveKey( spep_1 + 34, 1, 22, 17.8 , 0 );
setMoveKey( spep_1 + 36, 1, 21.3, 18.2 , 0 );
setMoveKey( spep_1 + 38, 1, 14.1, 10.3 , 0 );
setMoveKey( spep_1 + 40, 1, 19.3, 5.8 , 0 );
setMoveKey( spep_1 + 42, 1, 23.7, 13.1 , 0 );
setMoveKey( spep_1 + 44, 1, 11.1, 14.4 , 0 );
setMoveKey( spep_1 + 46, 1, 12.4, 8.4 , 0 );
setMoveKey( spep_1 + 48, 1, 22.1, 3.2 , 0 );
setMoveKey( spep_1 + 50, 1, 11.5, 18.8 , 0 );
setMoveKey( spep_1 + 52, 1, 26.3, 7.6 , 0 );
setMoveKey( spep_1 + 54, 1, 9.7, 14.6 , 0 );
setMoveKey( spep_1 + 56, 1, 9, 10.1 , 0 );
setMoveKey( spep_1 + 58, 1, 21.5, 22.5 , 0 );
setMoveKey( spep_1 + 60, 1, 21.1, 5 , 0 );
setMoveKey( spep_1 + 62, 1, 24.7, 18 , 0 );
setMoveKey( spep_1 + 64, 1, 12.3, 4.7 , 0 );
setMoveKey( spep_1 + 66, 1, 21.8, 5.5 , 0 );
setMoveKey( spep_1 + 68, 1, 7.8, 12.3 , 0 );
setMoveKey( spep_1 + 68, 1, 75.4, 28.2 , 0 );
setMoveKey( spep_1 + 70, 1, 113.5, 34 , 0 );
setMoveKey( spep_1 + 72, 1, 152.2, 36.7 , 0 );
setMoveKey( spep_1 + 74, 1, 191, 36.5 , 0 );
setMoveKey( spep_1 + 76, 1, 229.9, 33.8 , 0 );
setMoveKey( spep_1 + 78, 1, 268.5, 29 , 0 );
setMoveKey( spep_1 + 80, 1, 307, 22.5 , 0 );
setMoveKey( spep_1 + 82, 1, 345.1, 14.7 , 0 );
setMoveKey( spep_1 + 84, 1, 383.1, 6.1 , 0 );
setMoveKey( spep_1 + 86, 1, 421, -3 , 0 );
setMoveKey( spep_1 + 88, 1, 458.7, -12.4 , 0 );
setMoveKey( spep_1 + 90, 1, 496.4, -21.6 , 0 );
setMoveKey( spep_1 + 92, 1, 534, -30.7 , 0 );
setMoveKey( spep_1 + 94, 1, 571.8, -39.3 , 0 );
setMoveKey( spep_1 + 96, 1, 609.7, -47.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 2, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 6, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 8, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 10, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 12, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 14, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 16, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 68, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 70, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 72, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 74, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 76, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 78, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 80, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 84, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 86, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 88, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 90, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 92, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 94, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 96, 1, 0.9, 0.9 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 66, 1, 0 );
setRotateKey( spep_1 + 68, 1, 10 );
setRotateKey( spep_1 + 70, 1, 12.1 );
setRotateKey( spep_1 + 72, 1, 14.3 );
setRotateKey( spep_1 + 74, 1, 16.4 );
setRotateKey( spep_1 + 76, 1, 18.6 );
setRotateKey( spep_1 + 78, 1, 20.7 );
setRotateKey( spep_1 + 80, 1, 22.9 );
setRotateKey( spep_1 + 82, 1, 25 );
setRotateKey( spep_1 + 84, 1, 27.1 );
setRotateKey( spep_1 + 86, 1, 29.3 );
setRotateKey( spep_1 + 88, 1, 31.4 );
setRotateKey( spep_1 + 90, 1, 33.6 );
setRotateKey( spep_1 + 92, 1, 35.7 );
setRotateKey( spep_1 + 94, 1, 37.9 );
setRotateKey( spep_1 + 96, 1, 40 );

setShakeChara(spep_1+68,1,28,10);
--SE
playSe( spep_1, 1016); --気弾

--[[
playSe( spep_1+18, 1023); --爆発
playSe( spep_1+34, 1023); --爆発
playSe( spep_1+46, 1023); --爆発
playSe( spep_1+56, 1023); --爆発
playSe( spep_1+72, 1023); --爆発
--playSe( spep_1+112, 1023); --爆発
]]
--v4.11調整
SE001 = playSe( spep_1+18, 1023); --爆発
setSeVolume(spep_1+18,1023,80);

SE002 = playSe( spep_1+34, 1023); --爆発
setSeVolume(spep_1+34,1023,80);

SE003 = playSe( spep_1+46, 1023); --爆発
setSeVolume(spep_1+46,1023,80);

SE004 = playSe( spep_1+56, 1023); --爆発
setSeVolume(spep_1+56,1023,80);

SE005 = playSe( spep_1+72, 1023); --爆発
setSeVolume(spep_1+72,1023,80);

--黒背景
entryFadeBg(spep_1, 0, 120, 0, 0, 0, 0, 190);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_1+112,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+120;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
--エフェクトの再生
tame = entryEffectLife( spep_2 + 0, SP_04, 100, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );

--顔カットイン
speff=entryEffect(spep_2+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_2+22,190006,78,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_2+22,ctgogo,0,520,0);
setEffMoveKey(spep_2+100,ctgogo,0,520,0);

setEffScaleKey(spep_2+22, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+100, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_2 +22, ctgogo, 0 );
setEffAlphaKey( spep_2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_2 + 100, ctgogo, 255 );

setEffRotateKey(spep_2+22,ctgogo,0);
setEffRotateKey(spep_2+100,ctgogo,0);

--集中
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_2 + 100, shuchusen1, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 100, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 100, shuchusen1, 255 );

--SE
playSe( spep_2+22, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_2, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_2+92,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_3=spep_2+100;

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
entryFade(spep_3+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+94;

------------------------------------------------------
-- 手からビーム
------------------------------------------------------
--エフェクトの再生
beam = entryEffectLife( spep_4 + 0, SP_05, 150, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, beam, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 150, beam, 255 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 150, beam, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 48, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_4 + 38, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_4 + 40, shuchusen2, 1.54, 1.54 );
setEffScaleKey( spep_4 + 42, shuchusen2, 1.66, 1.66 );
setEffScaleKey( spep_4 + 44, shuchusen2, 1.86, 1.86 );
setEffScaleKey( spep_4 + 46, shuchusen2, 2.14, 2.14 );
setEffScaleKey( spep_4 + 48, shuchusen2, 2.5, 2.5 );

setEffRotateKey( spep_4 + 0, shuchusen2, 175 );
setEffRotateKey( spep_4 + 48, shuchusen2, 175 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen2, 255 );

--流線
ryusen2 = entryEffectLife( spep_4 + 0,  921, 148,0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, ryusen2, -6.3, 5.9 , 0 );
setEffMoveKey( spep_4 + 148, ryusen2, -6.3, 5.9 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.34, 1.34 );
setEffScaleKey( spep_4 + 116, ryusen2, 1.34, 1.34 );
setEffScaleKey( spep_4 + 148, ryusen2, 1.34, 1.34 );

setEffRotateKey( spep_4 + 0, ryusen2, -155 );
setEffRotateKey( spep_4 + 148, ryusen2, -155 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 148, ryusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-4 + 4,  10012, 118, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffMoveKey( spep_4-4 + 4, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_4-4 + 6, ctzuo, 89.5, 300.9 , 0 );
setEffMoveKey( spep_4-4 + 8, ctzuo, 85, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 10, ctzuo, 101.5, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 12, ctzuo, 86.1, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 14, ctzuo, 102.7, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 16, ctzuo, 87.3, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 18, ctzuo, 103.9, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 20, ctzuo, 88.5, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 22, ctzuo, 105.1, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 24, ctzuo, 89.7, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 26, ctzuo, 106.3, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 28, ctzuo, 90.9, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 30, ctzuo, 107.5, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 32, ctzuo, 92.1, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 34, ctzuo, 108.7, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 36, ctzuo, 93.3, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 38, ctzuo, 109.9, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 40, ctzuo, 94.5, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 42, ctzuo, 111.1, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 44, ctzuo, 95.7, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 46, ctzuo, 112.3, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 48, ctzuo, 96.9, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 50, ctzuo, 113.5, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 52, ctzuo, 98.1, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 54, ctzuo, 114.7, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 56, ctzuo, 99.3, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 58, ctzuo, 115.9, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 60, ctzuo, 100.5, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 62, ctzuo, 117, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 64, ctzuo, 101.6, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 66, ctzuo, 118.2, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 68, ctzuo, 102.8, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 70, ctzuo, 119.4, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 72, ctzuo, 104, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 74, ctzuo, 120.6, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 76, ctzuo, 105.2, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 78, ctzuo, 121.8, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 80, ctzuo, 106.4, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 82, ctzuo, 123, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 84, ctzuo, 107.6, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 86, ctzuo, 124.2, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 88, ctzuo, 108.8, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 90, ctzuo, 125.4, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 92, ctzuo, 110, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 94, ctzuo, 126.6, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 96, ctzuo, 111.2, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 98, ctzuo, 127.8, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 100, ctzuo, 112.4, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 102, ctzuo, 129, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 104, ctzuo, 113.6, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 106, ctzuo, 130.2, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 108, ctzuo, 114.8, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 110, ctzuo, 131.4, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 112, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 114, ctzuo, 144.8, 339.1 , 0 );
setEffMoveKey( spep_4-4 + 116, ctzuo, 132, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 118, ctzuo, 170.3, 329.5 , 0 );
setEffMoveKey( spep_4-4 + 120, ctzuo, 148, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 122, ctzuo, 156, 359.9 , 0 );

setEffScaleKey( spep_4-4 + 4, ctzuo, 0.5, 0.5 );
--setEffScaleKey( spep_4-4 + 6, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_4-4 + 8, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-4 + 112, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-4 + 114, ctzuo, 3.04, 3.04 );
setEffScaleKey( spep_4-4 + 116, ctzuo, 3.28, 3.28 );
setEffScaleKey( spep_4-4 + 118, ctzuo, 3.52, 3.52 );
setEffScaleKey( spep_4-4 + 120, ctzuo, 3.76, 3.76 );
setEffScaleKey( spep_4-4 + 122, ctzuo, 7, 7 );

setEffRotateKey( spep_4-4 + 4, ctzuo, 30 );
setEffRotateKey( spep_4-4 + 122, ctzuo, 30 );

setEffAlphaKey( spep_4-4 + 4, ctzuo, 0 );
setEffAlphaKey( spep_4-4 + 5, ctzuo, 255 );
setEffAlphaKey( spep_4-4 + 6, ctzuo, 255 );
setEffAlphaKey( spep_4-4 + 112, ctzuo, 255 );
setEffAlphaKey( spep_4-4 + 114, ctzuo, 204 );
setEffAlphaKey( spep_4-4 + 116, ctzuo, 153 );
setEffAlphaKey( spep_4-4 + 118, ctzuo, 102 );
setEffAlphaKey( spep_4-4 + 120, ctzuo, 51 );
setEffAlphaKey( spep_4-4 + 122, ctzuo, 0 );

setEffShake(spep_4-4 + 4,ctzuo,118,20);


--SE
playSe( spep_4, 1022); --鬱

--黒背景
entryFadeBg(spep_4, 0, 150, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+142,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_5=spep_4+150;

------------------------------------------------------
-- すごいのが当たる
------------------------------------------------------
--流線
ryuusen3 = entryEffectLife( spep_5 + 0,  921, 48, 0x80, -1, 0, -70, 0 );

setEffMoveKey( spep_5 + 0, ryuusen3, 0, -70 , 0 );
setEffMoveKey( spep_5 + 48, ryuusen3, 0, -70 , 0 );

setEffScaleKey( spep_5 + 0, ryuusen3, 1.14, 1.14 );
setEffScaleKey( spep_5 + 48, ryuusen3, 1.14, 1.14 );

setEffRotateKey( spep_5 + 0, ryuusen3, -155 );
setEffRotateKey( spep_5 + 48, ryuusen3, -155 );

setEffAlphaKey( spep_5 + 0, ryuusen3, 255 );
setEffAlphaKey( spep_5 + 48, ryuusen3, 255 );

--エフェクトの再生
hit2 = entryEffectLife( spep_5 + 0, SP_06, 50, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 50, hit2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, hit2, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, hit2, 255 );
setEffAlphaKey( spep_5 + 50, hit2, 255 );
setEffRotateKey( spep_5 + 0, hit2, 0 );
setEffRotateKey( spep_5 + 50, hit2, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 302.2, -234.9 , 0 );
setMoveKey( spep_5 + 2, 1, 305.1, -220.1 , 0 );
setMoveKey( spep_5 + 4, 1, 290, -221.3 , 0 );
setMoveKey( spep_5 + 6, 1, 291, -210.5 , 0 );
setMoveKey( spep_5 + 8, 1, 275.8, -211.7 , 0 );
setMoveKey( spep_5 + 10, 1, 276.8, -200.9 , 0 );
setMoveKey( spep_5 + 12, 1, 261.8, -202.1 , 0 );
setMoveKey( spep_5 + 14, 1, 262.7, -191.3 , 0 );
setMoveKey( spep_5 + 16, 1, 247.6, -192.5 , 0 );
setMoveKey( spep_5 + 18, 1, 248.6, -181.7 , 0 );
setMoveKey( spep_5 + 20, 1, 233.5, -182.9 , 0 );
setMoveKey( spep_5 + 22, 1, 234.5, -172.1 , 0 );
setMoveKey( spep_5 + 24, 1, 219.3, -173.3 , 0 );
setMoveKey( spep_5 + 26, 1, 223.1, -165 , 0 );
setMoveKey( spep_5 + 28, 1, 210.8, -168.6 , 0 );
setMoveKey( spep_5 + 30, 1, 214.6, -160.3 , 0 );
setMoveKey( spep_5 + 32, 1, 202.2, -163.9 , 0 );
setMoveKey( spep_5 + 34, 1, 205.9, -155.6 , 0 );
setMoveKey( spep_5 + 36, 1, 193.7, -159.2 , 0 );
setMoveKey( spep_5 + 38, 1, 197.4, -150.9 , 0 );
setMoveKey( spep_5 + 40, 1, 185.1, -154.5 , 0 );
setMoveKey( spep_5 + 42, 1, 188.8, -146.2 , 0 );
setMoveKey( spep_5 + 44, 1, 176.5, -149.8 , 0 );
setMoveKey( spep_5 + 46, 1, 180.2, -141.4 , 0 );
setMoveKey( spep_5 + 48, 1, 167.9, -145.1 , 0 );

a=0.2;

setScaleKey( spep_5 + 0, 1, 0.7-a, 0.7-a );
setScaleKey( spep_5 + 2, 1, 0.7-a, 0.7-a );
setScaleKey( spep_5 + 4, 1, 0.71-a, 0.71-a );
setScaleKey( spep_5 + 6, 1, 0.71-a, 0.71-a );
setScaleKey( spep_5 + 8, 1, 0.72-a, 0.72-a );
setScaleKey( spep_5 + 10, 1, 0.72-a, 0.72-a );
setScaleKey( spep_5 + 12, 1, 0.73-a, 0.73-a );
setScaleKey( spep_5 + 16, 1, 0.73-a, 0.73-a );
setScaleKey( spep_5 + 18, 1, 0.74-a, 0.74-a );
setScaleKey( spep_5 + 20, 1, 0.74-a, 0.74-a );
setScaleKey( spep_5 + 22, 1, 0.75-a, 0.75-a );
setScaleKey( spep_5 + 26, 1, 0.75-a, 0.75-a );
setScaleKey( spep_5 + 28, 1, 0.76-a, 0.76-a );
setScaleKey( spep_5 + 34, 1, 0.76-a, 0.76-a );
setScaleKey( spep_5 + 36, 1, 0.77-a, 0.77-a );
setScaleKey( spep_5 + 42, 1, 0.77-a, 0.77-a );
setScaleKey( spep_5 + 44, 1, 0.78-a, 0.78-a );
setScaleKey( spep_5 + 48, 1, 0.78-a, 0.78-a );

setRotateKey( spep_5 + 0, 1, -20 );
setRotateKey( spep_5 + 48, 1, -20 );

setShakeChara(spep_5,1,48,10);

--文字エントリー
ctzudododo2 = entryEffectLife( spep_5 + 0,  10014, 48, 0x100, -1, 0, 58.1, 364 );--ズドドドッ

setEffMoveKey( spep_5 + 0, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 2, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 4, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 6, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 8, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 10, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 12, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 14, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 16, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 18, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 36, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 38, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 40, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 42, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 44, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 46, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 48, ctzudododo2, 58.1, 364 , 0 );

setEffScaleKey( spep_5 + 0, ctzudododo2, 3.2, 3);
setEffScaleKey( spep_5 + 48, ctzudododo2, 3.2, 3 );

setEffRotateKey( spep_5 + 0, ctzudododo2, 72 );
setEffRotateKey( spep_5 + 48, ctzudododo2, 72 );

setEffAlphaKey( spep_5 + 0, ctzudododo2, 255 );
setEffAlphaKey( spep_5 + 48, ctzudododo2, 255 );

setEffShake(spep_5,ctzudododo2,48,20);

--SE
playSe( spep_5, 1021); --這い寄る

--黒背景
entryFadeBg(spep_5, 0, 50, 0, 0, 0, 0, 180);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_5+42,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_6=spep_5+50;

------------------------------------------------------
-- ギャン
------------------------------------------------------
--エフェクトの再生
gyan = entryEffectLife(  spep_6,  SP_07,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_6, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);
setEffShake( spep_6, ctgayn, 60, 10);

playSe(spep_6,SE_09);

entryFade( spep_6+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7= spep_6+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクトの再生
explosion = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7 + 160, explosion, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 160, explosion, 255 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 160, explosion, 0 );
--SE
playSe(spep_7,SE_10);

-- ダメージ表示
dealDamage(spep_7);
entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+150);

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 最初のシーン(88F)
------------------------------------------------------
spep_0 = 0;

--エフェクトの再生
gettu = entryEffectLife( spep_0 + 0, SP_01x, 128, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, gettu, 0, 0 , 0 );
setEffMoveKey( spep_0 + 128, gettu, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, gettu, 1.0, 1.0 );
setEffScaleKey( spep_0 + 128, gettu, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, gettu, 255 );
setEffAlphaKey( spep_0 + 128, gettu, 255 );
setEffRotateKey( spep_0 + 0, gettu, 0 );
setEffRotateKey( spep_0 + 128, gettu, 0 );

--文字エントリー
ctbibibi = entryEffectLife( spep_0-4 + 34,  10025, 92, 0x100, -1, 0, 105.2, 303.3 );--ビビビッ

setEffMoveKey( spep_0-4 + 34, ctbibibi, 105.2, 303.3 , 0 );
setEffMoveKey( spep_0-4 + 36, ctbibibi, 120.4, 304.3 , 0 );
setEffMoveKey( spep_0-4 + 38, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_0-4 + 40, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_0-4 + 42, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_0-4 + 44, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_0-4 + 46, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_0-4 + 48, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_0-4 + 50, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_0-4 + 52, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_0-4 + 54, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_0-4 + 56, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_0-4 + 58, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_0-4 + 60, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_0-4 + 62, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_0-4 + 64, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_0-4 + 66, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_0-4 + 68, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_0-4 + 70, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_0-4 + 72, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_0-4 + 74, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_0-4 + 76, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_0-4 + 78, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_0-4 + 80, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_0-4 + 82, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_0-4 + 84, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_0-4 + 86, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_0-4 + 88, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_0-4 + 90, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_0-4 + 92, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_0-4 + 94, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_0-4 + 96, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_0-4 + 98, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_0-4 + 100, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_0-4 + 102, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_0-4 + 104, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_0-4 + 106, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_0-4 + 108, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_0-4 + 110, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_0-4 + 112, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_0-4 + 114, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_0-4 + 116, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_0-4 + 118, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_0-4 + 120, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_0-4 + 122, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_0-4 + 124, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_0-4 + 126, ctbibibi, 124.6, 310.6 , 0 );

setEffScaleKey( spep_0-4 + 34, ctbibibi, 1.47, 1.47 );
setEffScaleKey( spep_0-4 + 36, ctbibibi, 1.66, 1.66 );
setEffScaleKey( spep_0-4 + 38, ctbibibi, 1.86, 1.86 );
setEffScaleKey( spep_0-4 + 126, ctbibibi, 1.86, 1.86 );

setEffRotateKey( spep_0-4 + 34, ctbibibi, 0 );
setEffRotateKey( spep_0-4 + 126, ctbibibi, 0 );

setEffAlphaKey( spep_0-4 + 34, ctbibibi, 0 );
setEffAlphaKey( spep_0-4 + 35, ctbibibi, 85 );
setEffAlphaKey( spep_0-4 + 36, ctbibibi, 170 );
setEffAlphaKey( spep_0-4 + 38, ctbibibi, 255 );
setEffAlphaKey( spep_0-4 + 126, ctbibibi, 255 );

setEffShake(spep_0-4 + 34,ctbibibi,92,20);

--流線
ryuusen1 = entryEffectLife( spep_0 + 0,  921, 126, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, ryuusen1, 1.0, 1 );
setEffScaleKey( spep_0 + 126, ryuusen1, 1.0, 1 );

setEffRotateKey( spep_0 + 0, ryuusen1, 180 );
setEffRotateKey( spep_0 + 126, ryuusen1, 180 );

setEffAlphaKey( spep_0 + 0, ryuusen1, 255 );
setEffAlphaKey( spep_0 + 126, ryuusen1, 255 );

--SE
SE1=playSe( spep_0, 17); --貯める
stopSe(30,SE1,0);
playSe( spep_0+32, 1016); --気弾
playSe( spep_0+42, 1016); --気弾
playSe( spep_0+52, 1016); --気弾
playSe( spep_0+62, 1016); --気弾
playSe( spep_0+72, 1016); --気弾
playSe( spep_0+82, 1016); --気弾
playSe( spep_0+92, 1016); --気弾
playSe( spep_0+102, 1016); --気弾

--黒背景
entryFadeBg(spep_0, 0, 126, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 8,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+120, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+110 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    --[[
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge , 1, 1.1, 1.1);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
    setRotateKey(SP_dodge+8,   1, 0 );
    ]]
    
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
    setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
--SE
playSe( spep_0+110, 1016); --気弾
playSe( spep_0+120, 1016); --気弾

--次の準備
spep_1=spep_0+128;

------------------------------------------------------
-- たくさん当たる
------------------------------------------------------
--エフェクトの再生(前)
hit_f = entryEffectLife( spep_1 + 0, SP_02x, 120, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 120, hit_f, 255 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 120, hit_f, 0 );

--エフェクトの再生(後)
hit_b = entryEffectLife( spep_1 + 0, SP_03x, 120, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, hit_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 120, hit_b, 255 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 120, hit_b, 0 );


--流線
ryuusen2 = entryEffectLife( spep_1 + 0,  921, 120, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, ryuusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryuusen2, 1, 1 );
setEffScaleKey( spep_1 + 120, ryuusen2, 1, 1 );

setEffRotateKey( spep_1 + 0, ryuusen2, 0 );
setEffRotateKey( spep_1 + 120, ryuusen2, 0 );

setEffAlphaKey( spep_1 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_1 + 120, ryuusen2, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_1+16 ,  10014, 102, 0x100, -1, 0, 63.6, 344.3 );--ズドドドッ

setEffMoveKey( spep_1 + 16, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 18, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 20, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 22, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 24, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 26, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 28, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 30, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 32, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 34, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 36, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 38, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 40, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 42, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 44, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 46, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 48, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 50, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 52, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 54, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 56, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 58, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 60, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 62, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 64, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 66, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 68, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 70, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 72, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 74, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 76, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 78, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 80, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 82, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 84, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 86, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 88, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 90, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 92, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 94, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 96, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 98, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 100, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 102, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 104, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 106, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 108, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 110, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 112, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 114, ctzudododo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_1 + 116, ctzudododo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_1 + 118, ctzudododo, 63.6, 344.3 , 0 );

setEffScaleKey( spep_1 + 16, ctzudododo, 3.26, 3.26 );
setEffScaleKey( spep_1 + 118, ctzudododo, 3.26, 3.26 );

setEffRotateKey( spep_1 + 16, ctzudododo, 5.1 );
setEffRotateKey( spep_1 + 118, ctzudododo, 5.1 );

setEffAlphaKey( spep_1 + 16, ctzudododo, 0 );
setEffAlphaKey( spep_1 + 17, ctzudododo, 255 );
setEffAlphaKey( spep_1 + 18, ctzudododo, 255 );
setEffAlphaKey( spep_1 + 118, ctzudododo, 255 );

setEffShake(spep_1+16,ctzudododo,102,20);

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 96, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 68, 1, 106 );

setMoveKey( spep_1 + 0, 1, -21.9, 12 , 0 );
setMoveKey( spep_1 + 2, 1, -17.9, 12.8 , 0 );
setMoveKey( spep_1 + 4, 1, -13.4, 12.8 , 0 );
setMoveKey( spep_1 + 6, 1, -6.5, 9.1 , 0 );
setMoveKey( spep_1 + 8, 1, 1.1, 12.4 , 0 );
setMoveKey( spep_1 + 10, 1, -1.7, 10.7 , 0 );
setMoveKey( spep_1 + 12, 1, 6, 14.6 , 0 );
setMoveKey( spep_1 + 14, 1, 5.2, 12.7 , 0 );
setMoveKey( spep_1 + 16, 1, 10.8, 8.1 , 0 );
setMoveKey( spep_1 + 18, 1, 11, 16.3 , 0 );
setMoveKey( spep_1 + 20, 1, 10.7, 9 , 0 );
setMoveKey( spep_1 + 22, 1, 12.2, 7.7 , 0 );
setMoveKey( spep_1 + 24, 1, 21, 9.5 , 0 );
setMoveKey( spep_1 + 26, 1, 17.5, 15.3 , 0 );
setMoveKey( spep_1 + 28, 1, 19.1, 7.4 , 0 );
setMoveKey( spep_1 + 30, 1, 22.5, 11.2 , 0 );
setMoveKey( spep_1 + 32, 1, 13.6, 10.2 , 0 );
setMoveKey( spep_1 + 34, 1, 22, 17.8 , 0 );
setMoveKey( spep_1 + 36, 1, 21.3, 18.2 , 0 );
setMoveKey( spep_1 + 38, 1, 14.1, 10.3 , 0 );
setMoveKey( spep_1 + 40, 1, 19.3, 5.8 , 0 );
setMoveKey( spep_1 + 42, 1, 23.7, 13.1 , 0 );
setMoveKey( spep_1 + 44, 1, 11.1, 14.4 , 0 );
setMoveKey( spep_1 + 46, 1, 12.4, 8.4 , 0 );
setMoveKey( spep_1 + 48, 1, 22.1, 3.2 , 0 );
setMoveKey( spep_1 + 50, 1, 11.5, 18.8 , 0 );
setMoveKey( spep_1 + 52, 1, 26.3, 7.6 , 0 );
setMoveKey( spep_1 + 54, 1, 9.7, 14.6 , 0 );
setMoveKey( spep_1 + 56, 1, 9, 10.1 , 0 );
setMoveKey( spep_1 + 58, 1, 21.5, 22.5 , 0 );
setMoveKey( spep_1 + 60, 1, 21.1, 5 , 0 );
setMoveKey( spep_1 + 62, 1, 24.7, 18 , 0 );
setMoveKey( spep_1 + 64, 1, 12.3, 4.7 , 0 );
setMoveKey( spep_1 + 66, 1, 21.8, 5.5 , 0 );
setMoveKey( spep_1 + 68, 1, 7.8, 12.3 , 0 );
setMoveKey( spep_1 + 68, 1, 75.4, 28.2 , 0 );
setMoveKey( spep_1 + 70, 1, 113.5, 34 , 0 );
setMoveKey( spep_1 + 72, 1, 152.2, 36.7 , 0 );
setMoveKey( spep_1 + 74, 1, 191, 36.5 , 0 );
setMoveKey( spep_1 + 76, 1, 229.9, 33.8 , 0 );
setMoveKey( spep_1 + 78, 1, 268.5, 29 , 0 );
setMoveKey( spep_1 + 80, 1, 307, 22.5 , 0 );
setMoveKey( spep_1 + 82, 1, 345.1, 14.7 , 0 );
setMoveKey( spep_1 + 84, 1, 383.1, 6.1 , 0 );
setMoveKey( spep_1 + 86, 1, 421, -3 , 0 );
setMoveKey( spep_1 + 88, 1, 458.7, -12.4 , 0 );
setMoveKey( spep_1 + 90, 1, 496.4, -21.6 , 0 );
setMoveKey( spep_1 + 92, 1, 534, -30.7 , 0 );
setMoveKey( spep_1 + 94, 1, 571.8, -39.3 , 0 );
setMoveKey( spep_1 + 96, 1, 609.7, -47.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 2, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 6, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 8, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 10, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 12, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 14, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 16, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 68, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 70, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 72, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 74, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 76, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 78, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 80, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 84, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 86, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 88, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 90, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 92, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 94, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 96, 1, 0.9, 0.9 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 66, 1, 0 );
setRotateKey( spep_1 + 68, 1, 10 );
setRotateKey( spep_1 + 70, 1, 12.1 );
setRotateKey( spep_1 + 72, 1, 14.3 );
setRotateKey( spep_1 + 74, 1, 16.4 );
setRotateKey( spep_1 + 76, 1, 18.6 );
setRotateKey( spep_1 + 78, 1, 20.7 );
setRotateKey( spep_1 + 80, 1, 22.9 );
setRotateKey( spep_1 + 82, 1, 25 );
setRotateKey( spep_1 + 84, 1, 27.1 );
setRotateKey( spep_1 + 86, 1, 29.3 );
setRotateKey( spep_1 + 88, 1, 31.4 );
setRotateKey( spep_1 + 90, 1, 33.6 );
setRotateKey( spep_1 + 92, 1, 35.7 );
setRotateKey( spep_1 + 94, 1, 37.9 );
setRotateKey( spep_1 + 96, 1, 40 );

setShakeChara(spep_1+68,1,28,10);
--SE
--[[
playSe( spep_1+18, 1023); --爆発
playSe( spep_1+34, 1023); --爆発
playSe( spep_1+46, 1023); --爆発
playSe( spep_1+56, 1023); --爆発
playSe( spep_1+72, 1023); --爆発
--playSe( spep_1+112, 1023); --爆発
]]
--v4.11調整
SE001 = playSe( spep_1+18, 1023); --爆発
setSeVolume(spep_1+18,1023,80);

SE002 = playSe( spep_1+34, 1023); --爆発
setSeVolume(spep_1+34,1023,80);

SE003 = playSe( spep_1+46, 1023); --爆発
setSeVolume(spep_1+46,1023,80);

SE004 = playSe( spep_1+56, 1023); --爆発
setSeVolume(spep_1+56,1023,80);

SE005 = playSe( spep_1+72, 1023); --爆発
setSeVolume(spep_1+72,1023,80);

--黒背景
entryFadeBg(spep_1, 0, 120, 0, 0, 0, 0, 190);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_1+112,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+120;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
--エフェクトの再生
tame = entryEffectLife( spep_2 + 0, SP_04x, 100, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, -1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );

--顔カットイン
--speff=entryEffect(spep_2+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_2+22,190006,78,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_2+22,ctgogo,0,520,0);
setEffMoveKey(spep_2+100,ctgogo,0,520,0);

setEffScaleKey(spep_2+22, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+100, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_2 +22, ctgogo, 0 );
setEffAlphaKey( spep_2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_2 + 100, ctgogo, 255 );

setEffRotateKey(spep_2+22,ctgogo,0);
setEffRotateKey(spep_2+100,ctgogo,0);

--集中
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_2 + 100, shuchusen1, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 100, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 100, shuchusen1, 255 );

--SE
playSe( spep_2+22, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_2, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_2+92,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_3=spep_2+100;

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
entryFade(spep_3+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+94;

------------------------------------------------------
-- 手からビーム
------------------------------------------------------
--エフェクトの再生
beam = entryEffectLife( spep_4 + 0, SP_05x, 150, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, beam, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 150, beam, 255 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 150, beam, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 48, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_4 + 38, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_4 + 40, shuchusen2, 1.54, 1.54 );
setEffScaleKey( spep_4 + 42, shuchusen2, 1.66, 1.66 );
setEffScaleKey( spep_4 + 44, shuchusen2, 1.86, 1.86 );
setEffScaleKey( spep_4 + 46, shuchusen2, 2.14, 2.14 );
setEffScaleKey( spep_4 + 48, shuchusen2, 2.5, 2.5 );

setEffRotateKey( spep_4 + 0, shuchusen2, 175 );
setEffRotateKey( spep_4 + 48, shuchusen2, 175 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen2, 255 );

--流線
ryusen2 = entryEffectLife( spep_4 + 0,  921, 148,0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, ryusen2, -6.3, 5.9 , 0 );
setEffMoveKey( spep_4 + 148, ryusen2, -6.3, 5.9 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.34, 1.34 );
setEffScaleKey( spep_4 + 116, ryusen2, 1.34, 1.34 );
setEffScaleKey( spep_4 + 148, ryusen2, 1.34, 1.34 );

setEffRotateKey( spep_4 + 0, ryusen2, -155 );
setEffRotateKey( spep_4 + 148, ryusen2, -155 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 148, ryusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-4 + 4,  10012, 118, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffMoveKey( spep_4-4 + 4, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_4-4 + 6, ctzuo, 89.5, 300.9 , 0 );
setEffMoveKey( spep_4-4 + 8, ctzuo, 85, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 10, ctzuo, 101.5, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 12, ctzuo, 86.1, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 14, ctzuo, 102.7, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 16, ctzuo, 87.3, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 18, ctzuo, 103.9, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 20, ctzuo, 88.5, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 22, ctzuo, 105.1, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 24, ctzuo, 89.7, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 26, ctzuo, 106.3, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 28, ctzuo, 90.9, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 30, ctzuo, 107.5, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 32, ctzuo, 92.1, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 34, ctzuo, 108.7, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 36, ctzuo, 93.3, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 38, ctzuo, 109.9, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 40, ctzuo, 94.5, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 42, ctzuo, 111.1, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 44, ctzuo, 95.7, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 46, ctzuo, 112.3, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 48, ctzuo, 96.9, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 50, ctzuo, 113.5, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 52, ctzuo, 98.1, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 54, ctzuo, 114.7, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 56, ctzuo, 99.3, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 58, ctzuo, 115.9, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 60, ctzuo, 100.5, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 62, ctzuo, 117, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 64, ctzuo, 101.6, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 66, ctzuo, 118.2, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 68, ctzuo, 102.8, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 70, ctzuo, 119.4, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 72, ctzuo, 104, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 74, ctzuo, 120.6, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 76, ctzuo, 105.2, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 78, ctzuo, 121.8, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 80, ctzuo, 106.4, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 82, ctzuo, 123, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 84, ctzuo, 107.6, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 86, ctzuo, 124.2, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 88, ctzuo, 108.8, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 90, ctzuo, 125.4, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 92, ctzuo, 110, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 94, ctzuo, 126.6, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 96, ctzuo, 111.2, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 98, ctzuo, 127.8, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 100, ctzuo, 112.4, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 102, ctzuo, 129, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 104, ctzuo, 113.6, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 106, ctzuo, 130.2, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 108, ctzuo, 114.8, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 110, ctzuo, 131.4, 343.9 , 0 );
setEffMoveKey( spep_4-4 + 112, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 114, ctzuo, 144.8, 339.1 , 0 );
setEffMoveKey( spep_4-4 + 116, ctzuo, 132, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 118, ctzuo, 170.3, 329.5 , 0 );
setEffMoveKey( spep_4-4 + 120, ctzuo, 148, 359.9 , 0 );
setEffMoveKey( spep_4-4 + 122, ctzuo, 156, 359.9 , 0 );

setEffScaleKey( spep_4-4 + 4, ctzuo, 0.5, 0.5 );
--setEffScaleKey( spep_4-4 + 6, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_4-4 + 8, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-4 + 112, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-4 + 114, ctzuo, 3.04, 3.04 );
setEffScaleKey( spep_4-4 + 116, ctzuo, 3.28, 3.28 );
setEffScaleKey( spep_4-4 + 118, ctzuo, 3.52, 3.52 );
setEffScaleKey( spep_4-4 + 120, ctzuo, 3.76, 3.76 );
setEffScaleKey( spep_4-4 + 122, ctzuo, 7, 7 );

setEffRotateKey( spep_4-4 + 4, ctzuo, 30 );
setEffRotateKey( spep_4-4 + 122, ctzuo, 30 );

setEffAlphaKey( spep_4-4 + 4, ctzuo, 0 );
setEffAlphaKey( spep_4-4 + 5, ctzuo, 255 );
setEffAlphaKey( spep_4-4 + 6, ctzuo, 255 );
setEffAlphaKey( spep_4-4 + 112, ctzuo, 255 );
setEffAlphaKey( spep_4-4 + 114, ctzuo, 204 );
setEffAlphaKey( spep_4-4 + 116, ctzuo, 153 );
setEffAlphaKey( spep_4-4 + 118, ctzuo, 102 );
setEffAlphaKey( spep_4-4 + 120, ctzuo, 51 );
setEffAlphaKey( spep_4-4 + 122, ctzuo, 0 );

setEffShake(spep_4-4 + 4,ctzuo,118,20);


--SE
playSe( spep_4, 1022); --鬱

--黒背景
entryFadeBg(spep_4, 0, 150, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+142,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_5=spep_4+150;

------------------------------------------------------
-- すごいのが当たる
------------------------------------------------------
--流線
ryuusen3 = entryEffectLife( spep_5 + 0,  921, 48, 0x80, -1, 0, -70, 0 );

setEffMoveKey( spep_5 + 0, ryuusen3, 0, -70 , 0 );
setEffMoveKey( spep_5 + 48, ryuusen3, 0, -70 , 0 );

setEffScaleKey( spep_5 + 0, ryuusen3, 1.14, 1.14 );
setEffScaleKey( spep_5 + 48, ryuusen3, 1.14, 1.14 );

setEffRotateKey( spep_5 + 0, ryuusen3, -155 );
setEffRotateKey( spep_5 + 48, ryuusen3, -155 );

setEffAlphaKey( spep_5 + 0, ryuusen3, 255 );
setEffAlphaKey( spep_5 + 48, ryuusen3, 255 );

--エフェクトの再生
hit2 = entryEffectLife( spep_5 + 0, SP_06x, 50, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 50, hit2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, hit2, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, hit2, 255 );
setEffAlphaKey( spep_5 + 50, hit2, 255 );
setEffRotateKey( spep_5 + 0, hit2, 0 );
setEffRotateKey( spep_5 + 50, hit2, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 302.2, -234.9 , 0 );
setMoveKey( spep_5 + 2, 1, 305.1, -220.1 , 0 );
setMoveKey( spep_5 + 4, 1, 290, -221.3 , 0 );
setMoveKey( spep_5 + 6, 1, 291, -210.5 , 0 );
setMoveKey( spep_5 + 8, 1, 275.8, -211.7 , 0 );
setMoveKey( spep_5 + 10, 1, 276.8, -200.9 , 0 );
setMoveKey( spep_5 + 12, 1, 261.8, -202.1 , 0 );
setMoveKey( spep_5 + 14, 1, 262.7, -191.3 , 0 );
setMoveKey( spep_5 + 16, 1, 247.6, -192.5 , 0 );
setMoveKey( spep_5 + 18, 1, 248.6, -181.7 , 0 );
setMoveKey( spep_5 + 20, 1, 233.5, -182.9 , 0 );
setMoveKey( spep_5 + 22, 1, 234.5, -172.1 , 0 );
setMoveKey( spep_5 + 24, 1, 219.3, -173.3 , 0 );
setMoveKey( spep_5 + 26, 1, 223.1, -165 , 0 );
setMoveKey( spep_5 + 28, 1, 210.8, -168.6 , 0 );
setMoveKey( spep_5 + 30, 1, 214.6, -160.3 , 0 );
setMoveKey( spep_5 + 32, 1, 202.2, -163.9 , 0 );
setMoveKey( spep_5 + 34, 1, 205.9, -155.6 , 0 );
setMoveKey( spep_5 + 36, 1, 193.7, -159.2 , 0 );
setMoveKey( spep_5 + 38, 1, 197.4, -150.9 , 0 );
setMoveKey( spep_5 + 40, 1, 185.1, -154.5 , 0 );
setMoveKey( spep_5 + 42, 1, 188.8, -146.2 , 0 );
setMoveKey( spep_5 + 44, 1, 176.5, -149.8 , 0 );
setMoveKey( spep_5 + 46, 1, 180.2, -141.4 , 0 );
setMoveKey( spep_5 + 48, 1, 167.9, -145.1 , 0 );

a=0.2;

setScaleKey( spep_5 + 0, 1, 0.7-a, 0.7-a );
setScaleKey( spep_5 + 2, 1, 0.7-a, 0.7-a );
setScaleKey( spep_5 + 4, 1, 0.71-a, 0.71-a );
setScaleKey( spep_5 + 6, 1, 0.71-a, 0.71-a );
setScaleKey( spep_5 + 8, 1, 0.72-a, 0.72-a );
setScaleKey( spep_5 + 10, 1, 0.72-a, 0.72-a );
setScaleKey( spep_5 + 12, 1, 0.73-a, 0.73-a );
setScaleKey( spep_5 + 16, 1, 0.73-a, 0.73-a );
setScaleKey( spep_5 + 18, 1, 0.74-a, 0.74-a );
setScaleKey( spep_5 + 20, 1, 0.74-a, 0.74-a );
setScaleKey( spep_5 + 22, 1, 0.75-a, 0.75-a );
setScaleKey( spep_5 + 26, 1, 0.75-a, 0.75-a );
setScaleKey( spep_5 + 28, 1, 0.76-a, 0.76-a );
setScaleKey( spep_5 + 34, 1, 0.76-a, 0.76-a );
setScaleKey( spep_5 + 36, 1, 0.77-a, 0.77-a );
setScaleKey( spep_5 + 42, 1, 0.77-a, 0.77-a );
setScaleKey( spep_5 + 44, 1, 0.78-a, 0.78-a );
setScaleKey( spep_5 + 48, 1, 0.78-a, 0.78-a );

setRotateKey( spep_5 + 0, 1, -20 );
setRotateKey( spep_5 + 48, 1, -20 );

setShakeChara(spep_5,1,48,10);

--文字エントリー
ctzudododo2 = entryEffectLife( spep_5 + 0,  10014, 48, 0x100, -1, 0, 58.1, 364 );--ズドドドッ

setEffMoveKey( spep_5 + 0, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 2, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 4, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 6, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 8, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 10, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 12, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 14, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 16, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 18, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 36, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 38, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 40, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 42, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 44, ctzudododo2, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 46, ctzudododo2, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 48, ctzudododo2, 58.1, 364 , 0 );

setEffScaleKey( spep_5 + 0, ctzudododo2, 3.2, 3);
setEffScaleKey( spep_5 + 48, ctzudododo2, 3.2, 3 );

setEffRotateKey( spep_5 + 0, ctzudododo2, 2 );
setEffRotateKey( spep_5 + 48, ctzudododo2, 2 );

setEffAlphaKey( spep_5 + 0, ctzudododo2, 255 );
setEffAlphaKey( spep_5 + 48, ctzudododo2, 255 );

setEffShake(spep_5,ctzudododo2,48,20);

--SE
playSe( spep_5, 1021); --這い寄る

--黒背景
entryFadeBg(spep_5, 0, 50, 0, 0, 0, 0, 180);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_5+42,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_6=spep_5+50;

------------------------------------------------------
-- ギャン
------------------------------------------------------
--エフェクトの再生
gyan = entryEffectLife(  spep_6,  SP_07x,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_6, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);
setEffShake( spep_6, ctgayn, 60, 10);

playSe(spep_6,SE_09);

entryFade( spep_6+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7= spep_6+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクトの再生
explosion = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7 + 160, explosion, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 160, explosion, 255 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 160, explosion, 0 );
--SE
playSe(spep_7,SE_10);

-- ダメージ表示
dealDamage(spep_7);
entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+150);

end
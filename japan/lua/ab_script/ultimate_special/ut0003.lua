--アクティブスキル　つらぬけーっ！

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
SP_01=  153176  ;-- 気ため
SP_02=  153177  ;-- 上昇手前
SP_03=  153178  ;-- 上昇奥
SP_04=  153179  ;-- 上昇からの突き
SP_00=  153184  ;-- ズン手前
SP_05=  153180  ;-- ズン中央
SP_06=  153181  ;--ズン奥
SP_07=  153183  ;--ダメージ
SP_08=  153182  ;--KO表示

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

------------------------------------------------------
--気ため
------------------------------------------------------
--エフェクト
spep_0=0;

--背景の黒塗り
entryFadeBg( spep_0 +110, 0, 94, 0, 8, 8, 8, 255);      -- black fade

--溜め！
tame=entryEffectLife(spep_0,SP_01,250,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 250, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+250,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+250,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+250,tame,255);


--書き文字(ドンッ)
ct_don = entryEffectLife( spep_0 + 200,  10052, 50, 0x100, -1, 0, -102.8, -292.3 );  --ドン
setEffMoveKey( spep_0 + 200, ct_don, -102.8, -292.3 , 0 );
setEffMoveKey( spep_0 + 202, ct_don, -125.7, -161.4 , 0 );
setEffMoveKey( spep_0 + 204, ct_don, -131.6, -68 , 0 );
setEffMoveKey( spep_0 + 206, ct_don, -142.6, 20.6 , 0 );
setEffMoveKey( spep_0 + 208, ct_don, -158.2, 47.3 , 0 );
setEffMoveKey( spep_0 + 210, ct_don, -155.2, 70 , 0 );
setEffMoveKey( spep_0 + 212, ct_don, -161.4, 70.6 , 0 );
setEffMoveKey( spep_0 + 214, ct_don, -149.2, 60.6 , 0 );
setEffMoveKey( spep_0 + 216, ct_don, -150.5, 79.7 , 0 );
setEffMoveKey( spep_0 + 218, ct_don, -160.5, 61.4 , 0 );
setEffMoveKey( spep_0 + 220, ct_don, -153.2, 76.7 , 0 );
setEffMoveKey( spep_0 + 222, ct_don, -166.2, 67.2 , 0 );
setEffMoveKey( spep_0 + 224, ct_don, -144.3, 71 , 0 );
setEffMoveKey( spep_0 + 226, ct_don, -160.6, 67.6 , 0 );
setEffMoveKey( spep_0 + 228, ct_don, -152.7, 80.3 , 0 );
setEffMoveKey( spep_0 + 230, ct_don, -162.8, 62.9 , 0 );
setEffMoveKey( spep_0 + 232, ct_don, -156, 76.9 , 0 );
setEffMoveKey( spep_0 + 234, ct_don, -146.1, 65.9 , 0 );
setEffMoveKey( spep_0 + 236, ct_don, -161.4, 77.3 , 0 );
setEffMoveKey( spep_0 + 238, ct_don, -166.8, 67.2 , 0 );
setEffMoveKey( spep_0 + 240, ct_don, -143.4, 71.2 , 0 );
setEffMoveKey( spep_0 + 242, ct_don, -161, 67.5 , 0 );
setEffMoveKey( spep_0 + 244, ct_don, -152.4, 81.3 , 0 );
setEffMoveKey( spep_0 + 246, ct_don, -163.5, 62.2 , 0 );
setEffMoveKey( spep_0 + 248, ct_don, -156, 77.7 , 0 );
setEffMoveKey( spep_0 + 250, ct_don, -156, 77.8 , 0 );

setEffScaleKey( spep_0 + 200, ct_don, 0.92, 0.92 );
setEffScaleKey( spep_0 + 202, ct_don, 1.28, 1.28 );
setEffScaleKey( spep_0 + 204, ct_don, 1.55, 1.55 );
setEffScaleKey( spep_0 + 206, ct_don, 1.75, 1.75 );
setEffScaleKey( spep_0 + 208, ct_don, 1.87, 1.87 );
setEffScaleKey( spep_0 + 210, ct_don, 1.91, 1.91 );
setEffScaleKey( spep_0 + 212, ct_don, 1.92, 1.92 );
setEffScaleKey( spep_0 + 214, ct_don, 1.94, 1.94 );
setEffScaleKey( spep_0 + 216, ct_don, 1.96, 1.96 );
setEffScaleKey( spep_0 + 218, ct_don, 1.97, 1.97 );
setEffScaleKey( spep_0 + 220, ct_don, 1.99, 1.99 );
setEffScaleKey( spep_0 + 222, ct_don, 2, 2 );
setEffScaleKey( spep_0 + 224, ct_don, 2.02, 2.02 );
setEffScaleKey( spep_0 + 226, ct_don, 2.03, 2.03 );
setEffScaleKey( spep_0 + 228, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_0 + 230, ct_don, 2.06, 2.06 );
setEffScaleKey( spep_0 + 232, ct_don, 2.08, 2.08 );
setEffScaleKey( spep_0 + 234, ct_don, 2.09, 2.09 );
setEffScaleKey( spep_0 + 236, ct_don, 2.11, 2.11 );
setEffScaleKey( spep_0 + 238, ct_don, 2.12, 2.12 );
setEffScaleKey( spep_0 + 240, ct_don, 2.16, 2.16 );
setEffScaleKey( spep_0 + 242, ct_don, 2.2, 2.2 );
setEffScaleKey( spep_0 + 244, ct_don, 2.23, 2.23 );
setEffScaleKey( spep_0 + 246, ct_don, 2.26, 2.26 );
setEffScaleKey( spep_0 + 248, ct_don, 2.29, 2.29 );
setEffScaleKey( spep_0 + 250, ct_don, 2.31, 2.31 );

setEffRotateKey( spep_0 + 200, ct_don, 0.7 );
setEffRotateKey( spep_0 + 202, ct_don, 0.4 );
setEffRotateKey( spep_0 + 204, ct_don, 0.3 );
setEffRotateKey( spep_0 + 206, ct_don, 0.1 );
setEffRotateKey( spep_0 + 208, ct_don, 0 );
setEffRotateKey( spep_0 + 250, ct_don, 0 );

setEffAlphaKey( spep_0 + 200, ct_don, 255 );
setEffAlphaKey( spep_0 + 238, ct_don, 255 );
setEffAlphaKey( spep_0 + 240, ct_don, 199 );
setEffAlphaKey( spep_0 + 242, ct_don, 148 );
setEffAlphaKey( spep_0 + 244, ct_don, 103 );
setEffAlphaKey( spep_0 + 246, ct_don, 63 );
setEffAlphaKey( spep_0 + 248, ct_don, 29 );
setEffAlphaKey( spep_0 + 250, ct_don, 0 );


--背景の流線
ryusen = entryEffectLife(spep_0 +110, 914, 130, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_0 +110, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 +240, ryusen, 0, 0 , 0 );
setEffScaleKey(spep_0 +110, ryusen, 1.5, 1.5);
setEffScaleKey(spep_0 +240, ryusen, 1.5, 1.5);
setEffRotateKey(spep_0 +110, ryusen, 63);
setEffRotateKey(spep_0 +240, ryusen, 63);
setEffAlphaKey(spep_0 +110, ryusen, 0);
setEffAlphaKey(spep_0 +190, ryusen, 255);
setEffAlphaKey(spep_0 +240, ryusen, 255);


-- ** ボイス ** --
playVoice(  spep_0+30,  105);  --はああああっ！
setVoiceVolume(  spep_0+30,  105,  2000);

playVoice(  spep_0+146,  104);  --はぁーーーっ！
setVoiceVolume(  spep_0+146,  104,  2000);  

-- ** SE ** --
playSe(  spep_0+70,  1035); --拳ビリビリ
setSeVolume(  spep_0+70,  1035,  200);
playSe(  spep_0+140,  8);  --下に向かって
setSeVolume(  spep_0+140,  8,  200);
playSe(  spep_0+200,  9);  --飛ぶ
setSeVolume(  spep_0+200,  9,  200);
playSe(  spep_0+230,  1022);
setSeVolume(  spep_0+230,  1022,  200);

-- ** 次の準備 ** --
spep_1 = spep_0 + 250;

------------------------------------------------------
--上昇(260F)
------------------------------------------------------

ct_guo = entryEffectLife( spep_1 + 0,  10061, 258, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, ct_guo, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258, ct_guo, 0, 0 , 0 );

a = 1

setEffScaleKey( spep_1 + 0, ct_guo, 0.64, 0.64 );
setEffScaleKey( spep_1 + 90, ct_guo, 0.64, 0.64 );
setEffScaleKey( spep_1 + 92, ct_guo, 0.74, 0.74 );
setEffScaleKey( spep_1 + 94, ct_guo, 0.87, 0.87 );
setEffScaleKey( spep_1 + 96, ct_guo, 1.05, 1.05 );
setEffScaleKey( spep_1 + 98, ct_guo, 1.55, 1.55 );
setEffScaleKey( spep_1 + 100, ct_guo, 2.23-a, 2.23-a );
setEffScaleKey( spep_1 + 102, ct_guo, 2.39-a, 2.39-a );
setEffScaleKey( spep_1 + 104, ct_guo, 2.38-a, 2.38-a );
setEffScaleKey( spep_1 + 106, ct_guo, 2.24-a, 2.24-a );
setEffScaleKey( spep_1 + 108, ct_guo, 2.33-a, 2.33-a );
setEffScaleKey( spep_1 + 110, ct_guo, 2.22-a, 2.22-a );
setEffScaleKey( spep_1 + 112, ct_guo, 2.28-a, 2.28-a );
setEffScaleKey( spep_1 + 114, ct_guo, 2.2-a, 2.2-a );
setEffScaleKey( spep_1 + 116, ct_guo, 2.29-a, 2.29-a );
setEffScaleKey( spep_1 + 118, ct_guo, 2.16-a, 2.16-a );
setEffScaleKey( spep_1 + 256, ct_guo, 2.17-a, 2.17-a );
setEffScaleKey( spep_1 + 258, ct_guo, 2.21-a, 2.21-a );

setEffRotateKey( spep_1 + 0, ct_guo, 0 );
setEffRotateKey( spep_1 + 258, ct_guo, 0 );

setEffAlphaKey( spep_1 + 0, ct_guo, 0 );
setEffAlphaKey( spep_1 + 89, ct_guo, 2 );
setEffAlphaKey( spep_1 + 90, ct_guo, 2 );
setEffAlphaKey( spep_1 + 92, ct_guo, 10 );
setEffAlphaKey( spep_1 + 94, ct_guo, 25 );
setEffAlphaKey( spep_1 + 96, ct_guo, 54 );
setEffAlphaKey( spep_1 + 98, ct_guo, 114 );
setEffAlphaKey( spep_1 + 100, ct_guo, 225 );
setEffAlphaKey( spep_1 + 102, ct_guo, 255 );
setEffAlphaKey( spep_1 + 258, ct_guo, 255 );

--エフェクト
up_b=entryEffectLife(spep_1,SP_03,170,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, up_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 170, up_b, 0, 0 , 0 );
setEffScaleKey(spep_1,up_b,1.0,1.0);
setEffScaleKey(spep_1+170,up_b,1.0,1.0);
setEffRotateKey(spep_1,up_b,0);
setEffRotateKey(spep_1+170,up_b,0);
setEffAlphaKey(spep_1,up_b,255);
setEffAlphaKey(spep_1+170,up_b,255);

--エフェクト
up_f=entryEffectLife(spep_1+1,SP_02,170,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 1, up_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 170, up_f, 0, 0 , 0 );
setEffScaleKey(spep_1+1,up_f,1.0,1.0);
setEffScaleKey(spep_1+170,up_f,1.0,1.0);
setEffRotateKey(spep_1+1,up_f,0);
setEffRotateKey(spep_1+170,up_f,0);
setEffAlphaKey(spep_1+1,up_f,255);
setEffAlphaKey(spep_1+170,up_f,255);

--***音***--
playSe(  spep_1,  1021);  --上昇
setSeVolume(  spep_1,  1021,  200);
playSe(  spep_1+90,  1072);  --グオッ
setSeVolume(  spep_1+90,  1072,  200);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 58 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-13,SE3,0);
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,313.5, -130 , 0 );
    setScaleKey(SP_dodge , 1, 0.8, 0.8);
    setRotateKey(SP_dodge,   1, 0 );
    
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1,313.5, -130 , 0 );
    setScaleKey(SP_dodge+10 , 1, 0.8, 0.8);
    setRotateKey(SP_dodge+10,   1, 0 );
    
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
-- ** 次の準備 ** --
spep_2 = spep_1 + 170-26;
--------------------------------------
--突き(550F)
--------------------------------------

ct_gyin = entryEffectLife( spep_2 + 76,  10055, 46, 0x100, -1, 0, 10.1, -475.3 );
setEffMoveKey( spep_2 + 76, ct_gyin, 10.1, -475.3 , 0 );
setEffMoveKey( spep_2 + 78, ct_gyin, 25.2, -461.6 , 0 );
setEffMoveKey( spep_2 + 80, ct_gyin, 36.3, -451.6 , 0 );
setEffMoveKey( spep_2 + 82, ct_gyin, 43.2, -445.4 , 0 );
setEffMoveKey( spep_2 + 84, ct_gyin, 50.8, -438.5 , 0 );
setEffMoveKey( spep_2 + 86, ct_gyin, 58.5, -431.5 , 0 );
setEffMoveKey( spep_2 + 88, ct_gyin, 66.2, -424.6 , 0 );
setEffMoveKey( spep_2 + 90, ct_gyin, 73.8, -417.7 , 0 );
setEffMoveKey( spep_2 + 92, ct_gyin, 81.5, -410.7 , 0 );
setEffMoveKey( spep_2 + 94, ct_gyin, 89.2, -403.8 , 0 );
setEffMoveKey( spep_2 + 96, ct_gyin, 96.8, -396.8 , 0 );
setEffMoveKey( spep_2 + 98, ct_gyin, 104.5, -389.9 , 0 );
setEffMoveKey( spep_2 + 100, ct_gyin, 112.2, -383 , 0 );
setEffMoveKey( spep_2 + 102, ct_gyin, 119.8, -376 , 0 );
setEffMoveKey( spep_2 + 104, ct_gyin, 127.5, -369.1 , 0 );
setEffMoveKey( spep_2 + 106, ct_gyin, 135.2, -362.2 , 0 );
setEffMoveKey( spep_2 + 108, ct_gyin, 142.8, -355.2 , 0 );
setEffMoveKey( spep_2 + 110, ct_gyin, 150.5, -348.3 , 0 );
setEffMoveKey( spep_2 + 112, ct_gyin, 158.2, -341.3 , 0 );
setEffMoveKey( spep_2 + 114, ct_gyin, 165.8, -334.4 , 0 );
setEffMoveKey( spep_2 + 116, ct_gyin, 173.5, -327.5 , 0 );
setEffMoveKey( spep_2 + 118, ct_gyin, 181.2, -320.5 , 0 );
setEffMoveKey( spep_2 + 120, ct_gyin, 188.8, -313.6 , 0 );
setEffMoveKey( spep_2 + 122, ct_gyin, 196.5, -306.6 , 0 );

setEffScaleKey( spep_2 + 76, ct_gyin, 0.85, 0.85 );
setEffScaleKey( spep_2 + 78, ct_gyin, 0.91, 0.91 );
setEffScaleKey( spep_2 + 80, ct_gyin, 0.96, 0.96 );
setEffScaleKey( spep_2 + 82, ct_gyin, 0.99, 0.99 );
setEffScaleKey( spep_2 + 84, ct_gyin, 1.02, 1.02 );
setEffScaleKey( spep_2 + 86, ct_gyin, 1.06, 1.06 );
setEffScaleKey( spep_2 + 88, ct_gyin, 1.09, 1.09 );
setEffScaleKey( spep_2 + 90, ct_gyin, 1.12, 1.12 );
setEffScaleKey( spep_2 + 92, ct_gyin, 1.16, 1.16 );
setEffScaleKey( spep_2 + 94, ct_gyin, 1.19, 1.19 );
setEffScaleKey( spep_2 + 96, ct_gyin, 1.23, 1.23 );
setEffScaleKey( spep_2 + 98, ct_gyin, 1.26, 1.26 );
setEffScaleKey( spep_2 + 100, ct_gyin, 1.29, 1.29 );
setEffScaleKey( spep_2 + 102, ct_gyin, 1.33, 1.33 );
setEffScaleKey( spep_2 + 104, ct_gyin, 1.36, 1.36 );
setEffScaleKey( spep_2 + 106, ct_gyin, 1.4, 1.4 );
setEffScaleKey( spep_2 + 108, ct_gyin, 1.43, 1.43 );
setEffScaleKey( spep_2 + 110, ct_gyin, 1.46, 1.46 );
setEffScaleKey( spep_2 + 112, ct_gyin, 1.5, 1.5 );
setEffScaleKey( spep_2 + 114, ct_gyin, 1.53, 1.53 );
setEffScaleKey( spep_2 + 116, ct_gyin, 1.56, 1.56 );
setEffScaleKey( spep_2 + 118, ct_gyin, 1.6, 1.6 );
setEffScaleKey( spep_2 + 120, ct_gyin, 1.63, 1.63 );
setEffScaleKey( spep_2 + 122, ct_gyin, 1.67, 1.67 );

setEffRotateKey( spep_2 + 76, ct_gyin, -30.9 );
setEffRotateKey( spep_2 + 122, ct_gyin, -30.9 );

setEffAlphaKey( spep_2 + 76, ct_gyin, 94 );
setEffAlphaKey( spep_2 + 78, ct_gyin, 168 );
setEffAlphaKey( spep_2 + 80, ct_gyin, 221 );
setEffAlphaKey( spep_2 + 82, ct_gyin, 255 );
setEffAlphaKey( spep_2 + 122, ct_gyin, 255 );

ct_zuo = entryEffectLife( spep_2 + 354,  10058, 44, 0x100, -1, 0, 209.3, 275.5 );  --ズオ
setEffMoveKey( spep_2 + 354, ct_zuo, 209.3, 275.5 , 0 );
setEffMoveKey( spep_2 + 356, ct_zuo, 127.3, 268.4 , 0 );
setEffMoveKey( spep_2 + 358, ct_zuo, 79.7, 263.4 , 0 );
setEffMoveKey( spep_2 + 360, ct_zuo, 20.7, 252.8 , 0 );
setEffMoveKey( spep_2 + 362, ct_zuo, 2.4, 262.7 , 0 );
setEffMoveKey( spep_2 + 364, ct_zuo, -25, 239 , 0 );
setEffMoveKey( spep_2 + 366, ct_zuo, -32.3, 247.7 , 0 );
setEffMoveKey( spep_2 + 368, ct_zuo, -48, 252.9 , 0 );
setEffMoveKey( spep_2 + 370, ct_zuo, -29.3, 256.4 , 0 );
setEffMoveKey( spep_2 + 372, ct_zuo, -47.3, 250.8 , 0 );
setEffMoveKey( spep_2 + 374, ct_zuo, -31.7, 267.6 , 0 );
setEffMoveKey( spep_2 + 376, ct_zuo, -42.3, 245.4 , 0 );
setEffMoveKey( spep_2 + 378, ct_zuo, -55.9, 266.6 , 0 );
setEffMoveKey( spep_2 + 380, ct_zuo, -30.7, 262.6 , 0 );
setEffMoveKey( spep_2 + 382, ct_zuo, -56.9, 265.7 , 0 );
setEffMoveKey( spep_2 + 384, ct_zuo, -39.8, 264.8 , 0 );
setEffMoveKey( spep_2 + 386, ct_zuo, -53.6, 263.2 , 0 );
setEffMoveKey( spep_2 + 388, ct_zuo, -71.3, 269.3 , 0 );
setEffMoveKey( spep_2 + 390, ct_zuo, -50.9, 273.4 , 0 );
setEffMoveKey( spep_2 + 392, ct_zuo, -71.2, 267.4 , 0 );
setEffMoveKey( spep_2 + 394, ct_zuo, -54.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 396, ct_zuo, -66.3, 261.9 , 0 );
setEffMoveKey( spep_2 + 398, ct_zuo, -68.9, 263.8 , 0 );

setEffScaleKey( spep_2 + 354, ct_zuo, 1.24, 1.24 );
setEffScaleKey( spep_2 + 356, ct_zuo, 1.84, 1.84 );
setEffScaleKey( spep_2 + 358, ct_zuo, 2.33, 2.33 );
setEffScaleKey( spep_2 + 360, ct_zuo, 2.71, 2.71 );
setEffScaleKey( spep_2 + 362, ct_zuo, 2.98, 2.98 );
setEffScaleKey( spep_2 + 364, ct_zuo, 3.15, 3.15 );
setEffScaleKey( spep_2 + 366, ct_zuo, 3.2, 3.2 );
setEffScaleKey( spep_2 + 368, ct_zuo, 3.23, 3.23 );
setEffScaleKey( spep_2 + 370, ct_zuo, 3.27, 3.27 );
setEffScaleKey( spep_2 + 372, ct_zuo, 3.3, 3.3 );
setEffScaleKey( spep_2 + 374, ct_zuo, 3.34, 3.34 );
setEffScaleKey( spep_2 + 376, ct_zuo, 3.37, 3.37 );
setEffScaleKey( spep_2 + 378, ct_zuo, 3.4, 3.4 );
setEffScaleKey( spep_2 + 380, ct_zuo, 3.44, 3.44 );
setEffScaleKey( spep_2 + 382, ct_zuo, 3.47, 3.47 );
setEffScaleKey( spep_2 + 384, ct_zuo, 3.51, 3.51 );
setEffScaleKey( spep_2 + 386, ct_zuo, 3.54, 3.54 );
setEffScaleKey( spep_2 + 388, ct_zuo, 3.58, 3.58 );
setEffScaleKey( spep_2 + 390, ct_zuo, 3.63, 3.63 );
setEffScaleKey( spep_2 + 392, ct_zuo, 3.67, 3.67 );
setEffScaleKey( spep_2 + 394, ct_zuo, 3.71, 3.71 );
setEffScaleKey( spep_2 + 396, ct_zuo, 3.76, 3.76 );
setEffScaleKey( spep_2 + 398, ct_zuo, 3.8, 3.8 );

setEffRotateKey( spep_2 + 354, ct_zuo, -0.9 );
setEffRotateKey( spep_2 + 356, ct_zuo, -0.5 );
setEffRotateKey( spep_2 + 358, ct_zuo, -0.2 );
setEffRotateKey( spep_2 + 360, ct_zuo, 0 );
setEffRotateKey( spep_2 + 362, ct_zuo, 0.2 );
setEffRotateKey( spep_2 + 364, ct_zuo, 0.3 );
setEffRotateKey( spep_2 + 398, ct_zuo, 0.3 );

setEffAlphaKey( spep_2 + 354, ct_zuo, 255 );
setEffAlphaKey( spep_2 + 386, ct_zuo, 255 );
setEffAlphaKey( spep_2 + 388, ct_zuo, 213 );
setEffAlphaKey( spep_2 + 390, ct_zuo, 170 );
setEffAlphaKey( spep_2 + 392, ct_zuo, 128 );
setEffAlphaKey( spep_2 + 394, ct_zuo, 85 );
setEffAlphaKey( spep_2 + 396, ct_zuo, 42 );
setEffAlphaKey( spep_2 + 398, ct_zuo, 0 );

tsuki=entryEffectLife(spep_2,SP_04,550,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, tsuki, 0, 0 , 0 );
setEffMoveKey( spep_2 + 550, tsuki, 0, 0 , 0 );
setEffScaleKey(spep_2,tsuki,1.0,1.0);
setEffScaleKey(spep_2+550,tsuki,1.0,1.0);
setEffRotateKey(spep_2,tsuki,0);
setEffRotateKey(spep_2+550,tsuki,0);
setEffAlphaKey(spep_2,tsuki,255);
setEffAlphaKey(spep_2+550,tsuki,255);

--***ボイス***--
playVoice(  spep_2+120,  107);  --拳に全てをかける
setVoiceVolume(  spep_2+120,  107,  2000);

playVoice(  spep_2+274,  106);  --つらぬけー！
setVoiceVolume(  spep_2+274,  106,  2200);

playVoice(  spep_2+368,  108);  --はーっ！
setVoiceVolume(  spep_2+368,  108,  2200);

--***SE***--
playSe(  spep_2,  1022);  --伸びる音
setSeVolume(spep_2,  1022,  200);
playSe(  spep_2+34,  1027);  --握りしめる音
setSeVolume(  spep_2+34,  1003,  300);  
playSe(  spep_2+ 76,  17);  --ギュイーン
playSe(  spep_2+  100,  1072);
setSeVolume(  spep_2+100,  1072,  250);  
playSe(  spep_2+304,  1034);  --(ブゥンって感じの音)
setSeVolume(  spep_2+304,  1034,  250);  
playSe(  spep_2+344,  1064);  --(ボッって感じの音)
setSeVolume(spep_2+344,  1064,  200);
playSe(  spep_2+378,  1017);
setSeVolume(spep_2+378,  1017,  200);
playSe(  spep_2 + 460,  1066);  --咆哮
setSeVolume(spep_2 + 460,  1066,  300);

--***次の準備***--
spep_3 = spep_2+550;

--------------------------------------
--ズン(100F)
--------------------------------------

zun_c=entryEffectLife(spep_3,SP_00,100,0x100,-1,0,0,0);

setEffMoveKey(  spep_3,  zun_c,  0,  0);
setEffMoveKey(  spep_3+100,  zun_c,  0,  0);
setEffScaleKey(  spep_3,  zun_c,  1.0,  1.0);
setEffScaleKey(  spep_3+100,  zun_c,  1.0,  1.0);
setEffRotateKey(  spep_3,  zun_c,  0);
setEffRotateKey(  spep_3+100,  zun_c,  0);
setEffAlphaKey(  spep_3,  zun_c,  255);
setEffAlphaKey(  spep_3+100,  zun_c,  255);

zun_b=entryEffectLife(spep_3,SP_06,100,0x80,-1,0,0,0);

setEffMoveKey(  spep_3,  zun_b,  0,  0);
setEffMoveKey(  spep_3+100,  zun_b,  0,  0);
setEffScaleKey(  spep_3,  zun_b,  1.0,  1.0);
setEffScaleKey(  spep_3+100,  zun_b,  1.0,  1.0);
setEffRotateKey(  spep_3,  zun_b,  0);
setEffRotateKey(  spep_3+100,  zun_b,  0);
setEffAlphaKey(  spep_3,  zun_b,  255);
setEffAlphaKey(  spep_3+100,  zun_b,  255);

ct_zun = entryEffectLife( spep_3,  10062, 104, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3, ct_zun, 0, 0 , 0 );
setEffMoveKey( spep_3 + 104, ct_zun, 0, 0 , 0 );

setEffScaleKey( spep_3, ct_zun, 1, 1 );
setEffScaleKey( spep_3 + 104, ct_zun, 1, 1 );

setEffRotateKey( spep_3, ct_zun, 0 );
setEffRotateKey( spep_3 + 104, ct_zun, 0 );

setEffAlphaKey( spep_3, ct_zun, 255 );
setEffAlphaKey( spep_3 + 104, ct_zun, 255 );

zun_f=entryEffectLife(spep_3,SP_05,100,0x80,-1,0,0,0);

setEffMoveKey(  spep_3,  zun_f,  0,  0);
setEffMoveKey(  spep_3+100,  zun_f,  0,  0);
setEffScaleKey(  spep_3,  zun_f,  1.0,  1.0);
setEffScaleKey(  spep_3+100,  zun_f,  1.0,  1.0);
setEffRotateKey(  spep_3,  zun_f,  0);
setEffRotateKey(  spep_3+100,  zun_f,  0);
setEffAlphaKey(  spep_3,  zun_f,  255);
setEffAlphaKey(  spep_3+100,  zun_f,  255);

--***敵の動き***
setDisp(  spep_3-3 +20,  1,  1);
setDisp(  spep_3+100,  1,  0); 
changeAnime(  spep_3-4+20,  1,  8);  

setMoveKey( spep_3-4 + 20, 1, 18.6, 2.7 , 0 );
setMoveKey( spep_3-4 + 22, 1, 21.4, -2.3 , 0 );
setMoveKey( spep_3-4 + 24, 1, 24.4, -7.6 , 0 );
setMoveKey( spep_3-4 + 26, 1, 27.1, -12.5 , 0 );
setMoveKey( spep_3-4 + 28, 1, 29.5, -16.8 , 0 );
setMoveKey( spep_3-4 + 30, 1, 31.5, -20.3 , 0 );
setMoveKey( spep_3-4 + 32, 1, 33.2, -23.3 , 0 );
setMoveKey( spep_3-4 + 34, 1, 34.7, -25.9 , 0 );
setMoveKey( spep_3-4 + 36, 1, 35.9, -28.1 , 0 );
setMoveKey( spep_3-4 + 38, 1, 36.9, -29.9 , 0 );
setMoveKey( spep_3-4 + 40, 1, 37.8, -31.5 , 0 );
setMoveKey( spep_3-4 + 42, 1, 38.6, -32.9 , 0 );
setMoveKey( spep_3-4 + 44, 1, 39.3, -34 , 0 );
setMoveKey( spep_3-4 + 46, 1, 39.8, -35.1 , 0 );
setMoveKey( spep_3-4 + 48, 1, 40.3, -35.9 , 0 );
setMoveKey( spep_3-4 + 50, 1, 40.7, -36.7 , 0 );
setMoveKey( spep_3-4 + 52, 1, 41.1, -37.3 , 0 );
setMoveKey( spep_3-4 + 54, 1, 41.4, -37.9 , 0 );
setMoveKey( spep_3-4 + 56, 1, 41.7, -38.3 , 0 );
setMoveKey( spep_3-4 + 58, 1, 41.9, -38.8 , 0 );
setMoveKey( spep_3-4 + 60, 1, 42.2, -39.2 , 0 );
setMoveKey( spep_3-4 + 62, 1, 42.4, -39.6 , 0 );
setMoveKey( spep_3-4 + 64, 1, 42.6, -40 , 0 );
setMoveKey( spep_3-4 + 66, 1, 42.8, -40.3 , 0 );
setMoveKey( spep_3-4 + 68, 1, 43, -40.7 , 0 );
setMoveKey( spep_3-4 + 70, 1, 43.2, -41 , 0 );
setMoveKey( spep_3-4 + 72, 1, 43.4, -41.3 , 0 );
setMoveKey( spep_3-4 + 74, 1, 43.5, -41.6 , 0 );
setMoveKey( spep_3-4 + 76, 1, 43.7, -41.9 , 0 );
setMoveKey( spep_3-4 + 78, 1, 43.8, -42.2 , 0 );
setMoveKey( spep_3-4 + 80, 1, 44, -42.4 , 0 );
setMoveKey( spep_3-4 + 82, 1, 44.1, -42.7 , 0 );
setMoveKey( spep_3-4 + 84, 1, 44.2, -42.9 , 0 );
setMoveKey( spep_3-4 + 86, 1, 44.4, -43.1 , 0 );
setMoveKey( spep_3-4 + 88, 1, 44.5, -43.3 , 0 );
setMoveKey( spep_3-4 + 90, 1, 44.6, -43.5 , 0 );
setMoveKey( spep_3-4 + 92, 1, 44.7, -43.7 , 0 );
setMoveKey( spep_3-4 + 94, 1, 44.8, -43.9 , 0 );
setMoveKey( spep_3-4 + 96, 1, 44.9, -44.1 , 0 );
setMoveKey( spep_3-4 + 98, 1, 45, -44.3 , 0 );
setMoveKey( spep_3 + 100, 1, 45.2, -44.5 , 0 );

setScaleKey( spep_3-4 + 20, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 100, 1, 2.03, 2.03 );

setRotateKey( spep_3-4 + 20, 1, 55.5 );
setRotateKey( spep_3 + 100, 1, 55.5 );

--***SE***--
playSe(  spep_3,  1027);
setSeVolume(  spep_3,  1027,  200);
playSe(  spep_3+20,  1033);
setSeVolume(  spep_3+20,  1033,  300);

--***次の準備***--
spep_4 = spep_3 + 100
--------------------------------------
--ダメージ表記(170F)
--------------------------------------
last = entryEffect(  spep_4,  SP_07,  0x100,  -1,  0,  0,  0 );

setEffMoveKey(  spep_4,  last,  0,  0);
setEffMoveKey(  spep_4+170,  last,  0,  0);
setEffScaleKey(  spep_4,  last,  1.0,  1.0);
setEffScaleKey(  spep_4+170,  last,  1.0,  1.0);
setEffRotateKey(  spep_4,  last,  0);
setEffRotateKey(  spep_4+170,  last,  0);
setEffAlphaKey(  spep_4,  last,  255);
setEffAlphaKey(  spep_4+160,  last,  255);
setEffAlphaKey(  spep_4+161,  last,  0);
setEffAlphaKey(  spep_4+170,  last,  0);

--spep_5 = spep_4+220;

ko = entryEffectLife(  spep_4+160,  SP_08,  300,  0x100,  -1, 0, 0, 0);

setEffMoveKey(  spep_4,  ko,  0,  0);
setEffMoveKey(  spep_4+550,  ko,  0,  0);
setEffScaleKey(  spep_4,  ko,  1.0,  1.0);
setEffScaleKey(  spep_4+550,  ko,  1.0,  1.0);
setEffRotateKey(  spep_4,  ko,  0);
setEffRotateKey(  spep_4+550,  ko,  0);
setEffAlphaKey(  spep_4,  ko,  255);
setEffAlphaKey(  spep_4+550,  ko,  255);

--流線

ef_ryusen = entryEffectLife( spep_4+160,  914, 300, 0x100, -1, 0, 0, 0 );
setEffMoveKey(  spep_4+160,  ef_ryusen,  0,  0);
setEffMoveKey(  spep_4+550,  ef_ryusen,  0,  0);
setEffScaleKey(  spep_4+160,  ef_ryusen,  3.37,  1.8);
setEffScaleKey(  spep_4+550,  ef_ryusen,  3.37,  1.8);
setEffRotateKey(  spep_4+160,  ef_ryusen,  67);
setEffRotateKey(  spep_4+550,  ef_ryusen,  67);
setEffAlphaKey(  spep_4+160,  ef_ryusen,  100);
setEffAlphaKey(  spep_4+550,  ef_ryusen,  100);

playSe(  spep_4,  1072);
setSeVolume(  spep_4,  1072,  500);

-- ダメージ表示
hideKoScreen();  --黒フィルター削除
dealDamage(spep_4 +60);
entryFade( spep_4 +146, 10,  16, 10, 8, 8, 8, 255);             -- black fade
endPhase(spep_4 +170);

else end
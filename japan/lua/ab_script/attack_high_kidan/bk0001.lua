print(  "[lua]execa002");

rn_01 = 0;
rn_02 = rn_01+40;

ATK_01 = rn_02+40;
ATK_02 = ATK_01+24;
ATK_03 = ATK_02+16;
ATK_04 = ATK_03+16;
ATK_05 = ATK_04+16;
ATK_06 = ATK_05+16;
ATK_07 = ATK_06+16;
ATK_08 = ATK_07+16;
---------------
--ATK_end = ATK_08+30;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合	
entryFadeBg( 0, 30, 364, 10, 10, 10, 10, 180); -- ベース暗め　背景	
shuchusen = entryEffectLife( ATK_01, 906, 294, 0x00, -1, 0, 0, 0); -- 集中線	
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);	
kaisinn = entryEffect( D_18+26, 1110, 0x80, -1, 0, 0, 0); -- 会心の最後のエフェクト	
else	
end

-------------------------
--導入
-------------------------
--P　初期位置
setMoveKey(  rn_01,  0,  -700,  0,  -128);
setLastPosKey( rn_01, 1);
-- setMoveKey(  rn_01,  1,  700,  0,  50);
changeAnime(  rn_01,  0,  2);
changeAnime(  rn_01,  1,  101);

--P画面に入って来る
setMoveKey(  rn_01+5,  0,  -200,  -130,  -128);
setMoveKey(  rn_01+5,  1,  200,  150,  50);

--P 移動
setMoveKey(  rn_01+20,  0,  -200,  -130,  -128);
setMoveKey(  rn_01+26,  0,  -260,  -50,  -50);
changeAnime(  rn_01+30,  1,  18);
setMoveKey(  rn_01+30,  0,  -300,  0,  -20);
changeAnime(  rn_01+31,  0,  17);
playSe( rn_01+31,1034);
setMoveKey(  rn_01+40,  0,  -80,  130,  0);

--E 移動
setMoveKey(  rn_01+20,  1,  200,  150,  50);
setMoveKey(  rn_01+26,  1,  1200,  50,  30);

--ズーム
setMoveKey(  rn_02,  0,  -80,  10,  0);
playSe( rn_02,1035);
setMoveKey(  rn_02+15,  0,  -80,  40,  -128);

--シェイク

setShake( rn_02+3,  9,  12);
entryFadeBg( rn_02+15,  3, 5, 30,255,255,255,255);

setScaleKey(rn_02+15,0,1,1);
setScaleKey(rn_02+16,0,1.5,1.5);
setShake( rn_02+16,  12,  20);
setScaleKey(rn_02+18,0,1.5,1.5);
setScaleKey(rn_02+19,0,1,1);

setShake( rn_02+13,  10,  18);
setMoveKey(  rn_02+15,  0,  -80,  10,  -128);

playSe( rn_02+14,1037);
entryEffectLife( rn_02+14, 906, 10, 0, -1, 0, 0,  0);    --集中線

setShake( rn_02+26,  10,  14);

--setRotateKey( rn_02+18,  0,  0);
--setRotateKey( rn_02+19,  0,  15);

setMoveKey(  ATK_01+2,  0,  -80,  40,  -128);
setMoveKey(  ATK_01+17,  0,  30,  40,  -128);
---------------------
changeAnime(  ATK_01, 0, 19);
--entryFlashBg( ATK_01+2,  1,  0,  0,  0);
entryEffect( ATK_01+2, 200, 0x40,  0, 100, 50, 0);
entryEffect( ATK_01+2, 702,   0x40,  0, 100, 50, 0);
playSe(ATK_01+2,1015);
delayAll( ATK_01+2,4);
--entryFlashBg( ATK_01+8+4,  1,  255,  255,  255);
delayAll( ATK_01+8+4,3);
setShake( ATK_01+8+4,  10,  14);
entryEffect( ATK_01+8+7, 200,   0x40,  0, 100, 50, 0);
entryEffect( ATK_01+8+7, 702,   0x40,  0, 100, 50, 0);
playSe(ATK_01+8+7,1015);

ef1 = entryEffectLife( ATK_01+4, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
ef2 = entryEffectLife( ATK_01+9+7, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
setEffMoveKey( ATK_01+7, ef1,   0, 0, 0);
setEffMoveKey( ATK_01+10+7, ef2,   0, 0, 0);

setEffMoveKey( ATK_01+13, ef1, 700, 30, 0);
setEffMoveKey( ATK_01+17+7, ef2, 700, -20, 0);

------------
changeAnime(  ATK_02, 0, 19);
--setMoveKey(  ATK_02+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_02+3,  1,  255,  255,  255);
entryEffect( ATK_02+2, 200,   0x40,  0, 100, 50, 0);
playSe(ATK_02+2,1015);
--entryFlashBg( ATK_02+9,  1,  0,  0,  0);
entryEffect( ATK_02+8, 200,   0x40,  0, 100, 50, 0);
entryEffect( ATK_02+8, 702,   0x40,  0, 100, 50, 0);
playSe(ATK_02+8,1015);


ef3 = entryEffectLife( ATK_02+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_02+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_02+4, ef3,   0, 0, 0);
setEffMoveKey( ATK_02+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_02+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_02+16, ef4, 700, -30, 0);

------------
changeAnime( ATK_03, 0, 19);
 --setMoveKey(  ATK_03+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_03+3,  1,  255,  255,  255);
entryEffect( ATK_03+2, 200,   0x40,  0, 100, 50, 0);
SE1=playSe(ATK_03+2,1015);
--entryFlashBg( ATK_03+9,  1,  0,  0,  0);
entryEffect( ATK_03+8, 200,   0x40,  0, 100, 50, 0);
entryEffect( ATK_03+8, 702,   0x40,  0, 100, 50, 0);
SE2=playSe(ATK_03+8,1015);

ef3 = entryEffectLife( ATK_03+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_03+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_03+4, ef3,   0, 0, 0);
setEffMoveKey( ATK_03+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_03+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_03+16, ef4, 700, -30, 0);

setMoveKey(  ATK_04+2,  0, 30,  40,  -128);
setMoveKey(  ATK_06+16, 0, -120,  40, -128);

------------
changeAnime(  ATK_04, 0, 19);
--setMoveKey(  ATK_04+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_04+3,  1,  255,  255,  255);
entryEffect( ATK_04+2, 200,   0x40,  0, 100, 50, 0);
entryEffect( ATK_04+2, 702,   0x40,  0, 100, 50, 0);
SE3=playSe(ATK_04+2,1015);
stopSe( ATK_04+2, SE1, 6 );
setShake( ATK_04+2,  10,  18);
--entryFlashBg( ATK_04+9,  1,  0,  0,  0);
entryEffect( ATK_04+8, 200,   0x40,  0, 100, 50, 0);
SE4=playSe(ATK_04+8,1015);
stopSe( ATK_04+8, SE2, 6 );

ef3 = entryEffectLife( ATK_04+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_04+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_04+4, ef3,   0, 0, 0);
setEffMoveKey( ATK_04+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_04+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_04+16, ef4, 700, -30, 0);

------------------------------------------------------	
-- 回避	
------------------------------------------------------	
if(_IS_DODGE_ == 1) then	
SP_dodge = ATK_04+16; --エンドフェイズのフレーム数を置き換える	
playSe( SP_dodge-12, 1042);	
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)	
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え	
kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示	
if (_IS_PLAYER_SIDE_ == 1) then	
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);	
else	
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);	
end	
setEffAlphaKey( SP_dodge, kaihi, 255);	
pauseAll( SP_dodge, 67);	
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade	
setMoveKey( SP_dodge+5, 0, -80, 130, 0);-- 中央位置から	
setMoveKey( SP_dodge+9, 0, -1000, 0, 0);-- 中央位置から	
--setDisp( SP_dodge+5, 0, 0);	
endPhase(SP_dodge+10);	
do return end	
else end
-------------
changeAnime(  ATK_05, 0, 19);
--setMoveKey(  ATK_05+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_05+3,  1,  255,  255,  255);
entryEffect( ATK_05+2, 200,   0x40,  0, 100, 50, 0);
SE5=playSe(ATK_05+2,1015);
stopSe( ATK_05+2, SE3, 6 );
--entryFlashBg( ATK_05+9,  1,  0,  0,  0);
entryEffect( ATK_05+8, 200,   0x40,  0, 100, 50, 0);
entryEffect( ATK_05+8, 702,   0x40,  0, 100, 50, 0);
setShake( ATK_05+8,  10,  11);
SE6=playSe(ATK_05+8,1015);
stopSe( ATK_05+8, SE4, 6 );

entryFadeBg( ATK_05+3, 60,10,15,255,255,255);
ef3 = entryEffectLife( ATK_05+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_05+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_05+4, ef3,   0, 0, 0);
setEffMoveKey( ATK_05+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_05+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_05+16, ef4, 700, -30, 0);

-------------
changeAnime(  ATK_06, 0, 19);
--setMoveKey(  ATK_06+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_06+3,  1,  255,  255,  255);
entryEffect( ATK_06+2, 200,   0x40,  0, 100, 50, 0);
SE7=playSe(ATK_06+2,1015);
stopSe( ATK_06+2, SE5, 6 );
--entryFlashBg( ATK_06+9,  1,  0,  0,  0);
entryEffect( ATK_06+8, 200,   0x40,  0, 100, 50, 0);
entryEffect( ATK_06+8, 702,   0x40,  0, 100, 50, 0);
SE8=playSe(ATK_06+8,1015);
stopSe( ATK_06+8, SE6, 6 );

ef3 = entryEffectLife( ATK_06+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_06+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_06+4, ef3,   0, 0, 0);
setEffMoveKey( ATK_06+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_06+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_06+16, ef4, 700, -30, 0);

setMoveKey(  ATK_07+8,  0,  -120,  40, -128);
setMoveKey(  ATK_08+13,  0,  -250,  40,  -128);

-------------
changeAnime(  ATK_07, 0, 19);
--setMoveKey(  ATK_07+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_07+3,  1,  255,  255,  255);
entryEffect( ATK_07+2, 200,   0x40,  0, 100, 50, 0);
entryEffect( ATK_07+2, 200,   0x40,  0, 100, 50, 0);
SE9=playSe(ATK_07+2,1015);
stopSe( ATK_07+2, SE7, 6 );
setShake( ATK_07+2,  10,  15);
--entryFlashBg( ATK_07+9,  1,  0,  0,  0);
entryEffect( ATK_07+8, 200,   0x40,  0, 100, 50, 0);
SE10=playSe(ATK_07+8,1015);
stopSe( ATK_07+8, SE8, 6 );

ef3 = entryEffectLife( ATK_07+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_07+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_07+4, ef3,   0, 0, 0);
setEffMoveKey( ATK_07+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_07+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_07+16, ef4, 700, -30, 0);

-------------
changeAnime(  ATK_08, 0, 19);
--setMoveKey(  ATK_08+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_08+3,  1,  255,  255,  255);
entryEffect( ATK_08+2, 200,   0x40,  0, 100, 50, 0);
entryEffect( ATK_08+8, 702,   0x40,  0, 100, 50, 0);
SE11=playSe(ATK_08+8,1015);
stopSe( ATK_08+8, SE9, 6 );
setShake( ATK_08+8,  10,  18);
--entryFlashBg( ATK_08+9,  1,  0,  0,  0);
entryEffect( ATK_08+8, 200,   0x40,  0, 100, 50, 0);
--playSe(ATK_08+8,1015);


ef3 = entryEffectLife( ATK_08+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_08+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_08+4, ef3,   0, 0, 0);
setEffMoveKey( ATK_08+9, ef4,   0, 0, 0);

entryFade( ATK_08+9, 10, 20, 15, 255,255,255, 255);--白フェード

setEffMoveKey( ATK_08+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_08+16, ef4, 700, -30, 0);


-------------
--E側、気弾ダメージ
-------------
D_0 = ATK_08+24;
D_1 = D_0+25;
D_2 = D_1+3;
D_3 = D_2+3;
D_4 = D_3+3;
D_5 = D_4+7;
D_6 = D_5+2;
D_7 = D_6+6;

setMoveKey(  D_0-1,  1,  1200,  50,  30);

--E 位置
setMoveKey(  D_0,  1,  500,  50,  30);
setMoveKey(  D_0+1,  1,  130,  20,  -128);
changeAnime( D_0, 1, 101);
setMoveKey(  D_0+10,  1,  130,  20,  -128);
--setMoveKey(  D_0+40,  1,  200,  120,  -50);
changeAnime( D_0+25, 1, 104);

--P　位置
setMoveKey(  D_0,  0,  -250,  40,  -128);
setMoveKey(  D_0+1,  0,  4000,  0,  0);--画面外へ飛ばします
changeAnime( D_0, 0, 2);

--entryKakimoji(  D_0+28,  0,  4,  1,  0,  -40,  150);--!!

entryEffectLife( D_1, 906, 90, 0, -1, 0, 0,  0);    --集中線

hit_ef1 = entryEffect( D_1, 11, 0, 1, 0, 0, 10); --爆破
SE12=playSe( D_1,1011);
setShake( D_1,  5,  10);
--hit_ef2 = entryEffect( D_2, 11, 0, 1, 0, 100, -10); --爆破
--SE13=playSe( D_2,1002);
--setEffScaleKey( D_1, hit_ef1,  0.2, 0.2);
--setEffScaleKey( D_2, hit_ef2,  0.4, 0.4);
setEffScaleKey( D_1, hit_ef1,  3, 3);
setEffScaleKey( D_2, hit_ef2,  1, 1);
setDamage(  D_2,  1,  0);--ダメージ振動等
--entryFlashBg( D_2+1,  1,  0,  0,  0);


hit_ef3 = entryEffect( D_3, 11, 0, 1, 0x80, -100, -40); --爆破
hit_ef4 = entryEffect( D_3+3, 11, 0, 1, 0, 30, 30); --爆破
--SE14=playSe( D_3,1011);
--stopSe( D_3, SE12, 4 );
--SE15=playSe( D_3+3,1002);
--stopSe( D_3+3, SE13, 4 );
setShake( D_3,  8,  15);
--setEffScaleKey( D_3, hit_ef3, 0.5, 0.5);
setDamage(  D_3,  1,  0);--ダメージ振動等
--setEffScaleKey( D_3+3, hit_ef4, 0.5, 0.5);
--entryFlashBg( D_3+6,  1,  0,  0,  0);

hit_ef5 = entryEffect( D_4, 11, 0, 1, 0, -120, -60); --爆破
hit_ef6 = entryEffect( D_4+3, 11, 0, 1, 0x80, 190, 100); --爆破
hit_ef7 = entryEffect( D_4+6, 11, 0, 1, 0, -5, -70); --爆破
--SE16=playSe( D_4,1011);
--stopSe( D_4, SE14, 4 );
--SE17=playSe( D_4+3,1002);
--stopSe( D_4+3, SE15, 4 );
--SE18=playSe( D_4+6,1011);
--stopSe( D_4+6, SE16, 4 );
setShake( D_4+8,  5,  10);
--setEffScaleKey( D_4, hit_ef5, 0.7, 0.7);
setDamage(  D_4,  1,  0);--ダメージ振動等
--setEffScaleKey( D_4+3, hit_ef6, 0.4, 0.4);
--setEffScaleKey( D_4+6, hit_ef7, 0.4, 0.4);

setEffScaleKey( D_4, hit_ef5, 1.7, 1.7);
setEffScaleKey( D_4+3, hit_ef6, 0.8, 0.8);
setEffScaleKey( D_4+6, hit_ef7, 1.5, 1.5);

hit_ef0 = entryEffect( D_5, 11, 0, 1, 0, 0, 0); --爆破
SE19=playSe( D_5,1002);
setSeVolume( D_5, 1002, 120 );
--stopSe( D_5+5, SE12, 8 );
setEffScaleKey( D_5, hit_ef0, 3, 3);
setShake( D_5,  5,  20);
changeAnime( D_5, 1, 106);
--entryFlashBg( D_5+1,  1,  255,  255,  255);
setDamage(  D_5,  1,  0);--ダメージ振動等

hit_ef8 = entryEffect( D_6, 11, 0, 1, 0x80, 170, -80);--爆破
hit_ef9 = entryEffect( D_6+2, 11, 0, 1, 0, -100, 70);--爆破
hit_ef10 = entryEffect( D_6+4, 11, 0, 1, 0, 10, 0);--爆破
--SE20=playSe( D_6,1011);
--stopSe( D_6, SE13, 4 );
--SE21=playSe( D_6+2,1001);
--stopSe( D_4+2, SE19, 4 );
--SE22=playSe( D_6+4,1011);
--stopSe( D_4+4, SE20, 4 );
setShake( D_6,  10,  15);
changeAnime( D_6+3, 1, 104);
--setEffScaleKey( D_6, hit_ef8, 0.7, 0.7);
setDamage(  D_6,  1,  0);--ダメージ振動等
--setEffScaleKey( D_6+2, hit_ef9, 0.6, 0.6);
--setEffScaleKey( D_6+4, hit_ef10, 0.4, 0.4);

setEffScaleKey( D_6, hit_ef8, 1, 1);
setEffScaleKey( D_6+2, hit_ef9, 0.8, 0.8);
setEffScaleKey( D_6+4, hit_ef10, 1.3, 1.3);

hit_ef11 = entryEffect( D_7, 11, 0, 1, 0x80, -100, 90);--爆破
hit_ef12 = entryEffect( D_7+2, 11, 0, 1, 0x80, -120, -55);--爆破
hit_ef13 = entryEffect( D_7+4, 11, 0, 1, 0, 90, -40);--爆破
--SE23=playSe( D_7,1011);
--stopSe( D_7, SE20, 4 );
--SE24=playSe( D_7+2,1011);
--stopSe( D_7+2, SE22, 4 );
SE25=playSe( D_7+4,1011);
stopSe( D_7+10, SE19, 8 );

--entryFlashBg( D_7+6,  1,  0,  0,  0);
hit_ef14 = entryEffect( D_7+6, 11, 0, 1, 0, 150, 55);--爆破
hit_ef15 = entryEffect( D_7+12, 11, 0, 1, 0, 0, 5);--爆破
--SE26=playSe( D_7+6,1011);
--stopSe( D_7+6, SE24, 4 );
--SE27=playSe( D_7+12,1011);
--stopSe( D_7+12, SE23, 4 );
setShake( D_7,  10,  15);
--setEffScaleKey( D_7, hit_ef11, 0.7, 0.7);
setDamage(  D_7,  1,  0);--ダメージ振動等
--setEffScaleKey( D_7+2, hit_ef12, 0.6, 0.6);
changeAnime( D_7+6, 1, 105);
--setEffScaleKey( D_7+4, hit_ef13, 0.4, 0.4);
--setEffScaleKey( D_7+6, hit_ef14, 0.3, 0.3);
--entryFlashBg( D_7+10,  1,  0,  0,  0);
--setEffScaleKey( D_7+12, hit_ef15, 0.1, 0.1);
setDamage(  D_7+12,  1,  0);--ダメージ振動等
setShake( D_7+12,  10,  15);

setEffScaleKey( D_7+2, hit_ef12, 0.9, 0.9);
setEffScaleKey( D_7+4, hit_ef13, 1.5, 1.5);
setEffScaleKey( D_7+6, hit_ef14, 1.3, 1.3);
setEffScaleKey( D_7+12, hit_ef15, 2, 2);

-------------
--E側、気弾ダメージ
-------------
D_11 = D_7+12;
D_12 = D_11+3;
D_13 = D_12+3;
D_14 = D_13+3;
D_15 = D_14+7;
D_16 = D_15+2;
D_17 = D_16+6;
D_18 = D_17+55;

entryEffectLife( D_11, 906, 90, 0, -1, 0, 0,  0);    --集中線

hit_ef1 = entryEffect( D_11, 11, 0, 1, 0, 0, 10); --爆破
--SE28=playSe( D_11,1011);
--stopSe( D_11, SE26, 4 );
setShake( D_11,  5,  10);
hit_ef2 = entryEffect( D_12, 11, 0, 1, 0, 100, -10); --爆破
--SE29=playSe( D_12,1011);
--stopSe( D_12, SE26, 4 );
--setEffScaleKey( D_11, hit_ef1,  0.2, 0.2);
--setEffScaleKey( D_12, hit_ef2,  0.4, 0.4);
setEffScaleKey( D_11, hit_ef1,  3, 3);
setEffScaleKey( D_12, hit_ef2,  1, 1);
setDamage(  D_12,  1,  0);--ダメージ振動等
--entryFlashBg( D_12+1,  1,  0,  0,  0);

hit_ef3 = entryEffect( D_13, 11, 0, 1, 0, -100, -40); --爆破
--SE30=playSe( D_13,1011);
--stopSe( D_13, SE28, 4 );
--SE31=playSe( D_13+3,1011);
--stopSe( D_13+3, SE29, 4 );
hit_ef4 = entryEffect( D_13+3, 11, 0, 1, 0, 30, 30); --爆破
setShake( D_13,  8,  15);
--setEffScaleKey( D_13, hit_ef3, 0.5, 0.5);
setDamage(  D_13,  1,  0);--ダメージ振動等
--setEffScaleKey( D_13+3, hit_ef4, 0.5, 0.5);
--entryFlashBg( D_13+6,  1,  0,  0,  0);

hit_ef5 = entryEffect( D_14, 11, 0, 1, 0, -120, -60); --爆破
hit_ef6 = entryEffect( D_14+3, 11, 0, 1, 0x80, 190, 100); --爆破
hit_ef7 = entryEffect( D_14+6, 11, 0, 1, 0, -5, -70); --爆破
--SE32=playSe( D_14,1011);
--stopSe( D_14, SE31, 4 );
--SE33=playSe( D_14+3,1002);
--stopSe( D_14+3, SE31, 4 );
SE34=playSe( D_14+6,1002);
--stopSe( D_14+8, SE32, 4 );
setShake( D_14+8,  5,  10);
--setEffScaleKey( D_14, hit_ef5, 0.7, 0.7);
setDamage(  D_14,  1,  0);--ダメージ振動等
--setEffScaleKey( D_14+3, hit_ef6, 0.4, 0.4);
--setEffScaleKey( D_14+6, hit_ef7, 0.4, 0.4);

setEffScaleKey( D_14, hit_ef5, 1.7, 1.7);
setEffScaleKey( D_14+3, hit_ef6, 0.8, 0.8);
setEffScaleKey( D_14+6, hit_ef7, 1.5, 1.5);

hit_ef0 = entryEffect( D_15, 11, 0, 1, 0, 0, 0); --爆破
playSe( D_15,1011);
--stopSe( D_15, SE33, 4 );
setEffScaleKey( D_15, hit_ef0, 3, 3);
setShake( D_15,  5,  20);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
changeAnime( D_15, 1, 104);
-----------------------
else
playSe( D_15,1014);
--stopSe( D_15, SE33, 4 );
changeAnime( D_15, 1, 104);

end

--entryFlashBg( D_15+1,  1,  255,  255,  255);
setDamage(  D_15,  1,  0);--ダメージ振動等

--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)
ATK_dead = D_15+1;
	
       entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
   
else
---------------------------

hit_ef8 = entryEffect( D_16, 11, 0, 1, 0x80, 170, -80);--爆破
hit_ef9 = entryEffect( D_16+2, 11, 0, 1, 0, -100, 70);--爆破
hit_ef10 = entryEffect( D_16+2, 11, 0, 1, 0, 10, 0);--爆破
setShake( D_16,  10,  15);
--changeAnime( D_16+3, 1, 104);
--setEffScaleKey( D_16, hit_ef8, 0.7, 0.7);
setDamage(  D_16,  1,  0);--ダメージ振動等
--setEffScaleKey( D_16+2, hit_ef9, 0.6, 0.6);
--setEffScaleKey( D_16+4, hit_ef10, 0.4, 0.4);

setEffScaleKey( D_16, hit_ef8, 1, 1);
setEffScaleKey( D_16+2, hit_ef9, 0.8, 0.8);
setEffScaleKey( D_16+4, hit_ef10, 1.3, 1.3);

hit_ef11 = entryEffect( D_17, 11, 0x80, 1, 0, -100, 90);--爆破
hit_ef12 = entryEffect( D_17+2, 11, 0x80, 1, 0, -120, -55);--爆破
hit_ef13 = entryEffect( D_17+4, 11, 0, 1, 0, 90, -40);--爆破
--entryFlashBg( D_17+6,  1,  0,  0,  0);
hit_ef14 = entryEffect( D_17+6, 11, 0, 1, 0, 150, 55);--爆破
hit_ef15 = entryEffect( D_17+12, 11, 0, 1, 0, 0, 5);--爆破
setShake( D_17,  10,  15);
--setEffScaleKey( D_17, hit_ef11, 0.7, 0.7);
setDamage(  D_17,  1,  0);--ダメージ振動等
--setEffScaleKey( D_17+2, hit_ef12, 0.6, 0.6);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
changeAnime( D_17+6, 1, 104);
-----------------------
else
changeAnime( D_17+6, 1, 108);

end

--setEffScaleKey( D_17+4, hit_ef13, 0.4, 0.4);
--setEffScaleKey( D_17+6, hit_ef14, 0.3, 0.3);
--entryFlashBg( D_17+10,  1,  0,  0,  0);
--setEffScaleKey( D_17+12, hit_ef15, 0.1, 0.1);
setDamage(  D_17+12,  1,  0);--ダメージ振動等
setShake( D_17+12,  30,  15);

setEffScaleKey( D_17+2, hit_ef12, 0.9, 0.9);
setEffScaleKey( D_17+4, hit_ef13, 1.5, 1.5);
setEffScaleKey( D_17+6, hit_ef14, 1.3, 1.3);
setEffScaleKey( D_17+12, hit_ef15, 2, 2);
----------
setMoveKey(  D_18+25,  1,  130,  20,  -128);
setMoveKey(  D_18+26,  1,  180, 40,  -29);

changeAnime( D_18+12, 1, 101);

--entryFlashBg( D_18+26,  1,  0,  0,  0);
setShake( D_18+26,  20,  20);
entryEffectLife( D_18+26, 906, 15, 0, -1, 0, 0,  0);    --集中線
hit_ef16 = entryEffect( D_18+26, 11, 0, 1, 0, 0, 0);--爆破
playSe( D_18+26,1011);
setSeVolume( D_18+26, 1011, 80 );
setEffScaleKey( D_18+26, hit_ef16, 3, 3);
dealDamage( D_18+26);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
changeAnime( D_18+26, 1, 104);
else

changeAnime( D_18+26, 1, 105);
end


setDamage(  D_18+26,  1,  0);--ダメージ振動等
changeAnime( D_18+79, 1, 104);
endPhase( D_18+40+40);
end


--1015880 魔人ベジータ_ダークインパルス

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

--味方
SP_01=	152514;  --構え	
SP_02=	152515;  --連撃手前
SP_03=	152516;  --連撃後ろ
SP_04=	152517;  --岩破壊手前	
SP_05=	152518;  --岩破壊奥	
SP_06=	152519;  --敵吹っ飛び手前
SP_07=	152520;  --敵吹っ飛び奥
SP_08=  152521;  --爆発

--敵側
SP_01x=	152522;  --構え	
SP_02x=	152523;  --連撃手前
SP_03x=	152516;  --連撃後ろ
SP_04x=	152517;  --岩破壊手前	
SP_05x=	152518;  --岩破壊奥	
SP_06x=	152524;  --敵吹っ飛び手前
SP_07x=	152520;  --敵吹っ飛び奥
SP_08x= 152525;  --爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);

setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000 , 0);
setMoveKey(   5,   0,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);

setRotateKey(   0,   0, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   0, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--溜め
------------------------------------------------------

spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01,140,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0 , 0 );
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+140,tame,1.0,1.0);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+140,tame,0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+140,tame,255);

--文字エントリー
ctsyun = entryEffectLife( spep_0 + 104,  10011, 16, 0x100, -1, 0, -64, 370.7 );--シュンッ

setEffMoveKey( spep_0 + 104, ctsyun, -64, 370.7 , 0 );
setEffMoveKey( spep_0 + 106, ctsyun, -63.9, 370.7 , 0 );
setEffMoveKey( spep_0 + 108, ctsyun, -63.8, 370.7 , 0 );
setEffMoveKey( spep_0 + 110, ctsyun, -63.8, 370.7 , 0 );
setEffMoveKey( spep_0 + 112, ctsyun, -63.8, 370.6 , 0 );
setEffMoveKey( spep_0 + 114, ctsyun, -63.8, 370.6 , 0 );
setEffMoveKey( spep_0 + 116, ctsyun, -63.9, 370.6 , 0 );
setEffMoveKey( spep_0 + 120, ctsyun, -63.9, 370.6 , 0 );
setEffScaleKey( spep_0 + 104, ctsyun, 2.02, 2.02 );
setEffScaleKey( spep_0 + 106, ctsyun, 3.4, 3.4 );
setEffScaleKey( spep_0 + 108, ctsyun, 3.01, 3.01 );
setEffScaleKey( spep_0 + 110, ctsyun, 2.62, 2.62 );
setEffScaleKey( spep_0 + 112, ctsyun, 2.23, 2.23 );
setEffScaleKey( spep_0 + 114, ctsyun, 2.19, 2.19 );
setEffScaleKey( spep_0 + 116, ctsyun, 2.16, 2.16 );
setEffScaleKey( spep_0 + 118, ctsyun, 2.13, 2.13 );
setEffScaleKey( spep_0 + 120, ctsyun, 2.09, 2.09 );
setEffRotateKey( spep_0 + 104, ctsyun, -11.7 );
setEffRotateKey( spep_0 + 120, ctsyun, -11.7 );
setEffAlphaKey( spep_0 + 104, ctsyun, 255 );
setEffAlphaKey( spep_0 + 112, ctsyun, 255 );
setEffAlphaKey( spep_0 + 114, ctsyun, 191 );
setEffAlphaKey( spep_0 + 116, ctsyun, 128 );
setEffAlphaKey( spep_0 + 118, ctsyun, 64 );
setEffAlphaKey( spep_0 + 120, ctsyun, 0 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 )
setEffMoveKey( spep_0 + 138, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.05, 1.07 );
setEffScaleKey( spep_0 + 138, shuchusen1, 1.05, 1.07 );
setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 138, shuchusen1, 180 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 138, shuchusen1, 255 );


-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+132, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--***SE***
playSe(  spep_0,  9);
playSe(  spep_0+106,  43);  --瞬間移動


--次の準備
spep_1=spep_0+140;

------------------------------------------------------
--ぼうこう
------------------------------------------------------

ryusen1 = entryEffectLife( spep_1,  914, 120, 0x100, -1, 0,0, 0 );

setEffMoveKey(  spep_1,  ryusen1,  0,  0);
setEffMoveKey(  spep_1+120,  ryusen1,  0,  0);
setEffScaleKey(  spep_1,  ryusen1,  2.75,  1.22);
setEffScaleKey(  spep_1+120,  ryusen1,  2.75,  1.22);
setEffRotateKey(  spep_1, ryusen1,  0 );
setEffRotateKey(  spep_1+120,  ryusen1,  0);
setEffAlphaKey(  spep_1,  ryusen1,  0);
setEffAlphaKey(  spep_1+32,  ryusen1,  0);
setEffAlphaKey(  spep_1+46,  ryusen1,  100);
setEffAlphaKey(  spep_1+120,  ryusen1,  100);

--エフェクト(前)
rush_f=entryEffectLife(spep_1,SP_02,250,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, rush_f, 0, 0 , 0 );
setEffScaleKey(spep_1,rush_f,1.0,1.0);
setEffScaleKey(spep_1+250,rush_f,1.0,1.0);
setEffRotateKey(spep_1,rush_f,0);
setEffRotateKey(spep_1+250,rush_f,0);
setEffAlphaKey(spep_1,rush_f,255);
setEffAlphaKey(spep_1+250,rush_f,255);

--文字エントリー
ctsyun2 = entryEffectLife( spep_1 + 4,  10011, 16, 0x100, -1, 0, -132, 294.7 );--シュンッ

setEffMoveKey( spep_1 + 4, ctsyun2, -132, 294.7 , 0 );
setEffMoveKey( spep_1 + 6, ctsyun2, -131.9, 294.7 , 0 );
setEffMoveKey( spep_1 + 8, ctsyun2, -131.8, 294.7 , 0 );
setEffMoveKey( spep_1 + 14, ctsyun2, -131.8, 294.7 , 0 );
setEffMoveKey( spep_1 + 16, ctsyun2, -131.9, 294.7 , 0 );
setEffMoveKey( spep_1 + 18, ctsyun2, -132, 294.7 , 0 );
setEffMoveKey( spep_1 + 20, ctsyun2, -132, 294.7 , 0 );

setEffScaleKey( spep_1 + 4, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 + 6, ctsyun2, 2.1, 2.1 );
setEffScaleKey( spep_1 + 8, ctsyun2, 1.86, 1.86 );
setEffScaleKey( spep_1 + 10, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 12, ctsyun2, 1.38, 1.38 );
setEffScaleKey( spep_1 + 14, ctsyun2, 1.36, 1.36 );
setEffScaleKey( spep_1 + 16, ctsyun2, 1.34, 1.34 );
setEffScaleKey( spep_1 + 18, ctsyun2, 1.31, 1.31 );
setEffScaleKey( spep_1 + 20, ctsyun2, 1.29, 1.29 );

setEffRotateKey( spep_1 + 4, ctsyun2, 19.3 );
setEffRotateKey( spep_1 + 20, ctsyun2, 19.3 );
setEffAlphaKey( spep_1 + 4, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 12, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 14, ctsyun2, 191 );
setEffAlphaKey( spep_1 + 16, ctsyun2, 128 );
setEffAlphaKey( spep_1 + 18, ctsyun2, 64 );
setEffAlphaKey( spep_1 + 20, ctsyun2, 0 );

ct_dogaga = entryEffectLife( spep_1 + 42,  10017, 172, 0x100, -1, 0, 12, 370.7 );  --ドガガ

setEffMoveKey( spep_1 + 42, ct_dogaga, 12, 370.7 , 0 );
setEffMoveKey( spep_1 + 46, ct_dogaga, 12, 370.7 , 0 );
setEffMoveKey( spep_1 + 48, ct_dogaga, 11.8, 371.2 , 0 );
setEffMoveKey( spep_1 + 50, ct_dogaga, 4, 380.1 , 0 );
setEffMoveKey( spep_1 + 52, ct_dogaga, 11.8, 371 , 0 );
setEffMoveKey( spep_1 + 54, ct_dogaga, 4.8, 378.9 , 0 );
setEffMoveKey( spep_1 + 56, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 58, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 60, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 62, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 64, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 66, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 68, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 70, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 72, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 74, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 76, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 78, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 80, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 82, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 84, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 86, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 88, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 90, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 92, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 94, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 96, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 98, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 100, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 102, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 104, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 106, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 108, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 110, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 112, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 114, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 116, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 118, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 120, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 122, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 124, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 126, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 128, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 130, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 132, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 134, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 136, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 138, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 140, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 142, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 144, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 146, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 148, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 150, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 152, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 154, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 156, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 158, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 160, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 162, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 164, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 166, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 168, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 170, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 172, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 174, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 176, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 178, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 180, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 182, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 184, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 186, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 188, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 190, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 192, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 194, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 196, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 198, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 200, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 202, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 204, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 206, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 208, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 210, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 214, ct_dogaga, 11.9, 370.7 , 0 );

setEffScaleKey( spep_1 + 42, ct_dogaga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 46, ct_dogaga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 48, ct_dogaga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 50, ct_dogaga, 3.06, 3.06 );
setEffScaleKey( spep_1 + 52, ct_dogaga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 54, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_1 + 56, ct_dogaga, 2.6, 2.6 );
setEffScaleKey( spep_1 + 214, ct_dogaga, 2.6, 2.6 );

setEffRotateKey( spep_1 + 42, ct_dogaga, 14.5 );
setEffRotateKey( spep_1 + 214, ct_dogaga, 14.5 );

setEffAlphaKey( spep_1 + 42, ct_dogaga, 255 );
setEffAlphaKey( spep_1 + 206, ct_dogaga, 255 );
setEffAlphaKey( spep_1 + 208, ct_dogaga, 191 );
setEffAlphaKey( spep_1 + 210, ct_dogaga, 128 );
setEffAlphaKey( spep_1 + 212, ct_dogaga, 64 );
setEffAlphaKey( spep_1 + 214, ct_dogaga, 0 );

setEffShake(spep_1 + 42,ct_dogaga,172,10);

--文字エントリー
ctka = entryEffectLife( spep_1 + 230,  10004, 20, 0x100, -1, 0, 104.2, 312.5 );--カッ
setEffMoveKey( spep_1 + 230, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 232, ctka, 98.8, 322.6 , 0 );
setEffMoveKey( spep_1 + 234, ctka, 104.2, 312.6 , 0 );
setEffMoveKey( spep_1 + 236, ctka, 99.5, 321.2 , 0 );
setEffMoveKey( spep_1 + 238, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 240, ctka, 99.5, 321.3 , 0 );
setEffMoveKey( spep_1 + 242, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 244, ctka, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1 + 246, ctka, 104.2, 312.4 , 0 );
setEffMoveKey( spep_1 + 248, ctka, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1 + 250, ctka, 99.4, 321.3 , 0 );

setEffScaleKey( spep_1 + 230, ctka, 1.02, 1.02 );
setEffScaleKey( spep_1 + 232, ctka, 2.98, 2.98 );
setEffScaleKey( spep_1 + 234, ctka, 4.16, 4.16 );
setEffScaleKey( spep_1 + 236, ctka, 2.61, 2.61 );
setEffScaleKey( spep_1 + 238, ctka, 2.62, 2.62 );
setEffScaleKey( spep_1 + 240, ctka, 2.63, 2.63 );
setEffScaleKey( spep_1 + 242, ctka, 2.64, 2.64 );
setEffScaleKey( spep_1 + 244, ctka, 2.64, 2.64 );
setEffScaleKey( spep_1 + 246, ctka, 2.65, 2.65 );
setEffScaleKey( spep_1 + 248, ctka, 2.66, 2.66 );
setEffScaleKey( spep_1 + 250, ctka, 2.67, 2.67 );

setEffRotateKey( spep_1 + 230, ctka, 35.2 );
setEffRotateKey( spep_1 + 250, ctka, 35.2 );

setEffAlphaKey( spep_1 + 230, ctka, 64 );
setEffAlphaKey( spep_1 + 232, ctka, 183 );
setEffAlphaKey( spep_1 + 234, ctka, 255 );
setEffAlphaKey( spep_1 + 244, ctka, 255 );
setEffAlphaKey( spep_1 + 246, ctka, 142 );
setEffAlphaKey( spep_1 + 248, ctka, 57 );
setEffAlphaKey( spep_1 + 250, ctka, 0 );




--***突進（前）***
tosshin_f = entryEffect(  spep_1+250,  SP_04,  0x100,  -1,  0,  0,  0);

setEffMoveKey(  spep_1+250,  tosshin_f,  0,  0);
setEffMoveKey(  spep_1+400,  tosshin_f,  0,  0);
setEffScaleKey(  spep_1+250,  tosshin_f,  1.0,  1.0);
setEffScaleKey(  spep_1+400,  tosshin_f,  1.0,  1.0);
setEffRotateKey(  spep_1+250,  tosshin_f,  0);
setEffRotateKey(  spep_1+400,  tosshin_f,  0);
setEffAlphaKey(  spep_1+250,  tosshin_f,  255);
setEffAlphaKey(  spep_1+400,  tosshin_f,  255);


--***カットイン***
speff = entryEffect(  spep_1+310,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+310,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+322, 190006, 87, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_1 + 322, ctgogo, 255 );
setEffAlphaKey( spep_1 + 360, ctgogo, 255 );
setEffAlphaKey( spep_1 + 362, ctgogo, 191 );
setEffAlphaKey( spep_1 + 364, ctgogo, 128 );
setEffAlphaKey( spep_1 + 368, ctgogo, 64 );
setEffAlphaKey( spep_1 + 409, ctgogo, 0 );
setEffRotateKey(  spep_1+322,  ctgogo,  0);
setEffRotateKey(  spep_1+409,  ctgogo,  0);
setEffScaleKey(  spep_1+322,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1+360,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_1 + 409, ctgogo, 1.07, 1.07 );
setEffMoveKey(  spep_1+322,  ctgogo,  0,  530);
setEffMoveKey(  spep_1+409,  ctgogo,  0,  530);


--***SE***
playSe(  spep_1,  43);  --瞬間移動

--***敵の動き***
setDisp( spep_1, 1, 1 );
changeAnime( spep_1, 1, 100 );
setMoveKey(spep_1, 1, 172.1, 14.5 , 0 );
setMoveKey(spep_1+2, 1, 172.7, 14.6 , 0 );
setMoveKey(spep_1+4, 1, 173.3, 14.6 , 0 );
setMoveKey(spep_1+6, 1, 173.9, 14.7 , 0 );
setMoveKey(spep_1+8, 1, 174.5, 14.7 , 0 );
setMoveKey(spep_1+10, 1, 175.2, 14.8 , 0 );
setMoveKey(spep_1+12, 1, 175.8, 14.8 , 0 );
setMoveKey(spep_1+14, 1, 176.4, 14.9 , 0 );
setMoveKey(spep_1+16, 1, 177, 14.9 , 0 );
setMoveKey(spep_1+18, 1, 177.6, 15 , 0 );
setScaleKey(spep_1+0, 1, 1.09, 1.09 );
setScaleKey(spep_1+2, 1, 1.09, 1.09 );
setScaleKey(spep_1+4, 1, 1.1, 1.1 );
setScaleKey(spep_1+8, 1, 1.1, 1.1 );
setScaleKey(spep_1+10, 1, 1.11, 1.11 );
setScaleKey(spep_1+12, 1, 1.11, 1.11 );
setScaleKey(spep_1+14, 1, 1.12, 1.12 );
setScaleKey(spep_1+18, 1, 1.12, 1.12 );
setRotateKey(spep_1, 1, 0 );
setRotateKey(spep_1+18, 1, 0 );

--エフェクト(後)
rush_b=entryEffectLife(spep_1,SP_03,250,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, rush_b, 0, 0 , 0 );
setEffScaleKey(spep_1,rush_b,1.2,1.2);
setEffScaleKey(spep_1+250,rush_b,1.2,1.2);
setEffRotateKey(spep_1,rush_b,0);
setEffRotateKey(spep_1+250,rush_b,0);
setEffAlphaKey(spep_1,rush_b,255);
setEffAlphaKey(spep_1+250,rush_b,255);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+20 ; --エンドフェイズのフレーム数を置き換える
playSe( SP_dodge-12, 1042);
pauseAll( SP_dodge, 67);

--敵の位置固定
setMoveKey( SP_dodge, 1, 178.2, 15 , 0 );
setMoveKey( SP_dodge+2, 1, 178.2, 15 , 0 );
setMoveKey( SP_dodge+4, 1, 178.2, 15 , 0 );
setMoveKey( SP_dodge+6, 1, 178.2, 15 , 0 );
setMoveKey( SP_dodge+8, 1, 178.2, 15 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( spep_2 + 0, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 12, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 14, 1, 1.13, 1.13 );
setScaleKey( SP_dodge, 1, 1.13, 1.13 );
setScaleKey( SP_dodge+2, 1, 1.13, 1.13 );
setScaleKey( SP_dodge+4, 1, 1.13, 1.13 );
setScaleKey( SP_dodge+6, 1, 1.13, 1.13 );
setScaleKey( SP_dodge+8, 1, 1.13, 1.13 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  178.2, 15 , 0 );
setMoveKey(  SP_dodge+10,    1,  178.2, 15 , 0 );
setScaleKey( SP_dodge+9,    1,  1.13, 1.13 );
setScaleKey( SP_dodge+10,    1,  1.13, 1.13 );
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

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

setDisp( spep_1+226, 1, 0 );
setDisp(  spep_1+258,  1,  1);
setDisp(  spep_1+280,  1,  0);  --消す
setShakeChara(spep_1+42,  1,  256,  20); --揺れ


changeAnime( spep_1+32, 1, 104 );
changeAnime( spep_1+42, 1, 108 );  --くの字
changeAnime( spep_1+52, 1, 104 );
changeAnime( spep_1+54, 1, 106 );  
changeAnime( spep_1+62, 1, 108 );
changeAnime( spep_1+70, 1, 106 );
changeAnime( spep_1+78, 1, 108 );
changeAnime( spep_1+90, 1, 106 );
changeAnime( spep_1+98, 1, 108 );
changeAnime( spep_1+104, 1, 104 );
changeAnime( spep_1+108, 1, 108 );
changeAnime( spep_1+114, 1, 106 );
changeAnime( spep_1+122, 1, 108 );
changeAnime( spep_1+130, 1, 104 );
changeAnime( spep_1+132, 1, 106 );
changeAnime( spep_1+140, 1, 108 );
changeAnime( spep_1+148, 1, 106 );
changeAnime( spep_1+156, 1, 108 );
changeAnime( spep_1+168, 1, 106 );
changeAnime( spep_1+176, 1, 108 );
changeAnime( spep_1+182, 1, 104 );
changeAnime( spep_1+186, 1, 108 );
changeAnime( spep_1+192, 1, 106 );
changeAnime( spep_1+200, 1, 108 );
changeAnime( spep_1+208, 1, 104 );
changeAnime( spep_1+210, 1, 106 );
changeAnime( spep_1+218, 1, 108 );

changeAnime(spep_1+258,  1,  107);   --手前吹っ飛び

setMoveKey(spep_1+20, 1, 178.2, 15 , 0 );
setMoveKey(spep_1+22, 1, 178.9, 15.1 , 0 );
setMoveKey(spep_1+24, 1, 179.5, 15.1 , 0 );
setMoveKey(spep_1+26, 1, 180.1, 15.2 , 0 );
setMoveKey(spep_1+28, 1, 180.7, 15.2 , 0 );
setMoveKey(spep_1+30, 1, 167.1, 16.8 , 0 );
setMoveKey(spep_1+32, 1, 152.2, 23 , 0 );
setMoveKey(spep_1+34, 1, 148, 24.8 , 0 );
setMoveKey(spep_1+36, 1, 144.7, 26.6 , 0 );
setMoveKey(spep_1+38, 1, 142.3, 28.4 , 0 );
setMoveKey(spep_1+40, 1, 140.8, 30.2 , 0 );
setMoveKey(spep_1+42, 1, 140.1, 32 , 0 );
setMoveKey(spep_1+44, 1, 150.4, 36 , 0 );
setMoveKey(spep_1+46, 1, 154.6, 31.7 , 0 );
setMoveKey(spep_1+48, 1, 167, 35.5 , 0 );
setMoveKey(spep_1+50, 1, 167.5, 27.2 , 0 );
setMoveKey(spep_1+52, 1, 162.2, 17.4 , 0 );
setMoveKey(spep_1+54, 1, 119.3, 52.1 , 0 );
setMoveKey(spep_1+56, 1, 129.3, 66.4 , 0 );
setMoveKey(spep_1+58, 1, 140.7, 50.7 , 0 );
setMoveKey(spep_1+60, 1, 150.7, 65.3 , 0 );
setMoveKey(spep_1+62, 1, 167.4, 58 , 0 );
setMoveKey(spep_1+64, 1, 175.5, 61.9 , 0 );
setMoveKey(spep_1+66, 1, 171.6, 57.8 , 0 );
setMoveKey(spep_1+68, 1, 183.9, 61.7 , 0 );
setMoveKey(spep_1+70, 1, 140.7, 83.2 , 0 );
setMoveKey(spep_1+72, 1, 141.5, 102.8 , 0 );
setMoveKey(spep_1+74, 1, 148.8, 92.2 , 0 );
setMoveKey(spep_1+76, 1, 145.1, 102.8 , 0 );
setMoveKey(spep_1+78, 1, 187.6, 53.1 , 0 );
setMoveKey(spep_1+80, 1, 209.9, 60.2 , 0 );
setMoveKey(spep_1+82, 1, 220.4, 55.3 , 0 );
setMoveKey(spep_1+84, 1, 239, 29.1 , 0 );
setMoveKey(spep_1+86, 1, 230.8, 24.8 , 0 );
setMoveKey(spep_1+88, 1, 238.5, 28.5 , 0 );
setMoveKey(spep_1+310, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1+312, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+314, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1+316, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+318, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1+320, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+322, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1+324, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+326, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1+328, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+330, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1+332, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+334, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1+336, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+338, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1+90, 1, 132.7, 68.2 , 0 );
setMoveKey(spep_1+92, 1, 133.4, 98.5 , 0 );
setMoveKey(spep_1+94, 1, 141.3, 97.8 , 0 );
setMoveKey(spep_1+96, 1, 137.2, 119.2 , 0 );
setMoveKey(spep_1+98, 1, 182.2, 55.8 , 0 );
setMoveKey(spep_1+100, 1, 205.3, 58.9 , 0 );
setMoveKey(spep_1+102, 1, 216.5, 50 , 0 );
setMoveKey(spep_1+104, 1, 174.3, 23.7 , 0 );
setMoveKey(spep_1+106, 1, 185.5, 19.4 , 0 );
setMoveKey(spep_1+108, 1, 187.5, 27.4 , 0 );
setMoveKey(spep_1+110, 1, 192.6, 23.1 , 0 );
setMoveKey(spep_1+112, 1, 205.8, 26.8 , 0 );
setMoveKey(spep_1+114, 1, 106.8, 55.5 , 0 );
setMoveKey(spep_1+116, 1, 105.5, 73.1 , 0 );
setMoveKey(spep_1+118, 1, 108.4, 58.5 , 0 );
setMoveKey(spep_1+120, 1, 27.9, 184.8 , 0 );
setMoveKey(spep_1+122, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1+124, 1, 34.5, 168.7 , 0 );
setMoveKey(spep_1+126, 1, 37.4, 168.7 , 0 );
setMoveKey(spep_1+128, 1, 40.3, 168.7 , 0 );
setMoveKey(spep_1+130, 1, 34.8, 161.9 , 0 );
setMoveKey(spep_1+132, 1, 19.2, 177 , 0 );
setMoveKey(spep_1+134, 1, 21.2, 181.1 , 0 );
setMoveKey(spep_1+136, 1, 28.4, 178.2 , 0 );
setMoveKey(spep_1+138, 1, 28.8, 180.8 , 0 );
setMoveKey(spep_1+140, 1, 36.3, 179.6 , 0 );
setMoveKey(spep_1+142, 1, 37.4, 179.6 , 0 );
setMoveKey(spep_1+144, 1, 38.6, 179.6 , 0 );
setMoveKey(spep_1+146, 1, 39.7, 179.6 , 0 );
setMoveKey(spep_1+148, 1, 24.6, 190.7 , 0 );
setMoveKey(spep_1+150, 1, 23.1, 194.9 , 0 );
setMoveKey(spep_1+152, 1, 26.9, 192.5 , 0 );
setMoveKey(spep_1+154, 1, 23.6, 194.9 , 0 );
setMoveKey(spep_1+156, 1, 41.7, 179.6 , 0 );
setMoveKey(spep_1+158, 1, 46.5, 179.3 , 0 );
setMoveKey(spep_1+160, 1, 51.2, 179 , 0 );
setMoveKey(spep_1+162, 1, 55.9, 168.2 , 0 );
setMoveKey(spep_1+164, 1, 55.3, 168.2 , 0 );
setMoveKey(spep_1+166, 1, 54.6, 168.2 , 0 );
setMoveKey(spep_1+168, 1, 17.8, 185.2 , 0 );
setMoveKey(spep_1+170, 1, 16.3, 193.1 , 0 );
setMoveKey(spep_1+172, 1, 20.1, 194.3 , 0 );
setMoveKey(spep_1+174, 1, 16.8, 200.3 , 0 );
setMoveKey(spep_1+176, 1, 34.9, 179.6 , 0 );
setMoveKey(spep_1+178, 1, 39.7, 179.3 , 0 );
setMoveKey(spep_1+180, 1, 44.4, 179 , 0 );
setMoveKey(spep_1+182, 1, 28, 167.3 , 0 );
setMoveKey(spep_1+184, 1, 32.7, 167.3 , 0 );
setMoveKey(spep_1+186, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1+188, 1, 34.1, 168.7 , 0 );
setMoveKey(spep_1+190, 1, 36.7, 168.7 , 0 );
setMoveKey(spep_1+192, 1, 4.3, 179.8 , 0 );
setMoveKey(spep_1+194, 1, 2.1, 184.4 , 0 );
setMoveKey(spep_1+196, 1, 5.3, 182.2 , 0 );
setMoveKey(spep_1+198, 1, 1.5, 184.8 , 0 );
setMoveKey(spep_1+200, 1, 5.1, 168.7 , 0 );
setMoveKey(spep_1+202, 1, 8, 168.7 , 0 );
setMoveKey(spep_1+204, 1, 11, 168.7 , 0 );
setMoveKey(spep_1+206, 1, 13.9, 168.7 , 0 );
setMoveKey(spep_1+208, 1, 8.3, 161.9 , 0 );
setMoveKey(spep_1+210, 1, -7.2, 177 , 0 );
setMoveKey(spep_1+212, 1, -5.2, 181.1 , 0 );
setMoveKey(spep_1+214, 1, 1.9, 178.2 , 0 );
setMoveKey(spep_1+216, 1, 2.3, 180.8 , 0 );
setMoveKey(spep_1+218, 1, 9.8, 179.6 , 0 );
setMoveKey(spep_1+220, 1, 11, 179.6 , 0 );
setMoveKey(spep_1+222, 1, 12.1, 179.6 , 0 );
setMoveKey(spep_1+224, 1, 13.3, 179.6 , 0 );

setMoveKey(spep_1+258-2, 1, -34.2, -24 , 0 );
setMoveKey(spep_1+260-2, 1, -30.1, -34 , 0 );
setMoveKey(spep_1+262-2, 1, -38.1, -56.1 , 0 );
setMoveKey(spep_1+264-2, 1, -30.1, -62.1 , 0 );
setMoveKey(spep_1+266-2, 1, -34.1, -80.1 , 0 );
setMoveKey(spep_1+268-2, 1, -30.1, -90.2 , 0 );
setMoveKey(spep_1+270-2, 1, -38, -185.1 , 0 );
setMoveKey(spep_1+272-2, 1, -30, -264.1 , 0 );
setMoveKey(spep_1+274-2, 1, -33.9, -355 , 0 );
setMoveKey(spep_1+276-2, 1, -29.9, -438 , 0 );
setMoveKey(spep_1+278-2, 1, -37.8, -533 , 0 );
setMoveKey(spep_1+280-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+282-2, 1, -33.8, -616 , 0 );
setMoveKey(spep_1+284-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+286-2, 1, -37.8, -620 , 0 );
setMoveKey(spep_1+288-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+290-2, 1, -33.8, -616 , 0 );
setMoveKey(spep_1+292-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+294-2, 1, -37.8, -620 , 0 );
setMoveKey(spep_1+296-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+298-2, 1, -33.8, -616 , 0 );
setMoveKey(spep_1+300-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+302-2, 1, -37.8, -620 , 0 );
setMoveKey(spep_1+304-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+306-2, 1, -33.8, -616 , 0 );
setMoveKey(spep_1+308-2, 1, -29.8, -612 , 0 );


setScaleKey(spep_1+20, 1, 1.38, 1.38 );
setScaleKey(spep_1+24, 1, 1.38, 1.38 );
setScaleKey(spep_1+26, 1, 1.39, 1.39 );
setScaleKey(spep_1+28, 1, 1.39, 1.39 );
setScaleKey(spep_1+30, 1, 1.45, 1.45 );
setScaleKey(spep_1+32, 1, 1.62, 1.62 );
setScaleKey(spep_1+34, 1, 1.58, 1.58 );
setScaleKey(spep_1+36, 1, 1.64, 1.64 );
setScaleKey(spep_1+38, 1, 1.69, 1.69 );
setScaleKey(spep_1+40, 1, 1.77, 1.77 );
setScaleKey(spep_1+42, 1, 1.83, 1.83 );
setScaleKey(spep_1+44, 1, 1.88, 1.88 );
setScaleKey(spep_1+46, 1, 1.89, 1.89 );
setScaleKey(spep_1+48, 1, 1.90, 1.90 );
setScaleKey(spep_1+50, 1, 1.91, 1.92 );
setScaleKey(spep_1+52, 1, 1.92, 1.92 );
setScaleKey(spep_1+54, 1, 1.79, 1.79 );
setScaleKey(spep_1+56, 1, 1.8, 1.8 );
setScaleKey(spep_1+58, 1, 1.81, 1.81 );
setScaleKey(spep_1+60, 1, 1.81, 1.81 );
setScaleKey(spep_1+62, 1, 1.96, 1.96 );
setScaleKey(spep_1+64, 1, 1.97, 1.97 );
setScaleKey(spep_1+66, 1, 1.98, 1.98 );
setScaleKey(spep_1+68, 1, 1.98, 1.98 );
setScaleKey(spep_1+70, 1, 1.86, 1.86 );
setScaleKey(spep_1+72, 1, 1.86, 1.86 );
setScaleKey(spep_1+74, 1, 1.87, 1.87 );
setScaleKey(spep_1+76, 1, 1.88, 1.88 );
setScaleKey(spep_1+78, 1, 2.03, 2.03 );
setScaleKey(spep_1+80, 1, 2.04, 2.04 );
setScaleKey(spep_1+82, 1, 2.05, 2.05 );
setScaleKey(spep_1+84, 1, 2.06, 2.06 );
setScaleKey(spep_1+86, 1, 2.06, 2.06 );
setScaleKey(spep_1+88, 1, 2.07, 2.07 );
setScaleKey(spep_1+90, 1, 1.93, 1.93 );
setScaleKey(spep_1+92, 1, 1.94, 1.94 );
setScaleKey(spep_1+94, 1, 1.95, 1.95 );
setScaleKey(spep_1+96, 1, 2.01, 2.01 );
setScaleKey(spep_1+98, 1, 2.12, 2.12 );
setScaleKey(spep_1+100, 1, 2.13, 2.13 );
setScaleKey(spep_1+102, 1, 2.13, 2.13 );
setScaleKey(spep_1+104, 1, 2.15, 2.15 );
setScaleKey(spep_1+106, 1, 2.16, 2.16 );
setScaleKey(spep_1+108, 1, 2.16, 2.16 );
setScaleKey(spep_1+110, 1, 2.17, 2.17 );
setScaleKey(spep_1+112, 1, 2.18, 2.18 );
setScaleKey(spep_1+114, 1, 2.03, 2.03 );
setScaleKey(spep_1+116, 1, 2.04, 2.04 );
setScaleKey(spep_1+118, 1, 2.05, 2.05 );
setScaleKey(spep_1+120, 1, 0.6, 0.6 );
setScaleKey(spep_1+122, 1, 0.65, 0.65 );
setScaleKey(spep_1+128, 1, 0.65, 0.65 );
setScaleKey(spep_1+130, 1, 0.66, 0.66 );
setScaleKey(spep_1+132, 1, 0.6, 0.6 );
setScaleKey(spep_1+138, 1, 0.6, 0.6 );
setScaleKey(spep_1+140, 1, 0.65, 0.65 );
setScaleKey(spep_1+146, 1, 0.65, 0.65 );
setScaleKey(spep_1+148, 1, 0.6, 0.6 );
setScaleKey(spep_1+154, 1, 0.6, 0.6 );
setScaleKey(spep_1+156, 1, 0.65, 0.65 );
setScaleKey(spep_1+166, 1, 0.65, 0.65 );
setScaleKey(spep_1+168, 1, 0.6, 0.6 );
setScaleKey(spep_1+174, 1, 0.6, 0.6 );
setScaleKey(spep_1+176, 1, 0.65, 0.65 );
setScaleKey(spep_1+180, 1, 0.65, 0.65 );
setScaleKey(spep_1+182, 1, 0.66, 0.66 );
setScaleKey(spep_1+184, 1, 0.66, 0.66 );
setScaleKey(spep_1+186, 1, 0.65, 0.65 );
setScaleKey(spep_1+190, 1, 0.65, 0.65 );
setScaleKey(spep_1+192, 1, 0.6, 0.6 );
setScaleKey(spep_1+198, 1, 0.6, 0.6 );
setScaleKey(spep_1+200, 1, 0.65, 0.65 );
setScaleKey(spep_1+206, 1, 0.65, 0.65 );
setScaleKey(spep_1+208, 1, 0.66, 0.66 );
setScaleKey(spep_1+210, 1, 0.6, 0.6 );
setScaleKey(spep_1+218, 1, 0.65, 0.65 );

setScaleKey(spep_1+258-2, 1, 0.21, 0.21 );
setScaleKey(spep_1+260-2, 1, 0.37, 0.37 );
setScaleKey(spep_1+262-2, 1, 0.53, 0.53 );
setScaleKey(spep_1+264-2, 1, 0.69, 0.69 );
setScaleKey(spep_1+266-2, 1, 0.85, 0.85 );
setScaleKey(spep_1+268-2, 1, 1.01, 1.01 );
setScaleKey(spep_1+270-2, 1, 1.4, 1.4 );
setScaleKey(spep_1+272-2, 1, 1.79, 1.79 );
setScaleKey(spep_1+274-2, 1, 2.17, 2.17 );
setScaleKey(spep_1+276-2, 1, 2.56, 2.56 );
setScaleKey(spep_1+278-2, 1, 2.95, 2.95 );
setScaleKey(spep_1+280-2, 1, 3.34, 3.34 );

setRotateKey(spep_1+20, 1, 0 );
setRotateKey(spep_1+30, 1, 0 );
setRotateKey(spep_1+32, 1, -2 );
setRotateKey(spep_1+34, 1, -1.6 );
setRotateKey(spep_1+36, 1, -1.2 );
setRotateKey(spep_1+38, 1, -0.8 );
setRotateKey(spep_1+40, 1, -0.4 );
setRotateKey(spep_1+42, 1, 0 );
setRotateKey(spep_1+44, 1, -0.2 );
setRotateKey(spep_1+50, 1, -0.2 );
setRotateKey(spep_1+52, 1, -2 );
setRotateKey(spep_1+54, 1, -41 );
setRotateKey(spep_1+56, 1, -37.7 );
setRotateKey(spep_1+58, 1, -34.4 );
setRotateKey(spep_1+60, 1, -31.1 );
setRotateKey(spep_1+62, 1, -15.9 );
setRotateKey(spep_1+64, 1, -18.3 );
setRotateKey(spep_1+66, 1, -20.8 );
setRotateKey(spep_1+68, 1, -23.2 );
setRotateKey(spep_1+70, 1, -41 );
setRotateKey(spep_1+72, 1, -40 );
setRotateKey(spep_1+74, 1, -39.1 );
setRotateKey(spep_1+76, 1, -38.1 );
setRotateKey(spep_1+78, 1, -5.7 );
setRotateKey(spep_1+82, 1, -5.7 );
setRotateKey(spep_1+84, 1, -3.8 );
setRotateKey(spep_1+86, 1, -0.5 );
setRotateKey(spep_1+88, 1, 2.9 );
setRotateKey(spep_1+90, 1, -41 );
setRotateKey(spep_1+92, 1, -40 );
setRotateKey(spep_1+94, 1, -39.1 );
setRotateKey(spep_1+96, 1, -38.1 );
setRotateKey(spep_1+98, 1, -5.7 );
setRotateKey(spep_1+102, 1, -5.7 );
setRotateKey(spep_1+104, 1, -2 );
setRotateKey(spep_1+106, 1, -2 );
setRotateKey(spep_1+108, 1, -5.7 );
setRotateKey(spep_1+112, 1, -5.7 );
setRotateKey(spep_1+114, 1, -41 );
setRotateKey(spep_1+116, 1, -40.4 );
setRotateKey(spep_1+118, 1, -39.7 );
setRotateKey(spep_1+120, 1, -39.1 );
setRotateKey(spep_1+122, 1, -0.2 );
setRotateKey(spep_1+128, 1, -0.2 );
setRotateKey(spep_1+130, 1, -2 );
setRotateKey(spep_1+132, 1, -41 );
setRotateKey(spep_1+134, 1, -37.7 );
setRotateKey(spep_1+136, 1, -34.4 );
setRotateKey(spep_1+138, 1, -31.1 );
setRotateKey(spep_1+140, 1, -15.9 );
setRotateKey(spep_1+142, 1, -18.3 );
setRotateKey(spep_1+144, 1, -20.8 );
setRotateKey(spep_1+146, 1, -23.2 );
setRotateKey(spep_1+148, 1, -41 );
setRotateKey(spep_1+150, 1, -40 );
setRotateKey(spep_1+152, 1, -39.1 );
setRotateKey(spep_1+154, 1, -38.1 );
setRotateKey(spep_1+156, 1, -5.7 );
setRotateKey(spep_1+160, 1, -5.7 );
setRotateKey(spep_1+162, 1, -3.8 );
setRotateKey(spep_1+164, 1, -0.5 );
setRotateKey(spep_1+166, 1, 2.9 );
setRotateKey(spep_1+168, 1, -41 );
setRotateKey(spep_1+170, 1, -40 );
setRotateKey(spep_1+172, 1, -39.1 );
setRotateKey(spep_1+174, 1, -38.1 );
setRotateKey(spep_1+176, 1, -5.7 );
setRotateKey(spep_1+180, 1, -5.7 );
setRotateKey(spep_1+182, 1, -2 );
setRotateKey(spep_1+184, 1, -2 );
setRotateKey(spep_1+186, 1, -5.7 );
setRotateKey(spep_1+190, 1, -5.7 );
setRotateKey(spep_1+192, 1, -41 );
setRotateKey(spep_1+194, 1, -40.4 );
setRotateKey(spep_1+196, 1, -39.7 );
setRotateKey(spep_1+198, 1, -39.1 );
setRotateKey(spep_1+200, 1, -0.2 );
setRotateKey(spep_1+206, 1, -0.2 );
setRotateKey(spep_1+208, 1, -2 );
setRotateKey(spep_1+210, 1, -41 );
setRotateKey(spep_1+212, 1, -37.7 );
setRotateKey(spep_1+214, 1, -34.4 );
setRotateKey(spep_1+216, 1, -31.1 );
setRotateKey(spep_1+218, 1, -15.9 );
setRotateKey(spep_1+220, 1, -18.3 );
setRotateKey(spep_1+222, 1, -20.8 );
setRotateKey(spep_1+224, 1, -23.2 );

setRotateKey(spep_1+258-2, 1, 4.7 );
setRotateKey(spep_1+262-2, 1, 4.7 );
setRotateKey(spep_1+264-2, 1, 4.6 );
setRotateKey(spep_1+272-2, 1, 4.6 );
setRotateKey(spep_1+274-2, 1, 4.7 );


--集中線
shuchusen2 = entryEffectLife( spep_1 + 40,  906, 210, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 40, shuchusen2, 1.34, 1.9 );
setEffScaleKey( spep_1 + 250, shuchusen2, 1.34, 1.9 );
setEffRotateKey( spep_1 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 + 250, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 40, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 250, shuchusen2, 255 );

tosshin_b = entryEffect(  spep_1+250,  SP_05,  0x80,  -1, 0, 0, 0);

setEffMoveKey(  spep_1+250,  tosshin_b,  0,  0);
setEffMoveKey(  spep_1+400,  tosshin_b,  0,  0);
setEffScaleKey(  spep_1+250,  tosshin_b,  1.0,  1.0);
setEffScaleKey(  spep_1+400,  tosshin_b,  1.0,  1.0);
setEffRotateKey(  spep_1+250,  tosshin_b,  0);
setEffRotateKey(  spep_1+400,  tosshin_b,  0);
setEffAlphaKey(  spep_1+250,  tosshin_b,  255);
setEffAlphaKey(  spep_1+400,  tosshin_b,  255);

--[[
--集中線
shuchusen2a = entryEffectLife( spep_1 + 44,  906, 204, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_1 + 44, shuchusen2a, 0, 0 , 0 );
setEffMoveKey( spep_1 + 248, shuchusen2a, 0, 0 , 0 );
setEffScaleKey( spep_1 + 44, shuchusen2a, 1.34, 1.9 );
setEffScaleKey( spep_1 + 248, shuchusen2a, 1.34, 1.9 );
setEffRotateKey( spep_1 + 44, shuchusen2a, 0 );
setEffRotateKey( spep_1 + 248, shuchusen2a, 0 );
setEffAlphaKey( spep_1 + 44, shuchusen2a, 255 );
setEffAlphaKey( spep_1 + 248, shuchusen2a, 255 );
]]
--***SE***
playSe(  spep_1+44,  1000);
playSe(  spep_1+52,  1004);
playSe(  spep_1+54,  1001);
playSe(  spep_1+62,  1007);
playSe(  spep_1+70,  1000);
playSe(  spep_1+90,  1002);  --ここまでアップ

playSe(  spep_1+98,  1009);
playSe(  spep_1+104,  1000);
playSe(  spep_1+108,  1001);
playSe(  spep_1+114,  1002);
playSe(  spep_1+122,  1000);
playSe(  spep_1+130,  1003);
playSe(  spep_1+132,  1000);
playSe(  spep_1+140,  1007);
playSe(  spep_1+148,  1004);
playSe(  spep_1+156,  1002); 
playSe(  spep_1+168,  1000);
playSe(  spep_1+176,  1003);
playSe(  spep_1+182,  1004);
playSe(  spep_1+186,  1007);
playSe(  spep_1+192,  1001);
playSe(  spep_1+200,  1009);
playSe(  spep_1+208,  1000);
playSe(  spep_1+210,  1013);
playSe(  spep_1+218,  1000);
playSe(  spep_1+230,  1011);
playSe(  spep_1+322,  SE_04);  --カットイン

-- ** エフェクト等 ** --
entryFade(spep_1+40, 0,2, 2,fcolor_r,fcolor_g,fcolor_b,200);     -- whit_fe fade
entryFade(spep_1+112, 6,6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_1+222, 0,4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_1+246, 0,4, 0,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_1+392, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+400;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;
------------------------------------------------------
--追い討ち(200)
------------------------------------------------------
--***書き文字***
ct_shun2 = entryEffectLife( spep_3 + 52,  10011, 24, 0x100, -1, 0, -48, 334.6 );  --シュン

setEffMoveKey( spep_3 + 52, ct_shun2, -48, 334.6 , 0 );
setEffMoveKey( spep_3 + 54, ct_shun2, -48, 334.7 , 0 );
setEffMoveKey( spep_3 + 56, ct_shun2, -47.9, 334.7 , 0 );
setEffMoveKey( spep_3 + 60, ct_shun2, -47.9, 334.7 , 0 );
setEffMoveKey( spep_3 + 62, ct_shun2, -47.8, 334.6 , 0 );
setEffMoveKey( spep_3 + 66, ct_shun2, -47.8, 334.6 , 0 );
setEffMoveKey( spep_3 + 68, ct_shun2, -47.9, 334.6 , 0 );
setEffMoveKey( spep_3 + 70, ct_shun2, -47.9, 334.6 , 0 );
setEffMoveKey( spep_3 + 72, ct_shun2, -48, 334.6 , 0 );
setEffMoveKey( spep_3 + 76, ct_shun2, -48, 334.6 , 0 );
setEffScaleKey( spep_3 + 52, ct_shun2, 1.79, 1.79 );
setEffScaleKey( spep_3 + 54, ct_shun2, 3.02, 3.02 );
setEffScaleKey( spep_3 + 56, ct_shun2, 2.81, 2.81 );
setEffScaleKey( spep_3 + 58, ct_shun2, 2.6, 2.6 );
setEffScaleKey( spep_3 + 60, ct_shun2, 2.4, 2.4 );
setEffScaleKey( spep_3 + 62, ct_shun2, 2.19, 2.19 );
setEffScaleKey( spep_3 + 64, ct_shun2, 1.98, 1.98 );
setEffScaleKey( spep_3 + 66, ct_shun2, 1.96, 1.96 );
setEffScaleKey( spep_3 + 68, ct_shun2, 1.94, 1.94 );
setEffScaleKey( spep_3 + 70, ct_shun2, 1.92, 1.92 );
setEffScaleKey( spep_3 + 72, ct_shun2, 1.89, 1.89 );
setEffScaleKey( spep_3 + 74, ct_shun2, 1.87, 1.87 );
setEffScaleKey( spep_3 + 76, ct_shun2, 1.85, 1.85 );
setEffRotateKey( spep_3 + 52, ct_shun2, -7.2 );
setEffRotateKey( spep_3 + 76, ct_shun2, -7.2 );
setEffAlphaKey( spep_3 + 52, ct_shun2, 255 );
setEffAlphaKey( spep_3 + 64, ct_shun2, 255 );
setEffAlphaKey( spep_3 + 66, ct_shun2, 213 );
setEffAlphaKey( spep_3 + 68, ct_shun2, 170 );
setEffAlphaKey( spep_3 + 70, ct_shun2, 128 );
setEffAlphaKey( spep_3 + 72, ct_shun2, 85 );
setEffAlphaKey( spep_3 + 74, ct_shun2, 42 );
setEffAlphaKey( spep_3 + 76, ct_shun2, 0 );


ct_ex = entryEffectLife( spep_3 + 54,  10000, 40, 0x100, -1, 0, 229.2, 201.1 );  --!!

setEffMoveKey( spep_3 + 54, ct_ex, 229.2, 201.1 , 0 );
setEffMoveKey( spep_3 + 56, ct_ex, 231.6, 215.2 , 0 );
setEffMoveKey( spep_3 + 58, ct_ex, 239.2, 217 , 0 );
setEffMoveKey( spep_3 + 60, ct_ex, 237.1, 221.3 , 0 );
setEffMoveKey( spep_3 + 62, ct_ex, 241.9, 209 , 0 );
setEffMoveKey( spep_3 + 64, ct_ex, 243.3, 205 , 0 );
setEffMoveKey( spep_3 + 66, ct_ex, 242.9, 210.7 , 0 );
setEffMoveKey( spep_3 + 68, ct_ex, 248.4, 202.6 , 0 );
setEffMoveKey( spep_3 + 70, ct_ex, 248, 208.3 , 0 );
setEffMoveKey( spep_3 + 72, ct_ex, 253.4, 200.2 , 0 );
setEffMoveKey( spep_3 + 74, ct_ex, 253.1, 205.9 , 0 );
setEffMoveKey( spep_3 + 76, ct_ex, 258.5, 197.8 , 0 );
setEffMoveKey( spep_3 + 78, ct_ex, 258.1, 203.5 , 0 );
setEffMoveKey( spep_3 + 80, ct_ex, 263.6, 195.4 , 0 );
setEffMoveKey( spep_3 + 82, ct_ex, 263.2, 201.1 , 0 );
setEffMoveKey( spep_3 + 84, ct_ex, 268.6, 193 , 0 );
setEffMoveKey( spep_3 + 86, ct_ex, 268.3, 198.7 , 0 );
setEffMoveKey( spep_3 + 88, ct_ex, 273.7, 190.6 , 0 );
setEffMoveKey( spep_3 + 90, ct_ex, 273.3, 196.3 , 0 );
setEffMoveKey( spep_3 + 92, ct_ex, 278.8, 188.2 , 0 );
setEffMoveKey( spep_3 + 94, ct_ex, 278.4, 193.9 , 0 );
setEffScaleKey( spep_3 + 54, ct_ex, 1.49, 1.49 );
setEffScaleKey( spep_3 + 56, ct_ex, 2.76, 2.76 );
setEffScaleKey( spep_3 + 58, ct_ex, 4.03, 4.03 );
setEffScaleKey( spep_3 + 60, ct_ex, 3.71, 3.71 );
setEffScaleKey( spep_3 + 62, ct_ex, 3.4, 3.4 );
setEffScaleKey( spep_3 + 64, ct_ex, 3.08, 3.08 );
setEffScaleKey( spep_3 + 94, ct_ex, 3.08, 3.08 );
setEffRotateKey( spep_3 + 54, ct_ex, 15.4 );
setEffRotateKey( spep_3 + 94, ct_ex, 15.4 );
setEffAlphaKey( spep_3 + 54, ct_ex, 255 );
setEffAlphaKey( spep_3 + 94, ct_ex, 255 );

ct_zuo = entryEffectLife( spep_3 + 96,  10012, 34, 0x100, -1, 0, 78.7, 260.5 );  --ズオ

setEffMoveKey( spep_3 + 96, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3 + 98, ct_zuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_3 + 100, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 102, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 104, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 106, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 108, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 110, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 112, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 114, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 116, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 118, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 120, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 122, ct_zuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_3 + 124, ct_zuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_3 + 126, ct_zuo, 211.6, 339 , 0 );
setEffMoveKey( spep_3 + 128, ct_zuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_3 + 130, ct_zuo, 210.3, 372.4 , 0 );
setEffScaleKey( spep_3 + 96, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_3 + 98, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_3 + 100, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 120, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 122, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_3 + 124, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_3 + 126, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_3 + 128, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_3 + 130, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_3 + 96, ct_zuo, 27.2 );
setEffRotateKey( spep_3 + 130, ct_zuo, 27.2 );
setEffAlphaKey( spep_3 + 96, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 120, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 122, ct_zuo, 204 );
setEffAlphaKey( spep_3 + 124, ct_zuo, 153 );
setEffAlphaKey( spep_3 + 126, ct_zuo, 102 );
setEffAlphaKey( spep_3 + 128, ct_zuo, 51 );
setEffAlphaKey( spep_3 + 130, ct_zuo, 0 );

setEffShake(spep_3 + 96,ct_zuo,34,20);

ct_zudodo = entryEffectLife( spep_3 + 136,  10014, 60, 0x100, -1, 0, 54.8, 362 );
setEffMoveKey( spep_3 + 136, ct_zudodo, 54.8, 362 , 0 );
setEffMoveKey( spep_3 + 138, ct_zudodo, 66.4, 371 , 0 );
setEffMoveKey( spep_3 + 140, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 142, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 144, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 146, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 148, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 150, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 152, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 154, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 156, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 158, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 160, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 162, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 164, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 166, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 168, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 170, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 172, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 174, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 176, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 178, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 180, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 182, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 184, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 186, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 188, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 190, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 192, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 194, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 196, ct_zudodo, 52.4, 351.2 , 0 );

setEffScaleKey( spep_3 + 136, ct_zudodo, 1.73, 1.73 );
setEffScaleKey( spep_3 + 138, ct_zudodo, 2.16, 2.16 );
setEffScaleKey( spep_3 + 140, ct_zudodo, 2.59, 2.59 );
setEffScaleKey( spep_3 + 196, ct_zudodo, 2.59, 2.59 );

setEffRotateKey( spep_3 + 136, ct_zudodo, 58.7 );
setEffRotateKey( spep_3 + 196, ct_zudodo, 58.7 );
setEffAlphaKey( spep_3 + 136, ct_zudodo, 85 );
setEffAlphaKey( spep_3 + 138, ct_zudodo, 170 );
setEffAlphaKey( spep_3 + 140, ct_zudodo, 255 );
setEffAlphaKey( spep_3 + 196, ct_zudodo, 255 );

setEffShake(spep_3 + 136,ct_zudodo,60,20);

--***集中線***
shuchusen3 =  entryEffectLife(  spep_3,  906,  196, 0x100, -1,  0,  0,   0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+196,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.16,  1.46);
setEffScaleKey(  spep_3+196,  shuchusen3,  1.16,  1.46);
setEffRotateKey(  spep_3,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3+196,  shuchusen3,  0,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+196,  shuchusen3,  255);

--****流線**
ryusen = entryEffectLife( spep_3,  921, 196, 0x80, -1, 0,0, 0 );

setEffMoveKey(  spep_3,  ryusen,  0,  0);
setEffMoveKey(  spep_3+196,  ryusen,  0,  0);
setEffScaleKey(  spep_3,  ryusen,  1.5,  1.32);
setEffScaleKey(  spep_3+196,  ryusen,  1.5,  1.32);
setEffRotateKey(  spep_3, ryusen,  22.8 );
setEffRotateKey(  spep_3+196,  ryusen,  22.8);
setEffAlphaKey(  spep_3,  ryusen,  255);
setEffAlphaKey(  spep_3+196,  ryusen,  255);

--***ビーム***
beam = entryEffectLife(spep_3,SP_06,200,0x100,-1,0,0,0);

setEffMoveKey(  spep_3,  beam,  0,  0);
setEffMoveKey(  spep_3+200,  beam,  0,  0);
setEffScaleKey(  spep_3,  beam,  1.0,  1.0);
setEffScaleKey(  spep_3+200, beam, 1.0,  1.0);
setEffRotateKey(  spep_3,  beam,  0);
setEffRotateKey(  spep_3+200,  beam,  0);
setEffAlphaKey(  spep_3,  beam,  255);
setEffAlphaKey(  spep_3+196,  beam,  255);
setEffAlphaKey(  spep_3+197,  beam,  0);
setEffAlphaKey(  spep_3+198,  beam,  0);
setEffAlphaKey(  spep_3+200,  beam,  0);

--***敵の動き**
setDisp( spep_3+0, 1, 1 );
setDisp( spep_3+196, 1, 0 );
changeAnime( spep_3+0, 1, 106 ); 
changeAnime( spep_3+32, 1, 104 );
changeAnime( spep_3+96, 1, 108 );

setShakeChara(  spep_3,  1,  32,  10);
setShakeChara(  spep_3+96,  1,  100,  20);

setMoveKey( spep_3+0, 1, -2548.9, 1269.3 , 0 );
setMoveKey( spep_3+2, 1, -2222.1, 1179 , 0 );
setMoveKey( spep_3+4, 1, -1885.4, 964.7 , 0 );
setMoveKey( spep_3+6, 1, -1590, 853.9 , 0 );
setMoveKey( spep_3+8, 1, -1221.8, 660.2 , 0 );
setMoveKey( spep_3+10, 1, -890.5, 533.6 , 0 );
setMoveKey( spep_3+12, 1, -558.1, 355.8 , 0 );
setMoveKey( spep_3+14, 1, -238.4, 212.8 , 0 );
setMoveKey( spep_3+16, 1, -205, 193.4 , 0 );
setMoveKey( spep_3+18, 1, -187.1, 194.8 , 0 );
setMoveKey( spep_3+20, 1, -157.5, 170.6 , 0 );
setMoveKey( spep_3+22, 1, -141.5, 165.1 , 0 );
setMoveKey( spep_3+24, 1, -103.2, 144.5 , 0 );
setMoveKey( spep_3+26, 1, -78.2, 135.7 , 0 );
setMoveKey( spep_3+28, 1, -42, 115.1 , 0 );
setMoveKey( spep_3+31, 1, -17.2, 107.6 , 0 );
setMoveKey( spep_3+32, 1, 46.2, 11.9 , 0 );
setMoveKey( spep_3+34, 1, 57.8, 0.2 , 0 );
setMoveKey( spep_3+36, 1, 77.3, -3.4 , 0 );
setMoveKey( spep_3+38, 1, 84.9, -15.1 , 0 );
setMoveKey( spep_3+40, 1, 100.5, -15 , 0 );
setMoveKey( spep_3+42, 1, 104, -26.8 , 0 );
setMoveKey( spep_3+44, 1, 115.5, -22.6 , 0 );
setMoveKey( spep_3+46, 1, 115, -34.4 , 0 );
setMoveKey( spep_3+48, 1, 130.5, -30.2 , 0 );
setMoveKey( spep_3+50, 1, 134, -38.1 , 0 );
setMoveKey( spep_3+52, 1, 141.2, -35.7 , 0 );
setMoveKey( spep_3+54, 1, 136.4, -45.4 , 0 );
setMoveKey( spep_3+56, 1, 147.6, -39 , 0 );
setMoveKey( spep_3+58, 1, 146.8, -44.6 , 0 );
setMoveKey( spep_3+60, 1, 150, -46.3 , 0 );
setMoveKey( spep_3+62, 1, 151.2, -55.9 , 0 );
setMoveKey( spep_3+64, 1, 156.4, -49.6 , 0 );
setMoveKey( spep_3+66, 1, 155.6, -53.2 , 0 );
setMoveKey( spep_3+68, 1, 162.8, -52.8 , 0 );
setMoveKey( spep_3+70, 1, 164, -56.5 , 0 );
setMoveKey( spep_3+72, 1, 169.2, -56.1 , 0 );
setMoveKey( spep_3+74, 1, 168.4, -61.8 , 0 );
setMoveKey( spep_3+76, 1, 175.6, -59.4 , 0 );
setMoveKey( spep_3+78, 1, 174.8, -61.1 , 0 );
setMoveKey( spep_3+80, 1, 182, -62.7 , 0 );
setMoveKey( spep_3+82, 1, 183.2, -68.3 , 0 );
setMoveKey( spep_3+84, 1, 188.4, -66 , 0 );
setMoveKey( spep_3+86, 1, 189.6, -69.6 , 0 );
setMoveKey( spep_3+88, 1, 194.8, -69.3 , 0 );
setMoveKey( spep_3+90, 1, 194, -74.9 , 0 );
setMoveKey( spep_3+92, 1, 201.2, -72.6 , 0 );
--setMoveKey( spep_3+95, 1, 202.4, -76.2 , 0 );
setMoveKey( spep_3+96-2, 1, 1203.2, -437.1 , 0 );
setMoveKey( spep_3+96-3, 1, 1203.2, -437.1 , 0 );
setMoveKey( spep_3+98-2, 1, 1042.3, -377.8 , 0 );
setMoveKey( spep_3+98-3, 1, 1042.3, -377.8 , 0 );
setMoveKey( spep_3+100-3, 1, 919.9, -332.7 , 0 );
setMoveKey( spep_3+102-3, 1, 836.2, -301.8 , 0 );
setMoveKey( spep_3+104-3, 1, 791.2, -285.2 , 0 );
setMoveKey( spep_3+106-3, 1, 767.2, -265.2 , 0 );
setMoveKey( spep_3+108-3, 1, 770.2, -262.1 , 0 );
setMoveKey( spep_3+110-3, 1, 773.3, -259 , 0 );
setMoveKey( spep_3+112-3, 1, 776.4, -256 , 0 );
setMoveKey( spep_3+114-3, 1, 779.5, -252.9 , 0 );
setMoveKey( spep_3+116-3, 1, 782.5, -249.8 , 0 );
setMoveKey( spep_3+118-3, 1, 785.6, -246.7 , 0 );
setMoveKey( spep_3+120-3, 1, 788.7, -243.7 , 0 );
setMoveKey( spep_3+122-3, 1, 791.8, -240.6 , 0 );
setMoveKey( spep_3+124-3, 1, 794.9, -237.5 , 0 );
setMoveKey( spep_3+126-3, 1, 797.9, -234.4 , 0 );
setMoveKey( spep_3+128-3, 1, 801, -231.3 , 0 );
setMoveKey( spep_3+130-3, 1, 804.1, -228.3 , 0 );
setMoveKey( spep_3+132-3, 1, 807.2, -225.2 , 0 );
setMoveKey( spep_3+134-3, 1, 499.1, -113.1 , 0 );
setMoveKey( spep_3+136-2, 1, 151, -37 , 0 );
setMoveKey( spep_3+136-3, 1, 151, -37 , 0 );
setMoveKey( spep_3+138-2, 1, -157.1, 155.2 , 0 );
setMoveKey( spep_3+138-3, 1, -157.1, 155.2 , 0 );
setMoveKey( spep_3+140-3, 1, -121.1, 191.2 , 0 );
setMoveKey( spep_3+142-3, 1, -117.8, 189 , 0 );
setMoveKey( spep_3+144-3, 1, -114, 186.4 , 0 );
setMoveKey( spep_3+146-3, 1, -109.5, 183.4 , 0 );
setMoveKey( spep_3+148-3, 1, -104.5, 179.9 , 0 );
setMoveKey( spep_3+150-3, 1, -98.8, 176 , 0 );
setMoveKey( spep_3+152-3, 1, -92.5, 171.7 , 0 );
setMoveKey( spep_3+154-3, 1, -85.7, 167 , 0 );
setMoveKey( spep_3+156-3, 1, -78.2, 161.9 , 0 );
setMoveKey( spep_3+158-3, 1, -70.1, 156.4 , 0 );
setMoveKey( spep_3+160-3, 1, -61.4, 150.5 , 0 );
setMoveKey( spep_3+162-3, 1, -52.1, 144.1 , 0 );
setMoveKey( spep_3+164-3, 1, -42.2, 137.3 , 0 );
setMoveKey( spep_3+166-3, 1, -31.7, 130.2 , 0 );
setMoveKey( spep_3+168-3, 1, -20.6, 122.6 , 0 );
setMoveKey( spep_3+170-3, 1, -8.8, 114.5 , 0 );
setMoveKey( spep_3+172-3, 1, 3.5, 106.1 , 0 );
setMoveKey( spep_3+174-3, 1, 16.5, 97.3 , 0 );
setMoveKey( spep_3+176-3, 1, 30, 88 , 0 );
setMoveKey( spep_3+178-3, 1, 44.2, 78.3 , 0 );
setMoveKey( spep_3+180-3, 1, 58.9, 68.2 , 0 );
setMoveKey( spep_3+182-3, 1, 74.3, 57.7 , 0 );
setMoveKey( spep_3+184-3, 1, 90.3, 46.8 , 0 );
setMoveKey( spep_3+186-3, 1, 106.8, 35.5 , 0 );
setMoveKey( spep_3+188-3, 1, 124, 23.7 , 0 );
setMoveKey( spep_3+190-3, 1, 141.8, 11.5 , 0 );
setMoveKey( spep_3+192-3, 1, 160.2, -1 , 0 );
setMoveKey( spep_3+194-3, 1, 179.2, -14 , 0 );
setMoveKey( spep_3+196-3, 1, 198.8, -27.4 , 0 );
setMoveKey( spep_3+198-2, 1, 219.1, -41.3 , 0 );

setScaleKey( spep_3+0, 1, 10.28, 10.28 );
setScaleKey( spep_3+2, 1, 9.16, 9.16 );
setScaleKey( spep_3+4, 1, 8.05, 8.05 );
setScaleKey( spep_3+6, 1, 6.93, 6.93 );
setScaleKey( spep_3+8, 1, 5.81, 5.81 );
setScaleKey( spep_3+10, 1, 4.69, 4.69 );
setScaleKey( spep_3+12, 1, 3.58, 3.58 );
setScaleKey( spep_3+14, 1, 2.46, 2.46 );
setScaleKey( spep_3+16, 1, 2.38, 2.38 );
setScaleKey( spep_3+18, 1, 2.3, 2.3 );
setScaleKey( spep_3+20, 1, 2.22, 2.22 );
setScaleKey( spep_3+22, 1, 2.12, 2.12 );
setScaleKey( spep_3+24, 1, 2.02, 2.02 );
setScaleKey( spep_3+26, 1, 1.92, 1.92 );
setScaleKey( spep_3+28, 1, 1.81, 1.81 );
setScaleKey( spep_3+31, 1, 1.69, 1.69 );
setScaleKey( spep_3+32, 1, 1.71, 1.71 );
setScaleKey( spep_3+34, 1, 1.62, 1.62 );
setScaleKey( spep_3+36, 1, 1.52, 1.52 );
setScaleKey( spep_3+38, 1, 1.43, 1.43 );
setScaleKey( spep_3+40, 1, 1.41, 1.41 );
setScaleKey( spep_3+42, 1, 1.4, 1.4 );
setScaleKey( spep_3+44, 1, 1.38, 1.38 );
setScaleKey( spep_3+46, 1, 1.36, 1.36 );
setScaleKey( spep_3+48, 1, 1.35, 1.35 );
setScaleKey( spep_3+50, 1, 1.33, 1.33 );
setScaleKey( spep_3+52, 1, 1.34, 1.34 );
setScaleKey( spep_3+54, 1, 1.35, 1.35 );
setScaleKey( spep_3+56, 1, 1.35, 1.35 );
setScaleKey( spep_3+58, 1, 1.36, 1.36 );
setScaleKey( spep_3+60, 1, 1.37, 1.37 );
setScaleKey( spep_3+62, 1, 1.38, 1.38 );
setScaleKey( spep_3+64, 1, 1.39, 1.39 );
setScaleKey( spep_3+66, 1, 1.4, 1.4 );
setScaleKey( spep_3+68, 1, 1.4, 1.4 );
setScaleKey( spep_3+70, 1, 1.41, 1.41 );
setScaleKey( spep_3+72, 1, 1.42, 1.42 );
setScaleKey( spep_3+74, 1, 1.43, 1.43 );
setScaleKey( spep_3+76, 1, 1.44, 1.44 );
setScaleKey( spep_3+78, 1, 1.44, 1.44 );
setScaleKey( spep_3+80, 1, 1.45, 1.45 );
setScaleKey( spep_3+82, 1, 1.46, 1.46 );
setScaleKey( spep_3+84, 1, 1.47, 1.47 );
setScaleKey( spep_3+86, 1, 1.48, 1.48 );
setScaleKey( spep_3+88, 1, 1.49, 1.49 );
setScaleKey( spep_3+90, 1, 1.49, 1.49 );
setScaleKey( spep_3+92, 1, 1.5, 1.5 );
--setScaleKey( spep_3+95, 1, 1.51, 1.51 );
setScaleKey( spep_3+96-3, 1, 1.2, 1.2 );
setScaleKey( spep_3+98-3, 1, 1.03, 1.03 );
setScaleKey( spep_3+100-3, 1, 0.9, 0.9 );
setScaleKey( spep_3+102-3, 1, 0.82, 0.82 );
setScaleKey( spep_3+104-3, 1, 0.77, 0.77 );
setScaleKey( spep_3+106-3, 1, 0.77, 0.77 );
setScaleKey( spep_3+108-3, 1, 0.79, 0.79 );
setScaleKey( spep_3+110-3, 1, 0.8, 0.8 );
setScaleKey( spep_3+112-3, 1, 0.82, 0.82 );
setScaleKey( spep_3+114-3, 1, 0.84, 0.84 );
setScaleKey( spep_3+116-3, 1, 0.85, 0.85 );
setScaleKey( spep_3+118-3, 1, 0.87, 0.87 );
setScaleKey( spep_3+120-3, 1, 0.89, 0.89 );
setScaleKey( spep_3+122-3, 1, 0.91, 0.91 );
setScaleKey( spep_3+124-3, 1, 0.92, 0.92 );
setScaleKey( spep_3+126-3, 1, 0.94, 0.94 );
setScaleKey( spep_3+128-3, 1, 0.96, 0.96 );
setScaleKey( spep_3+130-3, 1, 0.97, 0.97 );
setScaleKey( spep_3+132-3, 1, 0.99, 0.99 );
setScaleKey( spep_3+134-3, 1, 1.25, 1.25 );
setScaleKey( spep_3+136-3, 1, 1.71, 1.71 );
setScaleKey( spep_3+138-3, 1, 1.96, 1.96 );
setScaleKey( spep_3+140-3, 1, 2.31, 2.31 );
setScaleKey( spep_3+142-3, 1, 2.3, 2.3 );
setScaleKey( spep_3+144-3, 1, 2.28, 2.28 );
setScaleKey( spep_3+146-3, 1, 2.27, 2.27 );
setScaleKey( spep_3+148-3, 1, 2.25, 2.25 );
setScaleKey( spep_3+150-3, 1, 2.23, 2.23 );
setScaleKey( spep_3+152-3, 1, 2.2, 2.2 );
setScaleKey( spep_3+154-3, 1, 2.18, 2.18 );
setScaleKey( spep_3+156-3, 1, 2.15, 2.15 );
setScaleKey( spep_3+158-3, 1, 2.12, 2.12 );
setScaleKey( spep_3+160-3, 1, 2.09, 2.09 );
setScaleKey( spep_3+162-3, 1, 2.05, 2.05 );
setScaleKey( spep_3+164-3, 1, 2.01, 2.01 );
setScaleKey( spep_3+166-3, 1, 1.97, 1.97 );
setScaleKey( spep_3+168-3, 1, 1.93, 1.93 );
setScaleKey( spep_3+170-3, 1, 1.89, 1.89 );
setScaleKey( spep_3+172-3, 1, 1.84, 1.84 );
setScaleKey( spep_3+174-3, 1, 1.79, 1.79 );
setScaleKey( spep_3+176-3, 1, 1.74, 1.74 );
setScaleKey( spep_3+178-3, 1, 1.69, 1.69 );
setScaleKey( spep_3+180-3, 1, 1.63, 1.63 );
setScaleKey( spep_3+182-3, 1, 1.57, 1.57 );
setScaleKey( spep_3+184-3, 1, 1.51, 1.51 );
setScaleKey( spep_3+186-3, 1, 1.45, 1.45 );
setScaleKey( spep_3+188-3, 1, 1.39, 1.39 );
setScaleKey( spep_3+190-3, 1, 1.32, 1.32 );
setScaleKey( spep_3+192-3, 1, 1.25, 1.25 );
setScaleKey( spep_3+194-3, 1, 1.18, 1.18 );
setScaleKey( spep_3+196-3, 1, 1.11, 1.11 );
setScaleKey( spep_3+198-2, 1, 1.03, 1.03 );

setRotateKey( spep_3+0, 1, -4.1 );
setRotateKey( spep_3+2, 1, -2.4 );
setRotateKey( spep_3+4, 1, -0.8 );
setRotateKey( spep_3+6, 1, 0.9 );
setRotateKey( spep_3+8, 1, 2.6 );
setRotateKey( spep_3+10, 1, 4.3 );
setRotateKey( spep_3+12, 1, 5.9 );
setRotateKey( spep_3+14, 1, 7.6 );
setRotateKey( spep_3+16, 1, 8.2 );
setRotateKey( spep_3+18, 1, 8.8 );
setRotateKey( spep_3+20, 1, 9.5 );
setRotateKey( spep_3+22, 1, 10.3 );
setRotateKey( spep_3+24, 1, 11.1 );
setRotateKey( spep_3+26, 1, 11.9 );
setRotateKey( spep_3+28, 1, 12.8 );
setRotateKey( spep_3+31, 1, 13.7 );
setRotateKey( spep_3+32, 1, 32.7 );
setRotateKey( spep_3+34, 1, 28.8 );
setRotateKey( spep_3+36, 1, 25 );
setRotateKey( spep_3+38, 1, 21.1 );
setRotateKey( spep_3+40, 1, 20.9 );
setRotateKey( spep_3+42, 1, 20.6 );
setRotateKey( spep_3+44, 1, 20.4 );
setRotateKey( spep_3+46, 1, 20.2 );
setRotateKey( spep_3+48, 1, 19.9 );
setRotateKey( spep_3+50, 1, 19.7 );
setRotateKey( spep_3+52, 1, 19.5 );
setRotateKey( spep_3+54, 1, 19.4 );
setRotateKey( spep_3+56, 1, 19.2 );
setRotateKey( spep_3+58, 1, 19 );
setRotateKey( spep_3+60, 1, 18.9 );
setRotateKey( spep_3+62, 1, 18.7 );
setRotateKey( spep_3+64, 1, 18.6 );
setRotateKey( spep_3+66, 1, 18.4 );
setRotateKey( spep_3+68, 1, 18.2 );
setRotateKey( spep_3+70, 1, 18.1 );
setRotateKey( spep_3+72, 1, 17.9 );
setRotateKey( spep_3+74, 1, 17.7 );
setRotateKey( spep_3+76, 1, 17.6 );
setRotateKey( spep_3+78, 1, 17.4 );
setRotateKey( spep_3+80, 1, 17.2 );
setRotateKey( spep_3+82, 1, 17.1 );
setRotateKey( spep_3+84, 1, 16.9 );
setRotateKey( spep_3+86, 1, 16.8 );
setRotateKey( spep_3+88, 1, 16.6 );
setRotateKey( spep_3+90, 1, 16.4 );
setRotateKey( spep_3+92, 1, 16.3 );
--setRotateKey( spep_3+95, 1, 16.1 );
setRotateKey( spep_3+96-3, 1, 21.5 );
setRotateKey( spep_3+198-3, 1, 21.5 );

entryFadeBg( spep_3, 0, 196, 0,0, 0, 0, 255);  --黒背景 

--***ビーム背景***
beamBG = entryEffectLife(spep_3,SP_07,200,0x80,-1,0,0,0);

setEffMoveKey(  spep_3,  beamBG,  0,  0);
setEffMoveKey(  spep_3+200,  beamBG,  0,  0);
setEffScaleKey(  spep_3,  beamBG,  1.0,  1.0);
setEffScaleKey(  spep_3+200, beamBG, 1.0,  1.0);
setEffRotateKey(  spep_3,  beamBG,  0);
setEffRotateKey(  spep_3+200,  beamBG,  0);
setEffAlphaKey(  spep_3,  beamBG,  255);
setEffAlphaKey(  spep_3+196,  beamBG,  255);
setEffAlphaKey(  spep_3+197,  beamBG,  0);
setEffAlphaKey(  spep_3+198,  beamBG,  0);
setEffAlphaKey(  spep_3+200,  beamBG,  0);

--***SE***
playSe(  spep_3,  8);
playSe(  spep_3+56,  43);  --瞬間移動
playSe(  spep_3+66,  SE_06);
playSe(  spep_3+98,  SE_07);

entryFade( spep_3+92, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--ギャン
--------------------------------------

spep_5 = spep_3+196;

--エフェクトの再生
gyan = entryEffectLife(  spep_5,  190011,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);
setEffAlphaKey(  spep_5+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_5, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgayn, 255);
setEffAlphaKey( spep_5+60, ctgayn, 0);
setEffShake( spep_5, ctgayn, 60, 10);

playSe(spep_5,SE_09);

entryFade( spep_5+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6 = spep_5+60;
--------------------------------------
--爆発
--------------------------------------
--***集中線***
shuchusen6 =  entryEffectLife(  spep_6,  906,  130, 0x100, -1,  0,  0,   0);

setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+130,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6,  shuchusen6,  1.32,  1.39);
setEffScaleKey(  spep_6+130,  shuchusen6,  1.32,  1.39);
setEffRotateKey(  spep_6,  shuchusen6,  5);
setEffRotateKey(  spep_6+130,  shuchusen6,  5);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+130,  shuchusen6,  255);

--エフェクト
explosion=entryEffect(spep_6,SP_08,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 130, explosion, 0, 0 , 0 );
setEffScaleKey(spep_6,explosion,1.0,1.0);
setEffScaleKey(spep_6+130,explosion,1.0,1.0);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+130,explosion,0);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+130,explosion,255);

--***SE***
playSe(  spep_6,  1024);  --爆発

-- ダメージ表示
dealDamage(spep_6+10);
entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+110);

else

------------------------------------------------------
--溜め
------------------------------------------------------

spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01x,140,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+140,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+140,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+140,tame,255);

--文字エントリー
ctsyun = entryEffectLife( spep_0 + 104,  10011, 16, 0x100, -1, 0, -64, 370.7 );--シュンッ

setEffMoveKey( spep_0 + 104, ctsyun, -64, 370.7 , 0 );
setEffMoveKey( spep_0 + 106, ctsyun, -63.9, 370.7 , 0 );
setEffMoveKey( spep_0 + 108, ctsyun, -63.8, 370.7 , 0 );
setEffMoveKey( spep_0 + 110, ctsyun, -63.8, 370.7 , 0 );
setEffMoveKey( spep_0 + 112, ctsyun, -63.8, 370.6 , 0 );
setEffMoveKey( spep_0 + 114, ctsyun, -63.8, 370.6 , 0 );
setEffMoveKey( spep_0 + 116, ctsyun, -63.9, 370.6 , 0 );
setEffMoveKey( spep_0 + 120, ctsyun, -63.9, 370.6 , 0 );

setEffScaleKey( spep_0 + 104, ctsyun, 2.02, 2.02 );
setEffScaleKey( spep_0 + 106, ctsyun, 3.4, 3.4 );
setEffScaleKey( spep_0 + 108, ctsyun, 3.01, 3.01 );
setEffScaleKey( spep_0 + 110, ctsyun, 2.62, 2.62 );
setEffScaleKey( spep_0 + 112, ctsyun, 2.23, 2.23 );
setEffScaleKey( spep_0 + 114, ctsyun, 2.19, 2.19 );
setEffScaleKey( spep_0 + 116, ctsyun, 2.16, 2.16 );
setEffScaleKey( spep_0 + 118, ctsyun, 2.13, 2.13 );
setEffScaleKey( spep_0 + 120, ctsyun, 2.09, 2.09 );

setEffRotateKey( spep_0 + 104, ctsyun, -11.7 );
setEffRotateKey( spep_0 + 120, ctsyun, -11.7 );

setEffAlphaKey( spep_0 + 104, ctsyun, 255 );
setEffAlphaKey( spep_0 + 112, ctsyun, 255 );
setEffAlphaKey( spep_0 + 114, ctsyun, 191 );
setEffAlphaKey( spep_0 + 116, ctsyun, 128 );
setEffAlphaKey( spep_0 + 118, ctsyun, 64 );
setEffAlphaKey( spep_0 + 120, ctsyun, 0 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 )
setEffMoveKey( spep_0 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.05, 1.07 );
setEffScaleKey( spep_0 + 138, shuchusen1, 1.05, 1.07 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 138, shuchusen1, 255 );



-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+132, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--***SE***
playSe(  spep_0,  9);
playSe(  spep_0+106,  43);  --瞬間移動


--次の準備
spep_1=spep_0+140;

------------------------------------------------------
--ぼうこう
------------------------------------------------------

ryusen1 = entryEffectLife( spep_1,  914, 120, 0x100, -1, 0,0, 0 );

setEffMoveKey(  spep_1,  ryusen1,  0,  0);
setEffMoveKey(  spep_1+120,  ryusen1,  0,  0);
setEffScaleKey(  spep_1,  ryusen1,  2.75,  1.22);
setEffScaleKey(  spep_1+120,  ryusen1,  2.75,  1.22);
setEffRotateKey(  spep_1, ryusen1,  0 );
setEffRotateKey(  spep_1+120,  ryusen1,  0);
setEffAlphaKey(  spep_1,  ryusen1,  0);
setEffAlphaKey(  spep_1+32,  ryusen1,  0);
setEffAlphaKey(  spep_1+46,  ryusen1,  100);
setEffAlphaKey(  spep_1+120,  ryusen1,  100);

--エフェクト(前)
rush_f=entryEffectLife(spep_1,SP_02x,250,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, rush_f, 0, 0 , 0 );
setEffScaleKey(spep_1,rush_f,1.0,1.0);
setEffScaleKey(spep_1+250,rush_f,1.0,1.0);
setEffRotateKey(spep_1,rush_f,0);
setEffRotateKey(spep_1+250,rush_f,0);
setEffAlphaKey(spep_1,rush_f,255);
setEffAlphaKey(spep_1+250,rush_f,255);

--文字エントリー
ctsyun2 = entryEffectLife( spep_1 + 4,  10011, 16, 0x100, -1, 0, -132, 294.7 );--シュンッ

setEffMoveKey( spep_1 + 4, ctsyun2, -132, 294.7 , 0 );
setEffMoveKey( spep_1 + 6, ctsyun2, -131.9, 294.7 , 0 );
setEffMoveKey( spep_1 + 8, ctsyun2, -131.8, 294.7 , 0 );
setEffMoveKey( spep_1 + 14, ctsyun2, -131.8, 294.7 , 0 );
setEffMoveKey( spep_1 + 16, ctsyun2, -131.9, 294.7 , 0 );
setEffMoveKey( spep_1 + 18, ctsyun2, -132, 294.7 , 0 );
setEffMoveKey( spep_1 + 20, ctsyun2, -132, 294.7 , 0 );

setEffScaleKey( spep_1 + 4, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 + 6, ctsyun2, 2.1, 2.1 );
setEffScaleKey( spep_1 + 8, ctsyun2, 1.86, 1.86 );
setEffScaleKey( spep_1 + 10, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 12, ctsyun2, 1.38, 1.38 );
setEffScaleKey( spep_1 + 14, ctsyun2, 1.36, 1.36 );
setEffScaleKey( spep_1 + 16, ctsyun2, 1.34, 1.34 );
setEffScaleKey( spep_1 + 18, ctsyun2, 1.31, 1.31 );
setEffScaleKey( spep_1 + 20, ctsyun2, 1.29, 1.29 );

setEffRotateKey( spep_1 + 4, ctsyun2, 19.3 );
setEffRotateKey( spep_1 + 20, ctsyun2, 19.3 );
setEffAlphaKey( spep_1 + 4, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 12, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 14, ctsyun2, 191 );
setEffAlphaKey( spep_1 + 16, ctsyun2, 128 );
setEffAlphaKey( spep_1 + 18, ctsyun2, 64 );
setEffAlphaKey( spep_1 + 20, ctsyun2, 0 );

ct_dogaga = entryEffectLife( spep_1 + 42,  10017, 172, 0x100, -1, 0, 12, 370.7 );  --ドガガ

setEffMoveKey( spep_1 + 42, ct_dogaga, 12, 370.7 , 0 );
setEffMoveKey( spep_1 + 46, ct_dogaga, 12, 370.7 , 0 );
setEffMoveKey( spep_1 + 48, ct_dogaga, 11.8, 371.2 , 0 );
setEffMoveKey( spep_1 + 50, ct_dogaga, 4, 380.1 , 0 );
setEffMoveKey( spep_1 + 52, ct_dogaga, 11.8, 371 , 0 );
setEffMoveKey( spep_1 + 54, ct_dogaga, 4.8, 378.9 , 0 );
setEffMoveKey( spep_1 + 56, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 58, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 60, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 62, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 64, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 66, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 68, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 70, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 72, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 74, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 76, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 78, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 80, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 82, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 84, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 86, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 88, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 90, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 92, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 94, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 96, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 98, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 100, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 102, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 104, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 106, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 108, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 110, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 112, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 114, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 116, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 118, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 120, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 122, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 124, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 126, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 128, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 130, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 132, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 134, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 136, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 138, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 140, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 142, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 144, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 146, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 148, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 150, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 152, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 154, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 156, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 158, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 160, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 162, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 164, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 166, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 168, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 170, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 172, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 174, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 176, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 178, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 180, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 182, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 184, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 186, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 188, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 190, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 192, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 194, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 196, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 198, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 200, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 202, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 204, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 206, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 208, ct_dogaga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 210, ct_dogaga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 214, ct_dogaga, 11.9, 370.7 , 0 );

setEffScaleKey( spep_1 + 42, ct_dogaga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 46, ct_dogaga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 48, ct_dogaga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 50, ct_dogaga, 3.06, 3.06 );
setEffScaleKey( spep_1 + 52, ct_dogaga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 54, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_1 + 56, ct_dogaga, 2.6, 2.6 );
setEffScaleKey( spep_1 + 214, ct_dogaga, 2.6, 2.6 );

setEffRotateKey( spep_1 + 42, ct_dogaga, 0 );
setEffRotateKey( spep_1 + 214, ct_dogaga, 0 );

setEffAlphaKey( spep_1 + 42, ct_dogaga, 255 );
setEffAlphaKey( spep_1 + 206, ct_dogaga, 255 );
setEffAlphaKey( spep_1 + 208, ct_dogaga, 191 );
setEffAlphaKey( spep_1 + 210, ct_dogaga, 128 );
setEffAlphaKey( spep_1 + 212, ct_dogaga, 64 );
setEffAlphaKey( spep_1 + 214, ct_dogaga, 0 );

setEffShake(spep_1 + 42,ct_dogaga,172,10);

--文字エントリー
ctka = entryEffectLife( spep_1 + 230,  10004, 20, 0x100, -1, 0, 104.2, 312.5 );--カッ
setEffMoveKey( spep_1 + 230, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 232, ctka, 98.8, 322.6 , 0 );
setEffMoveKey( spep_1 + 234, ctka, 104.2, 312.6 , 0 );
setEffMoveKey( spep_1 + 236, ctka, 99.5, 321.2 , 0 );
setEffMoveKey( spep_1 + 238, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 240, ctka, 99.5, 321.3 , 0 );
setEffMoveKey( spep_1 + 242, ctka, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1 + 244, ctka, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1 + 246, ctka, 104.2, 312.4 , 0 );
setEffMoveKey( spep_1 + 248, ctka, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1 + 250, ctka, 99.4, 321.3 , 0 );

setEffScaleKey( spep_1 + 230, ctka, 1.02, 1.02 );
setEffScaleKey( spep_1 + 232, ctka, 2.98, 2.98 );
setEffScaleKey( spep_1 + 234, ctka, 4.16, 4.16 );
setEffScaleKey( spep_1 + 236, ctka, 2.61, 2.61 );
setEffScaleKey( spep_1 + 238, ctka, 2.62, 2.62 );
setEffScaleKey( spep_1 + 240, ctka, 2.63, 2.63 );
setEffScaleKey( spep_1 + 242, ctka, 2.64, 2.64 );
setEffScaleKey( spep_1 + 244, ctka, 2.64, 2.64 );
setEffScaleKey( spep_1 + 246, ctka, 2.65, 2.65 );
setEffScaleKey( spep_1 + 248, ctka, 2.66, 2.66 );
setEffScaleKey( spep_1 + 250, ctka, 2.67, 2.67 );

setEffRotateKey( spep_1 + 230, ctka, 35.2 );
setEffRotateKey( spep_1 + 250, ctka, 35.2 );

setEffAlphaKey( spep_1 + 230, ctka, 64 );
setEffAlphaKey( spep_1 + 232, ctka, 183 );
setEffAlphaKey( spep_1 + 234, ctka, 255 );
setEffAlphaKey( spep_1 + 244, ctka, 255 );
setEffAlphaKey( spep_1 + 246, ctka, 142 );
setEffAlphaKey( spep_1 + 248, ctka, 57 );
setEffAlphaKey( spep_1 + 250, ctka, 0 );


--***突進（前）***
tosshin_f = entryEffect(  spep_1+250,  SP_04x,  0x100,  -1,  0,  0,  0);

setEffMoveKey(  spep_1+250,  tosshin_f,  0,  0);
setEffMoveKey(  spep_1+400,  tosshin_f,  0,  0);
setEffScaleKey(  spep_1+250,  tosshin_f,  1.0,  1.0);
setEffScaleKey(  spep_1+400,  tosshin_f,  1.0,  1.0);
setEffRotateKey(  spep_1+250,  tosshin_f,  0);
setEffRotateKey(  spep_1+400,  tosshin_f,  0);
setEffAlphaKey(  spep_1+250,  tosshin_f,  255);
setEffAlphaKey(  spep_1+400,  tosshin_f,  255);

--***カットイン***
--speff = entryEffect(  spep_1+310,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+310,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+322, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_1 + 322, ctgogo, 255 );
setEffAlphaKey( spep_1 + 340, ctgogo, 255 );
setEffAlphaKey( spep_1 + 342, ctgogo, 191 );
setEffAlphaKey( spep_1 + 344, ctgogo, 128 );
setEffAlphaKey( spep_1 + 348, ctgogo, 64 );
setEffAlphaKey( spep_1 + 389, ctgogo, 0 );
setEffRotateKey(  spep_1+322,  ctgogo,  0);
setEffRotateKey(  spep_1+389,  ctgogo,  0);
setEffScaleKey(  spep_1+322,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1+340,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_1 + 389, ctgogo, -1.07, 1.07 );
setEffMoveKey(  spep_1+322,  ctgogo,  0,  530);
setEffMoveKey(  spep_1+389,  ctgogo,  0,  530);

--***SE***
playSe(  spep_1,  43);  --瞬間移動

--***敵の動き***
setDisp( spep_1, 1, 1 );
changeAnime( spep_1, 1, 100 );
setMoveKey(spep_1, 1, 172.1, 14.5 , 0 );
setMoveKey(spep_1+2, 1, 172.7, 14.6 , 0 );
setMoveKey(spep_1+4, 1, 173.3, 14.6 , 0 );
setMoveKey(spep_1+6, 1, 173.9, 14.7 , 0 );
setMoveKey(spep_1+8, 1, 174.5, 14.7 , 0 );
setMoveKey(spep_1+10, 1, 175.2, 14.8 , 0 );
setMoveKey(spep_1+12, 1, 175.8, 14.8 , 0 );
setMoveKey(spep_1+14, 1, 176.4, 14.9 , 0 );
setMoveKey(spep_1+16, 1, 177, 14.9 , 0 );
setMoveKey(spep_1+18, 1, 177.6, 15 , 0 );
setScaleKey(spep_1+0, 1, 1.09, 1.09 );
setScaleKey(spep_1+2, 1, 1.09, 1.09 );
setScaleKey(spep_1+4, 1, 1.1, 1.1 );
setScaleKey(spep_1+8, 1, 1.1, 1.1 );
setScaleKey(spep_1+10, 1, 1.11, 1.11 );
setScaleKey(spep_1+12, 1, 1.11, 1.11 );
setScaleKey(spep_1+14, 1, 1.12, 1.12 );
setScaleKey(spep_1+18, 1, 1.12, 1.12 );
setRotateKey(spep_1, 1, 0 );
setRotateKey(spep_1+18, 1, 0 );


--エフェクト(後)
rush_b=entryEffectLife(spep_1,SP_03x,250,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, rush_b, 0, 0 , 0 );
setEffScaleKey(spep_1,rush_b,1.0,1.0);
setEffScaleKey(spep_1+250,rush_b,1.0,1.0);
setEffRotateKey(spep_1,rush_b,0);
setEffRotateKey(spep_1+250,rush_b,0);
setEffAlphaKey(spep_1,rush_b,255);
setEffAlphaKey(spep_1+250,rush_b,255);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+20 ; --エンドフェイズのフレーム数を置き換える
playSe( SP_dodge-12, 1042);
pauseAll( SP_dodge, 67);

--敵の位置固定
setMoveKey( SP_dodge, 1, 178.2, 15 , 0 );
setMoveKey( SP_dodge+2, 1, 178.2, 15 , 0 );
setMoveKey( SP_dodge+4, 1, 178.2, 15 , 0 );
setMoveKey( SP_dodge+6, 1, 178.2, 15 , 0 );
setMoveKey( SP_dodge+8, 1, 178.2, 15 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( spep_2 + 0, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 12, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 14, 1, 1.13, 1.13 );
setScaleKey( SP_dodge, 1, 1.13, 1.13 );
setScaleKey( SP_dodge+2, 1, 1.13, 1.13 );
setScaleKey( SP_dodge+4, 1, 1.13, 1.13 );
setScaleKey( SP_dodge+6, 1, 1.13, 1.13 );
setScaleKey( SP_dodge+8, 1, 1.13, 1.13 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  178.2, 15 , 0 );
setMoveKey(  SP_dodge+10,    1,  178.2, 15 , 0 );
setScaleKey( SP_dodge+9,    1,  1.13, 1.13 );
setScaleKey( SP_dodge+10,    1,  1.13, 1.13 );
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

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

setDisp( spep_1+226, 1, 0 );
setDisp(  spep_1+258,  1,  1);
setDisp(  spep_1+280,  1,  0);  --消す
setShakeChara(spep_1+42,  1,  256,  20); --揺れ


changeAnime( spep_1+32, 1, 104 );
changeAnime( spep_1+42, 1, 108 );  --くの字
--changeAnime( spep_1+40, 1, 108 );  --くの字
changeAnime( spep_1+52, 1, 104 );
changeAnime( spep_1+54, 1, 106 );  
changeAnime( spep_1+62, 1, 108 );
changeAnime( spep_1+70, 1, 106 );
changeAnime( spep_1+78, 1, 108 );
changeAnime( spep_1+90, 1, 106 );
changeAnime( spep_1+98, 1, 108 );
changeAnime( spep_1+104, 1, 104 );
changeAnime( spep_1+108, 1, 108 );
changeAnime( spep_1+114, 1, 106 );
changeAnime( spep_1+122, 1, 108 );
changeAnime( spep_1+130, 1, 104 );
changeAnime( spep_1+132, 1, 106 );
changeAnime( spep_1+140, 1, 108 );
changeAnime( spep_1+148, 1, 106 );
changeAnime( spep_1+156, 1, 108 );
changeAnime( spep_1+168, 1, 106 );
changeAnime( spep_1+176, 1, 108 );
changeAnime( spep_1+182, 1, 104 );
changeAnime( spep_1+186, 1, 108 );
changeAnime( spep_1+192, 1, 106 );
changeAnime( spep_1+200, 1, 108 );
changeAnime( spep_1+208, 1, 104 );
changeAnime( spep_1+210, 1, 106 );
changeAnime( spep_1+218, 1, 108 );

changeAnime(spep_1+258,  1,  107);   --手前吹っ飛び

setMoveKey(spep_1+20, 1, 178.2, 15 , 0 );
setMoveKey(spep_1+22, 1, 178.9, 15.1 , 0 );
setMoveKey(spep_1+24, 1, 179.5, 15.1 , 0 );
setMoveKey(spep_1+26, 1, 180.1, 15.2 , 0 );
setMoveKey(spep_1+28, 1, 180.7, 15.2 , 0 );
setMoveKey(spep_1+30, 1, 167.1, 16.8 , 0 );
setMoveKey(spep_1+32, 1, 152.2, 23 , 0 );
setMoveKey(spep_1+34, 1, 148, 24.8 , 0 );
setMoveKey(spep_1+36, 1, 144.7, 26.6 , 0 );
setMoveKey(spep_1+38, 1, 142.3, 28.4 , 0 );
setMoveKey(spep_1+40, 1, 140.8, 30.2 , 0 );
setMoveKey(spep_1+42, 1, 140.1, 32 , 0 );
setMoveKey(spep_1+44, 1, 150.4, 36 , 0 );
setMoveKey(spep_1+46, 1, 154.6, 31.7 , 0 );
setMoveKey(spep_1+48, 1, 167, 35.5 , 0 );
setMoveKey(spep_1+50, 1, 167.5, 27.2 , 0 );
setMoveKey(spep_1+52, 1, 162.2, 17.4 , 0 );
setMoveKey(spep_1+54, 1, 119.3, 52.1 , 0 );
setMoveKey(spep_1+56, 1, 129.3, 66.4 , 0 );
setMoveKey(spep_1+58, 1, 140.7, 50.7 , 0 );
setMoveKey(spep_1+60, 1, 150.7, 65.3 , 0 );
setMoveKey(spep_1+62, 1, 167.4, 58 , 0 );
setMoveKey(spep_1+64, 1, 175.5, 61.9 , 0 );
setMoveKey(spep_1+66, 1, 171.6, 57.8 , 0 );
setMoveKey(spep_1+68, 1, 183.9, 61.7 , 0 );
setMoveKey(spep_1+70, 1, 140.7, 83.2 , 0 );
setMoveKey(spep_1+72, 1, 141.5, 102.8 , 0 );
setMoveKey(spep_1+74, 1, 148.8, 92.2 , 0 );
setMoveKey(spep_1+76, 1, 145.1, 102.8 , 0 );
setMoveKey(spep_1+78, 1, 187.6, 53.1 , 0 );
setMoveKey(spep_1+80, 1, 209.9, 60.2 , 0 );
setMoveKey(spep_1+82, 1, 220.4, 55.3 , 0 );
setMoveKey(spep_1+84, 1, 239, 29.1 , 0 );
setMoveKey(spep_1+86, 1, 230.8, 24.8 , 0 );
setMoveKey(spep_1+88, 1, 238.5, 28.5 , 0 );
setMoveKey(spep_1+310, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1+312, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+314, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1+316, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+318, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1+320, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+322, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1+324, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+326, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1+328, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+330, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1+332, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+334, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1+336, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1+338, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1+90, 1, 132.7, 68.2 , 0 );
setMoveKey(spep_1+92, 1, 133.4, 98.5 , 0 );
setMoveKey(spep_1+94, 1, 141.3, 97.8 , 0 );
setMoveKey(spep_1+96, 1, 137.2, 119.2 , 0 );
setMoveKey(spep_1+98, 1, 182.2, 55.8 , 0 );
setMoveKey(spep_1+100, 1, 205.3, 58.9 , 0 );
setMoveKey(spep_1+102, 1, 216.5, 50 , 0 );
setMoveKey(spep_1+104, 1, 174.3, 23.7 , 0 );
setMoveKey(spep_1+106, 1, 185.5, 19.4 , 0 );
setMoveKey(spep_1+108, 1, 187.5, 27.4 , 0 );
setMoveKey(spep_1+110, 1, 192.6, 23.1 , 0 );
setMoveKey(spep_1+112, 1, 205.8, 26.8 , 0 );
setMoveKey(spep_1+114, 1, 106.8, 55.5 , 0 );
setMoveKey(spep_1+116, 1, 105.5, 73.1 , 0 );
setMoveKey(spep_1+118, 1, 108.4, 58.5 , 0 );
setMoveKey(spep_1+120, 1, 27.9, 184.8 , 0 );
setMoveKey(spep_1+122, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1+124, 1, 34.5, 168.7 , 0 );
setMoveKey(spep_1+126, 1, 37.4, 168.7 , 0 );
setMoveKey(spep_1+128, 1, 40.3, 168.7 , 0 );
setMoveKey(spep_1+130, 1, 34.8, 161.9 , 0 );
setMoveKey(spep_1+132, 1, 19.2, 177 , 0 );
setMoveKey(spep_1+134, 1, 21.2, 181.1 , 0 );
setMoveKey(spep_1+136, 1, 28.4, 178.2 , 0 );
setMoveKey(spep_1+138, 1, 28.8, 180.8 , 0 );
setMoveKey(spep_1+140, 1, 36.3, 179.6 , 0 );
setMoveKey(spep_1+142, 1, 37.4, 179.6 , 0 );
setMoveKey(spep_1+144, 1, 38.6, 179.6 , 0 );
setMoveKey(spep_1+146, 1, 39.7, 179.6 , 0 );
setMoveKey(spep_1+148, 1, 24.6, 190.7 , 0 );
setMoveKey(spep_1+150, 1, 23.1, 194.9 , 0 );
setMoveKey(spep_1+152, 1, 26.9, 192.5 , 0 );
setMoveKey(spep_1+154, 1, 23.6, 194.9 , 0 );
setMoveKey(spep_1+156, 1, 41.7, 179.6 , 0 );
setMoveKey(spep_1+158, 1, 46.5, 179.3 , 0 );
setMoveKey(spep_1+160, 1, 51.2, 179 , 0 );
setMoveKey(spep_1+162, 1, 55.9, 168.2 , 0 );
setMoveKey(spep_1+164, 1, 55.3, 168.2 , 0 );
setMoveKey(spep_1+166, 1, 54.6, 168.2 , 0 );
setMoveKey(spep_1+168, 1, 17.8, 185.2 , 0 );
setMoveKey(spep_1+170, 1, 16.3, 193.1 , 0 );
setMoveKey(spep_1+172, 1, 20.1, 194.3 , 0 );
setMoveKey(spep_1+174, 1, 16.8, 200.3 , 0 );
setMoveKey(spep_1+176, 1, 34.9, 179.6 , 0 );
setMoveKey(spep_1+178, 1, 39.7, 179.3 , 0 );
setMoveKey(spep_1+180, 1, 44.4, 179 , 0 );
setMoveKey(spep_1+182, 1, 28, 167.3 , 0 );
setMoveKey(spep_1+184, 1, 32.7, 167.3 , 0 );
setMoveKey(spep_1+186, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1+188, 1, 34.1, 168.7 , 0 );
setMoveKey(spep_1+190, 1, 36.7, 168.7 , 0 );
setMoveKey(spep_1+192, 1, 4.3, 179.8 , 0 );
setMoveKey(spep_1+194, 1, 2.1, 184.4 , 0 );
setMoveKey(spep_1+196, 1, 5.3, 182.2 , 0 );
setMoveKey(spep_1+198, 1, 1.5, 184.8 , 0 );
setMoveKey(spep_1+200, 1, 5.1, 168.7 , 0 );
setMoveKey(spep_1+202, 1, 8, 168.7 , 0 );
setMoveKey(spep_1+204, 1, 11, 168.7 , 0 );
setMoveKey(spep_1+206, 1, 13.9, 168.7 , 0 );
setMoveKey(spep_1+208, 1, 8.3, 161.9 , 0 );
setMoveKey(spep_1+210, 1, -7.2, 177 , 0 );
setMoveKey(spep_1+212, 1, -5.2, 181.1 , 0 );
setMoveKey(spep_1+214, 1, 1.9, 178.2 , 0 );
setMoveKey(spep_1+216, 1, 2.3, 180.8 , 0 );
setMoveKey(spep_1+218, 1, 9.8, 179.6 , 0 );
setMoveKey(spep_1+220, 1, 11, 179.6 , 0 );
setMoveKey(spep_1+222, 1, 12.1, 179.6 , 0 );
setMoveKey(spep_1+224, 1, 13.3, 179.6 , 0 );

setMoveKey(spep_1+258-2, 1, -34.2, -24 , 0 );
setMoveKey(spep_1+260-2, 1, -30.1, -34 , 0 );
setMoveKey(spep_1+262-2, 1, -38.1, -56.1 , 0 );
setMoveKey(spep_1+264-2, 1, -30.1, -62.1 , 0 );
setMoveKey(spep_1+266-2, 1, -34.1, -80.1 , 0 );
setMoveKey(spep_1+268-2, 1, -30.1, -90.2 , 0 );
setMoveKey(spep_1+270-2, 1, -38, -185.1 , 0 );
setMoveKey(spep_1+272-2, 1, -30, -264.1 , 0 );
setMoveKey(spep_1+274-2, 1, -33.9, -355 , 0 );
setMoveKey(spep_1+276-2, 1, -29.9, -438 , 0 );
setMoveKey(spep_1+278-2, 1, -37.8, -533 , 0 );
setMoveKey(spep_1+280-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+282-2, 1, -33.8, -616 , 0 );
setMoveKey(spep_1+284-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+286-2, 1, -37.8, -620 , 0 );
setMoveKey(spep_1+288-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+290-2, 1, -33.8, -616 , 0 );
setMoveKey(spep_1+292-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+294-2, 1, -37.8, -620 , 0 );
setMoveKey(spep_1+296-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+298-2, 1, -33.8, -616 , 0 );
setMoveKey(spep_1+300-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+302-2, 1, -37.8, -620 , 0 );
setMoveKey(spep_1+304-2, 1, -29.8, -612 , 0 );
setMoveKey(spep_1+306-2, 1, -33.8, -616 , 0 );
setMoveKey(spep_1+308-2, 1, -29.8, -612 , 0 );


setScaleKey(spep_1+20, 1, 1.38, 1.38 );
setScaleKey(spep_1+24, 1, 1.38, 1.38 );
setScaleKey(spep_1+26, 1, 1.39, 1.39 );
setScaleKey(spep_1+28, 1, 1.39, 1.39 );
setScaleKey(spep_1+30, 1, 1.45, 1.45 );
setScaleKey(spep_1+32, 1, 1.62, 1.62 );
setScaleKey(spep_1+34, 1, 1.58, 1.58 );
setScaleKey(spep_1+36, 1, 1.64, 1.64 );
setScaleKey(spep_1+38, 1, 1.69, 1.69 );
setScaleKey(spep_1+40, 1, 1.77, 1.77 );
setScaleKey(spep_1+42, 1, 1.83, 1.83 );
setScaleKey(spep_1+44, 1, 1.88, 1.88 );
setScaleKey(spep_1+46, 1, 1.89, 1.89 );
setScaleKey(spep_1+48, 1, 1.90, 1.90 );
setScaleKey(spep_1+50, 1, 1.91, 1.92 );
setScaleKey(spep_1+52, 1, 1.92, 1.92 );
setScaleKey(spep_1+54, 1, 1.79, 1.79 );
setScaleKey(spep_1+56, 1, 1.8, 1.8 );
setScaleKey(spep_1+58, 1, 1.81, 1.81 );
setScaleKey(spep_1+60, 1, 1.81, 1.81 );
setScaleKey(spep_1+62, 1, 1.96, 1.96 );
setScaleKey(spep_1+64, 1, 1.97, 1.97 );
setScaleKey(spep_1+66, 1, 1.98, 1.98 );
setScaleKey(spep_1+68, 1, 1.98, 1.98 );
setScaleKey(spep_1+70, 1, 1.86, 1.86 );
setScaleKey(spep_1+72, 1, 1.86, 1.86 );
setScaleKey(spep_1+74, 1, 1.87, 1.87 );
setScaleKey(spep_1+76, 1, 1.88, 1.88 );
setScaleKey(spep_1+78, 1, 2.03, 2.03 );
setScaleKey(spep_1+80, 1, 2.04, 2.04 );
setScaleKey(spep_1+82, 1, 2.05, 2.05 );
setScaleKey(spep_1+84, 1, 2.06, 2.06 );
setScaleKey(spep_1+86, 1, 2.06, 2.06 );
setScaleKey(spep_1+88, 1, 2.07, 2.07 );
setScaleKey(spep_1+90, 1, 1.93, 1.93 );
setScaleKey(spep_1+92, 1, 1.94, 1.94 );
setScaleKey(spep_1+94, 1, 1.95, 1.95 );
setScaleKey(spep_1+96, 1, 2.01, 2.01 );
setScaleKey(spep_1+98, 1, 2.12, 2.12 );
setScaleKey(spep_1+100, 1, 2.13, 2.13 );
setScaleKey(spep_1+102, 1, 2.13, 2.13 );
setScaleKey(spep_1+104, 1, 2.15, 2.15 );
setScaleKey(spep_1+106, 1, 2.16, 2.16 );
setScaleKey(spep_1+108, 1, 2.16, 2.16 );
setScaleKey(spep_1+110, 1, 2.17, 2.17 );
setScaleKey(spep_1+112, 1, 2.18, 2.18 );
setScaleKey(spep_1+114, 1, 2.03, 2.03 );
setScaleKey(spep_1+116, 1, 2.04, 2.04 );
setScaleKey(spep_1+118, 1, 2.05, 2.05 );
setScaleKey(spep_1+120, 1, 0.6, 0.6 );
setScaleKey(spep_1+122, 1, 0.65, 0.65 );
setScaleKey(spep_1+128, 1, 0.65, 0.65 );
setScaleKey(spep_1+130, 1, 0.66, 0.66 );
setScaleKey(spep_1+132, 1, 0.6, 0.6 );
setScaleKey(spep_1+138, 1, 0.6, 0.6 );
setScaleKey(spep_1+140, 1, 0.65, 0.65 );
setScaleKey(spep_1+146, 1, 0.65, 0.65 );
setScaleKey(spep_1+148, 1, 0.6, 0.6 );
setScaleKey(spep_1+154, 1, 0.6, 0.6 );
setScaleKey(spep_1+156, 1, 0.65, 0.65 );
setScaleKey(spep_1+166, 1, 0.65, 0.65 );
setScaleKey(spep_1+168, 1, 0.6, 0.6 );
setScaleKey(spep_1+174, 1, 0.6, 0.6 );
setScaleKey(spep_1+176, 1, 0.65, 0.65 );
setScaleKey(spep_1+180, 1, 0.65, 0.65 );
setScaleKey(spep_1+182, 1, 0.66, 0.66 );
setScaleKey(spep_1+184, 1, 0.66, 0.66 );
setScaleKey(spep_1+186, 1, 0.65, 0.65 );
setScaleKey(spep_1+190, 1, 0.65, 0.65 );
setScaleKey(spep_1+192, 1, 0.6, 0.6 );
setScaleKey(spep_1+198, 1, 0.6, 0.6 );
setScaleKey(spep_1+200, 1, 0.65, 0.65 );
setScaleKey(spep_1+206, 1, 0.65, 0.65 );
setScaleKey(spep_1+208, 1, 0.66, 0.66 );
setScaleKey(spep_1+210, 1, 0.6, 0.6 );
setScaleKey(spep_1+218, 1, 0.65, 0.65 );

setScaleKey(spep_1+258-2, 1, 0.21, 0.21 );
setScaleKey(spep_1+260-2, 1, 0.37, 0.37 );
setScaleKey(spep_1+262-2, 1, 0.53, 0.53 );
setScaleKey(spep_1+264-2, 1, 0.69, 0.69 );
setScaleKey(spep_1+266-2, 1, 0.85, 0.85 );
setScaleKey(spep_1+268-2, 1, 1.01, 1.01 );
setScaleKey(spep_1+270-2, 1, 1.4, 1.4 );
setScaleKey(spep_1+272-2, 1, 1.79, 1.79 );
setScaleKey(spep_1+274-2, 1, 2.17, 2.17 );
setScaleKey(spep_1+276-2, 1, 2.56, 2.56 );
setScaleKey(spep_1+278-2, 1, 2.95, 2.95 );
setScaleKey(spep_1+280-2, 1, 3.34, 3.34 );

setRotateKey(spep_1+20, 1, 0 );
setRotateKey(spep_1+30, 1, 0 );
setRotateKey(spep_1+32, 1, -2 );
setRotateKey(spep_1+34, 1, -1.6 );
setRotateKey(spep_1+36, 1, -1.2 );
setRotateKey(spep_1+38, 1, -0.8 );
setRotateKey(spep_1+40, 1, -0.4 );
setRotateKey(spep_1+42, 1, 0 );
setRotateKey(spep_1+44, 1, -0.2 );
setRotateKey(spep_1+50, 1, -0.2 );
setRotateKey(spep_1+52, 1, -2 );
setRotateKey(spep_1+54, 1, -41 );
setRotateKey(spep_1+56, 1, -37.7 );
setRotateKey(spep_1+58, 1, -34.4 );
setRotateKey(spep_1+60, 1, -31.1 );
setRotateKey(spep_1+62, 1, -15.9 );
setRotateKey(spep_1+64, 1, -18.3 );
setRotateKey(spep_1+66, 1, -20.8 );
setRotateKey(spep_1+68, 1, -23.2 );
setRotateKey(spep_1+70, 1, -41 );
setRotateKey(spep_1+72, 1, -40 );
setRotateKey(spep_1+74, 1, -39.1 );
setRotateKey(spep_1+76, 1, -38.1 );
setRotateKey(spep_1+78, 1, -5.7 );
setRotateKey(spep_1+82, 1, -5.7 );
setRotateKey(spep_1+84, 1, -3.8 );
setRotateKey(spep_1+86, 1, -0.5 );
setRotateKey(spep_1+88, 1, 2.9 );
setRotateKey(spep_1+90, 1, -41 );
setRotateKey(spep_1+92, 1, -40 );
setRotateKey(spep_1+94, 1, -39.1 );
setRotateKey(spep_1+96, 1, -38.1 );
setRotateKey(spep_1+98, 1, -5.7 );
setRotateKey(spep_1+102, 1, -5.7 );
setRotateKey(spep_1+104, 1, -2 );
setRotateKey(spep_1+106, 1, -2 );
setRotateKey(spep_1+108, 1, -5.7 );
setRotateKey(spep_1+112, 1, -5.7 );
setRotateKey(spep_1+114, 1, -41 );
setRotateKey(spep_1+116, 1, -40.4 );
setRotateKey(spep_1+118, 1, -39.7 );
setRotateKey(spep_1+120, 1, -39.1 );
setRotateKey(spep_1+122, 1, -0.2 );
setRotateKey(spep_1+128, 1, -0.2 );
setRotateKey(spep_1+130, 1, -2 );
setRotateKey(spep_1+132, 1, -41 );
setRotateKey(spep_1+134, 1, -37.7 );
setRotateKey(spep_1+136, 1, -34.4 );
setRotateKey(spep_1+138, 1, -31.1 );
setRotateKey(spep_1+140, 1, -15.9 );
setRotateKey(spep_1+142, 1, -18.3 );
setRotateKey(spep_1+144, 1, -20.8 );
setRotateKey(spep_1+146, 1, -23.2 );
setRotateKey(spep_1+148, 1, -41 );
setRotateKey(spep_1+150, 1, -40 );
setRotateKey(spep_1+152, 1, -39.1 );
setRotateKey(spep_1+154, 1, -38.1 );
setRotateKey(spep_1+156, 1, -5.7 );
setRotateKey(spep_1+160, 1, -5.7 );
setRotateKey(spep_1+162, 1, -3.8 );
setRotateKey(spep_1+164, 1, -0.5 );
setRotateKey(spep_1+166, 1, 2.9 );
setRotateKey(spep_1+168, 1, -41 );
setRotateKey(spep_1+170, 1, -40 );
setRotateKey(spep_1+172, 1, -39.1 );
setRotateKey(spep_1+174, 1, -38.1 );
setRotateKey(spep_1+176, 1, -5.7 );
setRotateKey(spep_1+180, 1, -5.7 );
setRotateKey(spep_1+182, 1, -2 );
setRotateKey(spep_1+184, 1, -2 );
setRotateKey(spep_1+186, 1, -5.7 );
setRotateKey(spep_1+190, 1, -5.7 );
setRotateKey(spep_1+192, 1, -41 );
setRotateKey(spep_1+194, 1, -40.4 );
setRotateKey(spep_1+196, 1, -39.7 );
setRotateKey(spep_1+198, 1, -39.1 );
setRotateKey(spep_1+200, 1, -0.2 );
setRotateKey(spep_1+206, 1, -0.2 );
setRotateKey(spep_1+208, 1, -2 );
setRotateKey(spep_1+210, 1, -41 );
setRotateKey(spep_1+212, 1, -37.7 );
setRotateKey(spep_1+214, 1, -34.4 );
setRotateKey(spep_1+216, 1, -31.1 );
setRotateKey(spep_1+218, 1, -15.9 );
setRotateKey(spep_1+220, 1, -18.3 );
setRotateKey(spep_1+222, 1, -20.8 );
setRotateKey(spep_1+224, 1, -23.2 );


setRotateKey(spep_1+258-2, 1, 4.7 );
setRotateKey(spep_1+262-2, 1, 4.7 );
setRotateKey(spep_1+264-2, 1, 4.6 );
setRotateKey(spep_1+272-2, 1, 4.6 );
setRotateKey(spep_1+274-2, 1, 4.7 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 40,  906, 210, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 250, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 40, shuchusen2, 1.34, 1.9 );
setEffScaleKey( spep_1 + 250, shuchusen2, 1.34, 1.9 );

setEffRotateKey( spep_1 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 + 250, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 40, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 250, shuchusen2, 255 );


tosshin_b = entryEffect(  spep_1+250,  SP_05x,  0x80,  -1, 0, 0, 0);

setEffMoveKey(  spep_1+250,  tosshin_b,  0,  0);
setEffMoveKey(  spep_1+400,  tosshin_b,  0,  0);
setEffScaleKey(  spep_1+250,  tosshin_b,  -1.0,  1.0);
setEffScaleKey(  spep_1+400,  tosshin_b,  -1.0,  1.0);
setEffRotateKey(  spep_1+250,  tosshin_b,  0);
setEffRotateKey(  spep_1+400,  tosshin_b,  0);
setEffAlphaKey(  spep_1+250,  tosshin_b,  255);
setEffAlphaKey(  spep_1+400,  tosshin_b,  255);

--[[
--集中線
shuchusen2a = entryEffectLife( spep_1 + 44,  906, 204, 0x100, -1, 0,0, 0 );

setEffMoveKey( spep_1 + 44, shuchusen2a, 0, 0 , 0 );
setEffMoveKey( spep_1 + 248, shuchusen2a, 0, 0 , 0 );
setEffScaleKey( spep_1 + 44, shuchusen2a, 1.34, 1.9 );
setEffScaleKey( spep_1 + 248, shuchusen2a, 1.34, 1.9 );
setEffRotateKey( spep_1 + 44, shuchusen2a, 0 );
setEffRotateKey( spep_1 + 248, shuchusen2a, 0 );
setEffAlphaKey( spep_1 + 44, shuchusen2a, 255 );
setEffAlphaKey( spep_1 + 248, shuchusen2a, 255 );
]]--

--***SE***
playSe(  spep_1+44,  1000);
playSe(  spep_1+52,  1004);
playSe(  spep_1+54,  1001);
playSe(  spep_1+62,  1007);
playSe(  spep_1+70,  1000);
playSe(  spep_1+90,  1002);  --ここまでアップ

playSe(  spep_1+98,  1009);
playSe(  spep_1+104,  1000);
playSe(  spep_1+108,  1001);
playSe(  spep_1+114,  1002);
playSe(  spep_1+122,  1000);
playSe(  spep_1+130,  1003);
playSe(  spep_1+132,  1000);
playSe(  spep_1+140,  1007);
playSe(  spep_1+148,  1004);
playSe(  spep_1+156,  1002); 
playSe(  spep_1+168,  1000);
playSe(  spep_1+176,  1003);
playSe(  spep_1+182,  1004);
playSe(  spep_1+186,  1007);
playSe(  spep_1+192,  1001);
playSe(  spep_1+200,  1009);
playSe(  spep_1+208,  1000);
playSe(  spep_1+210,  1013);
playSe(  spep_1+218,  1000);
playSe(  spep_1+230,  1011);
playSe(  spep_1+322,  SE_04);  --カットイン

-- ** エフェクト等 ** --
entryFade(spep_1+40, 0,2, 2,fcolor_r,fcolor_g,fcolor_b,200); -- whit_fe fade
entryFade(spep_1+112, 6,6, 4,fcolor_r,fcolor_g,fcolor_b,255); -- whit_fe fade
entryFade(spep_1+222, 0,4, 4,fcolor_r,fcolor_g,fcolor_b,255); -- whit_fe fade
entryFade(spep_1+246, 0,4, 0,fcolor_r,fcolor_g,fcolor_b,255); -- whit_fe fade
entryFade(spep_1+392, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+400;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;


------------------------------------------------------
--追い討ち(200)
------------------------------------------------------
--***書き文字***
ct_shun2 = entryEffectLife( spep_3 + 52,  10011, 24, 0x100, -1, 0, -48, 334.6 );  --シュン

setEffMoveKey( spep_3 + 52, ct_shun2, -48, 334.6 , 0 );
setEffMoveKey( spep_3 + 54, ct_shun2, -48, 334.7 , 0 );
setEffMoveKey( spep_3 + 56, ct_shun2, -47.9, 334.7 , 0 );
setEffMoveKey( spep_3 + 60, ct_shun2, -47.9, 334.7 , 0 );
setEffMoveKey( spep_3 + 62, ct_shun2, -47.8, 334.6 , 0 );
setEffMoveKey( spep_3 + 66, ct_shun2, -47.8, 334.6 , 0 );
setEffMoveKey( spep_3 + 68, ct_shun2, -47.9, 334.6 , 0 );
setEffMoveKey( spep_3 + 70, ct_shun2, -47.9, 334.6 , 0 );
setEffMoveKey( spep_3 + 72, ct_shun2, -48, 334.6 , 0 );
setEffMoveKey( spep_3 + 76, ct_shun2, -48, 334.6 , 0 );
setEffScaleKey( spep_3 + 52, ct_shun2, 1.79, 1.79 );
setEffScaleKey( spep_3 + 54, ct_shun2, 3.02, 3.02 );
setEffScaleKey( spep_3 + 56, ct_shun2, 2.81, 2.81 );
setEffScaleKey( spep_3 + 58, ct_shun2, 2.6, 2.6 );
setEffScaleKey( spep_3 + 60, ct_shun2, 2.4, 2.4 );
setEffScaleKey( spep_3 + 62, ct_shun2, 2.19, 2.19 );
setEffScaleKey( spep_3 + 64, ct_shun2, 1.98, 1.98 );
setEffScaleKey( spep_3 + 66, ct_shun2, 1.96, 1.96 );
setEffScaleKey( spep_3 + 68, ct_shun2, 1.94, 1.94 );
setEffScaleKey( spep_3 + 70, ct_shun2, 1.92, 1.92 );
setEffScaleKey( spep_3 + 72, ct_shun2, 1.89, 1.89 );
setEffScaleKey( spep_3 + 74, ct_shun2, 1.87, 1.87 );
setEffScaleKey( spep_3 + 76, ct_shun2, 1.85, 1.85 );
setEffRotateKey( spep_3 + 52, ct_shun2, -7.2 );
setEffRotateKey( spep_3 + 76, ct_shun2, -7.2 );
setEffAlphaKey( spep_3 + 52, ct_shun2, 255 );
setEffAlphaKey( spep_3 + 64, ct_shun2, 255 );
setEffAlphaKey( spep_3 + 66, ct_shun2, 213 );
setEffAlphaKey( spep_3 + 68, ct_shun2, 170 );
setEffAlphaKey( spep_3 + 70, ct_shun2, 128 );
setEffAlphaKey( spep_3 + 72, ct_shun2, 85 );
setEffAlphaKey( spep_3 + 74, ct_shun2, 42 );
setEffAlphaKey( spep_3 + 76, ct_shun2, 0 );


ct_ex = entryEffectLife( spep_3 + 54,  10000, 40, 0x100, -1, 0, 229.2, 201.1 );  --!!

setEffMoveKey( spep_3 + 54, ct_ex, 229.2, 201.1 , 0 );
setEffMoveKey( spep_3 + 56, ct_ex, 231.6, 215.2 , 0 );
setEffMoveKey( spep_3 + 58, ct_ex, 239.2, 217 , 0 );
setEffMoveKey( spep_3 + 60, ct_ex, 237.1, 221.3 , 0 );
setEffMoveKey( spep_3 + 62, ct_ex, 241.9, 209 , 0 );
setEffMoveKey( spep_3 + 64, ct_ex, 243.3, 205 , 0 );
setEffMoveKey( spep_3 + 66, ct_ex, 242.9, 210.7 , 0 );
setEffMoveKey( spep_3 + 68, ct_ex, 248.4, 202.6 , 0 );
setEffMoveKey( spep_3 + 70, ct_ex, 248, 208.3 , 0 );
setEffMoveKey( spep_3 + 72, ct_ex, 253.4, 200.2 , 0 );
setEffMoveKey( spep_3 + 74, ct_ex, 253.1, 205.9 , 0 );
setEffMoveKey( spep_3 + 76, ct_ex, 258.5, 197.8 , 0 );
setEffMoveKey( spep_3 + 78, ct_ex, 258.1, 203.5 , 0 );
setEffMoveKey( spep_3 + 80, ct_ex, 263.6, 195.4 , 0 );
setEffMoveKey( spep_3 + 82, ct_ex, 263.2, 201.1 , 0 );
setEffMoveKey( spep_3 + 84, ct_ex, 268.6, 193 , 0 );
setEffMoveKey( spep_3 + 86, ct_ex, 268.3, 198.7 , 0 );
setEffMoveKey( spep_3 + 88, ct_ex, 273.7, 190.6 , 0 );
setEffMoveKey( spep_3 + 90, ct_ex, 273.3, 196.3 , 0 );
setEffMoveKey( spep_3 + 92, ct_ex, 278.8, 188.2 , 0 );
setEffMoveKey( spep_3 + 94, ct_ex, 278.4, 193.9 , 0 );
setEffScaleKey( spep_3 + 54, ct_ex, 1.49, 1.49 );
setEffScaleKey( spep_3 + 56, ct_ex, 2.76, 2.76 );
setEffScaleKey( spep_3 + 58, ct_ex, 4.03, 4.03 );
setEffScaleKey( spep_3 + 60, ct_ex, 3.71, 3.71 );
setEffScaleKey( spep_3 + 62, ct_ex, 3.4, 3.4 );
setEffScaleKey( spep_3 + 64, ct_ex, 3.08, 3.08 );
setEffScaleKey( spep_3 + 94, ct_ex, 3.08, 3.08 );
setEffRotateKey( spep_3 + 54, ct_ex, 15.4 );
setEffRotateKey( spep_3 + 94, ct_ex, 15.4 );
setEffAlphaKey( spep_3 + 54, ct_ex, 255 );
setEffAlphaKey( spep_3 + 94, ct_ex, 255 );

ct_zuo = entryEffectLife( spep_3 + 96,  10012, 34, 0x100, -1, 0, 78.7, 260.5 );  --ズオ

setEffMoveKey( spep_3 + 96, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3 + 98, ct_zuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_3 + 100, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 102, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 104, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 106, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 108, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 110, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 112, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 114, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 116, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 118, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 120, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 122, ct_zuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_3 + 124, ct_zuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_3 + 126, ct_zuo, 211.6, 339 , 0 );
setEffMoveKey( spep_3 + 128, ct_zuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_3 + 130, ct_zuo, 210.3, 372.4 , 0 );
setEffScaleKey( spep_3 + 96, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_3 + 98, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_3 + 100, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 120, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 122, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_3 + 124, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_3 + 126, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_3 + 128, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_3 + 130, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_3 + 96, ct_zuo, 27.2 );
setEffRotateKey( spep_3 + 130, ct_zuo, 27.2 );
setEffAlphaKey( spep_3 + 96, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 120, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 122, ct_zuo, 204 );
setEffAlphaKey( spep_3 + 124, ct_zuo, 153 );
setEffAlphaKey( spep_3 + 126, ct_zuo, 102 );
setEffAlphaKey( spep_3 + 128, ct_zuo, 51 );
setEffAlphaKey( spep_3 + 130, ct_zuo, 0 );

setEffShake(spep_3 + 96,ct_zuo,34,20);

ct_zudodo = entryEffectLife( spep_3 + 136,  10014, 60, 0x100, -1, 0, 54.8, 362 );
setEffMoveKey( spep_3 + 136, ct_zudodo, 54.8, 362 , 0 );
setEffMoveKey( spep_3 + 138, ct_zudodo, 66.4, 371 , 0 );
setEffMoveKey( spep_3 + 140, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 142, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 144, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 146, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 148, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 150, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 152, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 154, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 156, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 158, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 160, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 162, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 164, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 166, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 168, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 170, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 172, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 174, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 176, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 178, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 180, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 182, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 184, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 186, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 188, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 190, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 192, ct_zudodo, 52.4, 351.2 , 0 );
setEffMoveKey( spep_3 + 194, ct_zudodo, 67.7, 368.4 , 0 );
setEffMoveKey( spep_3 + 196, ct_zudodo, 52.4, 351.2 , 0 );

setEffScaleKey( spep_3 + 136, ct_zudodo, 1.73, 1.73 );
setEffScaleKey( spep_3 + 138, ct_zudodo, 2.16, 2.16 );
setEffScaleKey( spep_3 + 140, ct_zudodo, 2.59, 2.59 );
setEffScaleKey( spep_3 + 196, ct_zudodo, 2.59, 2.59 );

setEffRotateKey( spep_3 + 136, ct_zudodo, 0 );
setEffRotateKey( spep_3 + 196, ct_zudodo, 0 );

setEffAlphaKey( spep_3 + 136, ct_zudodo, 85 );
setEffAlphaKey( spep_3 + 138, ct_zudodo, 170 );
setEffAlphaKey( spep_3 + 140, ct_zudodo, 255 );
setEffAlphaKey( spep_3 + 196, ct_zudodo, 255 );

setEffShake(spep_3 + 136,ct_zudodo,60,20);

--***集中線***
shuchusen3 =  entryEffectLife(  spep_3,  906,  196, 0x100, -1,  0,  0,   0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+196,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.16,  1.46);
setEffScaleKey(  spep_3+196,  shuchusen3,  1.16,  1.46);
setEffRotateKey(  spep_3,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3+196,  shuchusen3,  0,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+196,  shuchusen3,  255);

--****流線**
ryusen = entryEffectLife( spep_3,  921, 196, 0x80, -1, 0,0, 0 );

setEffMoveKey(  spep_3,  ryusen,  0,  0);
setEffMoveKey(  spep_3+196,  ryusen,  0,  0);
setEffScaleKey(  spep_3,  ryusen,  1.5,  1.32);
setEffScaleKey(  spep_3+196,  ryusen,  1.5,  1.32);
setEffRotateKey(  spep_3, ryusen,  22.8 );
setEffRotateKey(  spep_3+196,  ryusen,  22.8);
setEffAlphaKey(  spep_3,  ryusen,  255);
setEffAlphaKey(  spep_3+196,  ryusen,  255);

--***ビーム***
beam = entryEffectLife(spep_3,SP_06x,200,0x100,-1,0,0,0);

setEffMoveKey(  spep_3,  beam,  0,  0);
setEffMoveKey(  spep_3+200,  beam,  0,  0);
setEffScaleKey(  spep_3,  beam,  1.0,  1.0);
setEffScaleKey(  spep_3+200, beam, 1.0,  1.0);
setEffRotateKey(  spep_3,  beam,  0);
setEffRotateKey(  spep_3+200,  beam,  0);
setEffAlphaKey(  spep_3,  beam,  255);
setEffAlphaKey(  spep_3+196,  beam,  255);
setEffAlphaKey(  spep_3+197,  beam,  0);
setEffAlphaKey(  spep_3+198,  beam,  0);
setEffAlphaKey(  spep_3+200,  beam,  0);

--***敵の動き**
setDisp( spep_3+0, 1, 1 );
setDisp( spep_3+196, 1, 0 );
changeAnime( spep_3+0, 1, 106 ); 
changeAnime( spep_3+32, 1, 104 );
changeAnime( spep_3+96, 1, 108 );

setShakeChara(  spep_3,  1,  32,  10);
setShakeChara(  spep_3+96,  1,  100,  20);

setMoveKey( spep_3+0, 1, -2548.9, 1269.3 , 0 );
setMoveKey( spep_3+2, 1, -2222.1, 1179 , 0 );
setMoveKey( spep_3+4, 1, -1885.4, 964.7 , 0 );
setMoveKey( spep_3+6, 1, -1590, 853.9 , 0 );
setMoveKey( spep_3+8, 1, -1221.8, 660.2 , 0 );
setMoveKey( spep_3+10, 1, -890.5, 533.6 , 0 );
setMoveKey( spep_3+12, 1, -558.1, 355.8 , 0 );
setMoveKey( spep_3+14, 1, -238.4, 212.8 , 0 );
setMoveKey( spep_3+16, 1, -205, 193.4 , 0 );
setMoveKey( spep_3+18, 1, -187.1, 194.8 , 0 );
setMoveKey( spep_3+20, 1, -157.5, 170.6 , 0 );
setMoveKey( spep_3+22, 1, -141.5, 165.1 , 0 );
setMoveKey( spep_3+24, 1, -103.2, 144.5 , 0 );
setMoveKey( spep_3+26, 1, -78.2, 135.7 , 0 );
setMoveKey( spep_3+28, 1, -42, 115.1 , 0 );
setMoveKey( spep_3+31, 1, -17.2, 107.6 , 0 );
setMoveKey( spep_3+32, 1, 46.2, 11.9 , 0 );
setMoveKey( spep_3+34, 1, 57.8, 0.2 , 0 );
setMoveKey( spep_3+36, 1, 77.3, -3.4 , 0 );
setMoveKey( spep_3+38, 1, 84.9, -15.1 , 0 );
setMoveKey( spep_3+40, 1, 100.5, -15 , 0 );
setMoveKey( spep_3+42, 1, 104, -26.8 , 0 );
setMoveKey( spep_3+44, 1, 115.5, -22.6 , 0 );
setMoveKey( spep_3+46, 1, 115, -34.4 , 0 );
setMoveKey( spep_3+48, 1, 130.5, -30.2 , 0 );
setMoveKey( spep_3+50, 1, 134, -38.1 , 0 );
setMoveKey( spep_3+52, 1, 141.2, -35.7 , 0 );
setMoveKey( spep_3+54, 1, 136.4, -45.4 , 0 );
setMoveKey( spep_3+56, 1, 147.6, -39 , 0 );
setMoveKey( spep_3+58, 1, 146.8, -44.6 , 0 );
setMoveKey( spep_3+60, 1, 150, -46.3 , 0 );
setMoveKey( spep_3+62, 1, 151.2, -55.9 , 0 );
setMoveKey( spep_3+64, 1, 156.4, -49.6 , 0 );
setMoveKey( spep_3+66, 1, 155.6, -53.2 , 0 );
setMoveKey( spep_3+68, 1, 162.8, -52.8 , 0 );
setMoveKey( spep_3+70, 1, 164, -56.5 , 0 );
setMoveKey( spep_3+72, 1, 169.2, -56.1 , 0 );
setMoveKey( spep_3+74, 1, 168.4, -61.8 , 0 );
setMoveKey( spep_3+76, 1, 175.6, -59.4 , 0 );
setMoveKey( spep_3+78, 1, 174.8, -61.1 , 0 );
setMoveKey( spep_3+80, 1, 182, -62.7 , 0 );
setMoveKey( spep_3+82, 1, 183.2, -68.3 , 0 );
setMoveKey( spep_3+84, 1, 188.4, -66 , 0 );
setMoveKey( spep_3+86, 1, 189.6, -69.6 , 0 );
setMoveKey( spep_3+88, 1, 194.8, -69.3 , 0 );
setMoveKey( spep_3+90, 1, 194, -74.9 , 0 );
setMoveKey( spep_3+92, 1, 201.2, -72.6 , 0 );
--setMoveKey( spep_3+95, 1, 202.4, -76.2 , 0 );
setMoveKey( spep_3+96-2, 1, 1203.2, -437.1 , 0 );
setMoveKey( spep_3+96-3, 1, 1203.2, -437.1 , 0 );
setMoveKey( spep_3+98-2, 1, 1042.3, -377.8 , 0 );
setMoveKey( spep_3+98-3, 1, 1042.3, -377.8 , 0 );
setMoveKey( spep_3+100-3, 1, 919.9, -332.7 , 0 );
setMoveKey( spep_3+102-3, 1, 836.2, -301.8 , 0 );
setMoveKey( spep_3+104-3, 1, 791.2, -285.2 , 0 );
setMoveKey( spep_3+106-3, 1, 767.2, -265.2 , 0 );
setMoveKey( spep_3+108-3, 1, 770.2, -262.1 , 0 );
setMoveKey( spep_3+110-3, 1, 773.3, -259 , 0 );
setMoveKey( spep_3+112-3, 1, 776.4, -256 , 0 );
setMoveKey( spep_3+114-3, 1, 779.5, -252.9 , 0 );
setMoveKey( spep_3+116-3, 1, 782.5, -249.8 , 0 );
setMoveKey( spep_3+118-3, 1, 785.6, -246.7 , 0 );
setMoveKey( spep_3+120-3, 1, 788.7, -243.7 , 0 );
setMoveKey( spep_3+122-3, 1, 791.8, -240.6 , 0 );
setMoveKey( spep_3+124-3, 1, 794.9, -237.5 , 0 );
setMoveKey( spep_3+126-3, 1, 797.9, -234.4 , 0 );
setMoveKey( spep_3+128-3, 1, 801, -231.3 , 0 );
setMoveKey( spep_3+130-3, 1, 804.1, -228.3 , 0 );
setMoveKey( spep_3+132-3, 1, 807.2, -225.2 , 0 );
setMoveKey( spep_3+134-3, 1, 499.1, -113.1 , 0 );
setMoveKey( spep_3+136-2, 1, 151, -37 , 0 );
setMoveKey( spep_3+136-3, 1, 151, -37 , 0 );
setMoveKey( spep_3+138-2, 1, -157.1, 155.2 , 0 );
setMoveKey( spep_3+138-3, 1, -157.1, 155.2 , 0 );
setMoveKey( spep_3+140-3, 1, -121.1, 191.2 , 0 );
setMoveKey( spep_3+142-3, 1, -117.8, 189 , 0 );
setMoveKey( spep_3+144-3, 1, -114, 186.4 , 0 );
setMoveKey( spep_3+146-3, 1, -109.5, 183.4 , 0 );
setMoveKey( spep_3+148-3, 1, -104.5, 179.9 , 0 );
setMoveKey( spep_3+150-3, 1, -98.8, 176 , 0 );
setMoveKey( spep_3+152-3, 1, -92.5, 171.7 , 0 );
setMoveKey( spep_3+154-3, 1, -85.7, 167 , 0 );
setMoveKey( spep_3+156-3, 1, -78.2, 161.9 , 0 );
setMoveKey( spep_3+158-3, 1, -70.1, 156.4 , 0 );
setMoveKey( spep_3+160-3, 1, -61.4, 150.5 , 0 );
setMoveKey( spep_3+162-3, 1, -52.1, 144.1 , 0 );
setMoveKey( spep_3+164-3, 1, -42.2, 137.3 , 0 );
setMoveKey( spep_3+166-3, 1, -31.7, 130.2 , 0 );
setMoveKey( spep_3+168-3, 1, -20.6, 122.6 , 0 );
setMoveKey( spep_3+170-3, 1, -8.8, 114.5 , 0 );
setMoveKey( spep_3+172-3, 1, 3.5, 106.1 , 0 );
setMoveKey( spep_3+174-3, 1, 16.5, 97.3 , 0 );
setMoveKey( spep_3+176-3, 1, 30, 88 , 0 );
setMoveKey( spep_3+178-3, 1, 44.2, 78.3 , 0 );
setMoveKey( spep_3+180-3, 1, 58.9, 68.2 , 0 );
setMoveKey( spep_3+182-3, 1, 74.3, 57.7 , 0 );
setMoveKey( spep_3+184-3, 1, 90.3, 46.8 , 0 );
setMoveKey( spep_3+186-3, 1, 106.8, 35.5 , 0 );
setMoveKey( spep_3+188-3, 1, 124, 23.7 , 0 );
setMoveKey( spep_3+190-3, 1, 141.8, 11.5 , 0 );
setMoveKey( spep_3+192-3, 1, 160.2, -1 , 0 );
setMoveKey( spep_3+194-3, 1, 179.2, -14 , 0 );
setMoveKey( spep_3+196-3, 1, 198.8, -27.4 , 0 );
setMoveKey( spep_3+198-2, 1, 219.1, -41.3 , 0 );

setScaleKey( spep_3+0, 1, 10.28, 10.28 );
setScaleKey( spep_3+2, 1, 9.16, 9.16 );
setScaleKey( spep_3+4, 1, 8.05, 8.05 );
setScaleKey( spep_3+6, 1, 6.93, 6.93 );
setScaleKey( spep_3+8, 1, 5.81, 5.81 );
setScaleKey( spep_3+10, 1, 4.69, 4.69 );
setScaleKey( spep_3+12, 1, 3.58, 3.58 );
setScaleKey( spep_3+14, 1, 2.46, 2.46 );
setScaleKey( spep_3+16, 1, 2.38, 2.38 );
setScaleKey( spep_3+18, 1, 2.3, 2.3 );
setScaleKey( spep_3+20, 1, 2.22, 2.22 );
setScaleKey( spep_3+22, 1, 2.12, 2.12 );
setScaleKey( spep_3+24, 1, 2.02, 2.02 );
setScaleKey( spep_3+26, 1, 1.92, 1.92 );
setScaleKey( spep_3+28, 1, 1.81, 1.81 );
setScaleKey( spep_3+31, 1, 1.69, 1.69 );
setScaleKey( spep_3+32, 1, 1.71, 1.71 );
setScaleKey( spep_3+34, 1, 1.62, 1.62 );
setScaleKey( spep_3+36, 1, 1.52, 1.52 );
setScaleKey( spep_3+38, 1, 1.43, 1.43 );
setScaleKey( spep_3+40, 1, 1.41, 1.41 );
setScaleKey( spep_3+42, 1, 1.4, 1.4 );
setScaleKey( spep_3+44, 1, 1.38, 1.38 );
setScaleKey( spep_3+46, 1, 1.36, 1.36 );
setScaleKey( spep_3+48, 1, 1.35, 1.35 );
setScaleKey( spep_3+50, 1, 1.33, 1.33 );
setScaleKey( spep_3+52, 1, 1.34, 1.34 );
setScaleKey( spep_3+54, 1, 1.35, 1.35 );
setScaleKey( spep_3+56, 1, 1.35, 1.35 );
setScaleKey( spep_3+58, 1, 1.36, 1.36 );
setScaleKey( spep_3+60, 1, 1.37, 1.37 );
setScaleKey( spep_3+62, 1, 1.38, 1.38 );
setScaleKey( spep_3+64, 1, 1.39, 1.39 );
setScaleKey( spep_3+66, 1, 1.4, 1.4 );
setScaleKey( spep_3+68, 1, 1.4, 1.4 );
setScaleKey( spep_3+70, 1, 1.41, 1.41 );
setScaleKey( spep_3+72, 1, 1.42, 1.42 );
setScaleKey( spep_3+74, 1, 1.43, 1.43 );
setScaleKey( spep_3+76, 1, 1.44, 1.44 );
setScaleKey( spep_3+78, 1, 1.44, 1.44 );
setScaleKey( spep_3+80, 1, 1.45, 1.45 );
setScaleKey( spep_3+82, 1, 1.46, 1.46 );
setScaleKey( spep_3+84, 1, 1.47, 1.47 );
setScaleKey( spep_3+86, 1, 1.48, 1.48 );
setScaleKey( spep_3+88, 1, 1.49, 1.49 );
setScaleKey( spep_3+90, 1, 1.49, 1.49 );
setScaleKey( spep_3+92, 1, 1.5, 1.5 );
--setScaleKey( spep_3+95, 1, 1.51, 1.51 );
setScaleKey( spep_3+96-3, 1, 1.2, 1.2 );
setScaleKey( spep_3+98-3, 1, 1.03, 1.03 );
setScaleKey( spep_3+100-3, 1, 0.9, 0.9 );
setScaleKey( spep_3+102-3, 1, 0.82, 0.82 );
setScaleKey( spep_3+104-3, 1, 0.77, 0.77 );
setScaleKey( spep_3+106-3, 1, 0.77, 0.77 );
setScaleKey( spep_3+108-3, 1, 0.79, 0.79 );
setScaleKey( spep_3+110-3, 1, 0.8, 0.8 );
setScaleKey( spep_3+112-3, 1, 0.82, 0.82 );
setScaleKey( spep_3+114-3, 1, 0.84, 0.84 );
setScaleKey( spep_3+116-3, 1, 0.85, 0.85 );
setScaleKey( spep_3+118-3, 1, 0.87, 0.87 );
setScaleKey( spep_3+120-3, 1, 0.89, 0.89 );
setScaleKey( spep_3+122-3, 1, 0.91, 0.91 );
setScaleKey( spep_3+124-3, 1, 0.92, 0.92 );
setScaleKey( spep_3+126-3, 1, 0.94, 0.94 );
setScaleKey( spep_3+128-3, 1, 0.96, 0.96 );
setScaleKey( spep_3+130-3, 1, 0.97, 0.97 );
setScaleKey( spep_3+132-3, 1, 0.99, 0.99 );
setScaleKey( spep_3+134-3, 1, 1.25, 1.25 );
setScaleKey( spep_3+136-3, 1, 1.71, 1.71 );
setScaleKey( spep_3+138-3, 1, 1.96, 1.96 );
setScaleKey( spep_3+140-3, 1, 2.31, 2.31 );
setScaleKey( spep_3+142-3, 1, 2.3, 2.3 );
setScaleKey( spep_3+144-3, 1, 2.28, 2.28 );
setScaleKey( spep_3+146-3, 1, 2.27, 2.27 );
setScaleKey( spep_3+148-3, 1, 2.25, 2.25 );
setScaleKey( spep_3+150-3, 1, 2.23, 2.23 );
setScaleKey( spep_3+152-3, 1, 2.2, 2.2 );
setScaleKey( spep_3+154-3, 1, 2.18, 2.18 );
setScaleKey( spep_3+156-3, 1, 2.15, 2.15 );
setScaleKey( spep_3+158-3, 1, 2.12, 2.12 );
setScaleKey( spep_3+160-3, 1, 2.09, 2.09 );
setScaleKey( spep_3+162-3, 1, 2.05, 2.05 );
setScaleKey( spep_3+164-3, 1, 2.01, 2.01 );
setScaleKey( spep_3+166-3, 1, 1.97, 1.97 );
setScaleKey( spep_3+168-3, 1, 1.93, 1.93 );
setScaleKey( spep_3+170-3, 1, 1.89, 1.89 );
setScaleKey( spep_3+172-3, 1, 1.84, 1.84 );
setScaleKey( spep_3+174-3, 1, 1.79, 1.79 );
setScaleKey( spep_3+176-3, 1, 1.74, 1.74 );
setScaleKey( spep_3+178-3, 1, 1.69, 1.69 );
setScaleKey( spep_3+180-3, 1, 1.63, 1.63 );
setScaleKey( spep_3+182-3, 1, 1.57, 1.57 );
setScaleKey( spep_3+184-3, 1, 1.51, 1.51 );
setScaleKey( spep_3+186-3, 1, 1.45, 1.45 );
setScaleKey( spep_3+188-3, 1, 1.39, 1.39 );
setScaleKey( spep_3+190-3, 1, 1.32, 1.32 );
setScaleKey( spep_3+192-3, 1, 1.25, 1.25 );
setScaleKey( spep_3+194-3, 1, 1.18, 1.18 );
setScaleKey( spep_3+196-3, 1, 1.11, 1.11 );
setScaleKey( spep_3+198-2, 1, 1.03, 1.03 );

setRotateKey( spep_3+0, 1, -4.1 );
setRotateKey( spep_3+2, 1, -2.4 );
setRotateKey( spep_3+4, 1, -0.8 );
setRotateKey( spep_3+6, 1, 0.9 );
setRotateKey( spep_3+8, 1, 2.6 );
setRotateKey( spep_3+10, 1, 4.3 );
setRotateKey( spep_3+12, 1, 5.9 );
setRotateKey( spep_3+14, 1, 7.6 );
setRotateKey( spep_3+16, 1, 8.2 );
setRotateKey( spep_3+18, 1, 8.8 );
setRotateKey( spep_3+20, 1, 9.5 );
setRotateKey( spep_3+22, 1, 10.3 );
setRotateKey( spep_3+24, 1, 11.1 );
setRotateKey( spep_3+26, 1, 11.9 );
setRotateKey( spep_3+28, 1, 12.8 );
setRotateKey( spep_3+31, 1, 13.7 );
setRotateKey( spep_3+32, 1, 32.7 );
setRotateKey( spep_3+34, 1, 28.8 );
setRotateKey( spep_3+36, 1, 25 );
setRotateKey( spep_3+38, 1, 21.1 );
setRotateKey( spep_3+40, 1, 20.9 );
setRotateKey( spep_3+42, 1, 20.6 );
setRotateKey( spep_3+44, 1, 20.4 );
setRotateKey( spep_3+46, 1, 20.2 );
setRotateKey( spep_3+48, 1, 19.9 );
setRotateKey( spep_3+50, 1, 19.7 );
setRotateKey( spep_3+52, 1, 19.5 );
setRotateKey( spep_3+54, 1, 19.4 );
setRotateKey( spep_3+56, 1, 19.2 );
setRotateKey( spep_3+58, 1, 19 );
setRotateKey( spep_3+60, 1, 18.9 );
setRotateKey( spep_3+62, 1, 18.7 );
setRotateKey( spep_3+64, 1, 18.6 );
setRotateKey( spep_3+66, 1, 18.4 );
setRotateKey( spep_3+68, 1, 18.2 );
setRotateKey( spep_3+70, 1, 18.1 );
setRotateKey( spep_3+72, 1, 17.9 );
setRotateKey( spep_3+74, 1, 17.7 );
setRotateKey( spep_3+76, 1, 17.6 );
setRotateKey( spep_3+78, 1, 17.4 );
setRotateKey( spep_3+80, 1, 17.2 );
setRotateKey( spep_3+82, 1, 17.1 );
setRotateKey( spep_3+84, 1, 16.9 );
setRotateKey( spep_3+86, 1, 16.8 );
setRotateKey( spep_3+88, 1, 16.6 );
setRotateKey( spep_3+90, 1, 16.4 );
setRotateKey( spep_3+92, 1, 16.3 );
--setRotateKey( spep_3+95, 1, 16.1 );
setRotateKey( spep_3+96-3, 1, 21.5 );
setRotateKey( spep_3+198-3, 1, 21.5 );

entryFadeBg( spep_3, 0, 196, 0,0, 0, 0, 255);  --黒背景 

--***ビーム背景***
beamBG = entryEffectLife(spep_3,SP_07x,200,0x80,-1,0,0,0);

setEffMoveKey(  spep_3,  beamBG,  0,  0);
setEffMoveKey(  spep_3+200,  beamBG,  0,  0);
setEffScaleKey(  spep_3,  beamBG,  1.0,  1.0);
setEffScaleKey(  spep_3+200, beamBG, 1.0,  1.0);
setEffRotateKey(  spep_3,  beamBG,  0);
setEffRotateKey(  spep_3+200,  beamBG,  0);
setEffAlphaKey(  spep_3,  beamBG,  255);
setEffAlphaKey(  spep_3+196,  beamBG,  255);
setEffAlphaKey(  spep_3+197,  beamBG,  0);
setEffAlphaKey(  spep_3+198,  beamBG,  0);
setEffAlphaKey(  spep_3+200,  beamBG,  0);

--***SE***
playSe(  spep_3,  8);
playSe(  spep_3+56,  43);  --瞬間移動
playSe(  spep_3+66,  SE_06);
playSe(  spep_3+98,  SE_07);

entryFade( spep_3+92, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--------------------------------------
--ギャン
--------------------------------------

spep_5 = spep_3+196;

--エフェクトの再生
gyan = entryEffectLife(  spep_5,  190011,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);
setEffAlphaKey(  spep_5+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_5, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgayn, 255);
setEffAlphaKey( spep_5+60, ctgayn, 0);
setEffShake( spep_5, ctgayn, 60, 10);

playSe(spep_5,SE_09);

entryFade( spep_5+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6 = spep_5+60;
--------------------------------------
--爆発
--------------------------------------
--***集中線***
shuchusen6 =  entryEffectLife(  spep_6,  906,  130, 0x100, -1,  0,  0,   0);

setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+130,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6,  shuchusen6,  1.32,  1.39);
setEffScaleKey(  spep_6+130,  shuchusen6,  1.32,  1.39);
setEffRotateKey(  spep_6,  shuchusen6,  5);
setEffRotateKey(  spep_6+130,  shuchusen6,  5);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+130,  shuchusen6,  255);

--エフェクト
explosion=entryEffect(spep_6,SP_08x,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 130, explosion, 0, 0 , 0 );
setEffScaleKey(spep_6,explosion,1.0,1.0);
setEffScaleKey(spep_6+130,explosion,1.0,1.0);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+130,explosion,0);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+130,explosion,255);

--***SE***
playSe(  spep_6,  1024);  --爆発

-- ダメージ表示
dealDamage(spep_6+10);
entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+110);
end

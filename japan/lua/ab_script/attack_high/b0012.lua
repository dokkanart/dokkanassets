print(  "[lua]execa002");

rn_01 = 25;
rn_02 = rn_01+26;
rn_03 = rn_02+25;
rn_04 = rn_03+45;
rn_05 = rn_04+23;
rn_06 = rn_05+38;

ATK_01 = rn_06+13;
ATK_03 = ATK_01+60;
---------------
ATK_end = ATK_01+30;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 215, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( rn_01+18, 906, 212, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( rn_01+18, shuchusen, 1.0, 1.0);
setEffAlphaKey( rn_01+18, shuchusen, 255);

kaisinn = entryEffect( ATK_01+30, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入
-------------------------
--背景スクロール
setBgScroll( 0, 2);

--P　初期位置
setMoveKey(  0,  0,  -700,  20,  -128);
setLastPosKey( 0, 1);
-- setMoveKey(  0,  1,  700,  120,  -128);

setRotateKey( 0,  0,  5);
setRotateKey( 0,  1,  -5);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
setMoveKey(  SP_dodge+5, 0, -700,  20,  -128);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

changeAnime(  rn_01,  0,  3);
changeAnime(  rn_01,  1,  103);

-------------------------
--蹴り向かう
-------------------------
playSe(rn_01+12,1018);
setMoveKey(  rn_01+12,  0,  -800,  20,  -128);
setMoveKey(  rn_01+12,  1,  1400,  120,  -128);

setMoveKey(  rn_01+15,  0,  -170,  0,  0);
setMoveKey(  rn_01+16,  1,  170,  0,   0);

changeAnime(  rn_01+18,  0,  12);
changeAnime(  rn_01+18,  1,  112);

entryEffect(  rn_01+18,  1,  0,  -1,  0,  0,  0);--HIT
playSe(rn_01+18,1001);
playSe(rn_01+18,1010);

big = entryEffect(  rn_01+19,  908,  0,  -1,  0,  0,  0);--波紋
setEffScaleKey( rn_01+19, big,2,2);

setQuake( rn_01+19,  5,  25);
setDamage(  rn_01+19,  1,  0);--ダメージ振動等
setDamage(  rn_01+19,  0,  0);--ダメージ振動等
pauseAll(  rn_01+20, 12);
setQuake( rn_01+23,  20,  12);

-------------------------
--ふっ飛び
-------------------------
--ふっとび
setMoveKey(  rn_02,  0,  -170,  0,  20);
setMoveKey(  rn_02,  1,  170,   0,  20);

--モーション
changeAnime(  rn_02+4,  0,  4);
changeAnime(  rn_02+4,  1,  104);

setMoveKey(  rn_02+2,  0,  -200,  0,  50);
setMoveKey(  rn_02+2,  1,  200,  0,   50);

setMoveKey(  rn_02+8,  0,  -500,  0,  80);
setMoveKey(  rn_02+8,  1,  700,  0,  80);

entryFade( rn_02+8, 5, 10, 4, 0,0,0,0);


-------------------------
--画面切り替え-着地
-------------------------

--キャラ移動
setRotateKey( rn_03-1,  0,  5);
setRotateKey( rn_03,  0,  10);
setMoveKey(  rn_03,  0,  -500,  0,  0);
setMoveKey(  rn_03+1,  0,  150,  600,  -80);
changeAnime(  rn_03,  0,  1);
setMoveKey(  rn_03+20,  0,  -180,  0,  100);
changeAnime(  rn_03+22,  0,  17);

setMoveKey(  rn_03+24,  0,  -180,  0,  100);
setMoveKey(  rn_03+30,  0,  -220,  10,  105);

--aura = entryEffect(  rn_03+24,  302,  0x40,  0,  0,  0,  -20);
--setEffScaleKey( rn_03+24, aura, 0.3, 0.3);
--------------------移動

entryEffectLife( rn_04+5, 906, 100, 0x80, -1, 0,0, 0);--集中線
id = entryEffect( rn_04+2, 908, 0x80, 0, 0, 0, 0);
setEffScaleKey( rn_04+2, id, 0.3, 0.3);
setEffScaleKey( rn_04+12, id, 1, 1);

setMoveKey(  rn_04,  0,  -220,  10,  105);
setMoveKey(  rn_04+2,  0, -200,  -200,  80);

setRotateKey( rn_04,  0,  5);--角度戻し
setRotateKey( rn_04+1,  0,  0);
changeAnime(  rn_04+1,  0,  116);
playSe( rn_04+1,1018);
setMoveKey(  rn_04+8,  0,   -180,  -180,  50);
setMoveKey(  rn_04+12,  0,   0,  -40,  0);
setMoveKey(  rn_04+18,  0,   300,  230,  -80);

entryFade( rn_04+17, 5, 8, 4, 0,0,0,0);
---------------------画面切り替え

--E 位置調整
setMoveKey(  rn_05-1,  1,  700,  0,  80);
setMoveKey(  rn_05,  1,  500,  25,  -50);
setMoveKey(  rn_05+1,  1,  200,  0,  0);
setBgScroll( rn_05+4, 12);
setBgScroll( rn_05+10, 40);
setMoveKey(  rn_05+12,  1,  80,  0,  0);

entryKakimoji(  rn_05+15,  1,  4,  1,  0,  -40,  150);--!!

--P 突進
changeAnime(  rn_05+15,  0,  9);
playSe( rn_05+15,1000);
--dealDamage(  rn_05+15);
setMoveKey(  rn_05,  0,   300,  230,  -80);
setMoveKey(  rn_05+1,  0,   -700,  0,  0);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------

setMoveKey(  rn_05+16,  0,   -700,  0,  0);
setMoveKey(  rn_05+19,  0,   0,  0,  0);

entryEffect(  rn_05+19,  23,  0x40,  1,  0,-100,  0);
entryEffect(  rn_05+19,  908,  0,  -1,  0,  0,  0);
playSe( rn_05+18,1006);
changeAnime(  rn_05+19,  1,  104);--モーション

dealDamage(  rn_05+20);
endPhase( rn_05+19+20);
------------------
else

setMoveKey(  rn_05+16,  0,   -800,  0,  0);
setMoveKey(  rn_05+19,  0,   0,  0,  0);

entryEffect(  rn_05+18,  3,  0,  1,  0,  5,  0);
entryEffect(  rn_05+19,  908,  0,  -1,  0,  0,  0);
setDamage(  rn_05+19,  1,  0);--ダメージ振動等
changeAnime(  rn_05+19,  1,  106);--モーション
setShake(  rn_05+19,  7,  16);
dealDamage( rn_05+18);
end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

	ATK_dead = rn_05+20;
        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);

else
-----------------------

entryEffectLife( rn_05+20, 914, 60, 0x80,  -1,  0,  0,  0);--移動線

--余韻　移動
setMoveKey(  rn_05+26,  0,   0,  0,  0);
setMoveKey(  rn_05+31,  0,   -60,  -32,  0);

setMoveKey(  rn_05+35,  0,   -120,  -24,  0);
setMoveKey(  rn_05+40,  0,   -280,  -12,  0);

changeAnime(  rn_05+38,  0,  0);--待機
changeAnime(  rn_05+42,  0,  12);--蹴り
setMoveKey(  rn_05+19,  1,  80,   0,  0);
setMoveKey(  rn_05+20,  1,  95,   0,  0);
setMoveKey(  rn_05+35,  1,  106,  0,  0);

-------------------
--追撃
-------------------
entryEffect(  rn_06+1,  1,  0,  1,  0,  -10,  0);
playSe(rn_06+1,1001);
entryEffect(  rn_06+1,  908,  0,  1,  0,  0,  0);
setDamage(  rn_06+1,  1,  0);--ダメージ振動等
changeAnime(  rn_06+1,  1,  105);--モーション

setMoveKey(  rn_06+1,  0,  -45,  0,  0);
setMoveKey(  rn_06+3,  0,  -55,  -10,  0);

changeAnime(  rn_06+4,  0,  13);--キック
entryEffect(  rn_06+4,  1,  0,  1,  10,  5,  0);
playSe(rn_06+4,1001);
entryEffect(  rn_06+4,  908,  0,  1,  0,  0,  0);
setDamage(  rn_06+4,  1,  0);--ダメージ振動等
changeAnime(  rn_06+4,  1,  108);--モーション

changeAnime(  rn_06+7,  0,  10);--パンチ
entryEffect(  rn_06+7,  2,  1,  1,  -15,  -10,  0);
playSe(rn_06+7,1000);
--entryFlashBg( rn_06+7,  1,  0,  0,  0);
entryEffect(  rn_06+7,  906,  0,  -1,  0,  0,  0);
entryEffect(  rn_06+7,  908,  0,  1,  0,  0,  0);
setDamage(  rn_06+7,  1,  0);--ダメージ振動等
changeAnime(  rn_06+7,  1,  105);--モーション

setMoveKey(  rn_06+4,  0,  -55,  10,  0);
setMoveKey(  rn_06+9,  0,  -65,  -10,  0);
setMoveKey(  rn_06+6, 1,  35,   0,  0);

changeAnime(  rn_06+10,  0,  11);--パンチ
entryEffect(  rn_06+11,  1,  0,  1,  0,  0,  0);
playSe(rn_06+10,1009);
entryEffect(  rn_06+12,  906,  0,  -1,  0,  0,  0);
entryEffect(  rn_06+12,  908,  0,  1,  0,  0,  0);
setDamage(  rn_06+12,  1,  0);--ダメージ振動等
changeAnime(  rn_06+12,  1,  108);--モーション

setMoveKey(  rn_06+14,  0, -65,  -10,  0);    
setMoveKey(  rn_06+14,  1,  45,   0,  0);
setMoveKey(  rn_06+17,  0,  50,  0,  0);    
setMoveKey(  rn_06+17,  1,  160,  0,  0);

--------------さらに追い打ち★
setBgScroll( rn_06+11, 12);

setBgScroll( ATK_01+6, 8);
--はける
changeAnime(  ATK_01+6,  0,  0);
setMoveKey(  ATK_01+10,  0,   -700,  -5,  20);

setMoveKey(  ATK_01+4,  1,  160,  0,  0);
setMoveKey(  ATK_01+9,  1,  210,  0,  0);

setMoveKey(  ATK_01+18,  0,   -700,  -5,  20);
setMoveKey(  ATK_01+19,  0,   -700,  250,  -20);
setRotateKey( ATK_01+18,  0,  0);
setRotateKey( ATK_01+19,  0,  35);

setMoveKey(  ATK_01+15,  1,  210,  0,  0);
setMoveKey(  ATK_01+22,  1,  130,  5,  0);

changeAnime(  ATK_01+24,  0,  12);
--cou = entryEffectLife( ATK_01+15, 703, 20, 0xb0, 0, 0, 0, 0);--移動
--setEffRotateKey( ATK_01+15, cou,45);

--突っ込む蹴り
setBgScroll( ATK_01+25, 5);

setBgScroll( ATK_01+30, 25);

setMoveKey(  ATK_01+25,  0,   -700,  250,  -20);
setMoveKey(  ATK_01+30,  0,   -80,  50,  0);
--entryFlashBg( ATK_01+30,  1,  0,  0,  0);
entryEffect(  ATK_01+30,  1,  0,  1,  0,  0,  0);
entryEffect(  ATK_01+30,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_01+30,  908,  0,  1,  0,  0,  0);
playSe( ATK_01+30,1010);
nana = entryEffectLife( ATK_01+30, 914, 60, 0x80,  -1,  0,  0,  0);--移動線
setEffRotateKey( ATK_01+30, nana, 35);
setEffScaleKey( ATK_01+30, nana, 1.6,1.6);

changeAnime(  ATK_01+31,  1,  108);--モーション
setRotateKey( ATK_01+30,  1,  -10);
setRotateKey( ATK_01+31,  1,  45);
setDamage(  ATK_01+31,  1,  0);--ダメージ振動等

setMoveKey(  ATK_01+33,  0,   -80,  50,  0);
setMoveKey(  ATK_01+40,  0,   0,  0,  0);

setMoveKey(  ATK_01+33,  1,  150,  0,  0);
setMoveKey(  ATK_01+40,  1,  250,  -150,  0);

------------------------
setBgScroll( ATK_03, 45);
setMoveKey(  ATK_03+8,  0,  -90,  60,  0);
setMoveKey(  ATK_03+13, 0,  -700,  250,  0);

setMoveKey(  ATK_03+6,     1,  250,  -180,  0);
setMoveKey(  ATK_03+15,  1,  280,  -150,  20);

setBgScroll( ATK_03+15, 30);

--playSe(ATK_03+20,38);
entryEffect(  ATK_03+20,  700,  0,  0,  0,  0,  0);
setDisp ( ATK_03+23, 0, 0);
setDisp ( ATK_03+24, 0, 1);
setDisp ( ATK_03+26, 0,0);
stopBgScroll ( ATK_03+28, 1);

changeAnime(  ATK_03+25,  1,  117);--対機
--角度
setRotateKey( ATK_03+23,  1,  45);
setRotateKey( ATK_03+24,  1,  0);

setMoveKey(  ATK_03+28,  1,  280,  -150,  20);
setMoveKey(  ATK_03+30,  1,  250,  -120,  14);
changeAnime(  ATK_03+44,  1,  100);--対機

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 0) and (_IS_FINISH_SPECIAL_ONLY_ == 0)) then

changeAnime(  ATK_03+44,  1,  100);--対機
endPhase( ATK_03+45);
end
-----------------------
end


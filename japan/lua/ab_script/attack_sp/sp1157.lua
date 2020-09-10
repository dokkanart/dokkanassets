--sp1157 ターレス メテオバースト

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
SP_01 = 151431;--突進
SP_02 = 151432;--パンチ→打ち下ろし
SP_03 = 151433;--溜め(ビーム)敵前面配置
SP_04 = 151434;--溜め(キャラクター・地面)敵後面配置
SP_05 = 151435;--放つ(キャラクタービーム)
SP_06 = 151436;--放つ(地面)
SP_07 = 151437;--爆発

--敵側追記予定
SP_01x = 151438;--突進
SP_02x = 151439;--パンチ→打ち下ろし
SP_04x = 151440;--溜め(キャラクター・地面)敵後面配置
SP_05x = 151441;--放つ(キャラクタービーム)

multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
--changeAnime( 0, 0, 1);                       -- 立ち
--changeAnime( 0, 1, 101);                       -- 立ち

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   4,   0,    0, -900,   0);
setMoveKey(   5,   0,    0, -900,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
------------------------------------------------------
-- 突進(90F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1 = 0;

-- ** フェード
entryFade(spep_1, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 210);       -- ベース暗め　背景

-- ** エフェクト

tosshin = entryEffect( spep_1, SP_01, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_1, tosshin, 90, 15);
setEffMoveKey( spep_1, tosshin,  0,  0,  0);
setEffMoveKey( spep_1+90, tosshin,  0,  0,  0);
setEffScaleKey( spep_1, tosshin, 1.0, 1.0);
setEffScaleKey( spep_1+90, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_1, tosshin, 255);
setEffAlphaKey( spep_1+90, tosshin, 255);
setEffRotateKey( spep_1, tosshin, 0);
setEffRotateKey( spep_1+90, tosshin, 0);

-- ** 集中線

shuchusen = entryEffectLife(spep_1, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, shuchusen, 1.2, 1.2);

-- ** カットイン

speff = entryEffect( spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_1+5, SE_04);

-- ** 書き文字エントリー
ctgogo = entryEffectLife( spep_1+10, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep_1+10,ctgogo,100,500,0);
setEffScaleKey( spep_1+10, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_1+10, ctgogo, 10);
setEffAlphaKey( spep_1+10, ctgogo, 255);
setEffShake(spep_1+10, ctgogo, 69, 10);

------------------------------------------------------
-- パンチ→打ち下ろし(100F)
------------------------------------------------------
spep_2 = spep_1+90;

-- ** フェード
entryFade(spep_2-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 210);       -- ベース暗め　背景

-- ** 流線(横→縦) ** --
ryusen = entryEffectLife( spep_2, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffRotateKey( spep_2, ryusen, 0);
setEffRotateKey( spep_2+74, ryusen, 0);
setEffRotateKey( spep_2+75, ryusen, 90);
setEffRotateKey( spep_2+100, ryusen, 90);
setEffScaleKey( spep_2, ryusen, 1.6, 1.6);
setEffScaleKey( spep_2+100, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen, 255);
setEffAlphaKey( spep_2+100, ryusen, 255);

-- ** エフェクト
otosu = entryEffect( spep_2, SP_02, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_2, otosu, 100, 10);
setEffMoveKey( spep_2, otosu,  0,  0,  0);
setEffMoveKey( spep_2+100, otosu,  0,  0,  0);
setEffScaleKey( spep_2, otosu, 1.0, 1.0);
setEffScaleKey( spep_2+100, otosu, 1.0, 1.0);
setEffAlphaKey( spep_2, otosu, 255);
setEffAlphaKey( spep_2+100, otosu, 255);
setEffRotateKey( spep_2, otosu, 0);
setEffRotateKey( spep_2+100, otosu, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 104); --敵モーション登場

setRotateKey( spep_2, 1, 0); --敵角度

setShakeChara( spep_2, 1, 100, 10);
setScaleKey( spep_2, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_2+100, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_2, 1, 600, 0, 0); --敵位置

------------------------------------------------------
-- 回避(spep_1+12)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 102; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,372,0);
setScaleKey(   SP_dodge,   1, 1.4, 1.4);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,372,0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
changeAnime( spep_2+26, 1, 108); --敵モーション初撃やられ

setRotateKey( spep_2+70, 1, 0); --敵角度
setRotateKey( spep_2+71, 1, 90); --敵角度
setRotateKey( spep_2+100, 1, 90); --敵角度

setMoveKey( spep_2+26, 1, 100, 0, 0); --敵位置
setMoveKey( spep_2+42, 1, 300, 0, 0); --敵位置
setMoveKey( spep_2+50, 1, -200, 0, 0); --敵位置
setMoveKey( spep_2+60, 1, -55, 0, 0); --敵位置
setMoveKey( spep_2+65, 1, -30, 0, 0); --敵位置
setMoveKey( spep_2+70, 1, -30, 0, 0); --敵位置
setMoveKey( spep_2+71, 1, 0, -50, 0); --敵位置2発目
setMoveKey( spep_2+80, 1, 0, -370, 0); --敵位置2発目
setMoveKey( spep_2+100, 1, 0, 0, 0); --敵位置2発目

playSe( spep_2+26, 1009);
playSe( spep_2+71, 1010);
------------------------------------------------------
-- 溜め(140F)
------------------------------------------------------
spep_3 = spep_2+100;

-- ** フェード
entryFade(spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 140, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade(spep_3+53, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade(spep_3+135, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト(背面)

zimen = entryEffect( spep_3, SP_04, 0x80, -1,  0,  0,  0);   -- 突進
setEffShake(spep_3, zimen, 140, 10);
setEffMoveKey( spep_3, zimen,  0,  0,  0);
setEffMoveKey( spep_3+40, zimen,  0,  0,  0);
setEffScaleKey( spep_3, zimen, 1.0, 1.0);
setEffScaleKey( spep_3+140, zimen, 1.0, 1.0);
setEffAlphaKey( spep_3, zimen, 255);
setEffAlphaKey( spep_3+140, zimen, 255);
setEffRotateKey( spep_3, zimen, 0);
setEffRotateKey( spep_3+140, zimen, 0);

-- ** エフェクト(前面)

tame = entryEffect( spep_3, SP_03, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_3, tame, 140, 10);
setEffMoveKey( spep_3, tame,  0,  0,  0);
setEffMoveKey( spep_3+40, tame,  0,  0,  0);
setEffScaleKey( spep_3, tame, 1.0, 1.0);
setEffScaleKey( spep_3+140, tame, 1.0, 1.0);
setEffAlphaKey( spep_3, tame, 255);
setEffAlphaKey( spep_3+140, tame, 255);
setEffRotateKey( spep_3, tame, 0);
setEffRotateKey( spep_3+140, tame, 0);

-- ** 流線(縦) 最背面** --
ryusen3 = entryEffectLife( spep_3, 920, 14, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffMoveKey( spep_3+14, ryusen3, 0, 0, 0);
setEffRotateKey( spep_3, ryusen3, 90);
setEffRotateKey( spep_3+14, ryusen3, 90);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffScaleKey( spep_3+14, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffAlphaKey( spep_3+14, ryusen3, 255);

-- ** 集中線(最前面)

shuchusen3 = entryEffectLife(spep_3+30, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3+30, shuchusen3, 0, -200, 0);
setEffMoveKey( spep_3+60, shuchusen3, 0, -200, 0);
setEffMoveKey( spep_3+61, shuchusen3, 0, 0, 0);
setEffMoveKey( spep_3+140, shuchusen3, 0, 0, 0);
setEffScaleKey(spep_3+30, shuchusen3, 1.4, 2);
setEffScaleKey(spep_3+60, shuchusen3, 1.4, 2);
setEffScaleKey(spep_3+61, shuchusen3, 1.6, 1.6);
setEffScaleKey(spep_3+140, shuchusen3, 1.6, 1.6);
setEffAlphaKey( spep_3+30, shuchusen3, 255);
setEffAlphaKey( spep_3+140, shuchusen3, 255);
setEffRotateKey( spep_3+30, shuchusen3, 0);
setEffRotateKey( spep_3+140, shuchusen3, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_3, 1, 1);
setDisp( spep_3+80, 1, 0);
changeAnime( spep_3, 1, 108); --敵モーション登場
changeAnime( spep_3+27, 1, 106); --敵モーション初撃やられ

setShakeChara( spep_3, 1, 80, 10);

setRotateKey( spep_3, 1, 90); --敵角度
setRotateKey( spep_3+26, 1, 90); --敵角度
setRotateKey( spep_3+27, 1, 20); --敵角度
setRotateKey( spep_3+80, 1, 20); --敵角度

setScaleKey( spep_3, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+26, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+30, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_3+40, 1, 1.7, 1.7); --敵サイズ
setScaleKey( spep_3+45, 1, 1.7, 1.7); --敵サイズ
setScaleKey( spep_3+140, 1, 1.7, 1.7); --敵サイズ
setMoveKey( spep_3+1, 1, 0, 300, 0); --敵位置
setMoveKey( spep_3+10, 1, 0, 0, 0); --敵位置
setMoveKey( spep_3+27, 1, 0, -300, 0); --敵位置
setMoveKey( spep_3+40, 1, 0, -340, 0); --敵位置
setMoveKey( spep_3+45, 1, 0, -400, 0); --敵位置
setMoveKey( spep_3+60, 1, 0, -500, 0); --敵位置
setMoveKey( spep_3+79, 1, 0, -1500, 0); --敵位置
setMoveKey( spep_3+80, 1, 0, -10000, 0); --敵位置

playSe( spep_3+27, SE_09);
playSe( spep_3+60, SE_06);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3+140;

playSe( spep_4, SE_05);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife(spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen4, 1.2, 1.2);

-- ** エフェクト等 ** --
entryFade( spep_4+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(120F)
------------------------------------------------------
spep_5 = spep_4+90;

-- ** フェード

entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep_5+36, 1, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+115, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト(前面)

beam = entryEffect( spep_5, SP_05, 0x100,  -1,  0,  0,  0);   -- 放つ(キャラクター)
setEffMoveKey(  spep_5,beam, 0,  0,   0);
setEffMoveKey(  spep_5+120,beam, 0,  0,   0);
setEffScaleKey( spep_5,beam, 1.0, 1.0);
setEffScaleKey( spep_5+120,beam, 1.0, 1.0);
setEffRotateKey( spep_5,beam, 0);
setEffRotateKey( spep_5+120,beam, 0);
setEffAlphaKey( spep_5,beam, 255);
setEffAlphaKey( spep_5+120,beam, 255);
setEffShake(spep_5 , beam, 120, 10);

-- ** エフェクト(後面)

ushiro = entryEffect( spep_5, SP_06, 0x80,  -1,  0,  0,  0);   -- 放つ(地面)
setEffMoveKey(  spep_5,ushiro, 0,  0,   0);
setEffMoveKey(  spep_5+120,ushiro, 0,  0,   0);
setEffScaleKey( spep_5,ushiro, 1.0, 1.0);
setEffScaleKey( spep_5+120,ushiro, 1.0, 1.0);
setEffRotateKey( spep_5,ushiro, 0);
setEffRotateKey( spep_5+120,ushiro, 0);
setEffAlphaKey( spep_5,ushiro, 255);
setEffAlphaKey( spep_5+120,ushiro, 255);
setEffShake(spep_5 , ushiro, 120, 10);

-- ** 集中線(最前面)

shuchusen5 = entryEffectLife(spep_5, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffMoveKey( spep_5+120, shuchusen5, 0, 0, 0);
setEffScaleKey(spep_5, shuchusen5, 1.4, 1.4);
setEffScaleKey(spep_5+120, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffAlphaKey( spep_5+120, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);
setEffRotateKey( spep_5+120, shuchusen5, 0);

playSe( spep_5+5, SE_06);
playSe( spep_5+40, SE_07);

-- ** 敵キャラの動き ** --
setDisp( spep_5, 1, 1);
setDisp( spep_5+40, 1, 0);
changeAnime( spep_5, 1, 106); --敵モーション初撃やられ
setShakeChara( spep_5, 1, 40, 10);

setScaleKey( spep_5, 1, 4, 4); --敵サイズ
setScaleKey( spep_5+20, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_5+40, 1, 1.5, 1.5); --敵サイズ

setMoveKey( spep_5, 1, 600, -600, 0); --敵位置
setMoveKey( spep_5+20, 1, 180, -180, 0); --敵位置
setMoveKey( spep_5+40, 1, 180, -180, 0); --敵位置

------------------------------------------------------
-- 大爆発(160F)
------------------------------------------------------
spep_6  = spep_5+120;

-- ** フェード
entryFadeBg( spep_6 , 0, 120, 0,0, 0, 0, 255);          -- ベース暗め　背景

exp = entryEffect( spep_6, SP_07, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep_6, exp, 0, 0, 0);
setEffScaleKey( spep_6, exp, 1.2, 1.2);
setEffAlphaKey( spep_6, exp, 255);
setEffRotateKey( spep_6, exp, 0);
setEffShake(spep_6 , exp, 160, 10);

playSe( spep_6, SE_10);

shuchusen6 = entryEffectLife(spep_6, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_6, shuchusen6, 1.3, 1.3);

-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+156);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(90F)
------------------------------------------------------


spep_1 = 0;

-- ** フェード
entryFade(spep_1, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 210);       -- ベース暗め　背景

-- ** エフェクト

tosshin = entryEffect( spep_1, SP_01x, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_1, tosshin, 90, 15);
setEffMoveKey( spep_1, tosshin,  0,  0,  0);
setEffMoveKey( spep_1+90, tosshin,  0,  0,  0);
setEffScaleKey( spep_1, tosshin, 1.0, 1.0);
setEffScaleKey( spep_1+90, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_1, tosshin, 255);
setEffAlphaKey( spep_1+90, tosshin, 255);
setEffRotateKey( spep_1, tosshin, 0);
setEffRotateKey( spep_1+90, tosshin, 0);

-- ** 集中線

shuchusen = entryEffectLife(spep_1, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, shuchusen, 1.2, 1.2);

-- ** カットイン

--speff = entryEffect( spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_1+5, SE_04);

-- ** 書き文字エントリー
ctgogo = entryEffectLife( spep_1+10, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep_1+10,ctgogo,100,500,0);
setEffScaleKey( spep_1+10, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_1+10, ctgogo, 10);
setEffAlphaKey( spep_1+10, ctgogo, 255);
setEffShake(spep_1+10, ctgogo, 69, 10);

------------------------------------------------------
-- パンチ→打ち下ろし(100F)
------------------------------------------------------
spep_2 = spep_1+90;

-- ** フェード
entryFade(spep_2-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 210);       -- ベース暗め　背景

-- ** 流線(横→縦) ** --
ryusen = entryEffectLife( spep_2, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffRotateKey( spep_2, ryusen, 0);
setEffRotateKey( spep_2+74, ryusen, 0);
setEffRotateKey( spep_2+75, ryusen, 90);
setEffRotateKey( spep_2+100, ryusen, 90);
setEffScaleKey( spep_2, ryusen, 1.6, 1.6);
setEffScaleKey( spep_2+100, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen, 255);
setEffAlphaKey( spep_2+100, ryusen, 255);

-- ** エフェクト
otosu = entryEffect( spep_2, SP_02x, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_2, otosu, 100, 10);
setEffMoveKey( spep_2, otosu,  0,  0,  0);
setEffMoveKey( spep_2+100, otosu,  0,  0,  0);
setEffScaleKey( spep_2, otosu, 1.0, 1.0);
setEffScaleKey( spep_2+100, otosu, 1.0, 1.0);
setEffAlphaKey( spep_2, otosu, 255);
setEffAlphaKey( spep_2+100, otosu, 255);
setEffRotateKey( spep_2, otosu, 0);
setEffRotateKey( spep_2+100, otosu, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 104); --敵モーション登場

setRotateKey( spep_2, 1, 0); --敵角度

setShakeChara( spep_2, 1, 100, 10);
setScaleKey( spep_2, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_2+100, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_2, 1, 600, 0, 0); --敵位置

------------------------------------------------------
-- 回避(spep_1+12)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 102; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,372,0);
setScaleKey(   SP_dodge,   1, 1.4, 1.4);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,372,0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
changeAnime( spep_2+26, 1, 108); --敵モーション初撃やられ

setRotateKey( spep_2+70, 1, 0); --敵角度
setRotateKey( spep_2+71, 1, 90); --敵角度
setRotateKey( spep_2+100, 1, 90); --敵角度

setMoveKey( spep_2+26, 1, 100, 0, 0); --敵位置
setMoveKey( spep_2+42, 1, 300, 0, 0); --敵位置
setMoveKey( spep_2+50, 1, -200, 0, 0); --敵位置
setMoveKey( spep_2+60, 1, -55, 0, 0); --敵位置
setMoveKey( spep_2+65, 1, -30, 0, 0); --敵位置
setMoveKey( spep_2+70, 1, -30, 0, 0); --敵位置
setMoveKey( spep_2+71, 1, 0, -50, 0); --敵位置2発目
setMoveKey( spep_2+80, 1, 0, -370, 0); --敵位置2発目
setMoveKey( spep_2+100, 1, 0, 0, 0); --敵位置2発目

playSe( spep_2+26, 1009);
playSe( spep_2+71, 1010);
------------------------------------------------------
-- 溜め(140F)
------------------------------------------------------
spep_3 = spep_2+100;

-- ** フェード
entryFade(spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 140, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade(spep_3+53, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade(spep_3+135, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト(背面)

zimen = entryEffect( spep_3, SP_04x, 0x80, -1,  0,  0,  0);   -- 突進
setEffShake(spep_3, zimen, 140, 10);
setEffMoveKey( spep_3, zimen,  0,  0,  0);
setEffMoveKey( spep_3+40, zimen,  0,  0,  0);
setEffScaleKey( spep_3, zimen, -1.0, 1.0);
setEffScaleKey( spep_3+140, zimen, -1.0, 1.0);
setEffAlphaKey( spep_3, zimen, 255);
setEffAlphaKey( spep_3+140, zimen, 255);
setEffRotateKey( spep_3, zimen, 0);
setEffRotateKey( spep_3+140, zimen, 0);

-- ** エフェクト(前面)

tame = entryEffect( spep_3, SP_03, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_3, tame, 140, 10);
setEffMoveKey( spep_3, tame,  0,  0,  0);
setEffMoveKey( spep_3+40, tame,  0,  0,  0);
setEffScaleKey( spep_3, tame, 1.0, 1.0);
setEffScaleKey( spep_3+140, tame, 1.0, 1.0);
setEffAlphaKey( spep_3, tame, 255);
setEffAlphaKey( spep_3+140, tame, 255);
setEffRotateKey( spep_3, tame, 0);
setEffRotateKey( spep_3+140, tame, 0);

-- ** 流線(縦) 最背面** --
ryusen3 = entryEffectLife( spep_3, 920, 14, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffMoveKey( spep_3+14, ryusen3, 0, 0, 0);
setEffRotateKey( spep_3, ryusen3, 90);
setEffRotateKey( spep_3+14, ryusen3, 90);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffScaleKey( spep_3+14, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffAlphaKey( spep_3+14, ryusen3, 255);

-- ** 集中線(最前面)

shuchusen3 = entryEffectLife(spep_3+30, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3+30, shuchusen3, 0, -200, 0);
setEffMoveKey( spep_3+60, shuchusen3, 0, -200, 0);
setEffMoveKey( spep_3+61, shuchusen3, 0, 0, 0);
setEffMoveKey( spep_3+140, shuchusen3, 0, 0, 0);
setEffScaleKey(spep_3+30, shuchusen3, 1.4, 2);
setEffScaleKey(spep_3+60, shuchusen3, 1.4, 2);
setEffScaleKey(spep_3+61, shuchusen3, 1.6, 1.6);
setEffScaleKey(spep_3+140, shuchusen3, 1.6, 1.6);
setEffAlphaKey( spep_3+30, shuchusen3, 255);
setEffAlphaKey( spep_3+140, shuchusen3, 255);
setEffRotateKey( spep_3+30, shuchusen3, 0);
setEffRotateKey( spep_3+140, shuchusen3, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_3, 1, 1);
setDisp( spep_3+80, 1, 0);
changeAnime( spep_3, 1, 108); --敵モーション登場
changeAnime( spep_3+27, 1, 106); --敵モーション初撃やられ

setShakeChara( spep_3, 1, 80, 10);

setRotateKey( spep_3, 1, 90); --敵角度
setRotateKey( spep_3+26, 1, 90); --敵角度
setRotateKey( spep_3+27, 1, 20); --敵角度
setRotateKey( spep_3+80, 1, 20); --敵角度

setScaleKey( spep_3, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+26, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+30, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_3+40, 1, 1.7, 1.7); --敵サイズ
setScaleKey( spep_3+45, 1, 1.7, 1.7); --敵サイズ
setScaleKey( spep_3+140, 1, 1.7, 1.7); --敵サイズ
setMoveKey( spep_3+1, 1, 0, 300, 0); --敵位置
setMoveKey( spep_3+10, 1, 0, 0, 0); --敵位置
setMoveKey( spep_3+27, 1, 0, -300, 0); --敵位置
setMoveKey( spep_3+40, 1, 0, -340, 0); --敵位置
setMoveKey( spep_3+45, 1, 0, -400, 0); --敵位置
setMoveKey( spep_3+60, 1, 0, -500, 0); --敵位置
setMoveKey( spep_3+79, 1, 0, -1500, 0); --敵位置
setMoveKey( spep_3+80, 1, 0, -10000, 0); --敵位置

playSe( spep_3+27, SE_09);
playSe( spep_3+60, SE_06);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3+140;

playSe( spep_4, SE_05);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife(spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen4, 1.2, 1.2);

-- ** エフェクト等 ** --
entryFade( spep_4+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(120F)
------------------------------------------------------
spep_5 = spep_4+90;

-- ** フェード

entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep_5+36, 1, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+115, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト(前面)

beam = entryEffect( spep_5, SP_05x, 0x100,  -1,  0,  0,  0);   -- 放つ(キャラクター)
setEffMoveKey(  spep_5,beam, 0,  0,   0);
setEffMoveKey(  spep_5+120,beam, 0,  0,   0);
setEffScaleKey( spep_5,beam, 1.0, 1.0);
setEffScaleKey( spep_5+120,beam, 1.0, 1.0);
setEffRotateKey( spep_5,beam, 0);
setEffRotateKey( spep_5+120,beam, 0);
setEffAlphaKey( spep_5,beam, 255);
setEffAlphaKey( spep_5+120,beam, 255);
setEffShake(spep_5 , beam, 120, 10);

-- ** エフェクト(後面)

ushiro = entryEffect( spep_5, SP_06, 0x80,  -1,  0,  0,  0);   -- 放つ(地面)
setEffMoveKey(  spep_5,ushiro, 0,  0,   0);
setEffMoveKey(  spep_5+120,ushiro, 0,  0,   0);
setEffScaleKey( spep_5,ushiro, 1.0, 1.0);
setEffScaleKey( spep_5+120,ushiro, 1.0, 1.0);
setEffRotateKey( spep_5,ushiro, 0);
setEffRotateKey( spep_5+120,ushiro, 0);
setEffAlphaKey( spep_5,ushiro, 255);
setEffAlphaKey( spep_5+120,ushiro, 255);
setEffShake(spep_5 , ushiro, 120, 10);

-- ** 集中線(最前面)

shuchusen5 = entryEffectLife(spep_5, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffMoveKey( spep_5+120, shuchusen5, 0, 0, 0);
setEffScaleKey(spep_5, shuchusen5, 1.4, 1.4);
setEffScaleKey(spep_5+120, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffAlphaKey( spep_5+120, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);
setEffRotateKey( spep_5+120, shuchusen5, 0);

playSe( spep_5+5, SE_06);
playSe( spep_5+40, SE_07);

-- ** 敵キャラの動き ** --
setDisp( spep_5, 1, 1);
setDisp( spep_5+40, 1, 0);
changeAnime( spep_5, 1, 106); --敵モーション初撃やられ
setShakeChara( spep_5, 1, 40, 10);

setScaleKey( spep_5, 1, 4, 4); --敵サイズ
setScaleKey( spep_5+20, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_5+40, 1, 1.5, 1.5); --敵サイズ

setMoveKey( spep_5, 1, 600, -600, 0); --敵位置
setMoveKey( spep_5+20, 1, 180, -180, 0); --敵位置
setMoveKey( spep_5+40, 1, 180, -180, 0); --敵位置

------------------------------------------------------
-- 大爆発(160F)
------------------------------------------------------
spep_6  = spep_5+120;

-- ** フェード
entryFadeBg( spep_6 , 0, 120, 0,0, 0, 0, 255);          -- ベース暗め　背景

exp = entryEffect( spep_6, SP_07, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep_6, exp, 0, 0, 0);
setEffScaleKey( spep_6, exp, -1.2, 1.2);
setEffAlphaKey( spep_6, exp, 255);
setEffRotateKey( spep_6, exp, 0);
setEffShake(spep_6 , exp, 160, 10);

playSe( spep_6, SE_10);

shuchusen6 = entryEffectLife(spep_6, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_6, shuchusen6, 1.3, 1.3);

-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+156);

end

print ("[lua]sp0402");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1018; --カットイン
SE_02 = 1035; --カードカットイン
SE_03 = 43; --瞬間移動
SE_04 = 1023; --ギャン音
SE_05 = 1054; --割れる音
SE_06 = 1024; --爆破
SE_07 = 1021; --発射1
SE_08 = 1022; --発射2

SP_01 = 150917; --溜め
SP_02 = 150918; --瞬間移動
SP_03 = 150919; --発射
SP_04 = 150920; --瞬間移動(敵側)
SP_05 = 150921; --発射(敵側)

multi_frm = 2;

------------------------------------------------------
-- 気溜め(57F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示

changeAnime( 0, 0, 1); --モーション
changeAnime( 18, 0, 17); --モーション
setRotateKey( 0, 0, 0); --キャラ角度
setMoveKey( 0, 0, 0, 0, 0); --位置
setMoveKey( 1, 0, 0, 0, 0); --位置
setMoveKey( 2, 0, 0, 0, 0); --位置
setMoveKey( 3, 0, 0, 0, 0); --位置
setMoveKey( 4, 0, 0, 0, 0); --位置
setMoveKey( 5, 0, 0, 0, 0); --位置
setScaleKey( 0, 0, 1.2, 1.2); --サイズ
setScaleKey( 1, 0, 1.2, 1.2); --サイズ
setScaleKey( 2, 0, 1.2, 1.2); --サイズ
setScaleKey( 3, 0, 1.2, 1.2); --サイズ
setScaleKey( 4, 0, 1.2, 1.2); --サイズ
setScaleKey( 5, 0, 1.2, 1.2); --サイズ
setScaleKey( 56, 0, 1.2, 1.2); --サイズ
setShakeChara( 18, 0, 38, 5); --キャラ揺れ

-- ** 後ろオーラ ** --
entryEffect( 18, 1501, 0x80, -1, 0, 0, 0); -- eff_002
entryEffect( 18, 1500, 0, -1, 0, 0, 0); -- eff_001

-- ** エフェクト等 ** --
aura = entryEffect( 18, 311, 0x40, 0, 1, 0, -50); -- オーラ
setEffScaleKey( 18, aura, 1.1, 1.1);

-- 書き文字エントリー
ctzuzun = entryEffectLife( 18, 10013, 38, 0, -1, 0, 0, 0); -- ズズンッ
setEffMoveKey( 18, ctzuzun, 0, 200, 0);
setEffMoveKey( 28, ctzuzun, 0, 300, 0);
setEffAlphaKey( 18, ctzuzun, 255);
setEffScaleKey( 18, ctzuzun, 0.1, 0.1);
setEffScaleKey( 28, ctzuzun, 2.0, 2.0);
setEffShake( 18, ctzuzun, 40, 7);

-- ** ホワイトフェード ** --
entryFade( 48, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 20, SE_02);

------------------------------------------------------
-- 溜め(89F)
------------------------------------------------------

spep_1 = 57;

changeAnime( spep_1, 0, 30); --モーション
setScaleKey( spep_1-1, 0, 1.2, 1.2); --サイズ
setScaleKey( spep_1, 0, 1.3, 1.3); --サイズ
setScaleKey( spep_1+87, 0, 1.3, 1.3); --サイズ
setShakeChara( spep_1, 0, 99, 5); --キャラ揺れ
setMoveKey( spep_1+87, 0, 0, 0, 0); --位置
setMoveKey( spep_1+88, 0, 2000, 2000, 0); --位置
setDisp( spep_1+87, 0, 0); --味方非表示

-- ** 後ろオーラ ** --
entryEffectLife( spep_1, 1503, 87, 0x80, -1, 0, 0, 0); -- eff_004 (気)
entryEffectLife( spep_1, 1502, 87, 0, -1, 0, 0, 0); -- eff_003 (気)

-- ** エフェクト等 ** --
aura2 = entryEffectLife( spep_1, 311, 87, 0x40, 0, 1, 0, -50); -- オーラ
setEffScaleKey( spep_1, aura2, 1.1, 1.1);

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_1, SP_01, 87, 0x100, -1, 0, 0, 0); --気溜め
setEffMoveKey( spep_1, kidame, -50, 30, 0);
setEffScaleKey( spep_1, kidame, 0.5, 0.5);
setEffAlphaKey( spep_1, kidame, 255);
setEffRotateKey( spep_1, kidame, 0);
setEffShake( spep_1, kidame, 100, 5);

-- ** カットイン&セリフ ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect(  spep_1, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+13, 190006, 74, 0x100, -1, 0, 0, 0); -- ゴゴゴゴ
setEffMoveKey( spep_1+13, ctgogo, 170, 500, 0);
setEffScaleKey( spep_1+13, ctgogo, 0.6, 0.6);
setEffRotateKey( spep_1+13, ctgogo, 5);
setEffAlphaKey( spep_1+13, ctgogo, 255);

-- ** ホワイトフェード ** --
entryFade( spep_1+80, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+2, SE_01);

------------------------------------------------------
-- 瞬間移動(59F)
------------------------------------------------------

spep_2 = (spep_1+89); --146F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 58, 0, 0, 0, 0, 200); -- ベース暗め　背景黒

-- ** キャラクター ** --
setDisp( spep_2, 1, 1); --敵表示
changeAnime( spep_2, 1, 101); --モーション
changeAnime( spep_2+24, 1, 104); --モーション
setMoveKey( spep_2, 1, 150, 10, 0); --位置
setMoveKey( spep_2+24, 1, 150, 10, 0); --位置
setMoveKey( spep_2+25, 1, 155, 5, 0); --位置
setMoveKey( spep_2+26, 1, 155, 5, 0); --位置
setMoveKey( spep_2+27, 1, 150, 10, 0); --位置
setMoveKey( spep_2+28, 1, 150, 10, 0); --位置
setMoveKey( spep_2+29, 1, 155, 5, 0); --位置
setMoveKey( spep_2+30, 1, 155, 5, 0); --位置
setMoveKey( spep_2+31, 1, 150, 10, 0); --位置
setMoveKey( spep_2+32, 1, 145, 5, 0); --位置
setMoveKey( spep_2+46, 1, 145, 5, 0); --位置
setMoveKey( spep_2+56, 1, 600, -130, 0); --位置
setMoveKey( spep_2+57, 1, 2000, -2000, 0); --位置

setScaleKey( spep_2, 1, 1.1, 1.1); --サイズ
setScaleKey( spep_2+46, 1, 1.1, 1.1); --サイズ
setScaleKey( spep_2+47, 1, 1.4, 1.4); --サイズ
setScaleKey( spep_2+48, 1, 1.4, 1.4); --サイズ
setScaleKey( spep_2+49, 1, 1.5, 1.5); --サイズ
setScaleKey( spep_2+50, 1, 1.5, 1.5); --サイズ
setScaleKey( spep_2+51, 1, 1.7, 1.7); --サイズ
setScaleKey( spep_2+52, 1, 1.7, 1.7); --サイズ
setScaleKey( spep_2+53, 1, 1.9, 1.9); --サイズ
setScaleKey( spep_2+54, 1, 1.9, 1.9); --サイズ
setScaleKey( spep_2+55, 1, 2.2, 2.2); --サイズ
setScaleKey( spep_2+56, 1, 2.2, 2.2); --サイズ

setRotateKey( spep_2, 1, 0); --キャラ角度

-- ** エフェクト等 ** --
shunkan = entryEffect( spep_2+20, SP_02, 0x100, -1, 0, 0, 0); --瞬間移動
setEffMoveKey( spep_2+20, shunkan, 0, 0, 0);
setEffScaleKey( spep_2+20, shunkan, 1.0, 1.0);
setEffAlphaKey( spep_2+20, shunkan, 255);
setEffRotateKey( spep_2+20, shunkan, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2, 906, 58, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_2, shuchusen, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen, 255);
setEffRotateKey( spep_2, shuchusen, 0);

-- ** エフェクト!? ** --
bikkuri = entryEffectLife( spep_2+24, 10001, 15, 0x100, -1, 0, 0, 0); --!?
setEffMoveKey( spep_2+24, bikkuri, 160, 145, 0);
setEffScaleKey( spep_2+24, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+25, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+26, bikkuri, 2, 2);
setEffScaleKey( spep_2+27, bikkuri, 2, 2);
setEffScaleKey( spep_2+28, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+29, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+30, bikkuri, 2, 2);
setEffScaleKey( spep_2+31, bikkuri, 2, 2);
setEffScaleKey( spep_2+32, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+33, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+34, bikkuri, 2, 2);
setEffScaleKey( spep_2+35, bikkuri, 2, 2);
setEffScaleKey( spep_2+36, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+37, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+38, bikkuri, 2, 2);
setEffScaleKey( spep_2+39, bikkuri, 2, 2);
setEffAlphaKey( spep_2+24, bikkuri, 255);
setEffRotateKey( spep_2+24, bikkuri, 15);

-- ** ホワイトフェード ** --
entryFade( spep_2+50, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2+20, SE_03);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 183; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
seID = playSe( spep_2+20, SE_03);
stopSe( spep_2+20, seID, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- カードカットイン(93F)
------------------------------------------------------

spep_3 = (spep_2+59); --205F

speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( spep_3, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen2, 255);
setEffRotateKey( spep_3, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+2, SE_02);

------------------------------------------------------
-- 発射(91F)
------------------------------------------------------

spep_4 = (spep_3+93); --298F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景黒

-- ** キャラクター ** --
changeAnime( spep_4, 1, 108); --モーション
setRotateKey( spep_4-1, 1, 0); --キャラ角度
setRotateKey( spep_4, 1, -15); --キャラ角度
setMoveKey( spep_4-1, 1, 2000, -2000, 0); --位置
setMoveKey( spep_4, 1, 50, 260, 0); --位置
setMoveKey( spep_4+10, 1, 230, 280, 0); --位置
setMoveKey( spep_4+42, 1, 110, 240, 0); --位置
setMoveKey( spep_4+47, 1, 110, 240, 0); --位置
setMoveKey( spep_4+85, 1, 410, 440, 0); --位置
setMoveKey( spep_4+87, 1, 2000, 2000, 0); --位置
setScaleKey( spep_4, 1, 5, 5); --サイズ
setScaleKey( spep_4+10, 1, 1.4, 1.4); --サイズ
setScaleKey( spep_4+14, 1, 0.8, 0.8); --サイズ
setScaleKey( spep_4+47, 1, 0.8, 0.8); --サイズ
setScaleKey( spep_4+85, 1, 0.5, 0.5); --サイズ

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 921, 90, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, -45);
setEffScaleKey( spep_4, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

-- ** エフェクト等 ** --
hassya = entryEffect( spep_4, SP_03, 0x100, -1, 0, 0, 0); --瞬間移動
setEffMoveKey( spep_4, hassya, 0, 0, 0);
setEffScaleKey( spep_4, hassya, 1.0, 1.0);
setEffAlphaKey( spep_4, hassya, 255);
setEffRotateKey( spep_4, hassya, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4, 906, 33, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_4, shuchusen3, 150, 200, 0);
setEffScaleKey( spep_4, shuchusen3, 1.3, 1.3);
setEffAlphaKey( spep_4, shuchusen3, 255);
setEffRotateKey( spep_4, shuchusen3, 0);

-- ** 技名出し ** --
spname = entryEffectLife( spep_4, 1508, 48, 0x100, -1, 0, 0, 0); -- 技文字
setEffReplaceTexture( spname, 7, 4); -- 技名テクスチャ差し替え
setEffMoveKey( spep_4, spname, 0, 0, 0);
setEffRotateKey( spep_4, spname, 0);
setEffScaleKey( spep_4, spname, 1.0, 1.0);
setEffAlphaKey( spep_4, spname, 255);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_4+11, 10012, 47, 0x100, -1, 0, 0, 0); -- ズオッ
setEffMoveKey( spep_4+11, zuo, 100, 270, 0);
setEffMoveKey( spep_4+20, zuo, 120, 350, 0);
setEffMoveKey( spep_4+21, zuo, 120, 350, 0);
setEffMoveKey( spep_4+22, zuo, 130, 340, 0);
setEffMoveKey( spep_4+23, zuo, 130, 340, 0);
setEffMoveKey( spep_4+24, zuo, 120, 350, 0);
setEffMoveKey( spep_4+25, zuo, 120, 350, 0);
setEffMoveKey( spep_4+26, zuo, 130, 340, 0);
setEffMoveKey( spep_4+27, zuo, 130, 340, 0);
setEffMoveKey( spep_4+28, zuo, 120, 350, 0);
setEffMoveKey( spep_4+29, zuo, 120, 350, 0);
setEffMoveKey( spep_4+30, zuo, 130, 340, 0);
setEffMoveKey( spep_4+31, zuo, 130, 340, 0);
setEffMoveKey( spep_4+32, zuo, 120, 350, 0);
setEffMoveKey( spep_4+33, zuo, 120, 350, 0);
setEffMoveKey( spep_4+34, zuo, 130, 340, 0);
setEffMoveKey( spep_4+35, zuo, 130, 340, 0);
setEffMoveKey( spep_4+36, zuo, 120, 350, 0);
setEffMoveKey( spep_4+37, zuo, 120, 350, 0);
setEffMoveKey( spep_4+38, zuo, 130, 340, 0);
setEffMoveKey( spep_4+39, zuo, 130, 340, 0);
setEffMoveKey( spep_4+40, zuo, 120, 350, 0);
setEffMoveKey( spep_4+41, zuo, 120, 350, 0);
setEffMoveKey( spep_4+42, zuo, 130, 340, 0);
setEffMoveKey( spep_4+43, zuo, 130, 340, 0);
setEffMoveKey( spep_4+44, zuo, 120, 350, 0);
setEffMoveKey( spep_4+45, zuo, 120, 350, 0);
setEffMoveKey( spep_4+46, zuo, 130, 340, 0);
setEffMoveKey( spep_4+47, zuo, 130, 340, 0);
setEffMoveKey( spep_4+48, zuo, 120, 350, 0);
setEffMoveKey( spep_4+49, zuo, 120, 350, 0);
setEffMoveKey( spep_4+50, zuo, 120, 350, 0);
setEffMoveKey( spep_4+58, zuo, 140, 380, 0);
setEffScaleKey( spep_4+11, zuo, 0.2, 0.2);
setEffScaleKey( spep_4+20, zuo, 2.2, 2.2);
setEffScaleKey( spep_4+50, zuo, 2.2, 2.2);
setEffScaleKey( spep_4+58, zuo, 5.5, 5.5);
setEffRotateKey( spep_4+11, zuo, 25);
setEffAlphaKey( spep_4+11, zuo, 255);
setEffAlphaKey( spep_4+50, zuo, 255);
setEffAlphaKey( spep_4+58, zuo, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+81, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+2, SE_07);
playSe( spep_4+38, SE_08);

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

spep_5 = (spep_4+91); --389F

-- ** ギャン ** --
gyan = entryEffectLife( spep_5, 190000 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5, gyan, 0, 0, 0);
setEffScaleKey( spep_5, gyan,1.0, 1.0);
setEffAlphaKey( spep_5, gyan, 255);
setEffShake( spep_5, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_5, ctgyan, 255);
setEffScaleKey( spep_5, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgyan, 255);
setEffAlphaKey( spep_5+60, ctgyan, 80);
setEffShake( spep_5, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_5+8, SE_04);

-- ** ホワイトフェード ** --
entryFade( spep_5+55, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- バリン
------------------------------------------------------

spep_6 = ( spep_5+56); --空きをつくらない為に詰めてます

-- ** 敵キャラの動き ** --
setMoveKey( spep_6-1, 1, 2000, 2000, 0); --位置
setScaleKey( spep_6-1, 1, 0.5, 0.5);
setRotateKey( spep_6-1, 1, 0);
setMoveKey(  spep_6, 1, 0, 0, 128);
setScaleKey( spep_6, 1, 0.1, 0.1);
changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_6+8, SE_06);

setMoveKey( spep_6+8, 1, 0, 0, 128); --478
setMoveKey( spep_6+15, 1, -60, -200, -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake( spep_6+7, 6, 15);
setShake( spep_6+13, 15, 10);

setRotateKey( spep_6, 1, 30);
setRotateKey( spep_6+2, 1, 80);
setRotateKey( spep_6+4, 1, 120);
setRotateKey( spep_6+6, 1, 160);
setRotateKey( spep_6+8, 1, 200);
setRotateKey( spep_6+10, 1, 260);
setRotateKey( spep_6+12, 1, 320);
setRotateKey( spep_6+14, 1, 0);

setShakeChara( spep_6+15, 1, 5, 10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_05);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_6+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+110);

else

------------------------------------------------------
-- 敵側開始
------------------------------------------------------
------------------------------------------------------
-- 気溜め(57F)
------------------------------------------------------

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示

changeAnime( 0, 0, 1); --モーション
changeAnime( 18, 0, 17); --モーション
setRotateKey( 0, 0, 0); --キャラ角度
setMoveKey( 0, 0, 0, 0, 0); --位置
setMoveKey( 1, 0, 0, 0, 0); --位置
setMoveKey( 2, 0, 0, 0, 0); --位置
setMoveKey( 3, 0, 0, 0, 0); --位置
setMoveKey( 4, 0, 0, 0, 0); --位置
setMoveKey( 5, 0, 0, 0, 0); --位置
setScaleKey( 0, 0, 1.2, 1.2); --サイズ
setScaleKey( 1, 0, 1.2, 1.2); --サイズ
setScaleKey( 2, 0, 1.2, 1.2); --サイズ
setScaleKey( 3, 0, 1.2, 1.2); --サイズ
setScaleKey( 4, 0, 1.2, 1.2); --サイズ
setScaleKey( 5, 0, 1.2, 1.2); --サイズ
setScaleKey( 56, 0, 1.2, 1.2); --サイズ
setShakeChara( 18, 0, 38, 5); --キャラ揺れ

-- ** 後ろオーラ ** --
entryEffect( 18, 1501, 0x80, -1, 0, 0, 0); -- eff_002
entryEffect( 18, 1500, 0, -1, 0, 0, 0); -- eff_001

-- ** エフェクト等 ** --
aura = entryEffect( 18, 311, 0x40, 0, 1, 0, -50); -- オーラ
setEffScaleKey( 18, aura, 1.1, 1.1);

-- 書き文字エントリー
ctzuzun = entryEffectLife( 18, 10013, 38, 0, -1, 0, 0, 0); -- ズズンッ
setEffMoveKey( 18, ctzuzun, 0, 200, 0);
setEffMoveKey( 28, ctzuzun, 0, 300, 0);
setEffAlphaKey( 18, ctzuzun, 255);
setEffScaleKey( 18, ctzuzun, 0.1, 0.1);
setEffScaleKey( 28, ctzuzun, 2.0, 2.0);
setEffShake( 18, ctzuzun, 40, 7);

-- ** ホワイトフェード ** --
entryFade( 48, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 20, SE_02);

------------------------------------------------------
-- 溜め(89F)
------------------------------------------------------

spep_1 = 57;

changeAnime( spep_1, 0, 30); --モーション
setScaleKey( spep_1-1, 0, 1.2, 1.2); --サイズ
setScaleKey( spep_1, 0, 1.3, 1.3); --サイズ
setScaleKey( spep_1+87, 0, 1.3, 1.3); --サイズ
setShakeChara( spep_1, 0, 99, 5); --キャラ揺れ
setMoveKey( spep_1+87, 0, 0, 0, 0); --位置
setMoveKey( spep_1+88, 0, 2000, 2000, 0); --位置
setDisp( spep_1+87, 0, 0); --味方非表示

-- ** 後ろオーラ ** --
entryEffectLife( spep_1, 1503, 87, 0x80, -1, 0, 0, 0); -- eff_004 (気)
entryEffectLife( spep_1, 1502, 87, 0, -1, 0, 0, 0); -- eff_003 (気)

-- ** エフェクト等 ** --
aura2 = entryEffectLife( spep_1, 311, 87, 0x40, 0, 1, 0, -50); -- オーラ
setEffScaleKey( spep_1, aura2, 1.1, 1.1);

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_1, SP_01, 87, 0x80, -1, 0, 0, 0); --気溜め
setEffMoveKey( spep_1, kidame, -40, 18, 0);
setEffScaleKey( spep_1, kidame, 0.5, 0.5);
setEffAlphaKey( spep_1, kidame, 255);
setEffRotateKey( spep_1, kidame, 0);
setEffShake( spep_1, kidame, 100, 5);

--[[
-- ** カットイン&セリフ ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect(  spep_1, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え
]]--

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+13, 190006, 74, 0x100, -1, 0, 0, 0); -- ゴゴゴゴ
setEffMoveKey( spep_1+13, ctgogo, 0, 500, 0);
setEffScaleKey( spep_1+13, ctgogo, -0.6, 0.6);
setEffRotateKey( spep_1+13, ctgogo, 5);
setEffAlphaKey( spep_1+13, ctgogo, 255);

-- ** ホワイトフェード ** --
entryFade( spep_1+80, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+2, SE_01);

------------------------------------------------------
-- 瞬間移動(59F)
------------------------------------------------------

spep_2 = (spep_1+89); --146F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 58, 0, 0, 0, 0, 200); -- ベース暗め　背景黒

-- ** キャラクター ** --
setDisp( spep_2, 1, 1); --敵表示
changeAnime( spep_2, 1, 101); --モーション
changeAnime( spep_2+24, 1, 104); --モーション
setMoveKey( spep_2, 1, 150, 10, 0); --位置
setMoveKey( spep_2+24, 1, 150, 10, 0); --位置
setMoveKey( spep_2+25, 1, 155, 5, 0); --位置
setMoveKey( spep_2+26, 1, 155, 5, 0); --位置
setMoveKey( spep_2+27, 1, 150, 10, 0); --位置
setMoveKey( spep_2+28, 1, 150, 10, 0); --位置
setMoveKey( spep_2+29, 1, 155, 5, 0); --位置
setMoveKey( spep_2+30, 1, 155, 5, 0); --位置
setMoveKey( spep_2+31, 1, 150, 10, 0); --位置
setMoveKey( spep_2+32, 1, 145, 5, 0); --位置
setMoveKey( spep_2+46, 1, 145, 5, 0); --位置
setMoveKey( spep_2+56, 1, 600, -130, 0); --位置
setMoveKey( spep_2+57, 1, 2000, -2000, 0); --位置

setScaleKey( spep_2, 1, 1.1, 1.1); --サイズ
setScaleKey( spep_2+46, 1, 1.1, 1.1); --サイズ
setScaleKey( spep_2+47, 1, 1.4, 1.4); --サイズ
setScaleKey( spep_2+48, 1, 1.4, 1.4); --サイズ
setScaleKey( spep_2+49, 1, 1.5, 1.5); --サイズ
setScaleKey( spep_2+50, 1, 1.5, 1.5); --サイズ
setScaleKey( spep_2+51, 1, 1.7, 1.7); --サイズ
setScaleKey( spep_2+52, 1, 1.7, 1.7); --サイズ
setScaleKey( spep_2+53, 1, 1.9, 1.9); --サイズ
setScaleKey( spep_2+54, 1, 1.9, 1.9); --サイズ
setScaleKey( spep_2+55, 1, 2.2, 2.2); --サイズ
setScaleKey( spep_2+56, 1, 2.2, 2.2); --サイズ

setRotateKey( spep_2, 1, 0); --キャラ角度

-- ** エフェクト等 ** --
shunkan = entryEffect( spep_2+20, SP_04, 0x100, -1, 0, 0, 0); --瞬間移動
setEffMoveKey( spep_2+20, shunkan, 0, 0, 0);
setEffScaleKey( spep_2+20, shunkan, 1.0, 1.0);
setEffAlphaKey( spep_2+20, shunkan, 255);
setEffRotateKey( spep_2+20, shunkan, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2, 906, 58, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_2, shuchusen, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen, 255);
setEffRotateKey( spep_2, shuchusen, 0);

-- ** エフェクト!? ** --
bikkuri = entryEffectLife( spep_2+24, 10001, 15, 0x100, -1, 0, 0, 0); --!?
setEffMoveKey( spep_2+24, bikkuri, 160, 145, 0);
setEffScaleKey( spep_2+24, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+25, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+26, bikkuri, 2, 2);
setEffScaleKey( spep_2+27, bikkuri, 2, 2);
setEffScaleKey( spep_2+28, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+29, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+30, bikkuri, 2, 2);
setEffScaleKey( spep_2+31, bikkuri, 2, 2);
setEffScaleKey( spep_2+32, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+33, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+34, bikkuri, 2, 2);
setEffScaleKey( spep_2+35, bikkuri, 2, 2);
setEffScaleKey( spep_2+36, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+37, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+38, bikkuri, 2, 2);
setEffScaleKey( spep_2+39, bikkuri, 2, 2);
setEffAlphaKey( spep_2+24, bikkuri, 255);
setEffRotateKey( spep_2+24, bikkuri, 15);

-- ** ホワイトフェード ** --
entryFade( spep_2+50, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2+20, SE_03);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 183; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
seID = playSe( spep_2+20, SE_03);
stopSe( spep_2+20, seID, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- カードカットイン(93F)
------------------------------------------------------

spep_3 = (spep_2+59); --205F

speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( spep_3, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen2, 255);
setEffRotateKey( spep_3, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+2, SE_02);

------------------------------------------------------
-- 発射(91F)
------------------------------------------------------

spep_4 = (spep_3+93); --298F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景黒

-- ** キャラクター ** --
changeAnime( spep_4, 1, 108); --モーション
setRotateKey( spep_4-1, 1, 0); --キャラ角度
setRotateKey( spep_4, 1, -15); --キャラ角度
setMoveKey( spep_4-1, 1, 2000, -2000, 0); --位置
setMoveKey( spep_4, 1, 50, 260, 0); --位置
setMoveKey( spep_4+10, 1, 230, 280, 0); --位置
setMoveKey( spep_4+42, 1, 110, 240, 0); --位置
setMoveKey( spep_4+47, 1, 110, 240, 0); --位置
setMoveKey( spep_4+85, 1, 410, 440, 0); --位置
setMoveKey( spep_4+87, 1, 2000, 2000, 0); --位置
setScaleKey( spep_4, 1, 5, 5); --サイズ
setScaleKey( spep_4+10, 1, 1.4, 1.4); --サイズ
setScaleKey( spep_4+14, 1, 0.8, 0.8); --サイズ
setScaleKey( spep_4+47, 1, 0.8, 0.8); --サイズ
setScaleKey( spep_4+85, 1, 0.5, 0.5); --サイズ

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 921, 90, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, -45);
setEffScaleKey( spep_4, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

-- ** エフェクト等 ** --
hassya = entryEffect( spep_4, SP_05, 0x100, -1, 0, 0, 0); --瞬間移動
setEffMoveKey( spep_4, hassya, 0, 0, 0);
setEffScaleKey( spep_4, hassya, 1.0, 1.0);
setEffAlphaKey( spep_4, hassya, 255);
setEffRotateKey( spep_4, hassya, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4, 906, 33, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_4, shuchusen3, 150, 200, 0);
setEffScaleKey( spep_4, shuchusen3, 1.3, 1.3);
setEffAlphaKey( spep_4, shuchusen3, 255);
setEffRotateKey( spep_4, shuchusen3, 0);

-- ** 技名出し ** --
spname = entryEffectLife( spep_4, 1508, 48, 0x100, -1, 0, 0, 0); -- 技文字
setEffReplaceTexture( spname, 7, 4); -- 技名テクスチャ差し替え
setEffMoveKey( spep_4, spname, 0, 0, 0);
setEffRotateKey( spep_4, spname, 0);
setEffScaleKey( spep_4, spname, 1.0, 1.0);
setEffAlphaKey( spep_4, spname, 255);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_4+11, 10012, 47, 0x100, -1, 0, 0, 0); -- ズオッ
setEffMoveKey( spep_4+11, zuo, 100, 270, 0);
setEffMoveKey( spep_4+20, zuo, 120, 350, 0);
setEffMoveKey( spep_4+21, zuo, 120, 350, 0);
setEffMoveKey( spep_4+22, zuo, 130, 340, 0);
setEffMoveKey( spep_4+23, zuo, 130, 340, 0);
setEffMoveKey( spep_4+24, zuo, 120, 350, 0);
setEffMoveKey( spep_4+25, zuo, 120, 350, 0);
setEffMoveKey( spep_4+26, zuo, 130, 340, 0);
setEffMoveKey( spep_4+27, zuo, 130, 340, 0);
setEffMoveKey( spep_4+28, zuo, 120, 350, 0);
setEffMoveKey( spep_4+29, zuo, 120, 350, 0);
setEffMoveKey( spep_4+30, zuo, 130, 340, 0);
setEffMoveKey( spep_4+31, zuo, 130, 340, 0);
setEffMoveKey( spep_4+32, zuo, 120, 350, 0);
setEffMoveKey( spep_4+33, zuo, 120, 350, 0);
setEffMoveKey( spep_4+34, zuo, 130, 340, 0);
setEffMoveKey( spep_4+35, zuo, 130, 340, 0);
setEffMoveKey( spep_4+36, zuo, 120, 350, 0);
setEffMoveKey( spep_4+37, zuo, 120, 350, 0);
setEffMoveKey( spep_4+38, zuo, 130, 340, 0);
setEffMoveKey( spep_4+39, zuo, 130, 340, 0);
setEffMoveKey( spep_4+40, zuo, 120, 350, 0);
setEffMoveKey( spep_4+41, zuo, 120, 350, 0);
setEffMoveKey( spep_4+42, zuo, 130, 340, 0);
setEffMoveKey( spep_4+43, zuo, 130, 340, 0);
setEffMoveKey( spep_4+44, zuo, 120, 350, 0);
setEffMoveKey( spep_4+45, zuo, 120, 350, 0);
setEffMoveKey( spep_4+46, zuo, 130, 340, 0);
setEffMoveKey( spep_4+47, zuo, 130, 340, 0);
setEffMoveKey( spep_4+48, zuo, 120, 350, 0);
setEffMoveKey( spep_4+49, zuo, 120, 350, 0);
setEffMoveKey( spep_4+50, zuo, 120, 350, 0);
setEffMoveKey( spep_4+58, zuo, 140, 380, 0);
setEffScaleKey( spep_4+11, zuo, 0.2, 0.2);
setEffScaleKey( spep_4+20, zuo, 2.2, 2.2);
setEffScaleKey( spep_4+50, zuo, 2.2, 2.2);
setEffScaleKey( spep_4+58, zuo, 5.5, 5.5);
setEffRotateKey( spep_4+11, zuo, 25);
setEffAlphaKey( spep_4+11, zuo, 255);
setEffAlphaKey( spep_4+50, zuo, 255);
setEffAlphaKey( spep_4+58, zuo, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+81, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+2, SE_07);
playSe( spep_4+38, SE_08);

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

spep_5 = (spep_4+91); --389F

-- ** ギャン ** --
gyan = entryEffectLife( spep_5, 190000 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5, gyan, 0, 0, 0);
setEffScaleKey( spep_5, gyan,1.0, 1.0);
setEffAlphaKey( spep_5, gyan, 255);
setEffShake( spep_5, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_5, ctgyan, 255);
setEffScaleKey( spep_5, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgyan, 255);
setEffAlphaKey( spep_5+60, ctgyan, 80);
setEffShake( spep_5, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_5+8, SE_04);

-- ** ホワイトフェード ** --
entryFade( spep_5+55, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- バリン
------------------------------------------------------

spep_6 = ( spep_5+56); --空きをつくらない為に詰めてます

-- ** 敵キャラの動き ** --
setMoveKey( spep_6-1, 1, 2000, 2000, 0); --位置
setScaleKey( spep_6-1, 1, 0.5, 0.5);
setRotateKey( spep_6-1, 1, 0);
setMoveKey(  spep_6, 1, 0, 0, 128);
setScaleKey( spep_6, 1, 0.1, 0.1);
changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_6+8, SE_06);

setMoveKey( spep_6+8, 1, 0, 0, 128); --478
setMoveKey( spep_6+15, 1, -60, -200, -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake( spep_6+7, 6, 15);
setShake( spep_6+13, 15, 10);

setRotateKey( spep_6, 1, 30);
setRotateKey( spep_6+2, 1, 80);
setRotateKey( spep_6+4, 1, 120);
setRotateKey( spep_6+6, 1, 160);
setRotateKey( spep_6+8, 1, 200);
setRotateKey( spep_6+10, 1, 260);
setRotateKey( spep_6+12, 1, 320);
setRotateKey( spep_6+14, 1, 0);

setShakeChara( spep_6+15, 1, 5, 10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_05);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_6+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+110);

end

--超サイヤ人ブロリー_イレイザーキャノン

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
SP_01 = 153476; --投げ・手前
SP_02 = 153477; --投げ・奥
SP_03 = 153478; --溜める
SP_04 = 153479; --気弾を投げる
SP_05 = 153480; --着弾
SP_06 = 153481; --爆発

--敵側
SP_01r = 153482; --投げ・手前
SP_02r = 153483; --投げ・奥

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
-- 掴み投げ(388F)
------------------------------------------------------
spep_0 = 0;
a = 3;

-- ** エフェクト等 ** --
nage_f = entryEffectLife( spep_0 + 0, SP_01, 388, 0x100, -1, 0, 0, 0 );  --投げ・手前(ef_001)
setEffMoveKey( spep_0 + 0, nage_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 388, nage_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, nage_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 388, nage_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, nage_f, 0 );
setEffRotateKey( spep_0 + 388, nage_f, 0 );
setEffAlphaKey( spep_0 + 0, nage_f, 255 );
setEffAlphaKey( spep_0 + 388, nage_f, 255 );

nage_b = entryEffectLife( spep_0 + 0, SP_02, 388, 0x80, -1, 0, 0, 0 );  --投げ・奥(ef_002)
setEffMoveKey( spep_0 + 0, nage_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 388, nage_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, nage_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 388, nage_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, nage_b, 0 );
setEffRotateKey( spep_0 + 388, nage_b, 0 );
setEffAlphaKey( spep_0 + 0, nage_b, 255 );
setEffAlphaKey( spep_0 + 388, nage_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 84, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 84, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 84, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 84, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 9, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 84, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 80 -a, 1, 1 );
changeAnime( spep_0 + 80 -a, 1, 100 );

setMoveKey( spep_0 + 80 -a, 1, 258.7, 114.7 , 0 );
setMoveKey( spep_0 + 82 -a, 1, 258.6, 114.7 , 0 );
setMoveKey( spep_0 + 90 -a, 1, 258.6, 114.7 , 0 );
setMoveKey( spep_0 + 92 -a, 1, 258.5, 114.6 , 0 );
setMoveKey( spep_0 + 94 -a, 1, 258.4, 114.5 , 0 );
setMoveKey( spep_0 + 96 -a, 1, 258.3, 114.4 , 0 );

setScaleKey( spep_0 + 80 -a, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 94 -a, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 96 -a, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 80 -a, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 16, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 388, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96 -a; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 100 );  --ガード

setMoveKey( SP_dodge + 0, 1, 258.3, 114.4 , 0 );
setMoveKey( SP_dodge + 2, 1, 258.2, 114.2 , 0 );
setMoveKey( SP_dodge + 4, 1, 258, 113.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 257.8, 113.5 , 0 );
setMoveKey( SP_dodge + 8, 1, 257.4, 113 , 0 );
setMoveKey( SP_dodge + 10, 1, 256.9, 112.3 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.12, 0.12 );
setScaleKey( SP_dodge + 2, 1, 0.12, 0.12 );
setScaleKey( SP_dodge + 4, 1, 0.13, 0.13 );
setScaleKey( SP_dodge + 6, 1, 0.13, 0.13 );
setScaleKey( SP_dodge + 8, 1, 0.15, 0.15 );
setScaleKey( SP_dodge + 10, 1, 0.16, 0.16 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 190 -a, 1, 0 );
changeAnime( spep_0 + 134 -a, 1, 107 );
changeAnime( spep_0 + 142 -a, 1, 108 );
changeAnime( spep_0 + 172 -a, 1, 106 );

setMoveKey( spep_0 + 98 -a, 1, 258.2, 114.2 , 0 );
setMoveKey( spep_0 + 100 -a, 1, 258, 113.9 , 0 );
setMoveKey( spep_0 + 102 -a, 1, 257.8, 113.5 , 0 );
setMoveKey( spep_0 + 104 -a, 1, 257.4, 113 , 0 );
setMoveKey( spep_0 + 106 -a, 1, 256.9, 112.3 , 0 );
setMoveKey( spep_0 + 108 -a, 1, 256.2, 111.3 , 0 );
setMoveKey( spep_0 + 110 -a, 1, 255.2, 109.9 , 0 );
setMoveKey( spep_0 + 112 -a, 1, 253.8, 107.8 , 0 );
setMoveKey( spep_0 + 114 -a, 1, 251.7, 104.8 , 0 );
setMoveKey( spep_0 + 116 -a, 1, 248.3, 99.9 , 0 );
setMoveKey( spep_0 + 118 -a, 1, 242, 90.9 , 0 );
setMoveKey( spep_0 + 120 -a, 1, 226.6, 68.9 , 0 );
setMoveKey( spep_0 + 122 -a, 1, 183.5, 7.4 , 0 );
setMoveKey( spep_0 + 124 -a, 1, 166.8, -16.9 , 0 );
setMoveKey( spep_0 + 126 -a, 1, 153.8, -35.9 , 0 );
setMoveKey( spep_0 + 128 -a, 1, 144.5, -49.4 , 0 );
setMoveKey( spep_0 + 130 -a, 1, 139, -57.6 , 0 );
setMoveKey( spep_0 + 132 -a, 1, 137.1, -60.3 , 0 );
setMoveKey( spep_0 + 133 -a, 1, 137.1, -60.3 , 0 );
setMoveKey( spep_0 + 134 -a, 1, -178.7, -80.5 , 0 );
setMoveKey( spep_0 + 136 -a, 1, -57.8, 61.8 , 0 );
setMoveKey( spep_0 + 138 -a, 1, -67.8, -18.1 , 0 );
setMoveKey( spep_0 + 140 -a, 1, -58.5, 24.3 , 0 );
setMoveKey( spep_0 + 141 -a, 1, -58.5, 24.3 , 0 );
setMoveKey( spep_0 + 142 -a, 1, 77.2, 23.8 , 0 );  --くの字
setMoveKey( spep_0 + 143 -a, 1, 77.2, 23.8 , 0 );
setMoveKey( spep_0 + 144 -a, 1, 64.6, 120.3 , 0 );
setMoveKey( spep_0 + 145 -a, 1, 64.6, 120.3 , 0 );
setMoveKey( spep_0 + 146 -a, 1, 54.4, 119.8 , 0 );
setMoveKey( spep_0 + 147 -a, 1, 54.4, 119.8 , 0 );
setMoveKey( spep_0 + 148 -a, 1, 45.2, 158.9 , 0 );
setMoveKey( spep_0 + 149 -a, 1, 45.2, 158.9 , 0 );
setMoveKey( spep_0 + 150 -a, 1, 24.8, 154.5 , 0 );
setMoveKey( spep_0 + 151 -a, 1, 24.8, 154.5 , 0 );
setMoveKey( spep_0 + 152 -a, 1, 29.8, 181.5 , 0 );
setMoveKey( spep_0 + 153 -a, 1, 29.8, 181.5 , 0 );
setMoveKey( spep_0 + 154 -a, 1, 4, 209.6 , 0 );
setMoveKey( spep_0 + 155 -a, 1, 4, 209.6 , 0 );
setMoveKey( spep_0 + 156 -a, 1, 3, 156.7 , 0 );
setMoveKey( spep_0 + 157 -a, 1, 3, 156.7 , 0 );
setMoveKey( spep_0 + 158 -a, 1, -0.9, 189.5 , 0 );
setMoveKey( spep_0 + 159 -a, 1, -0.9, 189.5 , 0 );
setMoveKey( spep_0 + 160 -a, 1, -10.7 -1.3, 193.6 , 0 );
setMoveKey( spep_0 + 161 -a, 1, -10.7 -1.3, 193.6 , 0 );
setMoveKey( spep_0 + 162 -a, 1, -12.5 -1.3, 185.4 +10.0 , 0 );
setMoveKey( spep_0 + 163 -a, 1, -12.5 -1.3, 185.4 +10.0 , 0 );
setMoveKey( spep_0 + 164 -a, 1, -13.6, 176.7 +18.0 , 0 );
setMoveKey( spep_0 + 165 -a, 1, -13.6, 176.7 +18.0 , 0 );
setMoveKey( spep_0 + 166 -a, 1, -13.9, 167.8 +22.0 , 0 );
setMoveKey( spep_0 + 167 -a, 1, -13.9, 167.8 +22.0 , 0 );
setMoveKey( spep_0 + 168 -a, 1, -14, 206.6 -9.2 , 0 );
setMoveKey( spep_0 + 169 -a, 1, -14, 206.6 -9.2 , 0 );
setMoveKey( spep_0 + 170 -a, 1, -12.8 -1.3, 197.3 , 0 );
setMoveKey( spep_0 + 171 -a, 1, -12.8 -1.3, 197.3 , 0 );
setMoveKey( spep_0 + 172 -a, 1, 263.8, -9.5 -33.1, 0 );  --掴まれる
setMoveKey( spep_0 + 173 -a, 1, 263.8, -9.5 -33.1, 0 );
setMoveKey( spep_0 + 174 -a, 1, 239.8, 66 -23.1 , 0 );
setMoveKey( spep_0 + 175 -a, 1, 239.8, 66 -23.1 , 0 );
setMoveKey( spep_0 + 176 -a, 1, 216.7, 140.8 -33.1 , 0 );
setMoveKey( spep_0 + 177 -a, 1, 216.7, 140.8 -33.1 , 0 );
setMoveKey( spep_0 + 178 -a, 1, 265.9, 142.8 -33.1 , 0 );
setMoveKey( spep_0 + 179 -a, 1, 265.9, 142.8 -33.1 , 0 );
setMoveKey( spep_0 + 180 -a, 1, 310.4 +39.2, 148.8 -10.1 , 0 );
setMoveKey( spep_0 + 181 -a, 1, 310.4 +39.2, 148.8 -10.1 , 0 );
setMoveKey( spep_0 + 182 -a, 1, 218.2 +60.2, 409.5 -20.0 , 0 );
setMoveKey( spep_0 + 183 -a, 1, 218.2 +60.2 , 409.5 -20.0 , 0 );
setMoveKey( spep_0 + 184 -a, 1, 132.6, 573.1 , 0 );
setMoveKey( spep_0 + 185 -a, 1, 132.6, 573.1 , 0 );
setMoveKey( spep_0 + 186 -a, 1, 9.8, 548.4 , 0 );
setMoveKey( spep_0 + 187 -a, 1, 9.8, 548.4 , 0 );
setMoveKey( spep_0 + 188 -a, 1, -107.6, 533.4 , 0 );
setMoveKey( spep_0 + 190 -a, 1, -107.6, 533.4 , 0 );

b = 0.88;
setScaleKey( spep_0 + 98 -a, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 100 -a, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 102 -a, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 104 -a, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 106 -a, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 108 -a, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 110 -a, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 112 -a, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 114 -a, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 116 -a, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 118 -a, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 120 -a, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 122 -a, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 124 -a, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 126 -a, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 128 -a, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 130 -a, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 132 -a, 1, 4, 4 );
setScaleKey( spep_0 + 133 -a, 1, 4, 4 );
setScaleKey( spep_0 + 134 -a, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 136 -a, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 138 -a, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 140 -a, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 141 -a, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 142 -a, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 143 -a, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 144 -a, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 145 -a, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 146 -a, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 147 -a, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 148 -a, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 149 -a, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 150 -a, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 151 -a, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 152 -a, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 153 -a, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 154 -a, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 155 -a, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 156 -a, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 157 -a, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 158 -a, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 159 -a, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 160 -a, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 161 -a, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 162 -a, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 163 -a, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 164 -a, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 165 -a, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 166 -a, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 167 -a, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 168 -a, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 171 -a, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 172 -a, 1, 2.28 +b, 2.28 +b );
setScaleKey( spep_0 + 173 -a, 1, 2.28 +b, 2.28 +b );
setScaleKey( spep_0 + 174 -a, 1, 2.3 +b, 2.3 +b );
setScaleKey( spep_0 + 175 -a, 1, 2.3 +b, 2.3 +b );
setScaleKey( spep_0 + 176 -a, 1, 2.32 +b, 2.32 +b );
setScaleKey( spep_0 + 177 -a, 1, 2.32 +b, 2.32 +b );
setScaleKey( spep_0 + 178 -a, 1, 2.37 +b, 2.37 +b );
setScaleKey( spep_0 + 179 -a, 1, 2.37 +b, 2.37 +b );
setScaleKey( spep_0 + 180 -a, 1, 2.41 +b, 2.41 +b );
setScaleKey( spep_0 + 181 -a, 1, 2.41 +b, 2.41 +b );
setScaleKey( spep_0 + 182 -a, 1, 3.12 +b, 3.12 +b );
setScaleKey( spep_0 + 183 -a, 1, 3.12 +b, 3.12 +b );
setScaleKey( spep_0 + 184 -a, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 185 -a, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 186 -a, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 187 -a, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 188 -a, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 190 -a, 1, 4.64, 4.64 );

setRotateKey( spep_0 + 133 -a, 1, 0 );
setRotateKey( spep_0 + 134 -a, 1, -77.9 );
setRotateKey( spep_0 + 136 -a, 1, -78 );
setRotateKey( spep_0 + 138 -a, 1, -86.2 );
setRotateKey( spep_0 + 140 -a, 1, -89.6 );
setRotateKey( spep_0 + 141 -a, 1, -89.6 );
setRotateKey( spep_0 + 142 -a, 1, -13 );
setRotateKey( spep_0 + 143 -a, 1, -13 );
setRotateKey( spep_0 + 144 -a, 1, -34 );
setRotateKey( spep_0 + 145 -a, 1, -34 );
setRotateKey( spep_0 + 146 -a, 1, -40.7 );
setRotateKey( spep_0 + 147 -a, 1, -40.7 );
setRotateKey( spep_0 + 148 -a, 1, -63.6 );
setRotateKey( spep_0 + 149 -a, 1, -63.6 );
setRotateKey( spep_0 + 150 -a, 1, -68.3 );
setRotateKey( spep_0 + 151 -a, 1, -68.3 );
setRotateKey( spep_0 + 152 -a, 1, -71.8 );
setRotateKey( spep_0 + 153 -a, 1, -71.8 );
setRotateKey( spep_0 + 154 -a, 1, -74.4 );
setRotateKey( spep_0 + 155 -a, 1, -74.4 );
setRotateKey( spep_0 + 156 -a, 1, -76.4 );
setRotateKey( spep_0 + 157 -a, 1, -76.4 );
setRotateKey( spep_0 + 158 -a, 1, -77.9 );
setRotateKey( spep_0 + 159 -a, 1, -77.9 );
setRotateKey( spep_0 + 160 -a, 1, -79 );
setRotateKey( spep_0 + 161 -a, 1, -79 );
setRotateKey( spep_0 + 162 -a, 1, -79.7 );
setRotateKey( spep_0 + 163 -a, 1, -79.7 );
setRotateKey( spep_0 + 164 -a, 1, -80.2 );
setRotateKey( spep_0 + 165 -a, 1, -80.2 );
setRotateKey( spep_0 + 166 -a, 1, -80.5 );
setRotateKey( spep_0 + 167 -a, 1, -80.5 );
setRotateKey( spep_0 + 168 -a, 1, -80.6 );
setRotateKey( spep_0 + 171 -a, 1, -80.6 );
setRotateKey( spep_0 + 172 -a, 1, -90.4 );
setRotateKey( spep_0 + 173 -a, 1, -90.4 );
setRotateKey( spep_0 + 174 -a, 1, -100 );
setRotateKey( spep_0 + 175 -a, 1, -100 );
setRotateKey( spep_0 + 176 -a, 1, -109.6 );
setRotateKey( spep_0 + 177 -a, 1, -109.6 );
setRotateKey( spep_0 + 178 -a, 1, -119.2 );
setRotateKey( spep_0 + 179 -a, 1, -119.2 );
setRotateKey( spep_0 + 180 -a, 1, -128.9 );
setRotateKey( spep_0 + 181 -a, 1, -128.9 );
setRotateKey( spep_0 + 182 -a, 1, -139.1 );
setRotateKey( spep_0 + 183 -a, 1, -139.1 );
setRotateKey( spep_0 + 184 -a, 1, -149.2 );
setRotateKey( spep_0 + 185 -a, 1, -149.2 );
setRotateKey( spep_0 + 186 -a, 1, -158.3 );
setRotateKey( spep_0 + 187 -a, 1, -158.3 );
setRotateKey( spep_0 + 188 -a, 1, -167.4 );
setRotateKey( spep_0 + 190 -a, 1, -167.4 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 246 -a, 1, 1 );
setDisp( spep_0 + 276 -a, 1, 0 );
changeAnime( spep_0 + 246 -a, 1, 7 );
changeAnime( spep_0 + 258 -a, 1, 6 );

setMoveKey( spep_0 + 246 -a, 1, 228.6, 1562.2 , 0 );
setMoveKey( spep_0 + 248 -a, 1, 228.6, 1241.5 , 0 );
setMoveKey( spep_0 + 250 -a, 1, 228.6, 836.8 , 0 );
setMoveKey( spep_0 + 252 -a, 1, 228.6, 347.9 , 0 );
setMoveKey( spep_0 + 254 -a, 1, 228.6, -225 , 0 );
setMoveKey( spep_0 + 256 -a, 1, 228.6, -882 , 0 );
setMoveKey( spep_0 + 257 -a, 1, 228.6, -882 , 0 );
setMoveKey( spep_0 + 258 -a, 1, -135.4, -118.1 , 0 );
setMoveKey( spep_0 + 260 -a, 1, -140.5, -133.5 , 0 );
setMoveKey( spep_0 + 262 -a, 1, -164, -205.2 , 0 );
setMoveKey( spep_0 + 264 -a, 1, -195.7, -302.2 , 0 );
setMoveKey( spep_0 + 266 -a, 1, -225.4, -392.8 , 0 );
setMoveKey( spep_0 + 268 -a, 1, -254.2, -480.9 , 0 );
setMoveKey( spep_0 + 270 -a, 1, -282.5, -567.1 , 0 );
setMoveKey( spep_0 + 272 -a, 1, -310.1, -651.6 , 0 );
setMoveKey( spep_0 + 274 -a, 1, -337.2, -734.4 , 0 );
setMoveKey( spep_0 + 276 -a, 1, -363.4, -814.3 , 0 );

setScaleKey( spep_0 + 246 -a, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 257 -a, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 258 -a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 276 -a, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 246 -a, 1, -45 );
setRotateKey( spep_0 + 257 -a, 1, -45 );
setRotateKey( spep_0 + 258 -a, 1, -110.3 );
setRotateKey( spep_0 + 260 -a, 1, -110.3 );
setRotateKey( spep_0 + 262 -a, 1, -110.4 );
setRotateKey( spep_0 + 264 -a, 1, -110.5 );
setRotateKey( spep_0 + 266 -a, 1, -110.6 );
setRotateKey( spep_0 + 268 -a, 1, -110.7 );
setRotateKey( spep_0 + 270 -a, 1, -110.7 );
setRotateKey( spep_0 + 272 -a, 1, -110.8 );
setRotateKey( spep_0 + 274 -a, 1, -110.9 );
setRotateKey( spep_0 + 276 -a, 1, -111 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 284 -a, 1, 1 );
setDisp( spep_0 + 342 -a, 1, 0 );
changeAnime( spep_0 + 284 -a, 1, 107 );
changeAnime( spep_0 + 292 -a, 1, 6 );
changeAnime( spep_0 + 294 -a, 1, 105 );

setMoveKey( spep_0 + 284 -a, 1, -172, -725.7 , 0 );
setMoveKey( spep_0 + 286 -a, 1, -165.8, -691.6 , 0 );
setMoveKey( spep_0 + 288 -a, 1, -147.3, -589.2 , 0 );
setMoveKey( spep_0 + 290 -a, 1, -116.4, -418.7 , 0 );
setMoveKey( spep_0 + 291 -a, 1, -116.4, -418.7 , 0 );
setMoveKey( spep_0 + 292 -a, 1, 63.8, -350.9 , 0 );
setMoveKey( spep_0 + 293 -a, 1, 63.8, -350.9 , 0 );
setMoveKey( spep_0 + 294 -a, 1, 28.3, -46.7 , 0 );
setMoveKey( spep_0 + 296 -a, 1, 10.7, 89.8 , 0 );
setMoveKey( spep_0 + 298 -a, 1, 6.1, 124.3 , 0 );
setMoveKey( spep_0 + 300 -a, 1, 3.3, 145 , 0 );
setMoveKey( spep_0 + 302 -a, 1, 1.4, 159.6 , 0 );
setMoveKey( spep_0 + 304 -a, 1, 0, 165.8 , 0 );
setMoveKey( spep_0 + 306 -a, 1, -0.9, 176.5 , 0 );
setMoveKey( spep_0 + 308 -a, 1, -1.7, 185.4 , 0 );
setMoveKey( spep_0 + 310 -a, 1, -2.3, 190.3 , 0 );
setMoveKey( spep_0 + 312 -a, 1, -2.8, 187.9 , 0 );
setMoveKey( spep_0 + 314 -a, 1, -3.1, 191.3 , 0 );
setMoveKey( spep_0 + 316 -a, 1, -3.4, 185.3 , 0 );
setMoveKey( spep_0 + 318 -a, 1, -3.6, 189.6 , 0 );
setMoveKey( spep_0 + 320 -a, 1, -3.8, 188.3 , 0 );
setMoveKey( spep_0 + 322 -a, 1, -3.9, 182.8 , 0 );
setMoveKey( spep_0 + 324 -a, 1, -4, 181.8 , 0 );
setMoveKey( spep_0 + 326 -a, 1, -4, 178.1 , 0 );
setMoveKey( spep_0 + 328 -a, 1, -4.1, 177.9 , 0 );
setMoveKey( spep_0 + 330 -a, 1, -4.1, 174.5 , 0 );
setMoveKey( spep_0 + 332 -a, 1, -4.1, 165.4 , 0 );
setMoveKey( spep_0 + 334 -a, 1, -4.1, 157.5 , 0 );
setMoveKey( spep_0 + 336 -a, 1, -4.2, 146.2 , 0 );
setMoveKey( spep_0 + 338 -a, 1, -4.2, 130.4 , 0 );
setMoveKey( spep_0 + 340 -a, 1, -4.1, 107.5 , 0 );
setMoveKey( spep_0 + 342 -a, 1, -4.1, 107.5 , 0 );

setScaleKey( spep_0 + 284 -a, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 286 -a, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 288 -a, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 290 -a, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 291 -a, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 292 -a, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 293 -a, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 294 -a, 1, 4, 4 );
setScaleKey( spep_0 + 296 -a, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 298 -a, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 300 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 302 -a, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 304 -a, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 306 -a, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 308 -a, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 310 -a, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 312 -a, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 314 -a, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 316 -a, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 318 -a, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 320 -a, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 322 -a, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 324 -a, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 326 -a, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 330 -a, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 332 -a, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 340 -a, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 342 -a, 1, 0.03, 0.03 );

setRotateKey( spep_0 + 284 -a, 1, -90 );
setRotateKey( spep_0 + 291 -a, 1, -90 );
setRotateKey( spep_0 + 292 -a, 1, 60.1 );
setRotateKey( spep_0 + 293 -a, 1, 60.1 );
setRotateKey( spep_0 + 294 -a, 1, -14 );
setRotateKey( spep_0 + 342 -a, 1, -14 );

-- ** 音 ** --
playSe( spep_0 + 86, 9 );  --迫る
playSe( spep_0 + 132, 1007 );  --掴む
playSe( spep_0 + 168, 8 );  --振りかぶる
playSe( spep_0 + 232, 1002 );  --投げる
--playSe( spep_0 + 292, 1053 );  --飛んでいく
playSe( spep_0 + 342 -a, 1023 );  --地面に落ちる

-- ** ホワイトフェード ** --
entryFade( spep_0 + 386, 2, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 388;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 溜める(182F)
------------------------------------------------------

-- ** エフェクト等 ** --
tameru = entryEffectLife( spep_2 + 0, SP_03, 182, 0x100, -1, 0, 0, 0 );  --溜める(ef_003)
setEffMoveKey( spep_2 + 0, tameru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 182, tameru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tameru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 182, tameru, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tameru, 0 );
setEffRotateKey( spep_2 + 182, tameru, 0 );
setEffAlphaKey( spep_2 + 0, tameru, 255 );
setEffAlphaKey( spep_2 + 181, tameru, 255 );
setEffAlphaKey( spep_2 + 182, tameru, 0 );

-- ** 音 ** --
--playSe( spep_2 + 4, 17 );  --貯める
--playSe( spep_2 + 4, 1019 );  --貯める
--playSe( spep_2 + 24, 1019 );  --貯める
--playSe( spep_2 + 150, 1072 );  --気玉広げる
SE1 = playSe( spep_2 + 4, 15 );  --貯める
stopSe( spep_2 + 84, SE1, 12);
playSe( spep_2 + 86, 1072 );  --気玉広げる
setSeVolume( spep_2 + 86, 1072, 170);
playSe( spep_2 + 90, 17 );  --気玉広げる
setSeVolume( spep_2 + 90, 17, 0);
setSeVolume( spep_2 + 120, 17, 60);
setSeVolume( spep_2 + 150, 17, 100);
--playSe( spep_2 + 150, 13 );  --気玉広げる

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 182, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 182;

------------------------------------------------------
-- 気弾投げる(104F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru = entryEffectLife( spep_3 + 0, SP_04, 104, 0x100, -1, 0, 0, 0 );  --気弾を投げる(ef_004)
setEffMoveKey( spep_3 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_3 + 104, nageru, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, nageru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 104, nageru, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, nageru, 0 );
setEffRotateKey( spep_3 + 104, nageru, 0 );
setEffAlphaKey( spep_3 + 0, nageru, 255 );
setEffAlphaKey( spep_3 + 103, nageru, 255 );
setEffAlphaKey( spep_3 + 104, nageru, 0 );

-- ** 音 ** --
playSe( spep_3 + 44, 8);  --投げる
playSe( spep_3 + 50, 1017);  --気弾発射

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 104;

------------------------------------------------------
-- 着弾(120F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan = entryEffectLife( spep_4 + 0, SP_05, 120, 0x100, -1, 0, 0, 0 );  --着弾(ef_005)
setEffMoveKey( spep_4 + 0, tyakudan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, tyakudan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tyakudan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, tyakudan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tyakudan, 0 );
setEffRotateKey( spep_4 + 120, tyakudan, 0 );
setEffAlphaKey( spep_4 + 0, tyakudan, 255 );
setEffAlphaKey( spep_4 + 119, tyakudan, 255 );
setEffAlphaKey( spep_4 + 120, tyakudan, 0 );

-- ** 音 ** --
playSe( spep_4 + 0, 63);  --玉向かう
playSe( spep_4 + 60, 1068);  --着弾

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 120;

------------------------------------------------------
-- 爆発(154F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --爆発(ef_005)
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 154, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_5 + 154, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 154, bakuhatsu, 0 );
setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 154, bakuhatsu, 255 );

-- ** 音 ** --
playSe( spep_5 + 2, 1024);  --爆発
SE2 = playSe( spep_5 + 38, 1044);  --地鳴り
stopSe( spep_5 + 144, SE2, 10);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 154, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 38 );
entryFade( spep_5 + 144, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 154 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 掴み投げ(388F)
------------------------------------------------------
spep_0 = 0;
a = 3;

-- ** エフェクト等 ** --
nage_f = entryEffectLife( spep_0 + 0, SP_01r, 388, 0x100, -1, 0, 0, 0 );  --投げ・手前(ef_001)
setEffMoveKey( spep_0 + 0, nage_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 388, nage_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, nage_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 388, nage_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, nage_f, 0 );
setEffRotateKey( spep_0 + 388, nage_f, 0 );
setEffAlphaKey( spep_0 + 0, nage_f, 255 );
setEffAlphaKey( spep_0 + 388, nage_f, 255 );

nage_b = entryEffectLife( spep_0 + 0, SP_02r, 388, 0x80, -1, 0, 0, 0 );  --投げ・奥(ef_002)
setEffMoveKey( spep_0 + 0, nage_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 388, nage_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, nage_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 388, nage_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, nage_b, 0 );
setEffRotateKey( spep_0 + 388, nage_b, 0 );
setEffAlphaKey( spep_0 + 0, nage_b, 255 );
setEffAlphaKey( spep_0 + 388, nage_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 84, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 84, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 84, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 84, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 9, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 84, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 80 -a, 1, 1 );
changeAnime( spep_0 + 80 -a, 1, 100 );

setMoveKey( spep_0 + 80 -a, 1, 258.7, 114.7 , 0 );
setMoveKey( spep_0 + 82 -a, 1, 258.6, 114.7 , 0 );
setMoveKey( spep_0 + 90 -a, 1, 258.6, 114.7 , 0 );
setMoveKey( spep_0 + 92 -a, 1, 258.5, 114.6 , 0 );
setMoveKey( spep_0 + 94 -a, 1, 258.4, 114.5 , 0 );
setMoveKey( spep_0 + 96 -a, 1, 258.3, 114.4 , 0 );

setScaleKey( spep_0 + 80 -a, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 94 -a, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 96 -a, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 80 -a, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 16, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 388, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96 -a; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 100 );  --ガード

setMoveKey( SP_dodge + 0, 1, 258.3, 114.4 , 0 );
setMoveKey( SP_dodge + 2, 1, 258.2, 114.2 , 0 );
setMoveKey( SP_dodge + 4, 1, 258, 113.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 257.8, 113.5 , 0 );
setMoveKey( SP_dodge + 8, 1, 257.4, 113 , 0 );
setMoveKey( SP_dodge + 10, 1, 256.9, 112.3 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.12, 0.12 );
setScaleKey( SP_dodge + 2, 1, 0.12, 0.12 );
setScaleKey( SP_dodge + 4, 1, 0.13, 0.13 );
setScaleKey( SP_dodge + 6, 1, 0.13, 0.13 );
setScaleKey( SP_dodge + 8, 1, 0.15, 0.15 );
setScaleKey( SP_dodge + 10, 1, 0.16, 0.16 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 190 -a, 1, 0 );
changeAnime( spep_0 + 134 -a, 1, 7 );
changeAnime( spep_0 + 142 -a, 1, 8 );
changeAnime( spep_0 + 172 -a, 1, 6 );

setMoveKey( spep_0 + 98 -a, 1, 258.2, 114.2 , 0 );
setMoveKey( spep_0 + 100 -a, 1, 258, 113.9 , 0 );
setMoveKey( spep_0 + 102 -a, 1, 257.8, 113.5 , 0 );
setMoveKey( spep_0 + 104 -a, 1, 257.4, 113 , 0 );
setMoveKey( spep_0 + 106 -a, 1, 256.9, 112.3 , 0 );
setMoveKey( spep_0 + 108 -a, 1, 256.2, 111.3 , 0 );
setMoveKey( spep_0 + 110 -a, 1, 255.2, 109.9 , 0 );
setMoveKey( spep_0 + 112 -a, 1, 253.8, 107.8 , 0 );
setMoveKey( spep_0 + 114 -a, 1, 251.7, 104.8 , 0 );
setMoveKey( spep_0 + 116 -a, 1, 248.3, 99.9 , 0 );
setMoveKey( spep_0 + 118 -a, 1, 242, 90.9 , 0 );
setMoveKey( spep_0 + 120 -a, 1, 226.6, 68.9 , 0 );
setMoveKey( spep_0 + 122 -a, 1, 183.5, 7.4 , 0 );
setMoveKey( spep_0 + 124 -a, 1, 166.8, -16.9 , 0 );
setMoveKey( spep_0 + 126 -a, 1, 153.8, -35.9 , 0 );
setMoveKey( spep_0 + 128 -a, 1, 144.5, -49.4 , 0 );
setMoveKey( spep_0 + 130 -a, 1, 139, -57.6 , 0 );
setMoveKey( spep_0 + 132 -a, 1, 137.1, -60.3 , 0 );
setMoveKey( spep_0 + 133 -a, 1, 137.1, -60.3 , 0 );
setMoveKey( spep_0 + 134 -a, 1, 178.7, -80.5 , 0 );  --反転
setMoveKey( spep_0 + 136 -a, 1, 57.8, 61.8 , 0 );
setMoveKey( spep_0 + 138 -a, 1, 67.8, -18.1 , 0 );
setMoveKey( spep_0 + 140 -a, 1, 58.5, 24.3 , 0 );
setMoveKey( spep_0 + 141 -a, 1, 58.5, 24.3 , 0 );
setMoveKey( spep_0 + 142 -a, 1, -77.2, 23.8 , 0 );
setMoveKey( spep_0 + 143 -a, 1, -77.2, 23.8 , 0 );
setMoveKey( spep_0 + 144 -a, 1, -64.6, 120.3 , 0 );
setMoveKey( spep_0 + 145 -a, 1, -64.6, 120.3 , 0 );
setMoveKey( spep_0 + 146 -a, 1, -54.4, 119.8 , 0 );
setMoveKey( spep_0 + 147 -a, 1, -54.4, 119.8 , 0 );
setMoveKey( spep_0 + 148 -a, 1, -45.2, 158.9 , 0 );
setMoveKey( spep_0 + 149 -a, 1, -45.2, 158.9 , 0 );
setMoveKey( spep_0 + 150 -a, 1, -24.8, 154.5 , 0 );
setMoveKey( spep_0 + 151 -a, 1, -24.8, 154.5 , 0 );
setMoveKey( spep_0 + 152 -a, 1, -29.8, 181.5 , 0 );
setMoveKey( spep_0 + 153 -a, 1, -29.8, 181.5 , 0 );
setMoveKey( spep_0 + 154 -a, 1, -4, 209.6 , 0 );
setMoveKey( spep_0 + 155 -a, 1, -4, 209.6 , 0 );
setMoveKey( spep_0 + 156 -a, 1, -3, 156.7 , 0 );
setMoveKey( spep_0 + 157 -a, 1, -3, 156.7 , 0 );
setMoveKey( spep_0 + 158 -a, 1, 0.9, 189.5 , 0 );
setMoveKey( spep_0 + 159 -a, 1, 0.9, 189.5 , 0 );
setMoveKey( spep_0 + 160 -a, 1, 10.7 +1.3, 193.6 , 0 );
setMoveKey( spep_0 + 161 -a, 1, 10.7 +1.3, 193.6 , 0 );
setMoveKey( spep_0 + 162 -a, 1, 12.5 +1.3, 185.4 +10.0 , 0 );
setMoveKey( spep_0 + 163 -a, 1, 12.5 +1.3, 185.4 +10.0 , 0 );
setMoveKey( spep_0 + 164 -a, 1, 13.6, 176.7 +18.0 , 0 );
setMoveKey( spep_0 + 165 -a, 1, 13.6, 176.7 +18.0 , 0 );
setMoveKey( spep_0 + 166 -a, 1, 13.9, 167.8 +22.0 , 0 );
setMoveKey( spep_0 + 167 -a, 1, 13.9, 167.8 +22.0 , 0 );
setMoveKey( spep_0 + 168 -a, 1, 14, 206.6 -9.2 , 0 );
setMoveKey( spep_0 + 169 -a, 1, 14, 206.6 -9.2 , 0 );
setMoveKey( spep_0 + 170 -a, 1, 12.8 +1.3, 197.3 , 0 );
setMoveKey( spep_0 + 171 -a, 1, 12.8 +1.3, 197.3 , 0 );
setMoveKey( spep_0 + 172 -a, 1, -263.8, -9.5 -33.1 , 0 );
setMoveKey( spep_0 + 173 -a, 1, -263.8, -9.5 -33.1 , 0 );
setMoveKey( spep_0 + 174 -a, 1, -239.8, 66 -23.1 , 0 );
setMoveKey( spep_0 + 175 -a, 1, -239.8, 66 -23.1 , 0 );
setMoveKey( spep_0 + 176 -a, 1, -216.7, 140.8 -33.1 , 0 );
setMoveKey( spep_0 + 177 -a, 1, -216.7, 140.8 -33.1 , 0 );
setMoveKey( spep_0 + 178 -a, 1, -265.9, 142.8 -33.1 , 0 );
setMoveKey( spep_0 + 179 -a, 1, -265.9, 142.8 -33.1 , 0 );
setMoveKey( spep_0 + 180 -a, 1, -310.4 -39.2, 148.8 -10.1 , 0 );
setMoveKey( spep_0 + 181 -a, 1, -310.4 -39.2, 148.8 -10.1 , 0 );
setMoveKey( spep_0 + 182 -a, 1, -218.2 -60.2, 409.5 -20.0 , 0 );
setMoveKey( spep_0 + 183 -a, 1, -218.2 -60.2, 409.5 -20.0 , 0 );
setMoveKey( spep_0 + 184 -a, 1, -132.6, 573.1 , 0 );
setMoveKey( spep_0 + 185 -a, 1, -132.6, 573.1 , 0 );
setMoveKey( spep_0 + 186 -a, 1, -9.8, 548.4 , 0 );
setMoveKey( spep_0 + 187 -a, 1, -9.8, 548.4 , 0 );
setMoveKey( spep_0 + 188 -a, 1, 107.6, 533.4 , 0 );
setMoveKey( spep_0 + 190 -a, 1, 107.6, 533.4 , 0 );

b = 0.88;
setScaleKey( spep_0 + 98 -a, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 100 -a, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 102 -a, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 104 -a, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 106 -a, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 108 -a, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 110 -a, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 112 -a, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 114 -a, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 116 -a, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 118 -a, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 120 -a, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 122 -a, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 124 -a, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 126 -a, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 128 -a, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 130 -a, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 132 -a, 1, 4, 4 );
setScaleKey( spep_0 + 133 -a, 1, 4, 4 );
setScaleKey( spep_0 + 134 -a, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 136 -a, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 138 -a, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 140 -a, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 141 -a, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 142 -a, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 143 -a, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 144 -a, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 145 -a, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 146 -a, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 147 -a, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 148 -a, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 149 -a, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 150 -a, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 151 -a, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 152 -a, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 153 -a, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 154 -a, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 155 -a, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 156 -a, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 157 -a, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 158 -a, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 159 -a, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 160 -a, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 161 -a, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 162 -a, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 163 -a, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 164 -a, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 165 -a, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 166 -a, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 167 -a, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 168 -a, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 171 -a, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 172 -a, 1, 2.28 +b, 2.28 +b );
setScaleKey( spep_0 + 173 -a, 1, 2.28 +b, 2.28 +b );
setScaleKey( spep_0 + 174 -a, 1, 2.3 +b, 2.3 +b );
setScaleKey( spep_0 + 175 -a, 1, 2.3 +b, 2.3 +b );
setScaleKey( spep_0 + 176 -a, 1, 2.32 +b, 2.32 +b );
setScaleKey( spep_0 + 177 -a, 1, 2.32 +b, 2.32 +b );
setScaleKey( spep_0 + 178 -a, 1, 2.37 +b, 2.37 +b );
setScaleKey( spep_0 + 179 -a, 1, 2.37 +b, 2.37 +b );
setScaleKey( spep_0 + 180 -a, 1, 2.41 +b, 2.41 +b );
setScaleKey( spep_0 + 181 -a, 1, 2.41 +b, 2.41 +b );
setScaleKey( spep_0 + 182 -a, 1, 3.12 +b, 3.12 +b );
setScaleKey( spep_0 + 183 -a, 1, 3.12 +b, 3.12 +b );
setScaleKey( spep_0 + 184 -a, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 185 -a, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 186 -a, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 187 -a, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 188 -a, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 190 -a, 1, 4.64, 4.64 );

setRotateKey( spep_0 + 133 -a, 1, 0 );
setRotateKey( spep_0 + 134 -a, 1, 77.9 );  --反転
setRotateKey( spep_0 + 136 -a, 1, 78 );
setRotateKey( spep_0 + 138 -a, 1, 86.2 );
setRotateKey( spep_0 + 140 -a, 1, 89.6 );
setRotateKey( spep_0 + 141 -a, 1, 89.6 );
setRotateKey( spep_0 + 142 -a, 1, 13 );
setRotateKey( spep_0 + 143 -a, 1, 13 );
setRotateKey( spep_0 + 144 -a, 1, 34 );
setRotateKey( spep_0 + 145 -a, 1, 34 );
setRotateKey( spep_0 + 146 -a, 1, 40.7 );
setRotateKey( spep_0 + 147 -a, 1, 40.7 );
setRotateKey( spep_0 + 148 -a, 1, 63.6 );
setRotateKey( spep_0 + 149 -a, 1, 63.6 );
setRotateKey( spep_0 + 150 -a, 1, 68.3 );
setRotateKey( spep_0 + 151 -a, 1, 68.3 );
setRotateKey( spep_0 + 152 -a, 1, 71.8 );
setRotateKey( spep_0 + 153 -a, 1, 71.8 );
setRotateKey( spep_0 + 154 -a, 1, 74.4 );
setRotateKey( spep_0 + 155 -a, 1, 74.4 );
setRotateKey( spep_0 + 156 -a, 1, 76.4 );
setRotateKey( spep_0 + 157 -a, 1, 76.4 );
setRotateKey( spep_0 + 158 -a, 1, 77.9 );
setRotateKey( spep_0 + 159 -a, 1, 77.9 );
setRotateKey( spep_0 + 160 -a, 1, 79 );
setRotateKey( spep_0 + 161 -a, 1, 79 );
setRotateKey( spep_0 + 162 -a, 1, 79.7 );
setRotateKey( spep_0 + 163 -a, 1, 79.7 );
setRotateKey( spep_0 + 164 -a, 1, 80.2 );
setRotateKey( spep_0 + 165 -a, 1, 80.2 );
setRotateKey( spep_0 + 166 -a, 1, 80.5 );
setRotateKey( spep_0 + 167 -a, 1, 80.5 );
setRotateKey( spep_0 + 168 -a, 1, 80.6 );
setRotateKey( spep_0 + 171 -a, 1, 80.6 );
setRotateKey( spep_0 + 172 -a, 1, 90.4 );
setRotateKey( spep_0 + 173 -a, 1, 90.4 );
setRotateKey( spep_0 + 174 -a, 1, 100 );
setRotateKey( spep_0 + 175 -a, 1, 100 );
setRotateKey( spep_0 + 176 -a, 1, 109.6 );
setRotateKey( spep_0 + 177 -a, 1, 109.6 );
setRotateKey( spep_0 + 178 -a, 1, 119.2 );
setRotateKey( spep_0 + 179 -a, 1, 119.2 );
setRotateKey( spep_0 + 180 -a, 1, 128.9 );
setRotateKey( spep_0 + 181 -a, 1, 128.9 );
setRotateKey( spep_0 + 182 -a, 1, 139.1 );
setRotateKey( spep_0 + 183 -a, 1, 139.1 );
setRotateKey( spep_0 + 184 -a, 1, 149.2 );
setRotateKey( spep_0 + 185 -a, 1, 149.2 );
setRotateKey( spep_0 + 186 -a, 1, 158.3 );
setRotateKey( spep_0 + 187 -a, 1, 158.3 );
setRotateKey( spep_0 + 188 -a, 1, 167.4 );
setRotateKey( spep_0 + 190 -a, 1, 167.4 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 246 -a, 1, 1 );
setDisp( spep_0 + 276 -a, 1, 0 );
changeAnime( spep_0 + 246 -a, 1, 107 );
changeAnime( spep_0 + 258 -a, 1, 106 );

setMoveKey( spep_0 + 246 -a, 1, -228.6, 1562.2 , 0 );
setMoveKey( spep_0 + 248 -a, 1, -228.6, 1241.5 , 0 );
setMoveKey( spep_0 + 250 -a, 1, -228.6, 836.8 , 0 );
setMoveKey( spep_0 + 252 -a, 1, -228.6, 347.9 , 0 );
setMoveKey( spep_0 + 254 -a, 1, -228.6, -225 , 0 );
setMoveKey( spep_0 + 256 -a, 1, -228.6, -882 , 0 );
setMoveKey( spep_0 + 257 -a, 1, -228.6, -882 , 0 );
setMoveKey( spep_0 + 258 -a, 1, 135.4, -118.1 , 0 );
setMoveKey( spep_0 + 260 -a, 1, 140.5, -133.5 , 0 );
setMoveKey( spep_0 + 262 -a, 1, 164, -205.2 , 0 );
setMoveKey( spep_0 + 264 -a, 1, 195.7, -302.2 , 0 );
setMoveKey( spep_0 + 266 -a, 1, 225.4, -392.8 , 0 );
setMoveKey( spep_0 + 268 -a, 1, 254.2, -480.9 , 0 );
setMoveKey( spep_0 + 270 -a, 1, 282.5, -567.1 , 0 );
setMoveKey( spep_0 + 272 -a, 1, 310.1, -651.6 , 0 );
setMoveKey( spep_0 + 274 -a, 1, 337.2, -734.4 , 0 );
setMoveKey( spep_0 + 276 -a, 1, 363.4, -814.3 , 0 );

setScaleKey( spep_0 + 246 -a, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 257 -a, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 258 -a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 276 -a, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 246 -a, 1, 45 );
setRotateKey( spep_0 + 257 -a, 1, 45 );
setRotateKey( spep_0 + 258 -a, 1, 110.3 );
setRotateKey( spep_0 + 260 -a, 1, 110.3 );
setRotateKey( spep_0 + 262 -a, 1, 110.4 );
setRotateKey( spep_0 + 264 -a, 1, 110.5 );
setRotateKey( spep_0 + 266 -a, 1, 110.6 );
setRotateKey( spep_0 + 268 -a, 1, 110.7 );
setRotateKey( spep_0 + 270 -a, 1, 110.7 );
setRotateKey( spep_0 + 272 -a, 1, 110.8 );
setRotateKey( spep_0 + 274 -a, 1, 110.9 );
setRotateKey( spep_0 + 276 -a, 1, 111 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 284 -a, 1, 1 );
setDisp( spep_0 + 342 -a, 1, 0 );
changeAnime( spep_0 + 284 -a, 1, 7 );
changeAnime( spep_0 + 292 -a, 1, 106 );
changeAnime( spep_0 + 294 -a, 1, 5 );

setMoveKey( spep_0 + 284 -a, 1, 172, -725.7 , 0 );
setMoveKey( spep_0 + 286 -a, 1, 165.8, -691.6 , 0 );
setMoveKey( spep_0 + 288 -a, 1, 147.3, -589.2 , 0 );
setMoveKey( spep_0 + 290 -a, 1, 116.4, -418.7 , 0 );
setMoveKey( spep_0 + 291 -a, 1, 116.4, -418.7 , 0 );
setMoveKey( spep_0 + 292 -a, 1, -63.8, -350.9 , 0 );
setMoveKey( spep_0 + 293 -a, 1, -63.8, -350.9 , 0 );
setMoveKey( spep_0 + 294 -a, 1, -28.3, -46.7 , 0 );
setMoveKey( spep_0 + 296 -a, 1, -10.7, 89.8 , 0 );
setMoveKey( spep_0 + 298 -a, 1, -6.1, 124.3 , 0 );
setMoveKey( spep_0 + 300 -a, 1, -3.3, 145 , 0 );
setMoveKey( spep_0 + 302 -a, 1, -1.4, 159.6 , 0 );
setMoveKey( spep_0 + 304 -a, 1, 0, 165.8 , 0 );
setMoveKey( spep_0 + 306 -a, 1, 0.9, 176.5 , 0 );
setMoveKey( spep_0 + 308 -a, 1, 1.7, 185.4 , 0 );
setMoveKey( spep_0 + 310 -a, 1, 2.3, 190.3 , 0 );
setMoveKey( spep_0 + 312 -a, 1, 2.8, 187.9 , 0 );
setMoveKey( spep_0 + 314 -a, 1, 3.1, 191.3 , 0 );
setMoveKey( spep_0 + 316 -a, 1, 3.4, 185.3 , 0 );
setMoveKey( spep_0 + 318 -a, 1, 3.6, 189.6 , 0 );
setMoveKey( spep_0 + 320 -a, 1, 3.8, 188.3 , 0 );
setMoveKey( spep_0 + 322 -a, 1, 3.9, 182.8 , 0 );
setMoveKey( spep_0 + 324 -a, 1, 4, 181.8 , 0 );
setMoveKey( spep_0 + 326 -a, 1, 4, 178.1 , 0 );
setMoveKey( spep_0 + 328 -a, 1, 4.1, 177.9 , 0 );
setMoveKey( spep_0 + 330 -a, 1, 4.1, 174.5 , 0 );
setMoveKey( spep_0 + 332 -a, 1, 4.1, 165.4 , 0 );
setMoveKey( spep_0 + 334 -a, 1, 4.1, 157.5 , 0 );
setMoveKey( spep_0 + 336 -a, 1, 4.2, 146.2 , 0 );
setMoveKey( spep_0 + 338 -a, 1, 4.2, 130.4 , 0 );
setMoveKey( spep_0 + 340 -a, 1, 4.1, 107.5 , 0 );
setMoveKey( spep_0 + 342 -a, 1, 4.1, 107.5 , 0 );

setScaleKey( spep_0 + 284 -a, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 286 -a, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 288 -a, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 290 -a, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 291 -a, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 292 -a, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 293 -a, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 294 -a, 1, 4, 4 );
setScaleKey( spep_0 + 296 -a, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 298 -a, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 300 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 302 -a, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 304 -a, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 306 -a, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 308 -a, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 310 -a, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 312 -a, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 314 -a, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 316 -a, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 318 -a, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 320 -a, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 322 -a, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 324 -a, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 326 -a, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 330 -a, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 332 -a, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 340 -a, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 342 -a, 1, 0.03, 0.03 );

setRotateKey( spep_0 + 284 -a, 1, 90 );
setRotateKey( spep_0 + 291 -a, 1, 90 );
setRotateKey( spep_0 + 292 -a, 1, -60.1 );
setRotateKey( spep_0 + 293 -a, 1, -60.1 );
setRotateKey( spep_0 + 294 -a, 1, 14 );
setRotateKey( spep_0 + 342 -a, 1, 14 );

-- ** 音 ** --
playSe( spep_0 + 86, 9 );  --迫る
playSe( spep_0 + 132, 1007 );  --掴む
playSe( spep_0 + 168, 8 );  --振りかぶる
playSe( spep_0 + 232, 1002 );  --投げる
--playSe( spep_0 + 292, 1053 );  --飛んでいく
playSe( spep_0 + 342 -a, 1023 );  --地面に落ちる

-- ** ホワイトフェード ** --
entryFade( spep_0 + 386, 2, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 388;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 溜める(182F)
------------------------------------------------------

-- ** エフェクト等 ** --
tameru = entryEffectLife( spep_2 + 0, SP_03, 182, 0x100, -1, 0, 0, 0 );  --溜める(ef_003)
setEffMoveKey( spep_2 + 0, tameru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 182, tameru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tameru, -1.0, 1.0 );
setEffScaleKey( spep_2 + 182, tameru, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tameru, 0 );
setEffRotateKey( spep_2 + 182, tameru, 0 );
setEffAlphaKey( spep_2 + 0, tameru, 255 );
setEffAlphaKey( spep_2 + 181, tameru, 255 );
setEffAlphaKey( spep_2 + 182, tameru, 0 );

-- ** 音 ** --
--playSe( spep_2 + 4, 17 );  --貯める
--playSe( spep_2 + 4, 1019 ); --貯める
--playSe( spep_2 + 24, 1019 );  --貯める
--playSe( spep_2 + 150, 1072 ); --気玉広げる
SE1 = playSe( spep_2 + 4, 15 ); --貯める
stopSe( spep_2 + 84, SE1, 12);
playSe( spep_2 + 86, 1072 ); --気玉広げる
setSeVolume( spep_2 + 86, 1072, 170);
playSe( spep_2 + 90, 17 );  --気玉広げる
setSeVolume( spep_2 + 90, 17, 0);	
setSeVolume( spep_2 + 120, 17, 60);	
setSeVolume( spep_2 + 150, 17, 100);
--playSe( spep_2 + 150, 13 );  --気玉広げる

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 182, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 182;

------------------------------------------------------
-- 気弾投げる(104F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru = entryEffectLife( spep_3 + 0, SP_04, 104, 0x100, -1, 0, 0, 0 );  --気弾を投げる(ef_004)
setEffMoveKey( spep_3 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_3 + 104, nageru, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, nageru, -1.0, 1.0 );
setEffScaleKey( spep_3 + 104, nageru, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, nageru, 0 );
setEffRotateKey( spep_3 + 104, nageru, 0 );
setEffAlphaKey( spep_3 + 0, nageru, 255 );
setEffAlphaKey( spep_3 + 103, nageru, 255 );
setEffAlphaKey( spep_3 + 104, nageru, 0 );

-- ** 音 ** --
playSe( spep_3 + 44, 8); --投げる
playSe( spep_3 + 50, 1017); --気弾発射

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 104;

------------------------------------------------------
-- 着弾(120F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan = entryEffectLife( spep_4 + 0, SP_05, 120, 0x100, -1, 0, 0, 0 );  --着弾(ef_005)
setEffMoveKey( spep_4 + 0, tyakudan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, tyakudan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tyakudan, -1.0, 1.0 );
setEffScaleKey( spep_4 + 120, tyakudan, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tyakudan, 0 );
setEffRotateKey( spep_4 + 120, tyakudan, 0 );
setEffAlphaKey( spep_4 + 0, tyakudan, 255 );
setEffAlphaKey( spep_4 + 119, tyakudan, 255 );
setEffAlphaKey( spep_4 + 120, tyakudan, 0 );

-- ** 音 ** --
playSe( spep_4 + 0, 63);  --玉向かう
playSe( spep_4 + 60, 1068);  --着弾

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 120;

------------------------------------------------------
-- 爆発(154F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --爆発(ef_005)
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 154, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuhatsu, -1.0, 1.0 );
setEffScaleKey( spep_5 + 154, bakuhatsu, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 154, bakuhatsu, 0 );
setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 154, bakuhatsu, 255 );

-- ** 音 ** --
playSe( spep_5 + 2, 1024);  --爆発
SE2 = playSe( spep_5 + 38, 1044); --地鳴り	
stopSe( spep_5 + 144, SE2, 10);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 154, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 38 );
entryFade( spep_5 + 144, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 154 );

end



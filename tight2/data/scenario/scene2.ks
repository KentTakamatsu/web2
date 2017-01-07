

*start
[cm  ]
[clearfix]
[bg storage="torii.jpg" time="100"]

;メニューボタンの表示
@showmenubutton
;[button graphic="oda.png" target=*oda]

;メッセージウィンドウの設定
[position layer="message0" top=550 width=400 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="10"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=570]

[call storage="live2d/live2d.ks"]
;上記で定義した領域がキャラクターの名前表示であることを宣言
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;yuko
[chara_new  name="maiko" storage="chara/t01a_png/t01a_png/立ち絵01_通常.png" jname="ゆうこ" width=417 hight=600]
[live2d_new name="hibiki" glscale=2 height=768]


[live2d_show name="hibiki"]
[live2d_motion name="hibiki" filenm="hibiki_02.mtn" idle="ON"]
#響
「ああもうやっばいよー！！　テスト勉強全然してねぇ～！！」[p]
[jump storage="title.ks"]


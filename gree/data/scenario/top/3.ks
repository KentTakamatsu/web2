

*start

[cm  ]
[clearfix]
[bg storage="torii.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" top=550 width=400 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="10"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=570]

;上記で定義した領域がキャラクターの名前表示であることを宣言
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;yuko
[chara_new  name="kaede" storage="chara/t03_png/t03_png/立ち絵3_1.png" jname="かえで" width=340 hight=600]
;キャラクターの表情登録
[chara_face name="kaede" face="normal" storage="chara/t03_png/t03_png/立ち絵3_1.png"]

[chara_show name="kaede" face="normal"]

#かえで
おはよう[p]


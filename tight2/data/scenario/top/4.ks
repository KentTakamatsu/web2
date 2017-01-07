

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
[chara_new  name="rika" storage="chara/t04_png/t04_png/立ち絵4_4.png" jname="りか" width=233 hight=600]
;キャラクターの表情登録
[chara_face name="rika" face="wara" storage="chara/t04_png/t04_png/立ち絵4_1.png"]

[chara_show name="rika" face="wara"]

#りか
おはよう[p]


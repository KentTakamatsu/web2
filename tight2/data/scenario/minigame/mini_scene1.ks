

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
[chara_new  name="yuko" storage="chara/t01a_png/t01a_png/立ち絵01_通常.png" jname="ゆうこ" width=417 hight=600]
;キャラクターの表情登録
[chara_face name="yuko" face="komaru" storage="chara/t01a_png/t01a_png/立ち絵01_困.png"]
[chara_face name="yuko" face="wara" storage="chara/t01a_png/t01a_png/立ち絵01_笑.png"]
[chara_face name="yuko" face="normal2" storage="chara/yuko/normal2.png"]
[chara_face name="yuko" face="nyaa" storage="chara/yuko/nyaa.png"]
[chara_face name="yuko" face="yokobo" storage="chara/yuko/yokobo.png"]

[chara_show name="yuko" face="wara"]

#ゆうこ
ミニゲームだよ！！[p]

[iscript]
location.href = "http://msyoka.jp/gree/mypage.php";
[endscript]




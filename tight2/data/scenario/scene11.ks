

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
[chara_new  name="maiko" storage="chara/t01a_png/t01a_png/立ち絵01_通常.png" jname="ゆうこ" width=417 hight=600]
;キャラクターの表情登録
[chara_face name="maiko" face="komaru" storage="chara/t01a_png/t01a_png/立ち絵01_困.png"]
[chara_face name="maiko" face="wara" storage="chara/t01a_png/t01a_png/立ち絵01_笑.png"]
[chara_face name="maiko" face="normal" storage="chara/t01a_png/t01a_png/立ち絵01_通常.png"]

;[chara_show name="yuko" face="wara"]

#主人公
「こんなところで何しているの？」[p]


[chara_show name="maiko" face="wara"]
#麻衣子
「ん？　ここの神社涼しいからさ～。涼んでいるの」[p]

[chara_mod name="maiko" face="normal"]
#麻衣子
「という君、初めて見る顔だね」[p]
#
「ああ、最近引っ越してきたから」[p]

#麻衣子
「何て名前なの？」[p]


*show_input_yourname

[edit left=100 top=200 name="sf.yourname"]

[locate x=100 y=300]
[button target="*sbm_name" name=button_name_kettei graphic="kettei.gif"]

[s]

*sbm_name
[commit]
[cm]

;名前が未入力の場合
[if exp="sf.yourname==''"]
#麻衣子
    ちゃんと名前おしえてよ?[l]
    @jump target=*show_input_yourname
[endif]

[chara_show name="maiko" face="wara"]
#麻衣子
[emb exp=sf.yourname]くん。これからよろしくね。
[l][cm]

[iscript]
location.href = "http://msyoka.jp/gree/storysave.php";
[endscript]


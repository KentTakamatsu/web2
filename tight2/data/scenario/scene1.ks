

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
[live2d_new name="Epsilon" glscale=2 height=768]


[live2d_show name="Epsilon"]
[live2d_motion name="Epsilon" filenm="Epsilon_free_idle_01.mtn" idle="ON"]
#真希
「こんなところで何しているの？」[p]
#
[button graphic="button/select1.gif" target=*select1 x=150 y=300]
[button graphic="button/select2.gif" target=*select2 x=150 y=400]
;[link target=*select1]【１】きみをつけてきた[endlink][r]
;[link target=*select2]【２】なんとなくいるだけ[endlink][r]
[s]


*select1
[cm]
#真希
[live2d_motion name="Epsilon" filenm="Epsilon_free_m_sp_03.mtn" idle="ON"]
「変態は嫌い…!! さよなら」[p]
 [live2d_hide name="Epsilon"]
 @layopt layer=message0 visible=false
[jump storage="title.ks"]
[jump storage="title.ks"]
[s]

*select2
[cm]
#真希
「ふーん。ここ静かでいいよね」[p]
#
[button graphic="button/select3.gif" target=*select3 x=150 y=300]
[button graphic="button/select4.gif" target=*select4 x=150 y=400]
;[link target=*select3]【１】まさに田舎って感じだね[endlink][r]
;[link target=*select4]【２】木陰が気持ちいいよね[endlink][r]
[s]


*select3
[cm]
#真希

[live2d_motion name="Epsilon" filenm="Epsilon_free_m_sp_04.mtn" idle="ON"]
「田舎でわるぅござんした」[p]
[live2d_hide name="Epsilon"]
@layopt layer=message0 visible=false
[jump storage="title.ks"]

[s]

*select4
[cm]
[live2d_motion name="Epsilon" filenm="Epsilon_free_m_04.mtn" idle="ON"]
#真希
「そうそう！　ひんやりしてて最高だよね！」[p]
[live2d_motion name="Epsilon" filenm="Epsilon_free_idle_01.mtn" idle="ON"]
#真希
「でもここも年末年始になると人でいっぱいになるんだよねぇ」[p]
#
[button graphic="button/select5.gif" target=*select5 x=150 y=300]
[button graphic="button/select6.gif" target=*select6 x=150 y=400]
[s]

*select5
[cm]
[live2d_motion name="Epsilon" filenm="Epsilon_free_m_06.mtn" idle="ON"]
#真希
「ええ～わたしそういうの嫌い～」[p]
[live2d_hide name="Epsilon"]
@layopt layer=message0 visible=false
[jump storage="title.ks"]

[s]

*select6
[cm]
#真希
「そうそう。ごちゃごちゃしてるの嫌い」[p]

[live2d_motion name="Epsilon" filenm="Epsilon_free_m_sp_02.mtn" idle="ON"]
#真希
「なんか君とは気があいそうだ！これからもよろしくね！」[p]
[cm]

[jump storage="title.ks"]


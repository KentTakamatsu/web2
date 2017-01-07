@call storage="macro.ks


*akina_story
@cm
[show_bg file="akina_pro.png"]
[action]
[waitclick]
[hide_all]
[action]
[show_bg file="akina_play.png"]
[show_c file="akina_black.png"]
[show_msg]
[position top="100" height="200"]
[action]
イメージアップイメージアップイメージアップアップアップ♪[m]
[choices text1="お、BOOWZ（ボウズ）かな？" target1="*Q1" text2="お、濃い紫かな？" target2="*end"]

*Q1
@cm
そうだよ～。紙袋さんかっっこいいよね！[m]
[choices text1="直立不動の人かな？" target1="*end" text2="ああ、ギターの人？" target2="*Q2"]
@s

*Q2
@cm
そうそう、ジャジャーンってね[m]
[choices text1="うるさそう" target1="＊end2" text2="ギター弾けるの？" target2="*Q3"]

@s

*Q3
@cm
私、軽音楽部だしね～。[m]
バリバリロックだぜぃ！[m]
[choices text1="ロックって不良のものでしょ？" target1="*end3" text2="俺なんか縦笛も吹けないのに……" target2="*Q4"]
@s

*Q4
@cm
 私も吹く系の楽器は苦手だよ。[m]
 なんなら軽音楽部入りなよ！　一緒に練習しよう！[m]
 [choices text1="ギターは高いからな～" target1="*Q5" text2="そんな根性ないっす" target2="*end4"]
@s

*Q5
@cm
まあそうだよね。[m]
慎重になっちゃうよね。[m]
[choices text1="課金で財布がイッちゃってるから……" target1="*end5" text2="そのギター買ったの？" target2="*Q6"]
@s

*Q6
@cm
よく聞いてくれた！ 私の愛するギターだぜ！
[choices text1="それ一本って感じ？" target1="*Q7" text2="お、おう" target2="*end6"]
@s

*Q7
@cm
そうだよ。アイバくんって呼んでるんだ！[m]
[choices text1="溺愛してるなあ" target1="*Q8" text2="大丈夫ですか！あなたって人は！" target2="*end7"]
@s

*Q8
@cm
世界中の誰よりも愛しているさ！[m]
[choices text1="お、俺は？" target1="*Q9" text2="人外フェチってやつ？" target2="*end9"]
@s

*Q9
@cm
きみは素晴らしい人間だな！[m]
これからもよろしく頼むぜ～[m]

[flash time=2000]
[hide_msg]
[action]
[hide_all]
[action]
[show_c file="akina.png"]
[play_se file="windchaim"]
[action]
[play_se file="akina_01"]
[firelight time=1000]
[action]
[waitclick]
[action]
[eval exp="akina_cg =true"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]

@s

*save
@cm
[showsavewindow]
[waitclick]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*title
@cm
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s


*end
@cm
ちがうよ～。それベースの人だよ。[m]
[play_se file="akina_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end2
@cm
 ひどいこというね～[m]
 [play_se file="akina_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end3
@cm
 それ何時の時代の人の観念だよ！[m]
 [play_se file="akina_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end4
@cm
もっと男らしく生きな！　青年！[m]
[play_se file="akina_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end5
@cm
まあ、そういうのも否定しないけどさ～[m]
ほどほどにしなよ？[m]
[play_se file="akina_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end6
@cm
分からなかったよね。ごめん。[m]
[play_se file="akina_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end7
@cm
大丈夫だよ！[m]
それほど愛してるってことなのにな。[m]
[play_se file="akina_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end8
@cm
そんな特殊な性癖は持ち合わせていないよ！[m]
[play_se file="akina_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s
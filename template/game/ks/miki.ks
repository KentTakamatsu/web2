@call storage="macro.ks


*miki_story
@cm
[show_bg file="miki_pro.png"]
[action]
[waitclick]
[hide_all]
[action]
[show_bg file="miki_play.png"]
[show_c file="miki_black.png"]
[show_msg]
[position top="100" height="200"]
[action]
　やあ、こんにちは[m]
（ぐぅ～）[m]
 って……お腹すいた～[m]
[choices text1="スルメを与える" target1="*end" text2="チョコレートを与える" target2="*Q1"]

*Q1
@cm
うまい！（モグモグ）[m]
やっぱお菓子がナンバーワン！[m]
[choices text1="お菓子好きなんですか？" target1="*Q2" text2="太りますよ" target2="*end2"]
@s

*Q2
@cm
 そう！　お菓子一筋18年！[m]
 揺らがない！[m]
 [choices text1="子供っぽいっす" target1="*end3" text2="飽きないんですか" target2="*Q3"]

@s

*Q3
@cm
 三食お菓子でも飽きないね。[m]
  [choices text1="まさか三食食べてるんですか？" target1="*Q4" text2="病院に行くことをおすすめします" target2="*end4"]
@s

*Q4
@cm
　食後にお菓子は基本中の基本！[m]
  [choices text1="財布が泣いていますよ" target1="*Q5" text2="それでよくそのスタイルを……" target2="*end6"]
@s

*Q5
@cm
 お菓子代と、ついでに遊び代を確保するためにバイトしてるんだよ[m]
 [choices text1="お菓子がなくなったら……" target1="*end6" text2="勉強はしてるんですか？" target2="*Q6"]
@s

*Q6
@cm
　してるよ。ちゃーんとね[m]
 [choices text1="鞄の中がお菓子まみれですけど" target1="*Q7" text2="そうですか" target2="*end7"]
@s

*Q7
@cm
 こ、これは……。お菓子の勉強をしようと思って……。[m]
 [choices text1="本当ですか？" target1="*end8" text2="じゃあ俺にもひとつだけ……" target2="*Q8"]
@s

*Q8
@cm
 しょ、しょうがないな～。[m]
 この「まつたけの国」で許してくれ～。[m]
 [choices text1="美味いですね" target1="*Q9" text2="俺「しいたけの川」派なんですよ" target2="*end9"]
@s

*Q9
@cm
 うまいだろ～。[m]
 やっぱ「しいたけの川」よりも「まつたけの国」だよな～。[m]
 [choices text1="あなたとは友だちになれませんね……" target1="*end10" text2="同胞に会えて嬉しいです" target2="*Q10"]
@s

*Q10
@cm
君とは気が合いそうだ！[m]
[flash time=2000]
[hide_msg]
[action]
[hide_all]
[action]
[show_c file="miki.png"]
[play_se file="windchaim"]
[action]
[play_se file="miki_01"]
[firelight time=1000]
[action]
[waitclick]

[eval exp="miki_cg =true"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]

@s

*end
@cm
わたし嫌いなんだよ～それ。[m]
[play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
[stop_se]
@s

*end2
@cm
 そんなの気にしないよ。[m]
 好きなものを我慢するほうがからだに悪いよ[m]
 [play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end3
@cm
大人だってお菓子くらい食べるだろ～？[m]
[play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end4
@cm
心配無用！[m]
私は健康そのもの！[m]
[play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end6
@cm
ちょ、じろじろみないで！[m]
[play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end7
@cm
 そ、そうだよ……。[m]
 [play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end8
@cm
 それ以上追求はやめて……[m]
 [play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end9
@cm
 私達は敵同士……。[m]
 君とはウマが合わなそうだ……[m]
 [play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s


*end10
@cm
 貴様っ……。さては「しいたけの川派」の人間か！[m]
 君とは他の形で会えていたら友達になれていたかもしれないな……[m]
[play_se file="miki_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s
@call storage="macro.ks


*miho_story
@cm
[show_bg file="miho_pro.png"]
[action]
[waitclick]
[hide_all]
[action]





[show_bg file="miho_play.png"]
[show_c file="miho_black.png"]
[show_msg]
[position top="100" height="200"]
[action]
あら？　何かご用ですか？[m]
[choices text1="きみこそ何してるの？？" target1="*Q1" text2="きみは誰？" target2="*end"]

*Q1
@cm
ちょっと、絵を描いていました。[m]
[choices text1="よくわからない絵だ" target1="*end1" text2="抽象画？" target2="*Q2"]
@s

*Q2
@cm
そうです。[m]
恥ずかしながら熱中して描いていました[m]
[choices text1="めちゃくちゃな絵だね" target1="*Q3" text2="これに熱中？？" target2="*end2"]
@s

*Q3
@cm
これは世界そのものです。[m]
私は世界を表現しました。[m]
[choices text1="へ？" target1="*Q4" text2="どうしちゃったの……" target2="*end2"]
@s

*Q4
@cm
 世界はめちゃくちゃに壊れてしまっていると思いませんか？[m]
[choices text1="頭大丈夫？" target1="*Q5" text2="え……えっと……" target2="*end2"]
@s

*Q5
@cm
 頭は大丈夫です。[m]
 大丈夫じゃないのは世界のほうです。[m]
[choices text1="ほんとに大丈夫？" target1="*end3" text2="どうしてそう思う？" target2="*Q6"]
@s

*Q6
@cm
 矛盾だらけのこの世界は何か重大なものが壊れている、そう感じるからです。[m]
[choices text1="抽象度高いな" target1="*end4" text2="俺にはきみが壊れているように見える" target2="*Q7"]
@s

*Q7
@cm
 そうみえるのなら、[m]
 あなたは壊れた世界を形成する一因になってしまっているのかもしれません。[m]
[choices text1="この絵の具みたいに？" target1="*Q8" text2="あくまで君は壊れていないというのか" target2="*end5"]
@s

*Q8
@cm
 わかってきましたね。[m]
 そういうことです。[m]
 [choices text1="いや、俺にはさっぱりだ" target1="*end6" text2="君は不思議だな" target2="*Q9"]
@s

*Q9
@cm
 よく言われるのですが、私にとってはこれが普通なんです。[m]
 だからいつも一人でいることが多いんです[m]
 [choices text1="俺は好きだよそういうの" target1="*Q10" text2="ま、そりゃそうか" target2="*end7"]
@s

*Q10
@cm
 あなたみたいな人は初めてです。[m]
 あなたのにはこの胸像くらいの親近感を抱きました[m]
[flash time=2000]
[hide_msg]
[action]
[hide_all]
[action]
[show_c file="miho.png"]
[play_se file="windchaim"]
[play_se file="miho_01"]
[firelight time=1000]
[action]

[eval exp="akina_cg =true"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end
@cm
名乗るほどのものではありません[m]
[play_se file="miho_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end1
@cm
抽象画、知らないんですか？[m]
[play_se file="miho_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end2
@cm
……[m]
あなたにはわからないと思います[m]
[play_se file="miho_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end3
@cm
だから大丈夫だって言っているじゃないですか[m]
[play_se file="miho_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end4
@cm
それはまあ……。[m]
抽象的なものを絵にしたわけですから……[m]
[play_se file="miho_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end5
@cm
 やっぱりあなたも私がおかしいとおもっているんですね……[m]
 [play_se file="miho_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end6
@cm
 みんなそう言います[m]
 わかってくれなくて残念です[m]
 [play_se file="miho_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end7
@cm
 ……さみしいです[m]
 [play_se file="miho_02"]
[action]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s
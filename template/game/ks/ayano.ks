@call storage="macro.ks


*ayano_story
@cm
[show_bg file="ayano_pro.png"]
[action]
[waitclick]
[hide_all]
[action]
[show_bg file="ayano_play.png"]
[show_c file="ayano_black.png"]
[show_msg]
[position top="100" height="200"]
[action]
おはよう！ 元気？[m]
[choices text1="元気だよ！" target1="*Q1" text2="……" target2="*end"]

*Q1
@cm
よかった！[m]
（にゃ～にゃ～）[m]
ね、ねこ？[m]
[choices text1="ほら、可愛いね。" target1="*end2" text2="こら、しっし！" target2="*Q2"]
@s

*Q2
@cm
ありがと～。私猫アレルギーだから猫が近くにいると辛いんだよね[m]
ところで、きみって休みの日は何してる？[m]
[choices text1="クールにヒトカラさ" target1="*Q3" text2="画面の向こうの彼女と遊んでる" target2="*end3"]
@s

*Q3
@cm
カラオケ私も好きだよ！　でも、一人で寂しくない？[m]
今度みんなを誘って行こうよ！[m]
[choices text1="ふたりきりで……" target1="*end4" text2="そうだな。誘ってね" target2="*Q4"]
@s

*Q4
@cm
うんうん！[m]
[choices text1="俺は一人の時間が好きだけどな" target1="*end5" text2="みんなで楽しんだ者勝ちだな" target2="*Q5"]

*Q5
@cm
そうだね！一人で遊ぶよりも何倍も楽しいよ！[m]
あっ！　雨降ってきた！[m]
傘もってきてないよ～[m]
[choices text1="俺の傘に入りなよ" target1="*Q6" text2="この傘貸すから帰りな" target2="*end6"]
@s

*Q6
@cm
 やったー！[m]
 優しいんだね！[m]
[choices text1="肩と肩がくっついてね……" target1="*end4" text2="一人じゃ寂しいでしょ？" target2="*Q7"]
@s

*Q7
@cm
  一人じゃ心細くなっちゃうから……[m]
  だから私、よく甘えん坊だって言われちゃう[m]
[choices text1="それでいいんだよ" target1="*Q8" text2="社会でやっていけないよ" target2="*end8"]
@s


*Q8
@cm
 ほんと、やさしいんだね！[m]
 ありがとう！[m]
 [flash time=2000]
[hide_msg]
[action]
[hide_all]
[action]
[show_c file="ayano_to.png"]
[play_se file="windchaim"]
[action]
[play_se file="Ayano_01"]
[firelight time=1000]
[action]
[waitclick]
[action]

[eval exp="ayano_cg =true"]
[jump storage="first.ks" target="*title_view"]
@s


*end
@cm
はあ……。残念だな……。[m]
[play_se file="Ayano_02"]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end2
@cm
へくしゅん！私猫アレルギーなのへくしゅん！[m]
[play_se file="Ayano_02"]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end3
@cm
そっちのほうが好きなの……？
[play_se file="Ayano_02"]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end4
@cm
下心丸見えだよ！[m]
[play_se file="Ayano_02"]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end5
@cm
　じゃ誘わないほうがいいかな……[m]
  ごめんね……[m]
  [play_se file="Ayano_02"]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end6
@cm
 ありがとう[m]
 でも、さみしいな……[m]
 [play_se file="Ayano_02"]
 [hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s

*end8
@cm
 そうだよね……ごめん……[m]
 [play_se file="Ayano_02"]
  [hide_msg]
[hide_all]
[jump storage="first.ks" target="*title_view"]
@s
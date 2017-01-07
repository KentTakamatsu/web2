@call storage="macro.ks"

*title
[title name="Memory Searcher"]
[hide_msg]
[action]
[show_bg file="park.png"]
[action]
[showtitle storage="first.ks" target="*gamestart"] 
@s


*gamestart
@bgmopt volume=30 gvolume=30
@seopt buf=1 volume=20 gvolume=20

[hide_bg]
[hidetitle]
@action
//本文
@position layer=message0 page=fore visible=true frame="hakkou1.png" width=822 height=218 top=500 margint=50 left=220 marginl=50
@position layer=message0 page=back visible=true frame="hakkou1.png" width=822 height=218 top=500 margint=50 left=220 marginl=50 marginr=50
//名前
@position layer=message1 page=fore visible=true frame="hakkou_mini.png" width=287 height=97 top=450 margint=50 left=150
@position layer=message1 page=back visible=true frame="hakkou_mini.png" width=230 height=45 top=450 margint=50 left=150
//名前表示
@macro name="name"
@current layer=message1 page=fore
@er
@style align=center
@ch text=%text
@resetstyle
@current layer=message0 page=fore
@endmacro

@name text=向井
「ん……」[c]
　目が覚めたようだ。[m]
　生ごみの匂い、湿った臭い。日の届いていない狭い場所。[m]
　その先には光が見えている。[c]
　体は痛むが、その光に向かって歩いて行く。[m]
 @play_bgm file="downtown-night1.ogg" time=500
 @show_bg file="yun_6051.png"
 @show_c file="shinji.png"
 @action
　光の正体は街の明かりだった。[c]
――俺は何故ここにいるのだろう。そもそも俺は誰なのか。[c]
　思い出せなかった。[m]
　何か手がかりはないかと服のポケットを探った。[m]
  すると、ズボンの後ろポケットからクシャクシャになったメモが出てきた。[c]
　一〇時　ゲスト国立店　大橋さん[c]
 と書かれている。[m]
　見るからに待ち合わせの約束をしていると思う。[m]
 しかし、大橋さんのことも待ち合わせをしているという記憶もない。[c]
　漫然と街を歩いていると家電量販店を見つけた。[m]
　そうだ、ここのパソコンを使って調べよう。[m]
　ネットにつながっている展示用のパソコンを利用し、ゲスト国立店を調べた。[c]
　場所は、ここから徒歩で十分。[m]
　夜の明るい街並みを歩いていく。[m]
　そうしていると、楽しそうに談笑している学生達が目に入った。[c]
　その時俺を激しい頭痛が襲った。[c]
 @play_se buf=1 file="noise.ogg"
 @stop_bgm time=500
 @hide_c
 @hide_bg
 @action
 @wait time=500
 @stop_se buf=1

 //思い出
@play_bgm file="omoide.ogg" time=500
@show_bg file="park.png"
@action
@name text=向井
「お前ら志望校受かったのか？」[c]
モザイクガラスを通したかのように視界がはっきりしないが、俺がしゃべっているのがわかる。[c]
@name text=木下
[play_voice file="kyo_01.ogg"]
「私は合格」[c]
[play_voice file="kakitani_01.ogg"]
@name text=柿谷
「俺も合格だ。お前はこのまま就職だっけか？」[c]
@name text=向井
「まあ、フリーのプログラマーになるよ。っていうかもう仕事してるし」[c]

[play_voice file="kyo_02.ogg"]
@name text=木下
「なに慎二ってすごいの？」[c]
[play_voice file="kakitani_02.ogg"]
@name text=柿谷
「すごいっていうか、それしかできないもんな」[c]
[play_voice file="kyo_03.ogg"]
@name text=木下
「あーそうだよねー」[c]
@name text=向井
「お前らばかにしてるだろ！」[c]

[play_voice file="kyo_04.ogg"]
@name text=木下
「別にしてないわよ」[c]
[play_voice file="kakitani_03.ogg"]
@name text=柿谷
「パソコンバカにはかなわないなまったく」[c]
@stop_bgm time=500
@hide_bg
@action
//思いで終

@show_bg file="yun_6051.png"
@show_c file="shinji_ai.png"
@action
そこで意識が戻った。[m]
俺はただ立ち尽くしていただけだった。[m]
あの夢の中で俺たちはずいぶんと楽しそうに話していた。[c]
俺は大橋さんとの待ち合わせをしている場所に到着した。[m]
すると、入り口前に立っていた男がこちらに手を降った。[c]
@play_voice file="ohashi_01.ogg"
@name text=大橋
「向井さん、こっちです！」[c]
@show_c file="shinji_ki.png"
@action
@name text=向井
「どうも」[c]
　俺は精一杯笑顔を作って返答した。[m]
  二人でガスト店内に入り、適当な席に座る。[c]
@show_bg file="gest.png"
@action
@play_voice file="ohashi_02.ogg"
@name text=大橋
「なにか食べます？　私がおごりますよ」[c]
@name text=向井
「あまり食欲がなくて……。オレンジジュースを飲みたいです」[c]
@play_voice file="ohashi_03.ogg"
@name text=大橋
「あ、わかりました」[c]
大橋さんは店員を呼び、オレンジジュースとコーヒーを注文した。[c]
@play_voice file="ohashi_04.ogg"
@name text=大橋
「早速、お仕事の話をしたいのですが……」[c]
　仕事？　一体俺は何をしようとしているんだ。[m]
 それは分からないが、これで俺に関する手がかりがつかめるかもしれない。[c]
@name text=向井
「すみません。お願いします」[c]
　大橋さんはカバンから封筒を取り出した。[c]
@play_voice file="ohashi_05.ogg"
@name text=大橋
「中を確認してください」[c]
　封筒の中には書類と契約証明書が入っていた。[m]
　よく見るとそこには「向井慎二」という名前と住所が書かれていた。[m]
　おそらくこれが俺の名前だ。ここに書かれている住所も俺の家のはずだ。[c]
@play_voice file="ohashi_06.ogg"
@name text=大橋
「仕様書はその厚い束の方です」[c]
　クリップで止められた書類を見る。[m]
　俺には何がなんだか……。[c]
 @play_se file="noise.ogg"
 @hide_c
 @action
 @wait time=500
 @stop_se

@name text=向井
「ぐっ……」[c]
また頭痛だ……[c]



//思い出２
@play_bgm file="pcpart.ogg"
@play_se file="keyboard3.ogg"
@show_bg file="pc.png"
@action

俺はキーボードを叩いている。[m]
　目の前には大量の数式と文字列。[m]
　思い出した。俺はプログラマーだったんだ。[c]
　こうやって俺は仕事をしていたんだ。[m]
 @stop_se
　キーボードをひたすら叩いていた俺の手がふと止まった。[c]
@name text=向井
「まさか、コレって……」[c]
@play_se file="mobile-phone-tone1.ogg"
[ws buf=0]
@play_se file="phone-tone1.ogg" buf=1
[ws buf=1]
　俺はデスクに置かれてあったスマートフォンの電話帳に登録されてあるフューチャーテクノロジーに電話をかけた。[c]
@name text=向井
「あなた達は何をつくろうとしているんですか？」[c]
@play_voice file="ft_01.ogg"
@name text=FT
「何と言われましても……。契約時にお話したとおりですが……」[c]
@name text=向井
「俺にはあなた達が恐ろしいことを考えているようにしか見えなくなりました」[c]
@play_voice file="ft_02.ogg"
@name text=FT
「私達は世の中が少しでも便利になるように――」[c]
@name text=向井
「すみません……。俺、このプロジェクトから降ります」[c]
@play_voice file="ft_03.ogg"
@name text=FT
「そのようなことをされると困ります」[c]
@name text=向井
「あなた方がつくろうとしているものにはこれ以上関わりたくない」[c]
@play_voice file="ft_04.ogg"
@name text=FT
「ちょっと待ってください。あなたが外れるとプロジェクトが破たんします。その場合は損害賠償請求を……」[c]
@name text=向井
「賠償請求でもなんでもすればいいですよ。あなた達がやっていることがばれてもいいのなら」[c]
@name text=FT
「……」[c]
@name text=向井
「それでは失礼します」[c]
　俺は通話を終了した[c]
 //思い出２終わり
@stop_bgm

@show_bg file="gest.png"
@action
@show_c file="shinji.png"
@action
そこで意識が戻った。[m]
俺は何にかかわっていたのだろう。[m]
今の俺にはそれが思い出せなかった。[c]

@play_voice file="ohashi_07.ogg"
@name text=大橋
「大丈夫ですか？　あまり無理をしないほうが……」[c]
@name text=向井
「とりあえず、家に持ち帰ってゆっくり見ます」[c]
@play_voice file="ohashi_08.ogg"
@name text=大橋
「分かりました。くれぐれもお大事に」[c]
@name text=向井
「あ、それと、折り入ってお願いが……。少しお金を貸して欲しくて……」[c]
お金が無ければこの先何もできないだろう。[c]
@play_voice file="ohashi_09.ogg"
@name text=大橋
「お金ですか？　向井さんほどの人がお金に困っているんですか？」[c]
@name text=向井
「まあ、色々ありまして……。次会う時までには返せると思います」[c]
@play_voice file="ohashi_10.ogg"
@name text=大橋さん
「いいですよ」[c]
　大橋さんは財布から一万円札を出して渡してくれた。[c]
@name text=向井
「ありがとうございます」[c]
俺は封筒を持ち、書類に書かれている住所に向かうことにした。[c]

大橋さんからお金を貸してもらったので前よりは行動範囲が広がった。[m]
　先ほどの家電量販店で、俺の住所と思われる場所を調べる。[m]
　ルート案内によると、ここから電車で一時間程度の場所に俺の家はあるらしい。[c]
　電車で行こう。[m]
　この店から五分程度の場所に駅がある。[c]
@show_bg file="eki.png"
@action

　　駅舎前にたどり着いたが、どうも嫌な感じがする。[m]
　　なんでこんなに……。[c]
@name text=向井
「ぐあ……」[c]
　またかよ……。[c]
俺は偏頭痛持ちじゃねえぞ……。[c]
@hide_all
@action
@hide_bg
@action
@play_se file="noise.ogg"
 @wait time=500
 @stop_se

//思い出３
@play_bgm file="darknessnakuukan.ogg" time=500
@name text=向井
「ちょっとお前ら離せよ！」[c]
@name text=???
「おとなしくしろ！」[c]
@name text=向井
「この！　この！」[c]
そこは暗い裏路地だ。[m]
必至の抵抗をするが、男どもに抑えられほとんど動けない。[m]
　男のうち一人が注射器を取り出した。[c]
@name text=向井
「なんだよそれ！　やめろ！　やめろ！」[c]
　俺の抵抗も虚しくその針は俺の腕にささる。[m]
　そのまま俺は――[c]
@stop_bgm time=500
 //終わり
@show_bg file="eki.png"
@action
あの裏路地の光景は俺が目を覚ました場所だ……。[m]
俺は何者かに危害を加えられたんだ。
そして、今は本能的に危機感を感じている。[c]
恐る恐る駅舎を進み切符の券売機に着いたとき、一瞬スーツの男と目が合った。[c]
　
　――まずいぞ、逃げろ[c]

@play_bgm file="nige.ogg"
俺の本能がそう叫んだ。[m]
気づけば俺は走り出していた。[c]
@name text=???
「待て！」[c]
男は逃げる俺を追いかけてくる。[c]
@name text=向井
「待てと言われて誰が待つかよ！」[c]
なんてお約束言ってる場合じゃねえけど！[c]
@name text=向井
「どいてどいてどいてどいて！」[c]
　人ごみをかき分けながらひたすら南口へと走る。[m]
　駅舎からでて歩道を走る。[m]
 未だに後ろから追いかけてくる。[c]
　横断歩道を渡ろうとした瞬間に、目の前の歩行者信号が赤に変わったが、構っていられない。[m]
 俺はそのまま突き進む。[m]
　歩道の半分を超えた当たりでトラックのクラクションが鳴り響いた。[c]
 左に顔を向けるとすぐ横にトラックが迫っていた。[c]
@name text=向井
「うわっ！」[c]
@stop_bgm time=500
　俺は慌てて飛んだが、転げ落ちるように着地した。[m]
　立ち上がってトラックの様子を見ると、止まり切れなかった追っ手をひいてしまったようだ。[m]
　追っ手は足を抑えて倒れている。[c]
@name text=向井
「悪いな」[c]
　死ななくてよかった。[m]
　次の駅に行くのも少し怖い。[m]
@show_bg file="buss.png"
@action
 俺は少し歩いて目的の方面へ行くバスへ息を切らしながら駆け込み、乗車口のすぐ右にある二人がけの席に座り込む。[c]
　乗客はそんなに多くない。空席がちらほら見受けられる。[m]
　今はこのバスの乗客・運転手すら敵に見えてしまってしょうがない。[m]
　終点までバスに揺られていた。[c]
　バスから降りようとすると、一人のおばあさんが重たそうな荷物を持っておぼつかない足取りで階段を降りようとしている姿が見えた。[c]

[choices text1="助ける" target1=*tasuke text2="助けない" target2=*notasuke]
*tasuke
@show_bg file="mati.png"
@action
@name text=向井
「手伝うか……」[c]
@name text=向井
「あ、それもちますよ」[c]
@name text=おばあさん
「あ、いいのかい。助かるよ」[c]
@name text=向井
「どうせなので家までいきます」[c]
@show_bg file="mati.png"
　荷物を持っておばあさんについていく。[c]
@name text=おばあさん
「慌ててバスに乗ってきたようだけど、大丈夫なのかい？」[c]
@name text=向井
「ああ、もう大丈夫なんです」[c]
@name text=おばあさん
「そうかい」[c]
こうやって荷物をもって歩いているものの、これほど年齢が離れたおばあさんとの共通の話題なんて無いに等しい。[m]
どうしても無言になってしまう。[c]
@name text=おばあさん
「何があったのかしらないけれど、あんまり無茶しちゃいけないよ」[c]
@name text=向井
「えっ？」[c]
@name text=おばあさん
「かおに出ているよ。不安そうな顔で焦っているね」[c]
@name text=向井
「………」[c]
@name text=おばあさん
「人のためを考えるのは立派だけどね、自分を蔑ろにしちゃいけないよ」[c]
@name text=向井
「はい……。気をつけます……」[c]
　なんだか見透かされてしまったような気がする。[m]
　歩いているとふと、ビルに設置されているテレビに目がいった。[c]
@play_voice file="ana_01.ogg"
@name text=アナウンサー
「本日、防衛省はF22戦闘機１０機の導入を今年度中に行うと発表しました。しかし、配備予定基地の周辺住人からは批判の声が相次いでおり、導入が先延ばしになる可能性も出てきています」[c]
　こういうので批判が出るのはいつものことだな。国を守る力が必要だというのはよくわかるし、このことには特に反対はしない。ただ、俺自身は直接こういうことに関わりたくないと思っている。[c]
@name text=向井
「ぐあっ……」[c]
　また頭痛だ……。[c]
@play_se file="noise.ogg"
 @hide_c
 @action
 @wait time=500
 @stop_se
@show_bg file="pc.png"
@action
@play_bgm file="pcpart.ogg" time=500
//思い出３

携帯の着信音が鳴り響く。[m]
電話の主は「フューチャーテクノロジー」と書かれている。[m]
この前俺がプロジェクトを降りると言った会社からか……。[c]
@play_voice file="ft_05.ogg"
@name text=FT
「どうも、向井さん。本日は――」[c]
@name text=向井
「何ですか。私は降りるといったはずです」[c]
@play_voice file="ft_06.ogg"
@name text=FT
「考えなおしてはくれませんか？」[c]
@name text=向井
「はっきりいいます。あなた方のやろうとしている兵器開発には一切関わりたくありません」[c]
@play_voice file="ft_07.ogg"
@name text=FT
「どうしても、ですか」[c]
@name text=向井
「はい」[c]
@play_voice file="ft_08.ogg"
@name text=FT
「そうですか。まあ、どのみち今回はお電話させていただくことになっていました。[m]
@play_voice file="ft_09.ogg"
正式に契約を解きたいので。今日の午後６時に契約時に待ち合わせした場所までお越しいただけますか？」[c]
@name text=向井
「わかりました。もうこれっきりです」[c]
　俺は午後６時頃に待ち合わせ場所についた。[c]
 その瞬間に何者かに後ろからビルとビルの間に引きずり込まれ……。[c]
@stop_bgm time=500
 //終わり
@show_bg file="mati.png"
@action
 そこで意識が戻った。[m]
 思い出した。[m]
 俺は関わりたくないと思っていた軍事的な仕事に関わってしまっていたのだ。[c]
 そして何者かに薬を打たれて気を失った。[m]
 俺を襲ったのはおそらくフューチャーテクノロジーのものだろう。[m]
 襲った理由は俺がプロジェクトをあまりいい形で離脱しなかったからか？[c]
@name text=おばあさん
「具合でも悪いのかい？」[c]
@name text=向井
「いえ……。ただ最近頭痛がひどくて……」[c]
@name text=おばあさん
「急いでいるならもういいよ。私は大丈夫だから」[c]
@name text=向井
「すみません、それじゃ失礼します」[c]
　おばあさんには悪いが、やはり先をいそぐ必要がありそうだ。[m]
　俺がそうそう何度も逃げきれるような相手ではないだろう。[m]
　捕まる前までにすべて思い出したい。[c]
  俺がこれからどうするかもそれからでないとわからない。[c]
@jump target=*common
@s

*notasuke
@show_bg file="mati.png"
「悪いが手伝っている暇はない……」[c]
　急いですべてを思い出したい。[m]
 先ほども狙われていたことだし、寄り道していると捕まる可能性が高まる[m]
　俺は急いで自宅に向かう。[c]


　バス停からは少し遠いが歩いて行く。[m]
  道を歩いていると、すっと俺の肩に手がかかった。[m]
　びっくりして振り返ると、スーツを着た男がするどい眼光で睨んでいた。[c]
　まずい、こいつは……。[m]
　そう思った瞬間、俺は強い衝撃を受けた――。[c]

 @hide_bg
 @action

　ここは……。[m]
　目覚めたのは病室のような場所だった。[m]
  窓がない、置いてあるものも最低限だ。[c]
　出入り口用と思われるドアはびくともしない。[m]
  完全に密閉されている。[m]
　最低限の食事が与えられ、それを片付ける時以外はそのドアが開かれることはなく、俺はこの部屋でただ何もせずに過ごしていた。[c]
　最初は退屈でしかたがなく、なんとしても脱出しようと試みたが部屋から一歩も出られなかった。[m]
  そのうちどうでもよくなった。[c]
　もうこのまま、何もせずに生きていこう……。[c]
 [hide_msg]
[hide_all]
[jump storage="first.ks" target="*title"]
 @s

 *common
 @show_bg file="mans.png"
 @action
 最寄り駅から徒歩で５分もしない立地。[m]
　取り立てて特徴のない、普通のマンションだ。[m]
 そこが俺が住んでいたところらしい。[c]
　まさか鍵は開いていないだろうと思いつつドアノブをひねると、あっさりと扉は開かれた。[c]
@name text=向井
「……」[c]
　俺はよほど不用心な奴だったのだろうか。[m]
  鍵すら閉めないなんて……。[m]
　ん？[c]
　物音がする……。[m]
 空き巣？[m]
　玄関からは台所があり、その奥に部屋がある。[c]
 物音はそこから聞こえる。[m]
　恐る恐る部屋に近づき、覗きこむ。[m]
　そこには、スーツを着た女性の後ろ姿があった。[c]
@name text=向井
「……誰だよ」[c]
　俺の声に気づいてはっと振り向いた女性はすかさず俺に襲いかかった。[c]
@name text=向井
「おい！ちょ！」[c]
@show_bg file="ev_1.png"
@eval exp="ev01 = true"
@action
　足払いでひっくり返され、俺に馬乗りになり押さえつけ口をふさがれた。[c]
@name text=向井
「んー！　んー！」[c]
[play_se file="kyo_05.ogg"]
@name text=木下
「あ、慎二……！」[c]
　どうして俺の名前を……。[m]
　ぐあっ……。[m]
　また頭が痛み始めた……。[c]
 かなり強烈だ……。[c]
@play_se file="noice.ogg"
@wait time=500
@show_bg file="park.png"
@action
@stop_se
@play_bgm file="omoide.ogg" time=500
 //思い出４
 [play_voice file="kyo_06.ogg"]
@name text=木下
「私達離れ離れになっちゃうね」[c]
@name text=向井
「まあ、地理的にはな」[c]
[play_voice file="kakitani_04.ogg"]
@name text=柿谷
「いつでも連絡とれるから大丈夫だ」[c]
[play_voice file="kyo_07.ogg"]
@name text=木下
「そうだよね。会えなくても私たちはいつもいっしょよね！」[c]
@name text=向井
「俺たちの団結は、失われないって信じてるよ」[c]
[play_voice file="kakitani_05.ogg"]
@name text=柿谷
「うわー。くさいこと言いやがって」[c]
@name text=向井
「な、なんだよ」[c]
[play_voice file="kyo_08.ogg"]
@name text=木下
「はははは。でもそうでありたいよね」[c]
@stop_bgm time=500
//終わり
@show_bg file="pc.png"

意識が戻った。[c]


@name text=向井
「京子……」[c]
　京子は俺を解放した。[m]
　目の前にいる女性は間違いなく京子だ。[c]
@show_rc file="kyoko.png"
@action
[play_voice file="kyo_09.ogg"]
@name text=木下
「どうしたの……」[c]
@show_lc file="shinji_ai.png"
@action
@name text=向井
「どうやら俺は記憶を失っているらしい。でも時々、頭痛と共に断片的に記憶が戻ってくる時があるんだ」[c]
[play_voice file="kyo_10.ogg"]
@name text=木下
「さっき苦しそうにしていたのはそれ？」[c]
@name text=向井
「そうだ」[c]
[play_voice file="kyo_11.ogg"]
@name text=木下
「どこまで思い出してる？」[c]
　俺は京子に今までの経緯と合わせて思い出した範囲で京子に話した。[c]
[play_voice file="kyo_12.ogg"]
@name text=木下
「英一……。柿谷英一のことは？」[c]
@name text=向井
「英一という名前のやつなら俺と京子と一緒に記憶に出てくる。でも、いまいち思い出せなくて……」[c]
[play_voice file="kyo_13.ogg"]
@name text=木下
「高校時代は三人とも仲が良くてよく話していたじゃない」[c]
@name text=向井
「えっと……」[c]
柿谷英一と京子、そして俺は昔仲が良かったという客観的な情報は入手できた。[m]
しかし「思い出した」とは少し違う。[m]
　完全に思い出すには他人から話を聞くだけではダメなようだ。[c]
[play_voice file="kyo_14.ogg"]
@name text=木下
「ダメか……。あなたが開発に携わっていたプロジェクトが何か、詳細までは覚えていないのよね？」[c]
@name text=向井
「ああ。兵器開発かもしれないとは薄々思い出してはいたが……」[c]
[play_voice file="kyo_15.ogg"]
@name text=木下
「悪いんだけど、このパソコンのデータを詳しく調べてくれない？」[c]
@name text=向井
「ああ、まあいいけど……」[c]
@show_cr file="shinji.png"
@action
　パソコンの前に座った。[m]
  すごくしっくり来る。[m]
　パソコンの電源をつけてハードディスクにあるデータから消されたデータの復元まで行って調べた。[c]
@name text=向井
「ダメだな……。それらしいものは何一つ残っていない。完全に消されているのかも」[c]
[play_voice file="kyo_16.ogg"]
@name text=木下
「そう……。手が早いわね。私がもっている情報もそんなに多くないのよね」[c]
@name text=向井
「俺は知りたいんだ。少しでもいいから教えてくれ.」[c]
[play_voice file="kyo_17.ogg"]
@name text=木下
「そうね。あなたには話しておいたほうがいわね」[c]
[play_voice file="kyo_18.ogg"]
@name text=木下
「まず、あなたが関わっていた兵器開発は「ディスコーダンス計画」と呼ばれているわ」[c]
@name text=向井
「ディスコーダンス？」[c]
[play_voice file="kyo_19.ogg"]
@name text=木下
「防衛省が秘密裏に組織している特殊技術部が計画しているのがディスコーダンス計画。その兵器を一言で言うならば、大量破壊兵器」[c]
@name text=向井
「大量破壊兵器？　核ってことか？」[c]
[play_voice file="kyo_20.ogg"]
@name text=木下
「そこはまだ調査中。だから慎二の家に何か手がかりはないかと思って来たのよ、でも――」[c]
@name text=向井
「先を越されたか……」[c]
[play_voice file="kyo_21.ogg"]
@name text=木下
「おそらく。証拠の一切を消されたわね。ただ、消しきれなかったものがある」[c]
@name text=向井
「俺の記憶か」[c]
[play_voice file="kyo_22.ogg"]
@name text=木下
「表層的には記憶を消せたけど、その消えた記憶の痕跡から再び記憶が復元された」[c]
@name text=向井
「人間の記憶はパソコンなんかよりも複雑にからみ合って形成されている。そう簡単に消せるものじゃないのを分かっていないはずがない。俺を殺すほうが確実なのになぜ殺さなかったんだろう」[c]
[play_voice file="kyo_23.ogg"]
「慎二が自覚しているかはわからないけど、あなたはプログラマーとしては一線級の実力者よ。多くの人が知っている[m]
[play_voice file="kyo_24.ogg"]
そんな人が忽然と姿を消すなんて隠し通せるわけがない。この計画は極秘裏に進められていたからごまかすために根回しするのも難しい」[c]
@name text=向井
「じゃあ、記憶を取り戻しつつある俺がすべてを取り戻したら……？」[c]
[play_voice file="kyo_25.ogg"]
@name text=木下
「最後の手段……。あなたを消しにかかる」[c]
隠蔽の手間やリスクを考えると俺のことをなるべく殺したくなかったが、俺が思い出してしまったら俺を消すほうが低リスクというわけか。[m]
@name text=向井
「京子も危ないんじゃないのか？」[c]
[play_voice file="kyo_26.ogg"]
@name text=木下
「そうかもね。とりあえずここで調べるべきことは調べたわ。部屋を出ましょう」[c]

[choices text1="表から出る" target1=*omote text2="裏から出る" target2=*ura]

*omote
@name text=向井
「裏は危ないからな……」[c]
[play_voice file="kyo_27.ogg"]
@name text=木下
「確かに、人通りのあるところを歩いたほうがいいわね」[c]
　俺達は部屋を出て表に出た。[c]
@show_bg file="mans.png"
@action
 [play_voice file="kyo_28.ogg"]
@name text=木下
「やばいかも……」[c]
　と京子は俺を引っ張って進行方向を反転させた。[c]
@name text=向井
「なんだよ」[c]
[play_voice file="kyo_29.ogg"]
@show_bg file="rogi.png"
@name text=木下
「歩きながら聞いて。後ろにいるスーツの男が怪しい。私達が出た途端に注目し始めたし、こっちに向かってきた」[c]
@name text=向井
「どうするよ……」[c]
[play_voice file="kyo_30.ogg"]
@name text=木下
「応援を呼ばれる前に逃げる。せーの」[c]
@hide_all
@action
@show_bg file="rogi.png"
@acton
俺達は走りだした。こまかい道を使って追手をまこうとする。[m]
しかし相手の増援に回り込まれてしまった。[c]
@name text=向井
「ぐあっ！」[c]
　正面からみぞおちに攻撃をくらい、力が抜けて倒れこんでしまった――[c]
 @jump target="*common2"
[hide_all]
@s

*ura
[play_voice file="kyo_31.ogg"]
@name text=木下
「慎二がそうしたいならそうするわ」[c]
　俺達は部屋から出てアパートの裏側に出た。[m]
　しかし、俺達は出てすぐのところで頭に銃口をむけられた。[c]
[play_voice file="kyo_32.ogg"]
@name text=木下
「しまった……」[c]
　当たり前だが頭に銃口を向けられる体験なんて生まれて初めてだ。[m]
  恐怖で声が出ない。[m]
　銃の引き金に指がかかり、そして――[c]
 [hide_msg]
[hide_all]
[jump storage="first.ks" target="*title"]

@s

*common2
@show_bg file="souko.png"
@action
@name text=向井
「ここは……」[c]
　倉庫のような場所だ。[m]
　体を動かそうとしたが、思ったように動けない。[m]
 俺の体は椅子に縛られていた。[c]
@play_se file="walk-asphalt1.ogg"
 足音が聞こえる。[c]
@wait time=3000
@stop_se
 [play_voice file="kakitani_10.ogg"]
@name text=柿谷
「久しぶりだな。慎二」[c]
@name text=向井
「誰だ！？」[c]
 [play_voice file="kakitani_11.ogg"]
@name text=柿谷
「誰だはねえだろ。俺のこと忘れちまったか？　いや、『忘れさせられた』か」[c]
@name text=向井
「何なんだよお前！」[c]
　徐々にそいつの姿が見えてきた。[c]
@name text=向井
「ぐっ……」[c]
　また頭痛だ……。[c]

 @play_se file="noise.ogg"
 @action
 @wait time=500
 @stop_se
//思い出４
@show_bg file="park.png"
@action
@play_bgm file="omoide.ogg"
@name text=向井
「そういえばお前らは大学卒業したらどうするんだ？」[c]
[play_voice file="kyo_33.ogg"]
@name text=木下
「私は入試のことしか考えていなかったからこれからのことはまだ考えていないっていうのが正直なところね」[c]
[play_voice file="kakitani_6.ogg"]
@name text=柿谷
「俺は国防関連の職に就く」[c]
[play_voice file="kyo_34.ogg"]
@name text=木下
「最近いろいろ厄介事おおいもんね」[c]
@name text=向井
「そういう厄介事には巻き込まれたくないな」[c]
[play_voice file="kakitani_07.ogg"]
@name text=柿谷
「そう思う人もいるだろう。それはそれでいいんだ。でも俺はこの国のために一肌脱ぎたい」[c]
@name text=向井
「いい志だと思うぜ。それは」[c]
[play_voice file="kakitani_08.ogg"]
@name text=柿谷
「日本に迫る脅威を一つでも潰せる人間になれれば……な」[c]
[play_voice file="kyo_35.ogg"]
@name text=木下
「英一ならなれるよ。応援してる！」[c]
[play_voice file="kakitani_09.ogg"]
@name text=柿谷
「ありがとな」[c]
@stop_bgm
//終わり

@show_bg file="souko.png"
@show_lc file="eichi.png"
@action
@name text=向井
「お前が……。栄一か……」[c]
[play_voice file="kakitani_12.ogg"]
@name text=柿谷
「思い出したみたいだな。じゃあ、お前が今まで何をしていたかも思い出したな？」[c]
@name text=柿谷
「それなら少し前に思い出していたよ……」[c]
[play_voice file="kakitani_13.ogg"]
@name text=柿谷
「ならどうするべきか、わかるよな？」[c]
　栄一の言いたいことはわかる。だが……[c]
 
@name text=向井
「俺はお前が進めている計画を放っておかない。大量破壊兵器をつくったってお前の立場が悪くなるだけだ」[c]
[play_voice file="kakitani_14.ogg"]
@name text=柿谷
「大量破壊兵器？　防衛兵器と言ってくれないか？　この国の核兵器に対する恐怖はいまだぬぐえていない。[m]
 [play_voice file="kakitani_15.ogg"]
だから作るんだよ。核ではない、それでいて核兵器以上の抑止力を備えた次世代の兵器を。それで周辺諸国をけん制することでこの国の平和は維持できる！」[c]
@name text=向井
「違う！　冷静になれ！　今のままだといつか間違った使い方をするぞ！」[c]
 [play_voice file="kakitani_16.ogg"]
@name text=柿谷
「はあ……。分かってくれないようで残念だよ。お前は頭が良すぎたんだ。気づかなければ、幸せだったのにな」[c]
　英一は内ポケットから黒いものを取り出した。[c]
@name text=向井
「お前……それ……」[c]
[play_voice file="kakitani_17.ogg"]
@name text=柿谷
「秘密は守ってもらわないとなあ。慎二」[c]
　俺に向けられているのは銃だ。[c]
@name text=向井
「お前、正気じゃねえよ……」[c]
[play_voice file="kakitani_18.ogg"]
@name text=柿谷
「正気じゃないのはどっちだ？」[c]
　英一の指が引き金にかかる。くそっ。これまでか……。[c]
 [play_voice file="kakitani_19.ogg"]
@name text=柿谷
「この国をみすみす捨てるのが正気を保っているということか？」[c]
@name text=向井
「っ……」[c]

[play_voice file="kyo_36.ogg"]
@name text=木下
「あなたの計画は絶対に通さない！」[c]
@show_rc file="kyoko.png"
@action
　英一は驚き、銃を下げて京子の方へ振り向いた。[c]
 [play_voice file="kakitani_20.ogg"]
@name text=柿谷
「京子……？　京子なのか？」[c]
[play_voice file="kyo_37.ogg"]
@name text=木下
「久しぶり。なんていっている場合じゃないわよね」[c]
[play_voice file="kakitani_21.ogg"]
@name text=柿谷
「なんでここにいるんだ……？」[c]
[play_voice file="kyo_38.ogg"]
@name text=木下
「私は公安調査庁の調査官として今ここにいるわ」[c]
[play_voice file="kakitani_22.ogg"]
@name text=柿谷
「なんで公安が知ってんだよ」[c]
[play_voice file="kyo_39.ogg"]
@name text=木下
「防衛省の予算の流れに疑問点があったから調べていたのよ。そうしたら英一と慎二にたどり着いた。[m]
[play_voice file="kyo_40.ogg"]
まさかあなた達の名前を見るなんて思っていないから目を疑ったけどね」[c]
@name text=向井
「俺は詳しいことまでは知らなかった、京子に会って話を聞いたよ。お前は俺が思っている以上に危険な計画を進めていたんだ」[c]
[play_voice file="kyo_41.ogg"]
@name text=木下
「私と慎二はあなたを止めるわ」[c]
[play_voice file="kakitani_23.ogg"]
@name text=柿谷
「俺はただ国を守りたいだけなのに……」[c]
[play_voice file="kyo_42.ogg"]
@name text=木下
「たしかにあなたがこんなことをしたのはこの国を守りたいという気持ちからかもしれないわ。[m]
[play_voice file="kyo_43.ogg"]
でもね、大量破壊兵器の開発を国に無断で行うなんて、許されることではない」[c]
@name text=柿谷
「承認なんて降りないね。これからそれを変えようたってばかみたいに時間がかかるんだ。その間にこの国の国防はますます遅れを取る。それじゃダメなんだよ。強引にしなければこの国は変わらないんだ」[c]
[play_voice file="kyo_44.ogg"]
@name text=木下
「あなたがどういう考えを持っているかは関係ない。私の立場ではあなたと特殊技術部を見逃す訳にはいかない。英一だって分かるわよね？」[c]
[play_voice file="kakitani_24.ogg"]
@name text=柿谷
「はは……ははははっは！」[c]
[play_voice file="kakitani_25.ogg"]
@name text=柿谷
「こんな形で再開するなんてな・・・・・・・・」[c]
@name text=向井
「俺達はバラバラになっていたようでなっていなかったんだ」[c]
[play_voice file="kyo_45.ogg"]
@name text=木下
「私達の目の前には同じものがあった」[c]
@name text=向井
「昔みたいにのんきなものじゃないけどな」[c]
@show_lc file="eichi_do.png"
@action
[play_voice file="kakitani_26.ogg"]
@name text=柿谷
「いや……違う。お前たちの眼の前にあるのは闇だ！」[c]
英一は再度俺に銃を向けた。[c]
[play_voice file="kyo_46.ogg"]
@name text=向井・木下
「英一！」[c]
@hide_all
@hide_bg
@action
[play_voice file="kakitani_27.ogg"]
@name text=柿谷
「ふたりとも消えろ！」[c]
　目を強く閉じて歯を食いしばる。[m]
@play_se file="seto_gun_007.ogg"
　銃声が響いた。痛みはない。[m]
　恐る恐る目を開けて前を見ると、英一が膝をついていた。[c]
@show_bg file="ev_2.png"
@eval exp="ev02 = true"
@action
 [play_voice file="kakitani_28.ogg"]
@name text=柿谷
「うっ……。ぐっ……」[c]
[play_voice file="kyo_47.ogg"]
　英一は腹を抑えて血を流している。[m]
　はっと気づいて京子に視線を向けると、京子が両手で銃を構えていた。[m]
 少し息が荒れている。[c]
@name text=向井
「京子……」[c]
　辛うじて膝で立っていた英一はついに倒れこんだ。[m]
　京子は銃をしまって、携帯でどこかに電話をかけた。[c]
@show_bg file="souko.png"
 [play_voice file="kyo_48.ogg"]
@show_rc file="kyoko.png"
@name text=京子
「木下です。捜査対象の柿谷英一が負傷。救護をお願いします」[c]
　京子は携帯をしまって俺の拘束を解いた。[c]
@show_bg file="soko.png"
@show_lc file="shinji_ai.png"
@name text=向井
「……」[c]
@name text=京子
「……」[c]
@name text=向井
「栄一は大丈夫なのか？」[c]
[play_voice file="kyo_49.ogg"]
@name text=京子
「急所には当たっていないから大丈夫よ。ただ、今後はかなり厳重な処分が待っているでしょうね」[c]
@name text=向井
「なあ京子。俺は……気づくべきではなかったのだろうか……」[c]
[play_voice file="kyo_50.ogg"]
@name text=木下
「どうでしょうね。あなたが気づかなくても私が気づいて止めていた。それが私の仕事だから」[c]
@name text=向井
「また三人で会えるよな？」[c]
[play_voice file="kyo_51.ogg"]
@name text=木下
「英一に再びやり直すチャンスがあれば、その時は笑顔で迎えてあげましょう」[c]
@name text=向井
「そうだな。俺達ならきっと、またあの頃に戻れる。そう信じているよ」[c]
@show_rc file="kyoko_ki.png"
@action
[play_voice file="kyo_52.ogg"]
@name text=木下
「そういうところ、全然変わってないわね」[c]
@show_lc file="shinji.png"
@action
@name text=向井
「うっ……」[c]
[hide_msg]
[hide_all]
[jump storage="first.ks" target="*title"]
@s
@call storage="macro.ks"

*title_view
[title name="Tight Girls"]
[hide_msg]
[action]
[show_bg file="title.png"]
[action]
[showtitle storage="first.ks" target="*game_start"] 
@s

*game_start
[hidetitle]
[show_bg file="select.png"]
[show_l file="ayano_black.png"]
[show_lc file="miho_black.png"]
[show_c file="miki_black.png"]
[show_rc file="akina_black.png"]
[action]
[hide_all]
[hide_bg]
[choices text1="輪島彩乃" storage1="ayano.ks" target1="*ayano_story" text2="小松美保" storage2="miho.ks" target2="*miho_story" text3="平林美姫" storage3="miki.ks" target3="*miki_story" text4="松森明菜" storage4="akina.ks" target4="*akina_story"]

[action]
@s

[cm]

@clearstack
@bg storage ="title.png" time=100
@wait time = 200

*start 

[button x=200 y=100 graphic="title/button_start.gif" target="gamestart"]
[button x=200 y=200 graphic="title/button_cg.gif"  storage="cg.ks"]
[button x=200 y=300 graphic="title/button_config.gif" storage="config.ks"]
[button x=200 y=400 graphic="title/button_load.gif" role="load"]
[button x=200 y=500 graphic="title/button_replay.gif" storage="replay.ks"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"




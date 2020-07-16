#リセット処理
    function reversi_201:game/reset
#開始
    function reversi_201:game/start.common
    #黒にカーソルセット = スタート
        scoreboard players set $vsAI ReversiData_201 -1
        scoreboard players set #TurnColor ReversiData_201 0
        schedule function reversi_201:game/turn/turn_checker 1s
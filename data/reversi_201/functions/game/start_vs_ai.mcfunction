#リセット処理
    function reversi_201:game/reset
#開始
    function reversi_201:game/start.common
    #AIの行動変化タイミング定義
        scoreboard players set #AI-LastAlgorithm ReversiData_201 61
        scoreboard players operation #AI-LastAlgorithm ReversiData_201 -= $AI-Lv ReversiData_201
        scoreboard players set #LastDepth ReversiData_201 64
        scoreboard players operation #LastDepth ReversiData_201 -= #AI-LastAlgorithm ReversiData_201
    #黒にカーソルセット = スタート
        scoreboard players set #TurnColor ReversiData_201 0
        schedule function reversi_201:game/turn/turn_checker 1s
#リセット処理
    function reversi_201:game/reset
#開始
    #初期石配置
        setblock 2069 10 20 white_stained_glass
        setblock 2069 10 21 black_stained_glass
        setblock 2068 10 20 black_stained_glass
        setblock 2068 10 21 white_stained_glass
        execute if score $sheep ReversiData_201 matches 1 run function reversi_201:game/stone/sheep/init_put
        execute unless score $sheep ReversiData_201 matches 1 run function reversi_201:game/stone/util/init_put

        scoreboard players set #StoneBlack ReversiData_201 2
        scoreboard players set #StoneWhite ReversiData_201 2
        scoreboard players set #StoneQuantity ReversiData_201 4
    #石の最大数定義
        scoreboard players set #StoneQuantityMAX ReversiData_201 64
    #AIの行動変化タイミング定義
        scoreboard players set #AI-LastAlgorithm ReversiData_201 61
        scoreboard players operation #AI-LastAlgorithm ReversiData_201 -= $AI-Lv ReversiData_201
        scoreboard players set #LastDepth ReversiData_201 64
        scoreboard players operation #LastDepth ReversiData_201 -= #AI-LastAlgorithm ReversiData_201
    #黒にカーソルセット = スタート
        scoreboard players set #TurnColor ReversiData_201 0
        schedule function reversi_201:game/turn/turn_checker 1s
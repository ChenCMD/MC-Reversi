#リセット処理
    function reversi_201:game/reset
#開始
    #長考処理の初期化
        scoreboard players set #Think ReversiData_201 1
        execute unless score $Think.MAX ReversiData_201 matches 1.. unless score $Think.COUNT ReversiData_201 matches 1.. run scoreboard players set #Think ReversiData_201 0
        execute if score #Think ReversiData_201 matches 1 run function reversi_201:game/turn/player/long_think/init
    #初期石配置
        setblock -19995 10 20 white_stained_glass
        setblock -19995 10 21 black_stained_glass
        setblock -19996 10 20 black_stained_glass
        setblock -19996 10 21 white_stained_glass
        execute if score $sheep ReversiData_201 matches 1 run function reversi_201:game/stone/sheep/init_put
        execute unless score $sheep ReversiData_201 matches 1 run function reversi_201:game/stone/util/init_put

        scoreboard players set #StoneBlack ReversiData_201 2
        scoreboard players set #StoneWhite ReversiData_201 2
        scoreboard players set #StoneQuantity ReversiData_201 4
    #石の最大数定義
        scoreboard players set #StoneQuantityMAX ReversiData_201 64
    #黒にカーソルセット = スタート
        scoreboard players set $vsAI ReversiData_201 -1
        scoreboard players set #TurnColor ReversiData_201 0
        schedule function reversi_201:game/turn/turn_checker 1s
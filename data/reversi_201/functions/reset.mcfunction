#リセット
    execute as @e[tag=Entity_201,tag=!BoardPos_201,tag=!Corner_201,tag=!PreCorner_201] at @s run tp @s ~ ~-200 ~
    execute at @e[tag=BoardSize_201] run fill 2065 10 17 2072 0 24 air
    kill @e[tag=Entity_201,tag=!BoardPos_201,tag=!Corner_201,tag=!PreCorner_201]
    team empty NoCollision_201
    scoreboard players reset $StoneWhite ReversiData_201
    scoreboard players reset $StoneBlack ReversiData_201
    scoreboard players set #SkipFlag ReversiData_201 0

    execute unless score $TickThroughput ReversiData_201 = $TickThroughput ReversiData_201 run scoreboard players set $TickThroughput ReversiData_201 128
    execute unless score $AI-Lv ReversiData_201 = $AI-Lv ReversiData_201 run scoreboard players set $AI-Lv ReversiData_201 1
    # #DEBUG log
    # data modify storage reversi_201:logs output set value []
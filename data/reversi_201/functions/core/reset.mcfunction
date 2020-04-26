#リセット
    execute as @e[tag=Entity_201,tag=!BoardPos_201] at @s run tp @s ~ ~-200 ~
    execute at @e[tag=BoardSize_201] run fill 2065 10 17 ~ 10 ~ air
    kill @e[tag=Entity_201,tag=!BoardPos_201]
    team empty NoCollision_201
    #scoreboard players set $StoneQuantityMAX ReversiData_201 64
    scoreboard players reset $StoneWhite ReversiData_201
    scoreboard players reset $StoneBlack ReversiData_201

    execute unless score $TickThroughput ReversiData_201 = $TickThroughput ReversiData_201 run scoreboard players set $TickThroughput ReversiData_201 20
    execute unless score $AI-Lv ReversiData_201 = $AI-Lv ReversiData_201 run scoreboard players set $AI-Lv ReversiData_201 1
    execute unless score $BoardSize ReversiData_201 = $BoardSize ReversiData_201 run scoreboard players set $BoardSize ReversiData_201 8
    function reversi_201:core/corner_summon
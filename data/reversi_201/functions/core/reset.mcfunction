#リセット
    execute as @e[tag=Entity_201,tag=!BoardPos_201] at @s run tp @s ~ ~-200 ~
    execute at @e[tag=BoardSize_201] run fill 2065 10 17 ~ 10 ~ air
    kill @e[tag=Entity_201,tag=!BoardPos_201]
    team empty NoCollision_201
    #scoreboard players set $StoneQuantityMAX ReversiData_201 64
    scoreboard players reset $StoneWhite ReversiData_201
    scoreboard players reset $StoneBlack ReversiData_201
    function reversi_201:core/corner_summon
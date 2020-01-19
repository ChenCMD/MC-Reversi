#リセット
    execute as @e[tag=Entity_201,tag=!BoardPos_201] at @s run tp @s ~ ~-200 ~
    kill @e[tag=Entity_201,tag=!BoardPos_201]
    team empty NoCollision_201
    #scoreboard players set $StoneFirstQuantity ReversiData_201 64
    scoreboard players reset $StoneWhite ReversiData_201
    scoreboard players reset $StoneBlack ReversiData_201
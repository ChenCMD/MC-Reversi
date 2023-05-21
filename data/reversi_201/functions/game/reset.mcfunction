#> reversi_201:game/reset
#
# Generated by MCF-Utility
#
# @within function reversi_201:game/start.common

#リセット
    tp @e[type=sheep,tag=StoneSheep_201] ~ ~-200 ~
    kill @e[type=sheep,tag=StoneSheep_201]
    execute as @e[tag=Entity_201,tag=!Corner_201,tag=!PreCorner_201] at @s run tp @s ~ ~-200 ~
    kill @e[tag=Entity_201,tag=!Corner_201,tag=!PreCorner_201]
    kill 0-0-c9-0-0
    fill -19999 10 17 -19992 0 24 air
    team empty NoCollision_201
    team join NoCollision_201 @e[type=slime,tag=hologram_sandbag_201.menu,distance=..200,x=2069.0,y=40.0,z=21.0]
    team join NoCollision_201 @e[type=slime,tag=hologram_sandbag_201.area,distance=..200,x=2069.0,y=40.0,z=21.0]
    scoreboard players reset #StoneWhite ReversiData_201
    scoreboard players reset #StoneBlack ReversiData_201
    scoreboard players set #TurnColor ReversiData_201 0
    scoreboard players set #SkipFlag ReversiData_201 0
    scoreboard players set #PlayTime ReversiData_201 0
    bossbar set reversi_201:player1_201 players
    bossbar set reversi_201:player2_201 players
    scoreboard players reset #Think.White ReversiData_201
    scoreboard players reset #Think.Black ReversiData_201
    scoreboard players reset #Think.Flag.Black ReversiData_201
    scoreboard players reset #Think.Flag.White ReversiData_201
    schedule clear reversi_201:game/turn/player/long_think/decrement

    execute unless score $TickThroughput ReversiData_201 = $TickThroughput ReversiData_201 run scoreboard players set $TickThroughput ReversiData_201 256
    # #DEBUG log
    # data modify storage reversi_201:logs output set value []
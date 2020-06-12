#黒じゃーん
    execute if score $TurnColor ReversiData_201 matches 0 if block ~ ~ ~ black_stained_glass run tag @s add isSuccess_201
    execute if score $TurnColor ReversiData_201 matches 1 if block ~ ~ ~ white_stained_glass run tag @s add isSuccess_201
#白だったら次のマス見る
    execute if score $TurnColor ReversiData_201 matches 0 if block ~ ~ ~ white_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:turn/player/check.recursive
    execute if score $TurnColor ReversiData_201 matches 1 if block ~ ~ ~ black_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:turn/player/check.recursive
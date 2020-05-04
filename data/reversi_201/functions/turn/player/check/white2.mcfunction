#黒じゃーん
    execute if block ~ ~ ~ white_stained_glass run tag @s add isSuccess_201
#白だったら次のマス見る
    execute if block ~ ~ ~ black_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:turn/player/check/white2
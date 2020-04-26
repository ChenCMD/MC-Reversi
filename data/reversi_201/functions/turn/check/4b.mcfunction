#白だったら次のマス見る
    execute if block ~ ~ ~ white_concrete positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:turn/check/4b
#黒じゃーん
    execute if block ~ ~ ~ black_concrete run tag @s add isSuccess_201